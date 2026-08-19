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
  %i.i = tail call ptr @palloc(i64 noundef %i.h) #7 ; 6 uses
  %i.j = load ptr, ptr %6, align 8                ; 3 uses
  %i.k = load i32, ptr %7, align 4                ; 4 uses
  %i.l = mul nsw i64 %i.g, 40
  %i.m = tail call ptr @palloc0(i64 noundef %i.l) #7 ; 3 uses
  br i1 %.not.i, label %.critedge365.thread, label %.lr.ph

.lr.ph:                                           ; preds = %list_length.exit
  %i.n = ptrtoaddr ptr %i.i to i64
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %spec.select = select i1 %3, i32 256, i32 0     ; 2 uses
  %i.t = and i64 %i.n, 7
  %i.u = icmp eq i64 %i.t, 0
  %i.v = load i32, ptr %i.o, align 4
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph647, label %.critedge365

.lr.ph647:                                        ; preds = %.lr.ph, %bb.cg
  %scevgep646 = phi ptr [ %scevgep, %bb.cg ], [ %i.i, %.lr.ph ]
  %.0303452645 = phi ptr [ %.8311, %bb.cg ], [ %i.j, %.lr.ph ] ; 9 uses
  %.0296453644 = phi i32 [ %.5301, %bb.cg ], [ %i.k, %.lr.ph ] ; 11 uses
  %.0292454643 = phi i32 [ %.8, %bb.cg ], [ %i.k, %.lr.ph ] ; 13 uses
  %.0289455642 = phi i32 [ %.2291, %bb.cg ], [ 0, %.lr.ph ] ; 7 uses
  %indvar641 = phi i64 [ %indvar.next, %bb.cg ], [ 0, %.lr.ph ] ; 3 uses
  %i.x = load ptr, ptr %i.p, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvar641
  %i.z = load ptr, ptr %i.y, align 8              ; 18 uses
  %indvar.next = add nuw nsw i64 %indvar641, 1    ; 3 uses
  %i.aa = getelementptr inbounds nuw [72 x i8], ptr %i.i, i64 %indvar641 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.ab = load ptr, ptr %i.q, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 10
  %i.ad = load i16, ptr %i.ac, align 2            ; 3 uses
  %i.ae = load i32, ptr %i.z, align 4
  switch i32 %i.ae, label %bb.cf [
    i32 17, label %get_leftop.exit
    i32 37, label %bb.r
    i32 20, label %bb.bc
    i32 52, label %bb.bw
  ]

.critedge365:                                     ; preds = %bb.cg, %.lr.ph
  %.0289455.lcssa = phi i32 [ 0, %.lr.ph ], [ %.2291, %bb.cg ] ; 2 uses
  %.0296453.lcssa = phi i32 [ %i.k, %.lr.ph ], [ %.5301, %bb.cg ] ; 2 uses
  %.0303452.lcssa = phi ptr [ %i.j, %.lr.ph ], [ %.8311, %bb.cg ] ; 2 uses
  %i.af = icmp eq i32 %.0289455.lcssa, 0
  br i1 %i.af, label %.critedge365.thread, label %.thread

get_leftop.exit:                                  ; preds = %.lr.ph647
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = getelementptr i8, ptr %i.z, i64 32      ; 2 uses
  %.val373 = load ptr, ptr %i.ak, align 8, !nonnull !6, !noundef !6
  %i.al = getelementptr i8, ptr %.val373, i64 16
  %.val.i = load ptr, ptr %i.al, align 8
  %i.am = load ptr, ptr %.val.i, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.an = load i32, ptr %i.am, align 4            ; 2 uses
  %i.ao = icmp eq i32 %i.an, 27
  br i1 %i.ao, label %bb.c, label %bb.d

bb.c:                                             ; preds = %get_leftop.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.pr = load i32, ptr %i.aq, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %get_leftop.exit
  %i.ar = phi i32 [ %.pr, %bb.c ], [ %i.an, %get_leftop.exit ]
  %.0285 = phi ptr [ %i.aq, %bb.c ], [ %i.am, %get_leftop.exit ] ; 2 uses
  %i.as = icmp eq i32 %i.ar, 6
  br i1 %i.as, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %.0285, i64 4
  %i.au = load i32, ptr %i.at, align 4
  %i.av = icmp eq i32 %i.au, -3
  br i1 %i.av, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aw = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.ax = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.3) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1244, ptr noundef nonnull @__func__.ExecIndexBuildScanKeys) #7
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %.0285, i64 8
  %i.az = load i16, ptr %i.ay, align 8            ; 4 uses
  %i.ba = icmp slt i16 %i.az, 1
  %i.bb = icmp sgt i16 %i.az, %i.ad
  %or.cond366 = select i1 %i.ba, i1 true, i1 %i.bb
  br i1 %or.cond366, label %bb.h, label %list_length.exit.i

bb.h:                                             ; preds = %bb.g
  %i.bc = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.bd = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.4) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1248, ptr noundef nonnull @__func__.ExecIndexBuildScanKeys) #7
  unreachable

list_length.exit.i:                               ; preds = %bb.g
  %i.be = load ptr, ptr %i.r, align 8
  %i.bf = zext nneg i16 %i.az to i64
  %i.bg = getelementptr [4 x i8], ptr %i.be, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 -4
  %i.bi = load i32, ptr %i.bh, align 4
  call void @get_op_opfamily_properties(i32 noundef %i.ah, i32 noundef %i.bi, i1 noundef zeroext %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #7
  %.val374 = load ptr, ptr %i.ak, align 8, !nonnull !6, !noundef !6
  %i.bj = getelementptr i8, ptr %.val374, i64 16
  %.val.i377 = load ptr, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.i377, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.bm = load i32, ptr %i.bl, align 4            ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 27
  br i1 %i.bn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %list_length.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %.pr380 = load i32, ptr %i.bp, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %list_length.exit.i
  %i.bq = phi i32 [ %.pr380, %bb.i ], [ %i.bm, %list_length.exit.i ]
  %.0283 = phi ptr [ %i.bp, %bb.i ], [ %i.bl, %list_length.exit.i ] ; 3 uses
  %i.br = icmp eq i32 %i.bq, 7
  br i1 %i.br, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %.0283, i64 24
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.0283, i64 32
  %i.bv = load i8, ptr %i.bu, align 8, !range !5, !noundef !6
  %i.bw = zext nneg i8 %i.bv to i32
  %spec.select367 = or disjoint i32 %spec.select, %i.bw
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  %.not363 = icmp slt i32 %.0296453644, %.0292454643
  br i1 %.not363, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = icmp eq i32 %.0292454643, 0
  br i1 %i.bx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.by = call ptr @palloc(i64 noundef 192) #7
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bz = shl i32 %.0292454643, 1                 ; 2 uses
  %i.ca = sext i32 %i.bz to i64
  %i.cb = mul nsw i64 %i.ca, 24
  %i.cc = call ptr @repalloc(ptr noundef %.0303452645, i64 noundef %i.cb) #7
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.l
  %.1304 = phi ptr [ %i.by, %bb.n ], [ %i.cc, %bb.o ], [ %.0303452645, %bb.l ] ; 2 uses
  %.1293 = phi i32 [ 8, %bb.n ], [ %i.bz, %bb.o ], [ %.0292454643, %bb.l ]
  %i.cd = sext i32 %.0296453644 to i64
  %i.ce = getelementptr inbounds [24 x i8], ptr %.1304, i64 %i.cd ; 3 uses
  store ptr %i.aa, ptr %i.ce, align 8
  %i.cf = call ptr @ExecInitExpr(ptr noundef nonnull %.0283, ptr noundef %0) #7
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr %i.cf, ptr %i.cg, align 8
  %i.ch = load i32, ptr %i.c, align 4
  %i.ci = call signext i8 @get_typstorage(i32 noundef %i.ch) #7
  %i.cj = icmp ne i8 %i.ci, 112
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cl = zext i1 %i.cj to i8
  store i8 %i.cl, ptr %i.ck, align 8
  %i.cm = add i32 %.0296453644, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.k, %bb.p
  %.2305 = phi ptr [ %.1304, %bb.p ], [ %.0303452645, %bb.k ]
  %.1297 = phi i32 [ %i.cm, %bb.p ], [ %.0296453644, %bb.k ]
  %.2294 = phi i32 [ %.1293, %bb.p ], [ %.0292454643, %bb.k ]
  %.1 = phi i32 [ %spec.select, %bb.p ], [ %spec.select367, %bb.k ]
  %.0281 = phi i64 [ 0, %bb.p ], [ %i.bt, %bb.k ]
  %i.cn = load i32, ptr %i.a, align 4
  %i.co = trunc i32 %i.cn to i16
  %i.cp = load i32, ptr %i.c, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.cr = load i32, ptr %i.cq, align 8
  call void @ScanKeyEntryInitialize(ptr noundef %i.aa, i32 noundef %.1, i16 noundef signext %i.az, i16 noundef zeroext %i.co, i32 noundef %i.cp, i32 noundef %i.cr, i32 noundef %i.aj, i64 noundef %.0281) #7
  br label %bb.cg

bb.r:                                             ; preds = %.lr.ph647
  %i.cs = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8            ; 2 uses
  %.not.i378 = icmp eq ptr %i.ct, null
  br i1 %.not.i378, label %list_length.exit379, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = sext i32 %i.cv to i64
  %i.cx = mul nsw i64 %i.cw, 72
  br label %list_length.exit379

list_length.exit379:                              ; preds = %bb.r, %bb.s
  %i.cy = phi i64 [ %i.cx, %bb.s ], [ 0, %bb.r ]
  %i.cz = call ptr @palloc(i64 noundef %i.cy) #7  ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.db = load ptr, ptr %i.da, align 8            ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.dd = load ptr, ptr %i.dc, align 8            ; 3 uses
  %i.de = load ptr, ptr %i.cs, align 8            ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.dg = load ptr, ptr %i.df, align 8            ; 3 uses
  %.not350 = icmp eq ptr %i.db, null
  %.not351 = icmp eq ptr %i.dd, null
  %.not352 = icmp eq ptr %i.de, null
  %.not353 = icmp eq ptr %i.dg, null
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.ba, %list_length.exit379
  %.3306 = phi ptr [ %.0303452645, %list_length.exit379 ], [ %.5308, %bb.ba ] ; 4 uses
  %.2298 = phi i32 [ %.0296453644, %list_length.exit379 ], [ %.3299, %bb.ba ] ; 5 uses
  %.3295 = phi i32 [ %.0292454643, %list_length.exit379 ], [ %.5, %bb.ba ] ; 6 uses
  %.0280 = phi i32 [ 0, %list_length.exit379 ], [ %i.hv, %bb.ba ] ; 11 uses
  br i1 %.not350, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dq = load i32, ptr %i.dh, align 4
  %i.dr = icmp slt i32 %.0280, %i.dq
  br i1 %i.dr, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ds = load ptr, ptr %i.di, align 8
  %i.dt = sext i32 %.0280 to i64
  %i.du = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.dt
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.u, %bb.v
  %i.dv = phi ptr [ %i.du, %bb.v ], [ null, %bb.u ], [ null, %bb.t ] ; 2 uses
  br i1 %.not351, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dw = load i32, ptr %i.dj, align 4
  %i.dx = icmp slt i32 %.0280, %i.dw
  br i1 %i.dx, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dy = load ptr, ptr %i.dk, align 8
  %i.dz = sext i32 %.0280 to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.dz
  br label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.x, %bb.y
  %i.eb = phi ptr [ %i.ea, %bb.y ], [ null, %bb.x ], [ null, %bb.w ] ; 2 uses
  br i1 %.not352, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ec = load i32, ptr %i.dl, align 4
  %i.ed = icmp slt i32 %.0280, %i.ec
  br i1 %i.ed, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ee = load ptr, ptr %i.dm, align 8
  %i.ef = sext i32 %.0280 to i64
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.ef
  br label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.aa, %bb.ab
  %i.eh = phi ptr [ %i.eg, %bb.ab ], [ null, %bb.aa ], [ null, %bb.z ] ; 2 uses
  br i1 %.not353, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ei = load i32, ptr %i.dn, align 4
  %i.ej = icmp slt i32 %.0280, %i.ei
  br i1 %i.ej, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ek = load ptr, ptr %i.do, align 8
  %i.el = sext i32 %.0280 to i64
  %i.em = getelementptr inbounds [8 x i8], ptr %i.ek, i64 %i.el
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.en = phi ptr [ %i.em, %bb.ae ], [ null, %bb.ad ], [ null, %bb.ac ] ; 2 uses
  %i.eo = insertelement <4 x ptr> poison, ptr %i.dv, i64 0
  %i.ep = insertelement <4 x ptr> %i.eo, ptr %i.eb, i64 1
  %i.eq = insertelement <4 x ptr> %i.ep, ptr %i.eh, i64 2
  %i.er = insertelement <4 x ptr> %i.eq, ptr %i.en, i64 3
  %.fr = freeze <4 x ptr> %i.er
  %i.es = icmp eq <4 x ptr> %.fr, splat (ptr null)
  %i.et = bitcast <4 x i1> %i.es to i4
  %i.eu = icmp eq i4 %i.et, 0
  br i1 %i.eu, label %bb.ag, label %.critedge

.critedge:                                        ; preds = %bb.af
  %i.ev = add i32 %.0280, -1
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds [72 x i8], ptr %i.cz, i64 %i.ew ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 8
  %i.ez = or i32 %i.ey, 16
  store i32 %i.ez, ptr %i.ex, align 8
  br i1 %i.u, label %.preheader.preheader, label %bb.bb

.preheader.preheader:                             ; preds = %.critedge
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %scevgep646, i8 0, i64 72, i1 false)
  br label %.loopexit

bb.ag:                                            ; preds = %bb.af
  %i.fa = sext i32 %.0280 to i64
  %i.fb = getelementptr inbounds [72 x i8], ptr %i.cz, i64 %i.fa ; 2 uses
  %i.fc = load ptr, ptr %i.dv, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.fd = load ptr, ptr %i.eb, align 8            ; 4 uses
  %i.fe = load i32, ptr %i.eh, align 8
  %i.ff = load i32, ptr %i.en, align 8
  %i.fg = load i32, ptr %i.fc, align 4            ; 2 uses
  %i.fh = icmp eq i32 %i.fg, 27
  br i1 %i.fh, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8            ; 2 uses
  %.pr381 = load i32, ptr %i.fj, align 4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.fk = phi i32 [ %.pr381, %bb.ah ], [ %i.fg, %bb.ag ]
  %.1286 = phi ptr [ %i.fj, %bb.ah ], [ %i.fc, %bb.ag ] ; 2 uses
  %i.fl = icmp eq i32 %i.fk, 6
  br i1 %i.fl, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fm = getelementptr inbounds nuw i8, ptr %.1286, i64 4
  %i.fn = load i32, ptr %i.fm, align 4
  %i.fo = icmp eq i32 %i.fn, -3
  br i1 %i.fo, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.fp = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.fq = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.3) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1361, ptr noundef nonnull @__func__.ExecIndexBuildScanKeys) #7
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.fr = getelementptr inbounds nuw i8, ptr %.1286, i64 8
  %i.fs = load i16, ptr %i.fr, align 8            ; 4 uses
  %i.ft = load ptr, ptr %i.s, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 10
  %i.fv = load i8, ptr %i.fu, align 2, !range !5, !noundef !6
  %i.fw = trunc nuw i8 %i.fv to i1
  %i.fx = icmp slt i16 %i.fs, 1
  %not. = xor i1 %i.fw, true
  %or.cond6.not = select i1 %not., i1 true, i1 %i.fx
  %i.fy = icmp sgt i16 %i.fs, %i.ad
  %or.cond368 = select i1 %or.cond6.not, i1 true, i1 %i.fy
  br i1 %or.cond368, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fz = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.ga = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.5) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1371, ptr noundef nonnull @__func__.ExecIndexBuildScanKeys) #7
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.gb = load ptr, ptr %i.r, align 8
  %i.gc = zext nneg i16 %i.fs to i64
  %i.gd = getelementptr [4 x i8], ptr %i.gb, i64 %i.gc
  %i.ge = getelementptr i8, ptr %i.gd, i64 -4
  %i.gf = load i32, ptr %i.ge, align 4            ; 3 uses
  call void @get_op_opfamily_properties(i32 noundef %i.fe, i32 noundef %i.gf, i1 noundef zeroext %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #7
  %i.gg = load i32, ptr %i.a, align 4
  %i.gh = load i32, ptr %i.dp, align 4
  %.not = icmp eq i32 %i.gg, %i.gh
  br i1 %.not, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gi = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.gj = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.6) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1380, ptr noundef nonnull @__func__.ExecIndexBuildScanKeys) #7
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.gk = load i32, ptr %i.b, align 4
  %i.gl = load i32, ptr %i.c, align 4
  %i.gm = call i32 @get_opfamily_proc(i32 noundef %i.gf, i32 noundef %i.gk, i32 noundef %i.gl, i16 noundef signext 1) #7 ; 2 uses
  %.not357 = icmp eq i32 %i.gm, 0
  br i1 %.not357, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.gn = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.go = load i32, ptr %i.b, align 4
  %i.gp = load i32, ptr %i.c, align 4
  %i.gq = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.7, i32 noundef 1, i32 noundef %i.go, i32 noundef %i.gp, i32 noundef %i.gf) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1388, ptr noundef nonnull @__func__.ExecIndexBuildScanKeys) #7
  unreachable

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fd) ]
  %i.gr = load i32, ptr %i.fd, align 4            ; 2 uses
  %i.gs = icmp eq i32 %i.gr, 27
  br i1 %i.gs, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8            ; 2 uses
  %.pr382 = load i32, ptr %i.gu, align 4
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.gv = phi i32 [ %.pr382, %bb.as ], [ %i.gr, %bb.ar ]
  %.1284 = phi ptr [ %i.gu, %bb.as ], [ %i.fd, %bb.ar ] ; 3 uses
  %i.gw = icmp eq i32 %i.gv, 7
  br i1 %i.gw, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gx = getelementptr inbounds nuw i8, ptr %.1284, i64 24
  %i.gy = load i64, ptr %i.gx, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %.1284, i64 32
  %i.ha = load i8, ptr %i.gz, align 8, !range !5, !noundef !6
  %i.hb = trunc nuw i8 %i.ha to i1
  %spec.select369 = select i1 %i.hb, i32 9, i32 8
  br label %bb.ba

bb.av:                                            ; preds = %bb.at
  %.not359 = icmp slt i32 %.2298, %.3295
  br i1 %.not359, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hc = icmp eq i32 %.3295, 0
  br i1 %i.hc, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.hd = call ptr @palloc(i64 noundef 192) #7
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.he = shl i32 %.3295, 1                       ; 2 uses
  %i.hf = sext i32 %i.he to i64
  %i.hg = mul nsw i64 %i.hf, 24
  %i.hh = call ptr @repalloc(ptr noundef %.3306, i64 noundef %i.hg) #7
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay, %bb.av
  %.4307 = phi ptr [ %i.hd, %bb.ax ], [ %i.hh, %bb.ay ], [ %.3306, %bb.av ] ; 2 uses
  %.4 = phi i32 [ 8, %bb.ax ], [ %i.he, %bb.ay ], [ %.3295, %bb.av ]
  %i.hi = sext i32 %.2298 to i64
  %i.hj = getelementptr inbounds [24 x i8], ptr %.4307, i64 %i.hi ; 3 uses
  store ptr %i.fb, ptr %i.hj, align 8
  %i.hk = call ptr @ExecInitExpr(ptr noundef nonnull %.1284, ptr noundef %0) #7
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store ptr %i.hk, ptr %i.hl, align 8
  %i.hm = load i32, ptr %i.c, align 4
  %i.hn = call signext i8 @get_typstorage(i32 noundef %i.hm) #7
  %i.ho = icmp ne i8 %i.hn, 112
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hq = zext i1 %i.ho to i8
  store i8 %i.hq, ptr %i.hp, align 8
  %i.hr = add i32 %.2298, 1
  br label %bb.ba

bb.ba:                                            ; preds = %bb.au, %bb.az
  %.5308 = phi ptr [ %.4307, %bb.az ], [ %.3306, %bb.au ]
  %.3299 = phi i32 [ %i.hr, %bb.az ], [ %.2298, %bb.au ]
  %.5 = phi i32 [ %.4, %bb.az ], [ %.3295, %bb.au ]
  %.0279 = phi i32 [ 8, %bb.az ], [ %spec.select369, %bb.au ]
  %.0278 = phi i64 [ 0, %bb.az ], [ %i.gy, %bb.au ]
  %i.hs = load i32, ptr %i.a, align 4
  %i.ht = trunc i32 %i.hs to i16
  %i.hu = load i32, ptr %i.c, align 4
  call void @ScanKeyEntryInitialize(ptr noundef %i.fb, i32 noundef %.0279, i16 noundef signext %i.fs, i16 noundef zeroext %i.ht, i32 noundef %i.hu, i32 noundef %i.ff, i32 noundef %i.gm, i64 noundef %.0278) #7
  %i.hv = add i32 %.0280, 1
  br label %bb.t, !llvm.loop !14

bb.bb:                                            ; preds = %.critedge
  %i.hw = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(68) %i.hw, i8 0, i64 68, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.bb
  store i32 4, ptr %i.aa, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.hy = load i16, ptr %i.hx, align 4
  %i.hz = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i16 %i.hy, ptr %i.hz, align 4
  %i.ia = load i32, ptr %i.dp, align 4
  %i.ib = trunc i32 %i.ia to i16
  %i.ic = getelementptr inbounds nuw i8, ptr %i.aa, i64 6
  store i16 %i.ib, ptr %i.ic, align 2
  %i.id = ptrtoint ptr %i.cz to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  store i64 %i.id, ptr %i.ie, align 8
  br label %bb.cg

bb.bc:                                            ; preds = %.lr.ph647
  %i.if = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ig = load i32, ptr %i.if, align 4
  %i.ih = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ii = load i32, ptr %i.ih, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8
  %i.il = getelementptr i8, ptr %i.ik, i64 16
  %.val372 = load ptr, ptr %i.il, align 8
  %i.im = load ptr, ptr %.val372, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.in = load i32, ptr %i.im, align 4            ; 2 uses
  %i.io = icmp eq i32 %i.in, 27
  br i1 %i.io, label %bb.bd, label %bb.be
end_hunk_0
begin_hunk_1_@ExecIndexBuildScanKeys:bb.a
  %i.iv = icmp eq i32 %i.iu, -3
  br i1 %i.iv, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.iw = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.ix = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.3) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1485, ptr noundef nonnull @__func__.ExecIndexBuildScanKeys) #7
  unreachable

bb.bh:                                            ; preds = %bb.bf
  %i.iy = getelementptr inbounds nuw i8, ptr %.2287, i64 8
  %i.iz = load i16, ptr %i.iy, align 8            ; 4 uses
  %i.ja = icmp slt i16 %i.iz, 1
  %i.jb = icmp sgt i16 %i.iz, %i.ad
  %or.cond370 = select i1 %i.ja, i1 true, i1 %i.jb
  br i1 %or.cond370, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.jc = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.jd = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.4) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1489, ptr noundef nonnull @__func__.ExecIndexBuildScanKeys) #7
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.je = load ptr, ptr %i.r, align 8
  %i.jf = zext nneg i16 %i.iz to i64
  %i.jg = getelementptr [4 x i8], ptr %i.je, i64 %i.jf
  %i.jh = getelementptr i8, ptr %i.jg, i64 -4
  %i.ji = load i32, ptr %i.jh, align 4
  call void @get_op_opfamily_properties(i32 noundef %i.ig, i32 noundef %i.ji, i1 noundef zeroext %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #7
  %i.jj = load ptr, ptr %i.ij, align 8
  %i.jk = getelementptr i8, ptr %i.jj, i64 16
  %.val = load ptr, ptr %i.jk, align 8
  %i.jl = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.jm = load ptr, ptr %i.jl, align 8            ; 4 uses
  %.not348 = icmp eq ptr %i.jm, null
  br i1 %.not348, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jn = load i32, ptr %i.jm, align 4
  %i.jo = icmp eq i32 %i.jn, 27
  br i1 %i.jo, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jq = load ptr, ptr %i.jp, align 8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %bb.bj
  %.2 = phi ptr [ %i.jq, %bb.bl ], [ %i.jm, %bb.bk ], [ null, %bb.bj ] ; 5 uses
  %i.jr = load ptr, ptr %i.s, align 8
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 19
  %i.jt = load i8, ptr %i.js, align 1, !range !5, !noundef !6
  %i.ju = trunc nuw i8 %i.jt to i1
  br i1 %i.ju, label %bb.bn, label %bb.bu

bb.bn:                                            ; preds = %bb.bm
  %i.jv = load i32, ptr %.2, align 4
  %i.jw = icmp eq i32 %i.jv, 7
  br i1 %i.jw, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.jx = getelementptr inbounds nuw i8, ptr %.2, i64 24
  %i.jy = load i64, ptr %i.jx, align 8
  %i.jz = getelementptr inbounds nuw i8, ptr %.2, i64 32
  %i.ka = load i8, ptr %i.jz, align 8, !range !5, !noundef !6
  %i.kb = trunc nuw i8 %i.ka to i1
  %spec.select371 = select i1 %i.kb, i32 33, i32 32
  br label %bb.bv

bb.bp:                                            ; preds = %bb.bn
  %.not349 = icmp slt i32 %.0296453644, %.0292454643
  br i1 %.not349, label %bb.bt, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.kc = icmp eq i32 %.0292454643, 0
  br i1 %i.kc, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.kd = call ptr @palloc(i64 noundef 192) #7
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  %i.ke = shl i32 %.0292454643, 1                 ; 2 uses
  %i.kf = sext i32 %i.ke to i64
  %i.kg = mul nsw i64 %i.kf, 24
  %i.kh = call ptr @repalloc(ptr noundef %.0303452645, i64 noundef %i.kg) #7
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs, %bb.bp
  %.6309 = phi ptr [ %i.kd, %bb.br ], [ %i.kh, %bb.bs ], [ %.0303452645, %bb.bp ] ; 2 uses
  %.6 = phi i32 [ 8, %bb.br ], [ %i.ke, %bb.bs ], [ %.0292454643, %bb.bp ]
  %i.ki = sext i32 %.0296453644 to i64
  %i.kj = getelementptr inbounds [24 x i8], ptr %.6309, i64 %i.ki ; 3 uses
  store ptr %i.aa, ptr %i.kj, align 8
  %i.kk = call ptr @ExecInitExpr(ptr noundef nonnull %.2, ptr noundef %0) #7
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  store ptr %i.kk, ptr %i.kl, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  store i8 1, ptr %i.km, align 8
  %i.kn = add i32 %.0296453644, 1
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bm
  %i.ko = sext i32 %.0289455642 to i64
  %i.kp = getelementptr inbounds [40 x i8], ptr %i.m, i64 %i.ko ; 2 uses
  store ptr %i.aa, ptr %i.kp, align 8
  %i.kq = call ptr @ExecInitExpr(ptr noundef %.2, ptr noundef %0) #7
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  store ptr %i.kq, ptr %i.kr, align 8
  %i.ks = add i32 %.0289455642, 1
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bo, %bb.bt, %bb.bu
  %.7310 = phi ptr [ %.0303452645, %bb.bu ], [ %.0303452645, %bb.bo ], [ %.6309, %bb.bt ]
  %.4300 = phi i32 [ %.0296453644, %bb.bu ], [ %.0296453644, %bb.bo ], [ %i.kn, %bb.bt ]
  %.7 = phi i32 [ %.0292454643, %bb.bu ], [ %.0292454643, %bb.bo ], [ %.6, %bb.bt ]
  %.1290 = phi i32 [ %i.ks, %bb.bu ], [ %.0289455642, %bb.bo ], [ %.0289455642, %bb.bt ]
  %.0276 = phi i32 [ 0, %bb.bu ], [ %spec.select371, %bb.bo ], [ 32, %bb.bt ]
  %.0275 = phi i64 [ 0, %bb.bu ], [ %i.jy, %bb.bo ], [ 0, %bb.bt ]
  %i.kt = load i32, ptr %i.a, align 4
  %i.ku = trunc i32 %i.kt to i16
  %i.kv = load i32, ptr %i.c, align 4
  %i.kw = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.kx = load i32, ptr %i.kw, align 8
  call void @ScanKeyEntryInitialize(ptr noundef %i.aa, i32 noundef %.0276, i16 noundef signext %i.iz, i16 noundef zeroext %i.ku, i32 noundef %i.kv, i32 noundef %i.kx, i32 noundef %i.ii, i64 noundef %.0275) #7
  br label %bb.cg

bb.bw:                                            ; preds = %.lr.ph647
  %i.ky = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.kz = load ptr, ptr %i.ky, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.la = load i32, ptr %i.kz, align 4            ; 2 uses
  %i.lb = icmp eq i32 %i.la, 27
  br i1 %i.lb, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8            ; 2 uses
  %.pr384 = load i32, ptr %i.ld, align 4
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.le = phi i32 [ %.pr384, %bb.bx ], [ %i.la, %bb.bw ]
  %.3 = phi ptr [ %i.ld, %bb.bx ], [ %i.kz, %bb.bw ] ; 2 uses
  %i.lf = icmp eq i32 %i.le, 6
  br i1 %i.lf, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.lg = getelementptr inbounds nuw i8, ptr %.3, i64 4
  %i.lh = load i32, ptr %i.lg, align 4
  %i.li = icmp eq i32 %i.lh, -3
  br i1 %i.li, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.lj = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.lk = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.8) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1599, ptr noundef nonnull @__func__.ExecIndexBuildScanKeys) #7
  unreachable

bb.cb:                                            ; preds = %bb.bz
  %i.ll = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %i.lm = load i16, ptr %i.ll, align 8
  %i.ln = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.lo = load i32, ptr %i.ln, align 8
  switch i32 %i.lo, label %bb.cd [
    i32 0, label %bb.ce
    i32 1, label %bb.cc
  ]

bb.cc:                                            ; preds = %bb.cb
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %i.lp = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.lq = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.lr = load i32, ptr %i.lp, align 8
  %i.ls = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.9, i32 noundef %i.lr) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1616, ptr noundef nonnull @__func__.ExecIndexBuildScanKeys) #7
  unreachable

bb.ce:                                            ; preds = %bb.cb, %bb.cc
  %.0 = phi i32 [ 129, %bb.cc ], [ 65, %bb.cb ]
  call void @ScanKeyEntryInitialize(ptr noundef %i.aa, i32 noundef %.0, i16 noundef signext %i.lm, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i64 noundef 0) #7
  br label %bb.cg

bb.cf:                                            ; preds = %.lr.ph647
  %i.lt = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.lu = load i32, ptr %i.z, align 4
  %i.lv = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.10, i32 noundef %i.lu) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1632, ptr noundef nonnull @__func__.ExecIndexBuildScanKeys) #7
  unreachable

bb.cg:                                            ; preds = %.loopexit, %bb.ce, %bb.bv, %bb.q
  %.8311 = phi ptr [ %.2305, %bb.q ], [ %.3306, %.loopexit ], [ %.7310, %bb.bv ], [ %.0303452645, %bb.ce ] ; 2 uses
  %.5301 = phi i32 [ %.1297, %bb.q ], [ %.2298, %.loopexit ], [ %.4300, %bb.bv ], [ %.0296453644, %bb.ce ] ; 2 uses
  %.8 = phi i32 [ %.2294, %bb.q ], [ %.3295, %.loopexit ], [ %.7, %bb.bv ], [ %.0292454643, %bb.ce ]
  %.2291 = phi i32 [ %.0289455642, %bb.q ], [ %.0289455642, %.loopexit ], [ %.1290, %bb.bv ], [ %.0289455642, %bb.ce ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %10 = mul nuw nsw i64 %indvar.next, 72
  %scevgep = getelementptr i8, ptr %i.i, i64 %10
  %i.lw = load i32, ptr %i.o, align 4
  %i.lx = sext i32 %i.lw to i64
  %i.ly = icmp slt i64 %indvar.next, %i.lx
  br i1 %i.ly, label %.lr.ph647, label %.critedge365

.critedge365.thread:                              ; preds = %list_length.exit, %.critedge365
  %.0296.lcssa516 = phi i32 [ %.0296453.lcssa, %.critedge365 ], [ %i.k, %list_length.exit ]
  %.0303.lcssa515 = phi ptr [ %.0303452.lcssa, %.critedge365 ], [ %i.j, %list_length.exit ]
  call void @pfree(ptr noundef %i.m) #7
  store ptr %i.i, ptr %4, align 8
  store i32 %i.f, ptr %5, align 4
  store ptr %.0303.lcssa515, ptr %6, align 8
  store i32 %.0296.lcssa516, ptr %7, align 4
  %.not344 = icmp eq ptr %8, null
  br i1 %.not344, label %bb.ci, label %bb.ch

.thread:                                          ; preds = %.critedge365
  store ptr %i.i, ptr %4, align 8
  store i32 %i.f, ptr %5, align 4
  store ptr %.0303452.lcssa, ptr %6, align 8
  store i32 %.0296453.lcssa, ptr %7, align 4
  %.not344386 = icmp eq ptr %8, null
  br i1 %.not344386, label %.thread388, label %bb.ch

bb.ch:                                            ; preds = %.thread, %.critedge365.thread
  %.0289.lcssa517 = phi i32 [ %.0289455.lcssa, %.thread ], [ 0, %.critedge365.thread ]
  %.0302387 = phi ptr [ %i.m, %.thread ], [ null, %.critedge365.thread ]
  store ptr %.0302387, ptr %8, align 8
  store i32 %.0289.lcssa517, ptr %9, align 4
  br label %bb.ci

.thread388:                                       ; preds = %.thread
  %i.lz = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.ma = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.11) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1657, ptr noundef nonnull @__func__.ExecIndexBuildScanKeys) #7
  unreachable

bb.ci:                                            ; preds = %.critedge365.thread, %bb.ch
  ret void
}

declare ptr @palloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare i32 @exprType(ptr noundef) local_unnamed_addr #2

declare i32 @exprCollation(ptr noundef) local_unnamed_addr #2

declare void @PrepareSortSupportFromOrderingOp(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @get_typlenbyval(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @pairingheap_allocate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @reorderqueue_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph.i, label %cmp_orderbyvals.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 360
  br label %bb.c

bb.b:                                             ; preds = %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.m = load i32, ptr %i.i, align 8
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next.i, %i.n
  br i1 %i.o, label %bb.c, label %cmp_orderbyvals.exit, !llvm.loop !15

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 6 uses
  %i.p = load ptr, ptr %i.l, align 8
  %i.q = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %indvars.iv.i ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i
  %i.s = load i8, ptr %i.r, align 1, !range !5, !noundef !6
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.i
  %i.v = load i8, ptr %i.u, align 1, !range !5, !noundef !6 ; 2 uses
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = xor i8 %i.v, 1
  %not..i = zext nneg i8 %i.w to i32
  br label %cmp_orderbyvals.exit

bb.e:                                             ; preds = %bb.c
  %i.x = trunc nuw i8 %i.v to i1
  br i1 %i.x, label %cmp_orderbyvals.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = tail call i32 %i.z(i64 noundef %i.ab, i64 noundef %i.ad, ptr noundef %i.q) #7, !inline_history !16 ; 2 uses
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %bb.b, label %cmp_orderbyvals.exit

cmp_orderbyvals.exit:                             ; preds = %bb.b, %bb.e, %bb.f, %bb.a, %bb.d
  %.2.i = phi i32 [ 0, %bb.a ], [ %not..i, %bb.d ], [ -1, %bb.e ], [ 0, %bb.b ], [ %i.ae, %bb.f ]
  ret i32 %.2.i
}

declare void @get_op_opfamily_properties(i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @repalloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @ExecInitExpr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare signext i8 @get_typstorage(i32 noundef) local_unnamed_addr #2

declare void @ScanKeyEntryInitialize(ptr noundef, i32 noundef, i16 noundef signext, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @get_opfamily_proc(i32 noundef, i32 noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

declare void @pfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ExecIndexScanEstimate(ptr nofree noundef captures(none) initializes((384, 392)) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.f = load i32, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.h = load i32, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call i64 @index_parallelscan_estimate(ptr noundef %i.d, i32 noundef %i.f, i32 noundef %i.h, ptr noundef %i.j) #7 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i64 %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8
  %i.o = add i64 %i.k, 31
  %i.p = and i64 %i.o, -32
  %i.q = tail call i64 @add_size(i64 noundef %i.n, i64 noundef %i.p) #7
  store i64 %i.q, ptr %i.m, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = tail call i64 @add_size(i64 noundef %i.s, i64 noundef 1) #7
  store i64 %i.t, ptr %i.r, align 8
  ret void
}

declare i64 @index_parallelscan_estimate(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @add_size(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ExecIndexScanInitializeDSM(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.f = load i64, ptr %i.e, align 8
  %i.g = tail call ptr @shm_toc_allocate(ptr noundef %i.d, i64 noundef %i.f) #7 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @index_parallelscan_initialize(ptr noundef %i.i, ptr noundef %i.k, ptr noundef %i.m, ptr noundef %i.g) #7
  %i.n = load ptr, ptr %i.c, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = load i32, ptr %i.q, align 8
  %i.s = sext i32 %i.r to i64
  tail call void @shm_toc_insert(ptr noundef %i.n, i64 noundef %i.s, ptr noundef %i.g) #7
  %i.t = load ptr, ptr %i.h, align 8
  %i.u = load ptr, ptr %i.j, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = tail call zeroext i1 @ScanRelIsReadOnly(ptr noundef %0) #7
  %i.ac = select i1 %i.ab, i32 1024, i32 0
end_hunk_1
