inline.NumInlined: 103
inline.NumDeleted: 11
begin_hunk_0_@lpAppendInteger:bb.a

bb.f:                                             ; preds = %bb.e
  store i8 -15, ptr %i.a, align 1, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.t = trunc nsw i64 %1 to i16
  store i16 %i.t, ptr %i.s, align 1
  br label %lpInsertInteger.exit

bb.g:                                             ; preds = %bb.e
  %i.u = add i64 %1, 8388608
  %or.cond7.i.i = icmp ult i64 %i.u, 16777216
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  br i1 %or.cond7.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 -14, ptr %i.a, align 1, !tbaa !13
  %i.w = trunc i64 %1 to i8
  store i8 %i.w, ptr %i.v, align 1, !tbaa !13
  %i.x = lshr i64 %1, 8
  %i.y = trunc i64 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.y, ptr %i.z, align 1, !tbaa !13
  %i.aa = lshr i64 %1, 16
  %i.ab = trunc i64 %i.aa to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !13
  br label %lpInsertInteger.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = add i64 %1, 2147483648
  %or.cond9.i.i = icmp ult i64 %i.ad, 4294967296
  br i1 %or.cond9.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 -13, ptr %i.a, align 1, !tbaa !13
  %i.ae = trunc nsw i64 %1 to i32
  store i32 %i.ae, ptr %i.v, align 1
  br label %lpInsertInteger.exit

bb.k:                                             ; preds = %bb.i
  store i8 -12, ptr %i.a, align 1, !tbaa !13
  store i64 %1, ptr %i.v, align 1
  br label %lpInsertInteger.exit

lpInsertInteger.exit:                             ; preds = %bb.b, %bb.d, %bb.f, %bb.h, %bb.j, %bb.k
  %.sink.i.i = phi i32 [ 5, %bb.j ], [ 1, %bb.b ], [ 3, %bb.f ], [ 4, %bb.h ], [ 2, %bb.d ], [ 9, %bb.k ]
  %i.af = zext i8 %i.d to i64
  %i.ag = shl nuw nsw i64 %i.af, 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.ag
  %i.ai = zext i8 %i.b to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ai
  %i.ak = zext i8 %i.f to i64
  %i.al = shl nuw nsw i64 %i.ak, 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.al
  %i.an = zext i8 %i.h to i64
  %i.ao = shl nuw nsw i64 %i.an, 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ao
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -1
  %i.ar = call ptr @lpInsert(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef %.sink.i.i, ptr noundef nonnull %i.aq, i32 noundef 0, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.ar
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lpBatchAppend(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !13
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !13
  %i.e = zext i8 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.h = load i8, ptr %i.g, align 1, !tbaa !13
  %i.i = zext i8 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.l = load i8, ptr %i.k, align 1, !tbaa !13
  %i.m = zext i8 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.j
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -1
  %i.t = trunc i64 %2 to i32
  %i.u = tail call ptr @lpBatchInsert(ptr noundef nonnull %0, ptr noundef nonnull %i.s, i32 noundef 0, ptr noundef %1, i32 noundef %i.t, ptr noundef null)
  ret ptr %i.u
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lpReplace(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !19
  %i.b = tail call ptr @lpInsert(ptr noundef %0, ptr noundef %2, ptr noundef null, i32 noundef %3, ptr noundef %i.a, i32 noundef 2, ptr noundef nonnull %1)
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lpReplaceInteger(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [9 x i8], align 1                 ; 14 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %or.cond.i.i = icmp ult i64 %2, 128
  br i1 %or.cond.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = trunc nuw nsw i64 %2 to i8
  store i8 %i.c, ptr %i.a, align 1, !tbaa !13
  br label %lpInsertInteger.exit

bb.c:                                             ; preds = %bb.a
  %i.d = add i64 %2, 4096
  %or.cond3.i.i = icmp ult i64 %i.d, 8192
  br i1 %or.cond3.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = lshr i64 %2, 50
  %i.f = and i64 %i.e, 8192
  %spec.select.i.i = add nsw i64 %i.f, %2
  %i.g = lshr i64 %spec.select.i.i, 8
  %i.h = trunc nuw nsw i64 %i.g to i8
  %i.i = or i8 %i.h, -64
  store i8 %i.i, ptr %i.a, align 1, !tbaa !13
  %i.j = trunc i64 %2 to i8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.j, ptr %i.k, align 1, !tbaa !13
  br label %lpInsertInteger.exit

bb.e:                                             ; preds = %bb.c
  %i.l = add i64 %2, 32768
  %or.cond5.i.i = icmp ult i64 %i.l, 65536
  br i1 %or.cond5.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 -15, ptr %i.a, align 1, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.n = trunc nsw i64 %2 to i16
  store i16 %i.n, ptr %i.m, align 1
  br label %lpInsertInteger.exit

bb.g:                                             ; preds = %bb.e
  %i.o = add i64 %2, 8388608
  %or.cond7.i.i = icmp ult i64 %i.o, 16777216
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  br i1 %or.cond7.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 -14, ptr %i.a, align 1, !tbaa !13
  %i.q = trunc i64 %2 to i8
  store i8 %i.q, ptr %i.p, align 1, !tbaa !13
  %i.r = lshr i64 %2, 8
  %i.s = trunc i64 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.s, ptr %i.t, align 1, !tbaa !13
  %i.u = lshr i64 %2, 16
  %i.v = trunc i64 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.v, ptr %i.w, align 1, !tbaa !13
  br label %lpInsertInteger.exit

bb.i:                                             ; preds = %bb.g
  %i.x = add i64 %2, 2147483648
  %or.cond9.i.i = icmp ult i64 %i.x, 4294967296
  br i1 %or.cond9.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 -13, ptr %i.a, align 1, !tbaa !13
  %i.y = trunc nsw i64 %2 to i32
  store i32 %i.y, ptr %i.p, align 1
  br label %lpInsertInteger.exit

bb.k:                                             ; preds = %bb.i
  store i8 -12, ptr %i.a, align 1, !tbaa !13
  store i64 %2, ptr %i.p, align 1
  br label %lpInsertInteger.exit

lpInsertInteger.exit:                             ; preds = %bb.b, %bb.d, %bb.f, %bb.h, %bb.j, %bb.k
  %.sink.i.i = phi i32 [ 5, %bb.j ], [ 1, %bb.b ], [ 3, %bb.f ], [ 4, %bb.h ], [ 2, %bb.d ], [ 9, %bb.k ]
  %i.z = call ptr @lpInsert(ptr noundef %0, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef %.sink.i.i, ptr noundef %i.b, i32 noundef 2, ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.z
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lpDelete(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @lpInsert(ptr noundef %0, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %1, i32 noundef 2, ptr noundef %2)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lpDeleteRangeWithEntry(ptr noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load i32, ptr %0, align 1
  %i.c = zext i32 %i.b to i64                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -1
  %i.f = load ptr, ptr %1, align 8, !tbaa !19     ; 3 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %bb.s, label %.preheader.a

.preheader.a:                                     ; preds = %bb.a, %lpAssertValidEntry.exit
  %.in = phi i64 [ %i.h, %lpAssertValidEntry.exit ], [ %2, %bb.a ]
  %.05160 = phi ptr [ %i.al, %lpAssertValidEntry.exit ], [ %i.f, %bb.a ] ; 4 uses
  %.05359 = phi i64 [ %i.i, %lpAssertValidEntry.exit ], [ 0, %bb.a ]
  %i.h = add i64 %.in, -1                         ; 2 uses
  %i.i = add nuw i64 %.05359, 1                   ; 2 uses
  %3 = load i8, ptr %.05160, align 1, !tbaa !13   ; 4 uses
  %i.j = zext i8 %3 to i32                        ; 5 uses
  %i.k = icmp sgt i8 %3, -1
  br i1 %i.k, label %lpSkip.exit, label %bb.b

bb.b:                                             ; preds = %.preheader.a
  %i.l = and i32 %i.j, 192
  %i.m = icmp eq i32 %i.l, 128
  br i1 %i.m, label %lpCurrentEncodedSizeUnsafe.exit.thread.i, label %bb.c

lpCurrentEncodedSizeUnsafe.exit.thread.i:         ; preds = %bb.b
  %i.n = and i32 %i.j, 63
  %i.o = add nuw nsw i32 %i.n, 1
  br label %lpSkip.exit

bb.c:                                             ; preds = %bb.b
  %i.p = and i32 %i.j, 224
  %i.q = icmp eq i32 %i.p, 192
  br i1 %i.q, label %lpSkip.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %switch.tableidx = add nsw i8 %3, 15            ; 2 uses
  %i.r = icmp ult i8 %switch.tableidx, 4
  br i1 %i.r, label %switch.lookup, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = and i32 %i.j, 240
  %i.t = icmp eq i32 %i.s, 224
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = shl nuw nsw i32 %i.j, 8
  %i.v = and i32 %i.u, 3840
  %i.w = getelementptr inbounds nuw i8, ptr %.05160, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !13
  %i.y = zext i8 %i.x to i32
  %i.z = or disjoint i32 %i.v, 2
  %i.aa = add nuw nsw i32 %i.z, %i.y
  br label %lpCurrentEncodedSizeUnsafe.exit.i

bb.g:                                             ; preds = %bb.e
  switch i8 %3, label %bb.i [
    i8 -16, label %bb.h
    i8 -1, label %lpSkip.exit
  ]

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %.05160, i64 1
  %i.ac = load i32, ptr %i.ab, align 1
  %i.ad = add i32 %i.ac, 5
  br label %lpCurrentEncodedSizeUnsafe.exit.i

bb.i:                                             ; preds = %bb.g
  br label %lpSkip.exit

lpCurrentEncodedSizeUnsafe.exit.i:                ; preds = %bb.h, %bb.f
  %.0.i.i = phi i32 [ %i.aa, %bb.f ], [ %i.ad, %bb.h ] ; 8 uses
  %i.ae = icmp ult i32 %.0.i.i, 128
  br i1 %i.ae, label %lpSkip.exit, label %bb.j

bb.j:                                             ; preds = %lpCurrentEncodedSizeUnsafe.exit.i
  %i.af = icmp ult i32 %.0.i.i, 16383
  br i1 %i.af, label %lpSkip.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = icmp ult i32 %.0.i.i, 2097151
  br i1 %i.ag, label %lpSkip.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = icmp ult i32 %.0.i.i, 268435455
  %..i.i = select i1 %i.ah, i64 4, i64 5
  br label %lpSkip.exit

switch.lookup:                                    ; preds = %bb.d
  %i.ai = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.lpRandomPairs.5, i64 %i.ai
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %lpSkip.exit

lpSkip.exit:                                      ; preds = %switch.lookup, %.preheader.a, %lpCurrentEncodedSizeUnsafe.exit.thread.i, %bb.c, %bb.g, %bb.i, %lpCurrentEncodedSizeUnsafe.exit.i, %bb.j, %bb.k, %bb.l
  %.shrunk.i = phi i32 [ %.0.i.i, %bb.k ], [ %.0.i.i, %lpCurrentEncodedSizeUnsafe.exit.i ], [ %.0.i.i, %bb.j ], [ %.0.i.i, %bb.l ], [ 1, %bb.g ], [ %switch.ext, %switch.lookup ], [ 1, %.preheader.a ], [ 0, %bb.i ], [ %i.o, %lpCurrentEncodedSizeUnsafe.exit.thread.i ], [ 2, %bb.c ]
  %.0.i5.i = phi i64 [ 3, %bb.k ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.i ], [ 2, %bb.j ], [ %..i.i, %bb.l ], [ 1, %bb.g ], [ 1, %switch.lookup ], [ 1, %.preheader.a ], [ 1, %bb.i ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.thread.i ], [ 1, %bb.c ]
  %i.aj = zext i32 %.shrunk.i to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.05160, i64 %.0.i5.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aj ; 5 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !13
  %i.an = icmp eq i8 %i.am, -1
  br i1 %i.an, label %bb.o, label %bb.m

bb.m:                                             ; preds = %lpSkip.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.al, ptr %i.a, align 8, !tbaa !19
  %i.ao = call i32 @lpValidateNext(ptr noundef nonnull readnone %0, ptr noundef nonnull %i.a, i64 noundef %i.c)
  %.not.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i, label %bb.n, label %lpAssertValidEntry.exit, !prof !18

bb.n:                                             ; preds = %bb.m
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #21
  tail call void @abort() #22
  unreachable

lpAssertValidEntry.exit:                          ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.o, label %.preheader.a, !llvm.loop !43

bb.o:                                             ; preds = %lpSkip.exit, %lpAssertValidEntry.exit
  %.lcssa = phi i64 [ %i.i, %lpSkip.exit ], [ %2, %lpAssertValidEntry.exit ]
  %i.ap = ptrtoint ptr %i.f to i64                ; 2 uses
  %i.aq = ptrtoint ptr %0 to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ptrtoint ptr %i.e to i64
  %i.at = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.au = add i64 %i.as, 1
  %i.av = sub i64 %i.au, %i.at
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.f, ptr nonnull align 1 %i.al, i64 %i.av, i1 false)
  %.neg = add i64 %i.ap, %i.c
  %i.aw = sub i64 %.neg, %i.at                    ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  store i32 %i.ax, ptr %0, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.az = load i16, ptr %i.ay, align 1            ; 2 uses
  %.not57 = icmp eq i16 %i.az, -1
  br i1 %.not57, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = trunc i64 %.lcssa to i16
  %i.bb = sub i16 %i.az, %i.ba
  store i16 %i.bb, ptr %i.ay, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bc = and i64 %i.aw, 4294967295               ; 2 uses
  %i.bd = tail call i64 @je_malloc_usable_size(ptr noundef nonnull %0) #21
  %i.be = icmp ugt i64 %i.bd, %i.bc
  br i1 %i.be, label %bb.r, label %lpShrinkToFit.exit

bb.r:                                             ; preds = %bb.q
  %i.bf = tail call ptr @zrealloc_usable(ptr noundef nonnull %0, i64 noundef %i.bc, ptr noundef null, ptr noundef null) #21
  br label %lpShrinkToFit.exit

lpShrinkToFit.exit:                               ; preds = %bb.q, %bb.r
  %.0.i = phi ptr [ %i.bf, %bb.r ], [ %0, %bb.q ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.ar ; 3 uses
  store ptr %i.bg, ptr %1, align 8, !tbaa !19
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !13
  %i.bi = icmp eq i8 %i.bh, -1
  %spec.store.select = select i1 %i.bi, ptr null, ptr %i.bg
  store ptr %spec.store.select, ptr %1, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %lpShrinkToFit.exit
  %.0 = phi ptr [ %.0.i, %lpShrinkToFit.exit ], [ %0, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lpDeleteRange(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i16, ptr %i.b, align 1              ; 2 uses
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %lpShrinkToFit.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @lpSeek(ptr noundef nonnull %0, i64 noundef %1) ; 4 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !19
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %lpShrinkToFit.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ne i16 %i.c, -1                     ; 2 uses
  %i.h = icmp slt i64 %1, 0
  %or.cond = and i1 %i.h, %i.g
  %i.i = zext i16 %i.c to i64                     ; 2 uses
  %i.j = select i1 %or.cond, i64 %i.i, i64 0
  %.033 = add nsw i64 %i.j, %1                    ; 2 uses
  %i.k = sub i64 %i.i, %.033
  %.not = icmp ule i64 %i.k, %2
  %or.cond39.not = select i1 %i.g, i1 %.not, i1 false
  br i1 %or.cond39.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  store i8 -1, ptr %i.e, align 1, !tbaa !13
  %i.l = ptrtoint ptr %i.e to i64
  %i.m = ptrtoint ptr %0 to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %i.o = trunc i64 %i.n to i8
  %i.p = add i8 %i.o, 1
  store i8 %i.p, ptr %0, align 1, !tbaa !13
  %i.q = add nsw i64 %i.n, 1                      ; 3 uses
  %i.r = lshr i64 %i.q, 8
  %i.s = trunc i64 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.s, ptr %i.t, align 1, !tbaa !13
  %i.u = lshr i64 %i.q, 16
  %i.v = trunc i64 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.v, ptr %i.w, align 1, !tbaa !13
  %i.x = lshr i64 %i.q, 24
  %i.y = trunc i64 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.y, ptr %i.z, align 1, !tbaa !13
  %i.aa = trunc i64 %.033 to i16
  store i16 %i.aa, ptr %i.b, align 1
  %i.ab = load i32, ptr %0, align 1
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = tail call i64 @je_malloc_usable_size(ptr noundef nonnull %0) #21
  %i.ae = icmp ugt i64 %i.ad, %i.ac
  br i1 %i.ae, label %bb.e, label %lpShrinkToFit.exit

bb.e:                                             ; preds = %bb.d
  %i.af = tail call ptr @zrealloc_usable(ptr noundef nonnull %0, i64 noundef %i.ac, ptr noundef null, ptr noundef null) #21
  br label %lpShrinkToFit.exit

bb.f:                                             ; preds = %bb.c
  %i.ag = call ptr @lpDeleteRangeWithEntry(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %2)
  br label %lpShrinkToFit.exit

lpShrinkToFit.exit:                               ; preds = %bb.e, %bb.d, %bb.f, %bb.b, %bb.a
  %.0 = phi ptr [ %0, %bb.b ], [ %0, %bb.a ], [ %i.ag, %bb.f ], [ %i.af, %bb.e ], [ %0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lpSeek(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i16, ptr %i.b, align 1              ; 2 uses
  %.not = icmp eq i16 %i.c, -1
  %i.d = icmp slt i64 %1, 0                       ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext i16 %i.c to i64                     ; 4 uses
  %i.f = select i1 %i.d, i64 %i.e, i64 0
  %.032 = add nsw i64 %i.f, %1                    ; 5 uses
  %i.g = icmp sgt i64 %.032, -1
  %.not39 = icmp samesign ult i64 %.032, %i.e
  %or.cond = select i1 %i.g, i1 %.not39, i1 false
  br i1 %or.cond, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.h = lshr i64 %i.e, 1
  %i.i = icmp samesign ugt i64 %.032, %i.h
  %i.j = sub nsw i64 %.032, %i.e
  br i1 %i.i, label %bb.h, label %bb.e

bb.d:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.143 = phi i64 [ %.032, %bb.c ], [ %1, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 4 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !13
  %i.m = icmp eq i8 %i.l, -1
  br i1 %i.m, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i32, ptr %0, align 1
  %i.o = zext i32 %i.n to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.k, ptr %i.a, align 8, !tbaa !19
  %i.p = call i32 @lpValidateNext(ptr noundef nonnull readnone %0, ptr noundef nonnull %i.a, i64 noundef %i.o)
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %bb.g, label %lpFirst.exit, !prof !18

bb.g:                                             ; preds = %bb.f
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #21
  tail call void @abort() #22
  unreachable

lpFirst.exit:                                     ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not60 = icmp eq i64 %.143, 0
  br i1 %.not60, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %lpFirst.exit, %.lr.ph
  %.02947 = phi ptr [ %i.q, %.lr.ph ], [ %i.k, %lpFirst.exit ]
  %.246 = phi i64 [ %i.r, %.lr.ph ], [ %.143, %lpFirst.exit ] ; 2 uses
  %i.q = tail call ptr @lpNext(ptr noundef nonnull %0, ptr noundef nonnull %.02947) ; 3 uses
  %i.r = add nsw i64 %.246, -1
  %i.s = icmp samesign ugt i64 %.246, 1
  %i.t = icmp ne ptr %i.q, null
  %i.u = and i1 %i.s, %i.t
  br i1 %i.u, label %.lr.ph, label %.loopexit, !llvm.loop !44

bb.h:                                             ; preds = %bb.c, %bb.d
  %.144 = phi i64 [ %i.j, %bb.c ], [ %1, %bb.d ]  ; 2 uses
  %i.v = load i8, ptr %0, align 1, !tbaa !13
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !13
  %i.z = zext i8 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !13
  %i.ad = zext i8 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !13
  %i.ah = zext i8 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 24
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.w
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ae
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ai
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -1
  %i.ao = tail call ptr @lpPrev(ptr noundef nonnull %0, ptr noundef nonnull %i.an) ; 3 uses
  %i.ap = icmp slt i64 %.144, -1
  %i.aq = icmp ne ptr %i.ao, null
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
end_hunk_0
