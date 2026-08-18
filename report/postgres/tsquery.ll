inline.NumInlined: 42
inline.NumDeleted: 21
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@infix:bb.a
  %.lcssa221 = phi ptr [ %i.je, %.preheader212 ], [ %i.jx, %._crit_edge243.loopexit ]
  %i.jy = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef %.lcssa221, ptr noundef nonnull @.str.23) #11 ; 0 uses
  %i.jz = load ptr, ptr %i.hn, align 8            ; 2 uses
  %strlen187 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.jz)
  %strchr188 = getelementptr inbounds i8, ptr %i.jz, i64 %strlen187
  store ptr %strchr188, ptr %i.hn, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge243, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge253, %._crit_edge260, %bb.ad, %bb.q
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @tsquerysend(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.StringInfoData, align 8     ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @pq_begintypsend(ptr noundef nonnull %1) #11
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4
  call void @enlargeStringInfo(ptr noundef nonnull %1, i32 noundef 4) #11
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %i.g = call i32 @llvm.bswap.i32(i32 %i.f)
  %i.h = load ptr, ptr %1, align 8, !alias.scope !22
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 12 uses
  %i.j = load i32, ptr %i.i, align 8, !alias.scope !22 ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %i.k
  store i32 %i.g, ptr %i.l, align 1, !noalias !22
  %i.m = add i32 %i.j, 4
  store i32 %i.m, ptr %i.i, align 8, !alias.scope !22
  %i.n = load i32, ptr %i.e, align 4
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.024 = phi ptr [ %i.bo, %bb.f ], [ %i.d, %bb.a ] ; 9 uses
  %.02023 = phi i32 [ %i.bp, %bb.f ], [ 0, %bb.a ]
  %i.p = load i8, ptr %.024, align 4
  call void @enlargeStringInfo(ptr noundef nonnull %1, i32 noundef 1) #11
  call void @llvm.experimental.noalias.scope.decl(metadata !25)
  %i.q = load ptr, ptr %1, align 8, !alias.scope !25
  %i.r = load i32, ptr %i.i, align 8, !alias.scope !25 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 %i.s
  store i8 %i.p, ptr %i.t, align 1, !noalias !25
  %i.u = add i32 %i.r, 1
  store i32 %i.u, ptr %i.i, align 8, !alias.scope !25
  %i.v = load i8, ptr %.024, align 4
  switch i8 %i.v, label %bb.e [
    i8 1, label %bb.b
    i8 2, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.024, i64 1
  %i.x = load i8, ptr %i.w, align 1
  call void @enlargeStringInfo(ptr noundef nonnull %1, i32 noundef 1) #11
  call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.y = load ptr, ptr %1, align 8, !alias.scope !28
  %i.z = load i32, ptr %i.i, align 8, !alias.scope !28 ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds i8, ptr %i.y, i64 %i.aa
  store i8 %i.x, ptr %i.ab, align 1, !noalias !28
  %i.ac = add i32 %i.z, 1
  store i32 %i.ac, ptr %i.i, align 8, !alias.scope !28
  %i.ad = getelementptr inbounds nuw i8, ptr %.024, i64 2
  %i.ae = load i8, ptr %i.ad, align 2, !range !7, !noundef !8
  call void @enlargeStringInfo(ptr noundef nonnull %1, i32 noundef 1) #11
  call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %i.af = load ptr, ptr %1, align 8, !alias.scope !31
  %i.ag = load i32, ptr %i.i, align 8, !alias.scope !31 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 %i.ah
  store i8 %i.ae, ptr %i.ai, align 1, !noalias !31
  %i.aj = add i32 %i.ag, 1
  store i32 %i.aj, ptr %i.i, align 8, !alias.scope !31
  %i.ak = load i32, ptr %i.e, align 4
  %i.al = sext i32 %i.ak to i64
  %i.am = mul nsw i64 %i.al, 12
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %.024, i64 8
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = lshr i32 %i.ap, 12
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ar
  call void @pq_sendstring(ptr noundef nonnull %1, ptr noundef nonnull %i.as) #11
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph
  %i.at = getelementptr inbounds nuw i8, ptr %.024, i64 1 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1
  call void @enlargeStringInfo(ptr noundef nonnull %1, i32 noundef 1) #11
  call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.av = load ptr, ptr %1, align 8, !alias.scope !34
  %i.aw = load i32, ptr %i.i, align 8, !alias.scope !34 ; 2 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %i.av, i64 %i.ax
  store i8 %i.au, ptr %i.ay, align 1, !noalias !34
  %i.az = add i32 %i.aw, 1
  store i32 %i.az, ptr %i.i, align 8, !alias.scope !34
  %i.ba = load i8, ptr %i.at, align 1
  %i.bb = icmp eq i8 %i.ba, 4
  br i1 %i.bb, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %.024, i64 2
  %i.bd = load i16, ptr %i.bc, align 2
  call void @enlargeStringInfo(ptr noundef nonnull %1, i32 noundef 2) #11
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %i.be = call i16 @llvm.bswap.i16(i16 %i.bd)
  %i.bf = load ptr, ptr %1, align 8, !alias.scope !37
  %i.bg = load i32, ptr %i.i, align 8, !alias.scope !37 ; 2 uses
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds i8, ptr %i.bf, i64 %i.bh
  store i16 %i.be, ptr %i.bi, align 1, !noalias !37
  %i.bj = add i32 %i.bg, 2
  store i32 %i.bj, ptr %i.i, align 8, !alias.scope !37
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.bk = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.bl = load i8, ptr %.024, align 4
  %i.bm = sext i8 %i.bl to i32
  %i.bn = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.5, i32 noundef %i.bm) #11 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1215, ptr noundef nonnull @__func__.tsquerysend) #11
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.bo = getelementptr inbounds nuw i8, ptr %.024, i64 12
  %i.bp = add nuw nsw i32 %.02023, 1              ; 2 uses
  %i.bq = load i32, ptr %i.e, align 4
  %i.br = icmp slt i32 %i.bp, %i.bq
  br i1 %i.br, label %.lr.ph, label %._crit_edge, !llvm.loop !40

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %i.bs = load i64, ptr %i.a, align 8
  %.not = icmp eq i64 %i.b, %i.bs
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  call void @pfree(ptr noundef nonnull %i.c) #11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %i.bt = call ptr @pq_endtypsend(ptr noundef nonnull %1) #11
  %i.bu = ptrtoint ptr %i.bt to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  ret i64 %i.bu
}

declare void @pq_begintypsend(ptr noundef) local_unnamed_addr #2

declare void @pq_sendstring(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @pq_endtypsend(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @tsqueryrecv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8
  %i.e = inttoptr i64 %i.d to ptr                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.f = tail call i32 @pq_getmsgint(ptr noundef %i.e, i32 noundef 4) #11 ; 10 uses
  %i.g = icmp ugt i32 %i.f, 89478485
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.i = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.6) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1241, ptr noundef nonnull @__func__.tsqueryrecv) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = shl nuw nsw i32 %i.f, 3
  %i.k = zext nneg i32 %i.j to i64
  %i.l = tail call ptr @palloc(i64 noundef %i.k) #11 ; 3 uses
  %i.m = mul nuw nsw i32 %i.f, 12
  %i.n = add nuw nsw i32 %i.m, 8                  ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = tail call ptr @palloc0(i64 noundef %i.o) #11 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 %i.f, ptr %i.q, align 4
  %.not139 = icmp eq i32 %i.f, 0                  ; 2 uses
  br i1 %.not139, label %._crit_edge132, label %.lr.ph131

.lr.ph131:                                        ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = add nsw i32 %i.f, -1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph131, %bb.s
  %.095129 = phi i32 [ 0, %.lr.ph131 ], [ %.196, %bb.s ] ; 5 uses
  %.097128 = phi ptr [ %i.r, %.lr.ph131 ], [ %i.ct, %bb.s ] ; 9 uses
  %.099127 = phi i32 [ 0, %.lr.ph131 ], [ %2, %bb.s ] ; 3 uses
  %i.t = tail call i32 @pq_getmsgint(ptr noundef %i.e, i32 noundef 1) #11
  %i.u = trunc i32 %i.t to i8                     ; 2 uses
  store i8 %i.u, ptr %.097128, align 4
  switch i8 %i.u, label %bb.r [
    i8 1, label %bb.e
    i8 2, label %bb.l
  ]

bb.e:                                             ; preds = %bb.d
  %i.v = tail call i32 @pq_getmsgint(ptr noundef %i.e, i32 noundef 1) #11 ; 2 uses
  %i.w = trunc i32 %i.v to i8
  %i.x = tail call i32 @pq_getmsgint(ptr noundef %i.e, i32 noundef 1) #11
  %i.y = tail call ptr @pq_getmsgstring(ptr noundef %i.e) #11 ; 4 uses
  %i.z = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.y) #13 ; 5 uses
  %i.aa = and i32 %i.v, 240
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.ac = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.7) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1274, ptr noundef nonnull @__func__.tsqueryrecv) #11
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ad = icmp ugt i64 %i.z, 2047
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.af = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.8) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1277, ptr noundef nonnull @__func__.tsqueryrecv) #11
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ag = icmp sgt i32 %.095129, 1048575
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.ai = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.9) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1280, ptr noundef nonnull @__func__.tsqueryrecv) #11
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.aj = trunc nuw i64 %i.z to i32               ; 4 uses
  %.not108123 = icmp eq i64 %i.z, 0
  br i1 %.not108123, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.k
  %xtraiter = and i32 %i.aj, 1
  %i.ak = icmp eq i64 %i.z, 1
  br i1 %i.ak, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.aj, 2046
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.092125 = phi ptr [ %i.y, %.lr.ph.preheader.new ], [ %i.aw, %.lr.ph ] ; 3 uses
  %.093124 = phi i32 [ -1, %.lr.ph.preheader.new ], [ %i.be, %.lr.ph ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.al = lshr i32 %.093124, 24
  %i.am = getelementptr inbounds nuw i8, ptr %.092125, i64 1
  %i.an = load i8, ptr %.092125, align 1
  %i.ao = zext i8 %i.an to i32
  %i.ap = xor i32 %i.al, %i.ao
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr @pg_crc32_table, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = shl i32 %.093124, 8
  %i.au = xor i32 %i.as, %i.at                    ; 2 uses
  %i.av = lshr i32 %i.au, 24
  %i.aw = getelementptr inbounds nuw i8, ptr %.092125, i64 2 ; 2 uses
  %i.ax = load i8, ptr %i.am, align 1
  %i.ay = zext i8 %i.ax to i32
  %i.az = xor i32 %i.av, %i.ay
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr @pg_crc32_table, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = shl i32 %i.au, 8
  %i.be = xor i32 %i.bc, %i.bd                    ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !41

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.092125.epil.init = phi ptr [ %i.y, %.lr.ph.preheader ], [ %i.aw, %._crit_edge.loopexit.unr-lcssa ]
  %.093124.epil.init = phi i32 [ -1, %.lr.ph.preheader ], [ %i.be, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod174 = trunc i64 %i.z to i1
  tail call void @llvm.assume(i1 %lcmp.mod174)
  %i.bf = lshr i32 %.093124.epil.init, 24
  %i.bg = load i8, ptr %.092125.epil.init, align 1
  %i.bh = zext i8 %i.bg to i32
  %i.bi = xor i32 %i.bf, %i.bh
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr @pg_crc32_table, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = shl i32 %.093124.epil.init, 8
  %i.bn = xor i32 %i.bl, %i.bm
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa = phi i32 [ %i.be, %._crit_edge.loopexit.unr-lcssa ], [ %i.bn, %.lr.ph.epil.preheader ]
  %i.bo = xor i32 %.lcssa, -1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.k
  %.093.lcssa = phi i32 [ 0, %bb.k ], [ %i.bo, %._crit_edge.loopexit ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.097128, i64 1
  store i8 %i.w, ptr %i.bp, align 1
  %i.bq = and i32 %i.x, 255
  %i.br = icmp ne i32 %i.bq, 0
  %i.bs = getelementptr inbounds nuw i8, ptr %.097128, i64 2
  %i.bt = zext i1 %i.br to i8
  store i8 %i.bt, ptr %i.bs, align 2
  %i.bu = getelementptr inbounds nuw i8, ptr %.097128, i64 4
  store i32 %.093.lcssa, ptr %i.bu, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %.097128, i64 8
  %i.bw = shl i32 %.095129, 12
  %i.bx = or disjoint i32 %i.bw, %i.aj
  store i32 %i.bx, ptr %i.bv, align 4
  %1 = sext i32 %.099127 to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %i.l, i64 %1
  store ptr %i.y, ptr %i.by, align 8
  %i.bz = add nsw i32 %.095129, 1
  %i.ca = add nsw i32 %i.bz, %i.aj
  br label %bb.s

bb.l:                                             ; preds = %bb.d
  %i.cb = tail call i32 @pq_getmsgint(ptr noundef %i.e, i32 noundef 1) #11
  %.fr109 = freeze i32 %i.cb                      ; 3 uses
  %i.cc = trunc i32 %.fr109 to i8
  %sext107 = shl i32 %.fr109, 24                  ; 3 uses
  %i.cd = and i32 %.fr109, 253
  %or.cond.not = icmp eq i32 %i.cd, 1
  br i1 %or.cond.not, label %bb.n, label %switch.early.test

switch.early.test:                                ; preds = %bb.l
  switch i32 %sext107, label %bb.m [
    i32 67108864, label %bb.n
    i32 33554432, label %bb.n
  ]

bb.m:                                             ; preds = %switch.early.test
  %i.ce = ashr exact i32 %sext107, 24
  %i.cf = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.cg = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.10, i32 noundef %i.ce) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1309, ptr noundef nonnull @__func__.tsqueryrecv) #11
  unreachable

bb.n:                                             ; preds = %switch.early.test, %switch.early.test, %bb.l
  %i.ch = icmp eq i32 %.099127, %i.s
  br i1 %i.ch, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ci = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.cj = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.11) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1311, ptr noundef nonnull @__func__.tsqueryrecv) #11
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ck = getelementptr inbounds nuw i8, ptr %.097128, i64 1
  store i8 %i.cc, ptr %i.ck, align 1
  %i.cl = icmp eq i32 %sext107, 67108864
  br i1 %i.cl, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cm = tail call i32 @pq_getmsgint(ptr noundef %i.e, i32 noundef 2) #11
  %i.cn = trunc i32 %i.cm to i16
  %i.co = getelementptr inbounds nuw i8, ptr %.097128, i64 2
  store i16 %i.cn, ptr %i.co, align 2
  br label %bb.s

bb.r:                                             ; preds = %bb.d
  %i.cp = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.cq = load i8, ptr %.097128, align 4
  %i.cr = sext i8 %i.cq to i32
  %i.cs = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.5, i32 noundef %i.cr) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1318, ptr noundef nonnull @__func__.tsqueryrecv) #11
  unreachable

bb.s:                                             ; preds = %bb.p, %bb.q, %._crit_edge
  %.196 = phi i32 [ %i.ca, %._crit_edge ], [ %.095129, %bb.q ], [ %.095129, %bb.p ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.097128, i64 12
  %2 = add nuw i32 %.099127, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %2, %i.f
  br i1 %exitcond.not, label %._crit_edge132, label %bb.d, !llvm.loop !42

._crit_edge132:                                   ; preds = %bb.s, %bb.c
  %.095.lcssa = phi i32 [ 0, %bb.c ], [ %.196, %bb.s ]
  %i.cu = add i32 %.095.lcssa, %i.n               ; 2 uses
  %i.cv = sext i32 %i.cu to i64
  %i.cw = tail call ptr @repalloc(ptr noundef %i.p, i64 noundef %i.cv) #11 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.cz = load i32, ptr %i.cy, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4
  call fastcc void @findoprnd_recurse(ptr noundef nonnull %i.cx, ptr noundef %i.a, i32 noundef %i.f, ptr noundef nonnull %i.b)
  %i.da = load i32, ptr %i.a, align 4
  %.not.i = icmp eq i32 %i.da, %i.f
  br i1 %.not.i, label %findoprnd.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge132
  %i.db = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.dc = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.20) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 793, ptr noundef nonnull @__func__.findoprnd) #11
  unreachable

findoprnd.exit:                                   ; preds = %._crit_edge132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br i1 %.not139, label %._crit_edge138, label %.lr.ph137.preheader

.lr.ph137.preheader:                              ; preds = %findoprnd.exit
  %i.dd = sext i32 %i.cz to i64
  %i.de = mul nsw i64 %i.dd, 12
  %i.df = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.de
  br label %.lr.ph137

.lr.ph137:                                        ; preds = %.lr.ph137.preheader, %bb.v
  %.094136 = phi ptr [ %.1, %bb.v ], [ %i.df, %.lr.ph137.preheader ] ; 3 uses
  %.198135.a = phi ptr [ %i.du, %bb.v ], [ %i.cx, %.lr.ph137.preheader ] ; 3 uses
  %.1100134 = phi i32 [ %4, %bb.v ], [ 0, %.lr.ph137.preheader ] ; 2 uses
  %i.dg = load i8, ptr %.198135.a, align 4
  %i.dh = icmp eq i8 %i.dg, 1
  br i1 %i.dh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph137
  %3 = sext i32 %.1100134 to i64
  %i.di = getelementptr inbounds [8 x i8], ptr %i.l, i64 %3
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %.198135.a, i64 8 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4
  %i.dm = and i32 %i.dl, 4095
  %i.dn = add nuw nsw i32 %i.dm, 1
  %i.do = zext nneg i32 %i.dn to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.094136, ptr noundef nonnull align 1 dereferenceable(1) %i.dj, i64 %i.do, i1 false)
  %i.dp = load i32, ptr %i.dk, align 4
  %i.dq = and i32 %i.dp, 4095
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %.094136, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph137
  %.1 = phi ptr [ %i.dt, %bb.u ], [ %.094136, %.lr.ph137 ]
  %i.du = getelementptr inbounds nuw i8, ptr %.198135.a, i64 12
  %4 = add nuw i32 %.1100134, 1                   ; 2 uses
  %exitcond148.not = icmp eq i32 %4, %i.f
  br i1 %exitcond148.not, label %._crit_edge138, label %.lr.ph137, !llvm.loop !43

._crit_edge138:                                   ; preds = %bb.v, %findoprnd.exit
  tail call void @pfree(ptr noundef %i.l) #11
  %i.dv = shl i32 %i.cu, 2
  store i32 %i.dv, ptr %i.cw, align 4
  %i.dw = ptrtoint ptr %i.cw to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  ret i64 %i.dw
}

declare i32 @pq_getmsgint(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @pq_getmsgstring(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i64 @tsquerytree(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.INFIX, align 8              ; 8 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @palloc(i64 noundef 4) #11 ; 2 uses
  store i32 16, ptr %i.h, align 4
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.j = call ptr @clean_NOT(ptr noundef nonnull %i.i, ptr noundef nonnull %i.a) #11 ; 3 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = call ptr @cstring_to_text(ptr noundef nonnull @.str.12) #11
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr %i.j, ptr %1, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 32, ptr %i.l, align 8
  %i.m = call ptr @palloc_mul(i64 noundef 1, i64 noundef 32) #11 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.o, align 8
  store i8 0, ptr %i.m, align 1
  %i.p = load i32, ptr %i.e, align 4
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.q, 12
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.s, ptr %i.t, align 8
  call fastcc void @infix(ptr noundef %1, i32 noundef -1, i1 noundef zeroext false)
  %i.u = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.v = load ptr, ptr %i.o, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = trunc i64 %i.y to i32
  %i.aa = call ptr @cstring_to_text_with_len(ptr noundef %i.u, i32 noundef %i.z) #11
  call void @pfree(ptr noundef nonnull %i.j) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi ptr [ %i.aa, %bb.e ], [ %i.k, %bb.d ] ; 2 uses
  %i.ab = load i64, ptr %i.b, align 8
  %.not17 = icmp eq i64 %i.c, %i.ab
  br i1 %.not17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @pfree(ptr noundef nonnull %i.d) #11
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.b
  %.014.in = phi ptr [ %i.h, %bb.b ], [ %.0, %bb.g ], [ %.0, %bb.f ]
  %.014 = ptrtoint ptr %.014.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  ret i64 %.014
}

declare ptr @clean_NOT(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @cstring_to_text(ptr noundef) local_unnamed_addr #2

declare ptr @cstring_to_text_with_len(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #6

declare void @reset_tsvector_parser(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @gettoken_tsvector(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @pg_mblen_cstr(ptr noundef) local_unnamed_addr #2

declare i32 @pg_strncasecmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @t_isalnum_cstr(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @check_stack_depth() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @cleanOpStack(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2, i8 noundef signext %3) unnamed_addr #0 {
bb.a:
  %i.a = sext i8 %3 to i64
  %i.b = getelementptr [4 x i8], ptr @tsearch_op_priority, i64 %i.a
  %i.c = getelementptr i8, ptr %i.b, i64 -4
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = load i32, ptr %2, align 4                ; 3 uses
  %.not17 = icmp eq i32 %i.e, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %cond = icmp eq i8 %3, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  br i1 %cond, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.b
  %i.g = phi i32 [ %i.z, %bb.b ], [ %i.e, %.lr.ph ]
  %i.h = add i32 %i.g, -1                         ; 2 uses
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %1, i64 %i.i ; 3 uses
  %i.k = load i8, ptr %i.j, align 2
  %i.l = sext i8 %i.k to i64
  %i.m = getelementptr [4 x i8], ptr @tsearch_op_priority, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 -4
  %i.o = load i32, ptr %i.n, align 4
  %.not16.us = icmp slt i32 %i.d, %i.o
  br i1 %.not16.us, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph.split.us
  store i32 %i.h, ptr %2, align 4
  %i.p = load i8, ptr %i.j, align 2               ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.r = load i16, ptr %i.q, align 2
  %i.s = tail call ptr @palloc0(i64 noundef 8) #11 ; 4 uses
  store i8 2, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 %i.p, ptr %i.t, align 1
  %i.u = icmp eq i8 %i.p, 4
  %i.v = select i1 %i.u, i16 %i.r, i16 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 %i.v, ptr %i.w, align 2
  %i.x = load ptr, ptr %i.f, align 8
  %i.y = tail call ptr @lcons(ptr noundef nonnull %i.s, ptr noundef %i.x) #11
  store ptr %i.y, ptr %i.f, align 8
  %i.z = load i32, ptr %2, align 4                ; 2 uses
  %.not.us = icmp eq i32 %i.z, 0
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !12

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.c
  %i.aa = phi i32 [ %i.au, %bb.c ], [ %i.e, %.lr.ph ]
  %i.ab = add i32 %i.aa, -1                       ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ac ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 2
  %i.af = sext i8 %i.ae to i64
  %i.ag = getelementptr [4 x i8], ptr @tsearch_op_priority, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 -4
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = icmp sgt i32 %i.d, %i.ai
  br i1 %i.aj, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split
  store i32 %i.ab, ptr %2, align 4
  %i.ak = load i8, ptr %i.ad, align 2             ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.am = load i16, ptr %i.al, align 2
  %i.an = tail call ptr @palloc0(i64 noundef 8) #11 ; 4 uses
  store i8 2, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store i8 %i.ak, ptr %i.ao, align 1
  %i.ap = icmp eq i8 %i.ak, 4
  %i.aq = select i1 %i.ap, i16 %i.am, i16 0
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  store i16 %i.aq, ptr %i.ar, align 2
  %i.as = load ptr, ptr %i.f, align 8
  %i.at = tail call ptr @lcons(ptr noundef nonnull %i.an, ptr noundef %i.as) #11
  store ptr %i.at, ptr %i.f, align 8
  %i.au = load i32, ptr %2, align 4               ; 2 uses
  %.not = icmp eq i32 %i.au, 0
end_hunk_0
