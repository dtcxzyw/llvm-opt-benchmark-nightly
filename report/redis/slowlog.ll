inline.NumInlined: 6
inline.NumDeleted: 2
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
%struct.sharedObjectsStruct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [10 x ptr], [10000 x ptr], [32 x ptr], [32 x ptr], [32 x ptr], [32 x ptr], ptr, ptr }
%struct.listIter = type { ptr, i32 }

@.str = private unnamed_addr constant [24 x i8] c"... (%d more arguments)\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"... (%lu more bytes)\00", align 1
@server = external local_unnamed_addr global %struct.redisServer, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"GET [<count>]\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"    Return top <count> entries from the slowlog (default: 10, -1 mean all).\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"    Entries are made of:\00", align 1
@.str.6 = private unnamed_addr constant [78 x i8] c"    id, timestamp, time in microseconds, arguments array, client IP and port,\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"    client name\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"LEN\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"    Return the length of the slowlog.\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"RESET\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"    Reset the slowlog.\00", align 1
@__const.slowlogCommand.help = private unnamed_addr constant [10 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr null], align 16
@.str.12 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@shared = external local_unnamed_addr global %struct.sharedObjectsStruct, align 8
@.str.13 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"count should be greater than or equal to -1\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @slowlogCreateEntry(ptr noundef %0, ptr noundef readonly captures(none) %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(56) ptr @zmalloc(i64 noundef 56) #7 ; 8 uses
  %i.b = icmp sgt i32 %2, 32
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %2, i32 32) ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %spec.store.select, ptr %i.c, align 8, !tbaa !13
  %i.d = sext i32 %spec.store.select to i64
  %i.e = shl nsw i64 %i.d, 3
  %i.f = tail call noalias ptr @zmalloc(i64 noundef %i.e) #7 ; 5 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !21
  %i.g = icmp sgt i32 %2, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = add nsw i32 %spec.store.select, -1
  %i.i = add nuw i32 %2, 1
  %i.j = sub i32 %i.i, %spec.store.select
  %i.k = zext i32 %i.h to i64                     ; 2 uses
  %wide.trip.count = zext nneg i32 %spec.store.select to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.k
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 6 uses
  %i.m = icmp eq i64 %indvars.iv, %i.k
  %or.cond = select i1 %i.b, i1 %i.m, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = tail call ptr @sdsempty() #8
  %i.o = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.n, ptr noundef nonnull @.str, i32 noundef %i.j) #8
  %i.p = tail call ptr @createObject(i32 noundef 0, ptr noundef %i.o) #8
  store ptr %i.p, ptr %i.l, align 8, !tbaa !22
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !22   ; 4 uses
  %i.s = load i64, ptr %i.r, align 8              ; 3 uses
  %i.t = and i64 %i.s, 15
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.e, label %sdslen.exit.thread

bb.e:                                             ; preds = %bb.d
  %4 = trunc i64 %i.s to i8
  switch i8 %4, label %sdslen.exit.thread [
    i8 0, label %bb.f
    i8 -128, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !24   ; 6 uses
  %i.x = getelementptr i8, ptr %i.w, i64 -1
  %.val.i = load i8, ptr %i.x, align 1, !tbaa !26
  %i.y = and i8 %.val.i, 7
  switch i8 %i.y, label %sdslen.exit.thread [
    i8 4, label %bb.j
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 -3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !26
  %i.ab = zext i8 %i.aa to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds i8, ptr %i.w, i64 -5
  %i.ad = load i16, ptr %i.ac, align 1, !tbaa !27
  %i.ae = zext i16 %i.ad to i64
  br label %sdslen.exit

bb.i:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds i8, ptr %i.w, i64 -9
  %i.ag = load i32, ptr %i.af, align 1, !tbaa !9
  %i.ah = zext i32 %i.ag to i64
  br label %sdslen.exit

bb.j:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds i8, ptr %i.w, i64 -17
  %i.aj = load i64, ptr %i.ai, align 1, !tbaa !29
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %.0.i = phi i64 [ %i.aj, %bb.j ], [ %i.ah, %bb.i ], [ %i.ab, %bb.g ], [ %i.ae, %bb.h ]
  %i.ak = icmp ugt i64 %.0.i, 128
  br i1 %i.ak, label %bb.k, label %sdslen.exit.thread

bb.k:                                             ; preds = %sdslen.exit
  %i.al = tail call ptr @sdsnewlen(ptr noundef nonnull %i.w, i64 noundef 128) #8
  %i.am = load ptr, ptr %i.q, align 8, !tbaa !22
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !24 ; 5 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 -1
  %.val.i56 = load i8, ptr %i.ap, align 1, !tbaa !26 ; 2 uses
  %i.aq = and i8 %.val.i56, 7
  switch i8 %i.aq, label %sdslen.exit58 [
    i8 0, label %bb.l
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.o
    i8 4, label %bb.p
  ]

bb.l:                                             ; preds = %bb.k
  %i.ar = lshr i8 %.val.i56, 3
  %i.as = zext nneg i8 %i.ar to i64
  br label %sdslen.exit58

bb.m:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds i8, ptr %i.ao, i64 -3
  %i.au = load i8, ptr %i.at, align 1, !tbaa !26
  %i.av = zext i8 %i.au to i64
  br label %sdslen.exit58

bb.n:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds i8, ptr %i.ao, i64 -5
  %i.ax = load i16, ptr %i.aw, align 1, !tbaa !27
  %i.ay = zext i16 %i.ax to i64
  br label %sdslen.exit58

bb.o:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds i8, ptr %i.ao, i64 -9
  %i.ba = load i32, ptr %i.az, align 1, !tbaa !9
  %i.bb = zext i32 %i.ba to i64
  br label %sdslen.exit58

bb.p:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds i8, ptr %i.ao, i64 -17
  %i.bd = load i64, ptr %i.bc, align 1, !tbaa !29
  br label %sdslen.exit58

sdslen.exit58:                                    ; preds = %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.0.i57 = phi i64 [ %i.bd, %bb.p ], [ %i.as, %bb.l ], [ %i.av, %bb.m ], [ %i.ay, %bb.n ], [ %i.bb, %bb.o ], [ 0, %bb.k ]
  %i.be = add i64 %.0.i57, -128
  %i.bf = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.al, ptr noundef nonnull @.str.1, i64 noundef %i.be) #8
  %i.bg = tail call ptr @createObject(i32 noundef 0, ptr noundef %i.bf) #8
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !22
  br label %bb.s

sdslen.exit.thread:                               ; preds = %bb.f, %bb.e, %sdslen.exit, %bb.d
  %i.bi = and i64 %i.s, 2147483392
  %i.bj = icmp eq i64 %i.bi, 2147483392
  br i1 %i.bj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %sdslen.exit.thread
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  store ptr %i.r, ptr %i.bk, align 8, !tbaa !22
  br label %bb.s

bb.r:                                             ; preds = %sdslen.exit.thread
  %i.bl = tail call ptr @dupStringObject(ptr noundef nonnull %i.r) #8
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !22
  br label %bb.s

bb.s:                                             ; preds = %bb.c, %bb.q, %bb.r, %sdslen.exit58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !30

._crit_edge:                                      ; preds = %bb.s, %bb.a
  %i.bn = tail call i64 @time(ptr noundef null) #8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %3, ptr %i.bp, align 8, !tbaa !33
  %i.bq = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2832), align 8, !tbaa !34 ; 2 uses
  %i.br = add nsw i64 %i.bq, 1
  store i64 %i.br, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2832), align 8, !tbaa !34
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.bq, ptr %i.bs, align 8, !tbaa !63
  %i.bt = tail call ptr @getClientPeerId(ptr noundef %0) #8
  %i.bu = tail call ptr @sdsnew(ptr noundef %i.bt) #8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !64
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !65 ; 2 uses
  %.not = icmp eq ptr %i.bx, null
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %._crit_edge
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !24
  %i.ca = tail call ptr @sdsnew(ptr noundef %i.bz) #8
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge
  %i.cb = tail call ptr @sdsempty() #8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cc = phi ptr [ %i.ca, %bb.t ], [ %i.cb, %bb.u ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !78
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: allocsize(0)
declare noalias ptr @zmalloc(i64 noundef) local_unnamed_addr #2

declare ptr @createObject(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @sdscatprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @sdsempty() local_unnamed_addr #3

declare ptr @sdsnewlen(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @dupStringObject(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #4

declare ptr @sdsnew(ptr noundef) local_unnamed_addr #3

declare ptr @getClientPeerId(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @slowlogFreeEntry(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22
  tail call void @decrRefCount(ptr noundef %i.f) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.g = load i32, ptr %i.a, align 8, !tbaa !13
  %i.h = sext i32 %i.g to i64
  %i.i = icmp slt i64 %indvars.iv.next, %i.h
  br i1 %i.i, label %.lr.ph, label %._crit_edge, !llvm.loop !79

end_hunk_0
