inline.NumInlined: 25
inline.NumDeleted: 9
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

@server = external global %struct.redisServer, align 8
@EvictionPoolLRU = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [8 x i8] c"evict.c\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Unknown eviction policy in evictionPoolPopulate()\00", align 1
@isEvictionProcRunning = internal unnamed_addr global i1 false, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"server.also_propagate.numops == 0\00", align 1
@performEvictions.next_db = internal unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"eviction-lazyfree\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"eviction-cycle\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"server.maxmemory_eviction_tenacity >= 0\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"server.maxmemory_eviction_tenacity <= 100\00", align 1
@getMonotonicUs = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 16777216) i32 @getLRUClock() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @mstime() #12
  %i.b = sdiv i64 %i.a, 1000
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 16777215
  ret i32 %i.d
}

declare i64 @mstime() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @LRU_CLOCK() local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 108), align 4, !tbaa !13
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 0, 4311744510001) i64 @estimateObjectIdleTime(ptr noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 108), align 4, !tbaa !13
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = lshr i64 %i.c, 40                        ; 3 uses
  %.not = icmp samesign ugt i64 %i.d, %i.b
  %i.e = xor i64 %i.d, 16777215
  %i.f = sub nsw i64 0, %i.d
  %.0.in.p = select i1 %.not, i64 %i.e, i64 %i.f
  %.0.in = add nsw i64 %.0.in.p, %i.b
  %.0 = mul nuw nsw i64 %.0.in, 1000
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @evictionPoolAlloc() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(512) ptr @zmalloc(i64 noundef 512) #13 ; 49 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = tail call ptr @sdsnewlen(ptr noundef null, i64 noundef 255) #12
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.c, align 8, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 0, ptr %i.d, align 8, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = tail call ptr @sdsnewlen(ptr noundef null, i64 noundef 255) #12
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.f, ptr %i.g, align 8, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 0, ptr %i.h, align 8, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.j = tail call ptr @sdsnewlen(ptr noundef null, i64 noundef 255) #12
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.j, ptr %i.k, align 8, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i32 0, ptr %i.l, align 8, !tbaa !49
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.n = tail call ptr @sdsnewlen(ptr noundef null, i64 noundef 255) #12
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr %i.n, ptr %i.o, align 8, !tbaa !47
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i32 0, ptr %i.p, align 8, !tbaa !49
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.r = tail call ptr @sdsnewlen(ptr noundef null, i64 noundef 255) #12
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr %i.r, ptr %i.s, align 8, !tbaa !47
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i32 0, ptr %i.t, align 8, !tbaa !49
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.v = tail call ptr @sdsnewlen(ptr noundef null, i64 noundef 255) #12
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store ptr %i.v, ptr %i.w, align 8, !tbaa !47
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i32 0, ptr %i.x, align 8, !tbaa !49
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.z = tail call ptr @sdsnewlen(ptr noundef null, i64 noundef 255) #12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !47
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store i32 0, ptr %i.ab, align 8, !tbaa !49
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  %i.ad = tail call ptr @sdsnewlen(ptr noundef null, i64 noundef 255) #12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !47
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store i32 0, ptr %i.af, align 8, !tbaa !49
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  %i.ah = tail call ptr @sdsnewlen(ptr noundef null, i64 noundef 255) #12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !47
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  store i32 0, ptr %i.aj, align 8, !tbaa !49
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  %i.al = tail call ptr @sdsnewlen(ptr noundef null, i64 noundef 255) #12
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  store ptr %i.al, ptr %i.am, align 8, !tbaa !47
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  store i32 0, ptr %i.an, align 8, !tbaa !49
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  %i.ap = tail call ptr @sdsnewlen(ptr noundef null, i64 noundef 255) #12
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !47
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  store i32 0, ptr %i.ar, align 8, !tbaa !49
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  %i.at = tail call ptr @sdsnewlen(ptr noundef null, i64 noundef 255) #12
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  store ptr %i.at, ptr %i.au, align 8, !tbaa !47
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  store i32 0, ptr %i.av, align 8, !tbaa !49
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  %i.ax = tail call ptr @sdsnewlen(ptr noundef null, i64 noundef 255) #12
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !47
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  store i32 0, ptr %i.az, align 8, !tbaa !49
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  %i.bb = tail call ptr @sdsnewlen(ptr noundef null, i64 noundef 255) #12
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !47
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  store i32 0, ptr %i.bd, align 8, !tbaa !49
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  %i.bf = tail call ptr @sdsnewlen(ptr noundef null, i64 noundef 255) #12
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !47
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 472
  store i32 0, ptr %i.bh, align 8, !tbaa !49
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  %i.bj = tail call ptr @sdsnewlen(ptr noundef null, i64 noundef 255) #12
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !47
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 504
  store i32 0, ptr %i.bl, align 8, !tbaa !49
  store ptr %i.a, ptr @EvictionPoolLRU, align 8, !tbaa !50
  ret void
}

; Function Attrs: allocsize(0)
declare noalias ptr @zmalloc(i64 noundef) local_unnamed_addr #5

declare ptr @sdsnewlen(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @evictionPoolPopulate(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7772), align 4, !tbaa !52
  %i.b = zext i32 %i.a to i64
  %i.c = alloca ptr, i64 %i.b, align 16           ; 2 uses
  %i.d = tail call i32 @kvstoreGetFairRandomDictIndex(ptr noundef %1, ptr noundef nonnull @randomEvictionShouldSkipDictIndex, i32 noundef 1, i32 noundef 0) #12 ; 3 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %.loopexit90, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7772), align 4, !tbaa !52
  %i.g = call i32 @kvstoreDictGetSomeKeys(ptr noundef %1, i32 noundef %i.d, ptr noundef nonnull %i.c, i32 noundef %i.f) #12 ; 4 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %.loopexit90

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 488 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 496
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %wide.trip.count = zext nneg i32 %i.g to i64
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 360
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 352
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 392
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 424
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 416
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 456
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 448
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 488
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 480
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.bg
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bg ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !53
  %i.at = call ptr @dictGetKey(ptr noundef %i.as) #12 ; 4 uses
  %i.au = call ptr @kvobjGetKey(ptr noundef %i.at) #12 ; 7 uses
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7768), align 8, !tbaa !55 ; 3 uses
  %i.aw = and i32 %i.av, 9
  %.not = icmp eq i32 %i.aw, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 108), align 4, !tbaa !13
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = load i64, ptr %i.at, align 8
  %i.ba = lshr i64 %i.az, 40                      ; 3 uses
  %.not.i = icmp samesign ugt i64 %i.ba, %i.ay
  %i.bb = xor i64 %i.ba, 16777215
  %i.bc = sub nsw i64 0, %i.ba
  %.0.in.p.i = select i1 %.not.i, i64 %i.bb, i64 %i.bc
  %.0.in.i = add nsw i64 %.0.in.p.i, %i.ay
  %.0.i = mul nuw nsw i64 %.0.in.i, 1000
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.bd = and i32 %i.av, 2
  %.not80 = icmp eq i32 %i.bd, 0
  br i1 %.not80, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = load i64, ptr %i.at, align 8            ; 2 uses
  %i.bf = lshr i64 %i.be, 40
  %i.bg = and i64 %i.bf, 255                      ; 2 uses
  %i.bh = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7784), align 8, !tbaa !56
  %.not.i85 = icmp eq i32 %i.bh, 0
  br i1 %.not.i85, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = lshr i64 %i.be, 48                      ; 2 uses
  %i.bj = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8040) seq_cst, align 8, !tbaa !57
  %i.bk = sdiv i64 %i.bj, 60
  %i.bl = and i64 %i.bk, 65535                    ; 2 uses
  %.not.i.i = icmp samesign ult i64 %i.bl, %i.bi
  %i.bm = sub nsw i64 %i.bl, %i.bi                ; 2 uses
  %i.bn = add nsw i64 %i.bm, 65535
  %.0.i.i = select i1 %.not.i.i, i64 %i.bn, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7784), align 8, !tbaa !56
  %i.bp = sext i32 %i.bo to i64                   ; 2 uses
  %i.bq = udiv i64 %.0.i.i, %i.bp
  %.not9.i = icmp ult i64 %.0.i.i, %i.bp
  %i.br = call i64 @llvm.usub.sat.i64(i64 %i.bg, i64 %i.bq)
  %cond.fr.i = freeze i1 %.not9.i
  br i1 %cond.fr.i, label %.thread.i, label %LFUDecrAndReturn.exit

.thread.i:                                        ; preds = %bb.g, %bb.f
  br label %LFUDecrAndReturn.exit

LFUDecrAndReturn.exit:                            ; preds = %bb.g, %.thread.i
  %i.bs = phi i64 [ %i.bg, %.thread.i ], [ %i.br, %bb.g ]
  %i.bt = sub nuw nsw i64 255, %i.bs
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.bu = icmp eq i32 %i.av, 512
  br i1 %i.bu, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bv = call i64 @kvobjGetExpire(ptr noundef %i.at) #12
  %i.bw = xor i64 %i.bv, -1
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 167, ptr noundef nonnull @.str.1) #12
  call void @abort() #14
  unreachable

bb.k:                                             ; preds = %LFUDecrAndReturn.exit, %bb.i, %bb.d
  %.075 = phi i64 [ %.0.i, %bb.d ], [ %i.bt, %LFUDecrAndReturn.exit ], [ %i.bw, %bb.i ] ; 17 uses
  %i.bx = load ptr, ptr %i.k, align 8, !tbaa !58  ; 3 uses
  %.not81 = icmp eq ptr %i.bx, null
  br i1 %.not81, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = load i64, ptr %2, align 8, !tbaa !59
  %i.bz = icmp ult i64 %i.by, %.075
  br i1 %i.bz, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.ca = load ptr, ptr %i.o, align 8, !tbaa !58
  %.not81.1 = icmp eq ptr %i.ca, null
  br i1 %.not81.1, label %.critedge.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = load i64, ptr %i.l, align 8, !tbaa !59
  %i.cc = icmp ult i64 %i.cb, %.075
  br i1 %i.cc, label %bb.o, label %.critedge.thread

bb.o:                                             ; preds = %bb.n
  %i.cd = load ptr, ptr %i.p, align 8, !tbaa !58
  %.not81.2 = icmp eq ptr %i.cd, null
  br i1 %.not81.2, label %.critedge.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = load i64, ptr %i.q, align 8, !tbaa !59
  %i.cf = icmp ult i64 %i.ce, %.075
  br i1 %i.cf, label %bb.q, label %.critedge.thread

bb.q:                                             ; preds = %bb.p
  %i.cg = load ptr, ptr %i.r, align 8, !tbaa !58
  %.not81.3 = icmp eq ptr %i.cg, null
  br i1 %.not81.3, label %.critedge.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ch = load i64, ptr %i.s, align 8, !tbaa !59
  %i.ci = icmp ult i64 %i.ch, %.075
  br i1 %i.ci, label %bb.s, label %.critedge.thread

bb.s:                                             ; preds = %bb.r
  %i.cj = load ptr, ptr %i.t, align 8, !tbaa !58
  %.not81.4 = icmp eq ptr %i.cj, null
  br i1 %.not81.4, label %.critedge.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ck = load i64, ptr %i.u, align 8, !tbaa !59
  %i.cl = icmp ult i64 %i.ck, %.075
  br i1 %i.cl, label %bb.u, label %.critedge.thread

bb.u:                                             ; preds = %bb.t
  %i.cm = load ptr, ptr %i.v, align 8, !tbaa !58
  %.not81.5 = icmp eq ptr %i.cm, null
  br i1 %.not81.5, label %.critedge.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cn = load i64, ptr %i.w, align 8, !tbaa !59
  %i.co = icmp ult i64 %i.cn, %.075
  br i1 %i.co, label %bb.w, label %.critedge.thread

bb.w:                                             ; preds = %bb.v
  %i.cp = load ptr, ptr %i.x, align 8, !tbaa !58
  %.not81.6 = icmp eq ptr %i.cp, null
  br i1 %.not81.6, label %.critedge.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cq = load i64, ptr %i.y, align 8, !tbaa !59
  %i.cr = icmp ult i64 %i.cq, %.075
  br i1 %i.cr, label %bb.y, label %.critedge.thread

bb.y:                                             ; preds = %bb.x
  %i.cs = load ptr, ptr %i.z, align 8, !tbaa !58
  %.not81.7 = icmp eq ptr %i.cs, null
  br i1 %.not81.7, label %.critedge.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ct = load i64, ptr %i.aa, align 8, !tbaa !59
  %i.cu = icmp ult i64 %i.ct, %.075
  br i1 %i.cu, label %bb.aa, label %.critedge.thread

bb.aa:                                            ; preds = %bb.z
  %i.cv = load ptr, ptr %i.ab, align 8, !tbaa !58
  %.not81.8 = icmp eq ptr %i.cv, null
  br i1 %.not81.8, label %.critedge.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cw = load i64, ptr %i.ac, align 8, !tbaa !59
  %i.cx = icmp ult i64 %i.cw, %.075
  br i1 %i.cx, label %bb.ac, label %.critedge.thread

bb.ac:                                            ; preds = %bb.ab
  %i.cy = load ptr, ptr %i.ad, align 8, !tbaa !58
  %.not81.9 = icmp eq ptr %i.cy, null
  br i1 %.not81.9, label %.critedge.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cz = load i64, ptr %i.ae, align 8, !tbaa !59
  %i.da = icmp ult i64 %i.cz, %.075
  br i1 %i.da, label %bb.ae, label %.critedge.thread

bb.ae:                                            ; preds = %bb.ad
  %i.db = load ptr, ptr %i.af, align 8, !tbaa !58
  %.not81.10 = icmp eq ptr %i.db, null
  br i1 %.not81.10, label %.critedge.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dc = load i64, ptr %i.ag, align 8, !tbaa !59
  %i.dd = icmp ult i64 %i.dc, %.075
  br i1 %i.dd, label %bb.ag, label %.critedge.thread

bb.ag:                                            ; preds = %bb.af
  %i.de = load ptr, ptr %i.ah, align 8, !tbaa !58
  %.not81.11 = icmp eq ptr %i.de, null
  br i1 %.not81.11, label %.critedge.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.df = load i64, ptr %i.ai, align 8, !tbaa !59
  %i.dg = icmp ult i64 %i.df, %.075
  br i1 %i.dg, label %bb.ai, label %.critedge.thread

bb.ai:                                            ; preds = %bb.ah
  %i.dh = load ptr, ptr %i.aj, align 8, !tbaa !58
  %.not81.12 = icmp eq ptr %i.dh, null
  br i1 %.not81.12, label %.critedge.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.di = load i64, ptr %i.ak, align 8, !tbaa !59
  %i.dj = icmp ult i64 %i.di, %.075
  br i1 %i.dj, label %bb.ak, label %.critedge.thread

bb.ak:                                            ; preds = %bb.aj
  %i.dk = load ptr, ptr %i.al, align 8, !tbaa !58
  %.not81.13 = icmp eq ptr %i.dk, null
  br i1 %.not81.13, label %.critedge.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dl = load i64, ptr %i.am, align 8, !tbaa !59
  %i.dm = icmp ult i64 %i.dl, %.075
  br i1 %i.dm, label %bb.am, label %.critedge.thread

bb.am:                                            ; preds = %bb.al
  %i.dn = load ptr, ptr %i.an, align 8, !tbaa !58
  %.not81.14 = icmp eq ptr %i.dn, null
  br i1 %.not81.14, label %.critedge.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.do = load i64, ptr %i.ao, align 8, !tbaa !59
  %i.dp = icmp ult i64 %i.do, %.075
  br i1 %i.dp, label %bb.ao, label %.critedge.thread

bb.ao:                                            ; preds = %bb.an
  %i.dq = load ptr, ptr %i.ap, align 8, !tbaa !58
  %.not81.15 = icmp eq ptr %i.dq, null
  br i1 %.not81.15, label %.critedge.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dr = load i64, ptr %i.aq, align 8, !tbaa !59
  %i.ds = icmp ult i64 %i.dr, %.075
  br i1 %i.ds, label %.loopexit.thread, label %.critedge.thread

.critedge:                                        ; preds = %bb.l, %bb.k
  %i.dt = load ptr, ptr %i.i, align 8, !tbaa !58
  %.not82 = icmp eq ptr %i.dt, null
  br i1 %.not82, label %.critedge.thread, label %bb.bg

.critedge.thread:                                 ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %.critedge
  %.07493.lcssa104 = phi i32 [ 0, %.critedge ], [ 15, %bb.ap ], [ 15, %bb.ao ], [ 14, %bb.an ], [ 14, %bb.am ], [ 13, %bb.al ], [ 13, %bb.ak ], [ 12, %bb.aj ], [ 12, %bb.ai ], [ 11, %bb.ah ], [ 11, %bb.ag ], [ 10, %bb.af ], [ 10, %bb.ae ], [ 9, %bb.ad ], [ 9, %bb.ac ], [ 8, %bb.ab ], [ 8, %bb.aa ], [ 7, %bb.z ], [ 7, %bb.y ], [ 6, %bb.x ], [ 6, %bb.w ], [ 5, %bb.v ], [ 5, %bb.u ], [ 4, %bb.t ], [ 4, %bb.s ], [ 3, %bb.r ], [ 3, %bb.q ], [ 2, %bb.p ], [ 2, %bb.o ], [ 1, %bb.n ], [ 1, %bb.m ] ; 6 uses
  %i.du = zext nneg i32 %.07493.lcssa104 to i64
  %i.dv = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !58
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %bb.at, label %.loopexit

.loopexit:                                        ; preds = %.critedge.thread
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !58
  %i.dz = icmp eq ptr %.pre, null
  br i1 %i.dz, label %bb.aq, label %.loopexit.thread

bb.aq:                                            ; preds = %.loopexit
  %i.ea = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.eb = zext nneg i32 %.07493.lcssa104 to i64   ; 2 uses
  %i.ec = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.eb ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.ee = shl nuw nsw i32 %.07493.lcssa104, 5
  %i.ef = xor i32 %i.ee, 480
  %i.eg = zext nneg i32 %i.ef to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ed, ptr align 8 %i.ec, i64 %i.eg, i1 false)
  br label %.sink.split

.loopexit.thread:                                 ; preds = %bb.ap, %.loopexit
  %.07492106 = phi i32 [ %.07493.lcssa104, %.loopexit ], [ 16, %bb.ap ]
  %i.eh = add nsw i32 %.07492106, -1              ; 2 uses
  %i.ei = load ptr, ptr %i.j, align 8, !tbaa !47  ; 2 uses
  %.not83 = icmp eq ptr %i.bx, %i.ei
  br i1 %.not83, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.loopexit.thread
  call void @sdsfree(ptr noundef %i.bx) #12
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.loopexit.thread
  %i.ej = sext i32 %i.eh to i64                   ; 2 uses
  %i.ek = shl nsw i64 %i.ej, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %i.l, i64 %i.ek, i1 false)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.aq, %bb.as
  %i.el = phi i64 [ %i.ej, %bb.as ], [ %i.eb, %bb.aq ]
  %.sink = phi ptr [ %i.ei, %bb.as ], [ %i.ea, %bb.aq ]
  %.1.ph = phi i32 [ %i.eh, %bb.as ], [ %.07493.lcssa104, %bb.aq ]
  %i.em = getelementptr inbounds [32 x i8], ptr %2, i64 %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store ptr %.sink, ptr %i.en, align 8, !tbaa !47
  br label %bb.at

bb.at:                                            ; preds = %.sink.split, %.critedge.thread
  %.1 = phi i32 [ %.07493.lcssa104, %.critedge.thread ], [ %.1.ph, %.sink.split ] ; 2 uses
  %i.eo = getelementptr i8, ptr %i.au, i64 -1
  %.val.i = load i8, ptr %i.eo, align 1, !tbaa !60 ; 2 uses
  %i.ep = and i8 %.val.i, 7
  switch i8 %i.ep, label %sdslen.exit.thread [
    i8 0, label %bb.au
    i8 1, label %bb.av
    i8 2, label %bb.aw
    i8 3, label %bb.ax
    i8 4, label %bb.ay
  ]

bb.au:                                            ; preds = %bb.at
  %i.eq = lshr i8 %.val.i, 3
  %i.er = zext nneg i8 %i.eq to i64
  br label %sdslen.exit

bb.av:                                            ; preds = %bb.at
  %i.es = getelementptr inbounds i8, ptr %i.au, i64 -3
  %i.et = load i8, ptr %i.es, align 1, !tbaa !60
  %i.eu = zext i8 %i.et to i64
  br label %sdslen.exit

bb.aw:                                            ; preds = %bb.at
  %i.ev = getelementptr inbounds i8, ptr %i.au, i64 -5
  %i.ew = load i16, ptr %i.ev, align 1, !tbaa !61
  %i.ex = zext i16 %i.ew to i64
  br label %sdslen.exit

bb.ax:                                            ; preds = %bb.at
  %i.ey = getelementptr inbounds i8, ptr %i.au, i64 -9
  %i.ez = load i32, ptr %i.ey, align 1, !tbaa !9
  %i.fa = zext i32 %i.ez to i64
  br label %sdslen.exit

bb.ay:                                            ; preds = %bb.at
  %i.fb = getelementptr inbounds i8, ptr %i.au, i64 -17
  %i.fc = load i64, ptr %i.fb, align 1, !tbaa !63
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay
  %.0.i86 = phi i64 [ %i.fc, %bb.ay ], [ %i.er, %bb.au ], [ %i.eu, %bb.av ], [ %i.ex, %bb.aw ], [ %i.fa, %bb.ax ] ; 2 uses
  %i.fd = trunc i64 %.0.i86 to i32
  %i.fe = icmp sgt i32 %i.fd, 255
  br i1 %i.fe, label %bb.az, label %sdslen.exit.thread

bb.az:                                            ; preds = %sdslen.exit
  %i.ff = call ptr @sdsdup(ptr noundef nonnull %i.au) #12
  %i.fg = sext i32 %.1 to i64
  br label %bb.bf

sdslen.exit.thread:                               ; preds = %bb.at, %sdslen.exit
  %.0.i8689 = phi i64 [ %.0.i86, %sdslen.exit ], [ 0, %bb.at ] ; 5 uses
  %i.fh = sext i32 %.1 to i64                     ; 2 uses
  %i.fi = getelementptr inbounds [32 x i8], ptr %2, i64 %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16 ; 3 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !47
  %i.fl = shl i64 %.0.i8689, 32                   ; 2 uses
  %sext = add i64 %i.fl, 4294967296
  %i.fm = ashr exact i64 %sext, 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fk, ptr nonnull align 1 %i.au, i64 %i.fm, i1 false)
  %i.fn = load ptr, ptr %i.fj, align 8, !tbaa !47 ; 5 uses
  %i.fo = getelementptr i8, ptr %i.fn, i64 -1     ; 2 uses
  %.val.i87 = load i8, ptr %i.fo, align 1, !tbaa !60
  %i.fp = and i8 %.val.i87, 7
  switch i8 %i.fp, label %sdssetlen.exit [
    i8 0, label %bb.ba
    i8 1, label %bb.bb
    i8 2, label %bb.bc
    i8 3, label %bb.bd
    i8 4, label %bb.be
  ]

bb.ba:                                            ; preds = %sdslen.exit.thread
  %.tr.i = trunc i64 %.0.i8689 to i8
  %i.fq = shl i8 %.tr.i, 3
  store i8 %i.fq, ptr %i.fo, align 1, !tbaa !60
  br label %sdssetlen.exit

bb.bb:                                            ; preds = %sdslen.exit.thread
  %i.fr = trunc i64 %.0.i8689 to i8
  %i.fs = getelementptr inbounds i8, ptr %i.fn, i64 -3
  store i8 %i.fr, ptr %i.fs, align 1, !tbaa !60
  br label %sdssetlen.exit

bb.bc:                                            ; preds = %sdslen.exit.thread
  %i.ft = trunc i64 %.0.i8689 to i16
  %i.fu = getelementptr inbounds i8, ptr %i.fn, i64 -5
  store i16 %i.ft, ptr %i.fu, align 1, !tbaa !61
  br label %sdssetlen.exit

bb.bd:                                            ; preds = %sdslen.exit.thread
  %i.fv = trunc i64 %.0.i8689 to i32
  %i.fw = getelementptr inbounds i8, ptr %i.fn, i64 -9
  store i32 %i.fv, ptr %i.fw, align 1, !tbaa !9
  br label %sdssetlen.exit

bb.be:                                            ; preds = %sdslen.exit.thread
  %i.fx = ashr exact i64 %i.fl, 32
  %i.fy = getelementptr inbounds i8, ptr %i.fn, i64 -17
  store i64 %i.fx, ptr %i.fy, align 1, !tbaa !63
  br label %sdssetlen.exit

sdssetlen.exit:                                   ; preds = %sdslen.exit.thread, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be
  %i.fz = load ptr, ptr %i.fj, align 8, !tbaa !47
  br label %bb.bf

bb.bf:                                            ; preds = %sdssetlen.exit, %bb.az
  %.sink109 = phi ptr [ %i.fz, %sdssetlen.exit ], [ %i.ff, %bb.az ]
  %.pre-phi = phi i64 [ %i.fh, %sdssetlen.exit ], [ %i.fg, %bb.az ] ; 2 uses
  %i.ga = getelementptr inbounds [32 x i8], ptr %2, i64 %.pre-phi
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store ptr %.sink109, ptr %i.gb, align 8, !tbaa !58
  %i.gc = getelementptr inbounds [32 x i8], ptr %2, i64 %.pre-phi ; 3 uses
  store i64 %.075, ptr %i.gc, align 8, !tbaa !59
  %i.gd = load i32, ptr %i.n, align 8, !tbaa !64
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  store i32 %i.gd, ptr %i.ge, align 8, !tbaa !49
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 28
  store i32 %i.d, ptr %i.gf, align 4, !tbaa !67
  br label %bb.bg

bb.bg:                                            ; preds = %.critedge, %bb.bf
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit90, label %bb.c, !llvm.loop !68

.loopexit90:                                      ; preds = %bb.bg, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.g, %bb.b ], [ %i.g, %bb.bg ]
  ret i32 %.0
}

declare i32 @kvstoreGetFairRandomDictIndex(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @randomEvictionShouldSkipDictIndex(i32 noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @clusterCanAccessKeysInSlot(i32 noundef %0) #12
  %.not = icmp eq i32 %i.a, 0
  %i.b = zext i1 %.not to i32
  ret i32 %i.b
}

declare i32 @kvstoreDictGetSomeKeys(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @kvobjGetKey(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define dso_local range(i64 0, 256) i64 @LFUDecrAndReturn(ptr noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = lshr i64 %i.a, 40
  %i.c = and i64 %i.b, 255                        ; 2 uses
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7784), align 8, !tbaa !56
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %i.a, 48                        ; 2 uses
  %i.f = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8040) seq_cst, align 8, !tbaa !57
  %i.g = sdiv i64 %i.f, 60
  %i.h = and i64 %i.g, 65535                      ; 2 uses
  %.not.i = icmp samesign ult i64 %i.h, %i.e
  %i.i = sub nsw i64 %i.h, %i.e                   ; 2 uses
  %i.j = add nsw i64 %i.i, 65535
  %.0.i = select i1 %.not.i, i64 %i.j, i64 %i.i   ; 2 uses
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7784), align 8, !tbaa !56
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = udiv i64 %.0.i, %i.l
  %.not9 = icmp ult i64 %.0.i, %i.l
  %i.n = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 %i.m)
  %cond.fr = freeze i1 %.not9
  br i1 %cond.fr, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.a, %bb.b
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.o = phi i64 [ %i.c, %.thread ], [ %i.n, %bb.b ]
  ret i64 %i.o
}

declare i64 @kvobjGetExpire(ptr noundef) local_unnamed_addr #1

declare void @_serverPanic(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

declare void @sdsfree(ptr noundef) local_unnamed_addr #1

declare ptr @sdsdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define dso_local range(i64 0, 65536) i64 @LFUGetTimeInMinutes() local_unnamed_addr #6 {
bb.a:
  %i.a = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8040) seq_cst, align 8, !tbaa !57
  %i.b = sdiv i64 %i.a, 60
  %i.c = and i64 %i.b, 65535
  ret i64 %i.c
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define dso_local i64 @LFUTimeElapsed(i64 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8040) seq_cst, align 8, !tbaa !57
  %i.b = sdiv i64 %i.a, 60
  %i.c = and i64 %i.b, 65535                      ; 2 uses
  %.not = icmp ult i64 %i.c, %0
  %i.d = sub i64 %i.c, %0                         ; 2 uses
  %i.e = add i64 %i.d, 65535
  %.0 = select i1 %.not, i64 %i.e, i64 %i.d
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @LFULogIncr(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i8 %0, -1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i8 %0 to i32
  %i.c = tail call i32 @rand() #12
  %i.d = sitofp i32 %i.c to double
  %i.e = fdiv double %i.d, f0x41DFFFFFFFC00000
  %i.f = add nsw i32 %i.b, -5
  %i.g = sitofp i32 %i.f to double
  %i.h = icmp ult i8 %0, 5
  %.08 = select i1 %i.h, double 0.000000e+00, double %i.g
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7780), align 4, !tbaa !70
  %i.j = sitofp i32 %i.i to double
  %i.k = tail call double @llvm.fmuladd.f64(double %.08, double %i.j, double 1.000000e+00)
  %i.l = fdiv double 1.000000e+00, %i.k
  %i.m = fcmp olt double %i.e, %i.l
  %i.n = zext i1 %i.m to i8
  %.09 = add nuw i8 %0, %i.n
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i8 [ %.09, %bb.b ], [ -1, %bb.a ]
  ret i8 %.0
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: nounwind uwtable
define dso_local i64 @freeMemoryGetNotCountedMemory() local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7400), align 8, !tbaa !71 ; 2 uses
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7280), align 8, !tbaa !72 ; 3 uses
  %i.c = icmp sgt i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = sdiv i64 %i.b, 16384
  %i.e = shl nsw i64 %i.d, 6
  %i.f = add i64 %i.b, 64
  %i.g = add i64 %i.f, %i.e
  %spec.select = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1 = phi i64 [ %spec.select, %bb.b ], [ 0, %bb.a ]
  %i.h = tail call i64 @asmGetMigrateOutputBufferSize() #12
  %i.i = add i64 %i.h, %.1                        ; 2 uses
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6668), align 4, !tbaa !73
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6752), align 8, !tbaa !74 ; 5 uses
  %i.l = getelementptr i8, ptr %i.k, i64 -1
  %.val.i = load i8, ptr %i.l, align 1, !tbaa !60 ; 2 uses
  %i.m = and i8 %.val.i, 7
  switch i8 %i.m, label %sdsAllocSize.exit [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.n = lshr i8 %.val.i, 3
  %narrow.i = add nuw nsw i8 %i.n, 2
  %i.o = zext nneg i8 %narrow.i to i64
  br label %sdsAllocSize.exit

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds i8, ptr %i.k, i64 -2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !60
  %i.r = zext i8 %i.q to i64
  %i.s = add nuw nsw i64 %i.r, 4
  br label %sdsAllocSize.exit

bb.g:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds i8, ptr %i.k, i64 -3
  %i.u = load i16, ptr %i.t, align 1, !tbaa !61
  %i.v = zext i16 %i.u to i64
  %i.w = add nuw nsw i64 %i.v, 6
  br label %sdsAllocSize.exit

bb.h:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds i8, ptr %i.k, i64 -5
  %i.y = load i32, ptr %i.x, align 1, !tbaa !9
  %i.z = zext i32 %i.y to i64
  %i.aa = add nuw nsw i64 %i.z, 10
  br label %sdsAllocSize.exit

bb.i:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds i8, ptr %i.k, i64 -9
  %i.ac = load i64, ptr %i.ab, align 1, !tbaa !63
  %i.ad = add i64 %i.ac, 18
  br label %sdsAllocSize.exit

sdsAllocSize.exit:                                ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.ad, %bb.i ], [ %i.o, %bb.e ], [ %i.s, %bb.f ], [ %i.w, %bb.g ], [ %i.aa, %bb.h ], [ 0, %bb.d ]
  %i.ae = add i64 %.0.i, %i.i
  br label %bb.j

bb.j:                                             ; preds = %sdsAllocSize.exit, %bb.c
  %.2 = phi i64 [ %i.ae, %sdsAllocSize.exit ], [ %i.i, %bb.c ]
  ret i64 %.2
}

declare i64 @asmGetMigrateOutputBufferSize() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @getMaxmemoryState(ptr noundef writeonly captures(address_is_null) %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef writeonly captures(address_is_null) %2, ptr noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @zmalloc_used_memory() #12 ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.a, ptr %0, align 8, !tbaa !63
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7752), align 8, !tbaa !75 ; 2 uses
  %.not33 = icmp eq i64 %i.b, 0
  br i1 %.not33, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.not34 = icmp eq ptr %3, null
  br i1 %.not34, label %bb.v, label %bb.e

bb.e:                                             ; preds = %bb.d
  store float 0.000000e+00, ptr %3, align 4, !tbaa !76
  br label %bb.v

bb.f:                                             ; preds = %bb.c
  %i.c = icmp ugt i64 %i.a, %i.b
  %i.d = icmp ne ptr %3, null                     ; 2 uses
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.g, label %bb.v

bb.g:                                             ; preds = %bb.f
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7400), align 8, !tbaa !71 ; 2 uses
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7280), align 8, !tbaa !72 ; 3 uses
  %i.g = icmp sgt i64 %i.e, %i.f
  br i1 %i.g, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.h = sdiv i64 %i.f, 16384
  %i.i = shl nsw i64 %i.h, 6
  %i.j = add i64 %i.f, 64
  %i.k = add i64 %i.j, %i.i
  %spec.select.i = tail call i64 @llvm.usub.sat.i64(i64 %i.e, i64 %i.k)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.i = phi i64 [ %spec.select.i, %bb.h ], [ 0, %bb.g ]
  %i.l = tail call i64 @asmGetMigrateOutputBufferSize() #12
  %i.m = add i64 %i.l, %.1.i                      ; 2 uses
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6668), align 4, !tbaa !73
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %freeMemoryGetNotCountedMemory.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6752), align 8, !tbaa !74 ; 5 uses
  %i.p = getelementptr i8, ptr %i.o, i64 -1
  %.val.i.i = load i8, ptr %i.p, align 1, !tbaa !60 ; 2 uses
  %i.q = and i8 %.val.i.i, 7
  switch i8 %i.q, label %sdsAllocSize.exit.i [
    i8 0, label %bb.k
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.n
    i8 4, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  %i.r = lshr i8 %.val.i.i, 3
  %narrow.i.i = add nuw nsw i8 %i.r, 2
  %i.s = zext nneg i8 %narrow.i.i to i64
  br label %sdsAllocSize.exit.i

bb.l:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds i8, ptr %i.o, i64 -2
  %i.u = load i8, ptr %i.t, align 1, !tbaa !60
  %i.v = zext i8 %i.u to i64
  %i.w = add nuw nsw i64 %i.v, 4
  br label %sdsAllocSize.exit.i

bb.m:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds i8, ptr %i.o, i64 -3
  %i.y = load i16, ptr %i.x, align 1, !tbaa !61
  %i.z = zext i16 %i.y to i64
  %i.aa = add nuw nsw i64 %i.z, 6
  br label %sdsAllocSize.exit.i

bb.n:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds i8, ptr %i.o, i64 -5
  %i.ac = load i32, ptr %i.ab, align 1, !tbaa !9
  %i.ad = zext i32 %i.ac to i64
  %i.ae = add nuw nsw i64 %i.ad, 10
  br label %sdsAllocSize.exit.i

bb.o:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds i8, ptr %i.o, i64 -9
  %i.ag = load i64, ptr %i.af, align 1, !tbaa !63
  %i.ah = add i64 %i.ag, 18
  br label %sdsAllocSize.exit.i

sdsAllocSize.exit.i:                              ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %.0.i.i = phi i64 [ %i.ah, %bb.o ], [ %i.s, %bb.k ], [ %i.w, %bb.l ], [ %i.aa, %bb.m ], [ %i.ae, %bb.n ], [ 0, %bb.j ]
  %i.ai = add i64 %.0.i.i, %i.m
  br label %freeMemoryGetNotCountedMemory.exit

freeMemoryGetNotCountedMemory.exit:               ; preds = %bb.i, %sdsAllocSize.exit.i
  %.2.i = phi i64 [ %i.ai, %sdsAllocSize.exit.i ], [ %i.m, %bb.i ]
  %i.aj = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 %.2.i) ; 4 uses
  %.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7752), align 8, !tbaa !75 ; 4 uses
  br i1 %i.d, label %bb.p, label %bb.q

bb.p:                                             ; preds = %freeMemoryGetNotCountedMemory.exit
  %i.ak = uitofp i64 %i.aj to float
  %i.al = uitofp i64 %.pre to float
  %i.am = fdiv float %i.ak, %i.al
  store float %i.am, ptr %3, align 4, !tbaa !76
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %freeMemoryGetNotCountedMemory.exit
  %.not35 = icmp ugt i64 %i.a, %.pre
  %.not36 = icmp ugt i64 %i.aj, %.pre
  %or.cond39 = select i1 %.not35, i1 %.not36, i1 false
  br i1 %or.cond39, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.an = sub nuw i64 %i.aj, %.pre
  %.not37 = icmp eq ptr %1, null
  br i1 %.not37, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i64 %i.aj, ptr %1, align 8, !tbaa !63
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.not38 = icmp eq ptr %2, null
  br i1 %.not38, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i64 %i.an, ptr %2, align 8, !tbaa !63
  br label %bb.v

bb.v:                                             ; preds = %bb.q, %bb.u, %bb.t, %bb.f, %bb.d, %bb.e
  %.1 = phi i32 [ 0, %bb.f ], [ 0, %bb.d ], [ 0, %bb.e ], [ -1, %bb.t ], [ 0, %bb.q ], [ -1, %bb.u ]
  ret i32 %.1
}

declare i64 @zmalloc_used_memory() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @overMaxmemoryAfterAlloc(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7752), align 8, !tbaa !75
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @zmalloc_used_memory() #12 ; 2 uses
  %i.c = add i64 %i.b, %0
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7752), align 8, !tbaa !75
  %.not9 = icmp ugt i64 %i.c, %i.d
  br i1 %.not9, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7400), align 8, !tbaa !71 ; 2 uses
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7280), align 8, !tbaa !72 ; 3 uses
  %i.g = icmp sgt i64 %i.e, %i.f
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = sdiv i64 %i.f, 16384
  %i.i = shl nsw i64 %i.h, 6
  %i.j = add i64 %i.f, 64
  %i.k = add i64 %i.j, %i.i
  %spec.select.i = tail call i64 @llvm.usub.sat.i64(i64 %i.e, i64 %i.k)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.i = phi i64 [ %spec.select.i, %bb.d ], [ 0, %bb.c ]
  %i.l = tail call i64 @asmGetMigrateOutputBufferSize() #12
  %i.m = add i64 %i.l, %.1.i                      ; 2 uses
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6668), align 4, !tbaa !73
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %freeMemoryGetNotCountedMemory.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6752), align 8, !tbaa !74 ; 5 uses
  %i.p = getelementptr i8, ptr %i.o, i64 -1
  %.val.i.i = load i8, ptr %i.p, align 1, !tbaa !60 ; 2 uses
  %i.q = and i8 %.val.i.i, 7
  switch i8 %i.q, label %sdsAllocSize.exit.i [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  %i.r = lshr i8 %.val.i.i, 3
  %narrow.i.i = add nuw nsw i8 %i.r, 2
  %i.s = zext nneg i8 %narrow.i.i to i64
  br label %sdsAllocSize.exit.i

bb.h:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds i8, ptr %i.o, i64 -2
  %i.u = load i8, ptr %i.t, align 1, !tbaa !60
  %i.v = zext i8 %i.u to i64
  %i.w = add nuw nsw i64 %i.v, 4
  br label %sdsAllocSize.exit.i

bb.i:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds i8, ptr %i.o, i64 -3
  %i.y = load i16, ptr %i.x, align 1, !tbaa !61
  %i.z = zext i16 %i.y to i64
  %i.aa = add nuw nsw i64 %i.z, 6
  br label %sdsAllocSize.exit.i

bb.j:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds i8, ptr %i.o, i64 -5
  %i.ac = load i32, ptr %i.ab, align 1, !tbaa !9
  %i.ad = zext i32 %i.ac to i64
  %i.ae = add nuw nsw i64 %i.ad, 10
  br label %sdsAllocSize.exit.i

bb.k:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds i8, ptr %i.o, i64 -9
  %i.ag = load i64, ptr %i.af, align 1, !tbaa !63
  %i.ah = add i64 %i.ag, 18
  br label %sdsAllocSize.exit.i

sdsAllocSize.exit.i:                              ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.0.i.i = phi i64 [ %i.ah, %bb.k ], [ %i.s, %bb.g ], [ %i.w, %bb.h ], [ %i.aa, %bb.i ], [ %i.ae, %bb.j ], [ 0, %bb.f ]
  %i.ai = add i64 %.0.i.i, %i.m
  br label %freeMemoryGetNotCountedMemory.exit

freeMemoryGetNotCountedMemory.exit:               ; preds = %bb.e, %sdsAllocSize.exit.i
  %.2.i = phi i64 [ %i.ai, %sdsAllocSize.exit.i ], [ %i.m, %bb.e ]
  %i.aj = tail call i64 @llvm.usub.sat.i64(i64 %i.b, i64 %.2.i)
  %i.ak = add i64 %i.aj, %0
  %i.al = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7752), align 8, !tbaa !75
  %i.am = icmp ugt i64 %i.ak, %i.al
  %i.an = zext i1 %i.am to i32
  br label %bb.l

bb.l:                                             ; preds = %freeMemoryGetNotCountedMemory.exit, %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %i.an, %freeMemoryGetNotCountedMemory.exit ], [ 0, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local void @startEvictionTimeProc() local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @isEvictionProcRunning, align 4
  br i1 %.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i1 true, ptr @isEvictionProcRunning, align 4
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 88), align 8, !tbaa !78
  %i.b = tail call i64 @aeCreateTimeEvent(ptr noundef %i.a, i64 noundef 0, ptr noundef nonnull @evictionTimeProc, ptr noundef null, ptr noundef null) #12 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare i64 @aeCreateTimeEvent(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @evictionTimeProc(ptr readnone captures(none) %0, i64 %1, ptr readnone captures(none) %2) #0 {
bb.a:
  %i.a = tail call i32 @performEvictions()
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i1 false, ptr @isEvictionProcRunning, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 3) i32 @performEvictions() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = tail call i32 @isInsideYieldingLongCommand() #12
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %isSafeToPerformEvictions.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2476), align 4, !tbaa !79
  %.not3.i = icmp eq i32 %i.e, 0
  br i1 %.not3.i, label %bb.c, label %isSafeToPerformEvictions.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7440), align 8, !tbaa !80
  %i.g = icmp ne ptr %i.f, null
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7576), align 8
  %i.i = icmp ne i32 %i.h, 0
  %or.cond.i = select i1 %i.g, i1 %i.i, i1 false
  br i1 %or.cond.i, label %isSafeToPerformEvictions.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1496), align 8, !tbaa !81 ; 2 uses
  %.not4.i = icmp eq ptr %i.j, null
  br i1 %.not4.i, label %isSafeToPerformEvictions.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !82
  %i.m = and i64 %i.l, 18014398509481986
  %or.cond8.not.i = icmp eq i64 %i.m, 18014398509481986
  br i1 %or.cond8.not.i, label %isSafeToPerformEvictions.exit.thread, label %isSafeToPerformEvictions.exit

isSafeToPerformEvictions.exit:                    ; preds = %bb.d, %bb.e
  %i.n = tail call i32 @isPausedActionsWithUpdate(i32 noundef 8) #12
  %.not7.i.not = icmp eq i32 %i.n, 0
  br i1 %.not7.i.not, label %bb.f, label %isSafeToPerformEvictions.exit.thread

bb.f:                                             ; preds = %isSafeToPerformEvictions.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1480), align 8, !tbaa !96
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !97
  %i.r = call i32 @getMaxmemoryState(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef nonnull %i.b, ptr noundef null)
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.thread229, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7768), align 8, !tbaa !55
  %i.u = icmp eq i32 %i.t, 1792
  br i1 %i.u, label %.thread224, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7776), align 8, !tbaa !99 ; 6 uses
  %i.w = icmp sgt i32 %i.v, -1
  br i1 %i.w, label %bb.j, label %bb.i, !prof !100

bb.i:                                             ; preds = %bb.h
  call void @_serverAssert(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str, i32 noundef 492) #12
  call void @abort() #14
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.x = icmp samesign ult i32 %i.v, 101
  br i1 %i.x, label %bb.l, label %bb.k, !prof !100

bb.k:                                             ; preds = %bb.j
  call void @_serverAssert(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str, i32 noundef 493) #12
  call void @abort() #14
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.y = icmp samesign ult i32 %i.v, 11
  br i1 %i.y, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %narrow.i = mul nuw nsw i32 %i.v, 50
  %i.z = zext nneg i32 %narrow.i to i64
  br label %evictionTimeLimitUs.exit

bb.n:                                             ; preds = %bb.l
  %.not.i183 = icmp eq i32 %i.v, 100
  br i1 %.not.i183, label %evictionTimeLimitUs.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = uitofp nneg i32 %i.v to double
  %i.ab = fadd double %i.aa, -1.000000e+01
  %i.ac = call double @pow(double noundef 1.150000e+00, double noundef %i.ab) #12, !tbaa !9
  %i.ad = fmul double %i.ac, 5.000000e+02
  %i.ae = fptoui double %i.ad to i64
  br label %evictionTimeLimitUs.exit

evictionTimeLimitUs.exit:                         ; preds = %bb.m, %bb.n, %bb.o
  %.0.i184 = phi i64 [ %i.z, %bb.m ], [ %i.ae, %bb.o ], [ -1, %bb.n ] ; 3 uses
  %i.af = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8384), align 8, !tbaa !101
  %.not154 = icmp eq i64 %i.af, 0
  br i1 %.not154, label %bb.q, label %bb.p

bb.p:                                             ; preds = %evictionTimeLimitUs.exit
  %i.ag = call i64 @mstime() #12
  br label %bb.q

bb.q:                                             ; preds = %evictionTimeLimitUs.exit, %bb.p
  %.0110 = phi i64 [ %i.ag, %bb.p ], [ 0, %evictionTimeLimitUs.exit ]
  %i.ah = load ptr, ptr @getMonotonicUs, align 8, !tbaa !102
  %i.ai = call i64 %i.ah() #12, !inline_history !103 ; 2 uses
  %i.aj = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7080), align 8, !tbaa !104
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %.preheader236, label %bb.r, !prof !100

.preheader236:                                    ; preds = %bb.q
  %i.al = load i64, ptr %i.b, align 8, !tbaa !63
  %i.am = icmp sgt i64 %i.al, 0
  br i1 %i.am, label %.lr.ph258, label %.loopexit237

.lr.ph258:                                        ; preds = %.preheader236
  %i.an = and i64 %i.q, 4294967295
  %.not162 = icmp eq i64 %i.an, 0
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_serverAssert(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 564) #12
  call void @abort() #14
  unreachable

bb.s:                                             ; preds = %.lr.ph258, %bb.ar
  %.0101257 = phi i32 [ 0, %.lr.ph258 ], [ %i.dz, %bb.ar ]
  %.0103256 = phi i64 [ 0, %.lr.ph258 ], [ %i.dy, %bb.ar ]
  %.0124255 = phi i32 [ undef, %.lr.ph258 ], [ %.9212, %bb.ar ]
  %i.ao = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7768), align 8, !tbaa !55 ; 3 uses
  %i.ap = and i32 %i.ao, 11
  %i.aq = icmp ne i32 %i.ap, 0
  %i.ar = icmp eq i32 %i.ao, 512
  %or.cond = or i1 %i.ar, %i.aq
  br i1 %or.cond, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %bb.s
  %i.as = load ptr, ptr @EvictionPoolLRU, align 8, !tbaa !50 ; 2 uses
  br label %.preheader234

.preheader234:                                    ; preds = %bb.t, %.loopexit233
  %.1125254 = phi i32 [ %.0124255, %bb.t ], [ %.5, %.loopexit233 ]
  %i.at = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4, !tbaa !105
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph250, label %.thread222

.lr.ph250:                                        ; preds = %.preheader234, %.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit ], [ 0, %.preheader234 ] ; 2 uses
  %.0114249 = phi i64 [ %.3117, %.loopexit ], [ 0, %.preheader234 ] ; 3 uses
  %.0118248 = phi i64 [ %.1119, %.loopexit ], [ 0, %.preheader234 ] ; 2 uses
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !106
  %i.aw = getelementptr inbounds nuw [96 x i8], ptr %i.av, i64 %indvars.iv ; 2 uses
  %i.ax = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7768), align 8, !tbaa !55
  %i.ay = and i32 %i.ax, 4
  %.not172 = icmp eq i32 %i.ay, 0
  %.0113.in.idx = select i1 %.not172, i64 8, i64 0
  %.0113.in = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.0113.in.idx
  %.0113 = load ptr, ptr %.0113.in, align 8, !tbaa !107 ; 3 uses
  %i.az = call i64 @kvstoreSize(ptr noundef %.0113) #12 ; 3 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %.lr.ph250
  %i.bb = add i64 %i.az, %.0118248                ; 3 uses
  %i.bc = call i32 @kvstoreNumNonEmptyDicts(ptr noundef %.0113) #12 ; 2 uses
  %.not173330 = icmp eq i32 %i.bc, 0
  br i1 %.not173330, label %.loopexit, label %.lr.ph335

bb.v:                                             ; preds = %.lr.ph335
  %i.bd = add nsw i32 %.0107333, -1               ; 2 uses
  %.not173 = icmp eq i32 %i.bd, 0
  br i1 %.not173, label %.loopexit, label %.lr.ph335, !llvm.loop !108

.lr.ph335:                                        ; preds = %bb.u, %bb.v
  %.0107333 = phi i32 [ %i.bd, %bb.v ], [ %i.bc, %bb.u ]
  %.0112332 = phi i64 [ %i.bg, %bb.v ], [ 0, %bb.u ]
  %.1115331 = phi i64 [ %i.bh, %bb.v ], [ %.0114249, %bb.u ]
  %i.be = call i32 @evictionPoolPopulate(ptr noundef %i.aw, ptr noundef %.0113, ptr noundef %i.as)
  %i.bf = sext i32 %i.be to i64
  %i.bg = add i64 %.0112332, %i.bf                ; 3 uses
  %i.bh = add i64 %i.bg, %.1115331                ; 3 uses
  %i.bi = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7772), align 4, !tbaa !52
  %i.bj = sext i32 %i.bi to i64                   ; 2 uses
  %.not174 = icmp uge i64 %i.bg, %i.bj
  %i.bk = mul nsw i64 %i.bj, 10
  %i.bl = icmp ult i64 %i.az, %i.bk
  %or.cond176 = select i1 %.not174, i1 true, i1 %i.bl
  br i1 %or.cond176, label %..loopexit.loopexit_crit_edge, label %bb.v, !llvm.loop !108

..loopexit.loopexit_crit_edge:                    ; preds = %.lr.ph335
  br label %.loopexit, !llvm.loop !108

.loopexit:                                        ; preds = %bb.v, %bb.u, %..loopexit.loopexit_crit_edge, %.lr.ph250
  %.1119 = phi i64 [ %.0118248, %.lr.ph250 ], [ %i.bb, %bb.u ], [ %i.bb, %..loopexit.loopexit_crit_edge ], [ %i.bb, %bb.v ] ; 2 uses
  %.3117 = phi i64 [ %.0114249, %.lr.ph250 ], [ %.0114249, %bb.u ], [ %i.bh, %..loopexit.loopexit_crit_edge ], [ %i.bh, %bb.v ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bm = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4, !tbaa !105
  %i.bn = sext i32 %i.bm to i64
  %i.bo = icmp slt i64 %indvars.iv.next, %i.bn
  br i1 %i.bo, label %.lr.ph250, label %._crit_edge, !llvm.loop !109

._crit_edge:                                      ; preds = %.loopexit
  %i.bp = icmp eq i64 %.1119, 0
  %i.bq = icmp eq i64 %.3117, 0
  %i.br = select i1 %i.bp, i1 true, i1 %i.bq
  br i1 %i.br, label %.thread222, label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.thread
  %indvars.iv274 = phi i64 [ %indvars.iv.next275, %.thread ], [ 15, %._crit_edge ] ; 3 uses
  %.2126253 = phi i32 [ %.3127, %.thread ], [ %.1125254, %._crit_edge ]
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %i.as, i64 %indvars.iv274 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !58 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %.thread, label %bb.w

bb.w:                                             ; preds = %.preheader
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !49 ; 3 uses
  %i.by = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7768), align 8, !tbaa !55
  %i.bz = and i32 %i.by, 4
  %.not158 = icmp eq i32 %i.bz, 0
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8
  %i.cb = sext i32 %i.bx to i64
  %i.cc = getelementptr inbounds [96 x i8], ptr %i.ca, i64 %i.cb
  %.0106.in.idx = select i1 %.not158, i64 8, i64 0
  %.0106.in = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.0106.in.idx
  %.0106 = load ptr, ptr %.0106.in, align 8, !tbaa !107
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bs, i64 28
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !67
  %i.cf = call ptr @kvstoreDictFind(ptr noundef %.0106, i32 noundef %i.ce, ptr noundef nonnull %i.bu) #12 ; 2 uses
  %i.cg = load ptr, ptr %i.bt, align 8, !tbaa !58 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !47
  %.not159 = icmp eq ptr %i.cg, %i.ci
  br i1 %.not159, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @sdsfree(ptr noundef %i.cg) #12
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.not160 = icmp eq ptr %i.cf, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i8 0, i64 16, i1 false)
  br i1 %.not160, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cj = call ptr @dictGetKey(ptr noundef nonnull %i.cf) #12
  %i.ck = call ptr @kvobjGetKey(ptr noundef %i.cj) #12
  br label %.loopexit233

.thread:                                          ; preds = %bb.y, %.preheader
  %.3127 = phi i32 [ %.2126253, %.preheader ], [ %i.bx, %bb.y ] ; 2 uses
  %indvars.iv.next275 = add nsw i64 %indvars.iv274, -1
  %.not295 = icmp eq i64 %indvars.iv274, 0
  br i1 %.not295, label %.loopexit233, label %.preheader, !llvm.loop !110

.loopexit233:                                     ; preds = %.thread, %bb.z
  %.5134 = phi ptr [ %i.ck, %bb.z ], [ null, %.thread ] ; 2 uses
  %.5 = phi i32 [ %i.bx, %bb.z ], [ %.3127, %.thread ] ; 3 uses
  %i.cl = icmp eq ptr %.5134, null
  br i1 %i.cl, label %.preheader234, label %.thread207.loopexit

bb.aa:                                            ; preds = %bb.s
  switch i32 %i.ao, label %.thread222 [
    i32 1540, label %bb.ab
    i32 768, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  %i.cm = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4, !tbaa !105 ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %.lr.ph, label %.thread222

.lr.ph:                                           ; preds = %bb.ab, %bb.ad
  %i.co = phi i32 [ %i.db, %bb.ad ], [ %i.cm, %bb.ab ]
  %.1140245 = phi i32 [ %i.da, %bb.ad ], [ 0, %bb.ab ]
  %i.cp = load i32, ptr @performEvictions.next_db, align 4, !tbaa !9
  %i.cq = add i32 %i.cp, 1                        ; 2 uses
  store i32 %i.cq, ptr @performEvictions.next_db, align 4, !tbaa !9
  %i.cr = urem i32 %i.cq, %i.co                   ; 2 uses
  %i.cs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !106
  %i.ct = sext i32 %i.cr to i64                   ; 2 uses
  %i.cu = getelementptr inbounds [96 x i8], ptr %i.cs, i64 %i.ct
  %i.cv = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7768), align 8, !tbaa !55
  %i.cw = icmp eq i32 %i.cv, 1540
  %.0105.in.idx = select i1 %i.cw, i64 0, i64 8
  %.0105.in = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.0105.in.idx
  %.0105 = load ptr, ptr %.0105.in, align 8, !tbaa !107 ; 2 uses
  %i.cx = call i32 @kvstoreGetFairRandomDictIndex(ptr noundef %.0105, ptr noundef nonnull @randomEvictionShouldSkipDictIndex, i32 noundef 16, i32 noundef 0) #12 ; 2 uses
  %i.cy = icmp eq i32 %i.cx, -1
  br i1 %i.cy, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph
  %i.cz = call ptr @kvstoreDictGetRandomKey(ptr noundef %.0105, i32 noundef %i.cx) #12 ; 2 uses
  %.not155 = icmp eq ptr %i.cz, null
  br i1 %.not155, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph, %bb.ac
  %i.da = add nuw nsw i32 %.1140245, 1            ; 2 uses
  %i.db = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4, !tbaa !105 ; 2 uses
  %i.dc = icmp slt i32 %i.da, %i.db
  br i1 %i.dc, label %.lr.ph, label %.thread222, !llvm.loop !111

bb.ae:                                            ; preds = %bb.ac
  %i.dd = call ptr @dictGetKey(ptr noundef nonnull %i.cz) #12
  %i.de = call ptr @kvobjGetKey(ptr noundef %i.dd) #12 ; 2 uses
  %.not161 = icmp eq ptr %i.de, null
  br i1 %.not161, label %.thread222, label %.thread207

.thread207.loopexit:                              ; preds = %.loopexit233
  %.pre278 = sext i32 %.5 to i64
  br label %.thread207

.thread207:                                       ; preds = %.thread207.loopexit, %bb.ae
  %.pre-phi = phi i64 [ %.pre278, %.thread207.loopexit ], [ %i.ct, %bb.ae ]
  %.9212 = phi i32 [ %.5, %.thread207.loopexit ], [ %i.cr, %bb.ae ]
  %.9138211 = phi ptr [ %.5134, %.thread207.loopexit ], [ %i.de, %bb.ae ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !106
  %i.dg = getelementptr inbounds [96 x i8], ptr %i.df, i64 %.pre-phi
  call void @enterExecutionUnit(i32 noundef 1, i64 noundef 0) #12
  %i.dh = getelementptr i8, ptr %.9138211, i64 -1
  %.val.i = load i8, ptr %i.dh, align 1, !tbaa !60 ; 2 uses
  %i.di = and i8 %.val.i, 7
  switch i8 %i.di, label %sdslen.exit [
    i8 0, label %bb.af
    i8 1, label %bb.ag
    i8 2, label %bb.ah
    i8 3, label %bb.ai
    i8 4, label %bb.aj
  ]

bb.af:                                            ; preds = %.thread207
  %i.dj = lshr i8 %.val.i, 3
  %i.dk = zext nneg i8 %i.dj to i64
  br label %sdslen.exit

bb.ag:                                            ; preds = %.thread207
  %i.dl = getelementptr inbounds i8, ptr %.9138211, i64 -3
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !60
  %i.dn = zext i8 %i.dm to i64
  br label %sdslen.exit

bb.ah:                                            ; preds = %.thread207
  %i.do = getelementptr inbounds i8, ptr %.9138211, i64 -5
  %i.dp = load i16, ptr %i.do, align 1, !tbaa !61
  %i.dq = zext i16 %i.dp to i64
  br label %sdslen.exit

bb.ai:                                            ; preds = %.thread207
  %i.dr = getelementptr inbounds i8, ptr %.9138211, i64 -9
  %i.ds = load i32, ptr %i.dr, align 1, !tbaa !9
  %i.dt = zext i32 %i.ds to i64
  br label %sdslen.exit

bb.aj:                                            ; preds = %.thread207
  %i.du = getelementptr inbounds i8, ptr %.9138211, i64 -17
  %i.dv = load i64, ptr %i.du, align 1, !tbaa !63
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %.thread207, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj
  %.0.i185 = phi i64 [ %i.dv, %bb.aj ], [ %i.dk, %bb.af ], [ %i.dn, %bb.ag ], [ %i.dq, %bb.ah ], [ %i.dt, %bb.ai ], [ 0, %.thread207 ]
  %i.dw = call ptr @createStringObject(ptr noundef nonnull %.9138211, i64 noundef %.0.i185) #12 ; 2 uses
  call void @deleteEvictedKeyAndPropagate(ptr noundef %i.dg, ptr noundef %i.dw, ptr noundef nonnull %i.c) #12
  call void @decrRefCount(ptr noundef %i.dw) #12
  call void @exitExecutionUnit() #12
  call void @postExecutionUnitOperations() #12
  %i.dx = load i64, ptr %i.c, align 8, !tbaa !112
  %i.dy = add nsw i64 %i.dx, %.0103256            ; 2 uses
  %i.dz = add nuw nsw i32 %.0101257, 1            ; 2 uses
  %i.ea = and i32 %i.dz, 15
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.ak, label %bb.ar

bb.ak:                                            ; preds = %sdslen.exit
  br i1 %.not162, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @flushSlavesOutputBuffers() #12
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ec = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8360), align 8, !tbaa !113
  %.not163 = icmp eq i32 %i.ec, 0
  br i1 %.not163, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ed = call i32 @getMaxmemoryState(ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %.thread220, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ef = load ptr, ptr @getMonotonicUs, align 8, !tbaa !102
  %i.eg = call i64 %i.ef() #12, !inline_history !114
  %i.eh = sub i64 %i.eg, %i.ai
  %i.ei = icmp ugt i64 %i.eh, %.0.i184
  br i1 %i.ei, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %.b.i = load i1, ptr @isEvictionProcRunning, align 4
  br i1 %.b.i, label %.thread220, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i1 true, ptr @isEvictionProcRunning, align 4
  %i.ej = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 88), align 8, !tbaa !78
  %i.ek = call i64 @aeCreateTimeEvent(ptr noundef %i.ej, i64 noundef 0, ptr noundef nonnull @evictionTimeProc, ptr noundef null, ptr noundef null) #12, !inline_history !115 ; 0 uses
  br label %.thread220

.thread220:                                       ; preds = %bb.an, %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %.loopexit237

bb.ar:                                            ; preds = %bb.ao, %sdslen.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.el = load i64, ptr %i.b, align 8, !tbaa !63
  %i.em = icmp slt i64 %i.dy, %i.el
  br i1 %i.em, label %bb.s, label %.loopexit237

.loopexit237:                                     ; preds = %bb.ar, %.preheader236, %.thread220
  %.b = load i1, ptr @isEvictionProcRunning, align 4
  %i.en = zext i1 %.b to i32
  br label %thread-pre-split

.thread222:                                       ; preds = %bb.ae, %bb.aa, %bb.ab, %bb.ad, %.preheader234, %._crit_edge
  %i.eo = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8384), align 8, !tbaa !101
  %.not164 = icmp eq i64 %i.eo, 0
  br i1 %.not164, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.thread222
  %i.ep = call i64 @mstime() #12
  br label %bb.at

bb.at:                                            ; preds = %.thread222, %bb.as
  %.0 = phi i64 [ %i.ep, %bb.as ], [ 0, %.thread222 ]
  %i.eq = call i64 @bioPendingJobsOfType(i32 noundef 2) #12
  %.not165259 = icmp eq i64 %i.eq, 0
  br i1 %.not165259, label %.critedge, label %.lr.ph261

.lr.ph261:                                        ; preds = %bb.at
  %i.er = call i64 @llvm.umin.i64(i64 %.0.i184, i64 1000)
  %i.es = trunc nuw nsw i64 %i.er to i32
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph261, %bb.aw
  %i.et = load ptr, ptr @getMonotonicUs, align 8, !tbaa !102
  %i.eu = call i64 %i.et() #12, !inline_history !114
  %i.ev = sub i64 %i.eu, %i.ai
  %i.ew = icmp ult i64 %i.ev, %.0.i184
  br i1 %i.ew, label %bb.av, label %.critedge

bb.av:                                            ; preds = %bb.au
  %i.ex = call i32 @getMaxmemoryState(ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %.critedge, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ez = call i32 @usleep(i32 noundef %i.es) #12 ; 0 uses
  %i.fa = call i64 @bioPendingJobsOfType(i32 noundef 2) #12
  %.not165 = icmp eq i64 %i.fa, 0
  br i1 %.not165, label %.critedge, label %bb.au, !llvm.loop !116

.critedge:                                        ; preds = %bb.au, %bb.aw, %bb.av, %bb.at
  %.1121 = phi i32 [ 2, %bb.at ], [ 0, %bb.av ], [ 2, %bb.aw ], [ 2, %bb.au ] ; 3 uses
  %i.fb = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8384), align 8, !tbaa !101
  %.not166 = icmp eq i64 %i.fb, 0
  br i1 %.not166, label %.thread307, label %bb.ax

bb.ax:                                            ; preds = %.critedge
  %i.fc = call i64 @mstime() #12
  %i.fd = sub nsw i64 %i.fc, %.0                  ; 2 uses
  %.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8384), align 8, !tbaa !101 ; 3 uses
  %.not167 = icmp eq i64 %.pre, 0
  %.not168 = icmp slt i64 %i.fd, %.pre
  %or.cond180 = select i1 %.not167, i1 true, i1 %.not168
  br i1 %or.cond180, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @latencyAddSample(ptr noundef nonnull @.str.3, i64 noundef %i.fd) #12
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %.loopexit237, %bb.ay
  %.2122.ph = phi i32 [ %.1121, %bb.ay ], [ %i.en, %.loopexit237 ]
  %.pr = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8384), align 8, !tbaa !101
  br label %bb.az

bb.az:                                            ; preds = %thread-pre-split, %bb.ax
  %i.fe = phi i64 [ %.pr, %thread-pre-split ], [ %.pre, %bb.ax ]
  %.2122 = phi i32 [ %.2122.ph, %thread-pre-split ], [ %.1121, %bb.ax ] ; 3 uses
  %.not169 = icmp eq i64 %i.fe, 0
  br i1 %.not169, label %.thread307, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ff = call i64 @mstime() #12
  %i.fg = sub nsw i64 %i.ff, %.0110               ; 2 uses
  %.pre277 = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8384), align 8, !tbaa !101 ; 2 uses
  %.not170 = icmp eq i64 %.pre277, 0
  %.not171 = icmp slt i64 %i.fg, %.pre277
  %or.cond181 = select i1 %.not170, i1 true, i1 %.not171
  br i1 %or.cond181, label %.thread307, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @latencyAddSample(ptr noundef nonnull @.str.4, i64 noundef %i.fg) #12
  br label %.thread307

.thread307:                                       ; preds = %.critedge, %bb.az, %bb.ba, %bb.bb
  %.2122306313 = phi i32 [ %.2122, %bb.bb ], [ %.2122, %bb.ba ], [ %.2122, %bb.az ], [ %.1121, %.critedge ] ; 2 uses
  %.not296 = icmp eq i32 %.2122306313, 0
  br i1 %.not296, label %.thread229, label %.thread224

.thread224:                                       ; preds = %bb.g, %.thread307
  %.3123228 = phi i32 [ %.2122306313, %.thread307 ], [ 2, %bb.g ] ; 2 uses
  %i.fh = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2640), align 8, !tbaa !117
  %i.fi = icmp eq i64 %i.fh, 0
  br i1 %i.fi, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %.thread224
  %i.fj = load ptr, ptr @getMonotonicUs, align 8, !tbaa !102
  %i.fk = call i64 %i.fj() #12, !inline_history !103
  br label %.sink.split

.thread229:                                       ; preds = %bb.f, %.thread307
  %i.fl = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2640), align 8 ; 2 uses
  %.not = icmp eq i64 %i.fl, 0
  br i1 %.not, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.thread229
  %i.fm = load ptr, ptr @getMonotonicUs, align 8, !tbaa !102
  %i.fn = call i64 %i.fm() #12, !inline_history !114
  %i.fo = sub i64 %i.fn, %i.fl
  %i.fp = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2632), align 8, !tbaa !118
  %i.fq = add i64 %i.fo, %i.fp
  store i64 %i.fq, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2632), align 8, !tbaa !118
  br label %.sink.split

.sink.split:                                      ; preds = %bb.bd, %bb.bc
  %.sink = phi i64 [ %i.fk, %bb.bc ], [ 0, %bb.bd ]
  %.3123227.ph = phi i32 [ %.3123228, %bb.bc ], [ 0, %bb.bd ]
  store i64 %.sink, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2640), align 8, !tbaa !63
  br label %bb.be

bb.be:                                            ; preds = %.sink.split, %.thread224, %.thread229
  %.3123227 = phi i32 [ 0, %.thread229 ], [ %.3123228, %.thread224 ], [ %.3123227.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %isSafeToPerformEvictions.exit.thread

isSafeToPerformEvictions.exit.thread:             ; preds = %bb.b, %bb.c, %bb.a, %bb.e, %isSafeToPerformEvictions.exit, %bb.be
  %.1100 = phi i32 [ %.3123227, %bb.be ], [ 0, %isSafeToPerformEvictions.exit ], [ 0, %bb.e ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.1100
}

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @kvstoreSize(ptr noundef) local_unnamed_addr #1

declare i32 @kvstoreNumNonEmptyDicts(ptr noundef) local_unnamed_addr #1

declare ptr @kvstoreDictFind(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @kvstoreDictGetRandomKey(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @enterExecutionUnit(i32 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @createStringObject(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @deleteEvictedKeyAndPropagate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @decrRefCount(ptr noundef) local_unnamed_addr #1

declare void @exitExecutionUnit() local_unnamed_addr #1

declare void @postExecutionUnitOperations() local_unnamed_addr #1

declare void @flushSlavesOutputBuffers() local_unnamed_addr #1

declare i64 @bioPendingJobsOfType(i32 noundef) local_unnamed_addr #1

declare i32 @usleep(i32 noundef) local_unnamed_addr #1

declare void @latencyAddSample(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @clusterCanAccessKeysInSlot(i32 noundef) local_unnamed_addr #1

declare ptr @dictGetKey(ptr noundef) local_unnamed_addr #1

declare i32 @isInsideYieldingLongCommand() local_unnamed_addr #1

declare i32 @isPausedActionsWithUpdate(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress norecurse nounwind willreturn uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { noreturn nounwind }

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
!13 = !{!14, !10, i64 108}
!14 = !{!"redisServer", !10, i64 0, !15, i64 8, !16, i64 16, !16, i64 24, !18, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !20, i64 64, !21, i64 72, !21, i64 80, !22, i64 88, !23, i64 96, !10, i64 104, !10, i64 108, !11, i64 112, !11, i64 116, !24, i64 120, !11, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !16, i64 144, !10, i64 152, !10, i64 156, !11, i64 160, !10, i64 204, !15, i64 208, !10, i64 216, !10, i64 220, !10, i64 224, !16, i64 232, !16, i64 240, !10, i64 248, !10, i64 252, !15, i64 256, !11, i64 264, !21, i64 272, !21, i64 280, !21, i64 288, !25, i64 296, !11, i64 304, !10, i64 312, !10, i64 316, !11, i64 320, !10, i64 324, !10, i64 328, !10, i64 332, !11, i64 336, !10, i64 464, !16, i64 472, !16, i64 480, !10, i64 488, !11, i64 496, !10, i64 1328, !26, i64 1336, !25, i64 1440, !25, i64 1448, !25, i64 1456, !25, i64 1464, !25, i64 1472, !25, i64 1480, !25, i64 1488, !28, i64 1496, !28, i64 1504, !17, i64 1512, !23, i64 1520, !10, i64 1528, !23, i64 1536, !10, i64 1544, !25, i64 1552, !11, i64 1560, !11, i64 1624, !21, i64 1880, !11, i64 1888, !10, i64 1896, !10, i64 1900, !11, i64 1904, !10, i64 2416, !10, i64 2420, !29, i64 2424, !10, i64 2448, !24, i64 2456, !10, i64 2464, !10, i64 2468, !10, i64 2472, !10, i64 2476, !10, i64 2480, !15, i64 2488, !15, i64 2496, !15, i64 2504, !15, i64 2512, !15, i64 2520, !15, i64 2528, !24, i64 2536, !24, i64 2544, !24, i64 2552, !24, i64 2560, !24, i64 2568, !24, i64 2576, !31, i64 2584, !24, i64 2592, !24, i64 2600, !24, i64 2608, !24, i64 2616, !24, i64 2624, !24, i64 2632, !15, i64 2640, !24, i64 2648, !24, i64 2656, !24, i64 2664, !24, i64 2672, !24, i64 2680, !24, i64 2688, !24, i64 2696, !24, i64 2704, !15, i64 2712, !15, i64 2720, !15, i64 2728, !24, i64 2736, !24, i64 2744, !24, i64 2752, !24, i64 2760, !24, i64 2768, !31, i64 2776, !24, i64 2784, !24, i64 2792, !24, i64 2800, !24, i64 2808, !24, i64 2816, !25, i64 2824, !24, i64 2832, !24, i64 2840, !15, i64 2848, !32, i64 2856, !11, i64 2944, !11, i64 2952, !11, i64 2960, !11, i64 2968, !15, i64 2976, !15, i64 2984, !15, i64 2992, !15, i64 3000, !15, i64 3008, !15, i64 3016, !15, i64 3024, !15, i64 3032, !31, i64 3040, !11, i64 3048, !15, i64 3080, !24, i64 3088, !24, i64 3096, !24, i64 3104, !11, i64 3112, !11, i64 4136, !11, i64 5160, !24, i64 5168, !24, i64 5176, !24, i64 5184, !24, i64 5192, !11, i64 5200, !24, i64 6264, !24, i64 6272, !15, i64 6280, !24, i64 6288, !24, i64 6296, !15, i64 6304, !11, i64 6312, !33, i64 6408, !10, i64 6416, !10, i64 6420, !10, i64 6424, !10, i64 6428, !10, i64 6432, !10, i64 6436, !10, i64 6440, !10, i64 6444, !10, i64 6448, !10, i64 6452, !10, i64 6456, !10, i64 6460, !10, i64 6464, !15, i64 6472, !10, i64 6480, !10, i64 6484, !10, i64 6488, !10, i64 6492, !15, i64 6496, !15, i64 6504, !10, i64 6512, !10, i64 6516, !10, i64 6520, !10, i64 6524, !10, i64 6528, !10, i64 6532, !16, i64 6536, !11, i64 6544, !10, i64 6616, !10, i64 6620, !10, i64 6624, !34, i64 6632, !10, i64 6640, !10, i64 6644, !10, i64 6648, !10, i64 6652, !10, i64 6656, !10, i64 6660, !10, i64 6664, !10, i64 6668, !10, i64 6672, !16, i64 6680, !16, i64 6688, !10, i64 6696, !10, i64 6700, !15, i64 6704, !15, i64 6712, !15, i64 6720, !15, i64 6728, !15, i64 6736, !10, i64 6744, !10, i64 6748, !16, i64 6752, !10, i64 6760, !10, i64 6764, !24, i64 6768, !24, i64 6776, !15, i64 6784, !15, i64 6792, !15, i64 6800, !10, i64 6808, !10, i64 6812, !15, i64 6816, !10, i64 6824, !10, i64 6828, !10, i64 6832, !10, i64 6836, !10, i64 6840, !15, i64 6848, !10, i64 6856, !11, i64 6860, !11, i64 6864, !17, i64 6872, !10, i64 6880, !24, i64 6888, !24, i64 6896, !24, i64 6904, !24, i64 6912, !10, i64 6920, !35, i64 6928, !10, i64 6936, !16, i64 6944, !10, i64 6952, !10, i64 6956, !10, i64 6960, !15, i64 6968, !15, i64 6976, !15, i64 6984, !15, i64 6992, !10, i64 7000, !10, i64 7004, !10, i64 7008, !10, i64 7012, !10, i64 7016, !10, i64 7020, !36, i64 7024, !10, i64 7032, !10, i64 7036, !16, i64 7040, !10, i64 7048, !10, i64 7052, !10, i64 7056, !11, i64 7060, !10, i64 7068, !37, i64 7072, !10, i64 7088, !16, i64 7096, !10, i64 7104, !16, i64 7112, !10, i64 7120, !10, i64 7124, !10, i64 7128, !10, i64 7132, !10, i64 7136, !10, i64 7140, !10, i64 7144, !11, i64 7148, !11, i64 7189, !24, i64 7232, !24, i64 7240, !11, i64 7248, !24, i64 7256, !10, i64 7264, !10, i64 7268, !39, i64 7272, !24, i64 7280, !24, i64 7288, !40, i64 7296, !15, i64 7344, !15, i64 7352, !10, i64 7360, !10, i64 7364, !10, i64 7368, !10, i64 7372, !10, i64 7376, !10, i64 7380, !10, i64 7384, !10, i64 7388, !10, i64 7392, !15, i64 7400, !25, i64 7408, !15, i64 7416, !16, i64 7424, !16, i64 7432, !16, i64 7440, !10, i64 7448, !10, i64 7452, !28, i64 7456, !28, i64 7464, !10, i64 7472, !10, i64 7476, !10, i64 7480, !10, i64 7484, !15, i64 7488, !15, i64 7496, !15, i64 7504, !15, i64 7512, !15, i64 7520, !41, i64 7528, !41, i64 7536, !10, i64 7544, !16, i64 7552, !15, i64 7560, !10, i64 7568, !10, i64 7572, !10, i64 7576, !15, i64 7584, !15, i64 7592, !10, i64 7600, !10, i64 7604, !10, i64 7608, !10, i64 7612, !16, i64 7616, !10, i64 7624, !10, i64 7628, !11, i64 7632, !24, i64 7680, !10, i64 7688, !25, i64 7696, !10, i64 7704, !24, i64 7712, !24, i64 7720, !15, i64 7728, !15, i64 7736, !10, i64 7744, !24, i64 7752, !15, i64 7760, !10, i64 7768, !10, i64 7772, !10, i64 7776, !10, i64 7780, !10, i64 7784, !24, i64 7792, !11, i64 7800, !10, i64 7812, !10, i64 7816, !10, i64 7820, !11, i64 7824, !25, i64 7872, !25, i64 7880, !10, i64 7888, !15, i64 7896, !25, i64 7904, !25, i64 7912, !10, i64 7920, !10, i64 7924, !10, i64 7928, !10, i64 7932, !15, i64 7936, !15, i64 7944, !15, i64 7952, !15, i64 7960, !15, i64 7968, !15, i64 7976, !15, i64 7984, !15, i64 7992, !15, i64 8000, !24, i64 8008, !24, i64 8016, !24, i64 8024, !10, i64 8032, !10, i64 8036, !11, i64 8040, !15, i64 8048, !11, i64 8056, !24, i64 8064, !24, i64 8072, !10, i64 8080, !15, i64 8088, !24, i64 8096, !15, i64 8104, !24, i64 8112, !42, i64 8120, !21, i64 8128, !10, i64 8136, !42, i64 8144, !10, i64 8152, !10, i64 8156, !10, i64 8160, !10, i64 8164, !24, i64 8168, !24, i64 8176, !16, i64 8184, !24, i64 8192, !24, i64 8200, !24, i64 8208, !10, i64 8216, !43, i64 8224, !10, i64 8232, !10, i64 8236, !10, i64 8240, !10, i64 8244, !10, i64 8248, !16, i64 8256, !16, i64 8264, !16, i64 8272, !10, i64 8280, !10, i64 8284, !10, i64 8288, !10, i64 8292, !10, i64 8296, !10, i64 8300, !10, i64 8304, !10, i64 8308, !24, i64 8312, !10, i64 8320, !10, i64 8324, !10, i64 8328, !24, i64 8336, !10, i64 8344, !10, i64 8348, !10, i64 8352, !10, i64 8356, !10, i64 8360, !10, i64 8364, !10, i64 8368, !10, i64 8372, !10, i64 8376, !24, i64 8384, !21, i64 8392, !16, i64 8400, !15, i64 8408, !16, i64 8416, !10, i64 8424, !44, i64 8432, !10, i64 8472, !15, i64 8480, !10, i64 8488, !10, i64 8492, !10, i64 8496, !45, i64 8504, !16, i64 8624, !16, i64 8632, !16, i64 8640, !16, i64 8648, !46, i64 8656, !24, i64 8664, !10, i64 8672, !16, i64 8680, !10, i64 8688, !10, i64 8692, !10, i64 8696, !15, i64 8704, !10, i64 8712, !10, i64 8716, !16, i64 8720, !10, i64 8728, !10, i64 8732}
!15 = !{!"long", !11, i64 0}
!16 = !{!"p1 omnipotent char", !17, i64 0}
!17 = !{!"any pointer", !11, i64 0}
!18 = !{!"p2 omnipotent char", !19, i64 0}
!19 = !{!"any p2 pointer", !17, i64 0}
!20 = !{!"p1 _ZTS7redisDb", !17, i64 0}
!21 = !{!"p1 _ZTS4dict", !17, i64 0}
!22 = !{!"p1 _ZTS11aeEventLoop", !17, i64 0}
!23 = !{!"p1 _ZTS3rax", !17, i64 0}
!24 = !{!"long long", !11, i64 0}
!25 = !{!"p1 _ZTS4list", !17, i64 0}
!26 = !{!"connListener", !11, i64 0, !10, i64 64, !18, i64 72, !10, i64 80, !10, i64 84, !27, i64 88, !17, i64 96}
!27 = !{!"p1 _ZTS14ConnectionType", !17, i64 0}
!28 = !{!"p1 _ZTS6client", !17, i64 0}
!29 = !{!"pendingCommandPool", !30, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!30 = !{!"p2 _ZTS14pendingCommand", !19, i64 0}
!31 = !{!"double", !11, i64 0}
!32 = !{!"malloc_stats", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80}
!33 = !{!"p1 _ZTS11hotkeyStats", !17, i64 0}
!34 = !{!"p1 double", !17, i64 0}
!35 = !{!"p1 _ZTS9saveparam", !17, i64 0}
!36 = !{!"p2 _ZTS10connection", !19, i64 0}
!37 = !{!"redisOpArray", !38, i64 0, !10, i64 8, !10, i64 12}
!38 = !{!"p1 _ZTS7redisOp", !17, i64 0}
!39 = !{!"p1 _ZTS11replBacklog", !17, i64 0}
!40 = !{!"replDataBuf", !25, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40}
!41 = !{!"p1 _ZTS10connection", !17, i64 0}
!42 = !{!"p1 _ZTS8_kvstore", !17, i64 0}
!43 = !{!"p1 _ZTS12clusterState", !17, i64 0}
!44 = !{!"aclInfo", !24, i64 0, !24, i64 8, !24, i64 16, !24, i64 24, !24, i64 32}
!45 = !{!"redisTLSContextConfig", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !10, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116}
!46 = !{!"p1 _ZTS14sentinelConfig", !17, i64 0}
!47 = !{!48, !16, i64 16}
!48 = !{!"evictionPoolEntry", !24, i64 0, !16, i64 8, !16, i64 16, !10, i64 24, !10, i64 28}
!49 = !{!48, !10, i64 24}
!50 = !{!51, !51, i64 0}
!51 = !{!"p1 _ZTS17evictionPoolEntry", !17, i64 0}
!52 = !{!14, !10, i64 7772}
!53 = !{!54, !54, i64 0}
!54 = !{!"p1 _ZTS9dictEntry", !17, i64 0}
!55 = !{!14, !10, i64 7768}
!56 = !{!14, !10, i64 7784}
!57 = !{!14, !11, i64 8040}
!58 = !{!48, !16, i64 8}
!59 = !{!48, !24, i64 0}
!60 = !{!11, !11, i64 0}
!61 = !{!62, !62, i64 0}
!62 = !{!"short", !11, i64 0}
!63 = !{!15, !15, i64 0}
!64 = !{!65, !10, i64 72}
!65 = !{!"redisDb", !42, i64 0, !42, i64 8, !66, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !21, i64 64, !10, i64 72, !24, i64 80, !15, i64 88}
!66 = !{!"p1 _ZTS7_estore", !17, i64 0}
!67 = !{!48, !10, i64 28}
!68 = distinct !{!68, !69}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!14, !10, i64 7780}
!71 = !{!14, !15, i64 7400}
!72 = !{!14, !24, i64 7280}
!73 = !{!14, !10, i64 6668}
!74 = !{!14, !16, i64 6752}
!75 = !{!14, !24, i64 7752}
!76 = !{!77, !77, i64 0}
!77 = !{!"float", !11, i64 0}
!78 = !{!14, !22, i64 88}
!79 = !{!14, !10, i64 2476}
!80 = !{!14, !16, i64 7440}
!81 = !{!14, !28, i64 1496}
!82 = !{!83, !15, i64 8}
!83 = !{!"client", !15, i64 0, !15, i64 8, !41, i64 16, !11, i64 24, !11, i64 25, !11, i64 26, !11, i64 27, !10, i64 28, !20, i64 32, !84, i64 40, !84, i64 48, !84, i64 56, !16, i64 64, !15, i64 72, !15, i64 80, !10, i64 88, !85, i64 96, !10, i64 104, !10, i64 108, !85, i64 112, !15, i64 120, !86, i64 128, !87, i64 152, !88, i64 160, !10, i64 168, !85, i64 176, !10, i64 184, !10, i64 188, !89, i64 192, !89, i64 200, !89, i64 208, !89, i64 216, !17, i64 224, !10, i64 232, !10, i64 236, !15, i64 240, !25, i64 248, !24, i64 256, !25, i64 264, !15, i64 272, !15, i64 280, !15, i64 288, !10, i64 296, !10, i64 300, !54, i64 304, !15, i64 312, !15, i64 320, !15, i64 328, !24, i64 336, !24, i64 344, !10, i64 352, !10, i64 356, !10, i64 360, !10, i64 364, !15, i64 368, !15, i64 376, !16, i64 384, !24, i64 392, !24, i64 400, !24, i64 408, !24, i64 416, !24, i64 424, !24, i64 432, !24, i64 440, !24, i64 448, !24, i64 456, !24, i64 464, !24, i64 472, !11, i64 480, !10, i64 524, !16, i64 528, !10, i64 536, !10, i64 540, !15, i64 544, !90, i64 552, !91, i64 592, !24, i64 664, !25, i64 672, !21, i64 680, !21, i64 688, !21, i64 696, !16, i64 704, !16, i64 712, !92, i64 720, !92, i64 728, !92, i64 736, !17, i64 744, !17, i64 752, !17, i64 760, !17, i64 768, !17, i64 776, !15, i64 784, !23, i64 792, !15, i64 800, !10, i64 808, !92, i64 816, !17, i64 824, !92, i64 832, !15, i64 840, !92, i64 848, !15, i64 856, !92, i64 864, !15, i64 872, !93, i64 880, !93, i64 904, !15, i64 928, !15, i64 936, !15, i64 944, !24, i64 952, !15, i64 960, !15, i64 968, !16, i64 976, !11, i64 984, !94, i64 992, !24, i64 1000, !24, i64 1008, !24, i64 1016, !95, i64 1024, !16, i64 1032, !11, i64 1040}
!84 = !{!"p1 _ZTS11redisObject", !17, i64 0}
!85 = !{!"p2 _ZTS11redisObject", !19, i64 0}
!86 = !{!"pendingCommandList", !87, i64 0, !87, i64 8, !10, i64 16, !10, i64 20}
!87 = !{!"p1 _ZTS14pendingCommand", !17, i64 0}
!88 = !{!"p1 _ZTS14deferredObject", !17, i64 0}
!89 = !{!"p1 _ZTS12redisCommand", !17, i64 0}
!90 = !{!"multiState", !30, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !15, i64 24, !10, i64 32}
!91 = !{!"blockingState", !10, i64 0, !24, i64 8, !10, i64 16, !21, i64 24, !10, i64 32, !10, i64 36, !24, i64 40, !17, i64 48, !17, i64 56, !15, i64 64}
!92 = !{!"p1 _ZTS8listNode", !17, i64 0}
!93 = !{!"listNode", !92, i64 0, !92, i64 8, !17, i64 16}
!94 = !{!"p1 _ZTS13payloadHeader", !17, i64 0}
!95 = !{!"p1 _ZTS7asmTask", !17, i64 0}
!96 = !{!14, !25, i64 1480}
!97 = !{!98, !15, i64 40}
!98 = !{!"list", !92, i64 0, !92, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !15, i64 40}
!99 = !{!14, !10, i64 7776}
!100 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!101 = !{!14, !24, i64 8384}
!102 = !{!17, !17, i64 0}
!103 = distinct !{null}
!104 = !{!14, !10, i64 7080}
!105 = !{!14, !10, i64 6516}
!106 = !{!14, !20, i64 64}
!107 = !{!42, !42, i64 0}
!108 = distinct !{!108, !69}
!109 = distinct !{!109, !69}
!110 = distinct !{!110, !69}
!111 = distinct !{!111, !69}
!112 = !{!24, !24, i64 0}
!113 = !{!14, !10, i64 8360}
!114 = distinct !{null}
!115 = !{ptr @startEvictionTimeProc}
!116 = distinct !{!116, !69}
!117 = !{!14, !15, i64 2640}
!118 = !{!14, !24, i64 2632}
end_hunk_0
