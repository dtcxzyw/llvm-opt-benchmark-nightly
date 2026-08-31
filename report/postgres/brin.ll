Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/brin?download=true
inline.NumInlined: 96
inline.NumDeleted: 45
begin_hunk_0_@brinbulkdelete:bb.a

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @palloc0(i64 noundef 40) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.b, %bb.b ], [ %1, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @brinvacuumcleanup(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(address_is_null, ret: address, provenance) %1) #1 {
bb.a:
  %2 = alloca %struct.BlockRangeReadStreamPrivate, align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !4, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @palloc0(i64 noundef 40) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %1, %bb.b ], [ %i.d, %bb.c ]    ; 3 uses
  %i.e = load ptr, ptr %0, align 8
  %i.f = tail call i32 @RelationGetNumberOfBlocksInFork(ptr noundef %i.e, i32 noundef 0) #9
  store i32 %i.f, ptr %.0, align 8
  %i.g = load ptr, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load i32, ptr %i.h, align 8
  %i.j = tail call i32 @IndexGetRelation(i32 noundef %i.i, i1 noundef zeroext false) #9
  %i.k = tail call ptr @table_open(i32 noundef %i.j, i32 noundef 1) #9 ; 2 uses
  %i.l = load ptr, ptr %0, align 8                ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  store i32 0, ptr %2, align 4
  %i.o = tail call i32 @RelationGetNumberOfBlocksInFork(ptr noundef %i.l, i32 noundef 0) #9
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.o, ptr %i.p, align 4
  %i.q = call ptr @read_stream_begin_relation(i32 noundef 13, ptr noundef %i.n, ptr noundef %i.l, i32 noundef 0, ptr noundef nonnull @block_range_read_stream_cb, ptr noundef nonnull %2, i64 noundef 0) #9 ; 3 uses
  %i.r = call i32 @read_stream_next_buffer(ptr noundef %i.q, ptr noundef null) #9 ; 2 uses
  %.not9.i = icmp eq i32 %i.r, 0
  br i1 %.not9.i, label %brin_vacuum_scan.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.f
  %i.s = phi i32 [ %i.u, %bb.f ], [ %i.r, %bb.d ] ; 2 uses
  %i.t = load volatile i32, ptr @InterruptPending, align 4
  %.not8.i = icmp eq i32 %i.t, 0
  br i1 %.not8.i, label %bb.f, label %bb.e, !prof !14

bb.e:                                             ; preds = %.lr.ph.i
  call void @ProcessInterrupts() #9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  call void @brin_page_cleanup(ptr noundef %i.l, i32 noundef %i.s) #9
  call void @ReleaseBuffer(i32 noundef %i.s) #9
  %i.u = call i32 @read_stream_next_buffer(ptr noundef %i.q, ptr noundef null) #9 ; 2 uses
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %brin_vacuum_scan.exit, label %.lr.ph.i, !llvm.loop !16

brin_vacuum_scan.exit:                            ; preds = %bb.f, %bb.d
  call void @read_stream_end(ptr noundef %i.q) #9
  call void @FreeSpaceMapVacuum(ptr noundef %i.l) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  %i.v = load ptr, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 2 uses
  call fastcc void @brinsummarize(ptr noundef %i.v, ptr noundef %i.k, i32 noundef -1, i1 noundef zeroext false, ptr noundef nonnull %i.w, ptr noundef nonnull %i.w)
  call void @table_close(ptr noundef %i.k, i32 noundef 1) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %brin_vacuum_scan.exit
  %.015 = phi ptr [ %.0, %brin_vacuum_scan.exit ], [ %1, %bb.a ]
  ret ptr %.015
}

declare void @brincostestimate(ptr noundef, ptr noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @brinoptions(i64 noundef %0, i1 noundef zeroext %1) #1 {
bb.a:
  %i.a = tail call ptr @build_reloptions(i64 noundef %0, i1 noundef zeroext %1, i32 noundef 1024, i64 noundef 12, ptr noundef nonnull @brinoptions.tab, i32 noundef 2) #9
  ret ptr %i.a
}

declare zeroext i1 @brinvalidate(i32 noundef) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @brinbeginscan(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
bb.a:
  %i.a = tail call ptr @RelationGetIndexScan(ptr noundef %0, i32 noundef %1, i32 noundef %2) #9 ; 2 uses
  %i.b = tail call ptr @palloc(i64 noundef 24) #9 ; 4 uses
  %i.c = tail call ptr @brinRevmapInitialize(ptr noundef %0, ptr noundef %i.b) #9
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.d, align 8
  %i.e = tail call ptr @brin_build_desc(ptr noundef %0)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.b, ptr %i.g, align 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @brinrescan(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 %2, ptr nofree readnone captures(none) %3, i32 %4) #3 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = zext nneg i32 %i.b to i64
  %i.g = mul nuw nsw i64 %i.f, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.e, ptr nonnull align 8 %1, i64 %i.g, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @bringetbitmap(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i64 0, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8              ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8              ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 480 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.b, label %bb.d, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 476
  %i.n = load i8, ptr %i.m, align 4, !range !4, !noundef !5
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @pgstat_assoc_relation(ptr noundef nonnull %i.f) #9
  %.pre = load ptr, ptr %i.k, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %i.p = phi ptr [ %i.l, %bb.a ], [ %.pre, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  %.not190 = icmp eq ptr %i.u, null
  br i1 %.not190, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i64, ptr %i.u, align 8
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.y = load i32, ptr %i.x, align 8
  %i.z = tail call i32 @IndexGetRelation(i32 noundef %i.y, i1 noundef zeroext false) #9
  %i.aa = tail call ptr @table_open(i32 noundef %i.z, i32 noundef 1) #9 ; 2 uses
  %i.ab = tail call i32 @RelationGetNumberOfBlocksInFork(ptr noundef %i.aa, i32 noundef 0) #9 ; 2 uses
  tail call void @table_close(ptr noundef %i.aa, i32 noundef 1) #9
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 7 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = sext i32 %i.ae to i64
  %i.ag = tail call ptr @palloc0_mul(i64 noundef 48, i64 noundef %i.af) #9 ; 2 uses
  %i.ah = load ptr, ptr %i.ac, align 8
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = sext i32 %i.al to i64
  %i.an = shl nsw i64 %i.aj, 2
  %2 = add nsw i64 %i.an, 4
  %3 = and i64 %2, 9223372036854775800
  %4 = shl nsw i64 %i.aj, 3                       ; 2 uses
  %factor213 = mul i64 %4, %i.am
  %reass.add = add i64 %3, %4
  %reass.add215 = add i64 %reass.add, %factor213
  %reass.mul = shl i64 %reass.add215, 1
  %i.ao = tail call ptr @palloc(i64 noundef %reass.mul) #9 ; 4 uses
  %i.ap = load ptr, ptr %i.ac, align 8
  %i.aq = load i32, ptr %i.ap, align 8            ; 2 uses
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = shl nsw i64 %i.ar, 3                    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.as ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as ; 4 uses
  %i.av = shl nsw i64 %i.ar, 2                    ; 2 uses
  %i.aw = add nsw i64 %i.av, 4
  %i.ax = and i64 %i.aw, -8                       ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ax ; 5 uses
  %i.az = icmp sgt i32 %i.aq, 0
  br i1 %i.az, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre261 = shl nsw i64 %i.bu, 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.g
  %.pre-phi262 = phi i64 [ %.pre261, %._crit_edge.loopexit ], [ %i.av, %bb.g ]
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.au, i8 0, i64 %.pre-phi262, i1 false)
  %i.bb = load ptr, ptr %i.ac, align 8
  %i.bc = load i32, ptr %i.bb, align 8
  %i.bd = sext i32 %i.bc to i64
  %i.be = shl nsw i64 %i.bd, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ay, i8 0, i64 %i.be, i1 false)
  %i.bf = load i32, ptr %i.ak, align 8
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph224, label %._crit_edge225

.lr.ph224:                                        ; preds = %._crit_edge
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.h

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %.0175220 = phi ptr [ %i.ba, %.lr.ph.preheader ], [ %i.br, %.lr.ph ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv
  store ptr %.0175220, ptr %i.bi, align 8
  %i.bj = load i32, ptr %i.ak, align 8
  %i.bk = sext i32 %i.bj to i64
  %i.bl = shl nsw i64 %i.bk, 3
  %i.bm = getelementptr inbounds nuw i8, ptr %.0175220, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv
  store ptr %i.bm, ptr %i.bn, align 8
  %i.bo = load i32, ptr %i.ak, align 8
  %i.bp = sext i32 %i.bo to i64
  %i.bq = shl nsw i64 %i.bp, 3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bq
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bs = load ptr, ptr %i.ac, align 8
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = sext i32 %i.bt to i64                   ; 2 uses
  %i.bv = icmp slt i64 %indvars.iv.next, %i.bu
  br i1 %i.bv, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !18

._crit_edge225:                                   ; preds = %bb.j, %._crit_edge
  %i.bw = tail call ptr @brin_new_memtuple(ptr noundef %i.j) #9
  %i.bx = load ptr, ptr @CurrentMemoryContext, align 8
  %i.by = tail call ptr @AllocSetContextCreateInternal(ptr noundef %i.bx, ptr noundef nonnull @.str.3, i64 noundef 0, i64 noundef 8192, i64 noundef 8388608) #9 ; 4 uses
  %i.bz = load ptr, ptr @CurrentMemoryContext, align 8 ; 2 uses
  store ptr %i.by, ptr @CurrentMemoryContext, align 8
  %i.ca = zext i32 %i.ab to i64                   ; 3 uses
  %.not246 = icmp eq i32 %i.ab, 0
  br i1 %.not246, label %._crit_edge244, label %.lr.ph243

.lr.ph243:                                        ; preds = %._crit_edge225
  %i.cb = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.cd = ptrtoint ptr %i.j to i64                ; 2 uses
  br label %bb.k

bb.h:                                             ; preds = %.lr.ph224, %bb.j
  %indvars.iv255 = phi i64 [ 0, %.lr.ph224 ], [ %indvars.iv.next256, %bb.j ] ; 2 uses
  %i.ce = load ptr, ptr %i.bh, align 8
  %i.cf = getelementptr inbounds nuw [72 x i8], ptr %i.ce, i64 %indvars.iv255 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.ch = load i16, ptr %i.cg, align 4            ; 2 uses
  %i.ci = sext i16 %i.ch to i64
  %i.cj = add nsw i64 %i.ci, -1                   ; 3 uses
  %i.ck = getelementptr inbounds [48 x i8], ptr %i.ag, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load i32, ptr %i.cl, align 8
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.co = tail call ptr @index_getprocinfo(ptr noundef %i.f, i16 noundef signext %i.ch, i16 noundef zeroext 3) #9
  %i.cp = load ptr, ptr @CurrentMemoryContext, align 8
  tail call void @fmgr_info_copy(ptr noundef nonnull %i.ck, ptr noundef %i.co, ptr noundef %i.cp) #9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cq = load i32, ptr %i.cf, align 8
  %i.cr = and i32 %i.cq, 1
  %.not197 = icmp eq i32 %i.cr, 0                 ; 2 uses
  %. = select i1 %.not197, ptr %i.ao, ptr %i.at
  %.285 = select i1 %.not197, ptr %i.au, ptr %i.ay
  %i.cs = getelementptr inbounds [8 x i8], ptr %., i64 %i.cj
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds [4 x i8], ptr %.285, i64 %i.cj ; 3 uses
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.cw
  store ptr %i.cf, ptr %i.cx, align 8
  %i.cy = load i32, ptr %i.cu, align 4
  %i.cz = add i32 %i.cy, 1
  store i32 %i.cz, ptr %i.cu, align 4
  %indvars.iv.next256 = add nuw nsw i64 %indvars.iv255, 1 ; 2 uses
  %i.da = load i32, ptr %i.ak, align 8
  %i.db = sext i32 %i.da to i64
  %i.dc = icmp slt i64 %indvars.iv.next256, %i.db
  br i1 %i.dc, label %bb.h, label %._crit_edge225, !llvm.loop !19

._crit_edge244.loopexit:                          ; preds = %.split.thread
  %i.dd = mul i64 %.2182, 10
  br label %._crit_edge244

._crit_edge244:                                   ; preds = %._crit_edge244.loopexit, %._crit_edge225
  %.0180.lcssa = phi i64 [ 0, %._crit_edge225 ], [ %i.dd, %._crit_edge244.loopexit ]
  store ptr %i.bz, ptr @CurrentMemoryContext, align 8
  call void @MemoryContextDelete(ptr noundef %i.by) #9
  %i.de = load i32, ptr %i.a, align 4             ; 2 uses
  %.not191 = icmp eq i32 %i.de, 0
  br i1 %.not191, label %bb.ag, label %bb.af

bb.k:                                             ; preds = %.lr.ph243, %.split.thread
  %.0172240 = phi i64 [ 0, %.lr.ph243 ], [ %i.gu, %.split.thread ] ; 6 uses
  %.0176239 = phi ptr [ null, %.lr.ph243 ], [ %.1177200205, %.split.thread ] ; 2 uses
  %.0178238 = phi ptr [ %i.bw, %.lr.ph243 ], [ %.1179207, %.split.thread ] ; 2 uses
  %.0180237 = phi i64 [ 0, %.lr.ph243 ], [ %.2182, %.split.thread ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.df = load volatile i32, ptr @InterruptPending, align 4
  %.not192 = icmp eq i32 %i.df, 0
  br i1 %.not192, label %bb.m, label %bb.l, !prof !14

bb.l:                                             ; preds = %bb.k
  call void @ProcessInterrupts() #9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @MemoryContextReset(ptr noundef %i.by) #9
  %i.dg = load ptr, ptr %i.cb, align 8
  %i.dh = trunc nuw i64 %.0172240 to i32
  %i.di = call ptr @brinGetTupleForHeapBlock(ptr noundef %i.dg, i32 noundef %i.dh, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 1) #9 ; 2 uses
  %.not193.not = icmp eq ptr %i.di, null
  br i1 %.not193.not, label %.thread.preheader, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dj = load i64, ptr %i.d, align 8
  %i.dk = call ptr @brin_copy_tuple(ptr noundef nonnull %i.di, i64 noundef %i.dj, ptr noundef %.0176239, ptr noundef nonnull %i.b) #9 ; 11 uses
  %i.dl = load i32, ptr %i.a, align 4
  call void @UnlockBuffer(i32 noundef %i.dl) #9
  %i.dm = call ptr @brin_deform_tuple(ptr noundef %i.j, ptr noundef %i.dk, ptr noundef %.0178238) #9 ; 13 uses
  %i.dn = load i8, ptr %i.dm, align 8, !range !4, !noundef !5
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %.thread.preheader, label %.preheader218

.preheader218:                                    ; preds = %bb.n
  %i.dp = load ptr, ptr %i.ac, align 8
  %i.dq = load i32, ptr %i.dp, align 8
  %.not194228 = icmp slt i32 %i.dq, 1
  br i1 %.not194228, label %.thread.preheader, label %.lr.ph230

.lr.ph230:                                        ; preds = %.preheader218
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  br label %bb.o

.thread.preheader:                                ; preds = %select.unfold, %.preheader218, %bb.m, %bb.n
  %.1179208.ph = phi ptr [ %.0178238, %bb.m ], [ %i.dm, %bb.n ], [ %i.dm, %.preheader218 ], [ %i.dm, %select.unfold ] ; 2 uses
  %.1177200206.ph = phi ptr [ %.0176239, %bb.m ], [ %i.dk, %bb.n ], [ %i.dk, %.preheader218 ], [ %i.dk, %select.unfold ] ; 2 uses
  %i.dt = load i32, ptr %i.h, align 8
  %i.du = zext i32 %i.dt to i64
  %i.dv = add nuw nsw i64 %.0172240, %i.du
  %.198231 = call i64 @llvm.umin.i64(i64 %i.dv, i64 %i.ca)
  %i.dw = add nsw i64 %.198231, -1
  %.not196232 = icmp ugt i64 %.0172240, %i.dw
  br i1 %.not196232, label %.split.thread, label %.thread

bb.o:                                             ; preds = %.lr.ph230, %select.unfold
  %.0168229 = phi i32 [ 1, %.lr.ph230 ], [ %i.gi, %select.unfold ] ; 2 uses
  %i.dx = add i32 %.0168229, -1
  %i.dy = sext i32 %i.dx to i64                   ; 8 uses
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.dy ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4            ; 3 uses
  %i.eb = icmp eq i32 %i.ea, 0                    ; 2 uses
  br i1 %i.eb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.dy
  %i.ed = load i32, ptr %i.ec, align 4
  %i.ee = icmp eq i32 %i.ed, 0
end_hunk_0
