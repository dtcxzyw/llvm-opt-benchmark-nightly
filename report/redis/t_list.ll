Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/t_list?download=true
inline.NumInlined: 56
inline.NumDeleted: 4
begin_hunk_0
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
define dso_local void @listTypeTryConversion(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @listTypeTryConversionRaw(ptr noundef %0, i32 noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @listTypeTryConversionRaw(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = load i64, ptr %0, align 8                ; 3 uses
  %i.d = trunc i64 %i.c to i32
  %i.e = lshr i32 %i.d, 4
  %i.f = and i32 %i.e, 15
  switch i32 %i.f, label %bb.af [
    i32 9, label %bb.b
    i32 11, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %1, 1
  br i1 %i.g, label %listTypeTryConvertListpack.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %1, 2
  %i.h = and i64 %i.c, 240
  %i.i = icmp eq i64 %i.h, 144
  br i1 %i.i, label %bb.e, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  tail call void @_serverAssert(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str, i32 noundef 68) #8
  tail call void @abort() #9
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16   ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !18
  %.not.i = icmp eq i64 %i.m, 1
  br i1 %.not.i, label %bb.f, label %listTypeTryConvertQuicklist.exit

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !105
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i32, ptr %i.o, align 8
  %i.q = and i32 %i.p, 786432
  %.not16.i = icmp eq i32 %i.q, 524288
  br i1 %.not16.i, label %bb.g, label %listTypeTryConvertQuicklist.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8032), align 8, !tbaa !106
  call void @quicklistNodeLimit(i32 noundef %i.r, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %.pre.i = load i64, ptr %i.a, align 8, !tbaa !18 ; 2 uses
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = lshr i64 %.pre.i, 1                      ; 2 uses
  store i64 %i.s, ptr %i.a, align 8, !tbaa !18
  %i.t = load i32, ptr %i.b, align 4, !tbaa !12
  %i.u = lshr i32 %i.t, 1
  store i32 %i.u, ptr %i.b, align 4, !tbaa !12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = phi i64 [ %i.s, %bb.h ], [ %.pre.i, %bb.g ]
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !105  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !108  ; 2 uses
  %i.z = icmp ugt i64 %i.y, %i.v
  br i1 %i.z, label %listTypeTryConvertQuicklist.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !18
  %i.ac = load i32, ptr %i.b, align 4, !tbaa !12
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp ugt i64 %i.ab, %i.ad
  br i1 %i.ae, label %listTypeTryConvertQuicklist.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not18.i = icmp eq ptr %5, null
  br i1 %.not18.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void %5(ptr noundef %6) #8, !inline_history !102
  %.pre19.i = load ptr, ptr %i.k, align 8, !tbaa !105 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre19.i, i64 24
  %.pre20.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !108
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.af = phi i64 [ %.pre20.i, %bb.l ], [ %i.y, %bb.k ]
  %i.ag = phi ptr [ %.pre19.i, %bb.l ], [ %i.w, %bb.k ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !109
  store ptr %i.ai, ptr %i.j, align 8, !tbaa !16
  store ptr null, ptr %i.ah, align 8, !tbaa !109
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !18
  %i.al = sub i64 %i.ak, %i.af
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !18
  call void @quicklistRelease(ptr noundef nonnull %i.k) #8
  %i.am = load i64, ptr %0, align 8
  %i.an = and i64 %i.am, -241
  %i.ao = or disjoint i64 %i.an, 176
  store i64 %i.ao, ptr %0, align 8
  br label %listTypeTryConvertQuicklist.exit

listTypeTryConvertQuicklist.exit:                 ; preds = %bb.e, %bb.f, %bb.i, %bb.j, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %listTypeTryConvertListpack.exit

bb.n:                                             ; preds = %bb.a
  %i.ap = icmp eq i32 %1, 2
  br i1 %i.ap, label %listTypeTryConvertListpack.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = and i64 %i.c, 240
  %i.ar = icmp eq i64 %i.aq, 176
  br i1 %i.ar, label %bb.q, label %bb.p, !prof !13

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
  %i.as = sext i32 %3 to i64
  %i.at = add i32 %4, 1
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.x, %.preheader.i
  %.029.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %.1.i, %bb.x ]
  %reass.sub = sub i32 %4, %3
  %i.au = add i32 %reass.sub, 1
  br label %bb.y

.lr.ph.i:                                         ; preds = %bb.x, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.as, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.x ] ; 2 uses
  %.02939.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %.1.i, %bb.x ] ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !52 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = trunc i64 %i.ax to i32
  %i.az = lshr i32 %i.ay, 4
  %i.ba = and i32 %i.az, 15
  switch i32 %i.ba, label %bb.x [
    i32 0, label %bb.r
    i32 8, label %bb.r
  ]

bb.r:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !16 ; 5 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 -1
  %.val.i.i = load i8, ptr %i.bd, align 1, !tbaa !53 ; 2 uses
  %i.be = and i8 %.val.i.i, 7
  switch i8 %i.be, label %sdslen.exit.i [
    i8 0, label %bb.s
    i8 1, label %bb.t
    i8 2, label %bb.u
    i8 3, label %bb.v
    i8 4, label %bb.w
  ]

bb.s:                                             ; preds = %bb.r
  %i.bf = lshr i8 %.val.i.i, 3
  %i.bg = zext nneg i8 %i.bf to i64
  br label %sdslen.exit.i

bb.t:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds i8, ptr %i.bc, i64 -3
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !53
  %i.bj = zext i8 %i.bi to i64
  br label %sdslen.exit.i

bb.u:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds i8, ptr %i.bc, i64 -5
  %i.bl = load i16, ptr %i.bk, align 1, !tbaa !55
  %i.bm = zext i16 %i.bl to i64
  br label %sdslen.exit.i

bb.v:                                             ; preds = %bb.r
  %i.bn = getelementptr inbounds i8, ptr %i.bc, i64 -9
  %i.bo = load i32, ptr %i.bn, align 1, !tbaa !12
  %i.bp = zext i32 %i.bo to i64
  br label %sdslen.exit.i

bb.w:                                             ; preds = %bb.r
  %i.bq = getelementptr inbounds i8, ptr %i.bc, i64 -17
  %i.br = load i64, ptr %i.bq, align 1, !tbaa !18
  br label %sdslen.exit.i

sdslen.exit.i:                                    ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %.0.i.i = phi i64 [ %i.br, %bb.w ], [ %i.bg, %bb.s ], [ %i.bj, %bb.t ], [ %i.bm, %bb.u ], [ %i.bp, %bb.v ], [ 0, %bb.r ]
  %i.bs = add i64 %.0.i.i, %.02939.i
  br label %bb.x

bb.x:                                             ; preds = %sdslen.exit.i, %.lr.ph.i
  %.1.i = phi i64 [ %i.bs, %sdslen.exit.i ], [ %.02939.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.at, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !103

bb.y:                                             ; preds = %._crit_edge.i, %bb.q
  %.2.i = phi i64 [ %.029.lcssa.i, %._crit_edge.i ], [ 0, %bb.q ]
  %.028.i = phi i32 [ %i.au, %._crit_edge.i ], [ 0, %bb.q ]
  %i.bt = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8032), align 8, !tbaa !106
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !16
  %i.bw = tail call i64 @lpBytes(ptr noundef %i.bv) #8
  %i.bx = add i64 %i.bw, %.2.i
  %i.by = load ptr, ptr %i.bu, align 8, !tbaa !16
  %i.bz = tail call i64 @lpLength(ptr noundef %i.by) #8
  %7 = trunc i64 %i.bz to i32
  %8 = add i32 %.028.i, %7
  %i.ca = tail call i32 @quicklistNodeExceedsLimit(i32 noundef %i.bt, i64 noundef %i.bx, i32 noundef %8) #8
  %.not35.i = icmp eq i32 %i.ca, 0
  br i1 %.not35.i, label %listTypeTryConvertListpack.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not36.i = icmp eq ptr %5, null
  br i1 %.not36.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void %5(ptr noundef %6) #8, !inline_history !104
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cb = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8032), align 8, !tbaa !106
  %i.cc = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8036), align 4, !tbaa !110
  %i.cd = tail call ptr @quicklistNew(i32 noundef %i.cb, i32 noundef %i.cc) #8 ; 2 uses
  %i.ce = load ptr, ptr %i.bu, align 8, !tbaa !16
  %i.cf = tail call i64 @lpLength(ptr noundef %i.ce) #8
  %.not37.i = icmp eq i64 %i.cf, 0
  %i.cg = load ptr, ptr %i.bu, align 8, !tbaa !16 ; 2 uses
  br i1 %.not37.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @quicklistAppendListpack(ptr noundef %i.cd, ptr noundef %i.cg) #8
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  tail call void @lpFree(ptr noundef %i.cg) #8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  store ptr %i.cd, ptr %i.bu, align 8, !tbaa !16
  %i.ch = load i64, ptr %0, align 8
  %i.ci = and i64 %i.ch, -241
  %i.cj = or disjoint i64 %i.ci, 144
  store i64 %i.cj, ptr %0, align 8
  br label %listTypeTryConvertListpack.exit

bb.af:                                            ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 124, ptr noundef nonnull @.str.1) #8
  tail call void @abort() #9
  unreachable

listTypeTryConvertListpack.exit:                  ; preds = %bb.ae, %bb.y, %bb.n, %bb.b, %listTypeTryConvertQuicklist.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @listTypeTryConversionAppend(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @listTypeTryConversionRaw(ptr noundef %0, i32 noundef 1, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @listTypePush(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = load i64, ptr %0, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = lshr i32 %i.c, 4
  %i.e = and i32 %i.d, 15
  switch i32 %i.e, label %bb.ac [
    i32 9, label %bb.b
    i32 11, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ne i32 %2, 0
  %i.g = sext i1 %i.f to i32                      ; 2 uses
  %i.h = load i64, ptr %1, align 8
  %i.i = and i64 %i.h, 240
  %i.j = icmp eq i64 %i.i, 16
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = call i32 @ll2string(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef %i.m) #8 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16
  %i.q = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #10
  call void @quicklistPush(ptr noundef %i.p, ptr noundef nonnull %i.a, i64 noundef %i.q, i32 noundef %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.ad

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !16   ; 6 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -1
  %.val.i = load i8, ptr %i.v, align 1, !tbaa !53 ; 2 uses
  %i.w = and i8 %.val.i, 7
  switch i8 %i.w, label %sdslen.exit [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.x = lshr i8 %.val.i, 3
  %i.y = zext nneg i8 %i.x to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds i8, ptr %i.u, i64 -3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !53
  %i.ab = zext i8 %i.aa to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds i8, ptr %i.u, i64 -5
  %i.ad = load i16, ptr %i.ac, align 1, !tbaa !55
  %i.ae = zext i16 %i.ad to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds i8, ptr %i.u, i64 -9
  %i.ag = load i32, ptr %i.af, align 1, !tbaa !12
  %i.ah = zext i32 %i.ag to i64
  br label %sdslen.exit

bb.i:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds i8, ptr %i.u, i64 -17
  %i.aj = load i64, ptr %i.ai, align 1, !tbaa !18
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.aj, %bb.i ], [ %i.y, %bb.e ], [ %i.ab, %bb.f ], [ %i.ae, %bb.g ], [ %i.ah, %bb.h ], [ 0, %bb.d ]
  tail call void @quicklistPush(ptr noundef %i.s, ptr noundef nonnull %i.u, i64 noundef %.0.i, i32 noundef %i.g) #8
  br label %bb.ad

bb.j:                                             ; preds = %bb.a
  %i.ak = load i64, ptr %1, align 8
  %i.al = and i64 %i.ak, 240
  %i.am = icmp eq i64 %i.al, 16
  %i.an = icmp eq i32 %2, 0                       ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !16 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !16 ; 12 uses
  br i1 %i.am, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.as = ptrtoint ptr %i.ar to i64               ; 2 uses
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.at = tail call ptr @lpPrependInteger(ptr noundef %i.ap, i64 noundef %i.as) #8
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.au = tail call ptr @lpAppendInteger(ptr noundef %i.ap, i64 noundef %i.as) #8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.av = phi ptr [ %i.at, %bb.l ], [ %i.au, %bb.m ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !16
  br label %bb.ad

bb.o:                                             ; preds = %bb.j
  %i.ax = getelementptr i8, ptr %i.ar, i64 -1
  %.val.i25 = load i8, ptr %i.ax, align 1, !tbaa !53 ; 3 uses
  %i.ay = and i8 %.val.i25, 7                     ; 2 uses
  br i1 %i.an, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  switch i8 %i.ay, label %sdslen.exit27 [
    i8 0, label %bb.q
    i8 1, label %bb.r
    i8 2, label %bb.s
    i8 3, label %bb.t
    i8 4, label %bb.u
  ]

bb.q:                                             ; preds = %bb.p
  %i.az = lshr i8 %.val.i25, 3
  %i.ba = zext nneg i8 %i.az to i64
  br label %sdslen.exit27

bb.r:                                             ; preds = %bb.p
  %i.bb = getelementptr inbounds i8, ptr %i.ar, i64 -3
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !53
  %i.bd = zext i8 %i.bc to i64
  br label %sdslen.exit27

bb.s:                                             ; preds = %bb.p
  %i.be = getelementptr inbounds i8, ptr %i.ar, i64 -5
  %i.bf = load i16, ptr %i.be, align 1, !tbaa !55
  %i.bg = zext i16 %i.bf to i64
  br label %sdslen.exit27

bb.t:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds i8, ptr %i.ar, i64 -9
  %i.bi = load i32, ptr %i.bh, align 1, !tbaa !12
end_hunk_0
