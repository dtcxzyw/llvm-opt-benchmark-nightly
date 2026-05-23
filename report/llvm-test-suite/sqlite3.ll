inline.NumInlined: 3252
inline.NumDeleted: 426
begin_hunk_0_@sqlite3VtabCommit:bb.a
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !407
  %i.t = tail call i32 %i.s(ptr noundef nonnull %i.h) #46, !inline_history !915 ; 0 uses
  br label %sqlite3VtabUnlock.exit.i

sqlite3VtabUnlock.exit.i:                         ; preds = %bb.e, %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.u = load i32, ptr %i.c, align 8, !tbaa !422
  %i.v = sext i32 %i.u to i64
  %i.w = icmp slt i64 %indvars.iv.next.i, %i.v
  br i1 %i.w, label %.lr.ph.i, label %.critedge.i, !llvm.loop !426

.critedge.i:                                      ; preds = %sqlite3VtabUnlock.exit.i
  %.pr.pre.i = load ptr, ptr %i.a, align 8, !tbaa !421 ; 2 uses
  %i.x = icmp eq ptr %.pr.pre.i, null
  br i1 %i.x, label %sqlite3_free.exit.i, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.lr.ph.i, %.critedge.i, %.preheader.i
  %i.y = phi ptr [ %.pr.pre.i, %.critedge.i ], [ %i.b, %.preheader.i ], [ %i.f, %.lr.ph.i ]
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !28
  %sext.i.i = shl i64 %i.aa, 32
  %i.ab = ashr exact i64 %sext.i.i, 32
  %i.ac = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.ad = sub nsw i64 %i.ac, %i.ab
  store i64 %i.ad, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.z) #46
  br label %sqlite3_free.exit.i

sqlite3_free.exit.i:                              ; preds = %.critedge.thread.i, %.critedge.i
  store i32 0, ptr %i.c, align 8, !tbaa !422
  store ptr null, ptr %i.a, align 8, !tbaa !421
  br label %callFinaliser.exit

callFinaliser.exit:                               ; preds = %bb.a, %sqlite3_free.exit.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @sqlite3MPrintf(ptr noundef writeonly captures(address_is_null) %0, ptr noundef readonly captures(none) %1, ...) unnamed_addr #5 {
bb.a:
  %i.a = alloca [350 x i8], align 16              ; 4 uses
  %2 = alloca %struct.StrAccum, align 8           ; 11 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  call void @llvm.va_start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  store ptr %i.a, ptr %2, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 350, ptr %i.d, align 4, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 25 ; 2 uses
  store i8 1, ptr %i.e, align 1, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 26
  store i8 0, ptr %i.f, align 2, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store i8 0, ptr %i.g, align 8, !tbaa !36
  call fastcc void @vxprintf(ptr noundef %2, i32 noundef 1, ptr noundef readonly %1, ptr noundef nonnull %3)
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !31   ; 5 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %sqlite3StrAccumFinish.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds i8, ptr %i.h, i64 %i.j
  store i8 0, ptr %i.k, align 1, !tbaa !37
  %i.l = load i8, ptr %i.e, align 1, !tbaa !34
  %.not15.i.i = icmp eq i8 %i.l, 0
  br i1 %.not15.i.i, label %sqlite3StrAccumFinish.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.n = icmp eq ptr %i.h, %i.m
  br i1 %i.n, label %bb.d, label %sqlite3StrAccumFinish.exit.i

bb.d:                                             ; preds = %bb.c
  %i.o = add nsw i32 %i.i, 1                      ; 2 uses
  %i.p = call ptr @sqlite3_malloc(i32 noundef %i.o) ; 3 uses
  %.not16.i.i = icmp eq ptr %i.p, null
  br i1 %.not16.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = sext i32 %i.o to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr align 1 %i.m, i64 %i.q, i1 false)
  br label %sqlite3StrAccumFinish.exit.i

bb.f:                                             ; preds = %bb.d
  store i8 1, ptr %i.g, align 8, !tbaa !36
  br label %sqlite3StrAccumFinish.exit.i

sqlite3StrAccumFinish.exit.i:                     ; preds = %bb.f, %bb.e, %bb.c, %bb.b, %bb.a
  %i.r = phi ptr [ %i.h, %bb.b ], [ %i.h, %bb.c ], [ null, %bb.f ], [ %i.p, %bb.e ], [ null, %bb.a ]
  %i.s = load i8, ptr %i.g, align 8, !tbaa !36
  %i.t = icmp ne i8 %i.s, 0
  %i.u = icmp ne ptr %0, null
  %or.cond.i = and i1 %i.u, %i.t
  br i1 %or.cond.i, label %bb.g, label %sqlite3VMPrintf.exit

bb.g:                                             ; preds = %sqlite3StrAccumFinish.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 1, ptr %i.v, align 2, !tbaa !129
  br label %sqlite3VMPrintf.exit

sqlite3VMPrintf.exit:                             ; preds = %sqlite3StrAccumFinish.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  ret ptr %i.r
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3OsCloseFree(ptr noundef %0) unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !530    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %sqlite3_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !671
  %i.d = tail call i32 %i.c(ptr noundef nonnull %0) #46, !inline_history !672 ; 0 uses
  store ptr null, ptr %0, align 8, !tbaa !530
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.b, %bb.c
  %i.e = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !28
  %sext.i = shl i64 %i.f, 32
  %i.g = ashr exact i64 %sext.i, 32
  %i.h = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.i = sub nsw i64 %i.h, %i.g
  store i64 %i.i, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.e) #46
  br label %bb.d

bb.d:                                             ; preds = %sqlite3_free.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @incrVacuumStep(ptr noundef %0, i32 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca i8, align 1                       ; 8 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %i.g = alloca ptr, align 8                      ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !800  ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !461
  %i.l = tail call fastcc i32 @sqlite3PagerPagecount(ptr noundef %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.054 = phi i32 [ %i.l, %bb.b ], [ %i.i, %bb.a ] ; 8 uses
  %i.m = getelementptr i8, ptr %0, i64 44         ; 2 uses
  %.val71 = load i16, ptr %i.m, align 4, !tbaa !832
  %i.n = getelementptr i8, ptr %0, i64 46         ; 2 uses
  %.val72 = load i16, ptr %i.n, align 2, !tbaa !831
  %i.o = udiv i16 %.val72, 5
  %narrow.i = add nuw nsw i16 %i.o, 1
  %i.p = zext nneg i16 %narrow.i to i32
  %i.q = add i32 %.054, -2                        ; 2 uses
  %i.r = urem i32 %i.q, %i.p
  %i.s = sub nuw i32 %i.q, %i.r                   ; 2 uses
  %i.t = zext i16 %.val71 to i32
  %i.u = udiv i32 1073741824, %i.t                ; 2 uses
  %i.v = add nsw i32 %i.s, 1
  %i.w = icmp eq i32 %i.v, %i.u
  %spec.select.v.i = select i1 %i.w, i32 3, i32 2
  %spec.select.i = add nsw i32 %spec.select.v.i, %i.s
  %i.x = icmp eq i32 %spec.select.i, %.054
  %i.y = add nuw nsw i32 %i.u, 1
  %.not = icmp eq i32 %.054, %i.y
  %or.cond95 = select i1 %i.x, i1 true, i1 %.not
  br i1 %or.cond95, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !631
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !801
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 36
  %2 = load <4 x i8>, ptr %i.ad, align 1, !tbaa !37
  %3 = tail call i8 @llvm.vector.reduce.umax.v4i8(<4 x i8> %2)
  %i.ae = icmp eq i8 %3, 0
  %i.af = icmp eq i32 %1, %.054
  %or.cond = or i1 %i.af, %i.ae
  br i1 %or.cond, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = call fastcc i32 @ptrmapGet(ptr noundef nonnull %0, i32 noundef %.054, ptr noundef %i.a, ptr noundef nonnull %i.b) ; 2 uses
  %.not63 = icmp eq i32 %i.ag, 0
  br i1 %.not63, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ah = load i8, ptr %i.a, align 1, !tbaa !37   ; 2 uses
  switch i8 %i.ah, label %bb.k [
    i8 1, label %.thread
    i8 2, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.ai = icmp eq i32 %1, 0
  br i1 %i.ai, label %bb.h, label %.thread88

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #46
  %i.aj = call fastcc i32 @allocateBtreePage(ptr noundef nonnull %0, ptr noundef %i.d, ptr noundef %i.c, i32 noundef %.054, i8 noundef zeroext 1) ; 2 uses
  %.not67 = icmp eq i32 %i.aj, 0
  br i1 %.not67, label %bb.i, label %.critedge69

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !806 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %releasePage.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 120
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !629
  call fastcc void @sqlite3PagerUnref(ptr noundef %i.am)
  br label %releasePage.exit

releasePage.exit:                                 ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  br label %.thread88

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #46
  %i.an = call fastcc i32 @sqlite3BtreeGetPage(ptr noundef nonnull %0, i32 noundef %.054, ptr noundef nonnull %i.f, i32 noundef 0) ; 2 uses
  %.not64 = icmp eq i32 %i.an, 0
  br i1 %.not64, label %.preheader, label %.thread92

.preheader:                                       ; preds = %bb.k
  %.not101 = icmp eq i32 %1, 0
  br i1 %.not101, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #46
  %i.ao = call fastcc i32 @allocateBtreePage(ptr noundef nonnull %0, ptr noundef %i.g, ptr noundef %i.e, i32 noundef 0, i8 noundef zeroext 0) ; 2 uses
  %.not65.us = icmp eq i32 %i.ao, 0
  br i1 %.not65.us, label %bb.l, label %.split.us

bb.l:                                             ; preds = %.preheader.split.us
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !806 ; 2 uses
  %.not.i75.us = icmp eq ptr %i.ap, null
  br i1 %.not.i75.us, label %.split99.us, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 120
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !629
  call fastcc void @sqlite3PagerUnref(ptr noundef %i.ar)
  br label %.split99.us

.split99.us:                                      ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #46
  %i.as = load i32, ptr %i.e, align 4
  br label %.split99

.preheader.split:                                 ; preds = %.preheader, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #46
  %i.at = call fastcc i32 @allocateBtreePage(ptr noundef nonnull %0, ptr noundef %i.g, ptr noundef %i.e, i32 noundef 0, i8 noundef zeroext 0) ; 2 uses
  %.not65 = icmp eq i32 %i.at, 0
  br i1 %.not65, label %bb.o, label %.split.us

.split.us:                                        ; preds = %.preheader.split, %.preheader.split.us
  %.us-phi = phi i32 [ %i.ao, %.preheader.split.us ], [ %i.at, %.preheader.split ]
  %i.au = load ptr, ptr %i.f, align 8, !tbaa !806 ; 2 uses
  %.not.i73 = icmp eq ptr %i.au, null
  br i1 %.not.i73, label %releasePage.exit74, label %bb.n

bb.n:                                             ; preds = %.split.us
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 120
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !629
  call fastcc void @sqlite3PagerUnref(ptr noundef %i.aw)
  br label %releasePage.exit74

bb.o:                                             ; preds = %.preheader.split
  %i.ax = load ptr, ptr %i.g, align 8, !tbaa !806 ; 2 uses
  %.not.i75 = icmp eq ptr %i.ax, null
  br i1 %.not.i75, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 120
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !629
  call fastcc void @sqlite3PagerUnref(ptr noundef %i.az)
  br label %bb.q

releasePage.exit74:                               ; preds = %bb.n, %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #46
  br label %.thread92

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #46
  %i.ba = load i32, ptr %i.e, align 4             ; 2 uses
  %i.bb = icmp ugt i32 %i.ba, %1
  br i1 %i.bb, label %.preheader.split, label %.split99, !llvm.loop !916

.split99:                                         ; preds = %bb.q, %.split99.us
  %.us-phi100 = phi i32 [ %i.as, %.split99.us ], [ %i.ba, %bb.q ]
  %i.bc = load ptr, ptr %i.f, align 8, !tbaa !806 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 120 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !629
  %i.bf = call fastcc i32 @sqlite3PagerWrite(ptr noundef %i.be) ; 2 uses
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.r, label %.thread116

.thread116:                                       ; preds = %.split99
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !629
  call fastcc void @sqlite3PagerUnref(ptr noundef %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br label %bb.u

.critedge69:                                      ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.e, %bb.f, %.critedge69
  %.5.ph = phi i32 [ %i.aj, %.critedge69 ], [ 11, %bb.f ], [ %i.ag, %bb.e ], [ 101, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br label %bb.u

.thread88:                                        ; preds = %releasePage.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br label %bb.s

.thread92:                                        ; preds = %releasePage.exit74, %bb.k
  %.353.ph = phi i32 [ %i.an, %bb.k ], [ %.us-phi, %releasePage.exit74 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br label %bb.u

bb.r:                                             ; preds = %.split99
  %i.bi = load i32, ptr %i.b, align 4, !tbaa !4
  %i.bj = call fastcc i32 @relocatePage(ptr noundef nonnull %0, ptr noundef nonnull %i.bc, i8 noundef zeroext %i.ah, i32 noundef %i.bi, i32 noundef %.us-phi100) ; 2 uses
  %i.bk = load ptr, ptr %i.bd, align 8, !tbaa !629
  call fastcc void @sqlite3PagerUnref(ptr noundef %i.bk)
  %.not66 = icmp eq i32 %i.bj, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br i1 %.not66, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.thread88, %bb.r, %bb.c
  %i.bl = load i16, ptr %i.m, align 4, !tbaa !832
  %i.bm = zext i16 %i.bl to i32
  %i.bn = udiv i32 1073741824, %i.bm              ; 2 uses
  %i.bo = add nuw nsw i32 %i.bn, 2
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %bb.s
  %storemerge.in = phi i32 [ %.054, %bb.s ], [ %storemerge, %.critedge.backedge ] ; 3 uses
  %storemerge = add i32 %storemerge.in, -1        ; 3 uses
  %i.bp = icmp eq i32 %storemerge.in, %i.bo
  br i1 %i.bp, label %.critedge.backedge, label %bb.t

.critedge.backedge:                               ; preds = %.critedge, %bb.t
  br label %.critedge, !llvm.loop !917

bb.t:                                             ; preds = %.critedge
  %.val70 = load i16, ptr %i.n, align 2, !tbaa !831
  %i.bq = udiv i16 %.val70, 5
  %narrow.i79 = add nuw nsw i16 %i.bq, 1
  %i.br = zext nneg i16 %narrow.i79 to i32
  %i.bs = add i32 %storemerge.in, -3              ; 2 uses
  %i.bt = urem i32 %i.bs, %i.br
  %i.bu = sub nuw i32 %i.bs, %i.bt                ; 2 uses
  %i.bv = add nsw i32 %i.bu, 1
  %i.bw = icmp eq i32 %i.bv, %i.bn
  %spec.select.v.i80 = select i1 %i.bw, i32 3, i32 2
  %spec.select.i81 = add nsw i32 %spec.select.v.i80, %i.bu
  %i.bx = icmp eq i32 %spec.select.i81, %storemerge
  br i1 %i.bx, label %.critedge.backedge, label %.loopexit

end_hunk_0
begin_hunk_1_@sqlite3BtreeBeginStmt:bb.a
bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !461
  %i.o = tail call fastcc i32 @sqlite3PagerStmtBegin(ptr noundef %i.n)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.p = phi i32 [ %i.o, %bb.e ], [ 0, %bb.d ]
  store i8 1, ptr %i.g, align 8, !tbaa !633
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.0 = phi i32 [ %i.k, %bb.c ], [ %i.p, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3BtreeBeginTrans(ptr noundef %0, i32 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !325  ; 26 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !323
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !449
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !753   ; 2 uses
  %i.h = icmp eq i8 %i.g, 2
  br i1 %i.h, label %sqlite3BtreeInvokeBusyHandler.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ne i8 %i.g, 1
  %i.j = icmp ne i32 %1, 0                        ; 6 uses
  %or.cond = or i1 %i.j, %i.i
  br i1 %or.cond, label %bb.c, label %sqlite3BtreeInvokeBusyHandler.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 33 ; 3 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !777
  %i.m = icmp ne i8 %i.l, 0
  %or.cond3 = and i1 %i.j, %i.m
  br i1 %or.cond3, label %sqlite3BtreeInvokeBusyHandler.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 5 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !630
  %i.p = icmp eq i8 %i.o, 2
  %or.cond5 = and i1 %i.j, %i.p
  br i1 %or.cond5, label %sqlite3BtreeInvokeBusyHandler.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = icmp sgt i32 %1, 1                       ; 3 uses
  br i1 %i.q, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %.05392 = load ptr, ptr %i.r, align 8, !tbaa !794 ; 2 uses
  %.not93 = icmp eq ptr %.05392, null
  br i1 %.not93, label %.thread, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.05394, i64 16
  %.053 = load ptr, ptr %i.s, align 8, !tbaa !794 ; 2 uses
  %.not = icmp eq ptr %.053, null
  br i1 %.not, label %.thread, label %.lr.ph, !llvm.loop !1022

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.05394 = phi ptr [ %.053, %bb.g ], [ %.05392, %bb.f ] ; 2 uses
  %i.t = load ptr, ptr %.05394, align 8, !tbaa !795
  %.not58 = icmp eq ptr %i.t, %0
  br i1 %.not58, label %bb.g, label %sqlite3BtreeInvokeBusyHandler.exit.thread

.thread:                                          ; preds = %bb.g, %bb.f, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 6 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.c, i64 46 ; 3 uses
  %.phi.trans.insert69.i = getelementptr inbounds nuw i8, ptr %i.c, i64 34 ; 3 uses
  %.phi.trans.insert71.i = getelementptr inbounds nuw i8, ptr %i.c, i64 35 ; 3 uses
  %.phi.trans.insert73.i = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 44 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 38 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 39 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.ac = zext i1 %i.q to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %sqlite3BtreeInvokeBusyHandler.exit, %.thread
  %.2 = phi i32 [ 0, %.thread ], [ 5, %sqlite3BtreeInvokeBusyHandler.exit ]
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !631 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.i, label %lockBtree.exit

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !461
  %i.ai = call fastcc i32 @sqlite3PagerAcquire(ptr noundef %i.ah, i32 noundef 1, ptr noundef %i.a, i32 noundef 0) ; 2 uses
  %.not.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i, label %bb.j, label %sqlite3BtreeGetPage.exit.i

sqlite3BtreeGetPage.exit.i:                       ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br label %newDatabase.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !652 ; 9 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !635
  %.not.i.i.i = icmp eq ptr %i.ak, null           ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 88 ; 2 uses
  %i.am = select i1 %.not.i.i.i, ptr null, ptr %i.al
  %i.an = getelementptr i8, ptr %i.aj, i64 80
  %.val.i.i = load ptr, ptr %i.an, align 8, !tbaa !657
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 200 ; 2 uses
  store ptr %.val.i.i, ptr %i.ao, align 8, !tbaa !801
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 208 ; 2 uses
  store ptr %i.aj, ptr %i.ap, align 8, !tbaa !629
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 192
  store ptr %i.c, ptr %i.aq, align 8, !tbaa !802
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 216
  store i32 1, ptr %i.ar, align 8, !tbaa !329
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  store i8 100, ptr %i.as, align 8, !tbaa !803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %i.at = load ptr, ptr %i.c, align 8, !tbaa !461
  %i.au = tail call fastcc i32 @sqlite3PagerPagecount(ptr noundef %i.at)
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %bb.k, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.j
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 2, !tbaa !831
  %.pre70.i = load i8, ptr %.phi.trans.insert69.i, align 2, !tbaa !1023
  %.pre72.i = load i8, ptr %.phi.trans.insert71.i, align 1, !tbaa !1024
  %.pre74.i = load i8, ptr %.phi.trans.insert73.i, align 4, !tbaa !1025
  br label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.aw = load ptr, ptr %i.ao, align 8, !tbaa !801 ; 11 uses
  %i.ax = load i128, ptr %i.aw, align 1
  %i.ay = icmp ne i128 %i.ax, 265465397511803988906881385371554131
  %i.az = zext i1 %i.ay to i32
  %.not54.i = icmp eq i32 %i.az, 0
  br i1 %.not54.i, label %bb.l, label %.thread67.i

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 18
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !37
  %i.bc = icmp ugt i8 %i.bb, 1
  br i1 %i.bc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.k, align 1, !tbaa !777
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 19
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !37
  %i.bf = icmp ugt i8 %i.be, 1
  br i1 %i.bf, label %.thread67.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !37  ; 2 uses
  %i.bi = zext i8 %i.bh to i32
  %i.bj = shl nuw nsw i32 %i.bi, 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 17
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !37
  %i.bm = zext i8 %i.bl to i32
  %i.bn = or disjoint i32 %i.bj, %i.bm            ; 4 uses
  %i.bo = add nuw nsw i32 %i.bn, 65535
  %i.bp = and i32 %i.bo, %i.bn
  %i.bq = icmp ne i32 %i.bp, 0
  %i.br = icmp ult i8 %i.bh, 2
  %or.cond.i = or i1 %i.br, %i.bq
  br i1 %or.cond.i, label %.thread67.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = trunc nuw i32 %i.bn to i16
  store i16 %i.bs, ptr %i.v, align 4, !tbaa !832
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !37
  %i.bv = zext i8 %i.bu to i32
  %i.bw = sub nuw nsw i32 %i.bn, %i.bv            ; 2 uses
  %i.bx = trunc nuw i32 %i.bw to i16              ; 2 uses
  store i16 %i.bx, ptr %.phi.trans.insert.i, align 2, !tbaa !831
  %i.by = icmp samesign ult i32 %i.bw, 500
  br i1 %i.by, label %.thread67.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aw, i64 21
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !37  ; 2 uses
  store i8 %i.ca, ptr %.phi.trans.insert69.i, align 2, !tbaa !1023
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aw, i64 22
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !37  ; 2 uses
  store i8 %i.cc, ptr %.phi.trans.insert71.i, align 1, !tbaa !1024
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aw, i64 23
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !37  ; 2 uses
  store i8 %i.ce, ptr %.phi.trans.insert73.i, align 4, !tbaa !1025
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aw, i64 52
  %2 = load <4 x i8>, ptr %i.cf, align 1, !tbaa !37
  %3 = tail call i8 @llvm.vector.reduce.umax.v4i8(<4 x i8> %2)
  %i.cg = icmp ne i8 %3, 0
  %i.ch = zext i1 %i.cg to i8
  store i8 %i.ch, ptr %i.w, align 2, !tbaa !846
  %i.ci = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %4 = load <4 x i8>, ptr %i.ci, align 1, !tbaa !37
  %5 = tail call i8 @llvm.vector.reduce.umax.v4i8(<4 x i8> %4)
  %i.cj = icmp ne i8 %5, 0
  %i.ck = zext i1 %i.cj to i8
  store i8 %i.ck, ptr %i.x, align 1, !tbaa !908
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i
  %i.cl = phi i8 [ %.pre74.i, %._crit_edge.i ], [ %i.ce, %bb.q ]
  %i.cm = phi i8 [ %.pre72.i, %._crit_edge.i ], [ %i.cc, %bb.q ]
  %i.cn = phi i8 [ %.pre70.i, %._crit_edge.i ], [ %i.ca, %bb.q ]
  %i.co = phi i16 [ %.pre.i, %._crit_edge.i ], [ %i.bx, %bb.q ]
  %i.cp = zext i16 %i.co to i32                   ; 2 uses
  %i.cq = add nsw i32 %i.cp, -12                  ; 3 uses
  %i.cr = zext i8 %i.cn to i32
  %i.cs = mul nsw i32 %i.cq, %i.cr                ; 2 uses
  %i.ct = sdiv i32 %i.cs, 255                     ; 2 uses
  %i.cu = add nsw i32 %i.ct, -23
  store i32 %i.cu, ptr %i.y, align 8, !tbaa !1026
  %i.cv = zext i8 %i.cm to i32
  %i.cw = mul nsw i32 %i.cq, %i.cv
  %i.cx = sdiv i32 %i.cw, 255                     ; 2 uses
  %i.cy = add nsw i32 %i.cx, -23
  store i32 %i.cy, ptr %i.z, align 4, !tbaa !1027
  %i.cz = add nsw i32 %i.cp, -35
  store i32 %i.cz, ptr %i.aa, align 8, !tbaa !1028
  %i.da = zext i8 %i.cl to i32
  %i.db = mul nsw i32 %i.cq, %i.da
  %i.dc = sdiv i32 %i.db, 255
  %i.dd = add nsw i32 %i.dc, -23
  store i32 %i.dd, ptr %i.ab, align 4, !tbaa !1029
  %i.de = icmp sgt i32 %i.cx, %i.ct
  %i.df = icmp slt i32 %i.cs, 5865
  %or.cond58.i = or i1 %i.df, %i.de
  br i1 %or.cond58.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.am, ptr %i.u, align 8, !tbaa !631
  br label %lockBtree.exit

bb.t:                                             ; preds = %bb.r
  br i1 %.not.i.i.i, label %releasePage.exit.i, label %.thread67.i

.thread67.i:                                      ; preds = %bb.t, %bb.p, %bb.o, %bb.n, %bb.k
  %i.dg = load ptr, ptr %i.ap, align 8, !tbaa !629
  tail call fastcc void @sqlite3PagerUnref(ptr noundef %i.dg)
  br label %releasePage.exit.i

releasePage.exit.i:                               ; preds = %.thread67.i, %bb.t
  store ptr null, ptr %i.u, align 8, !tbaa !631
  br label %newDatabase.exit.thread

lockBtree.exit:                                   ; preds = %bb.s, %bb.h
  %i.dh = phi ptr [ %i.af, %bb.h ], [ %i.al, %bb.s ]
  %.3 = phi i32 [ %.2, %bb.h ], [ 0, %bb.s ]      ; 2 uses
  %i.di = icmp eq i32 %.3, 0                      ; 2 uses
  %or.cond7 = and i1 %i.j, %i.di
  br i1 %or.cond7, label %bb.u, label %newDatabase.exit

bb.u:                                             ; preds = %lockBtree.exit
  %i.dj = load i8, ptr %i.k, align 1, !tbaa !777
  %.not59 = icmp eq i8 %i.dj, 0
  br i1 %.not59, label %bb.v, label %newDatabase.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 120
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !629
  %.val = load ptr, ptr %i.dl, align 8, !tbaa !635
  %i.dm = tail call fastcc i32 @sqlite3PagerBegin(ptr %.val, i32 noundef %i.ac) ; 2 uses
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %bb.w, label %newDatabase.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.do = load ptr, ptr %i.c, align 8, !tbaa !461
  %i.dp = tail call fastcc i32 @sqlite3PagerPagecount(ptr noundef %i.do)
  %i.dq = icmp sgt i32 %i.dp, 0
  br i1 %i.dq, label %.thread77, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dr = load ptr, ptr %i.u, align 8, !tbaa !631 ; 11 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 112
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !801 ; 18 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 120
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !629
  %i.dw = tail call fastcc i32 @sqlite3PagerWrite(ptr noundef %i.dv) ; 2 uses
  %.not.i62 = icmp eq i32 %i.dw, 0
  br i1 %.not.i62, label %bb.y, label %newDatabase.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.dt, ptr noundef nonnull align 16 dereferenceable(16) @zMagicHeader, i64 16, i1 false)
  %i.dy = load i16, ptr %i.v, align 4, !tbaa !832
  %i.dz = lshr i16 %i.dy, 8
  %i.ea = trunc nuw i16 %i.dz to i8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !37
  %i.ec = load i16, ptr %i.v, align 4, !tbaa !832
  %i.ed = trunc i16 %i.ec to i8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dt, i64 17
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !37
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dt, i64 18
  store i8 1, ptr %i.ef, align 1, !tbaa !37
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dt, i64 19
  store i8 1, ptr %i.eg, align 1, !tbaa !37
  %i.eh = load i16, ptr %i.v, align 4, !tbaa !832
  %i.ei = trunc i16 %i.eh to i8
  %i.ej = load i16, ptr %.phi.trans.insert.i, align 2, !tbaa !831
  %i.ek = trunc i16 %i.ej to i8
  %i.el = sub i8 %i.ei, %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.dt, i64 20
  store i8 %i.el, ptr %i.em, align 1, !tbaa !37
  %i.en = load i8, ptr %.phi.trans.insert69.i, align 2, !tbaa !1023
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dt, i64 21
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !37
  %i.ep = load i8, ptr %.phi.trans.insert71.i, align 1, !tbaa !1024
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dt, i64 22
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !37
  %i.er = load i8, ptr %.phi.trans.insert73.i, align 4, !tbaa !1025
  %i.es = getelementptr inbounds nuw i8, ptr %i.dt, i64 23
  store i8 %i.er, ptr %i.es, align 1, !tbaa !37
  %i.et = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(76) %i.et, i8 0, i64 76, i1 false)
  %i.eu = load ptr, ptr %i.dx, align 8, !tbaa !801
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dr, i64 104 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !802
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 8, !tbaa !803 ; 3 uses
  %i.ez = zext i8 %i.ey to i64                    ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ez ; 6 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 46 ; 4 uses
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !831
  %i.fd = zext i16 %i.fc to i64
  %i.fe = sub nsw i64 %i.fd, %i.ez
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fa, i8 0, i64 %i.fe, i1 false)
  store i8 13, ptr %i.fa, align 1, !tbaa !37
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 1
  store i32 0, ptr %i.ff, align 1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 7
  store i8 0, ptr %i.fg, align 1, !tbaa !37
  %i.fh = load i16, ptr %i.fb, align 2, !tbaa !831
  %i.fi = lshr i16 %i.fh, 8
  %i.fj = trunc nuw i16 %i.fi to i8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fa, i64 5
  store i8 %i.fj, ptr %i.fk, align 1, !tbaa !37
  %i.fl = load i16, ptr %i.fb, align 2, !tbaa !831
  %i.fm = trunc i16 %i.fl to i8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fa, i64 6
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !37
  %i.fo = load i16, ptr %i.fb, align 2, !tbaa !831
  %i.fp = zext i8 %i.ey to i16
  %i.fq = add nuw nsw i16 %i.fp, 8                ; 2 uses
  %i.fr = sub i16 %i.fo, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dr, i64 18
  store i16 %i.fr, ptr %i.fs, align 2, !tbaa !834
  %i.ft = getelementptr inbounds nuw i8, ptr %i.dr, i64 9
  store i8 0, ptr %i.ft, align 1, !tbaa !812
  %i.fu = load ptr, ptr %i.ev, align 8, !tbaa !802
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 56
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dr, i64 10
  %i.fx = load <2 x i32>, ptr %i.fv, align 8, !tbaa !4
  %i.fy = trunc <2 x i32> %i.fx to <2 x i16>
  store <2 x i16> %i.fy, ptr %i.fw, align 2, !tbaa !170
  store i8 %i.ey, ptr %i.ex, align 8, !tbaa !803
  %i.fz = getelementptr inbounds nuw i8, ptr %i.dr, i64 14
  store i16 %i.fq, ptr %i.fz, align 2, !tbaa !809
  %i.ga = getelementptr inbounds nuw i8, ptr %i.dr, i64 20
  store i16 0, ptr %i.ga, align 4, !tbaa !811
  store <8 x i8> <i8 1, i8 0, i8 0, i8 1, i8 1, i8 0, i8 1, i8 1>, ptr %i.dr, align 8, !tbaa !37
  %i.gb = getelementptr inbounds nuw i8, ptr %i.c, i64 37
  store i8 1, ptr %i.gb, align 1, !tbaa !1030
  %i.gc = getelementptr inbounds nuw i8, ptr %i.dt, i64 52
  %i.gd = load i8, ptr %i.w, align 2, !tbaa !846
  store i8 0, ptr %i.gc, align 1, !tbaa !37
  %i.ge = getelementptr inbounds nuw i8, ptr %i.dt, i64 53
  store i8 0, ptr %i.ge, align 1, !tbaa !37
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dt, i64 54
  store i8 0, ptr %i.gf, align 1, !tbaa !37
  %i.gg = getelementptr inbounds nuw i8, ptr %i.dt, i64 55
  store i8 %i.gd, ptr %i.gg, align 1, !tbaa !37
  %i.gh = getelementptr inbounds nuw i8, ptr %i.dt, i64 64
  %i.gi = load i8, ptr %i.x, align 1, !tbaa !908
  store i8 0, ptr %i.gh, align 1, !tbaa !37
  %i.gj = getelementptr inbounds nuw i8, ptr %i.dt, i64 65
  store i8 0, ptr %i.gj, align 1, !tbaa !37
  %i.gk = getelementptr inbounds nuw i8, ptr %i.dt, i64 66
  store i8 0, ptr %i.gk, align 1, !tbaa !37
  %i.gl = getelementptr inbounds nuw i8, ptr %i.dt, i64 67
  store i8 %i.gi, ptr %i.gl, align 1, !tbaa !37
  br label %.thread77

newDatabase.exit:                                 ; preds = %lockBtree.exit
  br i1 %i.di, label %bb.z, label %newDatabase.exit.thread

bb.z:                                             ; preds = %newDatabase.exit
  br i1 %i.j, label %.thread77, label %.critedge.thread

.thread77:                                        ; preds = %bb.w, %bb.y, %bb.z
  store i8 0, ptr %i.ae, align 8, !tbaa !633
  br label %.critedge.thread

newDatabase.exit.thread:                          ; preds = %sqlite3BtreeGetPage.exit.i, %releasePage.exit.i, %bb.x, %bb.u, %bb.v, %newDatabase.exit
  %.472 = phi i32 [ %.3, %newDatabase.exit ], [ %i.dw, %bb.x ], [ 8, %bb.u ], [ %i.dm, %bb.v ], [ %i.ai, %sqlite3BtreeGetPage.exit.i ], [ 26, %releasePage.exit.i ] ; 2 uses
  %i.gm = load i8, ptr %i.n, align 8, !tbaa !630
end_hunk_1
begin_hunk_2_@sqlite3BtreeFactory:bb.a
  %.0158206.i.i = phi i32 [ %i.fh, %bb.ag ], [ %.0158207.i.i, %.thread201.i.i ], [ 0, %bb.ab ] ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.di, i64 296
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !704
  %.not176.i.i = icmp eq ptr %i.fx, null
  br i1 %.not176.i.i, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %.thread214.i.i
  %i.fy = load ptr, ptr %i.dr, align 8, !tbaa !523 ; 3 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !530 ; 2 uses
  %.not.i191.i.i = icmp eq ptr %i.fz, null
  br i1 %.not.i191.i.i, label %sqlite3_free.exit193.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !671
  %i.gc = call i32 %i.gb(ptr noundef nonnull %i.fy) #46, !inline_history !1053 ; 0 uses
  store ptr null, ptr %i.fy, align 8, !tbaa !530
  br label %sqlite3_free.exit193.i.i

sqlite3_free.exit193.i.i:                         ; preds = %bb.ai, %bb.ah
  %i.gd = getelementptr inbounds i8, ptr %i.di, i64 -8 ; 2 uses
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !28
  %sext.i192.i.i = shl i64 %i.ge, 32
  %i.gf = ashr exact i64 %sext.i192.i.i, 32
  %i.gg = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.gh = sub nsw i64 %i.gg, %i.gf
  store i64 %i.gh, ptr @mem.5, align 8, !tbaa !22
  call void @free(ptr noundef nonnull %i.gd) #46
  br label %.thread208.i

bb.aj:                                            ; preds = %.thread214.i.i
  %i.gi = load ptr, ptr %i.ef, align 8, !tbaa !1050
  %i.gj = load ptr, ptr %i.ed, align 8, !tbaa !756
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gi, ptr align 1 %i.gj, i64 %i.cl, i1 false)
  %i.gk = load ptr, ptr %i.ef, align 8, !tbaa !1050 ; 2 uses
  %i.gl = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gk) #45
  %i.gm = trunc i64 %i.gl to i32                  ; 2 uses
  %i.gn = icmp sgt i32 %i.gm, 0
  br i1 %i.gn, label %.lr.ph.i.i, label %.critedge183.i.i

bb.ak:                                            ; preds = %.lr.ph.i.i
  %i.go = add nsw i32 %.0153224.i.i, -1
  %i.gp = icmp sgt i32 %.0153224.i.i, 1
  br i1 %i.gp, label %.lr.ph.i.i, label %.critedge183.i.i, !llvm.loop !1054

.lr.ph.i.i:                                       ; preds = %bb.aj, %bb.ak
  %.0153224.i.i = phi i32 [ %i.go, %bb.ak ], [ %i.gm, %bb.aj ] ; 3 uses
  %i.gq = zext nneg i32 %.0153224.i.i to i64
  %i.gr = getelementptr i8, ptr %i.gk, i64 %i.gq  ; 2 uses
  %i.gs = getelementptr i8, ptr %i.gr, i64 -1
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !37
  %.not177.i.i = icmp eq i8 %i.gt, 47
  br i1 %.not177.i.i, label %.critedge.i.i, label %bb.ak

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.gu = getelementptr i8, ptr %i.gr, i64 -1
  store i8 0, ptr %i.gu, align 1, !tbaa !37
  br label %.critedge183.i.i

.critedge183.i.i:                                 ; preds = %bb.ak, %.critedge.i.i, %bb.aj
  %i.gv = load ptr, ptr %i.eh, align 8, !tbaa !693
  %i.gw = load ptr, ptr %i.ed, align 8, !tbaa !756
  %i.gx = ashr exact i64 %i.ck, 32                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gv, ptr align 1 %i.gw, i64 %i.gx, i1 false)
  %i.gy = load ptr, ptr %i.eh, align 8, !tbaa !693
  %i.gz = getelementptr inbounds i8, ptr %i.gy, i64 %i.gx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.gz, ptr noundef nonnull align 1 dereferenceable(9) @.str.208, i64 9, i1 false)
  %not..i.i = xor i1 %i.bj, true
  %narrow.i.i = and i1 %.not175198.i.i, %not..i.i
  %spec.select.i.i = zext i1 %narrow.i.i to i8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.di, i64 10
  store i8 %spec.select.i.i, ptr %i.ha, align 2, !tbaa !857
  %i.hb = icmp ne i32 %.0158206.i.i, 0
  %i.hc = select i1 %i.bl, i1 %i.hb, i1 false
  %i.hd = zext i1 %i.hc to i8
  %i.he = getelementptr inbounds nuw i8, ptr %i.di, i64 11
  store i8 %i.hd, ptr %i.he, align 1, !tbaa !848
  %i.hf = add nsw i32 %.0157199.i.i, -1
  %i.hg = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  store i32 %i.hf, ptr %i.hg, align 8, !tbaa !663
  %i.hh = getelementptr inbounds nuw i8, ptr %i.di, i64 68
  store i32 %.2211.i.i, ptr %i.hh, align 4, !tbaa !646
  %i.hi = getelementptr inbounds nuw i8, ptr %i.di, i64 80
  store i32 100, ptr %i.hi, align 8, !tbaa !867
  %i.hj = getelementptr inbounds nuw i8, ptr %i.di, i64 84
  store i32 1073741823, ptr %i.hj, align 4, !tbaa !876
  %i.hk = getelementptr inbounds nuw i8, ptr %i.di, i64 19
  store i8 %.0156208.i.i, ptr %i.hk, align 1, !tbaa !723
  %i.hl = getelementptr inbounds nuw i8, ptr %i.di, i64 27
  store i8 %.0156208.i.i, ptr %i.hl, align 1, !tbaa !647
  %i.hm = trunc nuw nsw i32 %.0157199.i.i to i8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  store i8 %i.hm, ptr %i.hn, align 8, !tbaa !651
  %i.ho = trunc nuw nsw i32 %.0158206.i.i to i8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.di, i64 20
  store i8 %i.ho, ptr %i.hp, align 4, !tbaa !881
  %.not180.i.i = icmp eq i8 %.0156208.i.i, 0
  %i.hq = trunc nuw nsw i32 %2 to i8
  %i.hr = select i1 %.not180.i.i, i8 %i.hq, i8 1  ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.di, i64 15
  store i8 %i.hr, ptr %i.hs, align 1, !tbaa !764
  %i.ht = xor i8 %i.hr, 1
  %i.hu = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store i8 %i.ht, ptr %i.hu, align 8, !tbaa !871
  %i.hv = getelementptr inbounds nuw i8, ptr %i.di, i64 17
  store i8 2, ptr %i.hv, align 1, !tbaa !896
  %i.hw = getelementptr inbounds nuw i8, ptr %i.di, i64 64
  store i32 144, ptr %i.hw, align 8, !tbaa !654
  br i1 %.not175198.i.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.critedge183.i.i
  call fastcc void @setSectorSize(ptr noundef nonnull %i.di)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.critedge183.i.i
  store ptr %i.di, ptr %i.bf, align 8, !tbaa !1046
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(100) %i.b, i8 0, i64 100, i1 false)
  %i.hx = load ptr, ptr %i.dr, align 8, !tbaa !523 ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !530 ; 2 uses
  %.not.i182.i = icmp eq ptr %i.hy, null
  br i1 %.not.i182.i, label %sqlite3PagerReadFileheader.exit.thread.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !717
  %i.ib = call i32 %i.ia(ptr noundef nonnull %i.hx, ptr noundef nonnull %i.b, i32 noundef 100, i64 noundef 0) #46, !inline_history !1055 ; 2 uses
  switch i32 %i.ib, label %.thread208.i [
    i32 522, label %sqlite3PagerReadFileheader.exit.thread.i
    i32 0, label %sqlite3PagerReadFileheader.exit.thread.i
  ]

sqlite3PagerReadFileheader.exit.thread.i:         ; preds = %bb.an, %bb.an, %bb.am
  %i.ic = load ptr, ptr %i.bf, align 8, !tbaa !461 ; 5 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 160
  store ptr %i.bh, ptr %i.id, align 8, !tbaa !849
  store ptr %i.bf, ptr %i.t, align 8, !tbaa !325
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 264
  store ptr @pageDestructor, ptr %i.ie, align 8, !tbaa !645
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 272
  store ptr @pageReinit, ptr %i.if, align 8, !tbaa !660
  %i.ig = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.ih = getelementptr i8, ptr %i.ic, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ig, i8 0, i64 16, i1 false)
  %.val175.i = load i8, ptr %i.ih, align 4, !tbaa !881
  %i.ii = getelementptr inbounds nuw i8, ptr %i.bf, i64 33
  store i8 %.val175.i, ptr %i.ii, align 1, !tbaa !777
  %i.ij = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ik = load i8, ptr %i.ij, align 16, !tbaa !37 ; 2 uses
  %i.il = zext i8 %i.ik to i16
  %i.im = shl nuw i16 %i.il, 8
  %i.in = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  %i.io = load i8, ptr %i.in, align 1, !tbaa !37
  %i.ip = zext i8 %i.io to i16
  %i.iq = or disjoint i16 %i.im, %i.ip            ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.bf, i64 44 ; 5 uses
  store i16 %i.iq, ptr %i.ir, align 4, !tbaa !832
  %i.is = icmp ugt i8 %i.ik, 1
  %i.it = icmp ult i16 %i.iq, -32767
  %or.cond.not231.i = select i1 %i.is, i1 %i.it, i1 false
  %i.iu = call range(i16 1, 17) i16 @llvm.ctpop.i16(i16 %i.iq)
  %.not160.i = icmp samesign ult i16 %i.iu, 2
  %or.cond173.i = select i1 %or.cond.not231.i, i1 %.not160.i, i1 false
  br i1 %or.cond173.i, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %sqlite3PagerReadFileheader.exit.thread.i
  store i16 0, ptr %i.ir, align 4, !tbaa !832
  %i.iv = call fastcc i32 @sqlite3PagerSetPagesize(ptr noundef nonnull %i.ic, ptr noundef nonnull %i.ir) ; 0 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.bf, i64 34
  store i8 64, ptr %i.iw, align 2, !tbaa !1023
  %i.ix = getelementptr inbounds nuw i8, ptr %i.bf, i64 35
  store i8 32, ptr %i.ix, align 1, !tbaa !1024
  %i.iy = getelementptr inbounds nuw i8, ptr %i.bf, i64 36
  store i8 32, ptr %i.iy, align 4, !tbaa !1025
  %or.cond5.i = select i1 %.not.i180.i, i1 true, i1 %i.q
  br i1 %or.cond5.i, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.iz = getelementptr inbounds nuw i8, ptr %i.bf, i64 38
  store i8 0, ptr %i.iz, align 2, !tbaa !846
  br label %.sink.split.i

bb.aq:                                            ; preds = %sqlite3PagerReadFileheader.exit.thread.i
  %i.ja = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.jb = load i8, ptr %i.ja, align 4, !tbaa !37
  %i.jc = zext i8 %i.jb to i16
  %i.jd = getelementptr inbounds nuw i8, ptr %i.b, i64 21
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !37
  %i.jf = getelementptr inbounds nuw i8, ptr %i.bf, i64 34
  store i8 %i.je, ptr %i.jf, align 2, !tbaa !1023
  %i.jg = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  %i.jh = load i8, ptr %i.jg, align 2, !tbaa !37
  %i.ji = getelementptr inbounds nuw i8, ptr %i.bf, i64 35
  store i8 %i.jh, ptr %i.ji, align 1, !tbaa !1024
  %i.jj = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !37
  %i.jl = getelementptr inbounds nuw i8, ptr %i.bf, i64 36
  store i8 %i.jk, ptr %i.jl, align 4, !tbaa !1025
  %i.jm = getelementptr inbounds nuw i8, ptr %i.bf, i64 37
  store i8 1, ptr %i.jm, align 1, !tbaa !1030
  %i.jn = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %6 = load <4 x i8>, ptr %i.jn, align 4, !tbaa !37
  %7 = call i8 @llvm.vector.reduce.umax.v4i8(<4 x i8> %6)
  %i.jo = icmp ne i8 %7, 0
  %i.jp = zext i1 %i.jo to i8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.bf, i64 38
  store i8 %i.jp, ptr %i.jq, align 2, !tbaa !846
  %i.jr = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %8 = load <4 x i8>, ptr %i.jr, align 16, !tbaa !37
  %9 = call i8 @llvm.vector.reduce.umax.v4i8(<4 x i8> %8)
  %i.js = icmp ne i8 %9, 0
  %i.jt = zext i1 %i.js to i8
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.aq, %bb.ap
  %.sink.i = phi i8 [ 0, %bb.ap ], [ %i.jt, %bb.aq ]
  %.0141.ph.i = phi i16 [ 0, %bb.ap ], [ %i.jc, %bb.aq ]
  %i.ju = getelementptr inbounds nuw i8, ptr %i.bf, i64 39
  store i8 %.sink.i, ptr %i.ju, align 1, !tbaa !908
  br label %bb.ar

bb.ar:                                            ; preds = %.sink.split.i, %bb.ao
  %.0141.i = phi i16 [ 0, %bb.ao ], [ %.0141.ph.i, %.sink.split.i ]
  %i.jv = load i16, ptr %i.ir, align 4, !tbaa !832
  %i.jw = sub i16 %i.jv, %.0141.i
  %i.jx = getelementptr inbounds nuw i8, ptr %i.bf, i64 46
  store i16 %i.jw, ptr %i.jx, align 2, !tbaa !831
  %i.jy = load ptr, ptr %i.bf, align 8, !tbaa !461
  %i.jz = call fastcc i32 @sqlite3PagerSetPagesize(ptr noundef %i.jy, ptr noundef nonnull %i.ir) ; 0 uses
  br i1 %.not163.i, label %.loopexit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ka = getelementptr inbounds nuw i8, ptr %i.bf, i64 120
  store i32 1, ptr %i.ka, align 8, !tbaa !457
  %i.kb = load ptr, ptr @sqlite3SharedCacheList, align 8, !tbaa !458
  %i.kc = getelementptr inbounds nuw i8, ptr %i.bf, i64 128
  store ptr %i.kb, ptr %i.kc, align 8, !tbaa !459
  store ptr %i.bf, ptr @sqlite3SharedCacheList, align 8, !tbaa !458
  br label %.preheader233.i

.preheader233.i:                                  ; preds = %bb.as, %.loopexit.i
  %.ph.i = phi ptr [ %i.az, %.loopexit.i ], [ %i.bf, %bb.as ] ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ke = load i32, ptr %i.kd, align 8, !tbaa !278 ; 2 uses
  %i.kf = icmp sgt i32 %i.ke, 0
  br i1 %i.kf, label %.lr.ph249.i, label %.loopexit

.lr.ph249.i:                                      ; preds = %.preheader233.i
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !235
  %wide.trip.count.i = zext nneg i32 %i.ke to i64
  br label %bb.at

bb.at:                                            ; preds = %bb.az, %.lr.ph249.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph249.i ], [ %indvars.iv.next.i, %bb.az ] ; 2 uses
  %i.ki = getelementptr inbounds nuw [48 x i8], ptr %i.kh, i64 %indvars.iv.i
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !427 ; 3 uses
  %.not165.i = icmp eq ptr %i.kk, null
  br i1 %.not165.i, label %bb.az, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 17
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !456
  %.not166.i = icmp eq i8 %i.km, 0
  br i1 %.not166.i, label %bb.az, label %.preheader232.i

.preheader232.i:                                  ; preds = %bb.au, %.preheader232.i
  %.0.i = phi ptr [ %i.ko, %.preheader232.i ], [ %i.kk, %bb.au ] ; 5 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !464 ; 2 uses
  %.not167.i = icmp eq ptr %i.ko, null
  br i1 %.not167.i, label %bb.av, label %.preheader232.i, !llvm.loop !1056

bb.av:                                            ; preds = %.preheader232.i
  %i.kp = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !325
  %i.kr = icmp ult ptr %.ph.i, %i.kq
  br i1 %i.kr, label %bb.aw, label %.preheader.i

bb.aw:                                            ; preds = %bb.av
  %i.ks = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.kt = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %.0.i, ptr %i.kt, align 8, !tbaa !465
  %i.ku = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr null, ptr %i.ku, align 8, !tbaa !464
  store ptr %i.s, ptr %i.ks, align 8, !tbaa !464
  br label %.loopexit

.preheader.i:                                     ; preds = %bb.av, %bb.ax
  %.1.i = phi ptr [ %i.kw, %bb.ax ], [ %.0.i, %bb.av ] ; 4 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.1.i, i64 24
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !465 ; 5 uses
  %.not168.i = icmp eq ptr %i.kw, null
  br i1 %.not168.i, label %.critedge.thread.i, label %bb.ax

bb.ax:                                            ; preds = %.preheader.i
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !325
  %i.kz = icmp ult ptr %i.ky, %.ph.i
  br i1 %i.kz, label %.preheader.i, label %bb.ay, !llvm.loop !1057

bb.ay:                                            ; preds = %bb.ax
  %i.la = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.kw, ptr %i.la, align 8, !tbaa !465
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.preheader.i, %bb.ay
  %.sink301.i = phi i64 [ 32, %bb.ay ], [ 24, %.preheader.i ]
  %.sink299.i = phi ptr [ %.1.i, %bb.ay ], [ null, %.preheader.i ]
  %.sink298.i = phi ptr [ %i.kw, %bb.ay ], [ %i.s, %.preheader.i ]
  %.1.lcssa295.sink.i = phi ptr [ %i.s, %bb.ay ], [ %.1.i, %.preheader.i ]
  %i.lb = getelementptr inbounds nuw i8, ptr %.1.i, i64 24
  %i.lc = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sink301.i
  store ptr %.sink299.i, ptr %i.lc, align 8, !tbaa !446
  %i.ld = getelementptr inbounds nuw i8, ptr %.sink298.i, i64 32
  store ptr %.1.lcssa295.sink.i, ptr %i.ld, align 8, !tbaa !464
  store ptr %i.s, ptr %i.lb, align 8, !tbaa !465
  br label %.loopexit

bb.az:                                            ; preds = %bb.au, %bb.at
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.at, !llvm.loop !1058

.thread208.i:                                     ; preds = %bb.an, %sqlite3_free.exit193.i.i, %sqlite3_free.exit187.i.i, %sqlite3_free.exit185.i.i, %sqlite3_free.exit.i.i, %bb.r
  %.2140202214.i = phi i32 [ 7, %sqlite3_free.exit187.i.i ], [ 7, %bb.r ], [ %i.fv, %sqlite3_free.exit193.i.i ], [ %i.cr, %sqlite3_free.exit185.i.i ], [ %.0152.i.i, %sqlite3_free.exit.i.i ], [ %i.ib, %bb.an ]
  %i.le = load ptr, ptr %i.bf, align 8, !tbaa !461 ; 2 uses
  %.not172.i = icmp eq ptr %i.le, null
  br i1 %.not172.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.thread208.i
  call fastcc void @sqlite3PagerClose(ptr noundef nonnull %i.le)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.thread208.i
  %i.lf = getelementptr inbounds i8, ptr %i.bf, i64 -8 ; 2 uses
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !28
  %sext.i184.i = shl i64 %i.lg, 32
  %i.lh = ashr exact i64 %sext.i184.i, 32
  %i.li = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.lj = sub nsw i64 %i.li, %i.lh
  call void @free(ptr noundef nonnull %i.lf) #46
  br label %sqlite3_free.exit187.i

sqlite3_free.exit187.i:                           ; preds = %bb.bb, %.thread189.sqlite3_free.exit187_crit_edge.i
  %i.lk = phi i64 [ %.pre.i, %.thread189.sqlite3_free.exit187_crit_edge.i ], [ %i.lj, %bb.bb ]
  %.2140202215226.i = phi i32 [ 7, %.thread189.sqlite3_free.exit187_crit_edge.i ], [ %.2140202214.i, %bb.bb ]
  %i.ll = getelementptr inbounds i8, ptr %i.s, i64 -8 ; 2 uses
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !28
  %sext.i186.i = shl i64 %i.lm, 32
  %i.ln = ashr exact i64 %sext.i186.i, 32
  %i.lo = sub nsw i64 %i.lk, %i.ln
  store i64 %i.lo, ptr @mem.5, align 8, !tbaa !22
  call void @free(ptr noundef nonnull %i.ll) #46
  store ptr null, ptr %5, align 8, !tbaa !446
  br label %sqlite3BtreeOpen.exit.thread

sqlite3BtreeOpen.exit.thread:                     ; preds = %.thread.i, %sqlite3_free.exit187.i, %bb.i
  %.1135.i.ph = phi i32 [ 7, %bb.i ], [ %.2140202215226.i, %sqlite3_free.exit187.i ], [ 7, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  br label %bb.bc

.loopexit:                                        ; preds = %bb.az, %.critedge.thread.i, %bb.aw, %.preheader233.i, %bb.ar
  store ptr %i.s, ptr %5, align 8, !tbaa !446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  %.val = load ptr, ptr %i.t, align 8, !tbaa !325
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !461
  %i.lp = getelementptr inbounds nuw i8, ptr %.val.val, i64 80
  store i32 %3, ptr %i.lp, align 8, !tbaa !867
  br label %bb.bc

bb.bc:                                            ; preds = %sqlite3BtreeOpen.exit.thread, %.loopexit
  %.1135.i30 = phi i32 [ %.1135.i.ph, %sqlite3BtreeOpen.exit.thread ], [ 0, %.loopexit ]
  ret i32 %.1135.i30
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3BtreeCreateTable(ptr noundef %0, ptr noundef nonnull writeonly captures(none) %1, i32 noundef range(i32 2, 6) %2) unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca i8, align 1                       ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !323
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !325  ; 15 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.h, ptr %i.k, align 8, !tbaa !449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.m = load i8, ptr %i.l, align 8, !tbaa !630
  %.not.i = icmp eq i8 %i.m, 2
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 33
  %i.o = load i8, ptr %i.n, align 1, !tbaa !777
  %.not74.i = icmp eq i8 %i.o, 0
  %i.p = select i1 %.not74.i, i32 1, i32 8
  br label %btreeCreateTable.exit

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 38
  %i.r = load i8, ptr %i.q, align 2, !tbaa !846
  %.not62.i = icmp eq i8 %i.r, 0
  br i1 %.not62.i, label %bb.w, label %bb.d
end_hunk_2
begin_hunk_3_@computeYMD_HMS:bb.a
  %i.m = add i32 %i.l, %i.k
  %i.n = add i32 %i.m, %.neg.i                    ; 2 uses
  %i.o = sitofp i32 %i.n to double
  %i.p = fadd double %i.o, -1.221000e+02
  %i.q = fdiv double %i.p, 3.652500e+02
  %i.r = fptosi double %i.q to i32                ; 2 uses
  %i.s = sitofp i32 %i.r to double
  %i.t = fmul nnan double %i.s, 3.652500e+02
  %i.u = fptosi double %i.t to i32
  %i.v = sub nsw i32 %i.n, %i.u                   ; 2 uses
  %i.w = sitofp i32 %i.v to double
  %i.x = fdiv double %i.w, 3.060010e+01
  %i.y = fptosi double %i.x to i32                ; 3 uses
  %i.z = sitofp i32 %i.y to double
  %i.aa = fmul nnan double %i.z, 3.060010e+01
  %i.ab = fptosi double %i.aa to i32
  %i.ac = sub nsw i32 %i.v, %i.ab
  %i.ad = icmp slt i32 %i.y, 14
  %.v.i = select i1 %i.ad, i32 -1, i32 -13
  %i.ae = add nsw i32 %.v.i, %i.y                 ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 2
  %.v29.i = select i1 %i.af, i32 -4716, i32 -4715
  %i.ag = add nsw i32 %.v29.i, %i.r
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink31.i = phi i32 [ %i.ag, %bb.c ], [ 2000, %bb.b ]
  %.sink30.i = phi i32 [ %i.ae, %bb.c ], [ 1, %bb.b ]
  %.sink.i = phi i32 [ %i.ac, %bb.c ], [ 1, %bb.b ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink31.i, ptr %i.ah, align 8, !tbaa !1981
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sink30.i, ptr %i.ai, align 4, !tbaa !1982
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sink.i, ptr %i.aj, align 8, !tbaa !1983
  store i8 1, ptr %i.a, align 8, !tbaa !1973
  br label %computeYMD.exit

computeYMD.exit:                                  ; preds = %bb.a, %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 41 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !1975
  %.not.i2 = icmp eq i8 %i.al, 0
  br i1 %.not.i2, label %bb.e, label %computeHMS.exit

bb.e:                                             ; preds = %computeYMD.exit
  tail call fastcc void @computeJD(ptr noundef nonnull %0)
  %i.am = load double, ptr %0, align 8, !tbaa !1974
  %i.an = fadd double %i.am, 5.000000e-01         ; 2 uses
  %i.ao = fptosi double %i.an to i32
  %i.ap = sitofp i32 %i.ao to double
  %i.aq = fsub double %i.an, %i.ap
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.aq, double 8.640000e+07, double 5.000000e-01)
  %i.as = fptosi double %i.ar to i32
  %i.at = sitofp i32 %i.as to double
  %i.au = fmul nnan double %i.at, 1.000000e-03    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = fptosi double %i.au to i32              ; 3 uses
  %i.ax = sitofp i32 %i.aw to double
  %i.ay = fsub double %i.au, %i.ax
  %i.az = sdiv i32 %i.aw, 3600                    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !1976
  %.neg.i3 = mul nsw i32 %i.az, -3600
  %i.bb = add i32 %.neg.i3, %i.aw                 ; 2 uses
  %i.bc = sdiv i32 %i.bb, 60                      ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !1977
  %.neg19.i = mul nsw i32 %i.bc, -60
  %i.be = add i32 %.neg19.i, %i.bb
  %i.bf = sitofp i32 %i.be to double
  %i.bg = fadd double %i.ay, %i.bf
  store double %i.bg, ptr %i.av, align 8, !tbaa !1978
  store i8 1, ptr %i.ak, align 1, !tbaa !1975
  br label %computeHMS.exit

computeHMS.exit:                                  ; preds = %computeYMD.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @computeYMD(ptr noundef nonnull captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1973
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.d = load i8, ptr %i.c, align 2, !tbaa !1971
  %.not28 = icmp eq i8 %i.d, 0
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load double, ptr %0, align 8, !tbaa !1974
  %i.f = fadd double %i.e, 5.000000e-01
  %i.g = fptosi double %i.f to i32                ; 2 uses
  %i.h = sitofp i32 %i.g to double
  %i.i = fadd double %i.h, f0xC13C7DD040000000
  %i.j = fdiv double %i.i, f0x40E1D58800000000
  %i.k = fptosi double %i.j to i32                ; 2 uses
  %.neg = sdiv i32 %i.k, -4
  %i.l = add i32 %i.g, 1525
  %i.m = add i32 %i.l, %i.k
  %i.n = add i32 %i.m, %.neg                      ; 2 uses
  %i.o = sitofp i32 %i.n to double
  %i.p = fadd double %i.o, -1.221000e+02
  %i.q = fdiv double %i.p, 3.652500e+02
  %i.r = fptosi double %i.q to i32                ; 2 uses
  %i.s = sitofp i32 %i.r to double
  %i.t = fmul nnan double %i.s, 3.652500e+02
  %i.u = fptosi double %i.t to i32
  %i.v = sub nsw i32 %i.n, %i.u                   ; 2 uses
  %i.w = sitofp i32 %i.v to double
  %i.x = fdiv double %i.w, 3.060010e+01
  %i.y = fptosi double %i.x to i32                ; 3 uses
  %i.z = sitofp i32 %i.y to double
  %i.aa = fmul nnan double %i.z, 3.060010e+01
  %i.ab = fptosi double %i.aa to i32
  %i.ac = sub nsw i32 %i.v, %i.ab
  %i.ad = icmp slt i32 %i.y, 14
  %.v = select i1 %i.ad, i32 -1, i32 -13
  %i.ae = add nsw i32 %.v, %i.y                   ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 2
  %.v29 = select i1 %i.af, i32 -4716, i32 -4715
  %i.ag = add nsw i32 %.v29, %i.r
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink31 = phi i32 [ %i.ag, %bb.c ], [ 2000, %bb.b ]
  %.sink30 = phi i32 [ %i.ae, %bb.c ], [ 1, %bb.b ]
  %.sink = phi i32 [ %i.ac, %bb.c ], [ 1, %bb.b ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink31, ptr %i.ah, align 8, !tbaa !1981
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sink30, ptr %i.ai, align 4, !tbaa !1982
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sink, ptr %i.aj, align 8, !tbaa !1983
  store i8 1, ptr %i.a, align 8, !tbaa !1973
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) local_unnamed_addr #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #35

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #42

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #43

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctpop.i16(i16) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #35

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #43

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #35

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #44

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #43

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.umax.v4i8(<4 x i8>) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.and.v2i64(<2 x i64>) #35

attributes #0 = { nofree norecurse nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nofree norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree norecurse nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #36 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { nofree nosync nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #43 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #44 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #45 = { nounwind willreturn memory(read) }
attributes #46 = { nounwind }
attributes #47 = { nounwind allocsize(0) }
attributes #48 = { nounwind allocsize(1) }
attributes #49 = { nounwind willreturn memory(none) }
attributes #50 = { "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS11sqlite3_vfs", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !13, i64 24}
!12 = !{!"sqlite3_vfs", !5, i64 0, !5, i64 4, !5, i64 8, !9, i64 16, !13, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128}
!13 = !{!"p1 omnipotent char", !10, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!12, !9, i64 16}
!17 = distinct !{!17, !15}
!18 = !{!19, !21, i64 32}
!19 = !{!"", !20, i64 0, !10, i64 8, !10, i64 16, !5, i64 24, !21, i64 32, !20, i64 40, !20, i64 48}
!20 = !{!"long long", !6, i64 0}
!21 = !{!"p1 _ZTS13sqlite3_mutex", !10, i64 0}
!22 = !{!19, !20, i64 40}
!23 = !{!19, !20, i64 48}
!24 = !{!19, !10, i64 8}
!25 = !{!19, !10, i64 16}
!26 = !{!19, !20, i64 0}
!27 = distinct !{null}
!28 = !{!20, !20, i64 0}
!29 = !{!30, !13, i64 0}
!30 = !{!"StrAccum", !13, i64 0, !13, i64 8, !5, i64 16, !5, i64 20, !6, i64 24, !6, i64 25, !6, i64 26}
!31 = !{!30, !13, i64 8}
!32 = !{!30, !5, i64 16}
!33 = !{!30, !5, i64 20}
!34 = !{!30, !6, i64 25}
!35 = !{!30, !6, i64 26}
!36 = !{!30, !6, i64 24}
!37 = !{!6, !6, i64 0}
!38 = distinct !{!38, !15}
!39 = distinct !{!39, !15}
!40 = distinct !{!40, !15}
!41 = distinct !{!41, !15}
!42 = !{!43, !6, i64 3}
!43 = !{!"et_info", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !6, i64 4, !6, i64 5}
!44 = !{!45, !45, i64 0}
!45 = !{!"long", !6, i64 0}
!46 = !{!43, !6, i64 4}
!47 = !{!43, !6, i64 1}
!48 = distinct !{!48, !15}
!49 = !{!43, !6, i64 5}
!50 = distinct !{!50, !15}
!51 = !{!52, !52, i64 0}
!52 = !{!"double", !6, i64 0}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = distinct !{!55, !15}
!56 = distinct !{!56, !15}
!57 = distinct !{!57, !15}
!58 = distinct !{!58, !15}
!59 = distinct !{!59, !15}
!60 = distinct !{!60, !15}
!61 = distinct !{!61, !15}
!62 = distinct !{!62, !15}
!63 = distinct !{!63, !15}
!64 = distinct !{!64, !15, !65, !66}
!65 = !{!"llvm.loop.isvectorized", i32 1}
!66 = !{!"llvm.loop.unroll.runtime.disable"}
!67 = !{!"branch_weights", i32 8, i32 24}
!68 = distinct !{!68, !15, !65, !66}
!69 = distinct !{!69, !15, !65}
!70 = !{!71, !71, i64 0}
!71 = !{!"p1 int", !10, i64 0}
!72 = !{!13, !13, i64 0}
!73 = distinct !{!73, !15}
!74 = distinct !{!74, !15}
!75 = !{!76, !76, i64 0}
!76 = !{!"p1 _ZTS5Token", !10, i64 0}
!77 = !{!78, !13, i64 0}
!78 = !{!"Token", !13, i64 0, !5, i64 8, !5, i64 8}
!79 = !{!80, !80, i64 0}
!80 = !{!"p1 _ZTS7SrcList", !10, i64 0}
!81 = !{!82, !13, i64 0}
!82 = !{!"SrcList_item", !13, i64 0, !13, i64 8, !13, i64 16, !83, i64 24, !84, i64 32, !6, i64 40, !6, i64 41, !5, i64 44, !85, i64 48, !86, i64 56, !20, i64 64}
!83 = !{!"p1 _ZTS5Table", !10, i64 0}
!84 = !{!"p1 _ZTS6Select", !10, i64 0}
!85 = !{!"p1 _ZTS4Expr", !10, i64 0}
!86 = !{!"p1 _ZTS6IdList", !10, i64 0}
!87 = !{!82, !13, i64 8}
!88 = distinct !{!88, !15}
!89 = distinct !{!89, !15}
!90 = !{!91, !13, i64 472}
!91 = !{!"Vdbe", !92, i64 0, !93, i64 8, !93, i64 16, !5, i64 24, !5, i64 28, !94, i64 32, !5, i64 40, !5, i64 44, !71, i64 48, !95, i64 56, !97, i64 64, !5, i64 72, !98, i64 80, !5, i64 88, !97, i64 96, !99, i64 104, !5, i64 112, !5, i64 116, !5, i64 120, !97, i64 128, !5, i64 136, !5, i64 140, !100, i64 144, !5, i64 168, !5, i64 172, !102, i64 176, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !6, i64 204, !5, i64 304, !5, i64 308, !99, i64 312, !13, i64 320, !97, i64 328, !6, i64 336, !6, i64 337, !6, i64 338, !6, i64 339, !6, i64 340, !6, i64 341, !5, i64 344, !20, i64 352, !5, i64 360, !103, i64 368, !5, i64 464, !13, i64 472, !5, i64 480}
!92 = !{!"p1 _ZTS7sqlite3", !10, i64 0}
!93 = !{!"p1 _ZTS4Vdbe", !10, i64 0}
!94 = !{!"p1 _ZTS6VdbeOp", !10, i64 0}
!95 = !{!"p2 _ZTS3Mem", !96, i64 0}
!96 = !{!"any p2 pointer", !10, i64 0}
!97 = !{!"p1 _ZTS3Mem", !10, i64 0}
!98 = !{!"p2 _ZTS6Cursor", !96, i64 0}
!99 = !{!"p2 omnipotent char", !96, i64 0}
!100 = !{!"Fifo", !5, i64 0, !101, i64 8, !101, i64 16}
!101 = !{!"p1 _ZTS8FifoPage", !10, i64 0}
!102 = !{!"p1 _ZTS7Context", !10, i64 0}
!103 = !{!"BtreeMutexArray", !5, i64 0, !6, i64 8}
!104 = !{!91, !6, i64 339}
!105 = !{!91, !5, i64 116}
!106 = !{!91, !92, i64 0}
!107 = !{!91, !5, i64 184}
!108 = !{!91, !13, i64 320}
!109 = !{!110, !97, i64 240}
!110 = !{!"sqlite3", !9, i64 0, !5, i64 8, !111, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !6, i64 40, !6, i64 41, !6, i64 42, !6, i64 43, !5, i64 44, !112, i64 48, !20, i64 56, !20, i64 64, !5, i64 72, !5, i64 76, !5, i64 80, !21, i64 88, !113, i64 96, !5, i64 108, !96, i64 112, !93, i64 120, !5, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !97, i64 240, !13, i64 248, !13, i64 256, !6, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !5, i64 304, !114, i64 312, !83, i64 344, !117, i64 352, !5, i64 360, !114, i64 368, !114, i64 400, !118, i64 432, !5, i64 456, !6, i64 464, !6, i64 560}
!111 = !{!"p1 _ZTS2Db", !10, i64 0}
!112 = !{!"p1 _ZTS7CollSeq", !10, i64 0}
!113 = !{!"sqlite3InitInfo", !5, i64 0, !5, i64 4, !6, i64 8}
!114 = !{!"Hash", !6, i64 0, !6, i64 1, !5, i64 4, !5, i64 8, !115, i64 16, !116, i64 24}
!115 = !{!"p1 _ZTS8HashElem", !10, i64 0}
!116 = !{!"p1 _ZTS3_ht", !10, i64 0}
!117 = !{!"p2 _ZTS12sqlite3_vtab", !96, i64 0}
!118 = !{!"BusyHandler", !10, i64 0, !10, i64 8, !5, i64 16}
!119 = !{!120, !13, i64 24}
!120 = !{!"Mem", !6, i64 0, !52, i64 8, !92, i64 16, !13, i64 24, !5, i64 32, !121, i64 36, !6, i64 38, !6, i64 39, !10, i64 40}
!121 = !{!"short", !6, i64 0}
!122 = !{!120, !10, i64 40}
!123 = !{!120, !5, i64 32}
!124 = !{!120, !121, i64 36}
!125 = !{!120, !6, i64 39}
!126 = !{!120, !6, i64 38}
!127 = !{!91, !5, i64 188}
!128 = !{!110, !5, i64 32}
!129 = !{!110, !6, i64 42}
!130 = !{!120, !92, i64 16}
!131 = !{!91, !6, i64 338}
!132 = !{!110, !5, i64 36}
!133 = !{!91, !97, i64 128}
!134 = !{!91, !71, i64 48}
!135 = !{!91, !5, i64 24}
!136 = !{!91, !94, i64 32}
!137 = !{!138, !6, i64 0}
!138 = !{!"VdbeOp", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !5, i64 4, !5, i64 8, !5, i64 12, !6, i64 16}
end_hunk_3
