Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/ginfast?download=true
inline.NumInlined: 75
inline.NumDeleted: 24
begin_hunk_0_@ginInsertCleanup:bb.a
  br i1 %i.iy, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.iz = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.ja = xor i32 %i.ix, -1
  %i.jb = zext nneg i32 %i.ja to i64
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.jb
  %i.jd = load ptr, ptr %i.jc, align 8
  br label %BufferGetPage.exit95.backedge

BufferGetPage.exit95.backedge:                    ; preds = %bb.am, %bb.an
  %.080.be = phi ptr [ %i.jd, %bb.am ], [ %i.ji, %bb.an ]
  br label %BufferGetPage.exit95

bb.an:                                            ; preds = %bb.al
  %i.je = load ptr, ptr @BufferBlocks, align 8
  %i.jf = add nsw i32 %i.ix, -1
  %i.jg = sext i32 %i.jf to i64
  %i.jh = shl nsw i64 %i.jg, 13
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.jh
  br label %BufferGetPage.exit95.backedge

bb.ao:                                            ; preds = %shiftList.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @UnlockPage(ptr noundef %i.g, i32 noundef 0, i32 noundef 7) #7
  call void @ReleaseBuffer(i32 noundef %i.p) #7
  br i1 %2, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @IndexFreeSpaceMapVacuum(ptr noundef %i.g) #7
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  store ptr %i.au, ptr @CurrentMemoryContext, align 8
  call void @MemoryContextDelete(ptr noundef %i.at) #7
  br label %bb.ar

bb.ar:                                            ; preds = %bb.c, %bb.aq, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ginHeapTupleFastCollect(ptr noundef %0, ptr nofree noundef captures(none) %1, i16 noundef zeroext %2, i64 noundef %3, i1 noundef zeroext %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = call ptr @ginExtractEntries(ptr noundef %0, i16 noundef zeroext %2, i64 noundef %3, i1 noundef zeroext %4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #7
  %i.d = load i32, ptr %i.b, align 4              ; 3 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = add i32 %i.g, %i.d                       ; 5 uses
  %i.i = icmp ugt i32 %i.h, 134217727
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.k = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.2) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 504, ptr noundef nonnull @__func__.ginHeapTupleFastCollect) #7
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %1, align 8                ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = call i32 @llvm.umax.i32(i32 %i.d, i32 16) ; 3 uses
  %i.o = call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %i.n)
  %i.p = icmp samesign ult i32 %i.o, 2
  %i.q = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.n, i1 true)
  %i.r = xor i32 %i.q, 31
  %i.s = shl nuw i32 2, %i.r
  %.0.i = select i1 %i.p, i32 %i.n, i32 %i.s      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %.0.i, ptr %i.t, align 4
  %i.u = zext i32 %.0.i to i64
  %i.v = call ptr @palloc_mul(i64 noundef 8, i64 noundef %i.u) #7
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  %i.y = icmp ult i32 %i.x, %i.h
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = call range(i32 1, 28) i32 @llvm.ctpop.i32(i32 %i.h)
  %i.aa = icmp samesign ult i32 %i.z, 2
  %i.ab = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.h, i1 true)
  %i.ac = xor i32 %i.ab, 31
  %i.ad = shl nuw nsw i32 2, %i.ac
  %.0.i31 = select i1 %i.aa, i32 %i.h, i32 %i.ad  ; 2 uses
  store i32 %.0.i31, ptr %i.w, align 4
  %i.ae = zext nneg i32 %.0.i31 to i64
  %i.af = call ptr @repalloc_mul(ptr noundef nonnull %i.l, i64 noundef 8, i64 noundef %i.ae) #7
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.g
  %.sink = phi ptr [ %i.af, %bb.g ], [ %i.v, %bb.e ]
  store ptr %.sink, ptr %1, align 8
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.f
  %i.ag = load i32, ptr %i.b, align 4
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = load ptr, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = call ptr @GinFormTuple(ptr noundef %0, i16 noundef zeroext %2, i64 noundef %i.ak, i8 noundef signext %i.an, ptr noundef null, i64 noundef 0, i32 noundef 0, i1 noundef zeroext true) #7 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.ao, ptr noundef nonnull align 2 dereferenceable(6) %5, i64 6, i1 false)
  %i.ap = load ptr, ptr %1, align 8
  %i.aq = load i32, ptr %i.f, align 8             ; 2 uses
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.f, align 8
  %i.as = zext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.as
  store ptr %i.ao, ptr %i.at, align 8
  %i.au = getelementptr i8, ptr %i.ao, i64 6
  %.val = load i16, ptr %i.au, align 2
  %i.av = and i16 %.val, 8191
  %i.aw = load i32, ptr %i.ai, align 8
  %i.ax = zext nneg i16 %i.av to i32
  %i.ay = add i32 %i.aw, %i.ax
  store i32 %i.ay, ptr %i.ai, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.az = load i32, ptr %i.b, align 4
  %i.ba = sext i32 %i.az to i64
  %i.bb = icmp slt i64 %indvars.iv.next, %i.ba
  br i1 %i.bb, label %bb.i, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

declare ptr @ginExtractEntries(ptr noundef, i16 noundef zeroext, i64 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @palloc_mul(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @repalloc_mul(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @GinFormTuple(ptr noundef, i16 noundef zeroext, i64 noundef, i8 noundef signext, ptr noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @LockPage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @ConditionalLockPage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @UnlockPage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @AllocSetContextCreateInternal(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @ginInitBA(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @processPendingPage(ptr noundef nonnull %0, ptr nofree noundef nonnull captures(none) initializes((16, 20)) %1, ptr noundef %2, i16 noundef zeroext range(i16 1, 16379) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.ItemPointerData, align 2    ; 9 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %2, i64 12
  %.val = load i16, ptr %i.c, align 4             ; 2 uses
  %i.d = icmp ult i16 %.val, 25
  %i.e = zext i16 %.val to i32
  %i.f = add nuw nsw i32 %i.e, 262120
  %i.g = lshr i32 %i.f, 2
  %i.h = trunc i32 %i.g to i16
  %.0.i = select i1 %i.d, i16 0, i16 %i.h         ; 2 uses
  store i16 -1, ptr %4, align 2
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 -1, ptr %i.i, align 2
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i16 0, ptr %i.j, align 2
  %.not37 = icmp ugt i16 %3, %.0.i
  br i1 %.not37, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr i8, ptr %2, i64 20
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %addDatum.exit
  %.039 = phi i16 [ 0, %.lr.ph ], [ %.1, %addDatum.exit ] ; 3 uses
  %.03238 = phi i16 [ %3, %.lr.ph ], [ %i.aw, %addDatum.exit ] ; 2 uses
  %i.n = zext nneg i16 %.03238 to i64
  %i.o = getelementptr [4 x i8], ptr %i.k, i64 %i.n
  %.val34 = load i32, ptr %i.o, align 4
  %i.p = and i32 %.val34, 32767
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %i.q ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.s = load ptr, ptr %0, align 8
  %i.t = call zeroext i16 @gintuple_get_attrnum(ptr noundef %i.s, ptr noundef %i.r) #7 ; 2 uses
  %.val35 = load i16, ptr %i.j, align 2
  %.not36 = icmp eq i16 %.val35, 0
  br i1 %.not36, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = call zeroext i1 @ItemPointerEquals(ptr noundef nonnull %4, ptr noundef nonnull %i.r) #7
  %i.v = icmp eq i16 %i.t, %.039
  %or.cond = select i1 %i.u, i1 %i.v, i1 false
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %1, align 8
  %i.x = load ptr, ptr %i.l, align 8
  %i.y = load i32, ptr %i.b, align 8
  call void @ginInsertBAEntries(ptr noundef nonnull %0, ptr noundef nonnull %4, i16 noundef zeroext %.039, ptr noundef %i.w, ptr noundef %i.x, i32 noundef %i.y) #7
  store i32 0, ptr %i.b, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %4, ptr noundef nonnull align 2 dereferenceable(6) %i.r, i64 6, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c
  %.1 = phi i16 [ %.039, %bb.c ], [ %i.t, %.sink.split ] ; 2 uses
  %i.z = load ptr, ptr %0, align 8
  %i.aa = call i64 @gintuple_get_key(ptr noundef %i.z, ptr noundef nonnull %i.r, ptr noundef nonnull %i.a) #7
  %i.ab = load i8, ptr %i.a, align 1
  %i.ac = load i32, ptr %i.b, align 8             ; 2 uses
  %i.ad = load i32, ptr %i.m, align 4             ; 2 uses
  %.not.i = icmp slt i32 %i.ac, %i.ad
  br i1 %.not.i, label %addDatum.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = shl i32 %i.ad, 1                        ; 2 uses
  store i32 %i.ae, ptr %i.m, align 4
  %i.af = load ptr, ptr %1, align 8
  %i.ag = sext i32 %i.ae to i64
  %i.ah = call ptr @repalloc_mul(ptr noundef %i.af, i64 noundef 8, i64 noundef %i.ag) #7
  store ptr %i.ah, ptr %1, align 8
  %i.ai = load ptr, ptr %i.l, align 8
  %i.aj = load i32, ptr %i.m, align 4
  %i.ak = sext i32 %i.aj to i64
  %i.al = call ptr @repalloc_mul(ptr noundef %i.ai, i64 noundef 1, i64 noundef %i.ak) #7
  store ptr %i.al, ptr %i.l, align 8
  %.pre.i = load i32, ptr %i.b, align 8
  br label %addDatum.exit

addDatum.exit:                                    ; preds = %bb.e, %bb.f
  %i.am = phi i32 [ %.pre.i, %bb.f ], [ %i.ac, %bb.e ]
  %i.an = load ptr, ptr %1, align 8
  %i.ao = sext i32 %i.am to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ao
  store i64 %i.aa, ptr %i.ap, align 8
  %i.aq = load ptr, ptr %i.l, align 8
  %i.ar = load i32, ptr %i.b, align 8
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds i8, ptr %i.aq, i64 %i.as
  store i8 %i.ab, ptr %i.at, align 1
  %i.au = load i32, ptr %i.b, align 8
  %i.av = add i32 %i.au, 1                        ; 2 uses
  store i32 %i.av, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.aw = add i16 %.03238, 1                      ; 2 uses
  %.not = icmp ugt i16 %i.aw, %.0.i
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !17

._crit_edge:                                      ; preds = %addDatum.exit, %bb.a
  %i.ax = phi i32 [ 0, %bb.a ], [ %i.av, %addDatum.exit ]
  %.0.lcssa = phi i16 [ 0, %bb.a ], [ %.1, %addDatum.exit ]
  %i.ay = load ptr, ptr %1, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void @ginInsertBAEntries(ptr noundef nonnull %0, ptr noundef nonnull %4, i16 noundef zeroext %.0.lcssa, ptr noundef %i.ay, ptr noundef %i.ba, i32 noundef %i.ax) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret void
}

declare void @vacuum_delay_point(i1 noundef zeroext) local_unnamed_addr #2

declare void @ginBeginBAScan(ptr noundef) local_unnamed_addr #2

declare ptr @ginGetBAEntry(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ginEntryInsert(ptr noundef, i16 noundef zeroext, i64 noundef, i8 noundef signext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @MemoryContextReset(ptr noundef) local_unnamed_addr #2

declare void @ReleaseBuffer(i32 noundef) local_unnamed_addr #2

declare void @IndexFreeSpaceMapVacuum(ptr noundef) local_unnamed_addr #2

declare void @MemoryContextDelete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 4294967296) i64 @gin_clean_pending_list(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.IndexBulkDeleteResult, align 8 ; 5 uses
  %2 = alloca %struct.GinState, align 8           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = tail call ptr @index_open(i32 noundef %i.c, i32 noundef 3) #7 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.e = tail call zeroext i1 @RecoveryInProgress() #7
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.g = tail call i32 @errcode(i32 noundef 325) #7 ; 0 uses
  %i.h = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.4) #7 ; 0 uses
  %i.i = tail call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.5) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1041, ptr noundef nonnull @__func__.gin_clean_pending_list) #7
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 119
  %i.m = load i8, ptr %i.l, align 1
  %.not = icmp eq i8 %i.m, 105
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 84
  %i.o = load i32, ptr %i.n, align 4
  %.not12 = icmp eq i32 %i.o, 2742
  br i1 %.not12, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.q = tail call i32 @errcode(i32 noundef 151027844) #7 ; 0 uses
  %i.r = load ptr, ptr %i.j, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.s) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1049, ptr noundef nonnull @__func__.gin_clean_pending_list) #7
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 118
  %i.v = load i8, ptr %i.u, align 2
  %i.w = icmp eq i8 %i.v, 116
  br i1 %i.w, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.y = load i8, ptr %i.x, align 8, !range !18, !noundef !19
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.ab = tail call i32 @errcode(i32 noundef 1088) #7 ; 0 uses
  %i.ac = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1059, ptr noundef nonnull @__func__.gin_clean_pending_list) #7
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.ad = tail call i32 @GetUserId() #7
  %i.ae = tail call zeroext i1 @object_ownercheck(i32 noundef 1259, i32 noundef %i.c, i32 noundef %i.ad) #7
  br i1 %i.ae, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = load ptr, ptr %i.j, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  tail call void @aclcheck_error(i32 noundef 2, i32 noundef 20, ptr noundef nonnull %i.ag) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 328
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 18
  %i.ak = load i8, ptr %i.aj, align 2, !range !18, !noundef !19
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @initGinState(ptr noundef nonnull %2, ptr noundef nonnull %i.d) #7
  call void @ginInsertCleanup(ptr noundef nonnull %2, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  %i.am = zext i32 %.pre to i64
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.an = tail call zeroext i1 @errstart(i32 noundef 14, ptr noundef null) #7
  br i1 %i.an, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ao = tail call i32 @errcode(i32 noundef 325) #7 ; 0 uses
  %i.ap = load ptr, ptr %i.j, align 8
end_hunk_0
