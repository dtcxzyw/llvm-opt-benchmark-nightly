Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/publicationcmds?download=true
inline.NumInlined: 77
inline.NumDeleted: 18
begin_hunk_0_@pub_contains_invalid_column:bb.a
  %i.cc = load i8, ptr %6, align 1, !range !4, !noundef !5
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %.thread, label %bb.v

bb.u:                                             ; preds = %.lr.ph.split.us.split
  %i.ce = sext i16 %i.bq to i64
  %i.cf = load i32, ptr %i.e, align 8
  %i.cg = sext i32 %i.cf to i64
  %i.ch = shl nsw i64 %i.cg, 3
  %i.ci = getelementptr i8, ptr %i.e, i64 %i.ch
  %i.cj = getelementptr [100 x i8], ptr %i.ci, i64 %i.ce
  %i.ck = getelementptr i8, ptr %i.cj, i64 22
  %i.cl = load i8, ptr %i.ck, align 2
  switch i8 %i.cl, label %bb.v [
    i8 115, label %.thread.sink.split
    i8 118, label %.thread.sink.split
  ]

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.cm = call i32 @bms_next_member(ptr noundef %i.ak, i32 noundef %i.bo) #7 ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, -1
  br i1 %i.cn, label %.lr.ph.split.us.split, label %.thread

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not69, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.z
  %i.co = phi i32 [ %i.dk, %bb.z ], [ %i.al, %.lr.ph.split ] ; 2 uses
  %i.cp = trunc i32 %i.co to i16
  %i.cq = add i16 %i.cp, -7                       ; 2 uses
  %i.cr = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.y, label %bb.w

bb.w:                                             ; preds = %.lr.ph.split.split.us
  %i.ct = sext i16 %i.cq to i32
  %i.cu = call zeroext i1 @bms_is_member(i32 noundef %i.ct, ptr noundef nonnull %i.cr) #7
  %i.cv = xor i1 %i.cu, true
  %i.cw = load i8, ptr %5, align 1, !range !4, !noundef !5
  %i.cx = zext i1 %i.cv to i8
  %i.cy = or i8 %i.cw, %i.cx                      ; 2 uses
  %.not62.us67 = icmp eq i8 %i.cy, 0
  store i8 %i.cy, ptr %5, align 1
  br i1 %.not62.us67, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cz = load i8, ptr %6, align 1, !range !4, !noundef !5
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %.thread, label %bb.z

bb.y:                                             ; preds = %.lr.ph.split.split.us
  %i.db = sext i16 %i.cq to i64
  %i.dc = load i32, ptr %i.e, align 8
  %i.dd = sext i32 %i.dc to i64
  %i.de = shl nsw i64 %i.dd, 3
  %i.df = getelementptr i8, ptr %i.e, i64 %i.de
  %i.dg = getelementptr [100 x i8], ptr %i.df, i64 %i.db
  %i.dh = getelementptr i8, ptr %i.dg, i64 22
  %i.di = load i8, ptr %i.dh, align 2
  %i.dj = icmp eq i8 %i.di, 118
  br i1 %i.dj, label %.thread.sink.split, label %bb.z, !llvm.loop !9

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %i.dk = call i32 @bms_next_member(ptr noundef %i.ak, i32 noundef %i.co) #7 ; 2 uses
  %i.dl = icmp sgt i32 %i.dk, -1
  br i1 %i.dl, label %.lr.ph.split.split.us, label %.thread

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.ad
  %i.dm = phi i32 [ %i.eh, %bb.ad ], [ %i.al, %.lr.ph.split ] ; 2 uses
  %i.dn = trunc i32 %i.dm to i16
  %i.do = add i16 %i.dn, -7                       ; 2 uses
  %i.dp = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.split.split
  %i.dr = sext i16 %i.do to i64
  %i.ds = load i32, ptr %i.e, align 8
  %i.dt = sext i32 %i.ds to i64
  %i.du = shl nsw i64 %i.dt, 3
  %i.dv = getelementptr i8, ptr %i.e, i64 %i.du
  %i.dw = getelementptr [100 x i8], ptr %i.dv, i64 %i.dr
  %i.dx = getelementptr i8, ptr %i.dw, i64 22
  %i.dy = load i8, ptr %i.dx, align 2
  switch i8 %i.dy, label %bb.ad [
    i8 115, label %.thread.sink.split
    i8 118, label %.thread.sink.split
  ]

bb.ab:                                            ; preds = %.lr.ph.split.split
  %i.dz = sext i16 %i.do to i32
  %i.ea = call zeroext i1 @bms_is_member(i32 noundef %i.dz, ptr noundef nonnull %i.dp) #7
  %i.eb = xor i1 %i.ea, true
  %i.ec = load i8, ptr %5, align 1, !range !4, !noundef !5
  %i.ed = zext i1 %i.eb to i8
  %i.ee = or i8 %i.ec, %i.ed                      ; 2 uses
  %.not62 = icmp eq i8 %i.ee, 0
  store i8 %i.ee, ptr %5, align 1
  br i1 %.not62, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ef = load i8, ptr %6, align 1, !range !4, !noundef !5
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %bb.ab, %bb.ac
  %i.eh = call i32 @bms_next_member(ptr noundef %i.ak, i32 noundef %i.dm) #7 ; 2 uses
  %i.ei = icmp sgt i32 %i.eh, -1
  br i1 %i.ei, label %.lr.ph.split.split, label %.thread

.thread.sink.split:                               ; preds = %bb.aa, %bb.aa, %bb.y, %bb.u, %bb.u, %bb.q
  store i8 1, ptr %6, align 1
  br label %.thread

.thread:                                          ; preds = %bb.ad, %bb.ac, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.p, %.thread.sink.split, %bb.n
  %i.ej = load ptr, ptr %i.a, align 8
  call void @bms_free(ptr noundef %i.ej) #7
  call void @bms_free(ptr noundef %i.ak) #7
  %i.ek = load i8, ptr %5, align 1, !range !4, !noundef !5
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.thread
  %i.em = load i8, ptr %6, align 1, !range !4, !noundef !5
  %i.en = trunc nuw i8 %i.em to i1
  br label %bb.af

bb.af:                                            ; preds = %.thread, %bb.ae, %bb.m
  %.0 = phi i1 [ true, %bb.m ], [ true, %.thread ], [ %i.en, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i1 %.0
}

declare ptr @GetPublication(i32 noundef) local_unnamed_addr #2

declare zeroext i1 @check_and_fetch_column_list(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @bms_next_member(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @get_attname(i32 noundef, i16 noundef signext, i1 noundef zeroext) local_unnamed_addr #2

declare signext i16 @get_attnum(i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @bms_is_member(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @bms_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @InvalidatePubRelSyncCache(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @CacheInvalidateRelSyncAll() #7
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.a = tail call ptr @GetIncludedPublicationRelations(i32 noundef %0, i32 noundef 2) #7
  %i.b = tail call ptr @GetAllSchemaPublicationRelations(i32 noundef %0, i32 noundef 2) #7
  %i.c = tail call ptr @list_concat_unique_oid(ptr noundef %i.a, ptr noundef %i.b) #7 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %.not12 = icmp eq ptr %i.c, null
  br i1 %.not12, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load i32, ptr %i.d, align 4
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph18, label %.critedge

.lr.ph18:                                         ; preds = %.lr.ph, %.lr.ph18
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph18 ], [ 0, %.lr.ph ] ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 8
  tail call void @CacheInvalidateRelSync(i32 noundef %i.j) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = load i32, ptr %i.d, align 4
  %i.l = sext i32 %i.k to i64
  %i.m = icmp slt i64 %indvars.iv.next, %i.l
  br i1 %i.m, label %.lr.ph18, label %.critedge

.critedge:                                        ; preds = %.lr.ph18, %bb.c, %.lr.ph, %bb.b
  ret void
}

declare void @CacheInvalidateRelSyncAll() local_unnamed_addr #2

declare ptr @GetIncludedPublicationRelations(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @GetAllSchemaPublicationRelations(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @list_concat_unique_oid(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CacheInvalidateRelSync(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local { i64, i32 } @CreatePublication(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [11 x i8], align 1                ; 4 uses
  %i.b = alloca [11 x i64], align 16              ; 14 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %2 = alloca %struct.PublicationActions, align 1 ; 7 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  store ptr null, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  store ptr null, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #7
  store ptr null, ptr %i.j, align 8
  %i.k = load i32, ptr @MyDatabaseId, align 4
  %i.l = tail call i32 @GetUserId() #7
  %i.m = tail call i32 @object_aclcheck(i32 noundef 1262, i32 noundef %i.k, i32 noundef %i.l, i64 noundef 512) #7 ; 2 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load i32, ptr @MyDatabaseId, align 4
  %i.o = tail call ptr @get_database_name(i32 noundef %i.n) #7
  tail call void @aclcheck_error(i32 noundef %i.m, i32 noundef 9, ptr noundef %i.o) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = tail call zeroext i1 @superuser() #7
  br i1 %i.p, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load i8, ptr %i.q, align 8, !range !4, !noundef !5
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.u = load i8, ptr %i.t, align 1, !range !4, !noundef !5
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.x = tail call i32 @errcode(i32 noundef 16797828) #7 ; 0 uses
  %i.y = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 867, ptr noundef nonnull @__func__.CreatePublication) #7
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.c
  %i.z = tail call ptr @table_open(i32 noundef 6104, i32 noundef 3) #7 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = tail call i32 @GetSysCacheOid(i32 noundef 56, i16 noundef signext 1, i64 noundef %i.ac, i64 noundef 0, i64 noundef 0, i64 noundef 0) #7
  %.not45 = icmp eq i32 %i.ad, 0
  br i1 %.not45, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.af = tail call i32 @errcode(i32 noundef 290948) #7 ; 0 uses
  %i.ag = load ptr, ptr %i.aa, align 8
  %i.ah = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.2, ptr noundef %i.ag) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 879, ptr noundef nonnull @__func__.CreatePublication) #7
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.a, i8 0, i64 11, i1 false)
  %i.ai = load ptr, ptr %i.aa, align 8
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = tail call i64 @DirectFunctionCall1Coll(ptr noundef nonnull @namein, i32 noundef 0, i64 noundef %i.aj) #7
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ak, ptr %i.al, align 8
  %i.am = tail call i32 @GetUserId() #7
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.an, ptr %i.ao, align 16
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  call fastcc void @parse_publication_options(ptr noundef %0, ptr noundef %i.aq, ptr noundef %i.c, ptr noundef %2, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.g)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 33 ; 3 uses
  %i.as = load i8, ptr %i.ar, align 1, !range !4, !noundef !5
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.au = load i8, ptr %i.c, align 1, !range !4, !noundef !5
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = load i8, ptr %i.d, align 1, !range !4
  %i.ax = trunc nuw i8 %i.aw to i1
  %or.cond = select i1 %i.av, i1 true, i1 %i.ax
  %i.ay = load i8, ptr %i.f, align 1, !range !4
  %i.az = trunc nuw i8 %i.ay to i1
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.az
  br i1 %or.cond3, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ba = tail call zeroext i1 @errstart(i32 noundef 18, ptr noundef null) #7
  br i1 %i.ba, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bb = tail call i32 @errcode(i32 noundef 325) #7 ; 0 uses
  %i.bc = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.3) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 902, ptr noundef nonnull @__func__.CreatePublication) #7
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j, %bb.i
  %i.bd = tail call i32 @GetNewOidWithIndex(ptr noundef %i.z, i32 noundef 6110, i16 noundef signext 1) #7 ; 6 uses
  %i.be = zext i32 %i.bd to i64                   ; 2 uses
  store i64 %i.be, ptr %i.b, align 16
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %3 = load i8, ptr %i.bf, align 8, !range !4, !noundef !5
  %4 = zext nneg i8 %3 to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %4, ptr %i.bg, align 8
  %5 = load i8, ptr %i.ar, align 1, !range !4, !noundef !5
  %6 = zext nneg i8 %5 to i64
  %7 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %6, ptr %7, align 16
  %8 = load i8, ptr %2, align 1, !range !4, !noundef !5
  %9 = zext nneg i8 %8 to i64
  %10 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %9, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %12 = load i8, ptr %11, align 1, !range !4, !noundef !5
  %13 = zext nneg i8 %12 to i64
  %14 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %13, ptr %14, align 16
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %16 = load i8, ptr %15, align 1, !range !4, !noundef !5
  %17 = zext nneg i8 %16 to i64
  %18 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %17, ptr %18, align 8
  %19 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %20 = load i8, ptr %19, align 1, !range !4, !noundef !5
  %21 = zext nneg i8 %20 to i64
  %22 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %21, ptr %22, align 16
  %i.bh = load i8, ptr %i.e, align 1, !range !4, !noundef !5 ; 2 uses
  %i.bi = trunc nuw i8 %i.bh to i1                ; 2 uses
  %i.bj = zext nneg i8 %i.bh to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 %i.bj, ptr %i.bk, align 8
  %i.bl = load i8, ptr %i.g, align 1
  %i.bm = sext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 %i.bm, ptr %i.bn, align 16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = call ptr @heap_form_tuple(ptr noundef %i.bp, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #7 ; 2 uses
  call void @CatalogTupleInsert(ptr noundef %i.z, ptr noundef %i.bq) #7
  call void @heap_freetuple(ptr noundef %i.bq) #7
  %i.br = call i32 @GetUserId() #7
  call void @recordDependencyOnOwner(i32 noundef 6104, i32 noundef %i.bd, i32 noundef %i.br) #7
  call void @CommandCounterIncrement() #7
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  call fastcc void @ObjectsInPublicationToOids(ptr noundef %i.bt, ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j)
  %i.bu = load i8, ptr %i.bf, align 8, !range !4, !noundef !5
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bw = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not49 = icmp eq ptr %i.bw, null
  br i1 %.not49, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bx = call fastcc ptr @OpenTableList(ptr noundef nonnull %i.bw) ; 5 uses
  call fastcc void @PublicationAddTables(i32 noundef %i.bd, ptr noundef %i.bx, i1 noundef zeroext true, ptr noundef null)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bx, null
  br i1 %.not.i, label %CloseTableList.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.ca = load i32, ptr %i.by, align 4
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %.lr.ph13.i, label %CloseTableList.exit

.lr.ph13.i:                                       ; preds = %.lr.ph.i, %.lr.ph13.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph13.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.cc = load ptr, ptr %i.bz, align 8
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv.i
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = load ptr, ptr %i.ce, align 8
  call void @table_close(ptr noundef %i.cf, i32 noundef 0) #7
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cg = load i32, ptr %i.by, align 4
  %i.ch = sext i32 %i.cg to i64
  %i.ci = icmp slt i64 %indvars.iv.next.i, %i.ch
  br i1 %i.ci, label %.lr.ph13.i, label %CloseTableList.exit

CloseTableList.exit:                              ; preds = %.lr.ph13.i, %bb.o, %.lr.ph.i
  call void @list_free_deep(ptr noundef %i.bx) #7
  br label %bb.p

bb.p:                                             ; preds = %CloseTableList.exit, %bb.n
  call void @CacheInvalidateRelcacheAll() #7
  br label %PublicationAddSchemas.exit

bb.q:                                             ; preds = %bb.m
  %i.cj = load i8, ptr %i.ar, align 1, !range !4, !noundef !5
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %PublicationAddSchemas.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cl = load ptr, ptr %i.j, align 8             ; 4 uses
  %.not46 = icmp ne ptr %i.cl, null               ; 3 uses
  br i1 %.not46, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cm = call zeroext i1 @superuser() #7
  br i1 %i.cm, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cn = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.co = call i32 @errcode(i32 noundef 16797828) #7 ; 0 uses
  %i.cp = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.4) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 966, ptr noundef nonnull @__func__.CreatePublication) #7
  unreachable

bb.u:                                             ; preds = %bb.s, %bb.r
  %i.cq = load ptr, ptr %i.h, align 8             ; 2 uses
  %.not47 = icmp eq ptr %i.cq, null
  br i1 %.not47, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cr = call fastcc ptr @OpenTableList(ptr noundef nonnull %i.cq) ; 7 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  call fastcc void @TransformPubWhereClauses(ptr noundef %i.cr, ptr noundef %i.ct, i1 noundef zeroext %i.bi)
  %i.cu = load ptr, ptr %i.aa, align 8
  call fastcc void @CheckPubRelationColumnList(ptr noundef %i.cu, ptr noundef %i.cr, i1 noundef zeroext %.not46, i1 noundef zeroext %i.bi)
  call fastcc void @PublicationAddTables(i32 noundef %i.bd, ptr noundef %i.cr, i1 noundef zeroext true, ptr noundef null)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 4 ; 2 uses
  %.not.i51 = icmp eq ptr %i.cr, null
  br i1 %.not.i51, label %CloseTableList.exit56, label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %bb.v
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.cx = load i32, ptr %i.cv, align 4
  %i.cy = icmp sgt i32 %i.cx, 0
  br i1 %i.cy, label %.lr.ph13.i53, label %CloseTableList.exit56

.lr.ph13.i53:                                     ; preds = %.lr.ph.i52, %.lr.ph13.i53
  %indvars.iv.i54 = phi i64 [ %indvars.iv.next.i55, %.lr.ph13.i53 ], [ 0, %.lr.ph.i52 ] ; 2 uses
  %i.cz = load ptr, ptr %i.cw, align 8
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv.i54
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = load ptr, ptr %i.db, align 8
  call void @table_close(ptr noundef %i.dc, i32 noundef 0) #7
  %indvars.iv.next.i55 = add nuw nsw i64 %indvars.iv.i54, 1 ; 2 uses
  %i.dd = load i32, ptr %i.cv, align 4
  %i.de = sext i32 %i.dd to i64
  %i.df = icmp slt i64 %indvars.iv.next.i55, %i.de
  br i1 %i.df, label %.lr.ph13.i53, label %CloseTableList.exit56

CloseTableList.exit56:                            ; preds = %.lr.ph13.i53, %bb.v, %.lr.ph.i52
  call void @list_free_deep(ptr noundef %i.cr) #7
  br label %bb.w

bb.w:                                             ; preds = %CloseTableList.exit56, %bb.u
  br i1 %.not46, label %.lr.ph.i58, label %PublicationAddSchemas.exit

.lr.ph.i58:                                       ; preds = %bb.w
  call fastcc void @LockSchemaList(ptr noundef nonnull %i.cl)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cl, i64 4 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.di = load i32, ptr %i.dg, align 4
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %.lr.ph29.i, label %PublicationAddSchemas.exit

.lr.ph29.i:                                       ; preds = %.lr.ph.i58, %.lr.ph29.i
  %indvars.iv32.i = phi i64 [ %indvars.iv.next33.i, %.lr.ph29.i ], [ 0, %.lr.ph.i58 ] ; 2 uses
  %i.dk = load ptr, ptr %i.dh, align 8
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv32.i
  %i.dm = load i32, ptr %i.dl, align 8
  %i.dn = call { i64, i32 } @publication_add_schema(i32 noundef %i.bd, i32 noundef %i.dm, i1 noundef zeroext true) #7 ; 0 uses
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %i.do = load i32, ptr %i.dg, align 4
  %i.dp = sext i32 %i.do to i64
  %i.dq = icmp slt i64 %indvars.iv.next33.i, %i.dp
  br i1 %i.dq, label %.lr.ph29.i, label %PublicationAddSchemas.exit

PublicationAddSchemas.exit:                       ; preds = %.lr.ph29.i, %.lr.ph.i58, %bb.q, %bb.w, %bb.p
  call void @table_close(ptr noundef nonnull %i.z, i32 noundef 3) #7
  %i.dr = load ptr, ptr @object_access_hook, align 8
  %.not50 = icmp eq ptr %i.dr, null
  br i1 %.not50, label %bb.y, label %bb.x

bb.x:                                             ; preds = %PublicationAddSchemas.exit
  call void @RunObjectPostCreateHook(i32 noundef 6104, i32 noundef %i.bd, i32 noundef 0, i1 noundef zeroext false) #7
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %PublicationAddSchemas.exit
  %i.ds = load i32, ptr @wal_level, align 4
  %i.dt = icmp slt i32 %i.ds, 1
  br i1 %i.dt, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.du = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #7
  br i1 %i.du, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dv = call i32 @errcode(i32 noundef 325) #7   ; 0 uses
  %i.dw = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.5) #7 ; 0 uses
  %i.dx = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.6) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1008, ptr noundef nonnull @__func__.CreatePublication) #7
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %.sroa.241.0.insert.shift = shl nuw i64 %i.be, 32
  %.sroa.040.0.insert.insert = or disjoint i64 %.sroa.241.0.insert.shift, 6104
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.040.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 0, 1
  ret { i64, i32 } %.fca.1.insert
}

declare i32 @object_aclcheck(i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @GetUserId() local_unnamed_addr #2

declare void @aclcheck_error(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @get_database_name(i32 noundef) local_unnamed_addr #2

end_hunk_0
begin_hunk_1_@CheckPubRelationColumnList:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.40, ptr noundef %i.ae, ptr noundef nonnull %i.ai, ptr noundef %0) #7 ; 0 uses
  %i.ak = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.41) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 813, ptr noundef nonnull @__func__.CheckPubRelationColumnList) #7
  unreachable

.split.us23:                                      ; preds = %bb.e
  %i.al = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.am = tail call i32 @errcode(i32 noundef 50856066) #7 ; 0 uses
  %i.an = load ptr, ptr %i.n, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 68
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = tail call ptr @get_namespace_name(i32 noundef %i.ar) #7
  %i.at = load ptr, ptr %i.n, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.40, ptr noundef %i.as, ptr noundef nonnull %i.aw, ptr noundef %0) #7 ; 0 uses
  %i.ay = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.19) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 828, ptr noundef nonnull @__func__.CheckPubRelationColumnList) #7
  unreachable

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.d
}

; Function Attrs: nounwind uwtable
define internal fastcc void @LockSchemaList(ptr nofree noundef readonly captures(address_is_null) %0) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.a, align 4
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph14, label %.critedge

bb.b:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.e = load i32, ptr %i.a, align 4
  %i.f = sext i32 %i.e to i64
  %i.g = icmp slt i64 %indvars.iv.next, %i.f
  br i1 %i.g, label %.lr.ph14, label %.critedge

.lr.ph14:                                         ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph ] ; 2 uses
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 8              ; 3 uses
  %i.k = load volatile i32, ptr @InterruptPending, align 4
  %.not10 = icmp eq i32 %i.k, 0
  br i1 %.not10, label %bb.d, label %bb.c, !prof !7

.critedge:                                        ; preds = %bb.b, %.lr.ph, %bb.a
  ret void

bb.c:                                             ; preds = %.lr.ph14
  tail call void @ProcessInterrupts() #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph14
  tail call void @LockDatabaseObject(i32 noundef 2615, i32 noundef %i.j, i16 noundef zeroext 0, i32 noundef 1) #7
  %i.l = zext i32 %i.j to i64
  %i.m = tail call zeroext i1 @SearchSysCacheExists(i32 noundef 38, i64 noundef %i.l, i64 noundef 0, i64 noundef 0, i64 noundef 0) #7
  br i1 %i.m, label %bb.b, label %.split

.split:                                           ; preds = %bb.d
  %i.n = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.o = tail call i32 @errcode(i32 noundef 1411) #7 ; 0 uses
  %i.p = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.69, i32 noundef %i.j) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2030, ptr noundef nonnull @__func__.LockSchemaList) #7
  unreachable
}

; Function Attrs: nounwind uwtable
define internal fastcc void @PublicationAddSchemas(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.not20 = icmp eq ptr %3, null
  %.sroa.0.0.copyload = load i64, ptr @InvalidObjectAddress, align 4
  %.sroa.2.0.copyload = load i32, ptr getelementptr inbounds nuw (i8, ptr @InvalidObjectAddress, i64 8), align 4
  %i.c = load i32, ptr %i.a, align 4
  %i.d = icmp sgt i32 %i.c, 0                     ; 2 uses
  br i1 %.not20, label %.lr.ph.split.us.split, label %.lr.ph.split.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph
  br i1 %i.d, label %.lr.ph29, label %.critedge

.lr.ph29:                                         ; preds = %.lr.ph.split.us.split, %.lr.ph29
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %.lr.ph29 ], [ 0, %.lr.ph.split.us.split ] ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = tail call { i64, i32 } @publication_add_schema(i32 noundef %0, i32 noundef %i.g, i1 noundef zeroext %2) #7 ; 0 uses
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %i.i = load i32, ptr %i.a, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = icmp slt i64 %indvars.iv.next33, %i.j
  br i1 %i.k, label %.lr.ph29, label %.critedge

.lr.ph.split.split:                               ; preds = %.lr.ph
  br i1 %i.d, label %.lr.ph27, label %.critedge

.lr.ph27:                                         ; preds = %.lr.ph.split.split, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %.lr.ph.split.split ] ; 2 uses
  %i.l = load ptr, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 8
  %i.o = tail call { i64, i32 } @publication_add_schema(i32 noundef %0, i32 noundef %i.n, i1 noundef zeroext %2) #7 ; 2 uses
  %.fca.0.extract = extractvalue { i64, i32 } %i.o, 0 ; 2 uses
  %.fca.1.extract = extractvalue { i64, i32 } %i.o, 1
  tail call void @EventTriggerCollectSimpleCommand(i64 %.fca.0.extract, i32 %.fca.1.extract, i64 %.sroa.0.0.copyload, i32 %.sroa.2.0.copyload, ptr noundef nonnull %3) #7
  %i.p = load ptr, ptr @object_access_hook, align 8
  %.not21 = icmp eq ptr %i.p, null
  br i1 %.not21, label %bb.c, label %bb.b

.critedge:                                        ; preds = %bb.c, %.lr.ph29, %.lr.ph.split.us.split, %.lr.ph.split.split, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph27
  %.sroa.06.4.extract.shift = lshr i64 %.fca.0.extract, 32
  %.sroa.06.4.extract.trunc = trunc nuw i64 %.sroa.06.4.extract.shift to i32
  tail call void @RunObjectPostCreateHook(i32 noundef 6237, i32 noundef %.sroa.06.4.extract.trunc, i32 noundef 0, i1 noundef zeroext false) #7
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph27, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = load i32, ptr %i.a, align 4
  %i.r = sext i32 %i.q to i64
  %i.s = icmp slt i64 %indvars.iv.next, %i.r
  br i1 %i.s, label %.lr.ph27, label %.critedge
}

declare void @table_close(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @RunObjectPostCreateHook(i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @errhint(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @InvalidatePublicationRels(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %.critedge, label %list_length.exit

list_length.exit:                                 ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = icmp slt i32 %i.b, 4096
  br i1 %i.c, label %.lr.ph, label %bb.b

.lr.ph:                                           ; preds = %list_length.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = icmp sgt i32 %i.b, 0
  br i1 %i.e, label %.critedge9, label %.critedge

.critedge9:                                       ; preds = %.lr.ph, %.critedge9
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge9 ], [ 0, %.lr.ph ] ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 8
  tail call void @CacheInvalidateRelcacheByRelid(i32 noundef %i.h) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.i = load i32, ptr %i.a, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = icmp slt i64 %indvars.iv.next, %i.j
  br i1 %i.k, label %.critedge9, label %.critedge

bb.b:                                             ; preds = %list_length.exit
  tail call void @CacheInvalidateRelcacheAll() #7
  br label %.critedge

.critedge:                                        ; preds = %.critedge9, %bb.a, %.lr.ph, %bb.b
  ret void
}

declare void @CacheInvalidateRelcacheByRelid(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @AlterPublication(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ObjectAddress, align 4      ; 6 uses
  %i.a = alloca [11 x i8], align 1                ; 4 uses
  %i.b = alloca [11 x i8], align 1                ; 7 uses
  %i.c = alloca [11 x i64], align 16              ; 6 uses
  %3 = alloca %struct.ObjectAddress, align 4      ; 6 uses
  %i.d = alloca i8, align 1                       ; 7 uses
  %i.e = alloca [11 x i8], align 1                ; 4 uses
  %i.f = alloca [11 x i8], align 1                ; 7 uses
  %i.g = alloca [11 x i64], align 16              ; 10 uses
  %i.h = alloca i8, align 1                       ; 5 uses
  %4 = alloca %struct.PublicationActions, align 1 ; 7 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %i.j = alloca i8, align 1                       ; 5 uses
  %i.k = alloca i8, align 1                       ; 5 uses
  %i.l = alloca i8, align 1                       ; 4 uses
  %i.m = alloca ptr, align 8                      ; 6 uses
  %i.n = alloca ptr, align 8                      ; 5 uses
  %i.o = alloca ptr, align 8                      ; 6 uses
  %i.p = tail call ptr @table_open(i32 noundef 6104, i32 noundef 3) #7 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = tail call ptr @SearchSysCacheCopy(i32 noundef 56, i64 noundef %i.s, i64 noundef 0, i64 noundef 0, i64 noundef 0) #7 ; 5 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.v = tail call i32 @errcode(i32 noundef 67137668) #7 ; 0 uses
  %i.w = load ptr, ptr %i.q, align 8
  %i.x = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7, ptr noundef %i.w) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1672, ptr noundef nonnull @__func__.AlterPublication) #7
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.y = getelementptr i8, ptr %i.t, i64 16       ; 3 uses
  %.val = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 22
  %i.aa = load i8, ptr %i.z, align 2
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = tail call i32 @GetUserId() #7
  %i.af = tail call zeroext i1 @object_ownercheck(i32 noundef 6104, i32 noundef %i.ad, i32 noundef %i.ae) #7
  br i1 %i.af, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr %i.q, align 8
  tail call void @aclcheck_error(i32 noundef 2, i32 noundef 31, ptr noundef %i.ag) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not32 = icmp eq ptr %i.ai, null
  br i1 %.not32, label %bb.ab, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #7
  %.val85.i = load ptr, ptr %i.y, align 8         ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val85.i, i64 22
  %i.ak = load i8, ptr %i.aj, align 2
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %.val85.i, i64 %i.al ; 5 uses
  call fastcc void @parse_publication_options(ptr noundef %0, ptr noundef nonnull %i.ai, ptr noundef %i.h, ptr noundef %4, ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l)
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 73
  %i.ao = load i8, ptr %i.an, align 1, !range !4, !noundef !5
  %i.ap = trunc nuw i8 %i.ao to i1
  %.pre.i = load i8, ptr %i.i, align 1, !range !4 ; 2 uses
  br i1 %i.ap, label %bb.g, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.f
  %.pre106.i = trunc nuw i8 %.pre.i to i1
  br label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aq = load i8, ptr %i.h, align 1, !range !4, !noundef !5
  %i.ar = trunc nuw i8 %i.aq to i1
  %i.as = trunc nuw i8 %.pre.i to i1              ; 3 uses
  %or.cond.i = select i1 %i.ar, i1 true, i1 %i.as
  %i.at = load i8, ptr %i.k, align 1, !range !4
  %i.au = trunc nuw i8 %i.at to i1
  %or.cond3.i = select i1 %or.cond.i, i1 true, i1 %i.au
  br i1 %or.cond3.i, label %bb.h, label %.thread.i

.thread.i:                                        ; preds = %bb.g
  %i.av = load i8, ptr %i.j, align 1, !range !4
  br label %.critedge.i

bb.h:                                             ; preds = %bb.g
  %i.aw = tail call zeroext i1 @errstart(i32 noundef 18, ptr noundef null) #7
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ax = tail call i32 @errcode(i32 noundef 325) #7 ; 0 uses
  %i.ay = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.3) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1049, ptr noundef nonnull @__func__.AlterPublicationOptions) #7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i
  %.pre-phi.i = phi i1 [ %.pre106.i, %._crit_edge.i ], [ %i.as, %bb.h ], [ %i.as, %bb.i ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ba = load i8, ptr %i.az, align 4, !range !4, !noundef !5
  %i.bb = trunc nuw i8 %i.ba to i1
  %.not76.i = xor i1 %.pre-phi.i, true
  %or.cond5.not.i = select i1 %i.bb, i1 true, i1 %.not76.i
  %i.bc = load i8, ptr %i.j, align 1, !range !4   ; 2 uses
  %i.bd = trunc nuw i8 %i.bc to i1
  %or.cond7.i = select i1 %or.cond5.not.i, i1 true, i1 %i.bd
  br i1 %or.cond7.i, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = load i32, ptr %i.am, align 4
  tail call void @LockDatabaseObject(i32 noundef 6104, i32 noundef %i.be, i16 noundef zeroext 0, i32 noundef 1) #7
  %i.bf = load i32, ptr %i.am, align 4
  %i.bg = tail call ptr @GetIncludedPublicationRelations(i32 noundef %i.bf, i32 noundef 0) #7 ; 5 uses
  %.not.i = icmp eq ptr %i.bg, null
  br i1 %.not.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bj = load i32, ptr %i.bh, align 4
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.lr.ph94.i, label %.critedge.i

.lr.ph94.i:                                       ; preds = %.lr.ph.i, %bb.q
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.q ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.bl = load ptr, ptr %i.bi, align 8
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.i
  %i.bn = load i32, ptr %i.bm, align 8            ; 3 uses
  %i.bo = zext i32 %i.bn to i64
  %i.bp = load i32, ptr %i.am, align 4
  %i.bq = zext i32 %i.bp to i64
  %i.br = tail call ptr @SearchSysCache2(i32 noundef 61, i64 noundef %i.bo, i64 noundef %i.bq) #7 ; 4 uses
  %.not78.i = icmp eq ptr %i.br, null
  br i1 %.not78.i, label %bb.q, label %bb.l

bb.l:                                             ; preds = %.lr.ph94.i
  %i.bs = tail call zeroext i1 @heap_attisnull(ptr noundef nonnull %i.br, i32 noundef 5, ptr noundef null) #7 ; 2 uses
  %i.bt = tail call zeroext i1 @heap_attisnull(ptr noundef nonnull %i.br, i32 noundef 6, ptr noundef null) #7
  %i.bu = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %i.bu, label %.sink.split.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = tail call signext i8 @get_rel_relkind(i32 noundef %i.bn) #7
  %.not79.i = icmp eq i8 %i.bv, 112
  br i1 %.not79.i, label %bb.n, label %.sink.split.i

bb.n:                                             ; preds = %bb.m
  %i.bw = tail call ptr @get_rel_name(i32 noundef %i.bn) #7 ; 3 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %.sink.split.i, label %.split.i

.split.i:                                         ; preds = %bb.n
  %i.by = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.bz = tail call i32 @errcode(i32 noundef 50856066) #7 ; 0 uses
  %i.ca = load ptr, ptr %i.q, align 8
  %i.cb = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.19, ptr noundef %i.ca) #7 ; 0 uses
  br i1 %i.bs, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.split.i
  %i.cc = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.44, ptr noundef nonnull %i.bw, ptr noundef nonnull @.str.19) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1119, ptr noundef nonnull @__func__.AlterPublicationOptions) #7
  unreachable

bb.p:                                             ; preds = %.split.i
  %i.cd = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.45, ptr noundef nonnull %i.bw, ptr noundef nonnull @.str.19) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1127, ptr noundef nonnull @__func__.AlterPublicationOptions) #7
  unreachable

.sink.split.i:                                    ; preds = %bb.n, %bb.m, %bb.l
  tail call void @ReleaseSysCache(ptr noundef nonnull %i.br) #7
  br label %bb.q

bb.q:                                             ; preds = %.sink.split.i, %.lr.ph94.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ce = load i32, ptr %i.bh, align 4
  %i.cf = sext i32 %i.ce to i64
  %i.cg = icmp slt i64 %indvars.iv.next.i, %i.cf
  br i1 %i.cg, label %.lr.ph94.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.q, %.lr.ph.i, %bb.k, %bb.j, %.thread.i
  %i.ch = phi i8 [ %i.bc, %bb.j ], [ 0, %bb.k ], [ 0, %.lr.ph.i ], [ %i.av, %.thread.i ], [ 0, %bb.q ]
  %.pre-phi116.i = phi i1 [ %.pre-phi.i, %bb.j ], [ true, %bb.k ], [ true, %.lr.ph.i ], [ false, %.thread.i ], [ true, %bb.q ]
  %.072.i = phi ptr [ null, %bb.j ], [ null, %bb.k ], [ %i.bg, %.lr.ph.i ], [ null, %.thread.i ], [ %i.bg, %bb.q ] ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.g, i8 0, i64 88, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.e, i8 0, i64 11, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.f, i8 0, i64 11, i1 false)
  %i.ci = load i8, ptr %i.h, align 1, !range !4, !noundef !5
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.critedge.i
  %5 = load i8, ptr %4, align 1, !range !4, !noundef !5
  %6 = zext nneg i8 %5 to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 %6, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 1
  %8 = load i8, ptr %7, align 1, !range !4, !noundef !5
  %9 = zext nneg i8 %8 to i64
  %10 = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 %9, ptr %10, align 16
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 2
  %12 = load i8, ptr %11, align 1, !range !4, !noundef !5
  %13 = zext nneg i8 %12 to i64
  %14 = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store i64 %13, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 3
  %16 = load i8, ptr %15, align 1, !range !4, !noundef !5
  %17 = zext nneg i8 %16 to i64
  %18 = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i64 %17, ptr %18, align 16
  store <4 x i8> splat (i8 1), ptr %i.cl, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.critedge.i
  br i1 %.pre-phi116.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cm = zext nneg i8 %i.ch to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store i64 %i.cm, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  store i8 1, ptr %i.co, align 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cp = load i8, ptr %i.k, align 1, !range !4, !noundef !5
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cr = load i8, ptr %i.l, align 1
  %i.cs = sext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store i64 %i.cs, ptr %i.ct, align 16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  store i8 1, ptr %i.cu, align 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cv = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = call ptr @heap_modify_tuple(ptr noundef nonnull %i.t, ptr noundef %i.cw, ptr noundef nonnull %i.g, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #7 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  call void @CatalogTupleUpdate(ptr noundef %i.p, ptr noundef nonnull %i.cy, ptr noundef %i.cx) #7
  call void @CommandCounterIncrement() #7
  %i.cz = getelementptr i8, ptr %i.cx, i64 16
  %.val.i = load ptr, ptr %i.cz, align 8          ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.val.i, i64 22
  %i.db = load i8, ptr %i.da, align 2
  %i.dc = zext i8 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.dc ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 72
  %i.df = load i8, ptr %i.de, align 4, !range !4, !noundef !5
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %InvalidatePublicationRels.exit.sink.split.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dh = icmp eq ptr %.072.i, null
  br i1 %i.dh, label %bb.y, label %.preheader.i

.preheader.i:                                     ; preds = %bb.x
  %i.di = getelementptr inbounds nuw i8, ptr %.072.i, i64 4 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4
  %.not8195.i = icmp sgt i32 %i.dj, 0
  br i1 %.not8195.i, label %.lr.ph98.i, label %.critedge84.i

.lr.ph98.i:                                       ; preds = %.preheader.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.072.i, i64 16
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dl = load i32, ptr %i.dd, align 4
  %i.dm = call ptr @GetIncludedPublicationRelations(i32 noundef %i.dl, i32 noundef 2) #7
  br label %.critedge84.i

bb.z:                                             ; preds = %bb.z, %.lr.ph98.i
  %indvars.iv103.i = phi i64 [ 0, %.lr.ph98.i ], [ %indvars.iv.next104.i, %bb.z ] ; 2 uses
  %.096.i = phi ptr [ null, %.lr.ph98.i ], [ %i.dq, %bb.z ]
  %i.dn = load ptr, ptr %i.dk, align 8
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv103.i
  %i.dp = load i32, ptr %i.do, align 8
  %i.dq = call ptr @GetPubPartitionOptionRelations(ptr noundef %.096.i, i32 noundef 2, i32 noundef %i.dp) #7 ; 2 uses
  %indvars.iv.next104.i = add nuw nsw i64 %indvars.iv103.i, 1 ; 2 uses
  %i.dr = load i32, ptr %i.di, align 4
  %i.ds = sext i32 %i.dr to i64
  %.not81.i = icmp slt i64 %indvars.iv.next104.i, %i.ds
  br i1 %.not81.i, label %bb.z, label %.critedge84.i, !llvm.loop !11

.critedge84.i:                                    ; preds = %bb.z, %bb.y, %.preheader.i
  %.1.i = phi ptr [ %i.dm, %bb.y ], [ null, %.preheader.i ], [ %i.dq, %bb.z ]
  %i.dt = load i32, ptr %i.dd, align 4
  %i.du = call ptr @GetAllSchemaPublicationRelations(i32 noundef %i.dt, i32 noundef 2) #7
  %i.dv = call ptr @list_concat_unique_oid(ptr noundef %.1.i, ptr noundef %i.du) #7 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i, label %InvalidatePublicationRels.exit.i, label %list_length.exit.i.i

list_length.exit.i.i:                             ; preds = %.critedge84.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4            ; 2 uses
  %i.dy = icmp slt i32 %i.dx, 4096
  br i1 %i.dy, label %.lr.ph.i.i, label %InvalidatePublicationRels.exit.sink.split.i

.lr.ph.i.i:                                       ; preds = %list_length.exit.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.ea = icmp sgt i32 %i.dx, 0
  br i1 %i.ea, label %.critedge9.i.i, label %InvalidatePublicationRels.exit.i

.critedge9.i.i:                                   ; preds = %.lr.ph.i.i, %.critedge9.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.critedge9.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.eb = load ptr, ptr %i.dz, align 8
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.i.i
  %i.ed = load i32, ptr %i.ec, align 8
  call void @CacheInvalidateRelcacheByRelid(i32 noundef %i.ed) #7
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ee = load i32, ptr %i.dw, align 4
  %i.ef = sext i32 %i.ee to i64
  %i.eg = icmp slt i64 %indvars.iv.next.i.i, %i.ef
  br i1 %i.eg, label %.critedge9.i.i, label %InvalidatePublicationRels.exit.i

InvalidatePublicationRels.exit.sink.split.i:      ; preds = %list_length.exit.i.i, %bb.w
  call void @CacheInvalidateRelcacheAll() #7
  br label %InvalidatePublicationRels.exit.i

InvalidatePublicationRels.exit.i:                 ; preds = %.critedge9.i.i, %InvalidatePublicationRels.exit.sink.split.i, %.lr.ph.i.i, %.critedge84.i
  %i.eh = load i32, ptr %i.dd, align 4
  %.sroa.057.4.insert.ext.i = zext i32 %i.eh to i64
  %.sroa.057.4.insert.shift.i = shl nuw i64 %.sroa.057.4.insert.ext.i, 32
  %.sroa.057.4.insert.insert.i = or disjoint i64 %.sroa.057.4.insert.shift.i, 6104
  %.sroa.0.0.copyload.i = load i64, ptr @InvalidObjectAddress, align 4
  %.sroa.2.0.copyload.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @InvalidObjectAddress, i64 8), align 4
  call void @EventTriggerCollectSimpleCommand(i64 %.sroa.057.4.insert.insert.i, i32 0, i64 %.sroa.0.0.copyload.i, i32 %.sroa.2.0.copyload.i, ptr noundef %1) #7
  %i.ei = load ptr, ptr @object_access_hook, align 8
  %.not82.i = icmp eq ptr %i.ei, null
  br i1 %.not82.i, label %AlterPublicationOptions.exit, label %bb.aa

bb.aa:                                            ; preds = %InvalidatePublicationRels.exit.i
  %i.ej = load i32, ptr %i.dd, align 4
  call void @RunObjectPostAlterHook(i32 noundef 6104, i32 noundef %i.ej, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false) #7
  br label %AlterPublicationOptions.exit

AlterPublicationOptions.exit:                     ; preds = %InvalidatePublicationRels.exit.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  br label %bb.co

bb.ab:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #7
  store ptr null, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #7
  store ptr null, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #7
  store ptr null, ptr %i.o, align 8
  %i.ek = load i32, ptr %i.ac, align 4            ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.em = load ptr, ptr %i.el, align 8
  call fastcc void @ObjectsInPublicationToOids(ptr noundef %i.em, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o)
  %i.en = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.eo = load ptr, ptr %i.o, align 8             ; 4 uses
  %.val34 = load ptr, ptr %i.y, align 8           ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.val34, i64 22
  %i.eq = load i8, ptr %i.ep, align 2
  %i.er = zext i8 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %.val34, i64 %i.er ; 11 uses
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.eu = load i32, ptr %i.et, align 8            ; 2 uses
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ew = icmp eq i32 %i.eu, 2
  %i.ex = icmp ne ptr %i.eo, null
  %or.cond.i37 = and i1 %i.ex, %i.ew
  br i1 %or.cond.i37, label %bb.ae, label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  %.old1.not.i = icmp eq ptr %i.eo, null
  br i1 %.old1.not.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ey = tail call zeroext i1 @superuser() #7
  br i1 %i.ey, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ez = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.fa = tail call i32 @errcode(i32 noundef 16797828) #7 ; 0 uses
  %i.fb = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.46) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1521, ptr noundef nonnull @__func__.CheckAlterPublication) #7
  unreachable

bb.ag:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 5 uses
  %i.fd = load i8, ptr %i.fc, align 4, !range !4, !noundef !5
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.ff = tail call zeroext i1 @superuser() #7
  br i1 %i.ff, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fg = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.fh = tail call i32 @errcode(i32 noundef 16797828) #7 ; 0 uses
  %i.fi = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.47) #7 ; 0 uses
end_hunk_1
