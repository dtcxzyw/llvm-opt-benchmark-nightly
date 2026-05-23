inline.NumInlined: 56
inline.NumDeleted: 4
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
%struct.listTypeIterator = type { ptr, i8, i8, ptr, %struct.quicklistIter }
%struct.quicklistIter = type { ptr, ptr, ptr, i64, i32 }
%struct.listTypeEntry = type { ptr, ptr, %struct.quicklistEntry }
%struct.quicklistEntry = type { ptr, ptr, ptr, ptr, i64, i64, i32 }

@.str = private unnamed_addr constant [9 x i8] c"t_list.c\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Unknown list encoding\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"o->type == OBJ_LIST\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"li->subject->encoding == li->encoding\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"sdsEncodedObject(o)\00", align 1
@shared = external local_unnamed_addr global %struct.sharedObjectsStruct, align 8
@server = external local_unnamed_addr global %struct.redisServer, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"lpush\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"rpush\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"after\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"before\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"linsert\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"lset\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"quicklistNext(&iter, &qe)\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"lpop\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"rpop\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"del\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"value != NULL\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"ltrim\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"RANK\00", align 1
@.str.19 = private unnamed_addr constant [129 x i8] c"RANK can't be zero: use 1 to start from the first match, 2 from the second ... or use negative to start from the end of the list\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"COUNT\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"COUNT can't be negative\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"MAXLEN\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"MAXLEN can't be negative\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"lrem\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"listTypeLength(key) > 0\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"numkeys should be greater than 0\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"count should be greater than 0\00", align 1
@.str.31 = private unnamed_addr constant [38 x i8] c"o->encoding == OBJ_ENCODING_QUICKLIST\00", align 1
@.str.32 = private unnamed_addr constant [37 x i8] c"o->encoding == OBJ_ENCODING_LISTPACK\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @listTypeTryConversion(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef readonly captures(address_is_null) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @listTypeTryConversionRaw(ptr noundef %0, i32 noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @listTypeTryConversionRaw(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4, ptr noundef readonly captures(address_is_null) %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = load i64, ptr %0, align 8                ; 3 uses
  %7 = trunc i64 %i.c to i32
  %8 = lshr i32 %7, 4
  %9 = and i32 %8, 15
  switch i32 %9, label %bb.af [
    i32 9, label %bb.b
    i32 11, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %1, 1
  br i1 %i.d, label %listTypeTryConvertListpack.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %1, 2
  %i.e = and i64 %i.c, 240
  %i.f = icmp eq i64 %i.e, 144
  br i1 %i.f, label %bb.e, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  tail call void @_serverAssert(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str, i32 noundef 68) #8
  tail call void @abort() #9
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14   ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !17
  %.not.i = icmp eq i64 %i.j, 1
  br i1 %.not.i, label %bb.f, label %listTypeTryConvertQuicklist.exit

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i32, ptr %i.l, align 8
  %i.n = and i32 %i.m, 786432
  %.not16.i = icmp eq i32 %i.n, 524288
  br i1 %.not16.i, label %bb.g, label %listTypeTryConvertQuicklist.exit

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8032), align 8, !tbaa !21
  call void @quicklistNodeLimit(i32 noundef %i.o, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %.pre.i = load i64, ptr %i.a, align 8, !tbaa !17 ; 2 uses
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = lshr i64 %.pre.i, 1                      ; 2 uses
  store i64 %i.p, ptr %i.a, align 8, !tbaa !17
  %i.q = load i32, ptr %i.b, align 4, !tbaa !9
  %i.r = lshr i32 %i.q, 1
  store i32 %i.r, ptr %i.b, align 4, !tbaa !9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.s = phi i64 [ %i.p, %bb.h ], [ %.pre.i, %bb.g ]
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !19   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !53   ; 2 uses
  %i.w = icmp ugt i64 %i.v, %i.s
  br i1 %i.w, label %listTypeTryConvertQuicklist.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !17
  %i.z = load i32, ptr %i.b, align 4, !tbaa !9
  %i.aa = zext i32 %i.z to i64
  %i.ab = icmp ugt i64 %i.y, %i.aa
  br i1 %i.ab, label %listTypeTryConvertQuicklist.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not18.i = icmp eq ptr %5, null
  br i1 %.not18.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void %5(ptr noundef %6) #8, !inline_history !55
  %.pre19.i = load ptr, ptr %i.h, align 8, !tbaa !19 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre19.i, i64 24
  %.pre20.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !53
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ac = phi i64 [ %.pre20.i, %bb.l ], [ %i.v, %bb.k ]
  %i.ad = phi ptr [ %.pre19.i, %bb.l ], [ %i.t, %bb.k ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !56
  store ptr %i.af, ptr %i.g, align 8, !tbaa !14
  store ptr null, ptr %i.ae, align 8, !tbaa !56
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !17
  %i.ai = sub i64 %i.ah, %i.ac
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !17
  call void @quicklistRelease(ptr noundef nonnull %i.h) #8
  %i.aj = load i64, ptr %0, align 8
  %i.ak = and i64 %i.aj, -241
  %i.al = or disjoint i64 %i.ak, 176
  store i64 %i.al, ptr %0, align 8
  br label %listTypeTryConvertQuicklist.exit

listTypeTryConvertQuicklist.exit:                 ; preds = %bb.e, %bb.f, %bb.i, %bb.j, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %listTypeTryConvertListpack.exit

bb.n:                                             ; preds = %bb.a
  %i.am = icmp eq i32 %1, 2
  br i1 %i.am, label %listTypeTryConvertListpack.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = and i64 %i.c, 240
  %i.ao = icmp eq i64 %i.an, 176
  br i1 %i.ao, label %bb.q, label %bb.p, !prof !13

bb.p:                                             ; preds = %bb.o
  tail call void @_serverAssert(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str, i32 noundef 26) #8
  tail call void @abort() #9
  unreachable

bb.q:                                             ; preds = %bb.o
  %.not.i14 = icmp eq ptr %2, null
  br i1 %.not.i14, label %bb.y, label %.preheader.i

.preheader.i:                                     ; preds = %bb.q
  %.not3438.i = icmp sgt i32 %3, %4
  br i1 %.not3438.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.ap = sext i32 %3 to i64
  %i.aq = add i32 %4, 1
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.x, %.preheader.i
  %.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %.1.i, %bb.x ]
  %reass.sub = sub i32 %4, %3
  %i.ar = add i32 %reass.sub, 1
  %i.as = zext i32 %i.ar to i64
  br label %bb.y

.lr.ph.i:                                         ; preds = %bb.x, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.ap, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.x ] ; 2 uses
  %.040.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %.1.i, %bb.x ] ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !57 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8
  %10 = trunc i64 %i.av to i32
  %11 = lshr i32 %10, 4
  %12 = and i32 %11, 15
  switch i32 %12, label %bb.x [
    i32 0, label %bb.r
    i32 8, label %bb.r
  ]

bb.r:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !14 ; 5 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 -1
  %.val.i.i = load i8, ptr %i.ay, align 1, !tbaa !59 ; 2 uses
  %i.az = and i8 %.val.i.i, 7
  switch i8 %i.az, label %sdslen.exit.i [
    i8 0, label %bb.s
    i8 1, label %bb.t
    i8 2, label %bb.u
    i8 3, label %bb.v
    i8 4, label %bb.w
  ]

bb.s:                                             ; preds = %bb.r
  %i.ba = lshr i8 %.val.i.i, 3
  %i.bb = zext nneg i8 %i.ba to i64
  br label %sdslen.exit.i

bb.t:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds i8, ptr %i.ax, i64 -3
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !59
  %i.be = zext i8 %i.bd to i64
  br label %sdslen.exit.i

bb.u:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds i8, ptr %i.ax, i64 -5
  %i.bg = load i16, ptr %i.bf, align 1, !tbaa !60
  %i.bh = zext i16 %i.bg to i64
  br label %sdslen.exit.i

bb.v:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds i8, ptr %i.ax, i64 -9
  %i.bj = load i32, ptr %i.bi, align 1, !tbaa !9
  %i.bk = zext i32 %i.bj to i64
  br label %sdslen.exit.i

bb.w:                                             ; preds = %bb.r
  %i.bl = getelementptr inbounds i8, ptr %i.ax, i64 -17
  %i.bm = load i64, ptr %i.bl, align 1, !tbaa !17
  br label %sdslen.exit.i

sdslen.exit.i:                                    ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %.0.i.i = phi i64 [ %i.bm, %bb.w ], [ %i.bb, %bb.s ], [ %i.be, %bb.t ], [ %i.bh, %bb.u ], [ %i.bk, %bb.v ], [ 0, %bb.r ]
  %i.bn = add i64 %.0.i.i, %.040.i
  br label %bb.x

bb.x:                                             ; preds = %sdslen.exit.i, %.lr.ph.i
  %.1.i = phi i64 [ %i.bn, %sdslen.exit.i ], [ %.040.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.aq, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !62

bb.y:                                             ; preds = %._crit_edge.i, %bb.q
  %.029.i = phi i64 [ %i.as, %._crit_edge.i ], [ 0, %bb.q ]
  %.2.i = phi i64 [ %.0.lcssa.i, %._crit_edge.i ], [ 0, %bb.q ]
  %i.bo = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8032), align 8, !tbaa !21
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !14
  %i.br = tail call i64 @lpBytes(ptr noundef %i.bq) #8
  %i.bs = add i64 %i.br, %.2.i
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !14
  %i.bu = tail call i64 @lpLength(ptr noundef %i.bt) #8
  %i.bv = add i64 %i.bu, %.029.i
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = tail call i32 @quicklistNodeExceedsLimit(i32 noundef %i.bo, i64 noundef %i.bs, i32 noundef %i.bw) #8
  %.not35.i = icmp eq i32 %i.bx, 0
  br i1 %.not35.i, label %listTypeTryConvertListpack.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not36.i = icmp eq ptr %5, null
  br i1 %.not36.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void %5(ptr noundef %6) #8, !inline_history !64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.by = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8032), align 8, !tbaa !21
  %i.bz = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8036), align 4, !tbaa !65
  %i.ca = tail call ptr @quicklistNew(i32 noundef %i.by, i32 noundef %i.bz) #8 ; 2 uses
  %i.cb = load ptr, ptr %i.bp, align 8, !tbaa !14
  %i.cc = tail call i64 @lpLength(ptr noundef %i.cb) #8
  %.not37.i = icmp eq i64 %i.cc, 0
  %i.cd = load ptr, ptr %i.bp, align 8, !tbaa !14 ; 2 uses
  br i1 %.not37.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @quicklistAppendListpack(ptr noundef %i.ca, ptr noundef %i.cd) #8
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  tail call void @lpFree(ptr noundef %i.cd) #8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  store ptr %i.ca, ptr %i.bp, align 8, !tbaa !14
  %i.ce = load i64, ptr %0, align 8
  %i.cf = and i64 %i.ce, -241
  %i.cg = or disjoint i64 %i.cf, 144
  store i64 %i.cg, ptr %0, align 8
  br label %listTypeTryConvertListpack.exit

bb.af:                                            ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 124, ptr noundef nonnull @.str.1) #8
  tail call void @abort() #9
  unreachable

listTypeTryConvertListpack.exit:                  ; preds = %bb.ae, %bb.y, %bb.n, %bb.b, %listTypeTryConvertQuicklist.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @listTypeTryConversionAppend(ptr noundef captures(none) %0, ptr noundef readonly captures(address_is_null) %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly captures(address_is_null) %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @listTypeTryConversionRaw(ptr noundef %0, i32 noundef 1, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @listTypePush(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = load i64, ptr %0, align 8
  %3 = trunc i64 %i.b to i32
  %4 = lshr i32 %3, 4
  %5 = and i32 %4, 15
  switch i32 %5, label %bb.ac [
    i32 9, label %bb.b
    i32 11, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i32 %2, 0
  %i.d = sext i1 %i.c to i32                      ; 2 uses
  %i.e = load i64, ptr %1, align 8
  %i.f = and i64 %i.e, 240
  %i.g = icmp eq i64 %i.f, 16
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = call i32 @ll2string(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef %i.j) #8 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14
  %i.n = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #10
  call void @quicklistPush(ptr noundef %i.m, ptr noundef nonnull %i.a, i64 noundef %i.n, i32 noundef %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.ad

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !14   ; 6 uses
  %i.s = getelementptr i8, ptr %i.r, i64 -1
  %.val.i = load i8, ptr %i.s, align 1, !tbaa !59 ; 2 uses
  %i.t = and i8 %.val.i, 7
  switch i8 %i.t, label %sdslen.exit [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.u = lshr i8 %.val.i, 3
  %i.v = zext nneg i8 %i.u to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds i8, ptr %i.r, i64 -3
  %i.x = load i8, ptr %i.w, align 1, !tbaa !59
  %i.y = zext i8 %i.x to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds i8, ptr %i.r, i64 -5
  %i.aa = load i16, ptr %i.z, align 1, !tbaa !60
  %i.ab = zext i16 %i.aa to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds i8, ptr %i.r, i64 -9
  %i.ad = load i32, ptr %i.ac, align 1, !tbaa !9
  %i.ae = zext i32 %i.ad to i64
  br label %sdslen.exit

bb.i:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds i8, ptr %i.r, i64 -17
  %i.ag = load i64, ptr %i.af, align 1, !tbaa !17
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.ag, %bb.i ], [ %i.v, %bb.e ], [ %i.y, %bb.f ], [ %i.ab, %bb.g ], [ %i.ae, %bb.h ], [ 0, %bb.d ]
  tail call void @quicklistPush(ptr noundef %i.p, ptr noundef nonnull %i.r, i64 noundef %.0.i, i32 noundef %i.d) #8
  br label %bb.ad

bb.j:                                             ; preds = %bb.a
  %i.ah = load i64, ptr %1, align 8
  %i.ai = and i64 %i.ah, 240
  %i.aj = icmp eq i64 %i.ai, 16
  %i.ak = icmp eq i32 %2, 0                       ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !14 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !14 ; 12 uses
  br i1 %i.aj, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ap = ptrtoint ptr %i.ao to i64               ; 2 uses
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aq = tail call ptr @lpPrependInteger(ptr noundef %i.am, i64 noundef %i.ap) #8
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ar = tail call ptr @lpAppendInteger(ptr noundef %i.am, i64 noundef %i.ap) #8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.as = phi ptr [ %i.aq, %bb.l ], [ %i.ar, %bb.m ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.at, align 8, !tbaa !14
  br label %bb.ad

bb.o:                                             ; preds = %bb.j
  %i.au = getelementptr i8, ptr %i.ao, i64 -1
  %.val.i25 = load i8, ptr %i.au, align 1, !tbaa !59 ; 3 uses
  %i.av = and i8 %.val.i25, 7                     ; 2 uses
  br i1 %i.ak, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  switch i8 %i.av, label %sdslen.exit27 [
    i8 0, label %bb.q
    i8 1, label %bb.r
    i8 2, label %bb.s
    i8 3, label %bb.t
    i8 4, label %bb.u
  ]

bb.q:                                             ; preds = %bb.p
  %i.aw = lshr i8 %.val.i25, 3
  %i.ax = zext nneg i8 %i.aw to i64
  br label %sdslen.exit27

bb.r:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds i8, ptr %i.ao, i64 -3
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !59
  %i.ba = zext i8 %i.az to i64
  br label %sdslen.exit27

bb.s:                                             ; preds = %bb.p
  %i.bb = getelementptr inbounds i8, ptr %i.ao, i64 -5
  %i.bc = load i16, ptr %i.bb, align 1, !tbaa !60
  %i.bd = zext i16 %i.bc to i64
  br label %sdslen.exit27

bb.t:                                             ; preds = %bb.p
  %i.be = getelementptr inbounds i8, ptr %i.ao, i64 -9
  %i.bf = load i32, ptr %i.be, align 1, !tbaa !9
  %i.bg = zext i32 %i.bf to i64
  br label %sdslen.exit27

bb.u:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds i8, ptr %i.ao, i64 -17
  %i.bi = load i64, ptr %i.bh, align 1, !tbaa !17
  br label %sdslen.exit27

sdslen.exit27:                                    ; preds = %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u
  %.0.i26 = phi i64 [ %i.bi, %bb.u ], [ %i.ax, %bb.q ], [ %i.ba, %bb.r ], [ %i.bd, %bb.s ], [ %i.bg, %bb.t ], [ 0, %bb.p ]
  %i.bj = trunc i64 %.0.i26 to i32
  %i.bk = tail call ptr @lpPrepend(ptr noundef %i.am, ptr noundef nonnull %i.ao, i32 noundef %i.bj) #8
  br label %bb.ab

bb.v:                                             ; preds = %bb.o
  switch i8 %i.av, label %sdslen.exit30 [
    i8 0, label %bb.w
    i8 1, label %bb.x
    i8 2, label %bb.y
    i8 3, label %bb.z
    i8 4, label %bb.aa
  ]

bb.w:                                             ; preds = %bb.v
  %i.bl = lshr i8 %.val.i25, 3
  %i.bm = zext nneg i8 %i.bl to i64
  br label %sdslen.exit30

bb.x:                                             ; preds = %bb.v
  %i.bn = getelementptr inbounds i8, ptr %i.ao, i64 -3
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !59
  %i.bp = zext i8 %i.bo to i64
  br label %sdslen.exit30

bb.y:                                             ; preds = %bb.v
  %i.bq = getelementptr inbounds i8, ptr %i.ao, i64 -5
  %i.br = load i16, ptr %i.bq, align 1, !tbaa !60
  %i.bs = zext i16 %i.br to i64
  br label %sdslen.exit30

bb.z:                                             ; preds = %bb.v
  %i.bt = getelementptr inbounds i8, ptr %i.ao, i64 -9
  %i.bu = load i32, ptr %i.bt, align 1, !tbaa !9
  %i.bv = zext i32 %i.bu to i64
  br label %sdslen.exit30

bb.aa:                                            ; preds = %bb.v
  %i.bw = getelementptr inbounds i8, ptr %i.ao, i64 -17
  %i.bx = load i64, ptr %i.bw, align 1, !tbaa !17
  br label %sdslen.exit30

sdslen.exit30:                                    ; preds = %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa
  %.0.i29 = phi i64 [ %i.bx, %bb.aa ], [ %i.bm, %bb.w ], [ %i.bp, %bb.x ], [ %i.bs, %bb.y ], [ %i.bv, %bb.z ], [ 0, %bb.v ]
  %i.by = trunc i64 %.0.i29 to i32
  %i.bz = tail call ptr @lpAppend(ptr noundef %i.am, ptr noundef nonnull %i.ao, i32 noundef %i.by) #8
  br label %bb.ab

bb.ab:                                            ; preds = %sdslen.exit30, %sdslen.exit27
  %i.ca = phi ptr [ %i.bk, %sdslen.exit27 ], [ %i.bz, %sdslen.exit30 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !14
  br label %bb.ad

bb.ac:                                            ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 168, ptr noundef nonnull @.str.1) #8
  tail call void @abort() #9
  unreachable

bb.ad:                                            ; preds = %bb.c, %sdslen.exit, %bb.ab, %bb.n
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @ll2string(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @quicklistPush(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @lpPrependInteger(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @lpAppendInteger(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @lpPrepend(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lpAppend(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_serverPanic(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @listPopSaver(ptr noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @createStringObject(ptr noundef %0, i64 noundef %1) #8
  ret ptr %i.a
}

declare ptr @createStringObject(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @listTypePop(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca [21 x i8], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr null, ptr %i.a, align 8, !tbaa !57
  %i.e = load i64, ptr %0, align 8
  %2 = trunc i64 %i.e to i32
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 15
  switch i32 %4, label %bb.k [
    i32 9, label %bb.b
    i32 11, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.f = icmp ne i32 %1, 0
  %i.g = sext i1 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14
  %i.j = call i32 @quicklistPopCustom(ptr noundef %i.i, i32 noundef %i.g, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef nonnull %i.b, ptr noundef nonnull @listPopSaver) #8
  %i.k = icmp eq i32 %i.j, 0
  %i.l = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.m = icmp ne ptr %i.l, null
  %or.cond = select i1 %i.k, i1 true, i1 %i.m
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.b, align 8, !tbaa !66
  %i.o = call ptr @createStringObjectFromLongLong(i64 noundef %i.n) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %i.o, %bb.c ], [ %i.l, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.q = icmp eq i32 %1, 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !14   ; 2 uses
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = tail call ptr @lpFirst(ptr noundef %i.s) #8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.u = tail call ptr @lpLast(ptr noundef %i.s) #8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = phi ptr [ %i.t, %bb.f ], [ %i.u, %bb.g ] ; 3 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = call ptr @lpGet(ptr noundef nonnull %i.v, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #8
  %i.x = load i64, ptr %i.c, align 8, !tbaa !17
  %i.y = call ptr @createStringObject(ptr noundef %i.w, i64 noundef %i.x) #8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !14
  %i.ab = call ptr @lpDelete(ptr noundef %i.aa, ptr noundef nonnull %i.v, ptr noundef null) #8
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ac = phi ptr [ %i.y, %bb.i ], [ null, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 200, ptr noundef nonnull @.str.1) #8
  tail call void @abort() #9
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.d
  %i.ad = phi ptr [ %i.ac, %bb.j ], [ %i.p, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret ptr %i.ad
}

declare i32 @quicklistPopCustom(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @createStringObjectFromLongLong(i64 noundef) local_unnamed_addr #2

declare ptr @lpFirst(ptr noundef) local_unnamed_addr #2

declare ptr @lpLast(ptr noundef) local_unnamed_addr #2

declare ptr @lpGet(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lpDelete(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @listTypeLength(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %1 = trunc i64 %i.a to i32
  %2 = lshr i32 %1, 4
  %3 = and i32 %2, 15
  switch i32 %3, label %bb.d [
    i32 9, label %bb.b
    i32 11, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = tail call i64 @quicklistCount(ptr noundef %i.c) #8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.g = tail call i64 @lpLength(ptr noundef %i.f) #8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 211, ptr noundef nonnull @.str.1) #8
  tail call void @abort() #9
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ %i.g, %bb.c ]
  ret i64 %.0
}

declare i64 @quicklistCount(ptr noundef) local_unnamed_addr #2

declare i64 @lpLength(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @listTypeAllocSize(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = and i64 %i.a, 15
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssertWithInfo(ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 216) #8
  tail call void @abort() #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %1 = trunc i64 %i.a to i32
  %2 = lshr i32 %1, 4
  %3 = and i32 %2, 15
  switch i32 %3, label %bb.f [
    i32 9, label %bb.d
    i32 11, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.f = tail call i64 @quicklistAllocSize(ptr noundef %i.e) #8
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.i = tail call i64 @lpBytes(ptr noundef %i.h) #8
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 223, ptr noundef nonnull @.str.1) #8
  tail call void @abort() #9
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i64 [ %i.f, %bb.d ], [ %i.i, %bb.e ]
  ret i64 %.0
}

declare void @_serverAssertWithInfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @quicklistAllocSize(ptr noundef) local_unnamed_addr #2

declare i64 @lpBytes(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @listTypeInitIterator(ptr noundef initializes((0, 10)) %0, ptr noundef %1, i64 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !67
  %i.a = load i64, ptr %1, align 8
  %i.b = trunc i64 %i.a to i8
  %i.c = lshr i8 %i.b, 4                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.c, ptr %i.d, align 8, !tbaa !71
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %3, ptr %i.e, align 1, !tbaa !72
  switch i8 %i.c, label %bb.d [
    i8 9, label %bb.b
    i8 11, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i8 %3, 0
  %i.g = zext i1 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.k = tail call i32 @quicklistInitIteratorAtIdx(ptr noundef nonnull %i.h, ptr noundef %i.j, i32 noundef %i.g, i64 noundef %2) #8 ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14
  %i.n = tail call ptr @lpSeek(ptr noundef %i.m, i64 noundef %2) #8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.n, ptr %i.o, align 8, !tbaa !73
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 242, ptr noundef nonnull @.str.1) #8
  tail call void @abort() #9
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare i32 @quicklistInitIteratorAtIdx(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @lpSeek(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @listTypeSetIteratorDirection(ptr noundef %0, ptr noundef readonly captures(none) %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !72
  %i.c = icmp eq i8 %i.b, %2
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 %2, ptr %i.a, align 1, !tbaa !72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i8, ptr %i.d, align 8, !tbaa !71
  switch i8 %i.e, label %bb.h [
    i8 9, label %bb.c
    i8 11, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i8 %2, 0
  %i.g = zext i1 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @quicklistSetDirection(ptr noundef nonnull %i.h, i32 noundef %i.g) #8
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !67
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14   ; 2 uses
  %i.l = icmp eq i8 %2, 1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !74   ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = tail call ptr @lpNext(ptr noundef %i.k, ptr noundef %i.n) #8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.p = tail call ptr @lpPrev(ptr noundef %i.k, ptr noundef %i.n) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = phi ptr [ %i.o, %bb.e ], [ %i.p, %bb.f ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.q, ptr %i.r, align 8, !tbaa !73
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 260, ptr noundef nonnull @.str.1) #8
  tail call void @abort() #9
  unreachable

bb.i:                                             ; preds = %bb.a, %bb.g, %bb.c
  ret void
}

declare void @quicklistSetDirection(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lpNext(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lpPrev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @listTypeResetIterator(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !71
  %i.c = icmp eq i8 %i.b, 9
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @quicklistResetIterator(ptr noundef nonnull %i.d) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @quicklistResetIterator(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @listTypeNext(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !67     ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = lshr i32 %i.c, 4
  %i.e = and i32 %i.d, 15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i8, ptr %i.f, align 8, !tbaa !71    ; 2 uses
  %i.h = zext i8 %i.g to i32
  %i.i = icmp eq i32 %i.e, %i.h
  br i1 %i.i, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, i32 noundef 275) #8
  tail call void @abort() #9
  unreachable

bb.c:                                             ; preds = %bb.a
  store ptr %0, ptr %1, align 8, !tbaa !77
  switch i8 %i.g, label %bb.j [
    i8 9, label %bb.d
    i8 11, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = tail call i32 @quicklistNext(ptr noundef nonnull %i.j, ptr noundef nonnull %i.k) #8
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !73   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !74
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.q = load i8, ptr %i.p, align 1, !tbaa !72
end_hunk_0
begin_hunk_1_@listTypeInsert:bb.a
bb.f:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds i8, ptr %i.e, i64 -17
  %i.t = load i64, ptr %i.s, align 1, !tbaa !17
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.t, %bb.f ], [ %i.i, %bb.b ], [ %i.l, %bb.c ], [ %i.o, %bb.d ], [ %i.r, %bb.e ], [ 0, %bb.a ] ; 3 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !77     ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i8, ptr %i.v, align 8, !tbaa !71
  switch i8 %i.w, label %bb.k [
    i8 9, label %bb.g
    i8 11, label %bb.j
  ]

bb.g:                                             ; preds = %sdslen.exit
  switch i32 %2, label %bb.l [
    i32 1, label %bb.h
    i32 0, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @quicklistInsertAfter(ptr noundef nonnull %i.x, ptr noundef nonnull %i.y, ptr noundef nonnull %i.e, i64 noundef %.0.i) #8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @quicklistInsertBefore(ptr noundef nonnull %i.z, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.e, i64 noundef %.0.i) #8
  br label %bb.l

bb.j:                                             ; preds = %sdslen.exit
  %i.ab = icmp eq i32 %2, 1
  %i.ac = zext i1 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !14
  %i.af = trunc i64 %.0.i to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !74
  %i.ai = tail call ptr @lpInsertString(ptr noundef %i.ae, ptr noundef nonnull %i.e, i32 noundef %i.af, ptr noundef %i.ah, i32 noundef %i.ac, ptr noundef nonnull %i.ag) #8
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !14
  br label %bb.l

bb.k:                                             ; preds = %sdslen.exit
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 346, ptr noundef nonnull @.str.1) #8
  tail call void @abort() #9
  unreachable

bb.l:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  tail call void @decrRefCount(ptr noundef nonnull %i.c) #8
  ret void
}

declare ptr @getDecodedObject(ptr noundef) local_unnamed_addr #2

declare void @quicklistInsertAfter(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @quicklistInsertBefore(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @lpInsertString(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @decrRefCount(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @listTypeReplace(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !77
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.c = tail call ptr @getDecodedObject(ptr noundef %1) #8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14   ; 7 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %.val.i = load i8, ptr %i.f, align 1, !tbaa !59 ; 2 uses
  %i.g = and i8 %.val.i, 7
  switch i8 %i.g, label %sdslen.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = lshr i8 %.val.i, 3
  %i.i = zext nneg i8 %i.h to i64
  br label %sdslen.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 -3
  %i.k = load i8, ptr %i.j, align 1, !tbaa !59
  %i.l = zext i8 %i.k to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds i8, ptr %i.e, i64 -5
  %i.n = load i16, ptr %i.m, align 1, !tbaa !60
  %i.o = zext i16 %i.n to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds i8, ptr %i.e, i64 -9
  %i.q = load i32, ptr %i.p, align 1, !tbaa !9
  %i.r = zext i32 %i.q to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds i8, ptr %i.e, i64 -17
  %i.t = load i64, ptr %i.s, align 1, !tbaa !17
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.t, %bb.f ], [ %i.i, %bb.b ], [ %i.l, %bb.c ], [ %i.o, %bb.d ], [ %i.r, %bb.e ], [ 0, %bb.a ] ; 2 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !77     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i8, ptr %i.v, align 8, !tbaa !71
  switch i8 %i.w, label %bb.i [
    i8 9, label %bb.g
    i8 11, label %bb.h
  ]

bb.g:                                             ; preds = %sdslen.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @quicklistReplaceEntry(ptr noundef nonnull %i.x, ptr noundef nonnull %i.y, ptr noundef nonnull %i.e, i64 noundef %.0.i) #8
  br label %bb.j

bb.h:                                             ; preds = %sdslen.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !14
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = trunc i64 %.0.i to i32
  %i.ad = tail call ptr @lpReplace(ptr noundef %i.aa, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.e, i32 noundef %i.ac) #8
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !14
  br label %bb.j

bb.i:                                             ; preds = %sdslen.exit
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 363, ptr noundef nonnull @.str.1) #8
  tail call void @abort() #9
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  tail call void @decrRefCount(ptr noundef nonnull %i.c) #8
  ret void
}

declare void @quicklistReplaceEntry(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @lpReplace(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @listTypeReplaceAtIndex(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call ptr @getDecodedObject(ptr noundef %2) #8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 7 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -1
  %.val.i = load i8, ptr %i.e, align 1, !tbaa !59 ; 2 uses
  %i.f = and i8 %.val.i, 7
  switch i8 %i.f, label %sdslen.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = lshr i8 %.val.i, 3
  %i.h = zext nneg i8 %i.g to i64
  br label %sdslen.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds i8, ptr %i.d, i64 -3
  %i.j = load i8, ptr %i.i, align 1, !tbaa !59
  %i.k = zext i8 %i.j to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds i8, ptr %i.d, i64 -5
  %i.m = load i16, ptr %i.l, align 1, !tbaa !60
  %i.n = zext i16 %i.m to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds i8, ptr %i.d, i64 -9
  %i.p = load i32, ptr %i.o, align 1, !tbaa !9
  %i.q = zext i32 %i.p to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds i8, ptr %i.d, i64 -17
  %i.s = load i64, ptr %i.r, align 1, !tbaa !17
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.s, %bb.f ], [ %i.h, %bb.b ], [ %i.k, %bb.c ], [ %i.n, %bb.d ], [ %i.q, %bb.e ], [ 0, %bb.a ] ; 2 uses
  %i.t = load i64, ptr %0, align 8
  %3 = trunc i64 %i.t to i32
  %4 = lshr i32 %3, 4
  %5 = and i32 %4, 15
  switch i32 %5, label %bb.k [
    i32 9, label %bb.g
    i32 11, label %bb.h
  ]

bb.g:                                             ; preds = %sdslen.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !14
  %i.w = sext i32 %1 to i64
  %i.x = tail call i32 @quicklistReplaceAtIndex(ptr noundef %i.v, i64 noundef %i.w, ptr noundef nonnull %i.d, i64 noundef %.0.i) #8
  br label %bb.l

bb.h:                                             ; preds = %sdslen.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !14
  %i.aa = sext i32 %1 to i64
  %i.ab = tail call ptr @lpSeek(ptr noundef %i.z, i64 noundef %i.aa) #8 ; 2 uses
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !81
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !14
  %i.ad = trunc i64 %.0.i to i32
  %i.ae = call ptr @lpReplace(ptr noundef %i.ac, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, i32 noundef %i.ad) #8
  store ptr %i.ae, ptr %i.y, align 8, !tbaa !14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi i32 [ 1, %bb.i ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.l

bb.k:                                             ; preds = %sdslen.exit
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 389, ptr noundef nonnull @.str.1) #8
  tail call void @abort() #9
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.g
  %.1 = phi i32 [ %i.x, %bb.g ], [ %.0, %bb.j ]
  call void @decrRefCount(ptr noundef nonnull %i.b) #8
  ret i32 %.1
}

declare i32 @quicklistReplaceAtIndex(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @listTypeEqual(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %5 = trunc i64 %i.a to i32
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 15
  switch i32 %7, label %bb.b [
    i32 8, label %bb.c
    i32 0, label %bb.c
  ], !prof !82

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssertWithInfo(ptr noundef null, ptr noundef nonnull %1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, i32 noundef 407) #8
  tail call void @abort() #9
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !71
  switch i8 %i.d, label %bb.f [
    i8 9, label %bb.d
    i8 11, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.h = tail call i32 @quicklistCompare(ptr noundef nonnull %i.e, ptr noundef %i.g, i64 noundef %2, ptr noundef %3, ptr noundef %4) #8
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !74
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14
  %i.m = trunc i64 %2 to i32
  %i.n = tail call i32 @lpCompare(ptr noundef %i.j, ptr noundef %i.l, i32 noundef %i.m, ptr noundef %3, ptr noundef %4) #8
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 413, ptr noundef nonnull @.str.1) #8
  tail call void @abort() #9
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ %i.h, %bb.d ], [ %i.n, %bb.e ]
  ret i32 %.0
}

declare i32 @quicklistCompare(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lpCompare(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @listTypeDelete(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !71
  switch i8 %i.d, label %bb.i [
    i8 9, label %bb.b
    i8 11, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @quicklistDelEntry(ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #8
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !74   ; 2 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !81
  %i.i = load ptr, ptr %0, align 8, !tbaa !67
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.l = call ptr @lpDelete(ptr noundef %i.k, ptr noundef %i.h, ptr noundef nonnull %i.a) #8 ; 3 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !67
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.l, ptr %i.n, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.p = load i8, ptr %i.o, align 1, !tbaa !72
  %i.q = icmp eq i8 %i.p, 1
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !81   ; 3 uses
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.r, ptr %i.s, align 8, !tbaa !73
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq ptr %i.r, null
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = call ptr @lpPrev(ptr noundef %i.l, ptr noundef nonnull %i.r) #8
  store ptr %i.u, ptr %i.t, align 8, !tbaa !73
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = call ptr @lpLast(ptr noundef %i.l) #8
  store ptr %i.v, ptr %i.t, align 8, !tbaa !73
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 438, ptr noundef nonnull @.str.1) #8
  tail call void @abort() #9
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.b
  ret void
}

declare void @quicklistDelEntry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @listTypeDup(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = and i64 %i.a, 15
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 450) #8
  tail call void @abort() #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %1 = trunc i64 %i.a to i32
  %2 = lshr i32 %1, 4
  %3 = and i32 %2, 15
  switch i32 %3, label %bb.f [
    i32 11, label %bb.d
    i32 9, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.f = tail call ptr @lpDup(ptr noundef %i.e) #8
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.i = tail call ptr @quicklistDup(ptr noundef %i.h) #8
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 460, ptr noundef nonnull @.str.1) #8
  tail call void @abort() #9
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sink = phi ptr [ %i.i, %bb.e ], [ %i.f, %bb.d ]
  %i.j = tail call ptr @createObject(i32 noundef 1, ptr noundef %.sink) #8 ; 3 uses
  %i.k = load i64, ptr %0, align 8
  %i.l = and i64 %i.k, 240
  %i.m = load i64, ptr %i.j, align 8
  %i.n = and i64 %i.m, -241
  %i.o = or disjoint i64 %i.n, %i.l
  store i64 %i.o, ptr %i.j, align 8
  ret ptr %i.j
}

declare ptr @createObject(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lpDup(ptr noundef) local_unnamed_addr #2

declare ptr @quicklistDup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @listTypeDelRange(ptr noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %3 = trunc i64 %i.a to i32
  %4 = lshr i32 %3, 4
  %5 = and i32 %4, 15
  switch i32 %5, label %bb.d [
    i32 9, label %bb.b
    i32 11, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = tail call i32 @quicklistDelRange(ptr noundef %i.c, i64 noundef %1, i64 noundef %2) #8 ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.g = tail call ptr @lpDeleteRange(ptr noundef %i.f, i64 noundef %1, i64 noundef %2) #8
  store ptr %i.g, ptr %i.e, align 8, !tbaa !14
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 474, ptr noundef nonnull @.str.1) #8
  tail call void @abort() #9
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare i32 @quicklistDelRange(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @lpDeleteRange(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @pushGenericCommand(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 8 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !97
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57
  %i.i = call ptr @lookupKeyWriteWithLink(ptr noundef %i.d, ptr noundef %i.h, ptr noundef nonnull %i.a) #8 ; 4 uses
  store ptr %i.i, ptr %i.b, align 8, !tbaa !57
  %i.j = call i32 @checkType(ptr noundef %0, ptr noundef %i.i, i32 noundef 1) #8
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %.not32 = icmp eq ptr %i.i, null
  br i1 %.not32, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not33 = icmp eq i32 %2, 0
  br i1 %.not33, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !98
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.k) #8
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.l = call ptr @createListListpackObject() #8
  store ptr %i.l, ptr %i.b, align 8, !tbaa !57
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !97
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57
  %i.q = call ptr @dbAddByLink(ptr noundef %i.m, ptr noundef %i.p, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #8 ; 0 uses
  %.pre38.pre = load ptr, ptr %i.b, align 8, !tbaa !57
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.pre38 = phi ptr [ %.pre38.pre, %bb.e ], [ %i.i, %bb.b ] ; 2 uses
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !100
  %.not34 = icmp eq i32 %i.r, 0
  br i1 %.not34, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = call i64 @kvobjAllocSize(ptr noundef %.pre38) #8
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !57
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.t = phi ptr [ %.pre, %bb.g ], [ %.pre38, %bb.f ]
  %.031 = phi i64 [ %i.s, %bb.g ], [ 0, %bb.f ]
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !97
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !101
  %i.x = add nsw i32 %i.w, -1
  call fastcc void @listTypeTryConversionRaw(ptr noundef %i.t, i32 noundef 1, ptr noundef readonly %i.u, i32 noundef 2, i32 noundef %i.x, ptr noundef null, ptr noundef null)
  %i.y = load i32, ptr %i.v, align 8, !tbaa !101
  %i.z = icmp sgt i32 %i.y, 2
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 2, %bb.h ] ; 2 uses
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !97
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !57
  call void @listTypePush(ptr noundef %i.aa, ptr noundef %i.ad, i32 noundef %1)
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !102
  %i.af = add nsw i64 %i.ae, 1
  store i64 %i.af, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !102
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ag = load i32, ptr %i.v, align 8, !tbaa !101
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp slt i64 %indvars.iv.next, %i.ah
  br i1 %i.ai, label %.lr.ph, label %._crit_edge, !llvm.loop !103

._crit_edge:                                      ; preds = %.lr.ph, %bb.h
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !57  ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8
  %3 = trunc i64 %i.ak to i32
  %4 = lshr i32 %3, 4
  %5 = and i32 %4, 15
  switch i32 %5, label %bb.k [
    i32 9, label %bb.i
    i32 11, label %bb.j
  ]

bb.i:                                             ; preds = %._crit_edge
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !14
  %i.an = call i64 @quicklistCount(ptr noundef %i.am) #8
  br label %listTypeLength.exit

bb.j:                                             ; preds = %._crit_edge
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !14
  %i.aq = call i64 @lpLength(ptr noundef %i.ap) #8
  br label %listTypeLength.exit

bb.k:                                             ; preds = %._crit_edge
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 211, ptr noundef nonnull @.str.1) #8
  call void @abort() #9
  unreachable

listTypeLength.exit:                              ; preds = %bb.i, %bb.j
  %.0.i = phi i64 [ %i.an, %bb.i ], [ %i.aq, %bb.j ] ; 3 uses
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %.0.i) #8
  %i.ar = icmp eq i32 %1, 0
  %i.as = select i1 %i.ar, ptr @.str.5, ptr @.str.6
  %i.at = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.au = load ptr, ptr %i.e, align 8, !tbaa !97
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !57
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !57
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.at, ptr noundef %i.aw, ptr noundef %i.ax, i32 noundef 1) #8
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !97
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !57
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !104
  call void @notifyKeyspaceEvent(i32 noundef 16, ptr noundef nonnull %i.as, ptr noundef %i.ba, i32 noundef %i.bd) #8
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.bf = load ptr, ptr %i.e, align 8, !tbaa !97
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !57
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !14
  %i.bk = call i32 @getKeySlot(ptr noundef %i.bj) #8
  %i.bl = load i32, ptr %i.v, align 8, !tbaa !101
  %i.bm = add nsw i32 %i.bl, -2
  %i.bn = sext i32 %i.bm to i64
  %i.bo = sub i64 %.0.i, %i.bn
  call void @updateKeysizesHist(ptr noundef %i.be, i32 noundef %i.bk, i32 noundef 1, i64 noundef %i.bo, i64 noundef %.0.i) #8
  %i.bp = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !100
  %.not35 = icmp eq i32 %i.bp, 0
  br i1 %.not35, label %bb.m, label %bb.l

bb.l:                                             ; preds = %listTypeLength.exit
  %i.bq = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.br = load ptr, ptr %i.e, align 8, !tbaa !97
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !57
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !14
  %i.bw = call i32 @getKeySlot(ptr noundef %i.bv) #8
  %i.bx = load ptr, ptr %i.b, align 8, !tbaa !57  ; 2 uses
  %i.by = call i64 @kvobjAllocSize(ptr noundef %i.bx) #8
  call void @updateSlotAllocSize(ptr noundef %i.bq, i32 noundef %i.bw, ptr noundef %i.bx, i64 noundef %.031, i64 noundef %i.by) #8
  br label %bb.m

bb.m:                                             ; preds = %listTypeLength.exit, %bb.l, %bb.a, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

declare ptr @lookupKeyWriteWithLink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @checkType(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @addReply(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @createListListpackObject() local_unnamed_addr #2

declare ptr @dbAddByLink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @kvobjAllocSize(ptr noundef) local_unnamed_addr #2

declare void @addReplyLongLong(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @keyModified(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @notifyKeyspaceEvent(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @updateKeysizesHist(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @getKeySlot(ptr noundef) local_unnamed_addr #2

declare void @updateSlotAllocSize(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @lpushCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @pushGenericCommand(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @rpushCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @pushGenericCommand(ptr noundef %0, i32 noundef 1, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @lpushxCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @pushGenericCommand(ptr noundef %0, i32 noundef 0, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @rpushxCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @pushGenericCommand(ptr noundef %0, i32 noundef 1, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @linsertCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.listTypeIterator, align 8   ; 9 uses
  %2 = alloca %struct.listTypeEntry, align 8      ; 5 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 9 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !97   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14   ; 2 uses
  %i.i = tail call i32 @strcasecmp(ptr noundef %i.h, ptr noundef nonnull @.str.7) #10
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 @strcasecmp(ptr noundef %i.h, ptr noundef nonnull @.str.8) #10
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !107
  tail call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.m) #8
  br label %bb.ad

bb.d:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !57
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !98
  %i.q = tail call ptr @lookupKeyWriteOrReply(ptr noundef nonnull %0, ptr noundef %i.o, ptr noundef %i.p) #8 ; 17 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.ad, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.q, i32 noundef 1) #8
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.f, label %bb.ad

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !100
  %.not38 = icmp eq i32 %i.t, 0
  br i1 %.not38, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.q) #8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.036 = phi i64 [ %i.u, %bb.g ], [ 0, %bb.f ]
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !97
  tail call fastcc void @listTypeTryConversionRaw(ptr noundef nonnull %i.q, i32 noundef 1, ptr noundef readonly %i.v, i32 noundef 4, i32 noundef 4, ptr noundef null, ptr noundef null)
  store ptr %i.q, ptr %1, align 8, !tbaa !67
  %i.w = load i64, ptr %i.q, align 8
  %i.x = trunc i64 %i.w to i8
  %i.y = lshr i8 %i.x, 4                          ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i8 %i.y, ptr %i.z, align 8, !tbaa !71
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 1, ptr %i.aa, align 1, !tbaa !72
  switch i8 %i.y, label %bb.k [
    i8 9, label %bb.i
    i8 11, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !14
  %i.ae = call i32 @quicklistInitIteratorAtIdx(ptr noundef nonnull %i.ab, ptr noundef %i.ad, i32 noundef 0, i64 noundef 0) #8 ; 0 uses
  br label %listTypeInitIterator.exit

bb.j:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !14
  %i.ah = tail call ptr @lpSeek(ptr noundef %i.ag, i64 noundef 0) #8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !73
  br label %listTypeInitIterator.exit

bb.k:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 242, ptr noundef nonnull @.str.1) #8
  tail call void @abort() #9
  unreachable

listTypeInitIterator.exit:                        ; preds = %bb.i, %bb.j
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !97
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !57
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !14 ; 5 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 -1
  %.val.i = load i8, ptr %i.ao, align 1, !tbaa !59 ; 2 uses
  %i.ap = and i8 %.val.i, 7
  switch i8 %i.ap, label %sdslen.exit [
    i8 0, label %bb.l
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.o
    i8 4, label %bb.p
  ]

bb.l:                                             ; preds = %listTypeInitIterator.exit
  %i.aq = lshr i8 %.val.i, 3
  %i.ar = zext nneg i8 %i.aq to i64
  br label %sdslen.exit

bb.m:                                             ; preds = %listTypeInitIterator.exit
  %i.as = getelementptr inbounds i8, ptr %i.an, i64 -3
  %i.at = load i8, ptr %i.as, align 1, !tbaa !59
  %i.au = zext i8 %i.at to i64
  br label %sdslen.exit

bb.n:                                             ; preds = %listTypeInitIterator.exit
  %i.av = getelementptr inbounds i8, ptr %i.an, i64 -5
  %i.aw = load i16, ptr %i.av, align 1, !tbaa !60
  %i.ax = zext i16 %i.aw to i64
  br label %sdslen.exit

bb.o:                                             ; preds = %listTypeInitIterator.exit
  %i.ay = getelementptr inbounds i8, ptr %i.an, i64 -9
  %i.az = load i32, ptr %i.ay, align 1, !tbaa !9
  %i.ba = zext i32 %i.az to i64
  br label %sdslen.exit

bb.p:                                             ; preds = %listTypeInitIterator.exit
  %i.bb = getelementptr inbounds i8, ptr %i.an, i64 -17
  %i.bc = load i64, ptr %i.bb, align 1, !tbaa !17
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %listTypeInitIterator.exit, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.0.i = phi i64 [ %i.bc, %bb.p ], [ %i.ar, %bb.l ], [ %i.au, %bb.m ], [ %i.ax, %bb.n ], [ %i.ba, %bb.o ], [ 0, %listTypeInitIterator.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i64 0, ptr %i.a, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 0, ptr %i.b, align 4, !tbaa !9
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %sdslen.exit
  %i.bd = call i32 @listTypeNext(ptr noundef nonnull %1, ptr noundef nonnull %2)
  %.not39 = icmp eq i32 %i.bd, 0                  ; 2 uses
  br i1 %.not39, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !97
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !57
  %i.bh = call i32 @listTypeEqual(ptr noundef nonnull %2, ptr noundef %i.bg, i64 noundef %.0.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %.not40 = icmp eq i32 %i.bh, 0
  br i1 %.not40, label %bb.q, label %bb.s, !llvm.loop !108

bb.s:                                             ; preds = %bb.r
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !97
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !57
  call void @listTypeInsert(ptr noundef nonnull %2, ptr noundef %i.bk, i32 noundef %.0)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.q, %bb.s
  %i.bl = load i8, ptr %i.z, align 8, !tbaa !71
  %i.bm = icmp eq i8 %i.bl, 9
  br i1 %i.bm, label %bb.t, label %listTypeResetIterator.exit

bb.t:                                             ; preds = %.loopexit
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @quicklistResetIterator(ptr noundef nonnull %i.bn) #8
  br label %listTypeResetIterator.exit

listTypeResetIterator.exit:                       ; preds = %.loopexit, %bb.t
  %i.bo = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !100
  %.not41 = icmp eq i32 %i.bo, 0
  br i1 %.not41, label %bb.v, label %bb.u

bb.u:                                             ; preds = %listTypeResetIterator.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !83
  %i.br = load ptr, ptr %i.c, align 8, !tbaa !97
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !57
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !14
  %i.bw = call i32 @getKeySlot(ptr noundef %i.bv) #8
  %i.bx = call i64 @kvobjAllocSize(ptr noundef nonnull %i.q) #8
  call void @updateSlotAllocSize(ptr noundef %i.bq, i32 noundef %i.bw, ptr noundef nonnull %i.q, i64 noundef %.036, i64 noundef %i.bx) #8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %listTypeResetIterator.exit
  br i1 %.not39, label %listTypeLength.exit45, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !83
  %i.ca = load ptr, ptr %i.c, align 8, !tbaa !97
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !57
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.bz, ptr noundef %i.cc, ptr noundef nonnull %i.q, i32 noundef 1) #8
  %i.cd = load ptr, ptr %i.c, align 8, !tbaa !97
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !57
  %i.cg = load ptr, ptr %i.by, align 8, !tbaa !83
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 72
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !104
  call void @notifyKeyspaceEvent(i32 noundef 16, ptr noundef nonnull @.str.9, ptr noundef %i.cf, i32 noundef %i.ci) #8
  %i.cj = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !102
  %i.ck = add nsw i64 %i.cj, 1
  store i64 %i.ck, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !102
  %i.cl = load i64, ptr %i.q, align 8
  %3 = trunc i64 %i.cl to i32
  %4 = lshr i32 %3, 4
  %5 = and i32 %4, 15
  switch i32 %5, label %bb.z [
    i32 9, label %bb.x
    i32 11, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.cm = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !14
  %i.co = call i64 @quicklistCount(ptr noundef %i.cn) #8
  br label %listTypeLength.exit

bb.y:                                             ; preds = %bb.w
  %i.cp = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !14
  %i.cr = call i64 @lpLength(ptr noundef %i.cq) #8
  br label %listTypeLength.exit

bb.z:                                             ; preds = %bb.w
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 211, ptr noundef nonnull @.str.1) #8
  call void @abort() #9
  unreachable

listTypeLength.exit:                              ; preds = %bb.x, %bb.y
  %.0.i43 = phi i64 [ %i.co, %bb.x ], [ %i.cr, %bb.y ] ; 2 uses
  %i.cs = load ptr, ptr %i.by, align 8, !tbaa !83
  %i.ct = load ptr, ptr %i.c, align 8, !tbaa !97
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !57
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !14
  %i.cy = call i32 @getKeySlot(ptr noundef %i.cx) #8
  %i.cz = add i64 %.0.i43, -1
  call void @updateKeysizesHist(ptr noundef %i.cs, i32 noundef %i.cy, i32 noundef 1, i64 noundef %i.cz, i64 noundef %.0.i43) #8
  %i.da = load i64, ptr %i.q, align 8
  %6 = trunc i64 %i.da to i32
  %7 = lshr i32 %6, 4
  %8 = and i32 %7, 15
  switch i32 %8, label %bb.ac [
    i32 9, label %bb.aa
    i32 11, label %bb.ab
  ]

bb.aa:                                            ; preds = %listTypeLength.exit
  %i.db = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !14
  %i.dd = call i64 @quicklistCount(ptr noundef %i.dc) #8
  br label %listTypeLength.exit45

bb.ab:                                            ; preds = %listTypeLength.exit
  %i.de = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !14
  %i.dg = call i64 @lpLength(ptr noundef %i.df) #8
  br label %listTypeLength.exit45

bb.ac:                                            ; preds = %listTypeLength.exit
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 211, ptr noundef nonnull @.str.1) #8
  call void @abort() #9
  unreachable

listTypeLength.exit45:                            ; preds = %bb.v, %bb.ab, %bb.aa
  %.0.i44.sink = phi i64 [ %i.dg, %bb.ab ], [ %i.dd, %bb.aa ], [ -1, %bb.v ]
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %.0.i44.sink) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.d, %bb.e, %listTypeLength.exit45, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare void @addReplyErrorObject(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lookupKeyWriteOrReply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @llenCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !98
  %i.f = tail call ptr @lookupKeyReadOrReply(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.e) #8 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.f, i32 noundef 1) #8
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.f, align 8
  %1 = trunc i64 %i.i to i32
  %2 = lshr i32 %1, 4
  %3 = and i32 %2, 15
  switch i32 %3, label %bb.f [
    i32 9, label %bb.d
    i32 11, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.l = tail call i64 @quicklistCount(ptr noundef %i.k) #8
  br label %listTypeLength.exit

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14
  %i.o = tail call i64 @lpLength(ptr noundef %i.n) #8
  br label %listTypeLength.exit

bb.f:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 211, ptr noundef nonnull @.str.1) #8
  tail call void @abort() #9
  unreachable

listTypeLength.exit:                              ; preds = %bb.d, %bb.e
  %.0.i = phi i64 [ %i.l, %bb.d ], [ %i.o, %bb.e ]
  tail call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %.0.i) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %listTypeLength.exit
  ret void
}

declare ptr @lookupKeyReadOrReply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @lindexCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %1 = alloca %struct.listTypeIterator, align 8   ; 9 uses
  %2 = alloca %struct.listTypeEntry, align 8      ; 8 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !97
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !109
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @shared, i64 64), i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !57
  %i.m = tail call ptr @lookupKeyReadOrReply(ptr noundef %0, ptr noundef %i.g, ptr noundef %i.l) #8 ; 6 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.m, i32 noundef 1) #8
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !97
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !57
  %i.s = call i32 @getLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.r, ptr noundef nonnull %i.b, ptr noundef null) #8
  %.not15 = icmp eq i32 %i.s, 0
  br i1 %.not15, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.t = load i64, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  store ptr %i.m, ptr %1, align 8, !tbaa !67
  %i.u = load i64, ptr %i.m, align 8
  %i.v = trunc i64 %i.u to i8
  %i.w = lshr i8 %i.v, 4                          ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i8 %i.w, ptr %i.x, align 8, !tbaa !71
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 1, ptr %i.y, align 1, !tbaa !72
  switch i8 %i.w, label %bb.g [
    i8 9, label %bb.e
    i8 11, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.ac = call i32 @quicklistInitIteratorAtIdx(ptr noundef nonnull %i.z, ptr noundef %i.ab, i32 noundef 0, i64 noundef %i.t) #8 ; 0 uses
  br label %listTypeInitIterator.exit

bb.f:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !14
  %i.af = call ptr @lpSeek(ptr noundef %i.ae, i64 noundef %i.t) #8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !73
  br label %listTypeInitIterator.exit

bb.g:                                             ; preds = %bb.d
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 242, ptr noundef nonnull @.str.1) #8
  call void @abort() #9
  unreachable

listTypeInitIterator.exit:                        ; preds = %bb.e, %bb.f
  %i.ah = call i32 @listTypeNext(ptr noundef nonnull %1, ptr noundef nonnull %2)
  %.not16 = icmp eq i32 %i.ah, 0
  br i1 %.not16, label %bb.m, label %bb.h

bb.h:                                             ; preds = %listTypeInitIterator.exit
  %i.ai = load ptr, ptr %2, align 8, !tbaa !77
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !71
  switch i8 %i.ak, label %bb.j [
    i8 9, label %bb.i
    i8 11, label %listTypeGetValue.exit
  ]

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !78 ; 2 uses
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %listTypeGetValue.exit.thread, label %listTypeGetValue.exit.thread21

listTypeGetValue.exit.thread21:                   ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !79
  br label %bb.k

listTypeGetValue.exit.thread:                     ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !80 ; 2 uses
  store i64 %i.aq, ptr %i.c, align 8, !tbaa !66
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 311, ptr noundef nonnull @.str.1) #8
  call void @abort() #9
  unreachable

listTypeGetValue.exit:                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !74
  %i.at = call ptr @lpGetValue(ptr noundef %i.as, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #8 ; 2 uses
  %i.au = load i32, ptr %i.a, align 4, !tbaa !9
  %i.av = zext i32 %i.au to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %.not17 = icmp eq ptr %i.at, null
  br i1 %.not17, label %listTypeGetValue.exit._crit_edge, label %bb.k

listTypeGetValue.exit._crit_edge:                 ; preds = %listTypeGetValue.exit
  %.pre = load i64, ptr %i.c, align 8, !tbaa !66
  br label %bb.l

bb.k:                                             ; preds = %listTypeGetValue.exit.thread21, %listTypeGetValue.exit
  %.0.i26 = phi ptr [ %i.am, %listTypeGetValue.exit.thread21 ], [ %i.at, %listTypeGetValue.exit ]
  %.025 = phi i64 [ %i.ao, %listTypeGetValue.exit.thread21 ], [ %i.av, %listTypeGetValue.exit ]
  call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %.0.i26, i64 noundef %.025) #8
  br label %bb.n

bb.l:                                             ; preds = %listTypeGetValue.exit._crit_edge, %listTypeGetValue.exit.thread
  %i.aw = phi i64 [ %.pre, %listTypeGetValue.exit._crit_edge ], [ %i.aq, %listTypeGetValue.exit.thread ]
  call void @addReplyBulkLongLong(ptr noundef nonnull %0, i64 noundef %i.aw) #8
  br label %bb.n

bb.m:                                             ; preds = %listTypeInitIterator.exit
  call void @addReplyNull(ptr noundef nonnull %0) #8
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m
  %i.ax = load i8, ptr %i.x, align 8, !tbaa !71
  %i.ay = icmp eq i8 %i.ax, 9
  br i1 %i.ay, label %bb.o, label %listTypeResetIterator.exit

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @quicklistResetIterator(ptr noundef nonnull %i.az) #8
  br label %listTypeResetIterator.exit

listTypeResetIterator.exit:                       ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %bb.p

bb.p:                                             ; preds = %bb.c, %listTypeResetIterator.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %bb.b, %bb.p
  ret void
}

declare i32 @getLongFromObjectOrReply(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @addReplyBulkCBuffer(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @addReplyBulkLongLong(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @addReplyNull(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @lsetCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !97
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 208), align 8, !tbaa !110
  %i.g = tail call ptr @lookupKeyWriteOrReply(ptr noundef %0, ptr noundef %i.e, ptr noundef %i.f) #8 ; 9 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.g, i32 noundef 1) #8
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !97   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !57
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57
  %i.o = call i32 @getLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.n, ptr noundef nonnull %i.a, ptr noundef null) #8
  %.not27 = icmp eq i32 %i.o, 0
  br i1 %.not27, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !100
  %.not28 = icmp eq i32 %i.p, 0
  br i1 %.not28, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = call i64 @kvobjAllocSize(ptr noundef nonnull %i.g) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i64 [ %i.q, %bb.e ], [ 0, %bb.d ]
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !97
  call fastcc void @listTypeTryConversionRaw(ptr noundef nonnull %i.g, i32 noundef 1, ptr noundef readonly %i.r, i32 noundef 3, i32 noundef 3, ptr noundef null, ptr noundef null)
  %i.s = load i64, ptr %i.a, align 8, !tbaa !17
  %i.t = trunc i64 %i.s to i32
  %i.u = call i32 @listTypeReplaceAtIndex(ptr noundef nonnull %i.g, i32 noundef %i.t, ptr noundef %i.l)
  %.not29 = icmp eq i32 %i.u, 0
  br i1 %.not29, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call fastcc void @listTypeTryConversionRaw(ptr noundef nonnull %i.g, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null)
  %i.v = load ptr, ptr @shared, align 8, !tbaa !111
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.v) #8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !83
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !97
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !57
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.x, ptr noundef %i.aa, ptr noundef nonnull %i.g, i32 noundef 1) #8
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !97
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !57
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !83
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !104
  call void @notifyKeyspaceEvent(i32 noundef 16, ptr noundef nonnull @.str.10, ptr noundef %i.ad, i32 noundef %i.ag) #8
  %i.ah = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !102
  %i.ai = add nsw i64 %i.ah, 1
  store i64 %i.ai, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !102
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 232), align 8, !tbaa !112
  call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.aj) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !100
  %.not30 = icmp eq i32 %i.ak, 0
  br i1 %.not30, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !83
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !97
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !57
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !14
  %i.as = call i32 @getKeySlot(ptr noundef %i.ar) #8
  %i.at = call i64 @kvobjAllocSize(ptr noundef nonnull %i.g) #8
  call void @updateSlotAllocSize(ptr noundef %i.am, i32 noundef %i.as, ptr noundef nonnull %i.g, i64 noundef %.0, i64 noundef %i.at) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.b, %bb.k
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @listPopRangeAndReplyWithKey(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, ptr noundef writeonly captures(address_is_null) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %7 = trunc i64 %i.a to i32
  %8 = lshr i32 %7, 4
  %9 = and i32 %8, 15
  switch i32 %9, label %bb.d [
    i32 9, label %bb.b
    i32 11, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = tail call i64 @quicklistCount(ptr noundef %i.c) #8
  br label %listTypeLength.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.g = tail call i64 @lpLength(ptr noundef %i.f) #8
  br label %listTypeLength.exit

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 211, ptr noundef nonnull @.str.1) #8
  tail call void @abort() #9
  unreachable

listTypeLength.exit:                              ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.d, %bb.b ], [ %i.g, %bb.c ]
  %i.h = tail call i64 @llvm.smin.i64(i64 %4, i64 %.0.i) ; 5 uses
  %i.i = icmp ne i32 %3, 0                        ; 3 uses
  %i.j = sub nsw i64 0, %i.h
  %i.k = select i1 %i.i, i64 %i.j, i64 0          ; 3 uses
  %i.l = add nsw i64 %i.h, -1
  %i.m = select i1 %i.i, i64 -1, i64 %i.l
  %i.n = zext i1 %i.i to i32
  tail call void @addReplyArrayLen(ptr noundef %0, i64 noundef 2) #8
  tail call void @addReplyBulk(ptr noundef %0, ptr noundef %2) #8
  tail call void @addListRangeReply(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.k, i64 noundef %i.m, i32 noundef %i.n)
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !100
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %listTypeLength.exit
  %i.p = tail call i64 @kvobjAllocSize(ptr noundef nonnull %1) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %listTypeLength.exit
  %.0 = phi i64 [ %i.p, %bb.e ], [ 0, %listTypeLength.exit ]
  %i.q = load i64, ptr %1, align 8
  %10 = trunc i64 %i.q to i32
  %11 = lshr i32 %10, 4
  %12 = and i32 %11, 15
  switch i32 %12, label %bb.i [
    i32 9, label %bb.g
    i32 11, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !14
  %i.t = tail call i32 @quicklistDelRange(ptr noundef %i.s, i64 noundef %i.k, i64 noundef %i.h) #8 ; 0 uses
  br label %listTypeDelRange.exit

bb.h:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !14
  %i.w = tail call ptr @lpDeleteRange(ptr noundef %i.v, i64 noundef %i.k, i64 noundef %i.h) #8
  store ptr %i.w, ptr %i.u, align 8, !tbaa !14
  br label %listTypeDelRange.exit

bb.i:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 474, ptr noundef nonnull @.str.1) #8
  tail call void @abort() #9
  unreachable

listTypeDelRange.exit:                            ; preds = %bb.g, %bb.h
  tail call void @listElementsRemoved(ptr noundef %0, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %1, i64 noundef %i.h, i64 noundef %.0, i32 noundef %5, ptr noundef %6)
  ret void
}

declare void @addReplyArrayLen(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @addReplyBulk(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @addListRangeReply(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %5 = trunc i64 %i.a to i32
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 15
  switch i32 %7, label %bb.d [
    i32 9, label %bb.b
    i32 11, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = tail call i64 @quicklistCount(ptr noundef %i.c) #8
  br label %listTypeLength.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.g = tail call i64 @lpLength(ptr noundef %i.f) #8
  br label %listTypeLength.exit

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 211, ptr noundef nonnull @.str.1) #8
  tail call void @abort() #9
  unreachable

listTypeLength.exit:                              ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.d, %bb.b ], [ %i.g, %bb.c ] ; 5 uses
  %i.h = icmp slt i64 %2, 0
  %i.i = select i1 %i.h, i64 %.0.i, i64 0
  %spec.select = add nsw i64 %i.i, %2
  %i.j = icmp slt i64 %3, 0
  %i.k = select i1 %i.j, i64 %.0.i, i64 0
  %.032 = add nsw i64 %i.k, %3                    ; 3 uses
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %spec.select, i64 0) ; 4 uses
  %i.l = icmp sle i64 %spec.store.select, %.032
  %.not = icmp slt i64 %spec.store.select, %.0.i
  %or.cond = select i1 %i.l, i1 %.not, i1 false
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %listTypeLength.exit
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 192), align 8, !tbaa !113
  tail call void @addReply(ptr noundef %0, ptr noundef %i.m) #8
  br label %bb.j

bb.f:                                             ; preds = %listTypeLength.exit
  %.not39 = icmp samesign ult i64 %.032, %.0.i
  %i.n = add nsw i64 %.0.i, -1
  %spec.select41 = select i1 %.not39, i64 %.032, i64 %i.n ; 2 uses
  %i.o = sub nsw i64 %spec.select41, %spec.store.select
  %i.p = add nsw i64 %i.o, 1                      ; 2 uses
  %.not40 = icmp eq i32 %4, 0
  %i.q = select i1 %.not40, i64 %spec.store.select, i64 %spec.select41
  %i.r = trunc i64 %i.q to i32                    ; 2 uses
  %i.s = load i64, ptr %1, align 8
  %8 = trunc i64 %i.s to i32
  %9 = lshr i32 %8, 4
  %10 = and i32 %9, 15
  switch i32 %10, label %bb.i [
    i32 9, label %bb.g
    i32 11, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.t = trunc i64 %i.p to i32
  tail call void @addListQuicklistRangeReply(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.r, i32 noundef %i.t, i32 noundef %4)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.u = trunc i64 %i.p to i32
  tail call void @addListListpackRangeReply(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %4)
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 775, ptr noundef nonnull @.str.1) #8
  tail call void @abort() #9
  unreachable

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @listElementsRemoved(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef %6, ptr noundef writeonly captures(address_is_null) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  %i.b = select i1 %i.a, ptr @.str.13, ptr @.str.14
  %i.c = load i64, ptr %3, align 8
  %8 = trunc i64 %i.c to i32
  %9 = lshr i32 %8, 4
  %10 = and i32 %9, 15
  switch i32 %10, label %bb.d [
    i32 9, label %bb.b
    i32 11, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.f = tail call i64 @quicklistCount(ptr noundef %i.e) #8
  br label %listTypeLength.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.i = tail call i64 @lpLength(ptr noundef %i.h) #8
  br label %listTypeLength.exit

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 211, ptr noundef nonnull @.str.1) #8
  tail call void @abort() #9
  unreachable

listTypeLength.exit:                              ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.f, %bb.b ], [ %i.i, %bb.c ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load i32, ptr %i.l, align 8, !tbaa !104
  tail call void @notifyKeyspaceEvent(i32 noundef 16, ptr noundef nonnull %i.b, ptr noundef %1, i32 noundef %i.m) #8
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !14
  %i.q = tail call i32 @getKeySlot(ptr noundef %i.p) #8
  %i.r = add i64 %.0.i, %4
  tail call void @updateKeysizesHist(ptr noundef %i.n, i32 noundef %i.q, i32 noundef 1, i64 noundef %i.r, i64 noundef %.0.i) #8
  %i.s = icmp eq i64 %.0.i, 0                     ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.j

bb.e:                                             ; preds = %listTypeLength.exit
  %.not37 = icmp eq ptr %7, null
  br i1 %.not37, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %7, align 4, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !100
  %.not38 = icmp eq i32 %i.t, 0
  br i1 %.not38, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !14
  %i.w = tail call i32 @getKeySlot(ptr noundef %i.v) #8
  %i.x = tail call i64 @kvobjAllocSize(ptr noundef nonnull %3) #8
  tail call void @updateSlotAllocSize(ptr noundef %i.u, i32 noundef %i.w, ptr noundef nonnull %3, i64 noundef %5, i64 noundef %i.x) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.z = tail call i32 @dbDelete(ptr noundef %i.y, ptr noundef nonnull %1) #8 ; 0 uses
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !104
  tail call void @notifyKeyspaceEvent(i32 noundef 4, ptr noundef nonnull @.str.15, ptr noundef nonnull %1, i32 noundef %i.ac) #8
  br label %bb.n

bb.j:                                             ; preds = %listTypeLength.exit
  tail call fastcc void @listTypeTryConversionRaw(ptr noundef nonnull %3, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null)
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !100
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !14
  %i.ag = tail call i32 @getKeySlot(ptr noundef %i.af) #8
  %i.ah = tail call i64 @kvobjAllocSize(ptr noundef nonnull %3) #8
  tail call void @updateSlotAllocSize(ptr noundef %i.ae, i32 noundef %i.ag, ptr noundef nonnull %3, i64 noundef %5, i64 noundef %i.ah) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not36 = icmp eq ptr %7, null
  br i1 %.not36, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %7, align 4, !tbaa !9
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.i
  %.not39 = icmp eq i32 %6, 0
  br i1 %.not39, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.aj = select i1 %i.s, ptr null, ptr %3
  tail call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.ai, ptr noundef nonnull %1, ptr noundef %i.aj, i32 noundef 1) #8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ak = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !102
  %i.al = add nsw i64 %i.ak, %4
  store i64 %i.al, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !102
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @addListQuicklistRangeReply(ptr noundef %0, ptr noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.quicklistIter, align 8      ; 5 uses
  %6 = alloca %struct.quicklistEntry, align 8     ; 6 uses
  %i.a = sext i32 %3 to i64
  tail call void @addReplyArrayLen(ptr noundef %0, i64 noundef %i.a) #8
  %.not = icmp ne i32 %4, 0
  %i.b = zext i1 %.not to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = sext i32 %2 to i64
  %i.f = call i32 @quicklistInitIteratorAtIdx(ptr noundef nonnull %5, ptr noundef %i.d, i32 noundef %i.b, i64 noundef %i.e) #8 ; 0 uses
  %.not912 = icmp eq i32 %3, 0
  br i1 %.not912, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.in = phi i32 [ %3, %.lr.ph ], [ %i.j, %bb.g ]
  %i.j = add nsw i32 %.in, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.k = call i32 @quicklistNext(ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  %.not10 = icmp eq i32 %i.k, 0
  br i1 %.not10, label %bb.c, label %bb.d, !prof !114

bb.c:                                             ; preds = %bb.b
  call void @_serverAssert(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str, i32 noundef 716) #8
  call void @abort() #9
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !115  ; 2 uses
  %.not11 = icmp eq ptr %i.l, null
  br i1 %.not11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i64, ptr %i.h, align 8, !tbaa !116
  call void @addReplyBulkCBuffer(ptr noundef %0, ptr noundef nonnull %i.l, i64 noundef %i.m) #8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.n = load i64, ptr %i.i, align 8, !tbaa !117
  call void @addReplyBulkLongLong(ptr noundef %0, i64 noundef %i.n) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %.not9 = icmp eq i32 %i.j, 0
  br i1 %.not9, label %._crit_edge, label %bb.b, !llvm.loop !118

._crit_edge:                                      ; preds = %bb.g, %bb.a
  call void @quicklistResetIterator(ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @addListListpackRangeReply(ptr noundef %0, ptr noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [21 x i8], align 16               ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 4 uses
  %i.e = sext i32 %2 to i64
  %i.f = tail call ptr @lpSeek(ptr noundef %i.d, i64 noundef %i.e) #8 ; 2 uses
  %i.g = tail call i64 @lpBytes(ptr noundef %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.h = sext i32 %3 to i64
  tail call void @addReplyArrayLen(ptr noundef %0, i64 noundef %i.h) #8
  %.not19 = icmp eq i32 %3, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = add nsw i32 %3, -1                       ; 2 uses
  %.not18 = icmp eq i32 %4, 0
  br i1 %.not18, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.b
  %i.j = phi i32 [ %i.n, %bb.b ], [ %i.i, %.lr.ph ] ; 2 uses
  %.01620.us = phi ptr [ %i.m, %bb.b ], [ %i.f, %.lr.ph ] ; 3 uses
  %.not17.us = icmp eq ptr %.01620.us, null
  br i1 %.not17.us, label %.split.us, label %bb.b, !prof !114

bb.b:                                             ; preds = %.lr.ph.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.k = call ptr @lpGet(ptr noundef nonnull %.01620.us, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %i.l = load i64, ptr %i.a, align 8, !tbaa !17
  call void @addReplyBulkCBuffer(ptr noundef %0, ptr noundef %i.k, i64 noundef %i.l) #8
  %i.m = call ptr @lpNextWithBytes(ptr noundef %i.d, ptr noundef nonnull %.01620.us, i64 noundef %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %i.n = add nsw i32 %i.j, -1
  %.not.us = icmp eq i32 %i.j, 0
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !119

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.c
  %i.o = phi i32 [ %i.s, %bb.c ], [ %i.i, %.lr.ph ] ; 2 uses
  %.01620 = phi ptr [ %i.r, %bb.c ], [ %i.f, %.lr.ph ] ; 3 uses
  %.not17 = icmp eq ptr %.01620, null
  br i1 %.not17, label %.split.us, label %bb.c, !prof !114

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  call void @_serverAssert(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str, i32 noundef 739) #8
  call void @abort() #9
  unreachable

bb.c:                                             ; preds = %.lr.ph.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.p = call ptr @lpGet(ptr noundef nonnull %.01620, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %i.q = load i64, ptr %i.a, align 8, !tbaa !17
  call void @addReplyBulkCBuffer(ptr noundef %0, ptr noundef %i.p, i64 noundef %i.q) #8
  %i.r = call ptr @lpPrev(ptr noundef %i.d, ptr noundef nonnull %.01620) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %i.s = add nsw i32 %i.o, -1
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !119

._crit_edge:                                      ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

declare ptr @lpNextWithBytes(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @dbDelete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @popGenericCommand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i32, ptr %i.b, align 8, !tbaa !101  ; 2 uses
  %i.d = icmp ne i32 %i.c, 3                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i64 0, ptr %i.a, align 8, !tbaa !17
  %i.e = icmp sgt i32 %i.c, 3
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @addReplyErrorArity(ptr noundef nonnull %0) #8
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !97
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57
  %i.j = call i32 @getPositiveLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.i, ptr noundef nonnull %i.a, ptr noundef null) #8
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.e, label %bb.v

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi ptr [ getelementptr inbounds nuw (i8, ptr @shared, i64 96), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @shared, i64 64), %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !109
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %.sink, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %.pn = load ptr, ptr %i.o, align 8, !tbaa !97
  %.in56 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.p = load ptr, ptr %.in56, align 8, !tbaa !57
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !57
  %i.r = call ptr @lookupKeyWriteOrReply(ptr noundef nonnull %0, ptr noundef %i.p, ptr noundef %i.q) #8 ; 13 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.v, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.r, i32 noundef 1) #8
  %.not52 = icmp eq i32 %i.t, 0
  br i1 %.not52, label %bb.g, label %bb.v

bb.g:                                             ; preds = %bb.f
  %i.u = load i64, ptr %i.a, align 8              ; 2 uses
  %i.v = icmp ne i64 %i.u, 0
  %or.cond = select i1 %i.d, i1 true, i1 %i.v
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 192), align 8, !tbaa !113
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.w) #8
  br label %bb.v

bb.i:                                             ; preds = %bb.g
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !100
  %.not53 = icmp eq i32 %i.x, 0
  br i1 %.not53, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = call i64 @kvobjAllocSize(ptr noundef nonnull %i.r) #8
  %.pre = load i64, ptr %i.a, align 8, !tbaa !17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.z = phi i64 [ %.pre, %bb.j ], [ %i.u, %bb.i ]
  %.0 = phi i64 [ %i.y, %bb.j ], [ 0, %bb.i ]     ; 2 uses
  %.not54 = icmp eq i64 %i.z, 0
  br i1 %.not54, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.aa = call ptr @listTypePop(ptr noundef nonnull %i.r, i32 noundef %1) ; 3 uses
  %.not55 = icmp eq ptr %i.aa, null
  br i1 %.not55, label %bb.m, label %bb.n, !prof !114

bb.m:                                             ; preds = %bb.l
  call void @_serverAssert(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str, i32 noundef 843) #8
  call void @abort() #9
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @addReplyBulk(ptr noundef nonnull %0, ptr noundef nonnull %i.aa) #8
  call void @decrRefCount(ptr noundef nonnull %i.aa) #8
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !97
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !57
  call void @listElementsRemoved(ptr noundef nonnull %0, ptr noundef %i.ad, i32 noundef %1, ptr noundef nonnull %i.r, i64 noundef 1, i64 noundef %.0, i32 noundef 1, ptr noundef null)
  br label %bb.v

bb.o:                                             ; preds = %bb.k
  %i.ae = load i64, ptr %i.r, align 8
  %2 = trunc i64 %i.ae to i32
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 15
  switch i32 %4, label %bb.r [
    i32 9, label %bb.p
    i32 11, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !14
  %i.ah = call i64 @quicklistCount(ptr noundef %i.ag) #8
  br label %listTypeLength.exit

bb.q:                                             ; preds = %bb.o
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !14
  %i.ak = call i64 @lpLength(ptr noundef %i.aj) #8
  br label %listTypeLength.exit

bb.r:                                             ; preds = %bb.o
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 211, ptr noundef nonnull @.str.1) #8
  call void @abort() #9
  unreachable

listTypeLength.exit:                              ; preds = %bb.p, %bb.q
  %.0.i = phi i64 [ %i.ah, %bb.p ], [ %i.ak, %bb.q ]
  %i.al = load i64, ptr %i.a, align 8, !tbaa !17
  %i.am = call i64 @llvm.smin.i64(i64 %i.al, i64 %.0.i) ; 5 uses
  %i.an = icmp ne i32 %1, 0                       ; 3 uses
  %i.ao = sub nsw i64 0, %i.am
  %i.ap = select i1 %i.an, i64 %i.ao, i64 0       ; 3 uses
  %i.aq = add nsw i64 %i.am, -1
  %i.ar = select i1 %i.an, i64 -1, i64 %i.aq
  %i.as = zext i1 %i.an to i32
  call void @addListRangeReply(ptr noundef nonnull %0, ptr noundef nonnull %i.r, i64 noundef %i.ap, i64 noundef %i.ar, i32 noundef %i.as)
  %i.at = load i64, ptr %i.r, align 8
  %5 = trunc i64 %i.at to i32
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 15
  switch i32 %7, label %bb.u [
    i32 9, label %bb.s
    i32 11, label %bb.t
  ]

bb.s:                                             ; preds = %listTypeLength.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !14
  %i.aw = call i32 @quicklistDelRange(ptr noundef %i.av, i64 noundef %i.ap, i64 noundef %i.am) #8 ; 0 uses
  br label %listTypeDelRange.exit

bb.t:                                             ; preds = %listTypeLength.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !14
  %i.az = call ptr @lpDeleteRange(ptr noundef %i.ay, i64 noundef %i.ap, i64 noundef %i.am) #8
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !14
  br label %listTypeDelRange.exit

bb.u:                                             ; preds = %listTypeLength.exit
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 474, ptr noundef nonnull @.str.1) #8
  call void @abort() #9
  unreachable

listTypeDelRange.exit:                            ; preds = %bb.s, %bb.t
  %i.ba = load ptr, ptr %i.o, align 8, !tbaa !97
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !57
  call void @listElementsRemoved(ptr noundef nonnull %0, ptr noundef %i.bc, i32 noundef %1, ptr noundef nonnull %i.r, i64 noundef %i.am, i64 noundef %.0, i32 noundef 1, ptr noundef null)
  br label %bb.v

bb.v:                                             ; preds = %bb.h, %bb.f, %bb.e, %listTypeDelRange.exit, %bb.n, %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

declare void @addReplyErrorArity(ptr noundef) local_unnamed_addr #2

declare i32 @getPositiveLongFromObjectOrReply(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @mpopGenericCommand(ptr noundef %0, ptr noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 3 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.f = tail call ptr @lookupKeyWrite(ptr noundef %i.e, ptr noundef %i.d) #8 ; 6 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.f, i32 noundef 1) #8
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr %i.f, align 8
  %5 = trunc i64 %i.i to i32
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 15
  switch i32 %7, label %bb.g [
    i32 9, label %bb.e
    i32 11, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.l = tail call i64 @quicklistCount(ptr noundef %i.k) #8
  br label %listTypeLength.exit

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14
  %i.o = tail call i64 @lpLength(ptr noundef %i.n) #8
  br label %listTypeLength.exit

bb.g:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 211, ptr noundef nonnull @.str.1) #8
  tail call void @abort() #9
  unreachable

listTypeLength.exit:                              ; preds = %bb.e, %bb.f
  %.0.i = phi i64 [ %i.l, %bb.e ], [ %i.o, %bb.f ] ; 2 uses
  %i.p = icmp eq i64 %.0.i, 0
  br i1 %i.p, label %.critedge, label %bb.h

bb.h:                                             ; preds = %listTypeLength.exit
  tail call void @listPopRangeAndReplyWithKey(ptr noundef nonnull %0, ptr noundef nonnull %i.f, ptr noundef %i.d, i32 noundef %3, i64 noundef %4, i32 noundef 1, ptr noundef null)
  %i.q = tail call i64 @llvm.smin.i64(i64 %4, i64 %.0.i)
  %i.r = tail call ptr @createStringObjectFromLongLong(i64 noundef %i.q) #8 ; 2 uses
  %i.s = icmp eq i32 %3, 0
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 424), align 8
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 416), align 8
  %i.v = select i1 %i.s, ptr %i.t, ptr %i.u
  tail call void (ptr, i32, ...) @rewriteClientCommandVector(ptr noundef nonnull %0, i32 noundef 3, ptr noundef %i.v, ptr noundef %i.d, ptr noundef %i.r) #8
  tail call void @decrRefCount(ptr noundef %i.r) #8
  br label %.loopexit

.critedge:                                        ; preds = %listTypeLength.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !120

._crit_edge:                                      ; preds = %.critedge, %bb.a
  tail call void @addReplyNullArray(ptr noundef %0) #8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.h, %._crit_edge
  ret void
}

declare ptr @lookupKeyWrite(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @rewriteClientCommandVector(ptr noundef, i32 noundef, ...) local_unnamed_addr #2

declare void @addReplyNullArray(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @lpopCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @popGenericCommand(ptr noundef %0, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @rpopCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @popGenericCommand(ptr noundef %0, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @lrangeCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !97
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57
  %i.g = call i32 @getLongFromObjectOrReply(ptr noundef %0, ptr noundef %i.f, ptr noundef nonnull %i.a, ptr noundef null) #8
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !97
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !57
  %i.k = call i32 @getLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.j, ptr noundef nonnull %i.b, ptr noundef null) #8
  %.not10 = icmp eq i32 %i.k, 0
  br i1 %.not10, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !97
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 192), align 8, !tbaa !113
  %i.p = call ptr @lookupKeyReadOrReply(ptr noundef nonnull %0, ptr noundef %i.n, ptr noundef %i.o) #8 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.p, i32 noundef 1) #8
  %.not11 = icmp eq i32 %i.r, 0
  br i1 %.not11, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.a, align 8, !tbaa !17
  %i.t = load i64, ptr %i.b, align 8, !tbaa !17
  call void @addListRangeReply(ptr noundef nonnull %0, ptr noundef nonnull %i.p, i64 noundef %i.s, i64 noundef %i.t, i32 noundef 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.a, %bb.b, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ltrimCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 10 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !97
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57
  %i.g = call i32 @getLongFromObjectOrReply(ptr noundef %0, ptr noundef %i.f, ptr noundef nonnull %i.a, ptr noundef null) #8
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.ah

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !97
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !57
  %i.k = call i32 @getLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.j, ptr noundef nonnull %i.b, ptr noundef null) #8
  %.not71 = icmp eq i32 %i.k, 0
  br i1 %.not71, label %bb.c, label %bb.ah

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !97
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57
  %i.o = load ptr, ptr @shared, align 8, !tbaa !111
  %i.p = call ptr @lookupKeyWriteOrReply(ptr noundef nonnull %0, ptr noundef %i.n, ptr noundef %i.o) #8 ; 18 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.ah, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.p, i32 noundef 1) #8
  %.not72 = icmp eq i32 %i.r, 0
  br i1 %.not72, label %bb.e, label %bb.ah

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.p, align 8
  %1 = trunc i64 %i.s to i32
  %2 = lshr i32 %1, 4
  %3 = and i32 %2, 15
  switch i32 %3, label %bb.h [
    i32 9, label %bb.f
    i32 11, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !14
  %i.v = call i64 @quicklistCount(ptr noundef %i.u) #8
  br label %listTypeLength.exit

bb.g:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !14
  %i.y = call i64 @lpLength(ptr noundef %i.x) #8
  br label %listTypeLength.exit

bb.h:                                             ; preds = %bb.e
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 211, ptr noundef nonnull @.str.1) #8
  call void @abort() #9
  unreachable

listTypeLength.exit:                              ; preds = %bb.f, %bb.g
  %.0.i = phi i64 [ %i.v, %bb.f ], [ %i.y, %bb.g ] ; 8 uses
  %i.z = load i64, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.aa = icmp slt i64 %i.z, 0
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %listTypeLength.exit
  %i.ab = add nsw i64 %i.z, %.0.i                 ; 2 uses
  store i64 %i.ab, ptr %i.a, align 8, !tbaa !17
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %listTypeLength.exit
  %i.ac = phi i64 [ %i.ab, %bb.i ], [ %i.z, %listTypeLength.exit ] ; 2 uses
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !17  ; 3 uses
  %i.ae = icmp slt i64 %i.ad, 0
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i64 %i.ad, %.0.i                ; 2 uses
  store i64 %i.af, ptr %i.b, align 8, !tbaa !17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ag = phi i64 [ %i.af, %bb.k ], [ %i.ad, %bb.j ] ; 3 uses
  %i.ah = icmp slt i64 %i.ac, 0
  br i1 %i.ah, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i64 0, ptr %i.a, align 8, !tbaa !17
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ai = phi i64 [ 0, %bb.m ], [ %i.ac, %bb.l ]  ; 3 uses
  %i.aj = icmp sle i64 %i.ai, %i.ag
  %.not73 = icmp slt i64 %i.ai, %.0.i
  %or.cond = select i1 %i.aj, i1 %.not73, i1 false
  br i1 %or.cond, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %.not74 = icmp samesign ult i64 %i.ag, %.0.i
  br i1 %.not74, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = add nsw i64 %.0.i, -1                   ; 2 uses
  store i64 %i.ak, ptr %i.b, align 8, !tbaa !17
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.al = phi i64 [ %i.ak, %bb.p ], [ %i.ag, %bb.o ]
  %i.am = xor i64 %i.al, -1
  %i.an = add nsw i64 %.0.i, %i.am
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.q
  %.062 = phi i64 [ %i.ai, %bb.q ], [ %.0.i, %bb.n ] ; 3 uses
  %.061 = phi i64 [ %i.an, %bb.q ], [ 0, %bb.n ]  ; 5 uses
  %i.ao = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !100
  %.not75 = icmp eq i32 %i.ao, 0
  br i1 %.not75, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ap = call i64 @kvobjAllocSize(ptr noundef nonnull %i.p) #8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0 = phi i64 [ %i.ap, %bb.s ], [ 0, %bb.r ]    ; 2 uses
  %i.aq = load i64, ptr %i.p, align 8
  %4 = trunc i64 %i.aq to i32
  %5 = lshr i32 %4, 4
  %6 = and i32 %5, 15
  switch i32 %6, label %bb.w [
    i32 9, label %bb.u
    i32 11, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.ar = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !14
  %i.at = call i32 @quicklistDelRange(ptr noundef %i.as, i64 noundef 0, i64 noundef %.062) #8 ; 0 uses
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !14
  %i.av = sub nsw i64 0, %.061
  %i.aw = call i32 @quicklistDelRange(ptr noundef %i.au, i64 noundef %i.av, i64 noundef %.061) #8 ; 0 uses
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.ax = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !14
  %i.az = call ptr @lpDeleteRange(ptr noundef %i.ay, i64 noundef 0, i64 noundef %.062) #8 ; 2 uses
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !14
  %i.ba = sub nsw i64 0, %.061
  %i.bb = call ptr @lpDeleteRange(ptr noundef %i.az, i64 noundef %i.ba, i64 noundef %.061) #8
  store ptr %i.bb, ptr %i.ax, align 8, !tbaa !14
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 967, ptr noundef nonnull @.str.1) #8
  call void @abort() #9
  unreachable

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !97
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !57
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !83
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !104
  call void @notifyKeyspaceEvent(i32 noundef 16, ptr noundef nonnull @.str.17, ptr noundef %i.be, i32 noundef %i.bi) #8
  %i.bj = load i64, ptr %i.p, align 8
  %7 = trunc i64 %i.bj to i32
  %8 = lshr i32 %7, 4
  %9 = and i32 %8, 15
  switch i32 %9, label %bb.aa [
    i32 9, label %bb.y
    i32 11, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  %i.bk = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !14
  %i.bm = call i64 @quicklistCount(ptr noundef %i.bl) #8
  br label %listTypeLength.exit79

bb.z:                                             ; preds = %bb.x
  %i.bn = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !14
  %i.bp = call i64 @lpLength(ptr noundef %i.bo) #8
  br label %listTypeLength.exit79

bb.aa:                                            ; preds = %bb.x
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 211, ptr noundef nonnull @.str.1) #8
  call void @abort() #9
  unreachable

listTypeLength.exit79:                            ; preds = %bb.y, %bb.z
  %.0.i78 = phi i64 [ %i.bm, %bb.y ], [ %i.bp, %bb.z ] ; 3 uses
  %i.bq = icmp eq i64 %.0.i78, 0
  br i1 %i.bq, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %listTypeLength.exit79
  %i.br = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !100
  %.not77 = icmp eq i32 %i.br, 0
  br i1 %.not77, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bs = load ptr, ptr %i.bf, align 8, !tbaa !83
  %i.bt = load ptr, ptr %i.c, align 8, !tbaa !97
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !57
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !14
  %i.by = call i32 @getKeySlot(ptr noundef %i.bx) #8
  %i.bz = call i64 @kvobjAllocSize(ptr noundef nonnull %i.p) #8
  call void @updateSlotAllocSize(ptr noundef %i.bs, i32 noundef %i.by, ptr noundef nonnull %i.p, i64 noundef %.0, i64 noundef %i.bz) #8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ca = load ptr, ptr %i.bf, align 8, !tbaa !83
  %i.cb = load ptr, ptr %i.c, align 8, !tbaa !97
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !57
  %i.ce = call i32 @dbDeleteSkipKeysizesUpdate(ptr noundef %i.ca, ptr noundef %i.cd) #8 ; 0 uses
  %i.cf = load ptr, ptr %i.c, align 8, !tbaa !97
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !57
  %i.ci = load ptr, ptr %i.bf, align 8, !tbaa !83
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 72
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !104
  call void @notifyKeyspaceEvent(i32 noundef 4, ptr noundef nonnull @.str.15, ptr noundef %i.ch, i32 noundef %i.ck) #8
  br label %bb.ag

bb.ae:                                            ; preds = %listTypeLength.exit79
  call fastcc void @listTypeTryConversionRaw(ptr noundef nonnull %i.p, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null)
  %i.cl = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !100
  %.not76 = icmp eq i32 %i.cl, 0
  br i1 %.not76, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cm = load ptr, ptr %i.bf, align 8, !tbaa !83
  %i.cn = load ptr, ptr %i.c, align 8, !tbaa !97
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !57
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !14
  %i.cs = call i32 @getKeySlot(ptr noundef %i.cr) #8
  %i.ct = call i64 @kvobjAllocSize(ptr noundef nonnull %i.p) #8
  call void @updateSlotAllocSize(ptr noundef %i.cm, i32 noundef %i.cs, ptr noundef nonnull %i.p, i64 noundef %.0, i64 noundef %i.ct) #8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af, %bb.ad
  %.060 = phi i64 [ -1, %bb.ad ], [ %.0.i78, %bb.af ], [ %.0.i78, %bb.ae ]
  %.060.fr = freeze i64 %.060                     ; 2 uses
  %i.cu = load ptr, ptr %i.bf, align 8, !tbaa !83
  %i.cv = load ptr, ptr %i.c, align 8, !tbaa !97
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !57
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !14
  %i.da = call i32 @getKeySlot(ptr noundef %i.cz) #8
  call void @updateKeysizesHist(ptr noundef %i.cu, i32 noundef %i.da, i32 noundef 1, i64 noundef %.0.i, i64 noundef %.060.fr) #8
  %i.db = load ptr, ptr %i.bf, align 8, !tbaa !83
  %i.dc = load ptr, ptr %i.c, align 8, !tbaa !97
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !57
  %i.df = icmp sgt i64 %.060.fr, 0
  %spec.select = select i1 %i.df, ptr %i.p, ptr null
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.db, ptr noundef %i.de, ptr noundef %spec.select, i32 noundef 1) #8
  %i.dg = add nsw i64 %.061, %.062
  %i.dh = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !102
  %i.di = add nsw i64 %i.dg, %i.dh
  store i64 %i.di, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !102
  %i.dj = load ptr, ptr @shared, align 8, !tbaa !111
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.dj) #8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.c, %bb.d, %bb.a, %bb.b, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

declare i32 @dbDeleteSkipKeysizesUpdate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @lposCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 12 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %1 = alloca %struct.listTypeIterator, align 8   ; 12 uses
  %2 = alloca %struct.listTypeEntry, align 8      ; 9 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !97
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i64 1, ptr %i.a, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i64 -1, ptr %i.b, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i64 0, ptr %i.c, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !101  ; 2 uses
  %.not93111 = icmp sgt i32 %i.k, 3
  br i1 %.not93111, label %.lr.ph, label %.critedge107.thread

.lr.ph:                                           ; preds = %bb.a, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 3, %bb.a ] ; 3 uses
  %i.l = phi i32 [ %i.am, %bb.j ], [ %i.k, %bb.a ]
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !97   ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !57
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !14   ; 3 uses
  %i.r = add nuw nsw i64 %indvars.iv, 1           ; 4 uses
  %i.s = call i32 @strcasecmp(ptr noundef %i.q, ptr noundef nonnull @.str.18) #10
  %i.t = icmp eq i32 %i.s, 0
  %i.u = zext i32 %i.l to i64
  %i.v = icmp ne i64 %i.r, %i.u                   ; 3 uses
  %or.cond = and i1 %i.v, %i.t
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.r
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !57
  %i.y = call i32 @getRangeLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.x, i64 noundef -9223372036854775807, i64 noundef 9223372036854775807, ptr noundef nonnull %i.a, ptr noundef null) #8
  %.not92 = icmp eq i32 %i.y, 0
  br i1 %.not92, label %bb.c, label %.critedge106

bb.c:                                             ; preds = %bb.b
  %i.z = load i64, ptr %i.a, align 8, !tbaa !17
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.19) #8
  br label %.critedge106

bb.e:                                             ; preds = %.lr.ph
  %i.ab = call i32 @strcasecmp(ptr noundef %i.q, ptr noundef nonnull @.str.20) #10
  %i.ac = icmp eq i32 %i.ab, 0
  %or.cond4 = and i1 %i.v, %i.ac
  br i1 %or.cond4, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.r
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !57
  %i.af = call i32 @getPositiveLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.ae, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.21) #8
  %.not91 = icmp eq i32 %i.af, 0
  br i1 %.not91, label %bb.j, label %.critedge106

bb.g:                                             ; preds = %bb.e
  %i.ag = call i32 @strcasecmp(ptr noundef %i.q, ptr noundef nonnull @.str.22) #10
  %i.ah = icmp eq i32 %i.ag, 0
  %or.cond6 = and i1 %i.v, %i.ah
  br i1 %or.cond6, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.r
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !57
  %i.ak = call i32 @getPositiveLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.aj, ptr noundef nonnull %i.c, ptr noundef nonnull @.str.23) #8
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %bb.j, label %.critedge106

bb.i:                                             ; preds = %bb.g
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !107
  call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.al) #8
  br label %.critedge106

bb.j:                                             ; preds = %bb.f, %bb.h, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.am = load i32, ptr %i.j, align 8, !tbaa !101 ; 2 uses
  %i.an = trunc nuw i64 %indvars.iv.next to i32
  %.not93 = icmp sgt i32 %i.am, %i.an
  br i1 %.not93, label %.lr.ph, label %.critedge107, !llvm.loop !121

.critedge107:                                     ; preds = %bb.j
  %.pre = load i64, ptr %i.a, align 8, !tbaa !17  ; 4 uses
  %i.ao = icmp slt i64 %.pre, 0
  br i1 %i.ao, label %bb.k, label %.critedge107.thread

bb.k:                                             ; preds = %.critedge107
  %i.ap = sub nsw i64 0, %.pre
  store i64 %i.ap, ptr %i.a, align 8, !tbaa !17
  br label %.critedge107.thread

.critedge107.thread:                              ; preds = %bb.a, %bb.k, %.critedge107
  %i.aq = phi i1 [ true, %bb.k ], [ false, %.critedge107 ], [ false, %bb.a ] ; 2 uses
  %i.ar = phi i64 [ %.pre, %bb.k ], [ %.pre, %.critedge107 ], [ 1, %bb.a ] ; 2 uses
  %.0 = phi i8 [ 0, %bb.k ], [ 1, %.critedge107 ], [ 1, %bb.a ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !83
  %i.au = load ptr, ptr %i.f, align 8, !tbaa !97
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !57
  %i.ax = call ptr @lookupKeyRead(ptr noundef %i.at, ptr noundef %i.aw) #8 ; 9 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.critedge107.thread
  %i.az = load i64, ptr %i.b, align 8, !tbaa !17
  %.not104 = icmp eq i64 %i.az, -1
  br i1 %.not104, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 192), align 8, !tbaa !113
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.ba) #8
  br label %.critedge106

bb.n:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !109
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @shared, i64 64), i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !57
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.bf) #8
  br label %.critedge106

bb.o:                                             ; preds = %.critedge107.thread
  %i.bg = call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.ax, i32 noundef 1) #8
  %.not94 = icmp eq i32 %i.bg, 0
  br i1 %.not94, label %bb.p, label %.critedge106

bb.p:                                             ; preds = %bb.o
  %i.bh = load i64, ptr %i.b, align 8, !tbaa !17
  %.not95 = icmp eq i64 %i.bh, -1
  br i1 %.not95, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = call ptr @addReplyDeferredLen(ptr noundef nonnull %0) #8
  %i.bj = freeze ptr %i.bi
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.082 = phi ptr [ %i.bj, %bb.q ], [ null, %bb.p ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %.lobit = ashr i64 %i.ar, 63                    ; 2 uses
  store ptr %i.ax, ptr %1, align 8, !tbaa !67
  %i.bk = load i64, ptr %i.ax, align 8
  %i.bl = trunc i64 %i.bk to i8
  %i.bm = lshr i8 %i.bl, 4                        ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i8 %i.bm, ptr %i.bn, align 8, !tbaa !71
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %.0, ptr %i.bo, align 1, !tbaa !72
  switch i8 %i.bm, label %bb.u [
    i8 9, label %bb.s
    i8 11, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %.lobit109 = lshr i64 %i.ar, 63
  %i.bp = trunc nuw nsw i64 %.lobit109 to i32
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !14
  %i.bt = call i32 @quicklistInitIteratorAtIdx(ptr noundef nonnull %i.bq, ptr noundef %i.bs, i32 noundef %i.bp, i64 noundef %.lobit) #8 ; 0 uses
  br label %listTypeInitIterator.exit

bb.t:                                             ; preds = %bb.r
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !14
  %i.bw = call ptr @lpSeek(ptr noundef %i.bv, i64 noundef %.lobit) #8
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !73
  br label %listTypeInitIterator.exit

bb.u:                                             ; preds = %bb.r
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 242, ptr noundef nonnull @.str.1) #8
  call void @abort() #9
  unreachable

listTypeInitIterator.exit:                        ; preds = %bb.s, %bb.t
  %i.by = load i64, ptr %i.ax, align 8
  %3 = trunc i64 %i.by to i32
  %4 = lshr i32 %3, 4
  %5 = and i32 %4, 15
  switch i32 %5, label %bb.x [
    i32 9, label %bb.v
    i32 11, label %bb.w
  ]

bb.v:                                             ; preds = %listTypeInitIterator.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !14
  %i.cb = call i64 @quicklistCount(ptr noundef %i.ca) #8
  br label %listTypeLength.exit

bb.w:                                             ; preds = %listTypeInitIterator.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !14
  %i.ce = call i64 @lpLength(ptr noundef %i.cd) #8
  br label %listTypeLength.exit

bb.x:                                             ; preds = %listTypeInitIterator.exit
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 211, ptr noundef nonnull @.str.1) #8
  call void @abort() #9
  unreachable

listTypeLength.exit:                              ; preds = %bb.v, %bb.w
  %.0.i = phi i64 [ %i.cb, %bb.v ], [ %i.ce, %bb.w ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !14 ; 5 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 -1
  %.val.i = load i8, ptr %i.ch, align 1, !tbaa !59 ; 2 uses
  %i.ci = and i8 %.val.i, 7
  switch i8 %i.ci, label %sdslen.exit [
    i8 0, label %bb.y
    i8 1, label %bb.z
    i8 2, label %bb.aa
    i8 3, label %bb.ab
    i8 4, label %bb.ac
  ]

bb.y:                                             ; preds = %listTypeLength.exit
  %i.cj = lshr i8 %.val.i, 3
  %i.ck = zext nneg i8 %i.cj to i64
  br label %sdslen.exit

bb.z:                                             ; preds = %listTypeLength.exit
  %i.cl = getelementptr inbounds i8, ptr %i.cg, i64 -3
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !59
  %i.cn = zext i8 %i.cm to i64
  br label %sdslen.exit

bb.aa:                                            ; preds = %listTypeLength.exit
  %i.co = getelementptr inbounds i8, ptr %i.cg, i64 -5
  %i.cp = load i16, ptr %i.co, align 1, !tbaa !60
  %i.cq = zext i16 %i.cp to i64
  br label %sdslen.exit

bb.ab:                                            ; preds = %listTypeLength.exit
  %i.cr = getelementptr inbounds i8, ptr %i.cg, i64 -9
  %i.cs = load i32, ptr %i.cr, align 1, !tbaa !9
  %i.ct = zext i32 %i.cs to i64
  br label %sdslen.exit

bb.ac:                                            ; preds = %listTypeLength.exit
  %i.cu = getelementptr inbounds i8, ptr %i.cg, i64 -17
  %i.cv = load i64, ptr %i.cu, align 1, !tbaa !17
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %listTypeLength.exit, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac
  %.0.i108 = phi i64 [ %i.cv, %bb.ac ], [ %i.ck, %bb.y ], [ %i.cn, %bb.z ], [ %i.cq, %bb.aa ], [ %i.ct, %bb.ab ], [ 0, %listTypeLength.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i64 0, ptr %i.d, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  store i32 0, ptr %i.e, align 4, !tbaa !9
  %i.cw = call i32 @listTypeNext(ptr noundef nonnull %1, ptr noundef nonnull %2)
  %.not96113 = icmp eq i32 %i.cw, 0
  br i1 %.not96113, label %.critedge, label %.lr.ph117

.lr.ph117:                                        ; preds = %sdslen.exit
  %.not99 = icmp eq ptr %.082, null
  br i1 %.not99, label %.lr.ph117.split.us, label %.lr.ph117.split

.lr.ph117.split.us:                               ; preds = %.lr.ph117, %bb.af
  %.076115.us = phi i64 [ %.177.us, %bb.af ], [ 0, %.lr.ph117 ] ; 2 uses
  %.078114.us = phi i64 [ %i.dh, %bb.af ], [ 0, %.lr.ph117 ] ; 4 uses
  %i.cx = load i64, ptr %i.c, align 8, !tbaa !17  ; 2 uses
  %i.cy = icmp eq i64 %i.cx, 0
  %i.cz = icmp slt i64 %.078114.us, %i.cx
  %i.da = select i1 %i.cy, i1 true, i1 %i.cz
  br i1 %i.da, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %.lr.ph117.split.us
  %i.db = call i32 @listTypeEqual(ptr noundef nonnull %2, ptr noundef %i.i, i64 noundef %.0.i108, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
  %.not97.us = icmp eq i32 %i.db, 0
  br i1 %.not97.us, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dc = add nsw i64 %.076115.us, 1              ; 2 uses
  %i.dd = load i64, ptr %i.a, align 8, !tbaa !17
  %.not98.us = icmp slt i64 %i.dc, %i.dd
  br i1 %.not98.us, label %bb.af, label %..critedge_crit_edge119.split.us

..critedge_crit_edge119.split.us:                 ; preds = %bb.ae
  %i.de = xor i64 %.078114.us, -1
  %i.df = add i64 %.0.i, %i.de
  %i.dg = select i1 %i.aq, i64 %i.df, i64 %.078114.us
  br label %.critedge

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.177.us = phi i64 [ %i.dc, %bb.ae ], [ %.076115.us, %bb.ad ]
  %i.dh = add nuw nsw i64 %.078114.us, 1
  %i.di = call i32 @listTypeNext(ptr noundef nonnull %1, ptr noundef nonnull %2)
  %.not96.us = icmp eq i32 %i.di, 0
  br i1 %.not96.us, label %.critedge, label %.lr.ph117.split.us, !llvm.loop !122

.lr.ph117.split:                                  ; preds = %.lr.ph117
  br i1 %i.aq, label %.lr.ph117.split.split.us, label %.lr.ph117.split.split

.lr.ph117.split.split.us:                         ; preds = %.lr.ph117.split, %bb.ak
  %.073116.us135 = phi i64 [ %.1.us140, %bb.ak ], [ 0, %.lr.ph117.split ] ; 4 uses
  %.076115.us136 = phi i64 [ %.177.us139, %bb.ak ], [ 0, %.lr.ph117.split ] ; 3 uses
  %.078114.us137 = phi i64 [ %i.dx, %bb.ak ], [ 0, %.lr.ph117.split ] ; 3 uses
  %i.dj = load i64, ptr %i.c, align 8, !tbaa !17  ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 0
  %i.dl = icmp slt i64 %.078114.us137, %i.dj
  %i.dm = select i1 %i.dk, i1 true, i1 %i.dl
  br i1 %i.dm, label %bb.ag, label %.critedge

bb.ag:                                            ; preds = %.lr.ph117.split.split.us
  %i.dn = call i32 @listTypeEqual(ptr noundef nonnull %2, ptr noundef %i.i, i64 noundef %.0.i108, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
  %.not97.us138 = icmp eq i32 %i.dn, 0
  br i1 %.not97.us138, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.do = add nsw i64 %.076115.us136, 1           ; 4 uses
  %i.dp = xor i64 %.078114.us137, -1
  %i.dq = add i64 %.0.i, %i.dp                    ; 2 uses
  %i.dr = load i64, ptr %i.a, align 8, !tbaa !17
  %.not98.us142 = icmp slt i64 %i.do, %i.dr
  br i1 %.not98.us142, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ds = add nsw i64 %.073116.us135, 1           ; 3 uses
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.dq) #8
  %i.dt = load i64, ptr %i.b, align 8, !tbaa !17  ; 2 uses
  %.not100.us = icmp eq i64 %i.dt, 0
  br i1 %.not100.us, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.du = load i64, ptr %i.a, align 8, !tbaa !17
  %i.dv = add i64 %.076115.us136, 2
  %i.dw = sub i64 %i.dv, %i.du
  %.not101.us = icmp slt i64 %i.dw, %i.dt
  br i1 %.not101.us, label %bb.ak, label %.critedge

bb.ak:                                            ; preds = %bb.ah, %bb.aj, %bb.ai, %bb.ag
  %.177.us139 = phi i64 [ %i.do, %bb.aj ], [ %i.do, %bb.ai ], [ %i.do, %bb.ah ], [ %.076115.us136, %bb.ag ]
  %.1.us140 = phi i64 [ %i.ds, %bb.aj ], [ %i.ds, %bb.ai ], [ %.073116.us135, %bb.ah ], [ %.073116.us135, %bb.ag ] ; 2 uses
  %i.dx = add nuw nsw i64 %.078114.us137, 1
  %i.dy = call i32 @listTypeNext(ptr noundef nonnull %1, ptr noundef nonnull %2)
  %.not96.us141 = icmp eq i32 %i.dy, 0
  br i1 %.not96.us141, label %.critedge, label %.lr.ph117.split.split.us, !llvm.loop !122

.lr.ph117.split.split:                            ; preds = %.lr.ph117.split, %bb.ap
  %.073116 = phi i64 [ %.1, %bb.ap ], [ 0, %.lr.ph117.split ] ; 4 uses
  %.076115 = phi i64 [ %.177, %bb.ap ], [ 0, %.lr.ph117.split ] ; 3 uses
  %.078114 = phi i64 [ %i.el, %bb.ap ], [ 0, %.lr.ph117.split ] ; 4 uses
  %i.dz = load i64, ptr %i.c, align 8, !tbaa !17  ; 2 uses
  %i.ea = icmp eq i64 %i.dz, 0
  %i.eb = icmp slt i64 %.078114, %i.dz
  %i.ec = select i1 %i.ea, i1 true, i1 %i.eb
  br i1 %i.ec, label %bb.al, label %.critedge

bb.al:                                            ; preds = %.lr.ph117.split.split
  %i.ed = call i32 @listTypeEqual(ptr noundef nonnull %2, ptr noundef %i.i, i64 noundef %.0.i108, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
  %.not97 = icmp eq i32 %i.ed, 0
  br i1 %.not97, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ee = add nsw i64 %.076115, 1                 ; 4 uses
  %i.ef = load i64, ptr %i.a, align 8, !tbaa !17
  %.not98 = icmp slt i64 %i.ee, %i.ef
  br i1 %.not98, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eg = add nsw i64 %.073116, 1                 ; 3 uses
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %.078114) #8
  %i.eh = load i64, ptr %i.b, align 8, !tbaa !17  ; 2 uses
  %.not100 = icmp eq i64 %i.eh, 0
  br i1 %.not100, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ei = load i64, ptr %i.a, align 8, !tbaa !17
  %i.ej = add i64 %.076115, 2
  %i.ek = sub i64 %i.ej, %i.ei
  %.not101 = icmp slt i64 %i.ek, %i.eh
  br i1 %.not101, label %bb.ap, label %.critedge

bb.ap:                                            ; preds = %bb.am, %bb.an, %bb.ao, %bb.al
  %.177 = phi i64 [ %i.ee, %bb.ao ], [ %i.ee, %bb.an ], [ %i.ee, %bb.am ], [ %.076115, %bb.al ]
  %.1 = phi i64 [ %i.eg, %bb.ao ], [ %i.eg, %bb.an ], [ %.073116, %bb.am ], [ %.073116, %bb.al ] ; 2 uses
  %i.el = add nuw nsw i64 %.078114, 1
  %i.em = call i32 @listTypeNext(ptr noundef nonnull %1, ptr noundef nonnull %2)
  %.not96 = icmp eq i32 %i.em, 0
  br i1 %.not96, label %.critedge, label %.lr.ph117.split.split, !llvm.loop !122

end_hunk_1
begin_hunk_2_@lremCommand:bb.a
  br i1 %.not, label %bb.b, label %bb.ah

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !97
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !57
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !98
  %i.o = call ptr @lookupKeyWriteOrReply(ptr noundef nonnull %0, ptr noundef %i.m, ptr noundef %i.n) #8 ; 21 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.ah, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.o, i32 noundef 1) #8
  %.not53 = icmp eq i32 %i.q, 0
  br i1 %.not53, label %bb.d, label %bb.ah

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %i.r = load i64, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.t = sub nsw i64 0, %i.r
  store i64 %i.t, ptr %i.a, align 8, !tbaa !17
  store ptr %i.o, ptr %1, align 8, !tbaa !67
  %i.u = load i64, ptr %i.o, align 8
  %i.v = trunc i64 %i.u to i8
  %i.w = lshr i8 %i.v, 4                          ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.w, ptr %i.x, align 8, !tbaa !71
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 0, ptr %i.y, align 1, !tbaa !72
  switch i8 %i.w, label %bb.h [
    i8 9, label %bb.f
    i8 11, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.ac = call i32 @quicklistInitIteratorAtIdx(ptr noundef nonnull %i.z, ptr noundef %i.ab, i32 noundef 1, i64 noundef -1) #8 ; 0 uses
  br label %listTypeInitIterator.exit

bb.g:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !14
  %i.af = call ptr @lpSeek(ptr noundef %i.ae, i64 noundef -1) #8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !73
  br label %listTypeInitIterator.exit

bb.h:                                             ; preds = %bb.e
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 242, ptr noundef nonnull @.str.1) #8
  call void @abort() #9
  unreachable

bb.i:                                             ; preds = %bb.d
  store ptr %i.o, ptr %1, align 8, !tbaa !67
  %i.ah = load i64, ptr %i.o, align 8
  %i.ai = trunc i64 %i.ah to i8
  %i.aj = lshr i8 %i.ai, 4                        ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.aj, ptr %i.ak, align 8, !tbaa !71
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 1, ptr %i.al, align 1, !tbaa !72
  switch i8 %i.aj, label %bb.l [
    i8 9, label %bb.j
    i8 11, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !14
  %i.ap = call i32 @quicklistInitIteratorAtIdx(ptr noundef nonnull %i.am, ptr noundef %i.ao, i32 noundef 0, i64 noundef 0) #8 ; 0 uses
  br label %listTypeInitIterator.exit

bb.k:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !14
  %i.as = call ptr @lpSeek(ptr noundef %i.ar, i64 noundef 0) #8
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.as, ptr %i.at, align 8, !tbaa !73
  br label %listTypeInitIterator.exit

bb.l:                                             ; preds = %bb.i
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 242, ptr noundef nonnull @.str.1) #8
  call void @abort() #9
  unreachable

listTypeInitIterator.exit:                        ; preds = %bb.k, %bb.j, %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.au = load ptr, ptr %i.d, align 8, !tbaa !97
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !57
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !14 ; 5 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 -1
  %.val.i = load i8, ptr %i.az, align 1, !tbaa !59 ; 2 uses
  %i.ba = and i8 %.val.i, 7
  switch i8 %i.ba, label %sdslen.exit [
    i8 0, label %bb.m
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.p
    i8 4, label %bb.q
  ]

bb.m:                                             ; preds = %listTypeInitIterator.exit
  %i.bb = lshr i8 %.val.i, 3
  %i.bc = zext nneg i8 %i.bb to i64
  br label %sdslen.exit

bb.n:                                             ; preds = %listTypeInitIterator.exit
  %i.bd = getelementptr inbounds i8, ptr %i.ay, i64 -3
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !59
  %i.bf = zext i8 %i.be to i64
  br label %sdslen.exit

bb.o:                                             ; preds = %listTypeInitIterator.exit
  %i.bg = getelementptr inbounds i8, ptr %i.ay, i64 -5
  %i.bh = load i16, ptr %i.bg, align 1, !tbaa !60
  %i.bi = zext i16 %i.bh to i64
  br label %sdslen.exit

bb.p:                                             ; preds = %listTypeInitIterator.exit
  %i.bj = getelementptr inbounds i8, ptr %i.ay, i64 -9
  %i.bk = load i32, ptr %i.bj, align 1, !tbaa !9
  %i.bl = zext i32 %i.bk to i64
  br label %sdslen.exit

bb.q:                                             ; preds = %listTypeInitIterator.exit
  %i.bm = getelementptr inbounds i8, ptr %i.ay, i64 -17
  %i.bn = load i64, ptr %i.bm, align 1, !tbaa !17
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %listTypeInitIterator.exit, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q
  %.0.i = phi i64 [ %i.bn, %bb.q ], [ %i.bc, %bb.m ], [ %i.bf, %bb.n ], [ %i.bi, %bb.o ], [ %i.bl, %bb.p ], [ 0, %listTypeInitIterator.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i64 0, ptr %i.b, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 0, ptr %i.c, align 4, !tbaa !9
  %i.bo = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !100
  %.not54 = icmp eq i32 %i.bo, 0
  br i1 %.not54, label %bb.s, label %bb.r

bb.r:                                             ; preds = %sdslen.exit
  %i.bp = call i64 @kvobjAllocSize(ptr noundef nonnull %i.o) #8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %sdslen.exit
  %.047 = phi i64 [ %i.bp, %bb.r ], [ 0, %sdslen.exit ] ; 2 uses
  %i.bq = call i32 @listTypeNext(ptr noundef nonnull %1, ptr noundef nonnull %2)
  %.not5564 = icmp eq i32 %i.bq, 0
  br i1 %.not5564, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s, %bb.u
  %.065 = phi i64 [ %.1, %bb.u ], [ 0, %bb.s ]    ; 2 uses
  %i.br = call i32 @listTypeEqual(ptr noundef nonnull %2, ptr noundef %i.g, i64 noundef %.0.i, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %.not56 = icmp eq i32 %i.br, 0
  br i1 %.not56, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  call void @listTypeDelete(ptr noundef nonnull %1, ptr noundef nonnull %2)
  %i.bs = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !102
  %i.bt = add nsw i64 %i.bs, 1
  store i64 %i.bt, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !102
  %i.bu = add nsw i64 %.065, 1                    ; 3 uses
  %i.bv = load i64, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %.not57 = icmp ne i64 %i.bv, 0
  %i.bw = icmp eq i64 %i.bu, %i.bv
  %or.cond = select i1 %.not57, i1 %i.bw, i1 false
  br i1 %or.cond, label %._crit_edge, label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph
  %.1 = phi i64 [ %.065, %.lr.ph ], [ %i.bu, %bb.t ] ; 2 uses
  %i.bx = call i32 @listTypeNext(ptr noundef nonnull %1, ptr noundef nonnull %2)
  %.not55 = icmp eq i32 %i.bx, 0
  br i1 %.not55, label %._crit_edge, label %.lr.ph, !llvm.loop !123

._crit_edge:                                      ; preds = %bb.u, %bb.t, %bb.s
  %.2 = phi i64 [ 0, %bb.s ], [ %i.bu, %bb.t ], [ %.1, %bb.u ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !71
  %i.ca = icmp eq i8 %i.bz, 9
  br i1 %i.ca, label %bb.v, label %listTypeResetIterator.exit

bb.v:                                             ; preds = %._crit_edge
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @quicklistResetIterator(ptr noundef nonnull %i.cb) #8
  br label %listTypeResetIterator.exit

listTypeResetIterator.exit:                       ; preds = %._crit_edge, %bb.v
  %.not58 = icmp eq i64 %.2, 0
  br i1 %.not58, label %bb.ag, label %bb.w

bb.w:                                             ; preds = %listTypeResetIterator.exit
  %i.cc = load i64, ptr %i.o, align 8
  %3 = trunc i64 %i.cc to i32
  %4 = lshr i32 %3, 4
  %5 = and i32 %4, 15
  switch i32 %5, label %bb.z [
    i32 9, label %bb.x
    i32 11, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !14
  %i.cf = call i64 @quicklistCount(ptr noundef %i.ce) #8
  br label %listTypeLength.exit

bb.y:                                             ; preds = %bb.w
  %i.cg = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !14
  %i.ci = call i64 @lpLength(ptr noundef %i.ch) #8
  br label %listTypeLength.exit

bb.z:                                             ; preds = %bb.w
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 211, ptr noundef nonnull @.str.1) #8
  call void @abort() #9
  unreachable

listTypeLength.exit:                              ; preds = %bb.x, %bb.y
  %.0.i63 = phi i64 [ %i.cf, %bb.x ], [ %i.ci, %bb.y ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !83
  %i.cl = load ptr, ptr %i.d, align 8, !tbaa !97
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !57
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !14
  %i.cq = call i32 @getKeySlot(ptr noundef %i.cp) #8
  %i.cr = add nsw i64 %.0.i63, %.2
  call void @updateKeysizesHist(ptr noundef %i.ck, i32 noundef %i.cq, i32 noundef 1, i64 noundef %i.cr, i64 noundef %.0.i63) #8
  %i.cs = load ptr, ptr %i.d, align 8, !tbaa !97
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !57
  %i.cv = load ptr, ptr %i.cj, align 8, !tbaa !83
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 72
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !104
  call void @notifyKeyspaceEvent(i32 noundef 16, ptr noundef nonnull @.str.24, ptr noundef %i.cu, i32 noundef %i.cx) #8
  %i.cy = icmp eq i64 %.0.i63, 0
  br i1 %i.cy, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %listTypeLength.exit
  %i.cz = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !100
  %.not60 = icmp eq i32 %i.cz, 0
  br i1 %.not60, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = load ptr, ptr %i.cj, align 8, !tbaa !83
  %i.db = load ptr, ptr %i.d, align 8, !tbaa !97
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !57
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !14
  %i.dg = call i32 @getKeySlot(ptr noundef %i.df) #8
  %i.dh = call i64 @kvobjAllocSize(ptr noundef nonnull %i.o) #8
  call void @updateSlotAllocSize(ptr noundef %i.da, i32 noundef %i.dg, ptr noundef nonnull %i.o, i64 noundef %.047, i64 noundef %i.dh) #8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.di = load ptr, ptr %i.cj, align 8, !tbaa !83
  %i.dj = load ptr, ptr %i.d, align 8, !tbaa !97
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !57
  %i.dm = call i32 @dbDelete(ptr noundef %i.di, ptr noundef %i.dl) #8 ; 0 uses
  %i.dn = load ptr, ptr %i.d, align 8, !tbaa !97
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !57
  %i.dq = load ptr, ptr %i.cj, align 8, !tbaa !83
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 72
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !104
  call void @notifyKeyspaceEvent(i32 noundef 4, ptr noundef nonnull @.str.15, ptr noundef %i.dp, i32 noundef %i.ds) #8
  br label %bb.af

bb.ad:                                            ; preds = %listTypeLength.exit
  call fastcc void @listTypeTryConversionRaw(ptr noundef nonnull %i.o, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null)
  %i.dt = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !100
  %.not59 = icmp eq i32 %i.dt, 0
  br i1 %.not59, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.du = load ptr, ptr %i.cj, align 8, !tbaa !83
  %i.dv = load ptr, ptr %i.d, align 8, !tbaa !97
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !57
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !14
  %i.ea = call i32 @getKeySlot(ptr noundef %i.dz) #8
  %i.eb = call i64 @kvobjAllocSize(ptr noundef nonnull %i.o) #8
  call void @updateSlotAllocSize(ptr noundef %i.du, i32 noundef %i.ea, ptr noundef nonnull %i.o, i64 noundef %.047, i64 noundef %i.eb) #8
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.ac
  %i.ec = phi ptr [ %i.o, %bb.ad ], [ %i.o, %bb.ae ], [ null, %bb.ac ]
  %i.ed = load ptr, ptr %i.cj, align 8, !tbaa !83
  %i.ee = load ptr, ptr %i.d, align 8, !tbaa !97
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !57
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.ed, ptr noundef %i.eg, ptr noundef %i.ec, i32 noundef 1) #8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %listTypeResetIterator.exit
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %.2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @lmoveHandlePush(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !57
  store ptr %3, ptr %i.b, align 8, !tbaa !57
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @createListListpackObject() #8
  store ptr %i.c, ptr %i.a, align 8, !tbaa !57
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.f = call ptr @dbAdd(ptr noundef %i.e, ptr noundef %1, ptr noundef nonnull %i.a) #8 ; 0 uses
  %.pre14.pre = load ptr, ptr %i.a, align 8, !tbaa !57
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.pre14 = phi ptr [ %.pre14.pre, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !100
  %.not12 = icmp eq i32 %i.g, 0
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = call i64 @kvobjAllocSize(ptr noundef %.pre14) #8
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !57
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi ptr [ %.pre, %bb.d ], [ %.pre14, %bb.c ]
  %.0 = phi i64 [ %i.h, %bb.d ], [ 0, %bb.c ]
  call fastcc void @listTypeTryConversionRaw(ptr noundef %i.i, i32 noundef 1, ptr noundef nonnull readonly %i.b, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null)
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !57
  call void @listTypePush(ptr noundef %i.j, ptr noundef %3, i32 noundef %4)
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !100
  %.not13 = icmp eq i32 %i.k, 0
  br i1 %.not13, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !83
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14
  %i.p = call i32 @getKeySlot(ptr noundef %i.o) #8
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.r = call i64 @kvobjAllocSize(ptr noundef %i.q) #8
  call void @updateSlotAllocSize(ptr noundef %i.m, i32 noundef %i.p, ptr noundef %i.q, i64 noundef %.0, i64 noundef %i.r) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !83
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !57
  call void @keyModified(ptr noundef %0, ptr noundef %i.t, ptr noundef %1, ptr noundef %i.u, i32 noundef 1) #8
  %i.v = icmp eq i32 %4, 0
  %i.w = select i1 %i.v, ptr @.str.5, ptr @.str.6
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !83
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.z = load i32, ptr %i.y, align 8, !tbaa !104
  call void @notifyKeyspaceEvent(i32 noundef 16, ptr noundef nonnull %i.w, ptr noundef %1, i32 noundef %i.z) #8
  call void @addReplyBulk(ptr noundef %0, ptr noundef %3) #8
  ret void
}

declare ptr @dbAdd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @getListPositionFromObjectOrReply(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.c = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.25) #10
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.26) #10
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !107
  tail call void @addReplyErrorObject(ptr noundef %0, ptr noundef %i.g) #8
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %storemerge = phi i32 [ 1, %bb.a ], [ 0, %bb.b ]
  store i32 %storemerge, ptr %2, align 4, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.d ], [ -1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @getStringObjectFromListPosition(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  %.val = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 504), align 8
  %.val1 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 512), align 8
  %.0 = select i1 %i.a, ptr %.val, ptr %.val1
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @lmoveGenericCommand(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !109
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @shared, i64 64), i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57
  %i.j = tail call ptr @lookupKeyWriteOrReply(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.i) #8 ; 11 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.j, i32 noundef 1) #8
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.j, align 8
  %3 = trunc i64 %i.m to i32
  %4 = lshr i32 %3, 4
  %5 = and i32 %4, 15
  switch i32 %5, label %bb.f [
    i32 9, label %bb.d
    i32 11, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14
  %i.p = tail call i64 @quicklistCount(ptr noundef %i.o) #8
  br label %listTypeLength.exit

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.s = tail call i64 @lpLength(ptr noundef %i.r) #8
  br label %listTypeLength.exit

bb.f:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 211, ptr noundef nonnull @.str.1) #8
  tail call void @abort() #9
  unreachable

listTypeLength.exit:                              ; preds = %bb.d, %bb.e
  %.0.i = phi i64 [ %i.p, %bb.d ], [ %i.s, %bb.e ]
  %i.t = icmp eq i64 %.0.i, 0
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %listTypeLength.exit
  tail call void @addReplyNull(ptr noundef nonnull %0) #8
  br label %.critedge

bb.h:                                             ; preds = %listTypeLength.exit
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !97   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !57
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !83
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !57
  %i.ab = tail call ptr @lookupKeyWrite(ptr noundef %i.y, ptr noundef %i.aa) #8 ; 6 uses
  %.not56 = icmp eq ptr %i.ab, null
  br i1 %.not56, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.ab, i32 noundef 1) #8
  %.not57 = icmp eq i32 %i.ac, 0
  br i1 %.not57, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.ad = load i64, ptr %i.ab, align 8
  %6 = trunc i64 %i.ad to i32
  %7 = lshr i32 %6, 4
  %8 = and i32 %7, 15
  switch i32 %8, label %bb.m [
    i32 9, label %bb.k
    i32 11, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !14
  %i.ag = tail call i64 @quicklistCount(ptr noundef %i.af) #8
  br label %listTypeLength.exit62

bb.l:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !14
  %i.aj = tail call i64 @lpLength(ptr noundef %i.ai) #8
  br label %listTypeLength.exit62

bb.m:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 211, ptr noundef nonnull @.str.1) #8
  tail call void @abort() #9
  unreachable

listTypeLength.exit62:                            ; preds = %bb.k, %bb.l
  %.0.i61 = phi i64 [ %i.ag, %bb.k ], [ %i.aj, %bb.l ] ; 2 uses
  %i.ak = add nsw i64 %.0.i61, 1
  br label %bb.n

bb.n:                                             ; preds = %listTypeLength.exit62, %bb.h
  %.050 = phi i64 [ %.0.i61, %listTypeLength.exit62 ], [ 0, %bb.h ]
  %.049 = phi i64 [ %i.ak, %listTypeLength.exit62 ], [ 1, %bb.h ]
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !100
  %.not58 = icmp eq i32 %i.al, 0
  br i1 %.not58, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.j) #8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0 = phi i64 [ %i.am, %bb.o ], [ 0, %bb.n ]
  %i.an = tail call ptr @listTypePop(ptr noundef nonnull %i.j, i32 noundef %1) ; 3 uses
  %.not59 = icmp eq ptr %i.an, null
  br i1 %.not59, label %bb.q, label %bb.r, !prof !114

bb.q:                                             ; preds = %bb.p
  tail call void @_serverAssert(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str, i32 noundef 1231) #8
  tail call void @abort() #9
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ao = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !100
  %.not60 = icmp eq i32 %i.ao, 0
  br i1 %.not60, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ap = load ptr, ptr %i.x, align 8, !tbaa !83
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !97
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !57
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !14
  %i.av = tail call i32 @getKeySlot(ptr noundef %i.au) #8
  %i.aw = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.j) #8
  tail call void @updateSlotAllocSize(ptr noundef %i.ap, i32 noundef %i.av, ptr noundef nonnull %i.j, i64 noundef %.0, i64 noundef %i.aw) #8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !97
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !57
  tail call void @lmoveHandlePush(ptr noundef nonnull %0, ptr noundef %i.az, ptr noundef %i.ab, ptr noundef nonnull %i.an, i32 noundef %2)
  %i.ba = load ptr, ptr %i.x, align 8, !tbaa !83
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !97
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !57
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !14
  %i.bg = tail call i32 @getKeySlot(ptr noundef %i.bf) #8
  tail call void @updateKeysizesHist(ptr noundef %i.ba, i32 noundef %i.bg, i32 noundef 1, i64 noundef %.050, i64 noundef %.049) #8
  %i.bh = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.j) #8
  tail call void @listElementsRemoved(ptr noundef nonnull %0, ptr noundef %i.w, i32 noundef %1, ptr noundef nonnull %i.j, i64 noundef 1, i64 noundef %i.bh, i32 noundef 1, ptr noundef null)
  tail call void @decrRefCount(ptr noundef nonnull %i.an) #8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !124
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 96
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !125 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, @blmoveCommand
  br i1 %i.bm, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 448), align 8, !tbaa !131
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !97  ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !57
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !57
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !57
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !57
  tail call void (ptr, i32, ...) @rewriteClientCommandVector(ptr noundef nonnull %0, i32 noundef 5, ptr noundef %i.bn, ptr noundef %i.bq, ptr noundef %i.bs, ptr noundef %i.bu, ptr noundef %i.bw) #8
  br label %.critedge

bb.v:                                             ; preds = %bb.t
  %i.bx = icmp eq ptr %i.bl, @brpoplpushCommand
  br i1 %i.bx, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 440), align 8, !tbaa !132
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !97  ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !57
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !57
  tail call void (ptr, i32, ...) @rewriteClientCommandVector(ptr noundef nonnull %0, i32 noundef 3, ptr noundef %i.by, ptr noundef %i.cb, ptr noundef %i.cd) #8
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.g, %bb.u, %bb.w, %bb.v, %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @blmoveCommand(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !97   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14   ; 2 uses
  %i.h = tail call i32 @strcasecmp(ptr noundef %i.g, ptr noundef nonnull @.str.25) #10
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i32 @strcasecmp(ptr noundef %i.g, ptr noundef nonnull @.str.26) #10
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %getListPositionFromObjectOrReply.exit

getListPositionFromObjectOrReply.exit:            ; preds = %bb.b
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !107
  tail call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.l) #8
  br label %bb.g

bb.c:                                             ; preds = %bb.b, %bb.a
  %.013.ph = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !14   ; 2 uses
  %i.q = tail call i32 @strcasecmp(ptr noundef %i.p, ptr noundef nonnull @.str.25) #10
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = tail call i32 @strcasecmp(ptr noundef %i.p, ptr noundef nonnull @.str.26) #10
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.e, label %getListPositionFromObjectOrReply.exit11

getListPositionFromObjectOrReply.exit11:          ; preds = %bb.d
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !107
  tail call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.u) #8
  br label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.ph = phi i32 [ 0, %bb.d ], [ 1, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !57
  %i.x = call i32 @getTimeoutFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.w, ptr noundef nonnull %i.a, i32 noundef 0) #8
  %.not8 = icmp eq i32 %i.x, 0
  br i1 %.not8, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = load i64, ptr %i.a, align 8, !tbaa !66
  call void @blmoveGenericCommand(ptr noundef nonnull %0, i32 noundef %.013.ph, i32 noundef %.0.ph, i64 noundef %i.y)
  br label %bb.g

bb.g:                                             ; preds = %getListPositionFromObjectOrReply.exit11, %getListPositionFromObjectOrReply.exit, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @brpoplpushCommand(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !97
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57
  %i.f = call i32 @getTimeoutFromObjectOrReply(ptr noundef %0, ptr noundef %i.e, ptr noundef nonnull %i.a, i32 noundef 0) #8
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.a, align 8, !tbaa !66
  call void @blmoveGenericCommand(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 0, i64 noundef %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @lmoveCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %i.g = tail call i32 @strcasecmp(ptr noundef %i.f, ptr noundef nonnull @.str.25) #10
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @strcasecmp(ptr noundef %i.f, ptr noundef nonnull @.str.26) #10
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %getListPositionFromObjectOrReply.exit

getListPositionFromObjectOrReply.exit:            ; preds = %bb.b
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !107
  tail call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.k) #8
  br label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %.010.ph = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !57
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14   ; 2 uses
  %i.p = tail call i32 @strcasecmp(ptr noundef %i.o, ptr noundef nonnull @.str.25) #10
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = tail call i32 @strcasecmp(ptr noundef %i.o, ptr noundef nonnull @.str.26) #10
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %getListPositionFromObjectOrReply.exit8

getListPositionFromObjectOrReply.exit8:           ; preds = %bb.d
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !107
  tail call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.t) #8
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.ph = phi i32 [ 0, %bb.d ], [ 1, %bb.c ]
  tail call void @lmoveGenericCommand(ptr noundef nonnull %0, i32 noundef %.010.ph, i32 noundef %.0.ph)
  br label %bb.f

bb.f:                                             ; preds = %getListPositionFromObjectOrReply.exit8, %getListPositionFromObjectOrReply.exit, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @rpoplpushCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @lmoveGenericCommand(ptr noundef %0, i32 noundef 1, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @blockingPopGenericCommand(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !97
  %i.d = sext i32 %4 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57
  %i.g = call i32 @getTimeoutFromObjectOrReply(ptr noundef %0, ptr noundef %i.f, ptr noundef nonnull %i.a, i32 noundef 0) #8
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.h = icmp sgt i32 %2, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !57   ; 6 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !83
  %i.m = call ptr @lookupKeyWrite(ptr noundef %i.l, ptr noundef %i.k) #8 ; 9 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.m, i32 noundef 1) #8
  %.not61 = icmp eq i32 %i.o, 0
  br i1 %.not61, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.m, align 8
  %6 = trunc i64 %i.p to i32
  %7 = lshr i32 %6, 4
  %8 = and i32 %7, 15
  switch i32 %8, label %bb.g [
    i32 9, label %bb.e
    i32 11, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.s = call i64 @quicklistCount(ptr noundef %i.r) #8
  br label %listTypeLength.exit

bb.f:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !14
  %i.v = call i64 @lpLength(ptr noundef %i.u) #8
  br label %listTypeLength.exit

bb.g:                                             ; preds = %bb.d
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 211, ptr noundef nonnull @.str.1) #8
  call void @abort() #9
  unreachable

listTypeLength.exit:                              ; preds = %bb.e, %bb.f
  %.0.i = phi i64 [ %i.s, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.w = icmp eq i64 %.0.i, 0
  br i1 %i.w, label %.critedge, label %bb.h

bb.h:                                             ; preds = %listTypeLength.exit
  %.not62 = icmp eq i64 %5, -1
  br i1 %.not62, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @listPopRangeAndReplyWithKey(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef %i.k, i32 noundef %3, i64 noundef %5, i32 noundef 1, ptr noundef null)
  %i.x = call i64 @llvm.smin.i64(i64 %5, i64 %.0.i)
  %i.y = call ptr @createStringObjectFromLongLong(i64 noundef %i.x) #8 ; 2 uses
  %i.z = icmp eq i32 %3, 0
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 424), align 8
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 416), align 8
  %i.ac = select i1 %i.z, ptr %i.aa, ptr %i.ab
  call void (ptr, i32, ...) @rewriteClientCommandVector(ptr noundef nonnull %0, i32 noundef 3, ptr noundef %i.ac, ptr noundef %i.k, ptr noundef %i.y) #8
  call void @decrRefCount(ptr noundef %i.y) #8
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !100
  %.not63 = icmp eq i32 %i.ad, 0
  br i1 %.not63, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = call i64 @kvobjAllocSize(ptr noundef nonnull %i.m) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.053 = phi i64 [ %i.ae, %bb.k ], [ 0, %bb.j ]
  %i.af = call ptr @listTypePop(ptr noundef nonnull %i.m, i32 noundef %3) ; 3 uses
  %.not64 = icmp eq ptr %i.af, null
  br i1 %.not64, label %bb.m, label %bb.n, !prof !114

bb.m:                                             ; preds = %bb.l
  call void @_serverAssert(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str, i32 noundef 1332) #8
  call void @abort() #9
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef 2) #8
  call void @addReplyBulk(ptr noundef nonnull %0, ptr noundef %i.k) #8
  call void @addReplyBulk(ptr noundef nonnull %0, ptr noundef nonnull %i.af) #8
  call void @decrRefCount(ptr noundef nonnull %i.af) #8
  call void @listElementsRemoved(ptr noundef nonnull %0, ptr noundef %i.k, i32 noundef %3, ptr noundef nonnull %i.m, i64 noundef 1, i64 noundef %.053, i32 noundef 1, ptr noundef null)
  %i.ag = icmp eq i32 %3, 0
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 424), align 8
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 416), align 8
  %i.aj = select i1 %i.ag, ptr %i.ah, ptr %i.ai
  call void (ptr, i32, ...) @rewriteClientCommandVector(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %i.aj, ptr noundef %i.k) #8
  br label %.loopexit

.critedge:                                        ; preds = %listTypeLength.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !133

._crit_edge:                                      ; preds = %.critedge, %.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !134
  %i.am = and i64 %i.al, 2199023255552
  %.not60 = icmp eq i64 %i.am, 0
  br i1 %.not60, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  call void @addReplyNullArray(ptr noundef nonnull %0) #8
  br label %.loopexit

bb.p:                                             ; preds = %._crit_edge
  %i.an = load i64, ptr %i.a, align 8, !tbaa !66
  call void @blockForKeys(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %1, i32 noundef %2, i64 noundef %i.an, i32 noundef 0) #8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.i, %bb.n, %bb.a, %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

declare i32 @getTimeoutFromObjectOrReply(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @blockForKeys(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @blpopCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !101  ; 2 uses
  %i.f = add nsw i32 %i.e, -2
  %i.g = add nsw i32 %i.e, -1
  tail call void @blockingPopGenericCommand(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef %i.f, i32 noundef 0, i32 noundef %i.g, i64 noundef -1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @brpopCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !101  ; 2 uses
  %i.f = add nsw i32 %i.e, -2
  %i.g = add nsw i32 %i.e, -1
  tail call void @blockingPopGenericCommand(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef %i.f, i32 noundef 1, i32 noundef %i.g, i64 noundef -1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @blmoveGenericCommand(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !97
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57
  %i.g = tail call ptr @lookupKeyWrite(ptr noundef %i.b, ptr noundef %i.f) #8 ; 6 uses
  %i.h = tail call i32 @checkType(ptr noundef %0, ptr noundef %i.g, i32 noundef 1) #8
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %i.g, null
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !134
  %i.l = and i64 %i.k, 2199023255552
  %.not16 = icmp eq i64 %i.l, 0
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @addReplyNull(ptr noundef nonnull %0) #8
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !97
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  tail call void @blockForKeys(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %i.n, i32 noundef 1, i64 noundef %3, i32 noundef 0) #8
  br label %bb.l

bb.f:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.g, align 8
  %4 = trunc i64 %i.o to i32
  %5 = lshr i32 %4, 4
  %6 = and i32 %5, 15
  switch i32 %6, label %bb.i [
    i32 9, label %bb.g
    i32 11, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !14
  %i.r = tail call i64 @quicklistCount(ptr noundef %i.q) #8
  br label %listTypeLength.exit

bb.h:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.u = tail call i64 @lpLength(ptr noundef %i.t) #8
  br label %listTypeLength.exit

bb.i:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 211, ptr noundef nonnull @.str.1) #8
  tail call void @abort() #9
  unreachable

listTypeLength.exit:                              ; preds = %bb.g, %bb.h
  %.0.i = phi i64 [ %i.r, %bb.g ], [ %i.u, %bb.h ]
  %.not15 = icmp eq i64 %.0.i, 0
  br i1 %.not15, label %bb.j, label %bb.k, !prof !114

bb.j:                                             ; preds = %listTypeLength.exit
  tail call void @_serverAssertWithInfo(ptr noundef nonnull %0, ptr noundef nonnull %i.g, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str, i32 noundef 1384) #8
  tail call void @abort() #9
  unreachable

bb.k:                                             ; preds = %listTypeLength.exit
  tail call void @lmoveGenericCommand(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.e, %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @lmpopGenericCommand(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i64 0, ptr %i.a, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i64 -1, ptr %i.b, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !97
  %i.e = sext i32 %1 to i64                       ; 3 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.h = call i32 @getRangeLongFromObjectOrReply(ptr noundef %0, ptr noundef %i.g, i64 noundef 1, i64 noundef 9223372036854775807, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.29) #8
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.a, align 8, !tbaa !17
  %i.j = add nsw i64 %i.i, %i.e                   ; 2 uses
  %i.k = add nsw i64 %i.j, 1                      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !101
  %i.n = sext i32 %i.m to i64
  %.not35 = icmp slt i64 %i.k, %i.n
  br i1 %.not35, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !107
  call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.o) #8
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !97
  %i.q = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.k
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !57
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !14   ; 2 uses
  %i.u = call i32 @strcasecmp(ptr noundef %i.t, ptr noundef nonnull @.str.25) #10
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = call i32 @strcasecmp(ptr noundef %i.t, ptr noundef nonnull @.str.26) #10
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.f, label %getListPositionFromObjectOrReply.exit

getListPositionFromObjectOrReply.exit:            ; preds = %bb.e
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !107
  call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.y) #8
  br label %.loopexit

bb.f:                                             ; preds = %bb.e, %bb.d
  %.040.ph = phi i32 [ 0, %bb.e ], [ 1, %bb.d ]   ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %bb.f
  %.0.in = phi i64 [ %i.j, %bb.f ], [ %.0, %bb.j ]
  %.0 = add nsw i64 %.0.in, 2                     ; 4 uses
  %i.z = load i32, ptr %i.l, align 8, !tbaa !101  ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp slt i64 %.0, %i.aa
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !17  ; 2 uses
  %i.ad = icmp eq i64 %i.ac, -1                   ; 2 uses
  br i1 %i.ab, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  br i1 %i.ad, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !97
  %i.af = trunc i64 %.0 to i32
  %.neg = add i32 %i.af, 1
  %i.ag = getelementptr [8 x i8], ptr %i.ae, i64 %.0 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !57
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !14
  %i.ak = call i32 @strcasecmp(ptr noundef %i.aj, ptr noundef nonnull @.str.20) #10
  %i.al = icmp eq i32 %i.ak, 0
  %i.am = icmp ne i32 %i.z, %.neg
  %or.cond = and i1 %i.am, %i.al
  br i1 %or.cond, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr i8, ptr %i.ag, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !57
  %i.ap = call i32 @getRangeLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.ao, i64 noundef 1, i64 noundef 9223372036854775807, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.30) #8
  %.not38 = icmp eq i32 %i.ap, 0
  br i1 %.not38, label %bb.g, label %.loopexit, !llvm.loop !135

.critedge:                                        ; preds = %bb.i, %bb.h
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !107
  call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.aq) #8
  br label %.loopexit

bb.k:                                             ; preds = %bb.g
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i64 1, ptr %i.b, align 8, !tbaa !17
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ar = phi i64 [ 1, %bb.l ], [ %i.ac, %bb.k ]  ; 2 uses
  %.not37 = icmp eq i32 %2, 0
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !97
  %i.at = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.av = load i64, ptr %i.a, align 8, !tbaa !17
  %i.aw = trunc i64 %i.av to i32                  ; 2 uses
  br i1 %.not37, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @blockingPopGenericCommand(ptr noundef nonnull %0, ptr noundef nonnull %i.au, i32 noundef %i.aw, i32 noundef %.040.ph, i32 noundef 1, i64 noundef %i.ar)
  br label %.loopexit

bb.o:                                             ; preds = %bb.m
  call void @mpopGenericCommand(ptr noundef nonnull %0, ptr noundef nonnull %i.au, i32 noundef %i.aw, i32 noundef %.040.ph, i64 noundef %i.ar)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %getListPositionFromObjectOrReply.exit, %bb.c, %.critedge, %bb.o, %bb.n, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @lmpopCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @lmpopGenericCommand(ptr noundef %0, i32 noundef 1, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @blmpopCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @lmpopGenericCommand(ptr noundef %0, i32 noundef 2, i32 noundef 1)
  ret void
}

declare void @quicklistNodeLimit(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @quicklistRelease(ptr noundef) local_unnamed_addr #2

declare i32 @quicklistNodeExceedsLimit(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @quicklistNew(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @quicklistAppendListpack(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lpFree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_2
