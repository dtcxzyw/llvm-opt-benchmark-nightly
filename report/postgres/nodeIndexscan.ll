Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/nodeIndexscan?download=true
inline.NumInlined: 47
inline.NumDeleted: 20
begin_hunk_0_@ExecInitIndexScan:bb.a
  store i8 0, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 272 ; 3 uses
  store ptr null, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 280 ; 4 uses
  store i32 0, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  tail call void @ExecIndexBuildScanKeys(ptr noundef nonnull %i.a, ptr noundef %i.ao, ptr noundef %i.au, i1 noundef zeroext false, ptr noundef nonnull %i.av, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.as, ptr noundef null, ptr noundef null)
  %i.ax = load ptr, ptr %i.ap, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 264 ; 2 uses
  tail call void @ExecIndexBuildScanKeys(ptr noundef nonnull %i.a, ptr noundef %i.ax, ptr noundef %i.az, i1 noundef zeroext true, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.as, ptr noundef null, ptr noundef null)
  %i.bc = load i32, ptr %i.bb, align 8            ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.be = zext nneg i32 %i.bc to i64              ; 5 uses
  %i.bf = shl nuw nsw i64 %i.be, 6
  %i.bg = tail call ptr @palloc0(i64 noundef %i.bf) #7
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 360 ; 2 uses
  store ptr %i.bg, ptr %i.bh, align 8
  %i.bi = tail call ptr @palloc(i64 noundef %i.be) #7
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 368 ; 2 uses
  store ptr %i.bi, ptr %i.bj, align 8
  %i.bk = shl nuw nsw i64 %i.be, 1
  %i.bl = tail call ptr @palloc(i64 noundef %i.bk) #7
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 376 ; 2 uses
  store ptr %i.bl, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bo = load ptr, ptr %i.bn, align 8            ; 3 uses
  %i.bp = load ptr, ptr %i.u, align 8             ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %.not116 = icmp eq ptr %i.bo, null
  %.not117 = icmp eq ptr %i.bp, null
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %brmerge = select i1 %.not117, i1 true, i1 %.not116
  br i1 %brmerge, label %.thread, label %.split.split

.split.split:                                     ; preds = %bb.e, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %bb.e ] ; 8 uses
  %i.bu = load i32, ptr %i.br, align 4
  %i.bv = sext i32 %i.bu to i64
  %i.bw = icmp slt i64 %indvars.iv, %i.bv
  br i1 %i.bw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.split.split
  %i.bx = load ptr, ptr %i.bs, align 8
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv
  br label %bb.g

bb.g:                                             ; preds = %.split.split, %bb.f
  %i.bz = phi ptr [ %i.by, %bb.f ], [ null, %.split.split ] ; 2 uses
  %i.ca = load i32, ptr %i.bq, align 4
  %i.cb = sext i32 %i.ca to i64
  %i.cc = icmp slt i64 %indvars.iv, %i.cb
  br i1 %i.cc, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.cd = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.ce = icmp ne ptr %i.bz, null
  %i.cf = icmp ne ptr %i.cd, null
  %i.cg = select i1 %i.ce, i1 %i.cf, i1 false
  br i1 %i.cg, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.g, %bb.h, %bb.e
  %i.ch = shl nuw nsw i64 %i.be, 3
  %i.ci = tail call ptr @palloc(i64 noundef %i.ch) #7
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  store ptr %i.ci, ptr %i.cj, align 8
  %i.ck = tail call ptr @palloc(i64 noundef %i.be) #7
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store ptr %i.ck, ptr %i.cl, align 8
  %i.cm = tail call ptr @pairingheap_allocate(ptr noundef nonnull @reorderqueue_cmp, ptr noundef nonnull %i.a) #7
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  store ptr %i.cm, ptr %i.cn, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv
  %i.cp = load i32, ptr %i.bz, align 8
  %i.cq = load ptr, ptr %i.co, align 8            ; 2 uses
  %i.cr = tail call i32 @exprType(ptr noundef %i.cq) #7
  %i.cs = tail call i32 @exprCollation(ptr noundef %i.cq) #7
  %i.ct = load ptr, ptr %i.bh, align 8
  %i.cu = getelementptr inbounds nuw [64 x i8], ptr %i.ct, i64 %indvars.iv ; 6 uses
  %i.cv = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.cv, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i32 %i.cs, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 13
  store i8 0, ptr %i.cx, align 1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 14
  store i16 0, ptr %i.cy, align 2
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  store i8 0, ptr %i.cz, align 8
  tail call void @PrepareSortSupportFromOrderingOp(i32 noundef %i.cp, ptr noundef nonnull %i.cu) #7
  %i.da = load ptr, ptr %i.bm, align 8
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %indvars.iv
  %i.dc = load ptr, ptr %i.bj, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %indvars.iv
  tail call void @get_typlenbyval(i32 noundef %i.cr, ptr noundef %i.db, ptr noundef %i.dd) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %.split.split, !llvm.loop !13

bb.j:                                             ; preds = %.thread, %bb.d
  %i.de = load i32, ptr %i.as, align 8
  %.not118 = icmp eq i32 %i.de, 0
  br i1 %.not118, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8
  tail call void @ExecAssignExprContext(ptr noundef %1, ptr noundef nonnull %i.a) #7
  %i.dh = load ptr, ptr %i.df, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store ptr %i.dh, ptr %i.di, align 8
  store ptr %i.dg, ptr %i.df, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store ptr null, ptr %i.dj, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @ExecIndexScan(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.d = load i8, ptr %i.c, align 4, !range !5, !noundef !6
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @ExecReScan(ptr noundef nonnull %0) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp sgt i32 %i.g, 0
  %IndexNextWithReorder.IndexNext = select i1 %i.h, ptr @IndexNextWithReorder, ptr @IndexNext
  %i.i = tail call ptr @ExecScan(ptr noundef nonnull %0, ptr noundef nonnull %IndexNextWithReorder.IndexNext, ptr noundef nonnull @IndexRecheck) #7
  ret ptr %i.i
}

declare void @ExecAssignExprContext(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ExecOpenScanRelation(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ExecInitScanTupleSlot(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

declare ptr @table_slot_callbacks(ptr noundef) local_unnamed_addr #2

declare void @ExecInitResultTypeTL(ptr noundef) local_unnamed_addr #2

declare void @ExecAssignScanProjectionInfo(ptr noundef) local_unnamed_addr #2

declare ptr @ExecInitQual(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ExecInitExprList(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @palloc0(i64 noundef) local_unnamed_addr #2

declare ptr @index_open(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ExecIndexBuildScanKeys(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, i1 noundef zeroext %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7, ptr nofree noundef writeonly captures(address_is_null) %8, ptr nofree noundef writeonly captures(none) %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 12 uses
  %.not.i = icmp eq ptr %2, null                  ; 2 uses
  br i1 %.not.i, label %list_length.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i32, ptr %i.d, align 4
  br label %list_length.exit

list_length.exit:                                 ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = mul nsw i64 %i.g, 72
  %i.i = tail call ptr @palloc(i64 noundef %i.h) #7 ; 3 uses
  %i.j = load ptr, ptr %6, align 8                ; 3 uses
  %i.k = load i32, ptr %7, align 4                ; 4 uses
  %i.l = mul nsw i64 %i.g, 40
  %i.m = tail call ptr @palloc0(i64 noundef %i.l) #7 ; 3 uses
  br i1 %.not.i, label %.critedge365.thread, label %.lr.ph

.lr.ph:                                           ; preds = %list_length.exit
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %spec.select = select i1 %3, i32 256, i32 0     ; 2 uses
  %i.s = load i32, ptr %i.n, align 4
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph646, label %.critedge365

.lr.ph646:                                        ; preds = %.lr.ph, %bb.cg
  %.0303452645 = phi ptr [ %.8311, %bb.cg ], [ %i.j, %.lr.ph ] ; 9 uses
  %.0296453644 = phi i32 [ %.5301, %bb.cg ], [ %i.k, %.lr.ph ] ; 11 uses
  %.0292454643 = phi i32 [ %.8, %bb.cg ], [ %i.k, %.lr.ph ] ; 13 uses
  %.0289455642 = phi i32 [ %.2291, %bb.cg ], [ 0, %.lr.ph ] ; 7 uses
  %indvars.iv641 = phi i64 [ %indvars.iv.next, %bb.cg ], [ 0, %.lr.ph ] ; 3 uses
  %i.u = load ptr, ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv641
  %i.w = load ptr, ptr %i.v, align 8              ; 18 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv641, 1 ; 2 uses
  %i.x = getelementptr [72 x i8], ptr %i.i, i64 %indvars.iv641 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.y = load ptr, ptr %i.p, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 10
  %i.aa = load i16, ptr %i.z, align 2             ; 3 uses
  %i.ab = load i32, ptr %i.w, align 4
  switch i32 %i.ab, label %bb.cf [
    i32 17, label %get_leftop.exit
    i32 37, label %bb.r
    i32 20, label %bb.bc
    i32 52, label %bb.bw
  ]

.critedge365:                                     ; preds = %bb.cg, %.lr.ph
  %.0289455.lcssa = phi i32 [ 0, %.lr.ph ], [ %.2291, %bb.cg ] ; 2 uses
  %.0296453.lcssa = phi i32 [ %i.k, %.lr.ph ], [ %.5301, %bb.cg ] ; 2 uses
  %.0303452.lcssa = phi ptr [ %i.j, %.lr.ph ], [ %.8311, %bb.cg ] ; 2 uses
  %i.ac = icmp eq i32 %.0289455.lcssa, 0
  br i1 %i.ac, label %.critedge365.thread, label %.thread

get_leftop.exit:                                  ; preds = %.lr.ph646
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = getelementptr i8, ptr %i.w, i64 32      ; 2 uses
  %.val373 = load ptr, ptr %i.ah, align 8, !nonnull !6, !noundef !6
  %i.ai = getelementptr i8, ptr %.val373, i64 16
  %.val.i = load ptr, ptr %i.ai, align 8
  %i.aj = load ptr, ptr %.val.i, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 4            ; 2 uses
  %i.al = icmp eq i32 %i.ak, 27
  br i1 %i.al, label %bb.c, label %bb.d

bb.c:                                             ; preds = %get_leftop.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.pr = load i32, ptr %i.an, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %get_leftop.exit
  %i.ao = phi i32 [ %.pr, %bb.c ], [ %i.ak, %get_leftop.exit ]
  %.0285 = phi ptr [ %i.an, %bb.c ], [ %i.aj, %get_leftop.exit ] ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 6
  br i1 %i.ap, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %.0285, i64 4
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = icmp eq i32 %i.ar, -3
  br i1 %i.as, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.at = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.au = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.3) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1244, ptr noundef nonnull @__func__.ExecIndexBuildScanKeys) #7
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %.0285, i64 8
  %i.aw = load i16, ptr %i.av, align 8            ; 4 uses
  %i.ax = icmp slt i16 %i.aw, 1
  %i.ay = icmp sgt i16 %i.aw, %i.aa
  %or.cond366 = select i1 %i.ax, i1 true, i1 %i.ay
  br i1 %or.cond366, label %bb.h, label %list_length.exit.i

bb.h:                                             ; preds = %bb.g
  %i.az = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.ba = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.4) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1248, ptr noundef nonnull @__func__.ExecIndexBuildScanKeys) #7
  unreachable

list_length.exit.i:                               ; preds = %bb.g
  %i.bb = load ptr, ptr %i.q, align 8
  %i.bc = zext nneg i16 %i.aw to i64
  %i.bd = getelementptr [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 -4
  %i.bf = load i32, ptr %i.be, align 4
  call void @get_op_opfamily_properties(i32 noundef %i.ae, i32 noundef %i.bf, i1 noundef zeroext %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #7
  %.val374 = load ptr, ptr %i.ah, align 8, !nonnull !6, !noundef !6
  %i.bg = getelementptr i8, ptr %.val374, i64 16
  %.val.i377 = load ptr, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.i377, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 4            ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 27
  br i1 %i.bk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %list_length.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %.pr380 = load i32, ptr %i.bm, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %list_length.exit.i
  %i.bn = phi i32 [ %.pr380, %bb.i ], [ %i.bj, %list_length.exit.i ]
  %.0283 = phi ptr [ %i.bm, %bb.i ], [ %i.bi, %list_length.exit.i ] ; 3 uses
  %i.bo = icmp eq i32 %i.bn, 7
  br i1 %i.bo, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %.0283, i64 24
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %.0283, i64 32
  %i.bs = load i8, ptr %i.br, align 8, !range !5, !noundef !6
  %i.bt = zext nneg i8 %i.bs to i32
  %spec.select367 = or disjoint i32 %spec.select, %i.bt
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  %.not363 = icmp slt i32 %.0296453644, %.0292454643
  br i1 %.not363, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = icmp eq i32 %.0292454643, 0
  br i1 %i.bu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bv = call ptr @palloc(i64 noundef 192) #7
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bw = shl i32 %.0292454643, 1                 ; 2 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul nsw i64 %i.bx, 24
  %i.bz = call ptr @repalloc(ptr noundef %.0303452645, i64 noundef %i.by) #7
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.l
  %.1304 = phi ptr [ %i.bv, %bb.n ], [ %i.bz, %bb.o ], [ %.0303452645, %bb.l ] ; 2 uses
  %.1293 = phi i32 [ 8, %bb.n ], [ %i.bw, %bb.o ], [ %.0292454643, %bb.l ]
  %i.ca = sext i32 %.0296453644 to i64
  %i.cb = getelementptr inbounds [24 x i8], ptr %.1304, i64 %i.ca ; 3 uses
  store ptr %i.x, ptr %i.cb, align 8
  %i.cc = call ptr @ExecInitExpr(ptr noundef nonnull %.0283, ptr noundef %0) #7
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %i.cc, ptr %i.cd, align 8
  %i.ce = load i32, ptr %i.c, align 4
  %i.cf = call signext i8 @get_typstorage(i32 noundef %i.ce) #7
  %i.cg = icmp ne i8 %i.cf, 112
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.ci = zext i1 %i.cg to i8
  store i8 %i.ci, ptr %i.ch, align 8
  %i.cj = add i32 %.0296453644, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.k, %bb.p
  %.2305 = phi ptr [ %.1304, %bb.p ], [ %.0303452645, %bb.k ]
  %.1297 = phi i32 [ %i.cj, %bb.p ], [ %.0296453644, %bb.k ]
  %.2294 = phi i32 [ %.1293, %bb.p ], [ %.0292454643, %bb.k ]
  %.1 = phi i32 [ %spec.select, %bb.p ], [ %spec.select367, %bb.k ]
  %.0281 = phi i64 [ 0, %bb.p ], [ %i.bq, %bb.k ]
  %i.ck = load i32, ptr %i.a, align 4
  %i.cl = trunc i32 %i.ck to i16
  %i.cm = load i32, ptr %i.c, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.co = load i32, ptr %i.cn, align 8
  call void @ScanKeyEntryInitialize(ptr noundef %i.x, i32 noundef %.1, i16 noundef signext %i.aw, i16 noundef zeroext %i.cl, i32 noundef %i.cm, i32 noundef %i.co, i32 noundef %i.ag, i64 noundef %.0281) #7
  br label %bb.cg

bb.r:                                             ; preds = %.lr.ph646
  %i.cp = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8            ; 2 uses
  %.not.i378 = icmp eq ptr %i.cq, null
  br i1 %.not.i378, label %list_length.exit379, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = sext i32 %i.cs to i64
  %i.cu = mul nsw i64 %i.ct, 72
  br label %list_length.exit379

list_length.exit379:                              ; preds = %bb.r, %bb.s
  %i.cv = phi i64 [ %i.cu, %bb.s ], [ 0, %bb.r ]
  %i.cw = call ptr @palloc(i64 noundef %i.cv) #7  ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8            ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.da = load ptr, ptr %i.cz, align 8            ; 3 uses
  %i.db = load ptr, ptr %i.cp, align 8            ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8            ; 3 uses
  %.not350 = icmp eq ptr %i.cy, null
  %.not351 = icmp eq ptr %i.da, null
  %.not352 = icmp eq ptr %i.db, null
  %.not353 = icmp eq ptr %i.dd, null
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.ba, %list_length.exit379
  %.3306 = phi ptr [ %.0303452645, %list_length.exit379 ], [ %.5308, %bb.ba ] ; 4 uses
  %.2298 = phi i32 [ %.0296453644, %list_length.exit379 ], [ %.3299, %bb.ba ] ; 5 uses
  %.3295 = phi i32 [ %.0292454643, %list_length.exit379 ], [ %.5, %bb.ba ] ; 6 uses
  %.0280 = phi i32 [ 0, %list_length.exit379 ], [ %i.hs, %bb.ba ] ; 11 uses
  br i1 %.not350, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dn = load i32, ptr %i.de, align 4
  %i.do = icmp slt i32 %.0280, %i.dn
  br i1 %i.do, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dp = load ptr, ptr %i.df, align 8
  %i.dq = sext i32 %.0280 to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.dq
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.u, %bb.v
  %i.ds = phi ptr [ %i.dr, %bb.v ], [ null, %bb.u ], [ null, %bb.t ] ; 2 uses
  br i1 %.not351, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dt = load i32, ptr %i.dg, align 4
  %i.du = icmp slt i32 %.0280, %i.dt
  br i1 %i.du, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dv = load ptr, ptr %i.dh, align 8
  %i.dw = sext i32 %.0280 to i64
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.dw
  br label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.x, %bb.y
  %i.dy = phi ptr [ %i.dx, %bb.y ], [ null, %bb.x ], [ null, %bb.w ] ; 2 uses
  br i1 %.not352, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dz = load i32, ptr %i.di, align 4
  %i.ea = icmp slt i32 %.0280, %i.dz
  br i1 %i.ea, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.eb = load ptr, ptr %i.dj, align 8
  %i.ec = sext i32 %.0280 to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.ec
  br label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.aa, %bb.ab
  %i.ee = phi ptr [ %i.ed, %bb.ab ], [ null, %bb.aa ], [ null, %bb.z ] ; 2 uses
  br i1 %.not353, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ef = load i32, ptr %i.dk, align 4
  %i.eg = icmp slt i32 %.0280, %i.ef
  br i1 %i.eg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.eh = load ptr, ptr %i.dl, align 8
  %i.ei = sext i32 %.0280 to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.ei
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.ek = phi ptr [ %i.ej, %bb.ae ], [ null, %bb.ad ], [ null, %bb.ac ] ; 2 uses
  %i.el = insertelement <4 x ptr> poison, ptr %i.ds, i64 0
  %i.em = insertelement <4 x ptr> %i.el, ptr %i.dy, i64 1
  %i.en = insertelement <4 x ptr> %i.em, ptr %i.ee, i64 2
  %i.eo = insertelement <4 x ptr> %i.en, ptr %i.ek, i64 3
  %.fr = freeze <4 x ptr> %i.eo
  %i.ep = icmp eq <4 x ptr> %.fr, splat (ptr null)
  %i.eq = bitcast <4 x i1> %i.ep to i4
  %i.er = icmp eq i4 %i.eq, 0
  br i1 %i.er, label %bb.ag, label %.critedge

.critedge:                                        ; preds = %bb.af
  %i.es = add i32 %.0280, -1
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [72 x i8], ptr %i.cw, i64 %i.et ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 8
  %i.ew = or i32 %i.ev, 16
  store i32 %i.ew, ptr %i.eu, align 8
  %10 = ptrtoint ptr %i.x to i64
  %11 = and i64 %10, 7
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %.preheader.preheader, label %bb.bb

.preheader.preheader:                             ; preds = %.critedge
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.x, i8 0, i64 72, i1 false)
  br label %.loopexit

bb.ag:                                            ; preds = %bb.af
  %i.ex = sext i32 %.0280 to i64
  %i.ey = getelementptr inbounds [72 x i8], ptr %i.cw, i64 %i.ex ; 2 uses
  %i.ez = load ptr, ptr %i.ds, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.fa = load ptr, ptr %i.dy, align 8            ; 4 uses
  %i.fb = load i32, ptr %i.ee, align 8
  %i.fc = load i32, ptr %i.ek, align 8
  %i.fd = load i32, ptr %i.ez, align 4            ; 2 uses
  %i.fe = icmp eq i32 %i.fd, 27
  br i1 %i.fe, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8            ; 2 uses
  %.pr381 = load i32, ptr %i.fg, align 4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.fh = phi i32 [ %.pr381, %bb.ah ], [ %i.fd, %bb.ag ]
  %.1286 = phi ptr [ %i.fg, %bb.ah ], [ %i.ez, %bb.ag ] ; 2 uses
  %i.fi = icmp eq i32 %i.fh, 6
  br i1 %i.fi, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fj = getelementptr inbounds nuw i8, ptr %.1286, i64 4
  %i.fk = load i32, ptr %i.fj, align 4
  %i.fl = icmp eq i32 %i.fk, -3
  br i1 %i.fl, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.fm = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.fn = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.3) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1361, ptr noundef nonnull @__func__.ExecIndexBuildScanKeys) #7
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.fo = getelementptr inbounds nuw i8, ptr %.1286, i64 8
  %i.fp = load i16, ptr %i.fo, align 8            ; 4 uses
  %i.fq = load ptr, ptr %i.r, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 10
  %i.fs = load i8, ptr %i.fr, align 2, !range !5, !noundef !6
  %i.ft = trunc nuw i8 %i.fs to i1
  %i.fu = icmp slt i16 %i.fp, 1
  %not. = xor i1 %i.ft, true
  %or.cond6.not = select i1 %not., i1 true, i1 %i.fu
  %i.fv = icmp sgt i16 %i.fp, %i.aa
  %or.cond368 = select i1 %or.cond6.not, i1 true, i1 %i.fv
  br i1 %or.cond368, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fw = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.fx = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.5) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1371, ptr noundef nonnull @__func__.ExecIndexBuildScanKeys) #7
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.fy = load ptr, ptr %i.q, align 8
  %i.fz = zext nneg i16 %i.fp to i64
  %i.ga = getelementptr [4 x i8], ptr %i.fy, i64 %i.fz
  %i.gb = getelementptr i8, ptr %i.ga, i64 -4
  %i.gc = load i32, ptr %i.gb, align 4            ; 3 uses
  call void @get_op_opfamily_properties(i32 noundef %i.fb, i32 noundef %i.gc, i1 noundef zeroext %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #7
  %i.gd = load i32, ptr %i.a, align 4
  %i.ge = load i32, ptr %i.dm, align 4
  %.not = icmp eq i32 %i.gd, %i.ge
  br i1 %.not, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gf = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.gg = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.6) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1380, ptr noundef nonnull @__func__.ExecIndexBuildScanKeys) #7
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.gh = load i32, ptr %i.b, align 4
  %i.gi = load i32, ptr %i.c, align 4
  %i.gj = call i32 @get_opfamily_proc(i32 noundef %i.gc, i32 noundef %i.gh, i32 noundef %i.gi, i16 noundef signext 1) #7 ; 2 uses
  %.not357 = icmp eq i32 %i.gj, 0
  br i1 %.not357, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.gk = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.gl = load i32, ptr %i.b, align 4
  %i.gm = load i32, ptr %i.c, align 4
  %i.gn = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.7, i32 noundef 1, i32 noundef %i.gl, i32 noundef %i.gm, i32 noundef %i.gc) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1388, ptr noundef nonnull @__func__.ExecIndexBuildScanKeys) #7
  unreachable

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fa) ]
  %i.go = load i32, ptr %i.fa, align 4            ; 2 uses
  %i.gp = icmp eq i32 %i.go, 27
  br i1 %i.gp, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8            ; 2 uses
  %.pr382 = load i32, ptr %i.gr, align 4
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.gs = phi i32 [ %.pr382, %bb.as ], [ %i.go, %bb.ar ]
  %.1284 = phi ptr [ %i.gr, %bb.as ], [ %i.fa, %bb.ar ] ; 3 uses
  %i.gt = icmp eq i32 %i.gs, 7
  br i1 %i.gt, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gu = getelementptr inbounds nuw i8, ptr %.1284, i64 24
  %i.gv = load i64, ptr %i.gu, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %.1284, i64 32
  %i.gx = load i8, ptr %i.gw, align 8, !range !5, !noundef !6
  %i.gy = trunc nuw i8 %i.gx to i1
  %spec.select369 = select i1 %i.gy, i32 9, i32 8
  br label %bb.ba

bb.av:                                            ; preds = %bb.at
  %.not359 = icmp slt i32 %.2298, %.3295
  br i1 %.not359, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gz = icmp eq i32 %.3295, 0
  br i1 %i.gz, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ha = call ptr @palloc(i64 noundef 192) #7
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.hb = shl i32 %.3295, 1                       ; 2 uses
  %i.hc = sext i32 %i.hb to i64
  %i.hd = mul nsw i64 %i.hc, 24
  %i.he = call ptr @repalloc(ptr noundef %.3306, i64 noundef %i.hd) #7
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay, %bb.av
  %.4307 = phi ptr [ %i.ha, %bb.ax ], [ %i.he, %bb.ay ], [ %.3306, %bb.av ] ; 2 uses
  %.4 = phi i32 [ 8, %bb.ax ], [ %i.hb, %bb.ay ], [ %.3295, %bb.av ]
  %i.hf = sext i32 %.2298 to i64
  %i.hg = getelementptr inbounds [24 x i8], ptr %.4307, i64 %i.hf ; 3 uses
  store ptr %i.ey, ptr %i.hg, align 8
  %i.hh = call ptr @ExecInitExpr(ptr noundef nonnull %.1284, ptr noundef %0) #7
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  store ptr %i.hh, ptr %i.hi, align 8
  %i.hj = load i32, ptr %i.c, align 4
  %i.hk = call signext i8 @get_typstorage(i32 noundef %i.hj) #7
  %i.hl = icmp ne i8 %i.hk, 112
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hn = zext i1 %i.hl to i8
  store i8 %i.hn, ptr %i.hm, align 8
  %i.ho = add i32 %.2298, 1
  br label %bb.ba

bb.ba:                                            ; preds = %bb.au, %bb.az
  %.5308 = phi ptr [ %.4307, %bb.az ], [ %.3306, %bb.au ]
  %.3299 = phi i32 [ %i.ho, %bb.az ], [ %.2298, %bb.au ]
  %.5 = phi i32 [ %.4, %bb.az ], [ %.3295, %bb.au ]
  %.0279 = phi i32 [ 8, %bb.az ], [ %spec.select369, %bb.au ]
  %.0278 = phi i64 [ 0, %bb.az ], [ %i.gv, %bb.au ]
  %i.hp = load i32, ptr %i.a, align 4
  %i.hq = trunc i32 %i.hp to i16
  %i.hr = load i32, ptr %i.c, align 4
  call void @ScanKeyEntryInitialize(ptr noundef %i.ey, i32 noundef %.0279, i16 noundef signext %i.fp, i16 noundef zeroext %i.hq, i32 noundef %i.hr, i32 noundef %i.fc, i32 noundef %i.gj, i64 noundef %.0278) #7
  %i.hs = add i32 %.0280, 1
  br label %bb.t, !llvm.loop !14

bb.bb:                                            ; preds = %.critedge
  %i.ht = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(68) %i.ht, i8 0, i64 68, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.bb
  store i32 4, ptr %i.x, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.hv = load i16, ptr %i.hu, align 4
  %i.hw = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i16 %i.hv, ptr %i.hw, align 4
  %i.hx = load i32, ptr %i.dm, align 4
  %i.hy = trunc i32 %i.hx to i16
  %i.hz = getelementptr inbounds nuw i8, ptr %i.x, i64 6
  store i16 %i.hy, ptr %i.hz, align 2
  %i.ia = ptrtoint ptr %i.cw to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  store i64 %i.ia, ptr %i.ib, align 8
  br label %bb.cg

bb.bc:                                            ; preds = %.lr.ph646
  %i.ic = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.id = load i32, ptr %i.ic, align 4
  %i.ie = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.if = load i32, ptr %i.ie, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 2 uses
  %i.ih = load ptr, ptr %i.ig, align 8
  %i.ii = getelementptr i8, ptr %i.ih, i64 16
  %.val372 = load ptr, ptr %i.ii, align 8
end_hunk_0
