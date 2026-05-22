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

@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@server = external local_unnamed_addr global %struct.redisServer, align 8
@.str.17 = private unnamed_addr constant [12 x i8] c"__keyspace@\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"__:\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"__keyevent@\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @keyspaceEventsStringToFlags(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.s, %bb.a
  %.022 = phi ptr [ %0, %bb.a ], [ %i.a, %bb.s ]  ; 2 uses
  %.0 = phi i32 [ 0, %bb.a ], [ %i.c, %bb.s ]     ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.022, i64 1
  %i.b = load i8, ptr %.022, align 1, !tbaa !13
  switch i8 %i.b, label %.loopexit.loopexit [
    i8 0, label %.loopexit
    i8 65, label %bb.s
    i8 103, label %bb.c
    i8 36, label %bb.d
    i8 108, label %bb.e
    i8 115, label %bb.f
    i8 104, label %bb.g
    i8 122, label %bb.h
    i8 120, label %bb.i
    i8 101, label %bb.j
    i8 75, label %bb.k
    i8 69, label %bb.l
    i8 116, label %bb.m
    i8 109, label %bb.n
    i8 100, label %bb.o
    i8 110, label %bb.p
    i8 111, label %bb.q
    i8 99, label %bb.r
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  br label %bb.s

bb.e:                                             ; preds = %bb.b
  br label %bb.s

bb.f:                                             ; preds = %bb.b
  br label %bb.s

bb.g:                                             ; preds = %bb.b
  br label %bb.s

bb.h:                                             ; preds = %bb.b
  br label %bb.s

bb.i:                                             ; preds = %bb.b
  br label %bb.s

bb.j:                                             ; preds = %bb.b
  br label %bb.s

bb.k:                                             ; preds = %bb.b
  br label %bb.s

bb.l:                                             ; preds = %bb.b
  br label %bb.s

bb.m:                                             ; preds = %bb.b
  br label %bb.s

bb.n:                                             ; preds = %bb.b
  br label %bb.s

bb.o:                                             ; preds = %bb.b
  br label %bb.s

bb.p:                                             ; preds = %bb.b
  br label %bb.s

bb.q:                                             ; preds = %bb.b
  br label %bb.s

bb.r:                                             ; preds = %bb.b
  br label %bb.s

bb.s:                                             ; preds = %bb.b, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sink = phi i32 [ 65536, %bb.r ], [ 32768, %bb.q ], [ 16384, %bb.p ], [ 8192, %bb.o ], [ 2048, %bb.n ], [ 1024, %bb.m ], [ 2, %bb.l ], [ 1, %bb.k ], [ 512, %bb.j ], [ 256, %bb.i ], [ 128, %bb.h ], [ 64, %bb.g ], [ 32, %bb.f ], [ 16, %bb.e ], [ 8, %bb.d ], [ 4, %bb.c ], [ 10236, %bb.b ]
  %i.c = or i32 %.0, %.sink
  br label %bb.b, !llvm.loop !14

.loopexit.loopexit:                               ; preds = %bb.b
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.loopexit.loopexit
  %.021 = phi i32 [ -1, %.loopexit.loopexit ], [ %.0, %bb.b ]
  ret i32 %.021
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @keyspaceEventsFlagsToString(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @sdsempty() #5             ; 3 uses
  %i.b = and i32 %0, 10236
  %i.c = icmp eq i32 %i.b, 10236
  br i1 %i.c, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %0, 4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @sdscatlen(ptr noundef %i.a, ptr noundef nonnull @.str.1, i64 noundef 1) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.e, %bb.c ], [ %i.a, %bb.b ]  ; 2 uses
  %i.f = and i32 %0, 8
  %.not34 = icmp eq i32 %i.f, 0
  br i1 %.not34, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call ptr @sdscatlen(ptr noundef %.0, ptr noundef nonnull @.str.2, i64 noundef 1) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1 = phi ptr [ %i.g, %bb.e ], [ %.0, %bb.d ]   ; 2 uses
  %i.h = and i32 %0, 16
  %.not35 = icmp eq i32 %i.h, 0
  br i1 %.not35, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = tail call ptr @sdscatlen(ptr noundef %.1, ptr noundef nonnull @.str.3, i64 noundef 1) #5
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2 = phi ptr [ %i.i, %bb.g ], [ %.1, %bb.f ]   ; 2 uses
  %i.j = and i32 %0, 32
  %.not36 = icmp eq i32 %i.j, 0
  br i1 %.not36, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = tail call ptr @sdscatlen(ptr noundef %.2, ptr noundef nonnull @.str.4, i64 noundef 1) #5
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.3 = phi ptr [ %i.k, %bb.i ], [ %.2, %bb.h ]   ; 2 uses
  %i.l = and i32 %0, 64
  %.not37 = icmp eq i32 %i.l, 0
  br i1 %.not37, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.m = tail call ptr @sdscatlen(ptr noundef %.3, ptr noundef nonnull @.str.5, i64 noundef 1) #5
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.4 = phi ptr [ %i.m, %bb.k ], [ %.3, %bb.j ]   ; 2 uses
  %i.n = and i32 %0, 128
  %.not38 = icmp eq i32 %i.n, 0
  br i1 %.not38, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.o = tail call ptr @sdscatlen(ptr noundef %.4, ptr noundef nonnull @.str.6, i64 noundef 1) #5
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.5 = phi ptr [ %i.o, %bb.m ], [ %.4, %bb.l ]   ; 2 uses
  %i.p = and i32 %0, 256
  %.not39 = icmp eq i32 %i.p, 0
  br i1 %.not39, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.q = tail call ptr @sdscatlen(ptr noundef %.5, ptr noundef nonnull @.str.7, i64 noundef 1) #5
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.6 = phi ptr [ %i.q, %bb.o ], [ %.5, %bb.n ]   ; 2 uses
  %i.r = and i32 %0, 512
  %.not40 = icmp eq i32 %i.r, 0
  br i1 %.not40, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.s = tail call ptr @sdscatlen(ptr noundef %.6, ptr noundef nonnull @.str.8, i64 noundef 1) #5
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.7 = phi ptr [ %i.s, %bb.q ], [ %.6, %bb.p ]   ; 2 uses
  %i.t = and i32 %0, 1024
  %.not41 = icmp eq i32 %i.t, 0
  br i1 %.not41, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.u = tail call ptr @sdscatlen(ptr noundef %.7, ptr noundef nonnull @.str.9, i64 noundef 1) #5
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.8 = phi ptr [ %i.u, %bb.s ], [ %.7, %bb.r ]   ; 2 uses
  %i.v = and i32 %0, 8192
  %.not42 = icmp eq i32 %i.v, 0
  br i1 %.not42, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.w = tail call ptr @sdscatlen(ptr noundef %.8, ptr noundef nonnull @.str.10, i64 noundef 1) #5
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.9 = phi ptr [ %i.w, %bb.u ], [ %.8, %bb.t ]   ; 2 uses
  %i.x = and i32 %0, 16384
  %.not43 = icmp eq i32 %i.x, 0
  br i1 %.not43, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.y = tail call ptr @sdscatlen(ptr noundef %.9, ptr noundef nonnull @.str.11, i64 noundef 1) #5
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.10 = phi ptr [ %i.y, %bb.w ], [ %.9, %bb.v ]  ; 2 uses
  %i.z = and i32 %0, 32768
  %.not44 = icmp eq i32 %i.z, 0
  br i1 %.not44, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aa = tail call ptr @sdscatlen(ptr noundef %.10, ptr noundef nonnull @.str.12, i64 noundef 1) #5
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.11 = phi ptr [ %i.aa, %bb.y ], [ %.10, %bb.x ] ; 2 uses
  %i.ab = and i32 %0, 65536
  %.not45 = icmp eq i32 %i.ab, 0
  br i1 %.not45, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.a
  %.str.13.sink = phi ptr [ @.str, %bb.a ], [ @.str.13, %bb.z ]
  %.11.sink = phi ptr [ %i.a, %bb.a ], [ %.11, %bb.z ]
  %i.ac = tail call ptr @sdscatlen(ptr noundef %.11.sink, ptr noundef nonnull %.str.13.sink, i64 noundef 1) #5
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.12 = phi ptr [ %.11, %bb.z ], [ %i.ac, %bb.aa ] ; 2 uses
  %i.ad = and i32 %0, 1
  %.not46 = icmp eq i32 %i.ad, 0
  br i1 %.not46, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ae = tail call ptr @sdscatlen(ptr noundef %.12, ptr noundef nonnull @.str.14, i64 noundef 1) #5
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.13 = phi ptr [ %i.ae, %bb.ac ], [ %.12, %bb.ab ] ; 2 uses
  %i.af = and i32 %0, 2
  %.not47 = icmp eq i32 %i.af, 0
  br i1 %.not47, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ag = tail call ptr @sdscatlen(ptr noundef %.13, ptr noundef nonnull @.str.15, i64 noundef 1) #5
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.14 = phi ptr [ %i.ag, %bb.ae ], [ %.13, %bb.ad ] ; 2 uses
  %i.ah = and i32 %0, 2048
  %.not48 = icmp eq i32 %i.ah, 0
  br i1 %.not48, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ai = tail call ptr @sdscatlen(ptr noundef %.14, ptr noundef nonnull @.str.16, i64 noundef 1) #5
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.15 = phi ptr [ %i.ai, %bb.ag ], [ %.14, %bb.af ]
  ret ptr %.15
}

declare ptr @sdsempty() local_unnamed_addr #3

declare ptr @sdscatlen(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @notifyKeyspaceEvent(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  tail call void @moduleNotifyKeyspaceEvent(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #5
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8136), align 8, !tbaa !16
  %i.c = and i32 %i.b, %0
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #6
  %i.e = tail call ptr @createStringObject(ptr noundef nonnull %1, i64 noundef %i.d) #5 ; 3 uses
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8136), align 8, !tbaa !16 ; 2 uses
  %i.g = and i32 %i.f, 1
  %.not28 = icmp eq i32 %i.g, 0
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @sdsnewlen(ptr noundef nonnull @.str.17, i64 noundef 11) #5
  %i.i = sext i32 %3 to i64
  %i.j = call i32 @ll2string(ptr noundef nonnull %i.a, i64 noundef 24, i64 noundef %i.i) #5 ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = call ptr @sdscatlen(ptr noundef %i.h, ptr noundef nonnull %i.a, i64 noundef %i.k) #5
  %i.m = call ptr @sdscatlen(ptr noundef %i.l, ptr noundef nonnull @.str.18, i64 noundef 3) #5
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !50
  %i.p = call ptr @sdscatsds(ptr noundef %i.m, ptr noundef %i.o) #5
  %i.q = call ptr @createObject(i32 noundef 0, ptr noundef %i.p) #5 ; 2 uses
  %i.r = call i32 @pubsubPublishMessage(ptr noundef %i.q, ptr noundef %i.e, i32 noundef 0) #5 ; 0 uses
  call void @decrRefCount(ptr noundef %i.q) #5
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8136), align 8, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = phi i32 [ %.pre, %bb.c ], [ %i.f, %bb.b ]
  %.0 = phi i32 [ %i.j, %bb.c ], [ -1, %bb.b ]    ; 2 uses
  %i.t = and i32 %i.s, 2
  %.not29 = icmp eq i32 %i.t, 0
  br i1 %.not29, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = call ptr @sdsnewlen(ptr noundef nonnull @.str.19, i64 noundef 11) #5
  %i.v = icmp eq i32 %.0, -1
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = sext i32 %3 to i64
  %i.x = call i32 @ll2string(ptr noundef nonnull %i.a, i64 noundef 24, i64 noundef %i.w) #5
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi i32 [ %i.x, %bb.f ], [ %.0, %bb.e ]
  %i.y = sext i32 %.1 to i64
  %i.z = call ptr @sdscatlen(ptr noundef %i.u, ptr noundef nonnull %i.a, i64 noundef %i.y) #5
  %i.aa = call ptr @sdscatlen(ptr noundef %i.z, ptr noundef nonnull @.str.18, i64 noundef 3) #5
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !50
  %i.ad = call ptr @sdscatsds(ptr noundef %i.aa, ptr noundef %i.ac) #5
  %i.ae = call ptr @createObject(i32 noundef 0, ptr noundef %i.ad) #5 ; 2 uses
  %i.af = call i32 @pubsubPublishMessage(ptr noundef %i.ae, ptr noundef %2, i32 noundef 0) #5 ; 0 uses
  call void @decrRefCount(ptr noundef %i.ae) #5
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  call void @decrRefCount(ptr noundef %i.e) #5
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

declare void @moduleNotifyKeyspaceEvent(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @createStringObject(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare ptr @sdsnewlen(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ll2string(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @sdscatsds(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @createObject(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @pubsubPublishMessage(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @decrRefCount(ptr noundef) local_unnamed_addr #3

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

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
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!17, !10, i64 8136}
!17 = !{!"redisServer", !10, i64 0, !18, i64 8, !19, i64 16, !19, i64 24, !21, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !23, i64 64, !24, i64 72, !24, i64 80, !25, i64 88, !26, i64 96, !10, i64 104, !10, i64 108, !11, i64 112, !11, i64 116, !27, i64 120, !11, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !19, i64 144, !10, i64 152, !10, i64 156, !11, i64 160, !10, i64 204, !18, i64 208, !10, i64 216, !10, i64 220, !10, i64 224, !19, i64 232, !19, i64 240, !10, i64 248, !10, i64 252, !18, i64 256, !11, i64 264, !24, i64 272, !24, i64 280, !24, i64 288, !28, i64 296, !11, i64 304, !10, i64 312, !10, i64 316, !11, i64 320, !10, i64 324, !10, i64 328, !10, i64 332, !11, i64 336, !10, i64 464, !19, i64 472, !19, i64 480, !10, i64 488, !11, i64 496, !10, i64 1328, !29, i64 1336, !28, i64 1440, !28, i64 1448, !28, i64 1456, !28, i64 1464, !28, i64 1472, !28, i64 1480, !28, i64 1488, !31, i64 1496, !31, i64 1504, !20, i64 1512, !26, i64 1520, !10, i64 1528, !26, i64 1536, !10, i64 1544, !28, i64 1552, !11, i64 1560, !11, i64 1624, !24, i64 1880, !11, i64 1888, !10, i64 1896, !10, i64 1900, !11, i64 1904, !10, i64 2416, !10, i64 2420, !32, i64 2424, !10, i64 2448, !27, i64 2456, !10, i64 2464, !10, i64 2468, !10, i64 2472, !10, i64 2476, !10, i64 2480, !18, i64 2488, !18, i64 2496, !18, i64 2504, !18, i64 2512, !18, i64 2520, !18, i64 2528, !27, i64 2536, !27, i64 2544, !27, i64 2552, !27, i64 2560, !27, i64 2568, !27, i64 2576, !34, i64 2584, !27, i64 2592, !27, i64 2600, !27, i64 2608, !27, i64 2616, !27, i64 2624, !27, i64 2632, !18, i64 2640, !27, i64 2648, !27, i64 2656, !27, i64 2664, !27, i64 2672, !27, i64 2680, !27, i64 2688, !27, i64 2696, !27, i64 2704, !18, i64 2712, !18, i64 2720, !18, i64 2728, !27, i64 2736, !27, i64 2744, !27, i64 2752, !27, i64 2760, !27, i64 2768, !34, i64 2776, !27, i64 2784, !27, i64 2792, !27, i64 2800, !27, i64 2808, !27, i64 2816, !28, i64 2824, !27, i64 2832, !27, i64 2840, !18, i64 2848, !35, i64 2856, !11, i64 2944, !11, i64 2952, !11, i64 2960, !11, i64 2968, !18, i64 2976, !18, i64 2984, !18, i64 2992, !18, i64 3000, !18, i64 3008, !18, i64 3016, !18, i64 3024, !18, i64 3032, !34, i64 3040, !11, i64 3048, !18, i64 3080, !27, i64 3088, !27, i64 3096, !27, i64 3104, !11, i64 3112, !11, i64 4136, !11, i64 5160, !27, i64 5168, !27, i64 5176, !27, i64 5184, !27, i64 5192, !11, i64 5200, !27, i64 6264, !27, i64 6272, !18, i64 6280, !27, i64 6288, !27, i64 6296, !18, i64 6304, !11, i64 6312, !36, i64 6408, !10, i64 6416, !10, i64 6420, !10, i64 6424, !10, i64 6428, !10, i64 6432, !10, i64 6436, !10, i64 6440, !10, i64 6444, !10, i64 6448, !10, i64 6452, !10, i64 6456, !10, i64 6460, !10, i64 6464, !18, i64 6472, !10, i64 6480, !10, i64 6484, !10, i64 6488, !10, i64 6492, !18, i64 6496, !18, i64 6504, !10, i64 6512, !10, i64 6516, !10, i64 6520, !10, i64 6524, !10, i64 6528, !10, i64 6532, !19, i64 6536, !11, i64 6544, !10, i64 6616, !10, i64 6620, !10, i64 6624, !37, i64 6632, !10, i64 6640, !10, i64 6644, !10, i64 6648, !10, i64 6652, !10, i64 6656, !10, i64 6660, !10, i64 6664, !10, i64 6668, !10, i64 6672, !19, i64 6680, !19, i64 6688, !10, i64 6696, !10, i64 6700, !18, i64 6704, !18, i64 6712, !18, i64 6720, !18, i64 6728, !18, i64 6736, !10, i64 6744, !10, i64 6748, !19, i64 6752, !10, i64 6760, !10, i64 6764, !27, i64 6768, !27, i64 6776, !18, i64 6784, !18, i64 6792, !18, i64 6800, !10, i64 6808, !10, i64 6812, !18, i64 6816, !10, i64 6824, !10, i64 6828, !10, i64 6832, !10, i64 6836, !10, i64 6840, !18, i64 6848, !10, i64 6856, !11, i64 6860, !11, i64 6864, !20, i64 6872, !10, i64 6880, !27, i64 6888, !27, i64 6896, !27, i64 6904, !27, i64 6912, !10, i64 6920, !38, i64 6928, !10, i64 6936, !19, i64 6944, !10, i64 6952, !10, i64 6956, !10, i64 6960, !18, i64 6968, !18, i64 6976, !18, i64 6984, !18, i64 6992, !10, i64 7000, !10, i64 7004, !10, i64 7008, !10, i64 7012, !10, i64 7016, !10, i64 7020, !39, i64 7024, !10, i64 7032, !10, i64 7036, !19, i64 7040, !10, i64 7048, !10, i64 7052, !10, i64 7056, !11, i64 7060, !10, i64 7068, !40, i64 7072, !10, i64 7088, !19, i64 7096, !10, i64 7104, !19, i64 7112, !10, i64 7120, !10, i64 7124, !10, i64 7128, !10, i64 7132, !10, i64 7136, !10, i64 7140, !10, i64 7144, !11, i64 7148, !11, i64 7189, !27, i64 7232, !27, i64 7240, !11, i64 7248, !27, i64 7256, !10, i64 7264, !10, i64 7268, !42, i64 7272, !27, i64 7280, !27, i64 7288, !43, i64 7296, !18, i64 7344, !18, i64 7352, !10, i64 7360, !10, i64 7364, !10, i64 7368, !10, i64 7372, !10, i64 7376, !10, i64 7380, !10, i64 7384, !10, i64 7388, !10, i64 7392, !18, i64 7400, !28, i64 7408, !18, i64 7416, !19, i64 7424, !19, i64 7432, !19, i64 7440, !10, i64 7448, !10, i64 7452, !31, i64 7456, !31, i64 7464, !10, i64 7472, !10, i64 7476, !10, i64 7480, !10, i64 7484, !18, i64 7488, !18, i64 7496, !18, i64 7504, !18, i64 7512, !18, i64 7520, !44, i64 7528, !44, i64 7536, !10, i64 7544, !19, i64 7552, !18, i64 7560, !10, i64 7568, !10, i64 7572, !10, i64 7576, !18, i64 7584, !18, i64 7592, !10, i64 7600, !10, i64 7604, !10, i64 7608, !10, i64 7612, !19, i64 7616, !10, i64 7624, !10, i64 7628, !11, i64 7632, !27, i64 7680, !10, i64 7688, !28, i64 7696, !10, i64 7704, !27, i64 7712, !27, i64 7720, !18, i64 7728, !18, i64 7736, !10, i64 7744, !27, i64 7752, !18, i64 7760, !10, i64 7768, !10, i64 7772, !10, i64 7776, !10, i64 7780, !10, i64 7784, !27, i64 7792, !11, i64 7800, !10, i64 7812, !10, i64 7816, !10, i64 7820, !11, i64 7824, !28, i64 7872, !28, i64 7880, !10, i64 7888, !18, i64 7896, !28, i64 7904, !28, i64 7912, !10, i64 7920, !10, i64 7924, !10, i64 7928, !10, i64 7932, !18, i64 7936, !18, i64 7944, !18, i64 7952, !18, i64 7960, !18, i64 7968, !18, i64 7976, !18, i64 7984, !18, i64 7992, !18, i64 8000, !27, i64 8008, !27, i64 8016, !27, i64 8024, !10, i64 8032, !10, i64 8036, !11, i64 8040, !18, i64 8048, !11, i64 8056, !27, i64 8064, !27, i64 8072, !10, i64 8080, !18, i64 8088, !27, i64 8096, !18, i64 8104, !27, i64 8112, !45, i64 8120, !24, i64 8128, !10, i64 8136, !45, i64 8144, !10, i64 8152, !10, i64 8156, !10, i64 8160, !10, i64 8164, !27, i64 8168, !27, i64 8176, !19, i64 8184, !27, i64 8192, !27, i64 8200, !27, i64 8208, !10, i64 8216, !46, i64 8224, !10, i64 8232, !10, i64 8236, !10, i64 8240, !10, i64 8244, !10, i64 8248, !19, i64 8256, !19, i64 8264, !19, i64 8272, !10, i64 8280, !10, i64 8284, !10, i64 8288, !10, i64 8292, !10, i64 8296, !10, i64 8300, !10, i64 8304, !10, i64 8308, !27, i64 8312, !10, i64 8320, !10, i64 8324, !10, i64 8328, !27, i64 8336, !10, i64 8344, !10, i64 8348, !10, i64 8352, !10, i64 8356, !10, i64 8360, !10, i64 8364, !10, i64 8368, !10, i64 8372, !10, i64 8376, !27, i64 8384, !24, i64 8392, !19, i64 8400, !18, i64 8408, !19, i64 8416, !10, i64 8424, !47, i64 8432, !10, i64 8472, !18, i64 8480, !10, i64 8488, !10, i64 8492, !10, i64 8496, !48, i64 8504, !19, i64 8624, !19, i64 8632, !19, i64 8640, !19, i64 8648, !49, i64 8656, !27, i64 8664, !10, i64 8672, !19, i64 8680, !10, i64 8688, !10, i64 8692, !10, i64 8696, !18, i64 8704, !10, i64 8712, !10, i64 8716, !19, i64 8720, !10, i64 8728, !10, i64 8732}
!18 = !{!"long", !11, i64 0}
!19 = !{!"p1 omnipotent char", !20, i64 0}
!20 = !{!"any pointer", !11, i64 0}
!21 = !{!"p2 omnipotent char", !22, i64 0}
!22 = !{!"any p2 pointer", !20, i64 0}
!23 = !{!"p1 _ZTS7redisDb", !20, i64 0}
!24 = !{!"p1 _ZTS4dict", !20, i64 0}
!25 = !{!"p1 _ZTS11aeEventLoop", !20, i64 0}
!26 = !{!"p1 _ZTS3rax", !20, i64 0}
!27 = !{!"long long", !11, i64 0}
!28 = !{!"p1 _ZTS4list", !20, i64 0}
!29 = !{!"connListener", !11, i64 0, !10, i64 64, !21, i64 72, !10, i64 80, !10, i64 84, !30, i64 88, !20, i64 96}
!30 = !{!"p1 _ZTS14ConnectionType", !20, i64 0}
!31 = !{!"p1 _ZTS6client", !20, i64 0}
!32 = !{!"pendingCommandPool", !33, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!33 = !{!"p2 _ZTS14pendingCommand", !22, i64 0}
!34 = !{!"double", !11, i64 0}
!35 = !{!"malloc_stats", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80}
!36 = !{!"p1 _ZTS11hotkeyStats", !20, i64 0}
!37 = !{!"p1 double", !20, i64 0}
!38 = !{!"p1 _ZTS9saveparam", !20, i64 0}
!39 = !{!"p2 _ZTS10connection", !22, i64 0}
!40 = !{!"redisOpArray", !41, i64 0, !10, i64 8, !10, i64 12}
!41 = !{!"p1 _ZTS7redisOp", !20, i64 0}
!42 = !{!"p1 _ZTS11replBacklog", !20, i64 0}
!43 = !{!"replDataBuf", !28, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40}
!44 = !{!"p1 _ZTS10connection", !20, i64 0}
!45 = !{!"p1 _ZTS8_kvstore", !20, i64 0}
!46 = !{!"p1 _ZTS12clusterState", !20, i64 0}
!47 = !{!"aclInfo", !27, i64 0, !27, i64 8, !27, i64 16, !27, i64 24, !27, i64 32}
!48 = !{!"redisTLSContextConfig", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !10, i64 48, !19, i64 56, !19, i64 64, !19, i64 72, !19, i64 80, !19, i64 88, !19, i64 96, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116}
!49 = !{!"p1 _ZTS14sentinelConfig", !20, i64 0}
!50 = !{!51, !20, i64 8}
!51 = !{!"redisObject", !10, i64 0, !10, i64 0, !10, i64 1, !10, i64 3, !10, i64 4, !10, i64 5, !20, i64 8}
end_hunk_0
