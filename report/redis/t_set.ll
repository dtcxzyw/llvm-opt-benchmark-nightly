inline.NumInlined: 81
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.sharedObjectsStruct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [10 x ptr], [10000 x ptr], [32 x ptr], [32 x ptr], [32 x ptr], [32 x ptr], ptr, ptr }
%struct.setTypeIterator = type { ptr, i32, i32, %struct.dictIterator, ptr }
%struct.dictIterator = type { ptr, i64, i32, i32, ptr, ptr, i64 }

@server = external local_unnamed_addr global %struct.redisServer, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"t_set.c\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"dictAdd(set->ptr,newval,NULL) == DICT_OK\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Unknown set encoding\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Wrong set encoding in setTypeNext\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"o->type == OBJ_SET\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"setobj->type == OBJ_SET && setobj->encoding != enc\00", align 1
@setDictType = external global %struct.dictType, align 8
@.str.7 = private unnamed_addr constant [35 x i8] c"dictAdd(d,element,NULL) == DICT_OK\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Unsupported set conversion\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"sadd\00", align 1
@shared = external local_unnamed_addr global %struct.sharedObjectsStruct, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"srem\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"del\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"spop\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"size==0\00", align 1
@sdsReplyDictType = external global %struct.dictType, align 8
@.str.14 = private unnamed_addr constant [18 x i8] c"retval == DICT_OK\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"dictSize(d) == size\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"sinterstore\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"length == 0\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"numkeys should be greater than 0\00", align 1
@.str.19 = private unnamed_addr constant [52 x i8] c"Number of keys can't be greater than number of args\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"LIMIT\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"LIMIT can't be negative\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"sunionstore\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"sdiffstore\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"subject->encoding == OBJ_ENCODING_INTSET\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c"string2ll(str, len, (long long *)&llval)\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"success\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @setTypeCreate(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @isSdsRepresentableAsLongLong(ptr noundef %0, ptr noundef null) #11
  %i.b = icmp ne i32 %i.a, 0
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7952), align 8
  %.not = icmp ugt i64 %1, %i.c
  %or.cond = select i1 %i.b, i1 true, i1 %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @createIntsetObject() #11
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7960), align 8, !tbaa !13
  %.not7 = icmp ugt i64 %1, %i.e
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @createSetListpackObject() #11
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = tail call ptr @createSetObject() #11     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.j = tail call i32 @dictExpand(ptr noundef %i.i, i64 noundef %1) #11 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.f, %bb.d ], [ %i.g, %bb.e ]
  ret ptr %.0
}

declare i32 @isSdsRepresentableAsLongLong(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @createIntsetObject() local_unnamed_addr #1

declare ptr @createSetListpackObject() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @createSetObject() local_unnamed_addr #1

declare i32 @dictExpand(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define dso_local void @setTypeMaybeConvert(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, 240                        ; 2 uses
  %i.c = icmp eq i64 %i.b, 176
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7960), align 8
  %i.e = icmp ugt i64 %1, %i.d
  %or.cond = select i1 %i.c, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.b, 96
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7952), align 8
  %i.h = icmp ugt i64 %1, %i.g
  %or.cond7 = select i1 %i.f, i1 %i.h, i1 false
  br i1 %or.cond7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = tail call i32 @setTypeConvertAndExpand(ptr noundef nonnull %0, i32 noundef 2, i64 noundef %1, i32 noundef 1) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @setTypeConvertAndExpand(ptr noundef %0, i32 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 9 uses
  %4 = alloca %struct.setTypeIterator, align 8    ; 18 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.g = load i64, ptr %0, align 8                ; 3 uses
  %i.h = and i64 %i.g, 15
  %i.i = icmp eq i64 %i.h, 2
  %i.j = trunc i64 %i.g to i32
  %i.k = lshr i32 %i.j, 4
  %i.l = and i32 %i.k, 15                         ; 2 uses
  %i.m = icmp ne i32 %i.l, %1
  %i.n = and i1 %i.i, %i.m
  br i1 %i.n, label %bb.c, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssertWithInfo(ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 510) #11
  tail call void @abort() #12
  unreachable

bb.c:                                             ; preds = %bb.a
  switch i32 %1, label %bb.aj [
    i32 2, label %bb.d
    i32 11, label %bb.x
  ]

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @dictCreate(ptr noundef nonnull @setDictType) #11 ; 6 uses
  %.not51 = icmp eq i32 %3, 0
  br i1 %.not51, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = tail call i32 @dictExpand(ptr noundef %i.o, i64 noundef %2) #11 ; 0 uses
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.q = tail call i32 @dictTryExpand(ptr noundef %i.o, i64 noundef %2) #11
  %.not52 = icmp eq i32 %i.q, 0
  br i1 %.not52, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @dictRelease(ptr noundef %i.o) #11
  br label %bb.ak

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 2 uses
  store ptr %0, ptr %4, align 8, !tbaa !50
  %i.s = load i64, ptr %0, align 8
  %i.t = trunc i64 %i.s to i32
  %i.u = lshr i32 %i.t, 4
  %i.v = and i32 %i.u, 15                         ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 %i.v, ptr %i.w, align 8, !tbaa !55
  switch i32 %i.v, label %bb.l [
    i32 2, label %bb.i
    i32 6, label %bb.j
    i32 11, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !47
  call void @dictInitIterator(ptr noundef nonnull %i.x, ptr noundef %i.z) #11
  br label %setTypeInitIterator.exit

bb.j:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.aa, align 4, !tbaa !56
  br label %setTypeInitIterator.exit

bb.k:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr null, ptr %i.ab, align 8, !tbaa !57
  br label %setTypeInitIterator.exit

bb.l:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 327, ptr noundef nonnull @.str.3) #11
  tail call void @abort() #12
  unreachable

setTypeInitIterator.exit:                         ; preds = %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 0, ptr %i.a, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i64 0, ptr %i.c, align 8, !tbaa !58
  %i.ac = call i32 @setTypeNext(ptr noundef nonnull %4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a)
  %i.ad = icmp eq i32 %i.ac, -1
  br i1 %i.ad, label %setTypeNextObject.exit.thread, label %.lr.ph62

setTypeNextObject.exit.thread:                    ; preds = %sdsAllocSize.exit, %setTypeInitIterator.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.critedge

.lr.ph62:                                         ; preds = %setTypeInitIterator.exit, %sdsAllocSize.exit
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !59  ; 2 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph62
  %i.af = load i64, ptr %i.c, align 8, !tbaa !58
  %i.ag = call ptr @sdsnewlen(ptr noundef nonnull %i.ae, i64 noundef %i.af) #11
  br label %setTypeNextObject.exit

bb.n:                                             ; preds = %.lr.ph62
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !58
  %i.ai = call ptr @sdsfromlonglong(i64 noundef %i.ah) #11
  br label %setTypeNextObject.exit

setTypeNextObject.exit:                           ; preds = %bb.m, %bb.n
  %.0.i = phi ptr [ %i.ai, %bb.n ], [ %i.ag, %bb.m ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not53 = icmp eq ptr %.0.i, null
  br i1 %.not53, label %.critedge, label %bb.o

bb.o:                                             ; preds = %setTypeNextObject.exit
  %i.aj = call i32 @dictAdd(ptr noundef %i.o, ptr noundef nonnull %.0.i, ptr noundef null) #11
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.q, label %bb.p, !prof !49

bb.p:                                             ; preds = %bb.o
  call void @_serverAssert(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 528) #11
  call void @abort() #12
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.al = getelementptr i8, ptr %.0.i, i64 -1
  %.val.i = load i8, ptr %i.al, align 1, !tbaa !60 ; 2 uses
  %i.am = and i8 %.val.i, 7
  switch i8 %i.am, label %sdsAllocSize.exit [
    i8 0, label %bb.r
    i8 1, label %bb.s
    i8 2, label %bb.t
    i8 3, label %bb.u
    i8 4, label %bb.v
  ]

bb.r:                                             ; preds = %bb.q
  %i.an = lshr i8 %.val.i, 3
  %narrow.i = add nuw nsw i8 %i.an, 2
  %i.ao = zext nneg i8 %narrow.i to i64
  br label %sdsAllocSize.exit

bb.s:                                             ; preds = %bb.q
  %i.ap = getelementptr inbounds i8, ptr %.0.i, i64 -2
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !60
  %i.ar = zext i8 %i.aq to i64
  %i.as = add nuw nsw i64 %i.ar, 4
  br label %sdsAllocSize.exit

bb.t:                                             ; preds = %bb.q
  %i.at = getelementptr inbounds i8, ptr %.0.i, i64 -3
  %i.au = load i16, ptr %i.at, align 1, !tbaa !61
  %i.av = zext i16 %i.au to i64
  %i.aw = add nuw nsw i64 %i.av, 6
  br label %sdsAllocSize.exit

bb.u:                                             ; preds = %bb.q
  %i.ax = getelementptr inbounds i8, ptr %.0.i, i64 -5
  %i.ay = load i32, ptr %i.ax, align 1, !tbaa !9
  %i.az = zext i32 %i.ay to i64
  %i.ba = add nuw nsw i64 %i.az, 10
  br label %sdsAllocSize.exit

bb.v:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds i8, ptr %.0.i, i64 -9
  %i.bc = load i64, ptr %i.bb, align 1, !tbaa !58
  %i.bd = add i64 %i.bc, 18
  br label %sdsAllocSize.exit

sdsAllocSize.exit:                                ; preds = %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v
  %.0.i54 = phi i64 [ %i.bd, %bb.v ], [ %i.ao, %bb.r ], [ %i.as, %bb.s ], [ %i.aw, %bb.t ], [ %i.ba, %bb.u ], [ 0, %bb.q ]
  %i.be = load i64, ptr %i.r, align 8, !tbaa !58
  %i.bf = add i64 %i.be, %.0.i54
  store i64 %i.bf, ptr %i.r, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 0, ptr %i.a, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i64 0, ptr %i.c, align 8, !tbaa !58
  %i.bg = call i32 @setTypeNext(ptr noundef nonnull %4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a)
  %i.bh = icmp eq i32 %i.bg, -1
  br i1 %i.bh, label %setTypeNextObject.exit.thread, label %.lr.ph62, !llvm.loop !63

.critedge:                                        ; preds = %setTypeNextObject.exit, %setTypeNextObject.exit.thread
  %i.bi = load i32, ptr %i.w, align 8, !tbaa !55
  %i.bj = icmp eq i32 %i.bi, 2
  br i1 %i.bj, label %bb.w, label %setTypeResetIterator.exit

bb.w:                                             ; preds = %.critedge
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @dictResetIterator(ptr noundef nonnull %i.bk) #11
  br label %setTypeResetIterator.exit

setTypeResetIterator.exit:                        ; preds = %.critedge, %bb.w
  call void @freeSetObject(ptr noundef nonnull %0) #11
  %i.bl = load i64, ptr %0, align 8
  %i.bm = and i64 %i.bl, -241
  %i.bn = or disjoint i64 %i.bm, 32
  store i64 %i.bn, ptr %0, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.bo, align 8, !tbaa !47
  br label %bb.ak

bb.x:                                             ; preds = %bb.c
  %i.bp = shl i64 %2, 1                           ; 2 uses
  %i.bq = and i64 %i.g, 240
  %i.br = icmp eq i64 %i.bq, 96
  br i1 %i.br, label %5, label %bb.aa

5:                                                ; preds = %bb.x
  switch i32 %i.l, label %19 [
    i32 2, label %6
    i32 6, label %bb.y
    i32 11, label %15
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = load ptr, ptr %7, align 8, !tbaa !47       ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 24
  %10 = load i64, ptr %9, align 8, !tbaa !58
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %12 = load i64, ptr %11, align 8, !tbaa !58
  %13 = add i64 %12, %10
  br label %setTypeSize.exit

bb.y:                                             ; preds = %5
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !47
  %i.bu = tail call i32 @intsetLen(ptr noundef %i.bt) #11
  %14 = zext i32 %i.bu to i64
  br label %setTypeSize.exit

15:                                               ; preds = %5
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  %18 = tail call i64 @lpLength(ptr noundef %17) #11
  br label %setTypeSize.exit

19:                                               ; preds = %5
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 476, ptr noundef nonnull @.str.3) #11
  tail call void @abort() #12
  unreachable

setTypeSize.exit:                                 ; preds = %6, %bb.y, %15
  %.0.i55 = phi i64 [ %13, %6 ], [ %14, %bb.y ], [ %18, %15 ]
  %.not = icmp eq i64 %.0.i55, 0
  br i1 %.not, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %setTypeSize.exit
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bv = load ptr, ptr %20, align 8, !tbaa !47
  %i.bw = tail call i64 @intsetMin(ptr noundef %i.bv) #11
  %i.bx = tail call i64 @lpEstimateBytesRepeatedInteger(i64 noundef %i.bw, i64 noundef %2) #11
  %i.by = load ptr, ptr %20, align 8, !tbaa !47
  %i.bz = tail call i64 @intsetMax(ptr noundef %i.by) #11
  %i.ca = tail call i64 @lpEstimateBytesRepeatedInteger(i64 noundef %i.bz, i64 noundef %2) #11
  %i.cb = tail call i64 @llvm.umax.i64(i64 %i.bx, i64 %i.ca)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %setTypeSize.exit, %bb.x
  %.045 = phi i64 [ %i.cb, %bb.z ], [ %i.bp, %setTypeSize.exit ], [ %i.bp, %bb.x ]
  %i.cc = tail call ptr @lpNew(i64 noundef %.045) #11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  store i64 0, ptr %i.e, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  store i64 0, ptr %i.f, align 8, !tbaa !58
  store ptr %0, ptr %4, align 8, !tbaa !50
  %i.cd = load i64, ptr %0, align 8
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = lshr i32 %i.ce, 4
  %i.cg = and i32 %i.cf, 15                       ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 %i.cg, ptr %i.ch, align 8, !tbaa !55
  switch i32 %i.cg, label %bb.ae [
    i32 2, label %bb.ab
    i32 6, label %bb.ac
    i32 11, label %bb.ad
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !47
  call void @dictInitIterator(ptr noundef nonnull %i.ci, ptr noundef %i.ck) #11
  br label %setTypeInitIterator.exit56

bb.ac:                                            ; preds = %bb.aa
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.cl, align 4, !tbaa !56
  br label %setTypeInitIterator.exit56

bb.ad:                                            ; preds = %bb.aa
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr null, ptr %i.cm, align 8, !tbaa !57
  br label %setTypeInitIterator.exit56

bb.ae:                                            ; preds = %bb.aa
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 327, ptr noundef nonnull @.str.3) #11
  tail call void @abort() #12
  unreachable

setTypeInitIterator.exit56:                       ; preds = %bb.ab, %bb.ac, %bb.ad
  %i.cn = call i32 @setTypeNext(ptr noundef nonnull %4, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f)
  %.not4960 = icmp eq i32 %i.cn, -1
  br i1 %.not4960, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %setTypeInitIterator.exit56, %bb.ah
  %.061 = phi ptr [ %.1, %bb.ah ], [ %i.cc, %setTypeInitIterator.exit56 ] ; 2 uses
  %i.co = load ptr, ptr %i.d, align 8, !tbaa !59  ; 2 uses
  %.not50 = icmp eq ptr %i.co, null
  br i1 %.not50, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph
  %i.cp = load i64, ptr %i.e, align 8, !tbaa !58
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = call ptr @lpAppend(ptr noundef %.061, ptr noundef nonnull %i.co, i32 noundef %i.cq) #11
  br label %bb.ah

bb.ag:                                            ; preds = %.lr.ph
  %i.cs = load i64, ptr %i.f, align 8, !tbaa !58
  %i.ct = call ptr @lpAppendInteger(ptr noundef %.061, i64 noundef %i.cs) #11
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.1 = phi ptr [ %i.cr, %bb.af ], [ %i.ct, %bb.ag ] ; 2 uses
  %i.cu = call i32 @setTypeNext(ptr noundef nonnull %4, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f)
  %.not49 = icmp eq i32 %i.cu, -1
  br i1 %.not49, label %._crit_edge, label %.lr.ph, !llvm.loop !65

._crit_edge:                                      ; preds = %bb.ah, %setTypeInitIterator.exit56
  %.0.lcssa = phi ptr [ %i.cc, %setTypeInitIterator.exit56 ], [ %.1, %bb.ah ]
  %i.cv = load i32, ptr %i.ch, align 8, !tbaa !55
  %i.cw = icmp eq i32 %i.cv, 2
  br i1 %i.cw, label %bb.ai, label %setTypeResetIterator.exit57

bb.ai:                                            ; preds = %._crit_edge
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @dictResetIterator(ptr noundef nonnull %i.cx) #11
  br label %setTypeResetIterator.exit57

setTypeResetIterator.exit57:                      ; preds = %._crit_edge, %bb.ai
  call void @freeSetObject(ptr noundef nonnull %0) #11
  %i.cy = load i64, ptr %0, align 8
  %i.cz = and i64 %i.cy, -241
  %i.da = or disjoint i64 %i.cz, 176
  store i64 %i.da, ptr %0, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa, ptr %i.db, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %bb.ak

bb.aj:                                            ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 562, ptr noundef nonnull @.str.8) #11
  tail call void @abort() #12
  unreachable

bb.ak:                                            ; preds = %setTypeResetIterator.exit57, %setTypeResetIterator.exit, %bb.g
  %.143 = phi i32 [ -1, %bb.g ], [ 0, %setTypeResetIterator.exit ], [ 0, %setTypeResetIterator.exit57 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret i32 %.143
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 256) i32 @setTypeAdd(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 -1
  %.val.i = load i8, ptr %i.a, align 1, !tbaa !60 ; 2 uses
  %i.b = and i8 %.val.i, 7
  switch i8 %i.b, label %sdslen.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i8 %.val.i, 3
  %i.d = zext nneg i8 %i.c to i64
  br label %sdslen.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %1, i64 -3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !60
  %i.g = zext i8 %i.f to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %1, i64 -5
  %i.i = load i16, ptr %i.h, align 1, !tbaa !61
  %i.j = zext i16 %i.i to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %1, i64 -9
  %i.l = load i32, ptr %i.k, align 1, !tbaa !9
  %i.m = zext i32 %i.l to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds i8, ptr %1, i64 -17
  %i.o = load i64, ptr %i.n, align 1, !tbaa !58
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.o, %bb.f ], [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %i.j, %bb.d ], [ %i.m, %bb.e ], [ 0, %bb.a ]
  %i.p = tail call i32 @setTypeAddAux(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %.0.i, i64 noundef 0, i32 noundef 1)
  ret i32 %i.p
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 256) i32 @setTypeAddAux(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 5 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i8, align 1                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %0, align 8
  %i.g = and i64 %i.f, 240
  %i.h = icmp eq i64 %i.g, 96
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i8 0, ptr %i.b, align 1, !tbaa !60
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !47
  %i.k = call ptr @intsetAdd(ptr noundef %i.j, i64 noundef %3, ptr noundef nonnull %i.b) #11
  store ptr %i.k, ptr %i.i, align 8, !tbaa !47
  %i.l = load i8, ptr %i.b, align 1, !tbaa !60
  %.not127 = icmp eq i8 %i.l, 0
  br i1 %.not127, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call fastcc void @maybeConvertIntset(ptr noundef nonnull %0)
  %.pre = load i8, ptr %i.b, align 1, !tbaa !60
  %i.m = zext i8 %.pre to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = phi i32 [ %i.m, %bb.d ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %.critedge

bb.f:                                             ; preds = %bb.b
  %i.o = call i32 @ll2string(ptr noundef nonnull %i.a, i64 noundef 21, i64 noundef %3) #11
  %i.p = sext i32 %i.o to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.0109 = phi i32 [ %4, %bb.a ], [ 0, %bb.f ]
  %.0108 = phi i64 [ %2, %bb.a ], [ %i.p, %bb.f ] ; 11 uses
  %.0107 = phi ptr [ %1, %bb.a ], [ %i.a, %bb.f ] ; 10 uses
  %i.q = load i64, ptr %0, align 8
  %5 = trunc i64 %i.q to i32
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 15
  switch i32 %7, label %bb.bb [
    i32 2, label %bb.h
    i32 11, label %bb.v
    i32 6, label %bb.ak
  ]

bb.h:                                             ; preds = %bb.g
  %.not137 = icmp eq i32 %.0109, 0
  br i1 %.not137, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.r = call ptr @sdsnewlen(ptr noundef nonnull %.0107, i64 noundef %.0108) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.s = phi ptr [ %i.r, %bb.i ], [ %.0107, %bb.h ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !47   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.v = call ptr @dictFindLink(ptr noundef %i.u, ptr noundef %i.s, ptr noundef nonnull %i.c) #11
  %i.w = icmp eq ptr %i.v, null
  %i.x = icmp eq ptr %i.s, %.0107                 ; 2 uses
  br i1 %i.w, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  br i1 %i.x, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = call ptr @sdsdup(ptr noundef %i.s) #11
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0115 = phi ptr [ %i.y, %bb.l ], [ %i.s, %bb.k ] ; 6 uses
  call void @dictSetKeyAtLink(ptr noundef %i.u, ptr noundef %.0115, ptr noundef nonnull %i.c, i32 noundef 1) #11
  %i.z = getelementptr i8, ptr %.0115, i64 -1
  %.val.i = load i8, ptr %i.z, align 1, !tbaa !60 ; 2 uses
  %i.aa = and i8 %.val.i, 7
  switch i8 %i.aa, label %sdsAllocSize.exit [
    i8 0, label %bb.n
    i8 1, label %bb.o
    i8 2, label %bb.p
    i8 3, label %bb.q
    i8 4, label %bb.r
  ]

bb.n:                                             ; preds = %bb.m
  %i.ab = lshr i8 %.val.i, 3
  %narrow.i = add nuw nsw i8 %i.ab, 2
  %i.ac = zext nneg i8 %narrow.i to i64
  br label %sdsAllocSize.exit

bb.o:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds i8, ptr %.0115, i64 -2
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !60
  %i.af = zext i8 %i.ae to i64
  %i.ag = add nuw nsw i64 %i.af, 4
  br label %sdsAllocSize.exit

bb.p:                                             ; preds = %bb.m
  %i.ah = getelementptr inbounds i8, ptr %.0115, i64 -3
  %i.ai = load i16, ptr %i.ah, align 1, !tbaa !61
  %i.aj = zext i16 %i.ai to i64
  %i.ak = add nuw nsw i64 %i.aj, 6
  br label %sdsAllocSize.exit

bb.q:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds i8, ptr %.0115, i64 -5
  %i.am = load i32, ptr %i.al, align 1, !tbaa !9
  %i.an = zext i32 %i.am to i64
  %i.ao = add nuw nsw i64 %i.an, 10
  br label %sdsAllocSize.exit

bb.r:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds i8, ptr %.0115, i64 -9
  %i.aq = load i64, ptr %i.ap, align 1, !tbaa !58
  %i.ar = add i64 %i.aq, 18
  br label %sdsAllocSize.exit

sdsAllocSize.exit:                                ; preds = %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
  %.0.i = phi i64 [ %i.ar, %bb.r ], [ %i.ac, %bb.n ], [ %i.ag, %bb.o ], [ %i.ak, %bb.p ], [ %i.ao, %bb.q ], [ 0, %bb.m ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !58
  %i.au = add i64 %i.at, %.0.i
  store i64 %i.au, ptr %i.as, align 8, !tbaa !58
  br label %.thread

bb.s:                                             ; preds = %bb.j
  br i1 %i.x, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @sdsfree(ptr noundef %i.s) #11
  br label %.thread

.thread:                                          ; preds = %sdsAllocSize.exit, %bb.t
  %.0.ph = phi i32 [ 0, %bb.t ], [ 1, %sdsAllocSize.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %.critedge

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %.critedge

bb.v:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !47 ; 7 uses
  %i.ax = call ptr @lpFirst(ptr noundef %i.aw) #11 ; 2 uses
  %.not134 = icmp eq ptr %i.ax, null
  br i1 %.not134, label %.thread153, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ay = trunc i64 %.0108 to i32
  %i.az = call ptr @lpFind(ptr noundef %i.aw, ptr noundef nonnull %i.ax, ptr noundef nonnull %.0107, i32 noundef %i.ay, i32 noundef 0) #11
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %.thread153, label %.critedge

.thread153:                                       ; preds = %bb.v, %bb.w
  %i.bb = call i64 @lpLength(ptr noundef %i.aw) #11
  %i.bc = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7960), align 8, !tbaa !13
  %i.bd = icmp uge i64 %i.bb, %i.bc
  %i.be = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7968), align 8
  %.not135 = icmp ugt i64 %.0108, %i.be
  %or.cond = select i1 %i.bd, i1 true, i1 %.not135
  br i1 %or.cond, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %.thread153
  %i.bf = call i32 @lpSafeToAdd(ptr noundef %i.aw, i64 noundef %.0108) #11
  %.not136 = icmp eq i32 %i.bf, 0
  br i1 %.not136, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bg = icmp eq ptr %.0107, %i.a
  br i1 %i.bg, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bh = call ptr @lpAppendInteger(ptr noundef %i.aw, i64 noundef %3) #11
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.bi = trunc i64 %.0108 to i32
  %i.bj = call ptr @lpAppend(ptr noundef %i.aw, ptr noundef nonnull %.0107, i32 noundef %i.bi) #11
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0116 = phi ptr [ %i.bh, %bb.z ], [ %i.bj, %bb.aa ]
  store ptr %.0116, ptr %i.av, align 8, !tbaa !47
  br label %.critedge

bb.ac:                                            ; preds = %bb.x, %.thread153
  %i.bk = call i64 @lpLength(ptr noundef %i.aw) #11
  %i.bl = add i64 %i.bk, 1
  %i.bm = call i32 @setTypeConvertAndExpand(ptr noundef nonnull %0, i32 noundef 2, i64 noundef %i.bl, i32 noundef 1) ; 0 uses
  %i.bn = call ptr @sdsnewlen(ptr noundef nonnull %.0107, i64 noundef %.0108) #11 ; 6 uses
  %i.bo = load ptr, ptr %i.av, align 8, !tbaa !47
  %i.bp = call i32 @dictAdd(ptr noundef %i.bo, ptr noundef %i.bn, ptr noundef null) #11
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.ae, label %bb.ad, !prof !49

bb.ad:                                            ; preds = %bb.ac
  call void @_serverAssert(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 166) #11
  call void @abort() #12
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.br = getelementptr i8, ptr %i.bn, i64 -1
  %.val.i143 = load i8, ptr %i.br, align 1, !tbaa !60 ; 2 uses
  %i.bs = and i8 %.val.i143, 7
  switch i8 %i.bs, label %sdsAllocSize.exit146 [
    i8 0, label %bb.af
    i8 1, label %bb.ag
    i8 2, label %bb.ah
    i8 3, label %bb.ai
    i8 4, label %bb.aj
  ]

bb.af:                                            ; preds = %bb.ae
  %i.bt = lshr i8 %.val.i143, 3
  %narrow.i145 = add nuw nsw i8 %i.bt, 2
  %i.bu = zext nneg i8 %narrow.i145 to i64
  br label %sdsAllocSize.exit146

bb.ag:                                            ; preds = %bb.ae
  %i.bv = getelementptr inbounds i8, ptr %i.bn, i64 -2
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !60
  %i.bx = zext i8 %i.bw to i64
  %i.by = add nuw nsw i64 %i.bx, 4
  br label %sdsAllocSize.exit146

bb.ah:                                            ; preds = %bb.ae
  %i.bz = getelementptr inbounds i8, ptr %i.bn, i64 -3
  %i.ca = load i16, ptr %i.bz, align 1, !tbaa !61
  %i.cb = zext i16 %i.ca to i64
  %i.cc = add nuw nsw i64 %i.cb, 6
  br label %sdsAllocSize.exit146

bb.ai:                                            ; preds = %bb.ae
  %i.cd = getelementptr inbounds i8, ptr %i.bn, i64 -5
  %i.ce = load i32, ptr %i.cd, align 1, !tbaa !9
  %i.cf = zext i32 %i.ce to i64
  %i.cg = add nuw nsw i64 %i.cf, 10
  br label %sdsAllocSize.exit146

bb.aj:                                            ; preds = %bb.ae
  %i.ch = getelementptr inbounds i8, ptr %i.bn, i64 -9
  %i.ci = load i64, ptr %i.ch, align 1, !tbaa !58
end_hunk_0
begin_hunk_1_@setTypeAddAux:bb.a
  br i1 %.not128, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  store i8 0, ptr %i.e, align 1, !tbaa !60
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !47
  %i.cr = load i64, ptr %i.d, align 8, !tbaa !66
  %i.cs = call ptr @intsetAdd(ptr noundef %i.cq, i64 noundef %i.cr, ptr noundef nonnull %i.e) #11
  store ptr %i.cs, ptr %i.cp, align 8, !tbaa !47
  %i.ct = load i8, ptr %i.e, align 1, !tbaa !60
  %.not133 = icmp eq i8 %i.ct, 0
  br i1 %.not133, label %.critedge.critedge, label %bb.am

bb.am:                                            ; preds = %bb.al
  call fastcc void @maybeConvertIntset(ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %.critedge

bb.an:                                            ; preds = %bb.ak
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !47
  %i.cw = call i32 @intsetLen(ptr noundef %i.cv) #11 ; 2 uses
  %.not129 = icmp eq i32 %i.cw, 0
  br i1 %.not129, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cx = zext i32 %i.cw to i64                   ; 2 uses
  %i.cy = load ptr, ptr %i.cu, align 8, !tbaa !47
  %i.cz = call i64 @intsetMax(ptr noundef %i.cy) #11
  %i.da = call i32 @sdigits10(i64 noundef %i.cz) #11
  %i.db = load ptr, ptr %i.cu, align 8, !tbaa !47
  %i.dc = call i64 @intsetMin(ptr noundef %i.db) #11
  %i.dd = call i32 @sdigits10(i64 noundef %i.dc) #11
  %i.de = call i32 @llvm.umax.i32(i32 %i.da, i32 %i.dd)
  %i.df = zext i32 %i.de to i64
  %i.dg = load ptr, ptr %i.cu, align 8, !tbaa !47
  %i.dh = call i64 @intsetMax(ptr noundef %i.dg) #11
  %i.di = call i64 @lpEstimateBytesRepeatedInteger(i64 noundef %i.dh, i64 noundef %i.cx) #11
  %i.dj = load ptr, ptr %i.cu, align 8, !tbaa !47
  %i.dk = call i64 @intsetMin(ptr noundef %i.dj) #11
  %i.dl = call i64 @lpEstimateBytesRepeatedInteger(i64 noundef %i.dk, i64 noundef %i.cx) #11
  %i.dm = call i64 @llvm.umax.i64(i64 %i.di, i64 %i.dl)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.0118 = phi i64 [ %i.df, %bb.ao ], [ 0, %bb.an ]
  %.0117 = phi i64 [ %i.dm, %bb.ao ], [ 0, %bb.an ]
  %i.dn = load ptr, ptr %i.cu, align 8, !tbaa !47
  %i.do = call i32 @intsetLen(ptr noundef %i.dn) #11
  %i.dp = zext i32 %i.do to i64
  %i.dq = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7960), align 8, !tbaa !13
  %i.dr = icmp ugt i64 %i.dq, %i.dp
  br i1 %i.dr, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.ds = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7968), align 8, !tbaa !67 ; 2 uses
  %.not130 = icmp ugt i64 %.0108, %i.ds
  %.not131 = icmp ugt i64 %.0118, %i.ds
  %or.cond139 = select i1 %.not130, i1 true, i1 %.not131
  br i1 %or.cond139, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dt = add i64 %.0117, %.0108
  %i.du = call i32 @lpSafeToAdd(ptr noundef null, i64 noundef %i.dt) #11
  %.not132 = icmp eq i32 %i.du, 0
  br i1 %.not132, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dv = load ptr, ptr %i.cu, align 8, !tbaa !47
  %i.dw = call i32 @intsetLen(ptr noundef %i.dv) #11
  %i.dx = add i32 %i.dw, 1
  %i.dy = zext i32 %i.dx to i64
  %i.dz = call i32 @setTypeConvertAndExpand(ptr noundef nonnull %0, i32 noundef 11, i64 noundef %i.dy, i32 noundef 1) ; 0 uses
  %i.ea = load ptr, ptr %i.cu, align 8, !tbaa !47
  %i.eb = trunc i64 %.0108 to i32
  %i.ec = call ptr @lpAppend(ptr noundef %i.ea, ptr noundef nonnull %.0107, i32 noundef %i.eb) #11
  %i.ed = call ptr @lpShrinkToFit(ptr noundef %i.ec) #11
  store ptr %i.ed, ptr %i.cu, align 8, !tbaa !47
  br label %.critedge141

bb.at:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.ee = load ptr, ptr %i.cu, align 8, !tbaa !47
  %i.ef = call i32 @intsetLen(ptr noundef %i.ee) #11
  %i.eg = add i32 %i.ef, 1
  %i.eh = zext i32 %i.eg to i64
  %i.ei = call i32 @setTypeConvertAndExpand(ptr noundef nonnull %0, i32 noundef 2, i64 noundef %i.eh, i32 noundef 1) ; 0 uses
  %i.ej = call ptr @sdsnewlen(ptr noundef nonnull %.0107, i64 noundef %.0108) #11 ; 6 uses
  %i.ek = load ptr, ptr %i.cu, align 8, !tbaa !47
  %i.el = call i32 @dictAdd(ptr noundef %i.ek, ptr noundef %i.ej, ptr noundef null) #11
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %bb.av, label %bb.au, !prof !49

bb.au:                                            ; preds = %bb.at
  call void @_serverAssert(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 212) #11
  call void @abort() #12
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.en = getelementptr i8, ptr %i.ej, i64 -1
  %.val.i147 = load i8, ptr %i.en, align 1, !tbaa !60 ; 2 uses
  %i.eo = and i8 %.val.i147, 7
  switch i8 %i.eo, label %sdsAllocSize.exit150 [
    i8 0, label %bb.aw
    i8 1, label %bb.ax
    i8 2, label %bb.ay
    i8 3, label %bb.az
    i8 4, label %bb.ba
  ]

bb.aw:                                            ; preds = %bb.av
  %i.ep = lshr i8 %.val.i147, 3
  %narrow.i149 = add nuw nsw i8 %i.ep, 2
  %i.eq = zext nneg i8 %narrow.i149 to i64
  br label %sdsAllocSize.exit150

bb.ax:                                            ; preds = %bb.av
  %i.er = getelementptr inbounds i8, ptr %i.ej, i64 -2
  %i.es = load i8, ptr %i.er, align 1, !tbaa !60
  %i.et = zext i8 %i.es to i64
  %i.eu = add nuw nsw i64 %i.et, 4
  br label %sdsAllocSize.exit150

bb.ay:                                            ; preds = %bb.av
  %i.ev = getelementptr inbounds i8, ptr %i.ej, i64 -3
  %i.ew = load i16, ptr %i.ev, align 1, !tbaa !61
  %i.ex = zext i16 %i.ew to i64
  %i.ey = add nuw nsw i64 %i.ex, 6
  br label %sdsAllocSize.exit150

bb.az:                                            ; preds = %bb.av
  %i.ez = getelementptr inbounds i8, ptr %i.ej, i64 -5
  %i.fa = load i32, ptr %i.ez, align 1, !tbaa !9
  %i.fb = zext i32 %i.fa to i64
  %i.fc = add nuw nsw i64 %i.fb, 10
  br label %sdsAllocSize.exit150

bb.ba:                                            ; preds = %bb.av
  %i.fd = getelementptr inbounds i8, ptr %i.ej, i64 -9
  %i.fe = load i64, ptr %i.fd, align 1, !tbaa !58
  %i.ff = add i64 %i.fe, 18
  br label %sdsAllocSize.exit150

sdsAllocSize.exit150:                             ; preds = %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba
  %.0.i148 = phi i64 [ %i.ff, %bb.ba ], [ %i.eq, %bb.aw ], [ %i.eu, %bb.ax ], [ %i.ey, %bb.ay ], [ %i.fc, %bb.az ], [ 0, %bb.av ]
  %i.fg = load ptr, ptr %i.cu, align 8, !tbaa !47
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 56 ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !58
  %i.fj = add i64 %i.fi, %.0.i148
  store i64 %i.fj, ptr %i.fh, align 8, !tbaa !58
  br label %.critedge141

bb.bb:                                            ; preds = %bb.g
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 218, ptr noundef nonnull @.str.3) #11
  call void @abort() #12
  unreachable

.critedge.critedge:                               ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %.critedge

.critedge141:                                     ; preds = %bb.as, %sdsAllocSize.exit150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %.critedge

.critedge:                                        ; preds = %bb.w, %.critedge.critedge, %bb.u, %sdsAllocSize.exit146, %bb.ab, %.thread, %bb.am, %.critedge141, %bb.e
  %.5 = phi i32 [ 1, %sdsAllocSize.exit146 ], [ %.0.ph, %.thread ], [ 1, %.critedge141 ], [ 1, %bb.am ], [ %i.n, %bb.e ], [ 1, %bb.ab ], [ 0, %bb.u ], [ 0, %.critedge.critedge ], [ 0, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.5
}

declare ptr @intsetAdd(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @maybeConvertIntset(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, 240
  %i.c = icmp eq i64 %i.b, 96
  br i1 %i.c, label %bb.c, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 64) #11
  tail call void @abort() #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.f = tail call i32 @intsetLen(ptr noundef %i.e) #11
  %i.g = zext i32 %i.f to i64
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7952), align 8, !tbaa !68
  %spec.store.select.i = tail call range(i64 0, 1073741825) i64 @llvm.umin.i64(i64 %i.h, i64 1073741824)
  %i.i = icmp samesign ult i64 %spec.store.select.i, %i.g
  br i1 %i.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr %0, align 8
  %1 = trunc i64 %i.j to i32
  %2 = lshr i32 %1, 4
  %3 = and i32 %2, 15
  switch i32 %3, label %bb.h [
    i32 2, label %bb.e
    i32 6, label %bb.f
    i32 11, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !47   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !58
  %i.p = add i64 %i.o, %i.m
  br label %setTypeConvert.exit

bb.f:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.r = tail call i32 @intsetLen(ptr noundef %i.q) #11
  %i.s = zext i32 %i.r to i64
  br label %setTypeConvert.exit

bb.g:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.u = tail call i64 @lpLength(ptr noundef %i.t) #11
  br label %setTypeConvert.exit

bb.h:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 476, ptr noundef nonnull @.str.3) #11
  tail call void @abort() #12
  unreachable

setTypeConvert.exit:                              ; preds = %bb.e, %bb.f, %bb.g
  %.0.i.i = phi i64 [ %i.p, %bb.e ], [ %i.s, %bb.f ], [ %i.u, %bb.g ]
  %i.v = tail call i32 @setTypeConvertAndExpand(ptr noundef nonnull %0, i32 noundef 2, i64 noundef %.0.i.i, i32 noundef 1) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %setTypeConvert.exit, %bb.c
  ret void
}

declare i32 @ll2string(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

declare ptr @sdsnewlen(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @dictFindLink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @sdsdup(ptr noundef) local_unnamed_addr #1

declare void @dictSetKeyAtLink(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @sdsfree(ptr noundef) local_unnamed_addr #1

declare ptr @lpFirst(ptr noundef) local_unnamed_addr #1

declare ptr @lpFind(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i64 @lpLength(ptr noundef) local_unnamed_addr #1

declare i32 @lpSafeToAdd(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @lpAppendInteger(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @lpAppend(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @dictAdd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @string2ll(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @intsetLen(ptr noundef) local_unnamed_addr #1

declare i32 @sdigits10(i64 noundef) local_unnamed_addr #1

declare i64 @intsetMax(ptr noundef) local_unnamed_addr #1

declare i64 @intsetMin(ptr noundef) local_unnamed_addr #1

declare i64 @lpEstimateBytesRepeatedInteger(i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @lpShrinkToFit(ptr noundef) local_unnamed_addr #1

declare void @_serverPanic(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @setTypeRemove(ptr noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 -1
  %.val.i = load i8, ptr %i.a, align 1, !tbaa !60 ; 2 uses
  %i.b = and i8 %.val.i, 7
  switch i8 %i.b, label %sdslen.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i8 %.val.i, 3
  %i.d = zext nneg i8 %i.c to i64
  br label %sdslen.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %1, i64 -3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !60
  %i.g = zext i8 %i.f to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %1, i64 -5
  %i.i = load i16, ptr %i.h, align 1, !tbaa !61
  %i.j = zext i16 %i.i to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %1, i64 -9
  %i.l = load i32, ptr %i.k, align 1, !tbaa !9
  %i.m = zext i32 %i.l to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds i8, ptr %1, i64 -17
  %i.o = load i64, ptr %i.n, align 1, !tbaa !58
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.o, %bb.f ], [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %i.j, %bb.d ], [ %i.m, %bb.e ], [ 0, %bb.a ]
  %i.p = tail call i32 @setTypeRemoveAux(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %.0.i, i64 noundef 0, i32 noundef 1)
  ret i32 %i.p
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setTypeRemoveAux(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8
  %i.f = and i64 %i.e, 240
  %i.g = icmp eq i64 %i.f, 96
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.j = call ptr @intsetRemove(ptr noundef %i.i, i64 noundef %3, ptr noundef nonnull %i.b) #11
  store ptr %i.j, ptr %i.h, align 8, !tbaa !47
  %i.k = load i32, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.l = call i32 @ll2string(ptr noundef nonnull %i.a, i64 noundef 21, i64 noundef %3) #11
  %i.m = sext i32 %i.l to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.045 = phi i64 [ %2, %bb.a ], [ %i.m, %bb.d ]  ; 3 uses
  %.044 = phi i32 [ %4, %bb.a ], [ 0, %bb.d ]
  %.040 = phi ptr [ %1, %bb.a ], [ %i.a, %bb.d ]  ; 5 uses
  %i.n = load i64, ptr %0, align 8
  %5 = trunc i64 %i.n to i32
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 15
  switch i32 %7, label %bb.p [
    i32 2, label %bb.f
    i32 11, label %bb.j
    i32 6, label %bb.m
  ]

bb.f:                                             ; preds = %bb.e
  %.not54 = icmp eq i32 %.044, 0
  br i1 %.not54, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = call ptr @sdsnewlen(ptr noundef nonnull %.040, i64 noundef %.045) #11
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.p = phi ptr [ %i.o, %bb.g ], [ %.040, %bb.f ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !47
  %i.s = call i32 @dictDelete(ptr noundef %i.r, ptr noundef %i.p) #11
  %i.t = icmp eq i32 %i.s, 0
  %i.u = zext i1 %i.t to i32                      ; 2 uses
  %.not55 = icmp eq ptr %i.p, %.040
  br i1 %.not55, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @sdsfree(ptr noundef %i.p) #11
  br label %.thread

bb.j:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !47   ; 3 uses
  %i.x = call ptr @lpFirst(ptr noundef %i.w) #11  ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = trunc i64 %.045 to i32
  %i.aa = call ptr @lpFind(ptr noundef %i.w, ptr noundef nonnull %i.x, ptr noundef nonnull %.040, i32 noundef %i.z, i32 noundef 0) #11 ; 2 uses
  %.not53 = icmp eq ptr %i.aa, null
  br i1 %.not53, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = call ptr @lpDelete(ptr noundef %i.w, ptr noundef nonnull %i.aa, ptr noundef null) #11
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !47
  br label %.thread

bb.m:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.ac = call i32 @string2ll(ptr noundef nonnull %.040, i64 noundef %.045, ptr noundef nonnull %i.c) #11
  %.not51 = icmp eq i32 %i.ac, 0
  br i1 %.not51, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !47
  %i.af = load i64, ptr %i.c, align 8, !tbaa !66
  %i.ag = call ptr @intsetRemove(ptr noundef %i.ae, i64 noundef %i.af, ptr noundef nonnull %i.d) #11
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !47
  %i.ah = load i32, ptr %i.d, align 4, !tbaa !9
  %.not52 = icmp eq i32 %i.ah, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br i1 %.not52, label %.critedge, label %bb.o

.critedge:                                        ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %.thread

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %.thread

bb.p:                                             ; preds = %bb.e
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 271, ptr noundef nonnull @.str.3) #11
  call void @abort() #12
  unreachable

.thread:                                          ; preds = %bb.l, %bb.j, %.critedge, %bb.k, %bb.o, %bb.h, %bb.i, %bb.c
  %.4 = phi i32 [ %i.k, %bb.c ], [ %i.u, %bb.h ], [ 0, %.critedge ], [ 1, %bb.o ], [ %i.u, %bb.i ], [ 0, %bb.k ], [ 1, %bb.l ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.4
}

declare ptr @intsetRemove(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @dictDelete(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lpDelete(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 256) i32 @setTypeIsMember(ptr noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 -1
  %.val.i = load i8, ptr %i.a, align 1, !tbaa !60 ; 2 uses
  %i.b = and i8 %.val.i, 7
  switch i8 %i.b, label %sdslen.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i8 %.val.i, 3
  %i.d = zext nneg i8 %i.c to i64
  br label %sdslen.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %1, i64 -3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !60
  %i.g = zext i8 %i.f to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %1, i64 -5
  %i.i = load i16, ptr %i.h, align 1, !tbaa !61
  %i.j = zext i16 %i.i to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %1, i64 -9
  %i.l = load i32, ptr %i.k, align 1, !tbaa !9
  %i.m = zext i32 %i.l to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds i8, ptr %1, i64 -17
  %i.o = load i64, ptr %i.n, align 1, !tbaa !58
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.o, %bb.f ], [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %i.j, %bb.d ], [ %i.m, %bb.e ], [ 0, %bb.a ]
  %i.p = tail call i32 @setTypeIsMemberAux(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %.0.i, i64 noundef 0, i32 noundef 1)
  ret i32 %i.p
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 256) i32 @setTypeIsMemberAux(ptr noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8
  %i.d = and i64 %i.c, 240
  %i.e = icmp eq i64 %i.d, 96
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47
  %i.h = tail call zeroext i8 @intsetFind(ptr noundef %i.g, i64 noundef %3) #11
  %i.i = zext i8 %i.h to i32
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.j = call i32 @ll2string(ptr noundef nonnull %i.a, i64 noundef 21, i64 noundef %3) #11
  %i.k = sext i32 %i.j to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.031 = phi i32 [ %4, %bb.a ], [ 0, %bb.d ]
  %.030 = phi i64 [ %2, %bb.a ], [ %i.k, %bb.d ]  ; 3 uses
  %.029 = phi ptr [ %1, %bb.a ], [ %i.a, %bb.d ]  ; 4 uses
  %i.l = load i64, ptr %0, align 8
  %i.m = trunc i64 %i.l to i32
  %i.n = lshr i32 %i.m, 4
  %i.o = and i32 %i.n, 15                         ; 2 uses
  switch i32 %i.o, label %bb.k [
    i32 11, label %bb.f
    i32 6, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !47   ; 2 uses
  %i.r = call ptr @lpFirst(ptr noundef %i.q) #11  ; 2 uses
  %.not36 = icmp eq ptr %i.r, null
  br i1 %.not36, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = trunc i64 %.030 to i32
  %i.t = call ptr @lpFind(ptr noundef %i.q, ptr noundef nonnull %i.r, ptr noundef nonnull %.029, i32 noundef %i.s, i32 noundef 0) #11
  %i.u = icmp ne ptr %i.t, null
  %i.v = zext i1 %i.u to i32
  br label %bb.p

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.w = call i32 @string2ll(ptr noundef nonnull %.029, i64 noundef %.030, ptr noundef nonnull %i.b) #11
  %.not35 = icmp eq i32 %i.w, 0
  br i1 %.not35, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !47
  %i.z = load i64, ptr %i.b, align 8, !tbaa !66
  %i.aa = call zeroext i8 @intsetFind(ptr noundef %i.y, i64 noundef %i.z) #11
  %i.ab = icmp ne i8 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
end_hunk_1
begin_hunk_2_@setTypeResetIterator:bb.a
  %i.b = load i32, ptr %i.a, align 8, !tbaa !55
  %i.c = icmp eq i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @dictResetIterator(ptr noundef nonnull %i.d) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @dictResetIterator(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @setTypeNext(ptr noundef %0, ptr noundef writeonly captures(none) %1, ptr noundef writeonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !55
  switch i32 %i.c, label %bb.o [
    i32 2, label %bb.b
    i32 6, label %bb.i
    i32 11, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = tail call ptr @dictNext(ptr noundef nonnull %i.d) #11 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @dictGetKey(ptr noundef nonnull %i.e) #11 ; 6 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !59
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %.val.i = load i8, ptr %i.h, align 1, !tbaa !60 ; 2 uses
  %i.i = and i8 %.val.i, 7
  switch i8 %i.i, label %.thread [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = lshr i8 %.val.i, 3
  %i.k = zext nneg i8 %i.j to i64
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds i8, ptr %i.g, i64 -3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !60
  %i.n = zext i8 %i.m to i64
  br label %.thread

bb.f:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 -5
  %i.p = load i16, ptr %i.o, align 1, !tbaa !61
  %i.q = zext i16 %i.p to i64
  br label %.thread

bb.g:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds i8, ptr %i.g, i64 -9
  %i.s = load i32, ptr %i.r, align 1, !tbaa !9
  %i.t = zext i32 %i.s to i64
  br label %.thread

bb.h:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds i8, ptr %i.g, i64 -17
  %i.v = load i64, ptr %i.u, align 1, !tbaa !58
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0.i = phi i64 [ %i.v, %bb.h ], [ %i.k, %bb.d ], [ %i.n, %bb.e ], [ %i.q, %bb.f ], [ %i.t, %bb.g ], [ 0, %bb.c ]
  store i64 %.0.i, ptr %2, align 8, !tbaa !58
  store i64 -123456789, ptr %3, align 8, !tbaa !58
  br label %bb.p

bb.i:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %0, align 8, !tbaa !50
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !47
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !56  ; 2 uses
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !56
  %i.ac = tail call zeroext i8 @intsetGet(ptr noundef %i.y, i32 noundef %i.aa, ptr noundef %3) #11
  %.not = icmp eq i8 %i.ac, 0
  br i1 %.not, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %1, align 8, !tbaa !59
  br label %bb.p

bb.k:                                             ; preds = %bb.a
  %i.ad = load ptr, ptr %0, align 8, !tbaa !50
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !47 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !57 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aj = tail call ptr @lpFirst(ptr noundef %i.af) #11
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ak = tail call ptr @lpNext(ptr noundef %i.af, ptr noundef nonnull %i.ah) #11
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0 = phi ptr [ %i.aj, %bb.l ], [ %i.ak, %bb.m ] ; 3 uses
  %i.al = icmp eq ptr %.0, null
  br i1 %i.al, label %bb.q, label %.thread37

.thread37:                                        ; preds = %bb.n
  store ptr %.0, ptr %i.ag, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !tbaa !9
  %i.am = call ptr @lpGetValue(ptr noundef nonnull %.0, ptr noundef nonnull %i.a, ptr noundef %3) #11
  store ptr %i.am, ptr %1, align 8, !tbaa !59
  %i.an = load i32, ptr %i.a, align 4, !tbaa !9
  %i.ao = zext i32 %i.an to i64
  store i64 %i.ao, ptr %2, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.p

bb.o:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 382, ptr noundef nonnull @.str.4) #11
  tail call void @abort() #12
  unreachable

bb.p:                                             ; preds = %.thread37, %.thread, %bb.j
  %i.ap = load i32, ptr %i.b, align 8, !tbaa !55
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.b, %bb.i, %bb.p
  %.2 = phi i32 [ %i.ap, %bb.p ], [ -1, %bb.i ], [ -1, %bb.b ], [ -1, %bb.n ]
  ret i32 %.2
}

declare ptr @dictNext(ptr noundef) local_unnamed_addr #1

declare ptr @dictGetKey(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @intsetGet(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lpNext(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lpGetValue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @setTypeNextObject(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 0, ptr %i.a, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i64 0, ptr %i.c, align 8, !tbaa !58
  %i.d = call i32 @setTypeNext(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a)
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !59   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.c, align 8, !tbaa !58
  %i.h = call ptr @sdsnewlen(ptr noundef nonnull %i.f, i64 noundef %i.g) #11
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.a, align 8, !tbaa !58
  %i.j = call ptr @sdsfromlonglong(i64 noundef %i.i) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi ptr [ %i.j, %bb.d ], [ %i.h, %bb.c ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.0
}

declare ptr @sdsfromlonglong(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 16) i32 @setTypeRandomElement(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) %1, ptr noundef writeonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load i64, ptr %0, align 8
  %4 = trunc i64 %i.b to i32
  %5 = lshr i32 %4, 4
  %6 = and i32 %5, 15
  switch i32 %6, label %bb.j [
    i32 2, label %bb.b
    i32 6, label %bb.h
    i32 11, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.e = tail call ptr @dictGetFairRandomKey(ptr noundef %i.d) #11
  %i.f = tail call ptr @dictGetKey(ptr noundef %i.e) #11 ; 6 uses
  store ptr %i.f, ptr %1, align 8, !tbaa !59
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %.val.i = load i8, ptr %i.g, align 1, !tbaa !60 ; 2 uses
  %i.h = and i8 %.val.i, 7
  switch i8 %i.h, label %sdslen.exit [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = lshr i8 %.val.i, 3
  %i.j = zext nneg i8 %i.i to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 -3
  %i.l = load i8, ptr %i.k, align 1, !tbaa !60
  %i.m = zext i8 %i.l to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds i8, ptr %i.f, i64 -5
  %i.o = load i16, ptr %i.n, align 1, !tbaa !61
  %i.p = zext i16 %i.o to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds i8, ptr %i.f, i64 -9
  %i.r = load i32, ptr %i.q, align 1, !tbaa !9
  %i.s = zext i32 %i.r to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds i8, ptr %i.f, i64 -17
  %i.u = load i64, ptr %i.t, align 1, !tbaa !58
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i64 [ %i.u, %bb.g ], [ %i.j, %bb.c ], [ %i.m, %bb.d ], [ %i.p, %bb.e ], [ %i.s, %bb.f ], [ 0, %bb.b ]
  store i64 %.0.i, ptr %2, align 8, !tbaa !58
  store i64 -123456789, ptr %3, align 8, !tbaa !58
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !47
  %i.x = tail call i64 @intsetRandom(ptr noundef %i.w) #11
  store i64 %i.x, ptr %3, align 8, !tbaa !58
  store ptr null, ptr %1, align 8, !tbaa !59
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !47   ; 2 uses
  %i.aa = tail call i32 @rand() #11
  %i.ab = sext i32 %i.aa to i64
  %i.ac = tail call i64 @lpLength(ptr noundef %i.z) #11
  %i.ad = urem i64 %i.ab, %i.ac
  %sext = shl i64 %i.ad, 32
  %i.ae = ashr exact i64 %sext, 32
  %i.af = tail call ptr @lpSeek(ptr noundef %i.z, i64 noundef %i.ae) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.ag = call ptr @lpGetValue(ptr noundef %i.af, ptr noundef nonnull %i.a, ptr noundef %3) #11
  store ptr %i.ag, ptr %1, align 8, !tbaa !59
  %i.ah = load i32, ptr %i.a, align 4, !tbaa !9
  %i.ai = zext i32 %i.ah to i64
  store i64 %i.ai, ptr %2, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 434, ptr noundef nonnull @.str.3) #11
  tail call void @abort() #12
  unreachable

bb.k:                                             ; preds = %bb.h, %bb.i, %sdslen.exit
  %i.aj = load i64, ptr %0, align 8
  %i.ak = trunc i64 %i.aj to i32
  %i.al = lshr i32 %i.ak, 4
  %i.am = and i32 %i.al, 15
  ret i32 %i.am
}

declare ptr @dictGetFairRandomKey(ptr noundef) local_unnamed_addr #1

declare i64 @intsetRandom(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #4

declare ptr @lpSeek(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @setTypePopRandom(ptr noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = load i64, ptr %0, align 8
  %i.h = and i64 %i.g, 240
  %i.i = icmp eq i64 %i.h, 176
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47   ; 2 uses
  %i.l = tail call ptr @lpFirst(ptr noundef %i.k) #11
  %i.m = call ptr @lpNextRandom(ptr noundef %i.k, ptr noundef %i.l, ptr noundef nonnull %i.a, i32 noundef 1, i32 noundef 1) #11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 0, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i64 0, ptr %i.c, align 8, !tbaa !66
  %i.n = call ptr @lpGetValue(ptr noundef %i.m, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #11 ; 2 uses
  %.not14 = icmp eq ptr %i.n, null
  br i1 %.not14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.b, align 4, !tbaa !9
  %i.p = zext i32 %i.o to i64
  %i.q = call ptr @createStringObject(ptr noundef nonnull %i.n, i64 noundef %i.p) #11
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.c, align 8, !tbaa !66
  %i.s = call ptr @createStringObjectFromLongLong(i64 noundef %i.r) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi ptr [ %i.q, %bb.c ], [ %i.s, %bb.d ]
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.u = call ptr @lpDelete(ptr noundef %i.t, ptr noundef %i.m, ptr noundef null) #11
  store ptr %i.u, ptr %i.j, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  store i64 0, ptr %i.e, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  store i64 0, ptr %i.f, align 8, !tbaa !58
  %i.v = call i32 @setTypeRandomElement(ptr noundef nonnull %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f)
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !59   ; 3 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load i64, ptr %i.e, align 8, !tbaa !58   ; 2 uses
  %i.y = call ptr @createStringObject(ptr noundef nonnull %i.w, i64 noundef %i.x) #11
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.z = load i64, ptr %i.f, align 8, !tbaa !58
  %i.aa = call ptr @createStringObjectFromLongLong(i64 noundef %i.z) #11
  %.pre = load i64, ptr %i.e, align 8, !tbaa !58
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = phi i64 [ %i.x, %bb.g ], [ %.pre, %bb.h ]
  %.1 = phi ptr [ %i.y, %bb.g ], [ %i.aa, %bb.h ]
  %i.ac = load i64, ptr %i.f, align 8, !tbaa !58
  %i.ad = icmp eq i32 %i.v, 2
  %i.ae = zext i1 %i.ad to i32
  %i.af = call i32 @setTypeRemoveAux(ptr noundef nonnull %0, ptr noundef %i.w, i64 noundef %i.ab, i64 noundef %i.ac, i32 noundef %i.ae) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e
  %.2 = phi ptr [ %.0, %bb.e ], [ %.1, %bb.i ]
  ret ptr %.2
}

declare ptr @lpNextRandom(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @createStringObject(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @createStringObjectFromLongLong(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @setTypeSize(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %1 = trunc i64 %i.a to i32
  %2 = lshr i32 %1, 4
  %3 = and i32 %2, 15
  switch i32 %3, label %bb.e [
    i32 2, label %bb.b
    i32 6, label %bb.c
    i32 11, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !58
  %i.h = add i64 %i.g, %i.e
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !47
  %i.k = tail call i32 @intsetLen(ptr noundef %i.j) #11
  %i.l = zext i32 %i.k to i64
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.o = tail call i64 @lpLength(ptr noundef %i.n) #11
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 476, ptr noundef nonnull @.str.3) #11
  tail call void @abort() #12
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ %i.h, %bb.b ], [ %i.l, %bb.c ], [ %i.o, %bb.d ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @setTypeAllocSize(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = and i64 %i.a, 15
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %bb.c, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssertWithInfo(ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 481) #11
  tail call void @abort() #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %1 = trunc i64 %i.a to i32
  %2 = lshr i32 %1, 4
  %3 = and i32 %2, 15
  switch i32 %3, label %bb.g [
    i32 2, label %bb.d
    i32 6, label %bb.e
    i32 11, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47   ; 2 uses
  %i.f = tail call i64 @dictMemUsage(ptr noundef %i.e) #11
  %i.g = add i64 %i.f, 56
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !58
  %i.j = add i64 %i.g, %i.i
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !47
  %i.m = tail call i64 @intsetAllocSize(ptr noundef %i.l) #11
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !47
  %i.p = tail call i64 @lpBytes(ptr noundef %i.o) #11
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 491, ptr noundef nonnull @.str.3) #11
  tail call void @abort() #12
  unreachable

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.0 = phi i64 [ %i.j, %bb.d ], [ %i.m, %bb.e ], [ %i.p, %bb.f ]
  ret i64 %.0
}

declare void @_serverAssertWithInfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @dictMemUsage(ptr noundef) local_unnamed_addr #1

declare i64 @intsetAllocSize(ptr noundef) local_unnamed_addr #1

declare i64 @lpBytes(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @setTypeConvert(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %2 = trunc i64 %i.a to i32
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 15
  switch i32 %4, label %bb.e [
    i32 2, label %bb.b
    i32 6, label %bb.c
    i32 11, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !58
  %i.h = add i64 %i.g, %i.e
  br label %setTypeSize.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !47
  %i.k = tail call i32 @intsetLen(ptr noundef %i.j) #11
  %i.l = zext i32 %i.k to i64
  br label %setTypeSize.exit

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.o = tail call i64 @lpLength(ptr noundef %i.n) #11
  br label %setTypeSize.exit

bb.e:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 476, ptr noundef nonnull @.str.3) #11
  tail call void @abort() #12
  unreachable

setTypeSize.exit:                                 ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i64 [ %i.h, %bb.b ], [ %i.l, %bb.c ], [ %i.o, %bb.d ]
  %i.p = tail call i32 @setTypeConvertAndExpand(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %.0.i, i32 noundef 1) ; 0 uses
  ret void
}

declare ptr @dictCreate(ptr noundef) local_unnamed_addr #1

declare i32 @dictTryExpand(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @dictRelease(ptr noundef) local_unnamed_addr #1

declare void @freeSetObject(ptr noundef) local_unnamed_addr #1

declare ptr @lpNew(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @setTypeDup(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.setTypeIterator, align 8    ; 10 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = load i64, ptr %0, align 8                ; 2 uses
  %i.e = and i64 %i.d, 15
  %i.f = icmp eq i64 %i.e, 2
  br i1 %i.f, label %bb.c, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 575) #11
  tail call void @abort() #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %2 = trunc i64 %i.d to i32
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 15
  switch i32 %4, label %bb.q [
    i32 6, label %bb.d
    i32 11, label %bb.e
    i32 2, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !47   ; 2 uses
  %i.i = tail call i64 @intsetBlobLen(ptr noundef %i.h) #11 ; 2 uses
  %i.j = tail call noalias ptr @zmalloc(i64 noundef %i.i) #13 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.j, ptr align 4 %i.h, i64 %i.i, i1 false)
  %i.k = tail call ptr @createObject(i32 noundef 2, ptr noundef %i.j) #11 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8
  %i.m = and i64 %i.l, -241
  %i.n = or disjoint i64 %i.m, 96
  store i64 %i.n, ptr %i.k, align 8
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47   ; 2 uses
  %i.q = tail call i64 @lpBytes(ptr noundef %i.p) #11 ; 2 uses
  %i.r = tail call noalias ptr @zmalloc(i64 noundef %i.q) #13 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.p, i64 %i.q, i1 false)
  %i.s = tail call ptr @createObject(i32 noundef 2, ptr noundef %i.r) #11 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = and i64 %i.t, -241
  %i.v = or disjoint i64 %i.u, 176
  store i64 %i.v, ptr %i.s, align 8
  br label %bb.r

bb.f:                                             ; preds = %bb.c
  %i.w = tail call ptr @createSetObject() #11     ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !47   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !47
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !58
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !58
  %i.af = add i64 %i.ae, %i.ac
  %i.ag = tail call i32 @dictExpand(ptr noundef %i.aa, i64 noundef %i.af) #11 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  store ptr %0, ptr %1, align 8, !tbaa !50
  %i.ah = load i64, ptr %0, align 8
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = lshr i32 %i.ai, 4
  %i.ak = and i32 %i.aj, 15                       ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !55
  switch i32 %i.ak, label %bb.j [
    i32 2, label %bb.g
    i32 6, label %bb.h
    i32 11, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load ptr, ptr %i.x, align 8, !tbaa !47
  call void @dictInitIterator(ptr noundef nonnull %i.am, ptr noundef %i.an) #11
  br label %setTypeInitIterator.exit

bb.h:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !56
  br label %setTypeInitIterator.exit

bb.i:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr null, ptr %i.ap, align 8, !tbaa !57
  br label %setTypeInitIterator.exit

bb.j:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 327, ptr noundef nonnull @.str.3) #11
  tail call void @abort() #12
  unreachable

setTypeInitIterator.exit:                         ; preds = %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i64 0, ptr %i.c, align 8, !tbaa !58
  %i.aq = call i32 @setTypeNext(ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %.not27 = icmp eq i32 %i.aq, -1
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %setTypeInitIterator.exit, %setTypeAdd.exit
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !59  ; 6 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 -1
  %.val.i.i = load i8, ptr %i.as, align 1, !tbaa !60 ; 2 uses
  %i.at = and i8 %.val.i.i, 7
  switch i8 %i.at, label %setTypeAdd.exit [
    i8 0, label %bb.k
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.n
    i8 4, label %bb.o
  ]

bb.k:                                             ; preds = %.lr.ph
  %i.au = lshr i8 %.val.i.i, 3
  %i.av = zext nneg i8 %i.au to i64
  br label %setTypeAdd.exit

bb.l:                                             ; preds = %.lr.ph
  %i.aw = getelementptr inbounds i8, ptr %i.ar, i64 -3
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !60
  %i.ay = zext i8 %i.ax to i64
  br label %setTypeAdd.exit

bb.m:                                             ; preds = %.lr.ph
  %i.az = getelementptr inbounds i8, ptr %i.ar, i64 -5
  %i.ba = load i16, ptr %i.az, align 1, !tbaa !61
  %i.bb = zext i16 %i.ba to i64
  br label %setTypeAdd.exit

bb.n:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds i8, ptr %i.ar, i64 -9
  %i.bd = load i32, ptr %i.bc, align 1, !tbaa !9
  %i.be = zext i32 %i.bd to i64
  br label %setTypeAdd.exit

bb.o:                                             ; preds = %.lr.ph
  %i.bf = getelementptr inbounds i8, ptr %i.ar, i64 -17
  %i.bg = load i64, ptr %i.bf, align 1, !tbaa !58
  br label %setTypeAdd.exit

setTypeAdd.exit:                                  ; preds = %.lr.ph, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  %.0.i.i = phi i64 [ %i.bg, %bb.o ], [ %i.av, %bb.k ], [ %i.ay, %bb.l ], [ %i.bb, %bb.m ], [ %i.be, %bb.n ], [ 0, %.lr.ph ]
  %i.bh = call range(i32 0, 256) i32 @setTypeAddAux(ptr noundef %i.w, ptr noundef nonnull %i.ar, i64 noundef %.0.i.i, i64 noundef 0, i32 noundef 1) ; 0 uses
  %i.bi = call i32 @setTypeNext(ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %.not = icmp eq i32 %i.bi, -1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !69

._crit_edge:                                      ; preds = %setTypeAdd.exit, %setTypeInitIterator.exit
  %i.bj = load i32, ptr %i.al, align 8, !tbaa !55
  %i.bk = icmp eq i32 %i.bj, 2
  br i1 %i.bk, label %bb.p, label %setTypeResetIterator.exit

bb.p:                                             ; preds = %._crit_edge
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @dictResetIterator(ptr noundef nonnull %i.bl) #11
  br label %setTypeResetIterator.exit

setTypeResetIterator.exit:                        ; preds = %._crit_edge, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  br label %bb.r

bb.q:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 606, ptr noundef nonnull @.str.3) #11
  tail call void @abort() #12
  unreachable

bb.r:                                             ; preds = %bb.e, %setTypeResetIterator.exit, %bb.d
  %.0 = phi ptr [ %i.k, %bb.d ], [ %i.s, %bb.e ], [ %i.w, %setTypeResetIterator.exit ]
  ret ptr %.0
}

declare i64 @intsetBlobLen(ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare noalias ptr @zmalloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare ptr @createObject(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @saddCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 9 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !83
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !84
  %i.i = call ptr @lookupKeyWriteWithLink(ptr noundef %i.d, ptr noundef %i.h, ptr noundef nonnull %i.a) #11 ; 9 uses
  %i.j = call i32 @checkType(ptr noundef %0, ptr noundef %i.i, i32 noundef 2) #11
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq ptr %i.i, null
  br i1 %i.k, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !83
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !84
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = load i32, ptr %i.q, align 8, !tbaa !85
  %i.s = add nsw i32 %i.r, -2
  %i.t = sext i32 %i.s to i64                     ; 3 uses
  %i.u = call i32 @isSdsRepresentableAsLongLong(ptr noundef %i.p, ptr noundef null) #11
  %i.v = icmp ne i32 %i.u, 0
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7952), align 8
  %.not.i = icmp ult i64 %i.w, %i.t
  %or.cond.i = select i1 %i.v, i1 true, i1 %.not.i
  br i1 %or.cond.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = call ptr @createIntsetObject() #11
  br label %setTypeCreate.exit

bb.e:                                             ; preds = %bb.c
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7960), align 8, !tbaa !13
  %.not7.i = icmp ult i64 %i.y, %i.t
  br i1 %.not7.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = call ptr @createSetListpackObject() #11
  br label %setTypeCreate.exit

bb.g:                                             ; preds = %bb.e
  %i.aa = call ptr @createSetObject() #11         ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !47
  %i.ad = call i32 @dictExpand(ptr noundef %i.ac, i64 noundef %i.t) #11 ; 0 uses
  br label %setTypeCreate.exit

setTypeCreate.exit:                               ; preds = %bb.d, %bb.f, %bb.g
  %.0.i = phi ptr [ %i.x, %bb.d ], [ %i.z, %bb.f ], [ %i.aa, %bb.g ]
  store ptr %.0.i, ptr %i.b, align 8, !tbaa !84
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !83
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !84
  %i.ai = call ptr @dbAddByLink(ptr noundef %i.ae, ptr noundef %i.ah, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.n

bb.h:                                             ; preds = %bb.b
  %i.aj = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !86
  %.not50 = icmp eq i32 %i.aj, 0
  br i1 %.not50, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = call i64 @kvobjAllocSize(ptr noundef nonnull %i.i) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.045 = phi i64 [ %i.ak, %bb.i ], [ 0, %bb.h ]  ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.am = load i32, ptr %i.al, align 8, !tbaa !85
  %i.an = add nsw i32 %i.am, -2
  %i.ao = sext i32 %i.an to i64                   ; 3 uses
  %i.ap = load i64, ptr %i.i, align 8
  %i.aq = and i64 %i.ap, 240                      ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 176
  %i.as = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7960), align 8
  %i.at = icmp ult i64 %i.as, %i.ao
  %or.cond.i56 = select i1 %i.ar, i1 %i.at, i1 false
  br i1 %or.cond.i56, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = icmp eq i64 %i.aq, 96
  %i.av = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7952), align 8
  %i.aw = icmp ult i64 %i.av, %i.ao
  %or.cond7.i = select i1 %i.au, i1 %i.aw, i1 false
  br i1 %or.cond7.i, label %bb.l, label %setTypeMaybeConvert.exit

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ax = call i32 @setTypeConvertAndExpand(ptr noundef nonnull %i.i, i32 noundef 2, i64 noundef %i.ao, i32 noundef 1) ; 0 uses
  br label %setTypeMaybeConvert.exit

setTypeMaybeConvert.exit:                         ; preds = %bb.k, %bb.l
  %i.ay = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !86
  %.not51 = icmp eq i32 %i.ay, 0
  br i1 %.not51, label %.thread, label %bb.m

bb.m:                                             ; preds = %setTypeMaybeConvert.exit
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !83
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !84
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !47
  %i.bf = call i32 @getKeySlot(ptr noundef %i.be) #11
  %i.bg = call i64 @kvobjAllocSize(ptr noundef nonnull %i.i) #11
  call void @updateSlotAllocSize(ptr noundef %i.az, i32 noundef %i.bf, ptr noundef nonnull %i.i, i64 noundef %.045, i64 noundef %i.bg) #11
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %setTypeCreate.exit
  %.1.ph = phi i64 [ %.045, %bb.m ], [ 0, %setTypeCreate.exit ]
  %.0.ph = phi ptr [ %i.i, %bb.m ], [ %i.ai, %setTypeCreate.exit ] ; 3 uses
  %.pr = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !86
  %.not52 = icmp eq i32 %.pr, 0
  br i1 %.not52, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = call i64 @kvobjAllocSize(ptr noundef %.0.ph) #11
  br label %.thread

.thread:                                          ; preds = %setTypeMaybeConvert.exit, %bb.o, %bb.n
  %.061 = phi ptr [ %.0.ph, %bb.o ], [ %.0.ph, %bb.n ], [ %i.i, %setTypeMaybeConvert.exit ] ; 8 uses
  %.2 = phi i64 [ %i.bh, %bb.o ], [ %.1.ph, %bb.n ], [ %.045, %setTypeMaybeConvert.exit ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !85
  %i.bk = icmp sgt i32 %i.bj, 2
  br i1 %i.bk, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread, %setTypeAdd.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %setTypeAdd.exit ], [ 2, %.thread ] ; 2 uses
  %.04663 = phi i32 [ %spec.select, %setTypeAdd.exit ], [ 0, %.thread ]
  %i.bl = load ptr, ptr %i.e, align 8, !tbaa !83
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !84
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !47 ; 6 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 -1
  %.val.i.i = load i8, ptr %i.bq, align 1, !tbaa !60 ; 2 uses
  %i.br = and i8 %.val.i.i, 7
  switch i8 %i.br, label %setTypeAdd.exit [
    i8 0, label %bb.p
    i8 1, label %bb.q
    i8 2, label %bb.r
    i8 3, label %bb.s
    i8 4, label %bb.t
  ]

bb.p:                                             ; preds = %.lr.ph
  %i.bs = lshr i8 %.val.i.i, 3
  %i.bt = zext nneg i8 %i.bs to i64
  br label %setTypeAdd.exit

bb.q:                                             ; preds = %.lr.ph
  %i.bu = getelementptr inbounds i8, ptr %i.bp, i64 -3
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !60
  %i.bw = zext i8 %i.bv to i64
  br label %setTypeAdd.exit

bb.r:                                             ; preds = %.lr.ph
  %i.bx = getelementptr inbounds i8, ptr %i.bp, i64 -5
  %i.by = load i16, ptr %i.bx, align 1, !tbaa !61
  %i.bz = zext i16 %i.by to i64
  br label %setTypeAdd.exit

bb.s:                                             ; preds = %.lr.ph
  %i.ca = getelementptr inbounds i8, ptr %i.bp, i64 -9
  %i.cb = load i32, ptr %i.ca, align 1, !tbaa !9
  %i.cc = zext i32 %i.cb to i64
  br label %setTypeAdd.exit

bb.t:                                             ; preds = %.lr.ph
  %i.cd = getelementptr inbounds i8, ptr %i.bp, i64 -17
  %i.ce = load i64, ptr %i.cd, align 1, !tbaa !58
  br label %setTypeAdd.exit

setTypeAdd.exit:                                  ; preds = %.lr.ph, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t
  %.0.i.i = phi i64 [ %i.ce, %bb.t ], [ %i.bt, %bb.p ], [ %i.bw, %bb.q ], [ %i.bz, %bb.r ], [ %i.cc, %bb.s ], [ 0, %.lr.ph ]
  %i.cf = call range(i32 0, 256) i32 @setTypeAddAux(ptr noundef %.061, ptr noundef nonnull %i.bp, i64 noundef %.0.i.i, i64 noundef 0, i32 noundef 1)
  %.not55 = icmp ne i32 %i.cf, 0
  %i.cg = zext i1 %.not55 to i32
  %spec.select = add nuw nsw i32 %.04663, %i.cg   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ch = load i32, ptr %i.bi, align 8, !tbaa !85
  %i.ci = sext i32 %i.ch to i64
  %i.cj = icmp slt i64 %indvars.iv.next, %i.ci
  br i1 %i.cj, label %.lr.ph, label %._crit_edge, !llvm.loop !87

._crit_edge:                                      ; preds = %setTypeAdd.exit, %.thread
  %.046.lcssa = phi i32 [ 0, %.thread ], [ %spec.select, %setTypeAdd.exit ] ; 2 uses
  %i.ck = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !86
  %.not53 = icmp eq i32 %i.ck, 0
  br i1 %.not53, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  %i.cl = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.cm = load ptr, ptr %i.e, align 8, !tbaa !83
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !84
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !47
  %i.cr = call i32 @getKeySlot(ptr noundef %i.cq) #11
  %i.cs = call i64 @kvobjAllocSize(ptr noundef %.061) #11
  call void @updateSlotAllocSize(ptr noundef %i.cl, i32 noundef %i.cr, ptr noundef %.061, i64 noundef %.2, i64 noundef %i.cs) #11
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge
  %.not54 = icmp eq i32 %.046.lcssa, 0
  br i1 %.not54, label %._crit_edge65, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = load i64, ptr %.061, align 8
  %1 = trunc i64 %i.ct to i32
  %2 = lshr i32 %1, 4
  %3 = and i32 %2, 15
  switch i32 %3, label %bb.aa [
    i32 2, label %bb.x
    i32 6, label %bb.y
    i32 11, label %bb.z
  ]

bb.x:                                             ; preds = %bb.w
  %i.cu = getelementptr inbounds nuw i8, ptr %.061, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !47 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !58
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !58
  %i.da = add i64 %i.cz, %i.cx
  br label %setTypeSize.exit

bb.y:                                             ; preds = %bb.w
  %i.db = getelementptr inbounds nuw i8, ptr %.061, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !47
  %i.dd = call i32 @intsetLen(ptr noundef %i.dc) #11
  %i.de = zext i32 %i.dd to i64
  br label %setTypeSize.exit

bb.z:                                             ; preds = %bb.w
  %i.df = getelementptr inbounds nuw i8, ptr %.061, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !47
  %i.dh = call i64 @lpLength(ptr noundef %i.dg) #11
  br label %setTypeSize.exit

bb.aa:                                            ; preds = %bb.w
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 476, ptr noundef nonnull @.str.3) #11
  call void @abort() #12
  unreachable

setTypeSize.exit:                                 ; preds = %bb.x, %bb.y, %bb.z
  %.0.i57 = phi i64 [ %i.da, %bb.x ], [ %i.de, %bb.y ], [ %i.dh, %bb.z ] ; 2 uses
  %i.di = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.dj = load ptr, ptr %i.e, align 8, !tbaa !83
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !84
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !47
  %i.do = call i32 @getKeySlot(ptr noundef %i.dn) #11
  %i.dp = zext nneg i32 %.046.lcssa to i64        ; 2 uses
  %i.dq = sub i64 %.0.i57, %i.dp
  call void @updateKeysizesHist(ptr noundef %i.di, i32 noundef %i.do, i32 noundef 2, i64 noundef %i.dq, i64 noundef %.0.i57) #11
  %i.dr = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.ds = load ptr, ptr %i.e, align 8, !tbaa !83
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !84
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.dr, ptr noundef %i.du, ptr noundef nonnull %.061, i32 noundef 1) #11
  %i.dv = load ptr, ptr %i.e, align 8, !tbaa !83
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !84
  %i.dy = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 72
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !88
  call void @notifyKeyspaceEvent(i32 noundef 32, ptr noundef nonnull @.str.9, ptr noundef %i.dx, i32 noundef %i.ea) #11
  br label %._crit_edge65

._crit_edge65:                                    ; preds = %bb.v, %setTypeSize.exit
  %.pre-phi = phi i64 [ %i.dp, %setTypeSize.exit ], [ 0, %bb.v ] ; 2 uses
  %i.eb = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !91
  %i.ec = add nsw i64 %i.eb, %.pre-phi
  store i64 %i.ec, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !91
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %.pre-phi) #11
  br label %bb.ab

bb.ab:                                            ; preds = %bb.a, %._crit_edge65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

declare ptr @lookupKeyWriteWithLink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @checkType(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @dbAddByLink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @kvobjAllocSize(ptr noundef) local_unnamed_addr #1

declare void @updateSlotAllocSize(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @getKeySlot(ptr noundef) local_unnamed_addr #1

declare void @updateKeysizesHist(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @keyModified(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @notifyKeyspaceEvent(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @addReplyLongLong(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @sremCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !84
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !92
  %i.f = tail call ptr @lookupKeyWriteOrReply(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.e) #11 ; 15 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.f, i32 noundef 2) #11
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.ac

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.f, align 8
  %1 = trunc i64 %i.i to i32
  %2 = lshr i32 %1, 4
  %3 = and i32 %2, 15
  switch i32 %3, label %bb.g [
    i32 2, label %bb.d
    i32 6, label %bb.e
    i32 11, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !58
  %i.p = add i64 %i.o, %i.m
  br label %setTypeSize.exit

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !47
  %i.s = tail call i32 @intsetLen(ptr noundef %i.r) #11
  %i.t = zext i32 %i.s to i64
  br label %setTypeSize.exit

bb.f:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !47
  %i.w = tail call i64 @lpLength(ptr noundef %i.v) #11
  br label %setTypeSize.exit

bb.g:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 476, ptr noundef nonnull @.str.3) #11
  tail call void @abort() #12
  unreachable

setTypeSize.exit:                                 ; preds = %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.p, %bb.d ], [ %i.t, %bb.e ], [ %i.w, %bb.f ] ; 2 uses
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !86
  %.not53 = icmp eq i32 %i.x, 0
  br i1 %.not53, label %bb.i, label %bb.h

bb.h:                                             ; preds = %setTypeSize.exit
  %i.y = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.f) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %setTypeSize.exit
  %.050 = phi i64 [ %i.y, %bb.h ], [ 0, %setTypeSize.exit ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !85
  %i.ab = icmp sgt i32 %i.aa, 2
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.w
  %indvars.iv = phi i64 [ 2, %.lr.ph ], [ %indvars.iv.next, %bb.w ] ; 2 uses
  %.04968 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.w ] ; 2 uses
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !84
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !47 ; 6 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 -1
  %.val.i.i = load i8, ptr %i.ai, align 1, !tbaa !60 ; 2 uses
  %i.aj = and i8 %.val.i.i, 7
  switch i8 %i.aj, label %setTypeRemove.exit [
    i8 0, label %bb.k
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.n
    i8 4, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  %i.ak = lshr i8 %.val.i.i, 3
  %i.al = zext nneg i8 %i.ak to i64
  br label %setTypeRemove.exit

bb.l:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds i8, ptr %i.ah, i64 -3
  %i.an = load i8, ptr %i.am, align 1, !tbaa !60
  %i.ao = zext i8 %i.an to i64
  br label %setTypeRemove.exit

bb.m:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds i8, ptr %i.ah, i64 -5
  %i.aq = load i16, ptr %i.ap, align 1, !tbaa !61
  %i.ar = zext i16 %i.aq to i64
  br label %setTypeRemove.exit

bb.n:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds i8, ptr %i.ah, i64 -9
  %i.at = load i32, ptr %i.as, align 1, !tbaa !9
  %i.au = zext i32 %i.at to i64
  br label %setTypeRemove.exit

bb.o:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds i8, ptr %i.ah, i64 -17
  %i.aw = load i64, ptr %i.av, align 1, !tbaa !58
  br label %setTypeRemove.exit

setTypeRemove.exit:                               ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  %.0.i.i = phi i64 [ %i.aw, %bb.o ], [ %i.al, %bb.k ], [ %i.ao, %bb.l ], [ %i.ar, %bb.m ], [ %i.au, %bb.n ], [ 0, %bb.j ]
  %i.ax = tail call i32 @setTypeRemoveAux(ptr noundef nonnull %i.f, ptr noundef nonnull %i.ah, i64 noundef %.0.i.i, i64 noundef 0, i32 noundef 1)
  %.not54 = icmp eq i32 %i.ax, 0
  br i1 %.not54, label %bb.w, label %bb.p

bb.p:                                             ; preds = %setTypeRemove.exit
  %i.ay = add nsw i32 %.04968, 1                  ; 2 uses
  %i.az = load i64, ptr %i.f, align 8
  %4 = trunc i64 %i.az to i32
  %5 = lshr i32 %4, 4
  %6 = and i32 %5, 15
  switch i32 %6, label %bb.t [
    i32 2, label %bb.q
    i32 6, label %bb.r
    i32 11, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  %i.ba = load ptr, ptr %i.ac, align 8, !tbaa !47 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !58
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !58
  %i.bf = add i64 %i.be, %i.bc
  br label %setTypeSize.exit58

bb.r:                                             ; preds = %bb.p
  %i.bg = load ptr, ptr %i.ac, align 8, !tbaa !47
  %i.bh = tail call i32 @intsetLen(ptr noundef %i.bg) #11
  %i.bi = zext i32 %i.bh to i64
  br label %setTypeSize.exit58

bb.s:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %i.ac, align 8, !tbaa !47
  %i.bk = tail call i64 @lpLength(ptr noundef %i.bj) #11
  br label %setTypeSize.exit58

bb.t:                                             ; preds = %bb.p
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 476, ptr noundef nonnull @.str.3) #11
  tail call void @abort() #12
  unreachable

setTypeSize.exit58:                               ; preds = %bb.q, %bb.r, %bb.s
  %.0.i57 = phi i64 [ %i.bf, %bb.q ], [ %i.bi, %bb.r ], [ %i.bk, %bb.s ]
  %i.bl = icmp eq i64 %.0.i57, 0
  br i1 %i.bl, label %bb.u, label %bb.w

bb.u:                                             ; preds = %setTypeSize.exit58
  %i.bm = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !86
  %.not55 = icmp eq i32 %i.bm, 0
  br i1 %.not55, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !70
  %i.bp = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !84
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !47
  %i.bu = tail call i32 @getKeySlot(ptr noundef %i.bt) #11
  %i.bv = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.f) #11
  tail call void @updateSlotAllocSize(ptr noundef %i.bo, i32 noundef %i.bu, ptr noundef nonnull %i.f, i64 noundef %.050, i64 noundef %i.bv) #11
  br label %.thread

.thread:                                          ; preds = %bb.u, %bb.v
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !70
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !84
  %i.cb = tail call i32 @dbDeleteSkipKeysizesUpdate(ptr noundef %i.bx, ptr noundef %i.ca) #11 ; 0 uses
  br label %bb.y

bb.w:                                             ; preds = %setTypeRemove.exit, %setTypeSize.exit58
  %.1 = phi i32 [ %i.ay, %setTypeSize.exit58 ], [ %.04968, %setTypeRemove.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cc = load i32, ptr %i.z, align 8, !tbaa !85
  %i.cd = sext i32 %i.cc to i64
  %i.ce = icmp slt i64 %indvars.iv.next, %i.cd
  br i1 %i.ce, label %bb.j, label %._crit_edge, !llvm.loop !94

._crit_edge:                                      ; preds = %bb.w, %bb.i
  %.049.lcssa = phi i32 [ 0, %bb.i ], [ %.1, %bb.w ] ; 2 uses
  %i.cf = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !86
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.y, label %bb.x

bb.x:                                             ; preds = %._crit_edge
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !70
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !84
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !47
  %i.co = tail call i32 @getKeySlot(ptr noundef %i.cn) #11
  %i.cp = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.f) #11
  tail call void @updateSlotAllocSize(ptr noundef %i.ci, i32 noundef %i.co, ptr noundef nonnull %i.f, i64 noundef %.050, i64 noundef %i.cp) #11
  br label %bb.y

bb.y:                                             ; preds = %.thread, %bb.x, %._crit_edge
  %i.cq = phi i1 [ true, %.thread ], [ false, %bb.x ], [ false, %._crit_edge ] ; 2 uses
  %.261 = phi i32 [ %i.ay, %.thread ], [ %.049.lcssa, %bb.x ], [ %.049.lcssa, %._crit_edge ] ; 2 uses
  %.not56 = icmp eq i32 %.261, 0
  br i1 %.not56, label %._crit_edge73, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cr = sext i32 %.261 to i64                   ; 3 uses
  %i.cs = sub i64 %.0.i, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !70
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !84
  %i.cy = select i1 %i.cq, ptr null, ptr %i.f
  tail call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.cu, ptr noundef %i.cx, ptr noundef %i.cy, i32 noundef 1) #11
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !84
  %i.dc = load ptr, ptr %i.ct, align 8, !tbaa !70
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 72
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !88
  tail call void @notifyKeyspaceEvent(i32 noundef 32, ptr noundef nonnull @.str.10, ptr noundef %i.db, i32 noundef %i.de) #11
  br i1 %i.cq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.df = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !84
  %i.di = load ptr, ptr %i.ct, align 8, !tbaa !70
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 72
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !88
  tail call void @notifyKeyspaceEvent(i32 noundef 4, ptr noundef nonnull @.str.11, ptr noundef %i.dh, i32 noundef %i.dk) #11
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0 = phi i64 [ -1, %bb.aa ], [ %i.cs, %bb.z ]
  %i.dl = load ptr, ptr %i.ct, align 8, !tbaa !70
  %i.dm = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !84
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !47
  %i.dr = tail call i32 @getKeySlot(ptr noundef %i.dq) #11
  tail call void @updateKeysizesHist(ptr noundef %i.dl, i32 noundef %i.dr, i32 noundef 2, i64 noundef %.0.i, i64 noundef %.0) #11
  %i.ds = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !91
  %i.dt = add nsw i64 %i.ds, %i.cr
  store i64 %i.dt, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !91
  br label %._crit_edge73

._crit_edge73:                                    ; preds = %bb.y, %bb.ab
  %.pre-phi = phi i64 [ %i.cr, %bb.ab ], [ 0, %bb.y ]
  tail call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %.pre-phi) #11
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.b, %._crit_edge73
  ret void
}

declare ptr @lookupKeyWriteOrReply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @dbDeleteSkipKeysizesUpdate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @smoveCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 13 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 14 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !84
  %i.h = tail call ptr @lookupKeyWrite(ptr noundef %i.c, ptr noundef %i.g) #11 ; 13 uses
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !84
  %i.m = tail call ptr @lookupKeyWrite(ptr noundef %i.i, ptr noundef %i.l) #11 ; 4 uses
  store ptr %i.m, ptr %i.a, align 8, !tbaa !84
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !84   ; 2 uses
  %i.q = icmp eq ptr %i.h, null
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !92
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.r) #11
  br label %bb.au

bb.c:                                             ; preds = %bb.a
  %i.s = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.h, i32 noundef 2) #11
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.d, label %bb.au

bb.d:                                             ; preds = %bb.c
  %i.t = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef %i.m, i32 noundef 2) #11
  %.not62 = icmp eq i32 %i.t, 0
  br i1 %.not62, label %bb.e, label %bb.au

bb.e:                                             ; preds = %bb.d
  %i.u = icmp eq ptr %i.h, %i.m
  br i1 %i.u, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !47   ; 6 uses
  %i.x = getelementptr i8, ptr %i.w, i64 -1
  %.val.i.i = load i8, ptr %i.x, align 1, !tbaa !60 ; 2 uses
  %i.y = and i8 %.val.i.i, 7
  switch i8 %i.y, label %setTypeIsMember.exit [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  %i.z = lshr i8 %.val.i.i, 3
  %i.aa = zext nneg i8 %i.z to i64
  br label %setTypeIsMember.exit

bb.h:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds i8, ptr %i.w, i64 -3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !60
  %i.ad = zext i8 %i.ac to i64
  br label %setTypeIsMember.exit

bb.i:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds i8, ptr %i.w, i64 -5
  %i.af = load i16, ptr %i.ae, align 1, !tbaa !61
  %i.ag = zext i16 %i.af to i64
  br label %setTypeIsMember.exit

bb.j:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds i8, ptr %i.w, i64 -9
  %i.ai = load i32, ptr %i.ah, align 1, !tbaa !9
  %i.aj = zext i32 %i.ai to i64
  br label %setTypeIsMember.exit

bb.k:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds i8, ptr %i.w, i64 -17
  %i.al = load i64, ptr %i.ak, align 1, !tbaa !58
  br label %setTypeIsMember.exit

setTypeIsMember.exit:                             ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.0.i.i = phi i64 [ %i.al, %bb.k ], [ %i.aa, %bb.g ], [ %i.ad, %bb.h ], [ %i.ag, %bb.i ], [ %i.aj, %bb.j ], [ 0, %bb.f ]
  %i.am = tail call range(i32 0, 256) i32 @setTypeIsMemberAux(ptr noundef nonnull readonly %i.h, ptr noundef nonnull %i.w, i64 noundef %.0.i.i, i64 noundef 0, i32 noundef 1)
  %.not70 = icmp eq i32 %i.am, 0
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 32), align 8
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8
  %i.ap = select i1 %.not70, ptr %i.ao, ptr %i.an
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.ap) #11
  br label %bb.au

bb.l:                                             ; preds = %bb.e
  %i.aq = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !86
  %.not63 = icmp eq i32 %i.aq, 0
  br i1 %.not63, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.h) #11
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0 = phi i64 [ %i.ar, %bb.m ], [ 0, %bb.l ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !47 ; 6 uses
  %i.au = getelementptr i8, ptr %i.at, i64 -1
  %.val.i.i71 = load i8, ptr %i.au, align 1, !tbaa !60 ; 2 uses
  %i.av = and i8 %.val.i.i71, 7
  switch i8 %i.av, label %setTypeRemove.exit [
    i8 0, label %bb.o
    i8 1, label %bb.p
    i8 2, label %bb.q
    i8 3, label %bb.r
    i8 4, label %bb.s
  ]

bb.o:                                             ; preds = %bb.n
  %i.aw = lshr i8 %.val.i.i71, 3
  %i.ax = zext nneg i8 %i.aw to i64
  br label %setTypeRemove.exit

bb.p:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds i8, ptr %i.at, i64 -3
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !60
  %i.ba = zext i8 %i.az to i64
  br label %setTypeRemove.exit

bb.q:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds i8, ptr %i.at, i64 -5
  %i.bc = load i16, ptr %i.bb, align 1, !tbaa !61
  %i.bd = zext i16 %i.bc to i64
  br label %setTypeRemove.exit

bb.r:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds i8, ptr %i.at, i64 -9
  %i.bf = load i32, ptr %i.be, align 1, !tbaa !9
  %i.bg = zext i32 %i.bf to i64
  br label %setTypeRemove.exit

bb.s:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds i8, ptr %i.at, i64 -17
  %i.bi = load i64, ptr %i.bh, align 1, !tbaa !58
  br label %setTypeRemove.exit

setTypeRemove.exit:                               ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s
  %.0.i.i72 = phi i64 [ %i.bi, %bb.s ], [ %i.ax, %bb.o ], [ %i.ba, %bb.p ], [ %i.bd, %bb.q ], [ %i.bg, %bb.r ], [ 0, %bb.n ]
  %i.bj = tail call i32 @setTypeRemoveAux(ptr noundef nonnull %i.h, ptr noundef nonnull %i.at, i64 noundef %.0.i.i72, i64 noundef 0, i32 noundef 1)
  %i.bk = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !86
  %.not64 = icmp eq i32 %i.bk, 0
  br i1 %.not64, label %bb.u, label %bb.t

bb.t:                                             ; preds = %setTypeRemove.exit
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.bm = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !84
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !47
  %i.br = tail call i32 @getKeySlot(ptr noundef %i.bq) #11
  %i.bs = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.h) #11
  tail call void @updateSlotAllocSize(ptr noundef %i.bl, i32 noundef %i.br, ptr noundef nonnull %i.h, i64 noundef %.0, i64 noundef %i.bs) #11
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %setTypeRemove.exit
  %.not65 = icmp eq i32 %i.bj, 0
  br i1 %.not65, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !92
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.bt) #11
  br label %bb.au

bb.w:                                             ; preds = %bb.u
  %i.bu = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !84
  %i.bx = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 72
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !88
  tail call void @notifyKeyspaceEvent(i32 noundef 32, ptr noundef nonnull @.str.10, ptr noundef %i.bw, i32 noundef %i.bz) #11
  %i.ca = load i64, ptr %i.h, align 8
  %1 = trunc i64 %i.ca to i32
  %2 = lshr i32 %1, 4
  %3 = and i32 %2, 15
  switch i32 %3, label %bb.aa [
    i32 2, label %bb.x
    i32 6, label %bb.y
    i32 11, label %bb.z
  ]

bb.x:                                             ; preds = %bb.w
  %i.cb = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !47 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !58
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !58
  %i.ch = add i64 %i.cg, %i.ce
  br label %setTypeSize.exit

bb.y:                                             ; preds = %bb.w
  %i.ci = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !47
  %i.ck = tail call i32 @intsetLen(ptr noundef %i.cj) #11
  %i.cl = zext i32 %i.ck to i64
  br label %setTypeSize.exit

bb.z:                                             ; preds = %bb.w
  %i.cm = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !47
  %i.co = tail call i64 @lpLength(ptr noundef %i.cn) #11
  br label %setTypeSize.exit

bb.aa:                                            ; preds = %bb.w
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 476, ptr noundef nonnull @.str.3) #11
  tail call void @abort() #12
  unreachable

setTypeSize.exit:                                 ; preds = %bb.x, %bb.y, %bb.z
  %.0.i = phi i64 [ %i.ch, %bb.x ], [ %i.cl, %bb.y ], [ %i.co, %bb.z ] ; 3 uses
  %i.cp = add nsw i64 %.0.i, 1
  %i.cq = icmp eq i64 %.0.i, 0
  br i1 %i.cq, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %setTypeSize.exit
  %i.cr = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.cs = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !84
  %i.cv = tail call i32 @dbDeleteSkipKeysizesUpdate(ptr noundef %i.cr, ptr noundef %i.cu) #11 ; 0 uses
  %i.cw = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !84
  %i.cz = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 72
  %i.db = load i32, ptr %i.da, align 8, !tbaa !88
  tail call void @notifyKeyspaceEvent(i32 noundef 4, ptr noundef nonnull @.str.11, ptr noundef %i.cy, i32 noundef %i.db) #11
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %setTypeSize.exit
  %.059 = phi i64 [ -1, %bb.ab ], [ %.0.i, %setTypeSize.exit ] ; 2 uses
  %i.dc = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.dd = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !84
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !47
  %i.di = tail call i32 @getKeySlot(ptr noundef %i.dh) #11
  tail call void @updateKeysizesHist(ptr noundef %i.dc, i32 noundef %i.di, i32 noundef 2, i64 noundef %i.cp, i64 noundef %.059) #11
  %.not66 = icmp eq ptr %i.m, null
  br i1 %.not66, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dj = load ptr, ptr %i.as, align 8, !tbaa !47
  %i.dk = tail call ptr @setTypeCreate(ptr noundef %i.dj, i64 noundef 1)
  store ptr %i.dk, ptr %i.a, align 8, !tbaa !84
  %i.dl = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.dm = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !84
  %i.dp = call ptr @dbAdd(ptr noundef %i.dl, ptr noundef %i.do, ptr noundef nonnull %i.a) #11 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dq = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.dr = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !84
  %i.du = icmp sgt i64 %.059, 0
  %i.dv = select i1 %i.du, ptr %i.h, ptr null
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.dq, ptr noundef %i.dt, ptr noundef %i.dv, i32 noundef 1) #11
  %i.dw = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !91
  %i.dx = add nsw i64 %i.dw, 1
  store i64 %i.dx, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !91
  %i.dy = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !86
  %.not67 = icmp eq i32 %i.dy, 0
  br i1 %.not67, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dz = load ptr, ptr %i.a, align 8, !tbaa !84
  %i.ea = call i64 @kvobjAllocSize(ptr noundef %i.dz) #11
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.058 = phi i64 [ %i.ea, %bb.af ], [ 0, %bb.ae ]
  %i.eb = load ptr, ptr %i.a, align 8, !tbaa !84
  %i.ec = load ptr, ptr %i.as, align 8, !tbaa !47 ; 6 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 -1
  %.val.i.i73 = load i8, ptr %i.ed, align 1, !tbaa !60 ; 2 uses
  %i.ee = and i8 %.val.i.i73, 7
  switch i8 %i.ee, label %setTypeAdd.exit [
    i8 0, label %bb.ah
    i8 1, label %bb.ai
    i8 2, label %bb.aj
    i8 3, label %bb.ak
    i8 4, label %bb.al
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.ef = lshr i8 %.val.i.i73, 3
  %i.eg = zext nneg i8 %i.ef to i64
  br label %setTypeAdd.exit

bb.ai:                                            ; preds = %bb.ag
  %i.eh = getelementptr inbounds i8, ptr %i.ec, i64 -3
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !60
  %i.ej = zext i8 %i.ei to i64
  br label %setTypeAdd.exit

bb.aj:                                            ; preds = %bb.ag
  %i.ek = getelementptr inbounds i8, ptr %i.ec, i64 -5
  %i.el = load i16, ptr %i.ek, align 1, !tbaa !61
  %i.em = zext i16 %i.el to i64
  br label %setTypeAdd.exit

bb.ak:                                            ; preds = %bb.ag
  %i.en = getelementptr inbounds i8, ptr %i.ec, i64 -9
  %i.eo = load i32, ptr %i.en, align 1, !tbaa !9
  %i.ep = zext i32 %i.eo to i64
  br label %setTypeAdd.exit

bb.al:                                            ; preds = %bb.ag
  %i.eq = getelementptr inbounds i8, ptr %i.ec, i64 -17
  %i.er = load i64, ptr %i.eq, align 1, !tbaa !58
  br label %setTypeAdd.exit

setTypeAdd.exit:                                  ; preds = %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al
  %.0.i.i74 = phi i64 [ %i.er, %bb.al ], [ %i.eg, %bb.ah ], [ %i.ej, %bb.ai ], [ %i.em, %bb.aj ], [ %i.ep, %bb.ak ], [ 0, %bb.ag ]
  %i.es = call range(i32 0, 256) i32 @setTypeAddAux(ptr noundef %i.eb, ptr noundef nonnull %i.ec, i64 noundef %.0.i.i74, i64 noundef 0, i32 noundef 1)
  %.not68 = icmp eq i32 %i.es, 0
  br i1 %.not68, label %bb.ar, label %bb.am

bb.am:                                            ; preds = %setTypeAdd.exit
  %i.et = load ptr, ptr %i.a, align 8, !tbaa !84  ; 4 uses
  %i.eu = load i64, ptr %i.et, align 8
  %4 = trunc i64 %i.eu to i32
  %5 = lshr i32 %4, 4
  %6 = and i32 %5, 15
  switch i32 %6, label %bb.aq [
    i32 2, label %bb.an
    i32 6, label %bb.ao
    i32 11, label %bb.ap
  ]

bb.an:                                            ; preds = %bb.am
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !47 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !58
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !58
  %i.fb = add i64 %i.fa, %i.ey
  br label %setTypeSize.exit76

bb.ao:                                            ; preds = %bb.am
  %i.fc = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !47
  %i.fe = call i32 @intsetLen(ptr noundef %i.fd) #11
  %i.ff = zext i32 %i.fe to i64
  br label %setTypeSize.exit76

bb.ap:                                            ; preds = %bb.am
  %i.fg = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !47
  %i.fi = call i64 @lpLength(ptr noundef %i.fh) #11
  br label %setTypeSize.exit76

bb.aq:                                            ; preds = %bb.am
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 476, ptr noundef nonnull @.str.3) #11
  call void @abort() #12
  unreachable

setTypeSize.exit76:                               ; preds = %bb.an, %bb.ao, %bb.ap
  %.0.i75 = phi i64 [ %i.fb, %bb.an ], [ %i.ff, %bb.ao ], [ %i.fi, %bb.ap ] ; 2 uses
  %i.fj = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.fk = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !84
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !47
  %i.fp = call i32 @getKeySlot(ptr noundef %i.fo) #11
  %i.fq = add i64 %.0.i75, -1
  call void @updateKeysizesHist(ptr noundef %i.fj, i32 noundef %i.fp, i32 noundef 2, i64 noundef %i.fq, i64 noundef %.0.i75) #11
  %i.fr = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !91
  %i.fs = add nsw i64 %i.fr, 1
  store i64 %i.fs, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !91
  %i.ft = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.fu = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !84
  %i.fx = load ptr, ptr %i.a, align 8, !tbaa !84
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.ft, ptr noundef %i.fw, ptr noundef %i.fx, i32 noundef 1) #11
  %i.fy = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !84
  %i.gb = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 72
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !88
  call void @notifyKeyspaceEvent(i32 noundef 32, ptr noundef nonnull @.str.9, ptr noundef %i.ga, i32 noundef %i.gd) #11
  br label %bb.ar

bb.ar:                                            ; preds = %setTypeSize.exit76, %setTypeAdd.exit
  %i.ge = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !86
  %.not69 = icmp eq i32 %i.ge, 0
  br i1 %.not69, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gf = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.gg = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !84
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !47
  %i.gl = call i32 @getKeySlot(ptr noundef %i.gk) #11
  %i.gm = load ptr, ptr %i.a, align 8, !tbaa !84  ; 2 uses
  %i.gn = call i64 @kvobjAllocSize(ptr noundef %i.gm) #11
  call void @updateSlotAllocSize(ptr noundef %i.gf, i32 noundef %i.gl, ptr noundef %i.gm, i64 noundef %.058, i64 noundef %i.gn) #11
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.go = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 32), align 8, !tbaa !95
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.go) #11
  br label %bb.au

bb.au:                                            ; preds = %bb.v, %bb.at, %bb.c, %bb.d, %setTypeIsMember.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

declare ptr @lookupKeyWrite(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @addReply(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @dbAdd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @sismemberCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !84
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !92
  %i.f = tail call ptr @lookupKeyReadOrReply(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.e) #11 ; 6 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.f, i32 noundef 2) #11
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !86
  %.not14 = icmp eq i32 %i.i, 0
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.f) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i64 [ %i.j, %bb.d ], [ 0, %bb.c ]
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !84
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !47   ; 6 uses
  %i.p = getelementptr i8, ptr %i.o, i64 -1
  %.val.i.i = load i8, ptr %i.p, align 1, !tbaa !60 ; 2 uses
  %i.q = and i8 %.val.i.i, 7
  switch i8 %i.q, label %setTypeIsMember.exit [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.r = lshr i8 %.val.i.i, 3
  %i.s = zext nneg i8 %i.r to i64
  br label %setTypeIsMember.exit

bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds i8, ptr %i.o, i64 -3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !60
  %i.v = zext i8 %i.u to i64
  br label %setTypeIsMember.exit

bb.h:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds i8, ptr %i.o, i64 -5
  %i.x = load i16, ptr %i.w, align 1, !tbaa !61
  %i.y = zext i16 %i.x to i64
  br label %setTypeIsMember.exit

bb.i:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds i8, ptr %i.o, i64 -9
  %i.aa = load i32, ptr %i.z, align 1, !tbaa !9
  %i.ab = zext i32 %i.aa to i64
  br label %setTypeIsMember.exit

bb.j:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds i8, ptr %i.o, i64 -17
  %i.ad = load i64, ptr %i.ac, align 1, !tbaa !58
  br label %setTypeIsMember.exit

setTypeIsMember.exit:                             ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.0.i.i = phi i64 [ %i.ad, %bb.j ], [ %i.s, %bb.f ], [ %i.v, %bb.g ], [ %i.y, %bb.h ], [ %i.ab, %bb.i ], [ 0, %bb.e ]
  %i.ae = tail call range(i32 0, 256) i32 @setTypeIsMemberAux(ptr noundef nonnull readonly %i.f, ptr noundef nonnull %i.o, i64 noundef %.0.i.i, i64 noundef 0, i32 noundef 1)
  %.not15 = icmp eq i32 %i.ae, 0
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 32), align 8
  %.sink = select i1 %.not15, ptr %i.af, ptr %i.ag
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %.sink) #11
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !86
  %.not16 = icmp eq i32 %i.ah, 0
  br i1 %.not16, label %bb.l, label %bb.k

bb.k:                                             ; preds = %setTypeIsMember.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !70
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !84
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !47
  %i.ap = tail call i32 @getKeySlot(ptr noundef %i.ao) #11
  %i.aq = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.f) #11
  tail call void @updateSlotAllocSize(ptr noundef %i.aj, i32 noundef %i.ap, ptr noundef nonnull %i.f, i64 noundef %.0, i64 noundef %i.aq) #11
  br label %bb.l

bb.l:                                             ; preds = %setTypeIsMember.exit, %bb.k, %bb.a, %bb.b
  ret void
}

declare ptr @lookupKeyReadOrReply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @smismemberCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !84
  %i.g = tail call ptr @lookupKeyRead(ptr noundef %i.b, ptr noundef %i.f) #11 ; 6 uses
  %i.h = icmp ne ptr %i.g, null                   ; 4 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.g, i32 noundef 2) #11
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %._crit_edge.thread

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !85
  %i.l = add nsw i32 %i.k, -2
  %i.m = sext i32 %i.l to i64
  tail call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef %i.m) #11
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !86
  %i.o = icmp ne i32 %i.n, 0
  %or.cond = and i1 %i.h, %i.o
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.g) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.026 = phi i64 [ %i.p, %bb.d ], [ 0, %bb.c ]
  %i.q = load i32, ptr %i.j, align 8, !tbaa !85
  %i.r = icmp sgt i32 %i.q, 2
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  br i1 %i.h, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %setTypeIsMember.exit.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %setTypeIsMember.exit.us ], [ 2, %.lr.ph ] ; 2 uses
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !84
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !47   ; 6 uses
  %i.x = getelementptr i8, ptr %i.w, i64 -1
  %.val.i.i.us = load i8, ptr %i.x, align 1, !tbaa !60 ; 2 uses
  %i.y = and i8 %.val.i.i.us, 7
  switch i8 %i.y, label %setTypeIsMember.exit.us [
    i8 0, label %bb.j
    i8 1, label %bb.i
    i8 2, label %bb.h
    i8 3, label %bb.g
    i8 4, label %bb.f
  ]

bb.f:                                             ; preds = %.lr.ph.split.us
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 -17
  %i.aa = load i64, ptr %i.z, align 1, !tbaa !58
  br label %setTypeIsMember.exit.us

bb.g:                                             ; preds = %.lr.ph.split.us
  %i.ab = getelementptr inbounds i8, ptr %i.w, i64 -9
  %i.ac = load i32, ptr %i.ab, align 1, !tbaa !9
  %i.ad = zext i32 %i.ac to i64
  br label %setTypeIsMember.exit.us

bb.h:                                             ; preds = %.lr.ph.split.us
  %i.ae = getelementptr inbounds i8, ptr %i.w, i64 -5
  %i.af = load i16, ptr %i.ae, align 1, !tbaa !61
  %i.ag = zext i16 %i.af to i64
  br label %setTypeIsMember.exit.us

bb.i:                                             ; preds = %.lr.ph.split.us
  %i.ah = getelementptr inbounds i8, ptr %i.w, i64 -3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !60
  %i.aj = zext i8 %i.ai to i64
  br label %setTypeIsMember.exit.us

bb.j:                                             ; preds = %.lr.ph.split.us
  %i.ak = lshr i8 %.val.i.i.us, 3
  %i.al = zext nneg i8 %i.ak to i64
  br label %setTypeIsMember.exit.us

setTypeIsMember.exit.us:                          ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %.lr.ph.split.us
  %.0.i.i.us = phi i64 [ %i.aa, %bb.f ], [ %i.al, %bb.j ], [ %i.aj, %bb.i ], [ %i.ag, %bb.h ], [ %i.ad, %bb.g ], [ 0, %.lr.ph.split.us ]
  %i.am = tail call range(i32 0, 256) i32 @setTypeIsMemberAux(ptr noundef nonnull readonly %i.g, ptr noundef nonnull %i.w, i64 noundef %.0.i.i.us, i64 noundef 0, i32 noundef 1)
  %.not28.us = icmp eq i32 %i.am, 0
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 32), align 8
  %.sink = select i1 %.not28.us, ptr %i.an, ptr %i.ao
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %.sink) #11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ap = load i32, ptr %i.j, align 8, !tbaa !85
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next, %i.aq
  br i1 %i.ar, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !96

._crit_edge:                                      ; preds = %setTypeIsMember.exit.us, %bb.e
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !86
  %i.at = icmp ne i32 %i.as, 0
  %or.cond3 = and i1 %i.h, %i.at
  br i1 %or.cond3, label %bb.k, label %._crit_edge.thread

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.029 = phi i32 [ %i.av, %.lr.ph.split ], [ 2, %.lr.ph ]
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !92
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.au) #11
  %i.av = add nuw nsw i32 %.029, 1                ; 2 uses
  %i.aw = load i32, ptr %i.j, align 8, !tbaa !85
  %i.ax = icmp slt i32 %i.av, %i.aw
  br i1 %i.ax, label %.lr.ph.split, label %._crit_edge.thread, !llvm.loop !96

bb.k:                                             ; preds = %._crit_edge
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !84
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !47
  %i.be = tail call i32 @getKeySlot(ptr noundef %i.bd) #11
  %i.bf = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.g) #11
  tail call void @updateSlotAllocSize(ptr noundef %i.ay, i32 noundef %i.be, ptr noundef nonnull %i.g, i64 noundef %.026, i64 noundef %i.bf) #11
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.lr.ph.split, %._crit_edge, %bb.k, %bb.b
  ret void
}

declare ptr @lookupKeyRead(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @addReplyArrayLen(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @scardCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !84
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !92
  %i.f = tail call ptr @lookupKeyReadOrReply(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.e) #11 ; 6 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.f, i32 noundef 2) #11
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.f, align 8
  %1 = trunc i64 %i.i to i32
  %2 = lshr i32 %1, 4
  %3 = and i32 %2, 15
  switch i32 %3, label %bb.g [
    i32 2, label %bb.d
    i32 6, label %bb.e
    i32 11, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !58
  %i.p = add i64 %i.o, %i.m
  br label %setTypeSize.exit

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !47
  %i.s = tail call i32 @intsetLen(ptr noundef %i.r) #11
  %i.t = zext i32 %i.s to i64
  br label %setTypeSize.exit

bb.f:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !47
  %i.w = tail call i64 @lpLength(ptr noundef %i.v) #11
  br label %setTypeSize.exit

bb.g:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 476, ptr noundef nonnull @.str.3) #11
  tail call void @abort() #12
  unreachable

setTypeSize.exit:                                 ; preds = %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.p, %bb.d ], [ %i.t, %bb.e ], [ %i.w, %bb.f ]
  tail call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %.0.i) #11
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.b, %setTypeSize.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @spopWithCountCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = alloca i64, align 8                      ; 15 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca ptr, align 8                      ; 7 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %1 = alloca %struct.setTypeIterator, align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 17 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !84
  %i.n = call i32 @getPositiveLongFromObjectOrReply(ptr noundef %0, ptr noundef %i.m, ptr noundef nonnull %i.a, ptr noundef null) #11
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.b, label %bb.at

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.a, align 8, !tbaa !58   ; 13 uses
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !84
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !97
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @shared, i64 160), i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !84
  %i.x = call ptr @lookupKeyWriteOrReply(ptr noundef nonnull %0, ptr noundef %i.r, ptr noundef %i.w) #11 ; 26 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.at, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.x, i32 noundef 2) #11
  %.not223 = icmp eq i32 %i.z, 0
  br i1 %.not223, label %bb.d, label %bb.at

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp eq i64 %i.o, 0
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = load i32, ptr %i.s, align 4, !tbaa !97
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @shared, i64 160), i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !84
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.ae) #11
  br label %bb.at

bb.f:                                             ; preds = %bb.d
  %i.af = load i64, ptr %i.x, align 8
  %2 = trunc i64 %i.af to i32
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 15
  switch i32 %4, label %bb.j [
    i32 2, label %bb.g
    i32 6, label %bb.h
    i32 11, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !47 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !58
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !58
  %i.am = add i64 %i.al, %i.aj
  br label %setTypeSize.exit

bb.h:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !47
  %i.ap = call i32 @intsetLen(ptr noundef %i.ao) #11
  %i.aq = zext i32 %i.ap to i64
  br label %setTypeSize.exit

bb.i:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !47
  %i.at = call i64 @lpLength(ptr noundef %i.as) #11
  br label %setTypeSize.exit

bb.j:                                             ; preds = %bb.f
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 476, ptr noundef nonnull @.str.3) #11
  call void @abort() #12
  unreachable

setTypeSize.exit:                                 ; preds = %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.am, %bb.g ], [ %i.aq, %bb.h ], [ %i.at, %bb.i ] ; 7 uses
  %.not224 = icmp ult i64 %i.o, %.0.i
  %i.au = call i64 @llvm.umin.i64(i64 %i.o, i64 %.0.i)
  %i.av = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !84
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 16 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !70
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 72
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !88
  call void @notifyKeyspaceEvent(i32 noundef 32, ptr noundef nonnull @.str.12, ptr noundef %i.ax, i32 noundef %i.bb) #11
  %i.bc = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !91
  %i.bd = add i64 %i.bc, %i.au
  store i64 %i.bd, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !91
  br i1 %.not224, label %bb.l, label %bb.k

bb.k:                                             ; preds = %setTypeSize.exit
  %i.be = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  call void @sunionDiffGenericCommand(ptr noundef nonnull %0, ptr noundef nonnull %i.bf, i32 noundef 1, ptr noundef null, i32 noundef 0)
  %i.bg = load ptr, ptr %i.ay, align 8, !tbaa !70
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !84
  %i.bk = call i32 @dbDelete(ptr noundef %i.bg, ptr noundef %i.bj) #11 ; 0 uses
  %i.bl = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !84
  %i.bo = load ptr, ptr %i.ay, align 8, !tbaa !70
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !88
  call void @notifyKeyspaceEvent(i32 noundef 4, ptr noundef nonnull @.str.11, ptr noundef %i.bn, i32 noundef %i.bq) #11
  %i.br = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8368), align 8, !tbaa !98
  %.not237 = icmp eq i32 %i.br, 0
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 408), align 8
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 400), align 8
  %i.bu = select i1 %.not237, ptr %i.bt, ptr %i.bs
  %i.bv = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !84
  call void (ptr, i32, ...) @rewriteClientCommandVector(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %i.bu, ptr noundef %i.bx) #11
  %i.by = load ptr, ptr %i.ay, align 8, !tbaa !70
  %i.bz = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !84
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.by, ptr noundef %i.cb, ptr noundef null, i32 noundef 1) #11
  br label %bb.at

bb.l:                                             ; preds = %setTypeSize.exit
  %i.cc = call i64 @llvm.umin.i64(i64 %i.o, i64 1024)
  %i.cd = add nuw nsw i64 %i.cc, 2                ; 10 uses
  %i.ce = shl nuw nsw i64 %i.cd, 3
  %i.cf = call noalias ptr @zmalloc(i64 noundef %i.ce) #13 ; 14 uses
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 528), align 8, !tbaa !99
  store ptr %i.cg, ptr %i.cf, align 8, !tbaa !84
  %i.ch = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !84
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !84
  call void @addReplySetLen(ptr noundef nonnull %0, i64 noundef %i.o) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i64 0, ptr %i.c, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i64 0, ptr %i.d, align 8, !tbaa !58
  %i.cl = sub nuw i64 %.0.i, %i.o                 ; 10 uses
  %i.cm = mul i64 %i.cl, 5
  %i.cn = icmp ugt i64 %i.cm, %i.o
  br i1 %i.cn, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.co = load i64, ptr %i.x, align 8
  %i.cp = and i64 %i.co, 240
  %i.cq = icmp eq i64 %i.cp, 176
  %i.cr = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !86
  %.not233 = icmp eq i32 %i.cr, 0                 ; 2 uses
  br i1 %i.cq, label %bb.n, label %bb.x

bb.n:                                             ; preds = %bb.m
  br i1 %.not233, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cs = call i64 @kvobjAllocSize(ptr noundef nonnull %i.x) #11
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0201 = phi i64 [ %i.cs, %bb.o ], [ 0, %bb.n ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !47 ; 4 uses
  %i.cv = call ptr @lpFirst(ptr noundef %i.cu) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  store i32 0, ptr %i.e, align 4, !tbaa !9
  %i.cw = shl i64 %i.o, 3
  %i.cx = call noalias ptr @zmalloc(i64 noundef %i.cw) #13 ; 3 uses
  %i.cy = trunc nuw nsw i64 %i.cd to i32
  br label %bb.r

bb.q:                                             ; preds = %.loopexit238
  %i.cz = call ptr @lpBatchDelete(ptr noundef %i.cu, ptr noundef nonnull %i.cx, i64 noundef %i.o) #11
  call void @zfree(ptr noundef nonnull %i.cx) #11
  store ptr %i.cz, ptr %i.ct, align 8, !tbaa !47
  %i.da = load ptr, ptr %i.ay, align 8, !tbaa !70
  %i.db = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !84
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !47
  %i.dg = call i32 @getKeySlot(ptr noundef %i.df) #11
  call void @updateKeysizesHist(ptr noundef %i.da, i32 noundef %i.dg, i32 noundef 2, i64 noundef %.0.i, i64 noundef %i.cl) #11
  %i.dh = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !86
  %.not234 = icmp eq i32 %i.dh, 0
  br i1 %.not234, label %bb.w, label %bb.v

bb.r:                                             ; preds = %bb.p, %.loopexit238
  %.0207267 = phi i64 [ 0, %bb.p ], [ %i.eg, %.loopexit238 ] ; 3 uses
  %.0209266 = phi ptr [ %i.cv, %bb.p ], [ %i.ed, %.loopexit238 ]
  %.0211265 = phi i64 [ 2, %bb.p ], [ %.2213, %.loopexit238 ] ; 2 uses
  %i.di = sub nuw i64 %i.o, %.0207267
  %i.dj = trunc i64 %i.di to i32
  %i.dk = call ptr @lpNextRandom(ptr noundef %i.cu, ptr noundef %.0209266, ptr noundef nonnull %i.e, i32 noundef %i.dj, i32 noundef 1) #11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  store i32 0, ptr %i.f, align 4, !tbaa !9
  %i.dl = call ptr @lpGetValue(ptr noundef %i.dk, ptr noundef nonnull %i.f, ptr noundef nonnull %i.d) #11 ; 3 uses
  %.not236 = icmp eq ptr %i.dl, null
  br i1 %.not236, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dm = load i32, ptr %i.f, align 4, !tbaa !9
  %i.dn = zext i32 %i.dm to i64
  call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %i.dl, i64 noundef %i.dn) #11
  %i.do = load i32, ptr %i.f, align 4, !tbaa !9
  %i.dp = zext i32 %i.do to i64
  %i.dq = call ptr @createStringObject(ptr noundef nonnull %i.dl, i64 noundef %i.dp) #11
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.dr = load i64, ptr %i.d, align 8, !tbaa !58
  call void @addReplyBulkLongLong(ptr noundef nonnull %0, i64 noundef %i.dr) #11
  %i.ds = load i64, ptr %i.d, align 8, !tbaa !58
  %i.dt = call ptr @createStringObjectFromLongLong(i64 noundef %i.ds) #11
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink = phi ptr [ %i.dt, %bb.t ], [ %i.dq, %bb.s ]
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.0211265
  store ptr %.sink, ptr %i.du, align 8, !tbaa !84
  %.1212 = add i64 %.0211265, 1                   ; 2 uses
  %i.dv = icmp eq i64 %.1212, %i.cd
  br i1 %i.dv, label %.lr.ph262.preheader, label %.loopexit238

.lr.ph262.preheader:                              ; preds = %bb.u
  %i.dw = load ptr, ptr %i.ay, align 8, !tbaa !70
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 72
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !88
  call void @alsoPropagate(i32 noundef %i.dy, ptr noundef nonnull %i.cf, i32 noundef %i.cy, i32 noundef 3) #11
  br label %.lr.ph262

.lr.ph262:                                        ; preds = %.lr.ph262.preheader, %.lr.ph262
  %.0206260 = phi i64 [ %i.eb, %.lr.ph262 ], [ 2, %.lr.ph262.preheader ] ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.0206260
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !84
  call void @decrRefCount(ptr noundef %i.ea) #11
  %i.eb = add nuw i64 %.0206260, 1                ; 2 uses
  %exitcond277.not = icmp eq i64 %i.eb, %i.cd
  br i1 %exitcond277.not, label %.loopexit238, label %.lr.ph262, !llvm.loop !100

.loopexit238:                                     ; preds = %.lr.ph262, %bb.u
  %.2213 = phi i64 [ %.1212, %bb.u ], [ 2, %.lr.ph262 ] ; 2 uses
end_hunk_2
begin_hunk_3_@spopWithCountCommand:bb.a
  call void @preventCommandPropagation(ptr noundef nonnull %0) #11
  %i.je = load ptr, ptr %i.ay, align 8, !tbaa !70
  %i.jf = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !84
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.je, ptr noundef %i.jh, ptr noundef %.0208, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.at

bb.at:                                            ; preds = %bb.e, %bb.k, %.loopexit, %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

declare i32 @getPositiveLongFromObjectOrReply(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @sunionDiffGenericCommand(ptr noundef %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %struct.setTypeIterator, align 8    ; 33 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 15 uses
  %i.d = alloca i64, align 8                      ; 16 uses
  %i.e = alloca i64, align 8                      ; 19 uses
  %i.f = sext i32 %2 to i64
  %i.g = shl nsw i64 %i.f, 4
  %i.h = tail call noalias ptr @zmalloc(i64 noundef %i.g) #13 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i64 0, ptr %i.d, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  store i64 0, ptr %i.e, align 8, !tbaa !58
  %i.i = icmp sgt i32 %2, 0                       ; 5 uses
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = icmp eq ptr %3, null                     ; 2 uses
  %wide.trip.count = zext nneg i32 %2 to i64
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !70
  %i.m = load ptr, ptr %1, align 8, !tbaa !84
  %i.n = tail call ptr @lookupKeyRead(ptr noundef %i.l, ptr noundef %i.m) #11 ; 5 uses
  %.not187.peel = icmp eq ptr %i.n, null
  br i1 %.not187.peel, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.o = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.n, i32 noundef 2) #11
  %.not188.peel = icmp eq i32 %i.o, 0
  br i1 %.not188.peel, label %bb.c, label %.loopexit309

bb.c:                                             ; preds = %bb.b
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.n, align 8
  %i.q = trunc i64 %i.p to i32
  %i.r = lshr i32 %i.q, 4
  %i.s = and i32 %i.r, 15                         ; 2 uses
  %switch.selectcmp.case1.peel = icmp eq i32 %i.s, 11
  %switch.selectcmp.case2.peel = icmp eq i32 %i.s, 2
  %switch.selectcmp.peel = or i1 %switch.selectcmp.case1.peel, %switch.selectcmp.case2.peel
  %i.t = select i1 %switch.selectcmp.peel, i32 2, i32 6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.peel = phi i32 [ %i.t, %bb.d ], [ 6, %bb.c ] ; 2 uses
  store ptr %i.n, ptr %i.h, align 8, !tbaa !109
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !86
  %.not189.peel = icmp eq i32 %i.u, 0
  br i1 %.not189.peel, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.n) #11
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !111
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.2.ph.peel = phi i32 [ 6, %bb.g ], [ %.1.peel, %bb.f ], [ %.1.peel, %bb.e ] ; 2 uses
  %exitcond.peel.not = icmp eq i32 %2, 1
  br i1 %exitcond.peel.not, label %._crit_edge.loopexit, label %.peel.next

.peel.next:                                       ; preds = %bb.h, %bb.p
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.p ], [ 1, %bb.h ] ; 4 uses
  %.0230 = phi i32 [ %.2.ph, %bb.p ], [ %.2.ph.peel, %bb.h ] ; 3 uses
  %.0147229 = phi i32 [ %.2149.ph, %bb.p ], [ 0, %bb.h ] ; 2 uses
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !70
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !84
  %i.aa = tail call ptr @lookupKeyRead(ptr noundef %i.x, ptr noundef %i.z) #11 ; 5 uses
  %.not187 = icmp eq ptr %i.aa, null
  br i1 %.not187, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.peel.next
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %indvars.iv
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  br label %bb.p

bb.j:                                             ; preds = %.peel.next
  %i.ac = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.aa, i32 noundef 2) #11
  %.not188 = icmp eq i32 %i.ac, 0
  br i1 %.not188, label %bb.k, label %.loopexit309

bb.k:                                             ; preds = %bb.j
  %i.ad = icmp eq i32 %.0230, 6
  %or.cond = select i1 %i.k, i1 %i.ad, i1 false
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ae = load i64, ptr %i.aa, align 8
  %i.af = trunc i64 %i.ae to i32
  %i.ag = lshr i32 %i.af, 4
  %i.ah = and i32 %i.ag, 15                       ; 2 uses
  %switch.selectcmp.case1 = icmp eq i32 %i.ah, 11
  %switch.selectcmp.case2 = icmp eq i32 %i.ah, 2
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %i.ai = select i1 %switch.selectcmp, i32 2, i32 6
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1 = phi i32 [ %i.ai, %bb.l ], [ %.0230, %bb.k ]
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %indvars.iv ; 3 uses
  store ptr %i.aa, ptr %i.aj, align 8, !tbaa !109
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !86
  %.not189 = icmp eq i32 %i.ak, 0
  br i1 %.not189, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.aa) #11
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !111
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !109
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !109
  %i.ap = icmp eq ptr %i.an, %i.ao
  %spec.select = select i1 %i.ap, i32 1, i32 %.0147229
  br label %bb.p

.loopexit309:                                     ; preds = %bb.j, %bb.b
  tail call void @zfree(ptr noundef %i.h) #11
  br label %bb.cz

bb.p:                                             ; preds = %bb.i, %bb.o
  %.2149.ph = phi i32 [ %spec.select, %bb.o ], [ %.0147229, %bb.i ] ; 2 uses
  %.2.ph = phi i32 [ %.1, %bb.o ], [ %.0230, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit.loopexit, label %.peel.next, !llvm.loop !112

._crit_edge.loopexit.loopexit:                    ; preds = %bb.p
  %i.aq = icmp ne i32 %.2149.ph, 0
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.loopexit, %bb.h
  %.2149.ph.lcssa = phi i1 [ false, %bb.h ], [ %i.aq, %._crit_edge.loopexit.loopexit ]
  %.2.ph.lcssa = phi i32 [ %.2.ph.peel, %bb.h ], [ %.2.ph, %._crit_edge.loopexit.loopexit ]
  %i.ar = icmp eq i32 %.2.ph.lcssa, 6
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0147.lcssa = phi i1 [ false, %bb.a ], [ %.2149.ph.lcssa, %._crit_edge.loopexit ] ; 2 uses
  %.0.lcssa = phi i1 [ true, %bb.a ], [ %i.ar, %._crit_edge.loopexit ]
  %i.as = icmp ne i32 %4, 1                       ; 2 uses
  br i1 %i.as, label %.thread, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !109
  %i.au = icmp eq ptr %i.at, null
  %or.cond3 = select i1 %i.au, i1 true, i1 %.0147.lcssa
  %.not373 = xor i1 %i.i, true
  %brmerge374 = or i1 %or.cond3, %.not373
  br i1 %brmerge374, label %.thread, label %.lr.ph235.preheader

.lr.ph235.preheader:                              ; preds = %bb.q
  %wide.trip.count313 = zext nneg i32 %2 to i64
  br label %.lr.ph235

.lr.ph235:                                        ; preds = %.lr.ph235.preheader, %bb.aa
  %indvars.iv310 = phi i64 [ 0, %.lr.ph235.preheader ], [ %indvars.iv.next311, %bb.aa ] ; 2 uses
  %.0142234 = phi i64 [ 0, %.lr.ph235.preheader ], [ %.1143, %bb.aa ] ; 2 uses
  %.0144233 = phi i64 [ 0, %.lr.ph235.preheader ], [ %.1145, %bb.aa ] ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %indvars.iv310 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !109
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %.lr.ph235
  %i.ay = load ptr, ptr %i.h, align 8, !tbaa !109 ; 4 uses
  %i.az = load i64, ptr %i.ay, align 8
  %6 = trunc i64 %i.az to i32
  %7 = lshr i32 %6, 4
  %8 = and i32 %7, 15
  switch i32 %8, label %bb.v [
    i32 2, label %bb.s
    i32 6, label %bb.t
    i32 11, label %bb.u
  ]

bb.s:                                             ; preds = %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !47 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !58
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !58
  %i.bg = add i64 %i.bf, %i.bd
  br label %setTypeSize.exit

bb.t:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !47
  %i.bj = tail call i32 @intsetLen(ptr noundef %i.bi) #11
  %i.bk = zext i32 %i.bj to i64
  br label %setTypeSize.exit

bb.u:                                             ; preds = %bb.r
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !47
  %i.bn = tail call i64 @lpLength(ptr noundef %i.bm) #11
  br label %setTypeSize.exit

bb.v:                                             ; preds = %bb.r
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 476, ptr noundef nonnull @.str.3) #11
  tail call void @abort() #12
  unreachable

setTypeSize.exit:                                 ; preds = %bb.s, %bb.t, %bb.u
  %.0.i = phi i64 [ %i.bg, %bb.s ], [ %i.bk, %bb.t ], [ %i.bn, %bb.u ]
  %i.bo = add i64 %.0.i, %.0144233
  %i.bp = load ptr, ptr %i.av, align 8, !tbaa !109 ; 4 uses
  %i.bq = load i64, ptr %i.bp, align 8
  %9 = trunc i64 %i.bq to i32
  %10 = lshr i32 %9, 4
  %11 = and i32 %10, 15
  switch i32 %11, label %bb.z [
    i32 2, label %bb.w
    i32 6, label %bb.x
    i32 11, label %bb.y
  ]

bb.w:                                             ; preds = %setTypeSize.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !47 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !58
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !58
  %i.bx = add i64 %i.bw, %i.bu
  br label %setTypeSize.exit193

bb.x:                                             ; preds = %setTypeSize.exit
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !47
  %i.ca = tail call i32 @intsetLen(ptr noundef %i.bz) #11
  %i.cb = zext i32 %i.ca to i64
  br label %setTypeSize.exit193

bb.y:                                             ; preds = %setTypeSize.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !47
  %i.ce = tail call i64 @lpLength(ptr noundef %i.cd) #11
  br label %setTypeSize.exit193

bb.z:                                             ; preds = %setTypeSize.exit
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 476, ptr noundef nonnull @.str.3) #11
  tail call void @abort() #12
  unreachable

setTypeSize.exit193:                              ; preds = %bb.w, %bb.x, %bb.y
  %.0.i192 = phi i64 [ %i.bx, %bb.w ], [ %i.cb, %bb.x ], [ %i.ce, %bb.y ]
  %i.cf = add i64 %.0.i192, %.0142234
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph235, %setTypeSize.exit193
  %.1145 = phi i64 [ %.0144233, %.lr.ph235 ], [ %i.bo, %setTypeSize.exit193 ] ; 2 uses
  %.1143 = phi i64 [ %.0142234, %.lr.ph235 ], [ %i.cf, %setTypeSize.exit193 ] ; 2 uses
  %indvars.iv.next311 = add nuw nsw i64 %indvars.iv310, 1 ; 2 uses
  %exitcond314.not = icmp eq i64 %indvars.iv.next311, %wide.trip.count313
  br i1 %exitcond314.not, label %._crit_edge236, label %.lr.ph235, !llvm.loop !114

._crit_edge236:                                   ; preds = %bb.aa
  %i.cg = sdiv i64 %.1145, 2
  %i.ch = icmp sle i64 %i.cg, %.1143
  %cond.fr = freeze i1 %i.ch                      ; 2 uses
  %spec.select375 = select i1 %cond.fr, i32 1, i32 2 ; 2 uses
  %i.ci = icmp sgt i32 %2, 1
  %or.cond5 = and i1 %i.ci, %cond.fr
  br i1 %or.cond5, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %._crit_edge236
  %i.cj = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ck = add nsw i32 %2, -1
  %i.cl = zext nneg i32 %i.ck to i64
  tail call void @qsort(ptr noundef nonnull %i.cj, i64 noundef %i.cl, i64 noundef 16, ptr noundef nonnull @qsortCompareSetsByRevCardinality) #11
  br label %.thread

.thread:                                          ; preds = %bb.q, %._crit_edge236, %bb.ab, %._crit_edge
  %.0150 = phi i32 [ 1, %bb.q ], [ 1, %._crit_edge ], [ %spec.select375, %bb.ab ], [ %spec.select375, %._crit_edge236 ] ; 2 uses
  br i1 %.0.lcssa, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.thread
  %i.cm = tail call ptr @createIntsetObject() #11
  br label %bb.ae

bb.ad:                                            ; preds = %.thread
  %i.cn = tail call ptr @createSetObject() #11
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.co = phi ptr [ %i.cn, %bb.ad ], [ %i.cm, %bb.ac ] ; 15 uses
  store ptr %i.co, ptr %i.b, align 8, !tbaa !84
  %i.cp = icmp eq i32 %4, 0                       ; 2 uses
  br i1 %i.cp, label %.preheader213, label %bb.bb

.preheader213:                                    ; preds = %bb.ae
  br i1 %i.i, label %.lr.ph281, label %.critedge.loopexit

.lr.ph281:                                        ; preds = %.preheader213
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %wide.trip.count328 = zext nneg i32 %2 to i64
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph281, %setTypeResetIterator.exit
  %indvars.iv325 = phi i64 [ 0, %.lr.ph281 ], [ %indvars.iv.next326, %setTypeResetIterator.exit ] ; 2 uses
  %.0151280 = phi i32 [ 0, %.lr.ph281 ], [ %.2153, %setTypeResetIterator.exit ] ; 2 uses
  %.lcssa263270278 = phi ptr [ undef, %.lr.ph281 ], [ %.lcssa263269, %setTypeResetIterator.exit ] ; 2 uses
  %.0.i.i266.lcssa274277 = phi i64 [ 0, %.lr.ph281 ], [ %.0.i.i266.lcssa273, %setTypeResetIterator.exit ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %indvars.iv325
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !109 ; 4 uses
  %.not185 = icmp eq ptr %i.cv, null
  br i1 %.not185, label %setTypeResetIterator.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store ptr %i.cv, ptr %5, align 8, !tbaa !50
  %i.cw = load i64, ptr %i.cv, align 8
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = lshr i32 %i.cx, 4
  %i.cz = and i32 %i.cy, 15                       ; 2 uses
  store i32 %i.cz, ptr %i.cq, align 8, !tbaa !55
  switch i32 %i.cz, label %bb.ak [
    i32 2, label %bb.ah
    i32 6, label %bb.ai
    i32 11, label %bb.aj
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !47
  call void @dictInitIterator(ptr noundef nonnull %i.ct, ptr noundef %i.db) #11
  br label %setTypeInitIterator.exit.preheader

bb.ai:                                            ; preds = %bb.ag
  store i32 0, ptr %i.cs, align 4, !tbaa !56
  br label %setTypeInitIterator.exit.preheader

bb.aj:                                            ; preds = %bb.ag
  store ptr null, ptr %i.cr, align 8, !tbaa !57
  br label %setTypeInitIterator.exit.preheader

setTypeInitIterator.exit.preheader:               ; preds = %bb.ah, %bb.ai, %bb.aj
  br label %setTypeInitIterator.exit

bb.ak:                                            ; preds = %bb.ag
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 327, ptr noundef nonnull @.str.3) #11
  call void @abort() #12
  unreachable

setTypeInitIterator.exit:                         ; preds = %setTypeInitIterator.exit.preheader, %bb.ay
  %.0.i.i265 = phi i64 [ %.0.i.i266, %bb.ay ], [ %.0.i.i266.lcssa274277, %setTypeInitIterator.exit.preheader ] ; 3 uses
  %i.dc = phi ptr [ %i.en, %bb.ay ], [ %.lcssa263270278, %setTypeInitIterator.exit.preheader ] ; 2 uses
  %.1152 = phi i32 [ %i.et, %bb.ay ], [ %.0151280, %setTypeInitIterator.exit.preheader ] ; 4 uses
  %i.dd = load i32, ptr %i.cq, align 8, !tbaa !55
  switch i32 %i.dd, label %bb.ax [
    i32 2, label %bb.al
    i32 6, label %bb.as
    i32 11, label %bb.at
  ]

bb.al:                                            ; preds = %setTypeInitIterator.exit
  %i.de = call ptr @dictNext(ptr noundef nonnull %i.ct) #11 ; 2 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.az, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dg = call ptr @dictGetKey(ptr noundef nonnull %i.de) #11 ; 6 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 -1
  %.val.i.i = load i8, ptr %i.dh, align 1, !tbaa !60 ; 2 uses
  %i.di = and i8 %.val.i.i, 7
  switch i8 %i.di, label %.thread.i [
    i8 0, label %bb.an
    i8 1, label %bb.ao
    i8 2, label %bb.ap
    i8 3, label %bb.aq
    i8 4, label %bb.ar
  ]

bb.an:                                            ; preds = %bb.am
  %i.dj = lshr i8 %.val.i.i, 3
  %i.dk = zext nneg i8 %i.dj to i64
  br label %.thread.i

bb.ao:                                            ; preds = %bb.am
  %i.dl = getelementptr inbounds i8, ptr %i.dg, i64 -3
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !60
  %i.dn = zext i8 %i.dm to i64
  br label %.thread.i

bb.ap:                                            ; preds = %bb.am
  %i.do = getelementptr inbounds i8, ptr %i.dg, i64 -5
  %i.dp = load i16, ptr %i.do, align 1, !tbaa !61
  %i.dq = zext i16 %i.dp to i64
  br label %.thread.i

bb.aq:                                            ; preds = %bb.am
  %i.dr = getelementptr inbounds i8, ptr %i.dg, i64 -9
  %i.ds = load i32, ptr %i.dr, align 1, !tbaa !9
  %i.dt = zext i32 %i.ds to i64
  br label %.thread.i

bb.ar:                                            ; preds = %bb.am
  %i.du = getelementptr inbounds i8, ptr %i.dg, i64 -17
  %i.dv = load i64, ptr %i.du, align 1, !tbaa !58
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am
  %.0.i.i = phi i64 [ %i.dv, %bb.ar ], [ %i.dk, %bb.an ], [ %i.dn, %bb.ao ], [ %i.dq, %bb.ap ], [ %i.dt, %bb.aq ], [ 0, %bb.am ]
  store i64 -123456789, ptr %i.e, align 8, !tbaa !58
  br label %setTypeNext.exit

bb.as:                                            ; preds = %setTypeInitIterator.exit
  %i.dw = load ptr, ptr %5, align 8, !tbaa !50
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !47
  %i.dz = load i32, ptr %i.cs, align 4, !tbaa !56 ; 2 uses
  %i.ea = add nsw i32 %i.dz, 1
end_hunk_3
begin_hunk_4_@sunionDiffGenericCommand:bb.a

bb.bu:                                            ; preds = %bb.bq
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 327, ptr noundef nonnull @.str.3) #11
  call void @abort() #12
  unreachable

setTypeInitIterator.exit197:                      ; preds = %bb.br, %bb.bs, %bb.bt
  %i.gw = call i32 @setTypeNext(ptr noundef nonnull %5, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) ; 3 uses
  %.not173239 = icmp eq i32 %i.gw, -1
  br i1 %.not173239, label %._crit_edge242, label %.lr.ph241

.lr.ph241:                                        ; preds = %setTypeInitIterator.exit197
  %i.gx = icmp eq i64 %indvars.iv315, 0
  br i1 %i.gx, label %.lr.ph241.split.us, label %.lr.ph241.split

.lr.ph241.split.us:                               ; preds = %.lr.ph241, %.lr.ph241.split.us
  %i.gy = phi i32 [ %i.hg, %.lr.ph241.split.us ], [ %i.gw, %.lr.ph241 ]
  %.6240.us = phi i32 [ %i.hf, %.lr.ph241.split.us ], [ %.5246, %.lr.ph241 ]
  %i.gz = load ptr, ptr %i.c, align 8, !tbaa !59
  %i.ha = load i64, ptr %i.d, align 8, !tbaa !58
  %i.hb = load i64, ptr %i.e, align 8, !tbaa !58
  %i.hc = icmp eq i32 %i.gy, 2
  %i.hd = zext i1 %i.hc to i32
  %i.he = call i32 @setTypeAddAux(ptr noundef %i.co, ptr noundef %i.gz, i64 noundef %i.ha, i64 noundef %i.hb, i32 noundef %i.hd)
  %i.hf = add nsw i32 %i.he, %.6240.us            ; 2 uses
  %i.hg = call i32 @setTypeNext(ptr noundef nonnull %5, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) ; 2 uses
  %.not173.us = icmp eq i32 %i.hg, -1
  br i1 %.not173.us, label %._crit_edge242, label %.lr.ph241.split.us, !llvm.loop !119

.lr.ph241.split:                                  ; preds = %.lr.ph241, %.lr.ph241.split
  %i.hh = phi i32 [ %i.hp, %.lr.ph241.split ], [ %i.gw, %.lr.ph241 ]
  %.6240 = phi i32 [ %i.ho, %.lr.ph241.split ], [ %.5246, %.lr.ph241 ]
  %i.hi = load ptr, ptr %i.c, align 8, !tbaa !59
  %i.hj = load i64, ptr %i.d, align 8, !tbaa !58
  %i.hk = load i64, ptr %i.e, align 8, !tbaa !58
  %i.hl = icmp eq i32 %i.hh, 2
  %i.hm = zext i1 %i.hl to i32
  %i.hn = call i32 @setTypeRemoveAux(ptr noundef %i.co, ptr noundef %i.hi, i64 noundef %i.hj, i64 noundef %i.hk, i32 noundef %i.hm)
  %i.ho = sub nsw i32 %.6240, %i.hn               ; 2 uses
  %i.hp = call i32 @setTypeNext(ptr noundef nonnull %5, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) ; 2 uses
  %.not173 = icmp eq i32 %i.hp, -1
  br i1 %.not173, label %._crit_edge242, label %.lr.ph241.split, !llvm.loop !119

._crit_edge242:                                   ; preds = %.lr.ph241.split, %.lr.ph241.split.us, %setTypeInitIterator.exit197
  %.6.lcssa = phi i32 [ %.5246, %setTypeInitIterator.exit197 ], [ %i.hf, %.lr.ph241.split.us ], [ %i.ho, %.lr.ph241.split ] ; 2 uses
  %i.hq = load i32, ptr %i.gk, align 8, !tbaa !55
  %i.hr = icmp eq i32 %i.hq, 2
  br i1 %i.hr, label %bb.bv, label %setTypeResetIterator.exit198

bb.bv:                                            ; preds = %._crit_edge242
  call void @dictResetIterator(ptr noundef nonnull %i.gn) #11
  br label %setTypeResetIterator.exit198

setTypeResetIterator.exit198:                     ; preds = %._crit_edge242, %bb.bv
  %i.hs = icmp eq i32 %.6.lcssa, 0
  br i1 %i.hs, label %.critedge, label %bb.bw

bb.bw:                                            ; preds = %setTypeResetIterator.exit198, %bb.bp
  %.8 = phi i32 [ %.6.lcssa, %setTypeResetIterator.exit198 ], [ %.5246, %bb.bp ] ; 2 uses
  %indvars.iv.next316 = add nuw nsw i64 %indvars.iv315, 1 ; 2 uses
  %exitcond319.not = icmp eq i64 %indvars.iv.next316, %wide.trip.count318
  br i1 %exitcond319.not, label %.critedge, label %bb.bp, !llvm.loop !120

.critedge.loopexit:                               ; preds = %setTypeResetIterator.exit, %.preheader213
  %.0.i.i266.lcssa274.lcssa = phi i64 [ 0, %.preheader213 ], [ %.0.i.i266.lcssa273, %setTypeResetIterator.exit ]
  %.lcssa263270.lcssa = phi ptr [ undef, %.preheader213 ], [ %.lcssa263269, %setTypeResetIterator.exit ]
  %.0151.lcssa = phi i32 [ 0, %.preheader213 ], [ %.2153, %setTypeResetIterator.exit ]
  store ptr %.lcssa263270.lcssa, ptr %i.c, align 8
  store i64 %.0.i.i266.lcssa274.lcssa, ptr %i.d, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.bw, %setTypeResetIterator.exit198, %.critedge.loopexit, %bb.bn, %._crit_edge260, %bb.bb, %bb.bo
  %.9 = phi i32 [ %.3.lcssa, %._crit_edge260 ], [ 0, %bb.bb ], [ %.3.lcssa, %bb.bn ], [ 0, %bb.bo ], [ %.0151.lcssa, %.critedge.loopexit ], [ 0, %setTypeResetIterator.exit198 ], [ %.8, %bb.bw ]
  %i.ht = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !86
  %.not177 = icmp ne i32 %i.ht, 0
  %or.cond291 = and i1 %.not177, %i.i
  br i1 %or.cond291, label %.lr.ph286, label %.loopexit

.lr.ph286:                                        ; preds = %.critedge
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %wide.trip.count333 = zext nneg i32 %2 to i64
  br label %bb.bx

bb.bx:                                            ; preds = %.lr.ph286, %bb.bz
  %indvars.iv330 = phi i64 [ 0, %.lr.ph286 ], [ %indvars.iv.next331, %bb.bz ] ; 3 uses
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %indvars.iv330 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !109 ; 3 uses
  %.not184 = icmp eq ptr %i.hw, null
  br i1 %.not184, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.hx = load ptr, ptr %i.hu, align 8, !tbaa !70
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv330
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !84
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !47
  %i.ic = call i32 @getKeySlot(ptr noundef %i.ib) #11
  %i.id = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !111
  %i.if = call i64 @kvobjAllocSize(ptr noundef nonnull %i.hw) #11
  call void @updateSlotAllocSize(ptr noundef %i.hx, i32 noundef %i.ic, ptr noundef nonnull %i.hw, i64 noundef %i.ie, i64 noundef %i.if) #11
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bx, %bb.by
  %indvars.iv.next331 = add nuw nsw i64 %indvars.iv330, 1 ; 2 uses
  %exitcond334.not = icmp eq i64 %indvars.iv.next331, %wide.trip.count333
  br i1 %exitcond334.not, label %.loopexit, label %bb.bx, !llvm.loop !121

.loopexit:                                        ; preds = %bb.bz, %.critedge
  %.not178 = icmp eq ptr %3, null
  br i1 %.not178, label %bb.ca, label %bb.cl

bb.ca:                                            ; preds = %.loopexit
  %i.ig = sext i32 %.9 to i64
  call void @addReplySetLen(ptr noundef %0, i64 noundef %i.ig) #11
  store ptr %i.co, ptr %5, align 8, !tbaa !50
  %i.ih = load i64, ptr %i.co, align 8
  %i.ii = trunc i64 %i.ih to i32
  %i.ij = lshr i32 %i.ii, 4
  %i.ik = and i32 %i.ij, 15                       ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 %i.ik, ptr %i.il, align 8, !tbaa !55
  switch i32 %i.ik, label %bb.ce [
    i32 2, label %bb.cb
    i32 6, label %bb.cc
    i32 11, label %bb.cd
  ]

bb.cb:                                            ; preds = %bb.ca
  %i.im = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.in = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !47
  call void @dictInitIterator(ptr noundef nonnull %i.im, ptr noundef %i.io) #11
  br label %setTypeInitIterator.exit199

bb.cc:                                            ; preds = %bb.ca
  %i.ip = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.ip, align 4, !tbaa !56
  br label %setTypeInitIterator.exit199

bb.cd:                                            ; preds = %bb.ca
  %i.iq = getelementptr inbounds nuw i8, ptr %5, i64 64
  store ptr null, ptr %i.iq, align 8, !tbaa !57
  br label %setTypeInitIterator.exit199

bb.ce:                                            ; preds = %bb.ca
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 327, ptr noundef nonnull @.str.3) #11
  call void @abort() #12
  unreachable

setTypeInitIterator.exit199:                      ; preds = %bb.cb, %bb.cc, %bb.cd
  %i.ir = call i32 @setTypeNext(ptr noundef nonnull %5, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
  %.not179287 = icmp eq i32 %i.ir, -1
  br i1 %.not179287, label %._crit_edge289, label %.lr.ph288

.lr.ph288:                                        ; preds = %setTypeInitIterator.exit199, %bb.ch
  %i.is = load ptr, ptr %i.c, align 8, !tbaa !59  ; 2 uses
  %.not181 = icmp eq ptr %i.is, null
  br i1 %.not181, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph288
  %i.it = load i64, ptr %i.d, align 8, !tbaa !58
  call void @addReplyBulkCBuffer(ptr noundef %0, ptr noundef nonnull %i.is, i64 noundef %i.it) #11
  br label %bb.ch

bb.cg:                                            ; preds = %.lr.ph288
  %i.iu = load i64, ptr %i.e, align 8, !tbaa !58
  call void @addReplyBulkLongLong(ptr noundef %0, i64 noundef %i.iu) #11
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.iv = call i32 @setTypeNext(ptr noundef nonnull %5, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
  %.not179 = icmp eq i32 %i.iv, -1
  br i1 %.not179, label %._crit_edge289, label %.lr.ph288, !llvm.loop !122

._crit_edge289:                                   ; preds = %bb.ch, %setTypeInitIterator.exit199
  %i.iw = load i32, ptr %i.il, align 8, !tbaa !55
  %i.ix = icmp eq i32 %i.iw, 2
  br i1 %i.ix, label %bb.ci, label %setTypeResetIterator.exit200

bb.ci:                                            ; preds = %._crit_edge289
  %i.iy = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @dictResetIterator(ptr noundef nonnull %i.iy) #11
  br label %setTypeResetIterator.exit200

setTypeResetIterator.exit200:                     ; preds = %._crit_edge289, %bb.ci
  %i.iz = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8368), align 8, !tbaa !98
  %.not180 = icmp eq i32 %i.iz, 0
  br i1 %.not180, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %setTypeResetIterator.exit200
  call void @freeObjAsync(ptr noundef null, ptr noundef nonnull %i.co, i32 noundef -1) #11
  br label %bb.cy

bb.ck:                                            ; preds = %setTypeResetIterator.exit200
  call void @decrRefCount(ptr noundef nonnull %i.co) #11
  br label %bb.cy

bb.cl:                                            ; preds = %.loopexit
  %i.ja = load i64, ptr %i.co, align 8
  %12 = trunc i64 %i.ja to i32
  %13 = lshr i32 %12, 4
  %14 = and i32 %13, 15
  switch i32 %14, label %bb.cp [
    i32 2, label %bb.cm
    i32 6, label %bb.cn
    i32 11, label %bb.co
  ]

bb.cm:                                            ; preds = %bb.cl
  %i.jb = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !47 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 24
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !58
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 32
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !58
  %i.jh = add i64 %i.jg, %i.je
  br label %setTypeSize.exit202

bb.cn:                                            ; preds = %bb.cl
  %i.ji = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !47
  %i.jk = call i32 @intsetLen(ptr noundef %i.jj) #11
  %i.jl = zext i32 %i.jk to i64
  br label %setTypeSize.exit202

bb.co:                                            ; preds = %bb.cl
  %i.jm = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !47
  %i.jo = call i64 @lpLength(ptr noundef %i.jn) #11
  br label %setTypeSize.exit202

bb.cp:                                            ; preds = %bb.cl
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 476, ptr noundef nonnull @.str.3) #11
  call void @abort() #12
  unreachable

setTypeSize.exit202:                              ; preds = %bb.cm, %bb.cn, %bb.co
  %.0.i201 = phi i64 [ %i.jh, %bb.cm ], [ %i.jl, %bb.cn ], [ %i.jo, %bb.co ]
  %.not182 = icmp eq i64 %.0.i201, 0
  br i1 %.not182, label %bb.cv, label %bb.cq

bb.cq:                                            ; preds = %setTypeSize.exit202
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !70
  call void @setKey(ptr noundef %0, ptr noundef %i.jq, ptr noundef nonnull %3, ptr noundef nonnull %i.b, i32 noundef 0) #11
  %i.jr = load ptr, ptr %i.b, align 8, !tbaa !84  ; 4 uses
  %i.js = load i64, ptr %i.jr, align 8
  %15 = trunc i64 %i.js to i32
  %16 = lshr i32 %15, 4
  %17 = and i32 %16, 15
  switch i32 %17, label %bb.cu [
    i32 2, label %bb.cr
    i32 6, label %bb.cs
    i32 11, label %bb.ct
  ]

bb.cr:                                            ; preds = %bb.cq
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !47 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !58
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 32
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !58
  %i.jz = add i64 %i.jy, %i.jw
  br label %setTypeSize.exit204

bb.cs:                                            ; preds = %bb.cq
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !47
  %i.kc = call i32 @intsetLen(ptr noundef %i.kb) #11
  %i.kd = zext i32 %i.kc to i64
  br label %setTypeSize.exit204

bb.ct:                                            ; preds = %bb.cq
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !47
  %i.kg = call i64 @lpLength(ptr noundef %i.kf) #11
  br label %setTypeSize.exit204

bb.cu:                                            ; preds = %bb.cq
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 476, ptr noundef nonnull @.str.3) #11
  call void @abort() #12
  unreachable

setTypeSize.exit204:                              ; preds = %bb.cr, %bb.cs, %bb.ct
  %.0.i203 = phi i64 [ %i.jz, %bb.cr ], [ %i.kd, %bb.cs ], [ %i.kg, %bb.ct ]
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %.0.i203) #11
  %i.kh = select i1 %i.cp, ptr @.str.22, ptr @.str.23
  %i.ki = load ptr, ptr %i.jp, align 8, !tbaa !70
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 72
  %i.kk = load i32, ptr %i.kj, align 8, !tbaa !88
  call void @notifyKeyspaceEvent(i32 noundef 32, ptr noundef nonnull %i.kh, ptr noundef nonnull %3, i32 noundef %i.kk) #11
  %i.kl = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !91
  %i.km = add nsw i64 %i.kl, 1
  store i64 %i.km, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !91
  br label %bb.cy

bb.cv:                                            ; preds = %setTypeSize.exit202
  %i.kn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !92
  call void @addReply(ptr noundef %0, ptr noundef %i.kn) #11
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !70
  %i.kq = call i32 @dbDelete(ptr noundef %i.kp, ptr noundef nonnull %3) #11
  %.not183 = icmp eq i32 %i.kq, 0
  br i1 %.not183, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.kr = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !91
  %i.ks = add nsw i64 %i.kr, 1
  store i64 %i.ks, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !91
  %i.kt = load ptr, ptr %i.ko, align 8, !tbaa !70
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.kt, ptr noundef nonnull %3, ptr noundef null, i32 noundef 1) #11
  %i.ku = load ptr, ptr %i.ko, align 8, !tbaa !70
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 72
  %i.kw = load i32, ptr %i.kv, align 8, !tbaa !88
  call void @notifyKeyspaceEvent(i32 noundef 4, ptr noundef nonnull @.str.11, ptr noundef nonnull %3, i32 noundef %i.kw) #11
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  call void @decrRefCount(ptr noundef nonnull %i.co) #11
  br label %bb.cy

bb.cy:                                            ; preds = %setTypeSize.exit204, %bb.cx, %bb.cj, %bb.ck
  call void @zfree(ptr noundef %i.h) #11
  br label %bb.cz

bb.cz:                                            ; preds = %.loopexit309, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret void
}

declare i32 @dbDelete(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @rewriteClientCommandVector(ptr noundef, i32 noundef, ...) local_unnamed_addr #1

declare void @addReplySetLen(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @addReplyBulkCBuffer(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @addReplyBulkLongLong(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @alsoPropagate(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @decrRefCount(ptr noundef) local_unnamed_addr #1

declare ptr @lpBatchDelete(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @zfree(ptr noundef) local_unnamed_addr #1

declare void @addReplyBulk(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @dbReplaceValue(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @preventCommandPropagation(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @spopCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8, !tbaa !85   ; 2 uses
  %i.c = icmp eq i32 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @spopWithCountCommand(ptr noundef nonnull %0)
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.d = icmp sgt i32 %i.b, 3
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !123
  tail call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.e) #11
  br label %bb.v

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !84
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.k = load i32, ptr %i.j, align 4, !tbaa !97
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @shared, i64 64), i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !84
  %i.o = tail call ptr @lookupKeyWriteOrReply(ptr noundef nonnull %0, ptr noundef %i.i, ptr noundef %i.n) #11 ; 15 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.v, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.o, i32 noundef 2) #11
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.g, label %bb.v

bb.g:                                             ; preds = %bb.f
  %i.r = load i64, ptr %i.o, align 8
  %1 = trunc i64 %i.r to i32
  %2 = lshr i32 %1, 4
  %3 = and i32 %2, 15
  switch i32 %3, label %bb.k [
    i32 2, label %bb.h
    i32 6, label %bb.i
    i32 11, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !47   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !58
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.x = load i64, ptr %i.w, align 8, !tbaa !58
  %i.y = add i64 %i.x, %i.v
  br label %setTypeSize.exit

bb.i:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !47
  %i.ab = tail call i32 @intsetLen(ptr noundef %i.aa) #11
  %i.ac = zext i32 %i.ab to i64
  br label %setTypeSize.exit

bb.j:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !47
  %i.af = tail call i64 @lpLength(ptr noundef %i.ae) #11
  br label %setTypeSize.exit

bb.k:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 476, ptr noundef nonnull @.str.3) #11
  tail call void @abort() #12
  unreachable

setTypeSize.exit:                                 ; preds = %bb.h, %bb.i, %bb.j
  %.0.i = phi i64 [ %i.y, %bb.h ], [ %i.ac, %bb.i ], [ %i.af, %bb.j ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !70
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !84
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !47
  %i.an = tail call i32 @getKeySlot(ptr noundef %i.am) #11
  %i.ao = add i64 %.0.i, -1
  tail call void @updateKeysizesHist(ptr noundef %i.ah, i32 noundef %i.an, i32 noundef 2, i64 noundef %.0.i, i64 noundef %i.ao) #11
  %i.ap = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !86
  %.not42 = icmp eq i32 %i.ap, 0
  br i1 %.not42, label %bb.m, label %bb.l

bb.l:                                             ; preds = %setTypeSize.exit
  %i.aq = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.o) #11
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %setTypeSize.exit
  %.039 = phi i64 [ %i.aq, %bb.l ], [ 0, %setTypeSize.exit ]
  %i.ar = tail call ptr @setTypePopRandom(ptr noundef nonnull %i.o) ; 3 uses
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !86
  %.not43 = icmp eq i32 %i.as, 0
  br i1 %.not43, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = load ptr, ptr %i.ag, align 8, !tbaa !70
  %i.au = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !84
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !47
  %i.az = tail call i32 @getKeySlot(ptr noundef %i.ay) #11
  %i.ba = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.o) #11
  tail call void @updateSlotAllocSize(ptr noundef %i.at, i32 noundef %i.az, ptr noundef nonnull %i.o, i64 noundef %.039, i64 noundef %i.ba) #11
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bb = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !84
  %i.be = load ptr, ptr %i.ag, align 8, !tbaa !70
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !88
  tail call void @notifyKeyspaceEvent(i32 noundef 32, ptr noundef nonnull @.str.12, ptr noundef %i.bd, i32 noundef %i.bg) #11
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 528), align 8, !tbaa !99
  %i.bi = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !84
  tail call void (ptr, i32, ...) @rewriteClientCommandVector(ptr noundef nonnull %0, i32 noundef 3, ptr noundef %i.bh, ptr noundef %i.bk, ptr noundef %i.ar) #11
  tail call void @addReplyBulk(ptr noundef nonnull %0, ptr noundef %i.ar) #11
  tail call void @decrRefCount(ptr noundef %i.ar) #11
  %i.bl = load i64, ptr %i.o, align 8
  %4 = trunc i64 %i.bl to i32
  %5 = lshr i32 %4, 4
  %6 = and i32 %5, 15
  switch i32 %6, label %bb.s [
    i32 2, label %bb.p
    i32 6, label %bb.q
    i32 11, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !47 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !58
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !58
  %i.bs = add i64 %i.br, %i.bp
  br label %setTypeSize.exit47

bb.q:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !47
  %i.bv = tail call i32 @intsetLen(ptr noundef %i.bu) #11
  %i.bw = zext i32 %i.bv to i64
  br label %setTypeSize.exit47

bb.r:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !47
  %i.bz = tail call i64 @lpLength(ptr noundef %i.by) #11
  br label %setTypeSize.exit47

bb.s:                                             ; preds = %bb.o
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 476, ptr noundef nonnull @.str.3) #11
  tail call void @abort() #12
  unreachable

setTypeSize.exit47:                               ; preds = %bb.p, %bb.q, %bb.r
  %.0.i46 = phi i64 [ %i.bs, %bb.p ], [ %i.bw, %bb.q ], [ %i.bz, %bb.r ]
  %.not45 = icmp eq i64 %.0.i46, 0
  br i1 %.not45, label %bb.t, label %bb.u

bb.t:                                             ; preds = %setTypeSize.exit47
  %i.ca = load ptr, ptr %i.ag, align 8, !tbaa !70
  %i.cb = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !84
  %i.ce = tail call i32 @dbDelete(ptr noundef %i.ca, ptr noundef %i.cd) #11 ; 0 uses
  %i.cf = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !84
  %i.ci = load ptr, ptr %i.ag, align 8, !tbaa !70
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 72
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !88
  tail call void @notifyKeyspaceEvent(i32 noundef 4, ptr noundef nonnull @.str.11, ptr noundef %i.ch, i32 noundef %i.ck) #11
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %setTypeSize.exit47
  %i.cl = phi ptr [ null, %bb.t ], [ %i.o, %setTypeSize.exit47 ]
  %i.cm = load ptr, ptr %i.ag, align 8, !tbaa !70
  %i.cn = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !84
  tail call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.cm, ptr noundef %i.cp, ptr noundef %i.cl, i32 noundef 1) #11
  %i.cq = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !91
  %i.cr = add nsw i64 %i.cq, 1
  store i64 %i.cr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !91
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.f, %bb.e, %bb.d, %bb.b
  ret void
}

declare void @addReplyErrorObject(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @srandmemberWithCountCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  %i.c = alloca i64, align 8                      ; 12 uses
  %i.d = alloca i64, align 8                      ; 14 uses
  %1 = alloca %struct.setTypeIterator, align 8    ; 7 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %2 = alloca %struct.setTypeIterator, align 8    ; 6 uses
  %3 = alloca %struct.dictIterator, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i64 0, ptr %i.c, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i64 0, ptr %i.d, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !84
  %i.k = call i32 @getRangeLongFromObjectOrReply(ptr noundef %0, ptr noundef %i.j, i64 noundef -9223372036854775807, i64 noundef 9223372036854775807, ptr noundef nonnull %i.a, ptr noundef null) #11
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.a, align 8, !tbaa !58   ; 7 uses
  %i.m = icmp slt i64 %i.l, 0
  %.0 = call i64 @llvm.abs.i64(i64 %i.l, i1 true) ; 11 uses
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !83
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !84
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 192), align 8, !tbaa !124
  %i.r = call ptr @lookupKeyReadOrReply(ptr noundef nonnull %0, ptr noundef %i.p, ptr noundef %i.q) #11 ; 14 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.r, i32 noundef 2) #11
  %.not133 = icmp eq i32 %i.t, 0
  br i1 %.not133, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.u = load i64, ptr %i.r, align 8
  %4 = trunc i64 %i.u to i32
  %5 = lshr i32 %4, 4
  %6 = and i32 %5, 15
  switch i32 %6, label %bb.h [
    i32 2, label %bb.e
    i32 6, label %bb.f
    i32 11, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !47   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !58
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !58
  %i.ab = add i64 %i.aa, %i.y
  br label %setTypeSize.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !47
  %i.ae = call i32 @intsetLen(ptr noundef %i.ad) #11
  %i.af = zext i32 %i.ae to i64
  br label %setTypeSize.exit

bb.g:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !47
  %i.ai = call i64 @lpLength(ptr noundef %i.ah) #11
  br label %setTypeSize.exit

bb.h:                                             ; preds = %bb.d
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 476, ptr noundef nonnull @.str.3) #11
  call void @abort() #12
  unreachable

setTypeSize.exit:                                 ; preds = %bb.e, %bb.f, %bb.g
  %.0.i = phi i64 [ %i.ab, %bb.e ], [ %i.af, %bb.f ], [ %i.ai, %bb.g ] ; 9 uses
  %i.aj = icmp eq i64 %i.l, 0
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %setTypeSize.exit
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 192), align 8, !tbaa !124
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.ak) #11
  br label %.loopexit

bb.j:                                             ; preds = %setTypeSize.exit
  %i.al = icmp eq i64 %.0, 1
  %or.cond = select i1 %i.m, i1 true, i1 %i.al
  br i1 %or.cond, label %bb.k, label %bb.v

bb.k:                                             ; preds = %bb.j
  call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef %.0) #11
  %i.am = load i64, ptr %i.r, align 8
  %i.an = and i64 %i.am, 240
  %i.ao = icmp eq i64 %i.an, 176
  %i.ap = icmp ne i64 %.0, 1
  %or.cond3 = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %or.cond3, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.ar = call i64 @llvm.umin.i64(i64 %.0, i64 1000) ; 2 uses
  %i.as = mul nuw nsw i64 %i.ar, 24
  %i.at = call noalias ptr @zmalloc(i64 noundef %i.as) #13 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge160
  %.1 = phi i64 [ %.0, %bb.l ], [ %i.ax, %._crit_edge160 ] ; 3 uses
  %i.aw = call i64 @llvm.umin.i64(i64 %.1, i64 %i.ar) ; 3 uses
  %i.ax = sub i64 %.1, %i.aw                      ; 2 uses
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !47
  %i.az = trunc nuw nsw i64 %i.aw to i32
  call void @lpRandomEntries(ptr noundef %i.ay, i32 noundef %i.az, ptr noundef %i.at) #11
  %.not161 = icmp eq i64 %.1, 0
  br i1 %.not161, label %._crit_edge160, label %.lr.ph159

._crit_edge160:                                   ; preds = %bb.p, %bb.m
  %i.ba = load i64, ptr %i.av, align 8, !tbaa !125
  %i.bb = and i64 %i.ba, 1024
  %i.bc = icmp eq i64 %i.bb, 0
  %i.bd = icmp ne i64 %i.ax, 0
  %or.cond5 = and i1 %i.bd, %i.bc
  br i1 %or.cond5, label %bb.m, label %bb.q, !llvm.loop !126

.lr.ph159:                                        ; preds = %bb.m, %bb.p
  %.0119157 = phi i64 [ %i.bl, %bb.p ], [ 0, %bb.m ] ; 2 uses
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %.0119157 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !127 ; 2 uses
  %.not141 = icmp eq ptr %i.bf, null
  br i1 %.not141, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph159
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !129
  %i.bi = zext i32 %i.bh to i64
  call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %i.bf, i64 noundef %i.bi) #11
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph159
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !130
  call void @addReplyBulkLongLong(ptr noundef nonnull %0, i64 noundef %i.bk) #11
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.bl = add nuw nsw i64 %.0119157, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.bl, %i.aw
  br i1 %exitcond.not, label %._crit_edge160, label %.lr.ph159, !llvm.loop !131

bb.q:                                             ; preds = %._crit_edge160
  call void @zfree(ptr noundef %i.at) #11
  br label %.loopexit

bb.r:                                             ; preds = %bb.u, %.preheader
  %.in = phi i64 [ %.0, %.preheader ], [ %i.bm, %bb.u ]
  %i.bm = add i64 %.in, -1                        ; 2 uses
  %i.bn = call i32 @setTypeRandomElement(ptr noundef nonnull %i.r, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) ; 0 uses
  %i.bo = load ptr, ptr %i.b, align 8, !tbaa !59  ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bq = load i64, ptr %i.d, align 8, !tbaa !58
  call void @addReplyBulkLongLong(ptr noundef nonnull %0, i64 noundef %i.bq) #11
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.br = load i64, ptr %i.c, align 8, !tbaa !58
  call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %i.bo, i64 noundef %i.br) #11
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bs = load i64, ptr %i.aq, align 8, !tbaa !125
  %i.bt = and i64 %i.bs, 1024
  %.not140 = icmp ne i64 %i.bt, 0
  %.not139 = icmp eq i64 %i.bm, 0
  %or.cond175 = select i1 %.not140, i1 true, i1 %.not139
  br i1 %or.cond175, label %.loopexit, label %bb.r, !llvm.loop !132

bb.v:                                             ; preds = %bb.j
  %.not134 = icmp ult i64 %i.l, %.0.i
  br i1 %.not134, label %bb.ad, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef %.0.i) #11
  call void @setTypeInitIterator(ptr noundef nonnull %1, ptr noundef nonnull %i.r)
  %i.bu = call i32 @setTypeNext(ptr noundef nonnull %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %.not138145 = icmp eq i32 %i.bu, -1
  br i1 %.not138145, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w, %bb.z
  %.0114146 = phi i64 [ %i.bz, %bb.z ], [ %.0.i, %bb.w ]
  %i.bv = load ptr, ptr %i.b, align 8, !tbaa !59  ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph
  %i.bx = load i64, ptr %i.d, align 8, !tbaa !58
  call void @addReplyBulkLongLong(ptr noundef nonnull %0, i64 noundef %i.bx) #11
  br label %bb.z

bb.y:                                             ; preds = %.lr.ph
  %i.by = load i64, ptr %i.c, align 8, !tbaa !58
  call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %i.bv, i64 noundef %i.by) #11
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bz = add i64 %.0114146, -1                   ; 2 uses
  %i.ca = call i32 @setTypeNext(ptr noundef nonnull %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %.not138 = icmp eq i32 %i.ca, -1
  br i1 %.not138, label %._crit_edge, label %.lr.ph, !llvm.loop !133

._crit_edge:                                      ; preds = %bb.z, %bb.w
  %.0114.lcssa = phi i64 [ %.0.i, %bb.w ], [ %i.bz, %bb.z ]
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !55
  %i.cd = icmp eq i32 %i.cc, 2
  br i1 %i.cd, label %bb.aa, label %setTypeResetIterator.exit

bb.aa:                                            ; preds = %._crit_edge
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @dictResetIterator(ptr noundef nonnull %i.ce) #11
  br label %setTypeResetIterator.exit

setTypeResetIterator.exit:                        ; preds = %._crit_edge, %bb.aa
  %i.cf = icmp eq i64 %.0114.lcssa, 0
  br i1 %i.cf, label %bb.ac, label %bb.ab, !prof !49

bb.ab:                                            ; preds = %setTypeResetIterator.exit
  call void @_serverAssert(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 1199) #11
  call void @abort() #12
  unreachable

bb.ac:                                            ; preds = %setTypeResetIterator.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  br label %.loopexit

bb.ad:                                            ; preds = %bb.v
  %i.cg = load i64, ptr %i.r, align 8
end_hunk_4
begin_hunk_5_@srandmemberWithCountCommand:bb.a
  %.1115148 = phi i64 [ %i.dz, %.lr.ph149 ], [ %.0.i, %.preheader143 ]
  %i.dv = call ptr @dictGetFairRandomKey(ptr noundef nonnull %i.cx) #11 ; 3 uses
  %i.dw = call ptr @dictGetKey(ptr noundef %i.dv) #11
  %i.dx = call ptr @dictUnlink(ptr noundef nonnull %i.cx, ptr noundef %i.dw) #11 ; 0 uses
  %i.dy = call ptr @dictGetKey(ptr noundef %i.dv) #11
  call void @sdsfree(ptr noundef %i.dy) #11
  call void @dictFreeUnlinkedEntry(ptr noundef nonnull %i.cx, ptr noundef %i.dv) #11
  %i.dz = add i64 %.1115148, -1                   ; 2 uses
  %i.ea = icmp ugt i64 %i.dz, %.0
  br i1 %i.ea, label %.lr.ph149, label %._crit_edge150, !llvm.loop !136

._crit_edge150:                                   ; preds = %.lr.ph149, %.preheader143
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %.loopexit144

bb.av:                                            ; preds = %bb.ak
  %i.eb = call i32 @dictExpand(ptr noundef %i.cx, i64 noundef %i.l) #11 ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.bc
  %.0112147 = phi i64 [ 0, %bb.av ], [ %.1113, %bb.bc ] ; 2 uses
  %i.ec = call i32 @setTypeRandomElement(ptr noundef nonnull %i.r, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) ; 0 uses
  %i.ed = load ptr, ptr %i.b, align 8, !tbaa !59  ; 2 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ef = load i64, ptr %i.d, align 8, !tbaa !58
  %i.eg = call ptr @sdsfromlonglong(i64 noundef %i.ef) #11
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.eh = load i64, ptr %i.c, align 8, !tbaa !58
  %i.ei = call ptr @sdsnewlen(ptr noundef nonnull %i.ed, i64 noundef %i.eh) #11
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.0111 = phi ptr [ %i.eg, %bb.ax ], [ %i.ei, %bb.ay ] ; 2 uses
  %i.ej = call i32 @dictAdd(ptr noundef %i.cx, ptr noundef %.0111, ptr noundef null) #11
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.el = add nuw nsw i64 %.0112147, 1
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  call void @sdsfree(ptr noundef %.0111) #11
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.1113 = phi i64 [ %i.el, %bb.ba ], [ %.0112147, %bb.bb ] ; 2 uses
  %i.em = icmp ult i64 %.1113, %.0
  br i1 %i.em, label %bb.aw, label %.loopexit144, !llvm.loop !137

.loopexit144:                                     ; preds = %bb.bc, %._crit_edge150
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef %.0) #11
  call void @dictInitIterator(ptr noundef nonnull %3, ptr noundef %i.cx) #11
  %i.en = call ptr @dictNext(ptr noundef nonnull %3) #11 ; 2 uses
  %.not136151 = icmp eq ptr %i.en, null
  br i1 %.not136151, label %._crit_edge154, label %.lr.ph153

.lr.ph153:                                        ; preds = %.loopexit144, %.lr.ph153
  %i.eo = phi ptr [ %i.eq, %.lr.ph153 ], [ %i.en, %.loopexit144 ]
  %i.ep = call ptr @dictGetKey(ptr noundef nonnull %i.eo) #11
  call void @addReplyBulkSds(ptr noundef nonnull %0, ptr noundef %i.ep) #11
  %i.eq = call ptr @dictNext(ptr noundef nonnull %3) #11 ; 2 uses
  %.not136 = icmp eq ptr %i.eq, null
  br i1 %.not136, label %._crit_edge154, label %.lr.ph153, !llvm.loop !138

._crit_edge154:                                   ; preds = %.lr.ph153, %.loopexit144
  call void @dictResetIterator(ptr noundef nonnull %3) #11
  call void @dictRelease(ptr noundef %i.cx) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.b, %bb.c, %bb.a, %._crit_edge154, %bb.aj, %bb.ac, %bb.q, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

declare i32 @getRangeLongFromObjectOrReply(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @lpRandomEntries(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @dictUnlink(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @dictFreeUnlinkedEntry(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @addReplyBulkSds(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @srandmemberCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i64 0, ptr %i.b, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i64 0, ptr %i.c, align 8, !tbaa !58
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !85   ; 2 uses
  %i.f = icmp eq i32 %i.e, 3
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @srandmemberWithCountCommand(ptr noundef nonnull %0)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.g = icmp sgt i32 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !123
  tail call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.h) #11
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !84
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = load i32, ptr %i.m, align 4, !tbaa !97
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @shared, i64 64), i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !84
  %i.r = tail call ptr @lookupKeyReadOrReply(ptr noundef nonnull %0, ptr noundef %i.l, ptr noundef %i.q) #11 ; 6 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.r, i32 noundef 2) #11
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !86
  %.not20 = icmp eq i32 %i.u, 0
  br i1 %.not20, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.r) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi i64 [ %i.v, %bb.h ], [ 0, %bb.g ]
  %i.w = call i32 @setTypeRandomElement(ptr noundef nonnull %i.r, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 0 uses
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !86
  %.not21 = icmp eq i32 %i.x, 0
  br i1 %.not21, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !70
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !83
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !84
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !47
  %i.af = call i32 @getKeySlot(ptr noundef %i.ae) #11
  %i.ag = call i64 @kvobjAllocSize(ptr noundef nonnull %i.r) #11
  call void @updateSlotAllocSize(ptr noundef %i.z, i32 noundef %i.af, ptr noundef nonnull %i.r, i64 noundef %.0, i64 noundef %i.ag) #11
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aj = load i64, ptr %i.c, align 8, !tbaa !58
  call void @addReplyBulkLongLong(ptr noundef nonnull %0, i64 noundef %i.aj) #11
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !58
  call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %i.ah, i64 noundef %i.ak) #11
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.e, %bb.f, %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @qsortCompareSetsByCardinality(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !109    ; 8 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !109    ; 8 uses
  %i.c = load i64, ptr %i.a, align 8
  %2 = trunc i64 %i.c to i32
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 15
  switch i32 %4, label %bb.e [
    i32 2, label %bb.b
    i32 6, label %bb.c
    i32 11, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !58
  %i.j = add i64 %i.i, %i.g
  br label %setTypeSize.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !47
  %i.m = tail call i32 @intsetLen(ptr noundef %i.l) #11
  %i.n = zext i32 %i.m to i64
  br label %setTypeSize.exit

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.q = tail call i64 @lpLength(ptr noundef %i.p) #11
  br label %setTypeSize.exit

bb.e:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 476, ptr noundef nonnull @.str.3) #11
  tail call void @abort() #12
  unreachable

setTypeSize.exit:                                 ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i64 [ %i.j, %bb.b ], [ %i.n, %bb.c ], [ %i.q, %bb.d ]
  %i.r = load i64, ptr %i.b, align 8
  %5 = trunc i64 %i.r to i32
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 15
  switch i32 %7, label %bb.i [
    i32 2, label %bb.f
    i32 6, label %bb.g
    i32 11, label %bb.h
  ]

bb.f:                                             ; preds = %setTypeSize.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !47   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !58
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.x = load i64, ptr %i.w, align 8, !tbaa !58
  %i.y = add i64 %i.x, %i.v
  br label %setTypeSize.exit7

bb.g:                                             ; preds = %setTypeSize.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !47
  %i.ab = tail call i32 @intsetLen(ptr noundef %i.aa) #11
  %i.ac = zext i32 %i.ab to i64
  br label %setTypeSize.exit7

bb.h:                                             ; preds = %setTypeSize.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !47
  %i.af = tail call i64 @lpLength(ptr noundef %i.ae) #11
  br label %setTypeSize.exit7

bb.i:                                             ; preds = %setTypeSize.exit
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 476, ptr noundef nonnull @.str.3) #11
  tail call void @abort() #12
  unreachable

setTypeSize.exit7:                                ; preds = %bb.f, %bb.g, %bb.h
  %.0.i6 = phi i64 [ %i.y, %bb.f ], [ %i.ac, %bb.g ], [ %i.af, %bb.h ]
  %i.ag = icmp ugt i64 %.0.i, %.0.i6
  br i1 %i.ag, label %bb.s, label %bb.j

bb.j:                                             ; preds = %setTypeSize.exit7
  %i.ah = load i64, ptr %i.a, align 8
  %8 = trunc i64 %i.ah to i32
  %9 = lshr i32 %8, 4
  %10 = and i32 %9, 15
  switch i32 %10, label %bb.n [
    i32 2, label %bb.k
    i32 6, label %bb.l
    i32 11, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !47 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !58
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.an = load i64, ptr %i.am, align 8, !tbaa !58
  %i.ao = add i64 %i.an, %i.al
  br label %setTypeSize.exit9

bb.l:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !47
  %i.ar = tail call i32 @intsetLen(ptr noundef %i.aq) #11
  %i.as = zext i32 %i.ar to i64
  br label %setTypeSize.exit9

bb.m:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !47
  %i.av = tail call i64 @lpLength(ptr noundef %i.au) #11
  br label %setTypeSize.exit9

bb.n:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 476, ptr noundef nonnull @.str.3) #11
  tail call void @abort() #12
  unreachable

setTypeSize.exit9:                                ; preds = %bb.k, %bb.l, %bb.m
  %.0.i8 = phi i64 [ %i.ao, %bb.k ], [ %i.as, %bb.l ], [ %i.av, %bb.m ]
  %i.aw = load i64, ptr %i.b, align 8
  %11 = trunc i64 %i.aw to i32
  %12 = lshr i32 %11, 4
  %13 = and i32 %12, 15
  switch i32 %13, label %bb.r [
    i32 2, label %bb.o
    i32 6, label %bb.p
    i32 11, label %bb.q
  ]

bb.o:                                             ; preds = %setTypeSize.exit9
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !47 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !58
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !58
  %i.bd = add i64 %i.bc, %i.ba
  br label %setTypeSize.exit11

bb.p:                                             ; preds = %setTypeSize.exit9
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !47
  %i.bg = tail call i32 @intsetLen(ptr noundef %i.bf) #11
  %i.bh = zext i32 %i.bg to i64
  br label %setTypeSize.exit11

bb.q:                                             ; preds = %setTypeSize.exit9
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !47
  %i.bk = tail call i64 @lpLength(ptr noundef %i.bj) #11
  br label %setTypeSize.exit11

bb.r:                                             ; preds = %setTypeSize.exit9
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 476, ptr noundef nonnull @.str.3) #11
  tail call void @abort() #12
  unreachable

setTypeSize.exit11:                               ; preds = %bb.o, %bb.p, %bb.q
  %.0.i10 = phi i64 [ %i.bd, %bb.o ], [ %i.bh, %bb.p ], [ %i.bk, %bb.q ]
  %i.bl = icmp ult i64 %.0.i8, %.0.i10
  %. = sext i1 %i.bl to i32
  br label %bb.s

bb.s:                                             ; preds = %setTypeSize.exit11, %setTypeSize.exit7
  %.0 = phi i32 [ 1, %setTypeSize.exit7 ], [ %., %setTypeSize.exit11 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @qsortCompareSetsByRevCardinality(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !109    ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !109    ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %setTypeSize.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8
  %2 = trunc i64 %i.c to i32
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 15
  switch i32 %4, label %bb.f [
    i32 2, label %bb.c
    i32 6, label %bb.d
    i32 11, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !58
  %i.j = add i64 %i.i, %i.g
  br label %setTypeSize.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !47
  %i.m = tail call i32 @intsetLen(ptr noundef %i.l) #11
  %i.n = zext i32 %i.m to i64
  br label %setTypeSize.exit

bb.e:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.q = tail call i64 @lpLength(ptr noundef %i.p) #11
  br label %setTypeSize.exit

bb.f:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 476, ptr noundef nonnull @.str.3) #11
  tail call void @abort() #12
  unreachable

setTypeSize.exit:                                 ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.r = phi i64 [ 0, %bb.a ], [ %i.j, %bb.c ], [ %i.n, %bb.d ], [ %i.q, %bb.e ]
  %.not14 = icmp eq ptr %i.b, null
  br i1 %.not14, label %setTypeSize.exit16, label %bb.g

bb.g:                                             ; preds = %setTypeSize.exit
  %i.s = load i64, ptr %i.b, align 8
  %5 = trunc i64 %i.s to i32
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 15
  switch i32 %7, label %bb.k [
    i32 2, label %bb.h
    i32 6, label %bb.i
    i32 11, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !47   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !58
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !58
  %i.z = add i64 %i.y, %i.w
  br label %setTypeSize.exit16

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !47
  %i.ac = tail call i32 @intsetLen(ptr noundef %i.ab) #11
  %i.ad = zext i32 %i.ac to i64
  br label %setTypeSize.exit16

bb.j:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !47
  %i.ag = tail call i64 @lpLength(ptr noundef %i.af) #11
  br label %setTypeSize.exit16

bb.k:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 476, ptr noundef nonnull @.str.3) #11
  tail call void @abort() #12
  unreachable

setTypeSize.exit16:                               ; preds = %bb.j, %bb.i, %bb.h, %setTypeSize.exit
  %i.ah = phi i64 [ 0, %setTypeSize.exit ], [ %i.z, %bb.h ], [ %i.ad, %bb.i ], [ %i.ag, %bb.j ]
  %.0 = tail call i32 @llvm.ucmp.i32.i64(i64 %i.ah, i64 %i.r)
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @sinterGenericCommand(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %6 = alloca %struct.setTypeIterator, align 8    ; 10 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %7 = alloca %struct.setTypeIterator, align 8    ; 10 uses
  %i.e = alloca ptr, align 8                      ; 8 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %i.g = alloca i64, align 8                      ; 9 uses
  %i.h = alloca i64, align 8                      ; 9 uses
  %i.i = shl i64 %2, 4
  %i.j = tail call noalias ptr @zmalloc(i64 noundef %i.i) #13 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  store ptr null, ptr %i.e, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  store i64 0, ptr %i.g, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  store i64 0, ptr %i.h, align 8, !tbaa !58
  %.not181 = icmp eq i64 %2, 0
  br i1 %.not181, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.0109162 = phi i64 [ 0, %.lr.ph ], [ %i.w, %bb.h ] ; 4 uses
  %.0116161 = phi i32 [ 0, %.lr.ph ], [ %.1117.ph, %bb.h ] ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !70
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0109162
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !84
  %i.o = tail call ptr @lookupKeyRead(ptr noundef %i.l, ptr noundef %i.n) #11 ; 4 uses
  %.not149 = icmp eq ptr %i.o, null
  br i1 %.not149, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = add nsw i32 %.0116161, 1
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %.0109162
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.r = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.o, i32 noundef 2) #11
  %.not150 = icmp eq i32 %i.r, 0
  br i1 %.not150, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %.0109162 ; 2 uses
  store ptr %i.o, ptr %i.s, align 8, !tbaa !109
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !86
  %.not151 = icmp eq i32 %i.t, 0
  br i1 %.not151, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.o) #11
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !111
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  tail call void @zfree(ptr noundef %i.j) #11
  br label %bb.cd

bb.h:                                             ; preds = %bb.c, %bb.f, %bb.e
  %.1117.ph = phi i32 [ %.0116161, %bb.e ], [ %.0116161, %bb.f ], [ %i.p, %bb.c ] ; 2 uses
  %i.w = add nuw i64 %.0109162, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !139

._crit_edge:                                      ; preds = %bb.h
  %i.x = icmp sgt i32 %.1117.ph, 0
  br i1 %i.x, label %bb.i, label %._crit_edge.thread

bb.i:                                             ; preds = %._crit_edge
  tail call void @zfree(ptr noundef nonnull %i.j) #11
  %.not146 = icmp eq ptr %3, null
  br i1 %.not146, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !70
  %i.aa = tail call i32 @dbDelete(ptr noundef %i.z, ptr noundef nonnull %3) #11
  %.not148 = icmp eq i32 %i.aa, 0
  br i1 %.not148, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !70
  tail call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.ab, ptr noundef nonnull %3, ptr noundef null, i32 noundef 1) #11
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !70
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !88
  tail call void @notifyKeyspaceEvent(i32 noundef 4, ptr noundef nonnull @.str.11, ptr noundef nonnull %3, i32 noundef %i.ae) #11
  %i.af = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !91
  %i.ag = add nsw i64 %i.af, 1
  store i64 %i.ag, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !91
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !92
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.ah) #11
  br label %bb.cd

bb.m:                                             ; preds = %bb.i
  %.not147 = icmp eq i32 %4, 0
  br i1 %.not147, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef 0) #11
  br label %bb.cd

bb.o:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !97
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @shared, i64 160), i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !84
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.am) #11
  br label %bb.cd

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  tail call void @qsort(ptr noundef %i.j, i64 noundef %2, i64 noundef 16, ptr noundef nonnull @qsortCompareSetsByCardinality) #11
  %.not = icmp eq ptr %3, null                    ; 3 uses
  br i1 %.not, label %bb.t, label %bb.p

bb.p:                                             ; preds = %._crit_edge.thread
  %i.an = load ptr, ptr %i.j, align 8, !tbaa !109 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8
  %8 = trunc i64 %i.ao to i32
  %9 = lshr i32 %8, 4
  %10 = and i32 %9, 15
  switch i32 %10, label %bb.s [
    i32 6, label %bb.q
    i32 11, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.ap = tail call ptr @createIntsetObject() #11 ; 2 uses
  store ptr %i.ap, ptr %i.e, align 8, !tbaa !84
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !47
  %i.as = tail call i64 @lpBytes(ptr noundef %i.ar) #11
  %i.at = tail call ptr @lpNew(i64 noundef %i.as) #11
  %i.au = tail call ptr @createObject(i32 noundef 2, ptr noundef %i.at) #11 ; 4 uses
  store ptr %i.au, ptr %i.e, align 8, !tbaa !84
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = and i64 %i.av, -241
  %i.ax = or disjoint i64 %i.aw, 176
  store i64 %i.ax, ptr %i.au, align 8
  br label %bb.v

bb.s:                                             ; preds = %bb.p
  %i.ay = tail call ptr @createSetListpackObject() #11 ; 2 uses
  store ptr %i.ay, ptr %i.e, align 8, !tbaa !84
  br label %bb.v

bb.t:                                             ; preds = %._crit_edge.thread
  %.not132 = icmp eq i32 %4, 0
  br i1 %.not132, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.az = tail call ptr @addReplyDeferredLen(ptr noundef %0) #11
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.q, %bb.s, %bb.r
  %i.ba = phi ptr [ %i.ap, %bb.q ], [ %i.au, %bb.r ], [ %i.ay, %bb.s ], [ null, %bb.t ], [ null, %bb.u ] ; 20 uses
  %.0 = phi ptr [ null, %bb.q ], [ null, %bb.r ], [ null, %bb.s ], [ null, %bb.t ], [ %i.az, %bb.u ]
  %i.bb = load ptr, ptr %i.j, align 8, !tbaa !109 ; 3 uses
  store ptr %i.bb, ptr %7, align 8, !tbaa !50
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = trunc i64 %i.bc to i32
  %i.be = lshr i32 %i.bd, 4
  %i.bf = and i32 %i.be, 15                       ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 %i.bf, ptr %i.bg, align 8, !tbaa !55
  switch i32 %i.bf, label %bb.z [
    i32 2, label %bb.w
    i32 6, label %bb.x
    i32 11, label %bb.y
  ]

bb.w:                                             ; preds = %bb.v
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !47
  call void @dictInitIterator(ptr noundef nonnull %i.bh, ptr noundef %i.bj) #11
  br label %setTypeInitIterator.exit

bb.x:                                             ; preds = %bb.v
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !56
  br label %setTypeInitIterator.exit

bb.y:                                             ; preds = %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 64
  store ptr null, ptr %i.bl, align 8, !tbaa !57
  br label %setTypeInitIterator.exit

bb.z:                                             ; preds = %bb.v
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 327, ptr noundef nonnull @.str.3) #11
  tail call void @abort() #12
  unreachable

setTypeInitIterator.exit:                         ; preds = %bb.w, %bb.x, %bb.y
  %i.bm = call i32 @setTypeNext(ptr noundef nonnull %7, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) ; 2 uses
  %.not133169 = icmp eq i32 %i.bm, -1
  br i1 %.not133169, label %._crit_edge172, label %.preheader158.lr.ph

.preheader158.lr.ph:                              ; preds = %setTypeInitIterator.exit
  %i.bn = icmp ugt i64 %2, 1
  %.not135 = icmp eq i32 %4, 0
  %i.bo = add i64 %5, -1
  br label %.preheader158

.preheader158:                                    ; preds = %.preheader158.lr.ph, %bb.ap
  %i.bp = phi i32 [ %i.bm, %.preheader158.lr.ph ], [ %i.cs, %bb.ap ] ; 3 uses
  %.0108171 = phi i32 [ 1, %.preheader158.lr.ph ], [ %.2, %bb.ap ] ; 6 uses
  %.0113170 = phi i64 [ 0, %.preheader158.lr.ph ], [ %.1114, %bb.ap ] ; 4 uses
  br i1 %i.bn, label %.lr.ph164, label %._crit_edge165

.lr.ph164:                                        ; preds = %.preheader158
  %i.bq = load ptr, ptr %i.f, align 8
  %i.br = load i64, ptr %i.g, align 8
  %i.bs = icmp eq i32 %i.bp, 2
  %i.bt = zext i1 %i.bs to i32
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph164, %bb.ac
  %.1110163 = phi i64 [ 1, %.lr.ph164 ], [ %i.ca, %bb.ac ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %.1110163
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !109 ; 2 uses
  %i.bw = load ptr, ptr %i.j, align 8, !tbaa !109
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.by = load i64, ptr %i.h, align 8, !tbaa !58
  %i.bz = call i32 @setTypeIsMemberAux(ptr noundef %i.bv, ptr noundef %i.bq, i64 noundef %i.br, i64 noundef %i.by, i32 noundef %i.bt)
  %.not134 = icmp eq i32 %i.bz, 0
  br i1 %.not134, label %._crit_edge165, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ca = add nuw i64 %.1110163, 1                ; 2 uses
  %exitcond183.not = icmp eq i64 %i.ca, %2
  br i1 %exitcond183.not, label %._crit_edge165.thread, label %bb.aa, !llvm.loop !140

._crit_edge165:                                   ; preds = %bb.ab, %.preheader158
  %.1110.lcssa = phi i64 [ 1, %.preheader158 ], [ %.1110163, %bb.ab ]
  %i.cb = icmp eq i64 %.1110.lcssa, %2
  br i1 %i.cb, label %._crit_edge165.thread, label %bb.ap

._crit_edge165.thread:                            ; preds = %bb.ac, %._crit_edge165
  br i1 %.not135, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge165.thread
  %i.cc = add i64 %.0113170, 1                    ; 3 uses
  %or.cond152.not = icmp ult i64 %i.bo, %i.cc
  br i1 %or.cond152.not, label %._crit_edge172.loopexit, label %bb.ap

bb.ae:                                            ; preds = %._crit_edge165.thread
  %i.cd = load ptr, ptr %i.f, align 8, !tbaa !59  ; 8 uses
  br i1 %.not, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %.not136 = icmp eq ptr %i.cd, null
  br i1 %.not136, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ce = load i64, ptr %i.g, align 8, !tbaa !58
  call void @addReplyBulkCBuffer(ptr noundef %0, ptr noundef nonnull %i.cd, i64 noundef %i.ce) #11
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.cf = load i64, ptr %i.h, align 8, !tbaa !58
  call void @addReplyBulkLongLong(ptr noundef %0, i64 noundef %i.cf) #11
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.cg = add i64 %.0113170, 1
  br label %bb.ap

bb.aj:                                            ; preds = %bb.ae
  %i.ch = icmp ne ptr %i.cd, null
  %i.ci = icmp ne i32 %.0108171, 0
  %or.cond = select i1 %i.ch, i1 %i.ci, i1 false
  br i1 %or.cond, label %bb.ak, label %._crit_edge185

._crit_edge185:                                   ; preds = %bb.aj
  %.pre = load i64, ptr %i.g, align 8, !tbaa !58
  br label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.cj = icmp eq i32 %i.bp, 2
  %.pre186 = load i64, ptr %i.g, align 8, !tbaa !58 ; 5 uses
  br i1 %i.cj, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.ck = call i32 @string2ll(ptr noundef nonnull %i.cd, i64 noundef %.pre186, ptr noundef nonnull %i.h) #11
  %.not137 = icmp eq i32 %i.ck, 0
  br i1 %.not137, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cl = load i64, ptr %i.ba, align 8
  %11 = trunc i64 %i.cl to i32
  %12 = lshr i32 %11, 4
  %13 = and i32 %12, 15
  switch i32 %13, label %bb.ao [
    i32 11, label %bb.an
    i32 6, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am, %bb.am
  store ptr null, ptr %i.f, align 8, !tbaa !59
  br label %bb.ao

bb.ao:                                            ; preds = %._crit_edge185, %bb.ak, %bb.al, %bb.am, %bb.an
  %i.cm = phi i64 [ %.pre186, %bb.an ], [ %.pre186, %bb.am ], [ %.pre, %._crit_edge185 ], [ %.pre186, %bb.al ], [ %.pre186, %bb.ak ]
  %i.cn = phi ptr [ null, %bb.an ], [ %i.cd, %bb.am ], [ %i.cd, %._crit_edge185 ], [ %i.cd, %bb.al ], [ %i.cd, %bb.ak ]
  %.1 = phi i32 [ 1, %bb.an ], [ 1, %bb.am ], [ %.0108171, %._crit_edge185 ], [ 0, %bb.al ], [ 0, %bb.ak ]
  %i.co = load i64, ptr %i.h, align 8, !tbaa !58
  %i.cp = icmp eq i32 %i.bp, 2
  %i.cq = zext i1 %i.cp to i32
  %i.cr = call i32 @setTypeAddAux(ptr noundef %i.ba, ptr noundef %i.cn, i64 noundef %i.cm, i64 noundef %i.co, i32 noundef %i.cq) ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ad, %bb.ao, %bb.ai, %._crit_edge165
  %.1114 = phi i64 [ %.0113170, %._crit_edge165 ], [ %i.cc, %bb.ad ], [ %.0113170, %bb.ao ], [ %i.cg, %bb.ai ] ; 2 uses
  %.2 = phi i32 [ %.0108171, %._crit_edge165 ], [ %.0108171, %bb.ad ], [ %.1, %bb.ao ], [ %.0108171, %bb.ai ] ; 2 uses
  %i.cs = call i32 @setTypeNext(ptr noundef nonnull %7, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) ; 2 uses
  %.not133 = icmp eq i32 %i.cs, -1
  br i1 %.not133, label %._crit_edge172.loopexit, label %.preheader158, !llvm.loop !141

._crit_edge172.loopexit:                          ; preds = %bb.ad, %bb.ap
  %.0108.lcssa.ph = phi i32 [ %.2, %bb.ap ], [ %.0108171, %bb.ad ]
  %.2115.ph = phi i64 [ %.1114, %bb.ap ], [ %i.cc, %bb.ad ]
  %i.ct = icmp eq i32 %.0108.lcssa.ph, 0
  br label %._crit_edge172

._crit_edge172:                                   ; preds = %._crit_edge172.loopexit, %setTypeInitIterator.exit
  %.0108.lcssa = phi i1 [ false, %setTypeInitIterator.exit ], [ %i.ct, %._crit_edge172.loopexit ]
  %.2115 = phi i64 [ 0, %setTypeInitIterator.exit ], [ %.2115.ph, %._crit_edge172.loopexit ] ; 2 uses
  %i.cu = load i32, ptr %i.bg, align 8, !tbaa !55
  %i.cv = icmp eq i32 %i.cu, 2
  br i1 %i.cv, label %bb.aq, label %setTypeResetIterator.exit

bb.aq:                                            ; preds = %._crit_edge172
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @dictResetIterator(ptr noundef nonnull %i.cw) #11
  br label %setTypeResetIterator.exit

setTypeResetIterator.exit:                        ; preds = %._crit_edge172, %bb.aq
  %i.cx = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !86
  %.not140 = icmp ne i32 %i.cx, 0
  %i.cy = icmp ne i64 %2, 0
  %or.cond180 = and i1 %.not140, %i.cy
  br i1 %or.cond180, label %.lr.ph179, label %.loopexit

.lr.ph179:                                        ; preds = %setTypeResetIterator.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph179, %bb.at
  %.2111178 = phi i64 [ 0, %.lr.ph179 ], [ %i.dl, %bb.at ] ; 3 uses
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %.2111178 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !109 ; 3 uses
  %.not145 = icmp eq ptr %i.db, null
  br i1 %.not145, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dc = load ptr, ptr %i.cz, align 8, !tbaa !70
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.2111178
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !84
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !47
  %i.dh = call i32 @getKeySlot(ptr noundef %i.dg) #11
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !111
  %i.dk = call i64 @kvobjAllocSize(ptr noundef nonnull %i.db) #11
  call void @updateSlotAllocSize(ptr noundef %i.dc, i32 noundef %i.dh, ptr noundef nonnull %i.db, i64 noundef %i.dj, i64 noundef %i.dk) #11
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %i.dl = add nuw i64 %.2111178, 1                ; 2 uses
  %exitcond184.not = icmp eq i64 %i.dl, %2
  br i1 %exitcond184.not, label %.loopexit, label %bb.ar, !llvm.loop !142

.loopexit:                                        ; preds = %bb.at, %setTypeResetIterator.exit
  %.not141 = icmp eq i32 %4, 0
  br i1 %.not141, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.loopexit
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %.2115) #11
  br label %bb.cc

bb.av:                                            ; preds = %.loopexit
  br i1 %.not, label %bb.cb, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dm = load i64, ptr %i.ba, align 8
  %14 = trunc i64 %i.dm to i32
  %15 = lshr i32 %14, 4
  %16 = and i32 %15, 15
  switch i32 %16, label %bb.ba [
    i32 2, label %bb.ax
    i32 6, label %bb.ay
    i32 11, label %bb.az
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !47 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !58
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !58
  %i.dt = add i64 %i.ds, %i.dq
  br label %setTypeSize.exit

bb.ay:                                            ; preds = %bb.aw
  %i.du = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !47
  %i.dw = call i32 @intsetLen(ptr noundef %i.dv) #11
  %i.dx = zext i32 %i.dw to i64
  br label %setTypeSize.exit

bb.az:                                            ; preds = %bb.aw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !47
  %i.ea = call i64 @lpLength(ptr noundef %i.dz) #11
  br label %setTypeSize.exit

bb.ba:                                            ; preds = %bb.aw
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 476, ptr noundef nonnull @.str.3) #11
  call void @abort() #12
  unreachable

setTypeSize.exit:                                 ; preds = %bb.ax, %bb.ay, %bb.az
  %.0.i = phi i64 [ %i.dt, %bb.ax ], [ %i.dx, %bb.ay ], [ %i.ea, %bb.az ]
  %.not142 = icmp eq i64 %.0.i, 0
  br i1 %.not142, label %bb.by, label %bb.bb

bb.bb:                                            ; preds = %setTypeSize.exit
  %.pre188 = load i64, ptr %i.ba, align 8         ; 3 uses
  %i.eb = and i64 %.pre188, 240
  %i.ec = icmp eq i64 %i.eb, 96
  %or.cond211 = select i1 %.0108.lcssa, i1 true, i1 %i.ec
  br i1 %or.cond211, label %maybeConvertToIntset.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %17 = trunc i64 %.pre188 to i32
  %18 = lshr i32 %17, 4
  %19 = and i32 %18, 15
  switch i32 %19, label %bb.bg [
    i32 2, label %bb.bd
    i32 6, label %bb.be
    i32 11, label %bb.bf
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !47 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !58
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !58
  %i.ej = add i64 %i.ei, %i.eg
  br label %setTypeSize.exit.i

bb.be:                                            ; preds = %bb.bc
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !47
  %i.em = call i32 @intsetLen(ptr noundef %i.el) #11
  %i.en = zext i32 %i.em to i64
  br label %setTypeSize.exit.i

bb.bf:                                            ; preds = %bb.bc
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !47
  %i.eq = call i64 @lpLength(ptr noundef %i.ep) #11
  br label %setTypeSize.exit.i

bb.bg:                                            ; preds = %bb.bc
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 476, ptr noundef nonnull @.str.3) #11
  call void @abort() #12
  unreachable

setTypeSize.exit.i:                               ; preds = %bb.bf, %bb.be, %bb.bd
  %.0.i.i = phi i64 [ %i.ej, %bb.bd ], [ %i.en, %bb.be ], [ %i.eq, %bb.bf ]
  %i.er = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7952), align 8, !tbaa !68
  %spec.store.select.i.i = call range(i64 0, 1073741825) i64 @llvm.umin.i64(i64 %i.er, i64 1073741824)
  %i.es = icmp ugt i64 %.0.i.i, %spec.store.select.i.i
  br i1 %i.es, label %setTypeSize.exit.i.maybeConvertToIntset.exit_crit_edge, label %bb.bh

setTypeSize.exit.i.maybeConvertToIntset.exit_crit_edge: ; preds = %setTypeSize.exit.i
  %.pre187 = load i64, ptr %i.ba, align 8
  br label %maybeConvertToIntset.exit

bb.bh:                                            ; preds = %setTypeSize.exit.i
  %i.et = call ptr @intsetNew() #11               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i64 0, ptr %i.b, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i64 0, ptr %i.c, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  store ptr %i.ba, ptr %6, align 8, !tbaa !50
  %i.eu = load i64, ptr %i.ba, align 8
  %i.ev = trunc i64 %i.eu to i32
  %i.ew = lshr i32 %i.ev, 4
  %i.ex = and i32 %i.ew, 15                       ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 %i.ex, ptr %i.ey, align 8, !tbaa !55
  switch i32 %i.ex, label %bb.bl [
    i32 2, label %bb.bi
    i32 6, label %bb.bj
    i32 11, label %bb.bk
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !47
  call void @dictInitIterator(ptr noundef nonnull %i.ez, ptr noundef %i.fb) #11
  br label %setTypeInitIterator.exit.i

bb.bj:                                            ; preds = %bb.bh
  %i.fc = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 0, ptr %i.fc, align 4, !tbaa !56
  br label %setTypeInitIterator.exit.i

bb.bk:                                            ; preds = %bb.bh
  %i.fd = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr null, ptr %i.fd, align 8, !tbaa !57
  br label %setTypeInitIterator.exit.i

bb.bl:                                            ; preds = %bb.bh
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 327, ptr noundef nonnull @.str.3) #11
  call void @abort() #12
  unreachable

setTypeInitIterator.exit.i:                       ; preds = %bb.bk, %bb.bj, %bb.bi
  %i.fe = call i32 @setTypeNext(ptr noundef nonnull %6, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %.not14.i = icmp eq i32 %i.fe, -1
  br i1 %.not14.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %setTypeInitIterator.exit.i, %bb.bq
  %.015.i = phi ptr [ %i.fj, %bb.bq ], [ %i.et, %setTypeInitIterator.exit.i ]
  %i.ff = load ptr, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  %.not9.i = icmp eq ptr %i.ff, null
  br i1 %.not9.i, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.i
  %i.fg = load i64, ptr %i.b, align 8, !tbaa !58
  %i.fh = call i32 @string2ll(ptr noundef nonnull %i.ff, i64 noundef %i.fg, ptr noundef nonnull %i.c) #11
  %.not10.i = icmp eq i32 %i.fh, 0
  br i1 %.not10.i, label %bb.bn, label %bb.bo, !prof !143

bb.bn:                                            ; preds = %bb.bm
  call void @_serverAssert(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1, i32 noundef 85) #11
  call void @abort() #12
  unreachable

bb.bo:                                            ; preds = %bb.bm, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i8 0, ptr %i.d, align 1, !tbaa !60
  %i.fi = load i64, ptr %i.c, align 8, !tbaa !58
  %i.fj = call ptr @intsetAdd(ptr noundef %.015.i, i64 noundef %i.fi, ptr noundef nonnull %i.d) #11 ; 2 uses
  %i.fk = load i8, ptr %i.d, align 1, !tbaa !60
  %.not11.i = icmp eq i8 %i.fk, 0
  br i1 %.not11.i, label %bb.bp, label %bb.bq, !prof !143

bb.bp:                                            ; preds = %bb.bo
  call void @_serverAssert(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 89) #11
  call void @abort() #12
  unreachable

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  %i.fl = call i32 @setTypeNext(ptr noundef nonnull %6, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %.not.i = icmp eq i32 %i.fl, -1
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !144

._crit_edge.i:                                    ; preds = %bb.bq, %setTypeInitIterator.exit.i
  %.0.lcssa.i = phi ptr [ %i.et, %setTypeInitIterator.exit.i ], [ %i.fj, %bb.bq ]
  %i.fm = load i32, ptr %i.ey, align 8, !tbaa !55
  %i.fn = icmp eq i32 %i.fm, 2
  br i1 %i.fn, label %bb.br, label %setTypeResetIterator.exit.i

bb.br:                                            ; preds = %._crit_edge.i
  %i.fo = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @dictResetIterator(ptr noundef nonnull %i.fo) #11
  br label %setTypeResetIterator.exit.i

setTypeResetIterator.exit.i:                      ; preds = %bb.br, %._crit_edge.i
  call void @freeSetObject(ptr noundef nonnull %i.ba) #11
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %.0.lcssa.i, ptr %i.fp, align 8, !tbaa !47
  %i.fq = load i64, ptr %i.ba, align 8
  %i.fr = and i64 %i.fq, -241
  %i.fs = or disjoint i64 %i.fr, 96               ; 2 uses
  store i64 %i.fs, ptr %i.ba, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %maybeConvertToIntset.exit

maybeConvertToIntset.exit:                        ; preds = %setTypeSize.exit.i.maybeConvertToIntset.exit_crit_edge, %setTypeResetIterator.exit.i, %bb.bb
  %i.ft = phi i64 [ %.pre187, %setTypeSize.exit.i.maybeConvertToIntset.exit_crit_edge ], [ %i.fs, %setTypeResetIterator.exit.i ], [ %.pre188, %bb.bb ]
  %i.fu = and i64 %i.ft, 240
  %i.fv = icmp eq i64 %i.fu, 176
  br i1 %i.fv, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %maybeConvertToIntset.exit
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !47
  %i.fy = call ptr @lpShrinkToFit(ptr noundef %i.fx) #11
  store ptr %i.fy, ptr %i.fw, align 8, !tbaa !47
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %maybeConvertToIntset.exit
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !70
  call void @setKey(ptr noundef %0, ptr noundef %i.ga, ptr noundef nonnull %3, ptr noundef nonnull %i.e, i32 noundef 0) #11
  %i.gb = load ptr, ptr %i.e, align 8, !tbaa !84  ; 4 uses
  %i.gc = load i64, ptr %i.gb, align 8
  %20 = trunc i64 %i.gc to i32
  %21 = lshr i32 %20, 4
  %22 = and i32 %21, 15
  switch i32 %22, label %bb.bx [
    i32 2, label %bb.bu
    i32 6, label %bb.bv
    i32 11, label %bb.bw
  ]

bb.bu:                                            ; preds = %bb.bt
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !47 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !58
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !58
  %i.gj = add i64 %i.gi, %i.gg
  br label %setTypeSize.exit154

bb.bv:                                            ; preds = %bb.bt
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !47
  %i.gm = call i32 @intsetLen(ptr noundef %i.gl) #11
  %i.gn = zext i32 %i.gm to i64
  br label %setTypeSize.exit154

bb.bw:                                            ; preds = %bb.bt
  %i.go = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !47
  %i.gq = call i64 @lpLength(ptr noundef %i.gp) #11
  br label %setTypeSize.exit154

bb.bx:                                            ; preds = %bb.bt
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 476, ptr noundef nonnull @.str.3) #11
  call void @abort() #12
  unreachable

setTypeSize.exit154:                              ; preds = %bb.bu, %bb.bv, %bb.bw
  %.0.i153 = phi i64 [ %i.gj, %bb.bu ], [ %i.gn, %bb.bv ], [ %i.gq, %bb.bw ]
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %.0.i153) #11
  %i.gr = load ptr, ptr %i.fz, align 8, !tbaa !70
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 72
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !88
  call void @notifyKeyspaceEvent(i32 noundef 32, ptr noundef nonnull @.str.16, ptr noundef nonnull %3, i32 noundef %i.gt) #11
  %i.gu = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !91
  %i.gv = add nsw i64 %i.gu, 1
  store i64 %i.gv, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !91
  br label %bb.cc

bb.by:                                            ; preds = %setTypeSize.exit
  %i.gw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !92
  call void @addReply(ptr noundef %0, ptr noundef %i.gw) #11
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !70
  %i.gz = call i32 @dbDelete(ptr noundef %i.gy, ptr noundef nonnull %3) #11
  %.not143 = icmp eq i32 %i.gz, 0
  br i1 %.not143, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ha = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !91
  %i.hb = add nsw i64 %i.ha, 1
  store i64 %i.hb, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !91
  %i.hc = load ptr, ptr %i.gx, align 8, !tbaa !70
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.hc, ptr noundef nonnull %3, ptr noundef null, i32 noundef 1) #11
  %i.hd = load ptr, ptr %i.gx, align 8, !tbaa !70
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 72
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !88
  call void @notifyKeyspaceEvent(i32 noundef 4, ptr noundef nonnull @.str.11, ptr noundef nonnull %3, i32 noundef %i.hf) #11
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  call void @decrRefCount(ptr noundef nonnull %i.ba) #11
  br label %bb.cc

bb.cb:                                            ; preds = %bb.av
  call void @setDeferredSetLen(ptr noundef %0, ptr noundef %.0, i64 noundef %.2115) #11
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca, %setTypeSize.exit154, %bb.au
  call void @zfree(ptr noundef nonnull %i.j) #11
  br label %bb.cd

bb.cd:                                            ; preds = %bb.g, %bb.l, %bb.o, %bb.n, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  ret void
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

declare ptr @addReplyDeferredLen(ptr noundef) local_unnamed_addr #1

declare void @setKey(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @setDeferredSetLen(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @sinterCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !85
  %i.f = add nsw i32 %i.e, -1
  %i.g = sext i32 %i.f to i64
  tail call void @sinterGenericCommand(ptr noundef %0, ptr noundef nonnull %i.c, i64 noundef %i.g, ptr noundef null, i32 noundef 0, i64 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @smembersCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.setTypeIterator, align 8    ; 10 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i64 0, ptr %i.b, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i64 0, ptr %i.c, align 8, !tbaa !58
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !84
  %i.j = tail call ptr @lookupKeyRead(ptr noundef %i.e, ptr noundef %i.i) #11 ; 12 uses
  %i.k = tail call i32 @checkType(ptr noundef %0, ptr noundef %i.j, i32 noundef 2) #11
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %.not23 = icmp eq ptr %i.j, null
  br i1 %.not23, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !97
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @shared, i64 160), i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !84
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.p) #11
  br label %bb.v

bb.d:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.j, align 8
  %2 = trunc i64 %i.q to i32
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 15
  switch i32 %4, label %bb.h [
    i32 2, label %bb.e
    i32 6, label %bb.f
    i32 11, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !47   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !58
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !58
  %i.x = add i64 %i.w, %i.u
  br label %setTypeSize.exit

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !47
  %i.aa = tail call i32 @intsetLen(ptr noundef %i.z) #11
  %i.ab = zext i32 %i.aa to i64
  br label %setTypeSize.exit

bb.g:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !47
  %i.ae = tail call i64 @lpLength(ptr noundef %i.ad) #11
  br label %setTypeSize.exit

bb.h:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 476, ptr noundef nonnull @.str.3) #11
  tail call void @abort() #12
  unreachable

setTypeSize.exit:                                 ; preds = %bb.e, %bb.f, %bb.g
  %.0.i = phi i64 [ %i.x, %bb.e ], [ %i.ab, %bb.f ], [ %i.ae, %bb.g ] ; 3 uses
  tail call void @addReplySetLen(ptr noundef nonnull %0, i64 noundef %.0.i) #11
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !86
  %.not24 = icmp eq i32 %i.af, 0
  br i1 %.not24, label %bb.j, label %bb.i

bb.i:                                             ; preds = %setTypeSize.exit
  %i.ag = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.j) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %setTypeSize.exit
  %.020 = phi i64 [ %i.ag, %bb.i ], [ 0, %setTypeSize.exit ]
  store ptr %i.j, ptr %1, align 8, !tbaa !50
  %i.ah = load i64, ptr %i.j, align 8
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = lshr i32 %i.ai, 4
  %i.ak = and i32 %i.aj, 15                       ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !55
  switch i32 %i.ak, label %bb.n [
    i32 2, label %bb.k
    i32 6, label %bb.l
    i32 11, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !47
  call void @dictInitIterator(ptr noundef nonnull %i.am, ptr noundef %i.ao) #11
  br label %setTypeInitIterator.exit

bb.l:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !56
  br label %setTypeInitIterator.exit

bb.m:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr null, ptr %i.aq, align 8, !tbaa !57
  br label %setTypeInitIterator.exit

bb.n:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 327, ptr noundef nonnull @.str.3) #11
  tail call void @abort() #12
  unreachable

setTypeInitIterator.exit:                         ; preds = %bb.k, %bb.l, %bb.m
  %i.ar = call i32 @setTypeNext(ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %.not2528 = icmp eq i32 %i.ar, -1
  br i1 %.not2528, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %setTypeInitIterator.exit, %bb.q
  %.029 = phi i64 [ %i.av, %bb.q ], [ %.0.i, %setTypeInitIterator.exit ]
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  %.not27 = icmp eq ptr %i.as, null
  br i1 %.not27, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.at = load i64, ptr %i.b, align 8, !tbaa !58
  call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %i.as, i64 noundef %i.at) #11
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph
  %i.au = load i64, ptr %i.c, align 8, !tbaa !58
  call void @addReplyBulkLongLong(ptr noundef nonnull %0, i64 noundef %i.au) #11
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.av = add i64 %.029, -1                       ; 2 uses
  %i.aw = call i32 @setTypeNext(ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %.not25 = icmp eq i32 %i.aw, -1
  br i1 %.not25, label %._crit_edge, label %.lr.ph, !llvm.loop !145

._crit_edge:                                      ; preds = %bb.q, %setTypeInitIterator.exit
  %.0.lcssa = phi i64 [ %.0.i, %setTypeInitIterator.exit ], [ %i.av, %bb.q ]
  %i.ax = load i32, ptr %i.al, align 8, !tbaa !55
  %i.ay = icmp eq i32 %i.ax, 2
  br i1 %i.ay, label %bb.r, label %setTypeResetIterator.exit

bb.r:                                             ; preds = %._crit_edge
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @dictResetIterator(ptr noundef nonnull %i.az) #11
  br label %setTypeResetIterator.exit

setTypeResetIterator.exit:                        ; preds = %._crit_edge, %bb.r
  %i.ba = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !86
  %.not26 = icmp eq i32 %i.ba, 0
  br i1 %.not26, label %bb.t, label %bb.s

bb.s:                                             ; preds = %setTypeResetIterator.exit
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.bc = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !84
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !47
  %i.bh = call i32 @getKeySlot(ptr noundef %i.bg) #11
  %i.bi = call i64 @kvobjAllocSize(ptr noundef nonnull %i.j) #11
  call void @updateSlotAllocSize(ptr noundef %i.bb, i32 noundef %i.bh, ptr noundef nonnull %i.j, i64 noundef %.020, i64 noundef %i.bi) #11
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %setTypeResetIterator.exit
  %i.bj = icmp eq i64 %.0.lcssa, 0
  br i1 %i.bj, label %bb.v, label %bb.u, !prof !49

bb.u:                                             ; preds = %bb.t
  call void @_serverAssert(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 1589) #11
  call void @abort() #12
  unreachable

bb.v:                                             ; preds = %bb.t, %bb.a, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sinterCardCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 0, ptr %i.a, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i64 0, ptr %i.b, align 8, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !84
  %i.g = call i32 @getRangeLongFromObjectOrReply(ptr noundef %0, ptr noundef %i.f, i64 noundef 1, i64 noundef 9223372036854775807, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.18) #11
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !85
  %i.k = add nsw i32 %i.j, -2
  %i.l = sext i32 %i.k to i64
  %i.m = icmp sgt i64 %i.h, %i.l
  br i1 %i.m, label %bb.c, label %.preheader

bb.c:                                             ; preds = %bb.b
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.19) #11
  br label %.loopexit

.preheader:                                       ; preds = %bb.b, %bb.e
  %.0.in = phi i64 [ %.0, %bb.e ], [ %i.h, %bb.b ]
  %.0 = add nsw i64 %.0.in, 2                     ; 4 uses
  %i.n = load i32, ptr %i.i, align 8, !tbaa !85   ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %.0, %i.o
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !83   ; 2 uses
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.preheader
  %i.r = getelementptr [8 x i8], ptr %i.q, i64 %.0 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !84
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !47
  %i.v = trunc i64 %.0 to i32
  %.neg = add i32 %i.v, 1
  %i.w = call i32 @strcasecmp(ptr noundef %i.u, ptr noundef nonnull @.str.20) #14
  %i.x = icmp eq i32 %i.w, 0
  %i.y = icmp ne i32 %i.n, %.neg
  %or.cond = and i1 %i.y, %i.x
end_hunk_5
