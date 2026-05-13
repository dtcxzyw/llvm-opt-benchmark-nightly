inline.NumInlined: 283
inline.NumDeleted: 32
begin_hunk_0_@sdslen:bb.a
  %i.n = getelementptr inbounds i8, ptr %0, i64 -17
  %i.o = load i64, ptr %i.n, align 1, !tbaa !24
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ %i.o, %bb.f ], [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %i.j, %bb.d ], [ %i.m, %bb.e ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @zsetLength(ptr noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = trunc i64 %i.a to i32
  %i.c = lshr i32 %i.b, 4
  %i.d = and i32 %i.c, 15
  switch i32 %i.d, label %bb.d [
    i32 11, label %bb.b
    i32 7, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !75
  %i.g = tail call i64 @lpLength(ptr noundef %i.f) #17
  %i.h = lshr i64 %i.g, 1
  %i.i = and i64 %i.h, 4294967295
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !75
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !103
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !23
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1387, ptr noundef nonnull @.str.7) #17
  tail call void @abort() #18
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.i, %bb.b ], [ %i.o, %bb.c ]
  ret i64 %.0
}

declare void @_serverPanic(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local i64 @zsetAllocSize(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = and i64 %i.a, 15
  %i.c = icmp eq i64 %i.b, 3
  br i1 %i.c, label %bb.c, label %bb.b, !prof !34

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssertWithInfo(ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 1393) #17
  tail call void @abort() #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = trunc i64 %i.a to i32
  %i.e = lshr i32 %i.d, 4
  %i.f = and i32 %i.e, 15
  switch i32 %i.f, label %bb.f [
    i32 11, label %bb.d
    i32 7, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !75
  %i.i = tail call i64 @lpBytes(ptr noundef %i.h) #17
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !75   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !107
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !103
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !25
  %i.q = add i64 %i.p, 72
  %i.r = tail call i64 @dictMemUsage(ptr noundef %i.l) #17
  %i.s = add i64 %i.q, %i.r
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1403, ptr noundef nonnull @.str.7) #17
  tail call void @abort() #18
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i64 [ %i.i, %bb.d ], [ %i.s, %bb.e ]
  ret i64 %.0
}

declare void @_serverAssertWithInfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare i64 @lpBytes(ptr noundef) local_unnamed_addr #0

declare i64 @dictMemUsage(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local ptr @zsetTypeCreate(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7976), align 8, !tbaa !108
  %.not = icmp ugt i64 %0, %i.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7984), align 8
  %.not6 = icmp ugt i64 %1, %i.b
  %or.cond = select i1 %.not, i1 true, i1 %.not6
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @createZsetListpackObject() #17
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @createZsetObject() #17    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !75
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !107
  %i.h = tail call i32 @dictExpand(ptr noundef %i.g, i64 noundef %0) #17 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret ptr %.0
}

declare ptr @createZsetListpackObject() local_unnamed_addr #0

declare ptr @createZsetObject() local_unnamed_addr #0

declare i32 @dictExpand(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @zsetTypeMaybeConvert(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, 240
  %i.c = icmp eq i64 %i.b, 176
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7976), align 8
  %i.e = icmp ugt i64 %1, %i.d
  %or.cond = select i1 %i.c, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @zsetConvertAndExpand(ptr noundef nonnull %0, i32 noundef 7, i64 noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zsetConvertAndExpand(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [128 x i8], align 16              ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %3 = alloca [2 x %struct.listpackEntry], align 16 ; 8 uses
  %i.d = alloca [128 x i8], align 16              ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %i.k = load i64, ptr %0, align 8
  %i.l = trunc i64 %i.k to i32
  %i.m = lshr i32 %i.l, 4
  %i.n = and i32 %i.m, 15                         ; 2 uses
  %i.o = icmp eq i32 %i.n, %1
  br i1 %i.o, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %i.n, label %bb.ae [
    i32 11, label %bb.c
    i32 7, label %bb.r
  ]

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !75   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #17
  %.not50 = icmp eq i32 %1, 7
  br i1 %.not50, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1462, ptr noundef nonnull @.str.9) #17
  tail call void @abort() #18
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = tail call noalias dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #20 ; 5 uses
  %i.s = tail call ptr @dictCreate(ptr noundef nonnull @zsetDictType) #17
  store ptr %i.s, ptr %i.r, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  %i.t = call ptr @zmalloc_usable(i64 noundef 40, ptr noundef nonnull %i.h) #17 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i32 1, ptr %i.u, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 0, ptr %i.v, align 8, !tbaa !23
  %i.w = load i64, ptr %i.h, align 8, !tbaa !24
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 3 uses
  store i64 %i.w, ptr %i.x, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  %i.y = call ptr @zmalloc_usable(i64 noundef 528, ptr noundef nonnull %i.g) #17 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(528) %i.y, i8 0, i64 528, i1 false)
  store i64 2162687, ptr %i.z, align 8, !tbaa !26
  %i.aa = load i64, ptr %i.g, align 8, !tbaa !24
  %i.ab = load i64, ptr %i.x, align 8, !tbaa !25
  %i.ac = add i64 %i.ab, %i.aa
  store i64 %i.ac, ptr %i.x, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  store ptr %i.y, ptr %i.t, align 8, !tbaa !28
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr null, ptr %i.ad, align 8, !tbaa !29
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr null, ptr %i.ae, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store ptr %i.t, ptr %i.af, align 8, !tbaa !103
  %4 = load ptr, ptr %i.r, align 8, !tbaa !107
  %i.ag = call i32 @dictExpand(ptr noundef %4, i64 noundef %2) #17 ; 0 uses
  %i.ah = call ptr @lpSeek(ptr noundef %i.q, i64 noundef 0) #17 ; 3 uses
  %.not51 = icmp eq ptr %i.ah, null
  br i1 %.not51, label %._crit_edge73, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = call ptr @lpNext(ptr noundef %i.q, ptr noundef nonnull %i.ah) #17 ; 2 uses
  %.not52 = icmp eq ptr %i.ai, null
  br i1 %.not52, label %bb.g, label %.lr.ph72.preheader, !prof !91

bb.g:                                             ; preds = %bb.f
  call void @_serverAssertWithInfo(ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1474) #17
  call void @abort() #18
  unreachable

.lr.ph72.preheader:                               ; preds = %bb.f, %bb.p
  %.170 = phi ptr [ %i.bi, %bb.p ], [ %i.ai, %bb.f ] ; 2 uses
  %.06469 = phi ptr [ %i.bh, %bb.p ], [ %i.ah, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  %i.aj = call ptr @lpGetValue(ptr noundef nonnull %.170, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #17 ; 2 uses
  %.not7.i = icmp eq ptr %i.aj, null
  br i1 %.not7.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph72.preheader
  %i.ak = load i32, ptr %i.e, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %spec.store.select.i.i = call i32 @llvm.umin.i32(i32 %i.ak, i32 127)
  %i.al = zext nneg i32 %spec.store.select.i.i to i64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.d, ptr nonnull readonly align 1 %i.aj, i64 %i.al, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.al
  store i8 0, ptr %i.am, align 1, !tbaa !36
  %i.an = call double @fast_float_strtod(ptr noundef nonnull %i.d, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  br label %zzlGetScore.exit

bb.i:                                             ; preds = %.lr.ph72.preheader
  %i.ao = load i64, ptr %i.f, align 8, !tbaa !92
  %i.ap = sitofp i64 %i.ao to double
  br label %zzlGetScore.exit

zzlGetScore.exit:                                 ; preds = %bb.h, %bb.i
  %.0.i = phi double [ %i.an, %bb.h ], [ %i.ap, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  %i.aq = call ptr @lpGetValue(ptr noundef nonnull %.06469, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j) #17 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %zzlGetScore.exit
  %i.as = load i64, ptr %i.j, align 8, !tbaa !92
  %i.at = call ptr @sdsfromlonglong(i64 noundef %i.as) #17
  br label %bb.l

bb.k:                                             ; preds = %zzlGetScore.exit
  %i.au = load i32, ptr %i.i, align 4, !tbaa !9
  %i.av = zext i32 %i.au to i64
  %i.aw = call ptr @sdsnewlen(ptr noundef nonnull %i.aq, i64 noundef %i.av) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.044 = phi ptr [ %i.at, %bb.j ], [ %i.aw, %bb.k ] ; 2 uses
  %i.ax = load ptr, ptr %i.af, align 8, !tbaa !103 ; 2 uses
  %i.ay = fcmp ord double %.0.i, 0.000000e+00
  br i1 %i.ay, label %.preheader.i, label %bb.m, !prof !34

bb.m:                                             ; preds = %bb.l
  call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 329) #17
  call void @abort() #18
  unreachable

.preheader.i:                                     ; preds = %bb.l, %.preheader.i
  %.0.i.i = phi i32 [ %i.bb, %.preheader.i ], [ 1, %bb.l ] ; 2 uses
  %i.az = call i64 @random() #17
  %i.ba = icmp slt i64 %i.az, 536870911
  %i.bb = add nuw nsw i32 %.0.i.i, 1
  br i1 %i.ba, label %.preheader.i, label %zslInsert.exit, !llvm.loop !35

zslInsert.exit:                                   ; preds = %.preheader.i
  %i.bc = call range(i32 0, 33) i32 @llvm.umin.i32(i32 %.0.i.i, i32 32)
  %i.bd = call fastcc ptr @zslCreateNode(ptr noundef %i.ax, i32 noundef %i.bc, double noundef %.0.i, ptr noundef %.044) ; 2 uses
  call fastcc void @zslInsertNode(ptr noundef %i.ax, ptr noundef %i.bd)
  %i.be = load ptr, ptr %i.r, align 8, !tbaa !107
  %i.bf = call i32 @dictAdd(ptr noundef %i.be, ptr noundef %i.bd, ptr noundef null) #17
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.o, label %bb.n, !prof !34

bb.n:                                             ; preds = %zslInsert.exit
  call void @_serverAssert(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 1486) #17
  call void @abort() #18
  unreachable

bb.o:                                             ; preds = %zslInsert.exit
  call void @sdsfree(ptr noundef %.044) #17
  %i.bh = call ptr @lpNext(ptr noundef %i.q, ptr noundef nonnull %.170) #17 ; 3 uses
  %.not14.i = icmp eq ptr %i.bh, null
  br i1 %.not14.i, label %._crit_edge73, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = call ptr @lpNext(ptr noundef %i.q, ptr noundef nonnull %i.bh) #17 ; 2 uses
  %.not15.i = icmp eq ptr %i.bi, null
  br i1 %.not15.i, label %bb.q, label %.lr.ph72.preheader, !prof !91, !llvm.loop !136

bb.q:                                             ; preds = %bb.p
  call void @_serverAssert(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1024) #17
  call void @abort() #18
  unreachable

._crit_edge73:                                    ; preds = %bb.o, %bb.e
  %i.bj = load ptr, ptr %i.p, align 8, !tbaa !75
  call void @zfree(ptr noundef %i.bj) #17
  store ptr %i.r, ptr %i.p, align 8, !tbaa !75
  %i.bk = load i64, ptr %0, align 8
  %i.bl = and i64 %i.bk, -241
  %i.bm = or disjoint i64 %i.bl, 112
  store i64 %i.bm, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #17
  br label %bb.af

bb.r:                                             ; preds = %bb.b
  %i.bn = tail call ptr @lpNew(i64 noundef 0) #17 ; 2 uses
  %.not = icmp eq i32 %1, 11
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1498, ptr noundef nonnull @.str.9) #17
  tail call void @abort() #18
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !75 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !107
  tail call void @dictRelease(ptr noundef %i.bq) #17
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !103
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !28 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !31 ; 2 uses
  tail call void @zfree(ptr noundef %i.bt) #17
  %.not4965 = icmp eq ptr %i.bv, null
  br i1 %.not4965, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph, %zzlInsertAt.exit
  %.067 = phi ptr [ %i.bn, %.lr.ph ], [ %i.cy, %zzlInsertAt.exit ]
  %.04366 = phi ptr [ %i.bv, %.lr.ph ], [ %i.da, %zzlInsertAt.exit ] ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.04366, i64 24
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !13
  %i.cc = zext i16 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %.04366, i64 %i.cc ; 6 uses
  %i.ce = load double, ptr %.04366, align 8, !tbaa !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.cf = call i32 @double2ll(double noundef %i.ce, ptr noundef nonnull %i.c) #17
  %.not.i56 = icmp eq i32 %i.cf, 0                ; 2 uses
  br i1 %.not.i56, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cg = call i32 @d2string(ptr noundef nonnull %i.b, i64 noundef 128, double noundef %i.ce) #17
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.011.i = phi i32 [ 0, %bb.u ], [ %i.cg, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %i.cd, ptr %3, align 16, !tbaa !98
  %i.ch = getelementptr i8, ptr %i.cd, i64 -1
  %.val.i.i = load i8, ptr %i.ch, align 1, !tbaa !36 ; 2 uses
  %i.ci = and i8 %.val.i.i, 7
  switch i8 %i.ci, label %sdslen.exit.i [
    i8 0, label %bb.x
    i8 1, label %bb.y
    i8 2, label %bb.z
    i8 3, label %bb.aa
    i8 4, label %bb.ab
  ]

bb.x:                                             ; preds = %bb.w
  %i.cj = lshr i8 %.val.i.i, 3
  %i.ck = zext nneg i8 %i.cj to i64
  br label %sdslen.exit.i

bb.y:                                             ; preds = %bb.w
  %i.cl = getelementptr inbounds i8, ptr %i.cd, i64 -3
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !36
  %i.cn = zext i8 %i.cm to i64
  br label %sdslen.exit.i

bb.z:                                             ; preds = %bb.w
  %i.co = getelementptr inbounds i8, ptr %i.cd, i64 -5
  %i.cp = load i16, ptr %i.co, align 1, !tbaa !37
  %i.cq = zext i16 %i.cp to i64
  br label %sdslen.exit.i

end_hunk_0
