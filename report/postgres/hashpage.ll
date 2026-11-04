Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/hashpage?download=true
inline.NumInlined: 137
inline.NumDeleted: 20
begin_hunk_0_@_hash_expandtable:bb.a
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fw = load i32, ptr %i.fv, align 8
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %bb.aj, label %bb.ap

bb.aj:                                            ; preds = %bb.ai
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fz = load i32, ptr %i.fy, align 8
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %bb.aj, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store i32 %i.eb, ptr %3, align 4
  %i.gb = load i16, ptr %i.es, align 4
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i16 %i.gb, ptr %i.gc, align 4
  %i.gd = load i16, ptr %i.fm, align 4
  %i.ge = getelementptr inbounds nuw i8, ptr %3, i64 6
  store i16 %i.gd, ptr %i.ge, align 2
  %i.gf = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i8 0, ptr %i.gf, align 4
  call void @XLogBeginInsert() #8
  call void @XLogRegisterBuffer(i8 noundef zeroext 0, i32 noundef %i.am, i8 noundef zeroext 8) #8
  call void @XLogRegisterBuffer(i8 noundef zeroext 1, i32 noundef %i.dm, i8 noundef zeroext 6) #8
  call void @XLogRegisterBuffer(i8 noundef zeroext 2, i32 noundef %1, i8 noundef zeroext 8) #8
  br i1 %i.ds, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i8 1, ptr %i.gf, align 4
  call void @XLogRegisterBufData(i8 noundef zeroext 2, ptr noundef nonnull %i.x, i32 noundef 4) #8
  call void @XLogRegisterBufData(i8 noundef zeroext 2, ptr noundef nonnull %i.dq, i32 noundef 4) #8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.gg = phi i8 [ 3, %bb.al ], [ 2, %bb.ak ]
  br i1 %i.dv, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i8 %i.gg, ptr %i.gf, align 4
  call void @XLogRegisterBufData(i8 noundef zeroext 2, ptr noundef nonnull %i.ca, i32 noundef 4) #8
  %i.gh = load i32, ptr %i.ca, align 4
  %i.gi = zext i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.gi
  call void @XLogRegisterBufData(i8 noundef zeroext 2, ptr noundef nonnull %i.gj, i32 noundef 4) #8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  call void @XLogRegisterData(ptr noundef nonnull %3, i32 noundef 9) #8
  %i.gk = call i64 @XLogInsert(i8 noundef zeroext 12, i8 noundef zeroext 64) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %bb.aq

bb.ap:                                            ; preds = %bb.aj, %bb.ai, %BufferGetPage.exit169
  %i.gl = call i64 @XLogGetFakeLSN(ptr noundef nonnull %0) #8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.0151 = phi i64 [ %i.gk, %bb.ao ], [ %i.gl, %bb.ap ] ; 2 uses
  br i1 %i.ao, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.gm = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.gn = xor i32 %i.am, -1
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.go
  %i.gq = load ptr, ptr %i.gp, align 8
  br label %BufferGetPage.exit171

bb.as:                                            ; preds = %bb.aq
  %i.gr = load ptr, ptr @BufferBlocks, align 8
  %i.gs = add nsw i32 %i.am, -1
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = shl nuw nsw i64 %i.gt, 13
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gu
  br label %BufferGetPage.exit171

BufferGetPage.exit171:                            ; preds = %bb.ar, %bb.as
  %.0.i.i170 = phi ptr [ %i.gq, %bb.ar ], [ %i.gv, %bb.as ]
  %i.gw = call i64 @llvm.fshl.i64(i64 %.0151, i64 %.0151, i64 32) ; 3 uses
  store volatile i64 %i.gw, ptr %.0.i.i170, align 8
  br i1 %i.ev, label %bb.at, label %bb.au

bb.at:                                            ; preds = %BufferGetPage.exit171
  %i.gx = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.gy = xor i32 %i.dm, -1
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.gz
  %i.hb = load ptr, ptr %i.ha, align 8
  br label %BufferGetPage.exit173

bb.au:                                            ; preds = %BufferGetPage.exit171
  %i.hc = load ptr, ptr @BufferBlocks, align 8
  %i.hd = add nsw i32 %i.dm, -1
  %i.he = sext i32 %i.hd to i64
  %i.hf = shl nsw i64 %i.he, 13
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.hf
  br label %BufferGetPage.exit173

BufferGetPage.exit173:                            ; preds = %bb.at, %bb.au
  %.0.i.i172 = phi ptr [ %i.hb, %bb.at ], [ %i.hg, %bb.au ]
  store volatile i64 %i.gw, ptr %.0.i.i172, align 8
  br i1 %i.a, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %BufferGetPage.exit173
  %i.hh = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.f
  %i.hj = load ptr, ptr %i.hi, align 8
  br label %BufferGetPage.exit175

bb.aw:                                            ; preds = %BufferGetPage.exit173
  %i.hk = load ptr, ptr @BufferBlocks, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.d
  br label %BufferGetPage.exit175

BufferGetPage.exit175:                            ; preds = %bb.av, %bb.aw
  %.0.i.i174 = phi ptr [ %i.hj, %bb.av ], [ %i.hl, %bb.aw ]
  store volatile i64 %i.gw, ptr %.0.i.i174, align 8
  %i.hm = load volatile i32, ptr @CritSectionCount, align 4
  %i.hn = add i32 %i.hm, -1
  store volatile i32 %i.hn, ptr @CritSectionCount, align 4
  call void @UnlockBuffer(i32 noundef %1) #8
  call fastcc void @_hash_splitbucket(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.z, i32 noundef %i.s, i32 noundef %i.am, i32 noundef %i.dm, ptr noundef null, i32 noundef %i.eb, i32 noundef %i.ec, i32 noundef %i.ed)
  call void @ReleaseBuffer(i32 noundef %i.am) #8
  call void @ReleaseBuffer(i32 noundef %i.dm) #8
  br label %bb.ax

.loopexit:                                        ; preds = %_hash_getbuf_with_condlock_cleanup.exit, %BufferGetPage.exit, %bb.v, %_hash_getbuf_with_condlock_cleanup.exit.thread, %bb.x
  call void @UnlockBuffer(i32 noundef %1) #8
  br label %bb.ax

bb.ax:                                            ; preds = %.loopexit, %BufferGetPage.exit175
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_hash_finish_split(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.HASHCTL, align 8            ; 6 uses
  %i.a = alloca i8, align 1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 6, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 6, ptr %i.c, align 8
  %i.d = load ptr, ptr @CurrentMemoryContext, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 64
  store ptr %i.d, ptr %i.e, align 8
  %i.f = call ptr @hash_create(ptr noundef nonnull @.str.6, i64 noundef 256, ptr noundef nonnull %7, i32 noundef 1064) #8 ; 3 uses
  %i.g = call i32 @_hash_get_newblock_from_oldbucket(ptr noundef %0, i32 noundef %3) #8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %.052 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.i ]
  %.051 = phi i32 [ %i.g, %bb.a ], [ %i.am, %bb.i ] ; 3 uses
  %i.h = icmp eq i32 %.051, -1
  br i1 %i.h, label %bb.c, label %_hash_getbuf.exit

bb.c:                                             ; preds = %bb.b
  %i.i = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.j = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 75, ptr noundef nonnull @__func__._hash_getbuf) #8
  unreachable

_hash_getbuf.exit:                                ; preds = %bb.b
  %i.k = call i32 @ReadBuffer(ptr noundef %0, i32 noundef %.051) #8 ; 9 uses
  call void @LockBufferInternal(i32 noundef %i.k, i32 noundef range(i32 0, -1) 1) #8
  call void @_hash_checkpage(ptr noundef %0, i32 noundef %i.k, i32 noundef 3) #8
  %i.l = icmp eq i32 %.051, %i.g
  %spec.select = select i1 %i.l, i32 %i.k, i32 %.052 ; 8 uses
  %i.m = icmp slt i32 %i.k, 0
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_hash_getbuf.exit
  %i.n = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.o = xor i32 %i.k, -1
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8
  br label %BufferGetPage.exit

bb.e:                                             ; preds = %_hash_getbuf.exit
  %i.s = load ptr, ptr @BufferBlocks, align 8
  %i.t = add nsw i32 %i.k, -1
  %i.u = sext i32 %i.t to i64
  %i.v = shl nsw i64 %i.u, 13
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v
  br label %BufferGetPage.exit

BufferGetPage.exit:                               ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.r, %bb.d ], [ %i.w, %bb.e ] ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.y = load i16, ptr %i.x, align 8
  %i.z = zext i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.z
  %i.ab = getelementptr i8, ptr %.0.i.i, i64 12
  %.val = load i16, ptr %i.ab, align 4            ; 2 uses
  %i.ac = icmp ult i16 %.val, 25
  %i.ad = zext i16 %.val to i32
  %i.ae = add nuw nsw i32 %i.ad, 262120           ; 2 uses
  %8 = and i32 %i.ae, 262140
  %.not6062 = icmp eq i32 %8, 0
  %.not60 = select i1 %i.ac, i1 true, i1 %.not6062
  br i1 %.not60, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %BufferGetPage.exit
  %9 = lshr i32 %i.ae, 2
  %i.af = getelementptr i8, ptr %.0.i.i, i64 20
  %10 = and i32 %9, 65535
  %11 = add nuw nsw i32 %10, 1
  %wide.trip.count = zext nneg i32 %11 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.ag = getelementptr [4 x i8], ptr %i.af, i64 %indvars.iv
  %.val56 = load i32, ptr %i.ag, align 4
  %i.ah = and i32 %.val56, 32767
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.ai
  %i.ak = call ptr @hash_search(ptr noundef %i.f, ptr noundef %i.aj, i32 noundef 1, ptr noundef nonnull %i.a) #8 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %._crit_edge, label %bb.f, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.f, %BufferGetPage.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  %i.an = icmp eq i32 %i.k, %spec.select
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  call void @UnlockBuffer(i32 noundef %i.k) #8
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge
  call void @UnlockReleaseBuffer(i32 noundef %i.k) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not59 = icmp eq i32 %i.am, -1
  br i1 %.not59, label %bb.j, label %bb.b

bb.j:                                             ; preds = %bb.i
  %i.ao = call zeroext i1 @ConditionalLockBufferForCleanup(i32 noundef %2) #8
  br i1 %i.ao, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.ap = call zeroext i1 @ConditionalLockBufferForCleanup(i32 noundef %spec.select) #8
  br i1 %i.ap, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @UnlockBuffer(i32 noundef %2) #8
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.aq = icmp slt i32 %spec.select, 0
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ar = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.as = xor i32 %spec.select, -1
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8
  br label %BufferGetPage.exit58

bb.o:                                             ; preds = %bb.m
  %i.aw = load ptr, ptr @BufferBlocks, align 8
  %i.ax = add nsw i32 %spec.select, -1
  %i.ay = sext i32 %i.ax to i64
  %i.az = shl nsw i64 %i.ay, 13
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.az
  br label %BufferGetPage.exit58

BufferGetPage.exit58:                             ; preds = %bb.n, %bb.o
  %.0.i.i57 = phi ptr [ %i.av, %bb.n ], [ %i.ba, %bb.o ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i57, i64 16
  %i.bc = load i16, ptr %i.bb, align 8
  %i.bd = zext i16 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i.i57, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i32, ptr %i.bf, align 4
  call fastcc void @_hash_splitbucket(ptr noundef %0, i32 noundef %1, i32 noundef %3, i32 noundef %i.bg, i32 noundef %2, i32 noundef %spec.select, ptr noundef %i.f, i32 noundef %4, i32 noundef %5, i32 noundef %6)
  call void @ReleaseBuffer(i32 noundef %spec.select) #8
  br label %bb.p

bb.p:                                             ; preds = %bb.j, %BufferGetPage.exit58, %bb.l
  call void @hash_destroy(ptr noundef %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  ret void
}

declare void @hashbucketcleanup(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @IsBufferCleanupOK(i32 noundef) local_unnamed_addr #3

declare void @XLogRegisterBufData(i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @XLogGetFakeLSN(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @_hash_splitbucket(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) unnamed_addr #0 {
bb.a:
  %i.a = alloca [408 x i16], align 16             ; 4 uses
  %i.b = alloca [408 x ptr], align 16             ; 7 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %10 = alloca %struct.xl_hash_split_complete, align 2 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.d = icmp slt i32 %4, 0                       ; 3 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.f = xor i32 %4, -1
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8
  br label %BufferGetPage.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr @BufferBlocks, align 8
  %i.k = add nsw i32 %4, -1
  %i.l = sext i32 %i.k to i64
  %i.m = shl nsw i64 %i.l, 13
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.m
  br label %BufferGetPage.exit

BufferGetPage.exit:                               ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.i, %bb.b ], [ %i.n, %bb.c ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.p = load i16, ptr %i.o, align 8
  %i.q = zext i16 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.q
  %i.s = icmp slt i32 %5, 0                       ; 3 uses
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %BufferGetPage.exit
  %i.t = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.u = xor i32 %5, -1
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8
  br label %BufferGetPage.exit160

bb.e:                                             ; preds = %BufferGetPage.exit
  %i.y = load ptr, ptr @BufferBlocks, align 8
  %i.z = add nsw i32 %5, -1
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 13
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ab
  br label %BufferGetPage.exit160

BufferGetPage.exit160:                            ; preds = %bb.d, %bb.e
  %.0.i.i159 = phi ptr [ %i.x, %bb.d ], [ %i.ac, %bb.e ]
  %i.ad = tail call i32 @BufferGetBlockNumber(i32 noundef %4) #8
  %i.ae = tail call i32 @BufferGetBlockNumber(i32 noundef %5) #8
  tail call void @PredicateLockPageSplit(ptr noundef %0, i32 noundef %i.ad, i32 noundef %i.ae) #8
  %.not157 = icmp eq ptr %6, null
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.aj, %BufferGetPage.exit160
  %.0150 = phi i32 [ %5, %BufferGetPage.exit160 ], [ %.1151.lcssa, %bb.aj ] ; 2 uses
  %.0148 = phi i32 [ %4, %BufferGetPage.exit160 ], [ %i.em, %bb.aj ] ; 2 uses
  %.0146 = phi ptr [ %.0.i.i, %BufferGetPage.exit160 ], [ %.0.i.i166, %bb.aj ] ; 3 uses
  %.0141 = phi ptr [ %.0.i.i159, %BufferGetPage.exit160 ], [ %.1142.lcssa, %bb.aj ] ; 2 uses
  %.0139 = phi ptr [ %i.r, %BufferGetPage.exit160 ], [ %i.fb, %bb.aj ]
  %.0134 = phi i64 [ 0, %BufferGetPage.exit160 ], [ %.1135.lcssa, %bb.aj ] ; 2 uses
  %.0131 = phi i16 [ 0, %BufferGetPage.exit160 ], [ %.1.lcssa, %bb.aj ] ; 2 uses
  %i.ai = getelementptr i8, ptr %.0146, i64 12
  %.0146.val = load i16, ptr %i.ai, align 4       ; 2 uses
  %i.aj = icmp ult i16 %.0146.val, 25
  %i.ak = zext i16 %.0146.val to i32
  %i.al = add nuw nsw i32 %i.ak, 262120           ; 2 uses
  %11 = and i32 %i.al, 262140
  %.not182198 = icmp eq i32 %11, 0
  %.not182 = select i1 %i.aj, i1 true, i1 %.not182198
  br i1 %.not182, label %._crit_edge190, label %.lr.ph189

.lr.ph189:                                        ; preds = %bb.f
  %12 = lshr i32 %i.al, 2
  %i.am = getelementptr i8, ptr %.0146, i64 20
  %13 = and i32 %12, 65535
  %14 = add nuw nsw i32 %13, 1
  %wide.trip.count205 = zext nneg i32 %14 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph189, %bb.t
  %indvars.iv202 = phi i64 [ 1, %.lr.ph189 ], [ %indvars.iv.next203, %bb.t ] ; 2 uses
  %.1186 = phi i16 [ %.0131, %.lr.ph189 ], [ %.4, %bb.t ] ; 8 uses
  %.1135185 = phi i64 [ %.0134, %.lr.ph189 ], [ %.4138, %bb.t ] ; 5 uses
  %.1142184 = phi ptr [ %.0141, %.lr.ph189 ], [ %.4145, %bb.t ] ; 5 uses
  %.1151183 = phi i32 [ %.0150, %.lr.ph189 ], [ %.4154, %bb.t ] ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i8 0, ptr %i.c, align 1
  %i.an = getelementptr [4 x i8], ptr %i.am, i64 %indvars.iv202
  %i.ao = load i32, ptr %i.an, align 4            ; 2 uses
  %i.ap = and i32 %i.ao, 98304
  %i.aq = icmp eq i32 %i.ap, 98304
  br i1 %i.aq, label %bb.t, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = and i32 %i.ao, 32767
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %.0146, i64 %i.as ; 3 uses
  br i1 %.not157, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = call ptr @hash_search(ptr noundef nonnull %6, ptr noundef %i.at, i32 noundef 0, ptr noundef nonnull %i.c) #8 ; 0 uses
  %.pre = load i8, ptr %i.c, align 1, !range !14
  %i.av = trunc nuw i8 %.pre to i1
  br i1 %i.av, label %bb.t, label %.thread

.thread:                                          ; preds = %bb.h, %bb.i
  %i.aw = call i32 @_hash_get_indextuple_hashkey(ptr noundef %i.at) #8
  %i.ax = call i32 @_hash_hashkey2bucket(i32 noundef %i.aw, i32 noundef %7, i32 noundef %8, i32 noundef %9) #8
  %i.ay = icmp eq i32 %i.ax, %3
  br i1 %i.ay, label %bb.j, label %bb.t

bb.j:                                             ; preds = %.thread
  %i.az = call ptr @CopyIndexTuple(ptr noundef %i.at) #8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 6 ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 2            ; 2 uses
  %i.bc = or i16 %i.bb, 8192
  store i16 %i.bc, ptr %i.ba, align 2
  %i.bd = and i16 %i.bb, 8191
  %narrow = add nuw nsw i16 %i.bd, 7
  %i.be = and i16 %narrow, 16376
  %i.bf = zext nneg i16 %i.be to i64              ; 2 uses
  %i.bg = zext i16 %.1186 to i32
  %i.bh = add nuw nsw i32 %i.bg, 1
  %i.bi = call i64 @PageGetFreeSpaceForMultipleTuples(ptr noundef %.1142184, i32 noundef %i.bh) #8
  %i.bj = add i64 %.1135185, %i.bf
  %i.bk = icmp ult i64 %i.bi, %i.bj
  br i1 %i.bk, label %bb.k, label %BufferGetPage.exit162

bb.k:                                             ; preds = %bb.j
  %i.bl = load volatile i32, ptr @CritSectionCount, align 4
  %i.bm = add i32 %i.bl, 1
  store volatile i32 %i.bm, ptr @CritSectionCount, align 4
  call void @_hash_pgaddmultitup(ptr noundef %0, i32 noundef %.1151183, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i16 noundef zeroext %.1186) #8
  call void @MarkBufferDirty(i32 noundef %.1151183) #8
  %i.bn = load ptr, ptr %i.af, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 118
  %i.bp = load i8, ptr %i.bo, align 2
  %i.bq = icmp eq i8 %i.bp, 112
  br i1 %i.bq, label %bb.l, label %log_split_page.exit

bb.l:                                             ; preds = %bb.k
  %i.br = load i32, ptr @wal_level, align 4
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bt = load i32, ptr %i.ag, align 8
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.n, label %log_split_page.exit

bb.n:                                             ; preds = %bb.m
  %i.bv = load i32, ptr %i.ah, align 8
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.o, label %log_split_page.exit

bb.o:                                             ; preds = %bb.n, %bb.l
  call void @XLogBeginInsert() #8
  call void @XLogRegisterBuffer(i8 noundef zeroext 0, i32 noundef %.1151183, i8 noundef zeroext 9) #8
  %i.bx = call i64 @XLogInsert(i8 noundef zeroext 12, i8 noundef zeroext 80) #8 ; 2 uses
  %i.by = icmp slt i32 %.1151183, 0
  br i1 %i.by, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bz = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.ca = xor i32 %.1151183, -1
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8
  br label %BufferGetPage.exit.i

bb.q:                                             ; preds = %bb.o
  %i.ce = load ptr, ptr @BufferBlocks, align 8
  %i.cf = add nsw i32 %.1151183, -1
  %i.cg = sext i32 %i.cf to i64
  %i.ch = shl nsw i64 %i.cg, 13
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ch
  br label %BufferGetPage.exit.i

BufferGetPage.exit.i:                             ; preds = %bb.q, %bb.p
  %.0.i.i.i = phi ptr [ %i.cd, %bb.p ], [ %i.ci, %bb.q ]
  %i.cj = call i64 @llvm.fshl.i64(i64 %i.bx, i64 %i.bx, i64 32)
  store volatile i64 %i.cj, ptr %.0.i.i.i, align 8
  br label %log_split_page.exit

log_split_page.exit:                              ; preds = %bb.k, %bb.m, %bb.n, %BufferGetPage.exit.i
  %i.ck = load volatile i32, ptr @CritSectionCount, align 4
  %i.cl = add i32 %i.ck, -1
  store volatile i32 %i.cl, ptr @CritSectionCount, align 4
  call void @UnlockBuffer(i32 noundef %.1151183) #8
  %.not199 = icmp eq i16 %.1186, 0
  br i1 %.not199, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %log_split_page.exit
  %wide.trip.count = zext i16 %.1186 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.cn = load ptr, ptr %i.cm, align 8
  call void @pfree(ptr noundef %i.cn) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !11

._crit_edge:                                      ; preds = %.lr.ph, %log_split_page.exit
  %i.co = icmp eq i32 %.1151183, %5
  %i.cp = call i32 @_hash_addovflpage(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.1151183, i1 noundef zeroext %i.co) #8 ; 5 uses
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge
  %i.cr = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.cs = xor i32 %i.cp, -1
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8
  br label %BufferGetPage.exit162

bb.s:                                             ; preds = %._crit_edge
  %i.cw = load ptr, ptr @BufferBlocks, align 8
  %i.cx = add nsw i32 %i.cp, -1
  %i.cy = sext i32 %i.cx to i64
  %i.cz = shl nsw i64 %i.cy, 13
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cz
  br label %BufferGetPage.exit162

BufferGetPage.exit162:                            ; preds = %bb.s, %bb.r, %bb.j
  %.2152 = phi i32 [ %.1151183, %bb.j ], [ %i.cp, %bb.r ], [ %i.cp, %bb.s ]
  %.2143 = phi ptr [ %.1142184, %bb.j ], [ %i.cv, %bb.r ], [ %i.da, %bb.s ]
  %.2136 = phi i64 [ %.1135185, %bb.j ], [ 0, %bb.r ], [ 0, %bb.s ]
  %.2 = phi i16 [ %.1186, %bb.j ], [ 0, %bb.r ], [ 0, %bb.s ] ; 2 uses
  %i.db = add nuw i16 %.2, 1
  %i.dc = zext i16 %.2 to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dc
  store ptr %i.az, ptr %i.dd, align 8
  %i.de = add i64 %.2136, %i.bf
  br label %bb.t

bb.t:                                             ; preds = %BufferGetPage.exit162, %.thread, %bb.i, %bb.g
  %.4154 = phi i32 [ %.1151183, %bb.i ], [ %.1151183, %bb.g ], [ %.2152, %BufferGetPage.exit162 ], [ %.1151183, %.thread ] ; 2 uses
  %.4145 = phi ptr [ %.1142184, %bb.i ], [ %.1142184, %bb.g ], [ %.2143, %BufferGetPage.exit162 ], [ %.1142184, %.thread ] ; 2 uses
  %.4138 = phi i64 [ %.1135185, %bb.i ], [ %.1135185, %bb.g ], [ %i.de, %BufferGetPage.exit162 ], [ %.1135185, %.thread ] ; 2 uses
  %.4 = phi i16 [ %.1186, %bb.i ], [ %.1186, %bb.g ], [ %i.db, %BufferGetPage.exit162 ], [ %.1186, %.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %exitcond206 = icmp eq i64 %indvars.iv.next203, %wide.trip.count205
  br i1 %exitcond206, label %._crit_edge190, label %bb.g, !llvm.loop !12

._crit_edge190:                                   ; preds = %bb.t, %bb.f
  %.1151.lcssa = phi i32 [ %.0150, %bb.f ], [ %.4154, %bb.t ] ; 9 uses
  %.1142.lcssa = phi ptr [ %.0141, %bb.f ], [ %.4145, %bb.t ]
  %.1135.lcssa = phi i64 [ %.0134, %bb.f ], [ %.4138, %bb.t ]
  %.1.lcssa = phi i16 [ %.0131, %bb.f ], [ %.4, %bb.t ] ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.0139, i64 4
  %i.dg = load i32, ptr %i.df, align 4            ; 2 uses
  %i.dh = icmp eq i32 %.0148, %4
  br i1 %i.dh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge190
  call void @UnlockBuffer(i32 noundef %4) #8
  br label %bb.w

bb.v:                                             ; preds = %._crit_edge190
  call void @UnlockReleaseBuffer(i32 noundef %.0148) #8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.not180 = icmp eq i32 %i.dg, -1
  br i1 %.not180, label %bb.x, label %_hash_getbuf.exit

bb.x:                                             ; preds = %bb.w
  %i.di = load volatile i32, ptr @CritSectionCount, align 4
  %i.dj = add i32 %i.di, 1
  store volatile i32 %i.dj, ptr @CritSectionCount, align 4
  call void @_hash_pgaddmultitup(ptr noundef %0, i32 noundef %.1151.lcssa, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i16 noundef zeroext %.1.lcssa) #8
  call void @MarkBufferDirty(i32 noundef %.1151.lcssa) #8
end_hunk_0
