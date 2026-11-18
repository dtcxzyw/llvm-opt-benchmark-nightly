Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/ginvacuum?download=true
inline.NumInlined: 89
inline.NumDeleted: 23
begin_hunk_0_@ginbulkdelete:bb.a
bb.bg:                                            ; preds = %._crit_edge
  %i.kg = load ptr, ptr %i.j, align 8
  %i.kh = call i32 @ReadBufferExtended(ptr noundef %i.d, i32 noundef 0, i32 noundef %i.hl, i32 noundef 0, ptr noundef %i.kg) #6 ; 2 uses
  call void @LockBufferInternal(i32 noundef %i.kh, i32 noundef 3) #6
  br label %bb.m

bb.bh:                                            ; preds = %._crit_edge
  %i.ki = load ptr, ptr %i.g, align 8
  call void @MemoryContextDelete(ptr noundef %i.ki) #6
  %i.kj = load ptr, ptr %i.s, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  ret ptr %i.kj
}

declare ptr @AllocSetContextCreateInternal(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @initGinState(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @palloc0(i64 noundef) local_unnamed_addr #2

declare void @ginInsertCleanup(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare i32 @ReadBufferExtended(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @UnlockReleaseBuffer(i32 noundef) local_unnamed_addr #2

declare void @PageRestoreTempPage(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @MarkBufferDirty(i32 noundef) local_unnamed_addr #2

declare void @vacuum_delay_point(i1 noundef zeroext) local_unnamed_addr #2

declare void @MemoryContextDelete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ginvacuumcleanup(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.GinState, align 8           ; 6 uses
  %3 = alloca %struct.GinStatsData, align 8       ; 8 uses
  %4 = alloca %struct.BlockRangeReadStreamPrivate, align 4 ; 5 uses
  %i.a = load ptr, ptr %0, align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !13, !noundef !14
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr @MyBackendType, align 4
  %i.f = icmp eq i32 %i.e, 4
  br i1 %i.f, label %bb.c, label %bb.u

bb.c:                                             ; preds = %bb.b
  call void @initGinState(ptr noundef nonnull %2, ptr noundef %i.a) #6
  call void @ginInsertCleanup(ptr noundef nonnull %2, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %1) #6
  br label %bb.u

bb.d:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %1, null
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @palloc0(i64 noundef 40) #6 ; 2 uses
  call void @initGinState(ptr noundef nonnull %2, ptr noundef %i.a) #6
  %i.i = load i32, ptr @MyBackendType, align 4
  %i.j = icmp ne i32 %i.i, 4
  call void @ginInsertCleanup(ptr noundef nonnull %2, i1 noundef zeroext %i.j, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %i.h) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.058 = phi ptr [ %i.h, %bb.e ], [ %1, %bb.d ]  ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load double, ptr %i.k, align 8           ; 2 uses
  %i.m = fcmp ogt double %i.l, 0.000000e+00
  %i.n = select i1 %i.m, double %i.l, double 0.000000e+00
  %i.o = getelementptr inbounds nuw i8, ptr %.058, i64 8
  store double %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.q = load i8, ptr %i.p, align 2, !range !13, !noundef !14
  %i.r = getelementptr inbounds nuw i8, ptr %.058, i64 4
  store i8 %i.q, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.t = load i8, ptr %i.s, align 8, !range !13, !noundef !14
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %.thread66, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.w = load i32, ptr %i.v, align 8
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %.thread66

.thread66:                                        ; preds = %bb.g, %bb.f
  %i.y = call i32 @RelationGetNumberOfBlocksInFork(ptr noundef nonnull %i.a, i32 noundef 0) #6
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @LockRelationForExtension(ptr noundef nonnull %i.a, i32 noundef 7) #6
  %i.z = call i32 @RelationGetNumberOfBlocksInFork(ptr noundef nonnull %i.a, i32 noundef 0) #6
  call void @UnlockRelationForExtension(ptr noundef nonnull %i.a, i32 noundef 7) #6
  br label %bb.i

bb.i:                                             ; preds = %.thread66, %bb.h
  %i.aa = phi i32 [ %i.y, %.thread66 ], [ %i.z, %bb.h ] ; 4 uses
  %i.ab = phi i1 [ false, %.thread66 ], [ true, %bb.h ]
  store i32 1, ptr %4, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.aa, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call ptr @read_stream_begin_relation(i32 noundef 13, ptr noundef %i.ae, ptr noundef nonnull %i.a, i32 noundef 0, ptr noundef nonnull @block_range_read_stream_cb, ptr noundef nonnull %4, i64 noundef 0) #6 ; 2 uses
  %i.ag = icmp ugt i32 %i.aa, 1
  br i1 %i.ag, label %.lr.ph, label %._crit_edge.a

.lr.ph:                                           ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.s
  %i.ak = phi i64 [ 0, %.lr.ph ], [ %i.ca, %bb.s ] ; 5 uses
  %i.al = phi i32 [ 0, %.lr.ph ], [ %i.cb, %bb.s ] ; 4 uses
  %i.am = phi i32 [ 0, %.lr.ph ], [ %i.cc, %bb.s ] ; 5 uses
  %.072 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.s ]  ; 5 uses
  %.05770 = phi i32 [ 1, %.lr.ph ], [ %i.cd, %bb.s ] ; 2 uses
  call void @vacuum_delay_point(i1 noundef zeroext false) #6
  %i.an = call i32 @read_stream_next_buffer(ptr noundef %i.af, ptr noundef null) #6 ; 5 uses
  call void @LockBufferInternal(i32 noundef %i.an, i32 noundef 1) #6
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.aq = xor i32 %i.an, -1
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8
  br label %BufferGetPage.exit

bb.l:                                             ; preds = %bb.j
  %i.au = load ptr, ptr @BufferBlocks, align 8
  %i.av = add nsw i32 %i.an, -1
  %i.aw = sext i32 %i.av to i64
  %i.ax = shl nsw i64 %i.aw, 13
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ax
  br label %BufferGetPage.exit

BufferGetPage.exit:                               ; preds = %bb.k, %bb.l
  %.0.i.i = phi ptr [ %i.at, %bb.k ], [ %i.ay, %bb.l ] ; 6 uses
  %i.az = getelementptr i8, ptr %.0.i.i, i64 14
  %.val.i = load i16, ptr %i.az, align 2
  %i.ba = icmp eq i16 %.val.i, 0
  br i1 %i.ba, label %GinPageIsRecyclable.exit.thread, label %bb.m

bb.m:                                             ; preds = %BufferGetPage.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16 ; 2 uses
  %i.bc = load i16, ptr %i.bb, align 8
  %i.bd = zext i16 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 6
  %i.bg = load i16, ptr %i.bf, align 2            ; 2 uses
  %i.bh = and i16 %i.bg, 4
  %.not.i = icmp eq i16 %i.bh, 0
  br i1 %.not.i, label %GinPageIsRecyclable.exit.thread68, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 20
  %i.bj = load i32, ptr %i.bi, align 4            ; 2 uses
  %.not8.i = icmp eq i32 %i.bj, 0
  br i1 %.not8.i, label %GinPageIsRecyclable.exit.thread, label %GinPageIsRecyclable.exit

GinPageIsRecyclable.exit:                         ; preds = %bb.n
  %i.bk = call zeroext i1 @GlobalVisCheckRemovableXid(ptr noundef null, i32 noundef %i.bj) #6
  br i1 %i.bk, label %GinPageIsRecyclable.exit.thread, label %GinPageIsRecyclable.exit.GinPageIsRecyclable.exit.thread68_crit_edge

GinPageIsRecyclable.exit.GinPageIsRecyclable.exit.thread68_crit_edge: ; preds = %GinPageIsRecyclable.exit
  %.pre = load i16, ptr %i.bb, align 8
  %.phi.trans.insert = zext i16 %.pre to i64
  %.phi.trans.insert73 = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %.phi.trans.insert
  %.phi.trans.insert74 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert73, i64 6
  %.pre75 = load i16, ptr %.phi.trans.insert74, align 2
  br label %GinPageIsRecyclable.exit.thread68

GinPageIsRecyclable.exit.thread:                  ; preds = %bb.n, %BufferGetPage.exit, %GinPageIsRecyclable.exit
  call void @RecordFreeIndexPage(ptr noundef nonnull %i.a, i32 noundef %.05770) #6
  %i.bl = add i32 %.072, 1
  br label %bb.s

GinPageIsRecyclable.exit.thread68:                ; preds = %GinPageIsRecyclable.exit.GinPageIsRecyclable.exit.thread68_crit_edge, %bb.m
  %i.bm = phi i16 [ %.pre75, %GinPageIsRecyclable.exit.GinPageIsRecyclable.exit.thread68_crit_edge ], [ %i.bg, %bb.m ] ; 3 uses
  %i.bn = and i16 %i.bm, 1
  %.not = icmp eq i16 %i.bn, 0
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %GinPageIsRecyclable.exit.thread68
  %i.bo = add i32 %i.am, 1                        ; 2 uses
  store i32 %i.bo, ptr %i.ah, align 4
  br label %bb.s

bb.p:                                             ; preds = %GinPageIsRecyclable.exit.thread68
  %i.bp = and i16 %i.bm, 16
  %.not63 = icmp eq i16 %i.bp, 0
  br i1 %.not63, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bq = add i32 %i.al, 1                        ; 3 uses
  store i32 %i.bq, ptr %i.ai, align 8
  %i.br = and i16 %i.bm, 2
  %.not64 = icmp eq i16 %i.br, 0
  br i1 %.not64, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = getelementptr i8, ptr %.0.i.i, i64 12
  %.val = load i16, ptr %i.bs, align 4            ; 2 uses
  %i.bt = icmp ult i16 %.val, 25
  %i.bu = zext i16 %.val to i64
  %i.bv = add nuw nsw i64 %i.bu, 262120
  %i.bw = lshr i64 %i.bv, 2
  %i.bx = and i64 %i.bw, 65535
  %i.by = select i1 %i.bt, i64 0, i64 %i.bx
  %i.bz = add i64 %i.by, %i.ak                    ; 2 uses
  store i64 %i.bz, ptr %i.aj, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %bb.q, %bb.r, %bb.p, %GinPageIsRecyclable.exit.thread
  %i.ca = phi i64 [ %i.ak, %GinPageIsRecyclable.exit.thread ], [ %i.ak, %bb.o ], [ %i.ak, %bb.p ], [ %i.bz, %bb.r ], [ %i.ak, %bb.q ]
  %i.cb = phi i32 [ %i.al, %GinPageIsRecyclable.exit.thread ], [ %i.al, %bb.o ], [ %i.al, %bb.p ], [ %i.bq, %bb.r ], [ %i.bq, %bb.q ]
  %i.cc = phi i32 [ %i.am, %GinPageIsRecyclable.exit.thread ], [ %i.bo, %bb.o ], [ %i.am, %bb.p ], [ %i.am, %bb.r ], [ %i.am, %bb.q ]
  %.1 = phi i32 [ %i.bl, %GinPageIsRecyclable.exit.thread ], [ %.072, %bb.o ], [ %.072, %bb.p ], [ %.072, %bb.r ], [ %.072, %bb.q ] ; 2 uses
  call void @UnlockReleaseBuffer(i32 noundef %i.an) #6
  %i.cd = add nuw i32 %.05770, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.cd, %i.aa
  br i1 %exitcond.not, label %._crit_edge.a, label %bb.j, !llvm.loop !12

._crit_edge.a:                                    ; preds = %bb.s, %bb.i
  %.0.lcssa = phi i32 [ 0, %bb.i ], [ %.1, %bb.s ]
  call void @read_stream_end(ptr noundef %i.af) #6
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.aa, ptr %i.ce, align 4
  %i.cf = load ptr, ptr %0, align 8
  call void @ginUpdateStats(ptr noundef %i.cf, ptr noundef nonnull %3, i1 noundef zeroext false) #6
  %i.cg = load ptr, ptr %0, align 8
  call void @IndexFreeSpaceMapVacuum(ptr noundef %i.cg) #6
  %i.ch = getelementptr inbounds nuw i8, ptr %.058, i64 32
  store i32 %.0.lcssa, ptr %i.ch, align 8
  br i1 %i.ab, label %bb.t, label %.critedge

bb.t:                                             ; preds = %._crit_edge.a
  call void @LockRelationForExtension(ptr noundef nonnull %i.a, i32 noundef 7) #6
  %i.ci = call i32 @RelationGetNumberOfBlocksInFork(ptr noundef nonnull %i.a, i32 noundef 0) #6
  store i32 %i.ci, ptr %.058, align 8
  call void @UnlockRelationForExtension(ptr noundef nonnull %i.a, i32 noundef 7) #6
  br label %bb.u

.critedge:                                        ; preds = %._crit_edge.a
  %i.cj = call i32 @RelationGetNumberOfBlocksInFork(ptr noundef nonnull %i.a, i32 noundef 0) #6
  store i32 %i.cj, ptr %.058, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.critedge, %bb.b, %bb.c
  %.059 = phi ptr [ %1, %bb.b ], [ %1, %bb.c ], [ %.058, %.critedge ], [ %.058, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret ptr %.059
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare void @LockRelationForExtension(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @RelationGetNumberOfBlocksInFork(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @UnlockRelationForExtension(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @read_stream_begin_relation(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @block_range_read_stream_cb(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @read_stream_next_buffer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @GinPageIsRecyclable(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 14
  %.val = load i16, ptr %i.a, align 2
  %i.b = icmp eq i16 %.val, 0
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i16, ptr %i.c, align 8
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.h = load i16, ptr %i.g, align 2
  %i.i = and i16 %i.h, 4
  %.not = icmp eq i16 %i.i, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %.not8 = icmp eq i32 %i.k, 0
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call zeroext i1 @GlobalVisCheckRemovableXid(ptr noundef null, i32 noundef %i.k) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i1 [ true, %bb.a ], [ %i.l, %bb.d ], [ false, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

declare void @RecordFreeIndexPage(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @read_stream_end(ptr noundef) local_unnamed_addr #2

declare void @ginUpdateStats(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @IndexFreeSpaceMapVacuum(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @GlobalVisCheckRemovableXid(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @UnlockBuffer(i32 noundef) local_unnamed_addr #2

declare void @LockBufferInternal(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ginPostingListDecode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @pfree(ptr noundef) local_unnamed_addr #2

declare ptr @ginCompressPostingList(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PageGetTempPageCopy(ptr noundef) local_unnamed_addr #2

declare zeroext i16 @gintuple_get_attrnum(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @gintuple_get_key(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GinFormTuple(ptr noundef, i16 noundef zeroext, i64 noundef, i8 noundef signext, ptr noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @PageIndexTupleDelete(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

declare zeroext i16 @PageAddItemExtended(ptr noundef, ptr noundef, i64 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @XLogBeginInsert() local_unnamed_addr #2

declare void @XLogRegisterBuffer(i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i64 @XLogInsert(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @LockBufferForCleanup(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @ginScanPostingTreeToDelete(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ginxlogDeletePage, align 4  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 12 uses
  %i.c = icmp slt i32 %i.b, 0                     ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.e = xor i32 %i.b, -1
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8
  br label %BufferGetPage.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @BufferBlocks, align 8
  %i.j = add nsw i32 %i.b, -1
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 13
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  br label %BufferGetPage.exit

BufferGetPage.exit:                               ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.h, %bb.b ], [ %i.m, %bb.c ] ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16 ; 4 uses
  %i.o = load i16, ptr %i.n, align 8
  %i.p = zext i16 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  %i.s = load i16, ptr %i.r, align 2
  %i.t = and i16 %i.s, 2
  %.not = icmp eq i16 %i.t, 0
  br i1 %.not, label %.preheader, label %bb.i

.preheader:                                       ; preds = %BufferGetPage.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.v = load i16, ptr %i.u, align 4
  %.not6880 = icmp eq i16 %i.v, 0
  br i1 %.not6880, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.w = getelementptr i8, ptr %.0.i.i, i64 22
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 9688
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.081 = phi i16 [ 1, %.lr.ph ], [ %spec.select, %bb.f ] ; 3 uses
  %i.y = zext i16 %.081 to i64
  %i.z = mul nuw nsw i64 %i.y, 10
  %i.aa = getelementptr i8, ptr %i.w, i64 %i.z    ; 2 uses
  %i.ab = load ptr, ptr %0, align 8
  %.val = load i16, ptr %i.aa, align 2
  %i.ac = getelementptr i8, ptr %i.aa, i64 2
  %.val72 = load i16, ptr %i.ac, align 2
  %i.ad = zext i16 %.val to i32
  %i.ae = shl nuw i32 %i.ad, 16
  %i.af = zext i16 %.val72 to i32
  %i.ag = or disjoint i32 %i.ae, %i.af
  %i.ah = load ptr, ptr %i.x, align 8
  %i.ai = tail call i32 @ReadBufferExtended(ptr noundef %i.ab, i32 noundef 0, i32 noundef %i.ag, i32 noundef 0, ptr noundef %i.ah) #6 ; 2 uses
  tail call void @LockBufferInternal(i32 noundef %i.ai, i32 noundef 3) #6
  %i.aj = load ptr, ptr %1, align 8               ; 2 uses
  %.not69 = icmp eq ptr %i.aj, null
  br i1 %.not69, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ak = tail call ptr @palloc0(i64 noundef 32) #6 ; 2 uses
  store ptr %i.ak, ptr %1, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %1, ptr %i.al, align 8
end_hunk_0
