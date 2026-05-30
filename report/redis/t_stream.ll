inline.NumInlined: 273
inline.NumDeleted: 13
begin_hunk_0_@streamDelConsumer:bb.a
  br label %streamUnlinkEntryFromCGroupRef.exit

streamUnlinkEntryFromCGroupRef.exit:              ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !59
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !71 ; 4 uses
  %.not.i13 = icmp eq ptr %i.af, null
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !72 ; 4 uses
  br i1 %.not.i13, label %bb.g, label %bb.f

bb.f:                                             ; preds = %streamUnlinkEntryFromCGroupRef.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !72
  br label %bb.h

bb.g:                                             ; preds = %streamUnlinkEntryFromCGroupRef.exit
  store ptr %i.ah, ptr %i.k, align 8, !tbaa !42
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not13.i = icmp eq ptr %i.ah, null
  br i1 %.not13.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  store ptr %i.af, ptr %i.aj, align 8, !tbaa !71
  br label %pelListUnlink.exit

bb.j:                                             ; preds = %bb.h
  store ptr %i.af, ptr %i.l, align 8, !tbaa !44
  br label %pelListUnlink.exit

pelListUnlink.exit:                               ; preds = %bb.i, %bb.j
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  %i.ak = load ptr, ptr %i.m, align 8, !tbaa !39
  %i.al = load i64, ptr %i.n, align 8, !tbaa !52
  %i.am = call i32 @raxRemove(ptr noundef %i.ak, ptr noundef nonnull %i.ad, i64 noundef %i.al, ptr noundef null) #18 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @zfree_usable(ptr noundef nonnull %i.p, ptr noundef nonnull %i.b) #18
  %i.an = load i64, ptr %i.b, align 8, !tbaa !13
  %i.ao = load i64, ptr %i.o, align 8, !tbaa !15
  %i.ap = sub i64 %i.ao, %i.an
  store i64 %i.ap, ptr %i.o, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.aq = call i32 @raxNext(ptr noundef nonnull %3) #18
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !247

._crit_edge:                                      ; preds = %pelListUnlink.exit, %bb.a
  call void @raxStop(ptr noundef nonnull %3) #18
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !45
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !75 ; 6 uses
  %i.av = getelementptr i8, ptr %i.au, i64 -1
  %.val.i = load i8, ptr %i.av, align 1, !tbaa !69 ; 2 uses
  %i.aw = and i8 %.val.i, 7
  switch i8 %i.aw, label %sdslen.exit [
    i8 0, label %bb.k
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.n
    i8 4, label %bb.o
  ]

bb.k:                                             ; preds = %._crit_edge
  %i.ax = lshr i8 %.val.i, 3
  %i.ay = zext nneg i8 %i.ax to i64
  br label %sdslen.exit

bb.l:                                             ; preds = %._crit_edge
  %i.az = getelementptr inbounds i8, ptr %i.au, i64 -3
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !69
  %i.bb = zext i8 %i.ba to i64
  br label %sdslen.exit

bb.m:                                             ; preds = %._crit_edge
  %i.bc = getelementptr inbounds i8, ptr %i.au, i64 -5
  %i.bd = load i16, ptr %i.bc, align 1, !tbaa !77
  %i.be = zext i16 %i.bd to i64
  br label %sdslen.exit

bb.n:                                             ; preds = %._crit_edge
  %i.bf = getelementptr inbounds i8, ptr %i.au, i64 -9
  %i.bg = load i32, ptr %i.bf, align 1, !tbaa !9
  %i.bh = zext i32 %i.bg to i64
  br label %sdslen.exit

bb.o:                                             ; preds = %._crit_edge
  %i.bi = getelementptr inbounds i8, ptr %i.au, i64 -17
  %i.bj = load i64, ptr %i.bi, align 1, !tbaa !13
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %._crit_edge, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  %.0.i = phi i64 [ %i.bj, %bb.o ], [ %i.ay, %bb.k ], [ %i.bb, %bb.l ], [ %i.be, %bb.m ], [ %i.bh, %bb.n ], [ 0, %._crit_edge ]
  %i.bk = call i32 @raxRemove(ptr noundef %i.as, ptr noundef nonnull %i.au, i64 noundef %.0.i, ptr noundef null) #18 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !79
  call void @raxFree(ptr noundef %i.bl) #18
  %i.bm = load ptr, ptr %i.at, align 8, !tbaa !75 ; 6 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 -1
  %.val.i.i = load i8, ptr %i.bn, align 1, !tbaa !69 ; 2 uses
  %i.bo = and i8 %.val.i.i, 7
  switch i8 %i.bo, label %streamFreeConsumer.exit [
    i8 0, label %bb.p
    i8 1, label %bb.q
    i8 2, label %bb.r
    i8 3, label %bb.s
    i8 4, label %bb.t
  ]

bb.p:                                             ; preds = %sdslen.exit
  %i.bp = lshr i8 %.val.i.i, 3
  %narrow.i.i = add nuw nsw i8 %i.bp, 2
  %i.bq = zext nneg i8 %narrow.i.i to i64
  br label %streamFreeConsumer.exit

bb.q:                                             ; preds = %sdslen.exit
  %i.br = getelementptr inbounds i8, ptr %i.bm, i64 -2
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !69
  %i.bt = zext i8 %i.bs to i64
  %i.bu = add nuw nsw i64 %i.bt, 4
  br label %streamFreeConsumer.exit

bb.r:                                             ; preds = %sdslen.exit
  %i.bv = getelementptr inbounds i8, ptr %i.bm, i64 -3
  %i.bw = load i16, ptr %i.bv, align 1, !tbaa !77
  %i.bx = zext i16 %i.bw to i64
  %i.by = add nuw nsw i64 %i.bx, 6
  br label %streamFreeConsumer.exit

bb.s:                                             ; preds = %sdslen.exit
  %i.bz = getelementptr inbounds i8, ptr %i.bm, i64 -5
  %i.ca = load i32, ptr %i.bz, align 1, !tbaa !9
  %i.cb = zext i32 %i.ca to i64
  %i.cc = add nuw nsw i64 %i.cb, 10
  br label %streamFreeConsumer.exit

bb.t:                                             ; preds = %sdslen.exit
  %i.cd = getelementptr inbounds i8, ptr %i.bm, i64 -9
  %i.ce = load i64, ptr %i.cd, align 1, !tbaa !13
  %i.cf = add i64 %i.ce, 18
  br label %streamFreeConsumer.exit

streamFreeConsumer.exit:                          ; preds = %sdslen.exit, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t
  %.0.i.i = phi i64 [ %i.cf, %bb.t ], [ %i.bq, %bb.p ], [ %i.bu, %bb.q ], [ %i.by, %bb.r ], [ %i.cc, %bb.s ], [ 0, %sdslen.exit ]
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !15
  %i.ci = sub i64 %i.ch, %.0.i.i
  store i64 %i.ci, ptr %i.cg, align 8, !tbaa !15
  call void @sdsfree(ptr noundef nonnull %i.bm) #18
  call void @zfree_usable(ptr noundef nonnull %2, ptr noundef nonnull %i.a) #18
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !13
  %i.ck = load i64, ptr %i.cg, align 8, !tbaa !15
  %i.cl = sub i64 %i.ck, %i.cj
  store i64 %i.cl, ptr %i.cg, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @xgroupCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 12 uses
  %i.d = alloca ptr, align 8                      ; 14 uses
  %i.e = alloca [15 x ptr], align 16              ; 4 uses
  %1 = alloca %struct.streamID, align 8           ; 7 uses
  %2 = alloca %struct.streamID, align 8           ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 26 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !204
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !144
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46   ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i64 -1, ptr %i.c, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !202  ; 5 uses
  %i.n = icmp sgt i32 %i.m, 3
  br i1 %i.n, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.o = tail call i32 @strcasecmp(ptr noundef %i.k, ptr noundef nonnull @.str.55) #22
  %.not177 = icmp eq i32 %i.o, 0
  %i.p = icmp samesign ugt i32 %i.m, 5
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.q = tail call i32 @strcasecmp(ptr noundef %i.k, ptr noundef nonnull @.str.54) #22
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.h
  %i.r = phi i32 [ %i.aj, %bb.h ], [ %i.m, %.lr.ph ] ; 2 uses
  %.0161249.us = phi i1 [ %.1162.us, %bb.h ], [ false, %.lr.ph ]
  %.0164248.us = phi i32 [ %.1165.us, %bb.h ], [ 5, %.lr.ph ] ; 4 uses
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !204  ; 2 uses
  %i.t = sext i32 %.0164248.us to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !144
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !46   ; 2 uses
  %i.y = call i32 @strcasecmp(ptr noundef %i.x, ptr noundef nonnull @.str.56) #22
  %.not180.us = icmp eq i32 %i.y, 0
  br i1 %.not180.us, label %bb.g, label %.critedge.us

.critedge.us:                                     ; preds = %.lr.ph.split.us
  %i.z = call i32 @strcasecmp(ptr noundef %i.x, ptr noundef nonnull @.str.57) #22
  %.not181.us = icmp eq i32 %i.z, 0
  br i1 %.not181.us, label %bb.c, label %.split.us

bb.c:                                             ; preds = %.critedge.us
  %i.aa = add nsw i32 %.0164248.us, 1             ; 2 uses
  %i.ab = icmp slt i32 %i.aa, %i.r
  br i1 %i.ab, label %bb.d, label %.split.us

bb.d:                                             ; preds = %bb.c
  %i.ac = sext i32 %i.aa to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !144
  %i.af = call i32 @getLongLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.ae, ptr noundef nonnull %i.c, ptr noundef null) #18
  %.not182.us = icmp eq i32 %i.af, 0
  br i1 %.not182.us, label %bb.e, label %.critedge208

bb.e:                                             ; preds = %bb.d
  %i.ag = load i64, ptr %i.c, align 8, !tbaa !21
  %or.cond5.us = icmp slt i64 %i.ag, -1
  br i1 %or.cond5.us, label %.split251.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = add nsw i32 %.0164248.us, 2
  %.pre = load i32, ptr %i.l, align 8, !tbaa !202
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.split.us
  %i.ai = add nsw i32 %.0164248.us, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aj = phi i32 [ %.pre, %bb.f ], [ %i.r, %bb.g ] ; 2 uses
  %.1165.us = phi i32 [ %i.ah, %bb.f ], [ %i.ai, %bb.g ] ; 2 uses
  %.1162.us = phi i1 [ %.0161249.us, %bb.f ], [ true, %bb.g ] ; 2 uses
  %i.ak = icmp slt i32 %.1165.us, %i.aj
  br i1 %i.ak, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !248

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not177, label %.critedge, label %.split.us

.critedge:                                        ; preds = %.lr.ph.split, %bb.l
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ 5, %.lr.ph.split ] ; 3 uses
  %i.al = phi i32 [ %i.az, %bb.l ], [ %i.m, %.lr.ph.split ]
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !204 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !144
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !46
  %i.ar = call i32 @strcasecmp(ptr noundef %i.aq, ptr noundef nonnull @.str.57) #22
  %.not181 = icmp eq i32 %i.ar, 0
  br i1 %.not181, label %bb.i, label %.split.us

bb.i:                                             ; preds = %.critedge
  %i.as = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.at = sext i32 %i.al to i64
  %i.au = icmp slt i64 %i.as, %i.at
  br i1 %i.au, label %bb.j, label %.split.us

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.as
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !144
  %i.ax = call i32 @getLongLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.aw, ptr noundef nonnull %i.c, ptr noundef null) #18
  %.not182 = icmp eq i32 %i.ax, 0
  br i1 %.not182, label %bb.k, label %.critedge208

bb.k:                                             ; preds = %bb.j
  %i.ay = load i64, ptr %i.c, align 8, !tbaa !21
  %or.cond5 = icmp slt i64 %i.ay, -1
  br i1 %or.cond5, label %.split251.us, label %bb.l

.split251.us:                                     ; preds = %bb.k, %bb.e
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.58) #18
  br label %.critedge208

bb.l:                                             ; preds = %bb.k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.az = load i32, ptr %i.l, align 8, !tbaa !202 ; 2 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = icmp slt i64 %indvars.iv.next, %i.ba
  br i1 %i.bb, label %.critedge, label %._crit_edge, !llvm.loop !248

.split.us:                                        ; preds = %bb.i, %.critedge, %.critedge.us, %bb.c, %.lr.ph.split
  call void @addReplySubcommandSyntaxError(ptr noundef nonnull %0) #18
  br label %.critedge208

._crit_edge:                                      ; preds = %bb.l, %bb.h, %bb.b
  %.0161.lcssa = phi i1 [ false, %bb.b ], [ %.1162.us, %bb.h ], [ false, %bb.l ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !174
  %i.be = load ptr, ptr %i.f, align 8, !tbaa !204
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !144
  %i.bh = call ptr @lookupKeyWrite(ptr noundef %i.bd, ptr noundef %i.bg) #18 ; 6 uses
  store ptr %i.bh, ptr %i.d, align 8, !tbaa !144
  %.not178 = icmp eq ptr %i.bh, null
  br i1 %.not178, label %bb.o, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.bi = call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.bh, i32 noundef 6) #18
  %.not179 = icmp eq i32 %i.bi, 0
  br i1 %.not179, label %bb.n, label %.critedge208

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !46
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %bb.n
  %.0 = phi ptr [ %i.bk, %bb.n ], [ null, %._crit_edge ] ; 4 uses
  %i.bl = load ptr, ptr %i.f, align 8, !tbaa !204
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !144
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !46 ; 9 uses
  %i.bq = load i32, ptr %i.l, align 8, !tbaa !202 ; 2 uses
  %i.br = icmp slt i32 %i.bq, 4
  %or.cond7 = select i1 %i.br, i1 true, i1 %.0161.lcssa
  br i1 %or.cond7, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = icmp eq ptr %.0, null
  br i1 %i.bs, label %.thread229, label %bb.q

.thread229:                                       ; preds = %bb.p
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.59) #18
  br label %.critedge208

bb.q:                                             ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %.0, i64 80
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !31 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %streamLookupCG.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store ptr null, ptr %i.b, align 8, !tbaa !80
  %i.bw = getelementptr i8, ptr %i.bp, i64 -1
  %.val.i.i = load i8, ptr %i.bw, align 1, !tbaa !69 ; 2 uses
  %i.bx = and i8 %.val.i.i, 7
  switch i8 %i.bx, label %streamLookupCG.exit [
    i8 0, label %bb.s
    i8 1, label %bb.t
    i8 2, label %bb.u
    i8 3, label %bb.v
    i8 4, label %bb.w
  ]

bb.s:                                             ; preds = %bb.r
  %i.by = lshr i8 %.val.i.i, 3
  %i.bz = zext nneg i8 %i.by to i64
  br label %streamLookupCG.exit

bb.t:                                             ; preds = %bb.r
  %i.ca = getelementptr inbounds i8, ptr %i.bp, i64 -3
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !69
  %i.cc = zext i8 %i.cb to i64
  br label %streamLookupCG.exit

bb.u:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds i8, ptr %i.bp, i64 -5
  %i.ce = load i16, ptr %i.cd, align 1, !tbaa !77
  %i.cf = zext i16 %i.ce to i64
  br label %streamLookupCG.exit

bb.v:                                             ; preds = %bb.r
  %i.cg = getelementptr inbounds i8, ptr %i.bp, i64 -9
  %i.ch = load i32, ptr %i.cg, align 1, !tbaa !9
  %i.ci = zext i32 %i.ch to i64
  br label %streamLookupCG.exit

bb.w:                                             ; preds = %bb.r
  %i.cj = getelementptr inbounds i8, ptr %i.bp, i64 -17
  %i.ck = load i64, ptr %i.cj, align 1, !tbaa !13
  br label %streamLookupCG.exit

streamLookupCG.exit:                              ; preds = %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w
  %.0.i.i = phi i64 [ %i.ck, %bb.w ], [ %i.bz, %bb.s ], [ %i.cc, %bb.t ], [ %i.cf, %bb.u ], [ %i.ci, %bb.v ], [ 0, %bb.r ]
  %i.cl = call i32 @raxFind(ptr noundef nonnull %i.bu, ptr noundef nonnull %i.bp, i64 noundef %.0.i.i, ptr noundef nonnull %i.b) #18 ; 0 uses
  %i.cm = load ptr, ptr %i.b, align 8, !tbaa !80  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %streamLookupCG.exit.thread, label %thread-pre-split

streamLookupCG.exit.thread:                       ; preds = %bb.q, %streamLookupCG.exit
  %i.co = call i32 @strcasecmp(ptr noundef %i.k, ptr noundef nonnull @.str.55) #22
  %.not183 = icmp eq i32 %i.co, 0
  br i1 %.not183, label %bb.z, label %bb.x

bb.x:                                             ; preds = %streamLookupCG.exit.thread
  %i.cp = call i32 @strcasecmp(ptr noundef %i.k, ptr noundef nonnull @.str.60) #22
  %.not184 = icmp eq i32 %i.cp, 0
  br i1 %.not184, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cq = call i32 @strcasecmp(ptr noundef %i.k, ptr noundef nonnull @.str.61) #22
  %.not185 = icmp eq i32 %i.cq, 0
  br i1 %.not185, label %bb.z, label %thread-pre-split

bb.z:                                             ; preds = %bb.y, %bb.x, %streamLookupCG.exit.thread
  %i.cr = load ptr, ptr %i.f, align 8, !tbaa !204
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !144
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !46
  call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.62, ptr noundef %i.bp, ptr noundef %i.cv) #18
  br label %.critedge208

thread-pre-split:                                 ; preds = %bb.y, %streamLookupCG.exit
  %.0157.ph = phi ptr [ %i.cm, %streamLookupCG.exit ], [ null, %bb.y ]
  %.pr = load i32, ptr %i.l, align 8, !tbaa !202
  br label %.thread

.thread:                                          ; preds = %bb.a, %thread-pre-split, %bb.o
  %i.cw = phi ptr [ %i.bh, %thread-pre-split ], [ %i.bh, %bb.o ], [ undef, %bb.a ] ; 4 uses
  %i.cx = phi i32 [ %.pr, %thread-pre-split ], [ %i.bq, %bb.o ], [ %i.m, %bb.a ] ; 5 uses
  %i.cy = phi i1 [ false, %thread-pre-split ], [ %.0161.lcssa, %bb.o ], [ false, %bb.a ]
  %.2228 = phi ptr [ %.0, %thread-pre-split ], [ %.0, %bb.o ], [ null, %bb.a ] ; 15 uses
  %.1156226 = phi ptr [ %i.bp, %thread-pre-split ], [ %i.bp, %bb.o ], [ null, %bb.a ] ; 12 uses
  %.0157 = phi ptr [ %.0157.ph, %thread-pre-split ], [ null, %bb.o ], [ null, %bb.a ] ; 10 uses
  %i.cz = icmp eq i32 %i.cx, 2
  br i1 %i.cz, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %.thread
  %i.da = call i32 @strcasecmp(ptr noundef %i.k, ptr noundef nonnull @.str.63) #22
  %.not186 = icmp eq i32 %i.da, 0
  br i1 %.not186, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %i.e, ptr noundef nonnull align 16 dereferenceable(120) @__const.xgroupCommand.help, i64 120, i1 false)
  call void @addReplyHelp(ptr noundef nonnull %0, ptr noundef nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  br label %.critedge208

bb.ac:                                            ; preds = %bb.aa, %.thread
  %i.db = call i32 @strcasecmp(ptr noundef %i.k, ptr noundef nonnull @.str.54) #22
  %.not187 = icmp eq i32 %i.db, 0
  %i.dc = add i32 %i.cx, -5
  %or.cond = icmp ult i32 %i.dc, 4
  %or.cond244 = and i1 %or.cond, %.not187
  br i1 %or.cond244, label %sub_0, label %bb.aw

sub_0:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.dd = load ptr, ptr %i.f, align 8, !tbaa !204
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !144 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !46 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1
  %.not253 = icmp eq i8 %i.di, 36
  br i1 %.not253, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 1
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = icmp eq i8 %i.dk, 0
  br i1 %i.dl, label %bb.ad, label %.tail.thread

bb.ad:                                            ; preds = %.tail
  %.not189 = icmp eq ptr %.2228, null
  br i1 %.not189, label %.thread233, label %.thread234

.thread234:                                       ; preds = %bb.ad
  %i.dm = getelementptr inbounds nuw i8, ptr %.2228, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.dm, i64 16, i1 false), !tbaa.struct !51
  br label %bb.ai

.thread233:                                       ; preds = %bb.ad
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %bb.af

.tail.thread:                                     ; preds = %sub_0, %.tail
  %i.dn = call range(i32 -1, 1) i32 @streamGenericParseIDOrReply(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.df, ptr noundef nonnull %1, i64 noundef 0, i32 noundef 1, ptr noundef null)
  %.not190 = icmp eq i32 %i.dn, 0
  br i1 %.not190, label %bb.ae, label %.critedge210

bb.ae:                                            ; preds = %.tail.thread
  %i.do = icmp eq ptr %.2228, null
  br i1 %i.do, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %.thread233, %bb.ae
  br i1 %i.cy, label %bb.ah, label %bb.ag, !prof !43

bb.ag:                                            ; preds = %bb.af
  call void @_serverAssert(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 3452) #18
  call void @abort() #19
end_hunk_0
begin_hunk_1_@xclaimCommand:bb.a

bb.i:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds i8, ptr %i.x, i64 -17
  %i.ap = load i64, ptr %i.ao, align 1, !tbaa !13
  br label %streamLookupCG.exit

streamLookupCG.exit:                              ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i.i = phi i64 [ %i.ap, %bb.i ], [ %i.ae, %bb.e ], [ %i.ah, %bb.f ], [ %i.ak, %bb.g ], [ %i.an, %bb.h ], [ 0, %bb.d ]
  %i.aq = call i32 @raxFind(ptr noundef nonnull %i.z, ptr noundef nonnull %i.x, i64 noundef %.0.i.i, ptr noundef nonnull %i.d) #18 ; 0 uses
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !80  ; 15 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %i.as = icmp eq ptr %i.ar, null
  %.pre295 = load ptr, ptr %i.l, align 8, !tbaa !204 ; 2 uses
  br i1 %i.as, label %streamLookupCG.exit.thread, label %bb.j

streamLookupCG.exit.thread:                       ; preds = %.streamLookupCG.exit.thread_crit_edge, %bb.c, %streamLookupCG.exit
  %i.at = phi ptr [ %.pre294, %.streamLookupCG.exit.thread_crit_edge ], [ %i.t, %bb.c ], [ %.pre295, %streamLookupCG.exit ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !144
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !46
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !144
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !46
  call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.95, ptr noundef %i.ax, ptr noundef %i.bb) #18
  br label %bb.cv

bb.j:                                             ; preds = %streamLookupCG.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %.pre295, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !144
  %i.be = call i32 @getLongLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.bd, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.96) #18
  %.not208 = icmp eq i32 %i.be, 0
  br i1 %.not208, label %bb.k, label %bb.cv

bb.k:                                             ; preds = %bb.j
  %i.bf = load i64, ptr %i.e, align 8, !tbaa !21
  %i.bg = icmp slt i64 %i.bf, 0
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i64 0, ptr %i.e, align 8, !tbaa !21
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !202 ; 3 uses
  %i.bj = icmp sgt i32 %i.bi, 13
  br i1 %i.bj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bk = add nsw i32 %i.bi, -5
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 4
  %i.bn = call noalias ptr @zmalloc(i64 noundef %i.bm) #20
  %.pre = load i32, ptr %i.bh, align 8, !tbaa !202
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bo = phi i32 [ %.pre, %bb.n ], [ %i.bi, %bb.m ]
  %.0192 = phi ptr [ %i.bn, %bb.n ], [ %3, %bb.m ] ; 4 uses
  %i.bp = icmp sgt i32 %i.bo, 5
  br i1 %i.bp, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.o, %bb.p
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.p ], [ 5, %bb.o ] ; 4 uses
  %i.bq = load ptr, ptr %i.l, align 8, !tbaa !204
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !144
  %i.bt = getelementptr [16 x i8], ptr %.0192, i64 %indvars.iv
  %i.bu = getelementptr i8, ptr %i.bt, i64 -80
  %i.bv = call range(i32 -1, 1) i32 @streamGenericParseIDOrReply(ptr noundef null, ptr noundef readonly %i.bs, ptr noundef %i.bu, i64 noundef 0, i32 noundef 1, ptr noundef null)
  %.not209 = icmp eq i32 %i.bv, 0
  br i1 %.not209, label %bb.p, label %._crit_edge.loopexit

bb.p:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bw = load i32, ptr %i.bh, align 8, !tbaa !202
  %i.bx = sext i32 %i.bw to i64
  %i.by = icmp slt i64 %indvars.iv.next, %i.bx
  br i1 %i.by, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !265

._crit_edge.loopexit:                             ; preds = %.lr.ph, %bb.p
  %.0189.lcssa.ph.in = phi i64 [ %indvars.iv.next, %bb.p ], [ %indvars.iv, %.lr.ph ]
  %.0189.lcssa.ph = trunc i64 %.0189.lcssa.ph.in to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.o
  %.0189.lcssa = phi i32 [ 5, %bb.o ], [ %.0189.lcssa.ph, %._crit_edge.loopexit ] ; 4 uses
  %i.bz = call i64 @commandTimeSnapshot() #18     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.ca = load i32, ptr %i.bh, align 8, !tbaa !202 ; 2 uses
  %i.cb = icmp slt i32 %.0189.lcssa, %i.ca
  br i1 %i.cb, label %.lr.ph273, label %._crit_edge274.thread

._crit_edge274.thread:                            ; preds = %._crit_edge
  %i.cc = load i64, ptr %i.ar, align 8, !tbaa !50
  br label %bb.ac

.lr.ph273:                                        ; preds = %._crit_edge, %bb.ab
  %i.cd = phi i32 [ %i.do, %bb.ab ], [ %i.ca, %._crit_edge ]
  %.0180271 = phi i32 [ %.1181, %bb.ab ], [ 0, %._crit_edge ] ; 5 uses
  %.0184270 = phi i32 [ %.1185, %bb.ab ], [ 0, %._crit_edge ] ; 5 uses
  %.1190269 = phi i32 [ %i.dn, %bb.ab ], [ %.0189.lcssa, %._crit_edge ] ; 4 uses
  %.neg = add nsw i32 %.1190269, 1                ; 9 uses
  %i.ce = load ptr, ptr %i.l, align 8, !tbaa !204 ; 5 uses
  %i.cf = sext i32 %.1190269 to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !144
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !46 ; 7 uses
  %i.ck = call i32 @strcasecmp(ptr noundef %i.cj, ptr noundef nonnull @.str.97) #22
  %.not223 = icmp eq i32 %i.ck, 0
  br i1 %.not223, label %bb.ab, label %bb.q

bb.q:                                             ; preds = %.lr.ph273
  %i.cl = call i32 @strcasecmp(ptr noundef %i.cj, ptr noundef nonnull @.str.98) #22
  %.not224 = icmp eq i32 %i.cl, 0
  br i1 %.not224, label %bb.ab, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cm = call i32 @strcasecmp(ptr noundef %i.cj, ptr noundef nonnull @.str.94) #22
  %i.cn = icmp eq i32 %i.cm, 0
  %i.co = icmp ne i32 %i.cd, %.neg                ; 4 uses
  %or.cond3 = and i1 %i.co, %i.cn
  br i1 %or.cond3, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cp = sext i32 %.neg to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.cp
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !144
  %i.cs = call i32 @getLongLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.cr, ptr noundef nonnull %i.g, ptr noundef nonnull @.str.99) #18
  %.not228 = icmp eq i32 %i.cs, 0
  br i1 %.not228, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.ct = load i64, ptr %i.g, align 8, !tbaa !21
  %i.cu = sub nsw i64 %i.bz, %i.ct
  store i64 %i.cu, ptr %i.g, align 8, !tbaa !21
  br label %bb.ab

bb.u:                                             ; preds = %bb.r
  %i.cv = call i32 @strcasecmp(ptr noundef %i.cj, ptr noundef nonnull @.str.100) #22
  %i.cw = icmp eq i32 %i.cv, 0
  %or.cond5 = and i1 %i.co, %i.cw
  br i1 %or.cond5, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cx = sext i32 %.neg to i64
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !144
  %i.da = call i32 @getLongLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.cz, ptr noundef nonnull %i.g, ptr noundef nonnull @.str.101) #18
  %.not227 = icmp eq i32 %i.da, 0
  br i1 %.not227, label %bb.ab, label %.thread

bb.w:                                             ; preds = %bb.u
  %i.db = call i32 @strcasecmp(ptr noundef %i.cj, ptr noundef nonnull @.str.102) #22
  %i.dc = icmp eq i32 %i.db, 0
  %or.cond7 = and i1 %i.co, %i.dc
  br i1 %or.cond7, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dd = sext i32 %.neg to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.dd
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !144
  %i.dg = call i32 @getLongLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.df, ptr noundef nonnull %i.f, ptr noundef nonnull @.str.103) #18
  %.not226 = icmp eq i32 %i.dg, 0
  br i1 %.not226, label %bb.ab, label %.thread

bb.y:                                             ; preds = %bb.w
  %i.dh = call i32 @strcasecmp(ptr noundef %i.cj, ptr noundef nonnull @.str.104) #22
  %i.di = icmp eq i32 %i.dh, 0
  %or.cond9 = and i1 %i.co, %i.di
  br i1 %or.cond9, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dj = sext i32 %.neg to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.dj
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !144
  %i.dm = call range(i32 -1, 1) i32 @streamGenericParseIDOrReply(ptr noundef nonnull %0, ptr noundef readonly %i.dl, ptr noundef nonnull %4, i64 noundef 0, i32 noundef 1, ptr noundef null)
  %.not225 = icmp eq i32 %i.dm, 0
  br i1 %.not225, label %bb.ab, label %.thread

bb.aa:                                            ; preds = %bb.y
  call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.105, ptr noundef %i.cj) #18
  br label %.thread

bb.ab:                                            ; preds = %bb.q, %.lr.ph273, %bb.v, %bb.z, %bb.x, %bb.t
  %.2191 = phi i32 [ %.neg, %bb.t ], [ %.neg, %bb.v ], [ %.neg, %bb.x ], [ %.neg, %bb.z ], [ %.1190269, %.lr.ph273 ], [ %.1190269, %bb.q ]
  %.1185 = phi i32 [ %.0184270, %bb.t ], [ %.0184270, %bb.v ], [ %.0184270, %bb.x ], [ %.0184270, %bb.z ], [ %.0184270, %.lr.ph273 ], [ 1, %bb.q ] ; 2 uses
  %.1181 = phi i32 [ %.0180271, %bb.t ], [ %.0180271, %bb.v ], [ %.0180271, %bb.x ], [ %.0180271, %bb.z ], [ 1, %.lr.ph273 ], [ %.0180271, %bb.q ] ; 2 uses
  %i.dn = add nsw i32 %.2191, 1                   ; 2 uses
  %i.do = load i32, ptr %i.bh, align 8, !tbaa !202 ; 2 uses
  %i.dp = icmp slt i32 %i.dn, %i.do
  br i1 %i.dp, label %.lr.ph273, label %._crit_edge274, !llvm.loop !266

._crit_edge274:                                   ; preds = %bb.ab
  %.pre293 = load i64, ptr %4, align 8, !tbaa !50 ; 3 uses
  %6 = trunc nuw i32 %.1181 to i1                 ; 2 uses
  %i.dq = icmp eq i32 %.1185, 0                   ; 2 uses
  %i.dr = load i64, ptr %i.ar, align 8, !tbaa !50 ; 3 uses
  %i.ds = icmp ugt i64 %.pre293, %i.dr
  br i1 %i.ds, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge274.thread, %._crit_edge274
  %i.dt = phi i64 [ %i.cc, %._crit_edge274.thread ], [ %i.dr, %._crit_edge274 ] ; 2 uses
  %.0180.lcssa329 = phi i1 [ false, %._crit_edge274.thread ], [ %6, %._crit_edge274 ] ; 3 uses
  %.0184.lcssa326 = phi i1 [ true, %._crit_edge274.thread ], [ %i.dq, %._crit_edge274 ] ; 3 uses
  %i.du = phi i64 [ 0, %._crit_edge274.thread ], [ %.pre293, %._crit_edge274 ] ; 2 uses
  %i.dv = icmp ult i64 %i.du, %i.dt
  br i1 %i.dv, label %streamCompareID.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !49
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !49
  %i.ea = icmp ugt i64 %i.dx, %i.dz
  br i1 %i.ea, label %bb.ae, label %streamCompareID.exit

bb.ae:                                            ; preds = %bb.ad, %._crit_edge274
  %i.eb = phi i64 [ %i.dt, %bb.ad ], [ %i.dr, %._crit_edge274 ]
  %.0180.lcssa327 = phi i1 [ %.0180.lcssa329, %bb.ad ], [ %6, %._crit_edge274 ]
  %.0184.lcssa324 = phi i1 [ %.0184.lcssa326, %bb.ad ], [ %i.dq, %._crit_edge274 ]
  %i.ec = phi i64 [ %i.du, %bb.ad ], [ %.pre293, %._crit_edge274 ] ; 2 uses
  %i.ed = load ptr, ptr %i.r, align 8, !tbaa !46  ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 112 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 8             ; 2 uses
  %i.eg = and i8 %i.ef, 1
  %.not.i = icmp eq i8 %i.eg, 0
  br i1 %.not.i, label %streamUpdateCGroupLastId.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 96
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !50 ; 3 uses
  %or.cond.not.i = icmp eq i64 %i.eb, %i.ei
  br i1 %or.cond.not.i, label %bb.ag, label %streamCompareID.exit.thread.i

bb.ag:                                            ; preds = %bb.af
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !49
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 104
  %i.em = load i64, ptr %i.el, align 8, !tbaa !49
  %or.cond.not17.i = icmp eq i64 %i.ek, %i.em
  br i1 %or.cond.not17.i, label %streamCompareID.exit10.thread13.i, label %streamCompareID.exit.thread.i

streamCompareID.exit.thread.i:                    ; preds = %bb.ag, %bb.af
  %i.en = icmp ugt i64 %i.ec, %i.ei
  br i1 %i.en, label %streamUpdateCGroupLastId.exit, label %bb.ah

bb.ah:                                            ; preds = %streamCompareID.exit.thread.i
  %i.eo = icmp ult i64 %i.ec, %i.ei
  br i1 %i.eo, label %streamCompareID.exit10.thread13.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !49
  %i.er = getelementptr inbounds nuw i8, ptr %i.ed, i64 104
  %i.es = load i64, ptr %i.er, align 8, !tbaa !49
  %i.et = icmp ult i64 %i.eq, %i.es
  br i1 %i.et, label %streamCompareID.exit10.thread13.i, label %streamUpdateCGroupLastId.exit

streamCompareID.exit10.thread13.i:                ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.eu = and i8 %i.ef, -2
  store i8 %i.eu, ptr %i.ee, align 8
  br label %streamUpdateCGroupLastId.exit

streamUpdateCGroupLastId.exit:                    ; preds = %bb.ae, %streamCompareID.exit.thread.i, %bb.ai, %streamCompareID.exit10.thread13.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull readonly align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !51
  br label %streamCompareID.exit

streamCompareID.exit:                             ; preds = %bb.ad, %bb.ac, %streamUpdateCGroupLastId.exit
  %.0180.lcssa328 = phi i1 [ %.0180.lcssa327, %streamUpdateCGroupLastId.exit ], [ %.0180.lcssa329, %bb.ac ], [ %.0180.lcssa329, %bb.ad ]
  %.0184.lcssa325 = phi i1 [ %.0184.lcssa324, %streamUpdateCGroupLastId.exit ], [ %.0184.lcssa326, %bb.ac ], [ %.0184.lcssa326, %bb.ad ] ; 2 uses
  %.0193 = phi i32 [ 1, %streamUpdateCGroupLastId.exit ], [ 0, %bb.ac ], [ 0, %bb.ad ] ; 2 uses
  %i.ev = load i64, ptr %i.g, align 8, !tbaa !21  ; 3 uses
  %.not210 = icmp eq i64 %i.ev, -1
  br i1 %.not210, label %.sink.split, label %bb.aj

bb.aj:                                            ; preds = %streamCompareID.exit
  %i.ew = icmp slt i64 %i.ev, 0
  %i.ex = icmp sgt i64 %i.ev, %i.bz
  %or.cond230 = select i1 %i.ew, i1 true, i1 %i.ex
  br i1 %or.cond230, label %.sink.split, label %bb.ak

.sink.split:                                      ; preds = %streamCompareID.exit, %bb.aj
  store i64 %i.bz, ptr %i.g, align 8, !tbaa !21
  br label %bb.ak

bb.ak:                                            ; preds = %.sink.split, %bb.aj
  %i.ey = load ptr, ptr %i.r, align 8, !tbaa !46  ; 5 uses
  %i.ez = call i64 @kvobjAllocSize(ptr noundef nonnull %i.p) #18
  %i.fa = load ptr, ptr %i.l, align 8, !tbaa !204
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !144
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !46 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store ptr null, ptr %i.c, align 8, !tbaa !80
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !45
  %i.fh = getelementptr i8, ptr %i.fe, i64 -1
  %.val.i.i233 = load i8, ptr %i.fh, align 1, !tbaa !69 ; 2 uses
  %i.fi = and i8 %.val.i.i233, 7
  switch i8 %i.fi, label %streamLookupConsumer.exit [
    i8 0, label %bb.al
    i8 1, label %bb.am
    i8 2, label %bb.an
    i8 3, label %bb.ao
    i8 4, label %bb.ap
  ]

bb.al:                                            ; preds = %bb.ak
  %i.fj = lshr i8 %.val.i.i233, 3
  %i.fk = zext nneg i8 %i.fj to i64
  br label %streamLookupConsumer.exit

bb.am:                                            ; preds = %bb.ak
  %i.fl = getelementptr inbounds i8, ptr %i.fe, i64 -3
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !69
  %i.fn = zext i8 %i.fm to i64
  br label %streamLookupConsumer.exit

bb.an:                                            ; preds = %bb.ak
  %i.fo = getelementptr inbounds i8, ptr %i.fe, i64 -5
  %i.fp = load i16, ptr %i.fo, align 1, !tbaa !77
  %i.fq = zext i16 %i.fp to i64
  br label %streamLookupConsumer.exit

bb.ao:                                            ; preds = %bb.ak
  %i.fr = getelementptr inbounds i8, ptr %i.fe, i64 -9
  %i.fs = load i32, ptr %i.fr, align 1, !tbaa !9
  %i.ft = zext i32 %i.fs to i64
  br label %streamLookupConsumer.exit

bb.ap:                                            ; preds = %bb.ak
  %i.fu = getelementptr inbounds i8, ptr %i.fe, i64 -17
  %i.fv = load i64, ptr %i.fu, align 1, !tbaa !13
  br label %streamLookupConsumer.exit

streamLookupConsumer.exit:                        ; preds = %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap
  %.0.i.i235 = phi i64 [ %i.fv, %bb.ap ], [ %i.fk, %bb.al ], [ %i.fn, %bb.am ], [ %i.fq, %bb.an ], [ %i.ft, %bb.ao ], [ 0, %bb.ak ]
  %i.fw = call i32 @raxFind(ptr noundef %i.fg, ptr noundef nonnull %i.fe, i64 noundef %.0.i.i235, ptr noundef nonnull %i.c) #18 ; 0 uses
  %i.fx = load ptr, ptr %i.c, align 8, !tbaa !80  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %streamLookupConsumer.exit
  %i.fz = load ptr, ptr %i.r, align 8, !tbaa !46
  %i.ga = load ptr, ptr %i.l, align 8, !tbaa !204 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !144
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !46
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !144
  %i.gh = load ptr, ptr %i.j, align 8, !tbaa !174
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 72
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !186
  %i.gk = call ptr @streamCreateConsumer(ptr noundef %i.fz, ptr noundef nonnull %i.ar, ptr noundef %i.ge, ptr noundef %i.gg, i32 noundef %i.gj, i32 noundef 0)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %streamLookupConsumer.exit
  %.0183 = phi ptr [ %i.gk, %bb.aq ], [ %i.fx, %streamLookupConsumer.exit ] ; 6 uses
  %i.gl = call i64 @commandTimeSnapshot() #18
  store i64 %i.gl, ptr %.0183, align 8, !tbaa !237
  %i.gm = call ptr @addReplyDeferredLen(ptr noundef nonnull %0) #18
  %.not211.not277 = icmp samesign ugt i32 %.0189.lcssa, 5
  br i1 %.not211.not277, label %.lr.ph282, label %._crit_edge283

.lr.ph282:                                        ; preds = %bb.ar
  %i.gn = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.4.0..sroa_idx.i54.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ey, i64 72 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ar, i64 40 ; 7 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 6 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.0183, i64 24
  %i.he = getelementptr inbounds nuw i8, ptr %.0183, i64 8
  %wide.trip.count = zext i32 %.0189.lcssa to i64
  br label %bb.as

._crit_edge283:                                   ; preds = %bb.co, %bb.ar
  %.1194.lcssa = phi i32 [ %.0193, %bb.ar ], [ %.4, %bb.co ]
  %.0179.lcssa = phi i64 [ 0, %bb.ar ], [ %.2, %bb.co ]
end_hunk_1
