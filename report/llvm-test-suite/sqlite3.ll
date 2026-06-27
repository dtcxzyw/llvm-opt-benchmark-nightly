inline.NumInlined: 3254
inline.NumDeleted: 427
begin_hunk_0_@sqlite3_realloc:bb.a
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @sqlite3_malloc(i32 noundef %1)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %1, 1
  %i.d = getelementptr inbounds i8, ptr %0, i64 -8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !28   ; 3 uses
  br i1 %i.c, label %sqlite3_free.exit, label %bb.d

sqlite3_free.exit:                                ; preds = %bb.c
  %sext.i = shl i64 %i.e, 32
  %i.f = ashr exact i64 %sext.i, 32
  %i.g = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.h = sub nsw i64 %i.g, %i.f
  store i64 %i.h, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.d) #43
  br label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.i = trunc i64 %i.e to i32                    ; 2 uses
  %i.j = load i64, ptr @mem.5, align 8, !tbaa !22 ; 2 uses
  %i.k = zext nneg i32 %1 to i64                  ; 2 uses
  %i.l = add nsw i64 %i.j, %i.k
  %sext = shl i64 %i.e, 32
  %i.m = ashr exact i64 %sext, 32
  %i.n = sub i64 %i.l, %i.m
  %i.o = load i64, ptr @mem.0, align 8, !tbaa !26
  %.not = icmp slt i64 %i.n, %i.o
  br i1 %.not, label %sqlite3MemsysAlarm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr @mem.1, align 8, !tbaa !24 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  %.b.i = load i1, ptr @mem.3, align 8
  %or.cond.i = select i1 %i.q, i1 true, i1 %.b.i
  br i1 %or.cond.i, label %sqlite3MemsysAlarm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = sub nsw i32 %1, %i.i
  store i1 true, ptr @mem.3, align 8
  %i.s = load ptr, ptr @mem.2, align 8, !tbaa !25
  tail call void %i.p(ptr noundef %i.s, i64 noundef %i.j, i32 noundef range(i32 -2147483646, -2147483648) %i.r) #43, !inline_history !27
  store i1 false, ptr @mem.3, align 8
  br label %sqlite3MemsysAlarm.exit

sqlite3MemsysAlarm.exit:                          ; preds = %bb.f, %bb.e, %bb.d
  %i.t = add nuw nsw i32 %1, 8
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = tail call ptr @realloc(ptr noundef nonnull %i.d, i64 noundef %i.u) #45 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.g, label %.thread

bb.g:                                             ; preds = %sqlite3MemsysAlarm.exit
  %i.x = load ptr, ptr @mem.1, align 8, !tbaa !24 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  %.b.i32 = load i1, ptr @mem.3, align 8
  %or.cond.i33 = select i1 %i.y, i1 true, i1 %.b.i32
  br i1 %or.cond.i33, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i1 true, ptr @mem.3, align 8
  %i.z = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.aa = load ptr, ptr @mem.2, align 8, !tbaa !25
  tail call void %i.x(ptr noundef %i.aa, i64 noundef %i.z, i32 noundef range(i32 -2147483646, -2147483648) %1) #43, !inline_history !27
  store i1 false, ptr @mem.3, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = tail call ptr @realloc(ptr noundef nonnull %i.d, i64 noundef %i.u) #45 ; 2 uses
  %.not31 = icmp eq ptr %i.ab, null
  br i1 %.not31, label %bb.k, label %.thread

.thread:                                          ; preds = %sqlite3MemsysAlarm.exit, %bb.i
  %.037 = phi ptr [ %i.ab, %bb.i ], [ %i.v, %sqlite3MemsysAlarm.exit ] ; 2 uses
  store i64 %i.k, ptr %.037, align 8, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %.037, i64 8 ; 2 uses
  %i.ad = sub nsw i32 %1, %i.i
  %i.ae = sext i32 %i.ad to i64
  %i.af = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.ag = add nsw i64 %i.af, %i.ae                ; 3 uses
  store i64 %i.ag, ptr @mem.5, align 8, !tbaa !22
  %i.ah = load i64, ptr @mem.6, align 8, !tbaa !23
  %i.ai = icmp sgt i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.thread
  store i64 %i.ag, ptr @mem.6, align 8, !tbaa !23
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %.thread, %sqlite3_free.exit, %bb.b
  %.026 = phi ptr [ %i.b, %bb.b ], [ null, %sqlite3_free.exit ], [ %i.ac, %bb.j ], [ %i.ac, %.thread ], [ null, %bb.i ]
  ret ptr %.026
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @sqlite3_soft_heap_limit(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr @mem.4, align 8, !tbaa !18
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %sqlite3_memory_used.exit.sink.split, label %sqlite3_memory_used.exit

sqlite3_memory_used.exit.sink.split:              ; preds = %bb.a
  store ptr inttoptr (i64 8 to ptr), ptr @mem.4, align 8, !tbaa !18
  br label %sqlite3_memory_used.exit

sqlite3_memory_used.exit:                         ; preds = %bb.a, %sqlite3_memory_used.exit.sink.split
  %.not = icmp slt i32 %0, 1
  %narrow = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  %.softHeapLimitEnforcer = select i1 %.not, ptr null, ptr @softHeapLimitEnforcer
  %storemerge = zext nneg i32 %narrow to i64
  store ptr %.softHeapLimitEnforcer, ptr @mem.1, align 8, !tbaa !24
  store ptr null, ptr @mem.2, align 8, !tbaa !25
  store i64 %storemerge, ptr @mem.0, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @softHeapLimitEnforcer(ptr nofree readnone captures(none) %0, i64 %1, i32 %2) #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @sqlite3_release_memory(i32 noundef %0) local_unnamed_addr #10 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sqlite3_vmprintf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [350 x i8], align 16              ; 4 uses
  %2 = alloca %struct.StrAccum, align 8           ; 11 uses
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
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 0, ptr %i.g, align 8, !tbaa !36
  call fastcc void @vxprintf(ptr noundef %2, i32 noundef 0, ptr noundef %0, ptr noundef %1)
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !31   ; 5 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %sqlite3StrAccumFinish.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds i8, ptr %i.h, i64 %i.j
  store i8 0, ptr %i.k, align 1, !tbaa !37
  %i.l = load i8, ptr %i.e, align 1, !tbaa !34
  %.not15.i = icmp eq i8 %i.l, 0
  br i1 %.not15.i, label %sqlite3StrAccumFinish.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.n = icmp eq ptr %i.h, %i.m
  br i1 %i.n, label %bb.d, label %sqlite3StrAccumFinish.exit

bb.d:                                             ; preds = %bb.c
  %i.o = add nsw i32 %i.i, 1                      ; 2 uses
  %i.p = call ptr @sqlite3_malloc(i32 noundef %i.o) ; 3 uses
  %.not16.i = icmp eq ptr %i.p, null
  br i1 %.not16.i, label %sqlite3StrAccumFinish.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = sext i32 %i.o to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr align 1 %i.m, i64 %i.q, i1 false)
  br label %sqlite3StrAccumFinish.exit

sqlite3StrAccumFinish.exit:                       ; preds = %bb.d, %bb.a, %bb.b, %bb.c, %bb.e
  %i.r = phi ptr [ %i.h, %bb.b ], [ %i.h, %bb.c ], [ null, %bb.a ], [ %i.p, %bb.e ], [ null, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  ret ptr %i.r
}

; Function Attrs: nounwind uwtable
define internal fastcc void @vxprintf(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 2) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) unnamed_addr #5 {
bb.a:
  %i.a = alloca [350 x i8], align 16              ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 32 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 16 uses
  %.not501.not = icmp eq i32 %1, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.g = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 349 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 347 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 348
  %i.k = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.l = trunc i64 %i.g to i32                    ; 2 uses
  %.pre = ptrtoint ptr %i.i to i64
  %invariant.op = sub i32 -351, %i.l
  br label %bb.b

bb.b:                                             ; preds = %bb.ep, %bb.a
  %.0361 = phi i32 [ 0, %bb.a ], [ %.33641632, %bb.ep ]
  %.0340 = phi ptr [ null, %bb.a ], [ %.241634, %bb.ep ]
  %.0 = phi ptr [ %2, %bb.a ], [ %i.vs, %bb.ep ]  ; 5 uses
  %i.m = load i8, ptr %.0, align 1, !tbaa !37
  switch i8 %i.m, label %.preheader667 [
    i8 0, label %.thread610
    i8 37, label %bb.e
  ]

.preheader667:                                    ; preds = %bb.b, %bb.c
  %.0403 = phi i32 [ %i.p, %bb.c ], [ 1, %bb.b ]  ; 2 uses
  %.1 = phi ptr [ %i.n, %bb.c ], [ %.0, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 3 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !37    ; 2 uses
  switch i8 %i.o, label %bb.c [
    i8 37, label %bb.d
    i8 0, label %bb.d
  ]

bb.c:                                             ; preds = %.preheader667
  %i.p = add nuw nsw i32 %.0403, 1
  br label %.preheader667, !llvm.loop !38

bb.d:                                             ; preds = %.preheader667, %.preheader667
  call fastcc void @sqlite3StrAccumAppend(ptr noundef %0, ptr noundef nonnull %.0, i32 noundef %.0403)
  %i.q = icmp eq i8 %i.o, 0
  br i1 %i.q, label %.thread610, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.1341 = phi ptr [ %.0, %bb.d ], [ %.0340, %bb.b ] ; 6 uses
  %.2 = phi ptr [ %i.n, %bb.d ], [ %.0, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !37    ; 2 uses
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.f, label %.preheader666

bb.f:                                             ; preds = %bb.e
  call fastcc void @sqlite3StrAccumAppend(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef 1)
  br label %.thread610

.preheader666:                                    ; preds = %bb.e, %bb.l
  %.0404 = phi i8 [ %.1405.ph, %bb.l ], [ 0, %bb.e ] ; 7 uses
  %.0397 = phi i8 [ %.1398.ph, %bb.l ], [ 0, %bb.e ] ; 7 uses
  %.0394 = phi i8 [ %.1395.ph, %bb.l ], [ 0, %bb.e ] ; 8 uses
  %.0391 = phi i8 [ %.1392.ph, %bb.l ], [ 0, %bb.e ] ; 7 uses
  %.0378 = phi i8 [ %.1379.ph, %bb.l ], [ 0, %bb.e ] ; 7 uses
  %.0374 = phi i8 [ %.1375.ph, %bb.l ], [ 0, %bb.e ] ; 8 uses
  %.0333.in = phi i8 [ %i.v, %bb.l ], [ %i.s, %bb.e ] ; 2 uses
  %.3 = phi ptr [ %i.u, %bb.l ], [ %i.r, %bb.e ]  ; 4 uses
  switch i8 %.0333.in, label %.preheader664 [
    i8 45, label %bb.l
    i8 43, label %bb.g
    i8 32, label %bb.h
    i8 35, label %bb.i
    i8 33, label %bb.j
    i8 48, label %bb.k
    i8 42, label %bb.m
  ]

bb.g:                                             ; preds = %.preheader666
  br label %bb.l

bb.h:                                             ; preds = %.preheader666
  br label %bb.l

bb.i:                                             ; preds = %.preheader666
  br label %bb.l

bb.j:                                             ; preds = %.preheader666
  br label %bb.l

bb.k:                                             ; preds = %.preheader666
  br label %bb.l

bb.l:                                             ; preds = %.preheader666, %bb.k, %bb.g, %bb.h, %bb.i, %bb.j
  %.1405.ph = phi i8 [ %.0404, %.preheader666 ], [ %.0404, %bb.j ], [ %.0404, %bb.i ], [ %.0404, %bb.h ], [ %.0404, %bb.g ], [ 1, %bb.k ]
  %.1398.ph = phi i8 [ %.0397, %.preheader666 ], [ 1, %bb.j ], [ %.0397, %bb.i ], [ %.0397, %bb.h ], [ %.0397, %bb.g ], [ %.0397, %bb.k ]
  %.1395.ph = phi i8 [ %.0394, %.preheader666 ], [ %.0394, %bb.j ], [ 1, %bb.i ], [ %.0394, %bb.h ], [ %.0394, %bb.g ], [ %.0394, %bb.k ]
  %.1392.ph = phi i8 [ %.0391, %.preheader666 ], [ %.0391, %bb.j ], [ %.0391, %bb.i ], [ 1, %bb.h ], [ %.0391, %bb.g ], [ %.0391, %bb.k ]
  %.1379.ph = phi i8 [ %.0378, %.preheader666 ], [ %.0378, %bb.j ], [ %.0378, %bb.i ], [ %.0378, %bb.h ], [ 1, %bb.g ], [ %.0378, %bb.k ]
  %.1375.ph = phi i8 [ 1, %.preheader666 ], [ %.0374, %bb.j ], [ %.0374, %bb.i ], [ %.0374, %bb.h ], [ %.0374, %bb.g ], [ %.0374, %bb.k ]
  %i.u = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !37    ; 2 uses
  %.not500 = icmp eq i8 %i.v, 0
  br i1 %.not500, label %.thread610, label %.preheader666, !llvm.loop !39

.preheader664:                                    ; preds = %.preheader666
  %.0333.le = sext i8 %.0333.in to i32            ; 3 uses
  %i.w = add nsw i32 %.0333.le, -48
  %i.x = icmp ult i32 %i.w, 10
  br i1 %i.x, label %.lr.ph, label %.loopexit665

bb.m:                                             ; preds = %.preheader666
  %i.y = load i32, ptr %3, align 8                ; 3 uses
  %i.z = icmp ult i32 %i.y, 41
  br i1 %i.z, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aa = load ptr, ptr %i.c, align 8
  %i.ab = zext nneg i32 %i.y to i64
  %i.ac = getelementptr i8, ptr %i.aa, i64 %i.ab
  %i.ad = add nuw nsw i32 %i.y, 8
  store i32 %i.ad, ptr %3, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ae = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  store ptr %i.af, ptr %i.b, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ag = phi ptr [ %i.ac, %bb.n ], [ %i.ae, %bb.o ]
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4  ; 2 uses
  %i.ai = icmp slt i32 %i.ah, 0
  %spec.select = select i1 %i.ai, i8 1, i8 %.0374
  %spec.select535 = call i32 @llvm.abs.i32(i32 %i.ah, i1 true)
  %i.aj = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !37
  %i.al = sext i8 %i.ak to i32
  br label %.loopexit665

.lr.ph:                                           ; preds = %.preheader664, %.lr.ph
  %.5690 = phi ptr [ %i.ap, %.lr.ph ], [ %.3, %.preheader664 ]
  %.2335689 = phi i32 [ %i.ar, %.lr.ph ], [ %.0333.le, %.preheader664 ]
  %.1371688 = phi i32 [ %i.ao, %.lr.ph ], [ 0, %.preheader664 ]
  %i.am = mul nsw i32 %.1371688, 10
  %i.an = add nsw i32 %.2335689, -48
  %i.ao = add i32 %i.an, %i.am                    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.5690, i64 1 ; 3 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !37
  %i.ar = sext i8 %i.aq to i32                    ; 3 uses
  %i.as = add nsw i32 %i.ar, -48
  %i.at = icmp ult i32 %i.as, 10
  br i1 %i.at, label %.lr.ph, label %.loopexit665, !llvm.loop !40

.loopexit665:                                     ; preds = %.lr.ph, %.preheader664, %bb.p
  %.3377 = phi i8 [ %spec.select, %bb.p ], [ %.0374, %.preheader664 ], [ %.0374, %.lr.ph ] ; 2 uses
  %.2372 = phi i32 [ %spec.select535, %bb.p ], [ 0, %.preheader664 ], [ %i.ao, %.lr.ph ] ; 4 uses
  %.3336 = phi i32 [ %i.al, %bb.p ], [ %.0333.le, %.preheader664 ], [ %i.ar, %.lr.ph ] ; 2 uses
  %.6 = phi ptr [ %i.aj, %bb.p ], [ %.3, %.preheader664 ], [ %i.ap, %.lr.ph ] ; 3 uses
  %spec.store.select = call i32 @llvm.smin.i32(i32 %.2372, i32 340) ; 19 uses
  %i.au = icmp eq i32 %.3336, 46
  br i1 %i.au, label %bb.q, label %.loopexit663

bb.q:                                             ; preds = %.loopexit665
  %i.av = getelementptr inbounds nuw i8, ptr %.6, i64 1 ; 3 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !37  ; 3 uses
  %i.ax = icmp eq i8 %i.aw, 42
  br i1 %i.ax, label %bb.r, label %.preheader662

.preheader662:                                    ; preds = %bb.q
  %.4337693 = sext i8 %i.aw to i32                ; 2 uses
  %i.ay = add i8 %i.aw, -48
  %i.az = icmp ult i8 %i.ay, 10
  br i1 %i.az, label %.lr.ph697, label %.loopexit663

bb.r:                                             ; preds = %bb.q
  %i.ba = load i32, ptr %3, align 8               ; 3 uses
  %i.bb = icmp ult i32 %i.ba, 41
  br i1 %i.bb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bc = load ptr, ptr %i.c, align 8
  %i.bd = zext nneg i32 %i.ba to i64
  %i.be = getelementptr i8, ptr %i.bc, i64 %i.bd
  %i.bf = add nuw nsw i32 %i.ba, 8
  store i32 %i.bf, ptr %3, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bg = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 8
  store ptr %i.bh, ptr %i.b, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bi = phi ptr [ %i.be, %bb.s ], [ %i.bg, %bb.t ]
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !4
  %spec.select536 = call i32 @llvm.abs.i32(i32 %i.bj, i1 true)
  %i.bk = getelementptr inbounds nuw i8, ptr %.6, i64 2 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !37
  %i.bm = sext i8 %i.bl to i32
  br label %.loopexit663

.lr.ph697:                                        ; preds = %.preheader662, %.lr.ph697
  %.4337696 = phi i32 [ %.4337, %.lr.ph697 ], [ %.4337693, %.preheader662 ]
  %.7695 = phi ptr [ %i.bq, %.lr.ph697 ], [ %i.av, %.preheader662 ]
  %.1353694 = phi i32 [ %i.bp, %.lr.ph697 ], [ 0, %.preheader662 ]
  %i.bn = mul nsw i32 %.1353694, 10
  %i.bo = add i32 %i.bn, -48
  %i.bp = add i32 %i.bo, %.4337696                ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.7695, i64 1 ; 3 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !37  ; 2 uses
  %.4337 = sext i8 %i.br to i32                   ; 2 uses
  %i.bs = add i8 %i.br, -48
  %i.bt = icmp ult i8 %i.bs, 10
  br i1 %i.bt, label %.lr.ph697, label %.loopexit663, !llvm.loop !41

.loopexit663:                                     ; preds = %.lr.ph697, %.preheader662, %.loopexit665, %bb.u
  %.2354 = phi i32 [ %spec.select536, %bb.u ], [ -1, %.loopexit665 ], [ 0, %.preheader662 ], [ %i.bp, %.lr.ph697 ] ; 3 uses
  %.5338 = phi i32 [ %i.bm, %bb.u ], [ %.3336, %.loopexit665 ], [ %.4337693, %.preheader662 ], [ %.4337, %.lr.ph697 ] ; 2 uses
  %.8 = phi ptr [ %i.bk, %bb.u ], [ %.6, %.loopexit665 ], [ %i.av, %.preheader662 ], [ %i.bq, %.lr.ph697 ] ; 3 uses
  %.not646.not = icmp eq i32 %.5338, 108          ; 3 uses
  br i1 %.not646.not, label %bb.v, label %bb.y

bb.v:                                             ; preds = %.loopexit663
  %i.bu = getelementptr inbounds nuw i8, ptr %.8, i64 1 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !37  ; 2 uses
  %i.bw = icmp eq i8 %i.bv, 108
  br i1 %i.bw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bx = getelementptr inbounds nuw i8, ptr %.8, i64 2 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !37
  %i.bz = sext i8 %i.by to i32
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.ca = sext i8 %i.bv to i32
  br label %bb.y

bb.y:                                             ; preds = %.loopexit663, %bb.w, %bb.x
  %.not520 = phi i1 [ false, %bb.w ], [ true, %bb.x ], [ true, %.loopexit663 ] ; 2 uses
  %.6339 = phi i32 [ %i.bz, %bb.w ], [ %i.ca, %bb.x ], [ %.5338, %.loopexit663 ]
  %.9 = phi ptr [ %i.bx, %bb.w ], [ %i.bu, %bb.x ], [ %.8, %.loopexit663 ] ; 17 uses
  switch i32 %.6339, label %.thread610 [
    i32 100, label %.thread1008
    i32 115, label %.thread1008.fold.split
    i32 103, label %.thread1008.fold.split1675
    i32 122, label %.thread1008.fold.split1676
    i32 113, label %.thread1008.fold.split1677
    i32 81, label %.thread1008.fold.split1678
    i32 119, label %.thread1008.fold.split1679
    i32 99, label %.thread1008.fold.split1680
    i32 111, label %.thread1008.fold.split1681
    i32 117, label %.thread1008.fold.split1682
    i32 120, label %.thread1008.fold.split1683
    i32 88, label %.thread1008.fold.split1684
    i32 102, label %.thread1008.fold.split1685
    i32 101, label %.thread1008.fold.split1686
    i32 69, label %.thread1008.fold.split1687
    i32 71, label %.thread1008.fold.split1688
    i32 105, label %.thread1008.fold.split1689
    i32 110, label %.thread1008.fold.split1690
    i32 37, label %.thread1008.fold.split1691
    i32 112, label %.thread1008.fold.split1692
    i32 84, label %bb.z
    i32 83, label %.fold.split
    i32 114, label %.fold.split1693
  ]

.thread1008.fold.split:                           ; preds = %bb.y
  br label %.thread1008

.thread1008.fold.split1675:                       ; preds = %bb.y
  br label %.thread1008

.thread1008.fold.split1676:                       ; preds = %bb.y
  br label %.thread1008

.thread1008.fold.split1677:                       ; preds = %bb.y
  br label %.thread1008

.thread1008.fold.split1678:                       ; preds = %bb.y
  br label %.thread1008

.thread1008.fold.split1679:                       ; preds = %bb.y
  br label %.thread1008

.thread1008.fold.split1680:                       ; preds = %bb.y
  br label %.thread1008

.thread1008.fold.split1681:                       ; preds = %bb.y
  br label %.thread1008

.thread1008.fold.split1682:                       ; preds = %bb.y
  br label %.thread1008

.thread1008.fold.split1683:                       ; preds = %bb.y
  br label %.thread1008

.thread1008.fold.split1684:                       ; preds = %bb.y
  br label %.thread1008

.thread1008.fold.split1685:                       ; preds = %bb.y
  br label %.thread1008

.thread1008.fold.split1686:                       ; preds = %bb.y
  br label %.thread1008

.thread1008.fold.split1687:                       ; preds = %bb.y
  br label %.thread1008

.thread1008.fold.split1688:                       ; preds = %bb.y
  br label %.thread1008

.thread1008.fold.split1689:                       ; preds = %bb.y
  br label %.thread1008

.thread1008.fold.split1690:                       ; preds = %bb.y
  br label %.thread1008

.thread1008.fold.split1691:                       ; preds = %bb.y
  br label %.thread1008

.thread1008.fold.split1692:                       ; preds = %bb.y
  br label %.thread1008

.fold.split:                                      ; preds = %bb.y
  br label %bb.z

.fold.split1693:                                  ; preds = %bb.y
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.fold.split1693, %.fold.split
  %i.cb = phi i1 [ false, %bb.y ], [ false, %.fold.split ], [ true, %.fold.split1693 ]
  %.0365701.lcssa.wide = phi i64 [ 20, %bb.y ], [ 21, %.fold.split ], [ 22, %.fold.split1693 ]
  %.lcssa804 = phi ptr [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 120), %bb.y ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 126), %.fold.split ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 132), %.fold.split1693 ]
  br i1 %.not501.not, label %.thread610, label %.thread1008

.thread1008:                                      ; preds = %.thread1008.fold.split, %.thread1008.fold.split1675, %.thread1008.fold.split1676, %.thread1008.fold.split1677, %.thread1008.fold.split1678, %.thread1008.fold.split1679, %.thread1008.fold.split1680, %.thread1008.fold.split1681, %.thread1008.fold.split1682, %.thread1008.fold.split1683, %.thread1008.fold.split1684, %.thread1008.fold.split1685, %.thread1008.fold.split1686, %.thread1008.fold.split1687, %.thread1008.fold.split1688, %.thread1008.fold.split1689, %.thread1008.fold.split1690, %.thread1008.fold.split1691, %.thread1008.fold.split1692, %bb.y, %bb.z
  %.lcssa8041039 = phi ptr [ %.lcssa804, %bb.z ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 108), %.thread1008.fold.split1691 ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 102), %.thread1008.fold.split1690 ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 96), %.thread1008.fold.split1689 ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 90), %.thread1008.fold.split1688 ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 84), %.thread1008.fold.split1687 ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 78), %.thread1008.fold.split1686 ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 72), %.thread1008.fold.split1685 ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 66), %.thread1008.fold.split1684 ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 60), %.thread1008.fold.split1683 ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 54), %.thread1008.fold.split1682 ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 48), %.thread1008.fold.split1681 ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 42), %.thread1008.fold.split1680 ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 36), %.thread1008.fold.split1679 ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 30), %.thread1008.fold.split1678 ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 24), %.thread1008.fold.split1677 ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 18), %.thread1008.fold.split1676 ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 12), %.thread1008.fold.split1675 ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 6), %.thread1008.fold.split ], [ @fmtinfo, %bb.y ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 114), %.thread1008.fold.split1692 ] ; 5 uses
  %.0365701.lcssa.wide1038 = phi i64 [ %.0365701.lcssa.wide, %bb.z ], [ 18, %.thread1008.fold.split1691 ], [ 17, %.thread1008.fold.split1690 ], [ 16, %.thread1008.fold.split1689 ], [ 15, %.thread1008.fold.split1688 ], [ 14, %.thread1008.fold.split1687 ], [ 13, %.thread1008.fold.split1686 ], [ 12, %.thread1008.fold.split1685 ], [ 11, %.thread1008.fold.split1684 ], [ 10, %.thread1008.fold.split1683 ], [ 9, %.thread1008.fold.split1682 ], [ 8, %.thread1008.fold.split1681 ], [ 7, %.thread1008.fold.split1680 ], [ 6, %.thread1008.fold.split1679 ], [ 5, %.thread1008.fold.split1678 ], [ 4, %.thread1008.fold.split1677 ], [ 3, %.thread1008.fold.split1676 ], [ 2, %.thread1008.fold.split1675 ], [ 1, %.thread1008.fold.split ], [ 0, %bb.y ], [ 19, %.thread1008.fold.split1692 ] ; 2 uses
  %i.cc = phi i1 [ %i.cb, %bb.z ], [ false, %.thread1008.fold.split1691 ], [ false, %.thread1008.fold.split1690 ], [ false, %.thread1008.fold.split1689 ], [ false, %.thread1008.fold.split1688 ], [ false, %.thread1008.fold.split1687 ], [ false, %.thread1008.fold.split1686 ], [ false, %.thread1008.fold.split1685 ], [ false, %.thread1008.fold.split1684 ], [ false, %.thread1008.fold.split1683 ], [ false, %.thread1008.fold.split1682 ], [ false, %.thread1008.fold.split1681 ], [ false, %.thread1008.fold.split1680 ], [ false, %.thread1008.fold.split1679 ], [ false, %.thread1008.fold.split1678 ], [ false, %.thread1008.fold.split1677 ], [ false, %.thread1008.fold.split1676 ], [ false, %.thread1008.fold.split1675 ], [ false, %.thread1008.fold.split ], [ false, %bb.y ], [ false, %.thread1008.fold.split1692 ]
  %i.cd = phi i1 [ false, %bb.z ], [ false, %.thread1008.fold.split1691 ], [ false, %.thread1008.fold.split1690 ], [ false, %.thread1008.fold.split1689 ], [ false, %.thread1008.fold.split1688 ], [ false, %.thread1008.fold.split1687 ], [ false, %.thread1008.fold.split1686 ], [ true, %.thread1008.fold.split1685 ], [ false, %.thread1008.fold.split1684 ], [ false, %.thread1008.fold.split1683 ], [ false, %.thread1008.fold.split1682 ], [ false, %.thread1008.fold.split1681 ], [ false, %.thread1008.fold.split1680 ], [ false, %.thread1008.fold.split1679 ], [ false, %.thread1008.fold.split1678 ], [ false, %.thread1008.fold.split1677 ], [ false, %.thread1008.fold.split1676 ], [ false, %.thread1008.fold.split1675 ], [ false, %.thread1008.fold.split ], [ false, %bb.y ], [ false, %.thread1008.fold.split1692 ] ; 2 uses
  %i.ce = phi i1 [ false, %bb.z ], [ false, %.thread1008.fold.split1691 ], [ false, %.thread1008.fold.split1690 ], [ false, %.thread1008.fold.split1689 ], [ true, %.thread1008.fold.split1688 ], [ false, %.thread1008.fold.split1687 ], [ false, %.thread1008.fold.split1686 ], [ false, %.thread1008.fold.split1685 ], [ false, %.thread1008.fold.split1684 ], [ false, %.thread1008.fold.split1683 ], [ false, %.thread1008.fold.split1682 ], [ false, %.thread1008.fold.split1681 ], [ false, %.thread1008.fold.split1680 ], [ false, %.thread1008.fold.split1679 ], [ false, %.thread1008.fold.split1678 ], [ false, %.thread1008.fold.split1677 ], [ false, %.thread1008.fold.split1676 ], [ true, %.thread1008.fold.split1675 ], [ false, %.thread1008.fold.split ], [ false, %bb.y ], [ false, %.thread1008.fold.split1692 ]
  %.not6421037 = phi i1 [ false, %bb.z ], [ false, %.thread1008.fold.split1691 ], [ false, %.thread1008.fold.split1690 ], [ false, %.thread1008.fold.split1689 ], [ false, %.thread1008.fold.split1688 ], [ false, %.thread1008.fold.split1687 ], [ false, %.thread1008.fold.split1686 ], [ false, %.thread1008.fold.split1685 ], [ false, %.thread1008.fold.split1684 ], [ false, %.thread1008.fold.split1683 ], [ false, %.thread1008.fold.split1682 ], [ false, %.thread1008.fold.split1681 ], [ false, %.thread1008.fold.split1680 ], [ false, %.thread1008.fold.split1679 ], [ false, %.thread1008.fold.split1678 ], [ false, %.thread1008.fold.split1677 ], [ true, %.thread1008.fold.split1676 ], [ false, %.thread1008.fold.split1675 ], [ false, %.thread1008.fold.split ], [ false, %bb.y ], [ false, %.thread1008.fold.split1692 ]
  %i.cf = phi i1 [ false, %bb.z ], [ false, %.thread1008.fold.split1691 ], [ false, %.thread1008.fold.split1690 ], [ false, %.thread1008.fold.split1689 ], [ false, %.thread1008.fold.split1688 ], [ false, %.thread1008.fold.split1687 ], [ false, %.thread1008.fold.split1686 ], [ false, %.thread1008.fold.split1685 ], [ false, %.thread1008.fold.split1684 ], [ false, %.thread1008.fold.split1683 ], [ false, %.thread1008.fold.split1682 ], [ false, %.thread1008.fold.split1681 ], [ false, %.thread1008.fold.split1680 ], [ false, %.thread1008.fold.split1679 ], [ true, %.thread1008.fold.split1678 ], [ false, %.thread1008.fold.split1677 ], [ false, %.thread1008.fold.split1676 ], [ false, %.thread1008.fold.split1675 ], [ false, %.thread1008.fold.split ], [ false, %bb.y ], [ false, %.thread1008.fold.split1692 ] ; 2 uses
  %i.cg = phi i8 [ 39, %bb.z ], [ 39, %.thread1008.fold.split1691 ], [ 39, %.thread1008.fold.split1690 ], [ 39, %.thread1008.fold.split1689 ], [ 39, %.thread1008.fold.split1688 ], [ 39, %.thread1008.fold.split1687 ], [ 39, %.thread1008.fold.split1686 ], [ 39, %.thread1008.fold.split1685 ], [ 39, %.thread1008.fold.split1684 ], [ 39, %.thread1008.fold.split1683 ], [ 39, %.thread1008.fold.split1682 ], [ 39, %.thread1008.fold.split1681 ], [ 39, %.thread1008.fold.split1680 ], [ 34, %.thread1008.fold.split1679 ], [ 39, %.thread1008.fold.split1678 ], [ 39, %.thread1008.fold.split1677 ], [ 39, %.thread1008.fold.split1676 ], [ 39, %.thread1008.fold.split1675 ], [ 39, %.thread1008.fold.split ], [ 39, %bb.y ], [ 39, %.thread1008.fold.split1692 ] ; 3 uses
  %i.ch = trunc nsw i64 %.0365701.lcssa.wide1038 to i32 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.lcssa8041039, i64 3
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !42  ; 2 uses
  %i.ck = icmp sgt i32 %.2354, 310
  %i.cl = shl nuw nsw i64 1, %.0365701.lcssa.wide1038 ; 4 uses
  %i.cm = and i64 %i.cl, 8388485
  %.not = icmp ne i64 %i.cm, 0
  %i.cn = select i1 %i.ck, i1 %.not, i1 false
  %.3355 = select i1 %i.cn, i32 310, i32 %.2354   ; 10 uses
  switch i8 %i.cj, label %.loopexit649 [
    i8 15, label %.thread613
    i8 17, label %bb.aa
    i8 1, label %bb.aa
    i8 2, label %bb.bp
    i8 3, label %bb.bp
    i8 4, label %bb.bp
    i8 5, label %bb.cw
    i8 8, label %bb.da
    i8 14, label %bb.ec
    i8 13, label %bb.dw
    i8 6, label %bb.dh
    i8 7, label %bb.dh
    i8 11, label %bb.dl
    i8 12, label %bb.dl
    i8 16, label %bb.dl
    i8 9, label %bb.db
    i8 10, label %bb.df
  ]

bb.aa:                                            ; preds = %.thread1008, %.thread1008
  %i.co = and i64 %i.cl, 4067322
  %.not517.not = icmp eq i64 %i.co, 0
  br i1 %.not517.not, label %bb.ab, label %bb.as

.thread613:                                       ; preds = %.thread1008
  %i.cp = and i64 %i.cl, 4067322
  %.not517616.not = icmp eq i64 %i.cp, 0
  br i1 %.not517616.not, label %.thread621, label %.thread625

bb.ab:                                            ; preds = %bb.aa
  br i1 %.not520, label %bb.af, label %.thread621

.thread621:                                       ; preds = %.thread613, %bb.ab
  %i.cq = load i32, ptr %3, align 8               ; 3 uses
  %i.cr = icmp ult i32 %i.cq, 41
  br i1 %i.cr, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.thread621
  %i.cs = load ptr, ptr %i.c, align 8
  %i.ct = zext nneg i32 %i.cq to i64
  %i.cu = getelementptr i8, ptr %i.cs, i64 %i.ct
  %i.cv = add nuw nsw i32 %i.cq, 8
  store i32 %i.cv, ptr %3, align 8
  br label %bb.ae

bb.ad:                                            ; preds = %.thread621
  %i.cw = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 8
  store ptr %i.cx, ptr %i.b, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cy = phi ptr [ %i.cu, %bb.ac ], [ %i.cw, %bb.ad ]
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !28
  br label %bb.ao

bb.af:                                            ; preds = %bb.ab
  %i.da = load i32, ptr %3, align 8               ; 5 uses
  %i.db = icmp ult i32 %i.da, 41                  ; 2 uses
  br i1 %.not646.not, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  br i1 %i.db, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.dc = load ptr, ptr %i.c, align 8
  %i.dd = zext nneg i32 %i.da to i64
  %i.de = getelementptr i8, ptr %i.dc, i64 %i.dd
  %i.df = add nuw nsw i32 %i.da, 8
  store i32 %i.df, ptr %3, align 8
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.dg = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 8
  store ptr %i.dh, ptr %i.b, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.di = phi ptr [ %i.de, %bb.ah ], [ %i.dg, %bb.ai ]
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !44
  br label %bb.ao

bb.ak:                                            ; preds = %bb.af
  br i1 %i.db, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dk = load ptr, ptr %i.c, align 8
  %i.dl = zext nneg i32 %i.da to i64
  %i.dm = getelementptr i8, ptr %i.dk, i64 %i.dl
  %i.dn = add nuw nsw i32 %i.da, 8
  store i32 %i.dn, ptr %3, align 8
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.do = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.dp = getelementptr i8, ptr %i.do, i64 8
  store ptr %i.dp, ptr %i.b, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.dq = phi ptr [ %i.dm, %bb.al ], [ %i.do, %bb.am ]
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !4
  %i.ds = sext i32 %i.dr to i64
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aj, %bb.an, %bb.ae
  %.0400 = phi i64 [ %i.cz, %bb.ae ], [ %i.dj, %bb.aj ], [ %i.ds, %bb.an ] ; 4 uses
  %i.dt = icmp slt i64 %.0400, 0
  br i1 %i.dt, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.du = sub nsw i64 0, %.0400
  br label %bb.bf

bb.aq:                                            ; preds = %bb.ao
  %.not522 = icmp eq i8 %.0378, 0
  br i1 %.not522, label %bb.ar, label %bb.bf

bb.ar:                                            ; preds = %bb.aq
  %.not523 = icmp eq i8 %.0391, 0
  %.539 = select i1 %.not523, i8 0, i8 32
  br label %bb.bf

bb.as:                                            ; preds = %bb.aa
  br i1 %.not520, label %bb.aw, label %.thread625

.thread625:                                       ; preds = %.thread613, %bb.as
  %i.dv = load i32, ptr %3, align 8               ; 3 uses
  %i.dw = icmp ult i32 %i.dv, 41
  br i1 %i.dw, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.thread625
  %i.dx = load ptr, ptr %i.c, align 8
  %i.dy = zext nneg i32 %i.dv to i64
  %i.dz = getelementptr i8, ptr %i.dx, i64 %i.dy
  %i.ea = add nuw nsw i32 %i.dv, 8
  store i32 %i.ea, ptr %3, align 8
  br label %bb.av

bb.au:                                            ; preds = %.thread625
  %i.eb = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ec = getelementptr i8, ptr %i.eb, i64 8
  store ptr %i.ec, ptr %i.b, align 8
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.ed = phi ptr [ %i.dz, %bb.at ], [ %i.eb, %bb.au ]
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !28
  br label %bb.bf

bb.aw:                                            ; preds = %bb.as
  %i.ef = load i32, ptr %3, align 8               ; 5 uses
  %i.eg = icmp ult i32 %i.ef, 41                  ; 2 uses
  br i1 %.not646.not, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.eg, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.eh = load ptr, ptr %i.c, align 8
  %i.ei = zext nneg i32 %i.ef to i64
  %i.ej = getelementptr i8, ptr %i.eh, i64 %i.ei
  %i.ek = add nuw nsw i32 %i.ef, 8
  store i32 %i.ek, ptr %3, align 8
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.el = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.em = getelementptr i8, ptr %i.el, i64 8
  store ptr %i.em, ptr %i.b, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.en = phi ptr [ %i.ej, %bb.ay ], [ %i.el, %bb.az ]
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !44
  br label %bb.bf

bb.bb:                                            ; preds = %bb.aw
  br i1 %i.eg, label %bb.bc, label %bb.bd
end_hunk_0
begin_hunk_1_@vxprintf:bb.a

bb.ce:                                            ; preds = %bb.cd
  %i.kq = getelementptr inbounds nuw i8, ptr %.10350, i64 1
  store i8 48, ptr %.10350, align 1, !tbaa !37
  %i.kr = add nsw i32 %..6420, 1
  br label %.loopexit654

.preheader653:                                    ; preds = %et_getdigit.exit.1, %.preheader653.preheader.new
  %.11351752 = phi ptr [ %.10350, %.preheader653.preheader.new ], [ %i.li, %et_getdigit.exit.1 ] ; 3 uses
  %.0574750 = phi i32 [ 0, %.preheader653.preheader.new ], [ %i.la, %et_getdigit.exit.1 ] ; 3 uses
  %.9586749 = phi x86_fp80 [ %.8585632, %.preheader653.preheader.new ], [ %.12589.1, %et_getdigit.exit.1 ] ; 3 uses
  %niter = phi i32 [ 0, %.preheader653.preheader.new ], [ %niter.next.1, %et_getdigit.exit.1 ]
  %i.ks = icmp samesign ugt i32 %.0574750, 15
  br i1 %i.ks, label %et_getdigit.exit, label %bb.cf

bb.cf:                                            ; preds = %.preheader653
  %i.kt = fptosi x86_fp80 %.9586749 to i32        ; 2 uses
  %i.ku = sitofp i32 %i.kt to x86_fp80
  %i.kv = fsub x86_fp80 %.9586749, %i.ku
  %i.kw = fmul x86_fp80 %i.kv, 1.000000e+01
  %i.kx = trunc i32 %i.kt to i8
  %i.ky = add i8 %i.kx, 48
  br label %et_getdigit.exit

et_getdigit.exit:                                 ; preds = %.preheader653, %bb.cf
  %.12589 = phi x86_fp80 [ %.9586749, %.preheader653 ], [ %i.kw, %bb.cf ] ; 3 uses
  %.0.i = phi i8 [ 48, %.preheader653 ], [ %i.ky, %bb.cf ]
  %i.kz = getelementptr inbounds nuw i8, ptr %.11351752, i64 1
  store i8 %.0.i, ptr %.11351752, align 1, !tbaa !37
  %i.la = add nuw i32 %.0574750, 2                ; 2 uses
  %i.lb = icmp samesign ugt i32 %.0574750, 15
  br i1 %i.lb, label %et_getdigit.exit.1, label %bb.cg

bb.cg:                                            ; preds = %et_getdigit.exit
  %i.lc = fptosi x86_fp80 %.12589 to i32          ; 2 uses
  %i.ld = sitofp i32 %i.lc to x86_fp80
  %i.le = fsub x86_fp80 %.12589, %i.ld
  %i.lf = fmul x86_fp80 %i.le, 1.000000e+01
  %i.lg = trunc i32 %i.lc to i8
  %i.lh = add i8 %i.lg, 48
  br label %et_getdigit.exit.1

et_getdigit.exit.1:                               ; preds = %bb.cg, %et_getdigit.exit
  %.12589.1 = phi x86_fp80 [ %.12589, %et_getdigit.exit ], [ %i.lf, %bb.cg ] ; 3 uses
  %.0.i.1 = phi i8 [ 48, %et_getdigit.exit ], [ %i.lh, %bb.cg ]
  %i.li = getelementptr inbounds nuw i8, ptr %.11351752, i64 2 ; 3 uses
  store i8 %.0.i.1, ptr %i.kz, align 1, !tbaa !37
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit654.loopexit.unr-lcssa, label %.preheader653, !llvm.loop !61

.loopexit654.loopexit.unr-lcssa:                  ; preds = %et_getdigit.exit.1
  %i.lj = and i32 %..6420, 1
  %lcmp.mod1796.not.not = icmp eq i32 %i.lj, 0
  br i1 %lcmp.mod1796.not.not, label %.preheader653.epil.preheader, label %.loopexit654

.preheader653.epil.preheader:                     ; preds = %.loopexit654.loopexit.unr-lcssa, %.preheader653.preheader
  %.11351752.epil.init = phi ptr [ %.10350, %.preheader653.preheader ], [ %i.li, %.loopexit654.loopexit.unr-lcssa ] ; 2 uses
  %.0574750.epil.init = phi i32 [ 0, %.preheader653.preheader ], [ %i.la, %.loopexit654.loopexit.unr-lcssa ]
  %.9586749.epil.init = phi x86_fp80 [ %.8585632, %.preheader653.preheader ], [ %.12589.1, %.loopexit654.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1799 = trunc i32 %i.ko to i1
  call void @llvm.assume(i1 %lcmp.mod1799)
  %i.lk = icmp samesign ugt i32 %.0574750.epil.init, 15
  br i1 %i.lk, label %et_getdigit.exit.epil, label %bb.ch

bb.ch:                                            ; preds = %.preheader653.epil.preheader
  %i.ll = fptosi x86_fp80 %.9586749.epil.init to i32 ; 2 uses
  %i.lm = sitofp i32 %i.ll to x86_fp80
  %i.ln = fsub x86_fp80 %.9586749.epil.init, %i.lm
  %i.lo = fmul x86_fp80 %i.ln, 1.000000e+01
  %i.lp = trunc i32 %i.ll to i8
  %i.lq = add i8 %i.lp, 48
  br label %et_getdigit.exit.epil

et_getdigit.exit.epil:                            ; preds = %bb.ch, %.preheader653.epil.preheader
  %.12589.epil = phi x86_fp80 [ %.9586749.epil.init, %.preheader653.epil.preheader ], [ %i.lo, %bb.ch ]
  %.0.i.epil = phi i8 [ 48, %.preheader653.epil.preheader ], [ %i.lq, %bb.ch ]
  %i.lr = getelementptr inbounds nuw i8, ptr %.11351752.epil.init, i64 1
  store i8 %.0.i.epil, ptr %.11351752.epil.init, align 1, !tbaa !37
  br label %.loopexit654

.loopexit654:                                     ; preds = %et_getdigit.exit.epil, %.loopexit654.loopexit.unr-lcssa, %bb.ce
  %.10587 = phi x86_fp80 [ %.8585632, %bb.ce ], [ %.12589.1, %.loopexit654.loopexit.unr-lcssa ], [ %.12589.epil, %et_getdigit.exit.epil ] ; 4 uses
  %.1575 = phi i32 [ 0, %bb.ce ], [ %i.kn, %.loopexit654.loopexit.unr-lcssa ], [ %i.kn, %et_getdigit.exit.epil ] ; 3 uses
  %.2412 = phi i32 [ %i.kr, %bb.ce ], [ 0, %.loopexit654.loopexit.unr-lcssa ], [ 0, %et_getdigit.exit.epil ] ; 2 uses
  %.12 = phi ptr [ %i.kq, %bb.ce ], [ %i.li, %.loopexit654.loopexit.unr-lcssa ], [ %i.lr, %et_getdigit.exit.epil ] ; 3 uses
  %.not513 = icmp eq i8 %i.kl, 0
  br i1 %.not513, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %.loopexit654
  %i.ls = getelementptr inbounds nuw i8, ptr %.12, i64 1
  store i8 46, ptr %.12, align 1, !tbaa !37
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %.loopexit654
  %.13 = phi ptr [ %i.ls, %bb.ci ], [ %.12, %.loopexit654 ] ; 3 uses
  %i.lt = icmp slt i32 %.2412, 0
  %i.lu = and i1 %i.lt, %i.ki
  br i1 %i.lu, label %.lr.ph757.preheader, label %.preheader652

.lr.ph757.preheader:                              ; preds = %bb.cj
  %i.lv = add nsw i32 %.6358.fr, -1               ; 2 uses
  %i.lw = xor i32 %.2412, -1                      ; 2 uses
  %i.lx = call i32 @llvm.umin.i32(i32 %i.lv, i32 %i.lw)
  %umin = zext nneg i32 %i.lx to i64              ; 2 uses
  %i.ly = add nuw nsw i64 %umin, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13, i8 48, i64 %i.ly, i1 false), !tbaa !37
  %scevgep838 = getelementptr i8, ptr %.13, i64 1
  %scevgep840 = getelementptr i8, ptr %scevgep838, i64 %umin
  %i.lz = call i32 @llvm.usub.sat.i32(i32 %i.lv, i32 %i.lw)
  br label %.preheader652

.preheader652:                                    ; preds = %.lr.ph757.preheader, %bb.cj
  %.7359.lcssa = phi i32 [ %.6358.fr, %bb.cj ], [ %i.lz, %.lr.ph757.preheader ] ; 5 uses
  %.14.lcssa = phi ptr [ %.13, %bb.cj ], [ %scevgep840, %.lr.ph757.preheader ] ; 4 uses
  %i.ma = icmp sgt i32 %.7359.lcssa, 0
  br i1 %i.ma, label %.lr.ph764.preheader, label %._crit_edge765

.lr.ph764.preheader:                              ; preds = %.preheader652
  %xtraiter1800 = and i32 %.7359.lcssa, 1
  %lcmp.mod1801.not = icmp eq i32 %xtraiter1800, 0
  br i1 %lcmp.mod1801.not, label %.lr.ph764.prol.loopexit, label %.lr.ph764.prol

.lr.ph764.prol:                                   ; preds = %.lr.ph764.preheader
  %i.mb = add nsw i32 %.7359.lcssa, -1
  %i.mc = add nuw nsw i32 %.1575, 1
  %i.md = icmp samesign ugt i32 %.1575, 15
  br i1 %i.md, label %et_getdigit.exit556.prol, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph764.prol
  %i.me = fptosi x86_fp80 %.10587 to i32          ; 2 uses
  %i.mf = sitofp i32 %i.me to x86_fp80
  %i.mg = fsub x86_fp80 %.10587, %i.mf
  %i.mh = fmul x86_fp80 %i.mg, 1.000000e+01
  %i.mi = trunc i32 %i.me to i8
  %i.mj = add i8 %i.mi, 48
  br label %et_getdigit.exit556.prol

et_getdigit.exit556.prol:                         ; preds = %bb.ck, %.lr.ph764.prol
  %.13590.prol = phi x86_fp80 [ %.10587, %.lr.ph764.prol ], [ %i.mh, %bb.ck ]
  %.0.i555.prol = phi i8 [ 48, %.lr.ph764.prol ], [ %i.mj, %bb.ck ]
  %i.mk = getelementptr inbounds nuw i8, ptr %.14.lcssa, i64 1 ; 2 uses
  store i8 %.0.i555.prol, ptr %.14.lcssa, align 1, !tbaa !37
  br label %.lr.ph764.prol.loopexit

.lr.ph764.prol.loopexit:                          ; preds = %et_getdigit.exit556.prol, %.lr.ph764.preheader
  %.15763.unr = phi ptr [ %.14.lcssa, %.lr.ph764.preheader ], [ %i.mk, %et_getdigit.exit556.prol ]
  %.8360762.unr = phi i32 [ %.7359.lcssa, %.lr.ph764.preheader ], [ %i.mb, %et_getdigit.exit556.prol ]
  %.2576761.unr = phi i32 [ %.1575, %.lr.ph764.preheader ], [ %i.mc, %et_getdigit.exit556.prol ]
  %.11588760.unr = phi x86_fp80 [ %.10587, %.lr.ph764.preheader ], [ %.13590.prol, %et_getdigit.exit556.prol ]
  %.lcssa1787.unr = phi ptr [ poison, %.lr.ph764.preheader ], [ %i.mk, %et_getdigit.exit556.prol ]
  %i.ml = icmp eq i32 %.7359.lcssa, 1
  br i1 %i.ml, label %._crit_edge765, label %.lr.ph764

.lr.ph764:                                        ; preds = %.lr.ph764.prol.loopexit, %et_getdigit.exit556.1
  %.15763 = phi ptr [ %i.nd, %et_getdigit.exit556.1 ], [ %.15763.unr, %.lr.ph764.prol.loopexit ] ; 3 uses
  %.8360762 = phi i32 [ %i.mu, %et_getdigit.exit556.1 ], [ %.8360762.unr, %.lr.ph764.prol.loopexit ] ; 2 uses
  %.2576761 = phi i32 [ %i.mv, %et_getdigit.exit556.1 ], [ %.2576761.unr, %.lr.ph764.prol.loopexit ] ; 3 uses
  %.11588760 = phi x86_fp80 [ %.13590.1, %et_getdigit.exit556.1 ], [ %.11588760.unr, %.lr.ph764.prol.loopexit ] ; 3 uses
  %i.mm = icmp samesign ugt i32 %.2576761, 15
  br i1 %i.mm, label %et_getdigit.exit556, label %bb.cl

bb.cl:                                            ; preds = %.lr.ph764
  %i.mn = fptosi x86_fp80 %.11588760 to i32       ; 2 uses
  %i.mo = sitofp i32 %i.mn to x86_fp80
  %i.mp = fsub x86_fp80 %.11588760, %i.mo
  %i.mq = fmul x86_fp80 %i.mp, 1.000000e+01
  %i.mr = trunc i32 %i.mn to i8
  %i.ms = add i8 %i.mr, 48
  br label %et_getdigit.exit556

et_getdigit.exit556:                              ; preds = %.lr.ph764, %bb.cl
  %.13590 = phi x86_fp80 [ %.11588760, %.lr.ph764 ], [ %i.mq, %bb.cl ] ; 3 uses
  %.0.i555 = phi i8 [ 48, %.lr.ph764 ], [ %i.ms, %bb.cl ]
  %i.mt = getelementptr inbounds nuw i8, ptr %.15763, i64 1
  store i8 %.0.i555, ptr %.15763, align 1, !tbaa !37
  %i.mu = add nsw i32 %.8360762, -2
  %i.mv = add nuw nsw i32 %.2576761, 2
  %i.mw = icmp ugt i32 %.2576761, 14
  br i1 %i.mw, label %et_getdigit.exit556.1, label %bb.cm

bb.cm:                                            ; preds = %et_getdigit.exit556
  %i.mx = fptosi x86_fp80 %.13590 to i32          ; 2 uses
  %i.my = sitofp i32 %i.mx to x86_fp80
  %i.mz = fsub x86_fp80 %.13590, %i.my
  %i.na = fmul x86_fp80 %i.mz, 1.000000e+01
  %i.nb = trunc i32 %i.mx to i8
  %i.nc = add i8 %i.nb, 48
  br label %et_getdigit.exit556.1

et_getdigit.exit556.1:                            ; preds = %bb.cm, %et_getdigit.exit556
  %.13590.1 = phi x86_fp80 [ %.13590, %et_getdigit.exit556 ], [ %i.na, %bb.cm ]
  %.0.i555.1 = phi i8 [ 48, %et_getdigit.exit556 ], [ %i.nc, %bb.cm ]
  %i.nd = getelementptr inbounds nuw i8, ptr %.15763, i64 2 ; 2 uses
  store i8 %.0.i555.1, ptr %i.mt, align 1, !tbaa !37
  %i.ne = icmp sgt i32 %.8360762, 2
  br i1 %i.ne, label %.lr.ph764, label %._crit_edge765, !llvm.loop !62

._crit_edge765:                                   ; preds = %.lr.ph764.prol.loopexit, %et_getdigit.exit556.1, %.preheader652
  %.15.lcssa = phi ptr [ %.14.lcssa, %.preheader652 ], [ %.lcssa1787.unr, %.lr.ph764.prol.loopexit ], [ %i.nd, %et_getdigit.exit556.1 ] ; 2 uses
  %4 = icmp ne i8 %i.kl, 0
  %or.cond7 = select i1 %.0406, i1 %4, i1 false
  br i1 %or.cond7, label %.preheader650, label %.loopexit651

.preheader650:                                    ; preds = %._crit_edge765, %bb.cn
  %.16 = phi ptr [ %i.nf, %bb.cn ], [ %.15.lcssa, %._crit_edge765 ] ; 4 uses
  %i.nf = getelementptr inbounds i8, ptr %.16, i64 -1 ; 5 uses
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !37
  switch i8 %i.ng, label %.loopexit651 [
    i8 48, label %bb.cn
    i8 46, label %bb.co
  ]

bb.cn:                                            ; preds = %.preheader650
  store i8 0, ptr %i.nf, align 1, !tbaa !37
  br label %.preheader650, !llvm.loop !63

bb.co:                                            ; preds = %.preheader650
  %.not514 = icmp eq i8 %.0397, 0
  br i1 %.not514, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.nh = getelementptr inbounds nuw i8, ptr %.16, i64 1
  store i8 48, ptr %.16, align 1, !tbaa !37
  br label %.loopexit651

bb.cq:                                            ; preds = %bb.co
  store i8 0, ptr %i.nf, align 1, !tbaa !37
  br label %.loopexit651

.loopexit651:                                     ; preds = %.preheader650, %bb.cq, %bb.cp, %._crit_edge765
  %.17 = phi ptr [ %i.nh, %bb.cp ], [ %i.nf, %bb.cq ], [ %.15.lcssa, %._crit_edge765 ], [ %.16, %.preheader650 ] ; 5 uses
  %i.ni = icmp ne i32 %.6420633, 0
  %or.cond9 = select i1 %i.kh, i1 %i.ni, i1 false
  %or.cond547 = select i1 %i.jy, i1 true, i1 %or.cond9
  br i1 %or.cond547, label %bb.cr, label %bb.cu

bb.cr:                                            ; preds = %.loopexit651
  %i.nj = getelementptr inbounds nuw i8, ptr %.lcssa8041039, i64 4
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !46
  %i.nl = zext i8 %i.nk to i64
  %i.nm = getelementptr inbounds nuw i8, ptr @aDigits, i64 %i.nl
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !37
  %i.no = getelementptr inbounds nuw i8, ptr %.17, i64 1
  store i8 %i.nn, ptr %.17, align 1, !tbaa !37
  %i.np = icmp slt i32 %.6420633, 0
  %spec.select1695 = select i1 %i.np, i8 45, i8 43
  %spec.select1696 = call i32 @llvm.abs.i32(i32 %.6420633, i1 true) ; 4 uses
  store i8 %spec.select1695, ptr %i.no, align 1, !tbaa !37
  %.18 = getelementptr inbounds nuw i8, ptr %.17, i64 2 ; 2 uses
  %i.nq = icmp samesign ugt i32 %spec.select1696, 99
  br i1 %i.nq, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.nr = udiv i32 %spec.select1696, 100
  %i.ns = trunc i32 %i.nr to i8
  %i.nt = add i8 %i.ns, 48
  %i.nu = getelementptr inbounds nuw i8, ptr %.17, i64 3
  store i8 %i.nt, ptr %.18, align 1, !tbaa !37
  %i.nv = urem i32 %spec.select1696, 100
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.8422 = phi i32 [ %i.nv, %bb.cs ], [ %spec.select1696, %bb.cr ]
  %.19 = phi ptr [ %i.nu, %bb.cs ], [ %.18, %bb.cr ] ; 3 uses
  %.lhs.trunc = trunc nuw nsw i32 %.8422 to i8    ; 2 uses
  %i.nw = udiv i8 %.lhs.trunc, 10
  %i.nx = or disjoint i8 %i.nw, 48
  %i.ny = getelementptr inbounds nuw i8, ptr %.19, i64 1
  store i8 %i.nx, ptr %.19, align 1, !tbaa !37
  %i.nz = urem i8 %.lhs.trunc, 10
  %i.oa = or disjoint i8 %i.nz, 48
  %i.ob = getelementptr inbounds nuw i8, ptr %.19, i64 2
  store i8 %i.oa, ptr %i.ny, align 1, !tbaa !37
  br label %bb.cu

bb.cu:                                            ; preds = %.loopexit651, %bb.ct
  %.20 = phi ptr [ %i.ob, %bb.ct ], [ %.17, %.loopexit651 ] ; 2 uses
  store i8 0, ptr %.20, align 1, !tbaa !37
  %i.oc = ptrtoint ptr %.20 to i64                ; 3 uses
  %i.od = sub i64 %i.oc, %i.g
  %i.oe = trunc i64 %i.od to i32                  ; 5 uses
  %i.of = icmp ne i8 %.0404, 0
  %i.og = icmp eq i8 %.3377, 0
  %or.cond11.not645 = select i1 %i.of, i1 %i.og, i1 false
  %i.oh = icmp sgt i32 %spec.store.select, %i.oe
  %or.cond548 = select i1 %or.cond11.not645, i1 %i.oh, i1 false
  br i1 %or.cond548, label %bb.cv, label %.loopexit649

bb.cv:                                            ; preds = %bb.cu
  %i.oi = sub i32 %spec.store.select, %i.oe       ; 7 uses
  %.not515767 = icmp slt i32 %i.oe, 0
  br i1 %.not515767, label %.preheader648, label %iter.check

iter.check:                                       ; preds = %bb.cv
  %i.oj = call i32 @llvm.smin.i32(i32 %.2372, i32 340)
  %smin = sext i32 %i.oj to i64                   ; 10 uses
  %i.ok = sext i32 %i.oi to i64
  %i.ol = add nsw i64 %smin, 1
  %i.om = call i32 @llvm.smin.i32(i32 %.2372, i32 %i.oi)
  %i.on = call i32 @llvm.smin.i32(i32 %i.om, i32 340)
  %smin1737 = sext i32 %i.on to i64
  %i.oo = sub nsw i64 %i.ol, %smin1737            ; 7 uses
  %min.iters.check = icmp ult i64 %i.oo, 8
  br i1 %min.iters.check, label %.lr.ph770.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.op = call i32 @llvm.smin.i32(i32 %.2372, i32 %i.oi)
  %i.oq = call i32 @llvm.smin.i32(i32 %i.op, i32 340)
  %smin1735 = sext i32 %i.oq to i64
  %i.or = sub nsw i64 %smin, %smin1735            ; 2 uses
  %i.os = trunc i64 %i.oc to i32
  %i.ot = sub i32 %i.os, %i.l
  %i.ou = trunc i64 %i.or to i32
  %i.ov = icmp ult i32 %i.ot, %i.ou
  %i.ow = icmp ugt i64 %i.or, 4294967295
  %i.ox = or i1 %i.ov, %i.ow
  br i1 %i.ox, label %.lr.ph770.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.oy = sub i64 %i.oc, %i.g
  %i.oz = and i64 %i.oy, 4294967295
  %i.pa = sub nsw i64 %i.oz, %smin
  %diff.check = icmp ult i64 %i.pa, 32
  br i1 %diff.check, label %.lr.ph770.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check1738 = icmp ult i64 %i.oo, 32
  br i1 %min.iters.check1738, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.oo, 24
  %n.vec = and i64 %i.oo, -32                     ; 4 uses
  %i.pb = sub nsw i64 %smin, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.pc = sub i64 %smin, %index                   ; 2 uses
  %i.pd = trunc nsw i64 %i.pc to i32
  %i.pe = sub nsw i32 %i.pd, %i.oi
  %i.pf = zext nneg i32 %i.pe to i64
  %i.pg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.pf ; 2 uses
  %i.ph = getelementptr inbounds i8, ptr %i.pg, i64 -15
  %i.pi = getelementptr inbounds i8, ptr %i.pg, i64 -31
  %wide.load = load <16 x i8>, ptr %i.ph, align 1, !tbaa !37
  %wide.load1739 = load <16 x i8>, ptr %i.pi, align 1, !tbaa !37
  %i.pj = getelementptr inbounds i8, ptr %i.a, i64 %i.pc ; 2 uses
  %i.pk = getelementptr inbounds i8, ptr %i.pj, i64 -15
  %i.pl = getelementptr inbounds i8, ptr %i.pj, i64 -31
  store <16 x i8> %wide.load, ptr %i.pk, align 1, !tbaa !37
  store <16 x i8> %wide.load1739, ptr %i.pl, align 1, !tbaa !37
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.pm = icmp eq i64 %index.next, %n.vec
  br i1 %i.pm, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.oo, %n.vec
  br i1 %cmp.n, label %.preheader648, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph770.preheader, label %vec.epilog.ph, !prof !67

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1741 = and i64 %i.oo, -8                  ; 3 uses
  %i.pn = sub nsw i64 %smin, %n.vec1741
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1742 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1744, %vec.epilog.vector.body ] ; 2 uses
  %i.po = sub i64 %smin, %index1742               ; 2 uses
  %i.pp = trunc nsw i64 %i.po to i32
  %i.pq = sub nsw i32 %i.pp, %i.oi
  %i.pr = zext nneg i32 %i.pq to i64
  %i.ps = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.pr
  %i.pt = getelementptr inbounds i8, ptr %i.ps, i64 -7
  %wide.load1743 = load <8 x i8>, ptr %i.pt, align 1, !tbaa !37
  %i.pu = getelementptr inbounds i8, ptr %i.a, i64 %i.po
  %i.pv = getelementptr inbounds i8, ptr %i.pu, i64 -7
  store <8 x i8> %wide.load1743, ptr %i.pv, align 1, !tbaa !37
  %index.next1744 = add nuw i64 %index1742, 8     ; 2 uses
  %i.pw = icmp eq i64 %index.next1744, %n.vec1741
  br i1 %i.pw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !68

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1745 = icmp eq i64 %i.oo, %n.vec1741
  br i1 %cmp.n1745, label %.preheader648, label %.lr.ph770.preheader

.lr.ph770.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv842.ph = phi i64 [ %smin, %iter.check ], [ %smin, %vector.scevcheck ], [ %smin, %vector.memcheck ], [ %i.pb, %vec.epilog.iter.check ], [ %i.pn, %vec.epilog.middle.block ]
  br label %.lr.ph770

.preheader648:                                    ; preds = %.lr.ph770, %middle.block, %vec.epilog.middle.block, %bb.cv
  %.not516771 = icmp eq i32 %spec.store.select, %i.oe
  br i1 %.not516771, label %.loopexit649.thread, label %.lr.ph774.preheader

.lr.ph774.preheader:                              ; preds = %.preheader648
  %scevgep844 = getelementptr i8, ptr %i.a, i64 %i.hn
  %i.px = zext i32 %i.oi to i64
end_hunk_1
begin_hunk_2_@sqlite3VdbeReset:bb.a
  br label %bb.ac

sqlite3Error.exit40:                              ; preds = %bb.x
  %.pre53 = load ptr, ptr inttoptr (i64 240 to ptr), align 16, !tbaa !109 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %.not.i41 = icmp eq ptr %.pre53, null
  br i1 %.not.i41, label %sqlite3ValueSetStr.exit42, label %bb.ac

bb.ac:                                            ; preds = %sqlite3Error.exit40.thread73, %sqlite3Error.exit40
  %i.cf = phi ptr [ %i.cd, %sqlite3Error.exit40.thread73 ], [ %i.ce, %sqlite3Error.exit40 ] ; 4 uses
  %i.cg = phi ptr [ %i.bz, %sqlite3Error.exit40.thread73 ], [ %.pre53, %sqlite3Error.exit40 ] ; 11 uses
  %i.ch = load ptr, ptr %i.cf, align 8, !tbaa !108 ; 4 uses
  %.not.i44 = icmp eq ptr %i.ch, null
  br i1 %.not.i44, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 36 ; 2 uses
  %i.cj = load i16, ptr %i.ci, align 4, !tbaa !124
  %i.ck = and i16 %i.cj, -32
  %i.cl = or disjoint i16 %i.ck, 1
  store i16 %i.cl, ptr %i.ci, align 4, !tbaa !124
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 38
  store i8 5, ptr %i.cm, align 2, !tbaa !126
  br label %sqlite3ValueSetStr.exit42

bb.ae:                                            ; preds = %bb.ac
  %strlen.i45 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.ch)
  %.249.i46 = trunc i64 %strlen.i45 to i32        ; 2 uses
  %i.cn = icmp eq ptr @sqlite3_free, inttoptr (i64 -1 to ptr)
  br i1 %i.cn, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %.0.i49 = add nsw i32 %.249.i46, 1              ; 2 uses
  %i.co = tail call fastcc i32 @sqlite3VdbeMemGrow(ptr noundef nonnull %i.cg, i32 noundef %.0.i49, i32 noundef 0)
  %.not58.i50 = icmp eq i32 %i.co, 0
  br i1 %.not58.i50, label %bb.ag, label %sqlite3ValueSetStr.exit42

bb.ag:                                            ; preds = %bb.af
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !119
  %i.cr = sext i32 %.0.i49 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr nonnull align 1 %i.ch, i64 %i.cr, i1 false)
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ae
  tail call fastcc void @sqlite3VdbeMemRelease(ptr noundef nonnull %i.cg)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  store ptr %i.ch, ptr %i.cs, align 8, !tbaa !119
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  store ptr @sqlite3_free, ptr %i.ct, align 8, !tbaa !122
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  store i32 %.249.i46, ptr %i.cu, align 8, !tbaa !123
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cg, i64 36
  store i16 98, ptr %i.cv, align 4, !tbaa !124
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cg, i64 39
  store i8 1, ptr %i.cw, align 1, !tbaa !125
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cg, i64 38
  store i8 3, ptr %i.cx, align 2, !tbaa !126
  br label %sqlite3ValueSetStr.exit42

sqlite3ValueSetStr.exit42:                        ; preds = %sqlite3Error.exit40.thread, %bb.ai, %bb.af, %bb.ad, %sqlite3Error.exit40
  %i.cy = phi ptr [ %i.bu, %sqlite3Error.exit40.thread ], [ %i.cf, %bb.ai ], [ %i.cf, %bb.af ], [ %i.cf, %bb.ad ], [ %i.ce, %sqlite3Error.exit40 ]
  store ptr null, ptr %i.cy, align 8, !tbaa !108
  br label %sqlite3Error.exit

sqlite3Error.exit:                                ; preds = %bb.u, %sqlite3ValueNew.exit.thread.i33, %bb.p, %bb.o, %sqlite3ValueNew.exit.thread.i, %bb.j, %bb.v, %bb.w, %sqlite3ValueSetStr.exit42, %sqlite3ValueSetStr.exit
  tail call fastcc void @Cleanup(ptr noundef nonnull %0)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 649915045, ptr %i.cz, align 4, !tbaa !105
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 338
  store i8 0, ptr %i.da, align 2, !tbaa !131
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !127
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !132
  %i.df = and i32 %i.de, %i.dc
  ret i32 %i.df
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3VdbeMakeReady(ptr nofree noundef nonnull captures(none) initializes((116, 120)) %0, i32 noundef %1, i32 noundef range(i32 -2147483645, -2147483648) %2, i32 noundef range(i32 -2147483645, -2147483648) %3, i32 noundef range(i32 0, 256) %4) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !106    ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  store i32 -1108210269, ptr %i.b, align 4, !tbaa !105
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !133
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !134  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !135  ; 3 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !136
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.preheader.i
  %.076.in.i = phi i32 [ %.076.i, %bb.l ], [ %i.j, %.lr.ph.preheader.i ] ; 2 uses
  %.05275.i = phi i32 [ %.3.i, %bb.l ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.05474.i = phi i32 [ %.155.i, %bb.l ], [ 0, %.lr.ph.preheader.i ] ; 6 uses
  %.05673.i = phi i32 [ %.157.i, %bb.l ], [ 0, %.lr.ph.preheader.i ] ; 6 uses
  %.05872.i = phi ptr [ %i.al, %bb.l ], [ %i.l, %.lr.ph.preheader.i ] ; 8 uses
  %.076.i = add nsw i32 %.076.in.i, -1
  %i.m = load i8, ptr %.05872.i, align 8, !tbaa !137 ; 3 uses
  switch i8 %i.m, label %bb.d [
    i8 20, label %.thread.i
    i8 118, label %bb.c
    i8 96, label %bb.c
  ]

.thread.i:                                        ; preds = %.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05872.i, i64 3
  %i.o = load i8, ptr %i.n, align 1, !tbaa !139
  %i.p = zext i8 %i.o to i32
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %.05275.i, i32 %i.p)
  br label %bb.i

bb.c:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05872.i, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !140
  %spec.select65.i = tail call i32 @llvm.smax.i32(i32 %i.r, i32 %.05275.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %.153.i = phi i32 [ %.05275.i, %.lr.ph.i ], [ %spec.select65.i, %bb.c ] ; 6 uses
  switch i8 %i.m, label %.fold.split.i [
    i8 37, label %bb.e
    i8 41, label %bb.i
    i8 105, label %bb.g
    i8 118, label %bb.g
    i8 28, label %bb.g
    i8 99, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.05872.i, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !141
  %i.u = icmp eq i32 %i.t, 19
  br i1 %i.u, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.05872.i, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !140
  %i.x = icmp eq i32 %i.w, 2
  %spec.select66.i = select i1 %i.x, i32 1, i32 %.05673.i
  br label %bb.i

bb.g:                                             ; preds = %bb.d, %bb.d, %bb.d
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds i8, ptr %.05872.i, i64 -20
  %i.z = load i32, ptr %i.y, align 4, !tbaa !141
  %spec.select67.i = tail call i32 @llvm.smax.i32(i32 %i.z, i32 %.153.i)
  br label %bb.i

.fold.split.i:                                    ; preds = %bb.d
  br label %bb.i

bb.i:                                             ; preds = %.fold.split.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %.thread.i
  %.157.i = phi i32 [ %.05673.i, %bb.h ], [ %.05673.i, %bb.d ], [ %.05673.i, %bb.e ], [ %spec.select66.i, %bb.f ], [ 1, %bb.g ], [ %.05673.i, %.thread.i ], [ %.05673.i, %.fold.split.i ] ; 2 uses
  %.155.i = phi i32 [ %.05474.i, %bb.h ], [ 1, %bb.d ], [ %.05474.i, %bb.e ], [ %.05474.i, %bb.f ], [ %.05474.i, %bb.g ], [ %.05474.i, %.thread.i ], [ %.05474.i, %.fold.split.i ] ; 2 uses
  %.3.i = phi i32 [ %spec.select67.i, %bb.h ], [ %.153.i, %bb.d ], [ %.153.i, %bb.e ], [ %.153.i, %bb.f ], [ %.153.i, %bb.g ], [ %spec.select.i, %.thread.i ], [ %.153.i, %.fold.split.i ] ; 2 uses
  %i.aa = zext i8 %i.m to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @opcodeProperty, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !37
  %i.ad = and i8 %i.ac, 1
  %.not.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05872.i, i64 8 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !140 ; 2 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = xor i32 %i.af, -1
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  store i32 %i.ak, ptr %i.ae, align 8, !tbaa !140
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %.05872.i, i64 24
  %i.am = icmp samesign ugt i32 %.076.in.i, 1
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !142

._crit_edge.loopexit.i:                           ; preds = %bb.l
  %5 = icmp ne i32 %.155.i, 0
  %i.an = icmp eq i32 %.157.i, 0
  %.not91 = select i1 %5, i1 %i.an, i1 false
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.b
  %.054.lcssa.i = phi i1 [ false, %bb.b ], [ %.not91, %._crit_edge.loopexit.i ]
  %.052.lcssa.i = phi i32 [ 0, %bb.b ], [ %.3.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.ao = icmp eq ptr %i.g, null
  br i1 %i.ao, label %sqlite3_free.exit.i, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i
  %i.ap = getelementptr inbounds i8, ptr %i.g, i64 -8 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !28
  %sext.i.i = shl i64 %i.aq, 32
  %i.ar = ashr exact i64 %sext.i.i, 32
  %i.as = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.at = sub nsw i64 %i.as, %i.ar
  store i64 %i.at, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.ap) #43
  %.pre.pre = load i32, ptr %i.i, align 8, !tbaa !135
  br label %sqlite3_free.exit.i

sqlite3_free.exit.i:                              ; preds = %bb.m, %._crit_edge.i
  %.pre = phi i32 [ %.pre.pre, %bb.m ], [ %i.j, %._crit_edge.i ] ; 11 uses
  store ptr null, ptr %i.f, align 8, !tbaa !134
  %i.au = icmp sgt i32 %.pre, 0
  %or.cond88 = select i1 %.054.lcssa.i, i1 %i.au, i1 false
  br i1 %or.cond88, label %iter.check, label %resolveP2Values.exit

iter.check:                                       ; preds = %sqlite3_free.exit.i
  %i.av = load ptr, ptr %i.h, align 8, !tbaa !136 ; 27 uses
  %i.aw = zext nneg i32 %.pre to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %.pre, 8
  br i1 %min.iters.check, label %.lr.ph83.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check92 = icmp ult i32 %.pre, 16
  br i1 %min.iters.check92, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.aw, 8
  %n.vec = and i64 %i.aw, 2147483632              ; 5 uses
  %i.ax = trunc nuw nsw i64 %n.vec to i32
  %i.ay = sub nsw i32 %.pre, %i.ax
  %i.az = mul nuw nsw i64 %n.vec, 24
  %i.ba = getelementptr i8, ptr %i.av, i64 %i.az
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue137, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue137 ] ; 2 uses
  %i.bb = mul i64 %index, 24                      ; 16 uses
  %next.gep = getelementptr i8, ptr %i.av, i64 %i.bb ; 2 uses
  %i.bc = getelementptr i8, ptr %i.av, i64 %i.bb
  %next.gep93 = getelementptr i8, ptr %i.bc, i64 24 ; 2 uses
  %i.bd = getelementptr i8, ptr %i.av, i64 %i.bb
  %next.gep94 = getelementptr i8, ptr %i.bd, i64 48 ; 2 uses
  %i.be = getelementptr i8, ptr %i.av, i64 %i.bb
  %next.gep95 = getelementptr i8, ptr %i.be, i64 72 ; 2 uses
  %i.bf = getelementptr i8, ptr %i.av, i64 %i.bb
  %next.gep96 = getelementptr i8, ptr %i.bf, i64 96 ; 2 uses
  %i.bg = getelementptr i8, ptr %i.av, i64 %i.bb
  %next.gep97 = getelementptr i8, ptr %i.bg, i64 120 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.av, i64 %i.bb
  %next.gep98 = getelementptr i8, ptr %i.bh, i64 144 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.av, i64 %i.bb
  %next.gep99 = getelementptr i8, ptr %i.bi, i64 168 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.av, i64 %i.bb
  %next.gep100 = getelementptr i8, ptr %i.bj, i64 192 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.av, i64 %i.bb
  %next.gep101 = getelementptr i8, ptr %i.bk, i64 216 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.av, i64 %i.bb
  %next.gep102 = getelementptr i8, ptr %i.bl, i64 240 ; 2 uses
  %i.bm = getelementptr i8, ptr %i.av, i64 %i.bb
  %next.gep103 = getelementptr i8, ptr %i.bm, i64 264 ; 2 uses
  %i.bn = getelementptr i8, ptr %i.av, i64 %i.bb
  %next.gep104 = getelementptr i8, ptr %i.bn, i64 288 ; 2 uses
  %i.bo = getelementptr i8, ptr %i.av, i64 %i.bb
  %next.gep105 = getelementptr i8, ptr %i.bo, i64 312 ; 2 uses
  %i.bp = getelementptr i8, ptr %i.av, i64 %i.bb
  %next.gep106 = getelementptr i8, ptr %i.bp, i64 336 ; 2 uses
  %i.bq = getelementptr i8, ptr %i.av, i64 %i.bb
  %next.gep107 = getelementptr i8, ptr %i.bq, i64 360 ; 2 uses
  %i.br = load i8, ptr %next.gep, align 8, !tbaa !137
  %i.bs = load i8, ptr %next.gep93, align 8, !tbaa !137
  %i.bt = load i8, ptr %next.gep94, align 8, !tbaa !137
  %i.bu = load i8, ptr %next.gep95, align 8, !tbaa !137
  %i.bv = load i8, ptr %next.gep96, align 8, !tbaa !137
  %i.bw = load i8, ptr %next.gep97, align 8, !tbaa !137
  %i.bx = load i8, ptr %next.gep98, align 8, !tbaa !137
  %i.by = load i8, ptr %next.gep99, align 8, !tbaa !137
  %i.bz = load i8, ptr %next.gep100, align 8, !tbaa !137
  %i.ca = load i8, ptr %next.gep101, align 8, !tbaa !137
  %i.cb = load i8, ptr %next.gep102, align 8, !tbaa !137
  %i.cc = load i8, ptr %next.gep103, align 8, !tbaa !137
  %i.cd = load i8, ptr %next.gep104, align 8, !tbaa !137
  %i.ce = load i8, ptr %next.gep105, align 8, !tbaa !137
  %i.cf = load i8, ptr %next.gep106, align 8, !tbaa !137
  %i.cg = load i8, ptr %next.gep107, align 8, !tbaa !137
  %i.ch = insertelement <16 x i8> poison, i8 %i.br, i64 0
  %i.ci = insertelement <16 x i8> %i.ch, i8 %i.bs, i64 1
  %i.cj = insertelement <16 x i8> %i.ci, i8 %i.bt, i64 2
  %i.ck = insertelement <16 x i8> %i.cj, i8 %i.bu, i64 3
  %i.cl = insertelement <16 x i8> %i.ck, i8 %i.bv, i64 4
  %i.cm = insertelement <16 x i8> %i.cl, i8 %i.bw, i64 5
  %i.cn = insertelement <16 x i8> %i.cm, i8 %i.bx, i64 6
  %i.co = insertelement <16 x i8> %i.cn, i8 %i.by, i64 7
  %i.cp = insertelement <16 x i8> %i.co, i8 %i.bz, i64 8
  %i.cq = insertelement <16 x i8> %i.cp, i8 %i.ca, i64 9
  %i.cr = insertelement <16 x i8> %i.cq, i8 %i.cb, i64 10
  %i.cs = insertelement <16 x i8> %i.cr, i8 %i.cc, i64 11
  %i.ct = insertelement <16 x i8> %i.cs, i8 %i.cd, i64 12
  %i.cu = insertelement <16 x i8> %i.ct, i8 %i.ce, i64 13
  %i.cv = insertelement <16 x i8> %i.cu, i8 %i.cf, i64 14
  %i.cw = insertelement <16 x i8> %i.cv, i8 %i.cg, i64 15
  %i.cx = icmp eq <16 x i8> %i.cw, splat (i8 41)  ; 16 uses
  %i.cy = extractelement <16 x i1> %i.cx, i64 0
  br i1 %i.cy, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 22, ptr %next.gep, align 8, !tbaa !137
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.cz = extractelement <16 x i1> %i.cx, i64 1
  br i1 %i.cz, label %pred.store.if108, label %pred.store.continue109

pred.store.if108:                                 ; preds = %pred.store.continue
  store i8 22, ptr %next.gep93, align 8, !tbaa !137
  br label %pred.store.continue109

pred.store.continue109:                           ; preds = %pred.store.if108, %pred.store.continue
  %i.da = extractelement <16 x i1> %i.cx, i64 2
  br i1 %i.da, label %pred.store.if110, label %pred.store.continue111

pred.store.if110:                                 ; preds = %pred.store.continue109
  store i8 22, ptr %next.gep94, align 8, !tbaa !137
  br label %pred.store.continue111

pred.store.continue111:                           ; preds = %pred.store.if110, %pred.store.continue109
  %i.db = extractelement <16 x i1> %i.cx, i64 3
  br i1 %i.db, label %pred.store.if112, label %pred.store.continue113

pred.store.if112:                                 ; preds = %pred.store.continue111
  store i8 22, ptr %next.gep95, align 8, !tbaa !137
  br label %pred.store.continue113

pred.store.continue113:                           ; preds = %pred.store.if112, %pred.store.continue111
  %i.dc = extractelement <16 x i1> %i.cx, i64 4
  br i1 %i.dc, label %pred.store.if114, label %pred.store.continue115

pred.store.if114:                                 ; preds = %pred.store.continue113
  store i8 22, ptr %next.gep96, align 8, !tbaa !137
  br label %pred.store.continue115

pred.store.continue115:                           ; preds = %pred.store.if114, %pred.store.continue113
  %i.dd = extractelement <16 x i1> %i.cx, i64 5
  br i1 %i.dd, label %pred.store.if116, label %pred.store.continue117

pred.store.if116:                                 ; preds = %pred.store.continue115
  store i8 22, ptr %next.gep97, align 8, !tbaa !137
  br label %pred.store.continue117

pred.store.continue117:                           ; preds = %pred.store.if116, %pred.store.continue115
  %i.de = extractelement <16 x i1> %i.cx, i64 6
  br i1 %i.de, label %pred.store.if118, label %pred.store.continue119

pred.store.if118:                                 ; preds = %pred.store.continue117
  store i8 22, ptr %next.gep98, align 8, !tbaa !137
  br label %pred.store.continue119

pred.store.continue119:                           ; preds = %pred.store.if118, %pred.store.continue117
  %i.df = extractelement <16 x i1> %i.cx, i64 7
  br i1 %i.df, label %pred.store.if120, label %pred.store.continue121

pred.store.if120:                                 ; preds = %pred.store.continue119
  store i8 22, ptr %next.gep99, align 8, !tbaa !137
  br label %pred.store.continue121

pred.store.continue121:                           ; preds = %pred.store.if120, %pred.store.continue119
  %i.dg = extractelement <16 x i1> %i.cx, i64 8
  br i1 %i.dg, label %pred.store.if122, label %pred.store.continue123

pred.store.if122:                                 ; preds = %pred.store.continue121
  store i8 22, ptr %next.gep100, align 8, !tbaa !137
  br label %pred.store.continue123

pred.store.continue123:                           ; preds = %pred.store.if122, %pred.store.continue121
  %i.dh = extractelement <16 x i1> %i.cx, i64 9
  br i1 %i.dh, label %pred.store.if124, label %pred.store.continue125

pred.store.if124:                                 ; preds = %pred.store.continue123
  store i8 22, ptr %next.gep101, align 8, !tbaa !137
  br label %pred.store.continue125

pred.store.continue125:                           ; preds = %pred.store.if124, %pred.store.continue123
  %i.di = extractelement <16 x i1> %i.cx, i64 10
  br i1 %i.di, label %pred.store.if126, label %pred.store.continue127

pred.store.if126:                                 ; preds = %pred.store.continue125
  store i8 22, ptr %next.gep102, align 8, !tbaa !137
end_hunk_2
begin_hunk_3_@sqlite3Utf16to8:bb.a

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 8) i32 @sqlite3_overload_function(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #42
  %i.b = trunc i64 %i.a to i32
  %i.c = tail call fastcc ptr @sqlite3FindFunction(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.b, i32 noundef %2, i8 noundef zeroext 1, i32 noundef 0)
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc i32 @sqlite3CreateFunc(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef 1, ptr noundef null, ptr noundef nonnull @sqlite3InvalidFunction, ptr noundef null, ptr noundef null) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %sqlite3ApiExit.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 2 uses
  %i.g = load i8, ptr %i.f, align 2, !tbaa !129
  %.not7.i = icmp eq i8 %i.g, 0
  br i1 %.not7.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !109  ; 3 uses
  %.not12.i.i = icmp eq ptr %i.i, null
  br i1 %.not12.i.i, label %sqlite3Error.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 7, ptr %i.j, align 8, !tbaa !128
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 36 ; 2 uses
  %i.l = load i16, ptr %i.k, align 4, !tbaa !124
  %i.m = and i16 %i.l, -32
  %i.n = or disjoint i16 %i.m, 1
  store i16 %i.n, ptr %i.k, align 4, !tbaa !124
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 38
  store i8 5, ptr %i.o, align 2, !tbaa !126
  br label %sqlite3Error.exit.i

sqlite3Error.exit.i:                              ; preds = %bb.f, %bb.e
  store i8 0, ptr %i.f, align 2, !tbaa !129
  br label %bb.g

bb.g:                                             ; preds = %sqlite3Error.exit.i, %bb.d
  %.0.ph.i = phi i32 [ 0, %bb.d ], [ 7, %sqlite3Error.exit.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !132
  %i.r = and i32 %i.q, %.0.ph.i
  br label %sqlite3ApiExit.exit

sqlite3ApiExit.exit:                              ; preds = %bb.c, %bb.g
  %i.s = phi i32 [ %i.r, %bb.g ], [ 0, %bb.c ]
  ret i32 %i.s
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sqlite3FindFunction(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #5 {
bb.a:
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %3, i32 -1) ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !467
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.a, align 8, !tbaa !488
  %i.f = icmp eq i8 %i.e, 3
  %strHash.binHash.i.i.i = select i1 %i.f, ptr @strHash, ptr @binHash
  %i.g = tail call i32 %strHash.binHash.i.i.i(ptr noundef %1, i32 noundef %2) #43, !callees !489, !inline_history !490
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !467  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.j = load i32, ptr %i.i, align 8, !tbaa !468
  %i.k = srem i32 %i.g, %i.j
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [16 x i8], ptr %i.h, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.m, align 8, !tbaa !491
  %i.p = load i8, ptr %i.a, align 8, !tbaa !488
  %i.q = icmp eq i8 %i.p, 3
  %strCompare.binCompare.i.i.i.i = select i1 %i.q, ptr @strCompare, ptr @binCompare
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.018.i.i.i = phi i32 [ %i.o, %bb.c ], [ %i.t, %bb.e ] ; 2 uses
  %.017.in.i.i.i = phi ptr [ %i.n, %bb.c ], [ %.017.i.i.i, %bb.e ]
  %.017.i.i.i = load ptr, ptr %.017.in.i.i.i, align 8, !tbaa !430 ; 5 uses
  %i.r = icmp eq i32 %.018.i.i.i, 0
  %i.s = icmp eq ptr %.017.i.i.i, null
  %.not22.i.i.i = select i1 %i.r, i1 true, i1 %i.s
  br i1 %.not22.i.i.i, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = add nsw i32 %.018.i.i.i, -1
  %i.u = getelementptr inbounds nuw i8, ptr %.017.i.i.i, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !471
  %i.w = getelementptr inbounds nuw i8, ptr %.017.i.i.i, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !493
  %i.y = tail call i32 %strCompare.binCompare.i.i.i.i(ptr noundef %i.v, i32 noundef %i.x, ptr noundef %1, i32 noundef %2) #43, !callees !494, !inline_history !495
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %sqlite3HashFind.exit, label %bb.d, !llvm.loop !496

sqlite3HashFind.exit:                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.017.i.i.i, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !432 ; 5 uses
  %.not88 = icmp eq ptr %i.ab, null
  br i1 %.not88, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %sqlite3HashFind.exit
  %i.ac = icmp slt i32 %3, 0
  %i.ad = icmp eq i8 %4, 2                        ; 2 uses
  %i.ae = icmp eq i8 %4, 3                        ; 2 uses
  br i1 %i.ac, label %.lr.ph.split.us, label %.lr.ph.split.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.g
  %.06091.us = phi i32 [ %spec.select77.us, %bb.g ], [ 0, %.lr.ph ] ; 2 uses
  %.06290.us = phi ptr [ %spec.select76.us, %bb.g ], [ null, %.lr.ph ]
  %.06689.us = phi ptr [ %i.am, %bb.g ], [ %i.ab, %.lr.ph ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.06689.us, i64 2
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !483 ; 3 uses
  %i.ah = icmp eq i8 %4, %i.ag
  br i1 %i.ah, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us
  %i.ai = icmp eq i8 %i.ag, 3
  %or.cond75.us = and i1 %i.ad, %i.ai
  %i.aj = icmp eq i8 %i.ag, 2
  %or.cond86.us = and i1 %i.ae, %i.aj
  %or.cond = or i1 %or.cond75.us, %or.cond86.us
  %spec.select116 = select i1 %or.cond, i32 5, i32 4
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us, %bb.f
  %.1.us = phi i32 [ %spec.select116, %bb.f ], [ 6, %.lr.ph.split.us ] ; 2 uses
  %i.ak = icmp sgt i32 %.1.us, %.06091.us
  %spec.select76.us = select i1 %i.ak, ptr %.06689.us, ptr %.06290.us ; 2 uses
  %spec.select77.us = tail call i32 @llvm.smax.i32(i32 %.1.us, i32 %.06091.us) ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.06689.us, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !434 ; 2 uses
  %.not.us = icmp eq ptr %i.am, null
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !497

.lr.ph.split.split:                               ; preds = %.lr.ph, %bb.l
  %.06091 = phi i32 [ %.2, %bb.l ], [ 0, %.lr.ph ] ; 3 uses
  %.06290 = phi ptr [ %.264, %bb.l ], [ null, %.lr.ph ] ; 2 uses
  %.06689 = phi ptr [ %i.ba, %bb.l ], [ %i.ab, %.lr.ph ] ; 4 uses
  %i.an = load i16, ptr %.06689, align 8, !tbaa !199 ; 2 uses
  %i.ao = icmp eq i16 %i.an, -1
  %i.ap = sext i16 %i.an to i32
  %i.aq = icmp eq i32 %spec.store.select, %i.ap   ; 2 uses
  %or.cond114 = or i1 %i.ao, %i.aq
  br i1 %or.cond114, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.lr.ph.split.split
  %spec.select = select i1 %i.aq, i32 4, i32 1    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.06689, i64 2
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !483 ; 3 uses
  %i.at = icmp eq i8 %4, %i.as
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.au = or disjoint i32 %spec.select, 2
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.av = icmp eq i8 %i.as, 3
  %or.cond75 = and i1 %i.ad, %i.av
  %i.aw = icmp eq i8 %i.as, 2
  %or.cond86 = and i1 %i.ae, %i.aw
  %or.cond115 = or i1 %or.cond75, %or.cond86
  %i.ax = zext i1 %or.cond115 to i32
  %spec.select118 = add nuw nsw i32 %spec.select, %i.ax
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1 = phi i32 [ %i.au, %bb.i ], [ %spec.select118, %bb.j ] ; 2 uses
  %i.ay = icmp sgt i32 %.1, %.06091
  %spec.select76 = select i1 %i.ay, ptr %.06689, ptr %.06290
  %spec.select77 = tail call i32 @llvm.smax.i32(i32 %.1, i32 %.06091)
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.split, %bb.k
  %.264 = phi ptr [ %spec.select76, %bb.k ], [ %.06290, %.lr.ph.split.split ] ; 2 uses
  %.2 = phi i32 [ %spec.select77, %bb.k ], [ %.06091, %.lr.ph.split.split ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.06689, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !434 ; 2 uses
  %.not = icmp eq ptr %i.ba, null
  br i1 %.not, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !497

._crit_edge:                                      ; preds = %bb.d, %bb.l, %bb.g, %bb.a, %bb.b, %sqlite3HashFind.exit
  %i.bb = phi ptr [ null, %sqlite3HashFind.exit ], [ %i.ab, %bb.l ], [ %i.ab, %bb.g ], [ null, %bb.b ], [ null, %bb.a ], [ null, %bb.d ]
  %.062.lcssa = phi ptr [ null, %sqlite3HashFind.exit ], [ %.264, %bb.l ], [ %spec.select76.us, %bb.g ], [ null, %bb.b ], [ null, %bb.a ], [ null, %bb.d ] ; 2 uses
  %.060.lcssa = phi i32 [ 0, %sqlite3HashFind.exit ], [ %.2, %bb.l ], [ %spec.select77.us, %bb.g ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.d ]
  %6 = icmp ne i32 %5, 0                          ; 2 uses
  %i.bc = icmp slt i32 %.060.lcssa, 6
  %or.cond5 = select i1 %6, i1 %i.bc, i1 false
  br i1 %or.cond5, label %bb.m, label %bb.r

bb.m:                                             ; preds = %._crit_edge
  %i.bd = add i32 %2, 56                          ; 3 uses
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %sqlite3DbMallocRaw.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !129
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.bh = tail call ptr @sqlite3_malloc(i32 noundef %i.bd) ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.be, align 2, !tbaa !129
  br label %.thread

sqlite3DbMallocRaw.exit.i:                        ; preds = %bb.m
  %i.bj = tail call ptr @sqlite3_malloc(i32 noundef %i.bd) ; 2 uses
  %.not.i = icmp eq ptr %i.bj, null
  br i1 %.not.i, label %.thread, label %bb.q

bb.q:                                             ; preds = %sqlite3DbMallocRaw.exit.i, %bb.o
  %.0.i11.i = phi ptr [ %i.bj, %sqlite3DbMallocRaw.exit.i ], [ %i.bh, %bb.o ] ; 9 uses
  %i.bk = zext i32 %i.bd to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0.i11.i, i8 0, i64 %i.bk, i1 false)
  %i.bl = sext i32 %2 to i64                      ; 2 uses
  %i.bm = trunc i32 %spec.store.select to i16
  store i16 %i.bm, ptr %.0.i11.i, align 8, !tbaa !199
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 16
  store ptr %i.bb, ptr %i.bn, align 8, !tbaa !434
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 2
  store i8 %4, ptr %i.bo, align 2, !tbaa !483
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 48 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bp, ptr align 1 %1, i64 %i.bl, i1 false)
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 %i.bl
  store i8 0, ptr %i.bq, align 1, !tbaa !37
  %i.br = tail call fastcc ptr @sqlite3HashInsert(ptr noundef nonnull %i.a, ptr noundef nonnull %i.bp, i32 noundef %2, ptr noundef nonnull %.0.i11.i)
  %i.bs = icmp eq ptr %.0.i11.i, %i.br
  br i1 %i.bs, label %sqlite3_free.exit, label %.thread82

sqlite3_free.exit:                                ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 1, ptr %i.bt, align 2, !tbaa !129
  %i.bu = getelementptr inbounds i8, ptr %.0.i11.i, i64 -8 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !28
  %sext.i = shl i64 %i.bv, 32
  %i.bw = ashr exact i64 %sext.i, 32
  %i.bx = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.by = sub nsw i64 %i.bx, %i.bw
  store i64 %i.by, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.bu) #43
  br label %bb.t

bb.r:                                             ; preds = %._crit_edge
  %.not73 = icmp eq ptr %.062.lcssa, null
  br i1 %.not73, label %.thread, label %.thread82

.thread82:                                        ; preds = %bb.q, %bb.r
  %.385 = phi ptr [ %.062.lcssa, %bb.r ], [ %.0.i11.i, %bb.q ] ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.385, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !486
  %.not74 = icmp eq ptr %i.ca, null
  br i1 %.not74, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.thread82
  %i.cb = getelementptr inbounds nuw i8, ptr %.385, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !485
  %i.cd = icmp ne ptr %i.cc, null
  %or.cond7 = or i1 %6, %i.cd
  br i1 %or.cond7, label %bb.t, label %.thread

.thread:                                          ; preds = %sqlite3DbMallocRaw.exit.i, %bb.p, %bb.n, %bb.s, %bb.r
  br label %bb.t

bb.t:                                             ; preds = %.thread82, %bb.s, %.thread, %sqlite3_free.exit
  %.065 = phi ptr [ null, %sqlite3_free.exit ], [ null, %.thread ], [ %.385, %bb.s ], [ %.385, %.thread82 ]
  ret ptr %.065
}

; Function Attrs: nounwind uwtable
define internal void @sqlite3InvalidFunction(ptr noundef initializes((72, 76)) %0, i32 %1, ptr nofree readnone captures(none) %2) #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !224
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = tail call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef null, ptr noundef nonnull @.str.549, ptr noundef nonnull %i.b) ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 1, ptr %i.d, align 8, !tbaa !175
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %sqlite3_result_error.exit.thread5, label %bb.b

sqlite3_result_error.exit.thread5:                ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.f = load i16, ptr %i.e, align 4, !tbaa !124
  %i.g = and i16 %i.f, -32
  %i.h = or disjoint i16 %i.g, 1
  store i16 %i.h, ptr %i.e, align 4, !tbaa !124
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 54
  store i8 5, ptr %i.i, align 2, !tbaa !126
  br label %sqlite3_free.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %strlen.i.i = tail call i64 @strlen(ptr nonnull readonly dereferenceable(1) %i.c)
  %.249.i.i = trunc i64 %strlen.i.i to i32        ; 2 uses
  %.0.i.i = add nsw i32 %.249.i.i, 1              ; 2 uses
  %i.k = tail call fastcc i32 @sqlite3VdbeMemGrow(ptr noundef nonnull %i.j, i32 noundef %.0.i.i, i32 noundef 0)
  %.not58.i.i = icmp eq i32 %i.k, 0
  br i1 %.not58.i.i, label %sqlite3_result_error.exit, label %sqlite3_result_error.exit.thread

sqlite3_result_error.exit:                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !119
  %i.n = sext i32 %.0.i.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull readonly align 1 %i.c, i64 %i.n, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.249.i.i, ptr %i.o, align 8, !tbaa !123
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i16 98, ptr %i.p, align 4, !tbaa !124
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 55
  store i8 1, ptr %i.q, align 1, !tbaa !125
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 54
  store i8 3, ptr %i.r, align 2, !tbaa !126
  br label %sqlite3_result_error.exit.thread

sqlite3_result_error.exit.thread:                 ; preds = %bb.b, %sqlite3_result_error.exit
  %i.s = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !28
  %sext.i = shl i64 %i.t, 32
  %i.u = ashr exact i64 %sext.i, 32
  %i.v = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.w = sub nsw i64 %i.v, %i.u
  store i64 %i.w, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.s) #43
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %sqlite3_result_error.exit.thread5, %sqlite3_result_error.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local ptr @sqlite3_trace(ptr nofree noundef captures(none) initializes((136, 144)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !498
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %1, ptr %i.c, align 8, !tbaa !499
  store ptr %2, ptr %i.a, align 8, !tbaa !498
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local ptr @sqlite3_profile(ptr nofree noundef captures(none) initializes((152, 160)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !206
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %1, ptr %i.c, align 8, !tbaa !181
  store ptr %2, ptr %i.a, align 8, !tbaa !206
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local ptr @sqlite3_commit_hook(ptr nofree noundef captures(none) initializes((176, 184)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !500
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %1, ptr %i.c, align 8, !tbaa !501
  store ptr %2, ptr %i.a, align 8, !tbaa !500
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local ptr @sqlite3_update_hook(ptr nofree noundef captures(none) initializes((208, 216)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !502
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %1, ptr %i.c, align 8, !tbaa !503
  store ptr %2, ptr %i.a, align 8, !tbaa !502
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local ptr @sqlite3_rollback_hook(ptr nofree noundef captures(none) initializes((192, 200)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !504
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %1, ptr %i.c, align 8, !tbaa !505
  store ptr %2, ptr %i.a, align 8, !tbaa !504
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef nonnull ptr @sqlite3ErrStr(i32 noundef %0) unnamed_addr #10 {
bb.a:
  %trunc = trunc i32 %0 to i8
  %i.a = icmp ult i8 %trunc, 102
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %trunc.mask = and i32 %0, 127
  %i.b = zext nneg i32 %trunc.mask to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.sqlite3ErrStr, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.572, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sqlite3_errmsg16(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 72
  %.val = load i32, ptr %i.a, align 8, !tbaa !207
  switch i32 %.val, label %bb.g [
    i32 -264537850, label %bb.c
    i32 -1607883113, label %bb.c
    i32 1266094736, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !128
  %i.d = icmp eq i32 %i.c, 21
  br i1 %i.d, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !109
  %i.g = tail call fastcc ptr @sqlite3ValueText(ptr noundef %i.f, i8 noundef zeroext 2) ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !109  ; 8 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %sqlite3ValueSetStr.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load i32, ptr %i.b, align 8, !tbaa !128
  %i.k = tail call fastcc ptr @sqlite3ErrStr(i32 noundef %i.j) ; 2 uses
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.k)
  %.249.i = trunc i64 %strlen.i to i32
  tail call fastcc void @sqlite3VdbeMemRelease(ptr noundef nonnull %i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.k, ptr %i.l, align 8, !tbaa !119
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr null, ptr %i.m, align 8, !tbaa !122
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i32 %.249.i, ptr %i.n, align 8, !tbaa !123
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  store i16 162, ptr %i.o, align 4, !tbaa !124
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 39
  store i8 1, ptr %i.p, align 1, !tbaa !125
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 38
  store i8 3, ptr %i.q, align 2, !tbaa !126
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !109
  br label %sqlite3ValueSetStr.exit

sqlite3ValueSetStr.exit:                          ; preds = %bb.e, %bb.f
  %i.r = phi ptr [ null, %bb.e ], [ %.pre, %bb.f ]
end_hunk_3
begin_hunk_4_@pager_end_transaction:bb.a
  store i8 0, ptr %i.ad, align 4, !tbaa !670
  br label %bb.k

bb.k:                                             ; preds = %sqlite3OsClose.exit, %bb.h, %sqlite3PagerStmtCommit.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !667
  %.not47 = icmp eq i8 %i.ao, 0
  br i1 %.not47, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 27
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !648
  %.not48 = icmp eq i8 %i.aq, 0
  br i1 %.not48, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !675 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !531
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !691
  %i.aw = tail call i32 %i.av(ptr noundef nonnull %i.as, i64 noundef 0) #43, !inline_history !692 ; 2 uses
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 0, ptr %i.ay, align 8, !tbaa !649
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.az, align 1, !tbaa !677
  br label %bb.r

bb.o:                                             ; preds = %bb.m, %bb.l
  %.041 = phi i32 [ %i.aw, %bb.m ], [ 0, %bb.l ]  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !675 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !531 ; 2 uses
  %.not.i52 = icmp eq ptr %i.bc, null
  br i1 %.not.i52, label %sqlite3OsClose.exit54, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !672
  %i.bf = tail call i32 %i.be(ptr noundef nonnull %i.bb) #43, !inline_history !673 ; 0 uses
  store ptr null, ptr %i.bb, align 8, !tbaa !531
  br label %sqlite3OsClose.exit54

sqlite3OsClose.exit54:                            ; preds = %bb.o, %bb.p
  store i8 0, ptr %i.an, align 8, !tbaa !667
  %i.bg = icmp eq i32 %.041, 0
  br i1 %i.bg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %sqlite3OsClose.exit54
  %i.bh = load ptr, ptr %0, align 8, !tbaa !693   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !694
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !695
  %i.bm = tail call i32 %i.bl(ptr noundef %i.bh, ptr noundef %i.bj, i32 noundef 0) #43, !inline_history !696
  br label %bb.r

bb.r:                                             ; preds = %sqlite3OsClose.exit54, %bb.q, %bb.n
  %.1 = phi i32 [ 0, %bb.n ], [ %i.bm, %bb.q ], [ %.041, %sqlite3OsClose.exit54 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !676
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %i.bo)
  store ptr null, ptr %i.bn, align 8, !tbaa !676
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.04257 = load ptr, ptr %i.bp, align 8, !tbaa !653 ; 2 uses
  %.not4958 = icmp eq ptr %.04257, null
  br i1 %.not4958, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r, %.lr.ph
  %.04259 = phi ptr [ %.042, %.lr.ph ], [ %.04257, %bb.r ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.04259, i64 56
  %i.br = getelementptr inbounds nuw i8, ptr %.04259, i64 48
  store i32 0, ptr %i.bq, align 8
  %.042 = load ptr, ptr %i.br, align 8, !tbaa !653 ; 2 uses
  %.not49 = icmp eq ptr %.042, null
  br i1 %.not49, label %._crit_edge, label %.lr.ph, !llvm.loop !697

._crit_edge:                                      ; preds = %.lr.ph, %bb.r
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr null, ptr %i.bs, align 8, !tbaa !684
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 0, ptr %i.bt, align 2, !tbaa !666
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.bu, align 4, !tbaa !698
  br label %bb.s

bb.s:                                             ; preds = %bb.k, %._crit_edge
  %.2 = phi i32 [ %.1, %._crit_edge ], [ 0, %bb.k ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 27
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !648
  %.not50 = icmp eq i8 %i.bw, 0
  br i1 %.not50, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !524 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !531 ; 2 uses
  %.not.i55 = icmp eq ptr %i.bz, null
  br i1 %.not.i55, label %.sink.split, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !668
  %i.cc = tail call i32 %i.cb(ptr noundef nonnull %i.by, i32 noundef range(i32 0, 2) 1) #43, !inline_history !669
  br label %.sink.split

bb.v:                                             ; preds = %bb.s
  %i.cd = load i8, ptr %i.a, align 2, !tbaa !651
  %i.ce = icmp eq i8 %i.cd, 5
  br i1 %i.ce, label %.sink.split, label %bb.w

.sink.split:                                      ; preds = %bb.v, %bb.u, %bb.t
  %.sink = phi i8 [ 1, %bb.u ], [ 1, %bb.t ], [ 4, %bb.v ]
  %.0.ph = phi i32 [ %i.cc, %bb.u ], [ 0, %bb.t ], [ 0, %bb.v ]
  store i8 %.sink, ptr %i.a, align 2, !tbaa !651
  br label %bb.w

bb.w:                                             ; preds = %.sink.split, %bb.v
  %.0 = phi i32 [ 0, %bb.v ], [ %.0.ph, %.sink.split ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.cf, align 4, !tbaa !663
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 0, ptr %i.cg, align 1, !tbaa !699
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 0, ptr %i.ch, align 1, !tbaa !700
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !701
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !702
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 -1, ptr %i.cl, align 8, !tbaa !664
  %i.cm = icmp eq i32 %.2, 0
  %i.cn = select i1 %i.cm, i32 %.0, i32 %.2
  br label %bb.x

bb.x:                                             ; preds = %bb.a, %bb.w
  %.043 = phi i32 [ %i.cn, %bb.w ], [ 0, %bb.a ]
  ret i32 %.043
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @pager_playback(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !693    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #43
  store i32 0, ptr %i.e, align 4, !tbaa !4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !675  ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !531
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !703
  %i.l = call i32 %i.k(ptr noundef nonnull %i.h, ptr noundef nonnull %i.c) #43, !inline_history !704 ; 2 uses
  %i.m = icmp ne i32 %i.l, 0
  %i.n = load i64, ptr %i.c, align 8
  %i.o = icmp eq i64 %i.n, 0
  %or.cond = select i1 %i.m, i1 true, i1 %i.o
  br i1 %or.cond, label %.loopexit88, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !705  ; 3 uses
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !675
  %i.s = load ptr, ptr %0, align 8, !tbaa !693
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !706
  %i.v = add nsw i32 %i.u, 1
  %i.w = call fastcc i32 @readMasterJournal(ptr noundef %i.r, ptr noundef %i.q, i32 noundef %i.v) ; 2 uses
  switch i32 %i.w, label %.thread80 [
    i32 0, label %bb.c
    i32 101, label %.thread
  ]

bb.c:                                             ; preds = %bb.b
  %i.x = load i8, ptr %i.q, align 1, !tbaa !37
  %.not58 = icmp eq i8 %i.x, 0
  br i1 %.not58, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !707
  %i.aa = call i32 %i.z(ptr noundef %i.f, ptr noundef nonnull %i.q, i32 noundef 0) #43, !inline_history !708
  %.not59 = icmp eq i32 %i.aa, 0
  br i1 %.not59, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  store i64 0, ptr %i.ab, align 8, !tbaa !649
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %bb.e
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !28
  %i.aj = call fastcc i32 @readJournalHdr(ptr noundef nonnull %0, i64 noundef %i.ai, ptr noundef %i.d, ptr noundef %i.e) ; 2 uses
  switch i32 %i.aj, label %.thread80 [
    i32 0, label %bb.f
    i32 101, label %.thread
  ]

bb.f:                                             ; preds = %.loopexit
  %i.ak = load i32, ptr %i.d, align 4, !tbaa !4   ; 2 uses
  %i.al = icmp eq i32 %i.ak, -1
  %.pre99.pre = load i32, ptr %i.ac, align 8, !tbaa !709 ; 3 uses
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.am = load i64, ptr %i.c, align 8, !tbaa !28
  %i.an = sext i32 %.pre99.pre to i64
  %i.ao = sub nsw i64 %i.am, %i.an
  %i.ap = load i32, ptr %i.ad, align 4, !tbaa !647
  %i.aq = add nsw i32 %i.ap, 8
  %i.ar = sext i32 %i.aq to i64
  %i.as = sdiv i64 %i.ao, %i.ar
  %i.at = trunc i64 %i.as to i32                  ; 2 uses
  store i32 %i.at, ptr %i.d, align 4, !tbaa !4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.au = phi i32 [ %i.at, %bb.g ], [ %i.ak, %bb.f ] ; 3 uses
  %2 = or i32 %i.au, %1
  %or.cond4.not = icmp eq i32 %2, 0
  %.pre = load i64, ptr %i.ab, align 8, !tbaa !649 ; 3 uses
  br i1 %or.cond4.not, label %bb.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h
  %.pre100 = sext i32 %.pre99.pre to i64
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.av = load i64, ptr %i.ae, align 8, !tbaa !710
  %i.aw = sext i32 %.pre99.pre to i64             ; 3 uses
  %i.ax = add nsw i64 %i.av, %i.aw
  %i.ay = icmp eq i64 %i.ax, %.pre
  br i1 %i.ay, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.az = load i64, ptr %i.c, align 8, !tbaa !28
  %i.ba = sub nsw i64 %i.az, %.pre
  %i.bb = load i32, ptr %i.ad, align 4, !tbaa !647
  %i.bc = add nsw i32 %i.bb, 8
  %i.bd = sext i32 %i.bc to i64
  %i.be = sdiv i64 %i.ba, %i.bd
  %i.bf = trunc i64 %i.be to i32                  ; 2 uses
  store i32 %i.bf, ptr %i.d, align 4, !tbaa !4
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.j, %bb.i
  %.pre-phi = phi i64 [ %.pre100, %._crit_edge ], [ %i.aw, %bb.j ], [ %i.aw, %bb.i ]
  %i.bg = phi i32 [ %i.au, %._crit_edge ], [ %i.bf, %bb.j ], [ %i.au, %bb.i ] ; 2 uses
  %i.bh = icmp eq i64 %.pre, %.pre-phi
  br i1 %i.bh, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.bi = load i32, ptr %i.e, align 4, !tbaa !4   ; 2 uses
  %i.bj = load i8, ptr %i.af, align 2, !tbaa !651
  %i.bk = icmp ugt i8 %i.bj, 3
  br i1 %i.bk, label %bb.m, label %pager_truncate.exit

bb.m:                                             ; preds = %bb.l
  %i.bl = load ptr, ptr %i.ag, align 8, !tbaa !524 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !531 ; 2 uses
  %.not.i = icmp eq ptr %i.bm, null
  br i1 %.not.i, label %pager_truncate.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !703
  %i.bp = call i32 %i.bo(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.b) #43, !inline_history !711 ; 2 uses
  %i.bq = load i32, ptr %i.ad, align 4, !tbaa !647
  %i.br = sext i32 %i.bq to i64
  %i.bs = sext i32 %i.bi to i64
  %i.bt = mul nsw i64 %i.br, %i.bs                ; 2 uses
  %i.bu = icmp eq i32 %i.bp, 0
  br i1 %i.bu, label %bb.o, label %.thread21.i

.thread21.i:                                      ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  br label %.thread80

bb.o:                                             ; preds = %bb.n
  %i.bv = load i64, ptr %i.b, align 8, !tbaa !28
  %i.bw = icmp sgt i64 %i.bv, %i.bt
  br i1 %i.bw, label %bb.p, label %.thread19.i

.thread19.i:                                      ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  br label %pager_truncate.exit

bb.p:                                             ; preds = %bb.o
  %i.bx = load ptr, ptr %i.ag, align 8, !tbaa !524 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !531
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !691
  %i.cb = call i32 %i.ca(ptr noundef nonnull %i.bx, i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.bt) #43, !inline_history !712 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %pager_truncate.exit, label %.thread80

pager_truncate.exit:                              ; preds = %bb.l, %bb.m, %.thread19.i, %bb.p
  store i32 %i.bi, ptr %i.ah, align 8, !tbaa !664
  call fastcc void @pager_truncate_cache(ptr noundef nonnull %0)
  br label %bb.q

bb.q:                                             ; preds = %pager_truncate.exit, %bb.k
  %.not = icmp eq i32 %i.bg, 0
  br i1 %.not, label %.loopexit.backedge, label %.lr.ph

.loopexit.backedge:                               ; preds = %bb.s, %bb.q, %bb.r
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.q, %bb.s
  %.05493 = phi i32 [ %i.ch, %bb.s ], [ 0, %bb.q ]
  %i.cd = load ptr, ptr %i.g, align 8, !tbaa !675
  %i.ce = load i64, ptr %i.ab, align 8, !tbaa !649
  %i.cf = call fastcc i32 @pager_playback_one_page(ptr noundef nonnull %0, ptr noundef %i.cd, i64 noundef %i.ce, i32 noundef 1) ; 2 uses
  switch i32 %i.cf, label %.loopexit88 [
    i32 0, label %bb.s
    i32 101, label %bb.r
  ]

bb.r:                                             ; preds = %.lr.ph
  %i.cg = load i64, ptr %i.c, align 8, !tbaa !28
  store i64 %i.cg, ptr %i.ab, align 8, !tbaa !649
  br label %.loopexit.backedge

bb.s:                                             ; preds = %.lr.ph
  %i.ch = add nuw i32 %.05493, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.ch, %i.bg
  br i1 %exitcond.not, label %.loopexit.backedge, label %.lr.ph, !llvm.loop !713

.loopexit88:                                      ; preds = %.lr.ph, %bb.a
  %.052 = phi i32 [ %i.l, %bb.a ], [ %i.cf, %.lr.ph ] ; 2 uses
  %i.ci = icmp eq i32 %.052, 0
  br i1 %i.ci, label %.thread, label %.thread80

.thread:                                          ; preds = %.loopexit, %bb.b, %bb.d, %.loopexit88
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !705 ; 5 uses
  %i.cl = load ptr, ptr %i.g, align 8, !tbaa !675
  %i.cm = load ptr, ptr %0, align 8, !tbaa !693
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !706
  %i.cp = add nsw i32 %i.co, 1
  %i.cq = call fastcc i32 @readMasterJournal(ptr noundef %i.cl, ptr noundef %i.ck, i32 noundef %i.cp) ; 2 uses
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.t, label %.thread80

bb.t:                                             ; preds = %.thread
  %i.cs = call fastcc i32 @pager_end_transaction(ptr noundef nonnull %0) ; 2 uses
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.u, label %.thread80

bb.u:                                             ; preds = %bb.t
  %i.cu = load i8, ptr %i.ck, align 1, !tbaa !37
  %.not63 = icmp eq i8 %i.cu, 0
  br i1 %.not63, label %.thread80, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cv = load ptr, ptr %0, align 8, !tbaa !693   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !714
  %i.cy = shl nsw i32 %i.cx, 1
  %i.cz = call ptr @sqlite3_malloc(i32 noundef %i.cy) ; 11 uses
  %i.da = load i32, ptr %i.cw, align 4, !tbaa !714
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds i8, ptr %i.cz, i64 %i.db ; 5 uses
  %.not.i64 = icmp eq ptr %i.cz, null
  br i1 %.not.i64, label %pager_delmaster.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 40 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !715
  %i.df = call i32 %i.de(ptr noundef nonnull %i.cv, ptr noundef nonnull %i.ck, ptr noundef nonnull %i.cz, i32 noundef 16385, ptr noundef null) #43, !inline_history !716 ; 2 uses
  %.not66.not.i = icmp eq i32 %i.df, 0
  br i1 %.not66.not.i, label %bb.x, label %sqlite3OsClose.exit80.thread.i

bb.x:                                             ; preds = %bb.w
  %i.dg = load ptr, ptr %i.cz, align 8, !tbaa !531
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 48
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !703
  %i.dj = call i32 %i.di(ptr noundef nonnull %i.cz, ptr noundef nonnull %i.a) #43, !inline_history !717 ; 2 uses
  %.not67.i = icmp eq i32 %i.dj, 0
  br i1 %.not67.i, label %bb.y, label %.thread114.i

bb.y:                                             ; preds = %bb.x
  %i.dk = load i64, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.dl = icmp sgt i64 %i.dk, 0
  br i1 %i.dl, label %bb.z, label %.thread106.i

bb.z:                                             ; preds = %bb.y
  %i.dm = load ptr, ptr %0, align 8, !tbaa !693
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !706
  %i.dp = add nsw i32 %i.do, 1                    ; 2 uses
  %i.dq = trunc i64 %i.dk to i32
  %i.dr = add i32 %i.dp, %i.dq
  %i.ds = call ptr @sqlite3_malloc(i32 noundef %i.dr) ; 11 uses
  %.not68.i = icmp eq ptr %i.ds, null
  br i1 %.not68.i, label %.thread114.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dt = load i64, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %i.ds, i64 %i.dt ; 3 uses
  %i.dv = trunc i64 %i.dt to i32
  %i.dw = load ptr, ptr %i.cz, align 8, !tbaa !531
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !718
  %i.dz = call i32 %i.dy(ptr noundef nonnull %i.cz, ptr noundef nonnull %i.ds, i32 noundef %i.dv, i64 noundef 0) #43, !inline_history !719 ; 2 uses
  %.not69.i = icmp eq i32 %i.dz, 0
  br i1 %.not69.i, label %.preheader.i, label %sqlite3_free.exit.i

.preheader.i:                                     ; preds = %bb.aa
  %i.ea = ptrtoint ptr %i.ds to i64
  %i.eb = load i64, ptr %i.a, align 8, !tbaa !28
  %i.ec = icmp sgt i64 %i.eb, 0
  br i1 %i.ec, label %.lr.ph.i, label %.thread106.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cv, i64 56
  br label %bb.ab

bb.ab:                                            ; preds = %.thread101.i, %.lr.ph.i
  %.054148.i = phi ptr [ %i.ds, %.lr.ph.i ], [ %i.es, %.thread101.i ] ; 4 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !707
  %i.ef = call i32 %i.ee(ptr noundef nonnull %i.cv, ptr noundef %.054148.i, i32 noundef 0) #43, !inline_history !720
  %.not70.i = icmp eq i32 %i.ef, 0
  br i1 %.not70.i, label %.thread101.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eg = load ptr, ptr %i.dd, align 8, !tbaa !715
  %i.eh = call i32 %i.eg(ptr noundef nonnull %i.cv, ptr noundef %.054148.i, ptr noundef nonnull %i.dc, i32 noundef 2049, ptr noundef null) #43, !inline_history !716 ; 2 uses
  %.not71.i = icmp eq i32 %i.eh, 0
  br i1 %.not71.i, label %bb.ad, label %.thread103.i

bb.ad:                                            ; preds = %bb.ac
  %i.ei = call fastcc i32 @readMasterJournal(ptr noundef nonnull %i.dc, ptr noundef nonnull %i.du, i32 noundef %i.dp) ; 2 uses
  %i.ej = load ptr, ptr %i.dc, align 8, !tbaa !531 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ej, null
  br i1 %.not.i.i, label %sqlite3OsClose.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !672
  %i.em = call i32 %i.el(ptr noundef nonnull %i.dc) #43, !inline_history !721 ; 0 uses
  store ptr null, ptr %i.dc, align 8, !tbaa !531
  br label %sqlite3OsClose.exit.i

end_hunk_4
begin_hunk_5_@sqlite3VdbeMemFinalize:bb.a
  %i.q = load i32, ptr %i.i, align 8, !tbaa !175
  %.not13 = icmp ne i32 %i.q, 0
  %i.r = zext i1 %.not13 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %.0 = phi i32 [ %i.r, %bb.d ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 6) i32 @sqlite3VdbeHalt(ptr nofree noundef captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !106    ; 28 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 42
  %i.d = load i8, ptr %i.c, align 2, !tbaa !129
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 7, ptr %i.e, align 4, !tbaa !127
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !154  ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %closeAllCursorsExceptActiveVtabs.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !155  ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph.i, label %closeAllCursorsExceptActiveVtabs.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 341
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i
  %i.m = phi i32 [ %i.j, %.lr.ph.i ], [ %i.v, %bb.h ] ; 2 uses
  %i.n = phi ptr [ %i.g, %.lr.ph.i ], [ %i.w, %bb.h ] ; 3 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !283  ; 3 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i8, ptr %i.l, align 1, !tbaa !610
  %.not13.i = icmp eq i8 %i.q, 0
  br i1 %.not13.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !611
  %.not14.i = icmp eq ptr %i.s, null
  br i1 %.not14.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call fastcc void @sqlite3VdbeFreeCursor(ptr noundef nonnull %0, ptr noundef nonnull %i.p)
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !154  ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i
  store ptr null, ptr %i.u, align 8, !tbaa !283
  %.pre.i = load i32, ptr %i.i, align 8, !tbaa !155
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %i.v = phi i32 [ %.pre.i, %bb.g ], [ %i.m, %bb.f ], [ %i.m, %bb.d ] ; 2 uses
  %i.w = phi ptr [ %i.t, %bb.g ], [ %i.n, %bb.f ], [ %i.n, %bb.d ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.x = sext i32 %i.v to i64
  %i.y = icmp slt i64 %indvars.iv.next.i, %i.x
  br i1 %i.y, label %bb.d, label %closeAllCursorsExceptActiveVtabs.exit, !llvm.loop !612

closeAllCursorsExceptActiveVtabs.exit:            ; preds = %bb.h, %bb.c, %.preheader.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !105
  %.not119 = icmp eq i32 %i.aa, -1108210269
  br i1 %.not119, label %bb.i, label %.critedge133

bb.i:                                             ; preds = %closeAllCursorsExceptActiveVtabs.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !107
  %i.ad = icmp sgt i32 %i.ac, -1
  br i1 %i.ad, label %bb.j, label %.critedge134.thread

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 8 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !127 ; 3 uses
  %i.ag = and i32 %i.af, 255                      ; 3 uses
  %i.ah = icmp eq i32 %i.ag, 7
  %trunc = trunc i32 %i.af to i8
  switch i8 %trunc, label %switch.edge.thread [
    i8 10, label %switch.edge
    i8 9, label %switch.edge
    i8 7, label %switch.edge
    i8 13, label %switch.edge
  ]

switch.edge:                                      ; preds = %bb.j, %bb.j, %bb.j, %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !135 ; 4 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %switch.edge
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !136 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.aj to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.an = icmp eq i32 %i.aj, 1
  br i1 %i.an, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.k

bb.k:                                             ; preds = %bb.q, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.q ] ; 3 uses
  %.0108157 = phi i32 [ 0, %.lr.ph.new ], [ %.1109.1, %bb.q ] ; 2 uses
  %.0110156 = phi i32 [ 0, %.lr.ph.new ], [ %.1111.1, %bb.q ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.q ]
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %indvars.iv ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !137
  switch i8 %i.ap, label %bb.n [
    i8 98, label %bb.l
    i8 41, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !140
  %i.as = or i32 %i.ar, %.0110156
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m
  %.1111 = phi i32 [ %.0110156, %bb.k ], [ %i.as, %bb.l ], [ %.0110156, %bb.m ] ; 3 uses
  %.1109 = phi i32 [ %.0108157, %bb.k ], [ %.0108157, %bb.l ], [ 1, %bb.m ] ; 2 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %indvars.iv ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load i8, ptr %i.au, align 8, !tbaa !137
  switch i8 %i.av, label %bb.q [
    i8 98, label %bb.p
    i8 41, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !140
  %i.ay = or i32 %i.ax, %.1111
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.1111.1 = phi i32 [ %.1111, %bb.n ], [ %i.ay, %bb.p ], [ %.1111, %bb.o ] ; 3 uses
  %.1109.1 = phi i32 [ %.1109, %bb.n ], [ %.1109, %bb.p ], [ 1, %bb.o ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.k, !llvm.loop !749

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.0108157.epil.init = phi i32 [ 0, %.lr.ph ], [ %.1109.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.0110156.epil.init = phi i32 [ 0, %.lr.ph ], [ %.1111.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod242 = trunc i32 %i.aj to i1
  tail call void @llvm.assume(i1 %lcmp.mod242)
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %indvars.iv.epil.init ; 2 uses
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !137
  switch i8 %i.ba, label %._crit_edge.loopexit [
    i8 98, label %bb.s
    i8 41, label %bb.r
  ]

bb.r:                                             ; preds = %.epil.preheader
  br label %._crit_edge.loopexit

bb.s:                                             ; preds = %.epil.preheader
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !140
  %i.bd = or i32 %i.bc, %.0110156.epil.init
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.epil.preheader, %bb.r, %bb.s, %._crit_edge.loopexit.unr-lcssa
  %.1111.lcssa = phi i32 [ %.1111.1, %._crit_edge.loopexit.unr-lcssa ], [ %.0110156.epil.init, %.epil.preheader ], [ %i.bd, %bb.s ], [ %.0110156.epil.init, %bb.r ]
  %.1109.lcssa = phi i32 [ %.1109.1, %._crit_edge.loopexit.unr-lcssa ], [ %.0108157.epil.init, %.epil.preheader ], [ %.0108157.epil.init, %bb.s ], [ 1, %bb.r ]
  %i.be = icmp ne i32 %.1111.lcssa, 0
  %1 = icmp ne i32 %.1109.lcssa, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %switch.edge
  %.0110.lcssa = phi i1 [ false, %switch.edge ], [ %i.be, %._crit_edge.loopexit ]
  %.0108.lcssa = phi i1 [ false, %switch.edge ], [ %1, %._crit_edge.loopexit ] ; 2 uses
  %i.bf = icmp ne i32 %i.ag, 9
  %or.cond6 = or i1 %i.bf, %.0110.lcssa
  br i1 %or.cond6, label %bb.t, label %switch.edge.thread

bb.t:                                             ; preds = %._crit_edge
  %i.bg = icmp eq i32 %i.af, 2826
  %or.cond8 = select i1 %i.bg, i1 %.0108.lcssa, i1 false
  br i1 %or.cond8, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 5, ptr %i.ae, align 4, !tbaa !127
  br label %switch.edge.thread

bb.v:                                             ; preds = %bb.t
  %i.bh = icmp eq i32 %i.ag, 13
  %or.cond10 = or i1 %i.ah, %i.bh
  %or.cond12 = select i1 %or.cond10, i1 %.0108.lcssa, i1 false
  br i1 %or.cond12, label %switch.edge.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call fastcc void @invalidateCursorsOnModifiedBtrees(ptr noundef %i.b)
  tail call fastcc void @sqlite3RollbackAll(ptr noundef %i.b)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i8 1, ptr %i.bi, align 8, !tbaa !507
  br label %switch.edge.thread

switch.edge.thread:                               ; preds = %bb.j, %._crit_edge, %bb.w, %bb.u, %bb.v
  %i.bj = phi i1 [ true, %bb.v ], [ true, %bb.u ], [ true, %._crit_edge ], [ true, %bb.w ], [ false, %bb.j ]
  %.not121 = phi i1 [ false, %bb.v ], [ false, %bb.u ], [ true, %._crit_edge ], [ true, %bb.w ], [ true, %bb.j ] ; 2 uses
  %.1106 = phi ptr [ @sqlite3BtreeRollbackStmt, %bb.v ], [ @sqlite3BtreeRollbackStmt, %bb.u ], [ null, %._crit_edge ], [ null, %bb.w ], [ null, %bb.j ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !507
  %.not120 = icmp eq i8 %i.bl, 0
  br i1 %.not120, label %bb.bp, label %bb.x

bb.x:                                             ; preds = %switch.edge.thread
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !180
  %i.bo = icmp eq i32 %i.bn, 1
  br i1 %i.bo, label %bb.y, label %bb.bp

bb.y:                                             ; preds = %bb.x
  %i.bp = load i32, ptr %i.ae, align 4, !tbaa !127
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !750
  %i.bt = icmp ne i32 %i.bs, 3
  %or.cond14 = or i1 %i.bj, %i.bt
  br i1 %or.cond14, label %bb.bo, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 352 ; 8 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !421 ; 3 uses
  store ptr null, ptr %i.bu, align 8, !tbaa !421
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 360 ; 4 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.af, %bb.aa
  %indvars.iv.i.i = phi i64 [ 0, %bb.aa ], [ %indvars.iv.next.i.i, %bb.af ] ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !422
  %i.by = sext i32 %i.bx to i64
  %i.bz = icmp slt i64 %indvars.iv.i.i, %i.by
  br i1 %i.bz, label %bb.ac, label %sqlite3VtabSync.exit.i

bb.ac:                                            ; preds = %bb.ab
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.i.i
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !423 ; 3 uses
  %.not.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i, label %sqlite3VtabSync.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !201
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 120
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !751 ; 2 uses
  %.not26.i.i = icmp eq ptr %i.ce, null
  br i1 %.not26.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cf = tail call i32 %i.ce(ptr noundef nonnull %i.cb) #43, !inline_history !752
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.1.i.i = phi i32 [ %i.cf, %bb.ae ], [ 0, %bb.ad ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %i.cg = icmp eq i32 %.1.i.i, 0
  br i1 %i.cg, label %bb.ab, label %sqlite3VtabSync.exit.thread.i, !llvm.loop !753

sqlite3VtabSync.exit.thread.i:                    ; preds = %bb.af
  store ptr %i.bv, ptr %i.bu, align 8, !tbaa !421
  br label %vdbeCommit.exit

sqlite3VtabSync.exit.i:                           ; preds = %bb.ac, %bb.ab
  store ptr %i.bv, ptr %i.bu, align 8, !tbaa !421
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 9 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !278 ; 4 uses
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %.lr.ph.i138, label %._crit_edge.thread.i

.lr.ph.i138:                                      ; preds = %sqlite3VtabSync.exit.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !235 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.ci to i64 ; 2 uses
  %xtraiter244 = and i64 %wide.trip.count.i, 1
  %i.cm = icmp eq i32 %i.ci, 1
  br i1 %i.cm, label %.epil.preheader243, label %.lr.ph.i138.new

.lr.ph.i138.new:                                  ; preds = %.lr.ph.i138
  %unroll_iter249 = and i64 %wide.trip.count.i, 2147483646
  br label %bb.ag

bb.ag:                                            ; preds = %sqlite3BtreeIsInTrans.exit.thread.i.1, %.lr.ph.i138.new
  %indvars.iv.i139 = phi i64 [ 0, %.lr.ph.i138.new ], [ %indvars.iv.next.i140.1, %sqlite3BtreeIsInTrans.exit.thread.i.1 ] ; 4 uses
  %.0120266.i = phi i32 [ 0, %.lr.ph.i138.new ], [ %.1121.i.1, %sqlite3BtreeIsInTrans.exit.thread.i.1 ]
  %.0140265.i = phi i32 [ 0, %.lr.ph.i138.new ], [ %i.db, %sqlite3BtreeIsInTrans.exit.thread.i.1 ] ; 2 uses
  %niter250 = phi i64 [ 0, %.lr.ph.i138.new ], [ %niter250.next.1, %sqlite3BtreeIsInTrans.exit.thread.i.1 ]
  %i.cn = getelementptr inbounds nuw [48 x i8], ptr %i.cl, i64 %indvars.iv.i139
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !427 ; 2 uses
  %.not.i190.i = icmp eq ptr %i.cp, null
  br i1 %.not.i190.i, label %sqlite3BtreeIsInTrans.exit.thread.i, label %sqlite3BtreeIsInTrans.exit.i

sqlite3BtreeIsInTrans.exit.i:                     ; preds = %bb.ag
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load i8, ptr %i.cq, align 8, !tbaa !754
  %.fr.i = freeze i8 %i.cr
  %i.cs = icmp eq i8 %.fr.i, 2                    ; 2 uses
  %spec.select375.i = select i1 %i.cs, i32 1, i32 %.0140265.i
  %i.ct = zext i1 %i.cs to i32
  br label %sqlite3BtreeIsInTrans.exit.thread.i

sqlite3BtreeIsInTrans.exit.thread.i:              ; preds = %bb.ag, %sqlite3BtreeIsInTrans.exit.i
  %.not180358.i = phi i32 [ %i.ct, %sqlite3BtreeIsInTrans.exit.i ], [ 0, %bb.ag ]
  %i.cu = phi i32 [ %spec.select375.i, %sqlite3BtreeIsInTrans.exit.i ], [ %.0140265.i, %bb.ag ] ; 2 uses
  %.1121.i = add nuw nsw i32 %.0120266.i, %.not180358.i
  %i.cv = getelementptr inbounds nuw [48 x i8], ptr %i.cl, i64 %indvars.iv.i139
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 56
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !427 ; 2 uses
  %.not.i190.i.1 = icmp eq ptr %i.cx, null
  br i1 %.not.i190.i.1, label %sqlite3BtreeIsInTrans.exit.thread.i.1, label %sqlite3BtreeIsInTrans.exit.i.1

sqlite3BtreeIsInTrans.exit.i.1:                   ; preds = %sqlite3BtreeIsInTrans.exit.thread.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !754
  %.fr.i.1 = freeze i8 %i.cz
  %i.da = icmp eq i8 %.fr.i.1, 2                  ; 2 uses
  %spec.select375.i.1 = select i1 %i.da, i32 1, i32 %i.cu
  br label %sqlite3BtreeIsInTrans.exit.thread.i.1

sqlite3BtreeIsInTrans.exit.thread.i.1:            ; preds = %sqlite3BtreeIsInTrans.exit.i.1, %sqlite3BtreeIsInTrans.exit.thread.i
  %.not180358.i.1 = phi i1 [ %i.da, %sqlite3BtreeIsInTrans.exit.i.1 ], [ false, %sqlite3BtreeIsInTrans.exit.thread.i ]
  %i.db = phi i32 [ %spec.select375.i.1, %sqlite3BtreeIsInTrans.exit.i.1 ], [ %i.cu, %sqlite3BtreeIsInTrans.exit.thread.i ] ; 3 uses
  %.not181360.i.1 = icmp ne i64 %indvars.iv.i139, 0
  %narrow.i.1 = and i1 %.not181360.i.1, %.not180358.i.1
  %spec.select.i.1 = zext i1 %narrow.i.1 to i32
  %.1121.i.1 = add nuw nsw i32 %.1121.i, %spec.select.i.1 ; 3 uses
  %indvars.iv.next.i140.1 = add nuw nsw i64 %indvars.iv.i139, 2 ; 2 uses
  %niter250.next.1 = add i64 %niter250, 2         ; 2 uses
  %niter250.ncmp.1 = icmp eq i64 %niter250.next.1, %unroll_iter249
  br i1 %niter250.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.ag, !llvm.loop !755

._crit_edge.i.unr-lcssa:                          ; preds = %sqlite3BtreeIsInTrans.exit.thread.i.1
  %lcmp.mod245.not = icmp eq i64 %xtraiter244, 0
  br i1 %lcmp.mod245.not, label %._crit_edge.i, label %.epil.preheader243

.epil.preheader243:                               ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i138
  %indvars.iv.i139.epil.init = phi i64 [ 0, %.lr.ph.i138 ], [ %indvars.iv.next.i140.1, %._crit_edge.i.unr-lcssa ]
  %.0120266.i.epil.init = phi i32 [ 0, %.lr.ph.i138 ], [ %.1121.i.1, %._crit_edge.i.unr-lcssa ]
  %.0140265.i.epil.init = phi i32 [ 0, %.lr.ph.i138 ], [ %i.db, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %lcmp.mod248 = trunc i32 %i.ci to i1
  tail call void @llvm.assume(i1 %lcmp.mod248)
  %i.dc = getelementptr inbounds nuw [48 x i8], ptr %i.cl, i64 %indvars.iv.i139.epil.init
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !427 ; 2 uses
  %.not.i190.i.epil = icmp eq ptr %i.de, null
  br i1 %.not.i190.i.epil, label %sqlite3BtreeIsInTrans.exit.thread.i.epil, label %sqlite3BtreeIsInTrans.exit.i.epil

sqlite3BtreeIsInTrans.exit.i.epil:                ; preds = %.epil.preheader243
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load i8, ptr %i.df, align 8, !tbaa !754
  %.fr.i.epil = freeze i8 %i.dg
  %i.dh = icmp eq i8 %.fr.i.epil, 2               ; 2 uses
  %spec.select375.i.epil = select i1 %i.dh, i32 1, i32 %.0140265.i.epil.init
  %i.di = zext i1 %i.dh to i32
  br label %sqlite3BtreeIsInTrans.exit.thread.i.epil

sqlite3BtreeIsInTrans.exit.thread.i.epil:         ; preds = %sqlite3BtreeIsInTrans.exit.i.epil, %.epil.preheader243
  %.not180358.i.epil = phi i32 [ %i.di, %sqlite3BtreeIsInTrans.exit.i.epil ], [ 0, %.epil.preheader243 ]
  %i.dj = phi i32 [ %spec.select375.i.epil, %sqlite3BtreeIsInTrans.exit.i.epil ], [ %.0140265.i.epil.init, %.epil.preheader243 ]
  %.1121.i.epil = add nuw nsw i32 %.0120266.i.epil.init, %.not180358.i.epil
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %sqlite3BtreeIsInTrans.exit.thread.i.epil
end_hunk_5
begin_hunk_6_@sqlite3BtreeGetMeta:bb.a
bb.f:                                             ; preds = %bb.e, %bb.d, %.lr.ph.split.i
  %i.q = getelementptr inbounds nuw i8, ptr %.037.i, i64 16
  %.0.i = load ptr, ptr %i.q, align 8, !tbaa !795 ; 2 uses
  %.not32.i = icmp eq ptr %.0.i, null
  br i1 %.not32.i, label %.loopexit, label %.lr.ph.split.i, !llvm.loop !1032

.loopexit:                                        ; preds = %bb.f, %bb.a, %bb.c
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !461
  %i.s = call fastcc i32 @sqlite3PagerAcquire(ptr noundef %i.r, i32 noundef 1, ptr noundef %i.a, i32 noundef 0) ; 2 uses
  %.not16 = icmp eq i32 %i.s, 0
  br i1 %.not16, label %bb.g, label %queryTableLock.exit

bb.g:                                             ; preds = %.loopexit
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !653  ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 80
  %.val = load ptr, ptr %i.u, align 8, !tbaa !658
  %i.v = shl nsw i32 %1, 2
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr i8, ptr %.val, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 36
  %i.z = load i32, ptr %i.y, align 1
  %i.aa = tail call i32 @llvm.bswap.i32(i32 %i.z)
  store i32 %i.aa, ptr %2, align 4, !tbaa !4
  tail call fastcc void @sqlite3PagerUnref(ptr noundef %i.t)
  %i.ab = load i8, ptr %i.f, align 1, !tbaa !456
  %.not.i17 = icmp eq i8 %i.ab, 0
  br i1 %.not.i17, label %queryTableLock.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !325
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 136 ; 3 uses
  %.043.i = load ptr, ptr %i.ad, align 8, !tbaa !795 ; 2 uses
  %.not3744.i = icmp eq ptr %.043.i, null
  br i1 %.not3744.i, label %._crit_edge.i, label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %bb.h, %bb.j
  %.045.i = phi ptr [ %.0.i19, %bb.j ], [ %.043.i, %bb.h ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.045.i, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1030
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i18
  %i.ah = load ptr, ptr %.045.i, align 8, !tbaa !796
  %i.ai = icmp eq ptr %i.ah, %0
  br i1 %i.ai, label %.loopexit.i, label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i18
  %i.aj = getelementptr inbounds nuw i8, ptr %.045.i, i64 16
  %.0.i19 = load ptr, ptr %i.aj, align 8, !tbaa !795 ; 2 uses
  %.not37.i = icmp eq ptr %.0.i19, null
  br i1 %.not37.i, label %._crit_edge.i, label %.lr.ph.i18, !llvm.loop !1033

._crit_edge.i:                                    ; preds = %bb.j, %bb.h
  %i.ak = tail call ptr @sqlite3_malloc(i32 noundef 24) ; 7 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %queryTableLock.exit, label %.loopexit.i.thread

.loopexit.i.thread:                               ; preds = %._crit_edge.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.al, i8 0, i64 12, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i32 1, ptr %i.am, align 8, !tbaa !1030
  store ptr %0, ptr %i.ak, align 8, !tbaa !796
  %i.an = load ptr, ptr %i.ad, align 8, !tbaa !1034
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !798
  store ptr %i.ak, ptr %i.ad, align 8, !tbaa !1034
  br label %bb.k

.loopexit.i:                                      ; preds = %bb.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.045.i, i64 12
  %.pre = load i8, ptr %.phi.trans.insert, align 4, !tbaa !1031
  %i.ap = icmp eq i8 %.pre, 0
  br i1 %i.ap, label %bb.k, label %queryTableLock.exit

bb.k:                                             ; preds = %.loopexit.i.thread, %.loopexit.i
  %.1.i27 = phi ptr [ %i.ak, %.loopexit.i.thread ], [ %.045.i, %.loopexit.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.1.i27, i64 12
  store i8 1, ptr %i.aq, align 4, !tbaa !1031
  br label %queryTableLock.exit

queryTableLock.exit:                              ; preds = %bb.e, %bb.k, %.loopexit.i, %._crit_edge.i, %bb.g, %bb.b, %.loopexit
  %.0 = phi i32 [ 6, %bb.b ], [ %i.s, %.loopexit ], [ 0, %bb.k ], [ 0, %bb.g ], [ 0, %.loopexit.i ], [ 7, %._crit_edge.i ], [ 6, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3BtreeUpdateMeta(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 -2147483647, -2147483648) %1, i32 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !325  ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !323
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !449
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !754
  %.not = icmp eq i8 %i.f, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  %i.h = load i8, ptr %i.g, align 1, !tbaa !778
  %.not15 = icmp eq i8 %i.h, 0
  %i.i = select i1 %.not15, i32 1, i32 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !632  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !802
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !630
  %i.p = tail call fastcc i32 @sqlite3PagerWrite(ptr noundef %i.o) ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.r = shl nsw i32 %1, 2
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr i8, ptr %i.m, i64 %i.s     ; 4 uses
  %i.u = getelementptr i8, ptr %i.t, i64 36
  %i.v = lshr i32 %2, 24
  %i.w = trunc nuw i32 %i.v to i8
  store i8 %i.w, ptr %i.u, align 1, !tbaa !37
  %i.x = lshr i32 %2, 16
  %i.y = trunc i32 %i.x to i8
  %i.z = getelementptr i8, ptr %i.t, i64 37
  store i8 %i.y, ptr %i.z, align 1, !tbaa !37
  %i.aa = lshr i32 %2, 8
  %i.ab = trunc i32 %i.aa to i8
  %i.ac = getelementptr i8, ptr %i.t, i64 38
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !37
  %i.ad = trunc i32 %2 to i8                      ; 2 uses
  %i.ae = getelementptr i8, ptr %i.t, i64 39
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !37
  %i.af = icmp eq i32 %1, 7
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 39
  store i8 %i.ad, ptr %i.ag, align 1, !tbaa !909
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ %i.i, %bb.b ], [ 0, %bb.e ], [ 0, %bb.d ], [ %i.p, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @allocateCursor(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !154
  %i.c = sext i32 %1 to i64                       ; 3 uses
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !283  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @sqlite3VdbeFreeCursor(ptr noundef nonnull %0, ptr noundef nonnull %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = tail call ptr @sqlite3_malloc(i32 noundef 168) ; 5 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %sqlite3MallocZero.exit.thread, label %bb.d

sqlite3MallocZero.exit.thread:                    ; preds = %bb.c
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !154
  %i.h = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.c
  store ptr null, ptr %i.h, align 8, !tbaa !283
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(168) %i.f, i8 0, i64 168, i1 false)
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !154
  %i.j = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.c
  store ptr %i.f, ptr %i.j, align 8, !tbaa !283
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %2, ptr %i.k, align 8, !tbaa !964
  br label %bb.e

bb.e:                                             ; preds = %sqlite3MallocZero.exit.thread, %bb.d
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3BtreeCursor(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %5) unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !323    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !325  ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.b, ptr %i.e, align 8, !tbaa !449
  store ptr null, ptr %5, align 8, !tbaa !326
  %6 = icmp ne i32 %2, 0                          ; 2 uses
  br i1 %6, label %bb.b, label %checkReadLocks.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 33
  %i.g = load i8, ptr %i.f, align 1, !tbaa !778
  %.not.i = icmp eq i8 %i.g, 0
  br i1 %.not.i, label %bb.c, label %btreeCursor.exit

bb.c:                                             ; preds = %bb.b
  %.021.in1.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.0212.i.i = load ptr, ptr %.021.in1.i.i, align 8, !tbaa !326 ; 2 uses
  %.not3.i.i = icmp eq ptr %.0212.i.i, null
  br i1 %.not3.i.i, label %checkReadLocks.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.critedge.i.i
  %.0214.i.i = phi ptr [ %.021.i.i, %.critedge.i.i ], [ %.0212.i.i, %bb.c ] ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0214.i.i, i64 105
  %i.i = load i8, ptr %i.h, align 1, !tbaa !315
  %.not24.i.i = icmp eq i8 %i.i, 1
  br i1 %.not24.i.i, label %bb.d, label %.critedge.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.0214.i.i, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !322
  %.not25.i.i = icmp eq i32 %i.k, %1
  br i1 %.not25.i.i, label %bb.e, label %.critedge.i.i

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.0214.i.i, i64 104
  %i.m = load i8, ptr %i.l, align 8, !tbaa !320
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %.0214.i.i, align 8, !tbaa !321
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !323  ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %btreeCursor.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not27.i.i = icmp eq ptr %i.p, %i.b
  br i1 %.not27.i.i, label %.critedge.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !327
  %i.t = and i32 %i.s, 16384
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %btreeCursor.exit, label %.critedge.i.i

bb.i:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.0214.i.i, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !328
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  %i.y = load i32, ptr %i.x, align 8, !tbaa !329
  %.not26.i.i = icmp eq i32 %i.y, %1
  br i1 %.not26.i.i, label %.critedge.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = tail call fastcc i32 @moveToRoot(ptr noundef nonnull %.0214.i.i) ; 0 uses
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.d, %.lr.ph.i.i
  %.021.in.i.i = getelementptr inbounds nuw i8, ptr %.0214.i.i, i64 16
  %.021.i.i = load ptr, ptr %.021.in.i.i, align 8, !tbaa !326 ; 2 uses
  %.not.i.i = icmp eq ptr %.021.i.i, null
  br i1 %.not.i.i, label %checkReadLocks.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !332

checkReadLocks.exit.thread.i:                     ; preds = %.critedge.i.i, %bb.c, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !632
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.k, label %bb.o

bb.k:                                             ; preds = %checkReadLocks.exit.thread.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !754
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !325
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !631
  %i.aj = tail call fastcc i32 @sqlite3BtreeBeginTrans(ptr noundef nonnull %0, i32 noundef 0) ; 2 uses
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !325 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  store i8 %i.ai, ptr %i.al, align 8, !tbaa !631
  store i8 0, ptr %i.ad, align 8, !tbaa !754
  %i.am = icmp eq i32 %i.aj, 0
  br i1 %i.am, label %bb.m, label %btreeCursor.exit

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 68 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !805
  %i.ap = add nsw i32 %i.ao, -1
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !805
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 33
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !778
  %i.as = icmp ne i8 %i.ar, 0
  %or.cond.i = and i1 %6, %i.as
  br i1 %or.cond.i, label %btreeCursor.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %checkReadLocks.exit.thread.i
  %i.at = tail call ptr @sqlite3_malloc(i32 noundef 144) ; 16 uses
  %.not.i60.i = icmp eq ptr %i.at, null
  br i1 %.not.i60.i, label %bb.x, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(144) %i.at, i8 0, i64 144, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48 ; 2 uses
  store i32 %1, ptr %i.au, align 8, !tbaa !322
  %i.av = icmp eq i32 %1, 1
  br i1 %i.av, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.aw = load ptr, ptr %i.d, align 8, !tbaa !461
  %i.ax = tail call fastcc i32 @sqlite3PagerPagecount(ptr noundef %i.aw)
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %getAndInitPage.exit.thread.i, label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.q
  %.pr.i = load i32, ptr %i.au, align 8, !tbaa !322
  br label %bb.r

bb.r:                                             ; preds = %thread-pre-split.i, %bb.p
  %i.az = phi i32 [ %.pr.i, %thread-pre-split.i ], [ %1, %bb.p ] ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.bb = icmp eq i32 %i.az, 0
  br i1 %i.bb, label %getAndInitPage.exit.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  %i.bc = load ptr, ptr %i.d, align 8, !tbaa !461
  %i.bd = call fastcc i32 @sqlite3PagerAcquire(ptr noundef %i.bc, i32 noundef %i.az, ptr noundef %i.a, i32 noundef 0) ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i.i, label %bb.t, label %sqlite3BtreeGetPage.exit.i.i

sqlite3BtreeGetPage.exit.i.i:                     ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %getAndInitPage.exit.thread.i

bb.t:                                             ; preds = %bb.s
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !653 ; 9 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !636
  %.not.i.i.i.i = icmp eq ptr %i.bf, null
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 88 ; 3 uses
  %i.bh = select i1 %.not.i.i.i.i, ptr null, ptr %i.bg
  %i.bi = getelementptr i8, ptr %i.be, i64 80
  %.val.i.i.i = load ptr, ptr %i.bi, align 8, !tbaa !658
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 200
  store ptr %.val.i.i.i, ptr %i.bj, align 8, !tbaa !802
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 208
  store ptr %i.be, ptr %i.bk, align 8, !tbaa !630
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 192
  store ptr %i.d, ptr %i.bl, align 8, !tbaa !803
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 216
  store i32 %i.az, ptr %i.bm, align 8, !tbaa !329
  %i.bn = icmp eq i32 %i.az, 1
  %i.bo = select i1 %i.bn, i8 100, i8 0
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 96
  store i8 %i.bo, ptr %i.bp, align 8, !tbaa !804
  store ptr %i.bh, ptr %i.ba, align 8, !tbaa !807
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  %i.bq = load i8, ptr %i.bg, align 8, !tbaa !824
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %getAndInitPage.exit.i, label %getAndInitPage.exit.thread69.i

getAndInitPage.exit.i:                            ; preds = %bb.t
  %i.bs = tail call fastcc i32 @sqlite3BtreeInitPage(ptr noundef nonnull %i.bg, ptr noundef null) ; 2 uses
  %.not55.i = icmp eq i32 %i.bs, 0
  br i1 %.not55.i, label %getAndInitPage.exit.thread69.i, label %getAndInitPage.exit.thread.i

getAndInitPage.exit.thread69.i:                   ; preds = %getAndInitPage.exit.i, %bb.t
  %.not56.i = icmp eq ptr %3, null
  %i.bt = select i1 %.not56.i, ptr @dfltCompare, ptr %3
  %i.bu = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !818
  %i.bv = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  store ptr %4, ptr %i.bv, align 8, !tbaa !819
  store ptr %0, ptr %i.at, align 8, !tbaa !321
  %i.bw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.d, ptr %i.bw, align 8, !tbaa !628
  %i.bx = trunc nuw nsw i32 %2 to i8
  %i.by = getelementptr inbounds nuw i8, ptr %i.at, i64 104
  store i8 %i.bx, ptr %i.by, align 8, !tbaa !320
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !453 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !454
  %.not57.i = icmp eq ptr %i.ca, null
  br i1 %.not57.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %getAndInitPage.exit.thread69.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  store ptr %i.at, ptr %i.cc, align 8, !tbaa !629
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %getAndInitPage.exit.thread69.i
  store ptr %i.at, ptr %i.bz, align 8, !tbaa !453
  %i.cd = getelementptr inbounds nuw i8, ptr %i.at, i64 105
  store i8 0, ptr %i.cd, align 1, !tbaa !315
  store ptr %i.at, ptr %5, align 8, !tbaa !326
  br label %btreeCursor.exit

getAndInitPage.exit.thread.i:                     ; preds = %getAndInitPage.exit.i, %sqlite3BtreeGetPage.exit.i.i, %bb.r, %bb.q
  %.048.ph.i = phi i32 [ %i.bs, %getAndInitPage.exit.i ], [ 16, %bb.q ], [ %i.bd, %sqlite3BtreeGetPage.exit.i.i ], [ 11, %bb.r ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !328 ; 2 uses
  %.not.i61.i = icmp eq ptr %i.cf, null
  br i1 %.not.i61.i, label %sqlite3_free.exit.i, label %bb.w

bb.w:                                             ; preds = %getAndInitPage.exit.thread.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 120
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !630
  tail call fastcc void @sqlite3PagerUnref(ptr noundef %i.ch)
  br label %sqlite3_free.exit.i

sqlite3_free.exit.i:                              ; preds = %bb.w, %getAndInitPage.exit.thread.i
  %i.ci = getelementptr inbounds i8, ptr %i.at, i64 -8 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !28
  %sext.i.i = shl i64 %i.cj, 32
  %i.ck = ashr exact i64 %sext.i.i, 32
  %i.cl = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.cm = sub nsw i64 %i.cl, %i.ck
  store i64 %i.cm, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.ci) #43
  br label %bb.x

bb.x:                                             ; preds = %sqlite3_free.exit.i, %bb.o
  %.04874.i = phi i32 [ %.048.ph.i, %sqlite3_free.exit.i ], [ 7, %bb.o ] ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !631
  %i.cp = icmp eq i8 %i.co, 0
  br i1 %i.cp, label %bb.y, label %btreeCursor.exit

bb.y:                                             ; preds = %bb.x
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !453
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.z, label %btreeCursor.exit

bb.z:                                             ; preds = %bb.y
  %i.ct = load ptr, ptr %i.aa, align 8, !tbaa !632 ; 2 uses
  %.not.i62.i = icmp eq ptr %i.ct, null
  br i1 %.not.i62.i, label %btreeCursor.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cu = load ptr, ptr %i.d, align 8, !tbaa !461
  %i.cv = getelementptr i8, ptr %i.cu, i64 76
  %.val.i.i = load i32, ptr %i.cv, align 4, !tbaa !633
  %i.cw = icmp sgt i32 %.val.i.i, 0
  br i1 %i.cw, label %releasePage.exit.i.i, label %bb.ab

releasePage.exit.i.i:                             ; preds = %bb.aa
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 120
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !630
  tail call fastcc void @sqlite3PagerUnref(ptr noundef %i.cy)
  br label %bb.ab

bb.ab:                                            ; preds = %releasePage.exit.i.i, %bb.aa
  store ptr null, ptr %i.aa, align 8, !tbaa !632
  %i.cz = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i8 0, ptr %i.cz, align 8, !tbaa !634
  br label %btreeCursor.exit

btreeCursor.exit:                                 ; preds = %bb.f, %bb.h, %bb.b, %bb.l, %bb.n, %bb.v, %bb.x, %bb.y, %bb.z, %bb.ab
  %.0.i = phi i32 [ 0, %bb.v ], [ 8, %bb.b ], [ 8, %bb.n ], [ %.04874.i, %bb.z ], [ %i.aj, %bb.l ], [ %.04874.i, %bb.ab ], [ %.04874.i, %bb.x ], [ %.04874.i, %bb.y ], [ 6, %bb.h ], [ 6, %bb.f ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define internal i32 @sqlite3VdbeRecordCompare(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #5 {
bb.a:
  %5 = alloca %struct.Mem, align 8                ; 8 uses
  %6 = alloca %struct.Mem, align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !965   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 39
  store i8 %i.b, ptr %i.c, align 1, !tbaa !125
  %i.d = load ptr, ptr %0, align 8, !tbaa !1035   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.d, ptr %i.e, align 8, !tbaa !130
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 2 uses
  store i16 0, ptr %i.f, align 4, !tbaa !124
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 39
  store i8 %i.b, ptr %i.g, align 1, !tbaa !125
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %i.h, align 8, !tbaa !130
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 2 uses
  store i16 0, ptr %i.i, align 4, !tbaa !124
  %i.j = load i8, ptr %2, align 1, !tbaa !37      ; 3 uses
  %i.k = zext nneg i8 %i.j to i32
  %i.l = icmp sgt i8 %i.j, -1
  br i1 %i.l, label %sqlite3GetVarint32.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = and i8 %i.j, 127
  %i.n = zext nneg i8 %i.m to i32
end_hunk_6
begin_hunk_7_@sqlite3BtreeFlags:bb.a
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
  %6 = icmp ne i32 %i.bo, 0
  %i.bp = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 3 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !714 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !706
  %i.bt = add nsw i32 %i.bs, 1                    ; 3 uses
  %i.bu = shl nsw i32 %i.bt, 1
  %i.bv = tail call ptr @sqlite3_malloc(i32 noundef %i.bu) ; 11 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %.thread208.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not.i180.i = icmp eq ptr %.0, null            ; 3 uses
  br i1 %.not.i180.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bx = load i8, ptr %.0, align 1, !tbaa !37
  %.not166.i.i = icmp eq i8 %i.bx, 0
  br i1 %.not166.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.by = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0, ptr noundef nonnull dereferenceable(9) @.str.207) #42
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %.thread.i.i, label %bb.u

.thread.i.i:                                      ; preds = %bb.t
  store i8 0, ptr %i.bv, align 1, !tbaa !37
  br label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.ca = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !1038
  %i.cc = tail call i32 %i.cb(ptr noundef nonnull %i.r, ptr noundef nonnull %.0, i32 noundef range(i32 -2147483647, -2147483648) %i.bt, ptr noundef nonnull %i.bv) #43, !inline_history !1043
  br label %bb.w

bb.v:                                             ; preds = %bb.s, %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1044
  %i.cf = tail call i32 %i.ce(ptr noundef nonnull %i.r, i32 noundef range(i32 -2147483647, -2147483648) %i.bt, ptr noundef nonnull %i.bv) #43, !inline_history !1045
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0152.i.i = phi i32 [ %i.cf, %bb.v ], [ %i.cc, %bb.u ] ; 2 uses
  %.not167.i.i = icmp eq i32 %.0152.i.i, 0
  br i1 %.not167.i.i, label %bb.x, label %sqlite3_free.exit.i.i

sqlite3_free.exit.i.i:                            ; preds = %bb.w
  %i.cg = getelementptr inbounds i8, ptr %i.bv, i64 -8 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !28
  %sext.i.i.i = shl i64 %i.ch, 32
  %i.ci = ashr exact i64 %sext.i.i.i, 32
  %i.cj = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.ck = sub nsw i64 %i.cj, %i.ci
  store i64 %i.ck, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.cg) #43
  br label %.thread208.i

bb.x:                                             ; preds = %bb.w, %.thread.i.i
  %.0157199.i.i = phi i32 [ 1, %.thread.i.i ], [ 0, %bb.w ] ; 2 uses
  %.not175198.i.i = phi i1 [ false, %.thread.i.i ], [ true, %bb.w ] ; 3 uses
  %i.cl = phi i1 [ true, %.thread.i.i ], [ false, %bb.w ]
  %i.cm = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bv) #42 ; 2 uses
  %i.cn = shl i64 %i.cm, 32                       ; 4 uses
  %sext.i181.i = add i64 %i.cn, 4294967296
  %i.co = ashr exact i64 %sext.i181.i, 32         ; 5 uses
  %i.cp = getelementptr inbounds i8, ptr %i.bv, i64 %i.co ; 3 uses
  %i.cq = load i32, ptr %i.br, align 8, !tbaa !706
  %i.cr = add nsw i32 %i.cq, 1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !1044
  %i.cu = tail call i32 %i.ct(ptr noundef nonnull %i.r, i32 noundef range(i32 -2147483647, -2147483648) %i.cr, ptr noundef nonnull %i.cp) #43, !inline_history !1045 ; 2 uses
  %.not168.i.i = icmp eq i32 %i.cu, 0
  br i1 %.not168.i.i, label %bb.y, label %sqlite3_free.exit185.i.i

sqlite3_free.exit185.i.i:                         ; preds = %bb.x
  %i.cv = getelementptr inbounds i8, ptr %i.bv, i64 -8 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !28
  %sext.i184.i.i = shl i64 %i.cw, 32
  %i.cx = ashr exact i64 %sext.i184.i.i, 32
  %i.cy = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.cz = sub nsw i64 %i.cy, %i.cx
  store i64 %i.cz, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.cv) #43
  br label %.thread208.i

bb.y:                                             ; preds = %bb.x
  %i.da = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cp) #42 ; 2 uses
  %i.db = zext i32 %i.bq to i64
  %i.dc = load i32, ptr %i.bp, align 4, !tbaa !714
  %i.dd = mul nsw i32 %i.dc, 3
  %i.de = zext i32 %i.dd to i64
  %i.df = mul i64 %i.cm, 3
  %i.dg = add nuw nsw i64 %i.db, 360
  %i.dh = add i64 %i.dg, %i.df
  %i.di = add i64 %i.dh, %i.da
  %i.dj = add i64 %i.di, %i.de                    ; 2 uses
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = tail call ptr @sqlite3_malloc(i32 noundef %i.dk) ; 32 uses
  %.not.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i, label %sqlite3_free.exit187.i.i, label %sqlite3_free.exit189.i.i

sqlite3_free.exit187.i.i:                         ; preds = %bb.y
  %i.dm = getelementptr inbounds i8, ptr %i.bv, i64 -8 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !28
  %sext.i186.i.i = shl i64 %i.dn, 32
  %i.do = ashr exact i64 %sext.i186.i.i, 32
  %i.dp = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.dq = sub nsw i64 %i.dp, %i.do
  store i64 %i.dq, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.dm) #43
  br label %.thread208.i

sqlite3_free.exit189.i.i:                         ; preds = %bb.y
  %i.dr = and i64 %i.dj, 4294967295
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dl, i8 0, i64 %i.dr, i1 false)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 320 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dl, i64 32 ; 2 uses
  store i32 %.01927, ptr %i.dt, align 8, !tbaa !905
  %i.du = getelementptr inbounds nuw i8, ptr %i.dl, i64 136 ; 5 uses
  store ptr %i.ds, ptr %i.du, align 8, !tbaa !524
  %i.dv = load i32, ptr %i.bp, align 4, !tbaa !714 ; 2 uses
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds i8, ptr %i.ds, i64 %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dl, i64 152
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !671
  %i.dz = shl nsw i32 %i.dv, 1                    ; 2 uses
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds i8, ptr %i.ds, i64 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dl, i64 144
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !675
  %i.ed = add nsw i32 %i.dz, %i.bq
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds i8, ptr %i.ds, i64 %i.ee ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dl, i64 104 ; 4 uses
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !757
  %i.eh = getelementptr inbounds i8, ptr %i.ef, i64 %i.co ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dl, i64 120 ; 3 uses
  store ptr %i.eh, ptr %i.ei, align 8, !tbaa !1046
  %i.ej = getelementptr inbounds i8, ptr %i.eh, i64 %i.co ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dl, i64 112 ; 3 uses
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !694
  %sext172.i.i = add i64 %i.cn, 42949672960
  %i.el = ashr exact i64 %sext172.i.i, 32
  %i.em = getelementptr inbounds i8, ptr %i.ej, i64 %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.dl, i64 128 ; 2 uses
  store ptr %i.em, ptr %i.en, align 8, !tbaa !895
  store ptr %i.r, ptr %i.dl, align 8, !tbaa !693
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ef, ptr nonnull align 1 %i.bv, i64 %i.co, i1 false)
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !895
  %i.ep = shl i64 %i.da, 32
  %sext173.i.i = add i64 %i.ep, 4294967296
  %i.eq = ashr exact i64 %sext173.i.i, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eo, ptr nonnull align 1 %i.cp, i64 %i.eq, i1 false)
  %i.er = getelementptr inbounds i8, ptr %i.bv, i64 -8 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !28
  %sext.i188.i.i = shl i64 %i.es, 32
  %i.et = ashr exact i64 %sext.i188.i.i, 32
  %i.eu = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.ev = sub nsw i64 %i.eu, %i.et
  store i64 %i.ev, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.er) #43
  br i1 %.not.i180.i, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %sqlite3_free.exit189.i.i
  %i.ew = load i8, ptr %.0, align 1, !tbaa !37
  %i.ex = icmp eq i8 %i.ew, 0
  %or.cond.i.i = or i1 %i.cl, %i.ex
  br i1 %or.cond.i.i, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ey = ashr exact i64 %i.cn, 32
  %i.ez = load i32, ptr %i.br, align 8, !tbaa !706
  %i.fa = sext i32 %i.ez to i64
  %i.fb = add nsw i64 %i.fa, -9
  %i.fc = icmp ugt i64 %i.ey, %i.fb
  br i1 %i.fc, label %.thread214.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  store i32 0, ptr %i.a, align 4, !tbaa !4
  %i.fd = load ptr, ptr %i.eg, align 8, !tbaa !757
  %i.fe = load ptr, ptr %i.du, align 8, !tbaa !524
  %i.ff = load i32, ptr %i.dt, align 8, !tbaa !905
  %i.fg = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !715
  %i.fi = call i32 %i.fh(ptr noundef nonnull %i.r, ptr noundef %i.fd, ptr noundef %i.fe, i32 noundef %i.ff, ptr noundef nonnull %i.a) #43, !inline_history !1047 ; 3 uses
  %i.fj = load i32, ptr %i.a, align 4, !tbaa !4   ; 2 uses
  %7 = and i32 %i.fj, 1                           ; 3 uses
  %i.fk = icmp ne i32 %i.fi, 0
  %i.fl = trunc i32 %i.fj to i1
  %or.cond3.i.i = select i1 %i.fk, i1 true, i1 %i.fl
  br i1 %or.cond3.i.i, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fm = load ptr, ptr %i.du, align 8, !tbaa !524 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !531
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 88
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !725 ; 2 uses
  %.not.i190.i.i = icmp eq ptr %i.fp, null
  br i1 %.not.i190.i.i, label %.thread220.i.i, label %sqlite3OsSectorSize.exit.i.i

sqlite3OsSectorSize.exit.i.i:                     ; preds = %bb.ac
  %i.fq = call i32 %i.fp(ptr noundef nonnull %i.fm) #43, !inline_history !1048
  %.fr.i.i = freeze i32 %i.fq
  %i.fr = call i32 @llvm.smax.i32(i32 %.fr.i.i, i32 1024)
  %i.fs = call i32 @llvm.umin.i32(i32 %i.fr, i32 8192)
  br label %.thread220.i.i

bb.ad:                                            ; preds = %bb.z, %sqlite3_free.exit189.i.i
  br i1 %.not175198.i.i, label %bb.ae, label %.thread201.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.ft = getelementptr inbounds nuw i8, ptr %i.dl, i64 18
  store i8 4, ptr %i.ft, align 2, !tbaa !651
  br label %.thread201.i.i

.thread220.i.i:                                   ; preds = %sqlite3OsSectorSize.exit.i.i, %bb.ac
  %.1155.ph.i.i = phi i32 [ 1024, %bb.ac ], [ %i.fs, %sqlite3OsSectorSize.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %.thread201.i.i

bb.af:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  %i.fu = icmp eq i32 %i.fi, 0
  br i1 %i.fu, label %.thread201.i.i, label %.thread214.i.i

.thread201.i.i:                                   ; preds = %bb.af, %.thread220.i.i, %bb.ae, %bb.ad
  %.2210.i.i = phi i32 [ %.1155.ph.i.i, %.thread220.i.i ], [ 1024, %bb.af ], [ 1024, %bb.ad ], [ 1024, %bb.ae ] ; 2 uses
  %.0156209.i.i = phi i8 [ 0, %.thread220.i.i ], [ 0, %bb.af ], [ 0, %bb.ad ], [ 1, %bb.ae ]
  %.0158207.i.i = phi i32 [ %7, %.thread220.i.i ], [ %7, %bb.af ], [ 0, %bb.ad ], [ 0, %bb.ae ]
  %i.fv = call ptr @sqlite3_malloc(i32 noundef %.2210.i.i)
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dl, i64 296
  store ptr %i.fv, ptr %i.fw, align 8, !tbaa !705
  br label %.thread214.i.i

.thread214.i.i:                                   ; preds = %.thread201.i.i, %bb.af, %bb.aa
  %i.fx = phi i32 [ %i.fi, %bb.af ], [ 7, %.thread201.i.i ], [ 14, %bb.aa ]
  %.2211.i.i = phi i32 [ 1024, %bb.af ], [ %.2210.i.i, %.thread201.i.i ], [ 1024, %bb.aa ]
  %.0156208.i.i = phi i8 [ 0, %bb.af ], [ %.0156209.i.i, %.thread201.i.i ], [ 0, %bb.aa ] ; 3 uses
  %.0158206.i.i = phi i32 [ %7, %bb.af ], [ %.0158207.i.i, %.thread201.i.i ], [ 0, %bb.aa ] ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.dl, i64 296
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !705
  %.not176.i.i = icmp eq ptr %i.fz, null
  br i1 %.not176.i.i, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %.thread214.i.i
  %i.ga = load ptr, ptr %i.du, align 8, !tbaa !524 ; 3 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !531 ; 2 uses
  %.not.i191.i.i = icmp eq ptr %i.gb, null
  br i1 %.not.i191.i.i, label %sqlite3_free.exit193.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !672
  %i.ge = call i32 %i.gd(ptr noundef nonnull %i.ga) #43, !inline_history !1049 ; 0 uses
  store ptr null, ptr %i.ga, align 8, !tbaa !531
  br label %sqlite3_free.exit193.i.i

sqlite3_free.exit193.i.i:                         ; preds = %bb.ah, %bb.ag
  %i.gf = getelementptr inbounds i8, ptr %i.dl, i64 -8 ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !28
  %sext.i192.i.i = shl i64 %i.gg, 32
  %i.gh = ashr exact i64 %sext.i192.i.i, 32
  %i.gi = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.gj = sub nsw i64 %i.gi, %i.gh
  store i64 %i.gj, ptr @mem.5, align 8, !tbaa !22
  call void @free(ptr noundef nonnull %i.gf) #43
  br label %.thread208.i

bb.ai:                                            ; preds = %.thread214.i.i
  %i.gk = load ptr, ptr %i.ei, align 8, !tbaa !1046
  %i.gl = load ptr, ptr %i.eg, align 8, !tbaa !757
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gk, ptr align 1 %i.gl, i64 %i.co, i1 false)
  %i.gm = load ptr, ptr %i.ei, align 8, !tbaa !1046 ; 2 uses
  %i.gn = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gm) #42
  %i.go = trunc i64 %i.gn to i32                  ; 2 uses
  %i.gp = icmp sgt i32 %i.go, 0
  br i1 %i.gp, label %.lr.ph.i.i, label %.critedge183.i.i

bb.aj:                                            ; preds = %.lr.ph.i.i
  %i.gq = add nsw i32 %.0153224.i.i, -1
  %i.gr = icmp sgt i32 %.0153224.i.i, 1
  br i1 %i.gr, label %.lr.ph.i.i, label %.critedge183.i.i, !llvm.loop !1050

.lr.ph.i.i:                                       ; preds = %bb.ai, %bb.aj
  %.0153224.i.i = phi i32 [ %i.gq, %bb.aj ], [ %i.go, %bb.ai ] ; 3 uses
  %i.gs = zext nneg i32 %.0153224.i.i to i64
  %i.gt = getelementptr i8, ptr %i.gm, i64 %i.gs  ; 2 uses
  %i.gu = getelementptr i8, ptr %i.gt, i64 -1
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !37
  %.not177.i.i = icmp eq i8 %i.gv, 47
  br i1 %.not177.i.i, label %.critedge.i.i, label %bb.aj

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.gw = getelementptr i8, ptr %i.gt, i64 -1
  store i8 0, ptr %i.gw, align 1, !tbaa !37
  br label %.critedge183.i.i

.critedge183.i.i:                                 ; preds = %bb.aj, %.critedge.i.i, %bb.ai
  %i.gx = load ptr, ptr %i.ek, align 8, !tbaa !694
  %i.gy = load ptr, ptr %i.eg, align 8, !tbaa !757
  %i.gz = ashr exact i64 %i.cn, 32                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gx, ptr align 1 %i.gy, i64 %i.gz, i1 false)
  %i.ha = load ptr, ptr %i.ek, align 8, !tbaa !694
  %i.hb = getelementptr inbounds i8, ptr %i.ha, i64 %i.gz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.hb, ptr noundef nonnull align 1 dereferenceable(9) @.str.208, i64 9, i1 false)
  %not..i.i = xor i1 %i.bn, true
  %narrow.i.i = and i1 %.not175198.i.i, %not..i.i
  %spec.select.i.i = zext i1 %narrow.i.i to i8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.dl, i64 10
  store i8 %spec.select.i.i, ptr %i.hc, align 2, !tbaa !858
  %8 = icmp ne i32 %.0158206.i.i, 0
  %9 = select i1 %6, i1 %8, i1 false
  %10 = zext i1 %9 to i8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.dl, i64 11
  store i8 %10, ptr %i.hd, align 1, !tbaa !849
  %i.he = add nsw i32 %.0157199.i.i, -1
  %i.hf = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  store i32 %i.he, ptr %i.hf, align 8, !tbaa !664
  %i.hg = getelementptr inbounds nuw i8, ptr %i.dl, i64 68
  store i32 %.2211.i.i, ptr %i.hg, align 4, !tbaa !647
  %i.hh = getelementptr inbounds nuw i8, ptr %i.dl, i64 80
  store i32 100, ptr %i.hh, align 8, !tbaa !868
  %i.hi = getelementptr inbounds nuw i8, ptr %i.dl, i64 84
  store i32 1073741823, ptr %i.hi, align 4, !tbaa !877
  %i.hj = getelementptr inbounds nuw i8, ptr %i.dl, i64 19
  store i8 %.0156208.i.i, ptr %i.hj, align 1, !tbaa !724
  %i.hk = getelementptr inbounds nuw i8, ptr %i.dl, i64 27
  store i8 %.0156208.i.i, ptr %i.hk, align 1, !tbaa !648
  %i.hl = trunc nuw nsw i32 %.0157199.i.i to i8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  store i8 %i.hl, ptr %i.hm, align 8, !tbaa !652
  %11 = trunc nuw nsw i32 %.0158206.i.i to i8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.dl, i64 20
  store i8 %11, ptr %i.hn, align 4, !tbaa !882
  %.not180.i.i = icmp eq i8 %.0156208.i.i, 0
  %i.ho = trunc nuw nsw i32 %2 to i8
  %i.hp = select i1 %.not180.i.i, i8 %i.ho, i8 1  ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.dl, i64 15
  store i8 %i.hp, ptr %i.hq, align 1, !tbaa !765
  %i.hr = xor i8 %i.hp, 1
  %i.hs = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store i8 %i.hr, ptr %i.hs, align 8, !tbaa !872
  %i.ht = getelementptr inbounds nuw i8, ptr %i.dl, i64 17
  store i8 2, ptr %i.ht, align 1, !tbaa !897
  %i.hu = getelementptr inbounds nuw i8, ptr %i.dl, i64 64
  store i32 144, ptr %i.hu, align 8, !tbaa !655
  br i1 %.not175198.i.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.critedge183.i.i
  call fastcc void @setSectorSize(ptr noundef nonnull %i.dl)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.critedge183.i.i
  store ptr %i.dl, ptr %i.bk, align 8, !tbaa !1051
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(100) %i.b, i8 0, i64 100, i1 false)
  %i.hv = load ptr, ptr %i.du, align 8, !tbaa !524 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !531 ; 2 uses
  %.not.i182.i = icmp eq ptr %i.hw, null
  br i1 %.not.i182.i, label %sqlite3PagerReadFileheader.exit.thread.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !718
  %i.hz = call i32 %i.hy(ptr noundef nonnull %i.hv, ptr noundef nonnull %i.b, i32 noundef 100, i64 noundef 0) #43, !inline_history !1052 ; 2 uses
  switch i32 %i.hz, label %.thread208.i [
    i32 522, label %sqlite3PagerReadFileheader.exit.thread.i
    i32 0, label %sqlite3PagerReadFileheader.exit.thread.i
  ]

sqlite3PagerReadFileheader.exit.thread.i:         ; preds = %bb.am, %bb.am, %bb.al
  %i.ia = load ptr, ptr %i.bk, align 8, !tbaa !461 ; 5 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 160
  store ptr %i.bl, ptr %i.ib, align 8, !tbaa !850
  store ptr %i.bk, ptr %i.t, align 8, !tbaa !325
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 264
  store ptr @pageDestructor, ptr %i.ic, align 8, !tbaa !646
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 272
  store ptr @pageReinit, ptr %i.id, align 8, !tbaa !661
  %i.ie = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.if = getelementptr i8, ptr %i.ia, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ie, i8 0, i64 16, i1 false)
  %.val175.i = load i8, ptr %i.if, align 4, !tbaa !882
  %i.ig = getelementptr inbounds nuw i8, ptr %i.bk, i64 33
  store i8 %.val175.i, ptr %i.ig, align 1, !tbaa !778
  %i.ih = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ii = load i8, ptr %i.ih, align 16, !tbaa !37 ; 2 uses
  %i.ij = zext i8 %i.ii to i16
  %i.ik = shl nuw i16 %i.ij, 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  %i.im = load i8, ptr %i.il, align 1, !tbaa !37
  %i.in = zext i8 %i.im to i16
  %i.io = or disjoint i16 %i.ik, %i.in            ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.bk, i64 44 ; 5 uses
  store i16 %i.io, ptr %i.ip, align 4, !tbaa !833
  %i.iq = icmp ugt i8 %i.ii, 1
  %i.ir = icmp ult i16 %i.io, -32767
  %or.cond.not231.i = select i1 %i.iq, i1 %i.ir, i1 false
  %i.is = call range(i16 1, 17) i16 @llvm.ctpop.i16(i16 %i.io)
  %.not160.i = icmp samesign ult i16 %i.is, 2
  %or.cond173.i = select i1 %or.cond.not231.i, i1 %.not160.i, i1 false
  br i1 %or.cond173.i, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %sqlite3PagerReadFileheader.exit.thread.i
  store i16 0, ptr %i.ip, align 4, !tbaa !833
  %i.it = call fastcc i32 @sqlite3PagerSetPagesize(ptr noundef nonnull %i.ia, ptr noundef nonnull %i.ip) ; 0 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.bk, i64 34
  store i8 64, ptr %i.iu, align 2, !tbaa !1020
  %i.iv = getelementptr inbounds nuw i8, ptr %i.bk, i64 35
  store i8 32, ptr %i.iv, align 1, !tbaa !1021
  %i.iw = getelementptr inbounds nuw i8, ptr %i.bk, i64 36
  store i8 32, ptr %i.iw, align 4, !tbaa !1022
  %or.cond5.i = select i1 %.not.i180.i, i1 true, i1 %i.q
  br i1 %or.cond5.i, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ix = getelementptr inbounds nuw i8, ptr %i.bk, i64 38
  store i8 0, ptr %i.ix, align 2, !tbaa !847
  br label %.sink.split.i

bb.ap:                                            ; preds = %sqlite3PagerReadFileheader.exit.thread.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.iz = load i8, ptr %i.iy, align 4, !tbaa !37
  %i.ja = zext i8 %i.iz to i16
  %i.jb = getelementptr inbounds nuw i8, ptr %i.b, i64 21
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !37
  %i.jd = getelementptr inbounds nuw i8, ptr %i.bk, i64 34
  store i8 %i.jc, ptr %i.jd, align 2, !tbaa !1020
  %i.je = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  %i.jf = load i8, ptr %i.je, align 2, !tbaa !37
  %i.jg = getelementptr inbounds nuw i8, ptr %i.bk, i64 35
  store i8 %i.jf, ptr %i.jg, align 1, !tbaa !1021
  %i.jh = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !37
  %i.jj = getelementptr inbounds nuw i8, ptr %i.bk, i64 36
  store i8 %i.ji, ptr %i.jj, align 4, !tbaa !1022
  %i.jk = getelementptr inbounds nuw i8, ptr %i.bk, i64 37
  store i8 1, ptr %i.jk, align 1, !tbaa !1027
  %i.jl = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !37
  %i.jn = icmp ne i32 %i.jm, 0
  %i.jo = zext i1 %i.jn to i8
  %i.jp = getelementptr inbounds nuw i8, ptr %i.bk, i64 38
  store i8 %i.jo, ptr %i.jp, align 2, !tbaa !847
  %i.jq = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.jr = load i32, ptr %i.jq, align 16, !tbaa !37
  %i.js = icmp ne i32 %i.jr, 0
  %i.jt = zext i1 %i.js to i8
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ap, %bb.ao
  %.sink.i = phi i8 [ 0, %bb.ao ], [ %i.jt, %bb.ap ]
  %.0141.ph.i = phi i16 [ 0, %bb.ao ], [ %i.ja, %bb.ap ]
  %i.ju = getelementptr inbounds nuw i8, ptr %i.bk, i64 39
  store i8 %.sink.i, ptr %i.ju, align 1, !tbaa !909
  br label %bb.aq

bb.aq:                                            ; preds = %.sink.split.i, %bb.an
  %.0141.i = phi i16 [ 0, %bb.an ], [ %.0141.ph.i, %.sink.split.i ]
  %i.jv = load i16, ptr %i.ip, align 4, !tbaa !833
  %i.jw = sub i16 %i.jv, %.0141.i
  %i.jx = getelementptr inbounds nuw i8, ptr %i.bk, i64 46
  store i16 %i.jw, ptr %i.jx, align 2, !tbaa !832
  %i.jy = load ptr, ptr %i.bk, align 8, !tbaa !461
  %i.jz = call fastcc i32 @sqlite3PagerSetPagesize(ptr noundef %i.jy, ptr noundef nonnull %i.ip) ; 0 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.s, i64 17
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !456
  %.not163.i = icmp eq i8 %i.kb, 0
  br i1 %.not163.i, label %.loopexit, label %.thread284.i

.thread284.i:                                     ; preds = %bb.aq
  %i.kc = getelementptr inbounds nuw i8, ptr %i.bk, i64 120
  store i32 1, ptr %i.kc, align 8, !tbaa !457
  %i.kd = load ptr, ptr @sqlite3SharedCacheList, align 8, !tbaa !458
  %i.ke = getelementptr inbounds nuw i8, ptr %i.bk, i64 128
  store ptr %i.kd, ptr %i.ke, align 8, !tbaa !459
  store ptr %i.bk, ptr @sqlite3SharedCacheList, align 8, !tbaa !458
  br label %.preheader233.i

.preheader233.i:                                  ; preds = %.thread284.i, %.critedge.i
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !278 ; 2 uses
  %i.kh = icmp sgt i32 %i.kg, 0
  br i1 %i.kh, label %.lr.ph249.i, label %.loopexit

.lr.ph249.i:                                      ; preds = %.preheader233.i
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !235
  %wide.trip.count.i = zext nneg i32 %i.kg to i64
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ax, %.lr.ph249.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph249.i ], [ %indvars.iv.next.i, %bb.ax ] ; 2 uses
  %i.kk = getelementptr inbounds nuw [48 x i8], ptr %i.kj, i64 %indvars.iv.i
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !427 ; 3 uses
  %.not165.i = icmp eq ptr %i.km, null
  br i1 %.not165.i, label %bb.ax, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 17
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !456
  %.not166.i = icmp eq i8 %i.ko, 0
  br i1 %.not166.i, label %bb.ax, label %.preheader232.i

.preheader232.i:                                  ; preds = %bb.as, %.preheader232.i
  %.0.i = phi ptr [ %i.kq, %.preheader232.i ], [ %i.km, %bb.as ] ; 5 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !464 ; 2 uses
  %.not167.i = icmp eq ptr %i.kq, null
  br i1 %.not167.i, label %bb.at, label %.preheader232.i, !llvm.loop !1053

bb.at:                                            ; preds = %.preheader232.i
  %i.kr = load ptr, ptr %i.t, align 8, !tbaa !325 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !325
  %i.ku = icmp ult ptr %i.kr, %i.kt
  br i1 %i.ku, label %bb.au, label %.preheader.i

bb.au:                                            ; preds = %bb.at
  %i.kv = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.kw = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %.0.i, ptr %i.kw, align 8, !tbaa !465
  %i.kx = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr null, ptr %i.kx, align 8, !tbaa !464
  store ptr %i.s, ptr %i.kv, align 8, !tbaa !464
  br label %.loopexit

.preheader.i:                                     ; preds = %bb.at, %bb.av
  %.1.i = phi ptr [ %i.kz, %bb.av ], [ %.0.i, %bb.at ] ; 4 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.1.i, i64 24
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !465 ; 5 uses
  %.not168.i = icmp eq ptr %i.kz, null
  br i1 %.not168.i, label %.critedge.thread.i, label %bb.av

end_hunk_7
begin_hunk_8_@yy_destructor:bb.a
  br label %sqlite3IdListDelete.exit

sqlite3IdListDelete.exit:                         ; preds = %sqlite3_free.exit11.i11, %bb.j, %sqlite3_free.exit11.i, %bb.f, %bb.a, %bb.i, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3StartTable(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef range(i32 0, 2) %4, i32 noundef range(i32 0, 2) %5, i32 noundef %6) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !244    ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 8
  %.not18.i = icmp ult i32 %i.c, 2
  br i1 %.not18.i, label %sqlite3TwoPartName.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i32 @sqlite3FindDb(ptr noundef %i.a, ptr noundef nonnull %1) ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %sqlite3TwoPartName.exit.thread, label %sqlite3TwoPartName.exit.thread154

sqlite3TwoPartName.exit.thread:                   ; preds = %bb.b
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.291, ptr noundef nonnull %1)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !252
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8, !tbaa !252
  br label %sqlite3NameFromToken.exit

sqlite3TwoPartName.exit:                          ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.j = load i32, ptr %i.i, align 8, !tbaa !1068 ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %sqlite3NameFromToken.exit, label %sqlite3TwoPartName.exit.thread154

sqlite3TwoPartName.exit.thread154:                ; preds = %bb.b, %sqlite3TwoPartName.exit
  %.0.i158 = phi i32 [ %i.j, %sqlite3TwoPartName.exit ], [ %i.d, %bb.b ] ; 2 uses
  %.0157 = phi ptr [ %1, %sqlite3TwoPartName.exit ], [ %2, %bb.b ] ; 4 uses
  %i.l = icmp ne i32 %3, 0                        ; 2 uses
  %i.m = icmp samesign ugt i32 %.0.i158, 1
  %or.cond = and i1 %i.l, %i.m
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %sqlite3TwoPartName.exit.thread154
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.287)
  br label %sqlite3NameFromToken.exit

bb.d:                                             ; preds = %sqlite3TwoPartName.exit.thread154
  %spec.select = select i1 %i.l, i32 1, i32 %.0.i158 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %.0157, i64 16, i1 false), !tbaa.struct !1313
  %i.o = load ptr, ptr %.0157, align 8, !tbaa !77 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0157, i64 8
  %i.q = load i32, ptr %i.p, align 8
  %i.r = lshr i32 %i.q, 1                         ; 2 uses
  %i.s = icmp eq ptr %i.o, null
  br i1 %i.s, label %sqlite3NameFromToken.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = add nuw nsw i32 %i.r, 1
  %i.u = tail call ptr @sqlite3_malloc(i32 noundef %i.t) ; 17 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %sqlite3StrNDup.exit.i.i, label %bb.f

sqlite3StrNDup.exit.i.i:                          ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 42
  store i8 1, ptr %i.v, align 2, !tbaa !129
  br label %sqlite3NameFromToken.exit

bb.f:                                             ; preds = %bb.e
  %i.w = zext nneg i32 %i.r to i64                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull readonly align 1 %i.o, i64 %i.w, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w
  store i8 0, ptr %i.x, align 1, !tbaa !37
  %i.y = load i8, ptr %i.u, align 1, !tbaa !37    ; 2 uses
  %i.z = sext i8 %i.y to i32                      ; 3 uses
  switch i8 %i.y, label %.loopexit [
    i8 39, label %bb.h
    i8 34, label %bb.h
    i8 96, label %bb.h
    i8 91, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.f, %bb.f
  %.023.i.i = phi i32 [ %i.z, %bb.f ], [ %i.z, %bb.f ], [ %i.z, %bb.f ], [ 93, %bb.g ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !37  ; 2 uses
  %.not27.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not27.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h
  %i.ac = trunc nuw nsw i32 %.023.i.i to i8
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.l ] ; 3 uses
  %i.ad = phi i8 [ %i.ab, %.lr.ph.i.i ], [ %i.as, %bb.l ] ; 2 uses
  %.02128.i.i = phi i32 [ 1, %.lr.ph.i.i ], [ %i.ap, %bb.l ] ; 2 uses
  %i.ae = sext i8 %i.ad to i32
  %i.af = icmp eq i32 %.023.i.i, %i.ae
  br i1 %i.af, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ag = add nsw i32 %.02128.i.i, 1              ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds i8, ptr %i.u, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !37
  %i.ak = sext i8 %i.aj to i32
  %i.al = icmp eq i32 %.023.i.i, %i.ak
  br i1 %i.al, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = and i64 %indvars.iv.i.i, 4294967295
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.am
  store i8 0, ptr %i.an, align 1, !tbaa !37
  br label %.loopexit

bb.l:                                             ; preds = %bb.j, %bb.i
  %.sink.i.i = phi i8 [ %i.ac, %bb.j ], [ %i.ad, %bb.i ]
  %.122.i.i = phi i32 [ %i.ag, %bb.j ], [ %.02128.i.i, %bb.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv.i.i
  store i8 %.sink.i.i, ptr %i.ao, align 1, !tbaa !37
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %i.ap = add nsw i32 %.122.i.i, 1                ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %i.u, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !37  ; 2 uses
  %.not.i.i = icmp eq i8 %i.as, 0
  br i1 %.not.i.i, label %.loopexit, label %bb.i, !llvm.loop !1308

.loopexit:                                        ; preds = %bb.l, %bb.k, %bb.f, %bb.h
  %i.at = tail call fastcc i32 @sqlite3CheckObjectName(ptr noundef nonnull %0, ptr noundef %i.u)
  %.not = icmp eq i32 %i.at, 0
  br i1 %.not, label %bb.m, label %sqlite3_free.exit

bb.m:                                             ; preds = %.loopexit
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.av = load i32, ptr %i.au, align 8, !tbaa !1068
  %i.aw = icmp eq i32 %i.av, 1
  %spec.select144 = select i1 %i.aw, i32 1, i32 %3 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !235
  %i.az = zext nneg i32 %spec.select to i64       ; 3 uses
  %i.ba = getelementptr inbounds nuw [48 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !444 ; 2 uses
  %i.bc = icmp eq i32 %spec.select144, 1
  %i.bd = select i1 %i.bc, ptr @.str.200, ptr @.str.201
  %i.be = load ptr, ptr %0, align 8, !tbaa !244   ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 104
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !182
  %.not.i148 = icmp eq i8 %i.bg, 0
  br i1 %.not.i148, label %bb.n, label %sqlite3AuthCheck.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !364
  %.not23.i = icmp eq i8 %i.bi, 0
  br i1 %.not23.i, label %bb.o, label %sqlite3AuthCheck.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 272
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !334 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %sqlite3AuthCheck.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 280
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !335
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1302
  %i.bq = tail call i32 %i.bk(ptr noundef %i.bn, i32 noundef 18, ptr noundef nonnull %i.bd, ptr noundef null, ptr noundef %i.bb, ptr noundef %i.bp) #43, !inline_history !1393 ; 3 uses
  %i.br = icmp eq i32 %i.bq, 1
  br i1 %i.br, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.283)
  br label %sqlite3AuthCheck.exit.thread163

bb.r:                                             ; preds = %bb.p
  %i.bs = and i32 %i.bq, -3
  %or.cond.not.i = icmp eq i32 %i.bs, 0
  br i1 %or.cond.not.i, label %sqlite3AuthCheck.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.284, i32 noundef 1)
  br label %sqlite3AuthCheck.exit.thread163

sqlite3AuthCheck.exit.thread163:                  ; preds = %bb.q, %bb.s
  %.sink.i = phi i32 [ 23, %bb.q ], [ 1, %bb.s ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink.i, ptr %i.bt, align 8, !tbaa !251
  br label %sqlite3_free.exit

sqlite3AuthCheck.exit:                            ; preds = %bb.r
  %.not126 = icmp eq i32 %i.bq, 0
  br i1 %.not126, label %sqlite3AuthCheck.exit.thread, label %sqlite3_free.exit

sqlite3AuthCheck.exit.thread:                     ; preds = %bb.n, %bb.m, %bb.o, %sqlite3AuthCheck.exit
  %.not130 = icmp eq i32 %5, 0                    ; 2 uses
  br i1 %.not130, label %bb.t, label %bb.u

bb.t:                                             ; preds = %sqlite3AuthCheck.exit.thread
  %.not127 = icmp eq i32 %4, 0
  %.not129 = icmp eq i32 %spec.select144, 0       ; 2 uses
  %.145 = select i1 %.not129, i32 2, i32 4
  %. = select i1 %.not129, i32 8, i32 6
  %.0120 = select i1 %.not127, i32 %.145, i32 %.
  %i.bu = tail call fastcc i32 @sqlite3AuthCheck(ptr noundef nonnull %0, i32 noundef %.0120, ptr noundef nonnull %i.u, ptr noundef null, ptr noundef %i.bb)
  %.not131 = icmp eq i32 %i.bu, 0
  br i1 %.not131, label %bb.u, label %sqlite3_free.exit

bb.u:                                             ; preds = %bb.t, %sqlite3AuthCheck.exit.thread
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !364
  %.not132 = icmp eq i8 %i.bw, 0
  br i1 %.not132, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %bb.u
  %i.bx = tail call fastcc i32 @sqlite3ReadSchema(ptr noundef nonnull %0)
  %.not133 = icmp eq i32 %i.bx, 0
  br i1 %.not133, label %bb.w, label %sqlite3_free.exit

bb.w:                                             ; preds = %bb.v
  %i.by = load ptr, ptr %i.ax, align 8, !tbaa !235
  %i.bz = getelementptr inbounds nuw [48 x i8], ptr %i.by, i64 %i.az
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !444
  %i.cb = tail call fastcc ptr @sqlite3FindTable(ptr noundef nonnull %i.a, ptr noundef nonnull %i.u, ptr noundef %i.ca)
  %.not134 = icmp eq ptr %i.cb, null
  br i1 %.not134, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not137 = icmp eq i32 %6, 0
  br i1 %.not137, label %bb.y, label %sqlite3_free.exit

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.288, ptr noundef nonnull %.0157)
  br label %sqlite3_free.exit

bb.z:                                             ; preds = %bb.w
  %i.cc = tail call fastcc ptr @sqlite3FindIndex(ptr noundef nonnull %i.a, ptr noundef nonnull %i.u, ptr noundef null)
  %.not135 = icmp eq ptr %i.cc, null
  br i1 %.not135, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = icmp eq i32 %spec.select, 0
  br i1 %i.cd, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !182
  %.not136 = icmp eq i8 %i.cf, 0
  br i1 %.not136, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.289, ptr noundef nonnull %i.u)
  br label %sqlite3_free.exit

bb.ad:                                            ; preds = %bb.u, %bb.ab, %bb.z
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 42 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 2, !tbaa !129
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cj = tail call ptr @sqlite3_malloc(i32 noundef 152) ; 8 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae, %bb.ad
  store i8 1, ptr %i.cg, align 2, !tbaa !129
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 7, ptr %i.cl, align 8, !tbaa !251
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !252
  %i.co = add nsw i32 %i.cn, 1
  store i32 %i.co, ptr %i.cm, align 8, !tbaa !252
  br label %sqlite3_free.exit

bb.ag:                                            ; preds = %bb.ae
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(144) %i.cp, i8 0, i64 144, i1 false)
  store ptr %i.u, ptr %i.cj, align 8, !tbaa !402
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  store i32 -1, ptr %i.cq, align 8, !tbaa !1394
  %i.cr = load ptr, ptr %i.ax, align 8, !tbaa !235
  %i.cs = getelementptr inbounds nuw [48 x i8], ptr %i.cr, i64 %i.az
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !236
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cj, i64 144 ; 2 uses
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !277
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  store i32 1, ptr %i.cw, align 8, !tbaa !385
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !368 ; 2 uses
  %.not138 = icmp eq ptr %i.cy, null
  br i1 %.not138, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call fastcc void @sqlite3DeleteTable(ptr noundef nonnull %i.cy)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  store ptr %i.cj, ptr %i.cx, align 8, !tbaa !368
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 35
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !380
  %.not139 = icmp eq i8 %i.da, 0
  br i1 %.not139, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.db = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(16) @.str.290) #42
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dd = load ptr, ptr %i.cv, align 8, !tbaa !277
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 136
  store ptr %i.cj, ptr %i.de, align 8, !tbaa !1395
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.dg = load i8, ptr %i.df, align 8, !tbaa !182
  %.not140 = icmp eq i8 %i.dg, 0
  br i1 %.not140, label %bb.am, label %sqlite3NameFromToken.exit

bb.am:                                            ; preds = %bb.al
  %i.dh = tail call fastcc ptr @sqlite3GetVdbe(ptr noundef nonnull %0) ; 18 uses
  %.not141 = icmp eq ptr %i.dh, null
  br i1 %.not141, label %sqlite3NameFromToken.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call fastcc void @sqlite3BeginWriteOperation(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %spec.select)
  br i1 %.not130, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.di = tail call fastcc i32 @sqlite3VdbeAddOp0(ptr noundef nonnull %i.dh, i32 noundef 117) ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !1297 ; 3 uses
  %i.dl = add nsw i32 %i.dk, 1                    ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 %i.dl, ptr %i.dm, align 8, !tbaa !1396
  %i.dn = add nsw i32 %i.dk, 2                    ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !1397
  %i.dp = add nsw i32 %i.dk, 3                    ; 9 uses
  store i32 %i.dp, ptr %i.dj, align 8, !tbaa !1297
  %i.dq = tail call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %i.dh, i32 noundef 106, i32 noundef %spec.select, i32 noundef %i.dp, i32 noundef 1) ; 0 uses
  %i.dr = shl nuw i32 1, %spec.select             ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dh, i64 360 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !281 ; 2 uses
  %i.du = and i32 %i.dt, %i.dr
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.aq, label %sqlite3VdbeUsesBtree.exit

bb.aq:                                            ; preds = %bb.ap
  %i.dw = or i32 %i.dt, %i.dr
  store i32 %i.dw, ptr %i.ds, align 8, !tbaa !281
  br label %sqlite3VdbeUsesBtree.exit

sqlite3VdbeUsesBtree.exit:                        ; preds = %bb.ap, %bb.aq
  %i.dx = tail call fastcc i32 @sqlite3VdbeAddOp1(ptr noundef nonnull %i.dh, i32 noundef 9, i32 noundef %i.dp) ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !327
  %i.ea = and i32 %i.dz, 32768
  %.not142 = icmp eq i32 %i.ea, 0
  %i.eb = select i1 %.not142, i32 4, i32 1
  %i.ec = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %i.dh, i32 noundef 46, i32 noundef %i.eb, i32 noundef %i.dp) ; 0 uses
  %i.ed = tail call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %i.dh, i32 noundef 3, i32 noundef %spec.select, i32 noundef 1, i32 noundef %i.dp) ; 0 uses
  %i.ee = load ptr, ptr %i.ax, align 8, !tbaa !235
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 40
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !236
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 145
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !240
  %i.ej = zext i8 %i.ei to i32
  %i.ek = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %i.dh, i32 noundef 46, i32 noundef %i.ej, i32 noundef %i.dp) ; 0 uses
  %i.el = tail call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %i.dh, i32 noundef 3, i32 noundef %spec.select, i32 noundef 4, i32 noundef %i.dp) ; 0 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.dh, i64 24 ; 2 uses
  %i.en = load i32, ptr %i.em, align 8, !tbaa !135 ; 2 uses
  %i.eo = icmp sgt i32 %i.dx, -1
  %i.ep = icmp sgt i32 %i.en, %i.dx
  %or.cond.i = select i1 %i.eo, i1 %i.ep, i1 false
  br i1 %or.cond.i, label %bb.ar, label %sqlite3VdbeJumpHere.exit

bb.ar:                                            ; preds = %sqlite3VdbeUsesBtree.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !136 ; 2 uses
  %.not.i.i149 = icmp eq ptr %i.er, null
  br i1 %.not.i.i149, label %sqlite3VdbeJumpHere.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.es = zext nneg i32 %i.dx to i64
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %i.er, i64 %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i32 %i.en, ptr %i.eu, align 8, !tbaa !140
  br label %sqlite3VdbeJumpHere.exit

sqlite3VdbeJumpHere.exit:                         ; preds = %sqlite3VdbeUsesBtree.exit, %bb.ar, %bb.as
  %i.ev = or i32 %5, %4
  %or.cond3.not = icmp eq i32 %i.ev, 0
  br i1 %or.cond3.not, label %bb.au, label %bb.at

bb.at:                                            ; preds = %sqlite3VdbeJumpHere.exit
  %i.ew = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %i.dh, i32 noundef 46, i32 noundef 0, i32 noundef %i.dn) ; 0 uses
  br label %bb.av

bb.au:                                            ; preds = %sqlite3VdbeJumpHere.exit
  %i.ex = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %i.dh, i32 noundef 49, i32 noundef %spec.select, i32 noundef %i.dn) ; 0 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  tail call fastcc void @sqlite3OpenMasterTable(ptr noundef nonnull %0, i32 noundef %spec.select)
  %i.ey = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %i.dh, i32 noundef 24, i32 noundef 0, i32 noundef %i.dl) ; 0 uses
  %i.ez = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %i.dh, i32 noundef 112, i32 noundef 0, i32 noundef %i.dp) ; 0 uses
  %i.fa = tail call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %i.dh, i32 noundef 104, i32 noundef 0, i32 noundef %i.dp, i32 noundef %i.dl) ; 0 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !136 ; 2 uses
  %.not5.i = icmp eq ptr %i.fc, null
  br i1 %.not5.i, label %sqlite3VdbeChangeP5.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fd = load i32, ptr %i.em, align 8, !tbaa !135
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr [24 x i8], ptr %i.fc, i64 %i.fe
  %i.fg = getelementptr i8, ptr %i.ff, i64 -21
  store i8 8, ptr %i.fg, align 1, !tbaa !139
  br label %sqlite3VdbeChangeP5.exit

sqlite3VdbeChangeP5.exit:                         ; preds = %bb.av, %bb.aw
  %i.fh = tail call fastcc i32 @sqlite3VdbeAddOp0(ptr noundef nonnull %i.dh, i32 noundef 31) ; 0 uses
  br label %sqlite3NameFromToken.exit

sqlite3_free.exit:                                ; preds = %sqlite3AuthCheck.exit.thread163, %bb.t, %sqlite3AuthCheck.exit, %bb.x, %bb.y, %bb.v, %.loopexit, %bb.af, %bb.ac
  %i.fi = getelementptr inbounds i8, ptr %i.u, i64 -8 ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !28
  %sext.i = shl i64 %i.fj, 32
  %i.fk = ashr exact i64 %sext.i, 32
  %i.fl = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.fm = sub nsw i64 %i.fl, %i.fk
  store i64 %i.fm, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.fi) #43
  br label %sqlite3NameFromToken.exit

sqlite3NameFromToken.exit:                        ; preds = %sqlite3StrNDup.exit.i.i, %bb.d, %sqlite3TwoPartName.exit.thread, %bb.al, %bb.am, %sqlite3VdbeChangeP5.exit, %sqlite3TwoPartName.exit, %sqlite3_free.exit, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3EndTable(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) unnamed_addr #5 {
bb.a:
  %4 = alloca %struct.SrcList, align 8            ; 9 uses
  %5 = alloca %struct.NameContext, align 8        ; 11 uses
  %6 = alloca %struct.SelectDest, align 4         ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !244    ; 12 uses
  %i.b = icmp eq ptr %2, null
  %i.c = icmp eq ptr %3, null                     ; 2 uses
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %.critedge142, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !252
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %.critedge142

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 42 ; 3 uses
  %i.g = load i8, ptr %i.f, align 2, !tbaa !129
  %.not128 = icmp eq i8 %i.g, 0
  br i1 %.not128, label %bb.d, label %.critedge142

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !368  ; 18 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.critedge142, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 144 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !277  ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %sqlite3SchemaToIndex.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !278  ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i, label %sqlite3SchemaToIndex.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !235
  %wide.trip.count.i = zext nneg i32 %i.n to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 3 uses
  %i.r = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !236
  %i.u = icmp eq ptr %i.t, %i.l
  br i1 %i.u, label %.loopexit.loopexit.split.loop.exit13.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %sqlite3SchemaToIndex.exit, label %bb.f, !llvm.loop !279

.loopexit.loopexit.split.loop.exit13.i:           ; preds = %bb.f
  %i.v = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %sqlite3SchemaToIndex.exit

sqlite3SchemaToIndex.exit:                        ; preds = %bb.g, %bb.e, %.preheader.i, %.loopexit.loopexit.split.loop.exit13.i
  %.1.i = phi i32 [ -1000000, %bb.e ], [ 0, %.preheader.i ], [ %i.v, %.loopexit.loopexit.split.loop.exit13.i ], [ %i.n, %bb.g ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !404  ; 6 uses
  %.not129 = icmp eq ptr %i.x, null
  br i1 %.not129, label %bb.m, label %bb.h

bb.h:                                             ; preds = %sqlite3SchemaToIndex.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.y, i8 0, i64 40, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  store i16 1, ptr %4, align 8, !tbaa !1223
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !402
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !87
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.i, ptr %i.ab, align 8, !tbaa !1226
end_hunk_8
begin_hunk_9_@sqlite3FindDb:bb.a
  %i.bq = getelementptr inbounds i8, ptr %i.g, i64 -8 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !28
  %sext.i = shl i64 %i.br, 32
  %i.bs = ashr exact i64 %sext.i, 32
  %i.bt = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.bu = sub nsw i64 %i.bt, %i.bs
  store i64 %i.bu, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.bq) #43
  br label %sqlite3NameFromToken.exit

sqlite3NameFromToken.exit:                        ; preds = %sqlite3StrNDup.exit.i.i, %bb.b, %bb.a, %sqlite3_free.exit
  %.1 = phi i32 [ %.0.lcssa, %sqlite3_free.exit ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %sqlite3StrNDup.exit.i.i ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3CodeVerifySchema(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc ptr @sqlite3GetVdbe(ptr noundef %0) ; 8 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %sqlite3OpenTempDatabase.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !244
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1285
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !135  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !147  ; 6 uses
  %.not.i.i = icmp sgt i32 %i.j, %i.h
  br i1 %.not.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not23.i.i = icmp eq i32 %i.j, 0
  %i.k = shl nsw i32 %i.j, 1
  %spec.select.i.i = select i1 %.not23.i.i, i32 42, i32 %i.k ; 4 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !106
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 42 ; 2 uses
  %i.o = load i8, ptr %i.n, align 2, !tbaa !129
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.e, label %resizeOpArray.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.q = mul i32 %spec.select.i.i, 24
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !136
  %i.s = tail call ptr @sqlite3_realloc(ptr noundef %i.r, i32 noundef %i.q) ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %bb.f, label %sqlite3DbRealloc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.n, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i

sqlite3DbRealloc.exit.i.i.i:                      ; preds = %bb.e
  store i32 %spec.select.i.i, ptr %i.i, align 4, !tbaa !147
  store ptr %i.s, ptr %i.m, align 8, !tbaa !136
  %i.t = icmp sgt i32 %spec.select.i.i, %i.j
  br i1 %i.t, label %bb.g, label %resizeOpArray.exit.i.i

bb.g:                                             ; preds = %sqlite3DbRealloc.exit.i.i.i
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds [24 x i8], ptr %i.s, i64 %i.u
  %i.w = sub nsw i32 %spec.select.i.i, %i.j
  %i.x = zext nneg i32 %i.w to i64
  %i.y = mul nuw nsw i64 %i.x, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.y, i1 false)
  br label %resizeOpArray.exit.i.i

resizeOpArray.exit.i.i:                           ; preds = %bb.g, %sqlite3DbRealloc.exit.i.i.i, %bb.f, %bb.d
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !106
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 42
  %i.ab = load i8, ptr %i.aa, align 2, !tbaa !129
  %.not24.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not24.i.i, label %resizeOpArray.exit._crit_edge.i.i, label %sqlite3VdbeAddOp2.exit

resizeOpArray.exit._crit_edge.i.i:                ; preds = %resizeOpArray.exit.i.i
  %.pre.i.i = load i32, ptr %i.g, align 8, !tbaa !135
  br label %bb.h

bb.h:                                             ; preds = %resizeOpArray.exit._crit_edge.i.i, %bb.c
  %i.ac = phi i32 [ %.pre.i.i, %resizeOpArray.exit._crit_edge.i.i ], [ %i.h, %bb.c ]
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.g, align 8, !tbaa !135
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !136
  %i.ag = sext i32 %i.h to i64
  %i.ah = getelementptr inbounds [24 x i8], ptr %i.af, i64 %i.ag ; 3 uses
  store i8 90, ptr %i.ah, align 8, !tbaa !137
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store i8 0, ptr %i.aj, align 1, !tbaa !191
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 339
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ai, i8 0, i64 20, i1 false)
  store i8 0, ptr %i.ak, align 1, !tbaa !104
  %i.al = add nsw i32 %i.h, 1
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %resizeOpArray.exit.i.i, %bb.h
  %.0.i.i = phi i32 [ %i.al, %bb.h ], [ 1, %resizeOpArray.exit.i.i ]
  store i32 %.0.i.i, ptr %i.d, align 4, !tbaa !1285
  br label %bb.i

bb.i:                                             ; preds = %sqlite3VdbeAddOp2.exit, %bb.b
  %i.am = icmp sgt i32 %1, -1
  br i1 %i.am, label %bb.j, label %sqlite3OpenTempDatabase.exit

bb.j:                                             ; preds = %bb.i
  %i.an = shl nuw i32 1, %1                       ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !1286 ; 2 uses
  %i.aq = and i32 %i.ap, %i.an
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.k, label %sqlite3OpenTempDatabase.exit

bb.k:                                             ; preds = %bb.j
  %i.as = or i32 %i.ap, %i.an
  store i32 %i.as, ptr %i.ao, align 8, !tbaa !1286
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !235
  %i.av = zext nneg i32 %1 to i64                 ; 2 uses
  %i.aw = getelementptr inbounds nuw [48 x i8], ptr %i.au, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !236
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !280
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.av
  store i32 %i.az, ptr %i.bb, align 4, !tbaa !4
  %i.bc = icmp eq i32 %1, 1
  br i1 %i.bc, label %bb.l, label %sqlite3OpenTempDatabase.exit

bb.l:                                             ; preds = %bb.k
  %i.bd = load ptr, ptr %0, align 8, !tbaa !244   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !235
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 56 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !427
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.m, label %sqlite3OpenTempDatabase.exit

bb.m:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !1299
  %.not.i = icmp eq i8 %i.bk, 0
  br i1 %.not.i, label %bb.n, label %sqlite3OpenTempDatabase.exit

bb.n:                                             ; preds = %bb.m
  %i.bl = tail call fastcc i32 @sqlite3BtreeFactory(ptr noundef nonnull %i.bd, ptr noundef null, i32 noundef 0, i32 noundef 2000, i32 noundef 542, ptr noundef nonnull %i.bg) ; 2 uses
  %.not12.i = icmp eq i32 %i.bl, 0
  br i1 %.not12.i, label %sqlite3OpenTempDatabase.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.294)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !251
  br label %sqlite3OpenTempDatabase.exit

sqlite3OpenTempDatabase.exit:                     ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.i, %bb.k, %bb.j, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3TableLock(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext range(i8 0, 2) %3, ptr noundef %4) unnamed_addr #5 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !382  ; 3 uses
  %i.d = icmp sgt i32 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !381  ; 4 uses
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !1290
  %i.i = icmp eq i32 %i.h, %1
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !1293
  %i.l = icmp eq i32 %i.k, %2
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !1292
  %5 = or i8 %i.n, %3
  %6 = icmp ne i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, ptr %i.m, align 8, !tbaa !1292
  br label %bb.l

bb.e:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1559

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %i.o = load ptr, ptr %0, align 8, !tbaa !244
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 42 ; 2 uses
  %i.r = load i8, ptr %i.q, align 2, !tbaa !129
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.h

bb.f:                                             ; preds = %._crit_edge
  %i.t = mul i32 %i.c, 24
  %i.u = add i32 %i.t, 24
  %i.v = tail call ptr @sqlite3_realloc(ptr noundef %i.f, i32 noundef %i.u) ; 3 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.q, align 2, !tbaa !129
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %i.w = icmp eq ptr %i.f, null
  br i1 %i.w, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds i8, ptr %i.f, i64 -8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !28
  %sext.i.i = shl i64 %i.y, 32
  %i.z = ashr exact i64 %sext.i.i, 32
  %i.aa = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.ab = sub nsw i64 %i.aa, %i.z
  store i64 %i.ab, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.x) #43
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  store ptr %i.v, ptr %i.p, align 8, !tbaa !381
  %i.ac = load i32, ptr %i.b, align 8, !tbaa !382 ; 2 uses
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.b, align 8, !tbaa !382
  %i.ae = sext i32 %i.ac to i64
  %i.af = getelementptr inbounds [24 x i8], ptr %i.v, i64 %i.ae ; 4 uses
  store i32 %1, ptr %i.af, align 8, !tbaa !1290
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i32 %2, ptr %i.ag, align 4, !tbaa !1293
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i8 %3, ptr %i.ah, align 8, !tbaa !1292
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %4, ptr %i.ai, align 8, !tbaa !1294
  br label %bb.l

bb.k:                                             ; preds = %bb.h, %bb.i
  store ptr null, ptr %i.p, align 8, !tbaa !381
  store i32 0, ptr %i.b, align 8, !tbaa !382
  %i.aj = load ptr, ptr %0, align 8, !tbaa !244
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 42
  store i8 1, ptr %i.ak, align 2, !tbaa !129
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.a, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @sqlite3ExprResolveNames(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1314
  %i.d = load ptr, ptr %0, align 8, !tbaa !1399   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 344 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !1404
  %i.g = add nsw i32 %i.f, %i.c                   ; 2 uses
  %i.h = icmp sgt i32 %i.g, 1000
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.303, i32 noundef 1000)
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  store i32 %i.g, ptr %i.e, align 8, !tbaa !1404
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 33 ; 4 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !1406
  store i8 0, ptr %i.i, align 1, !tbaa !1406
  %i.k = tail call fastcc i32 @walkExprTree(ptr noundef nonnull %1, ptr noundef nonnull @nameResolverStep, ptr noundef nonnull %0) ; 0 uses
  %i.l = load i32, ptr %i.b, align 8, !tbaa !1314
  %i.m = load ptr, ptr %0, align 8, !tbaa !1399
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 344 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !1404
  %i.p = sub nsw i32 %i.o, %i.l
  store i32 %i.p, ptr %i.n, align 8, !tbaa !1404
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !1407
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.u = load i16, ptr %i.t, align 2, !tbaa !1335
  %i.v = or i16 %i.u, 8
  store i16 %i.v, ptr %i.t, align 2, !tbaa !1335
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = load i8, ptr %i.i, align 1, !tbaa !1406
  %.not = icmp eq i8 %i.w, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.y = load i16, ptr %i.x, align 2, !tbaa !1335
  %i.z = or i16 %i.y, 2
  store i16 %i.z, ptr %i.x, align 2, !tbaa !1335
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %.not21 = icmp eq i8 %i.j, 0
  br i1 %.not21, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.i, align 1, !tbaa !1406
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !1335
  %i.ac = lshr i16 %i.ab, 3
  %.lobit = and i16 %i.ac, 1
  %i.ad = zext nneg i16 %.lobit to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j, %bb.c
  %.0 = phi i32 [ %i.ad, %bb.j ], [ 1, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @sqlite3ResultSetOfSelect(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) unnamed_addr #5 {
bb.a:
  %3 = alloca %struct.NameContext, align 8        ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !244    ; 10 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.082 = phi ptr [ %2, %bb.a ], [ %i.c, %bb.b ]  ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.082, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1220 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !1560

bb.c:                                             ; preds = %bb.b
  %i.d = tail call fastcc i32 @prepSelectStmt(ptr noundef nonnull %0, ptr noundef nonnull %.082)
  %.not102 = icmp eq i32 %i.d, 0
  br i1 %.not102, label %bb.d, label %sqlite3DbMallocZero.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.e = tail call fastcc i32 @sqlite3SelectResolve(ptr noundef nonnull %0, ptr noundef nonnull %.082, ptr noundef null)
  %.not103 = icmp eq i32 %i.e, 0
  br i1 %.not103, label %bb.e, label %sqlite3DbMallocZero.exit.thread

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp eq ptr %i.a, null              ; 2 uses
  br i1 %.not.i.i, label %sqlite3DbMallocRaw.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 42 ; 2 uses
  %i.g = load i8, ptr %i.f, align 2, !tbaa !129
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.g, label %sqlite3DbMallocZero.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.i = tail call ptr @sqlite3_malloc(i32 noundef 152) ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.f, align 2, !tbaa !129
  br label %sqlite3DbMallocZero.exit.thread

sqlite3DbMallocRaw.exit.i:                        ; preds = %bb.e
  %i.k = tail call ptr @sqlite3_malloc(i32 noundef 152) ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %sqlite3DbMallocZero.exit.thread, label %bb.i

bb.i:                                             ; preds = %sqlite3DbMallocRaw.exit.i, %bb.g
  %.0.i11.i = phi ptr [ %i.k, %sqlite3DbMallocRaw.exit.i ], [ %i.i, %bb.g ] ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(152) %.0.i11.i, i8 0, i64 152, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 56
  store i32 1, ptr %i.l, align 8, !tbaa !385
end_hunk_9
begin_hunk_10_@sqlite3WhereBegin:bb.a

bb.om:                                            ; preds = %sqlite3DbRealloc.exit.i.i.i1086
  %i.bxd = sext i32 %i.bwt to i64
  %i.bxe = getelementptr inbounds [24 x i8], ptr %i.bxb, i64 %i.bxd
  %i.bxf = sub nsw i32 %spec.select.i.i1079, %i.bwt
  %i.bxg = zext nneg i32 %i.bxf to i64
  %i.bxh = mul nuw nsw i64 %i.bxg, 24
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bxe, i8 0, i64 %i.bxh, i1 false)
  br label %resizeOpArray.exit.i.i1080

resizeOpArray.exit.i.i1080:                       ; preds = %bb.om, %sqlite3DbRealloc.exit.i.i.i1086, %bb.ol, %bb.oj
  %i.bxi = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.bxj = getelementptr inbounds nuw i8, ptr %i.bxi, i64 42
  %i.bxk = load i8, ptr %i.bxj, align 2, !tbaa !129
  %.not24.i.i1081 = icmp eq i8 %i.bxk, 0
  %.pre1765 = load i32, ptr %i.axd, align 8, !tbaa !135 ; 2 uses
  br i1 %.not24.i.i1081, label %resizeOpArray.exit._crit_edge.i.i1083, label %sqlite3VdbeAddOp2.exit1087

resizeOpArray.exit._crit_edge.i.i1083:            ; preds = %resizeOpArray.exit.i.i1080, %sqlite3GetTempReg.exit1076
  %i.bxl = phi i32 [ %.val8021474, %sqlite3GetTempReg.exit1076 ], [ %.pre1765, %resizeOpArray.exit.i.i1080 ]
  %i.bxm = add nsw i32 %i.bxl, 1
  store i32 %i.bxm, ptr %i.axd, align 8, !tbaa !135
  %i.bxn = load ptr, ptr %i.axi, align 8, !tbaa !136
  %i.bxo = sext i32 %.val8021474 to i64
  %i.bxp = getelementptr inbounds [24 x i8], ptr %i.bxn, i64 %i.bxo ; 6 uses
  store i8 38, ptr %i.bxp, align 8, !tbaa !137
  %i.bxq = getelementptr inbounds nuw i8, ptr %i.bxp, i64 4
  store i32 %i.axv, ptr %i.bxq, align 4, !tbaa !141
  %i.bxr = getelementptr inbounds nuw i8, ptr %i.bxp, i64 8
  store i32 %.0.i1075, ptr %i.bxr, align 8, !tbaa !140
  %i.bxs = getelementptr inbounds nuw i8, ptr %i.bxp, i64 12
  store i32 0, ptr %i.bxs, align 4, !tbaa !190
  %i.bxt = getelementptr inbounds nuw i8, ptr %i.bxp, i64 16
  store ptr null, ptr %i.bxt, align 8, !tbaa !37
  %i.bxu = getelementptr inbounds nuw i8, ptr %i.bxp, i64 1
  store i8 0, ptr %i.bxu, align 1, !tbaa !191
  store i8 0, ptr %i.axj, align 1, !tbaa !104
  %.pre1764 = load i32, ptr %i.axd, align 8, !tbaa !135
  br label %sqlite3VdbeAddOp2.exit1087

sqlite3VdbeAddOp2.exit1087:                       ; preds = %resizeOpArray.exit.i.i1080, %resizeOpArray.exit._crit_edge.i.i1083
  %i.bxv = phi i32 [ %.pre1765, %resizeOpArray.exit.i.i1080 ], [ %.pre1764, %resizeOpArray.exit._crit_edge.i.i1083 ] ; 3 uses
  %i.bxw = load i32, ptr %i.btp, align 8, !tbaa !1772
  %i.bxx = load i32, ptr %i.axh, align 4, !tbaa !147 ; 6 uses
  %.not.i1088 = icmp sgt i32 %i.bxx, %i.bxv
  br i1 %.not.i1088, label %bb.or, label %bb.on

bb.on:                                            ; preds = %sqlite3VdbeAddOp2.exit1087
  %.not23.i1089 = icmp eq i32 %i.bxx, 0
  %i.bxy = shl nsw i32 %i.bxx, 1
  %spec.select.i1090 = select i1 %.not23.i1089, i32 42, i32 %i.bxy ; 4 uses
  %i.bxz = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.bya = getelementptr inbounds nuw i8, ptr %i.bxz, i64 42 ; 2 uses
  %i.byb = load i8, ptr %i.bya, align 2, !tbaa !129
  %i.byc = icmp eq i8 %i.byb, 0
  br i1 %i.byc, label %bb.oo, label %resizeOpArray.exit.i1091

bb.oo:                                            ; preds = %bb.on
  %i.byd = mul i32 %spec.select.i1090, 24
  %i.bye = load ptr, ptr %i.axi, align 8, !tbaa !136
  %i.byf = call ptr @sqlite3_realloc(ptr noundef %i.bye, i32 noundef %i.byd) ; 3 uses
  %.not.i.i.i1096 = icmp eq ptr %i.byf, null
  br i1 %.not.i.i.i1096, label %bb.op, label %sqlite3DbRealloc.exit.i.i1097

bb.op:                                            ; preds = %bb.oo
  store i8 1, ptr %i.bya, align 2, !tbaa !129
  br label %resizeOpArray.exit.i1091

sqlite3DbRealloc.exit.i.i1097:                    ; preds = %bb.oo
  store i32 %spec.select.i1090, ptr %i.axh, align 4, !tbaa !147
  store ptr %i.byf, ptr %i.axi, align 8, !tbaa !136
  %i.byg = icmp sgt i32 %spec.select.i1090, %i.bxx
  br i1 %i.byg, label %bb.oq, label %resizeOpArray.exit.i1091

bb.oq:                                            ; preds = %sqlite3DbRealloc.exit.i.i1097
  %i.byh = sext i32 %i.bxx to i64
  %i.byi = getelementptr inbounds [24 x i8], ptr %i.byf, i64 %i.byh
  %i.byj = sub nsw i32 %spec.select.i1090, %i.bxx
  %i.byk = zext nneg i32 %i.byj to i64
  %i.byl = mul nuw nsw i64 %i.byk, 24
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.byi, i8 0, i64 %i.byl, i1 false)
  br label %resizeOpArray.exit.i1091

resizeOpArray.exit.i1091:                         ; preds = %bb.oq, %sqlite3DbRealloc.exit.i.i1097, %bb.op, %bb.on
  %i.bym = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.byn = getelementptr inbounds nuw i8, ptr %i.bym, i64 42
  %i.byo = load i8, ptr %i.byn, align 2, !tbaa !129
  %.not24.i1092 = icmp eq i8 %i.byo, 0
  br i1 %.not24.i1092, label %resizeOpArray.exit._crit_edge.i1094, label %sqlite3VdbeAddOp3.exit1098

resizeOpArray.exit._crit_edge.i1094:              ; preds = %resizeOpArray.exit.i1091
  %.pre.i1095 = load i32, ptr %i.axd, align 8, !tbaa !135
  br label %bb.or

bb.or:                                            ; preds = %resizeOpArray.exit._crit_edge.i1094, %sqlite3VdbeAddOp2.exit1087
  %i.byp = phi i32 [ %.pre.i1095, %resizeOpArray.exit._crit_edge.i1094 ], [ %i.bxv, %sqlite3VdbeAddOp2.exit1087 ]
  %i.byq = add nsw i32 %i.byp, 1
  store i32 %i.byq, ptr %i.axd, align 8, !tbaa !135
  %i.byr = load ptr, ptr %i.axi, align 8, !tbaa !136
  %i.bys = sext i32 %i.bxv to i64
  %i.byt = getelementptr inbounds [24 x i8], ptr %i.byr, i64 %i.bys ; 6 uses
  store i8 %.0702, ptr %i.byt, align 8, !tbaa !137
  %i.byu = getelementptr inbounds nuw i8, ptr %i.byt, i64 4
  store i32 %i.bxw, ptr %i.byu, align 4, !tbaa !141
  %i.byv = getelementptr inbounds nuw i8, ptr %i.byt, i64 8
  store i32 %i.ayz, ptr %i.byv, align 8, !tbaa !140
  %i.byw = getelementptr inbounds nuw i8, ptr %i.byt, i64 12
  store i32 %.0.i1075, ptr %i.byw, align 4, !tbaa !190
  %i.byx = getelementptr inbounds nuw i8, ptr %i.byt, i64 16
  store ptr null, ptr %i.byx, align 8, !tbaa !37
  %i.byy = getelementptr inbounds nuw i8, ptr %i.byt, i64 1
  store i8 0, ptr %i.byy, align 1, !tbaa !191
  store i8 0, ptr %i.axj, align 1, !tbaa !104
  br label %sqlite3VdbeAddOp3.exit1098

sqlite3VdbeAddOp3.exit1098:                       ; preds = %bb.or, %resizeOpArray.exit.i1091
  %i.byz = load ptr, ptr %i.axi, align 8, !tbaa !136 ; 2 uses
  %.not5.i = icmp eq ptr %i.byz, null
  br i1 %.not5.i, label %sqlite3VdbeChangeP5.exit, label %bb.os

bb.os:                                            ; preds = %sqlite3VdbeAddOp3.exit1098
  %i.bza = load i32, ptr %i.axd, align 8, !tbaa !135
  %i.bzb = sext i32 %i.bza to i64
  %i.bzc = getelementptr [24 x i8], ptr %i.byz, i64 %i.bzb
  %i.bzd = getelementptr i8, ptr %i.bzc, i64 -21
  store i8 107, ptr %i.bzd, align 1, !tbaa !139
  br label %sqlite3VdbeChangeP5.exit

sqlite3VdbeChangeP5.exit:                         ; preds = %sqlite3VdbeAddOp3.exit1098, %bb.os
  %.not.i1100 = icmp eq i32 %.0.i1075, 0
  br i1 %.not.i1100, label %sqlite3ReleaseTempReg.exit1101, label %bb.ot

bb.ot:                                            ; preds = %sqlite3VdbeChangeP5.exit
  %i.bze = load i8, ptr %i.axm, align 1, !tbaa !1483 ; 3 uses
  %i.bzf = icmp ult i8 %i.bze, 8
  br i1 %i.bzf, label %bb.ou, label %sqlite3ReleaseTempReg.exit1101

bb.ou:                                            ; preds = %bb.ot
  %i.bzg = zext nneg i8 %i.bze to i64
  %i.bzh = add nuw nsw i8 %i.bze, 1
  store i8 %i.bzh, ptr %i.axm, align 1, !tbaa !1483
  %i.bzi = getelementptr inbounds nuw [4 x i8], ptr %i.axn, i64 %i.bzg
  store i32 %.0.i1075, ptr %i.bzi, align 4, !tbaa !4
  br label %sqlite3ReleaseTempReg.exit1101

bb.ov:                                            ; preds = %bb.mg
  %i.bzj = and i32 %i.bjg, 8192
  %.not752 = icmp eq i32 %i.bzj, 0
  br i1 %.not752, label %bb.tl, label %bb.ow

bb.ow:                                            ; preds = %bb.ov
  %i.bzk = getelementptr inbounds nuw i8, ptr %.26581654, i64 60
  %i.bzl = load i32, ptr %i.bzk, align 4, !tbaa !1747 ; 9 uses
  %i.bzm = lshr i32 %i.bjg, 16
  %.lobit = and i32 %i.bzm, 1                     ; 3 uses
  %i.bzn = lshr i32 %i.bjg, 17
  %.lobit757 = and i32 %i.bzn, 1                  ; 3 uses
  %i.bzo = call fastcc i32 @codeAllEqualityTerms(ptr noundef nonnull %0, ptr noundef nonnull %.26581654, ptr noundef %6, i64 noundef %.16481656, i32 noundef 2) ; 6 uses
  %i.bzp = getelementptr inbounds nuw i8, ptr %i.axx, i64 72
  %i.bzq = load ptr, ptr %i.bzp, align 8, !tbaa !1425
  %i.bzr = sext i32 %i.bzl to i64                 ; 4 uses
  %i.bzs = getelementptr inbounds i8, ptr %i.bzq, i64 %i.bzr
  %i.bzt = load i8, ptr %i.bzs, align 1, !tbaa !37
  %i.bzu = icmp eq i8 %i.bzt, 0                   ; 4 uses
  %.795 = select i1 %i.bzu, i16 24, i16 36
  %.796 = select i1 %i.bzu, i16 36, i16 24
  %.lobit..lobit757 = select i1 %i.bzu, i32 %.lobit, i32 %.lobit757 ; 2 uses
  %.lobit757..lobit = select i1 %i.bzu, i32 %.lobit757, i32 %.lobit ; 2 uses
  br i1 %i.axo, label %bb.ox, label %bb.pa

bb.ox:                                            ; preds = %bb.ow
  %i.bzv = load i32, ptr %i.aya, align 4, !tbaa !1745
  %i.bzw = and i32 %i.bzv, 1048576
  %.not758 = icmp eq i32 %i.bzw, 0
  br i1 %.not758, label %bb.pa, label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  %i.bzx = getelementptr inbounds nuw i8, ptr %i.axx, i64 8
  %i.bzy = load i32, ptr %i.bzx, align 8, !tbaa !269
  %i.bzz = icmp sgt i32 %i.bzy, %i.bzl
  br i1 %i.bzz, label %bb.oz, label %bb.pa

bb.oz:                                            ; preds = %bb.oy
  %i.caa = load ptr, ptr %i.axp, align 8, !tbaa !1201
  %i.cab = load ptr, ptr %i.caa, align 8, !tbaa !1205
  %i.cac = getelementptr inbounds nuw i8, ptr %i.cab, i64 76
  %i.cad = load i32, ptr %i.cac, align 4, !tbaa !1360
  %i.cae = getelementptr inbounds nuw i8, ptr %i.axx, i64 16
  %i.caf = load ptr, ptr %i.cae, align 8, !tbaa !271
  %i.cag = getelementptr inbounds [4 x i8], ptr %i.caf, i64 %i.bzr
  %i.cah = load i32, ptr %i.cag, align 4, !tbaa !4
  %i.cai = icmp eq i32 %i.cad, %i.cah             ; 2 uses
  %spec.select797 = select i1 %i.cai, i1 %i.ayd, i1 false
  %not. = xor i1 %i.cai, true
  br label %bb.pa

bb.pa:                                            ; preds = %bb.oz, %bb.oy, %bb.ox, %bb.ow
  %or.cond7 = phi i1 [ false, %bb.ow ], [ %spec.select797, %bb.oz ], [ false, %bb.oy ], [ false, %bb.ox ]
  %i.caj = phi i1 [ true, %bb.ow ], [ %not., %bb.oz ], [ true, %bb.oy ], [ true, %bb.ox ] ; 3 uses
  %i.cak = load i32, ptr %i.aza, align 4, !tbaa !1756 ; 5 uses
  %7 = icmp ne i32 %.lobit..lobit757, 0           ; 2 uses
  br i1 %7, label %bb.pb, label %disableTerm.exit1120

bb.pb:                                            ; preds = %bb.pa
  %i.cal = getelementptr inbounds nuw i8, ptr %i.axx, i64 16
  %i.cam = load ptr, ptr %i.cal, align 8, !tbaa !271
  %i.can = getelementptr inbounds [4 x i8], ptr %i.cam, i64 %i.bzr
  %i.cao = load i32, ptr %i.can, align 4, !tbaa !4
  %i.cap = call fastcc ptr @findTerm(ptr noundef %6, i32 noundef %i.axv, i32 noundef %i.cao, i64 noundef %.16481656, i16 noundef zeroext %.795, ptr noundef nonnull %i.axx) ; 3 uses
  %i.caq = load ptr, ptr %i.cap, align 8, !tbaa !1732
  %i.car = getelementptr inbounds nuw i8, ptr %i.caq, i64 24
  %i.cas = load ptr, ptr %i.car, align 8, !tbaa !1199
  %i.cat = add nsw i32 %i.bzo, %i.bzl             ; 4 uses
  %i.cau = call fastcc i32 @sqlite3ExprCodeTarget(ptr noundef nonnull %0, ptr noundef %i.cas, i32 noundef %i.cat), !inline_history !1670 ; 2 uses
  %.not.i1102 = icmp eq i32 %i.cau, %i.cat
  br i1 %.not.i1102, label %sqlite3ExprCode.exit1104, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  %i.cav = load ptr, ptr %i.b, align 8, !tbaa !367 ; 2 uses
  %.not11.i1103 = icmp eq ptr %i.cav, null
  br i1 %.not11.i1103, label %sqlite3ExprCode.exit1104, label %bb.pd

bb.pd:                                            ; preds = %bb.pc
  %i.caw = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %i.cav, i32 noundef 7, i32 noundef %i.cau, i32 noundef %i.cat), !inline_history !1670 ; 0 uses
  br label %sqlite3ExprCode.exit1104

sqlite3ExprCode.exit1104:                         ; preds = %bb.pb, %bb.pc, %bb.pd
  %i.cax = load i32, ptr %i.axd, align 8, !tbaa !135 ; 3 uses
  %i.cay = load i32, ptr %i.axh, align 4, !tbaa !147 ; 6 uses
  %.not.i.i1105 = icmp sgt i32 %i.cay, %i.cax
  br i1 %.not.i.i1105, label %bb.pi, label %bb.pe

bb.pe:                                            ; preds = %sqlite3ExprCode.exit1104
  %.not23.i.i1106 = icmp eq i32 %i.cay, 0
  %i.caz = shl nsw i32 %i.cay, 1
  %spec.select.i.i1107 = select i1 %.not23.i.i1106, i32 42, i32 %i.caz ; 4 uses
  %i.cba = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.cbb = getelementptr inbounds nuw i8, ptr %i.cba, i64 42 ; 2 uses
  %i.cbc = load i8, ptr %i.cbb, align 2, !tbaa !129
  %i.cbd = icmp eq i8 %i.cbc, 0
  br i1 %i.cbd, label %bb.pf, label %resizeOpArray.exit.i.i1108

bb.pf:                                            ; preds = %bb.pe
  %i.cbe = mul i32 %spec.select.i.i1107, 24
  %i.cbf = load ptr, ptr %i.axi, align 8, !tbaa !136
  %i.cbg = call ptr @sqlite3_realloc(ptr noundef %i.cbf, i32 noundef %i.cbe) ; 3 uses
  %.not.i.i.i.i1113 = icmp eq ptr %i.cbg, null
  br i1 %.not.i.i.i.i1113, label %bb.pg, label %sqlite3DbRealloc.exit.i.i.i1114

bb.pg:                                            ; preds = %bb.pf
  store i8 1, ptr %i.cbb, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i1108

sqlite3DbRealloc.exit.i.i.i1114:                  ; preds = %bb.pf
  store i32 %spec.select.i.i1107, ptr %i.axh, align 4, !tbaa !147
  store ptr %i.cbg, ptr %i.axi, align 8, !tbaa !136
  %i.cbh = icmp sgt i32 %spec.select.i.i1107, %i.cay
  br i1 %i.cbh, label %bb.ph, label %resizeOpArray.exit.i.i1108

bb.ph:                                            ; preds = %sqlite3DbRealloc.exit.i.i.i1114
  %i.cbi = sext i32 %i.cay to i64
  %i.cbj = getelementptr inbounds [24 x i8], ptr %i.cbg, i64 %i.cbi
  %i.cbk = sub nsw i32 %spec.select.i.i1107, %i.cay
  %i.cbl = zext nneg i32 %i.cbk to i64
  %i.cbm = mul nuw nsw i64 %i.cbl, 24
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cbj, i8 0, i64 %i.cbm, i1 false)
  br label %resizeOpArray.exit.i.i1108

resizeOpArray.exit.i.i1108:                       ; preds = %bb.ph, %sqlite3DbRealloc.exit.i.i.i1114, %bb.pg, %bb.pe
  %i.cbn = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.cbo = getelementptr inbounds nuw i8, ptr %i.cbn, i64 42
  %i.cbp = load i8, ptr %i.cbo, align 2, !tbaa !129
  %.not24.i.i1109 = icmp eq i8 %i.cbp, 0
  br i1 %.not24.i.i1109, label %resizeOpArray.exit._crit_edge.i.i1111, label %sqlite3VdbeAddOp2.exit1115

resizeOpArray.exit._crit_edge.i.i1111:            ; preds = %resizeOpArray.exit.i.i1108
  %.pre.i.i1112 = load i32, ptr %i.axd, align 8, !tbaa !135
  br label %bb.pi

bb.pi:                                            ; preds = %resizeOpArray.exit._crit_edge.i.i1111, %sqlite3ExprCode.exit1104
  %i.cbq = phi i32 [ %.pre.i.i1112, %resizeOpArray.exit._crit_edge.i.i1111 ], [ %i.cax, %sqlite3ExprCode.exit1104 ]
  %i.cbr = add nsw i32 %i.cbq, 1
  store i32 %i.cbr, ptr %i.axd, align 8, !tbaa !135
  %i.cbs = load ptr, ptr %i.axi, align 8, !tbaa !136
  %i.cbt = sext i32 %i.cax to i64
  %i.cbu = getelementptr inbounds [24 x i8], ptr %i.cbs, i64 %i.cbt ; 6 uses
  store i8 65, ptr %i.cbu, align 8, !tbaa !137
  %i.cbv = getelementptr inbounds nuw i8, ptr %i.cbu, i64 4
  store i32 %i.cat, ptr %i.cbv, align 4, !tbaa !141
  %i.cbw = getelementptr inbounds nuw i8, ptr %i.cbu, i64 8
  store i32 %i.cak, ptr %i.cbw, align 8, !tbaa !140
  %i.cbx = getelementptr inbounds nuw i8, ptr %i.cbu, i64 12
  store i32 0, ptr %i.cbx, align 4, !tbaa !190
  %i.cby = getelementptr inbounds nuw i8, ptr %i.cbu, i64 16
  store ptr null, ptr %i.cby, align 8, !tbaa !37
  %i.cbz = getelementptr inbounds nuw i8, ptr %i.cbu, i64 1
  store i8 0, ptr %i.cbz, align 1, !tbaa !191
  store i8 0, ptr %i.axj, align 1, !tbaa !104
  br label %sqlite3VdbeAddOp2.exit1115

sqlite3VdbeAddOp2.exit1115:                       ; preds = %resizeOpArray.exit.i.i1108, %bb.pi
  %i.cca = getelementptr inbounds nuw i8, ptr %i.cap, i64 14
  %i.ccb = load i16, ptr %i.cca, align 2, !tbaa !1699
  %i.ccc = and i16 %i.ccb, 40
  %i.ccd = getelementptr inbounds nuw i8, ptr %.26581654, i64 12
  br label %bb.pj

bb.pj:                                            ; preds = %sqlite3VdbeAddOp2.exit1115, %bb.pn
  %.tr12.i1117 = phi ptr [ %i.cap, %sqlite3VdbeAddOp2.exit1115 ], [ %i.ccx, %bb.pn ] ; 4 uses
  %i.cce = getelementptr inbounds nuw i8, ptr %.tr12.i1117, i64 16 ; 2 uses
  %i.ccf = load i8, ptr %i.cce, align 8, !tbaa !1763 ; 2 uses
  %i.ccg = and i8 %i.ccf, 4
  %i.cch = icmp eq i8 %i.ccg, 0
  br i1 %i.cch, label %bb.pk, label %disableTerm.exit1120.thread.loopexit

bb.pk:                                            ; preds = %bb.pj
  %i.cci = load i32, ptr %i.ccd, align 4, !tbaa !1759
  %i.ccj = icmp eq i32 %i.cci, 0
  br i1 %i.ccj, label %bb.pm, label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  %i.cck = load ptr, ptr %.tr12.i1117, align 8, !tbaa !1732
  %i.ccl = getelementptr inbounds nuw i8, ptr %i.cck, i64 2
  %i.ccm = load i16, ptr %i.ccl, align 2, !tbaa !1335
  %i.ccn = and i16 %i.ccm, 1
  %.not11.i1119 = icmp eq i16 %i.ccn, 0
  br i1 %.not11.i1119, label %disableTerm.exit1120.thread.loopexit, label %bb.pm

bb.pm:                                            ; preds = %bb.pl, %bb.pk
  %i.cco = or disjoint i8 %i.ccf, 4
  store i8 %i.cco, ptr %i.cce, align 8, !tbaa !1763
  %i.ccp = getelementptr inbounds nuw i8, ptr %.tr12.i1117, i64 8
  %i.ccq = load i16, ptr %i.ccp, align 8, !tbaa !1764 ; 2 uses
  %i.ccr = icmp sgt i16 %i.ccq, -1
  br i1 %i.ccr, label %bb.pn, label %disableTerm.exit1120.thread.loopexit

bb.pn:                                            ; preds = %bb.pm
  %i.ccs = getelementptr inbounds nuw i8, ptr %.tr12.i1117, i64 24
  %i.cct = load ptr, ptr %i.ccs, align 8, !tbaa !1765
  %i.ccu = getelementptr inbounds nuw i8, ptr %i.cct, i64 24
  %i.ccv = load ptr, ptr %i.ccu, align 8, !tbaa !1678
  %i.ccw = zext nneg i16 %i.ccq to i64
  %i.ccx = getelementptr inbounds nuw [48 x i8], ptr %i.ccv, i64 %i.ccw ; 2 uses
  %i.ccy = getelementptr inbounds nuw i8, ptr %i.ccx, i64 17 ; 2 uses
  %i.ccz = load i8, ptr %i.ccy, align 1, !tbaa !1766
  %i.cda = add i8 %i.ccz, -1                      ; 2 uses
  store i8 %i.cda, ptr %i.ccy, align 1, !tbaa !1766
  %i.cdb = icmp eq i8 %i.cda, 0
  br i1 %i.cdb, label %bb.pj, label %disableTerm.exit1120.thread.loopexit

disableTerm.exit1120:                             ; preds = %bb.pa
  %i.cdc = icmp sgt i32 %i.bzl, 0                 ; 2 uses
  %i.cdd = select i1 %i.cdc, i32 58, i32 22
  %brmerge = select i1 %i.cdc, i1 true, i1 %or.cond7
  br i1 %brmerge, label %disableTerm.exit1120.thread, label %bb.qf

disableTerm.exit1120.thread.loopexit:             ; preds = %bb.pj, %bb.pl, %bb.pm, %bb.pn
  %i.cde = zext nneg i16 %i.ccc to i32
  br label %disableTerm.exit1120.thread

disableTerm.exit1120.thread:                      ; preds = %disableTerm.exit1120.thread.loopexit, %disableTerm.exit1120
  %.06691485 = phi i32 [ %i.cdd, %disableTerm.exit1120 ], [ 58, %disableTerm.exit1120.thread.loopexit ] ; 3 uses
  %.06771483.shrunk = phi i32 [ 1, %disableTerm.exit1120 ], [ %i.cde, %disableTerm.exit1120.thread.loopexit ]
  %i.cdf = add nsw i32 %.lobit..lobit757, %i.bzl  ; 3 uses
  %or.cond9 = or i1 %7, %i.caj
  %.pre1767 = load i32, ptr %i.axd, align 8, !tbaa !135 ; 4 uses
  %.pre1769 = load i32, ptr %i.axh, align 4, !tbaa !147 ; 7 uses
  br i1 %or.cond9, label %bb.pt, label %bb.po

bb.po:                                            ; preds = %disableTerm.exit1120.thread
  %i.cdg = add nsw i32 %i.cdf, %i.bzo
  %.not.i.i1121 = icmp sgt i32 %.pre1769, %.pre1767
  br i1 %.not.i.i1121, label %resizeOpArray.exit._crit_edge.i.i1127, label %bb.pp

bb.pp:                                            ; preds = %bb.po
  %.not23.i.i1122 = icmp eq i32 %.pre1769, 0
  %i.cdh = shl nsw i32 %.pre1769, 1
  %spec.select.i.i1123 = select i1 %.not23.i.i1122, i32 42, i32 %i.cdh ; 4 uses
  %i.cdi = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.cdj = getelementptr inbounds nuw i8, ptr %i.cdi, i64 42 ; 2 uses
  %i.cdk = load i8, ptr %i.cdj, align 2, !tbaa !129
  %i.cdl = icmp eq i8 %i.cdk, 0
  br i1 %i.cdl, label %bb.pq, label %resizeOpArray.exit.i.i1124

bb.pq:                                            ; preds = %bb.pp
  %i.cdm = mul i32 %spec.select.i.i1123, 24
  %i.cdn = load ptr, ptr %i.axi, align 8, !tbaa !136
  %i.cdo = call ptr @sqlite3_realloc(ptr noundef %i.cdn, i32 noundef %i.cdm) ; 3 uses
  %.not.i.i.i.i1129 = icmp eq ptr %i.cdo, null
  br i1 %.not.i.i.i.i1129, label %bb.pr, label %sqlite3DbRealloc.exit.i.i.i1130

bb.pr:                                            ; preds = %bb.pq
  store i8 1, ptr %i.cdj, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i1124

sqlite3DbRealloc.exit.i.i.i1130:                  ; preds = %bb.pq
  store i32 %spec.select.i.i1123, ptr %i.axh, align 4, !tbaa !147
  store ptr %i.cdo, ptr %i.axi, align 8, !tbaa !136
  %i.cdp = icmp sgt i32 %spec.select.i.i1123, %.pre1769
  br i1 %i.cdp, label %bb.ps, label %resizeOpArray.exit.i.i1124

bb.ps:                                            ; preds = %sqlite3DbRealloc.exit.i.i.i1130
  %i.cdq = sext i32 %.pre1769 to i64
  %i.cdr = getelementptr inbounds [24 x i8], ptr %i.cdo, i64 %i.cdq
  %i.cds = sub nsw i32 %spec.select.i.i1123, %.pre1769
  %i.cdt = zext nneg i32 %i.cds to i64
  %i.cdu = mul nuw nsw i64 %i.cdt, 24
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cdr, i8 0, i64 %i.cdu, i1 false)
  br label %resizeOpArray.exit.i.i1124

resizeOpArray.exit.i.i1124:                       ; preds = %bb.ps, %sqlite3DbRealloc.exit.i.i.i1130, %bb.pr, %bb.pp
  %i.cdv = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.cdw = getelementptr inbounds nuw i8, ptr %i.cdv, i64 42
  %i.cdx = load i8, ptr %i.cdw, align 2, !tbaa !129
  %.not24.i.i1125 = icmp eq i8 %i.cdx, 0
  %.pre1766.pre1777 = load i32, ptr %i.axd, align 8, !tbaa !135 ; 2 uses
  br i1 %.not24.i.i1125, label %resizeOpArray.exit._crit_edge.i.i1127, label %sqlite3VdbeAddOp2.exit1131

resizeOpArray.exit._crit_edge.i.i1127:            ; preds = %resizeOpArray.exit.i.i1124, %bb.po
  %i.cdy = phi i32 [ %.pre1767, %bb.po ], [ %.pre1766.pre1777, %resizeOpArray.exit.i.i1124 ]
  %i.cdz = add nsw i32 %i.cdy, 1
  store i32 %i.cdz, ptr %i.axd, align 8, !tbaa !135
  %i.cea = load ptr, ptr %i.axi, align 8, !tbaa !136
  %i.ceb = sext i32 %.pre1767 to i64
  %i.cec = getelementptr inbounds [24 x i8], ptr %i.cea, i64 %i.ceb ; 6 uses
  store i8 112, ptr %i.cec, align 8, !tbaa !137
  %i.ced = getelementptr inbounds nuw i8, ptr %i.cec, i64 4
  store i32 0, ptr %i.ced, align 4, !tbaa !141
  %i.cee = getelementptr inbounds nuw i8, ptr %i.cec, i64 8
  store i32 %i.cdg, ptr %i.cee, align 8, !tbaa !140
  %i.cef = getelementptr inbounds nuw i8, ptr %i.cec, i64 12
  store i32 0, ptr %i.cef, align 4, !tbaa !190
  %i.ceg = getelementptr inbounds nuw i8, ptr %i.cec, i64 16
  store ptr null, ptr %i.ceg, align 8, !tbaa !37
  %i.ceh = getelementptr inbounds nuw i8, ptr %i.cec, i64 1
  store i8 0, ptr %i.ceh, align 1, !tbaa !191
  store i8 0, ptr %i.axj, align 1, !tbaa !104
  %.pre1766.pre = load i32, ptr %i.axd, align 8, !tbaa !135
  br label %sqlite3VdbeAddOp2.exit1131

sqlite3VdbeAddOp2.exit1131:                       ; preds = %resizeOpArray.exit.i.i1124, %resizeOpArray.exit._crit_edge.i.i1127
  %.pre1766 = phi i32 [ %.pre1766.pre1777, %resizeOpArray.exit.i.i1124 ], [ %.pre1766.pre, %resizeOpArray.exit._crit_edge.i.i1127 ]
  %i.cei = add nsw i32 %i.cdf, 1
  %.pre1768 = load i32, ptr %i.axh, align 4, !tbaa !147
  br label %bb.pt

bb.pt:                                            ; preds = %sqlite3VdbeAddOp2.exit1131, %disableTerm.exit1120.thread
  %i.cej = phi i32 [ %.pre1769, %disableTerm.exit1120.thread ], [ %.pre1768, %sqlite3VdbeAddOp2.exit1131 ] ; 6 uses
  %i.cek = phi i32 [ %.pre1767, %disableTerm.exit1120.thread ], [ %.pre1766, %sqlite3VdbeAddOp2.exit1131 ] ; 3 uses
  %.1678 = phi i32 [ %.06771483.shrunk, %disableTerm.exit1120.thread ], [ 0, %sqlite3VdbeAddOp2.exit1131 ] ; 4 uses
  %.0655 = phi i32 [ %i.cdf, %disableTerm.exit1120.thread ], [ %i.cei, %sqlite3VdbeAddOp2.exit1131 ]
  %i.cel = getelementptr inbounds nuw i8, ptr %.26581654, i64 8 ; 2 uses
  %i.cem = load i32, ptr %i.cel, align 8, !tbaa !1772
  %.not.i.i1132 = icmp sgt i32 %i.cej, %i.cek
  br i1 %.not.i.i1132, label %bb.py, label %bb.pu

bb.pu:                                            ; preds = %bb.pt
  %.not23.i.i1133 = icmp eq i32 %i.cej, 0
  %i.cen = shl nsw i32 %i.cej, 1
  %spec.select.i.i1134 = select i1 %.not23.i.i1133, i32 42, i32 %i.cen ; 4 uses
  %i.ceo = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.cep = getelementptr inbounds nuw i8, ptr %i.ceo, i64 42 ; 2 uses
  %i.ceq = load i8, ptr %i.cep, align 2, !tbaa !129
  %i.cer = icmp eq i8 %i.ceq, 0
  br i1 %i.cer, label %bb.pv, label %resizeOpArray.exit.i.i1135

bb.pv:                                            ; preds = %bb.pu
  %i.ces = mul i32 %spec.select.i.i1134, 24
  %i.cet = load ptr, ptr %i.axi, align 8, !tbaa !136
  %i.ceu = call ptr @sqlite3_realloc(ptr noundef %i.cet, i32 noundef %i.ces) ; 3 uses
  %.not.i.i.i.i1139 = icmp eq ptr %i.ceu, null
  br i1 %.not.i.i.i.i1139, label %bb.pw, label %sqlite3DbRealloc.exit.i.i.i1140

bb.pw:                                            ; preds = %bb.pv
  store i8 1, ptr %i.cep, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i1135

sqlite3DbRealloc.exit.i.i.i1140:                  ; preds = %bb.pv
  store i32 %spec.select.i.i1134, ptr %i.axh, align 4, !tbaa !147
  store ptr %i.ceu, ptr %i.axi, align 8, !tbaa !136
  %i.cev = icmp sgt i32 %spec.select.i.i1134, %i.cej
  br i1 %i.cev, label %bb.px, label %resizeOpArray.exit.i.i1135

bb.px:                                            ; preds = %sqlite3DbRealloc.exit.i.i.i1140
  %i.cew = sext i32 %i.cej to i64
  %i.cex = getelementptr inbounds [24 x i8], ptr %i.ceu, i64 %i.cew
  %i.cey = sub nsw i32 %spec.select.i.i1134, %i.cej
  %i.cez = zext nneg i32 %i.cey to i64
  %i.cfa = mul nuw nsw i64 %i.cez, 24
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cex, i8 0, i64 %i.cfa, i1 false)
  br label %resizeOpArray.exit.i.i1135

resizeOpArray.exit.i.i1135:                       ; preds = %bb.px, %sqlite3DbRealloc.exit.i.i.i1140, %bb.pw, %bb.pu
  %i.cfb = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.cfc = getelementptr inbounds nuw i8, ptr %i.cfb, i64 42
  %i.cfd = load i8, ptr %i.cfc, align 2, !tbaa !129
  %.not24.i.i1136 = icmp eq i8 %i.cfd, 0
  br i1 %.not24.i.i1136, label %resizeOpArray.exit._crit_edge.i.i1137, label %buildIndexProbe.exit

resizeOpArray.exit._crit_edge.i.i1137:            ; preds = %resizeOpArray.exit.i.i1135
  %.pre.i.i1138 = load i32, ptr %i.axd, align 8, !tbaa !135
  br label %bb.py

bb.py:                                            ; preds = %resizeOpArray.exit._crit_edge.i.i1137, %bb.pt
  %i.cfe = phi i32 [ %.pre.i.i1138, %resizeOpArray.exit._crit_edge.i.i1137 ], [ %i.cek, %bb.pt ]
  %i.cff = add nsw i32 %i.cfe, 1
  store i32 %i.cff, ptr %i.axd, align 8, !tbaa !135
  %i.cfg = load ptr, ptr %i.axi, align 8, !tbaa !136
  %i.cfh = sext i32 %i.cek to i64
  %i.cfi = getelementptr inbounds [24 x i8], ptr %i.cfg, i64 %i.cfh ; 6 uses
  store i8 84, ptr %i.cfi, align 8, !tbaa !137
  %i.cfj = getelementptr inbounds nuw i8, ptr %i.cfi, i64 4
  store i32 %i.bzo, ptr %i.cfj, align 4, !tbaa !141
  %i.cfk = getelementptr inbounds nuw i8, ptr %i.cfi, i64 8
  store i32 %.0655, ptr %i.cfk, align 8, !tbaa !140
  %i.cfl = getelementptr inbounds nuw i8, ptr %i.cfi, i64 12
  store i32 %i.cem, ptr %i.cfl, align 4, !tbaa !190
  %i.cfm = getelementptr inbounds nuw i8, ptr %i.cfi, i64 16
  store ptr null, ptr %i.cfm, align 8, !tbaa !37
  %i.cfn = getelementptr inbounds nuw i8, ptr %i.cfi, i64 1
  store i8 0, ptr %i.cfn, align 1, !tbaa !191
  store i8 0, ptr %i.axj, align 1, !tbaa !104
  br label %buildIndexProbe.exit

buildIndexProbe.exit:                             ; preds = %resizeOpArray.exit.i.i1135, %bb.py
  call fastcc void @sqlite3IndexAffinityStr(ptr noundef nonnull %i.c, ptr noundef %i.axx)
  br i1 %i.ayd, label %bb.pz, label %sqlite3VdbeAddOp3.exit1151

bb.pz:                                            ; preds = %buildIndexProbe.exit
  %.not760 = icmp eq i32 %.1678, 0
  %i.cfo = load i32, ptr %i.cel, align 8, !tbaa !1772
  %i.cfp = load i32, ptr %i.axd, align 8, !tbaa !135 ; 3 uses
  %i.cfq = load i32, ptr %i.axh, align 4, !tbaa !147 ; 6 uses
  %.not.i1141 = icmp sgt i32 %i.cfq, %i.cfp
  br i1 %.not.i1141, label %bb.qe, label %bb.qa

bb.qa:                                            ; preds = %bb.pz
  %.not23.i1142 = icmp eq i32 %i.cfq, 0
  %i.cfr = shl nsw i32 %i.cfq, 1
  %spec.select.i1143 = select i1 %.not23.i1142, i32 42, i32 %i.cfr ; 4 uses
  %i.cfs = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.cft = getelementptr inbounds nuw i8, ptr %i.cfs, i64 42 ; 2 uses
  %i.cfu = load i8, ptr %i.cft, align 2, !tbaa !129
  %i.cfv = icmp eq i8 %i.cfu, 0
  br i1 %i.cfv, label %bb.qb, label %resizeOpArray.exit.i1144

bb.qb:                                            ; preds = %bb.qa
  %i.cfw = mul i32 %spec.select.i1143, 24
  %i.cfx = load ptr, ptr %i.axi, align 8, !tbaa !136
  %i.cfy = call ptr @sqlite3_realloc(ptr noundef %i.cfx, i32 noundef %i.cfw) ; 3 uses
  %.not.i.i.i1149 = icmp eq ptr %i.cfy, null
  br i1 %.not.i.i.i1149, label %bb.qc, label %sqlite3DbRealloc.exit.i.i1150

bb.qc:                                            ; preds = %bb.qb
  store i8 1, ptr %i.cft, align 2, !tbaa !129
  br label %resizeOpArray.exit.i1144

sqlite3DbRealloc.exit.i.i1150:                    ; preds = %bb.qb
  store i32 %spec.select.i1143, ptr %i.axh, align 4, !tbaa !147
  store ptr %i.cfy, ptr %i.axi, align 8, !tbaa !136
  %i.cfz = icmp sgt i32 %spec.select.i1143, %i.cfq
  br i1 %i.cfz, label %bb.qd, label %resizeOpArray.exit.i1144

bb.qd:                                            ; preds = %sqlite3DbRealloc.exit.i.i1150
  %i.cga = sext i32 %i.cfq to i64
  %i.cgb = getelementptr inbounds [24 x i8], ptr %i.cfy, i64 %i.cga
  %i.cgc = sub nsw i32 %spec.select.i1143, %i.cfq
  %i.cgd = zext nneg i32 %i.cgc to i64
  %i.cge = mul nuw nsw i64 %i.cgd, 24
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cgb, i8 0, i64 %i.cge, i1 false)
  br label %resizeOpArray.exit.i1144

resizeOpArray.exit.i1144:                         ; preds = %bb.qd, %sqlite3DbRealloc.exit.i.i1150, %bb.qc, %bb.qa
  %i.cgf = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.cgg = getelementptr inbounds nuw i8, ptr %i.cgf, i64 42
  %i.cgh = load i8, ptr %i.cgg, align 2, !tbaa !129
  %.not24.i1145 = icmp eq i8 %i.cgh, 0
  br i1 %.not24.i1145, label %resizeOpArray.exit._crit_edge.i1147, label %sqlite3VdbeAddOp3.exit1151

resizeOpArray.exit._crit_edge.i1147:              ; preds = %resizeOpArray.exit.i1144
  %.pre.i1148 = load i32, ptr %i.axd, align 8, !tbaa !135
  br label %bb.qe

bb.qe:                                            ; preds = %resizeOpArray.exit._crit_edge.i1147, %bb.pz
  %i.cgi = phi i32 [ %.pre.i1148, %resizeOpArray.exit._crit_edge.i1147 ], [ %i.cfp, %bb.pz ]
  %i.cgj = add nsw i32 %i.cgi, 1
  store i32 %i.cgj, ptr %i.axd, align 8, !tbaa !135
  %i.cgk = load ptr, ptr %i.axi, align 8, !tbaa !136
  %i.cgl = sext i32 %i.cfp to i64
  %i.cgm = getelementptr inbounds [24 x i8], ptr %i.cgk, i64 %i.cgl ; 2 uses
  %i.cgn = select i1 %.not760, i8 94, i8 63
  store i8 %i.cgn, ptr %i.cgm, align 8, !tbaa !137
  br label %sqlite3VdbeAddOp3.exit1151.sink.split

bb.qf:                                            ; preds = %disableTerm.exit1120
  br i1 %i.ayd, label %bb.qg, label %sqlite3VdbeAddOp3.exit1151

bb.qg:                                            ; preds = %bb.qf
  %i.cgo = load i32, ptr %i.axd, align 8, !tbaa !135 ; 3 uses
  %i.cgp = load i32, ptr %i.axh, align 4, !tbaa !147 ; 6 uses
  %.not.i.i1152 = icmp sgt i32 %i.cgp, %i.cgo
  br i1 %.not.i.i1152, label %bb.ql, label %bb.qh

bb.qh:                                            ; preds = %bb.qg
  %.not23.i.i1153 = icmp eq i32 %i.cgp, 0
  %i.cgq = shl nsw i32 %i.cgp, 1
  %spec.select.i.i1154 = select i1 %.not23.i.i1153, i32 42, i32 %i.cgq ; 4 uses
  %i.cgr = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.cgs = getelementptr inbounds nuw i8, ptr %i.cgr, i64 42 ; 2 uses
  %i.cgt = load i8, ptr %i.cgs, align 2, !tbaa !129
  %i.cgu = icmp eq i8 %i.cgt, 0
  br i1 %i.cgu, label %bb.qi, label %resizeOpArray.exit.i.i1155

bb.qi:                                            ; preds = %bb.qh
  %i.cgv = mul i32 %spec.select.i.i1154, 24
  %i.cgw = load ptr, ptr %i.axi, align 8, !tbaa !136
  %i.cgx = call ptr @sqlite3_realloc(ptr noundef %i.cgw, i32 noundef %i.cgv) ; 3 uses
  %.not.i.i.i.i1160 = icmp eq ptr %i.cgx, null
  br i1 %.not.i.i.i.i1160, label %bb.qj, label %sqlite3DbRealloc.exit.i.i.i1161

bb.qj:                                            ; preds = %bb.qi
  store i8 1, ptr %i.cgs, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i1155

sqlite3DbRealloc.exit.i.i.i1161:                  ; preds = %bb.qi
  store i32 %spec.select.i.i1154, ptr %i.axh, align 4, !tbaa !147
  store ptr %i.cgx, ptr %i.axi, align 8, !tbaa !136
  %i.cgy = icmp sgt i32 %spec.select.i.i1154, %i.cgp
  br i1 %i.cgy, label %bb.qk, label %resizeOpArray.exit.i.i1155

bb.qk:                                            ; preds = %sqlite3DbRealloc.exit.i.i.i1161
  %i.cgz = sext i32 %i.cgp to i64
  %i.cha = getelementptr inbounds [24 x i8], ptr %i.cgx, i64 %i.cgz
  %i.chb = sub nsw i32 %spec.select.i.i1154, %i.cgp
  %i.chc = zext nneg i32 %i.chb to i64
  %i.chd = mul nuw nsw i64 %i.chc, 24
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cha, i8 0, i64 %i.chd, i1 false)
  br label %resizeOpArray.exit.i.i1155

resizeOpArray.exit.i.i1155:                       ; preds = %bb.qk, %sqlite3DbRealloc.exit.i.i.i1161, %bb.qj, %bb.qh
  %i.che = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.chf = getelementptr inbounds nuw i8, ptr %i.che, i64 42
  %i.chg = load i8, ptr %i.chf, align 2, !tbaa !129
  %.not24.i.i1156 = icmp eq i8 %i.chg, 0
  br i1 %.not24.i.i1156, label %resizeOpArray.exit._crit_edge.i.i1158, label %sqlite3VdbeAddOp3.exit1151

resizeOpArray.exit._crit_edge.i.i1158:            ; preds = %resizeOpArray.exit.i.i1155
  %.pre.i.i1159 = load i32, ptr %i.axd, align 8, !tbaa !135
  br label %bb.ql

bb.ql:                                            ; preds = %resizeOpArray.exit._crit_edge.i.i1158, %bb.qg
  %i.chh = phi i32 [ %.pre.i.i1159, %resizeOpArray.exit._crit_edge.i.i1158 ], [ %i.cgo, %bb.qg ]
  %i.chi = add nsw i32 %i.chh, 1
  store i32 %i.chi, ptr %i.axd, align 8, !tbaa !135
  %i.chj = load ptr, ptr %i.axi, align 8, !tbaa !136
  %i.chk = sext i32 %i.cgo to i64
  %i.chl = getelementptr inbounds [24 x i8], ptr %i.chj, i64 %i.chk ; 2 uses
  store i8 50, ptr %i.chl, align 8, !tbaa !137
  br label %sqlite3VdbeAddOp3.exit1151.sink.split

sqlite3VdbeAddOp3.exit1151.sink.split:            ; preds = %bb.qe, %bb.ql
  %.sink2179 = phi ptr [ %i.chl, %bb.ql ], [ %i.cgm, %bb.qe ] ; 5 uses
  %.sink2175 = phi i32 [ %i.ayz, %bb.ql ], [ %i.cak, %bb.qe ]
  %.sink2172 = phi i32 [ 0, %bb.ql ], [ %i.cfo, %bb.qe ]
  %.06691484.ph = phi i32 [ 22, %bb.ql ], [ %.06691485, %bb.qe ]
  %.2679.ph = phi i32 [ 1, %bb.ql ], [ %.1678, %bb.qe ]
  %i.chm = getelementptr inbounds nuw i8, ptr %.sink2179, i64 4
  store i32 %i.axz, ptr %i.chm, align 4, !tbaa !141
  %i.chn = getelementptr inbounds nuw i8, ptr %.sink2179, i64 8
  store i32 %.sink2175, ptr %i.chn, align 8, !tbaa !140
  %i.cho = getelementptr inbounds nuw i8, ptr %.sink2179, i64 12
  store i32 %.sink2172, ptr %i.cho, align 4, !tbaa !190
  %i.chp = getelementptr inbounds nuw i8, ptr %.sink2179, i64 16
  store ptr null, ptr %i.chp, align 8, !tbaa !37
  %i.chq = getelementptr inbounds nuw i8, ptr %.sink2179, i64 1
  store i8 0, ptr %i.chq, align 1, !tbaa !191
  store i8 0, ptr %i.axj, align 1, !tbaa !104
  br label %sqlite3VdbeAddOp3.exit1151

sqlite3VdbeAddOp3.exit1151:                       ; preds = %sqlite3VdbeAddOp3.exit1151.sink.split, %resizeOpArray.exit.i.i1155, %resizeOpArray.exit.i1144, %buildIndexProbe.exit, %bb.qf
  %.06691484 = phi i32 [ 22, %bb.qf ], [ 22, %resizeOpArray.exit.i.i1155 ], [ %.06691485, %buildIndexProbe.exit ], [ %.06691485, %resizeOpArray.exit.i1144 ], [ %.06691484.ph, %sqlite3VdbeAddOp3.exit1151.sink.split ] ; 4 uses
  %.2679 = phi i32 [ 1, %bb.qf ], [ 1, %resizeOpArray.exit.i.i1155 ], [ %.1678, %buildIndexProbe.exit ], [ %.1678, %resizeOpArray.exit.i1144 ], [ %.2679.ph, %sqlite3VdbeAddOp3.exit1151.sink.split ]
  %8 = icmp ne i32 %.lobit757..lobit, 0           ; 3 uses
  br i1 %8, label %bb.qm, label %disableTerm.exit1181

bb.qm:                                            ; preds = %sqlite3VdbeAddOp3.exit1151
  %i.chr = getelementptr inbounds nuw i8, ptr %i.axx, i64 16
  %i.chs = load ptr, ptr %i.chr, align 8, !tbaa !271
  %i.cht = getelementptr inbounds [4 x i8], ptr %i.chs, i64 %i.bzr
  %i.chu = load i32, ptr %i.cht, align 4, !tbaa !4
  %i.chv = call fastcc ptr @findTerm(ptr noundef %6, i32 noundef %i.axv, i32 noundef %i.chu, i64 noundef %.16481656, i16 noundef zeroext %.796, ptr noundef %i.axx) ; 3 uses
  %i.chw = load ptr, ptr %i.chv, align 8, !tbaa !1732
  %i.chx = getelementptr inbounds nuw i8, ptr %i.chw, i64 24
  %i.chy = load ptr, ptr %i.chx, align 8, !tbaa !1199
  %i.chz = add nsw i32 %i.bzo, %i.bzl             ; 4 uses
  %i.cia = call fastcc i32 @sqlite3ExprCodeTarget(ptr noundef nonnull %0, ptr noundef %i.chy, i32 noundef %i.chz), !inline_history !1670 ; 2 uses
  %.not.i1163 = icmp eq i32 %i.cia, %i.chz
  br i1 %.not.i1163, label %sqlite3ExprCode.exit1165, label %bb.qn

bb.qn:                                            ; preds = %bb.qm
  %i.cib = load ptr, ptr %i.b, align 8, !tbaa !367 ; 2 uses
  %.not11.i1164 = icmp eq ptr %i.cib, null
  br i1 %.not11.i1164, label %sqlite3ExprCode.exit1165, label %bb.qo

bb.qo:                                            ; preds = %bb.qn
  %i.cic = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %i.cib, i32 noundef 7, i32 noundef %i.cia, i32 noundef %i.chz), !inline_history !1670 ; 0 uses
  br label %sqlite3ExprCode.exit1165

sqlite3ExprCode.exit1165:                         ; preds = %bb.qm, %bb.qn, %bb.qo
  %i.cid = load i32, ptr %i.axd, align 8, !tbaa !135 ; 3 uses
  %i.cie = load i32, ptr %i.axh, align 4, !tbaa !147 ; 6 uses
  %.not.i.i1166 = icmp sgt i32 %i.cie, %i.cid
  br i1 %.not.i.i1166, label %bb.qt, label %bb.qp

bb.qp:                                            ; preds = %sqlite3ExprCode.exit1165
  %.not23.i.i1167 = icmp eq i32 %i.cie, 0
  %i.cif = shl nsw i32 %i.cie, 1
  %spec.select.i.i1168 = select i1 %.not23.i.i1167, i32 42, i32 %i.cif ; 4 uses
  %i.cig = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.cih = getelementptr inbounds nuw i8, ptr %i.cig, i64 42 ; 2 uses
  %i.cii = load i8, ptr %i.cih, align 2, !tbaa !129
  %i.cij = icmp eq i8 %i.cii, 0
  br i1 %i.cij, label %bb.qq, label %resizeOpArray.exit.i.i1169

bb.qq:                                            ; preds = %bb.qp
  %i.cik = mul i32 %spec.select.i.i1168, 24
  %i.cil = load ptr, ptr %i.axi, align 8, !tbaa !136
  %i.cim = call ptr @sqlite3_realloc(ptr noundef %i.cil, i32 noundef %i.cik) ; 3 uses
  %.not.i.i.i.i1174 = icmp eq ptr %i.cim, null
  br i1 %.not.i.i.i.i1174, label %bb.qr, label %sqlite3DbRealloc.exit.i.i.i1175

bb.qr:                                            ; preds = %bb.qq
  store i8 1, ptr %i.cih, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i1169

sqlite3DbRealloc.exit.i.i.i1175:                  ; preds = %bb.qq
  store i32 %spec.select.i.i1168, ptr %i.axh, align 4, !tbaa !147
  store ptr %i.cim, ptr %i.axi, align 8, !tbaa !136
  %i.cin = icmp sgt i32 %spec.select.i.i1168, %i.cie
  br i1 %i.cin, label %bb.qs, label %resizeOpArray.exit.i.i1169

bb.qs:                                            ; preds = %sqlite3DbRealloc.exit.i.i.i1175
  %i.cio = sext i32 %i.cie to i64
  %i.cip = getelementptr inbounds [24 x i8], ptr %i.cim, i64 %i.cio
  %i.ciq = sub nsw i32 %spec.select.i.i1168, %i.cie
  %i.cir = zext nneg i32 %i.ciq to i64
  %i.cis = mul nuw nsw i64 %i.cir, 24
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cip, i8 0, i64 %i.cis, i1 false)
  br label %resizeOpArray.exit.i.i1169

resizeOpArray.exit.i.i1169:                       ; preds = %bb.qs, %sqlite3DbRealloc.exit.i.i.i1175, %bb.qr, %bb.qp
  %i.cit = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.ciu = getelementptr inbounds nuw i8, ptr %i.cit, i64 42
  %i.civ = load i8, ptr %i.ciu, align 2, !tbaa !129
  %.not24.i.i1170 = icmp eq i8 %i.civ, 0
  br i1 %.not24.i.i1170, label %resizeOpArray.exit._crit_edge.i.i1172, label %sqlite3VdbeAddOp2.exit1176

resizeOpArray.exit._crit_edge.i.i1172:            ; preds = %resizeOpArray.exit.i.i1169
  %.pre.i.i1173 = load i32, ptr %i.axd, align 8, !tbaa !135
  br label %bb.qt

bb.qt:                                            ; preds = %resizeOpArray.exit._crit_edge.i.i1172, %sqlite3ExprCode.exit1165
  %i.ciw = phi i32 [ %.pre.i.i1173, %resizeOpArray.exit._crit_edge.i.i1172 ], [ %i.cid, %sqlite3ExprCode.exit1165 ]
  %i.cix = add nsw i32 %i.ciw, 1
  store i32 %i.cix, ptr %i.axd, align 8, !tbaa !135
  %i.ciy = load ptr, ptr %i.axi, align 8, !tbaa !136
  %i.ciz = sext i32 %i.cid to i64
  %i.cja = getelementptr inbounds [24 x i8], ptr %i.ciy, i64 %i.ciz ; 6 uses
  store i8 65, ptr %i.cja, align 8, !tbaa !137
  %i.cjb = getelementptr inbounds nuw i8, ptr %i.cja, i64 4
  store i32 %i.chz, ptr %i.cjb, align 4, !tbaa !141
  %i.cjc = getelementptr inbounds nuw i8, ptr %i.cja, i64 8
  store i32 %i.cak, ptr %i.cjc, align 8, !tbaa !140
  %i.cjd = getelementptr inbounds nuw i8, ptr %i.cja, i64 12
  store i32 0, ptr %i.cjd, align 4, !tbaa !190
  %i.cje = getelementptr inbounds nuw i8, ptr %i.cja, i64 16
  store ptr null, ptr %i.cje, align 8, !tbaa !37
  %i.cjf = getelementptr inbounds nuw i8, ptr %i.cja, i64 1
  store i8 0, ptr %i.cjf, align 1, !tbaa !191
  store i8 0, ptr %i.axj, align 1, !tbaa !104
  br label %sqlite3VdbeAddOp2.exit1176

sqlite3VdbeAddOp2.exit1176:                       ; preds = %resizeOpArray.exit.i.i1169, %bb.qt
  %i.cjg = getelementptr inbounds nuw i8, ptr %i.chv, i64 14
  %i.cjh = load i16, ptr %i.cjg, align 2, !tbaa !1699
  %i.cji = and i16 %i.cjh, 40
  %i.cjj = getelementptr inbounds nuw i8, ptr %.26581654, i64 12
  br label %bb.qu

bb.qu:                                            ; preds = %sqlite3VdbeAddOp2.exit1176, %bb.qy
  %.tr12.i1178 = phi ptr [ %i.chv, %sqlite3VdbeAddOp2.exit1176 ], [ %i.ckd, %bb.qy ] ; 4 uses
  %i.cjk = getelementptr inbounds nuw i8, ptr %.tr12.i1178, i64 16 ; 2 uses
  %i.cjl = load i8, ptr %i.cjk, align 8, !tbaa !1763 ; 2 uses
  %i.cjm = and i8 %i.cjl, 4
  %i.cjn = icmp eq i8 %i.cjm, 0
  br i1 %i.cjn, label %bb.qv, label %disableTerm.exit1181.loopexit

bb.qv:                                            ; preds = %bb.qu
  %i.cjo = load i32, ptr %i.cjj, align 4, !tbaa !1759
  %i.cjp = icmp eq i32 %i.cjo, 0
  br i1 %i.cjp, label %bb.qx, label %bb.qw

bb.qw:                                            ; preds = %bb.qv
  %i.cjq = load ptr, ptr %.tr12.i1178, align 8, !tbaa !1732
  %i.cjr = getelementptr inbounds nuw i8, ptr %i.cjq, i64 2
  %i.cjs = load i16, ptr %i.cjr, align 2, !tbaa !1335
  %i.cjt = and i16 %i.cjs, 1
  %.not11.i1180 = icmp eq i16 %i.cjt, 0
  br i1 %.not11.i1180, label %disableTerm.exit1181.loopexit, label %bb.qx

bb.qx:                                            ; preds = %bb.qw, %bb.qv
  %i.cju = or disjoint i8 %i.cjl, 4
  store i8 %i.cju, ptr %i.cjk, align 8, !tbaa !1763
  %i.cjv = getelementptr inbounds nuw i8, ptr %.tr12.i1178, i64 8
  %i.cjw = load i16, ptr %i.cjv, align 8, !tbaa !1764 ; 2 uses
  %i.cjx = icmp sgt i16 %i.cjw, -1
  br i1 %i.cjx, label %bb.qy, label %disableTerm.exit1181.loopexit

bb.qy:                                            ; preds = %bb.qx
  %i.cjy = getelementptr inbounds nuw i8, ptr %.tr12.i1178, i64 24
  %i.cjz = load ptr, ptr %i.cjy, align 8, !tbaa !1765
  %i.cka = getelementptr inbounds nuw i8, ptr %i.cjz, i64 24
  %i.ckb = load ptr, ptr %i.cka, align 8, !tbaa !1678
  %i.ckc = zext nneg i16 %i.cjw to i64
  %i.ckd = getelementptr inbounds nuw [48 x i8], ptr %i.ckb, i64 %i.ckc ; 2 uses
  %i.cke = getelementptr inbounds nuw i8, ptr %i.ckd, i64 17 ; 2 uses
  %i.ckf = load i8, ptr %i.cke, align 1, !tbaa !1766
  %i.ckg = add i8 %i.ckf, -1                      ; 2 uses
  store i8 %i.ckg, ptr %i.cke, align 1, !tbaa !1766
  %i.ckh = icmp eq i8 %i.ckg, 0
  br i1 %i.ckh, label %bb.qu, label %disableTerm.exit1181.loopexit

disableTerm.exit1181.loopexit:                    ; preds = %bb.qu, %bb.qw, %bb.qx, %bb.qy
  %i.cki = zext nneg i16 %i.cji to i32
  br label %disableTerm.exit1181

disableTerm.exit1181:                             ; preds = %disableTerm.exit1181.loopexit, %sqlite3VdbeAddOp3.exit1151
  %.0674.shrunk = phi i32 [ 1, %sqlite3VdbeAddOp3.exit1151 ], [ %i.cki, %disableTerm.exit1181.loopexit ] ; 3 uses
  %i.ckj = icmp sgt i32 %i.bzl, 0
  %or.cond11 = or i1 %i.ckj, %8
  %or.cond11.not = xor i1 %or.cond11, true
  %or.cond13 = select i1 %i.caj, i1 true, i1 %i.ayd
  %or.cond799 = select i1 %or.cond11.not, i1 %or.cond13, i1 false
  br i1 %or.cond799, label %bb.ry, label %bb.qz

bb.qz:                                            ; preds = %disableTerm.exit1181
  %i.ckk = add nsw i32 %.lobit757..lobit, %i.bzl  ; 3 uses
  %or.cond15 = or i1 %8, %i.caj
  br i1 %or.cond15, label %bb.rg, label %bb.ra

bb.ra:                                            ; preds = %bb.qz
  %i.ckl = add nsw i32 %i.ckk, %i.bzo
  %i.ckm = load i32, ptr %i.axd, align 8, !tbaa !135 ; 3 uses
  %i.ckn = load i32, ptr %i.axh, align 4, !tbaa !147 ; 6 uses
  %.not.i.i1182 = icmp sgt i32 %i.ckn, %i.ckm
  br i1 %.not.i.i1182, label %bb.rf, label %bb.rb

bb.rb:                                            ; preds = %bb.ra
  %.not23.i.i1183 = icmp eq i32 %i.ckn, 0
  %i.cko = shl nsw i32 %i.ckn, 1
  %spec.select.i.i1184 = select i1 %.not23.i.i1183, i32 42, i32 %i.cko ; 4 uses
  %i.ckp = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.ckq = getelementptr inbounds nuw i8, ptr %i.ckp, i64 42 ; 2 uses
  %i.ckr = load i8, ptr %i.ckq, align 2, !tbaa !129
  %i.cks = icmp eq i8 %i.ckr, 0
  br i1 %i.cks, label %bb.rc, label %resizeOpArray.exit.i.i1185

bb.rc:                                            ; preds = %bb.rb
  %i.ckt = mul i32 %spec.select.i.i1184, 24
  %i.cku = load ptr, ptr %i.axi, align 8, !tbaa !136
  %i.ckv = call ptr @sqlite3_realloc(ptr noundef %i.cku, i32 noundef %i.ckt) ; 3 uses
  %.not.i.i.i.i1190 = icmp eq ptr %i.ckv, null
  br i1 %.not.i.i.i.i1190, label %bb.rd, label %sqlite3DbRealloc.exit.i.i.i1191

bb.rd:                                            ; preds = %bb.rc
  store i8 1, ptr %i.ckq, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i1185

sqlite3DbRealloc.exit.i.i.i1191:                  ; preds = %bb.rc
  store i32 %spec.select.i.i1184, ptr %i.axh, align 4, !tbaa !147
  store ptr %i.ckv, ptr %i.axi, align 8, !tbaa !136
  %i.ckw = icmp sgt i32 %spec.select.i.i1184, %i.ckn
  br i1 %i.ckw, label %bb.re, label %resizeOpArray.exit.i.i1185

bb.re:                                            ; preds = %sqlite3DbRealloc.exit.i.i.i1191
  %i.ckx = sext i32 %i.ckn to i64
  %i.cky = getelementptr inbounds [24 x i8], ptr %i.ckv, i64 %i.ckx
  %i.ckz = sub nsw i32 %spec.select.i.i1184, %i.ckn
  %i.cla = zext nneg i32 %i.ckz to i64
  %i.clb = mul nuw nsw i64 %i.cla, 24
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cky, i8 0, i64 %i.clb, i1 false)
  br label %resizeOpArray.exit.i.i1185

resizeOpArray.exit.i.i1185:                       ; preds = %bb.re, %sqlite3DbRealloc.exit.i.i.i1191, %bb.rd, %bb.rb
  %i.clc = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.cld = getelementptr inbounds nuw i8, ptr %i.clc, i64 42
  %i.cle = load i8, ptr %i.cld, align 2, !tbaa !129
  %.not24.i.i1186 = icmp eq i8 %i.cle, 0
  br i1 %.not24.i.i1186, label %resizeOpArray.exit._crit_edge.i.i1188, label %sqlite3VdbeAddOp2.exit1192

resizeOpArray.exit._crit_edge.i.i1188:            ; preds = %resizeOpArray.exit.i.i1185
  %.pre.i.i1189 = load i32, ptr %i.axd, align 8, !tbaa !135
  br label %bb.rf

bb.rf:                                            ; preds = %resizeOpArray.exit._crit_edge.i.i1188, %bb.ra
  %i.clf = phi i32 [ %.pre.i.i1189, %resizeOpArray.exit._crit_edge.i.i1188 ], [ %i.ckm, %bb.ra ]
  %i.clg = add nsw i32 %i.clf, 1
  store i32 %i.clg, ptr %i.axd, align 8, !tbaa !135
  %i.clh = load ptr, ptr %i.axi, align 8, !tbaa !136
  %i.cli = sext i32 %i.ckm to i64
  %i.clj = getelementptr inbounds [24 x i8], ptr %i.clh, i64 %i.cli ; 6 uses
  store i8 112, ptr %i.clj, align 8, !tbaa !137
  %i.clk = getelementptr inbounds nuw i8, ptr %i.clj, i64 4
  store i32 0, ptr %i.clk, align 4, !tbaa !141
  %i.cll = getelementptr inbounds nuw i8, ptr %i.clj, i64 8
  store i32 %i.ckl, ptr %i.cll, align 8, !tbaa !140
  %i.clm = getelementptr inbounds nuw i8, ptr %i.clj, i64 12
  store i32 0, ptr %i.clm, align 4, !tbaa !190
  %i.cln = getelementptr inbounds nuw i8, ptr %i.clj, i64 16
  store ptr null, ptr %i.cln, align 8, !tbaa !37
  %i.clo = getelementptr inbounds nuw i8, ptr %i.clj, i64 1
  store i8 0, ptr %i.clo, align 1, !tbaa !191
  store i8 0, ptr %i.axj, align 1, !tbaa !104
  br label %sqlite3VdbeAddOp2.exit1192

sqlite3VdbeAddOp2.exit1192:                       ; preds = %resizeOpArray.exit.i.i1185, %bb.rf
  %i.clp = add nsw i32 %i.ckk, 1
  br label %bb.rg

bb.rg:                                            ; preds = %sqlite3VdbeAddOp2.exit1192, %bb.qz
  %.1675 = phi i32 [ %.0674.shrunk, %bb.qz ], [ 0, %sqlite3VdbeAddOp2.exit1192 ] ; 5 uses
  %.0646 = phi i32 [ %i.ckk, %bb.qz ], [ %i.clp, %sqlite3VdbeAddOp2.exit1192 ]
  br i1 %i.ayd, label %bb.rh, label %bb.ri

bb.rh:                                            ; preds = %bb.rg
  %i.clq = getelementptr inbounds nuw i8, ptr %.26581654, i64 8
  %i.clr = load i32, ptr %i.clq, align 8, !tbaa !1772
  br label %sqlite3GetTempReg.exit1195

bb.ri:                                            ; preds = %bb.rg
  %i.cls = load i8, ptr %i.axm, align 1, !tbaa !1483 ; 2 uses
  %.not.i1193 = icmp eq i8 %i.cls, 0
  br i1 %.not.i1193, label %bb.rk, label %bb.rj

bb.rj:                                            ; preds = %bb.ri
  %i.clt = add i8 %i.cls, -1                      ; 2 uses
  store i8 %i.clt, ptr %i.axm, align 1, !tbaa !1483
  %i.clu = zext i8 %i.clt to i64
  %i.clv = getelementptr inbounds nuw [4 x i8], ptr %i.axn, i64 %i.clu
  %i.clw = load i32, ptr %i.clv, align 4, !tbaa !4
  br label %sqlite3GetTempReg.exit1195

bb.rk:                                            ; preds = %bb.ri
  %i.clx = load i32, ptr %i.axg, align 8, !tbaa !1297
  %i.cly = add nsw i32 %i.clx, 1                  ; 2 uses
  store i32 %i.cly, ptr %i.axg, align 8, !tbaa !1297
  br label %sqlite3GetTempReg.exit1195

sqlite3GetTempReg.exit1195:                       ; preds = %bb.rk, %bb.rj, %bb.rh
  %.1670 = phi i32 [ 39, %bb.rh ], [ %.06691484, %bb.rj ], [ %.06691484, %bb.rk ] ; 4 uses
  %.0664 = phi i32 [ %i.clr, %bb.rh ], [ %i.clw, %bb.rj ], [ %i.cly, %bb.rk ] ; 4 uses
  %i.clz = load i32, ptr %i.axd, align 8, !tbaa !135 ; 3 uses
  %i.cma = load i32, ptr %i.axh, align 4, !tbaa !147 ; 6 uses
  %.not.i.i1196 = icmp sgt i32 %i.cma, %i.clz
  br i1 %.not.i.i1196, label %bb.rp, label %bb.rl

bb.rl:                                            ; preds = %sqlite3GetTempReg.exit1195
  %.not23.i.i1197 = icmp eq i32 %i.cma, 0
  %i.cmb = shl nsw i32 %i.cma, 1
  %spec.select.i.i1198 = select i1 %.not23.i.i1197, i32 42, i32 %i.cmb ; 4 uses
  %i.cmc = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.cmd = getelementptr inbounds nuw i8, ptr %i.cmc, i64 42 ; 2 uses
  %i.cme = load i8, ptr %i.cmd, align 2, !tbaa !129
  %i.cmf = icmp eq i8 %i.cme, 0
  br i1 %i.cmf, label %bb.rm, label %resizeOpArray.exit.i.i1199

bb.rm:                                            ; preds = %bb.rl
  %i.cmg = mul i32 %spec.select.i.i1198, 24
  %i.cmh = load ptr, ptr %i.axi, align 8, !tbaa !136
  %i.cmi = call ptr @sqlite3_realloc(ptr noundef %i.cmh, i32 noundef %i.cmg) ; 3 uses
  %.not.i.i.i.i1203 = icmp eq ptr %i.cmi, null
  br i1 %.not.i.i.i.i1203, label %bb.rn, label %sqlite3DbRealloc.exit.i.i.i1204

bb.rn:                                            ; preds = %bb.rm
  store i8 1, ptr %i.cmd, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i1199

sqlite3DbRealloc.exit.i.i.i1204:                  ; preds = %bb.rm
  store i32 %spec.select.i.i1198, ptr %i.axh, align 4, !tbaa !147
  store ptr %i.cmi, ptr %i.axi, align 8, !tbaa !136
  %i.cmj = icmp sgt i32 %spec.select.i.i1198, %i.cma
  br i1 %i.cmj, label %bb.ro, label %resizeOpArray.exit.i.i1199

bb.ro:                                            ; preds = %sqlite3DbRealloc.exit.i.i.i1204
  %i.cmk = sext i32 %i.cma to i64
  %i.cml = getelementptr inbounds [24 x i8], ptr %i.cmi, i64 %i.cmk
  %i.cmm = sub nsw i32 %spec.select.i.i1198, %i.cma
  %i.cmn = zext nneg i32 %i.cmm to i64
  %i.cmo = mul nuw nsw i64 %i.cmn, 24
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cml, i8 0, i64 %i.cmo, i1 false)
  br label %resizeOpArray.exit.i.i1199

resizeOpArray.exit.i.i1199:                       ; preds = %bb.ro, %sqlite3DbRealloc.exit.i.i.i1204, %bb.rn, %bb.rl
  %i.cmp = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.cmq = getelementptr inbounds nuw i8, ptr %i.cmp, i64 42
  %i.cmr = load i8, ptr %i.cmq, align 2, !tbaa !129
  %.not24.i.i1200 = icmp eq i8 %i.cmr, 0
  br i1 %.not24.i.i1200, label %resizeOpArray.exit._crit_edge.i.i1201, label %buildIndexProbe.exit1205

resizeOpArray.exit._crit_edge.i.i1201:            ; preds = %resizeOpArray.exit.i.i1199
  %.pre.i.i1202 = load i32, ptr %i.axd, align 8, !tbaa !135
  br label %bb.rp

bb.rp:                                            ; preds = %resizeOpArray.exit._crit_edge.i.i1201, %sqlite3GetTempReg.exit1195
  %i.cms = phi i32 [ %.pre.i.i1202, %resizeOpArray.exit._crit_edge.i.i1201 ], [ %i.clz, %sqlite3GetTempReg.exit1195 ]
  %i.cmt = add nsw i32 %i.cms, 1
  store i32 %i.cmt, ptr %i.axd, align 8, !tbaa !135
  %i.cmu = load ptr, ptr %i.axi, align 8, !tbaa !136
  %i.cmv = sext i32 %i.clz to i64
  %i.cmw = getelementptr inbounds [24 x i8], ptr %i.cmu, i64 %i.cmv ; 6 uses
  store i8 84, ptr %i.cmw, align 8, !tbaa !137
  %i.cmx = getelementptr inbounds nuw i8, ptr %i.cmw, i64 4
  store i32 %i.bzo, ptr %i.cmx, align 4, !tbaa !141
  %i.cmy = getelementptr inbounds nuw i8, ptr %i.cmw, i64 8
  store i32 %.0646, ptr %i.cmy, align 8, !tbaa !140
  %i.cmz = getelementptr inbounds nuw i8, ptr %i.cmw, i64 12
  store i32 %.0664, ptr %i.cmz, align 4, !tbaa !190
  %i.cna = getelementptr inbounds nuw i8, ptr %i.cmw, i64 16
  store ptr null, ptr %i.cna, align 8, !tbaa !37
  %i.cnb = getelementptr inbounds nuw i8, ptr %i.cmw, i64 1
  store i8 0, ptr %i.cnb, align 1, !tbaa !191
  store i8 0, ptr %i.axj, align 1, !tbaa !104
  br label %buildIndexProbe.exit1205

buildIndexProbe.exit1205:                         ; preds = %resizeOpArray.exit.i.i1199, %bb.rp
  call fastcc void @sqlite3IndexAffinityStr(ptr noundef nonnull %i.c, ptr noundef %i.axx)
  br i1 %i.ayd, label %sqlite3ReleaseTempReg.exit1218, label %bb.rq

bb.rq:                                            ; preds = %buildIndexProbe.exit1205
  %.not761 = icmp eq i32 %.1675, 0
  %i.cnc = load i32, ptr %i.axd, align 8, !tbaa !135 ; 3 uses
  %i.cnd = load i32, ptr %i.axh, align 4, !tbaa !147 ; 6 uses
  %.not.i1206 = icmp sgt i32 %i.cnd, %i.cnc
  br i1 %.not.i1206, label %bb.rv, label %bb.rr

bb.rr:                                            ; preds = %bb.rq
  %.not23.i1207 = icmp eq i32 %i.cnd, 0
  %i.cne = shl nsw i32 %i.cnd, 1
end_hunk_10
begin_hunk_11_@generateColumnNames:bb.a
  br i1 %i.hx, label %bb.ai, label %generateColumnTypes.exit, !llvm.loop !1812

generateColumnTypes.exit:                         ; preds = %sqlite3VdbeSetColName.exit40.i, %._crit_edge.thread, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  br label %bb.az

bb.az:                                            ; preds = %bb.b, %bb.c, %bb.a, %generateColumnTypes.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @processCompoundOrderBy(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1219 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread75, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.b, align 8, !tbaa !1204 ; 5 uses
  %i.e = icmp sgt i32 %i.d, 2000
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %0, ptr noundef nonnull @.str.390)
  br label %.thread75

bb.d:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !244    ; 2 uses
  %i.g = icmp sgt i32 %i.d, 0                     ; 2 uses
  br i1 %i.g, label %.lr.ph, label %.preheader81.preheader

.lr.ph:                                           ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1201 ; 9 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.j = icmp ult i32 %i.d, 8
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.7, %bb.e ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.e ]
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 18
  store i8 0, ptr %i.l, align 2, !tbaa !1593
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %indvars.iv
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 42
  store i8 0, ptr %i.n, align 2, !tbaa !1593
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %indvars.iv
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 66
  store i8 0, ptr %i.p, align 2, !tbaa !1593
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %indvars.iv
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 90
  store i8 0, ptr %i.r, align 2, !tbaa !1593
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 114
  store i8 0, ptr %i.t, align 2, !tbaa !1593
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 138
  store i8 0, ptr %i.v, align 2, !tbaa !1593
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 162
  store i8 0, ptr %i.x, align 2, !tbaa !1593
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 186
  store i8 0, ptr %i.z, align 2, !tbaa !1593
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader81.preheader.loopexit.unr-lcssa, label %bb.e, !llvm.loop !1813

.preheader81.preheader.loopexit.unr-lcssa:        ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader81.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader81.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.7, %.preheader81.preheader.loopexit.unr-lcssa ]
  %lcmp.mod155 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod155)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.f ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %indvars.iv.epil
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 18
  store i8 0, ptr %i.ab, align 2, !tbaa !1593
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader81.preheader, label %bb.f, !llvm.loop !1814

.preheader81.preheader:                           ; preds = %.preheader81.preheader.loopexit.unr-lcssa, %bb.f, %bb.d
  br label %.preheader81

.preheader81:                                     ; preds = %.preheader81.preheader, %.preheader81
  %.056 = phi ptr [ %i.ad, %.preheader81 ], [ %1, %.preheader81.preheader ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.056, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1220 ; 2 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %.preheader80, label %.preheader81, !llvm.loop !1815

.preheader80:                                     ; preds = %.preheader81
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 42
  br i1 %i.g, label %.preheader78, label %.thread75

.preheader78:                                     ; preds = %.preheader80, %._crit_edge
  %i.ag = phi i32 [ %i.bh, %._crit_edge ], [ %i.d, %.preheader80 ]
  %.15796 = phi ptr [ %i.bl, %._crit_edge ], [ %.056, %.preheader80 ] ; 3 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph95, label %.thread75

.preheader:                                       ; preds = %._crit_edge
  %i.ai = icmp sgt i32 %i.bh, 0
  br i1 %i.ai, label %.lr.ph98, label %.thread75

.lr.ph98:                                         ; preds = %.preheader
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !1201
  %wide.trip.count114 = zext nneg i32 %i.bh to i64
  br label %bb.n

.lr.ph95:                                         ; preds = %.preheader78, %.lr.ph95._crit_edge
  %indvars.iv108 = phi i64 [ %indvars.iv.next109.pre-phi, %.lr.ph95._crit_edge ], [ 0, %.preheader78 ] ; 4 uses
  %.16194 = phi i32 [ %.363, %.lr.ph95._crit_edge ], [ 0, %.preheader78 ] ; 2 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !1201
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %indvars.iv108 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 18
  %i.an = load i8, ptr %i.am, align 2, !tbaa !1593
  %.not71 = icmp eq i8 %i.an, 0
  br i1 %.not71, label %bb.g, label %.lr.ph95._crit_edge

bb.g:                                             ; preds = %.lr.ph95
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !1205 ; 6 uses
  %i.ap = tail call fastcc ptr @sqlite3ExprDup(ptr noundef %i.f, ptr noundef %i.ao) ; 3 uses
  %i.aq = load i8, ptr %i.af, align 2, !tbaa !129
  %.not72 = icmp eq i8 %i.aq, 0
  br i1 %.not72, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.g
  tail call fastcc void @sqlite3ExprDelete(ptr noundef %i.ap)
  br label %.thread75

bb.h:                                             ; preds = %bb.g
  %i.ar = tail call fastcc i32 @matchOrderByTermToExprList(ptr noundef nonnull %0, ptr noundef nonnull %.15796, ptr noundef %i.ap, i32 noundef 1, ptr noundef null) ; 4 uses
  tail call fastcc void @sqlite3ExprDelete(ptr noundef %i.ap)
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %.thread75, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = load ptr, ptr %.15796, align 8, !tbaa !1212 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.thread75, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = load i32, ptr %i.at, align 8, !tbaa !1204 ; 2 uses
  %i.aw = icmp sgt i32 %i.ar, %i.av
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = trunc nuw nsw i64 %indvars.iv108 to i32
  %i.ay = add nuw nsw i32 %i.ax, 1
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.391, i32 noundef %i.ay, i32 noundef %i.av)
  br label %.thread75

bb.l:                                             ; preds = %bb.j
  %.not73 = icmp eq i32 %i.ar, 0
  br i1 %.not73, label %.lr.ph95._crit_edge, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 -107, ptr %i.ao, align 8, !tbaa !1311
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  store i32 %2, ptr %i.az, align 8, !tbaa !1330
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 88
  store i32 -1, ptr %i.ba, align 8, !tbaa !1312
  %i.bb = add nsw i32 %i.ar, -1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 76
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !1360
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  store ptr null, ptr %i.bd, align 8, !tbaa !1581
  %i.be = load ptr, ptr %i.ae, align 8, !tbaa !1201
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %indvars.iv108
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 18
  store i8 1, ptr %i.bg, align 2, !tbaa !1593
  br label %.lr.ph95._crit_edge

.lr.ph95._crit_edge:                              ; preds = %.lr.ph95, %bb.l, %bb.m
  %.363 = phi i32 [ %.16194, %bb.m ], [ 1, %bb.l ], [ %.16194, %.lr.ph95 ] ; 2 uses
  %indvars.iv.next109.pre-phi = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %i.bh = load i32, ptr %i.b, align 8, !tbaa !1204 ; 4 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = icmp slt i64 %indvars.iv.next109.pre-phi, %i.bi
  br i1 %i.bj, label %.lr.ph95, label %._crit_edge, !llvm.loop !1816

._crit_edge:                                      ; preds = %.lr.ph95._crit_edge
  %3 = icmp ne i32 %.363, 0
  %i.bk = getelementptr inbounds nuw i8, ptr %.15796, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1449 ; 2 uses
  %i.bm = icmp ne ptr %i.bl, null
  %i.bn = select i1 %i.bm, i1 %3, i1 false
  br i1 %i.bn, label %.preheader78, label %.preheader, !llvm.loop !1817

bb.n:                                             ; preds = %.lr.ph98, %bb.p
  %indvars.iv111 = phi i64 [ 0, %.lr.ph98 ], [ %indvars.iv.next112, %bb.p ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %indvars.iv111
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 18
  %i.bq = load i8, ptr %i.bp, align 2, !tbaa !1593
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bs = trunc nuw nsw i64 %indvars.iv111 to i32
  %i.bt = add nuw nsw i32 %i.bs, 1
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.392, i32 noundef %i.bt)
  br label %.thread75

bb.p:                                             ; preds = %bb.n
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %exitcond115.not = icmp eq i64 %indvars.iv.next112, %wide.trip.count114
  br i1 %exitcond115.not, label %.thread75, label %bb.n, !llvm.loop !1818

.thread75:                                        ; preds = %.preheader78, %bb.h, %bb.i, %bb.p, %.preheader80, %.preheader, %.thread, %bb.k, %bb.a, %bb.o, %bb.c
  %.3 = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ 1, %.thread ], [ 1, %bb.o ], [ 1, %bb.k ], [ 0, %.preheader ], [ 0, %.preheader80 ], [ 0, %bb.p ], [ 1, %bb.h ], [ 1, %bb.i ], [ 0, %.preheader78 ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc void @createSortingIndex(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef captures(address_is_null) %2) unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1298 ; 3 uses
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !1298
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.b, ptr %i.d, align 8, !tbaa !1454
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !367  ; 7 uses
  %i.g = load i32, ptr %2, align 8, !tbaa !1204
  %i.h = add nsw i32 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !135  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 28 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !147  ; 6 uses
  %.not.i.i = icmp sgt i32 %i.l, %i.j
  br i1 %.not.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not23.i.i = icmp eq i32 %i.l, 0
  %i.m = shl nsw i32 %i.l, 1
  %spec.select.i.i = select i1 %.not23.i.i, i32 42, i32 %i.m ; 4 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !106
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 42 ; 2 uses
  %i.q = load i8, ptr %i.p, align 2, !tbaa !129
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.d, label %resizeOpArray.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.s = mul i32 %spec.select.i.i, 24
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !136
  %i.u = tail call ptr @sqlite3_realloc(ptr noundef %i.t, i32 noundef %i.s) ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %bb.e, label %sqlite3DbRealloc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.p, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i

sqlite3DbRealloc.exit.i.i.i:                      ; preds = %bb.d
  store i32 %spec.select.i.i, ptr %i.k, align 4, !tbaa !147
  store ptr %i.u, ptr %i.o, align 8, !tbaa !136
  %i.v = icmp sgt i32 %spec.select.i.i, %i.l
  br i1 %i.v, label %bb.f, label %resizeOpArray.exit.i.i

bb.f:                                             ; preds = %sqlite3DbRealloc.exit.i.i.i
  %i.w = sext i32 %i.l to i64
  %i.x = getelementptr inbounds [24 x i8], ptr %i.u, i64 %i.w
  %i.y = sub nsw i32 %spec.select.i.i, %i.l
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = mul nuw nsw i64 %i.z, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.x, i8 0, i64 %i.aa, i1 false)
  br label %resizeOpArray.exit.i.i

resizeOpArray.exit.i.i:                           ; preds = %bb.f, %sqlite3DbRealloc.exit.i.i.i, %bb.e, %bb.c
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !106
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 42
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !129
  %.not24.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not24.i.i, label %resizeOpArray.exit._crit_edge.i.i, label %sqlite3VdbeAddOp2.exit

resizeOpArray.exit._crit_edge.i.i:                ; preds = %resizeOpArray.exit.i.i
  %.pre.i.i = load i32, ptr %i.i, align 8, !tbaa !135
  br label %bb.g

bb.g:                                             ; preds = %resizeOpArray.exit._crit_edge.i.i, %bb.b
  %i.ae = phi i32 [ %.pre.i.i, %resizeOpArray.exit._crit_edge.i.i ], [ %i.j, %bb.b ]
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.i, align 8, !tbaa !135
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !136
  %i.ai = sext i32 %i.j to i64
  %i.aj = getelementptr inbounds [24 x i8], ptr %i.ah, i64 %i.ai ; 6 uses
  store i8 111, ptr %i.aj, align 8, !tbaa !137
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 %i.b, ptr %i.ak, align 4, !tbaa !141
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i32 %i.h, ptr %i.al, align 8, !tbaa !140
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.am, align 4, !tbaa !190
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr null, ptr %i.an, align 8, !tbaa !37
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store i8 0, ptr %i.ao, align 1, !tbaa !191
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 339
  store i8 0, ptr %i.ap, align 1, !tbaa !104
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %resizeOpArray.exit.i.i, %bb.g
  %.0.i.i = phi i32 [ %i.j, %bb.g ], [ 0, %resizeOpArray.exit.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 %.0.i.i, ptr %i.aq, align 8, !tbaa !4
  br label %bb.h

bb.h:                                             ; preds = %sqlite3VdbeAddOp2.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @multiSelectCollSeq(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1220 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @multiSelectCollSeq(ptr noundef %0, ptr noundef %i.b, i32 noundef %2) ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.thread, label %sqlite3ExprCollSeq.exit

.thread:                                          ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !1212
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1201
  %i.h = sext i32 %2 to i64
  %i.i = getelementptr inbounds [24 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1205 ; 2 uses
  %.not33.i = icmp eq ptr %i.j, null
  br i1 %.not33.i, label %sqlite3ExprCollSeq.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread, %tailrecurse.i
  %.tr3234.i = phi ptr [ %i.r, %tailrecurse.i ], [ %i.j, %.thread ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.tr3234.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1423 ; 5 uses
  %i.m = load i8, ptr %.tr3234.i, align 8, !tbaa !1311 ; 2 uses
  %i.n = icmp ne i8 %i.m, 31
  %i.o = icmp ne i8 %i.m, 86
  %or.cond.not21.i = and i1 %i.n, %i.o
  %i.p = icmp ne ptr %i.l, null
  %or.cond3.i = select i1 %or.cond.not21.i, i1 true, i1 %i.p
  br i1 %or.cond3.i, label %bb.c, label %tailrecurse.i

tailrecurse.i:                                    ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.tr3234.i, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1198 ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %sqlite3ExprCollSeq.exit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %sqlite3ExprCollSeq.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !195  ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !244
  %i.u = tail call fastcc ptr @sqlite3GetCollSeq(ptr noundef %i.t, ptr noundef nonnull readonly %i.l, ptr noundef %i.s)
  %.not13.i.i = icmp eq ptr %i.u, null
  br i1 %.not13.i.i, label %bb.e, label %sqlite3ExprCollSeq.exit

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !252  ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.f, label %sqlite3CheckCollSeq.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.343, ptr noundef %i.s), !inline_history !1564
  %.pre.i.i = load i32, ptr %i.v, align 8, !tbaa !252
  br label %sqlite3CheckCollSeq.exit.i

sqlite3CheckCollSeq.exit.i:                       ; preds = %bb.f, %bb.e
  %i.y = phi i32 [ %i.w, %bb.e ], [ %.pre.i.i, %bb.f ]
end_hunk_11
begin_hunk_12_@sqlite3OpenTableAndIndices:bb.a
resizeOpArray.exit._crit_edge.i.i:                ; preds = %resizeOpArray.exit.i.i
  %.pre.i.i = load i32, ptr %i.r, align 8, !tbaa !135
  br label %bb.j

bb.j:                                             ; preds = %resizeOpArray.exit._crit_edge.i.i, %bb.e
  %i.at = phi i32 [ %.pre.i.i, %resizeOpArray.exit._crit_edge.i.i ], [ %i.aa, %bb.e ]
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.r, align 8, !tbaa !135
  %i.av = load ptr, ptr %i.t, align 8, !tbaa !136
  %i.aw = sext i32 %i.aa to i64
  %i.ax = getelementptr inbounds [24 x i8], ptr %i.av, i64 %i.aw ; 6 uses
  store i8 %i.u, ptr %i.ax, align 8, !tbaa !137
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store i32 %i.x, ptr %i.ay, align 4, !tbaa !141
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i32 %i.z, ptr %i.az, align 8, !tbaa !140
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store i32 %.1.i, ptr %i.ba, align 4, !tbaa !190
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store ptr null, ptr %i.bb, align 8, !tbaa !37
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  store i8 0, ptr %i.bc, align 1, !tbaa !191
  store i8 0, ptr %i.v, align 1, !tbaa !104
  br label %sqlite3VdbeAddOp4.exit

sqlite3VdbeAddOp4.exit:                           ; preds = %resizeOpArray.exit.i.i, %bb.j
  %.0.i.i = phi i32 [ %i.aa, %bb.j ], [ 0, %resizeOpArray.exit.i.i ] ; 2 uses
  %i.bd = load ptr, ptr %i.t, align 8, !tbaa !136 ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.l, label %bb.k

bb.k:                                             ; preds = %sqlite3VdbeAddOp4.exit
  %i.bf = load ptr, ptr %i.p, align 8, !tbaa !106
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 42
  %i.bh = load i8, ptr %i.bg, align 2, !tbaa !129
  %.not.i34 = icmp eq i8 %i.bh, 0
  br i1 %.not.i34, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k, %sqlite3VdbeAddOp4.exit
  %.not.i35 = icmp eq ptr %i.w, null
  br i1 %.not.i35, label %sqlite3VdbeChangeP4.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds i8, ptr %i.w, i64 -8 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !28
  %sext.i.i14.i = shl i64 %i.bj, 32
  %i.bk = ashr exact i64 %sext.i.i14.i, 32
  %i.bl = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.bm = sub nsw i64 %i.bl, %i.bk
  store i64 %i.bm, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.bi) #43
  br label %sqlite3VdbeChangeP4.exit

bb.n:                                             ; preds = %bb.k
  %i.bn = icmp slt i32 %.0.i.i, 0
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bo = load i32, ptr %i.r, align 8, !tbaa !135 ; 2 uses
  %i.bp = add nsw i32 %i.bo, -1
  %i.bq = icmp slt i32 %i.bo, 1
  br i1 %i.bq, label %sqlite3VdbeChangeP4.exit, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.i = phi i32 [ %i.bp, %bb.o ], [ %.0.i.i, %bb.n ]
  %i.br = zext nneg i32 %.0.i to i64
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1 ; 3 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !191
  %i.bv = sext i8 %i.bu to i32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !37
  tail call fastcc void @freeP4(i32 noundef %i.bv, ptr noundef %i.bx)
  store ptr null, ptr %i.bw, align 8, !tbaa !37
  %i.by = icmp eq ptr %i.w, null
  br i1 %i.by, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i8 0, ptr %i.bt, align 1, !tbaa !191
  br label %sqlite3VdbeChangeP4.exit

bb.r:                                             ; preds = %bb.p
  store ptr %i.w, ptr %i.bw, align 8, !tbaa !37
  store i8 -6, ptr %i.bt, align 1, !tbaa !191
  br label %sqlite3VdbeChangeP4.exit

sqlite3VdbeChangeP4.exit:                         ; preds = %bb.m, %bb.l, %bb.o, %bb.q, %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %.03040, i64 56
  %i.ca = add nuw nsw i32 %.02939, 1              ; 2 uses
  %.030 = load ptr, ptr %i.bz, align 8, !tbaa !268 ; 2 uses
  %.not32 = icmp eq ptr %.030, null
  br i1 %.not32, label %._crit_edge, label %bb.e, !llvm.loop !1865

._crit_edge:                                      ; preds = %sqlite3VdbeChangeP4.exit, %sqlite3SchemaToIndex.exit
  %.029.lcssa = phi i32 [ 1, %sqlite3SchemaToIndex.exit ], [ %i.ca, %sqlite3VdbeChangeP4.exit ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !1298
  %i.cd = add nsw i32 %.029.lcssa, %2             ; 2 uses
  %.not33 = icmp sgt i32 %i.cc, %i.cd
  br i1 %.not33, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !1298
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge
  %i.ce = add nsw i32 %.029.lcssa, -1
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %bb.t
  %.0 = phi i32 [ %i.ce, %bb.t ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3GenerateRowDelete(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !367  ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 8 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !135  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !147  ; 6 uses
  %.not.i = icmp sgt i32 %i.f, %i.d
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not23.i = icmp eq i32 %i.f, 0
  %i.g = shl nsw i32 %i.f, 1
  %spec.select.i = select i1 %.not23.i, i32 42, i32 %i.g ; 4 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 42 ; 2 uses
  %i.k = load i8, ptr %i.j, align 2, !tbaa !129
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.c, label %resizeOpArray.exit.i

bb.c:                                             ; preds = %bb.b
  %i.m = mul i32 %spec.select.i, 24
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !136
  %i.o = tail call ptr @sqlite3_realloc(ptr noundef %i.n, i32 noundef %i.m) ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.d, label %sqlite3DbRealloc.exit.i.i

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.j, align 2, !tbaa !129
  br label %resizeOpArray.exit.i

sqlite3DbRealloc.exit.i.i:                        ; preds = %bb.c
  store i32 %spec.select.i, ptr %i.e, align 4, !tbaa !147
  store ptr %i.o, ptr %i.i, align 8, !tbaa !136
  %i.p = icmp sgt i32 %spec.select.i, %i.f
  br i1 %i.p, label %bb.e, label %resizeOpArray.exit.i

bb.e:                                             ; preds = %sqlite3DbRealloc.exit.i.i
  %i.q = sext i32 %i.f to i64
  %i.r = getelementptr inbounds [24 x i8], ptr %i.o, i64 %i.q
  %i.s = sub nsw i32 %spec.select.i, %i.f
  %i.t = zext nneg i32 %i.s to i64
  %i.u = mul nuw nsw i64 %i.t, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.r, i8 0, i64 %i.u, i1 false)
  br label %resizeOpArray.exit.i

resizeOpArray.exit.i:                             ; preds = %bb.e, %sqlite3DbRealloc.exit.i.i, %bb.d, %bb.b
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 42
  %i.x = load i8, ptr %i.w, align 2, !tbaa !129
  %.not24.i = icmp eq i8 %i.x, 0
  br i1 %.not24.i, label %resizeOpArray.exit._crit_edge.i, label %sqlite3VdbeAddOp3.exit

resizeOpArray.exit._crit_edge.i:                  ; preds = %resizeOpArray.exit.i
  %.pre.i = load i32, ptr %i.c, align 8, !tbaa !135
  br label %bb.f

bb.f:                                             ; preds = %resizeOpArray.exit._crit_edge.i, %bb.a
  %i.y = phi i32 [ %.pre.i, %resizeOpArray.exit._crit_edge.i ], [ %i.d, %bb.a ]
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.c, align 8, !tbaa !135
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !136
  %i.ac = sext i32 %i.d to i64
  %i.ad = getelementptr inbounds [24 x i8], ptr %i.ab, i64 %i.ac ; 6 uses
  store i8 44, ptr %i.ad, align 8, !tbaa !137
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i32 %2, ptr %i.ae, align 4, !tbaa !141
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i32 0, ptr %i.af, align 8, !tbaa !140
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 %3, ptr %i.ag, align 4, !tbaa !190
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr null, ptr %i.ah, align 8, !tbaa !37
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store i8 0, ptr %i.ai, align 1, !tbaa !191
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 339
  store i8 0, ptr %i.aj, align 1, !tbaa !104
  br label %sqlite3VdbeAddOp3.exit

sqlite3VdbeAddOp3.exit:                           ; preds = %resizeOpArray.exit.i, %bb.f
  %.0.i = phi i32 [ %i.d, %bb.f ], [ 0, %resizeOpArray.exit.i ] ; 3 uses
  tail call fastcc void @sqlite3GenerateRowIndexDelete(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef null)
  %.not.not = icmp eq i32 %4, 0
  %i.ak = load i32, ptr %i.c, align 8, !tbaa !135 ; 3 uses
  %i.al = load i32, ptr %i.e, align 4, !tbaa !147 ; 6 uses
  %.not.i.i = icmp sgt i32 %i.al, %i.ak
  br i1 %.not.i.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %sqlite3VdbeAddOp3.exit
  %.not23.i.i = icmp eq i32 %i.al, 0
  %i.am = shl nsw i32 %i.al, 1
  %spec.select.i.i = select i1 %.not23.i.i, i32 42, i32 %i.am ; 4 uses
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 42 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !129
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %bb.h, label %resizeOpArray.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.as = mul i32 %spec.select.i.i, 24
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !136
  %i.au = tail call ptr @sqlite3_realloc(ptr noundef %i.at, i32 noundef %i.as) ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i, label %bb.i, label %sqlite3DbRealloc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.ap, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i

sqlite3DbRealloc.exit.i.i.i:                      ; preds = %bb.h
  store i32 %spec.select.i.i, ptr %i.e, align 4, !tbaa !147
  store ptr %i.au, ptr %i.ao, align 8, !tbaa !136
  %i.av = icmp sgt i32 %spec.select.i.i, %i.al
  br i1 %i.av, label %bb.j, label %resizeOpArray.exit.i.i

bb.j:                                             ; preds = %sqlite3DbRealloc.exit.i.i.i
  %i.aw = sext i32 %i.al to i64
  %i.ax = getelementptr inbounds [24 x i8], ptr %i.au, i64 %i.aw
  %i.ay = sub nsw i32 %spec.select.i.i, %i.al
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = mul nuw nsw i64 %i.az, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ax, i8 0, i64 %i.ba, i1 false)
  br label %resizeOpArray.exit.i.i

resizeOpArray.exit.i.i:                           ; preds = %bb.j, %sqlite3DbRealloc.exit.i.i.i, %bb.i, %bb.g
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 42
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !129
  %.not24.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not24.i.i, label %resizeOpArray.exit._crit_edge.i.i, label %sqlite3VdbeAddOp2.exit

resizeOpArray.exit._crit_edge.i.i:                ; preds = %resizeOpArray.exit.i.i
  %.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !135
  br label %bb.k

bb.k:                                             ; preds = %resizeOpArray.exit._crit_edge.i.i, %sqlite3VdbeAddOp3.exit
  %i.be = phi i32 [ %.pre.i.i, %resizeOpArray.exit._crit_edge.i.i ], [ %i.ak, %sqlite3VdbeAddOp3.exit ]
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr %i.c, align 8, !tbaa !135
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !136
  %i.bi = sext i32 %i.ak to i64
  %i.bj = getelementptr inbounds [24 x i8], ptr %i.bh, i64 %i.bi ; 6 uses
  store i8 86, ptr %i.bj, align 8, !tbaa !137
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  store i32 %2, ptr %i.bk, align 4, !tbaa !141
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i32 %4, ptr %i.bl, align 8, !tbaa !140
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 0, ptr %i.bm, align 4, !tbaa !190
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store ptr null, ptr %i.bn, align 8, !tbaa !37
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  store i8 0, ptr %i.bo, align 1, !tbaa !191
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 339
  store i8 0, ptr %i.bp, align 1, !tbaa !104
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %resizeOpArray.exit.i.i, %bb.k
  br i1 %.not.not, label %sqlite3VdbeChangeP4.exit, label %bb.l

bb.l:                                             ; preds = %sqlite3VdbeAddOp2.exit
  %i.bq = load ptr, ptr %1, align 8, !tbaa !402   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !136 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %sqlite3VdbeChangeP4.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 42
  %i.bw = load i8, ptr %i.bv, align 2, !tbaa !129
  %.not.i14 = icmp eq i8 %i.bw, 0
  br i1 %.not.i14, label %bb.n, label %sqlite3VdbeChangeP4.exit

bb.n:                                             ; preds = %bb.m
  %i.bx = load i32, ptr %i.c, align 8, !tbaa !135 ; 2 uses
  %i.by = icmp slt i32 %i.bx, 1
  br i1 %i.by, label %sqlite3VdbeChangeP4.exit, label %sqlite3VdbeChangeP4.exit.sink.split

sqlite3VdbeChangeP4.exit.sink.split:              ; preds = %bb.n
  %i.bz = zext nneg i32 %i.bx to i64
  %i.ca = getelementptr [24 x i8], ptr %i.bs, i64 %i.bz ; 2 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 -23    ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !191
  %i.cd = sext i8 %i.cc to i32
  %i.ce = getelementptr i8, ptr %i.ca, i64 -8     ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !37
  tail call fastcc void @freeP4(i32 noundef %i.cd, ptr noundef %i.cf)
  %i.cg = icmp eq ptr %i.bq, null
  store ptr %i.bq, ptr %i.ce, align 8
  %spec.select = select i1 %i.cg, i8 0, i8 -2
  store i8 %spec.select, ptr %i.cb, align 1, !tbaa !191
  br label %sqlite3VdbeChangeP4.exit

sqlite3VdbeChangeP4.exit:                         ; preds = %sqlite3VdbeChangeP4.exit.sink.split, %bb.l, %bb.m, %bb.n, %sqlite3VdbeAddOp2.exit
  %i.ch = load i32, ptr %i.c, align 8, !tbaa !135 ; 2 uses
  %i.ci = icmp sgt i32 %.0.i, -1
  %i.cj = icmp sgt i32 %i.ch, %.0.i
  %or.cond.i = select i1 %i.ci, i1 %i.cj, i1 false
  br i1 %or.cond.i, label %bb.o, label %sqlite3VdbeJumpHere.exit

bb.o:                                             ; preds = %sqlite3VdbeChangeP4.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !136 ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i16, label %sqlite3VdbeJumpHere.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = zext nneg i32 %.0.i to i64
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i32 %i.ch, ptr %i.co, align 8, !tbaa !140
  br label %sqlite3VdbeJumpHere.exit

sqlite3VdbeJumpHere.exit:                         ; preds = %sqlite3VdbeChangeP4.exit, %bb.o, %bb.p
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3GenerateRowIndexDelete(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !1483  ; 2 uses
  %.not.i = icmp eq i8 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = add i8 %i.b, -1                          ; 2 uses
  store i8 %i.d, ptr %i.a, align 1, !tbaa !1483
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4
  br label %sqlite3GetTempReg.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1297
  %i.j = add nsw i32 %i.i, 1                      ; 2 uses
  store i32 %i.j, ptr %i.h, align 8, !tbaa !1297
  br label %sqlite3GetTempReg.exit

sqlite3GetTempReg.exit:                           ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.g, %bb.b ], [ %i.j, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.01721 = load ptr, ptr %i.k, align 8, !tbaa !268 ; 2 uses
  %.not22 = icmp eq ptr %.01721, null
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %sqlite3GetTempReg.exit
  %.not19 = icmp eq ptr %3, null
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %sqlite3VdbeAddOp2.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %sqlite3VdbeAddOp2.exit ] ; 3 uses
  %.01724 = phi ptr [ %.01721, %.lr.ph ], [ %.017, %sqlite3VdbeAddOp2.exit ] ; 2 uses
  br i1 %.not19, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr [4 x i8], ptr %3, i64 %indvars.iv
  %i.n = getelementptr i8, ptr %i.m, i64 -4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %sqlite3VdbeAddOp2.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = tail call fastcc i32 @sqlite3GenerateIndexKey(ptr noundef %0, ptr noundef nonnull %.01724, i32 noundef %2, i32 noundef %.0.i) ; 0 uses
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !367  ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !135  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 28 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !147  ; 6 uses
  %.not.i.i = icmp sgt i32 %i.v, %i.t
  br i1 %.not.i.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not23.i.i = icmp eq i32 %i.v, 0
  %i.w = shl nsw i32 %i.v, 1
  %spec.select.i.i = select i1 %.not23.i.i, i32 42, i32 %i.w ; 4 uses
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !106
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 42 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 2, !tbaa !129
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.h, label %resizeOpArray.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.ac = mul i32 %spec.select.i.i, 24
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !136
  %i.ae = tail call ptr @sqlite3_realloc(ptr noundef %i.ad, i32 noundef %i.ac) ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i, label %bb.i, label %sqlite3DbRealloc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.z, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i

sqlite3DbRealloc.exit.i.i.i:                      ; preds = %bb.h
  store i32 %spec.select.i.i, ptr %i.u, align 4, !tbaa !147
  store ptr %i.ae, ptr %i.y, align 8, !tbaa !136
  %i.af = icmp sgt i32 %spec.select.i.i, %i.v
  br i1 %i.af, label %bb.j, label %resizeOpArray.exit.i.i

bb.j:                                             ; preds = %sqlite3DbRealloc.exit.i.i.i
  %i.ag = sext i32 %i.v to i64
  %i.ah = getelementptr inbounds [24 x i8], ptr %i.ae, i64 %i.ag
  %i.ai = sub nsw i32 %spec.select.i.i, %i.v
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = mul nuw nsw i64 %i.aj, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ah, i8 0, i64 %i.ak, i1 false)
  br label %resizeOpArray.exit.i.i

resizeOpArray.exit.i.i:                           ; preds = %bb.j, %sqlite3DbRealloc.exit.i.i.i, %bb.i, %bb.g
  %i.al = load ptr, ptr %i.r, align 8, !tbaa !106
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 42
  %i.an = load i8, ptr %i.am, align 2, !tbaa !129
  %.not24.i.i = icmp eq i8 %i.an, 0
  br i1 %.not24.i.i, label %resizeOpArray.exit._crit_edge.i.i, label %sqlite3VdbeAddOp2.exit

resizeOpArray.exit._crit_edge.i.i:                ; preds = %resizeOpArray.exit.i.i
  %.pre.i.i = load i32, ptr %i.s, align 8, !tbaa !135
  br label %bb.k

bb.k:                                             ; preds = %resizeOpArray.exit._crit_edge.i.i, %bb.f
  %i.ao = phi i32 [ %.pre.i.i, %resizeOpArray.exit._crit_edge.i.i ], [ %i.t, %bb.f ]
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.s, align 8, !tbaa !135
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !136
  %i.as = sext i32 %i.t to i64
  %i.at = getelementptr inbounds [24 x i8], ptr %i.ar, i64 %i.as ; 6 uses
  store i8 59, ptr %i.at, align 8, !tbaa !137
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = trunc i64 %indvars.iv to i32
  %i.aw = add i32 %2, %i.av
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !141
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 %.0.i, ptr %i.ax, align 8, !tbaa !140
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 0, ptr %i.ay, align 4, !tbaa !190
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr null, ptr %i.az, align 8, !tbaa !37
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  store i8 0, ptr %i.ba, align 1, !tbaa !191
  %i.bb = getelementptr inbounds nuw i8, ptr %i.r, i64 339
  store i8 0, ptr %i.bb, align 1, !tbaa !104
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %bb.k, %resizeOpArray.exit.i.i, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.bc = getelementptr inbounds nuw i8, ptr %.01724, i64 56
  %.017 = load ptr, ptr %i.bc, align 8, !tbaa !268 ; 2 uses
  %.not = icmp eq ptr %.017, null
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !1866

._crit_edge:                                      ; preds = %sqlite3VdbeAddOp2.exit, %sqlite3GetTempReg.exit
  %.not.i20 = icmp eq i32 %.0.i, 0
  br i1 %.not.i20, label %sqlite3ReleaseTempReg.exit, label %bb.l
end_hunk_12
begin_hunk_13_@sqlite3ExprCodeAndCache:bb.a
  store i8 1, ptr %i.ax, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i

sqlite3DbRealloc.exit.i.i.i:                      ; preds = %bb.k
  store i32 %spec.select.i.i, ptr %i.as, align 4, !tbaa !147
  store ptr %i.bc, ptr %i.aw, align 8, !tbaa !136
  %i.bd = icmp sgt i32 %spec.select.i.i, %i.at
  br i1 %i.bd, label %bb.m, label %resizeOpArray.exit.i.i

bb.m:                                             ; preds = %sqlite3DbRealloc.exit.i.i.i
  %i.be = sext i32 %i.at to i64
  %i.bf = getelementptr inbounds [24 x i8], ptr %i.bc, i64 %i.be
  %i.bg = sub nsw i32 %spec.select.i.i, %i.at
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = mul nuw nsw i64 %i.bh, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bf, i8 0, i64 %i.bi, i1 false)
  br label %resizeOpArray.exit.i.i

resizeOpArray.exit.i.i:                           ; preds = %bb.m, %sqlite3DbRealloc.exit.i.i.i, %bb.l, %bb.j
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 42
  %i.bl = load i8, ptr %i.bk, align 2, !tbaa !129
  %.not24.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not24.i.i, label %resizeOpArray.exit._crit_edge.i.i, label %sqlite3VdbeAddOp2.exit

resizeOpArray.exit._crit_edge.i.i:                ; preds = %resizeOpArray.exit.i.i
  %.pre.i.i = load i32, ptr %i.aq, align 8, !tbaa !135
  br label %bb.n

bb.n:                                             ; preds = %resizeOpArray.exit._crit_edge.i.i, %bb.i
  %i.bm = phi i32 [ %.pre.i.i, %resizeOpArray.exit._crit_edge.i.i ], [ %i.ar, %bb.i ]
  %i.bn = add nsw i32 %i.bm, 1
  store i32 %i.bn, ptr %i.aq, align 8, !tbaa !135
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !136
  %i.bq = sext i32 %i.ar to i64
  %i.br = getelementptr inbounds [24 x i8], ptr %i.bp, i64 %i.bq ; 6 uses
  store i8 18, ptr %i.br, align 8, !tbaa !137
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store i32 %2, ptr %i.bs, align 4, !tbaa !141
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i32 %i.ap, ptr %i.bt, align 8, !tbaa !140
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  store i32 0, ptr %i.bu, align 4, !tbaa !190
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store ptr null, ptr %i.bv, align 8, !tbaa !37
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store i8 0, ptr %i.bw, align 1, !tbaa !191
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 339
  store i8 0, ptr %i.bx, align 1, !tbaa !104
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %resizeOpArray.exit.i.i, %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 %i.ap, ptr %i.by, align 8, !tbaa !1330
  store i8 127, ptr %1, align 8, !tbaa !1311
  br label %bb.o

bb.o:                                             ; preds = %sqlite3VdbeAddOp2.exit, %sqlite3ExprCode.exit
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3TableAffinityStr(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !403  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !106   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !254
  %i.e = add nsw i32 %i.d, 1                      ; 3 uses
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %sqlite3DbMallocRaw.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 42 ; 2 uses
  %i.g = load i8, ptr %i.f, align 2, !tbaa !129
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.d, label %sqlite3VdbeChangeP4.exit

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @sqlite3_malloc(i32 noundef %i.e) ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %sqlite3DbMallocZero.exit

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.f, align 2, !tbaa !129
  br label %sqlite3VdbeChangeP4.exit

sqlite3DbMallocRaw.exit.i:                        ; preds = %bb.b
  %i.k = tail call ptr @sqlite3_malloc(i32 noundef %i.e) ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %sqlite3VdbeChangeP4.exit, label %sqlite3DbMallocZero.exit

sqlite3DbMallocZero.exit:                         ; preds = %bb.d, %sqlite3DbMallocRaw.exit.i
  %.0.i11.i = phi ptr [ %i.k, %sqlite3DbMallocRaw.exit.i ], [ %i.i, %bb.d ] ; 5 uses
  %i.l = zext i32 %i.e to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0.i11.i, i8 0, i64 %i.l, i1 false)
  %i.m = load i32, ptr %i.c, align 8, !tbaa !254  ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %sqlite3DbMallocZero.exit..thread_crit_edge

sqlite3DbMallocZero.exit..thread_crit_edge:       ; preds = %sqlite3DbMallocZero.exit
  %.pre = sext i32 %i.m to i64
  br label %.thread

.lr.ph:                                           ; preds = %sqlite3DbMallocZero.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !261
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %indvars.iv
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 34
  %i.s = load i8, ptr %i.r, align 2, !tbaa !1310
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 %indvars.iv
  store i8 %i.s, ptr %i.t, align 1, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = load i32, ptr %i.c, align 8, !tbaa !254
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = icmp slt i64 %indvars.iv.next, %i.v
  br i1 %i.w, label %bb.f, label %.thread, !llvm.loop !1869

.thread:                                          ; preds = %bb.f, %sqlite3DbMallocZero.exit..thread_crit_edge
  %.pre-phi = phi i64 [ %.pre, %sqlite3DbMallocZero.exit..thread_crit_edge ], [ %i.v, %bb.f ]
  %i.x = getelementptr inbounds i8, ptr %.0.i11.i, i64 %.pre-phi
  store i8 0, ptr %i.x, align 1, !tbaa !37
  store ptr %.0.i11.i, ptr %i.a, align 8, !tbaa !403
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.a
  %i.y = phi ptr [ %.0.i11.i, %.thread ], [ %i.b, %bb.a ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !136 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %sqlite3VdbeChangeP4.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %0, align 8, !tbaa !106
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 42
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !129
  %.not.i22 = icmp eq i8 %i.ae, 0
  br i1 %.not.i22, label %bb.i, label %sqlite3VdbeChangeP4.exit

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !135 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, 1
  br i1 %i.ah, label %sqlite3VdbeChangeP4.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = zext nneg i32 %i.ag to i64
  %i.aj = getelementptr [24 x i8], ptr %i.aa, i64 %i.ai ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 -23    ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !191
  %i.am = sext i8 %i.al to i32
  %i.an = getelementptr i8, ptr %i.aj, i64 -8     ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !37
  tail call fastcc void @freeP4(i32 noundef %i.am, ptr noundef %i.ao)
  store ptr null, ptr %i.an, align 8, !tbaa !37
  %i.ap = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.y) #42 ; 2 uses
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = load ptr, ptr %0, align 8, !tbaa !106
  %i.as = add nsw i32 %i.aq, 1
  %i.at = tail call ptr @sqlite3_malloc(i32 noundef %i.as) ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i, label %sqlite3StrNDup.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %sext = shl i64 %i.ap, 32
  %i.au = ashr exact i64 %sext, 32                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr nonnull readonly align 1 %i.y, i64 %i.au, i1 false)
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 %i.au
  store i8 0, ptr %i.av, align 1, !tbaa !37
  br label %sqlite3DbStrNDup.exit.i

sqlite3StrNDup.exit.i.i:                          ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 42
  store i8 1, ptr %i.aw, align 2, !tbaa !129
  br label %sqlite3DbStrNDup.exit.i

sqlite3DbStrNDup.exit.i:                          ; preds = %sqlite3StrNDup.exit.i.i, %bb.k
  store ptr %i.at, ptr %i.an, align 8, !tbaa !37
  store i8 -1, ptr %i.ak, align 1, !tbaa !191
  br label %sqlite3VdbeChangeP4.exit

sqlite3VdbeChangeP4.exit:                         ; preds = %sqlite3DbStrNDup.exit.i, %bb.i, %bb.h, %bb.g, %bb.c, %bb.e, %sqlite3DbMallocRaw.exit.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3GenerateConstraintChecks(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2, i32 noundef range(i32 -2147483647, -2147483648) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef range(i32 0, 2) %5, i32 noundef range(i32 0, 2) %6, i32 noundef %7, i32 noundef %8) unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [200 x i8], align 16              ; 11 uses
  %9 = icmp ne i32 %6, 0                          ; 3 uses
  %10 = icmp ne i32 %5, 0                         ; 2 uses
  %11 = and i1 %10, %9
  %.neg = sext i1 %11 to i32
  %i.c = tail call fastcc ptr @sqlite3GetVdbe(ptr noundef %0) ; 82 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !254  ; 2 uses
  %i.f = add nsw i32 %3, 1                        ; 3 uses
  %i.g = icmp sgt i32 %i.e, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.not219 = icmp eq i32 %7, 99
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 28 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 339 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = zext i32 %i.f to i64
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %sqlite3VdbeJumpHere.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %sqlite3VdbeJumpHere.exit ] ; 6 uses
  %i.p = load i32, ptr %i.h, align 8, !tbaa !1394
  %i.q = zext i32 %i.p to i64
  %i.r = icmp eq i64 %indvars.iv, %i.q
  br i1 %i.r, label %sqlite3VdbeJumpHere.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !261
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %i.s, i64 %indvars.iv ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i8, ptr %i.u, align 8, !tbaa !1315  ; 3 uses
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %sqlite3VdbeJumpHere.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = icmp eq i8 %i.v, 99
  %narrow220 = select i1 %i.x, i8 2, i8 %i.v
  %spec.store.select = zext i8 %narrow220 to i32
  %.0186 = select i1 %.not219, i32 %spec.store.select, i32 %7 ; 2 uses
  %i.y = icmp eq i32 %.0186, 5
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !397
  %i.ab = icmp eq ptr %i.aa, null
  %spec.select = select i1 %i.ab, i32 2, i32 5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1187 = phi i32 [ %.0186, %bb.d ], [ %spec.select, %bb.e ] ; 2 uses
  %i.ac = add nuw i64 %indvars.iv, %i.o           ; 2 uses
  %i.ad = load i32, ptr %i.j, align 8, !tbaa !135 ; 4 uses
  %i.ae = load i32, ptr %i.k, align 4, !tbaa !147 ; 6 uses
  %.not.i.i = icmp sgt i32 %i.ae, %i.ad
  br i1 %.not.i.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not23.i.i = icmp eq i32 %i.ae, 0
  %i.af = shl nsw i32 %i.ae, 1
  %spec.select.i.i = select i1 %.not23.i.i, i32 42, i32 %i.af ; 4 uses
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 42 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 2, !tbaa !129
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.h, label %resizeOpArray.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.ak = mul i32 %spec.select.i.i, 24
  %i.al = load ptr, ptr %i.l, align 8, !tbaa !136
  %i.am = tail call ptr @sqlite3_realloc(ptr noundef %i.al, i32 noundef %i.ak) ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i, label %bb.i, label %sqlite3DbRealloc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.ah, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i

sqlite3DbRealloc.exit.i.i.i:                      ; preds = %bb.h
  store i32 %spec.select.i.i, ptr %i.k, align 4, !tbaa !147
  store ptr %i.am, ptr %i.l, align 8, !tbaa !136
  %i.an = icmp sgt i32 %spec.select.i.i, %i.ae
  br i1 %i.an, label %bb.j, label %resizeOpArray.exit.i.i

bb.j:                                             ; preds = %sqlite3DbRealloc.exit.i.i.i
  %i.ao = sext i32 %i.ae to i64
  %i.ap = getelementptr inbounds [24 x i8], ptr %i.am, i64 %i.ao
  %i.aq = sub nsw i32 %spec.select.i.i, %i.ae
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = mul nuw nsw i64 %i.ar, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ap, i8 0, i64 %i.as, i1 false)
  br label %resizeOpArray.exit.i.i

resizeOpArray.exit.i.i:                           ; preds = %bb.j, %sqlite3DbRealloc.exit.i.i.i, %bb.i, %bb.g
  %i.at = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 42
  %i.av = load i8, ptr %i.au, align 2, !tbaa !129
  %.not24.i.i = icmp eq i8 %i.av, 0
  br i1 %.not24.i.i, label %resizeOpArray.exit._crit_edge.i.i, label %sqlite3VdbeAddOp1.exit

resizeOpArray.exit._crit_edge.i.i:                ; preds = %resizeOpArray.exit.i.i
  %.pre.i.i = load i32, ptr %i.j, align 8, !tbaa !135
  br label %bb.k

bb.k:                                             ; preds = %resizeOpArray.exit._crit_edge.i.i, %bb.f
  %i.aw = phi i32 [ %.pre.i.i, %resizeOpArray.exit._crit_edge.i.i ], [ %i.ad, %bb.f ]
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.j, align 8, !tbaa !135
  %i.ay = load ptr, ptr %i.l, align 8, !tbaa !136
  %i.az = sext i32 %i.ad to i64
  %i.ba = getelementptr inbounds [24 x i8], ptr %i.ay, i64 %i.az ; 4 uses
  store i8 66, ptr %i.ba, align 8, !tbaa !137
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = trunc i64 %i.ac to i32
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !141
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store i8 0, ptr %i.be, align 1, !tbaa !191
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  store i8 0, ptr %i.m, align 1, !tbaa !104
  br label %sqlite3VdbeAddOp1.exit

sqlite3VdbeAddOp1.exit:                           ; preds = %resizeOpArray.exit.i.i, %bb.k
  %.0.i.i = phi i32 [ %i.ad, %bb.k ], [ 0, %resizeOpArray.exit.i.i ] ; 3 uses
  switch i32 %.1187, label %sqlite3VdbeAddOp2.exit241 [
    i32 1, label %bb.l
    i32 2, label %bb.l
    i32 3, label %bb.l
    i32 4, label %bb.y
    i32 5, label %bb.ae
  ]

bb.l:                                             ; preds = %sqlite3VdbeAddOp1.exit, %sqlite3VdbeAddOp1.exit, %sqlite3VdbeAddOp1.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  store ptr null, ptr %i.a, align 8, !tbaa !72
  %i.bf = load i32, ptr %i.j, align 8, !tbaa !135 ; 3 uses
  %i.bg = load i32, ptr %i.k, align 4, !tbaa !147 ; 6 uses
  %.not.i.i221 = icmp sgt i32 %i.bg, %i.bf
  br i1 %.not.i.i221, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not23.i.i222 = icmp eq i32 %i.bg, 0
  %i.bh = shl nsw i32 %i.bg, 1
  %spec.select.i.i223 = select i1 %.not23.i.i222, i32 42, i32 %i.bh ; 4 uses
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 42 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 2, !tbaa !129
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %bb.n, label %resizeOpArray.exit.i.i224

bb.n:                                             ; preds = %bb.m
  %i.bm = mul i32 %spec.select.i.i223, 24
  %i.bn = load ptr, ptr %i.l, align 8, !tbaa !136
  %i.bo = tail call ptr @sqlite3_realloc(ptr noundef %i.bn, i32 noundef %i.bm) ; 3 uses
  %.not.i.i.i.i229 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i229, label %bb.o, label %sqlite3DbRealloc.exit.i.i.i230

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %i.bj, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i224

sqlite3DbRealloc.exit.i.i.i230:                   ; preds = %bb.n
  store i32 %spec.select.i.i223, ptr %i.k, align 4, !tbaa !147
  store ptr %i.bo, ptr %i.l, align 8, !tbaa !136
  %i.bp = icmp sgt i32 %spec.select.i.i223, %i.bg
  br i1 %i.bp, label %bb.p, label %resizeOpArray.exit.i.i224

bb.p:                                             ; preds = %sqlite3DbRealloc.exit.i.i.i230
  %i.bq = sext i32 %i.bg to i64
  %i.br = getelementptr inbounds [24 x i8], ptr %i.bo, i64 %i.bq
  %i.bs = sub nsw i32 %spec.select.i.i223, %i.bg
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = mul nuw nsw i64 %i.bt, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.br, i8 0, i64 %i.bu, i1 false)
  br label %resizeOpArray.exit.i.i224

resizeOpArray.exit.i.i224:                        ; preds = %bb.p, %sqlite3DbRealloc.exit.i.i.i230, %bb.o, %bb.m
  %i.bv = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 42
  %i.bx = load i8, ptr %i.bw, align 2, !tbaa !129
  %.not24.i.i225 = icmp eq i8 %i.bx, 0
  br i1 %.not24.i.i225, label %resizeOpArray.exit._crit_edge.i.i227, label %sqlite3VdbeAddOp2.exit

resizeOpArray.exit._crit_edge.i.i227:             ; preds = %resizeOpArray.exit.i.i224
  %.pre.i.i228 = load i32, ptr %i.j, align 8, !tbaa !135
  br label %bb.q

bb.q:                                             ; preds = %resizeOpArray.exit._crit_edge.i.i227, %bb.l
  %i.by = phi i32 [ %.pre.i.i228, %resizeOpArray.exit._crit_edge.i.i227 ], [ %i.bf, %bb.l ]
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %i.j, align 8, !tbaa !135
  %i.ca = load ptr, ptr %i.l, align 8, !tbaa !136
  %i.cb = sext i32 %i.bf to i64
  %i.cc = getelementptr inbounds [24 x i8], ptr %i.ca, i64 %i.cb ; 6 uses
  store i8 37, ptr %i.cc, align 8, !tbaa !137
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store i32 19, ptr %i.cd, align 4, !tbaa !141
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i32 %.1187, ptr %i.ce, align 8, !tbaa !140
end_hunk_13
begin_hunk_14_@sqlite3GenerateConstraintChecks:bb.a
  %i.nn = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !136
  %i.np = sext i32 %i.mr to i64
  %i.nq = getelementptr inbounds [24 x i8], ptr %i.no, i64 %i.np ; 6 uses
  store i8 37, ptr %i.nq, align 8, !tbaa !137
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 4
  store i32 19, ptr %i.nr, align 4, !tbaa !141
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  store i32 %.3, ptr %i.ns, align 8, !tbaa !140
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nq, i64 12
  store i32 0, ptr %i.nt, align 4, !tbaa !190
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nq, i64 16
  store ptr null, ptr %i.nu, align 8, !tbaa !37
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nq, i64 1
  store i8 0, ptr %i.nv, align 1, !tbaa !191
  %i.nw = getelementptr inbounds nuw i8, ptr %i.c, i64 339
  store i8 0, ptr %i.nw, align 1, !tbaa !104
  br label %sqlite3VdbeAddOp4.exit

sqlite3VdbeAddOp4.exit:                           ; preds = %resizeOpArray.exit.i.i285, %bb.ce
  %.0.i.i287 = phi i32 [ %i.mr, %bb.ce ], [ 0, %resizeOpArray.exit.i.i285 ] ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !136 ; 2 uses
  %i.nz = icmp eq ptr %i.ny, null
  br i1 %i.nz, label %sqlite3VdbeChangeP4.exit437, label %bb.cf

bb.cf:                                            ; preds = %sqlite3VdbeAddOp4.exit
  %i.oa = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 42
  %i.oc = load i8, ptr %i.ob, align 2, !tbaa !129
  %.not.i435 = icmp eq i8 %i.oc, 0
  br i1 %.not.i435, label %bb.cg, label %sqlite3VdbeChangeP4.exit437

bb.cg:                                            ; preds = %bb.cf
  %i.od = icmp slt i32 %.0.i.i287, 0
  br i1 %i.od, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.oe = load i32, ptr %i.lj, align 8, !tbaa !135 ; 2 uses
  %i.of = add nsw i32 %i.oe, -1
  %i.og = icmp slt i32 %i.oe, 1
  br i1 %i.og, label %sqlite3VdbeChangeP4.exit437, label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.0.i436 = phi i32 [ %i.of, %bb.ch ], [ %.0.i.i287, %bb.cg ]
  %i.oh = zext nneg i32 %.0.i436 to i64
  %i.oi = getelementptr inbounds nuw [24 x i8], ptr %i.ny, i64 %i.oh ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 1 ; 2 uses
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !191
  %i.ol = sext i8 %i.ok to i32
  %i.om = getelementptr inbounds nuw i8, ptr %i.oi, i64 16 ; 2 uses
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !37
  tail call fastcc void @freeP4(i32 noundef %i.ol, ptr noundef %i.on)
  store ptr @.str.420, ptr %i.om, align 8, !tbaa !37
  store i8 -2, ptr %i.oj, align 1, !tbaa !191
  br label %sqlite3VdbeChangeP4.exit437

bb.cj:                                            ; preds = %sqlite3VdbeAddOp3.exit281
  tail call fastcc void @sqlite3GenerateRowIndexDelete(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef null)
  br label %sqlite3VdbeChangeP4.exit437

bb.ck:                                            ; preds = %sqlite3VdbeAddOp3.exit281
  %i.oo = load i32, ptr %i.lj, align 8, !tbaa !135 ; 3 uses
  %i.op = load i32, ptr %i.ll, align 4, !tbaa !147 ; 6 uses
  %.not.i.i292 = icmp sgt i32 %i.op, %i.oo
  br i1 %.not.i.i292, label %bb.cp, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %.not23.i.i293 = icmp eq i32 %i.op, 0
  %i.oq = shl nsw i32 %i.op, 1
  %spec.select.i.i294 = select i1 %.not23.i.i293, i32 42, i32 %i.oq ; 4 uses
  %i.or = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.os = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.or, i64 42 ; 2 uses
  %i.ou = load i8, ptr %i.ot, align 2, !tbaa !129
  %i.ov = icmp eq i8 %i.ou, 0
  br i1 %i.ov, label %bb.cm, label %resizeOpArray.exit.i.i295

bb.cm:                                            ; preds = %bb.cl
  %i.ow = mul i32 %spec.select.i.i294, 24
  %i.ox = load ptr, ptr %i.os, align 8, !tbaa !136
  %i.oy = tail call ptr @sqlite3_realloc(ptr noundef %i.ox, i32 noundef %i.ow) ; 3 uses
  %.not.i.i.i.i300 = icmp eq ptr %i.oy, null
  br i1 %.not.i.i.i.i300, label %bb.cn, label %sqlite3DbRealloc.exit.i.i.i301

bb.cn:                                            ; preds = %bb.cm
  store i8 1, ptr %i.ot, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i295

sqlite3DbRealloc.exit.i.i.i301:                   ; preds = %bb.cm
  store i32 %spec.select.i.i294, ptr %i.ll, align 4, !tbaa !147
  store ptr %i.oy, ptr %i.os, align 8, !tbaa !136
  %i.oz = icmp sgt i32 %spec.select.i.i294, %i.op
  br i1 %i.oz, label %bb.co, label %resizeOpArray.exit.i.i295

bb.co:                                            ; preds = %sqlite3DbRealloc.exit.i.i.i301
  %i.pa = sext i32 %i.op to i64
  %i.pb = getelementptr inbounds [24 x i8], ptr %i.oy, i64 %i.pa
  %i.pc = sub nsw i32 %spec.select.i.i294, %i.op
  %i.pd = zext nneg i32 %i.pc to i64
  %i.pe = mul nuw nsw i64 %i.pd, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.pb, i8 0, i64 %i.pe, i1 false)
  br label %resizeOpArray.exit.i.i295

resizeOpArray.exit.i.i295:                        ; preds = %bb.co, %sqlite3DbRealloc.exit.i.i.i301, %bb.cn, %bb.cl
  %i.pf = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 42
  %i.ph = load i8, ptr %i.pg, align 2, !tbaa !129
  %.not24.i.i296 = icmp eq i8 %i.ph, 0
  br i1 %.not24.i.i296, label %resizeOpArray.exit._crit_edge.i.i298, label %sqlite3VdbeChangeP4.exit437

resizeOpArray.exit._crit_edge.i.i298:             ; preds = %resizeOpArray.exit.i.i295
  %.pre.i.i299 = load i32, ptr %i.lj, align 8, !tbaa !135
  br label %bb.cp

bb.cp:                                            ; preds = %resizeOpArray.exit._crit_edge.i.i298, %bb.ck
  %i.pi = phi i32 [ %.pre.i.i299, %resizeOpArray.exit._crit_edge.i.i298 ], [ %i.oo, %bb.ck ]
  %i.pj = add nsw i32 %i.pi, 1
  store i32 %i.pj, ptr %i.lj, align 8, !tbaa !135
  %i.pk = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !136
  %i.pm = sext i32 %i.oo to i64
  %i.pn = getelementptr inbounds [24 x i8], ptr %i.pl, i64 %i.pm ; 6 uses
  store i8 90, ptr %i.pn, align 8, !tbaa !137
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 4
  store i32 0, ptr %i.po, align 4, !tbaa !141
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  store i32 %8, ptr %i.pp, align 8, !tbaa !140
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pn, i64 12
  store i32 0, ptr %i.pq, align 4, !tbaa !190
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pn, i64 16
  store ptr null, ptr %i.pr, align 8, !tbaa !37
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pn, i64 1
  store i8 0, ptr %i.ps, align 1, !tbaa !191
  %i.pt = getelementptr inbounds nuw i8, ptr %i.c, i64 339
  store i8 0, ptr %i.pt, align 1, !tbaa !104
  br label %sqlite3VdbeChangeP4.exit437

sqlite3VdbeChangeP4.exit437:                      ; preds = %bb.cp, %resizeOpArray.exit.i.i295, %bb.ci, %bb.ch, %bb.cf, %sqlite3VdbeAddOp4.exit, %bb.cj
  %.0197 = phi i32 [ 0, %bb.ci ], [ 1, %bb.cj ], [ 0, %sqlite3VdbeAddOp4.exit ], [ 0, %bb.cf ], [ 0, %bb.ch ], [ 0, %resizeOpArray.exit.i.i295 ], [ 0, %bb.cp ] ; 4 uses
  %i.pu = load i32, ptr %i.lj, align 8, !tbaa !135 ; 4 uses
  %i.pv = icmp sgt i32 %.0.i276, -1
  %i.pw = icmp sgt i32 %i.pu, %.0.i276
  %or.cond.i304 = select i1 %i.pv, i1 %i.pw, i1 false
  br i1 %or.cond.i304, label %bb.cq, label %sqlite3VdbeJumpHere.exit306

bb.cq:                                            ; preds = %sqlite3VdbeChangeP4.exit437
  %i.px = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !136 ; 2 uses
  %.not.i.i305 = icmp eq ptr %i.py, null
  br i1 %.not.i.i305, label %sqlite3VdbeJumpHere.exit306, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.pz = zext nneg i32 %.0.i276 to i64
  %i.qa = getelementptr inbounds nuw [24 x i8], ptr %i.py, i64 %i.pz
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 8
  store i32 %i.pu, ptr %i.qb, align 8, !tbaa !140
  br label %sqlite3VdbeJumpHere.exit306

sqlite3VdbeJumpHere.exit306:                      ; preds = %sqlite3VdbeChangeP4.exit437, %bb.cq, %bb.cr
  br i1 %9, label %bb.cs, label %sqlite3VdbeJumpHere.exit310

bb.cs:                                            ; preds = %sqlite3VdbeJumpHere.exit306
  %i.qc = icmp sgt i32 %.0193, -1
  %i.qd = icmp sgt i32 %i.pu, %.0193
  %or.cond.i308 = select i1 %i.qc, i1 %i.qd, i1 false
  br i1 %or.cond.i308, label %bb.ct, label %sqlite3VdbeJumpHere.exit310

bb.ct:                                            ; preds = %bb.cs
  %i.qe = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !136 ; 2 uses
  %.not.i.i309 = icmp eq ptr %i.qf, null
  br i1 %.not.i.i309, label %sqlite3VdbeJumpHere.exit310, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.qg = zext nneg i32 %.0193 to i64
  %i.qh = getelementptr inbounds nuw [24 x i8], ptr %i.qf, i64 %i.qg
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 8
  store i32 %i.pu, ptr %i.qi, align 8, !tbaa !140
  br label %sqlite3VdbeJumpHere.exit310

sqlite3VdbeJumpHere.exit310:                      ; preds = %bb.cu, %bb.ct, %bb.cs, %bb.bl, %sqlite3VdbeJumpHere.exit306, %sqlite3VdbeResolveLabel.exit
  %.1198 = phi i32 [ 0, %sqlite3VdbeResolveLabel.exit ], [ %.0197, %sqlite3VdbeJumpHere.exit306 ], [ 0, %bb.bl ], [ %.0197, %bb.cs ], [ %.0197, %bb.ct ], [ %.0197, %bb.cu ]
  %i.qj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.0196462 = load ptr, ptr %i.qj, align 8, !tbaa !268 ; 2 uses
  %.not214463 = icmp eq ptr %.0196462, null
  br i1 %.not214463, label %._crit_edge468, label %.lr.ph467

.lr.ph467:                                        ; preds = %sqlite3VdbeJumpHere.exit310
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.qo = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 28 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.c, i64 28 ; 18 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 30 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.c, i64 339 ; 8 uses
  %.not215 = icmp eq i32 %7, 99
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 4 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %12 = add nsw i32 %3, %.neg
  %i.qu = add i32 %2, 1
  %i.qv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.cv

bb.cv:                                            ; preds = %.lr.ph467, %sqlite3ReleaseTempReg.exit
  %indvars.iv482 = phi i64 [ 0, %.lr.ph467 ], [ %indvars.iv.next483, %sqlite3ReleaseTempReg.exit ] ; 3 uses
  %.0196466 = phi ptr [ %.0196462, %.lr.ph467 ], [ %.0196, %sqlite3ReleaseTempReg.exit ] ; 6 uses
  %.2199464 = phi i32 [ %.1198, %.lr.ph467 ], [ %.4201, %sqlite3ReleaseTempReg.exit ] ; 7 uses
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv482 ; 3 uses
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !4
  %i.qy = icmp eq i32 %i.qx, 0
  br i1 %i.qy, label %sqlite3ReleaseTempReg.exit, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.qz = getelementptr inbounds nuw i8, ptr %.0196466, i64 8 ; 9 uses
  %i.ra = load i32, ptr %i.qz, align 8, !tbaa !269 ; 3 uses
  %i.rb = add nsw i32 %i.ra, 1                    ; 3 uses
  %i.rc = load i32, ptr %i.qk, align 8, !tbaa !1477 ; 2 uses
  %.not.i311.not = icmp slt i32 %i.ra, %i.rc
  br i1 %.not.i311.not, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.rd = load i32, ptr %i.qm, align 4, !tbaa !1478 ; 2 uses
  %i.re = add nsw i32 %i.rd, %i.rb
  store i32 %i.re, ptr %i.qm, align 4, !tbaa !1478
  %i.rf = sub nsw i32 %i.rc, %i.rb
  store i32 %i.rf, ptr %i.qk, align 8, !tbaa !1477
  br label %sqlite3GetTempRange.exit

bb.cy:                                            ; preds = %bb.cw
  %i.rg = load i32, ptr %i.ql, align 8, !tbaa !1297 ; 2 uses
  %i.rh = add nsw i32 %i.rg, 1
  %i.ri = add nsw i32 %i.rg, %i.rb
  store i32 %i.ri, ptr %i.ql, align 8, !tbaa !1297
  br label %sqlite3GetTempRange.exit

sqlite3GetTempRange.exit:                         ; preds = %bb.cx, %bb.cy
  %.0.i312 = phi i32 [ %i.rd, %bb.cx ], [ %i.rh, %bb.cy ] ; 5 uses
  %i.rj = icmp sgt i32 %i.ra, 0
  br i1 %i.rj, label %.lr.ph455, label %._crit_edge456

.lr.ph455:                                        ; preds = %sqlite3GetTempRange.exit
  %i.rk = getelementptr inbounds nuw i8, ptr %.0196466, i64 16
  br label %bb.cz

bb.cz:                                            ; preds = %.lr.ph455, %sqlite3VdbeAddOp2.exit323
  %indvars.iv474 = phi i64 [ 0, %.lr.ph455 ], [ %indvars.iv.next475, %sqlite3VdbeAddOp2.exit323 ] ; 3 uses
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !271
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.rl, i64 %indvars.iv474
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !4  ; 2 uses
  %i.ro = load i32, ptr %i.qn, align 8, !tbaa !1394
  %i.rp = icmp eq i32 %i.rn, %i.ro
  br i1 %i.rp, label %bb.da, label %bb.df

bb.da:                                            ; preds = %bb.cz
  %i.rq = load i32, ptr %i.qo, align 8, !tbaa !135 ; 4 uses
  %i.rr = load i32, ptr %i.qp, align 4, !tbaa !147 ; 6 uses
  %.not.i.i313 = icmp sgt i32 %i.rr, %i.rq
  br i1 %.not.i.i313, label %sqlite3VdbeAddOp2.exit323.sink.split, label %bb.db

bb.db:                                            ; preds = %bb.da
  %.not23.i.i314 = icmp eq i32 %i.rr, 0
  %i.rs = shl nsw i32 %i.rr, 1
  %spec.select.i.i315 = select i1 %.not23.i.i314, i32 42, i32 %i.rs ; 4 uses
  %i.rt = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 42 ; 2 uses
  %i.rv = load i8, ptr %i.ru, align 2, !tbaa !129
  %i.rw = icmp eq i8 %i.rv, 0
  br i1 %i.rw, label %bb.dc, label %resizeOpArray.exit.i.i316

bb.dc:                                            ; preds = %bb.db
  %i.rx = mul i32 %spec.select.i.i315, 24
  %i.ry = load ptr, ptr %i.qq, align 8, !tbaa !136
  %i.rz = call ptr @sqlite3_realloc(ptr noundef %i.ry, i32 noundef %i.rx) ; 3 uses
  %.not.i.i.i.i321 = icmp eq ptr %i.rz, null
  br i1 %.not.i.i.i.i321, label %bb.dd, label %sqlite3DbRealloc.exit.i.i.i322

bb.dd:                                            ; preds = %bb.dc
  store i8 1, ptr %i.ru, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i316

sqlite3DbRealloc.exit.i.i.i322:                   ; preds = %bb.dc
  store i32 %spec.select.i.i315, ptr %i.qp, align 4, !tbaa !147
  store ptr %i.rz, ptr %i.qq, align 8, !tbaa !136
  %i.sa = icmp sgt i32 %spec.select.i.i315, %i.rr
  br i1 %i.sa, label %bb.de, label %resizeOpArray.exit.i.i316

bb.de:                                            ; preds = %sqlite3DbRealloc.exit.i.i.i322
  %i.sb = sext i32 %i.rr to i64
  %i.sc = getelementptr inbounds [24 x i8], ptr %i.rz, i64 %i.sb
  %i.sd = sub nsw i32 %spec.select.i.i315, %i.rr
  %i.se = zext nneg i32 %i.sd to i64
  %i.sf = mul nuw nsw i64 %i.se, 24
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.sc, i8 0, i64 %i.sf, i1 false)
  br label %resizeOpArray.exit.i.i316

resizeOpArray.exit.i.i316:                        ; preds = %bb.de, %sqlite3DbRealloc.exit.i.i.i322, %bb.dd, %bb.db
  %i.sg = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 42
  %i.si = load i8, ptr %i.sh, align 2, !tbaa !129
  %.not24.i.i317 = icmp eq i8 %i.si, 0
  br i1 %.not24.i.i317, label %sqlite3VdbeAddOp2.exit323.sink.split.sink.split, label %sqlite3VdbeAddOp2.exit323

bb.df:                                            ; preds = %bb.cz
  %i.sj = add nsw i32 %i.rn, %i.f                 ; 2 uses
  %i.sk = load i32, ptr %i.qo, align 8, !tbaa !135 ; 4 uses
  %i.sl = load i32, ptr %i.qp, align 4, !tbaa !147 ; 6 uses
  %.not.i.i324 = icmp sgt i32 %i.sl, %i.sk
  br i1 %.not.i.i324, label %sqlite3VdbeAddOp2.exit323.sink.split, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %.not23.i.i325 = icmp eq i32 %i.sl, 0
  %i.sm = shl nsw i32 %i.sl, 1
  %spec.select.i.i326 = select i1 %.not23.i.i325, i32 42, i32 %i.sm ; 4 uses
  %i.sn = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 42 ; 2 uses
  %i.sp = load i8, ptr %i.so, align 2, !tbaa !129
  %i.sq = icmp eq i8 %i.sp, 0
  br i1 %i.sq, label %bb.dh, label %resizeOpArray.exit.i.i327

bb.dh:                                            ; preds = %bb.dg
  %i.sr = mul i32 %spec.select.i.i326, 24
  %i.ss = load ptr, ptr %i.qq, align 8, !tbaa !136
  %i.st = call ptr @sqlite3_realloc(ptr noundef %i.ss, i32 noundef %i.sr) ; 3 uses
  %.not.i.i.i.i332 = icmp eq ptr %i.st, null
  br i1 %.not.i.i.i.i332, label %bb.di, label %sqlite3DbRealloc.exit.i.i.i333

bb.di:                                            ; preds = %bb.dh
  store i8 1, ptr %i.so, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i327

sqlite3DbRealloc.exit.i.i.i333:                   ; preds = %bb.dh
  store i32 %spec.select.i.i326, ptr %i.qp, align 4, !tbaa !147
  store ptr %i.st, ptr %i.qq, align 8, !tbaa !136
  %i.su = icmp sgt i32 %spec.select.i.i326, %i.sl
  br i1 %i.su, label %bb.dj, label %resizeOpArray.exit.i.i327

bb.dj:                                            ; preds = %sqlite3DbRealloc.exit.i.i.i333
  %i.sv = sext i32 %i.sl to i64
  %i.sw = getelementptr inbounds [24 x i8], ptr %i.st, i64 %i.sv
  %i.sx = sub nsw i32 %spec.select.i.i326, %i.sl
  %i.sy = zext nneg i32 %i.sx to i64
  %i.sz = mul nuw nsw i64 %i.sy, 24
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.sw, i8 0, i64 %i.sz, i1 false)
  br label %resizeOpArray.exit.i.i327

resizeOpArray.exit.i.i327:                        ; preds = %bb.dj, %sqlite3DbRealloc.exit.i.i.i333, %bb.di, %bb.dg
  %i.ta = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 42
  %i.tc = load i8, ptr %i.tb, align 2, !tbaa !129
  %.not24.i.i328 = icmp eq i8 %i.tc, 0
  br i1 %.not24.i.i328, label %sqlite3VdbeAddOp2.exit323.sink.split.sink.split, label %sqlite3VdbeAddOp2.exit323

sqlite3VdbeAddOp2.exit323.sink.split.sink.split:  ; preds = %resizeOpArray.exit.i.i327, %resizeOpArray.exit.i.i316
  %.sink619.ph = phi i32 [ %i.rq, %resizeOpArray.exit.i.i316 ], [ %i.sk, %resizeOpArray.exit.i.i327 ]
  %.sink613.ph = phi i32 [ %3, %resizeOpArray.exit.i.i316 ], [ %i.sj, %resizeOpArray.exit.i.i327 ]
  %.pre.i.i331 = load i32, ptr %i.qo, align 8, !tbaa !135
  br label %sqlite3VdbeAddOp2.exit323.sink.split

sqlite3VdbeAddOp2.exit323.sink.split:             ; preds = %sqlite3VdbeAddOp2.exit323.sink.split.sink.split, %bb.df, %bb.da
  %.sink621 = phi i32 [ %i.rq, %bb.da ], [ %i.sk, %bb.df ], [ %.pre.i.i331, %sqlite3VdbeAddOp2.exit323.sink.split.sink.split ]
  %.sink619 = phi i32 [ %i.rq, %bb.da ], [ %i.sk, %bb.df ], [ %.sink619.ph, %sqlite3VdbeAddOp2.exit323.sink.split.sink.split ]
  %.sink613 = phi i32 [ %3, %bb.da ], [ %i.sj, %bb.df ], [ %.sink613.ph, %sqlite3VdbeAddOp2.exit323.sink.split.sink.split ]
  %i.td = add nsw i32 %.sink621, 1
  store i32 %i.td, ptr %i.qo, align 8, !tbaa !135
  %i.te = load ptr, ptr %i.qq, align 8, !tbaa !136
  %i.tf = sext i32 %.sink619 to i64
  %i.tg = getelementptr inbounds [24 x i8], ptr %i.te, i64 %i.tf ; 6 uses
  store i8 7, ptr %i.tg, align 8, !tbaa !137
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 4
  store i32 %.sink613, ptr %i.th, align 4, !tbaa !141
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  %i.tj = trunc i64 %indvars.iv474 to i32
  %i.tk = add i32 %.0.i312, %i.tj
  store i32 %i.tk, ptr %i.ti, align 8, !tbaa !140
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tg, i64 12
  store i32 0, ptr %i.tl, align 4, !tbaa !190
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tg, i64 16
  store ptr null, ptr %i.tm, align 8, !tbaa !37
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tg, i64 1
  store i8 0, ptr %i.tn, align 1, !tbaa !191
  store i8 0, ptr %i.qr, align 1, !tbaa !104
  br label %sqlite3VdbeAddOp2.exit323

sqlite3VdbeAddOp2.exit323:                        ; preds = %sqlite3VdbeAddOp2.exit323.sink.split, %resizeOpArray.exit.i.i327, %resizeOpArray.exit.i.i316
  %indvars.iv.next475 = add nuw nsw i64 %indvars.iv474, 1 ; 3 uses
  %i.to = load i32, ptr %i.qz, align 8, !tbaa !269
  %i.tp = sext i32 %i.to to i64
  %i.tq = icmp slt i64 %indvars.iv.next475, %i.tp
  br i1 %i.tq, label %bb.cz, label %._crit_edge456.loopexit, !llvm.loop !1871

._crit_edge456.loopexit:                          ; preds = %sqlite3VdbeAddOp2.exit323
  %i.tr = trunc nuw nsw i64 %indvars.iv.next475 to i32
  br label %._crit_edge456

._crit_edge456:                                   ; preds = %._crit_edge456.loopexit, %sqlite3GetTempRange.exit
  %.1.lcssa = phi i32 [ 0, %sqlite3GetTempRange.exit ], [ %i.tr, %._crit_edge456.loopexit ]
  %i.ts = add nsw i32 %.1.lcssa, %.0.i312
  %i.tt = load i32, ptr %i.qo, align 8, !tbaa !135 ; 3 uses
  %i.tu = load i32, ptr %i.qp, align 4, !tbaa !147 ; 6 uses
end_hunk_14
begin_hunk_15_@xferOptimization:bb.a
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1201
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1205
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !1311
  %.not207 = icmp eq i8 %i.ae, 107
  br i1 %.not207, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !87
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !81
  %i.ai = tail call fastcc ptr @sqlite3LocateTable(ptr noundef %0, i32 noundef 0, ptr noundef %i.ag, ptr noundef %i.ah) ; 12 uses
  %i.aj = icmp eq ptr %i.ai, null
  %i.ak = icmp eq ptr %i.ai, %1
  %or.cond226 = or i1 %i.aj, %i.ak
  br i1 %or.cond226, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 105
  %i.am = load i8, ptr %i.al, align 1, !tbaa !366
  %.not208 = icmp eq i8 %i.am, 0
  br i1 %.not208, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !365
  %.not209 = icmp eq ptr %i.ao, null
  br i1 %.not209, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !254 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !254
  %.not210 = icmp eq i32 %i.aq, %i.as
  br i1 %.not210, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !1394
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !1394
  %.not211 = icmp eq i32 %i.au, %i.aw
  br i1 %.not211, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.s
  %i.ax = icmp sgt i32 %i.aq, 0
  br i1 %i.ax, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !261
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !261
  %wide.trip.count = zext nneg i32 %i.aq to i64
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %bb.x
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.x ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [40 x i8], ptr %i.az, i64 %indvars.iv ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 34
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !1310
  %i.bf = getelementptr inbounds nuw [40 x i8], ptr %i.bb, i64 %indvars.iv ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 34
  %i.bh = load i8, ptr %i.bg, align 2, !tbaa !1310
  %.not222 = icmp eq i8 %i.be, %i.bh
  br i1 %.not222, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !400
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !400
  %i.bm = tail call fastcc i32 @xferCompatibleCollation(ptr noundef %i.bj, ptr noundef %i.bl)
  %.not223 = icmp eq i32 %i.bm, 0
  br i1 %.not223, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !1315
  %.not224 = icmp eq i8 %i.bo, 0
  br i1 %.not224, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !1315
  %.not225 = icmp eq i8 %i.bq, 0
  br i1 %.not225, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.t, !llvm.loop !1876

._crit_edge:                                      ; preds = %bb.x, %.preheader
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %.0188261 = load ptr, ptr %i.br, align 8, !tbaa !268 ; 2 uses
  %.not212262 = icmp eq ptr %.0188261, null
  br i1 %.not212262, label %._crit_edge267, label %.lr.ph266

.lr.ph266:                                        ; preds = %._crit_edge
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %.0186255 = load ptr, ptr %i.bs, align 8, !tbaa !268 ; 2 uses
  %cond256 = icmp eq ptr %.0186255, null
  br i1 %cond256, label %.loopexit, label %.lr.ph259

.lr.ph259:                                        ; preds = %.lr.ph266, %bb.aa
  %.0188264 = phi ptr [ %.0188, %bb.aa ], [ %.0188261, %.lr.ph266 ] ; 3 uses
  %.0185263 = phi i32 [ %spec.select, %bb.aa ], [ 0, %.lr.ph266 ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.0188264, i64 44
  %i.bu = load i8, ptr %i.bt, align 4, !tbaa !1075
  %.not219 = icmp eq i8 %i.bu, 0
  %spec.select = select i1 %.not219, i32 %.0185263, i32 1 ; 2 uses
  br label %bb.z

bb.y:                                             ; preds = %bb.z
  %i.bv = getelementptr inbounds nuw i8, ptr %.0186257, i64 56
  %.0186 = load ptr, ptr %i.bv, align 8, !tbaa !268 ; 2 uses
  %cond = icmp eq ptr %.0186, null
  br i1 %cond, label %.loopexit, label %bb.z, !llvm.loop !1877

bb.z:                                             ; preds = %.lr.ph259, %bb.y
  %.0186257 = phi ptr [ %.0186255, %.lr.ph259 ], [ %.0186, %bb.y ] ; 2 uses
  %i.bw = tail call fastcc i32 @xferCompatibleIndex(ptr noundef %.0188264, ptr noundef %.0186257)
  %.not221 = icmp eq i32 %i.bw, 0
  br i1 %.not221, label %bb.y, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bx = getelementptr inbounds nuw i8, ptr %.0188264, i64 56
  %.0188 = load ptr, ptr %i.bx, align 8, !tbaa !268 ; 2 uses
  %.not212 = icmp eq ptr %.0188, null
  br i1 %.not212, label %._crit_edge267, label %.lr.ph259, !llvm.loop !1878

._crit_edge267:                                   ; preds = %bb.aa, %._crit_edge
  %.0185.lcssa = phi i32 [ 0, %._crit_edge ], [ %spec.select, %bb.aa ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !404 ; 2 uses
  %.not213 = icmp eq ptr %i.bz, null
  br i1 %.not213, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge267
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !404
  %i.cc = tail call fastcc i32 @sqlite3ExprCompare(ptr noundef %i.cb, ptr noundef nonnull %i.bz)
  %.not214 = icmp eq i32 %i.cc, 0
  br i1 %.not214, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge267
  %i.cd = load ptr, ptr %0, align 8, !tbaa !244   ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ai, i64 144
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !277 ; 2 uses
  %.not.i = icmp eq ptr %i.cf, null
  br i1 %.not.i, label %sqlite3SchemaToIndex.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ac
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !278 ; 3 uses
  %i.ci = icmp sgt i32 %i.ch, 0
  br i1 %i.ci, label %.lr.ph.i, label %sqlite3SchemaToIndex.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !235
  %wide.trip.count.i = zext nneg i32 %i.ch to i64
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ae, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ae ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [48 x i8], ptr %i.ck, i64 %indvars.iv.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !236
  %i.co = icmp eq ptr %i.cn, %i.cf
  br i1 %i.co, label %.loopexit.loopexit.split.loop.exit13.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %sqlite3SchemaToIndex.exit, label %bb.ad, !llvm.loop !279

.loopexit.loopexit.split.loop.exit13.i:           ; preds = %bb.ad
  %i.cp = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %sqlite3SchemaToIndex.exit

sqlite3SchemaToIndex.exit:                        ; preds = %bb.ae, %bb.ac, %.preheader.i, %.loopexit.loopexit.split.loop.exit13.i
  %.1.i = phi i32 [ -1000000, %bb.ac ], [ 0, %.preheader.i ], [ %i.cp, %.loopexit.loopexit.split.loop.exit13.i ], [ %i.ch, %bb.ae ] ; 3 uses
  %i.cq = tail call fastcc ptr @sqlite3GetVdbe(ptr noundef nonnull %0) ; 40 uses
  tail call fastcc void @sqlite3CodeVerifySchema(ptr noundef nonnull %0, i32 noundef %.1.i)
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !1298 ; 14 uses
  %i.ct = add nsw i32 %i.cs, 1                    ; 10 uses
  %i.cu = add nsw i32 %i.cs, 2
  store i32 %i.cu, ptr %i.cr, align 4, !tbaa !1298
  %i.cv = tail call fastcc i32 @autoIncBegin(ptr noundef nonnull %0, i32 noundef %4, ptr noundef %1) ; 2 uses
  tail call fastcc void @sqlite3OpenTable(ptr noundef nonnull %0, i32 noundef %i.ct, i32 noundef %4, ptr noundef nonnull %1, i32 noundef 8)
  %i.cw = load i32, ptr %i.at, align 8, !tbaa !1394
  %i.cx = icmp slt i32 %i.cw, 0
  br i1 %i.cx, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %sqlite3SchemaToIndex.exit
  %i.cy = load ptr, ptr %i.br, align 8, !tbaa !386
  %i.cz = icmp ne ptr %i.cy, null
  %5 = icmp ne i32 %.0185.lcssa, 0
  %or.cond3 = select i1 %i.cz, i1 true, i1 %5
  br i1 %or.cond3, label %bb.ah, label %sqlite3VdbeJumpHere.exit

bb.ag:                                            ; preds = %sqlite3SchemaToIndex.exit
  %.old2.not = icmp eq i32 %.0185.lcssa, 0
  br i1 %.old2.not, label %sqlite3VdbeJumpHere.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.da = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %i.cq, i32 noundef 115, i32 noundef %i.ct, i32 noundef 0) ; 3 uses
  %i.db = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %i.cq, i32 noundef 90, i32 noundef 0, i32 noundef 0) ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !135 ; 2 uses
  %i.de = icmp ne ptr %i.cq, null
  %i.df = icmp sgt i32 %i.da, -1
  %or.cond.i.i = and i1 %i.de, %i.df
  %i.dg = icmp sgt i32 %i.dd, %i.da
  %or.cond.i = select i1 %or.cond.i.i, i1 %i.dg, i1 false
  br i1 %or.cond.i, label %bb.ai, label %sqlite3VdbeJumpHere.exit

bb.ai:                                            ; preds = %bb.ah
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !136 ; 2 uses
  %.not.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i, label %sqlite3VdbeJumpHere.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dj = zext nneg i32 %i.da to i64
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.di, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i32 %i.dd, ptr %i.dl, align 8, !tbaa !140
  br label %sqlite3VdbeJumpHere.exit

sqlite3VdbeJumpHere.exit:                         ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.0192 = phi i32 [ 0, %bb.ag ], [ 0, %bb.af ], [ %i.db, %bb.ah ], [ %i.db, %bb.ai ], [ %i.db, %bb.aj ] ; 4 uses
  tail call fastcc void @sqlite3OpenTable(ptr noundef nonnull %0, i32 noundef %i.cs, i32 noundef %.1.i, ptr noundef nonnull %i.ai, i32 noundef 12)
  %i.dm = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %i.cq, i32 noundef 115, i32 noundef %i.cs, i32 noundef 0) ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 7 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !1483 ; 3 uses
  %.not.i227 = icmp eq i8 %i.do, 0
  br i1 %.not.i227, label %sqlite3GetTempReg.exit.thread, label %sqlite3GetTempReg.exit

sqlite3GetTempReg.exit.thread:                    ; preds = %sqlite3VdbeJumpHere.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !1297
  %i.dr = add nsw i32 %i.dq, 1                    ; 2 uses
  store i32 %i.dr, ptr %i.dp, align 8, !tbaa !1297
  br label %bb.al

sqlite3GetTempReg.exit:                           ; preds = %sqlite3VdbeJumpHere.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dt = add i8 %i.do, -1                        ; 3 uses
  store i8 %i.dt, ptr %i.dn, align 1, !tbaa !1483
  %i.du = zext i8 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !4  ; 2 uses
  %.not.i228 = icmp eq i8 %i.dt, 0
  br i1 %.not.i228, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %sqlite3GetTempReg.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dy = add i8 %i.do, -2                        ; 2 uses
  store i8 %i.dy, ptr %i.dn, align 1, !tbaa !1483
  %i.dz = zext i8 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !4
  br label %sqlite3GetTempReg.exit230

bb.al:                                            ; preds = %sqlite3GetTempReg.exit.thread, %sqlite3GetTempReg.exit
  %.0.i316 = phi i32 [ %i.dr, %sqlite3GetTempReg.exit.thread ], [ %i.dw, %sqlite3GetTempReg.exit ]
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !1297
  %i.ee = add nsw i32 %i.ed, 1                    ; 2 uses
  store i32 %i.ee, ptr %i.ec, align 8, !tbaa !1297
  br label %sqlite3GetTempReg.exit230

sqlite3GetTempReg.exit230:                        ; preds = %bb.ak, %bb.al
  %.0.i315 = phi i32 [ %i.dw, %bb.ak ], [ %.0.i316, %bb.al ] ; 6 uses
  %.0.i229 = phi i32 [ %i.eb, %bb.ak ], [ %i.ee, %bb.al ] ; 8 uses
  %i.ef = load i32, ptr %i.at, align 8, !tbaa !1394
  %i.eg = icmp sgt i32 %i.ef, -1
  br i1 %i.eg, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %sqlite3GetTempReg.exit230
  %i.eh = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %i.cq, i32 noundef 38, i32 noundef %i.cs, i32 noundef %.0.i229)
  %i.ei = tail call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef %i.cq, i32 noundef 44, i32 noundef %i.ct, i32 noundef 0, i32 noundef %.0.i229) ; 3 uses
  %i.ej = tail call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef %i.cq, i32 noundef 37, i32 noundef 19, i32 noundef %spec.store.select, i32 noundef 0, ptr noundef nonnull @.str.420, i32 noundef -2) ; 0 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !135 ; 2 uses
  %i.em = icmp ne ptr %i.cq, null
  %i.en = icmp sgt i32 %i.ei, -1
  %or.cond.i.i231 = and i1 %i.em, %i.en
  %i.eo = icmp sgt i32 %i.el, %i.ei
  %or.cond.i232 = select i1 %or.cond.i.i231, i1 %i.eo, i1 false
  br i1 %or.cond.i232, label %bb.an, label %sqlite3VdbeJumpHere.exit234

bb.an:                                            ; preds = %bb.am
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !136 ; 2 uses
  %.not.i.i233 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i233, label %sqlite3VdbeJumpHere.exit234, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.er = zext nneg i32 %i.ei to i64
  %i.es = getelementptr inbounds nuw [24 x i8], ptr %i.eq, i64 %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store i32 %i.el, ptr %i.et, align 8, !tbaa !140
  br label %sqlite3VdbeJumpHere.exit234

sqlite3VdbeJumpHere.exit234:                      ; preds = %bb.am, %bb.an, %bb.ao
  tail call fastcc void @autoIncStep(ptr noundef nonnull %0, i32 noundef %i.cv, i32 noundef %.0.i229)
  br label %bb.as

bb.ap:                                            ; preds = %sqlite3GetTempReg.exit230
  %i.eu = load ptr, ptr %i.br, align 8, !tbaa !386
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ew = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %i.cq, i32 noundef 24, i32 noundef %i.ct, i32 noundef %.0.i229)
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.ex = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %i.cq, i32 noundef 38, i32 noundef %i.cs, i32 noundef %.0.i229)
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar, %sqlite3VdbeJumpHere.exit234
  %.0191 = phi i32 [ %i.eh, %sqlite3VdbeJumpHere.exit234 ], [ %i.ew, %bb.aq ], [ %i.ex, %bb.ar ]
  %i.ey = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %i.cq, i32 noundef 42, i32 noundef %i.cs, i32 noundef %.0.i315) ; 0 uses
  %i.ez = tail call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef %i.cq, i32 noundef 104, i32 noundef %i.ct, i32 noundef %.0.i315, i32 noundef %.0.i229) ; 0 uses
  %.not.i235 = icmp eq ptr %i.cq, null
  br i1 %.not.i235, label %sqlite3VdbeChangeP5.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fa = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !136 ; 2 uses
  %.not5.i = icmp eq ptr %i.fb, null
  br i1 %.not5.i, label %sqlite3VdbeChangeP5.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fc = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !135
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr [24 x i8], ptr %i.fb, i64 %i.fe
  %i.fg = getelementptr i8, ptr %i.ff, i64 -21
  store i8 11, ptr %i.fg, align 1, !tbaa !139
  br label %sqlite3VdbeChangeP5.exit

sqlite3VdbeChangeP5.exit:                         ; preds = %bb.as, %bb.at, %bb.au
  %i.fh = load ptr, ptr %1, align 8, !tbaa !402
  tail call fastcc void @sqlite3VdbeChangeP4(ptr noundef %i.cq, i32 noundef -1, ptr noundef %i.fh, i32 noundef 0)
  %i.fi = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %i.cq, i32 noundef 102, i32 noundef %i.cs, i32 noundef %.0191) ; 0 uses
  %i.fj = getelementptr i8, ptr %1, i64 104
  %.val = load i8, ptr %i.fj, align 8, !tbaa !1414
  tail call fastcc void @autoIncEnd(ptr noundef nonnull %0, i32 noundef %4, i8 %.val, i32 noundef %i.cv)
  %.1189277 = load ptr, ptr %i.br, align 8, !tbaa !268 ; 2 uses
  %.not215278 = icmp eq ptr %.1189277, null
  br i1 %.not215278, label %sqlite3VdbeChangeP5.exit.._crit_edge281_crit_edge, label %.lr.ph280

sqlite3VdbeChangeP5.exit.._crit_edge281_crit_edge: ; preds = %sqlite3VdbeChangeP5.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !135
  br label %._crit_edge281

.lr.ph280:                                        ; preds = %sqlite3VdbeChangeP5.exit
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.fl = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.fm = icmp ne ptr %i.cq, null
  %i.fn = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph280, %sqlite3VdbeJumpHere.exit239
  %.1189279 = phi ptr [ %.1189277, %.lr.ph280 ], [ %.1189, %sqlite3VdbeJumpHere.exit239 ] ; 4 uses
  %.1187268 = load ptr, ptr %i.fk, align 8, !tbaa !268 ; 2 uses
  %.not217269 = icmp eq ptr %.1187268, null
  br i1 %.not217269, label %._crit_edge273, label %.lr.ph272

.lr.ph272:                                        ; preds = %bb.av, %bb.aw
  %.1187270 = phi ptr [ %.1187, %bb.aw ], [ %.1187268, %bb.av ] ; 3 uses
  %i.fo = tail call fastcc i32 @xferCompatibleIndex(ptr noundef %.1189279, ptr noundef %.1187270)
  %.not218 = icmp eq i32 %i.fo, 0
  br i1 %.not218, label %bb.aw, label %._crit_edge273

bb.aw:                                            ; preds = %.lr.ph272
  %i.fp = getelementptr inbounds nuw i8, ptr %.1187270, i64 56
  %.1187 = load ptr, ptr %i.fp, align 8, !tbaa !268 ; 2 uses
  %.not217 = icmp eq ptr %.1187, null
  br i1 %.not217, label %._crit_edge273, label %.lr.ph272, !llvm.loop !1879

._crit_edge273:                                   ; preds = %bb.aw, %.lr.ph272, %bb.av
  %.1187.lcssa = phi ptr [ null, %bb.av ], [ %.1187270, %.lr.ph272 ], [ null, %bb.aw ] ; 2 uses
  %i.fq = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %i.cq, i32 noundef 31, i32 noundef %i.cs, i32 noundef 0) ; 0 uses
  %i.fr = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %i.cq, i32 noundef 31, i32 noundef %i.ct, i32 noundef 0) ; 0 uses
  %i.fs = tail call fastcc ptr @sqlite3IndexKeyinfo(ptr noundef nonnull %0, ptr noundef %.1187.lcssa)
  %i.ft = getelementptr inbounds nuw i8, ptr %.1187.lcssa, i64 40
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !1065
  %i.fv = tail call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef %i.cq, i32 noundef 12, i32 noundef %i.cs, i32 noundef %i.fu, i32 noundef %.1.i, ptr noundef %i.fs, i32 noundef -9) ; 0 uses
  %i.fw = tail call fastcc ptr @sqlite3IndexKeyinfo(ptr noundef nonnull %0, ptr noundef nonnull %.1189279)
  %i.fx = getelementptr inbounds nuw i8, ptr %.1189279, i64 40
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !1065
  %i.fz = tail call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef %i.cq, i32 noundef 8, i32 noundef %i.ct, i32 noundef %i.fy, i32 noundef %4, ptr noundef %i.fw, i32 noundef -9) ; 0 uses
end_hunk_15
