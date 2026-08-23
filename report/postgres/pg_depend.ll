Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/pg_depend?download=true
inline.NumInlined: 67
inline.NumDeleted: 9
begin_hunk_0_@changeDependenciesOf:bb.a
  %i.q = call ptr @systable_getnext(ptr noundef %i.e) #7 ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !14

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.p, %.lr.ph ]
  call void @systable_endscan(ptr noundef %i.e) #7
  call void @table_close(ptr noundef %i.a, i32 noundef 3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret i64 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local i64 @changeDependenciesOn(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [2 x %struct.ScanKeyData], align 16 ; 5 uses
  %4 = alloca %struct.ObjectAddress, align 4      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.a = tail call ptr @table_open(i32 noundef 2608, i32 noundef 3) #7 ; 4 uses
  store i32 %0, ptr %4, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %1, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.c, align 4
  %i.d = tail call zeroext i1 @IsPinnedObject(i32 noundef %0, i32 noundef %1) #7
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.f = tail call i32 @errcode(i32 noundef 1088) #7 ; 0 uses
  %i.g = call ptr @getObjectDescription(ptr noundef nonnull %4, i1 noundef zeroext false) #7
  %i.h = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.5, ptr noundef %i.g) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 668, ptr noundef nonnull @__func__.changeDependenciesOn) #7
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = tail call zeroext i1 @IsPinnedObject(i32 noundef %0, i32 noundef %2) #7
  %i.j = zext i32 %0 to i64
  call void @ScanKeyInit(ptr noundef nonnull %3, i16 noundef signext 4, i16 noundef zeroext 3, i32 noundef 184, i64 noundef %i.j) #7
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.l = zext i32 %1 to i64
  call void @ScanKeyInit(ptr noundef nonnull %i.k, i16 noundef signext 5, i16 noundef zeroext 3, i32 noundef 184, i64 noundef %i.l) #7
  %i.m = call ptr @systable_beginscan(ptr noundef %i.a, i32 noundef 2674, i1 noundef zeroext true, ptr noundef null, i32 noundef 2, ptr noundef nonnull %3) #7 ; 4 uses
  %i.n = call ptr @systable_getnext(ptr noundef %i.m) #7 ; 3 uses
  %.not26 = icmp eq ptr %i.n, null
  br i1 %.not26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  br i1 %i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %i.o = phi ptr [ %i.r, %.lr.ph.split.us ], [ %i.n, %.lr.ph ]
  %.027.us = phi i64 [ %i.q, %.lr.ph.split.us ], [ 0, %.lr.ph ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  call void @CatalogTupleDelete(ptr noundef %i.a, ptr noundef nonnull %i.p) #7
  %i.q = add i64 %.027.us, 1                      ; 2 uses
  %i.r = call ptr @systable_getnext(ptr noundef %i.m) #7 ; 2 uses
  %.not.us = icmp eq ptr %i.r, null
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !15

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %i.s = phi ptr [ %i.ac, %.lr.ph.split ], [ %i.n, %.lr.ph ]
  %.027 = phi i64 [ %i.ab, %.lr.ph.split ], [ 0, %.lr.ph ]
  %i.t = call ptr @heap_copytuple(ptr noundef nonnull %i.s) #7 ; 4 uses
  %i.u = getelementptr i8, ptr %i.t, i64 16
  %.val25 = load ptr, ptr %i.u, align 8           ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val25, i64 22
  %i.w = load i8, ptr %i.v, align 2
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %.val25, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i32 %2, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  call void @CatalogTupleUpdate(ptr noundef %i.a, ptr noundef nonnull %i.aa, ptr noundef %i.t) #7
  call void @heap_freetuple(ptr noundef %i.t) #7
  %i.ab = add i64 %.027, 1                        ; 2 uses
  %i.ac = call ptr @systable_getnext(ptr noundef %i.m) #7 ; 2 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !15

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.c
  %.0.lcssa = phi i64 [ 0, %bb.c ], [ %i.q, %.lr.ph.split.us ], [ %i.ab, %.lr.ph.split ]
  call void @systable_endscan(ptr noundef %i.m) #7
  call void @table_close(ptr noundef %i.a, i32 noundef 3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret i64 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local ptr @getAutoExtensionsOfObject(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [2 x %struct.ScanKeyData], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.a = tail call ptr @table_open(i32 noundef 2608, i32 noundef 1) #7 ; 2 uses
  %i.b = zext i32 %0 to i64
  call void @ScanKeyInit(ptr noundef nonnull %2, i16 noundef signext 1, i16 noundef zeroext 3, i32 noundef 184, i64 noundef %i.b) #7
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.d = zext i32 %1 to i64
  call void @ScanKeyInit(ptr noundef nonnull %i.c, i16 noundef signext 2, i16 noundef zeroext 3, i32 noundef 184, i64 noundef %i.d) #7
  %i.e = call ptr @systable_beginscan(ptr noundef %i.a, i32 noundef 2673, i1 noundef zeroext true, ptr noundef null, i32 noundef 2, ptr noundef nonnull %2) #7 ; 3 uses
  %i.f = call ptr @systable_getnext(ptr noundef %i.e) #7 ; 2 uses
  %.not12 = icmp eq ptr %i.f, null
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %i.g = phi ptr [ %i.v, %bb.d ], [ %i.f, %bb.a ]
  %.013 = phi ptr [ %.1, %bb.d ], [ null, %bb.a ] ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %.val = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 22
  %i.j = load i8, ptr %i.i, align 2
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp eq i32 %i.n, 3079
  br i1 %i.o, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.q = load i8, ptr %i.p, align 4
  %i.r = icmp eq i8 %i.q, 120
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.t = load i32, ptr %i.s, align 4
  %i.u = call ptr @lappend_oid(ptr noundef %.013, i32 noundef %i.t) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph
  %.1 = phi ptr [ %i.u, %bb.c ], [ %.013, %bb.b ], [ %.013, %.lr.ph ] ; 2 uses
  %i.v = call ptr @systable_getnext(ptr noundef %i.e) #7 ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ null, %bb.a ], [ %.1, %bb.d ]
  call void @systable_endscan(ptr noundef %i.e) #7
  call void @table_close(ptr noundef %i.a, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret ptr %.0.lcssa
}

declare ptr @lappend_oid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @getExtensionType(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [3 x %struct.ScanKeyData], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.a = tail call ptr @table_open(i32 noundef 2608, i32 noundef 1) #7 ; 2 uses
  call void @ScanKeyInit(ptr noundef nonnull %2, i16 noundef signext 4, i16 noundef zeroext 3, i32 noundef 184, i64 noundef 3079) #7
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.c = zext i32 %0 to i64
  call void @ScanKeyInit(ptr noundef nonnull %i.b, i16 noundef signext 5, i16 noundef zeroext 3, i32 noundef 184, i64 noundef %i.c) #7
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @ScanKeyInit(ptr noundef nonnull %i.d, i16 noundef signext 6, i16 noundef zeroext 3, i32 noundef 65, i64 noundef 0) #7
  %i.e = call ptr @systable_beginscan(ptr noundef %i.a, i32 noundef 2674, i1 noundef zeroext true, ptr noundef null, i32 noundef 3, ptr noundef nonnull %2) #7 ; 3 uses
  %i.f = call ptr @systable_getnext(ptr noundef %i.e) #7 ; 2 uses
  %.not32 = icmp eq ptr %i.f, null
  br i1 %.not32, label %.split._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.backedge
  %i.g = phi ptr [ %i.ac, %.backedge ], [ %i.f, %bb.a ]
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %.val24 = load ptr, ptr %i.h, align 8           ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val24, i64 22
  %i.j = load i8, ptr %i.i, align 2
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %.val24, i64 %i.k ; 3 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp eq i32 %i.m, 1247
  br i1 %i.n, label %bb.b, label %.backedge

bb.b:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.p = load i8, ptr %i.o, align 4
  %i.q = icmp eq i8 %i.p, 101
  br i1 %i.q, label %bb.c, label %.backedge

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  %i.t = zext i32 %i.s to i64
  %i.u = call ptr @SearchSysCache1(i32 noundef 90, i64 noundef %i.t) #7 ; 3 uses
  %.not22 = icmp eq ptr %i.u, null
  br i1 %.not22, label %.backedge, label %.split, !llvm.loop !17

.split:                                           ; preds = %bb.c
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %.val = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 22
  %i.x = load i8, ptr %i.w, align 2
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aa, ptr noundef nonnull dereferenceable(1) %1) #9
  %.fr = freeze i32 %i.ab
  %.not30 = icmp eq i32 %.fr, 0
  call void @ReleaseSysCache(ptr noundef nonnull %i.u) #7
  br i1 %.not30, label %.split._crit_edge, label %.backedge

.backedge:                                        ; preds = %bb.b, %.lr.ph, %bb.c, %.split
  %i.ac = call ptr @systable_getnext(ptr noundef %i.e) #7 ; 2 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %.split._crit_edge, label %.lr.ph

.split._crit_edge:                                ; preds = %.backedge, %.split, %bb.a
  %.4 = phi i32 [ 0, %bb.a ], [ 0, %.backedge ], [ %i.s, %.split ]
  call void @systable_endscan(ptr noundef %i.e) #7
  call void @table_close(ptr noundef %i.a, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret i32 %.4
}

declare ptr @SearchSysCache1(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare void @ReleaseSysCache(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @sequenceIsOwned(i32 noundef %0, i8 noundef signext %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca [2 x %struct.ScanKeyData], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.a = tail call ptr @table_open(i32 noundef 2608, i32 noundef 1) #7 ; 2 uses
  call void @ScanKeyInit(ptr noundef nonnull %4, i16 noundef signext 1, i16 noundef zeroext 3, i32 noundef 184, i64 noundef 1259) #7
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.c = zext i32 %0 to i64
  call void @ScanKeyInit(ptr noundef nonnull %i.b, i16 noundef signext 2, i16 noundef zeroext 3, i32 noundef 184, i64 noundef %i.c) #7
  %i.d = call ptr @systable_beginscan(ptr noundef %i.a, i32 noundef 2673, i1 noundef zeroext true, ptr noundef null, i32 noundef 2, ptr noundef nonnull %4) #7 ; 3 uses
  %i.e = call ptr @systable_getnext(ptr noundef %i.d) #7 ; 2 uses
  %.not20.not = icmp eq ptr %i.e, null
  br i1 %.not20.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.f = phi ptr [ %i.v, %bb.c ], [ %i.e, %bb.a ]
  %i.g = getelementptr i8, ptr %i.f, i64 16
  %.val = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 22
  %i.i = load i8, ptr %i.h, align 2
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp eq i32 %i.m, 1259
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.p = load i8, ptr %i.o, align 4
  %i.q = icmp eq i8 %i.p, %1
  br i1 %i.q, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.s = load i32, ptr %i.r, align 4
  store i32 %i.s, ptr %2, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.u = load i32, ptr %i.t, align 4
  store i32 %i.u, ptr %3, align 4
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.v = call ptr @systable_getnext(ptr noundef %i.d) #7 ; 2 uses
  %.not.not = icmp eq ptr %i.v, null
  br i1 %.not.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.c, %bb.a, %.thread
  %.not19 = phi i1 [ true, %.thread ], [ false, %bb.a ], [ false, %bb.c ]
  call void @systable_endscan(ptr noundef %i.d) #7
  call void @table_close(ptr noundef %i.a, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret i1 %.not19
}

; Function Attrs: nounwind uwtable
define dso_local ptr @getOwnedSequences(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @getOwnedSequences_internal(i32 noundef %0, i16 noundef signext 0, i8 noundef signext 0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @getOwnedSequences_internal(i32 noundef %0, i16 noundef signext %1, i8 noundef signext range(i8 0, 106) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca [3 x %struct.ScanKeyData], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.a = tail call ptr @table_open(i32 noundef 2608, i32 noundef 1) #7 ; 2 uses
  call void @ScanKeyInit(ptr noundef nonnull %3, i16 noundef signext 4, i16 noundef zeroext 3, i32 noundef 184, i64 noundef 1259) #7
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.c = zext i32 %0 to i64
  call void @ScanKeyInit(ptr noundef nonnull %i.b, i16 noundef signext 5, i16 noundef zeroext 3, i32 noundef 184, i64 noundef %i.c) #7
  %.not = icmp eq i16 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.e = sext i16 %1 to i64
  call void @ScanKeyInit(ptr noundef nonnull %i.d, i16 noundef signext 6, i16 noundef zeroext 3, i32 noundef 65, i64 noundef %i.e) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i32 [ 3, %bb.b ], [ 2, %bb.a ]
  %i.g = call ptr @systable_beginscan(ptr noundef %i.a, i32 noundef 2674, i1 noundef zeroext true, ptr noundef null, i32 noundef %i.f, ptr noundef nonnull %3) #7 ; 4 uses
  %i.h = call ptr @systable_getnext(ptr noundef %i.g) #7 ; 3 uses
  %.not2528 = icmp eq ptr %i.h, null
  br i1 %.not2528, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %.not27 = icmp eq i8 %2, 0
  br i1 %.not27, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.i
  %i.i = phi ptr [ %i.ad, %bb.i ], [ %i.h, %.lr.ph ]
  %.029.us = phi ptr [ %.1.us, %bb.i ], [ null, %.lr.ph ] ; 6 uses
  %i.j = getelementptr i8, ptr %i.i, i64 16
  %.val.us = load ptr, ptr %i.j, align 8          ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val.us, i64 22
  %i.l = load i8, ptr %i.k, align 2
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.val.us, i64 %i.m ; 5 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %i.o, 1259
  br i1 %i.p, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load i32, ptr %i.q, align 4
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.u = load i32, ptr %i.t, align 4
  %.not26.us = icmp eq i32 %i.u, 0
  br i1 %.not26.us, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.w = load i8, ptr %i.v, align 4
  switch i8 %i.w, label %bb.i [
    i8 97, label %bb.g
    i8 105, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = call signext i8 @get_rel_relkind(i32 noundef %i.y) #7
  %i.aa = icmp eq i8 %i.z, 83
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = load i32, ptr %i.x, align 4
  %i.ac = call ptr @lappend_oid(ptr noundef %.029.us, i32 noundef %i.ab) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %.lr.ph.split.us
  %.1.us = phi ptr [ %i.ac, %bb.h ], [ %.029.us, %.lr.ph.split.us ], [ %.029.us, %bb.g ], [ %.029.us, %bb.f ], [ %.029.us, %bb.e ], [ %.029.us, %bb.d ] ; 2 uses
  %i.ad = call ptr @systable_getnext(ptr noundef %i.g) #7 ; 2 uses
  %.not25.us = icmp eq ptr %i.ad, null
  br i1 %.not25.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !18

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.p
  %i.ae = phi ptr [ %i.bb, %bb.p ], [ %i.h, %.lr.ph ]
  %.029 = phi ptr [ %.1, %bb.p ], [ null, %.lr.ph ] ; 7 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 16
  %.val = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 22
  %i.ah = load i8, ptr %i.ag, align 2
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ai ; 5 uses
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = icmp eq i32 %i.ak, 1259
  br i1 %i.al, label %bb.j, label %bb.p

bb.j:                                             ; preds = %.lr.ph.split
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  %i.aq = load i32, ptr %i.ap, align 4
  %.not26 = icmp eq i32 %i.aq, 0
  br i1 %.not26, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 4
  switch i8 %i.as, label %bb.p [
    i8 97, label %bb.m
    i8 105, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 4 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4
  %i.av = call signext i8 @get_rel_relkind(i32 noundef %i.au) #7
end_hunk_0
