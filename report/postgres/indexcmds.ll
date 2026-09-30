Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/indexcmds?download=true
inline.NumInlined: 76
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ChooseRelationName:bb.a
  %i.a = alloca [64 x i8], align 16               ; 7 uses
  %5 = alloca %struct.SnapshotData, align 8       ; 5 uses
  %6 = alloca [2 x %struct.ScanKeyData], align 16 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  store i32 4, ptr %5, align 8
  %i.b = tail call ptr @table_open(i32 noundef 1259, i32 noundef 1) #9 ; 3 uses
  %i.c = call i64 @strlcpy(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %2, i64 noundef 64) #9 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  %i.e = zext i32 %3 to i64                       ; 2 uses
  br i1 %4, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %bb.c
  %.017.us = phi i32 [ %i.k, %bb.c ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.f = call ptr @makeObjectName(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a) ; 4 uses
  %i.g = ptrtoint ptr %i.f to i64
  call void @ScanKeyInit(ptr noundef nonnull %6, i16 noundef signext 2, i16 noundef zeroext 3, i32 noundef 62, i64 noundef %i.g) #9
  call void @ScanKeyInit(ptr noundef nonnull %i.d, i16 noundef signext 3, i16 noundef zeroext 3, i32 noundef 184, i64 noundef %i.e) #9
  %i.h = call ptr @systable_beginscan(ptr noundef %i.b, i32 noundef 2663, i1 noundef zeroext true, ptr noundef nonnull %5, i32 noundef 2, ptr noundef nonnull %6) #9 ; 2 uses
  %i.i = call ptr @systable_getnext(ptr noundef %i.h) #9
  %.not.us = icmp eq ptr %i.i, null
  call void @systable_endscan(ptr noundef %i.h) #9
  br i1 %.not.us, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.split.us
  %i.j = call zeroext i1 @ConstraintNameExists(ptr noundef %i.f, i32 noundef %3) #9
  br i1 %i.j, label %bb.c, label %.split21.us

bb.c:                                             ; preds = %bb.b, %.split.us
  call void @pfree(ptr noundef %i.f) #9
  %i.k = add i32 %.017.us, 1                      ; 2 uses
  %i.l = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef nonnull @.str.52, ptr noundef nonnull %2, i32 noundef %i.k) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %.split.us

.split:                                           ; preds = %bb.a, %bb.d
  %.017 = phi i32 [ %i.q, %bb.d ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.m = call ptr @makeObjectName(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a) ; 3 uses
  %i.n = ptrtoint ptr %i.m to i64
  call void @ScanKeyInit(ptr noundef nonnull %6, i16 noundef signext 2, i16 noundef zeroext 3, i32 noundef 62, i64 noundef %i.n) #9
  call void @ScanKeyInit(ptr noundef nonnull %i.d, i16 noundef signext 3, i16 noundef zeroext 3, i32 noundef 184, i64 noundef %i.e) #9
  %i.o = call ptr @systable_beginscan(ptr noundef %i.b, i32 noundef 2663, i1 noundef zeroext true, ptr noundef nonnull %5, i32 noundef 2, ptr noundef nonnull %6) #9 ; 2 uses
  %i.p = call ptr @systable_getnext(ptr noundef %i.o) #9
  %.not = icmp eq ptr %i.p, null
  call void @systable_endscan(ptr noundef %i.o) #9
  br i1 %.not, label %.split21.us, label %bb.d

bb.d:                                             ; preds = %.split
  call void @pfree(ptr noundef %i.m) #9
  %i.q = add i32 %.017, 1                         ; 2 uses
  %i.r = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef nonnull @.str.52, ptr noundef nonnull %2, i32 noundef %i.q) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %.split

.split21.us:                                      ; preds = %.split, %bb.b
  %.us-phi = phi ptr [ %i.f, %bb.b ], [ %i.m, %.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @table_close(ptr noundef %i.b, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.us-phi
}

; Function Attrs: nofree nounwind
declare i64 @strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare zeroext i1 @ConstraintNameExists(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @pg_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ExecReindex(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %struct.ScanKeyData], align 16 ; 4 uses
  %4 = alloca %struct.ReindexParams, align 8      ; 5 uses
  %5 = alloca %struct.ReindexIndexCallbackState, align 8 ; 5 uses
  %6 = alloca %struct.ReindexParams, align 8      ; 5 uses
  %7 = alloca %struct.ReindexParams, align 8      ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  store i64 0, ptr %7, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i32, ptr %i.c, align 4
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph74, label %.thread

.lr.ph74:                                         ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %.lr.ph ] ; 2 uses
  %.0345373 = phi i1 [ %.135, %bb.g ], [ false, %.lr.ph ] ; 2 uses
  %.0325472 = phi i8 [ %.133, %bb.g ], [ 0, %.lr.ph ] ; 2 uses
  %.05571 = phi ptr [ %.1, %bb.g ], [ null, %.lr.ph ] ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8              ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(8) @.str.53) #11
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.c

.thread:                                          ; preds = %.lr.ph, %bb.a
  store i32 0, ptr %7, align 8
  br label %bb.m

.critedge:                                        ; preds = %bb.g
  %i.n = zext nneg i8 %.133 to i32                ; 2 uses
  br i1 %.135, label %bb.h, label %bb.i

bb.b:                                             ; preds = %.lr.ph74
  %i.o = tail call zeroext i1 @defGetBoolean(ptr noundef nonnull %i.i) #9
  %i.p = zext i1 %i.o to i8
  br label %bb.g

bb.c:                                             ; preds = %.lr.ph74
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(13) @.str.54) #11
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = tail call zeroext i1 @defGetBoolean(ptr noundef nonnull %i.i) #9
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(11) @.str.55) #11
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.f, label %.split

bb.f:                                             ; preds = %bb.e
  %i.v = tail call ptr @defGetString(ptr noundef nonnull %i.i) #9
  br label %bb.g

.split:                                           ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.x = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.y = tail call i32 @errcode(i32 noundef 16801924) #9 ; 0 uses
  %i.z = load ptr, ptr %i.w, align 8
  %i.aa = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, ptr noundef %i.z) #9 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = tail call i32 @parser_errposition(ptr noundef %0, i32 noundef %i.ac) #9 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2876, ptr noundef nonnull @__func__.ExecReindex) #9
  unreachable

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.b
  %.135 = phi i1 [ %.0345373, %bb.b ], [ %i.s, %bb.d ], [ %.0345373, %bb.f ] ; 2 uses
  %.133 = phi i8 [ %i.p, %bb.b ], [ %.0325472, %bb.d ], [ %.0325472, %bb.f ] ; 2 uses
  %.1 = phi ptr [ %.05571, %bb.b ], [ %.05571, %bb.d ], [ %i.v, %bb.f ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = load i32, ptr %i.c, align 4
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp slt i64 %indvars.iv.next, %i.af
  br i1 %i.ag, label %.lr.ph74, label %.critedge

bb.h:                                             ; preds = %.critedge
  tail call void @PreventInTransactionBlock(i1 noundef zeroext %2, ptr noundef nonnull @.str.58) #9
  %i.ah = or disjoint i32 %i.n, 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.critedge
  %i.ai = phi i32 [ %i.ah, %bb.h ], [ %i.n, %.critedge ] ; 5 uses
  store i32 %i.ai, ptr %7, align 8
  %.not42 = icmp eq ptr %.1, null
  br i1 %.not42, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = tail call i32 @get_tablespace_oid(ptr noundef nonnull %.1, i1 noundef zeroext false) #9 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.aj, ptr %i.ak, align 4
  %.not43 = icmp eq i32 %i.aj, 0
  %i.al = load i32, ptr @MyDatabaseTableSpace, align 4
  %.not44 = icmp eq i32 %i.aj, %i.al
  %or.cond = select i1 %.not43, i1 true, i1 %.not44
  br i1 %or.cond, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = tail call i32 @GetUserId() #9
  %i.an = tail call i32 @object_aclcheck(i32 noundef 1213, i32 noundef %i.aj, i32 noundef %i.am, i64 noundef 512) #9 ; 2 uses
  %.not45 = icmp eq i32 %i.an, 0
  br i1 %.not45, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = tail call ptr @get_tablespace_name(i32 noundef %i.aj) #9
  tail call void @aclcheck_error(i32 noundef %i.an, i32 noundef 43, ptr noundef %i.ao) #9
  br label %bb.n

bb.m:                                             ; preds = %.thread, %bb.i
  %i.ap = phi i32 [ 0, %.thread ], [ %i.ai, %bb.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.aq, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.j, %bb.m
  %i.ar = phi i32 [ %i.ai, %bb.k ], [ %i.ai, %bb.l ], [ %i.ai, %bb.j ], [ %i.ap, %bb.m ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.at = load i32, ptr %i.as, align 4            ; 3 uses
  switch i32 %i.at, label %bb.bp [
    i32 0, label %bb.o
    i32 1, label %bb.t
    i32 2, label %bb.ae
    i32 3, label %bb.ae
    i32 4, label %bb.ae
  ]

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.aw = load i64, ptr %7, align 8               ; 4 uses
  store i64 %i.aw, ptr %5, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ax, align 8
  %i.ay = and i64 %i.aw, 8
  %.not.i = icmp eq i64 %i.ay, 0
  %i.az = select i1 %.not.i, i32 8, i32 4
  %i.ba = call i32 @RangeVarGetRelidExtended(ptr noundef %i.av, i32 noundef %i.az, i32 noundef 0, ptr noundef nonnull @RangeVarCallbackForReindexIndex, ptr noundef nonnull %5) #9 ; 5 uses
  %i.bb = call signext i8 @get_rel_persistence(i32 noundef %i.ba) #9 ; 2 uses
  %i.bc = call signext i8 @get_rel_relkind(i32 noundef %i.ba) #9
  %i.bd = icmp eq i8 %i.bc, 73
  %i.be = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.bd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call fastcc void @ReindexPartitions(ptr noundef nonnull %1, i32 noundef %i.ba, ptr noundef nonnull readonly %7, i1 noundef zeroext %2)
  br label %ReindexIndex.exit

bb.q:                                             ; preds = %bb.o
  %i.bf = and i32 %i.be, 8
  %i.bg = icmp ne i32 %i.bf, 0
  %i.bh = icmp ne i8 %i.bb, 116
  %or.cond.i = select i1 %i.bg, i1 %i.bh, i1 false
  br i1 %or.cond.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bi = call fastcc zeroext i1 @ReindexRelationConcurrently(ptr noundef nonnull %1, i32 noundef %i.ba, ptr noundef nonnull readonly %7) ; 0 uses
  br label %ReindexIndex.exit

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  store i64 %i.aw, ptr %6, align 8
  %i.bj = or i32 %i.be, 2
  store i32 %i.bj, ptr %6, align 8
  call void @reindex_index(ptr noundef nonnull %1, i32 noundef %i.ba, i1 noundef zeroext false, i8 noundef signext %i.bb, ptr noundef nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %ReindexIndex.exit

ReindexIndex.exit:                                ; preds = %bb.p, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %ReindexTable.exit

bb.t:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8            ; 3 uses
  %8 = and i32 %i.ar, 8
  %.not.i46 = icmp eq i32 %8, 0                   ; 2 uses
  %9 = select i1 %.not.i46, i32 5, i32 4
  %i.bm = tail call i32 @RangeVarGetRelidExtended(ptr noundef %i.bl, i32 noundef %9, i32 noundef 0, ptr noundef nonnull @RangeVarCallbackMaintainsTable, ptr noundef null) #9 ; 5 uses
  %i.bn = tail call signext i8 @get_rel_relkind(i32 noundef %i.bm) #9
  %i.bo = icmp eq i8 %i.bn, 112
  br i1 %i.bo, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call fastcc void @ReindexPartitions(ptr noundef nonnull %1, i32 noundef %i.bm, ptr noundef nonnull readonly %7, i1 noundef zeroext %2)
  br label %ReindexTable.exit

bb.v:                                             ; preds = %bb.t
  br i1 %.not.i46, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bp = tail call signext i8 @get_rel_persistence(i32 noundef %i.bm) #9
  %.not21.i = icmp eq i8 %i.bp, 116
  br i1 %.not21.i, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bq = call fastcc zeroext i1 @ReindexRelationConcurrently(ptr noundef nonnull %1, i32 noundef %i.bm, ptr noundef nonnull readonly %7)
  br i1 %i.bq, label %ReindexTable.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.br = tail call zeroext i1 @errstart(i32 noundef 18, ptr noundef null) #9
  br i1 %i.br, label %bb.z, label %ReindexTable.exit

bb.z:                                             ; preds = %bb.y
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.112, ptr noundef %i.bt) #9 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3107, ptr noundef nonnull @__func__.ReindexTable) #9
  br label %ReindexTable.exit

bb.aa:                                            ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.bv = load i64, ptr %7, align 8               ; 2 uses
  store i64 %i.bv, ptr %4, align 8
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = or i32 %i.bw, 2
  store i32 %i.bx, ptr %4, align 8
  %i.by = call zeroext i1 @reindex_relation(ptr noundef nonnull %1, i32 noundef %i.bm, i32 noundef 5, ptr noundef nonnull %4) #9
  br i1 %i.by, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bz = call zeroext i1 @errstart(i32 noundef 18, ptr noundef null) #9
  br i1 %i.bz, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.113, ptr noundef %i.cb) #9 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3121, ptr noundef nonnull @__func__.ReindexTable) #9
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %ReindexTable.exit

bb.ae:                                            ; preds = %bb.n, %bb.n, %bb.n
  %i.cd = icmp eq i32 %i.at, 2
  %i.ce = icmp eq i32 %i.at, 3
  %i.cf = select i1 %i.ce, ptr @.str.60, ptr @.str.61
  %i.cg = select i1 %i.cd, ptr @.str.59, ptr %i.cf
  tail call void @PreventInTransactionBlock(i1 noundef zeroext %2, ptr noundef nonnull %i.cg) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8            ; 4 uses
  %i.cj = load i32, ptr %i.as, align 4            ; 3 uses
  %i.ck = icmp eq i32 %i.cj, 3                    ; 2 uses
  br i1 %i.ck, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.cl = and i32 %i.ar, 8
  %.not.i47 = icmp eq i32 %i.cl, 0
  br i1 %.not.i47, label %.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cm = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.cn = tail call i32 @errcode(i32 noundef 1088) #9 ; 0 uses
  %i.co = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.97) #9 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3167, ptr noundef nonnull @__func__.ReindexMultipleTables) #9
  unreachable

bb.ah:                                            ; preds = %bb.ae
  %i.cp = icmp eq i32 %i.cj, 2
  br i1 %i.cp, label %bb.ai, label %.thread.i

bb.ai:                                            ; preds = %bb.ah
  %i.cq = tail call i32 @get_namespace_oid(ptr noundef %i.ci, i1 noundef zeroext false) #9 ; 2 uses
  %i.cr = tail call i32 @GetUserId() #9
  %i.cs = tail call zeroext i1 @object_ownercheck(i32 noundef 2615, i32 noundef %i.cq, i32 noundef %i.cr) #9
  br i1 %i.cs, label %.thread83.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ct = tail call i32 @GetUserId() #9
  %i.cu = tail call zeroext i1 @has_privs_of_role(i32 noundef %i.ct, i32 noundef 6337) #9
  br i1 %i.cu, label %.thread83.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @aclcheck_error(i32 noundef 2, i32 noundef 37, ptr noundef %i.ci) #9
  br label %.thread83.i

.thread.i:                                        ; preds = %bb.ah, %bb.af
  %i.cv = load i32, ptr @MyDatabaseId, align 4    ; 3 uses
  %.not73.i = icmp eq ptr %i.ci, null
  br i1 %.not73.i, label %bb.an, label %bb.al

bb.al:                                            ; preds = %.thread.i
  %i.cw = tail call ptr @get_database_name(i32 noundef %i.cv) #9
  %i.cx = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ci, ptr noundef nonnull dereferenceable(1) %i.cw) #11
  %.not74.i = icmp eq i32 %i.cx, 0
  br i1 %.not74.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cy = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.cz = tail call i32 @errcode(i32 noundef 1088) #9 ; 0 uses
  %i.da = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.114) #9 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3191, ptr noundef nonnull @__func__.ReindexMultipleTables) #9
  unreachable

bb.an:                                            ; preds = %bb.al, %.thread.i
  %i.db = tail call i32 @GetUserId() #9
  %i.dc = tail call zeroext i1 @object_ownercheck(i32 noundef 1262, i32 noundef %i.cv, i32 noundef %i.db) #9
  br i1 %i.dc, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dd = tail call i32 @GetUserId() #9
  %i.de = tail call zeroext i1 @has_privs_of_role(i32 noundef %i.dd, i32 noundef 6337) #9
  br i1 %i.de, label %bb.ap, label %.split.i

.split.i:                                         ; preds = %bb.ao
  %i.df = tail call ptr @get_database_name(i32 noundef %i.cv) #9
  tail call void @aclcheck_error(i32 noundef 2, i32 noundef 9, ptr noundef %i.df) #9
  %i.dg = load ptr, ptr @PortalContext, align 8
  %i.dh = tail call ptr @AllocSetContextCreateInternal(ptr noundef %i.dg, ptr noundef nonnull @__func__.ReindexMultipleTables, i64 noundef 0, i64 noundef 1024, i64 noundef 8192) #9
  br label %bb.aq

.thread83.i:                                      ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.di = load ptr, ptr @PortalContext, align 8
  %i.dj = tail call ptr @AllocSetContextCreateInternal(ptr noundef %i.di, ptr noundef nonnull @__func__.ReindexMultipleTables, i64 noundef 0, i64 noundef 1024, i64 noundef 8192) #9
  %i.dk = zext i32 %i.cq to i64
  call void @ScanKeyInit(ptr noundef nonnull %3, i16 noundef signext 3, i16 noundef zeroext 3, i32 noundef 184, i64 noundef %i.dk) #9
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.dl = load ptr, ptr @PortalContext, align 8
  %i.dm = tail call ptr @AllocSetContextCreateInternal(ptr noundef %i.dl, ptr noundef nonnull @__func__.ReindexMultipleTables, i64 noundef 0, i64 noundef 1024, i64 noundef 8192) #9
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.thread83.i, %.split.i
  %i.dn = phi ptr [ %i.dj, %.thread83.i ], [ %i.dm, %bb.ap ], [ %i.dh, %.split.i ] ; 2 uses
  %.062.i = phi i32 [ 1, %.thread83.i ], [ 0, %bb.ap ], [ 0, %.split.i ]
  %i.do = call ptr @table_open(i32 noundef 1259, i32 noundef 1) #9 ; 2 uses
  %i.dp = call ptr @table_beginscan_catalog(ptr noundef %i.do, i32 noundef %.062.i, ptr noundef nonnull %3) #9 ; 4 uses
  %i.dq = call ptr @heap_getnext(ptr noundef %i.dp, i32 noundef 1) #9 ; 2 uses
  %.not7590.i = icmp eq ptr %i.dq, null
  br i1 %.not7590.i, label %ReindexMultipleTables.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aq
  %i.dr = icmp eq i32 %i.cj, 4
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 4
  br label %bb.ar

bb.ar:                                            ; preds = %.thread88.i, %.lr.ph.i
  %i.dt = phi ptr [ %i.dq, %.lr.ph.i ], [ %i.fh, %.thread88.i ]
  %.05893.i = phi i1 [ false, %.lr.ph.i ], [ %.3.i, %.thread88.i ] ; 10 uses
  %.06092.i = phi i1 [ false, %.lr.ph.i ], [ %.161.i, %.thread88.i ] ; 10 uses
  %.06391.i = phi ptr [ null, %.lr.ph.i ], [ %.265.i, %.thread88.i ] ; 13 uses
  %i.du = getelementptr i8, ptr %i.dt, i64 16
  %.val.i = load ptr, ptr %i.du, align 8          ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.val.i, i64 22
  %i.dw = load i8, ptr %i.dv, align 2
  %i.dx = zext i8 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.dx ; 7 uses
  %i.dz = load i32, ptr %i.dy, align 4            ; 7 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 119 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 1
  switch i8 %i.eb, label %.thread88.i [
    i8 114, label %bb.as
    i8 109, label %bb.as
  ], !llvm.loop !22

bb.as:                                            ; preds = %bb.ar, %bb.ar
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 118
  %i.ed = load i8, ptr %i.ec, align 2
  %i.ee = icmp eq i8 %i.ed, 116
  br i1 %i.ee, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 68
  %i.eg = load i32, ptr %i.ef, align 4
  %i.eh = call zeroext i1 @isTempNamespace(i32 noundef %i.eg) #9
  br i1 %i.eh, label %bb.au, label %.thread88.i, !llvm.loop !22

bb.au:                                            ; preds = %bb.at, %bb.as
  br i1 %i.ck, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ei = call zeroext i1 @IsCatalogRelationOid(i32 noundef %i.dz) #9
  br i1 %i.ei, label %.thread86.i, label %.thread88.i, !llvm.loop !22

bb.aw:                                            ; preds = %bb.au
  br i1 %i.dr, label %bb.ax, label %.thread86.i

bb.ax:                                            ; preds = %bb.aw
  %i.ej = call zeroext i1 @IsCatalogRelationOid(i32 noundef %i.dz) #9
  br i1 %i.ej, label %.thread88.i, label %.thread86.i, !llvm.loop !22

.thread86.i:                                      ; preds = %bb.ax, %bb.aw, %bb.av
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dy, i64 117
  %i.el = load i8, ptr %i.ek, align 1, !range !4, !noundef !5
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.thread86.i
  %i.en = call i32 @GetUserId() #9
  %i.eo = call i32 @pg_class_aclcheck(i32 noundef %i.dz, i32 noundef %i.en, i64 noundef 16384) #9
  %.not78.i = icmp eq i32 %i.eo, 0
  br i1 %.not78.i, label %bb.az, label %.thread88.i, !llvm.loop !22

bb.az:                                            ; preds = %bb.ay, %.thread86.i
  %i.ep = load i32, ptr %7, align 8
  %i.eq = and i32 %i.ep, 8
  %.not79.i = icmp eq i32 %i.eq, 0
  br i1 %.not79.i, label %bb.be, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.er = call zeroext i1 @IsCatalogRelationOid(i32 noundef %i.dz) #9
  br i1 %i.er, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %bb.ba
  br i1 %.06092.i, label %.thread88.i, label %bb.bc, !llvm.loop !22

bb.bc:                                            ; preds = %bb.bb
  %i.es = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #9
  br i1 %i.es, label %bb.bd, label %.thread88.i, !llvm.loop !22

bb.bd:                                            ; preds = %bb.bc
  %i.et = call i32 @errcode(i32 noundef 1088) #9  ; 0 uses
  %i.eu = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.115) #9 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3283, ptr noundef nonnull @__func__.ReindexMultipleTables) #9
  br label %.thread88.i, !llvm.loop !22

bb.be:                                            ; preds = %bb.ba, %bb.az
  %i.ev = load i32, ptr %i.ds, align 4
  %.not80.i = icmp eq i32 %i.ev, 0
  br i1 %.not80.i, label %bb.bl, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ew = load i8, ptr %i.ea, align 1
  switch i8 %i.ew, label %bb.bh [
    i8 114, label %bb.bg
    i8 105, label %bb.bg
    i8 83, label %bb.bg
    i8 116, label %bb.bg
    i8 109, label %bb.bg
  ]

bb.bg:                                            ; preds = %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.bf
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dy, i64 88
  %i.ey = load i32, ptr %i.ex, align 4
  %.not81.i = icmp eq i32 %i.ey, 0
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.0.i = phi i1 [ %.not81.i, %bb.bg ], [ false, %bb.bf ]
  %i.ez = call zeroext i1 @IsSystemClass(i32 noundef %i.dz, ptr noundef nonnull %i.dy) #9
  %spec.select82.i = select i1 %i.ez, i1 true, i1 %.0.i
  br i1 %spec.select82.i, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  br i1 %.05893.i, label %.thread88.i, label %bb.bj, !llvm.loop !22

bb.bj:                                            ; preds = %bb.bi
  %i.fa = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #9
  br i1 %i.fa, label %bb.bk, label %.thread88.i, !llvm.loop !22

bb.bk:                                            ; preds = %bb.bj
  %i.fb = call i32 @errcode(i32 noundef 16797828) #9 ; 0 uses
  %i.fc = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.116) #9 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3316, ptr noundef nonnull @__func__.ReindexMultipleTables) #9
  br label %.thread88.i, !llvm.loop !22

bb.bl:                                            ; preds = %bb.bh, %bb.be
  %i.fd = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.dn, ptr @CurrentMemoryContext, align 8
  %i.fe = icmp eq i32 %i.dz, 1259
  br i1 %i.fe, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ff = call ptr @lcons_oid(i32 noundef 1259, ptr noundef %.06391.i) #9
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.fg = call ptr @lappend_oid(ptr noundef %.06391.i, i32 noundef %i.dz) #9
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.164.i = phi ptr [ %i.ff, %bb.bm ], [ %i.fg, %bb.bn ]
  store ptr %i.fd, ptr @CurrentMemoryContext, align 8
  br label %.thread88.i

.thread88.i:                                      ; preds = %bb.bo, %bb.bk, %bb.bj, %bb.bi, %bb.bd, %bb.bc, %bb.bb, %bb.ay, %bb.ax, %bb.av, %bb.at, %bb.ar
  %.265.i = phi ptr [ %.06391.i, %bb.ar ], [ %.06391.i, %bb.av ], [ %.06391.i, %bb.ax ], [ %.06391.i, %bb.ay ], [ %.164.i, %bb.bo ], [ %.06391.i, %bb.bb ], [ %.06391.i, %bb.at ], [ %.06391.i, %bb.bc ], [ %.06391.i, %bb.bd ], [ %.06391.i, %bb.bi ], [ %.06391.i, %bb.bk ], [ %.06391.i, %bb.bj ] ; 2 uses
  %.161.i = phi i1 [ %.06092.i, %bb.ar ], [ %.06092.i, %bb.av ], [ %.06092.i, %bb.ax ], [ %.06092.i, %bb.ay ], [ %.06092.i, %bb.bo ], [ true, %bb.bb ], [ %.06092.i, %bb.at ], [ true, %bb.bc ], [ true, %bb.bd ], [ %.06092.i, %bb.bi ], [ %.06092.i, %bb.bk ], [ %.06092.i, %bb.bj ]
  %.3.i = phi i1 [ %.05893.i, %bb.ar ], [ %.05893.i, %bb.av ], [ %.05893.i, %bb.ax ], [ %.05893.i, %bb.ay ], [ %.05893.i, %bb.bo ], [ %.05893.i, %bb.bb ], [ %.05893.i, %bb.at ], [ %.05893.i, %bb.bc ], [ %.05893.i, %bb.bd ], [ true, %bb.bi ], [ true, %bb.bk ], [ true, %bb.bj ]
  %i.fh = call ptr @heap_getnext(ptr noundef %i.dp, i32 noundef 1) #9 ; 2 uses
  %.not75.i = icmp eq ptr %i.fh, null
  br i1 %.not75.i, label %ReindexMultipleTables.exit, label %bb.ar

ReindexMultipleTables.exit:                       ; preds = %.thread88.i, %bb.aq
  %.063.lcssa.i = phi ptr [ null, %bb.aq ], [ %.265.i, %.thread88.i ]
  %i.fi = load ptr, ptr %i.dp, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 320
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull %i.dp) #9, !inline_history !23
  call void @table_close(ptr noundef %i.do, i32 noundef 1) #9
  call fastcc void @ReindexMultipleInternal(ptr noundef %1, ptr noundef %.063.lcssa.i, ptr noundef nonnull readonly %7)
  call void @MemoryContextDelete(ptr noundef %i.dn) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %ReindexTable.exit

bb.bp:                                            ; preds = %bb.n
  %i.fn = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.fo = load i32, ptr %i.as, align 4
  %i.fp = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.62, i32 noundef %i.fo) #9 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2937, ptr noundef nonnull @__func__.ExecReindex) #9
  unreachable

ReindexTable.exit:                                ; preds = %bb.ad, %bb.z, %bb.y, %bb.x, %bb.u, %ReindexMultipleTables.exit, %ReindexIndex.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  ret void
}

declare zeroext i1 @defGetBoolean(ptr noundef) local_unnamed_addr #2

declare ptr @defGetString(ptr noundef) local_unnamed_addr #2

declare i32 @parser_errposition(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @PreventInTransactionBlock(i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare i32 @GetUserId() local_unnamed_addr #2

declare ptr @relation_open(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @StoreSingleInheritance(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @CatalogTupleDelete(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @relation_close(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @LockRelationOid(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @SetRelationHasSubclass(i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @recordDependencyOn(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @deleteDependencyRecordsForClass(i32 noundef, i32 noundef, i32 noundef, i8 noundef signext) local_unnamed_addr #2

declare void @fmgr_info(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @FunctionCall2Coll(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i1 @contain_mutable_functions_after_planning(ptr noundef) local_unnamed_addr #2

declare ptr @SearchSysCacheAttName(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @exprType(ptr noundef) local_unnamed_addr #2

declare i32 @exprCollation(ptr noundef) local_unnamed_addr #2

declare ptr @lappend(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @get_collation_oid(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare zeroext i1 @type_is_collatable(i32 noundef) local_unnamed_addr #2

declare i32 @compatible_oper_opid(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @get_commutator(i32 noundef) local_unnamed_addr #2

declare ptr @format_operator(i32 noundef) local_unnamed_addr #2

declare i32 @get_opclass_family(i32 noundef) local_unnamed_addr #2

declare i32 @get_op_opfamily_strategy(i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @get_opcode(i32 noundef) local_unnamed_addr #2

declare ptr @pstrdup(ptr noundef) local_unnamed_addr #2

declare i32 @pg_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @RangeVarGetRelidExtended(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @RangeVarCallbackForReindexIndex(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) #0 {
bb.a:
  %i.a = load i32, ptr %3, align 4
  %4 = and i32 %i.a, 8
  %.not = icmp eq i32 %4, 0
  %5 = select i1 %.not, i32 5, i32 4              ; 2 uses
  %i.b = icmp ne i32 %1, %2                       ; 3 uses
  %i.c = icmp ne i32 %2, 0
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  tail call void @UnlockRelationOid(i32 noundef %i.e, i32 noundef %5) #9
  store i32 0, ptr %i.d, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not33.a = icmp eq i32 %1, 0
  br i1 %.not33.a, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call signext i8 @get_rel_relkind(i32 noundef %1) #9
  %i.g = and i8 %i.f, -33
  %or.cond4.not = icmp eq i8 %i.g, 73
  br i1 %or.cond4.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.i = tail call i32 @errcode(i32 noundef 151027844) #9 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.88, ptr noundef %i.k) #9 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3039, ptr noundef nonnull @__func__.RangeVarCallbackForReindexIndex) #9
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = tail call i32 @IndexGetRelation(i32 noundef %1, i1 noundef zeroext false) #9 ; 4 uses
  br i1 %i.b, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load i32, ptr %i.n, align 4
  %.not34.a = icmp eq i32 %i.m, %i.o
  br i1 %.not34.a, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.q = tail call i32 @errcode(i32 noundef 67137668) #9 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.89, ptr noundef %i.s) #9 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3057, ptr noundef nonnull @__func__.RangeVarCallbackForReindexIndex) #9
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.u = tail call i32 @GetUserId() #9
  %i.v = tail call i32 @pg_class_aclcheck(i32 noundef %i.m, i32 noundef %i.u, i64 noundef 16384) #9 ; 2 uses
  %.not35 = icmp eq i32 %i.v, 0
  br i1 %.not35, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  tail call void @aclcheck_error(i32 noundef %i.v, i32 noundef 20, ptr noundef %i.x) #9
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %i.b, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @LockRelationOid(i32 noundef %i.m, i32 noundef %5) #9
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.m, ptr %i.y, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.c
  ret void
}

declare signext i8 @get_rel_relkind(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ReindexPartitions(ptr noundef %0, i32 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.ErrorContextCallback, align 8 ; 7 uses
  %5 = alloca %struct.ReindexErrorInfo, align 8   ; 6 uses
  %i.a = tail call signext i8 @get_rel_relkind(i32 noundef %1) #9 ; 2 uses
  %i.b = tail call ptr @get_rel_name(i32 noundef %1) #9
  %i.c = tail call i32 @get_rel_namespace(i32 noundef %1) #9
  %i.d = tail call ptr @get_namespace_name(i32 noundef %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.e = tail call ptr @pstrdup(ptr noundef %i.b) #9
  store ptr %i.e, ptr %5, align 8
  %i.f = tail call ptr @pstrdup(ptr noundef %i.d) #9
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 %i.a, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @reindex_error_callback, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %5, ptr %i.j, align 8
  %i.k = load ptr, ptr @error_context_stack, align 8
  store ptr %i.k, ptr %4, align 8
  store ptr %4, ptr @error_context_stack, align 8
  %i.l = icmp eq i8 %i.a, 112
  %i.m = select i1 %i.l, ptr @.str.90, ptr @.str.91
  call void @PreventInTransactionBlock(i1 noundef zeroext %3, ptr noundef nonnull %i.m) #9
  %i.n = load ptr, ptr %4, align 8
  store ptr %i.n, ptr @error_context_stack, align 8
  %i.o = load ptr, ptr @PortalContext, align 8
  %i.p = call ptr @AllocSetContextCreateInternal(ptr noundef %i.o, ptr noundef nonnull @.str.92, i64 noundef 0, i64 noundef 8192, i64 noundef 8388608) #9 ; 2 uses
  %i.q = call ptr @find_all_inheritors(i32 noundef %1, i32 noundef 5, ptr noundef null) #9 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = load i32, ptr %i.r, align 4
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph49, label %.critedge

.lr.ph49:                                         ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %.lr.ph ] ; 2 uses
  %.0394248 = phi ptr [ %.1, %bb.c ], [ null, %.lr.ph ] ; 2 uses
  %i.v = load ptr, ptr %i.s, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 8              ; 2 uses
  %i.y = call signext i8 @get_rel_relkind(i32 noundef %i.x) #9
  switch i8 %i.y, label %bb.c [
    i8 116, label %bb.b
    i8 114, label %bb.b
    i8 109, label %bb.b
    i8 105, label %bb.b
    i8 83, label %bb.b
  ]

.critedge:                                        ; preds = %bb.c, %.lr.ph, %bb.a
  %.039.lcssa = phi ptr [ null, %bb.a ], [ null, %.lr.ph ], [ %.1, %bb.c ]
  call fastcc void @ReindexMultipleInternal(ptr noundef %0, ptr noundef %.039.lcssa, ptr noundef %2)
  call void @MemoryContextDelete(ptr noundef %i.p) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret void

bb.b:                                             ; preds = %.lr.ph49, %.lr.ph49, %.lr.ph49, %.lr.ph49, %.lr.ph49
  %i.z = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.p, ptr @CurrentMemoryContext, align 8
  %i.aa = call ptr @lappend_oid(ptr noundef %.0394248, i32 noundef %i.x) #9
  store ptr %i.z, ptr @CurrentMemoryContext, align 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph49, %bb.b
  %.1 = phi ptr [ %i.aa, %bb.b ], [ %.0394248, %.lr.ph49 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = load i32, ptr %i.r, align 4
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next, %i.ac
  br i1 %i.ad, label %.lr.ph49, label %.critedge
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @ReindexRelationConcurrently(ptr noundef %0, i32 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.PGRUsage, align 8           ; 4 uses
  %i.a = alloca [4 x i32], align 16               ; 6 uses
  %i.b = alloca [4 x i64], align 16               ; 17 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %4 = alloca %struct.ObjectAddress, align 4      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) @__const.ReindexRelationConcurrently.progress_index, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.e = load ptr, ptr @PortalContext, align 8
  %i.f = tail call ptr @AllocSetContextCreateInternal(ptr noundef %i.e, ptr noundef nonnull @.str.96, i64 noundef 0, i64 noundef 1024, i64 noundef 8192) #9 ; 9 uses
  %i.g = load i32, ptr %2, align 4
  %i.h = and i32 %i.g, 1
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.f, ptr @CurrentMemoryContext, align 8
  %i.j = tail call ptr @get_rel_name(i32 noundef %1) #9
  %i.k = tail call i32 @get_rel_namespace(i32 noundef %1) #9
  %i.l = tail call ptr @get_namespace_name(i32 noundef %i.k) #9
  call void @pg_rusage_init(ptr noundef nonnull %3) #9
  store ptr %i.i, ptr @CurrentMemoryContext, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0327 = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ]
  %.0325 = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  %i.m = call signext i8 @get_rel_relkind(i32 noundef %1) #9 ; 2 uses
  switch i8 %i.m, label %bb.am [
    i8 114, label %bb.d
    i8 109, label %bb.d
    i8 116, label %bb.d
    i8 105, label %bb.z
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.n = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.f, ptr @CurrentMemoryContext, align 8
  %i.o = call ptr @lappend_oid(ptr noundef null, i32 noundef %1) #9 ; 2 uses
  store ptr %i.n, ptr @CurrentMemoryContext, align 8
  %i.p = call zeroext i1 @IsCatalogRelationOid(i32 noundef %1) #9
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.r = call i32 @errcode(i32 noundef 1088) #9   ; 0 uses
  %i.s = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.97) #9 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3678, ptr noundef nonnull @__func__.ReindexRelationConcurrently) #9
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.t = load i32, ptr %2, align 4
  %i.u = and i32 %i.t, 4
  %.not344 = icmp eq i32 %i.u, 0
  br i1 %.not344, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = call ptr @try_table_open(i32 noundef %1, i32 noundef 4) #9 ; 2 uses
  %.not345 = icmp eq ptr %i.v, null
  br i1 %.not345, label %.thread, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.w = call ptr @table_open(i32 noundef %1, i32 noundef 4) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0329 = phi ptr [ %i.v, %bb.g ], [ %i.w, %bb.h ] ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.y = load i32, ptr %i.x, align 4
  %.not346 = icmp eq i32 %i.y, 0
  br i1 %.not346, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = call zeroext i1 @IsSystemRelation(ptr noundef %.0329) #9
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aa = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.ab = call i32 @errcode(i32 noundef 1088) #9  ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0329, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.98, ptr noundef nonnull %i.ae) #9 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3698, ptr noundef nonnull @__func__.ReindexRelationConcurrently) #9
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.ag = call ptr @RelationGetIndexList(ptr noundef %.0329) #9 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  %.not347 = icmp eq ptr %i.ag, null
  br i1 %.not347, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.aj = load i32, ptr %i.ah, align 4
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph534, label %.critedge

.lr.ph534:                                        ; preds = %.lr.ph, %bb.s
  %.0308405533 = phi ptr [ %.1309, %bb.s ], [ null, %.lr.ph ] ; 5 uses
  %indvars.iv532 = phi i64 [ %indvars.iv.next, %bb.s ], [ 0, %.lr.ph ] ; 2 uses
  %i.al = load ptr, ptr %i.ai, align 8
end_hunk_0
