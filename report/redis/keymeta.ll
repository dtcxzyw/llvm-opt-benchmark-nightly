inline.NumInlined: 16
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.KeyMetaClass = type { [5 x i8], %struct.ModuleEntityId, %struct.KeyMetaClassConf, i32, i32 }
%struct.ModuleEntityId = type { ptr, [10 x i8], i64 }
%struct.KeyMetaClassConf = type { i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.redisServer = type { i32, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, ptr, i32, i32, [41 x i8], i32, i64, i32, i32, i32, ptr, ptr, i32, i32, i64, i32, ptr, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, [16 x ptr], i32, ptr, ptr, i32, [8 x %struct.connListener], i32, %struct.connListener, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, [4 x %struct.pause_event], [256 x i8], ptr, i64, i32, i32, [128 x i32], i32, i32, %struct.pendingCommandPool, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, i64, i64, i64, i64, ptr, i64, i64, i64, %struct.malloc_stats, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, [4 x i64], i64, i64, i64, i64, [128 x i64], [128 x i64], i64, i64, i64, i64, i64, [7 x %struct.anon.0], i64, i64, i64, i64, i64, i64, [4 x %struct.durationStats], ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, ptr, [3 x %struct.clientBufferLimitsConfig], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i64, i64, i64, i64, i64, i32, i32, ptr, i32, i32, i64, i64, i64, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, ptr, i32, i64, i64, i64, i64, i32, ptr, i32, ptr, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, [2 x i32], i32, %struct.redisOpArray, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [41 x i8], [41 x i8], i64, i64, i64, i64, i32, i32, ptr, i64, i64, %struct.replDataBuf, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, i64, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i64, i64, i64, i64, i64, ptr, ptr, i32, ptr, i64, i32, i32, i32, i64, i64, i32, i32, i32, i32, ptr, i32, i32, [41 x i8], i64, i32, ptr, i32, i64, i64, i64, i64, i32, i64, i64, i32, i32, i32, i32, i32, i64, [3 x i32], i32, i32, i32, [11 x i32], ptr, ptr, i32, i64, ptr, ptr, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i32, i64, i64, i32, i64, i64, i64, i64, ptr, ptr, i32, ptr, i32, i32, i32, i32, i64, i64, ptr, i64, i64, i64, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, i64, ptr, i32, %struct.aclInfo, i32, i64, i32, i32, i32, %struct.redisTLSContextConfig, ptr, ptr, ptr, ptr, ptr, i64, i32, ptr, i32, i32, i32, i64, i32, i32, ptr, i32, i32 }
%struct.connListener = type { [16 x i32], i32, ptr, i32, i32, ptr, ptr }
%struct.pause_event = type { i32, i64 }
%struct.pendingCommandPool = type { ptr, i32, i32, i32 }
%struct.malloc_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.0 = type { i64, i64, [16 x i64], i32 }
%struct.durationStats = type { i64, i64, i64 }
%struct.clientBufferLimitsConfig = type { i64, i64, i64 }
%struct.redisOpArray = type { ptr, i32, i32 }
%struct.replDataBuf = type { ptr, i64, i64, i64, i64, i64 }
%struct.aclInfo = type { i64, i64, i64, i64, i64 }
%struct.redisTLSContextConfig = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.RedisModuleKeyOptCtx = type { ptr, ptr, i32, i32 }
%struct.RedisModuleIO = type { i64, ptr, ptr, i32, ptr, ptr, i32, ptr }
%struct._rio = type { ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, %union.anon }
%union.anon = type { %struct.anon.2 }
%struct.anon.2 = type { ptr, i64, ptr, i64, i64 }

@keyMetaClass = internal global [8 x %struct.KeyMetaClass] zeroinitializer, align 16
@.str = private unnamed_addr constant [51 x i8] c"keyMetaClass[keyMetaId].state == CLASS_STATE_INUSE\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"keymeta.c\00", align 1
@rdbLoadSkipMetaIfAllowed.countDownNotice = internal unnamed_addr global i32 0, align 4
@rdbLoadSkipMetaIfAllowed.lastRdb = internal unnamed_addr global ptr null, align 8
@server = external local_unnamed_addr global %struct.redisServer, align 8
@.str.2 = private unnamed_addr constant [70 x i8] c"Skipping metadata for class '%s' (not registered or missing rdb_load)\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Corrupted metadata value for class '%s'\00", align 1
@.str.4 = private unnamed_addr constant [79 x i8] c"RDB load key metadata failed: Class '%s' not registered or missing rdb_load().\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Too many metadata classes: %d (max %d)\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"Missing EOF after key metadata '%s' (got 0x%llx)\00", align 1
@.str.7 = private unnamed_addr constant [74 x i8] c"RDB load failed: rdb_load callback for metadata class '%s' returned error\00", align 1
@.str.8 = private unnamed_addr constant [108 x i8] c"RDB load failed: rdb_load callback for metadata class '%s' returned invalid value %d (expected -1, 0, or 1)\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"pClass->state == CLASS_STATE_INUSE\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"slot == -1\00", align 1
@.str.11 = private unnamed_addr constant [64 x i8] c"id >= KEY_META_ID_MODULE_FIRST && id <= KEY_META_ID_MODULE_LAST\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"keyLink != NULL\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"exLink != NULL\00", align 1
@.str.14 = private unnamed_addr constant [70 x i8] c"kmcId >= KEY_META_ID_MODULE_FIRST && kmcId <= KEY_META_ID_MODULE_LAST\00", align 1
@.str.15 = private unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_-\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"META-\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @keyMetaClassDecode(i32 noundef %0, ptr noundef writeonly captures(none) initializes((0, 5)) %1, ptr noundef writeonly captures(none) initializes((0, 4)) %2, ptr noundef writeonly captures(none) initializes((0, 1)) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = trunc i32 %0 to i8
  %i.b = and i8 %i.a, 7
  store i8 %i.b, ptr %3, align 1, !tbaa !13
  %i.c = lshr i32 %0, 3
  %i.d = and i32 %i.c, 31
  store i32 %i.d, ptr %2, align 4, !tbaa !9
  %i.e = lshr i32 %0, 8
  %i.f = and i32 %i.e, 63
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr @.str.15, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.i, ptr %i.j, align 1, !tbaa !13
  %i.k = lshr i32 %0, 14
  %i.l = and i32 %i.k, 63
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr @.str.15, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.o, ptr %i.p, align 1, !tbaa !13
  %i.q = lshr i32 %0, 20
  %i.r = and i32 %i.q, 63
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr @.str.15, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.u, ptr %i.v, align 1, !tbaa !13
  %i.w = lshr i32 %0, 26
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @.str.15, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !13
  store i8 %i.z, ptr %1, align 1, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 0, ptr %i.aa, align 1, !tbaa !13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @keyMetaInit() local_unnamed_addr #2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1216) @keyMetaClass, i8 0, i64 1216, i1 false)
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 144), align 16, !tbaa !14
  store i64 -1, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 48), align 16, !tbaa !21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local void @keyMetaOnCopy(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef captures(none) %5) local_unnamed_addr #4 {
bb.a:
  %6 = alloca %struct.RedisModuleKeyOptCtx, align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %.shift = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %7 = load i32, ptr %.shift, align 4             ; 3 uses
  %8 = and i32 %7, 1
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %.not28 = icmp eq i64 %i.c, -1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !23
  %i.f = or i16 %i.e, 1
  store i16 %i.f, ptr %i.d, align 2, !tbaa !23
  %i.g = load i16, ptr %5, align 8, !tbaa !26
  %i.h = add i16 %i.g, 1                          ; 2 uses
  store i16 %i.h, ptr %5, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = zext i16 %i.h to i64
  %i.k = sub nsw i64 8, %i.j
  %i.l = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.k
  store i64 %i.c, ptr %i.l, align 8, !tbaa !22
  %.pre.pre = load i32, ptr %.shift, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre = phi i32 [ %.pre.pre, %bb.c ], [ %7, %bb.b ]
  %i.m = getelementptr inbounds i8, ptr %0, i64 -16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %9 = phi i32 [ %.pre, %bb.d ], [ %7, %bb.a ]
  %.023 = phi ptr [ %i.m, %bb.d ], [ %i.b, %bb.a ]
  %10 = lshr i32 %9, 1
  %i.n = and i32 %10, 127                         ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.q, label %bb.f, !prof !27

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store ptr %1, ptr %6, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %2, ptr %i.p, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %3, ptr %i.q, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 %4, ptr %i.r, align 4, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.g

bb.g:                                             ; preds = %bb.o, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ 1, %bb.f ] ; 3 uses
  %.1 = phi ptr [ %.2, %bb.o ], [ %.023, %bb.f ]  ; 3 uses
  %.022 = phi i32 [ %i.ar, %bb.o ], [ %i.n, %bb.f ] ; 2 uses
  %i.u = and i32 %.022, 1
  %.not29 = icmp eq i32 %i.u, 0
  br i1 %.not29, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw [152 x i8], ptr @keyMetaClass, i64 %indvars.iv ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %i.x = load i32, ptr %i.w, align 8, !tbaa !14
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.j, label %bb.i, !prof !27

bb.i:                                             ; preds = %bb.h
  call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 194) #16
  call void @abort() #17
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.z = getelementptr inbounds i8, ptr %.1, i64 -8
  %i.aa = load i64, ptr %.1, align 8, !tbaa !22   ; 2 uses
  store i64 %i.aa, ptr %i.a, align 8, !tbaa !22
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !34
  %.not30 = icmp eq i64 %i.aa, %i.ac
  br i1 %.not30, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !35 ; 2 uses
  %.not31 = icmp eq ptr %i.ae, null
  br i1 %.not31, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = call i32 %i.ae(ptr noundef nonnull %6, ptr noundef nonnull %i.a) #16
  %.not32 = icmp eq i32 %i.af, 0
  br i1 %.not32, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !22
  %i.ah = trunc nuw nsw i64 %indvars.iv to i32
  %i.ai = shl nuw i32 1, %i.ah
  %i.aj = load i16, ptr %i.s, align 2, !tbaa !23
  %i.ak = trunc i32 %i.ai to i16
  %i.al = or i16 %i.aj, %i.ak
  store i16 %i.al, ptr %i.s, align 2, !tbaa !23
  %i.am = load i16, ptr %5, align 8, !tbaa !26
  %i.an = add i16 %i.am, 1                        ; 2 uses
  store i16 %i.an, ptr %5, align 8, !tbaa !26
  %i.ao = zext i16 %i.an to i64
  %i.ap = sub nsw i64 8, %i.ao
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ap
  store i64 %i.ag, ptr %i.aq, align 8, !tbaa !22
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.g
  %.2 = phi ptr [ %i.z, %bb.n ], [ %.1, %bb.g ]
  %i.ar = lshr i32 %.022, 1                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not33 = icmp eq i32 %i.ar, 0
  br i1 %.not33, label %bb.p, label %bb.g, !llvm.loop !36

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.q

bb.q:                                             ; preds = %bb.e, %bb.p
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @keyMetaSpecAdd(ptr noundef captures(none) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = shl nuw i32 1, %1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !23
  %i.d = trunc i32 %i.a to i16
  %i.e = or i16 %i.c, %i.d
  store i16 %i.e, ptr %i.b, align 2, !tbaa !23
  %i.f = load i16, ptr %0, align 8, !tbaa !26
  %i.g = add i16 %i.f, 1                          ; 2 uses
  store i16 %i.g, ptr %0, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = zext i16 %i.g to i64
  %i.j = sub nsw i64 8, %i.i
  %i.k = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.j
  store i64 %2, ptr %i.k, align 8, !tbaa !22
  ret void
}

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @keyMetaOnRename(ptr noundef readonly captures(address_is_null) %0, ptr noundef captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef captures(none) %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.RedisModuleKeyOptCtx, align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds i8, ptr %1, i64 -8 ; 2 uses
  %.shift = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %6 = load i32, ptr %.shift, align 4             ; 3 uses
  %7 = and i32 %6, 1
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %.not35 = icmp eq i64 %i.c, -1
  br i1 %.not35, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !23
  %i.f = or i16 %i.e, 1
  store i16 %i.f, ptr %i.d, align 2, !tbaa !23
  %i.g = load i16, ptr %4, align 8, !tbaa !26
  %i.h = add i16 %i.g, 1                          ; 2 uses
  store i16 %i.h, ptr %4, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = zext i16 %i.h to i64
  %i.k = sub nsw i64 8, %i.j
  %i.l = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.k
  store i64 %i.c, ptr %i.l, align 8, !tbaa !22
  %.pre.pre = load i32, ptr %.shift, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre = phi i32 [ %.pre.pre, %bb.c ], [ %6, %bb.b ]
  %i.m = getelementptr inbounds i8, ptr %1, i64 -16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %8 = phi i32 [ %.pre, %bb.d ], [ %6, %bb.a ]
  %.028 = phi ptr [ %i.m, %bb.d ], [ %i.b, %bb.a ]
  %9 = lshr i32 %8, 1
  %i.n = and i32 %9, 127                          ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.r, label %bb.f, !prof !27

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr %2, ptr %5, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.p, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.not36 = icmp eq ptr %0, null
  br i1 %.not36, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i32, ptr %i.r, align 8, !tbaa !38
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.g
  %.sink = phi i32 [ %i.s, %bb.g ], [ -1, %bb.f ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 %.sink, ptr %i.q, align 8, !tbaa !32
  store i32 %.sink, ptr %i.t, align 4, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.p, %.thread
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.p ], [ 1, %.thread ] ; 3 uses
  %.1 = phi ptr [ %.2, %bb.p ], [ %.028, %.thread ] ; 4 uses
  %.027 = phi i32 [ %i.au, %bb.p ], [ %i.n, %.thread ] ; 2 uses
  %i.w = and i32 %.027, 1
  %.not37 = icmp eq i32 %i.w, 0
  br i1 %.not37, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw [152 x i8], ptr @keyMetaClass, i64 %indvars.iv ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 144
  %i.z = load i32, ptr %i.y, align 8, !tbaa !14
  %i.aa = icmp eq i32 %i.z, 1
  br i1 %i.aa, label %bb.k, label %bb.j, !prof !27

bb.j:                                             ; preds = %bb.i
  call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 227) #16
  call void @abort() #17
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.ab = load i64, ptr %.1, align 8, !tbaa !22   ; 3 uses
  store i64 %i.ab, ptr %i.a, align 8, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !34
  %.not38 = icmp eq i64 %i.ab, %i.ad
  br i1 %.not38, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !44 ; 2 uses
  %.not39 = icmp eq ptr %i.af, null
  br i1 %.not39, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = call i32 %i.af(ptr noundef nonnull %5, ptr noundef nonnull %i.a) #16
  %.not40 = icmp eq i32 %i.ag, 0
  br i1 %.not40, label %bb.o, label %._crit_edge

._crit_edge:                                      ; preds = %bb.m
  %.pre43 = load i64, ptr %i.a, align 8, !tbaa !22
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.l
  %i.ah = phi i64 [ %.pre43, %._crit_edge ], [ %i.ab, %bb.l ]
  %i.ai = trunc nuw nsw i64 %indvars.iv to i32
  %i.aj = shl nuw i32 1, %i.ai
  %i.ak = load i16, ptr %i.u, align 2, !tbaa !23
  %i.al = trunc i32 %i.aj to i16
  %i.am = or i16 %i.ak, %i.al
  store i16 %i.am, ptr %i.u, align 2, !tbaa !23
  %i.an = load i16, ptr %4, align 8, !tbaa !26
  %i.ao = add i16 %i.an, 1                        ; 2 uses
  store i16 %i.ao, ptr %4, align 8, !tbaa !26
  %i.ap = zext i16 %i.ao to i64
  %i.aq = sub nsw i64 8, %i.ap
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.aq
  store i64 %i.ah, ptr %i.ar, align 8, !tbaa !22
  %i.as = load i64, ptr %i.ac, align 8, !tbaa !34
  store i64 %i.as, ptr %.1, align 8, !tbaa !22
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k
  %i.at = getelementptr inbounds i8, ptr %.1, i64 -8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.h
  %.2 = phi ptr [ %i.at, %bb.o ], [ %.1, %bb.h ]
  %i.au = lshr i32 %.027, 1                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not41 = icmp eq i32 %i.au, 0
  br i1 %.not41, label %bb.q, label %bb.h, !llvm.loop !45

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.r

bb.r:                                             ; preds = %bb.e, %bb.q
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @keyMetaOnMove(ptr noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef captures(none) %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.RedisModuleKeyOptCtx, align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %.shift = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %6 = load i32, ptr %.shift, align 4             ; 3 uses
  %7 = and i32 %6, 1
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %.not30 = icmp eq i64 %i.c, -1
  br i1 %.not30, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !23
  %i.f = or i16 %i.e, 1
  store i16 %i.f, ptr %i.d, align 2, !tbaa !23
  %i.g = load i16, ptr %4, align 8, !tbaa !26
  %i.h = add i16 %i.g, 1                          ; 2 uses
  store i16 %i.h, ptr %4, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = zext i16 %i.h to i64
  %i.k = sub nsw i64 8, %i.j
  %i.l = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.k
  store i64 %i.c, ptr %i.l, align 8, !tbaa !22
  %.pre.pre = load i32, ptr %.shift, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre = phi i32 [ %.pre.pre, %bb.c ], [ %6, %bb.b ]
  %i.m = getelementptr inbounds i8, ptr %0, i64 -16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %8 = phi i32 [ %.pre, %bb.d ], [ %6, %bb.a ]
  %.025 = phi ptr [ %i.m, %bb.d ], [ %i.b, %bb.a ]
  %9 = lshr i32 %8, 1
  %i.n = and i32 %9, 127                          ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.q, label %bb.f, !prof !27

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr %1, ptr %5, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.p, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %2, ptr %i.q, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 %3, ptr %i.r, align 4, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.g

bb.g:                                             ; preds = %bb.o, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ 1, %bb.f ] ; 3 uses
  %.1 = phi ptr [ %.2, %bb.o ], [ %.025, %bb.f ]  ; 4 uses
  %.024 = phi i32 [ %i.as, %bb.o ], [ %i.n, %bb.f ] ; 2 uses
  %i.u = and i32 %.024, 1
  %.not31 = icmp eq i32 %i.u, 0
  br i1 %.not31, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw [152 x i8], ptr @keyMetaClass, i64 %indvars.iv ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %i.x = load i32, ptr %i.w, align 8, !tbaa !14
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.j, label %bb.i, !prof !27

bb.i:                                             ; preds = %bb.h
  call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 264) #16
  call void @abort() #17
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.z = load i64, ptr %.1, align 8, !tbaa !22    ; 3 uses
  store i64 %i.z, ptr %i.a, align 8, !tbaa !22
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 48 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !34
  %.not32 = icmp eq i64 %i.z, %i.ab
  br i1 %.not32, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !46 ; 2 uses
  %.not33 = icmp eq ptr %i.ad, null
  br i1 %.not33, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = call i32 %i.ad(ptr noundef nonnull %5, ptr noundef nonnull %i.a) #16
  %.not34 = icmp eq i32 %i.ae, 0
  br i1 %.not34, label %bb.n, label %._crit_edge

._crit_edge:                                      ; preds = %bb.l
  %.pre37 = load i64, ptr %i.a, align 8, !tbaa !22
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %bb.k
  %i.af = phi i64 [ %.pre37, %._crit_edge ], [ %i.z, %bb.k ]
  %i.ag = trunc nuw nsw i64 %indvars.iv to i32
  %i.ah = shl nuw i32 1, %i.ag
  %i.ai = load i16, ptr %i.s, align 2, !tbaa !23
  %i.aj = trunc i32 %i.ah to i16
  %i.ak = or i16 %i.ai, %i.aj
  store i16 %i.ak, ptr %i.s, align 2, !tbaa !23
  %i.al = load i16, ptr %4, align 8, !tbaa !26
  %i.am = add i16 %i.al, 1                        ; 2 uses
  store i16 %i.am, ptr %4, align 8, !tbaa !26
  %i.an = zext i16 %i.am to i64
  %i.ao = sub nsw i64 8, %i.an
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ao
  store i64 %i.af, ptr %i.ap, align 8, !tbaa !22
  %i.aq = load i64, ptr %i.aa, align 8, !tbaa !34
  store i64 %i.aq, ptr %.1, align 8, !tbaa !22
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.j
  %i.ar = getelementptr inbounds i8, ptr %.1, i64 -8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.g
  %.2 = phi ptr [ %i.ar, %bb.n ], [ %.1, %bb.g ]
  %i.as = lshr i32 %.024, 1                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not35 = icmp eq i32 %i.as, 0
  br i1 %.not35, label %bb.p, label %bb.g, !llvm.loop !47

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.q

bb.q:                                             ; preds = %bb.e, %bb.p
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @keyMetaOnUnlink(ptr noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %3 = alloca %struct.RedisModuleKeyOptCtx, align 8 ; 7 uses
  %.shift = getelementptr inbounds nuw i8, ptr %2, i64 4
  %4 = load i32, ptr %.shift, align 4             ; 2 uses
  %5 = and i32 %4, 1
  %.not = icmp eq i32 %5, 0
  %spec.select.v = select i1 %.not, i64 -8, i64 -16
  %spec.select = getelementptr inbounds i8, ptr %2, i64 %spec.select.v
  %6 = lshr i32 %4, 1
  %i.a = and i32 %6, 127                          ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr %1, ptr %3, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.c, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.not24 = icmp eq ptr %0, null
  br i1 %.not24, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load i32, ptr %i.e, align 8, !tbaa !38
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.g = phi i32 [ %i.f, %bb.c ], [ -1, %bb.b ]
  store i32 %i.g, ptr %i.d, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 -1, ptr %i.h, align 4, !tbaa !33
  br label %bb.e

bb.e:                                             ; preds = %bb.l, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ 1, %bb.d ] ; 2 uses
  %.1 = phi ptr [ %.2, %bb.l ], [ %spec.select, %bb.d ] ; 4 uses
  %.018 = phi i32 [ %i.t, %bb.l ], [ %i.a, %bb.d ] ; 2 uses
  %i.i = and i32 %.018, 1
  %.not25 = icmp eq i32 %i.i, 0
  br i1 %.not25, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw [152 x i8], ptr @keyMetaClass, i64 %indvars.iv ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  %i.l = load i32, ptr %i.k, align 8, !tbaa !14
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.h, label %bb.g, !prof !27

bb.g:                                             ; preds = %bb.f
  call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 308) #16
  call void @abort() #17
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.n = load i64, ptr %.1, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.p = load i64, ptr %i.o, align 8, !tbaa !34
  %.not26 = icmp eq i64 %i.n, %i.p
  br i1 %.not26, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !48   ; 2 uses
  %.not27 = icmp eq ptr %i.r, null
  br i1 %.not27, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void %i.r(ptr noundef nonnull %3, ptr noundef nonnull %.1) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.s = getelementptr inbounds i8, ptr %.1, i64 -8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.e
  %.2 = phi ptr [ %i.s, %bb.k ], [ %.1, %bb.e ]
  %i.t = lshr i32 %.018, 1                        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not28 = icmp eq i32 %i.t, 0
  br i1 %.not28, label %bb.m, label %bb.e, !llvm.loop !49

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @keyMetaOnFree(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %.shift = getelementptr inbounds nuw i8, ptr %0, i64 4
  %1 = load i32, ptr %.shift, align 4             ; 2 uses
  %2 = lshr i32 %1, 1
  %i.a = and i32 %2, 127                          ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %.loopexit, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  %3 = and i32 %1, 1
  %.not = icmp eq i32 %3, 0
  %spec.select.v = select i1 %.not, i64 -8, i64 -16
  %spec.select = getelementptr inbounds i8, ptr %0, i64 %spec.select.v
  %i.c = tail call ptr @kvobjGetKey(ptr noundef nonnull %0) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 1, %bb.b ] ; 2 uses
  %.017 = phi i32 [ %i.o, %bb.i ], [ %i.a, %bb.b ] ; 2 uses
  %.1 = phi ptr [ %.2, %bb.i ], [ %spec.select, %bb.b ] ; 3 uses
  %i.d = and i32 %.017, 1
  %.not23 = icmp eq i32 %i.d, 0
  br i1 %.not23, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw [152 x i8], ptr @keyMetaClass, i64 %indvars.iv ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.g = load i32, ptr %i.f, align 8, !tbaa !14
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.e, !prof !27

bb.e:                                             ; preds = %bb.d
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 347) #16
  tail call void @abort() #17
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds i8, ptr %.1, i64 -8 ; 3 uses
  %i.j = load i64, ptr %.1, align 8, !tbaa !22    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !34
  %.not24 = icmp eq i64 %i.j, %i.l
  br i1 %.not24, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50   ; 2 uses
  %.not25 = icmp eq ptr %i.n, null
  br i1 %.not25, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void %i.n(ptr noundef %i.c, i64 noundef %i.j) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h, %bb.c
  %.2 = phi ptr [ %.1, %bb.c ], [ %i.i, %bb.h ], [ %i.i, %bb.g ], [ %i.i, %bb.f ]
  %i.o = lshr i32 %.017, 1                        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not26 = icmp eq i32 %i.o, 0
  br i1 %.not26, label %.loopexit, label %bb.c, !llvm.loop !51

.loopexit:                                        ; preds = %bb.i, %bb.a
  ret void
}

declare ptr @kvobjGetKey(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @keyMetaSpecCleanup(ptr noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.b = icmp eq i16 %i.a, 0
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !23   ; 2 uses
  %.not25 = icmp eq i16 %i.d, 0
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = zext i16 %i.d to i32
  %i.f = zext i16 %i.a to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = sub nsw i64 8, %i.f
  br label %bb.c

._crit_edge:                                      ; preds = %bb.g, %bb.b
  store i16 0, ptr %0, align 8, !tbaa !26
  store i16 0, ptr %i.c, align 2, !tbaa !23
  br label %bb.h

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ %i.h, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.027 = phi i32 [ %i.e, %.lr.ph ], [ %i.x, %bb.g ] ; 2 uses
  %i.i = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.027, i1 true) ; 2 uses
  %i.j = xor i32 %i.i, 31
  %i.k = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.l = load i64, ptr %i.k, align 8, !tbaa !22   ; 2 uses
  %i.m = zext nneg i32 %i.j to i64
  %i.n = getelementptr inbounds nuw [152 x i8], ptr @keyMetaClass, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  %i.p = load i32, ptr %i.o, align 8, !tbaa !14
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.s = load i64, ptr %i.r, align 8, !tbaa !34
  %.not23 = icmp eq i64 %i.l, %i.s
  br i1 %.not23, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !50   ; 2 uses
  %.not24 = icmp eq ptr %i.u, null
  br i1 %.not24, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void %i.u(ptr noundef null, i64 noundef %i.l) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.v = lshr exact i32 -2147483648, %i.i
  %i.w = xor i32 %i.v, -1
  %i.x = and i32 %.027, %i.w                      ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !52

bb.h:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @rdbLoadSkipMetaIfAllowed(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr @rdbLoadSkipMetaIfAllowed.lastRdb, align 8, !tbaa !53
  %.not = icmp eq ptr %i.a, %0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 10, ptr @rdbLoadSkipMetaIfAllowed.countDownNotice, align 4, !tbaa !9
  store ptr %0, ptr @rdbLoadSkipMetaIfAllowed.lastRdb, align 8, !tbaa !53
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = and i32 %2, 1
  %.not13 = icmp eq i32 %i.b, 0
  br i1 %.not13, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i32, ptr @rdbLoadSkipMetaIfAllowed.countDownNotice, align 4, !tbaa !9 ; 2 uses
  %i.d = add nsw i32 %i.c, -1
  store i32 %i.d, ptr @rdbLoadSkipMetaIfAllowed.countDownNotice, align 4, !tbaa !9
  %i.e = icmp slt i32 %i.c, 1
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8
  %i.g = icmp sgt i32 %i.f, 2
  %or.cond = select i1 %i.e, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.2, ptr noundef %1) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = tail call ptr @rdbLoadCheckModuleValue(ptr noundef %0, ptr noundef %1) #16 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !55
  %i.k = icmp sgt i32 %i.j, 3
  br i1 %i.k, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.3, ptr noundef %1) #16
  br label %bb.l

bb.i:                                             ; preds = %bb.f
  tail call void @decrRefCount(ptr noundef nonnull %i.h) #16
  br label %bb.l

bb.j:                                             ; preds = %bb.c
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !55
  %i.m = icmp sgt i32 %i.l, 3
  br i1 %i.m, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.4, ptr noundef %1) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.g, %bb.h
  %.1 = phi i32 [ -1, %bb.h ], [ 0, %bb.i ], [ -1, %bb.g ], [ -1, %bb.j ], [ -1, %bb.k ]
  ret i32 %.1
}

declare void @_serverLog(i32 noundef, ptr noundef, ...) local_unnamed_addr #6

declare ptr @rdbLoadCheckModuleValue(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @decrRefCount(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @rdbLoadKeyMetadata(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [5 x i8], align 1                 ; 15 uses
end_hunk_0
begin_hunk_1_@rdbLoadKeyMetadata:bb.a
  %i.ew = getelementptr inbounds nuw [152 x i8], ptr @keyMetaClass, i64 %i.ev ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 144
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !14
  %i.ez = icmp eq i32 %i.ey, 1
  br i1 %i.ez, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 48
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !34
  %.not23.i = icmp eq i64 %i.eu, %i.fb
  br i1 %.not23.i, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 88
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !50 ; 2 uses
  %.not24.i = icmp eq ptr %i.fd, null
  br i1 %.not24.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void %i.fd(ptr noundef null, i64 noundef %i.eu) #16, !inline_history !104
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af
  %i.fe = lshr exact i32 -2147483648, %i.er
  %i.ff = xor i32 %i.fe, -1
  %i.fg = and i32 %.027.i, %i.ff                  ; 2 uses
  %indvars.iv.next.i60 = add nsw i64 %indvars.iv.i59, 1
  %.not.i61 = icmp eq i32 %i.fg, 0
  br i1 %.not.i61, label %._crit_edge.i, label %bb.af, !llvm.loop !52

keyMetaSpecCleanup.exit:                          ; preds = %.thread70, %.preheader, %._crit_edge.i, %.thread, %bb.c, %bb.b
  %.0 = phi i32 [ -1, %._crit_edge.i ], [ -1, %bb.c ], [ -1, %bb.b ], [ -1, %.thread ], [ 0, %.preheader ], [ 0, %.thread70 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -1, 8) i32 @keyMetaClassLookupByName(ptr noundef readonly captures(address_is_null) %0, ptr noundef nonnull writeonly captures(none) initializes((0, 4)) %1) unnamed_addr #9 {
bb.a:
  store i32 0, ptr %1, align 4, !tbaa !9
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 296), align 8, !tbaa !14 ; 3 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %.preheader.1, label %bb.b

bb.b:                                             ; preds = %.preheader.preheader
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 152), align 1
  %i.d = load i32, ptr %0, align 1
  %i.e = icmp ne i32 %i.c, %i.d
  %i.f = zext i1 %i.e to i32
  %.not17 = icmp eq i32 %i.f, 0
  br i1 %.not17, label %bb.c, label %.preheader.1

bb.c:                                             ; preds = %bb.b
  switch i32 %i.a, label %.preheader.1 [
    i32 1, label %.thread
    i32 2, label %bb.d
  ]

bb.d:                                             ; preds = %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.c
  %.01320.lcssa21.wide = phi i32 [ 1, %bb.c ], [ %i.g, %bb.f ], [ 3, %bb.h ], [ 4, %bb.j ], [ 5, %bb.l ], [ 6, %bb.n ], [ 7, %bb.p ]
  store i32 1, ptr %1, align 4, !tbaa !9
  br label %.thread

.preheader.1:                                     ; preds = %bb.c, %bb.b, %.preheader.preheader
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 448), align 16, !tbaa !14 ; 3 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.preheader.2, label %bb.e

bb.e:                                             ; preds = %.preheader.1
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 304), align 1
  %i.j = load i32, ptr %0, align 1
  %i.k = icmp ne i32 %i.i, %i.j
  %i.l = zext i1 %i.k to i32
  %.not17.1 = icmp eq i32 %i.l, 0
  br i1 %.not17.1, label %bb.f, label %.preheader.2

bb.f:                                             ; preds = %bb.e
  switch i32 %i.g, label %.preheader.2 [
    i32 1, label %.thread
    i32 2, label %bb.d
  ]

.preheader.2:                                     ; preds = %bb.f, %bb.e, %.preheader.1
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 600), align 8, !tbaa !14 ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.preheader.3, label %bb.g

bb.g:                                             ; preds = %.preheader.2
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 456), align 1
  %i.p = load i32, ptr %0, align 1
  %i.q = icmp ne i32 %i.o, %i.p
  %i.r = zext i1 %i.q to i32
  %.not17.2 = icmp eq i32 %i.r, 0
  br i1 %.not17.2, label %bb.h, label %.preheader.3

bb.h:                                             ; preds = %bb.g
  switch i32 %i.m, label %.preheader.3 [
    i32 1, label %.thread
    i32 2, label %bb.d
  ]

.preheader.3:                                     ; preds = %bb.h, %bb.g, %.preheader.2
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 752), align 16, !tbaa !14 ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.preheader.4, label %bb.i

bb.i:                                             ; preds = %.preheader.3
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 608), align 1
  %i.v = load i32, ptr %0, align 1
  %i.w = icmp ne i32 %i.u, %i.v
  %i.x = zext i1 %i.w to i32
  %.not17.3 = icmp eq i32 %i.x, 0
  br i1 %.not17.3, label %bb.j, label %.preheader.4

bb.j:                                             ; preds = %bb.i
  switch i32 %i.s, label %.preheader.4 [
    i32 1, label %.thread
    i32 2, label %bb.d
  ]

.preheader.4:                                     ; preds = %bb.j, %bb.i, %.preheader.3
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 904), align 8, !tbaa !14 ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.preheader.5, label %bb.k

bb.k:                                             ; preds = %.preheader.4
  %i.aa = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 760), align 1
  %i.ab = load i32, ptr %0, align 1
  %i.ac = icmp ne i32 %i.aa, %i.ab
  %i.ad = zext i1 %i.ac to i32
  %.not17.4 = icmp eq i32 %i.ad, 0
  br i1 %.not17.4, label %bb.l, label %.preheader.5

bb.l:                                             ; preds = %bb.k
  switch i32 %i.y, label %.preheader.5 [
    i32 1, label %.thread
    i32 2, label %bb.d
  ]

.preheader.5:                                     ; preds = %bb.l, %bb.k, %.preheader.4
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 1056), align 16, !tbaa !14 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %.preheader.6, label %bb.m

bb.m:                                             ; preds = %.preheader.5
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 912), align 1
  %i.ah = load i32, ptr %0, align 1
  %i.ai = icmp ne i32 %i.ag, %i.ah
  %i.aj = zext i1 %i.ai to i32
  %.not17.5 = icmp eq i32 %i.aj, 0
  br i1 %.not17.5, label %bb.n, label %.preheader.6

bb.n:                                             ; preds = %bb.m
  switch i32 %i.ae, label %.preheader.6 [
    i32 1, label %.thread
    i32 2, label %bb.d
  ]

.preheader.6:                                     ; preds = %bb.n, %bb.m, %.preheader.5
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 1208), align 8, !tbaa !14 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.preheader.6
  %i.am = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 1064), align 1
  %i.an = load i32, ptr %0, align 1
  %i.ao = icmp ne i32 %i.am, %i.an
  %i.ap = zext i1 %i.ao to i32
  %.not17.6 = icmp eq i32 %i.ap, 0
  br i1 %.not17.6, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  switch i32 %i.ak, label %bb.q [
    i32 1, label %.thread
    i32 2, label %bb.d
  ]

bb.q:                                             ; preds = %bb.p, %bb.o, %.preheader.6
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.p, %bb.q, %bb.d, %bb.a
  %.1 = phi i32 [ -1, %bb.a ], [ %.01320.lcssa21.wide, %bb.d ], [ -1, %bb.q ], [ %i.a, %bb.c ], [ 2, %bb.f ], [ 7, %bb.p ], [ 3, %bb.h ], [ 5, %bb.l ], [ 4, %bb.j ], [ 6, %bb.n ]
  ret i32 %.1
}

declare i64 @rdbLoadLen(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @moduleFreeContext(ptr noundef) local_unnamed_addr #6

declare void @zfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @rdbSaveKeyMetadata(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %struct._rio, align 8               ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %struct.RedisModuleIO, align 8      ; 12 uses
  %.shift = getelementptr inbounds nuw i8, ptr %2, i64 4
  %6 = load i32, ptr %.shift, align 4             ; 2 uses
  %i.b = lshr i32 %6, 1
  %i.c = and i32 %i.b, 127                        ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.v, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %6, 1
  %.not = icmp eq i32 %i.e, 0
  %spec.select.v = select i1 %.not, i64 -8, i64 -16
  %spec.select = getelementptr inbounds i8, ptr %2, i64 %spec.select.v
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.f = tail call ptr @sdsempty() #16
  call void @rioInitWithBuffer(ptr noundef nonnull %4, ptr noundef %i.f) #16
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 80
  br label %bb.c

bb.c:                                             ; preds = %bb.p, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.p ], [ 1, %bb.b ] ; 2 uses
  %.043 = phi i32 [ %.7, %bb.p ], [ 0, %bb.b ]    ; 5 uses
  %.041 = phi i32 [ %i.as, %bb.p ], [ %i.c, %bb.b ] ; 2 uses
  %.138 = phi ptr [ %.340, %bb.p ], [ %spec.select, %bb.b ] ; 4 uses
  %i.p = and i32 %.041, 1
  %.not51 = icmp eq i32 %i.p, 0
  br i1 %.not51, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [152 x i8], ptr @keyMetaClass, i64 %indvars.iv ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 144
  %i.s = load i32, ptr %i.r, align 8, !tbaa !14
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %bb.f, label %bb.e, !prof !27

bb.e:                                             ; preds = %bb.d
  call void @_serverAssert(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 584) #16
  call void @abort() #17
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.u = load i64, ptr %.138, align 8, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.w = load i64, ptr %i.v, align 8, !tbaa !34
  %.not52 = icmp eq i64 %i.u, %i.w
  br i1 %.not52, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 104 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !105
  %.not53 = icmp eq ptr %i.y, null
  br i1 %.not53, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 148
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !106
  store i32 %i.aa, ptr %i.a, align 4, !tbaa !9
  %i.ab = call i64 @rdbWriteRaw(ptr noundef nonnull %4, ptr noundef nonnull %i.a, i64 noundef 4) #16
  %i.ac = icmp eq i64 %i.ab, -1
  br i1 %i.ac, label %.thread68.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.ae = call fastcc i64 @sdslen(ptr noundef %i.ad) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %4, ptr %i.h, align 8, !tbaa !92
  store ptr %i.af, ptr %i.i, align 8, !tbaa !96
  store i64 0, ptr %5, align 8, !tbaa !97
  store i32 0, ptr %i.j, align 8, !tbaa !98
  store ptr %1, ptr %i.k, align 8, !tbaa !99
  store i32 %3, ptr %i.l, align 8, !tbaa !100
  store ptr null, ptr %i.m, align 8, !tbaa !101
  store ptr null, ptr %i.n, align 8, !tbaa !102
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !105
  call void %i.ag(ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %.138) #16
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !101 ; 2 uses
  %.not54 = icmp eq ptr %i.ah, null
  br i1 %.not54, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @moduleFreeContext(ptr noundef nonnull %i.ah) #16
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !101
  call void @zfree(ptr noundef %i.ai) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aj = load i32, ptr %i.j, align 8, !tbaa !98
  %.not55 = icmp eq i32 %i.aj, 0
  br i1 %.not55, label %bb.l, label %select.unfold

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !13  ; 2 uses
  %i.al = call fastcc i64 @sdslen(ptr noundef %i.ak)
  %i.am = icmp ugt i64 %i.al, %i.ae
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.an = call i32 @rdbSaveLen(ptr noundef nonnull %4, i64 noundef 0) #16
  %i.ao = icmp eq i32 %i.an, -1
  %i.ap = add nsw i32 %.043, 1
  br i1 %i.ao, label %select.unfold, label %.thread63

bb.n:                                             ; preds = %bb.l
  %i.aq = add i64 %i.ae, -4                       ; 2 uses
  call void @sdssubstr(ptr noundef %i.ak, i64 noundef 0, i64 noundef %i.aq) #16
  store i64 %i.aq, ptr %i.o, align 8, !tbaa !13
  br label %.thread63

.thread63:                                        ; preds = %bb.m, %bb.n
  %.346.ph = phi i32 [ %.043, %bb.n ], [ %i.ap, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.o

select.unfold:                                    ; preds = %bb.m, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %.thread68.sink.split

bb.o:                                             ; preds = %bb.f, %bb.g, %.thread63
  %.5 = phi i32 [ %.346.ph, %.thread63 ], [ %.043, %bb.g ], [ %.043, %bb.f ]
  %i.ar = getelementptr inbounds i8, ptr %.138, i64 -8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.c
  %.7 = phi i32 [ %.5, %bb.o ], [ %.043, %bb.c ]  ; 3 uses
  %.340 = phi ptr [ %i.ar, %bb.o ], [ %.138, %bb.c ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.as = lshr i32 %.041, 1                       ; 2 uses
  %.not56 = icmp eq i32 %i.as, 0
  br i1 %.not56, label %bb.q, label %bb.c, !llvm.loop !107

bb.q:                                             ; preds = %bb.p
  %i.at = icmp eq i32 %.7, 0
  br i1 %i.at, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = call i32 @rdbSaveType(ptr noundef %0, i8 noundef zeroext -13) #16
  %i.av = icmp eq i32 %i.au, -1
  br i1 %i.av, label %.thread68, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aw = sext i32 %.7 to i64
  %i.ax = call i32 @rdbSaveLen(ptr noundef %0, i64 noundef %i.aw) #16
  %i.ay = icmp eq i32 %i.ax, -1
  br i1 %i.ay, label %.thread68, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.az = load ptr, ptr %i.g, align 8, !tbaa !13  ; 2 uses
  %i.ba = call fastcc i64 @sdslen(ptr noundef %i.az)
  %i.bb = call i64 @rdbWriteRaw(ptr noundef %0, ptr noundef %i.az, i64 noundef %i.ba) #16
  %i.bc = icmp eq i64 %i.bb, -1
  br i1 %i.bc, label %.thread68, label %bb.u

.thread68.sink.split:                             ; preds = %bb.h, %select.unfold
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.thread68

.thread68:                                        ; preds = %.thread68.sink.split, %bb.r, %bb.s, %bb.t
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q, %.thread68
  %.0 = phi i32 [ 0, %bb.q ], [ -1, %.thread68 ], [ 0, %bb.t ]
  %i.bd = load ptr, ptr %i.g, align 8, !tbaa !13
  call void @sdsfree(ptr noundef %i.bd) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %bb.u
  %.1 = phi i32 [ %.0, %bb.u ], [ 0, %bb.a ]
  ret i32 %.1
}

declare void @rioInitWithBuffer(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @sdsempty() local_unnamed_addr #6

declare i64 @rdbWriteRaw(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i64 @sdslen(ptr noundef readonly captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -1
  %.val = load i8, ptr %i.a, align 1, !tbaa !13   ; 2 uses
  %i.b = and i8 %.val, 7
  switch i8 %i.b, label %bb.g [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i8 %.val, 3
  %i.d = zext nneg i8 %i.c to i64
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %0, i64 -3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13
  %i.g = zext i8 %i.f to i64
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %0, i64 -5
  %i.i = load i16, ptr %i.h, align 1, !tbaa !108
  %i.j = zext i16 %i.i to i64
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %0, i64 -9
  %i.l = load i32, ptr %i.k, align 1, !tbaa !9
  %i.m = zext i32 %i.l to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds i8, ptr %0, i64 -17
  %i.o = load i64, ptr %i.n, align 1, !tbaa !22
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ %i.o, %bb.f ], [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %i.j, %bb.d ], [ %i.m, %bb.e ], [ 0, %bb.a ]
  ret i64 %.0
}

declare i32 @rdbSaveLen(ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @sdssubstr(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare void @sdsfree(ptr noundef) local_unnamed_addr #6

declare i32 @rdbSaveType(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @keyMetaOnAof(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %struct.RedisModuleIO, align 8      ; 11 uses
  %.shift = getelementptr inbounds nuw i8, ptr %2, i64 4
  %5 = load i32, ptr %.shift, align 4             ; 2 uses
  %6 = lshr i32 %5, 1
  %i.a = and i32 %6, 127                          ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %.loopexit, label %.preheader, !prof !27

.preheader:                                       ; preds = %bb.a
  %7 = and i32 %5, 1
  %.not = icmp eq i32 %7, 0
  %spec.select.v = select i1 %.not, i64 -8, i64 -16
  %spec.select = getelementptr inbounds i8, ptr %2, i64 %spec.select.v
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 56
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.j
  %indvars.iv = phi i64 [ 1, %.preheader ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %.130 = phi ptr [ %spec.select, %.preheader ], [ %.332, %bb.j ] ; 3 uses
  %.028 = phi i32 [ %i.a, %.preheader ], [ %i.y, %bb.j ] ; 2 uses
  %i.j = and i32 %.028, 1
  %.not37 = icmp eq i32 %i.j, 0
  br i1 %.not37, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw [152 x i8], ptr @keyMetaClass, i64 %indvars.iv ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %i.m = load i32, ptr %i.l, align 8, !tbaa !14
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.e, label %bb.d, !prof !27

bb.d:                                             ; preds = %bb.c
  call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 663) #16
  call void @abort() #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = load i64, ptr %.130, align 8, !tbaa !22  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.q = load i64, ptr %i.p, align 8, !tbaa !34
  %.not38 = icmp eq i64 %i.o, %i.q
  br i1 %.not38, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !109  ; 2 uses
  %.not39 = icmp eq ptr %i.s, null
  br i1 %.not39, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !92
  store ptr %i.t, ptr %i.d, align 8, !tbaa !96
  store i64 0, ptr %4, align 8, !tbaa !97
  store i32 0, ptr %i.e, align 8, !tbaa !98
  store ptr %1, ptr %i.f, align 8, !tbaa !99
  store i32 %3, ptr %i.g, align 8, !tbaa !100
  store ptr null, ptr %i.h, align 8, !tbaa !101
  store ptr null, ptr %i.i, align 8, !tbaa !102
  call void %i.s(ptr noundef nonnull %4, ptr noundef %2, i64 noundef %i.o) #16
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !101  ; 2 uses
  %.not40 = icmp eq ptr %i.u, null
  br i1 %.not40, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @moduleFreeContext(ptr noundef nonnull %i.u) #16
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !101
  call void @zfree(ptr noundef %i.v) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.w = load i32, ptr %i.e, align 8, !tbaa !98
  %.not41 = icmp eq i32 %i.w, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br i1 %.not41, label %.thread, label %.loopexit

.thread:                                          ; preds = %bb.e, %bb.f, %bb.i
  %i.x = getelementptr inbounds i8, ptr %.130, i64 -8
  br label %bb.j

bb.j:                                             ; preds = %.thread, %bb.b
  %.332 = phi ptr [ %i.x, %.thread ], [ %.130, %bb.b ]
  %i.y = lshr i32 %.028, 1                        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not42 = icmp eq i32 %i.y, 0
  br i1 %.not42, label %.loopexit, label %bb.b, !llvm.loop !110

.loopexit:                                        ; preds = %bb.i, %bb.j, %bb.a
  %.6 = phi i32 [ 1, %bb.a ], [ 0, %bb.i ], [ 1, %bb.j ]
  ret i32 %.6
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @keyMetaTransition(ptr noundef captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %.shift = getelementptr inbounds nuw i8, ptr %0, i64 4
  %2 = load i32, ptr %.shift, align 4             ; 2 uses
  %3 = lshr i32 %2, 1
  %i.a = and i32 %3, 127                          ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %.loopexit, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  %.shift29 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %4 = load i32, ptr %.shift29, align 4           ; 2 uses
  %5 = and i32 %4, 1
  %.not29 = icmp eq i32 %5, 0
  %.023.v = select i1 %.not29, i64 -8, i64 -16
  %.023 = getelementptr inbounds i8, ptr %1, i64 %.023.v
  %6 = and i32 %2, 1
  %.not = icmp eq i32 %6, 0
  %spec.select.v = select i1 %.not, i64 -8, i64 -16
  %spec.select = getelementptr inbounds i8, ptr %0, i64 %spec.select.v
  %7 = lshr i32 %4, 1
  %i.c = and i32 %7, 127
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 1, %bb.b ] ; 2 uses
  %.125 = phi ptr [ %.226, %bb.h ], [ %spec.select, %bb.b ] ; 5 uses
  %.1 = phi ptr [ %.2, %bb.h ], [ %.023, %bb.b ]  ; 4 uses
  %.022 = phi i32 [ %i.p, %bb.h ], [ %i.a, %bb.b ] ; 2 uses
  %.021 = phi i32 [ %i.q, %bb.h ], [ %i.c, %bb.b ] ; 2 uses
  %i.d = and i32 %.022, 1
  %.not31 = icmp eq i32 %i.d, 0
  %i.e = and i32 %.021, 1                         ; 2 uses
  br i1 %.not31, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not32 = icmp eq i32 %i.e, 0
  br i1 %.not32, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load i64, ptr %.125, align 8, !tbaa !22
  %i.g = getelementptr inbounds i8, ptr %.1, i64 -8
  store i64 %i.f, ptr %.1, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw [152 x i8], ptr @keyMetaClass, i64 %indvars.iv
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load i64, ptr %i.i, align 8, !tbaa !34
  %i.k = getelementptr inbounds i8, ptr %.125, i64 -8
  store i64 %i.j, ptr %.125, align 8, !tbaa !22
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds i8, ptr %.125, i64 -8
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.m = zext nneg i32 %i.e to i64
  %i.n = sub nsw i64 0, %i.m
  %i.o = getelementptr inbounds [8 x i8], ptr %.1, i64 %i.n
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.226 = phi ptr [ %i.k, %bb.e ], [ %i.l, %bb.f ], [ %.125, %bb.g ]
  %.2 = phi ptr [ %i.g, %bb.e ], [ %.1, %bb.f ], [ %i.o, %bb.g ]
  %i.p = lshr i32 %.022, 1                        ; 2 uses
  %i.q = lshr i32 %.021, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not33 = icmp eq i32 %i.p, 0
  br i1 %.not33, label %.loopexit, label %bb.c, !llvm.loop !111

.loopexit:                                        ; preds = %bb.h, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 8) i32 @keyMetaClassCreate(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr noundef readonly captures(address_is_null) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %keyMetaClassEncode.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %3, align 8, !tbaa !112
  %i.c = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #18
  %.not.i = icmp ne i64 %i.c, 4
  %or.cond.i = icmp ugt i32 %2, 31
  %or.cond42.i = or i1 %or.cond.i, %.not.i
  br i1 %or.cond42.i, label %keyMetaClassEncode.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %1, align 1                ; 6 uses
  %sext.i = shl i32 %i.d, 24
  %i.e = ashr exact i32 %sext.i, 24
  %memchr.5.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.15, i32 %i.e, i64 65) ; 2 uses
  %.not41.not.5.i = icmp eq ptr %memchr.5.i, null
  br i1 %.not41.not.5.i, label %keyMetaClassEncode.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = shl i32 %i.d, 16
  %i.g = ashr i32 %i.f, 24
  %memchr.6.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.15, i32 %i.g, i64 65) ; 2 uses
  %.not41.not.6.i = icmp eq ptr %memchr.6.i, null
  br i1 %.not41.not.6.i, label %keyMetaClassEncode.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = shl i32 %i.d, 8
  %i.i = ashr i32 %i.h, 24
  %memchr.7.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.15, i32 %i.i, i64 65) ; 2 uses
  %.not41.not.7.i = icmp eq ptr %memchr.7.i, null
  br i1 %.not41.not.7.i, label %keyMetaClassEncode.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = ashr i32 %i.d, 24
  %memchr.8.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.15, i32 %i.j, i64 65) ; 2 uses
  %.not41.not.8.i = icmp eq ptr %memchr.8.i, null
  br i1 %.not41.not.8.i, label %keyMetaClassEncode.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = ptrtoint ptr %memchr.5.i to i64
  %i.l = sub i64 %i.k, ptrtoint (ptr @.str.15 to i64) ; 2 uses
  %i.m = trunc i64 %i.l to i32
  %i.n = shl i32 %i.m, 12
  %i.o = ptrtoint ptr %memchr.6.i to i64
  %i.p = sub i64 %i.o, ptrtoint (ptr @.str.15 to i64) ; 2 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = shl i32 %i.q, 6
  %i.s = or i32 %i.r, %i.n
  %i.t = ptrtoint ptr %memchr.7.i to i64
  %i.u = sub i64 %i.t, ptrtoint (ptr @.str.15 to i64) ; 2 uses
  %i.v = trunc i64 %i.u to i32
  %i.w = or i32 %i.s, %i.v
  %i.x = ptrtoint ptr %memchr.8.i to i64
  %i.y = sub i64 %i.x, ptrtoint (ptr @.str.15 to i64) ; 2 uses
  %i.z = shl i64 %i.l, 18
  %i.aa = shl i64 %i.p, 12
  %i.ab = or i64 %i.z, %i.aa
  %i.ac = or i64 %i.ab, 3396598633594880
  %i.ad = shl i64 %i.u, 6
  %i.ae = or i64 %i.ad, %i.ac
  %i.af = or i64 %i.ae, %i.y
  %i.ag = trunc i64 %i.y to i32
  %i.ah = shl i32 %i.w, 14
  %i.ai = shl i32 %i.ag, 8
  %i.aj = or i32 %i.ah, %i.ai
  %i.ak = shl nuw nsw i32 %2, 3
  %i.al = or disjoint i32 %i.aj, %i.ak
  %i.am = trunc i64 %i.b to i32
  %i.an = and i32 %i.am, 7
  %i.ao = or disjoint i32 %i.al, %i.an
  %i.ap = shl i64 %i.af, 10
  %i.aq = zext nneg i32 %2 to i64
  %i.ar = or disjoint i64 %i.ap, %i.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.as = call fastcc i32 @keyMetaClassLookupByName(ptr noundef nonnull %1, ptr noundef %i.a) ; 2 uses
  %i.at = load i32, ptr %i.a, align 4, !tbaa !9
  %.not32 = icmp eq i32 %i.at, 0
  br i1 %.not32, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.au = icmp eq i32 %i.as, -1
  br i1 %i.au, label %.preheader.preheader, label %bb.i, !prof !27

.preheader.preheader:                             ; preds = %bb.h
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 296), align 8, !tbaa !14
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.loopexit, label %.preheader.1

bb.i:                                             ; preds = %bb.h
  tail call void @_serverAssert(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 752) #16
  tail call void @abort() #17
  unreachable

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.ax = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 448), align 16, !tbaa !14
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.loopexit, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.az = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 600), align 8, !tbaa !14
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %.loopexit, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.bb = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 752), align 16, !tbaa !14
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %.loopexit, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.bd = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 904), align 8, !tbaa !14
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %.loopexit, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.bf = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 1056), align 16, !tbaa !14
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %.loopexit, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.bh = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 1208), align 8, !tbaa !14
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %.loopexit, label %.thread

.loopexit:                                        ; preds = %.preheader.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %bb.g
  %.128 = phi i32 [ %i.as, %bb.g ], [ 1, %.preheader.preheader ], [ 2, %.preheader.1 ], [ 3, %.preheader.2 ], [ 4, %.preheader.3 ], [ 5, %.preheader.4 ], [ 6, %.preheader.5 ], [ 7, %.preheader.6 ] ; 2 uses
  %i.bj = sext i32 %.128 to i64
  %i.bk = getelementptr inbounds [152 x i8], ptr @keyMetaClass, i64 %i.bj ; 10 uses
  store i32 %i.d, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i8 0, ptr %i.bl, align 4, !tbaa !13
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.bn, ptr noundef nonnull align 1 dereferenceable(5) @.str.16, i64 5, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 21
  store i32 %i.d, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 25
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  store i64 %i.ar, ptr %i.bo, align 8, !tbaa !113
  store ptr %0, ptr %i.bm, align 8, !tbaa !114
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 144
  store i32 1, ptr %i.bp, align 8, !tbaa !14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 148
  store i32 %i.ao, ptr %i.bq, align 4, !tbaa !106
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.br, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 104, i1 false), !tbaa.struct !115
  br label %.thread

.thread:                                          ; preds = %.preheader.6, %.loopexit
  %.0 = phi i32 [ %.128, %.loopexit ], [ 0, %.preheader.6 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %keyMetaClassEncode.exit.thread

keyMetaClassEncode.exit.thread:                   ; preds = %.thread, %bb.b, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ %.0, %.thread ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @keyMetaClassRelease(i32 noundef %0) local_unnamed_addr #12 {
bb.a:
  %i.a = add i32 %0, -1
  %or.cond = icmp ult i32 %i.a, 7
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [152 x i8], ptr @keyMetaClass, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !14
  %.not = icmp eq i32 %i.e, 1
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %i.d, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @keyMetaSetMetadata(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = add i32 %2, -1
  %i.d = icmp ult i32 %i.c, 7
  br i1 %i.d, label %bb.c, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 795) #16
  tail call void @abort() #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = zext nneg i32 %2 to i64
  %i.f = getelementptr inbounds nuw [152 x i8], ptr @keyMetaClass, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.h = load i32, ptr %i.g, align 8, !tbaa !14
  %.not = icmp eq i32 %i.h, 1
  br i1 %.not, label %bb.d, label %bb.v

bb.d:                                             ; preds = %bb.c
  %.shift = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %4 = load i32, ptr %.shift, align 4
  %i.i = shl nuw nsw i32 1, %2                    ; 2 uses
  %i.j = and i32 %4, %i.i
  %.not53 = icmp eq i32 %i.j, 0
  br i1 %.not53, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @kvobjMetaRef(ptr noundef nonnull %1, i32 noundef %2) #16
  store i64 %3, ptr %i.k, align 8, !tbaa !22
  br label %bb.v

bb.f:                                             ; preds = %bb.d
  %i.l = tail call ptr @kvobjGetKey(ptr noundef nonnull %1) #16 ; 4 uses
  %i.m = tail call i32 @getKeySlot(ptr noundef %i.l) #16 ; 7 uses
  %i.n = load i64, ptr %1, align 8
  %i.o = and i64 %i.n, 15
  %i.p = icmp eq i64 %i.o, 4
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !117
  %i.s = tail call i64 @estoreRemove(ptr noundef %i.r, i32 noundef %i.m, ptr noundef nonnull %1) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.051 = phi i64 [ %i.s, %bb.g ], [ 281474976710656, %bb.f ] ; 2 uses
  %i.t = tail call i64 @kvobjGetExpire(ptr noundef nonnull %1) #16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.u = load ptr, ptr %0, align 8, !tbaa !118
  %i.v = tail call ptr @kvstoreDictFindLink(ptr noundef %i.u, i32 noundef %i.m, ptr noundef %i.l, ptr noundef null) #16 ; 2 uses
  store ptr %i.v, ptr %i.a, align 8, !tbaa !119
  %.not54 = icmp eq ptr %i.v, null
  br i1 %.not54, label %bb.i, label %bb.j, !prof !121

bb.i:                                             ; preds = %bb.h
  tail call void @_serverAssert(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 827) #16
  tail call void @abort() #17
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr null, ptr %i.b, align 8, !tbaa !119
  %.not55 = icmp eq i64 %i.t, -1                  ; 2 uses
  br i1 %.not55, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !122
  %i.y = tail call ptr @kvstoreDictFindLink(ptr noundef %i.x, i32 noundef %i.m, ptr noundef %i.l, ptr noundef null) #16 ; 2 uses
  store ptr %i.y, ptr %i.b, align 8, !tbaa !119
  %.not56 = icmp eq ptr %i.y, null
  br i1 %.not56, label %bb.l, label %bb.m, !prof !121

bb.l:                                             ; preds = %bb.k
  tail call void @_serverAssert(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 833) #16
  tail call void @abort() #17
  unreachable

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !123
  %.not57 = icmp eq i32 %i.z, 0
  br i1 %.not57, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = tail call i64 @kvobjAllocSize(ptr noundef nonnull %1) #16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0 = phi i64 [ %i.aa, %bb.n ], [ 0, %bb.m ]
  %5 = load i32, ptr %.shift, align 4
  %i.ab = and i32 %5, 255
  %i.ac = or i32 %i.ab, %i.i
  %i.ad = tail call ptr @kvobjSet(ptr noundef %i.l, ptr noundef nonnull %1, i32 noundef %i.ac) #16 ; 8 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !118
  call void @kvstoreDictSetAtLink(ptr noundef %i.ae, i32 noundef %i.m, ptr noundef %i.ad, ptr noundef nonnull %i.a, i32 noundef 0) #16
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !123
  %.not58 = icmp eq i32 %i.af, 0
  br i1 %.not58, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = call i64 @kvobjAllocSize(ptr noundef %i.ad) #16
  call void @updateSlotAllocSize(ptr noundef nonnull %0, i32 noundef %i.m, ptr noundef %i.ad, i64 noundef %.0, i64 noundef %i.ag) #16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ah = call ptr @kvobjMetaRef(ptr noundef %i.ad, i32 noundef %2) #16
  store i64 %3, ptr %i.ah, align 8, !tbaa !22
  br i1 %.not55, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = getelementptr inbounds i8, ptr %i.ad, i64 -8
  store i64 %i.t, ptr %i.ai, align 8, !tbaa !22
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !122
  call void @kvstoreDictSetAtLink(ptr noundef %i.ak, i32 noundef %i.m, ptr noundef %i.ad, ptr noundef nonnull %i.b, i32 noundef 0) #16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.not60 = icmp eq i64 %.051, 281474976710656
  br i1 %.not60, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !117
  call void @estoreAdd(ptr noundef %i.am, i32 noundef %i.m, ptr noundef %i.ad, i64 noundef %.051) #16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.v

bb.v:                                             ; preds = %bb.c, %bb.u, %bb.e
  %.050 = phi ptr [ %i.ad, %bb.u ], [ %1, %bb.e ], [ null, %bb.c ]
  ret ptr %.050
}

declare ptr @kvobjMetaRef(ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @getKeySlot(ptr noundef) local_unnamed_addr #6

declare i64 @estoreRemove(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare i64 @kvobjGetExpire(ptr noundef) local_unnamed_addr #6

declare ptr @kvstoreDictFindLink(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare i64 @kvobjAllocSize(ptr noundef) local_unnamed_addr #6

declare ptr @kvobjSet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @kvstoreDictSetAtLink(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @updateSlotAllocSize(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare void @estoreAdd(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @keyMetaGetMetadata(i32 noundef %0, ptr noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = add i32 %0, -1
  %i.b = icmp ult i32 %i.a, 7
  br i1 %i.b, label %bb.c, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 864) #16
  tail call void @abort() #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %0 to i64
  %i.d = getelementptr inbounds nuw [152 x i8], ptr @keyMetaClass, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.f = load i32, ptr %i.e, align 8, !tbaa !14
  %.not = icmp eq i32 %i.f, 1
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.shift = getelementptr inbounds nuw i8, ptr %1, i64 4
  %3 = load i32, ptr %.shift, align 4
  %i.g = shl nuw nsw i32 1, %0
  %i.h = and i32 %3, %i.g
  %.not9 = icmp eq i32 %i.h, 0
  br i1 %.not9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call ptr @kvobjMetaRef(ptr noundef nonnull %1, i32 noundef %0) #16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !22
  store i64 %i.j, ptr %2, align 8, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.e ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @keyMetaResetModuleValues(ptr noundef captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %.shift = getelementptr inbounds nuw i8, ptr %0, i64 4
  %1 = load i32, ptr %.shift, align 4             ; 2 uses
  %2 = and i32 %1, 1
  %.not = icmp eq i32 %2, 0
  %spec.select.v = select i1 %.not, i64 -8, i64 -16
  %spec.select = getelementptr inbounds i8, ptr %0, i64 %spec.select.v
  %3 = lshr i32 %1, 1
  %i.a = and i32 %3, 127
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 1, %bb.a ] ; 2 uses
  %.1 = phi ptr [ %.2, %bb.d ], [ %spec.select, %bb.a ] ; 3 uses
  %.09 = phi i32 [ %i.g, %bb.d ], [ %i.a, %bb.a ] ; 2 uses
  %i.b = and i32 %.09, 1
  %.not12 = icmp eq i32 %i.b, 0
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw [152 x i8], ptr @keyMetaClass, i64 %indvars.iv
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !34
  %i.f = getelementptr inbounds i8, ptr %.1, i64 -8
  store i64 %i.e, ptr %.1, align 8, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.2 = phi ptr [ %i.f, %bb.c ], [ %.1, %bb.b ]
  %i.g = lshr i32 %.09, 1                         ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not13 = icmp eq i32 %i.g, 0
  br i1 %.not13, label %bb.e, label %bb.b, !llvm.loop !124

bb.e:                                             ; preds = %bb.d
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree norecurse nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!11, !11, i64 0}
!14 = !{!15, !10, i64 144}
!15 = !{!"KeyMetaClass", !11, i64 0, !16, i64 8, !20, i64 40, !10, i64 144, !10, i64 148}
!16 = !{!"ModuleEntityId", !17, i64 0, !11, i64 8, !19, i64 24}
!17 = !{!"p1 _ZTS11RedisModule", !18, i64 0}
!18 = !{!"any pointer", !11, i64 0}
!19 = !{!"long", !11, i64 0}
!20 = !{!"KeyMetaClassConf", !19, i64 0, !19, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !18, i64 96}
!21 = !{!20, !19, i64 8}
!22 = !{!19, !19, i64 0}
!23 = !{!24, !25, i64 2}
!24 = !{!"KeyMetaSpec", !25, i64 0, !25, i64 2, !11, i64 8}
!25 = !{!"short", !11, i64 0}
!26 = !{!24, !25, i64 0}
!27 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!28 = !{!29, !30, i64 0}
!29 = !{!"RedisModuleKeyOptCtx", !30, i64 0, !30, i64 8, !10, i64 16, !10, i64 20}
!30 = !{!"p1 _ZTS11redisObject", !18, i64 0}
!31 = !{!29, !30, i64 8}
!32 = !{!29, !10, i64 16}
!33 = !{!29, !10, i64 20}
!34 = !{!15, !19, i64 48}
!35 = !{!15, !18, i64 56}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!39, !10, i64 72}
!39 = !{!"redisDb", !40, i64 0, !40, i64 8, !41, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !10, i64 72, !43, i64 80, !19, i64 88}
!40 = !{!"p1 _ZTS8_kvstore", !18, i64 0}
!41 = !{!"p1 _ZTS7_estore", !18, i64 0}
!42 = !{!"p1 _ZTS4dict", !18, i64 0}
!43 = !{!"long long", !11, i64 0}
!44 = !{!15, !18, i64 64}
!45 = distinct !{!45, !37}
!46 = !{!15, !18, i64 72}
!47 = distinct !{!47, !37}
!48 = !{!15, !18, i64 80}
!49 = distinct !{!49, !37}
!50 = !{!15, !18, i64 88}
!51 = distinct !{!51, !37}
!52 = distinct !{!52, !37}
!53 = !{!54, !54, i64 0}
!54 = !{!"p1 _ZTS4_rio", !18, i64 0}
!55 = !{!56, !10, i64 6416}
!56 = !{!"redisServer", !10, i64 0, !19, i64 8, !57, i64 16, !57, i64 24, !58, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !60, i64 64, !42, i64 72, !42, i64 80, !61, i64 88, !62, i64 96, !10, i64 104, !10, i64 108, !11, i64 112, !11, i64 116, !43, i64 120, !11, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !57, i64 144, !10, i64 152, !10, i64 156, !11, i64 160, !10, i64 204, !19, i64 208, !10, i64 216, !10, i64 220, !10, i64 224, !57, i64 232, !57, i64 240, !10, i64 248, !10, i64 252, !19, i64 256, !11, i64 264, !42, i64 272, !42, i64 280, !42, i64 288, !63, i64 296, !11, i64 304, !10, i64 312, !10, i64 316, !11, i64 320, !10, i64 324, !10, i64 328, !10, i64 332, !11, i64 336, !10, i64 464, !57, i64 472, !57, i64 480, !10, i64 488, !11, i64 496, !10, i64 1328, !64, i64 1336, !63, i64 1440, !63, i64 1448, !63, i64 1456, !63, i64 1464, !63, i64 1472, !63, i64 1480, !63, i64 1488, !66, i64 1496, !66, i64 1504, !18, i64 1512, !62, i64 1520, !10, i64 1528, !62, i64 1536, !10, i64 1544, !63, i64 1552, !11, i64 1560, !11, i64 1624, !42, i64 1880, !11, i64 1888, !10, i64 1896, !10, i64 1900, !11, i64 1904, !10, i64 2416, !10, i64 2420, !67, i64 2424, !10, i64 2448, !43, i64 2456, !10, i64 2464, !10, i64 2468, !10, i64 2472, !10, i64 2476, !10, i64 2480, !19, i64 2488, !19, i64 2496, !19, i64 2504, !19, i64 2512, !19, i64 2520, !19, i64 2528, !43, i64 2536, !43, i64 2544, !43, i64 2552, !43, i64 2560, !43, i64 2568, !43, i64 2576, !69, i64 2584, !43, i64 2592, !43, i64 2600, !43, i64 2608, !43, i64 2616, !43, i64 2624, !43, i64 2632, !19, i64 2640, !43, i64 2648, !43, i64 2656, !43, i64 2664, !43, i64 2672, !43, i64 2680, !43, i64 2688, !43, i64 2696, !43, i64 2704, !19, i64 2712, !19, i64 2720, !19, i64 2728, !43, i64 2736, !43, i64 2744, !43, i64 2752, !43, i64 2760, !43, i64 2768, !69, i64 2776, !43, i64 2784, !43, i64 2792, !43, i64 2800, !43, i64 2808, !43, i64 2816, !63, i64 2824, !43, i64 2832, !43, i64 2840, !19, i64 2848, !70, i64 2856, !11, i64 2944, !11, i64 2952, !11, i64 2960, !11, i64 2968, !19, i64 2976, !19, i64 2984, !19, i64 2992, !19, i64 3000, !19, i64 3008, !19, i64 3016, !19, i64 3024, !19, i64 3032, !69, i64 3040, !11, i64 3048, !19, i64 3080, !43, i64 3088, !43, i64 3096, !43, i64 3104, !11, i64 3112, !11, i64 4136, !11, i64 5160, !43, i64 5168, !43, i64 5176, !43, i64 5184, !43, i64 5192, !11, i64 5200, !43, i64 6264, !43, i64 6272, !19, i64 6280, !43, i64 6288, !43, i64 6296, !19, i64 6304, !11, i64 6312, !71, i64 6408, !10, i64 6416, !10, i64 6420, !10, i64 6424, !10, i64 6428, !10, i64 6432, !10, i64 6436, !10, i64 6440, !10, i64 6444, !10, i64 6448, !10, i64 6452, !10, i64 6456, !10, i64 6460, !10, i64 6464, !19, i64 6472, !10, i64 6480, !10, i64 6484, !10, i64 6488, !10, i64 6492, !19, i64 6496, !19, i64 6504, !10, i64 6512, !10, i64 6516, !10, i64 6520, !10, i64 6524, !10, i64 6528, !10, i64 6532, !57, i64 6536, !11, i64 6544, !10, i64 6616, !10, i64 6620, !10, i64 6624, !72, i64 6632, !10, i64 6640, !10, i64 6644, !10, i64 6648, !10, i64 6652, !10, i64 6656, !10, i64 6660, !10, i64 6664, !10, i64 6668, !10, i64 6672, !57, i64 6680, !57, i64 6688, !10, i64 6696, !10, i64 6700, !19, i64 6704, !19, i64 6712, !19, i64 6720, !19, i64 6728, !19, i64 6736, !10, i64 6744, !10, i64 6748, !57, i64 6752, !10, i64 6760, !10, i64 6764, !43, i64 6768, !43, i64 6776, !19, i64 6784, !19, i64 6792, !19, i64 6800, !10, i64 6808, !10, i64 6812, !19, i64 6816, !10, i64 6824, !10, i64 6828, !10, i64 6832, !10, i64 6836, !10, i64 6840, !19, i64 6848, !10, i64 6856, !11, i64 6860, !11, i64 6864, !18, i64 6872, !10, i64 6880, !43, i64 6888, !43, i64 6896, !43, i64 6904, !43, i64 6912, !10, i64 6920, !73, i64 6928, !10, i64 6936, !57, i64 6944, !10, i64 6952, !10, i64 6956, !10, i64 6960, !19, i64 6968, !19, i64 6976, !19, i64 6984, !19, i64 6992, !10, i64 7000, !10, i64 7004, !10, i64 7008, !10, i64 7012, !10, i64 7016, !10, i64 7020, !74, i64 7024, !10, i64 7032, !10, i64 7036, !57, i64 7040, !10, i64 7048, !10, i64 7052, !10, i64 7056, !11, i64 7060, !10, i64 7068, !75, i64 7072, !10, i64 7088, !57, i64 7096, !10, i64 7104, !57, i64 7112, !10, i64 7120, !10, i64 7124, !10, i64 7128, !10, i64 7132, !10, i64 7136, !10, i64 7140, !10, i64 7144, !11, i64 7148, !11, i64 7189, !43, i64 7232, !43, i64 7240, !11, i64 7248, !43, i64 7256, !10, i64 7264, !10, i64 7268, !77, i64 7272, !43, i64 7280, !43, i64 7288, !78, i64 7296, !19, i64 7344, !19, i64 7352, !10, i64 7360, !10, i64 7364, !10, i64 7368, !10, i64 7372, !10, i64 7376, !10, i64 7380, !10, i64 7384, !10, i64 7388, !10, i64 7392, !19, i64 7400, !63, i64 7408, !19, i64 7416, !57, i64 7424, !57, i64 7432, !57, i64 7440, !10, i64 7448, !10, i64 7452, !66, i64 7456, !66, i64 7464, !10, i64 7472, !10, i64 7476, !10, i64 7480, !10, i64 7484, !19, i64 7488, !19, i64 7496, !19, i64 7504, !19, i64 7512, !19, i64 7520, !79, i64 7528, !79, i64 7536, !10, i64 7544, !57, i64 7552, !19, i64 7560, !10, i64 7568, !10, i64 7572, !10, i64 7576, !19, i64 7584, !19, i64 7592, !10, i64 7600, !10, i64 7604, !10, i64 7608, !10, i64 7612, !57, i64 7616, !10, i64 7624, !10, i64 7628, !11, i64 7632, !43, i64 7680, !10, i64 7688, !63, i64 7696, !10, i64 7704, !43, i64 7712, !43, i64 7720, !19, i64 7728, !19, i64 7736, !10, i64 7744, !43, i64 7752, !19, i64 7760, !10, i64 7768, !10, i64 7772, !10, i64 7776, !10, i64 7780, !10, i64 7784, !43, i64 7792, !11, i64 7800, !10, i64 7812, !10, i64 7816, !10, i64 7820, !11, i64 7824, !63, i64 7872, !63, i64 7880, !10, i64 7888, !19, i64 7896, !63, i64 7904, !63, i64 7912, !10, i64 7920, !10, i64 7924, !10, i64 7928, !10, i64 7932, !19, i64 7936, !19, i64 7944, !19, i64 7952, !19, i64 7960, !19, i64 7968, !19, i64 7976, !19, i64 7984, !19, i64 7992, !19, i64 8000, !43, i64 8008, !43, i64 8016, !43, i64 8024, !10, i64 8032, !10, i64 8036, !11, i64 8040, !19, i64 8048, !11, i64 8056, !43, i64 8064, !43, i64 8072, !10, i64 8080, !19, i64 8088, !43, i64 8096, !19, i64 8104, !43, i64 8112, !40, i64 8120, !42, i64 8128, !10, i64 8136, !40, i64 8144, !10, i64 8152, !10, i64 8156, !10, i64 8160, !10, i64 8164, !43, i64 8168, !43, i64 8176, !57, i64 8184, !43, i64 8192, !43, i64 8200, !43, i64 8208, !10, i64 8216, !80, i64 8224, !10, i64 8232, !10, i64 8236, !10, i64 8240, !10, i64 8244, !10, i64 8248, !57, i64 8256, !57, i64 8264, !57, i64 8272, !10, i64 8280, !10, i64 8284, !10, i64 8288, !10, i64 8292, !10, i64 8296, !10, i64 8300, !10, i64 8304, !10, i64 8308, !43, i64 8312, !10, i64 8320, !10, i64 8324, !10, i64 8328, !43, i64 8336, !10, i64 8344, !10, i64 8348, !10, i64 8352, !10, i64 8356, !10, i64 8360, !10, i64 8364, !10, i64 8368, !10, i64 8372, !10, i64 8376, !43, i64 8384, !42, i64 8392, !57, i64 8400, !19, i64 8408, !57, i64 8416, !10, i64 8424, !81, i64 8432, !10, i64 8472, !19, i64 8480, !10, i64 8488, !10, i64 8492, !10, i64 8496, !82, i64 8504, !57, i64 8624, !57, i64 8632, !57, i64 8640, !57, i64 8648, !83, i64 8656, !43, i64 8664, !10, i64 8672, !57, i64 8680, !10, i64 8688, !10, i64 8692, !10, i64 8696, !19, i64 8704, !10, i64 8712, !10, i64 8716, !57, i64 8720, !10, i64 8728, !10, i64 8732}
!57 = !{!"p1 omnipotent char", !18, i64 0}
!58 = !{!"p2 omnipotent char", !59, i64 0}
!59 = !{!"any p2 pointer", !18, i64 0}
!60 = !{!"p1 _ZTS7redisDb", !18, i64 0}
!61 = !{!"p1 _ZTS11aeEventLoop", !18, i64 0}
!62 = !{!"p1 _ZTS3rax", !18, i64 0}
!63 = !{!"p1 _ZTS4list", !18, i64 0}
!64 = !{!"connListener", !11, i64 0, !10, i64 64, !58, i64 72, !10, i64 80, !10, i64 84, !65, i64 88, !18, i64 96}
!65 = !{!"p1 _ZTS14ConnectionType", !18, i64 0}
!66 = !{!"p1 _ZTS6client", !18, i64 0}
!67 = !{!"pendingCommandPool", !68, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!68 = !{!"p2 _ZTS14pendingCommand", !59, i64 0}
!69 = !{!"double", !11, i64 0}
!70 = !{!"malloc_stats", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !19, i64 72, !19, i64 80}
!71 = !{!"p1 _ZTS11hotkeyStats", !18, i64 0}
!72 = !{!"p1 double", !18, i64 0}
!73 = !{!"p1 _ZTS9saveparam", !18, i64 0}
!74 = !{!"p2 _ZTS10connection", !59, i64 0}
!75 = !{!"redisOpArray", !76, i64 0, !10, i64 8, !10, i64 12}
!76 = !{!"p1 _ZTS7redisOp", !18, i64 0}
!77 = !{!"p1 _ZTS11replBacklog", !18, i64 0}
!78 = !{!"replDataBuf", !63, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40}
!79 = !{!"p1 _ZTS10connection", !18, i64 0}
!80 = !{!"p1 _ZTS12clusterState", !18, i64 0}
!81 = !{!"aclInfo", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32}
!82 = !{!"redisTLSContextConfig", !57, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !57, i64 40, !10, i64 48, !57, i64 56, !57, i64 64, !57, i64 72, !57, i64 80, !57, i64 88, !57, i64 96, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116}
!83 = !{!"p1 _ZTS14sentinelConfig", !18, i64 0}
!84 = !{!85, !19, i64 48}
!85 = !{!"_rio", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !11, i64 72}
!86 = !{!85, !19, i64 64}
!87 = !{!85, !18, i64 0}
!88 = distinct !{null}
!89 = !{!85, !18, i64 32}
!90 = !{!85, !19, i64 56}
!91 = !{!15, !18, i64 96}
!92 = !{!93, !54, i64 8}
!93 = !{!"RedisModuleIO", !19, i64 0, !54, i64 8, !94, i64 16, !10, i64 24, !95, i64 32, !30, i64 40, !10, i64 48, !57, i64 56}
!94 = !{!"p1 _ZTS14ModuleEntityId", !18, i64 0}
!95 = !{!"p1 _ZTS14RedisModuleCtx", !18, i64 0}
!96 = !{!93, !94, i64 16}
!97 = !{!93, !19, i64 0}
!98 = !{!93, !10, i64 24}
!99 = !{!93, !30, i64 40}
!100 = !{!93, !10, i64 48}
!101 = !{!93, !95, i64 32}
!102 = !{!93, !57, i64 56}
!103 = distinct !{!103, !37}
!104 = !{ptr @keyMetaSpecCleanup}
!105 = !{!15, !18, i64 104}
!106 = !{!15, !10, i64 148}
!107 = distinct !{!107, !37}
!108 = !{!25, !25, i64 0}
!109 = !{!15, !18, i64 112}
!110 = distinct !{!110, !37}
!111 = distinct !{!111, !37}
!112 = !{!20, !19, i64 0}
!113 = !{!15, !19, i64 32}
!114 = !{!15, !17, i64 8}
!115 = !{i64 0, i64 8, !22, i64 8, i64 8, !22, i64 16, i64 8, !116, i64 24, i64 8, !116, i64 32, i64 8, !116, i64 40, i64 8, !116, i64 48, i64 8, !116, i64 56, i64 8, !116, i64 64, i64 8, !116, i64 72, i64 8, !116, i64 80, i64 8, !116, i64 88, i64 8, !116, i64 96, i64 8, !116}
!116 = !{!18, !18, i64 0}
!117 = !{!39, !41, i64 16}
!118 = !{!39, !40, i64 0}
!119 = !{!120, !120, i64 0}
!120 = !{!"p2 _ZTS9dictEntry", !59, i64 0}
!121 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!122 = !{!39, !40, i64 8}
!123 = !{!56, !10, i64 6644}
!124 = distinct !{!124, !37}
end_hunk_1
