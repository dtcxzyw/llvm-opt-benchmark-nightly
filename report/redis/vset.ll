inline.NumInlined: 130
inline.NumDeleted: 15
begin_hunk_0_@exprParseOperatorOrLiteral
define dso_local noundef ptr @exprParseOperatorOrLiteral(ptr noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @RedisModule_Alloc, align 8, !tbaa !13
  %i.b = tail call ptr %i.a(i64 noundef 40) #22, !inline_history !39 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store i32 5, ptr %i.d, align 4, !tbaa !15
  store i32 1, ptr %i.b, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31   ; 7 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !18    ; 2 uses
  %.not42 = icmp eq i8 %i.g, 0
  br i1 %.not42, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = tail call ptr @__ctype_b_loc() #24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !34
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge2
  %i.j = phi i8 [ %i.g, %.lr.ph ], [ %i.r, %.critedge2 ] ; 2 uses
  %i.k = phi ptr [ %i.f, %.lr.ph ], [ %i.q, %.critedge2 ] ; 2 uses
  %i.l = sext i8 %i.j to i64
  %i.m = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2, !tbaa !36
  %i.o = and i16 %i.n, 1024
  %.not36 = icmp eq i16 %i.o, 0
  br i1 %.not36, label %bb.c, label %.critedge2

bb.c:                                             ; preds = %bb.b
  %i.p = sext i8 %i.j to i32
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.23, i32 %i.p, i64 14)
  %.not37 = icmp eq ptr %memchr, null
  br i1 %.not37, label %.critedge, label %.critedge2

.critedge2:                                       ; preds = %bb.b, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 4 uses
  store ptr %i.q, ptr %i.e, align 8, !tbaa !31
  %i.r = load i8, ptr %i.q, align 1, !tbaa !18    ; 2 uses
  %.not = icmp eq i8 %i.r, 0
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !40

.critedge:                                        ; preds = %bb.c, %.critedge2, %bb.a
  %.lcssa = phi ptr [ %i.f, %bb.a ], [ %i.q, %.critedge2 ], [ %i.k, %bb.c ]
  %i.s = ptrtoint ptr %.lcssa to i64
  %i.t = ptrtoint ptr %i.f to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = trunc i64 %i.u to i32                    ; 2 uses
  %i.w = icmp eq i32 %i.v, 4
  br i1 %i.w, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.critedge
  %i.x = load i32, ptr %i.f, align 1
  %i.y = icmp ne i32 1819047278, %i.x
  %i.z = zext i1 %i.y to i32
  %.not38 = icmp eq i32 %i.z, 0
  br i1 %.not38, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 6, ptr %i.d, align 4, !tbaa !15
  br label %bb.l

bb.f:                                             ; preds = %bb.d, %.critedge
  %i.aa = load ptr, ptr @ExprOptable, align 16, !tbaa !41 ; 2 uses
  %.not3945 = icmp eq ptr %i.aa, null
  br i1 %.not3945, label %._crit_edge.thread, label %.lr.ph48

.lr.ph48:                                         ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph48, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph48 ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.ac = phi ptr [ %i.aa, %.lr.ph48 ], [ %i.an, %bb.j ]
  %.03146 = phi i32 [ 0, %.lr.ph48 ], [ %.1, %bb.j ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr @ExprOptable, i64 %indvars.iv ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !43 ; 3 uses
  %i.ag = icmp sgt i32 %i.af, %i.v
  br i1 %i.ag, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = sext i32 %i.af to i64
  %bcmp40 = tail call i32 @bcmp(ptr nonnull %i.ac, ptr nonnull %i.f, i64 %i.ah)
  %.not41 = icmp eq i32 %bcmp40, 0
  %i.ai = icmp sgt i32 %i.af, %.03146
  %or.cond = select i1 %.not41, i1 %i.ai, i1 false
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !44
  store i32 %i.ak, ptr %i.ab, align 8, !tbaa !18
  %i.al = load i32, ptr %i.ae, align 8, !tbaa !43
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.1 = phi i32 [ %.03146, %bb.g ], [ %.03146, %bb.h ], [ %i.al, %bb.i ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr @ExprOptable, i64 %indvars.iv.next
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !41 ; 2 uses
  %.not39 = icmp eq ptr %i.an, null
  br i1 %.not39, label %._crit_edge, label %bb.g, !llvm.loop !45

._crit_edge:                                      ; preds = %bb.j
  %i.ao = icmp eq i32 %.1, 0
  br i1 %i.ao, label %._crit_edge.thread, label %bb.k

._crit_edge.thread:                               ; preds = %bb.f, %._crit_edge
  tail call void @exprTokenRelease(ptr noundef nonnull %i.b)
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.ap = sext i32 %.1 to i64
  %i.aq = getelementptr inbounds i8, ptr %i.f, i64 %i.ap
  store ptr %i.aq, ptr %i.e, align 8, !tbaa !31
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.thread, %bb.e
  %.032 = phi ptr [ null, %._crit_edge.thread ], [ %i.b, %bb.k ], [ %i.b, %bb.e ]
  ret ptr %.032
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @exprParseSelector(ptr noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @RedisModule_Alloc, align 8, !tbaa !13
  %i.b = tail call ptr %i.a(i64 noundef 40) #22, !inline_history !39 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 4, ptr %i.d, align 4, !tbaa !15
  store i32 1, ptr %i.b, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 6 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !31
  %i.h = load i8, ptr %i.g, align 1, !tbaa !18    ; 2 uses
  %.not13 = icmp eq i8 %i.h, 0
  br i1 %.not13, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = tail call ptr @__ctype_b_loc() #24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %memchr.success.i
  %i.k = phi i8 [ %i.h, %.lr.ph ], [ %i.q, %memchr.success.i ] ; 2 uses
  %storemerge14 = phi ptr [ %i.g, %.lr.ph ], [ %i.p, %memchr.success.i ] ; 2 uses
  %i.l = sext i8 %i.k to i64
  %i.m = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2, !tbaa !36
  %i.o = and i16 %i.n, 3072
  %or.cond.i = icmp eq i16 %i.o, 0
  br i1 %or.cond.i, label %bb.c, label %memchr.success.i

bb.c:                                             ; preds = %bb.b
  switch i8 %i.k, label %.critedge [
    i8 95, label %memchr.success.i
    i8 45, label %memchr.success.i
  ]

memchr.success.i:                                 ; preds = %bb.c, %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %storemerge14, i64 1 ; 4 uses
  store ptr %i.p, ptr %i.e, align 8, !tbaa !31
  %i.q = load i8, ptr %i.p, align 1, !tbaa !18    ; 2 uses
  %.not = icmp eq i8 %i.q, 0
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !46

.critedge:                                        ; preds = %memchr.success.i, %bb.c, %bb.a
  %storemerge.lcssa = phi ptr [ %i.g, %bb.a ], [ %storemerge14, %bb.c ], [ %i.p, %memchr.success.i ]
  %i.r = ptrtoint ptr %storemerge.lcssa to i64
  %i.s = ptrtoint ptr %i.g to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.g, ptr %i.u, align 8, !tbaa !18
  %sext = shl i64 %i.t, 32
  %i.v = ashr exact i64 %sext, 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.v, ptr %i.w, align 8, !tbaa !18
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @exprParseNumber(ptr noundef captures(none) %0) local_unnamed_addr #0 {
.peel.begin:
  %i.a = alloca [256 x i8], align 16              ; 7 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = load ptr, ptr @RedisModule_Alloc, align 8, !tbaa !13
  %i.d = tail call ptr %i.c(i64 noundef 40) #22, !inline_history !39 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 1, ptr %i.f, align 4, !tbaa !15
  store i32 1, ptr %i.d, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.g = tail call ptr @__ctype_b_loc() #24       ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.promoted = load ptr, ptr %i.h, align 8, !tbaa !31 ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.j = load i8, ptr %.promoted, align 1, !tbaa !18 ; 3 uses
  %i.k = sext i8 %i.j to i64
  %i.l = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !36
  %.fr23.peel = freeze i16 %i.m
  %i.n = and i16 %.fr23.peel, 2048
  %.not.not.peel = icmp eq i16 %i.n, 0
  br i1 %.not.not.peel, label %switch.early.test.peel, label %.critedge.thread.peel

switch.early.test.peel:                           ; preds = %.peel.begin
  switch i8 %i.j, label %.critedge2 [
    i8 101, label %.critedge.thread.peel
    i8 69, label %.critedge.thread.peel
    i8 46, label %.critedge.thread.peel
    i8 45, label %.critedge.thread.peel
  ]

.critedge.thread.peel:                            ; preds = %switch.early.test.peel, %switch.early.test.peel, %switch.early.test.peel, %switch.early.test.peel, %.peel.begin
  store i8 %i.j, ptr %i.a, align 16, !tbaa !18
  br label %bb.a

bb.a:                                             ; preds = %.critedge.thread.1, %.critedge.thread.peel
  %indvars.iv = phi i64 [ 1, %.critedge.thread.peel ], [ %indvars.iv.next.1, %.critedge.thread.1 ] ; 5 uses
  %.promoted.pn = phi ptr [ %.promoted, %.critedge.thread.peel ], [ %i.w, %.critedge.thread.1 ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.promoted.pn, i64 1 ; 2 uses
  store ptr %i.o, ptr %i.h, align 8, !tbaa !31
  %1 = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.p = load i8, ptr %i.o, align 1, !tbaa !18    ; 3 uses
  %i.q = sext i8 %i.p to i64
  %i.r = getelementptr inbounds [2 x i8], ptr %1, i64 %i.q
  %i.s = load i16, ptr %i.r, align 2, !tbaa !36
  %.fr23 = freeze i16 %i.s
  %i.t = and i16 %.fr23, 2048
  %.not.not = icmp eq i16 %i.t, 0
  br i1 %.not.not, label %switch.early.test, label %.critedge

switch.early.test:                                ; preds = %bb.a
  switch i8 %i.p, label %.critedge2 [
    i8 101, label %.critedge
    i8 69, label %.critedge
    i8 46, label %.critedge
  ]

.critedge:                                        ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %bb.a
  %i.u = icmp samesign ugt i64 %indvars.iv, 254
  br i1 %i.u, label %.loopexit, label %.critedge.thread

.loopexit:                                        ; preds = %.critedge
  tail call void @exprTokenRelease(ptr noundef nonnull %i.d)
  br label %bb.d

.critedge.thread:                                 ; preds = %.critedge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.p, ptr %i.v, align 1, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %.promoted.pn, i64 2 ; 3 uses
  store ptr %i.w, ptr %i.h, align 8, !tbaa !31
  %2 = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.x = load i8, ptr %i.w, align 1, !tbaa !18    ; 3 uses
  %i.y = sext i8 %i.x to i64
  %i.z = getelementptr inbounds [2 x i8], ptr %2, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !36
  %.fr23.1 = freeze i16 %i.aa
  %i.ab = and i16 %.fr23.1, 2048
  %.not.not.1 = icmp eq i16 %i.ab, 0
  br i1 %.not.not.1, label %switch.early.test.1, label %.critedge.thread.1

switch.early.test.1:                              ; preds = %.critedge.thread
  switch i8 %i.x, label %.critedge2 [
    i8 101, label %.critedge.thread.1
    i8 69, label %.critedge.thread.1
    i8 46, label %.critedge.thread.1
  ]

.critedge.thread.1:                               ; preds = %.critedge.thread, %switch.early.test.1, %switch.early.test.1, %switch.early.test.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next
  store i8 %i.x, ptr %i.ac, align 1, !tbaa !18
  br label %bb.a, !llvm.loop !47

.critedge2:                                       ; preds = %switch.early.test, %switch.early.test.1, %switch.early.test.peel
  %.0.lcssa25.wide = phi i64 [ 0, %switch.early.test.peel ], [ %indvars.iv, %switch.early.test ], [ %indvars.iv.next, %switch.early.test.1 ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.lcssa25.wide
  store i8 0, ptr %i.ad, align 1, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.ae = call double @strtod(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #22
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store double %i.ae, ptr %i.af, align 8, !tbaa !18
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !49
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !18
  %.not19 = icmp eq i8 %i.ah, 0
  br i1 %.not19, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.critedge2
  call void @exprTokenRelease(ptr noundef nonnull %i.d)
  br label %bb.c

bb.c:                                             ; preds = %.critedge2, %bb.b
  %.017 = phi ptr [ null, %bb.b ], [ %i.d, %.critedge2 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.loopexit
  %.1 = phi ptr [ null, %.loopexit ], [ %.017, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret ptr %.1
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @exprParseString(ptr noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.d, ptr %i.a, align 8, !tbaa !31
  %i.e = load ptr, ptr @RedisModule_Alloc, align 8, !tbaa !13
  %i.f = tail call ptr %i.e(i64 noundef 40) #22, !inline_history !39 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 2, ptr %i.h, align 4, !tbaa !15
  store i32 1, ptr %i.f, align 8, !tbaa !17
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !18
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.k = phi ptr [ %i.o, %.backedge ], [ %i.i, %bb.a ] ; 4 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !18    ; 2 uses
  switch i8 %i.l, label %bb.d [
    i8 0, label %bb.f
    i8 92, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !18
  %.not18 = icmp eq i8 %i.n, 0
  br i1 %.not18, label %bb.d, label %.backedge

.backedge:                                        ; preds = %bb.c, %bb.d
  %.sink = phi i64 [ 1, %bb.d ], [ 2, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sink ; 2 uses
  store ptr %i.o, ptr %i.a, align 8, !tbaa !31
  br label %bb.b, !llvm.loop !50

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.p = icmp eq i8 %i.l, %i.c
  br i1 %i.p, label %bb.e, label %.backedge

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.r = ptrtoint ptr %i.k to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %i.t, ptr %i.u, align 8, !tbaa !18
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store ptr %i.w, ptr %i.a, align 8, !tbaa !31
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  tail call void @exprTokenRelease(ptr noundef nonnull %i.f)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi ptr [ %i.f, %bb.e ], [ null, %bb.f ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @exprParseTuple(ptr noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @RedisModule_Alloc, align 8, !tbaa !13
  %i.b = tail call ptr %i.a(i64 noundef 40) #22, !inline_history !39 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 3, ptr %i.d, align 4, !tbaa !15
  store i32 1, ptr %i.b, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31
  br label %bb.b

bb.b:                                             ; preds = %exprConsumeSpaces.exit48, %bb.a
  %.pn = phi ptr [ %i.h, %bb.a ], [ %i.bt, %exprConsumeSpaces.exit48 ]
  %.038 = phi i64 [ 0, %bb.a ], [ %.139, %exprConsumeSpaces.exit48 ] ; 4 uses
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 4 uses
  store ptr %storemerge, ptr %i.g, align 8, !tbaa !31
  %i.i = load i8, ptr %storemerge, align 1, !tbaa !18 ; 2 uses
  %.not4.i = icmp eq i8 %i.i, 0
  br i1 %.not4.i, label %exprConsumeSpaces.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.j = tail call ptr @__ctype_b_loc() #24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %i.l = phi i8 [ %i.i, %.lr.ph.i ], [ %i.s, %bb.d ] ; 3 uses
  %i.m = phi ptr [ %storemerge, %.lr.ph.i ], [ %i.r, %bb.d ] ; 3 uses
  %i.n = sext i8 %i.l to i64
  %i.o = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2, !tbaa !36
  %i.q = and i16 %i.p, 8192
  %.not3.i = icmp eq i16 %i.q, 0
  br i1 %.not3.i, label %exprConsumeSpaces.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 4 uses
  store ptr %i.r, ptr %i.g, align 8, !tbaa !31
  %i.s = load i8, ptr %i.r, align 1, !tbaa !18    ; 2 uses
  %.not.i = icmp eq i8 %i.s, 0
  br i1 %.not.i, label %exprConsumeSpaces.exit.thread, label %bb.c, !llvm.loop !38

exprConsumeSpaces.exit:                           ; preds = %bb.c
  %i.t = icmp eq i8 %i.l, 93
  br i1 %i.t, label %bb.e, label %exprConsumeSpaces.exit.thread

bb.e:                                             ; preds = %exprConsumeSpaces.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store ptr %i.u, ptr %i.g, align 8, !tbaa !31
  br label %.thread

exprConsumeSpaces.exit.thread:                    ; preds = %bb.d, %bb.b, %exprConsumeSpaces.exit
  %i.v = phi ptr [ %i.m, %exprConsumeSpaces.exit ], [ %storemerge, %bb.b ], [ %i.r, %bb.d ]
  %i.w = phi i8 [ %i.l, %exprConsumeSpaces.exit ], [ 0, %bb.b ], [ 0, %bb.d ]
  %i.x = load i64, ptr %i.f, align 8, !tbaa !18
  %i.y = icmp eq i64 %i.x, %.038
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %exprConsumeSpaces.exit.thread
  %i.z = icmp eq i64 %.038, 0
  %i.aa = shl i64 %.038, 1
  %i.ab = select i1 %i.z, i64 4, i64 %i.aa        ; 2 uses
  %i.ac = load ptr, ptr @RedisModule_Realloc, align 8, !tbaa !13
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ae = shl i64 %i.ab, 3
  %i.af = tail call ptr %i.ac(ptr noundef %i.ad, i64 noundef %i.ae) #22
  store ptr %i.af, ptr %i.e, align 8, !tbaa !18
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !31  ; 2 uses
  %.pre74 = load i8, ptr %.pre, align 1, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %exprConsumeSpaces.exit.thread
  %i.ag = phi i8 [ %.pre74, %bb.f ], [ %i.w, %exprConsumeSpaces.exit.thread ] ; 4 uses
  %i.ah = phi ptr [ %.pre, %bb.f ], [ %i.v, %exprConsumeSpaces.exit.thread ]
  %.139 = phi i64 [ %i.ab, %bb.f ], [ %.038, %exprConsumeSpaces.exit.thread ]
  %i.ai = tail call ptr @__ctype_b_loc() #24      ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !34
  %i.ak = sext i8 %i.ag to i64
  %i.al = getelementptr inbounds [2 x i8], ptr %i.aj, i64 %i.ak
end_hunk_0
begin_hunk_1_@jsonParseValueToken:bb.a
  br i1 %.not.i60, label %jsonSkipWhiteSpaces.exit62, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 1 ; 4 uses
  store ptr %i.cl, ptr %0, align 8, !tbaa !49
  %exitcond.not.i61 = icmp eq ptr %i.cl, %1
  br i1 %exitcond.not.i61, label %jsonSkipWhiteSpaces.exit62, label %bb.aa, !llvm.loop !67

jsonSkipWhiteSpaces.exit62:                       ; preds = %bb.aa, %bb.ab, %bb.z
  %i.cm = phi ptr [ %.promoted.i57, %bb.z ], [ %i.cl, %bb.ab ], [ %i.cf, %bb.aa ] ; 4 uses
  %.not66.i30 = icmp ult ptr %i.cm, %1
  br i1 %.not66.i30, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %jsonSkipWhiteSpaces.exit62
  tail call void @exprTokenRelease(ptr noundef nonnull %i.be), !inline_history !75
  br label %jsonParseStringToken.exit

bb.ad:                                            ; preds = %jsonSkipWhiteSpaces.exit62
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !18
  switch i8 %i.cn, label %bb.ai [
    i8 44, label %bb.ae
    i8 93, label %bb.ah
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 1 ; 3 uses
  store ptr %i.co, ptr %0, align 8, !tbaa !49
  %i.cp = icmp ult ptr %i.co, %1
  br i1 %i.cp, label %.lr.ph.i53, label %jsonSkipWhiteSpaces.exit56

.lr.ph.i53:                                       ; preds = %bb.ae
  %i.cq = tail call ptr @__ctype_b_loc() #24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !34
  br label %bb.af

bb.af:                                            ; preds = %bb.ag, %.lr.ph.i53
  %i.cs = phi ptr [ %i.co, %.lr.ph.i53 ], [ %i.cy, %bb.ag ] ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !18
  %i.cu = zext i8 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !36
  %i.cx = and i16 %i.cw, 8192
  %.not.i54 = icmp eq i16 %i.cx, 0
  br i1 %.not.i54, label %jsonSkipWhiteSpaces.exit56, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 1 ; 3 uses
  store ptr %i.cy, ptr %0, align 8, !tbaa !49
  %exitcond.not.i55 = icmp eq ptr %i.cy, %1
  br i1 %exitcond.not.i55, label %jsonSkipWhiteSpaces.exit56, label %bb.af, !llvm.loop !67

bb.ah:                                            ; preds = %bb.ad
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cm, i64 1
  store ptr %i.cz, ptr %0, align 8, !tbaa !49
  br label %jsonParseStringToken.exit

bb.ai:                                            ; preds = %bb.ad
  tail call void @exprTokenRelease(ptr noundef nonnull %i.be), !inline_history !75
  br label %jsonParseStringToken.exit

jsonSkipWhiteSpaces.exit56:                       ; preds = %bb.ag, %bb.af, %bb.ae
  %i.da = tail call fastcc ptr @jsonParseValueToken(ptr noundef nonnull %0, ptr noundef nonnull %1), !inline_history !75 ; 2 uses
  %.not63.i = icmp eq ptr %i.da, null
  br i1 %.not63.i, label %._crit_edge, label %.lr.ph

bb.aj:                                            ; preds = %bb.d
  %i.db = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 4 uses
  %i.dc = icmp ugt ptr %i.db, %1
  br i1 %i.dc, label %jsonParseStringToken.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dd = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(5) @.str.174, i64 noundef 4) #25
  %.not.i32 = icmp eq i32 %i.dd, 0
  br i1 %.not.i32, label %bb.al, label %jsonParseStringToken.exit

bb.al:                                            ; preds = %bb.ak
  %i.de = icmp ult ptr %i.db, %1
  br i1 %i.de, label %switch.early.test.i, label %bb.am

switch.early.test.i:                              ; preds = %bb.al
  %i.df = load i8, ptr %i.db, align 1, !tbaa !18  ; 2 uses
  %i.dg = tail call ptr @__ctype_b_loc() #24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !34
  %i.di = zext i8 %i.df to i64
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.di
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !36
  %.fr38.i = freeze i16 %i.dk
  %i.dl = and i16 %.fr38.i, 8192
  %.not39.i = icmp eq i16 %i.dl, 0
  br i1 %.not39.i, label %switch.early.test37.i, label %bb.am

switch.early.test37.i:                            ; preds = %switch.early.test.i
  switch i8 %i.df, label %jsonParseStringToken.exit [
    i8 125, label %bb.am
    i8 93, label %bb.am
    i8 44, label %bb.am
  ]

bb.am:                                            ; preds = %switch.early.test37.i, %switch.early.test37.i, %switch.early.test37.i, %switch.early.test.i, %bb.al
  store ptr %i.db, ptr %0, align 8, !tbaa !49
  %i.dm = load ptr, ptr @RedisModule_Alloc, align 8, !tbaa !13
  %i.dn = tail call ptr %i.dm(i64 noundef 40) #22, !inline_history !76 ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.do, i8 0, i64 32, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  store i32 1, ptr %i.dp, align 4, !tbaa !15
  store i32 1, ptr %i.dn, align 8, !tbaa !17
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store double 1.000000e+00, ptr %i.dq, align 8, !tbaa !18
  br label %jsonParseStringToken.exit

bb.an:                                            ; preds = %bb.d
  %i.dr = getelementptr inbounds nuw i8, ptr %i.m, i64 5 ; 4 uses
  %i.ds = icmp ugt ptr %i.dr, %1
  br i1 %i.ds, label %jsonParseStringToken.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dt = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(6) @.str.175, i64 noundef 5) #25
  %.not.i34 = icmp eq i32 %i.dt, 0
  br i1 %.not.i34, label %bb.ap, label %jsonParseStringToken.exit

bb.ap:                                            ; preds = %bb.ao
  %i.du = icmp ult ptr %i.dr, %1
  br i1 %i.du, label %switch.early.test.i36, label %bb.aq

switch.early.test.i36:                            ; preds = %bb.ap
  %i.dv = load i8, ptr %i.dr, align 1, !tbaa !18  ; 2 uses
  %i.dw = tail call ptr @__ctype_b_loc() #24
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !34
  %i.dy = zext i8 %i.dv to i64
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.dx, i64 %i.dy
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !36
  %.fr38.i37 = freeze i16 %i.ea
  %i.eb = and i16 %.fr38.i37, 8192
  %.not39.i38 = icmp eq i16 %i.eb, 0
  br i1 %.not39.i38, label %switch.early.test37.i39, label %bb.aq

switch.early.test37.i39:                          ; preds = %switch.early.test.i36
  switch i8 %i.dv, label %jsonParseStringToken.exit [
    i8 125, label %bb.aq
    i8 93, label %bb.aq
    i8 44, label %bb.aq
  ]

bb.aq:                                            ; preds = %switch.early.test37.i39, %switch.early.test37.i39, %switch.early.test37.i39, %switch.early.test.i36, %bb.ap
  store ptr %i.dr, ptr %0, align 8, !tbaa !49
  %i.ec = load ptr, ptr @RedisModule_Alloc, align 8, !tbaa !13
  %i.ed = tail call ptr %i.ec(i64 noundef 40) #22, !inline_history !76 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ee, i8 0, i64 32, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  store i32 1, ptr %i.ef, align 4, !tbaa !15
  store i32 1, ptr %i.ed, align 8, !tbaa !17
  br label %jsonParseStringToken.exit

bb.ar:                                            ; preds = %bb.d
  %i.eg = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 4 uses
  %i.eh = icmp ugt ptr %i.eg, %1
  br i1 %i.eh, label %jsonParseStringToken.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ei = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(5) @.str.24, i64 noundef 4) #25
  %.not.i41 = icmp eq i32 %i.ei, 0
  br i1 %.not.i41, label %bb.at, label %jsonParseStringToken.exit

bb.at:                                            ; preds = %bb.as
  %i.ej = icmp ult ptr %i.eg, %1
  br i1 %i.ej, label %switch.early.test.i43, label %bb.au

switch.early.test.i43:                            ; preds = %bb.at
  %i.ek = load i8, ptr %i.eg, align 1, !tbaa !18  ; 2 uses
  %i.el = tail call ptr @__ctype_b_loc() #24
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !34
  %i.en = zext i8 %i.ek to i64
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.em, i64 %i.en
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !36
  %.fr38.i44 = freeze i16 %i.ep
  %i.eq = and i16 %.fr38.i44, 8192
  %.not39.i45 = icmp eq i16 %i.eq, 0
  br i1 %.not39.i45, label %switch.early.test37.i46, label %bb.au

switch.early.test37.i46:                          ; preds = %switch.early.test.i43
  switch i8 %i.ek, label %jsonParseStringToken.exit [
    i8 125, label %bb.au
    i8 93, label %bb.au
    i8 44, label %bb.au
  ]

bb.au:                                            ; preds = %switch.early.test37.i46, %switch.early.test37.i46, %switch.early.test37.i46, %switch.early.test.i43, %bb.at
  store ptr %i.eg, ptr %0, align 8, !tbaa !49
  %i.er = load ptr, ptr @RedisModule_Alloc, align 8, !tbaa !13
  %i.es = tail call ptr %i.er(i64 noundef 40) #22, !inline_history !76 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.et, i8 0, i64 32, i1 false)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  store i32 6, ptr %i.eu, align 4, !tbaa !15
  store i32 1, ptr %i.es, align 8, !tbaa !17
  br label %jsonParseStringToken.exit

bb.av:                                            ; preds = %bb.d
  %i.ev = tail call ptr @__ctype_b_loc() #24      ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !34
  %i.ex = zext i8 %i.n to i64
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.ew, i64 %i.ex
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !36
  %.fr68 = freeze i16 %i.ez
  %i.fa = and i16 %.fr68, 2048
  %.not24.not = icmp eq i16 %i.fa, 0
  br i1 %.not24.not, label %switch.early.test, label %.lr.ph.i49

switch.early.test:                                ; preds = %bb.av
  switch i8 %i.n, label %jsonParseStringToken.exit [
    i8 45, label %.lr.ph.i49
    i8 43, label %.lr.ph.i49
  ]

.lr.ph.i49:                                       ; preds = %bb.av, %switch.early.test, %switch.early.test
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  br label %bb.aw

bb.aw:                                            ; preds = %jsonIsNumberChar.exit.thread.i, %.lr.ph.i49
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i49 ], [ %indvars.iv.next.i, %jsonIsNumberChar.exit.thread.i ] ; 4 uses
  %i.fb = phi ptr [ %i.m, %.lr.ph.i49 ], [ %i.fi, %jsonIsNumberChar.exit.thread.i ] ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !18  ; 3 uses
  %2 = load ptr, ptr %i.ev, align 8, !tbaa !34
  %i.fd = sext i8 %i.fc to i64
  %i.fe = getelementptr inbounds [2 x i8], ptr %2, i64 %i.fd
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !36
  %.fr13.i.i = freeze i16 %i.ff
  %i.fg = and i16 %.fr13.i.i, 2048
  %.not.i.i = icmp eq i16 %i.fg, 0
  br i1 %.not.i.i, label %switch.early.test.i.i, label %jsonIsNumberChar.exit.thread.i

switch.early.test.i.i:                            ; preds = %bb.aw
  switch i8 %i.fc, label %.critedge.i [
    i8 101, label %jsonIsNumberChar.exit.thread.i
    i8 46, label %jsonIsNumberChar.exit.thread.i
    i8 45, label %jsonIsNumberChar.exit.thread.i
    i8 43, label %jsonIsNumberChar.exit.thread.i
    i8 69, label %jsonIsNumberChar.exit.thread.i
  ]

jsonIsNumberChar.exit.thread.i:                   ; preds = %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %bb.aw
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  store i8 %i.fc, ptr %i.fh, align 1, !tbaa !18
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 1 ; 3 uses
  store ptr %i.fi, ptr %0, align 8, !tbaa !49
  %i.fj = icmp ult ptr %i.fi, %1
  %i.fk = icmp samesign ult i64 %indvars.iv.i, 254
  %or.cond.i = select i1 %i.fj, i1 %i.fk, i1 false
  br i1 %or.cond.i, label %bb.aw, label %.critedge.i, !llvm.loop !77

.critedge.i:                                      ; preds = %jsonIsNumberChar.exit.thread.i, %switch.early.test.i.i
  %.016.lcssa.ph.in.i = phi i64 [ %indvars.iv.next.i, %jsonIsNumberChar.exit.thread.i ], [ %indvars.iv.i, %switch.early.test.i.i ]
  %i.fl = and i64 %.016.lcssa.ph.in.i, 4294967295 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fl
  store i8 0, ptr %i.fm, align 1, !tbaa !18
  %i.fn = icmp eq i64 %i.fl, 0
  br i1 %i.fn, label %jsonParseNumberToken.exit, label %bb.ax

bb.ax:                                            ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.fo = call double @strtod(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #22
  %i.fp = load ptr, ptr %i.b, align 8, !tbaa !49
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !18
  %.not18.i = icmp eq i8 %i.fq, 0
  br i1 %.not18.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store ptr %i.m, ptr %0, align 8, !tbaa !49
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.fr = load ptr, ptr @RedisModule_Alloc, align 8, !tbaa !13
  %i.fs = call ptr %i.fr(i64 noundef 40) #22, !inline_history !78 ; 5 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ft, i8 0, i64 32, i1 false)
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  store i32 1, ptr %i.fu, align 4, !tbaa !15
  store i32 1, ptr %i.fs, align 8, !tbaa !17
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store double %i.fo, ptr %i.fv, align 8, !tbaa !18
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.0.i50 = phi ptr [ null, %bb.ay ], [ %i.fs, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %jsonParseNumberToken.exit

jsonParseNumberToken.exit:                        ; preds = %.critedge.i, %bb.ba
  %.1.i48 = phi ptr [ %.0.i50, %bb.ba ], [ null, %.critedge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %jsonParseStringToken.exit

jsonParseStringToken.exit:                        ; preds = %bb.f, %.outer68.outer.i, %.outer68.i, %.thread, %bb.ai, %bb.ah, %._crit_edge, %bb.ac, %bb.au, %switch.early.test37.i46, %bb.as, %bb.ar, %bb.aq, %switch.early.test37.i39, %bb.ao, %bb.an, %bb.am, %switch.early.test37.i, %bb.ak, %bb.aj, %bb.v, %bb.q, %bb.e, %switch.early.test, %bb.d, %jsonSkipWhiteSpaces.exit, %jsonParseNumberToken.exit
  %.0 = phi ptr [ null, %bb.ao ], [ %.1.i48, %jsonParseNumberToken.exit ], [ null, %bb.d ], [ null, %switch.early.test ], [ null, %bb.e ], [ null, %jsonSkipWhiteSpaces.exit ], [ %i.be, %bb.v ], [ null, %bb.ak ], [ null, %._crit_edge ], [ null, %.outer68.i ], [ %i.x, %bb.q ], [ null, %bb.ac ], [ null, %bb.as ], [ null, %switch.early.test37.i ], [ null, %bb.aj ], [ %i.dn, %bb.am ], [ null, %switch.early.test37.i39 ], [ null, %bb.an ], [ %i.ed, %bb.aq ], [ null, %switch.early.test37.i46 ], [ null, %bb.ar ], [ %i.es, %bb.au ], [ null, %.thread ], [ null, %bb.ai ], [ %i.be, %bb.ah ], [ null, %.outer68.outer.i ], [ null, %bb.f ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @exprRun(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca [256 x i8], align 16              ; 5 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca [256 x i8], align 16              ; 5 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca [256 x i8], align 16              ; 5 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca [256 x i8], align 16              ; 5 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca [256 x i8], align 16              ; 5 uses
  %i.l = alloca ptr, align 8                      ; 4 uses
  %i.m = alloca [256 x i8], align 16              ; 5 uses
  %i.n = alloca ptr, align 8                      ; 4 uses
  %i.o = alloca [256 x i8], align 16              ; 5 uses
  %i.p = alloca ptr, align 8                      ; 4 uses
  %i.q = alloca [256 x i8], align 16              ; 5 uses
  %i.r = alloca ptr, align 8                      ; 4 uses
  %i.s = alloca [256 x i8], align 16              ; 5 uses
  %i.t = alloca ptr, align 8                      ; 4 uses
  %i.u = alloca [256 x i8], align 16              ; 5 uses
  %i.v = alloca ptr, align 8                      ; 4 uses
  %i.w = alloca [256 x i8], align 16              ; 5 uses
  %i.x = alloca ptr, align 8                      ; 4 uses
  %i.y = alloca [256 x i8], align 16              ; 5 uses
  %i.z = alloca ptr, align 8                      ; 4 uses
  %i.aa = alloca [256 x i8], align 16             ; 5 uses
  %i.ab = alloca ptr, align 8                     ; 4 uses
  %i.ac = alloca [256 x i8], align 16             ; 5 uses
  %i.ad = alloca ptr, align 8                     ; 4 uses
  %i.ae = alloca [256 x i8], align 16             ; 5 uses
  %i.af = alloca ptr, align 8                     ; 4 uses
  %i.ag = alloca [256 x i8], align 16             ; 5 uses
  %i.ah = alloca ptr, align 8                     ; 4 uses
  %i.ai = alloca [256 x i8], align 16             ; 5 uses
  %i.aj = alloca ptr, align 8                     ; 4 uses
  %i.ak = alloca [256 x i8], align 16             ; 5 uses
  %i.al = alloca ptr, align 8                     ; 4 uses
  %i.am = alloca [256 x i8], align 16             ; 5 uses
  %i.an = alloca ptr, align 8                     ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 15 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !27
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.i, label %exprStackReset.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %i.as = load ptr, ptr %i.ao, align 8, !tbaa !23
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !19
  tail call void @exprTokenRelease(ptr noundef %i.au)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.av = load i32, ptr %i.ap, align 8, !tbaa !27
  %i.aw = sext i32 %i.av to i64
  %i.ax = icmp slt i64 %indvars.iv.next.i, %i.aw
  br i1 %i.ax, label %.lr.ph.i, label %exprStackReset.exit, !llvm.loop !30

exprStackReset.exit:                              ; preds = %.lr.ph.i, %bb.a
  store i32 0, ptr %i.ap, align 8, !tbaa !27
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !79
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph204, label %.thread196

.lr.ph204:                                        ; preds = %exprStackReset.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph204, %bb.de
  %i.bd = phi i32 [ 0, %.lr.ph204 ], [ %i.tw, %bb.de ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph204 ], [ %indvars.iv.next, %bb.de ] ; 2 uses
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !80
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !19 ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !15
  switch i32 %i.bi, label %bb.g [
    i32 4, label %bb.c
    i32 5, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !18 ; 2 uses
  %.not112 = icmp eq i64 %i.bk, 0
  br i1 %.not112, label %.thread196, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !18
  %i.bn = call ptr @jsonExtractField(ptr noundef %1, i64 noundef %2, ptr noundef %i.bm, i64 noundef %i.bk) ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %.thread196, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bp = load i32, ptr %i.ap, align 8, !tbaa !27 ; 3 uses
  %i.bq = load i32, ptr %i.bc, align 4, !tbaa !28
  %i.br = icmp eq i32 %i.bp, %i.bq
  %.pre.i = load ptr, ptr %i.ao, align 8, !tbaa !23 ; 2 uses
  br i1 %i.br, label %bb.f, label %exprStackPush.exit

bb.f:                                             ; preds = %bb.e
  %i.bs = shl nsw i32 %i.bp, 1                    ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = load ptr, ptr @RedisModule_Realloc, align 8, !tbaa !13
  %i.bv = shl nsw i64 %i.bt, 3
  %i.bw = call ptr %i.bu(ptr noundef %.pre.i, i64 noundef %i.bv) #22, !inline_history !55 ; 2 uses
  store ptr %i.bw, ptr %i.ao, align 8, !tbaa !23
  store i32 %i.bs, ptr %i.bc, align 4, !tbaa !28
  %.pre12.i = load i32, ptr %i.ap, align 8, !tbaa !27
  br label %exprStackPush.exit

exprStackPush.exit:                               ; preds = %bb.e, %bb.f
  %i.bx = phi i32 [ %.pre12.i, %bb.f ], [ %i.bp, %bb.e ] ; 2 uses
  %i.by = phi ptr [ %i.bw, %bb.f ], [ %.pre.i, %bb.e ]
  %i.bz = sext i32 %i.bx to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.bz
  store ptr %i.bn, ptr %i.ca, align 8, !tbaa !19
  %i.cb = add nsw i32 %i.bx, 1                    ; 2 uses
  store i32 %i.cb, ptr %i.ap, align 8, !tbaa !27
  br label %bb.de

end_hunk_1
