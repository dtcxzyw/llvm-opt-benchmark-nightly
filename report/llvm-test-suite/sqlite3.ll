inline.NumInlined: 3254
inline.NumDeleted: 427
loop-unroll.NumCompletelyUnrolled: 75
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 107
begin_hunk_0_@sqlite3VtabCommit:bb.a
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !201
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !407
  %i.t = tail call i32 %i.s(ptr noundef nonnull %i.h) #43, !inline_history !916 ; 0 uses
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
  tail call void @free(ptr noundef nonnull %i.z) #43
  br label %sqlite3_free.exit.i

sqlite3_free.exit.i:                              ; preds = %.critedge.thread.i, %.critedge.i
  store i32 0, ptr %i.c, align 8, !tbaa !422
  store ptr null, ptr %i.a, align 8, !tbaa !421
  br label %callFinaliser.exit

callFinaliser.exit:                               ; preds = %bb.a, %sqlite3_free.exit.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @sqlite3MPrintf(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ...) unnamed_addr #5 {
bb.a:
  %i.a = alloca [350 x i8], align 16              ; 4 uses
  %2 = alloca %struct.StrAccum, align 8           ; 11 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  call void @llvm.va_start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
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
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  ret ptr %i.r
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3OsCloseFree(ptr noundef %0) unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !531    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %sqlite3_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !672
  %i.d = tail call i32 %i.c(ptr noundef nonnull %0) #43, !inline_history !673 ; 0 uses
  store ptr null, ptr %0, align 8, !tbaa !531
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.b, %bb.c
  %i.e = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !28
  %sext.i = shl i64 %i.f, 32
  %i.g = ashr exact i64 %sext.i, 32
  %i.h = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.i = sub nsw i64 %i.h, %i.g
  store i64 %i.i, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.e) #43
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
  %i.i = load i32, ptr %i.h, align 8, !tbaa !801  ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !461
  %i.l = tail call fastcc i32 @sqlite3PagerPagecount(ptr noundef %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.054 = phi i32 [ %i.l, %bb.b ], [ %i.i, %bb.a ] ; 8 uses
  %i.m = getelementptr i8, ptr %0, i64 44         ; 2 uses
  %.val71 = load i16, ptr %i.m, align 4, !tbaa !833
  %i.n = getelementptr i8, ptr %0, i64 46         ; 2 uses
  %.val72 = load i16, ptr %i.n, align 2, !tbaa !832
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !632
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !802
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 36
  %2 = load i32, ptr %i.ad, align 1, !tbaa !37
  %i.ae = icmp eq i32 %2, 0
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #43
  %i.aj = call fastcc i32 @allocateBtreePage(ptr noundef nonnull %0, ptr noundef %i.d, ptr noundef %i.c, i32 noundef %.054, i8 noundef zeroext 1) ; 2 uses
  %.not67 = icmp eq i32 %i.aj, 0
  br i1 %.not67, label %bb.i, label %.critedge69

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !807 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %releasePage.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 120
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !630
  call fastcc void @sqlite3PagerUnref(ptr noundef %i.am)
  br label %releasePage.exit

releasePage.exit:                                 ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #43
  br label %.thread88

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #43
  %i.an = call fastcc i32 @sqlite3BtreeGetPage(ptr noundef nonnull %0, i32 noundef %.054, ptr noundef nonnull %i.f, i32 noundef 0) ; 2 uses
  %.not64 = icmp eq i32 %i.an, 0
  br i1 %.not64, label %.preheader, label %.thread92

.preheader:                                       ; preds = %bb.k
  %.not101 = icmp eq i32 %1, 0
  br i1 %.not101, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #43
  %i.ao = call fastcc i32 @allocateBtreePage(ptr noundef nonnull %0, ptr noundef %i.g, ptr noundef %i.e, i32 noundef 0, i8 noundef zeroext 0) ; 2 uses
  %.not65.us = icmp eq i32 %i.ao, 0
  br i1 %.not65.us, label %bb.l, label %.split.us

bb.l:                                             ; preds = %.preheader.split.us
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !807 ; 2 uses
  %.not.i75.us = icmp eq ptr %i.ap, null
  br i1 %.not.i75.us, label %.split99.us, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 120
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !630
  call fastcc void @sqlite3PagerUnref(ptr noundef %i.ar)
  br label %.split99.us

.split99.us:                                      ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #43
  %i.as = load i32, ptr %i.e, align 4
  br label %.split99

.preheader.split:                                 ; preds = %.preheader, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #43
  %i.at = call fastcc i32 @allocateBtreePage(ptr noundef nonnull %0, ptr noundef %i.g, ptr noundef %i.e, i32 noundef 0, i8 noundef zeroext 0) ; 2 uses
  %.not65 = icmp eq i32 %i.at, 0
  br i1 %.not65, label %bb.o, label %.split.us

.split.us:                                        ; preds = %.preheader.split, %.preheader.split.us
  %.us-phi = phi i32 [ %i.ao, %.preheader.split.us ], [ %i.at, %.preheader.split ]
  %i.au = load ptr, ptr %i.f, align 8, !tbaa !807 ; 2 uses
  %.not.i73 = icmp eq ptr %i.au, null
  br i1 %.not.i73, label %releasePage.exit74, label %bb.n

bb.n:                                             ; preds = %.split.us
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 120
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !630
  call fastcc void @sqlite3PagerUnref(ptr noundef %i.aw)
  br label %releasePage.exit74

bb.o:                                             ; preds = %.preheader.split
  %i.ax = load ptr, ptr %i.g, align 8, !tbaa !807 ; 2 uses
  %.not.i75 = icmp eq ptr %i.ax, null
  br i1 %.not.i75, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 120
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !630
  call fastcc void @sqlite3PagerUnref(ptr noundef %i.az)
  br label %bb.q

releasePage.exit74:                               ; preds = %bb.n, %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #43
  br label %.thread92

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #43
  %i.ba = load i32, ptr %i.e, align 4             ; 2 uses
  %i.bb = icmp ugt i32 %i.ba, %1
  br i1 %i.bb, label %.preheader.split, label %.split99, !llvm.loop !917

.split99:                                         ; preds = %bb.q, %.split99.us
  %.us-phi100 = phi i32 [ %i.as, %.split99.us ], [ %i.ba, %bb.q ]
  %i.bc = load ptr, ptr %i.f, align 8, !tbaa !807 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 120 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !630
  %i.bf = call fastcc i32 @sqlite3PagerWrite(ptr noundef %i.be) ; 2 uses
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.r, label %.thread116

.thread116:                                       ; preds = %.split99
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !630
  call fastcc void @sqlite3PagerUnref(ptr noundef %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %bb.u

.critedge69:                                      ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #43
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.e, %bb.f, %.critedge69
  %.5.ph = phi i32 [ %i.aj, %.critedge69 ], [ 11, %bb.f ], [ %i.ag, %bb.e ], [ 101, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %bb.u

.thread88:                                        ; preds = %releasePage.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %bb.s

.thread92:                                        ; preds = %releasePage.exit74, %bb.k
  %.353.ph = phi i32 [ %i.an, %bb.k ], [ %.us-phi, %releasePage.exit74 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %bb.u

bb.r:                                             ; preds = %.split99
  %i.bi = load i32, ptr %i.b, align 4, !tbaa !4
  %i.bj = call fastcc i32 @relocatePage(ptr noundef nonnull %0, ptr noundef nonnull %i.bc, i8 noundef zeroext %i.ah, i32 noundef %i.bi, i32 noundef %.us-phi100) ; 2 uses
  %i.bk = load ptr, ptr %i.bd, align 8, !tbaa !630
  call fastcc void @sqlite3PagerUnref(ptr noundef %i.bk)
  %.not66 = icmp eq i32 %i.bj, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br i1 %.not66, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.thread88, %bb.r, %bb.c
  %i.bl = load i16, ptr %i.m, align 4, !tbaa !833
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
  br label %.critedge, !llvm.loop !918

bb.t:                                             ; preds = %.critedge
  %.val70 = load i16, ptr %i.n, align 2, !tbaa !832
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
begin_hunk_1_@sqlite3PutVarint:bb.a
  br i1 %cmp.n53, label %.loopexit.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv38.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec48, %vec.epilog.middle.block ]
  %indvars.iv36.ph = phi i64 [ %indvars.iv, %iter.check ], [ %i.ap, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %vec.epilog.scalar.ph ], [ %indvars.iv38.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %vec.epilog.scalar.ph ], [ %indvars.iv36.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv36
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !37
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv38
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !37
  %indvars.iv.next37 = add nsw i64 %indvars.iv36, -1
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next39, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !1018

.loopexit.loopexit:                               ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.bg = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit33, %.loopexit.loopexit
  %.026 = phi i32 [ %i.bg, %.loopexit.loopexit ], [ 9, %.loopexit.loopexit33 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  ret i32 %.026
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3BtreeBeginStmt(ptr nofree noundef readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !325  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !323
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !449
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !754
  %.not = icmp eq i8 %i.f, 2
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !634
  %.not9 = icmp eq i8 %i.h, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  %i.j = load i8, ptr %i.i, align 1, !tbaa !778
  %.not11 = icmp eq i8 %i.j, 0
  %i.k = select i1 %.not11, i32 1, i32 8
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  %i.m = load i8, ptr %i.l, align 1, !tbaa !778
  %.not10 = icmp eq i8 %i.m, 0
  br i1 %.not10, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !461
  %i.o = tail call fastcc i32 @sqlite3PagerStmtBegin(ptr noundef %i.n)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.p = phi i32 [ %i.o, %bb.e ], [ 0, %bb.d ]
  store i8 1, ptr %i.g, align 8, !tbaa !634
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
  %i.g = load i8, ptr %i.f, align 8, !tbaa !754   ; 2 uses
  %i.h = icmp eq i8 %i.g, 2
  br i1 %i.h, label %sqlite3BtreeInvokeBusyHandler.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ne i8 %i.g, 1
  %i.j = icmp ne i32 %1, 0                        ; 6 uses
  %or.cond = or i1 %i.j, %i.i
  br i1 %or.cond, label %bb.c, label %sqlite3BtreeInvokeBusyHandler.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 33 ; 3 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !778
  %i.m = icmp ne i8 %i.l, 0
  %or.cond3 = and i1 %i.j, %i.m
  br i1 %or.cond3, label %sqlite3BtreeInvokeBusyHandler.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 5 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !631
  %i.p = icmp eq i8 %i.o, 2
  %or.cond5 = and i1 %i.j, %i.p
  br i1 %or.cond5, label %sqlite3BtreeInvokeBusyHandler.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = icmp sgt i32 %1, 1                       ; 3 uses
  br i1 %i.q, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %.05391 = load ptr, ptr %i.r, align 8, !tbaa !795 ; 2 uses
  %.not92 = icmp eq ptr %.05391, null
  br i1 %.not92, label %.thread, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.05393, i64 16
  %.053 = load ptr, ptr %i.s, align 8, !tbaa !795 ; 2 uses
  %.not = icmp eq ptr %.053, null
  br i1 %.not, label %.thread, label %.lr.ph, !llvm.loop !1019

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.05393 = phi ptr [ %.053, %bb.g ], [ %.05391, %bb.f ] ; 2 uses
  %i.t = load ptr, ptr %.05393, align 8, !tbaa !796
  %.not58 = icmp eq ptr %i.t, %0
  br i1 %.not58, label %bb.g, label %sqlite3BtreeInvokeBusyHandler.exit.thread

.thread:                                          ; preds = %bb.g, %bb.f, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 6 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.c, i64 46 ; 3 uses
  %.phi.trans.insert68.i = getelementptr inbounds nuw i8, ptr %i.c, i64 34 ; 3 uses
  %.phi.trans.insert70.i = getelementptr inbounds nuw i8, ptr %i.c, i64 35 ; 3 uses
  %.phi.trans.insert72.i = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 3 uses
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
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !632 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.i, label %lockBtree.exit

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !461
  %i.ai = call fastcc i32 @sqlite3PagerAcquire(ptr noundef %i.ah, i32 noundef 1, ptr noundef %i.a, i32 noundef 0) ; 2 uses
  %.not.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i, label %bb.j, label %sqlite3BtreeGetPage.exit.i

sqlite3BtreeGetPage.exit.i:                       ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %newDatabase.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !653 ; 9 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !636
  %.not.i.i.i = icmp eq ptr %i.ak, null           ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 88 ; 2 uses
  %i.am = select i1 %.not.i.i.i, ptr null, ptr %i.al
  %i.an = getelementptr i8, ptr %i.aj, i64 80
  %.val.i.i = load ptr, ptr %i.an, align 8, !tbaa !658
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 200 ; 2 uses
  store ptr %.val.i.i, ptr %i.ao, align 8, !tbaa !802
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 208 ; 2 uses
  store ptr %i.aj, ptr %i.ap, align 8, !tbaa !630
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 192
  store ptr %i.c, ptr %i.aq, align 8, !tbaa !803
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 216
  store i32 1, ptr %i.ar, align 8, !tbaa !329
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  store i8 100, ptr %i.as, align 8, !tbaa !804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  %i.at = load ptr, ptr %i.c, align 8, !tbaa !461
  %i.au = tail call fastcc i32 @sqlite3PagerPagecount(ptr noundef %i.at)
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %bb.k, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.j
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 2, !tbaa !832
  %.pre69.i = load i8, ptr %.phi.trans.insert68.i, align 2, !tbaa !1020
  %.pre71.i = load i8, ptr %.phi.trans.insert70.i, align 1, !tbaa !1021
  %.pre73.i = load i8, ptr %.phi.trans.insert72.i, align 4, !tbaa !1022
  %i.aw = zext i16 %.pre.i to i32
  br label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !802 ; 11 uses
  %i.ay = load i128, ptr %i.ax, align 1
  %i.az = icmp ne i128 %i.ay, 265465397511803988906881385371554131
  %i.ba = zext i1 %i.az to i32
  %.not54.i = icmp eq i32 %i.ba, 0
  br i1 %.not54.i, label %bb.l, label %.thread66.i

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 18
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !37
  %i.bd = icmp ugt i8 %i.bc, 1
  br i1 %i.bd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.k, align 1, !tbaa !778
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 19
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !37
  %i.bg = icmp ugt i8 %i.bf, 1
  br i1 %i.bg, label %.thread66.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !37  ; 2 uses
  %i.bj = zext i8 %i.bi to i32
  %i.bk = shl nuw nsw i32 %i.bj, 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 17
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !37
  %i.bn = zext i8 %i.bm to i32
  %i.bo = or disjoint i32 %i.bk, %i.bn            ; 4 uses
  %i.bp = add nuw nsw i32 %i.bo, 65535
  %i.bq = and i32 %i.bp, %i.bo
  %i.br = icmp ne i32 %i.bq, 0
  %i.bs = icmp ult i8 %i.bi, 2
  %or.cond.i = or i1 %i.bs, %i.br
  br i1 %or.cond.i, label %.thread66.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = trunc nuw i32 %i.bo to i16
  store i16 %i.bt, ptr %i.v, align 4, !tbaa !833
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !37
  %i.bw = zext i8 %i.bv to i32
  %i.bx = sub nuw nsw i32 %i.bo, %i.bw            ; 3 uses
  %i.by = trunc nuw i32 %i.bx to i16
  store i16 %i.by, ptr %.phi.trans.insert.i, align 2, !tbaa !832
  %i.bz = icmp samesign ult i32 %i.bx, 500
  br i1 %i.bz, label %.thread66.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ax, i64 21
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !37  ; 2 uses
  store i8 %i.cb, ptr %.phi.trans.insert68.i, align 2, !tbaa !1020
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ax, i64 22
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !37  ; 2 uses
  store i8 %i.cd, ptr %.phi.trans.insert70.i, align 1, !tbaa !1021
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ax, i64 23
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !37  ; 2 uses
  store i8 %i.cf, ptr %.phi.trans.insert72.i, align 4, !tbaa !1022
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ax, i64 52
  %2 = load i32, ptr %i.cg, align 1, !tbaa !37
  %i.ch = icmp ne i32 %2, 0
  %i.ci = zext i1 %i.ch to i8
  store i8 %i.ci, ptr %i.w, align 2, !tbaa !847
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %3 = load i32, ptr %i.cj, align 1, !tbaa !37
  %i.ck = icmp ne i32 %3, 0
  %i.cl = zext i1 %i.ck to i8
  store i8 %i.cl, ptr %i.x, align 1, !tbaa !909
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i
  %i.cm = phi i8 [ %.pre73.i, %._crit_edge.i ], [ %i.cf, %bb.q ]
  %i.cn = phi i8 [ %.pre71.i, %._crit_edge.i ], [ %i.cd, %bb.q ]
  %i.co = phi i8 [ %.pre69.i, %._crit_edge.i ], [ %i.cb, %bb.q ]
  %i.cp = phi i32 [ %i.aw, %._crit_edge.i ], [ %i.bx, %bb.q ] ; 2 uses
  %i.cq = add nsw i32 %i.cp, -12                  ; 3 uses
  %i.cr = zext i8 %i.co to i32
  %i.cs = mul nsw i32 %i.cq, %i.cr                ; 2 uses
  %i.ct = sdiv i32 %i.cs, 255                     ; 2 uses
  %i.cu = add nsw i32 %i.ct, -23
  store i32 %i.cu, ptr %i.y, align 8, !tbaa !1023
  %i.cv = zext i8 %i.cn to i32
  %i.cw = mul nsw i32 %i.cq, %i.cv
  %i.cx = sdiv i32 %i.cw, 255                     ; 2 uses
  %i.cy = add nsw i32 %i.cx, -23
  store i32 %i.cy, ptr %i.z, align 4, !tbaa !1024
  %i.cz = add nsw i32 %i.cp, -35
  store i32 %i.cz, ptr %i.aa, align 8, !tbaa !1025
  %i.da = zext i8 %i.cm to i32
  %i.db = mul nsw i32 %i.cq, %i.da
  %i.dc = sdiv i32 %i.db, 255
  %i.dd = add nsw i32 %i.dc, -23
  store i32 %i.dd, ptr %i.ab, align 4, !tbaa !1026
  %i.de = icmp sgt i32 %i.cx, %i.ct
  %i.df = icmp slt i32 %i.cs, 5865
  %or.cond57.i = or i1 %i.df, %i.de
  br i1 %or.cond57.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.am, ptr %i.u, align 8, !tbaa !632
  br label %lockBtree.exit

bb.t:                                             ; preds = %bb.r
  br i1 %.not.i.i.i, label %releasePage.exit.i, label %.thread66.i

.thread66.i:                                      ; preds = %bb.t, %bb.p, %bb.o, %bb.n, %bb.k
  %i.dg = load ptr, ptr %i.ap, align 8, !tbaa !630
  tail call fastcc void @sqlite3PagerUnref(ptr noundef %i.dg)
  br label %releasePage.exit.i

releasePage.exit.i:                               ; preds = %.thread66.i, %bb.t
  store ptr null, ptr %i.u, align 8, !tbaa !632
  br label %newDatabase.exit.thread

lockBtree.exit:                                   ; preds = %bb.s, %bb.h
  %i.dh = phi ptr [ %i.af, %bb.h ], [ %i.al, %bb.s ]
  %.3 = phi i32 [ %.2, %bb.h ], [ 0, %bb.s ]      ; 2 uses
  %i.di = icmp eq i32 %.3, 0                      ; 2 uses
  %or.cond7 = and i1 %i.j, %i.di
  br i1 %or.cond7, label %bb.u, label %newDatabase.exit

bb.u:                                             ; preds = %lockBtree.exit
  %i.dj = load i8, ptr %i.k, align 1, !tbaa !778
  %.not59 = icmp eq i8 %i.dj, 0
  br i1 %.not59, label %bb.v, label %newDatabase.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 120
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !630
  %.val = load ptr, ptr %i.dl, align 8, !tbaa !636
  %i.dm = tail call fastcc i32 @sqlite3PagerBegin(ptr %.val, i32 noundef %i.ac) ; 2 uses
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %bb.w, label %newDatabase.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.do = load ptr, ptr %i.c, align 8, !tbaa !461
  %i.dp = tail call fastcc i32 @sqlite3PagerPagecount(ptr noundef %i.do)
  %i.dq = icmp sgt i32 %i.dp, 0
  br i1 %i.dq, label %.thread76, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dr = load ptr, ptr %i.u, align 8, !tbaa !632 ; 11 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 112
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !802 ; 18 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 120
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !630
  %i.dw = tail call fastcc i32 @sqlite3PagerWrite(ptr noundef %i.dv) ; 2 uses
  %.not.i61 = icmp eq i32 %i.dw, 0
  br i1 %.not.i61, label %bb.y, label %newDatabase.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.dt, ptr noundef nonnull align 16 dereferenceable(16) @zMagicHeader, i64 16, i1 false)
  %i.dy = load i16, ptr %i.v, align 4, !tbaa !833
  %i.dz = lshr i16 %i.dy, 8
  %i.ea = trunc nuw i16 %i.dz to i8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !37
  %i.ec = load i16, ptr %i.v, align 4, !tbaa !833
  %i.ed = trunc i16 %i.ec to i8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dt, i64 17
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !37
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dt, i64 18
  store i8 1, ptr %i.ef, align 1, !tbaa !37
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dt, i64 19
  store i8 1, ptr %i.eg, align 1, !tbaa !37
  %i.eh = load i16, ptr %i.v, align 4, !tbaa !833
  %i.ei = trunc i16 %i.eh to i8
  %i.ej = load i16, ptr %.phi.trans.insert.i, align 2, !tbaa !832
  %i.ek = trunc i16 %i.ej to i8
  %i.el = sub i8 %i.ei, %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.dt, i64 20
  store i8 %i.el, ptr %i.em, align 1, !tbaa !37
  %i.en = load i8, ptr %.phi.trans.insert68.i, align 2, !tbaa !1020
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dt, i64 21
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !37
  %i.ep = load i8, ptr %.phi.trans.insert70.i, align 1, !tbaa !1021
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dt, i64 22
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !37
  %i.er = load i8, ptr %.phi.trans.insert72.i, align 4, !tbaa !1022
  %i.es = getelementptr inbounds nuw i8, ptr %i.dt, i64 23
  store i8 %i.er, ptr %i.es, align 1, !tbaa !37
  %i.et = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(76) %i.et, i8 0, i64 76, i1 false)
  %i.eu = load ptr, ptr %i.dx, align 8, !tbaa !802
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dr, i64 104 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !803
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 8, !tbaa !804 ; 3 uses
  %i.ez = zext i8 %i.ey to i64                    ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ez ; 6 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 46 ; 4 uses
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !832
  %i.fd = zext i16 %i.fc to i64
  %i.fe = sub nsw i64 %i.fd, %i.ez
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fa, i8 0, i64 %i.fe, i1 false)
  store i8 13, ptr %i.fa, align 1, !tbaa !37
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 1
  store i32 0, ptr %i.ff, align 1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 7
  store i8 0, ptr %i.fg, align 1, !tbaa !37
  %i.fh = load i16, ptr %i.fb, align 2, !tbaa !832
  %i.fi = lshr i16 %i.fh, 8
  %i.fj = trunc nuw i16 %i.fi to i8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fa, i64 5
  store i8 %i.fj, ptr %i.fk, align 1, !tbaa !37
  %i.fl = load i16, ptr %i.fb, align 2, !tbaa !832
  %i.fm = trunc i16 %i.fl to i8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fa, i64 6
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !37
  %i.fo = load i16, ptr %i.fb, align 2, !tbaa !832
  %i.fp = zext i8 %i.ey to i16
  %i.fq = add nuw nsw i16 %i.fp, 8                ; 2 uses
  %i.fr = sub i16 %i.fo, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dr, i64 18
  store i16 %i.fr, ptr %i.fs, align 2, !tbaa !835
  %i.ft = getelementptr inbounds nuw i8, ptr %i.dr, i64 9
  store i8 0, ptr %i.ft, align 1, !tbaa !813
  %i.fu = load ptr, ptr %i.ev, align 8, !tbaa !803
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 56
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dr, i64 10
  %i.fx = load <2 x i32>, ptr %i.fv, align 8, !tbaa !4
  %i.fy = trunc <2 x i32> %i.fx to <2 x i16>
  store <2 x i16> %i.fy, ptr %i.fw, align 2, !tbaa !170
  store i8 %i.ey, ptr %i.ex, align 8, !tbaa !804
  %i.fz = getelementptr inbounds nuw i8, ptr %i.dr, i64 14
  store i16 %i.fq, ptr %i.fz, align 2, !tbaa !810
  %i.ga = getelementptr inbounds nuw i8, ptr %i.dr, i64 20
  store i16 0, ptr %i.ga, align 4, !tbaa !812
  store <8 x i8> <i8 1, i8 0, i8 0, i8 1, i8 1, i8 0, i8 1, i8 1>, ptr %i.dr, align 8, !tbaa !37
  %i.gb = getelementptr inbounds nuw i8, ptr %i.c, i64 37
  store i8 1, ptr %i.gb, align 1, !tbaa !1027
  %i.gc = getelementptr inbounds nuw i8, ptr %i.dt, i64 52
  %i.gd = load i8, ptr %i.w, align 2, !tbaa !847
  store i8 0, ptr %i.gc, align 1, !tbaa !37
  %i.ge = getelementptr inbounds nuw i8, ptr %i.dt, i64 53
  store i8 0, ptr %i.ge, align 1, !tbaa !37
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dt, i64 54
  store i8 0, ptr %i.gf, align 1, !tbaa !37
  %i.gg = getelementptr inbounds nuw i8, ptr %i.dt, i64 55
  store i8 %i.gd, ptr %i.gg, align 1, !tbaa !37
  %i.gh = getelementptr inbounds nuw i8, ptr %i.dt, i64 64
  %i.gi = load i8, ptr %i.x, align 1, !tbaa !909
  store i8 0, ptr %i.gh, align 1, !tbaa !37
  %i.gj = getelementptr inbounds nuw i8, ptr %i.dt, i64 65
  store i8 0, ptr %i.gj, align 1, !tbaa !37
  %i.gk = getelementptr inbounds nuw i8, ptr %i.dt, i64 66
  store i8 0, ptr %i.gk, align 1, !tbaa !37
  %i.gl = getelementptr inbounds nuw i8, ptr %i.dt, i64 67
  store i8 %i.gi, ptr %i.gl, align 1, !tbaa !37
  br label %.thread76

newDatabase.exit:                                 ; preds = %lockBtree.exit
  br i1 %i.di, label %bb.z, label %newDatabase.exit.thread

bb.z:                                             ; preds = %newDatabase.exit
  br i1 %i.j, label %.thread76, label %.critedge.thread

.thread76:                                        ; preds = %bb.w, %bb.y, %bb.z
  store i8 0, ptr %i.ae, align 8, !tbaa !634
  br label %.critedge.thread

newDatabase.exit.thread:                          ; preds = %sqlite3BtreeGetPage.exit.i, %releasePage.exit.i, %bb.x, %bb.u, %bb.v, %newDatabase.exit
  %.471 = phi i32 [ %.3, %newDatabase.exit ], [ %i.dw, %bb.x ], [ 8, %bb.u ], [ %i.dm, %bb.v ], [ %i.ai, %sqlite3BtreeGetPage.exit.i ], [ 26, %releasePage.exit.i ] ; 2 uses
  %i.gm = load i8, ptr %i.n, align 8, !tbaa !631
  %i.gn = icmp eq i8 %i.gm, 0
end_hunk_1
begin_hunk_2_@sqlite3VdbeRecordCompare:bb.a
  %i.jt = phi i32 [ 1, %bb.ag ], [ 2, %bb.ai ], [ 3, %bb.aj ], [ 4, %bb.ak ], [ 5, %bb.al ], [ 6, %bb.am ], [ 7, %bb.an ], [ 8, %bb.ao ], [ 9, %bb.ap ]
  %i.ju = add i32 %i.jt, %.065137                 ; 2 uses
  %.not71 = icmp ult i32 %.055140, %3
  br i1 %.not71, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %sqlite3GetVarint32.exit99
  %i.jv = icmp ugt i32 %.0109, 11
  br i1 %i.jv, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.jw = add i32 %.0109, -12
  %i.jx = lshr i32 %i.jw, 1
  br label %sqlite3VdbeSerialTypeLen.exit101

bb.as:                                            ; preds = %bb.aq
  %i.jy = zext nneg i32 %.0109 to i64
  %i.jz = getelementptr inbounds nuw i8, ptr @sqlite3VdbeSerialTypeLen.aSize, i64 %i.jy
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !37
  %i.kb = zext i8 %i.ka to i32
  br label %sqlite3VdbeSerialTypeLen.exit101

sqlite3VdbeSerialTypeLen.exit101:                 ; preds = %bb.ar, %bb.as
  %.0.i100 = phi i32 [ %i.jx, %bb.ar ], [ %i.kb, %bb.as ]
  %.not72 = icmp eq i32 %.0.i100, 0
  br i1 %.not72, label %bb.at, label %.thread119

bb.at:                                            ; preds = %sqlite3VdbeSerialTypeLen.exit101, %sqlite3GetVarint32.exit99
  %i.kc = zext i32 %.054141 to i64
  %i.kd = getelementptr inbounds nuw i8, ptr %2, i64 %i.kc
  %i.ke = call fastcc i32 @sqlite3VdbeSerialGet(ptr noundef nonnull %i.kd, i32 noundef %.0110, ptr noundef nonnull %5)
  %i.kf = add i32 %i.ke, %.054141                 ; 2 uses
  %i.kg = zext i32 %.055140 to i64
  %i.kh = getelementptr inbounds nuw i8, ptr %4, i64 %i.kg
  %i.ki = call fastcc i32 @sqlite3VdbeSerialGet(ptr noundef nonnull %i.kh, i32 noundef %.0109, ptr noundef nonnull %6)
  %i.kj = add i32 %i.ki, %.055140                 ; 2 uses
  %i.kk = icmp slt i64 %indvars.iv, %i.el
  br i1 %i.kk, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !194
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.kn = phi ptr [ %i.km, %bb.au ], [ null, %bb.at ]
  %i.ko = call fastcc i32 @sqlite3MemCompare(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %i.kn) ; 5 uses
  %i.kp = load i16, ptr %i.f, align 4, !tbaa !124
  %i.kq = and i16 %i.kp, 64
  %.not73 = icmp eq i16 %i.kq, 0
  br i1 %.not73, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call fastcc void @sqlite3VdbeMemRelease(ptr noundef nonnull %5)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.kr = load i16, ptr %i.i, align 4, !tbaa !124
  %i.ks = and i16 %i.kr, 64
  %.not74 = icmp eq i16 %i.ks, 0
  br i1 %.not74, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call fastcc void @sqlite3VdbeMemRelease(ptr noundef nonnull %6)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.not75 = icmp eq i32 %i.ko, 0
  br i1 %.not75, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.az
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.kt = icmp ult i32 %i.gz, %.0112
  %i.ku = icmp ult i32 %i.ju, %.0111
  %i.kv = select i1 %i.kt, i1 %i.ku, i1 false
  br i1 %i.kv, label %bb.t, label %.thread119

.thread119:                                       ; preds = %bb.ba, %sqlite3VdbeSerialTypeLen.exit101, %sqlite3VdbeSerialTypeLen.exit, %sqlite3GetVarint32.exit86
  %.055.lcssa = phi i32 [ %.0111, %sqlite3GetVarint32.exit86 ], [ %.055140, %sqlite3VdbeSerialTypeLen.exit ], [ %.055140, %sqlite3VdbeSerialTypeLen.exit101 ], [ %i.kj, %bb.ba ]
  %.054.lcssa = phi i32 [ %.0112, %sqlite3GetVarint32.exit86 ], [ %.054141, %sqlite3VdbeSerialTypeLen.exit ], [ %.054141, %sqlite3VdbeSerialTypeLen.exit101 ], [ %i.kf, %bb.ba ]
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !1036
  %.not78 = icmp eq i8 %i.kx, 0
  br i1 %.not78, label %bb.bb, label %bb.bh

bb.bb:                                            ; preds = %.thread119
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.kz = load i8, ptr %i.ky, align 2, !tbaa !974
  %.not79 = icmp eq i8 %i.kz, 0
  br i1 %.not79, label %bb.bc, label %bb.bh

bb.bc:                                            ; preds = %bb.bb
  %i.la = icmp ult i32 %.054.lcssa, %1
  br i1 %i.la, label %bb.bh, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.lb = icmp ult i32 %.055.lcssa, %3
  %spec.select = sext i1 %i.lb to i32
  br label %bb.bh

bb.be:                                            ; preds = %bb.az
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !197 ; 2 uses
  %.not76 = icmp eq ptr %i.ld, null
  br i1 %.not76, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.le = trunc nuw nsw i64 %indvars.iv to i32
  %i.lf = load i32, ptr %i.ef, align 4, !tbaa !192
  %i.lg = icmp sgt i32 %i.lf, %i.le
  br i1 %i.lg, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 %indvars.iv
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !37
  %.not77 = icmp eq i8 %i.li, 0
  %i.lj = sub nsw i32 0, %i.ko
  %spec.select80 = select i1 %.not77, i32 %i.ko, i32 %i.lj
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bd, %bb.bc, %.thread119, %bb.be, %bb.bf, %bb.bb
  %.3 = phi i32 [ %i.ko, %bb.be ], [ 0, %bb.bb ], [ -1, %.thread119 ], [ 1, %bb.bc ], [ %i.ko, %bb.bf ], [ %spec.select, %bb.bd ], [ %spec.select80, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 256) i32 @sqlite3BtreeFlags(ptr noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 105 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !315
  switch i8 %i.b, label %bb.b [
    i8 3, label %sqlite3BtreeRestoreOrClearCursorPosition.exit
    i8 1, label %sqlite3BtreeRestoreOrClearCursorPosition.exit
    i8 0, label %sqlite3BtreeRestoreOrClearCursorPosition.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.d = load i8, ptr %i.c, align 4, !tbaa !295
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %bb.c, label %sqlite3BtreeRestoreOrClearCursorPosition.exit

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.a, align 1, !tbaa !315
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !316
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load i64, ptr %i.g, align 8, !tbaa !317
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.j = tail call fastcc i32 @sqlite3BtreeMoveto(ptr noundef nonnull %0, ptr noundef %i.f, i64 noundef %i.h, i32 noundef 0, ptr noundef nonnull %i.i), !inline_history !318
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %sqlite3BtreeRestoreOrClearCursorPosition.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !316  ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %sqlite3_free.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !28
  %sext.i.i = shl i64 %i.o, 32
  %i.p = ashr exact i64 %sext.i.i, 32
  %i.q = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.r = sub nsw i64 %i.q, %i.p
  store i64 %i.r, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.n) #43, !inline_history !318
  br label %sqlite3_free.exit.i

sqlite3_free.exit.i:                              ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.e, align 8, !tbaa !316
  br label %sqlite3BtreeRestoreOrClearCursorPosition.exit

sqlite3BtreeRestoreOrClearCursorPosition.exit:    ; preds = %bb.a, %bb.a, %bb.a, %sqlite3_free.exit.i, %bb.c, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !328  ; 3 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %sqlite3BtreeRestoreOrClearCursorPosition.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !802
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load i8, ptr %i.w, align 8, !tbaa !804
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !37
  %i.ab = zext i8 %i.aa to i32
  br label %bb.g

bb.g:                                             ; preds = %sqlite3BtreeRestoreOrClearCursorPosition.exit, %bb.f
  %i.ac = phi i32 [ %i.ab, %bb.f ], [ 0, %sqlite3BtreeRestoreOrClearCursorPosition.exit ]
  ret i32 %i.ac
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3BtreeFactory(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2, i32 noundef range(i32 500, 2001) %3, i32 noundef range(i32 256, 0) %4, ptr nofree noundef writeonly captures(none) %5) unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca [100 x i8], align 16              ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !327
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.g = load i8, ptr %i.f, align 1, !tbaa !1037
  %i.h = icmp eq i8 %i.g, 2
  %spec.select24 = select i1 %i.h, ptr @.str.207, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ %spec.select24, %bb.b ] ; 11 uses
  %i.i = and i32 %4, 256
  %.not23 = icmp eq i32 %i.i, 0
  br i1 %.not23, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq ptr %.0, null
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i8, ptr %.0, align 1, !tbaa !37
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = and i32 %4, -769
  %i.n = or disjoint i32 %i.m, 512
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.019 = phi i32 [ %i.n, %bb.f ], [ %4, %bb.c ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  %.01928 = phi i32 [ %4, %.thread ], [ %.019, %bb.g ]
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0, ptr noundef nonnull dereferenceable(9) @.str.207) #42
  %.not.i = icmp eq i32 %i.o, 0
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.p = phi i1 [ false, %bb.g ], [ true, %bb.h ]
  %.01927 = phi i32 [ %.019, %bb.g ], [ %.01928, %bb.h ]
  %i.q = phi i1 [ false, %bb.g ], [ %.not.i, %bb.h ] ; 2 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !183    ; 15 uses
  %i.s = tail call ptr @sqlite3_malloc(i32 noundef 40) ; 16 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %sqlite3BtreeOpen.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr i8, ptr %i.s, i64 8        ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.t, i8 0, i64 32, i1 false)
  store ptr %0, ptr %i.s, align 8, !tbaa !323
  br i1 %i.q, label %.thread189.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = load i32, ptr %i.c, align 8, !tbaa !327
  %i.v = and i32 %i.u, 1048576
  %i.w = icmp eq i32 %i.v, 0
  %or.cond3.i = and i1 %i.p, %i.w
  br i1 %or.cond3.i, label %bb.l, label %.thread189.i

bb.l:                                             ; preds = %bb.k
  %i.x = load i8, ptr %.0, align 1, !tbaa !37
  %i.y = icmp ne i8 %i.x, 0
  %i.z = load i32, ptr @sqlite3SharedCacheEnabled, align 4
  %i.aa = icmp ne i32 %i.z, 0
  %or.cond7.i = select i1 %i.y, i1 %i.aa, i1 false
  br i1 %or.cond7.i, label %bb.m, label %.thread189.i

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !706
  %i.ad = add nsw i32 %i.ac, 1                    ; 2 uses
  %i.ae = tail call ptr @sqlite3_malloc(i32 noundef %i.ad) ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 17 ; 2 uses
  store i8 1, ptr %i.af, align 1, !tbaa !456
  %i.ag = load i32, ptr %i.c, align 8, !tbaa !327
  %i.ah = or i32 %i.ag, 524288
  store i32 %i.ah, ptr %i.c, align 8, !tbaa !327
  %.not157.not.i = icmp eq ptr %i.ae, null
  br i1 %.not157.not.i, label %.thread.i, label %bb.n

.thread.i:                                        ; preds = %bb.m
  %i.ai = getelementptr inbounds i8, ptr %i.s, i64 -8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !28
  %sext.i.i = shl i64 %i.aj, 32
  %i.ak = ashr exact i64 %sext.i.i, 32
  %i.al = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.am = sub nsw i64 %i.al, %i.ak
  store i64 %i.am, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.ai) #43
  br label %sqlite3BtreeOpen.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1038
  %i.ap = tail call i32 %i.ao(ptr noundef nonnull %i.r, ptr noundef nonnull %.0, i32 noundef range(i32 -2147483647, -2147483648) %i.ad, ptr noundef nonnull %i.ae) #43, !inline_history !1039 ; 0 uses
  %.0136244.i = load ptr, ptr @sqlite3SharedCacheList, align 8, !tbaa !458 ; 2 uses
  %.not158245.i = icmp eq ptr %.0136244.i, null
  br i1 %.not158245.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %bb.p
  %.0136246.i = phi ptr [ %.0136.i, %bb.p ], [ %.0136244.i, %bb.n ] ; 4 uses
  %i.aq = load ptr, ptr %.0136246.i, align 8, !tbaa !461 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 104
  %.val.i = load ptr, ptr %i.ar, align 8, !tbaa !757
  %i.as = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ae, ptr noundef nonnull dereferenceable(1) %.val.i) #42
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i
  %.val174.i = load ptr, ptr %i.aq, align 8, !tbaa !693
  %i.au = icmp eq ptr %.val174.i, %i.r
  br i1 %i.au, label %.critedge.i, label %bb.p

.critedge.i:                                      ; preds = %bb.o
  store ptr %.0136246.i, ptr %i.t, align 8, !tbaa !325
  %i.av = getelementptr inbounds nuw i8, ptr %.0136246.i, i64 120 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !457
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.av, align 8, !tbaa !457
  %i.ay = getelementptr inbounds i8, ptr %i.ae, i64 -8 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !28
  %sext.i176.c.i = shl i64 %i.az, 32
  %i.ba = ashr exact i64 %sext.i176.c.i, 32
  %i.bb = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.bc = sub nsw i64 %i.bb, %i.ba
  store i64 %i.bc, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.ay) #43
  %.pre.i = load i8, ptr %i.af, align 1, !tbaa !456
  %i.bd = icmp eq i8 %.pre.i, 0
  br i1 %i.bd, label %.loopexit, label %.preheader233.i

bb.p:                                             ; preds = %bb.o, %.lr.ph.i
  %i.be = getelementptr inbounds nuw i8, ptr %.0136246.i, i64 128
  %.0136.i = load ptr, ptr %i.be, align 8, !tbaa !458 ; 2 uses
  %.not158.i = icmp eq ptr %.0136.i, null
  br i1 %.not158.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !1040

.loopexit.i:                                      ; preds = %bb.p, %bb.n
  %i.bf = getelementptr inbounds i8, ptr %i.ae, i64 -8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !28
  %sext.i176.i = shl i64 %i.bg, 32
  %i.bh = ashr exact i64 %sext.i176.i, 32
  %i.bi = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.bj = sub nsw i64 %i.bi, %i.bh
  store i64 %i.bj, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.bf) #43
  br label %.thread189.i

.thread189.i:                                     ; preds = %.loopexit.i, %bb.l, %bb.k, %bb.j
  %i.bk = tail call ptr @sqlite3_malloc(i32 noundef 152) ; 28 uses
  %.not.i178.i = icmp eq ptr %i.bk, null
  br i1 %.not.i178.i, label %.thread189.sqlite3_free.exit187_crit_edge.i, label %bb.q

.thread189.sqlite3_free.exit187_crit_edge.i:      ; preds = %.thread189.i
  %.pre262.i = load i64, ptr @mem.5, align 8, !tbaa !22
  br label %sqlite3_free.exit187.i

bb.q:                                             ; preds = %.thread189.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(152) %i.bk, i8 0, i64 152, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 96 ; 2 uses
  store ptr @sqlite3BtreeInvokeBusyHandler, ptr %i.bl, align 8, !tbaa !1041
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 104
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !1042
  %i.bn = trunc nuw i32 %2 to i1
  %i.bo = and i32 %i.d, 4096
  %i.bp = icmp ne i32 %i.bo, 0
  %i.bq = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 3 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !714 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !706
  %i.bu = add nsw i32 %i.bt, 1                    ; 3 uses
  %i.bv = shl nsw i32 %i.bu, 1
  %i.bw = tail call ptr @sqlite3_malloc(i32 noundef %i.bv) ; 11 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %.thread208.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not.i180.i = icmp eq ptr %.0, null            ; 3 uses
  br i1 %.not.i180.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = load i8, ptr %.0, align 1, !tbaa !37
  %.not166.i.i = icmp eq i8 %i.by, 0
  br i1 %.not166.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bz = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0, ptr noundef nonnull dereferenceable(9) @.str.207) #42
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %.thread.i.i, label %bb.u
end_hunk_2
begin_hunk_3_@sqlite3BtreeFactory:bb.a
  %.0158206.i.i = phi i32 [ %i.fl, %bb.af ], [ %.0158207.i.i, %.thread201.i.i ], [ 0, %bb.aa ] ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.dm, i64 296
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !705
  %.not176.i.i = icmp eq ptr %i.gb, null
  br i1 %.not176.i.i, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %.thread214.i.i
  %i.gc = load ptr, ptr %i.dv, align 8, !tbaa !524 ; 3 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !531 ; 2 uses
  %.not.i191.i.i = icmp eq ptr %i.gd, null
  br i1 %.not.i191.i.i, label %sqlite3_free.exit193.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !672
  %i.gg = call i32 %i.gf(ptr noundef nonnull %i.gc) #43, !inline_history !1049 ; 0 uses
  store ptr null, ptr %i.gc, align 8, !tbaa !531
  br label %sqlite3_free.exit193.i.i

sqlite3_free.exit193.i.i:                         ; preds = %bb.ah, %bb.ag
  %i.gh = getelementptr inbounds i8, ptr %i.dm, i64 -8 ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !28
  %sext.i192.i.i = shl i64 %i.gi, 32
  %i.gj = ashr exact i64 %sext.i192.i.i, 32
  %i.gk = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.gl = sub nsw i64 %i.gk, %i.gj
  store i64 %i.gl, ptr @mem.5, align 8, !tbaa !22
  call void @free(ptr noundef nonnull %i.gh) #43
  br label %.thread208.i

bb.ai:                                            ; preds = %.thread214.i.i
  %i.gm = load ptr, ptr %i.ej, align 8, !tbaa !1046
  %i.gn = load ptr, ptr %i.eh, align 8, !tbaa !757
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gm, ptr align 1 %i.gn, i64 %i.cp, i1 false)
  %i.go = load ptr, ptr %i.ej, align 8, !tbaa !1046 ; 2 uses
  %i.gp = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.go) #42
  %i.gq = trunc i64 %i.gp to i32                  ; 2 uses
  %i.gr = icmp sgt i32 %i.gq, 0
  br i1 %i.gr, label %.lr.ph.i.i, label %.critedge183.i.i

bb.aj:                                            ; preds = %.lr.ph.i.i
  %i.gs = add nsw i32 %.0153224.i.i, -1
  %i.gt = icmp sgt i32 %.0153224.i.i, 1
  br i1 %i.gt, label %.lr.ph.i.i, label %.critedge183.i.i, !llvm.loop !1050

.lr.ph.i.i:                                       ; preds = %bb.ai, %bb.aj
  %.0153224.i.i = phi i32 [ %i.gs, %bb.aj ], [ %i.gq, %bb.ai ] ; 3 uses
  %i.gu = zext nneg i32 %.0153224.i.i to i64
  %i.gv = getelementptr i8, ptr %i.go, i64 %i.gu  ; 2 uses
  %i.gw = getelementptr i8, ptr %i.gv, i64 -1
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !37
  %.not177.i.i = icmp eq i8 %i.gx, 47
  br i1 %.not177.i.i, label %.critedge.i.i, label %bb.aj

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.gy = getelementptr i8, ptr %i.gv, i64 -1
  store i8 0, ptr %i.gy, align 1, !tbaa !37
  br label %.critedge183.i.i

.critedge183.i.i:                                 ; preds = %bb.aj, %.critedge.i.i, %bb.ai
  %i.gz = load ptr, ptr %i.el, align 8, !tbaa !694
  %i.ha = load ptr, ptr %i.eh, align 8, !tbaa !757
  %i.hb = ashr exact i64 %i.co, 32                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gz, ptr align 1 %i.ha, i64 %i.hb, i1 false)
  %i.hc = load ptr, ptr %i.el, align 8, !tbaa !694
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 %i.hb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.hd, ptr noundef nonnull align 1 dereferenceable(9) @.str.208, i64 9, i1 false)
  %not..i.i = xor i1 %i.bn, true
  %narrow.i.i = and i1 %.not175198.i.i, %not..i.i
  %spec.select.i.i = zext i1 %narrow.i.i to i8
  %i.he = getelementptr inbounds nuw i8, ptr %i.dm, i64 10
  store i8 %spec.select.i.i, ptr %i.he, align 2, !tbaa !858
  %i.hf = icmp ne i32 %.0158206.i.i, 0
  %i.hg = select i1 %i.bp, i1 %i.hf, i1 false
  %i.hh = zext i1 %i.hg to i8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.dm, i64 11
  store i8 %i.hh, ptr %i.hi, align 1, !tbaa !849
  %i.hj = add nsw i32 %.0157199.i.i, -1
  %i.hk = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  store i32 %i.hj, ptr %i.hk, align 8, !tbaa !664
  %i.hl = getelementptr inbounds nuw i8, ptr %i.dm, i64 68
  store i32 %.2211.i.i, ptr %i.hl, align 4, !tbaa !647
  %i.hm = getelementptr inbounds nuw i8, ptr %i.dm, i64 80
  store i32 100, ptr %i.hm, align 8, !tbaa !868
  %i.hn = getelementptr inbounds nuw i8, ptr %i.dm, i64 84
  store i32 1073741823, ptr %i.hn, align 4, !tbaa !877
  %i.ho = getelementptr inbounds nuw i8, ptr %i.dm, i64 19
  store i8 %.0156208.i.i, ptr %i.ho, align 1, !tbaa !724
  %i.hp = getelementptr inbounds nuw i8, ptr %i.dm, i64 27
  store i8 %.0156208.i.i, ptr %i.hp, align 1, !tbaa !648
  %i.hq = trunc nuw nsw i32 %.0157199.i.i to i8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store i8 %i.hq, ptr %i.hr, align 8, !tbaa !652
  %i.hs = trunc nuw nsw i32 %.0158206.i.i to i8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.dm, i64 20
  store i8 %i.hs, ptr %i.ht, align 4, !tbaa !882
  %.not180.i.i = icmp eq i8 %.0156208.i.i, 0
  %i.hu = trunc nuw nsw i32 %2 to i8
  %i.hv = select i1 %.not180.i.i, i8 %i.hu, i8 1  ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.dm, i64 15
  store i8 %i.hv, ptr %i.hw, align 1, !tbaa !765
  %i.hx = xor i8 %i.hv, 1
  %i.hy = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i8 %i.hx, ptr %i.hy, align 8, !tbaa !872
  %i.hz = getelementptr inbounds nuw i8, ptr %i.dm, i64 17
  store i8 2, ptr %i.hz, align 1, !tbaa !897
  %i.ia = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  store i32 144, ptr %i.ia, align 8, !tbaa !655
  br i1 %.not175198.i.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.critedge183.i.i
  call fastcc void @setSectorSize(ptr noundef nonnull %i.dm)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.critedge183.i.i
  store ptr %i.dm, ptr %i.bk, align 8, !tbaa !1051
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(100) %i.b, i8 0, i64 100, i1 false)
  %i.ib = load ptr, ptr %i.dv, align 8, !tbaa !524 ; 2 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !531 ; 2 uses
  %.not.i182.i = icmp eq ptr %i.ic, null
  br i1 %.not.i182.i, label %sqlite3PagerReadFileheader.exit.thread.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !718
  %i.if = call i32 %i.ie(ptr noundef nonnull %i.ib, ptr noundef nonnull %i.b, i32 noundef 100, i64 noundef 0) #43, !inline_history !1052 ; 2 uses
  switch i32 %i.if, label %.thread208.i [
    i32 522, label %sqlite3PagerReadFileheader.exit.thread.i
    i32 0, label %sqlite3PagerReadFileheader.exit.thread.i
  ]

sqlite3PagerReadFileheader.exit.thread.i:         ; preds = %bb.am, %bb.am, %bb.al
  %i.ig = load ptr, ptr %i.bk, align 8, !tbaa !461 ; 5 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 160
  store ptr %i.bl, ptr %i.ih, align 8, !tbaa !850
  store ptr %i.bk, ptr %i.t, align 8, !tbaa !325
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 264
  store ptr @pageDestructor, ptr %i.ii, align 8, !tbaa !646
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 272
  store ptr @pageReinit, ptr %i.ij, align 8, !tbaa !661
  %i.ik = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.il = getelementptr i8, ptr %i.ig, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ik, i8 0, i64 16, i1 false)
  %.val175.i = load i8, ptr %i.il, align 4, !tbaa !882
  %i.im = getelementptr inbounds nuw i8, ptr %i.bk, i64 33
  store i8 %.val175.i, ptr %i.im, align 1, !tbaa !778
  %i.in = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.io = load i8, ptr %i.in, align 16, !tbaa !37 ; 2 uses
  %i.ip = zext i8 %i.io to i16
  %i.iq = shl nuw i16 %i.ip, 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !37
  %i.it = zext i8 %i.is to i16
  %i.iu = or disjoint i16 %i.iq, %i.it            ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.bk, i64 44 ; 5 uses
  store i16 %i.iu, ptr %i.iv, align 4, !tbaa !833
  %i.iw = icmp ugt i8 %i.io, 1
  %i.ix = icmp ult i16 %i.iu, -32767
  %or.cond.not231.i = select i1 %i.iw, i1 %i.ix, i1 false
  %i.iy = call range(i16 1, 17) i16 @llvm.ctpop.i16(i16 %i.iu)
  %.not160.i = icmp samesign ult i16 %i.iy, 2
  %or.cond173.i = select i1 %or.cond.not231.i, i1 %.not160.i, i1 false
  br i1 %or.cond173.i, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %sqlite3PagerReadFileheader.exit.thread.i
  store i16 0, ptr %i.iv, align 4, !tbaa !833
  %i.iz = call fastcc i32 @sqlite3PagerSetPagesize(ptr noundef nonnull %i.ig, ptr noundef nonnull %i.iv) ; 0 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.bk, i64 34
  store i8 64, ptr %i.ja, align 2, !tbaa !1020
  %i.jb = getelementptr inbounds nuw i8, ptr %i.bk, i64 35
  store i8 32, ptr %i.jb, align 1, !tbaa !1021
  %i.jc = getelementptr inbounds nuw i8, ptr %i.bk, i64 36
  store i8 32, ptr %i.jc, align 4, !tbaa !1022
  %or.cond5.i = select i1 %.not.i180.i, i1 true, i1 %i.q
  br i1 %or.cond5.i, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.jd = getelementptr inbounds nuw i8, ptr %i.bk, i64 38
  store i8 0, ptr %i.jd, align 2, !tbaa !847
  br label %.sink.split.i

bb.ap:                                            ; preds = %sqlite3PagerReadFileheader.exit.thread.i
  %i.je = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.jf = load i8, ptr %i.je, align 4, !tbaa !37
  %i.jg = zext i8 %i.jf to i16
  %i.jh = getelementptr inbounds nuw i8, ptr %i.b, i64 21
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !37
  %i.jj = getelementptr inbounds nuw i8, ptr %i.bk, i64 34
  store i8 %i.ji, ptr %i.jj, align 2, !tbaa !1020
  %i.jk = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  %i.jl = load i8, ptr %i.jk, align 2, !tbaa !37
  %i.jm = getelementptr inbounds nuw i8, ptr %i.bk, i64 35
  store i8 %i.jl, ptr %i.jm, align 1, !tbaa !1021
  %i.jn = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !37
  %i.jp = getelementptr inbounds nuw i8, ptr %i.bk, i64 36
  store i8 %i.jo, ptr %i.jp, align 4, !tbaa !1022
  %i.jq = getelementptr inbounds nuw i8, ptr %i.bk, i64 37
  store i8 1, ptr %i.jq, align 1, !tbaa !1027
  %i.jr = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %6 = load i32, ptr %i.jr, align 4, !tbaa !37
  %i.js = icmp ne i32 %6, 0
  %i.jt = zext i1 %i.js to i8
  %i.ju = getelementptr inbounds nuw i8, ptr %i.bk, i64 38
  store i8 %i.jt, ptr %i.ju, align 2, !tbaa !847
  %i.jv = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %7 = load i32, ptr %i.jv, align 16, !tbaa !37
  %i.jw = icmp ne i32 %7, 0
  %i.jx = zext i1 %i.jw to i8
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ap, %bb.ao
  %.sink.i = phi i8 [ 0, %bb.ao ], [ %i.jx, %bb.ap ]
  %.0141.ph.i = phi i16 [ 0, %bb.ao ], [ %i.jg, %bb.ap ]
  %i.jy = getelementptr inbounds nuw i8, ptr %i.bk, i64 39
  store i8 %.sink.i, ptr %i.jy, align 1, !tbaa !909
  br label %bb.aq

bb.aq:                                            ; preds = %.sink.split.i, %bb.an
  %.0141.i = phi i16 [ 0, %bb.an ], [ %.0141.ph.i, %.sink.split.i ]
  %i.jz = load i16, ptr %i.iv, align 4, !tbaa !833
  %i.ka = sub i16 %i.jz, %.0141.i
  %i.kb = getelementptr inbounds nuw i8, ptr %i.bk, i64 46
  store i16 %i.ka, ptr %i.kb, align 2, !tbaa !832
  %i.kc = load ptr, ptr %i.bk, align 8, !tbaa !461
  %i.kd = call fastcc i32 @sqlite3PagerSetPagesize(ptr noundef %i.kc, ptr noundef nonnull %i.iv) ; 0 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.s, i64 17
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !456
  %.not163.i = icmp eq i8 %i.kf, 0
  br i1 %.not163.i, label %.loopexit, label %.thread284.i

.thread284.i:                                     ; preds = %bb.aq
  %i.kg = getelementptr inbounds nuw i8, ptr %i.bk, i64 120
  store i32 1, ptr %i.kg, align 8, !tbaa !457
  %i.kh = load ptr, ptr @sqlite3SharedCacheList, align 8, !tbaa !458
  %i.ki = getelementptr inbounds nuw i8, ptr %i.bk, i64 128
  store ptr %i.kh, ptr %i.ki, align 8, !tbaa !459
  store ptr %i.bk, ptr @sqlite3SharedCacheList, align 8, !tbaa !458
  br label %.preheader233.i

.preheader233.i:                                  ; preds = %.thread284.i, %.critedge.i
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kk = load i32, ptr %i.kj, align 8, !tbaa !278 ; 2 uses
  %i.kl = icmp sgt i32 %i.kk, 0
  br i1 %i.kl, label %.lr.ph249.i, label %.loopexit

.lr.ph249.i:                                      ; preds = %.preheader233.i
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !235
  %wide.trip.count.i = zext nneg i32 %i.kk to i64
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ax, %.lr.ph249.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph249.i ], [ %indvars.iv.next.i, %bb.ax ] ; 2 uses
  %i.ko = getelementptr inbounds nuw [48 x i8], ptr %i.kn, i64 %indvars.iv.i
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !427 ; 3 uses
  %.not165.i = icmp eq ptr %i.kq, null
  br i1 %.not165.i, label %bb.ax, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 17
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !456
  %.not166.i = icmp eq i8 %i.ks, 0
  br i1 %.not166.i, label %bb.ax, label %.preheader232.i

.preheader232.i:                                  ; preds = %bb.as, %.preheader232.i
  %.0.i = phi ptr [ %i.ku, %.preheader232.i ], [ %i.kq, %bb.as ] ; 5 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !464 ; 2 uses
  %.not167.i = icmp eq ptr %i.ku, null
  br i1 %.not167.i, label %bb.at, label %.preheader232.i, !llvm.loop !1053

bb.at:                                            ; preds = %.preheader232.i
  %i.kv = load ptr, ptr %i.t, align 8, !tbaa !325 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !325
  %i.ky = icmp ult ptr %i.kv, %i.kx
  br i1 %i.ky, label %bb.au, label %.preheader.i

bb.au:                                            ; preds = %bb.at
  %i.kz = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.la = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %.0.i, ptr %i.la, align 8, !tbaa !465
  %i.lb = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr null, ptr %i.lb, align 8, !tbaa !464
  store ptr %i.s, ptr %i.kz, align 8, !tbaa !464
  br label %.loopexit

.preheader.i:                                     ; preds = %bb.at, %bb.av
  %.1.i = phi ptr [ %i.ld, %bb.av ], [ %.0.i, %bb.at ] ; 4 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.1.i, i64 24
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !465 ; 5 uses
  %.not168.i = icmp eq ptr %i.ld, null
  br i1 %.not168.i, label %.critedge.thread.i, label %bb.av

bb.av:                                            ; preds = %.preheader.i
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !325
  %i.lg = icmp ult ptr %i.lf, %i.kv
  br i1 %i.lg, label %.preheader.i, label %bb.aw, !llvm.loop !1054

bb.aw:                                            ; preds = %bb.av
  %i.lh = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.ld, ptr %i.lh, align 8, !tbaa !465
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.preheader.i, %bb.aw
  %.sink304.i = phi i64 [ 32, %bb.aw ], [ 24, %.preheader.i ]
  %.sink302.i = phi ptr [ %.1.i, %bb.aw ], [ null, %.preheader.i ]
  %.sink301.i = phi ptr [ %i.ld, %bb.aw ], [ %i.s, %.preheader.i ]
  %.1.lcssa298.sink.i = phi ptr [ %i.s, %bb.aw ], [ %.1.i, %.preheader.i ]
  %i.li = getelementptr inbounds nuw i8, ptr %.1.i, i64 24
  %i.lj = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sink304.i
  store ptr %.sink302.i, ptr %i.lj, align 8, !tbaa !446
  %i.lk = getelementptr inbounds nuw i8, ptr %.sink301.i, i64 32
  store ptr %.1.lcssa298.sink.i, ptr %i.lk, align 8, !tbaa !464
  store ptr %i.s, ptr %i.li, align 8, !tbaa !465
  br label %.loopexit

bb.ax:                                            ; preds = %bb.as, %bb.ar
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.ar, !llvm.loop !1055

.thread208.i:                                     ; preds = %bb.am, %sqlite3_free.exit193.i.i, %sqlite3_free.exit187.i.i, %sqlite3_free.exit185.i.i, %sqlite3_free.exit.i.i, %bb.q
  %.2140202214.i = phi i32 [ 7, %sqlite3_free.exit187.i.i ], [ 7, %bb.q ], [ %i.fz, %sqlite3_free.exit193.i.i ], [ %i.cv, %sqlite3_free.exit185.i.i ], [ %.0152.i.i, %sqlite3_free.exit.i.i ], [ %i.if, %bb.am ]
  %i.ll = load ptr, ptr %i.bk, align 8, !tbaa !461 ; 2 uses
  %.not172.i = icmp eq ptr %i.ll, null
  br i1 %.not172.i, label %bb.ay, label %.split.i

.split.i:                                         ; preds = %.thread208.i
  call fastcc void @sqlite3PagerClose(ptr noundef nonnull %i.ll)
  br label %bb.ay

bb.ay:                                            ; preds = %.split.i, %.thread208.i
  %i.lm = getelementptr inbounds i8, ptr %i.bk, i64 -8 ; 2 uses
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !28
  %sext.i184.i = shl i64 %i.ln, 32
  %i.lo = ashr exact i64 %sext.i184.i, 32
  %i.lp = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.lq = sub nsw i64 %i.lp, %i.lo
  call void @free(ptr noundef nonnull %i.lm) #43
  br label %sqlite3_free.exit187.i

sqlite3_free.exit187.i:                           ; preds = %bb.ay, %.thread189.sqlite3_free.exit187_crit_edge.i
  %i.lr = phi i64 [ %.pre262.i, %.thread189.sqlite3_free.exit187_crit_edge.i ], [ %i.lq, %bb.ay ]
  %.2140202215226.i = phi i32 [ 7, %.thread189.sqlite3_free.exit187_crit_edge.i ], [ %.2140202214.i, %bb.ay ]
  %i.ls = getelementptr inbounds i8, ptr %i.s, i64 -8 ; 2 uses
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !28
  %sext.i186.i = shl i64 %i.lt, 32
  %i.lu = ashr exact i64 %sext.i186.i, 32
  %i.lv = sub nsw i64 %i.lr, %i.lu
  store i64 %i.lv, ptr @mem.5, align 8, !tbaa !22
  call void @free(ptr noundef nonnull %i.ls) #43
  store ptr null, ptr %5, align 8, !tbaa !446
  br label %sqlite3BtreeOpen.exit.thread

sqlite3BtreeOpen.exit.thread:                     ; preds = %.thread.i, %sqlite3_free.exit187.i, %bb.i
  %.1135.i.ph = phi i32 [ 7, %bb.i ], [ %.2140202215226.i, %sqlite3_free.exit187.i ], [ 7, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  br label %bb.az

.loopexit:                                        ; preds = %bb.ax, %.critedge.thread.i, %bb.au, %.preheader233.i, %bb.aq, %.critedge.i
  store ptr %i.s, ptr %5, align 8, !tbaa !446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  %.val = load ptr, ptr %i.t, align 8, !tbaa !325
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !461
  %i.lw = getelementptr inbounds nuw i8, ptr %.val.val, i64 80
  store i32 %3, ptr %i.lw, align 8, !tbaa !868
  br label %bb.az

bb.az:                                            ; preds = %sqlite3BtreeOpen.exit.thread, %.loopexit
  %.1135.i30 = phi i32 [ %.1135.i.ph, %sqlite3BtreeOpen.exit.thread ], [ 0, %.loopexit ]
  ret i32 %.1135.i30
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3BtreeCreateTable(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, i32 noundef range(i32 2, 6) %2) unnamed_addr #5 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #43
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.m = load i8, ptr %i.l, align 8, !tbaa !631
  %.not.i = icmp eq i8 %i.m, 2
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 33
  %i.o = load i8, ptr %i.n, align 1, !tbaa !778
  %.not74.i = icmp eq i8 %i.o, 0
  %i.p = select i1 %.not74.i, i32 1, i32 8
  br label %btreeCreateTable.exit

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 38
end_hunk_3
