inline.NumInlined: 283
inline.NumDeleted: 32
begin_hunk_0_@zsetTypeRandomElement:bb.a
  switch i8 %i.p, label %sdslen.exit [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.q = lshr i8 %.val.i, 3
  %i.r = zext nneg i8 %i.q to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds i8, ptr %i.n, i64 -3
  %i.t = load i8, ptr %i.s, align 1, !tbaa !36
  %i.u = zext i8 %i.t to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds i8, ptr %i.n, i64 -5
  %i.w = load i16, ptr %i.v, align 1, !tbaa !37
  %i.x = zext i16 %i.w to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds i8, ptr %i.n, i64 -9
  %i.z = load i32, ptr %i.y, align 1, !tbaa !9
  %i.aa = zext i32 %i.z to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds i8, ptr %i.n, i64 -17
  %i.ac = load i64, ptr %i.ab, align 1, !tbaa !24
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i64 [ %i.ac, %bb.g ], [ %i.r, %bb.c ], [ %i.u, %bb.d ], [ %i.x, %bb.e ], [ %i.aa, %bb.f ], [ 0, %bb.b ]
  %i.ad = trunc i64 %.0.i to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !100
  %.not21 = icmp eq ptr %3, null
  br i1 %.not21, label %bb.o, label %bb.h

bb.h:                                             ; preds = %sdslen.exit
  %i.af = load double, ptr %i.j, align 8, !tbaa !16
  store double %i.af, ptr %3, align 8, !tbaa !16
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !75
  call void @lpRandomPair(ptr noundef %i.ah, i64 noundef %1, ptr noundef %2, ptr noundef nonnull %4, i32 noundef 2) #17
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = load ptr, ptr %4, align 8, !tbaa !98    ; 2 uses
  %.not20 = icmp eq ptr %i.ai, null
  br i1 %.not20, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %spec.store.select.i = call i32 @llvm.umin.i32(i32 %i.ak, i32 127)
  %i.al = zext nneg i32 %spec.store.select.i to i64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 1 %i.ai, i64 %i.al, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.al
  store i8 0, ptr %i.am, align 1, !tbaa !36
  %i.an = call double @fast_float_strtod(ptr noundef nonnull %i.a, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.sink.split

bb.l:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !101
  %i.aq = sitofp i64 %i.ap to double
  br label %.sink.split

.sink.split:                                      ; preds = %bb.l, %bb.k
  %.sink = phi double [ %i.an, %bb.k ], [ %i.aq, %bb.l ]
  store double %.sink, ptr %3, align 8, !tbaa !16
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1956, ptr noundef nonnull @.str.13) #17
  tail call void @abort() #18
  unreachable

bb.o:                                             ; preds = %sdslen.exit, %bb.h, %bb.m
  ret void
}

declare ptr @dictGetFairRandomKey(ptr noundef) local_unnamed_addr #0

declare void @lpRandomPair(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @zaddGenericCommand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !149  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !162  ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load i32, ptr %i.h, align 8, !tbaa !163  ; 5 uses
  %i.j = icmp sgt i32 %i.i, 2
  br i1 %i.j, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %indvars.iv = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %.0243 = phi i32 [ %1, %.lr.ph.preheader ], [ %.1, %bb.l ] ; 7 uses
  %.0153242 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1154, %bb.l ] ; 6 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !162
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !75   ; 6 uses
  %i.o = tail call i32 @strcasecmp(ptr noundef %i.n, ptr noundef nonnull @.str.15) #19
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.p = or i32 %.0243, 2
  br label %bb.l

bb.c:                                             ; preds = %.lr.ph
  %i.q = tail call i32 @strcasecmp(ptr noundef %i.n, ptr noundef nonnull @.str.16) #19
  %.not177 = icmp eq i32 %i.q, 0
  br i1 %.not177, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = or i32 %.0243, 4
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.s = tail call i32 @strcasecmp(ptr noundef %i.n, ptr noundef nonnull @.str.17) #19
  %.not178 = icmp eq i32 %i.s, 0
  br i1 %.not178, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = tail call i32 @strcasecmp(ptr noundef %i.n, ptr noundef nonnull @.str.18) #19
  %.not179 = icmp eq i32 %i.t, 0
  br i1 %.not179, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = or i32 %.0243, 1
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.v = tail call i32 @strcasecmp(ptr noundef %i.n, ptr noundef nonnull @.str.19) #19
  %.not180 = icmp eq i32 %i.v, 0
  br i1 %.not180, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = or i32 %.0243, 8
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.x = tail call i32 @strcasecmp(ptr noundef %i.n, ptr noundef nonnull @.str.20) #19
  %.not181 = icmp eq i32 %i.x, 0
  br i1 %.not181, label %bb.k, label %.thread.loopexit.split.loop.exit

bb.k:                                             ; preds = %bb.j
  %i.y = or i32 %.0243, 16
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.i, %bb.k, %bb.g, %bb.d, %bb.e
  %.1154 = phi i32 [ %.0153242, %bb.k ], [ %.0153242, %bb.i ], [ %.0153242, %bb.g ], [ %.0153242, %bb.b ], [ %.0153242, %bb.d ], [ 1, %bb.e ] ; 2 uses
  %.1 = phi i32 [ %i.y, %bb.k ], [ %i.w, %bb.i ], [ %i.u, %bb.g ], [ %i.p, %bb.b ], [ %i.r, %bb.d ], [ %.0243, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread.loopexit, label %.lr.ph

.thread.loopexit.split.loop.exit:                 ; preds = %bb.j
  %i.z = trunc nuw nsw i64 %indvars.iv to i32
  br label %.thread.loopexit

.thread.loopexit:                                 ; preds = %bb.l, %.thread.loopexit.split.loop.exit
  %.0170.lcssa.ph = phi i32 [ %i.z, %.thread.loopexit.split.loop.exit ], [ %i.i, %bb.l ]
  %.0153.lcssa.ph = phi i32 [ %.0153242, %.thread.loopexit.split.loop.exit ], [ %.1154, %bb.l ]
  %.0.lcssa.ph = phi i32 [ %.0243, %.thread.loopexit.split.loop.exit ], [ %.1, %bb.l ]
  %i.aa = icmp eq i32 %.0153.lcssa.ph, 0
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.a
  %.0170.lcssa = phi i32 [ 2, %bb.a ], [ %.0170.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.0153.lcssa = phi i1 [ true, %bb.a ], [ %i.aa, %.thread.loopexit ]
  %.0.lcssa = phi i32 [ %1, %bb.a ], [ %.0.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %i.ab = trunc i32 %.0.lcssa to i1               ; 4 uses
  %i.ac = and i32 %.0.lcssa, 4
  %.not182 = icmp eq i32 %i.ac, 0
  %i.ad = sub nsw i32 %i.i, %.0170.lcssa          ; 2 uses
  %i.ae = and i32 %i.ad, 1
  %i.af = icmp eq i32 %i.ae, 0
  %i.ag = icmp ne i32 %i.i, %.0170.lcssa
  %or.cond = and i1 %i.ag, %i.af
  br i1 %or.cond, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.thread
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !164
  tail call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.ah) #17
  br label %bb.ap

bb.n:                                             ; preds = %.thread
  %i.ai = ashr exact i32 %i.ad, 1                 ; 5 uses
  %i.aj = and i32 %.0.lcssa, 6
  %or.cond3 = icmp eq i32 %i.aj, 6
  br i1 %or.cond3, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.21) #17
  br label %bb.ap

bb.p:                                             ; preds = %bb.n
  %2 = insertelement <3 x i32> poison, i32 %.0.lcssa, i64 0
  %3 = shufflevector <3 x i32> %2, <3 x i32> poison, <3 x i32> zeroinitializer
  %.fr293 = freeze <3 x i32> %3
  %4 = and <3 x i32> %.fr293, <i32 10, i32 18, i32 24>
  %5 = icmp eq <3 x i32> %4, <i32 10, i32 18, i32 24>
  %6 = bitcast <3 x i1> %5 to i3
  %.not294 = icmp eq i3 %6, 0
  br i1 %.not294, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.22) #17
  br label %bb.ap

bb.r:                                             ; preds = %bb.p
  %i.ak = icmp sgt i32 %i.ai, 1
  %or.cond11 = select i1 %i.ab, i1 %i.ak, i1 false
  br i1 %or.cond11, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.23) #17
  br label %bb.ap

bb.t:                                             ; preds = %bb.r
  %i.al = sext i32 %i.ai to i64                   ; 4 uses
  %i.am = shl nsw i64 %i.al, 3
  %i.an = tail call noalias ptr @zmalloc(i64 noundef %i.am) #20 ; 3 uses
  %i.ao = icmp sgt i32 %i.ai, 0                   ; 2 uses
  br i1 %i.ao, label %.lr.ph253.preheader, label %._crit_edge

.lr.ph253.preheader:                              ; preds = %bb.t
  %i.ap = zext i32 %.0170.lcssa to i64
  %wide.trip.count270 = zext nneg i32 %i.ai to i64
  br label %.lr.ph253

bb.u:                                             ; preds = %.lr.ph253
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1 ; 2 uses
  %exitcond271.not = icmp eq i64 %indvars.iv.next268, %wide.trip.count270
  br i1 %exitcond271.not, label %._crit_edge, label %.lr.ph253, !llvm.loop !165

.lr.ph253:                                        ; preds = %.lr.ph253.preheader, %bb.u
  %indvars.iv267 = phi i64 [ 0, %.lr.ph253.preheader ], [ %indvars.iv.next268, %bb.u ] ; 3 uses
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !149
  %.idx = shl nuw nsw i64 %indvars.iv267, 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.ap
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !162
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv267
  %i.av = tail call i32 @getDoubleFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.at, ptr noundef %i.au, ptr noundef null) #17
  %.not194 = icmp eq i32 %i.av, 0
  br i1 %.not194, label %bb.u, label %.loopexit

._crit_edge:                                      ; preds = %bb.u, %bb.t
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !166
  %i.ay = tail call ptr @lookupKeyWrite(ptr noundef %i.ax, ptr noundef %i.g) #17 ; 10 uses
  %i.az = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef %i.ay, i32 noundef 3) #17
  %.not183 = icmp eq i32 %i.az, 0
  br i1 %.not183, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %._crit_edge
  %i.ba = icmp eq ptr %i.ay, null
  br i1 %i.ba, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  br i1 %.not182, label %bb.x, label %.thread214

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !149
  %i.bc = zext nneg i32 %.0170.lcssa to i64
  %i.bd = getelementptr [8 x i8], ptr %i.bb, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !162
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !75
  %i.bi = tail call fastcc i64 @sdslen(ptr noundef %i.bh)
  %i.bj = tail call ptr @zsetTypeCreate(i64 noundef %i.al, i64 noundef %i.bi)
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !162
  %i.bk = load ptr, ptr %i.aw, align 8, !tbaa !166
  %i.bl = call ptr @dbAdd(ptr noundef %i.bk, ptr noundef %i.g, ptr noundef nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.ad

bb.y:                                             ; preds = %bb.v
  %i.bm = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !167
  %.not184 = icmp eq i32 %i.bm, 0
  br i1 %.not184, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bn = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.ay) #17
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0143 = phi i64 [ %i.bn, %bb.z ], [ 0, %bb.y ] ; 3 uses
  %i.bo = load i64, ptr %i.ay, align 8
  %i.bp = and i64 %i.bo, 240
  %i.bq = icmp eq i64 %i.bp, 176
  %i.br = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7976), align 8
  %i.bs = icmp ult i64 %i.br, %i.al
  %or.cond.i = select i1 %i.bq, i1 %i.bs, i1 false
  br i1 %or.cond.i, label %bb.ab, label %zsetTypeMaybeConvert.exit

bb.ab:                                            ; preds = %bb.aa
  tail call void @zsetConvertAndExpand(ptr noundef nonnull %i.ay, i32 noundef 7, i64 noundef %i.al)
  br label %zsetTypeMaybeConvert.exit

zsetTypeMaybeConvert.exit:                        ; preds = %bb.aa, %bb.ab
  %i.bt = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !167
  %.not185 = icmp eq i32 %i.bt, 0
  br i1 %.not185, label %.thread203, label %bb.ac

bb.ac:                                            ; preds = %zsetTypeMaybeConvert.exit
  %i.bu = load ptr, ptr %i.aw, align 8, !tbaa !166
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !75
  %i.bx = tail call i32 @getKeySlot(ptr noundef %i.bw) #17
  %i.by = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.ay) #17
  tail call void @updateSlotAllocSize(ptr noundef %i.bu, i32 noundef %i.bx, ptr noundef nonnull %i.ay, i64 noundef %.0143, i64 noundef %i.by) #17
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.x
  %.1144.ph = phi i64 [ %.0143, %bb.ac ], [ 0, %bb.x ]
  %.0140.ph = phi ptr [ %i.ay, %bb.ac ], [ %i.bl, %bb.x ] ; 3 uses
  %.pr = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !167
  %.not186 = icmp eq i32 %.pr, 0
  br i1 %.not186, label %.thread203, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bz = call i64 @kvobjAllocSize(ptr noundef %.0140.ph) #17
  br label %.thread203

.thread203:                                       ; preds = %zsetTypeMaybeConvert.exit, %bb.ae, %bb.ad
  %.0140207 = phi ptr [ %.0140.ph, %bb.ae ], [ %.0140.ph, %bb.ad ], [ %i.ay, %zsetTypeMaybeConvert.exit ] ; 10 uses
  %.2145 = phi i64 [ %i.bz, %bb.ae ], [ %.1144.ph, %bb.ad ], [ %.0143, %zsetTypeMaybeConvert.exit ] ; 2 uses
  %i.ca = call i64 @zsetLength(ptr noundef %.0140207) ; 2 uses
  br i1 %i.ao, label %.lr.ph258, label %._crit_edge259

.lr.ph258:                                        ; preds = %.thread203
  %i.cb = add nuw nsw i32 %.0170.lcssa, 1
  %i.cc = zext i32 %i.cb to i64
  %wide.trip.count275 = zext nneg i32 %i.ai to i64
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph258, %bb.ai
  %indvars.iv272 = phi i64 [ 0, %.lr.ph258 ], [ %indvars.iv.next273, %bb.ai ] ; 3 uses
  %.0157256 = phi i32 [ 0, %.lr.ph258 ], [ %.1158, %bb.ai ]
  %.0161255 = phi i32 [ 0, %.lr.ph258 ], [ %.1162, %bb.ai ] ; 2 uses
  %.0165254 = phi i32 [ 0, %.lr.ph258 ], [ %spec.select, %bb.ai ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv272
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i32 0, ptr %i.c, align 4, !tbaa !9
  %i.cf = load ptr, ptr %i.d, align 8, !tbaa !149
  %.idx281 = shl nuw nsw i64 %indvars.iv272, 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx281
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cc
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !162
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !75
  %i.cl = call i32 @zsetAdd(ptr noundef %.0140207, double noundef %i.ce, ptr noundef %i.ck, i32 noundef %.0.lcssa, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b)
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.14) #17
  %i.cn = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !167
  %.not191 = icmp eq i32 %i.cn, 0
  br i1 %.not191, label %.thread208, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.co = load ptr, ptr %i.aw, align 8, !tbaa !166
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !75
  %i.cr = call i32 @getKeySlot(ptr noundef %i.cq) #17
  %i.cs = call i64 @kvobjAllocSize(ptr noundef %.0140207) #17
  call void @updateSlotAllocSize(ptr noundef %i.co, i32 noundef %i.cr, ptr noundef %.0140207, i64 noundef %.2145, i64 noundef %i.cs) #17
  br label %.thread208

.thread208:                                       ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %.loopexit

bb.ai:                                            ; preds = %bb.af
  %i.ct = load i32, ptr %i.c, align 4, !tbaa !9   ; 3 uses
  %i.cu = lshr i32 %i.ct, 2
  %i.cv = and i32 %i.cu, 1
  %spec.select = add nuw nsw i32 %i.cv, %.0165254 ; 2 uses
  %i.cw = lshr i32 %i.ct, 3
  %i.cx = and i32 %i.cw, 1
  %.1162 = add nuw nsw i32 %i.cx, %.0161255       ; 2 uses
  %i.cy = and i32 %i.ct, 1
  %i.cz = xor i32 %i.cy, 1
  %.1158 = add nuw nsw i32 %i.cz, %.0157256       ; 2 uses
  %i.da = load double, ptr %i.b, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 2 uses
  %exitcond276.not = icmp eq i64 %indvars.iv.next273, %wide.trip.count275
  br i1 %exitcond276.not, label %._crit_edge259.loopexit, label %bb.af, !llvm.loop !168

._crit_edge259.loopexit:                          ; preds = %bb.ai
  %i.db = icmp eq i32 %.1158, 0
  br label %._crit_edge259

._crit_edge259:                                   ; preds = %._crit_edge259.loopexit, %.thread203
  %.0165.lcssa = phi i32 [ 0, %.thread203 ], [ %spec.select, %._crit_edge259.loopexit ] ; 5 uses
end_hunk_0
