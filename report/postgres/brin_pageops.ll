Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/brin_pageops?download=true
inline.NumInlined: 94
inline.NumDeleted: 16
begin_hunk_0_@brin_doinsert:bb.a
  %i.bk = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.3) #5 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 412, ptr noundef nonnull @__func__.brin_doinsert) #5
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bl = load i32, ptr %3, align 4
  tail call void @MarkBufferDirty(i32 noundef %i.bl) #5
  br i1 %i.bb, label %bb.q, label %br_page_get_freespace.exit63

bb.q:                                             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i.i59, i64 16
  %i.bn = load i16, ptr %i.bm, align 8
  %i.bo = zext i16 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i.i59, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 6
  %i.br = load i16, ptr %i.bq, align 2
  %i.bs = icmp eq i16 %i.br, -3949
  br i1 %i.bs, label %bb.r, label %br_page_get_freespace.exit63

bb.r:                                             ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bu = load i16, ptr %i.bt, align 2
  %i.bv = and i16 %i.bu, 1
  %.not.i62 = icmp eq i16 %i.bv, 0
  br i1 %.not.i62, label %bb.s, label %br_page_get_freespace.exit63

bb.s:                                             ; preds = %bb.r
  %i.bw = tail call i64 @PageGetFreeSpace(ptr noundef nonnull %.0.i.i59) #5
  br label %br_page_get_freespace.exit63

br_page_get_freespace.exit63:                     ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.0 = phi i64 [ 0, %bb.p ], [ %i.bw, %bb.s ], [ 0, %bb.r ], [ 0, %bb.q ]
  %i.bx = lshr i32 %i.ax, 16
  %.sroa.5.0.insert.ext = zext i16 %i.bh to i48
  %.sroa.5.0.insert.shift = shl nuw i48 %.sroa.5.0.insert.ext, 32
  %i.by = shl i32 %i.ax, 16
  %.sroa.4.0.insert.shift = zext i32 %i.by to i48
  %.sroa.4.0.insert.insert = or disjoint i48 %.sroa.5.0.insert.shift, %.sroa.4.0.insert.shift
  %.sroa.0.0.insert.ext = zext nneg i32 %i.bx to i48
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.4.0.insert.insert, %.sroa.0.0.insert.ext
  tail call void @brinSetHeapBlockItemptr(i32 noundef %i.ak, i32 noundef %1, i32 noundef %4, i48 %.sroa.0.0.insert.insert) #5
  tail call void @MarkBufferDirty(i32 noundef %i.ak) #5
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 118
  %i.cc = load i8, ptr %i.cb, align 2
  %i.cd = icmp eq i8 %i.cc, 112
  br i1 %i.cd, label %bb.t, label %bb.z

bb.t:                                             ; preds = %br_page_get_freespace.exit63
  %i.ce = load i32, ptr @wal_level, align 4
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ch = load i32, ptr %i.cg, align 8
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ck = load i32, ptr %i.cj, align 8
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  %i.cm = shl nuw i8 %i.ba, 7
  %i.cn = or disjoint i8 %i.cm, 16
  store i32 %4, ptr %7, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %1, ptr %i.co, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i16 %i.bh, ptr %i.cp, align 4
  tail call void @XLogBeginInsert() #5
  call void @XLogRegisterData(ptr noundef nonnull %7, i32 noundef 10) #5
  %i.cq = load i32, ptr %3, align 4
  %i.cr = select i1 %i.bb, i8 14, i8 8
  call void @XLogRegisterBuffer(i8 noundef zeroext 0, i32 noundef %i.cq, i8 noundef zeroext %i.cr) #5
  %i.cs = trunc nuw nsw i64 %6 to i32
  call void @XLogRegisterBufData(i8 noundef zeroext 0, ptr noundef %5, i32 noundef %i.cs) #5
  call void @XLogRegisterBuffer(i8 noundef zeroext 1, i32 noundef %i.ak, i8 noundef zeroext 0) #5
  %i.ct = call i64 @XLogInsert(i8 noundef zeroext 17, i8 noundef zeroext %i.cn) #5 ; 2 uses
  %i.cu = call i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 32) ; 2 uses
  store volatile i64 %i.cu, ptr %.0.i.i59, align 8
  %i.cv = icmp slt i32 %i.ak, 0
  br i1 %i.cv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cw = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.cx = xor i32 %i.ak, -1
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8
  br label %BufferGetPage.exit65

bb.y:                                             ; preds = %bb.w
  %i.db = load ptr, ptr @BufferBlocks, align 8
  %i.dc = add nsw i32 %i.ak, -1
  %i.dd = sext i32 %i.dc to i64
  %i.de = shl nsw i64 %i.dd, 13
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.de
  br label %BufferGetPage.exit65

BufferGetPage.exit65:                             ; preds = %bb.x, %bb.y
  %.0.i.i64 = phi ptr [ %i.da, %bb.x ], [ %i.df, %bb.y ]
  store volatile i64 %i.cu, ptr %.0.i.i64, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  br label %bb.z

bb.z:                                             ; preds = %br_page_get_freespace.exit63, %bb.u, %bb.v, %BufferGetPage.exit65
  %i.dg = load volatile i32, ptr @CritSectionCount, align 4
  %i.dh = add i32 %i.dg, -1
  store volatile i32 %i.dh, ptr @CritSectionCount, align 4
  %i.di = load i32, ptr %3, align 4
  call void @UnlockBuffer(i32 noundef %i.di) #5
  call void @UnlockBuffer(i32 noundef %i.ak) #5
  br i1 %i.bb, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @RecordPageWithFreeSpace(ptr noundef nonnull %0, i32 noundef %i.ax, i64 noundef %.0) #5
  %i.dj = add i32 %i.ax, 1
  call void @FreeSpaceMapVacuumRange(ptr noundef nonnull %0, i32 noundef %i.ax, i32 noundef %i.dj) #5
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i16 %i.bh
}

declare void @PageInit(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @brin_metapage_init(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  tail call void @PageInit(ptr noundef %0, i64 noundef 8192, i64 noundef 8) #5
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i16, ptr %i.a, align 8
  %i.c = zext i16 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  store i16 -3951, ptr %i.e, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 -1475306246, ptr %i.f, align 8
  %i.g = zext i16 %2 to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.g, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 40, ptr %i.k, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @brin_start_evacuating_page(ptr nofree noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.c = xor i32 %1, -1
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8
  br label %BufferGetPage.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @BufferBlocks, align 8
  %i.h = add nsw i32 %1, -1
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 13
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.j
  br label %BufferGetPage.exit

BufferGetPage.exit:                               ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.f, %bb.b ], [ %i.k, %bb.c ] ; 5 uses
  %i.l = getelementptr i8, ptr %.0.i.i, i64 14
  %.val17 = load i16, ptr %i.l, align 2
  %i.m = icmp eq i16 %.val17, 0
  br i1 %i.m, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %BufferGetPage.exit
  %i.n = getelementptr i8, ptr %.0.i.i, i64 12
  %.val = load i16, ptr %i.n, align 4             ; 2 uses
  %i.o = icmp ult i16 %.val, 25
  %i.p = zext i16 %.val to i32
  %i.q = add nuw nsw i32 %i.p, 262120
  %i.r = lshr i32 %i.q, 2
  %i.s = trunc i32 %i.r to i16                    ; 2 uses
  %.not1820 = icmp eq i16 %i.s, 0
  %.not18 = select i1 %i.o, i1 true, i1 %.not1820
  br i1 %.not18, label %.loopexit, label %.critedge.lr.ph

.critedge.lr.ph:                                  ; preds = %bb.d
  %i.t = getelementptr i8, ptr %.0.i.i, i64 20
  br label %.critedge

bb.e:                                             ; preds = %.critedge
  %2 = add i16 %.01419, 1                         ; 2 uses
  %.not = icmp ugt i16 %2, %i.s
  br i1 %.not, label %.loopexit, label %.critedge, !llvm.loop !10

.critedge:                                        ; preds = %.critedge.lr.ph, %bb.e
  %.01419 = phi i16 [ 1, %.critedge.lr.ph ], [ %2, %bb.e ] ; 2 uses
  %3 = zext i16 %.01419 to i64
  %i.u = getelementptr [4 x i8], ptr %i.t, i64 %3
  %i.v = load i32, ptr %i.u, align 4
  %i.w = and i32 %i.v, 98304
  %.not16 = icmp eq i32 %i.w, 0
  br i1 %.not16, label %bb.e, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.y = load i16, ptr %i.x, align 8
  %i.z = zext i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = or i16 %i.ac, 1
  store i16 %i.ad, ptr %i.ab, align 2
  tail call void @MarkBufferDirtyHint(i32 noundef %1, i1 noundef zeroext true) #5
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.d, %bb.f, %BufferGetPage.exit
  %.2 = phi i1 [ false, %BufferGetPage.exit ], [ true, %bb.f ], [ false, %bb.d ], [ false, %bb.e ]
  ret i1 %.2
}

declare void @MarkBufferDirtyHint(i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @brin_evacuate_page(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8
  %i.b = icmp slt i32 %3, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.d = xor i32 %3, -1
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8
  br label %BufferGetPage.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @BufferBlocks, align 8
  %i.i = add nsw i32 %3, -1
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 13
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.k
  br label %BufferGetPage.exit

BufferGetPage.exit:                               ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.g, %bb.b ], [ %i.l, %bb.c ] ; 5 uses
  %i.m = getelementptr i8, ptr %.0.i.i, i64 12
  %.val = load i16, ptr %i.m, align 4             ; 2 uses
  %i.n = icmp ult i16 %.val, 25
  %i.o = zext i16 %.val to i32
  %i.p = add nuw nsw i32 %i.o, 262120
  %i.q = lshr i32 %i.p, 2
  %i.r = trunc i32 %i.q to i16                    ; 2 uses
  %.not3942 = icmp eq i16 %i.r, 0
  %.not39 = select i1 %i.n, i1 true, i1 %.not3942
  br i1 %.not39, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %BufferGetPage.exit
  %i.s = getelementptr i8, ptr %.0.i.i, i64 20
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %select.unfold
  %.03140 = phi i16 [ 1, %.lr.ph ], [ %i.ao, %select.unfold ] ; 4 uses
  %i.u = load volatile i32, ptr @InterruptPending, align 4
  %.not32 = icmp eq i32 %i.u, 0
  br i1 %.not32, label %bb.f, label %bb.e, !prof !6

bb.e:                                             ; preds = %bb.d
  call void @ProcessInterrupts() #5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = zext i16 %.03140 to i64
  %i.w = getelementptr [4 x i8], ptr %i.s, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4              ; 3 uses
  %i.y = and i32 %i.x, 98304
  %.not33 = icmp eq i32 %i.y, 0
  br i1 %.not33, label %select.unfold, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = lshr i32 %i.x, 17
  %i.aa = zext nneg i32 %i.z to i64               ; 3 uses
  %i.ab = and i32 %i.x, 32767
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.ac
  %i.ae = call ptr @brin_copy_tuple(ptr noundef %i.ad, i64 noundef %i.aa, ptr noundef null, ptr noundef nonnull %i.a) #5 ; 3 uses
  call void @UnlockBuffer(i32 noundef %3) #5
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = call zeroext i1 @brin_doupdate(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %i.af, i32 noundef %3, i16 noundef zeroext %.03140, ptr noundef nonnull %i.ae, i64 noundef %i.aa, ptr noundef nonnull %i.ae, i64 noundef %i.aa, i1 noundef zeroext false)
  %not. = xor i1 %i.ag, true
  %i.ah = sext i1 %not. to i16
  %spec.select = add i16 %.03140, %i.ah
  call void @LockBufferInternal(i32 noundef %3, i32 noundef 1) #5
  %i.ai = load i16, ptr %i.t, align 8
  %i.aj = zext i16 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 6
  %i.am = load i16, ptr %i.al, align 2
  %i.an = icmp eq i16 %i.am, -3949
  br i1 %i.an, label %select.unfold, label %._crit_edge

select.unfold:                                    ; preds = %bb.g, %bb.f
  %.3.ph = phi i16 [ %.03140, %bb.f ], [ %spec.select, %bb.g ]
  %i.ao = add i16 %.3.ph, 1                       ; 2 uses
  %.not = icmp ugt i16 %i.ao, %i.r
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !11

._crit_edge:                                      ; preds = %select.unfold, %bb.g, %BufferGetPage.exit
  call void @UnlockReleaseBuffer(i32 noundef %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

declare void @ProcessInterrupts() local_unnamed_addr #3

declare ptr @brin_copy_tuple(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @brin_page_cleanup(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %1, 0                       ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.c = xor i32 %1, -1
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8
  br label %BufferGetPage.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @BufferBlocks, align 8
  %i.h = add nsw i32 %1, -1
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 13
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.j
  br label %BufferGetPage.exit

BufferGetPage.exit:                               ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.f, %bb.b ], [ %i.k, %bb.c ] ; 4 uses
  %i.l = getelementptr i8, ptr %.0.i.i, i64 14    ; 2 uses
  %.val18 = load i16, ptr %i.l, align 2
  %i.m = icmp eq i16 %.val18, 0
  br i1 %i.m, label %bb.d, label %bb.g

bb.d:                                             ; preds = %BufferGetPage.exit
  tail call void @LockRelationForExtension(ptr noundef %0, i32 noundef 5) #5
  tail call void @UnlockRelationForExtension(ptr noundef %0, i32 noundef 5) #5
  tail call void @LockBufferInternal(i32 noundef %1, i32 noundef 3) #5
  %.val = load i16, ptr %i.l, align 2
  %i.n = icmp eq i16 %.val, 0
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @brin_initialize_empty_new_buffer(ptr noundef %0, i32 noundef %1)
  tail call void @UnlockBuffer(i32 noundef %1) #5
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  tail call void @UnlockBuffer(i32 noundef %1) #5
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %BufferGetPage.exit
  br i1 %i.a, label %BufferGetPage.exit22, label %BufferGetPage.exit22.thread

BufferGetPage.exit22:                             ; preds = %bb.g
  %i.o = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.p = xor i32 %1, -1
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i16, ptr %i.t, align 8
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 6
  %i.y = load i16, ptr %i.x, align 2              ; 2 uses
  %i.z = icmp eq i16 %i.y, -3951
  br i1 %i.z, label %bb.k, label %BufferGetPage.exit26

BufferGetPage.exit22.thread:                      ; preds = %bb.g
  %i.aa = load ptr, ptr @BufferBlocks, align 8
  %i.ab = add nsw i32 %1, -1
  %i.ac = sext i32 %i.ab to i64
  %i.ad = shl nsw i64 %i.ac, 13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i16, ptr %i.af, align 8
  %i.ah = zext i16 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 6
  %i.ak = load i16, ptr %i.aj, align 2            ; 2 uses
  %i.al = icmp eq i16 %i.ak, -3951
end_hunk_0
