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
  %i.a = tail call noalias dereferenceable_or_null(56) ptr @zmalloc(i64 noundef 56) #7 ; 11 uses
  %i.b = icmp sgt i32 %2, 32
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %2, i32 32) ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %spec.store.select, ptr %i.c, align 8, !tbaa !13
  %i.d = sext i32 %spec.store.select to i64
  %i.e = shl nsw i64 %i.d, 3
  %i.f = tail call noalias ptr @zmalloc(i64 noundef %i.e) #7 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !21
  %i.g = icmp sgt i32 %2, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = add nsw i32 %spec.store.select, -1
  %i.i = add nuw i32 %2, 1
  %i.j = sub i32 %i.i, %spec.store.select
  %i.k = zext i32 %i.h to i64                     ; 2 uses
  %wide.trip.count = zext nneg i32 %spec.store.select to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.s
  %4 = phi ptr [ %i.f, %.lr.ph ], [ %9, %bb.s ]   ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 6 uses
  %i.l = icmp eq i64 %indvars.iv, %i.k
  %or.cond = select i1 %i.b, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = tail call ptr @sdsempty() #8
  %i.n = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.m, ptr noundef nonnull @.str, i32 noundef %i.j) #8
  %i.o = tail call ptr @createObject(i32 noundef 0, ptr noundef %i.n) #8
  %5 = load ptr, ptr %i.a, align 8, !tbaa !21     ; 2 uses
  %6 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.k
  store ptr %i.o, ptr %6, align 8, !tbaa !22
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !22   ; 4 uses
  %i.r = load i64, ptr %i.q, align 8              ; 3 uses
  %i.s = and i64 %i.r, 15
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.e, label %sdslen.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.u = trunc i64 %i.r to i32
  %i.v = lshr exact i32 %i.u, 4
  %i.w = and i32 %i.v, 15
  switch i32 %i.w, label %sdslen.exit.thread [
    i32 0, label %bb.f
    i32 8, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !24   ; 6 uses
  %i.z = getelementptr i8, ptr %i.y, i64 -1
  %.val.i = load i8, ptr %i.z, align 1, !tbaa !26
  %i.aa = and i8 %.val.i, 7
  switch i8 %i.aa, label %sdslen.exit.thread [
    i8 4, label %bb.j
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds i8, ptr %i.y, i64 -3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !26
  %i.ad = zext i8 %i.ac to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds i8, ptr %i.y, i64 -5
  %i.af = load i16, ptr %i.ae, align 1, !tbaa !27
  %i.ag = zext i16 %i.af to i64
  br label %sdslen.exit

bb.i:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds i8, ptr %i.y, i64 -9
  %i.ai = load i32, ptr %i.ah, align 1, !tbaa !9
  %i.aj = zext i32 %i.ai to i64
  br label %sdslen.exit

bb.j:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds i8, ptr %i.y, i64 -17
  %i.al = load i64, ptr %i.ak, align 1, !tbaa !29
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %.0.i = phi i64 [ %i.al, %bb.j ], [ %i.aj, %bb.i ], [ %i.ad, %bb.g ], [ %i.ag, %bb.h ]
  %i.am = icmp ugt i64 %.0.i, 128
  br i1 %i.am, label %bb.k, label %sdslen.exit.thread

bb.k:                                             ; preds = %sdslen.exit
  %i.an = tail call ptr @sdsnewlen(ptr noundef nonnull %i.y, i64 noundef 128) #8
  %i.ao = load ptr, ptr %i.p, align 8, !tbaa !22
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !24 ; 5 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 -1
  %.val.i56 = load i8, ptr %i.ar, align 1, !tbaa !26 ; 2 uses
  %i.as = and i8 %.val.i56, 7
  switch i8 %i.as, label %sdslen.exit58 [
    i8 0, label %bb.l
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.o
    i8 4, label %bb.p
  ]

bb.l:                                             ; preds = %bb.k
  %i.at = lshr i8 %.val.i56, 3
  %i.au = zext nneg i8 %i.at to i64
  br label %sdslen.exit58

bb.m:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds i8, ptr %i.aq, i64 -3
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !26
  %i.ax = zext i8 %i.aw to i64
  br label %sdslen.exit58

bb.n:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds i8, ptr %i.aq, i64 -5
  %i.az = load i16, ptr %i.ay, align 1, !tbaa !27
  %i.ba = zext i16 %i.az to i64
  br label %sdslen.exit58

bb.o:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds i8, ptr %i.aq, i64 -9
  %i.bc = load i32, ptr %i.bb, align 1, !tbaa !9
  %i.bd = zext i32 %i.bc to i64
  br label %sdslen.exit58

bb.p:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds i8, ptr %i.aq, i64 -17
  %i.bf = load i64, ptr %i.be, align 1, !tbaa !29
  br label %sdslen.exit58

sdslen.exit58:                                    ; preds = %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.0.i57 = phi i64 [ %i.bf, %bb.p ], [ %i.au, %bb.l ], [ %i.ax, %bb.m ], [ %i.ba, %bb.n ], [ %i.bd, %bb.o ], [ 0, %bb.k ]
  %i.bg = add i64 %.0.i57, -128
  %i.bh = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.an, ptr noundef nonnull @.str.1, i64 noundef %i.bg) #8
  %i.bi = tail call ptr @createObject(i32 noundef 0, ptr noundef %i.bh) #8
  %7 = load ptr, ptr %i.a, align 8, !tbaa !21     ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !22
  br label %bb.s

sdslen.exit.thread:                               ; preds = %bb.f, %bb.e, %sdslen.exit, %bb.d
  %i.bk = and i64 %i.r, 2147483392
  %i.bl = icmp eq i64 %i.bk, 2147483392
  br i1 %i.bl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %sdslen.exit.thread
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  store ptr %i.q, ptr %i.bm, align 8, !tbaa !22
  br label %bb.s

bb.r:                                             ; preds = %sdslen.exit.thread
  %i.bn = tail call ptr @dupStringObject(ptr noundef nonnull %i.q) #8
  %8 = load ptr, ptr %i.a, align 8, !tbaa !21     ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !22
  br label %bb.s

bb.s:                                             ; preds = %bb.c, %bb.q, %bb.r, %sdslen.exit58
  %9 = phi ptr [ %5, %bb.c ], [ %4, %bb.q ], [ %8, %bb.r ], [ %7, %sdslen.exit58 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !30

._crit_edge:                                      ; preds = %bb.s, %bb.a
  %i.bp = tail call i64 @time(ptr noundef null) #8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !32
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %3, ptr %i.br, align 8, !tbaa !33
  %i.bs = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2832), align 8, !tbaa !34 ; 2 uses
  %i.bt = add nsw i64 %i.bs, 1
  store i64 %i.bt, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2832), align 8, !tbaa !34
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.bs, ptr %i.bu, align 8, !tbaa !63
  %i.bv = tail call ptr @getClientPeerId(ptr noundef %0) #8
  %i.bw = tail call ptr @sdsnew(ptr noundef %i.bv) #8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !64
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !65 ; 2 uses
  %.not = icmp eq ptr %i.bz, null
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %._crit_edge
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !24
  %i.cc = tail call ptr @sdsnew(ptr noundef %i.cb) #8
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge
  %i.cd = tail call ptr @sdsempty() #8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ce = phi ptr [ %i.cc, %bb.t ], [ %i.cd, %bb.u ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !78
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

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !21
  tail call void @zfree(ptr noundef %i.j) #8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !64
  tail call void @sdsfree(ptr noundef %i.l) #8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !78
  tail call void @sdsfree(ptr noundef %i.n) #8
  tail call void @zfree(ptr noundef nonnull %0) #8
  ret void
}

declare void @decrRefCount(ptr noundef) local_unnamed_addr #3

declare void @zfree(ptr noundef) local_unnamed_addr #3

declare void @sdsfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @slowlogInit() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @listCreate() #8           ; 2 uses
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2824), align 8, !tbaa !80
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2832), align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @slowlogFreeEntry, ptr %i.b, align 8, !tbaa !81
  ret void
}

declare ptr @listCreate() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @slowlogPushEntryIfNeeded(ptr noundef %0, ptr noundef readonly captures(none) %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2840), align 8, !tbaa !83 ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2848), align 8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp slt i64 %3, %i.a
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2824), align 8, !tbaa !80
  %i.f = tail call ptr @slowlogCreateEntry(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3)
  %i.g = tail call ptr @listAddNodeHead(ptr noundef %i.e, ptr noundef %i.f) #8 ; 0 uses
  %.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2848), align 8, !tbaa !84
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi i64 [ %.pre, %bb.c ], [ %i.c, %bb.b ]
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2824), align 8, !tbaa !80 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !85
  %i.l = icmp ugt i64 %i.k, %i.h
  br i1 %i.l, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %i.m = phi ptr [ %i.p, %.lr.ph ], [ %i.i, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !86
  tail call void @listDelNode(ptr noundef nonnull %i.m, ptr noundef %i.o) #8
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2824), align 8, !tbaa !80 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !85
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2848), align 8, !tbaa !84
  %i.t = icmp ugt i64 %i.r, %i.s
  br i1 %i.t, label %.lr.ph, label %.loopexit, !llvm.loop !87

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.a
  ret void
}

declare ptr @listAddNodeHead(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @listDelNode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @slowlogReset() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2824), align 8, !tbaa !80 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !85
  %.not1 = icmp eq i64 %i.c, 0
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.d = phi ptr [ %i.g, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !86
  tail call void @listDelNode(ptr noundef nonnull %i.d, ptr noundef %i.f) #8
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2824), align 8, !tbaa !80 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !85
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !88

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @slowlogCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [10 x ptr], align 16              ; 4 uses
  %i.b = alloca i64, align 8                      ; 11 uses
  %1 = alloca %struct.listIter, align 8           ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i32, ptr %i.c, align 8, !tbaa !89   ; 2 uses
end_hunk_0
