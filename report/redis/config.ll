Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/config?download=true
inline.NumInlined: 113
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@rewriteConfigCreateState:bb.a
  store ptr null, ptr %i.f, align 8, !tbaa !151
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 1, ptr %i.g, align 8, !tbaa !156
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 0, ptr %i.h, align 4, !tbaa !157
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local void @rewriteConfigAppendLine(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !153
  %i.e = add nsw i32 %i.d, 1
  %i.f = sext i32 %i.e to i64
  %i.g = shl nsw i64 %i.f, 3
  %i.h = tail call ptr @zrealloc(ptr noundef %i.b, i64 noundef %i.g) #27 ; 2 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !151
  %i.i = load i32, ptr %i.c, align 8, !tbaa !153  ; 2 uses
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.c, align 8, !tbaa !153
  %i.k = sext i32 %i.i to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.k
  store ptr %1, ptr %i.l, align 8, !tbaa !19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @rewriteConfigAddLineNumberToOption(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !154
  %i.b = tail call ptr @dictFetchValue(ptr noundef %i.a, ptr noundef %1) #25 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @listCreate() #25          ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !154
  %i.f = tail call ptr @sdsdup(ptr noundef %1) #25
  %i.g = tail call i32 @dictAdd(ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.d) #25 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.a ]
  %i.h = sext i32 %2 to i64
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = tail call ptr @listAddNodeTail(ptr noundef %.0, ptr noundef %i.i) #25 ; 0 uses
  ret void
}

declare ptr @dictFetchValue(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @listCreate() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @rewriteConfigMarkAsProcessed(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @sdsnew(ptr noundef %1) #25 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !155
  %i.d = tail call i32 @dictAdd(ptr noundef %i.c, ptr noundef %i.a, ptr noundef null) #25
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @sdsfree(ptr noundef %i.a) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @rewriteConfigReadOldFile(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 5 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = tail call noalias ptr @fopen64(ptr noundef %0, ptr noundef nonnull @.str.88) ; 7 uses
  %i.d = icmp eq ptr %i.c, null                   ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__errno_location() #29
  %i.f = load i32, ptr %i.e, align 4, !tbaa !9
  %.not = icmp eq i32 %i.f, 2
  br i1 %.not, label %.thread, label %bb.an

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.g = tail call i32 @fileno(ptr noundef nonnull %i.c) #25
  %i.h = call i32 @fstat64(i32 noundef %i.g, ptr noundef nonnull %1) #25
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  br label %bb.am

bb.e:                                             ; preds = %.thread, %bb.c
  %i.k = tail call noalias dereferenceable_or_null(40) ptr @zmalloc(i64 noundef 40) #28 ; 12 uses
  %i.l = tail call ptr @dictCreate(ptr noundef nonnull @optionToLineDictType) #25 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !154
  %i.m = tail call ptr @dictCreate(ptr noundef nonnull @optionSetDictType) #25 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !155
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 7 uses
  store i32 0, ptr %i.o, align 8, !tbaa !153
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 4 uses
  store ptr null, ptr %i.p, align 8, !tbaa !151
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  store i32 1, ptr %i.q, align 8, !tbaa !156
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  store i32 0, ptr %i.r, align 4, !tbaa !157
  br i1 %i.d, label %bb.am, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load i64, ptr %i.s, align 8, !tbaa !158  ; 3 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = tail call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  br label %bb.am

bb.h:                                             ; preds = %bb.f
  %i.w = load ptr, ptr @SDS_NOINIT, align 8, !tbaa !19
  %i.x = tail call ptr @sdsnewlen(ptr noundef %i.w, i64 noundef %i.t) #25 ; 9 uses
  %i.y = tail call i64 @fread(ptr noundef %i.x, i64 noundef 1, i64 noundef %i.t, ptr noundef nonnull %i.c)
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @sdsfree(ptr noundef %i.x) #25
  tail call void @sdsfreesplitres(ptr noundef null, i32 noundef 0) #25
  tail call void @dictRelease(ptr noundef %i.l) #25
  tail call void @dictRelease(ptr noundef %i.m) #25
  tail call void @zfree(ptr noundef nonnull %i.k) #25
  %i.aa = tail call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  br label %bb.am

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ab = getelementptr i8, ptr %i.x, i64 -1
  %.val.i = load i8, ptr %i.ab, align 1, !tbaa !65 ; 2 uses
  %i.ac = and i8 %.val.i, 7
  switch i8 %i.ac, label %sdslen.exit [
    i8 0, label %bb.k
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.n
    i8 4, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  %i.ad = lshr i8 %.val.i, 3
  %i.ae = zext nneg i8 %i.ad to i64
  br label %sdslen.exit

bb.l:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds i8, ptr %i.x, i64 -3
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !65
  %i.ah = zext i8 %i.ag to i64
  br label %sdslen.exit

bb.m:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds i8, ptr %i.x, i64 -5
  %i.aj = load i16, ptr %i.ai, align 1, !tbaa !66
  %i.ak = zext i16 %i.aj to i64
  br label %sdslen.exit

bb.n:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds i8, ptr %i.x, i64 -9
  %i.am = load i32, ptr %i.al, align 1, !tbaa !9
  %i.an = zext i32 %i.am to i64
  br label %sdslen.exit

bb.o:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds i8, ptr %i.x, i64 -17
  %i.ap = load i64, ptr %i.ao, align 1, !tbaa !68
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  %.0.i = phi i64 [ %i.ap, %bb.o ], [ %i.ae, %bb.k ], [ %i.ah, %bb.l ], [ %i.ak, %bb.m ], [ %i.an, %bb.n ], [ 0, %bb.j ]
  %i.aq = call ptr @sdssplitlen(ptr noundef nonnull %i.x, i64 noundef %.0.i, ptr noundef nonnull @.str.64, i32 noundef 1, ptr noundef nonnull %i.a) #25 ; 2 uses
  %i.ar = load i32, ptr %i.a, align 4, !tbaa !9
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %sdslen.exit, %bb.al
  %i.at = phi i32 [ %i.ec, %bb.al ], [ 0, %sdslen.exit ] ; 3 uses
  %i.au = phi ptr [ %i.ed, %bb.al ], [ null, %sdslen.exit ] ; 3 uses
  %i.av = phi i32 [ %i.ee, %bb.al ], [ 1, %sdslen.exit ] ; 3 uses
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %bb.al ], [ -1, %sdslen.exit ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.al ], [ 0, %sdslen.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !19
  %i.ay = call ptr @sdstrim(ptr noundef %i.ax, ptr noundef nonnull @.str.101) #25 ; 7 uses
  store ptr null, ptr %i.aw, align 8, !tbaa !19
  %indvars.iv.next103 = add nsw i64 %indvars.iv102, 1 ; 3 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !65
  switch i8 %i.az, label %bb.t [
    i8 35, label %bb.p
    i8 0, label %bb.p
  ]

bb.p:                                             ; preds = %.lr.ph, %.lr.ph
  %.not91 = icmp eq i32 %i.av, 0
  br i1 %.not91, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(30) @.str.102) #24
  %.not92 = icmp eq i32 %i.ba, 0
  br i1 %.not92, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.q, align 8, !tbaa !156
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.bb = phi i32 [ 0, %bb.r ], [ 1, %bb.q ], [ 0, %bb.p ]
  %i.bc = add nsw i32 %i.at, 1
  %i.bd = sext i32 %i.bc to i64
  %i.be = shl nsw i64 %i.bd, 3
  %i.bf = call ptr @zrealloc(ptr noundef %i.au, i64 noundef %i.be) #27 ; 3 uses
  store ptr %i.bf, ptr %i.p, align 8, !tbaa !151
  %i.bg = load i32, ptr %i.o, align 8, !tbaa !153 ; 2 uses
  %i.bh = add nsw i32 %i.bg, 1                    ; 2 uses
  store i32 %i.bh, ptr %i.o, align 8, !tbaa !153
  %i.bi = sext i32 %i.bg to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bi
  store ptr %i.ay, ptr %i.bj, align 8, !tbaa !19
  br label %bb.al

bb.t:                                             ; preds = %.lr.ph
  %i.bk = call ptr @sdssplitargs(ptr noundef nonnull %i.ay, ptr noundef nonnull %i.b) #25 ; 12 uses
  %i.bl = icmp eq ptr %i.bk, null                 ; 2 uses
  br i1 %i.bl, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !19
  %i.bn = load ptr, ptr @configs, align 8, !tbaa !73
  %i.bo = call ptr @dictFind(ptr noundef %i.bn, ptr noundef %i.bm) #25 ; 2 uses
  %.not.i = icmp eq ptr %i.bo, null
  br i1 %.not.i, label %lookupConfig.exit.thread, label %lookupConfig.exit

lookupConfig.exit:                                ; preds = %bb.u
  %i.bp = call ptr @dictGetVal(ptr noundef nonnull %i.bo) #25
  %.not81 = icmp eq ptr %i.bp, null
  br i1 %.not81, label %lookupConfig.exit.thread, label %lookupConfig.exit._crit_edge

lookupConfig.exit._crit_edge:                     ; preds = %lookupConfig.exit
  %.pre = load ptr, ptr %i.bk, align 8, !tbaa !19
  br label %bb.ac

lookupConfig.exit.thread:                         ; preds = %bb.u, %lookupConfig.exit
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !19 ; 10 uses
  %i.br = call i32 @strcasecmp(ptr noundef %i.bq, ptr noundef nonnull @.str.68) #24
  %.not82 = icmp eq i32 %i.br, 0
  br i1 %.not82, label %bb.ac, label %bb.v

bb.v:                                             ; preds = %lookupConfig.exit.thread
  %i.bs = call i32 @strcasecmp(ptr noundef %i.bq, ptr noundef nonnull @.str.69) #24
  %.not83 = icmp eq i32 %i.bs, 0
  br i1 %.not83, label %bb.ac, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bt = call i32 @strcasecmp(ptr noundef %i.bq, ptr noundef nonnull @.str.10) #24
  %.not84 = icmp eq i32 %i.bt, 0
  br i1 %.not84, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bu = call i32 @strcasecmp(ptr noundef %i.bq, ptr noundef nonnull @.str.74) #24
  %.not85 = icmp eq i32 %i.bu, 0
  br i1 %.not85, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bv = call i32 @strcasecmp(ptr noundef %i.bq, ptr noundef nonnull @.str.75) #24
  %.not86 = icmp eq i32 %i.bv, 0
  br i1 %.not86, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.t
  %i.bw = call ptr @sdsnew(ptr noundef nonnull @.str.103) #25
  %i.bx = call ptr @sdscatsds(ptr noundef %i.bw, ptr noundef nonnull %i.ay) #25
  br i1 %i.bl, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.by = load i32, ptr %i.b, align 4, !tbaa !9
  call void @sdsfreesplitres(ptr noundef nonnull %i.bk, i32 noundef %i.by) #25
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call void @sdsfree(ptr noundef nonnull %i.ay) #25
  %i.bz = add nsw i32 %i.at, 1
  %i.ca = sext i32 %i.bz to i64
  %i.cb = shl nsw i64 %i.ca, 3
  %i.cc = call ptr @zrealloc(ptr noundef %i.au, i64 noundef %i.cb) #27 ; 3 uses
  store ptr %i.cc, ptr %i.p, align 8, !tbaa !151
  %i.cd = load i32, ptr %i.o, align 8, !tbaa !153 ; 2 uses
  %i.ce = add nsw i32 %i.cd, 1                    ; 2 uses
  store i32 %i.ce, ptr %i.o, align 8, !tbaa !153
  %i.cf = sext i32 %i.cd to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.cf
  store ptr %i.bx, ptr %i.cg, align 8, !tbaa !19
  br label %bb.al

bb.ac:                                            ; preds = %lookupConfig.exit._crit_edge, %bb.y, %bb.x, %bb.w, %bb.v, %lookupConfig.exit.thread
  %i.ch = phi ptr [ %.pre, %lookupConfig.exit._crit_edge ], [ %i.bq, %bb.y ], [ %i.bq, %bb.x ], [ %i.bq, %bb.w ], [ %i.bq, %bb.v ], [ %i.bq, %lookupConfig.exit.thread ]
  call void @sdstolower(ptr noundef %i.ch) #25
  %i.ci = add nsw i32 %i.at, 1
  %i.cj = sext i32 %i.ci to i64
  %i.ck = shl nsw i64 %i.cj, 3
  %i.cl = call ptr @zrealloc(ptr noundef %i.au, i64 noundef %i.ck) #27 ; 3 uses
  store ptr %i.cl, ptr %i.p, align 8, !tbaa !151
  %i.cm = load i32, ptr %i.o, align 8, !tbaa !153 ; 2 uses
  %i.cn = add nsw i32 %i.cm, 1                    ; 2 uses
  store i32 %i.cn, ptr %i.o, align 8, !tbaa !153
  %i.co = sext i32 %i.cm to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.co
  store ptr %i.ay, ptr %i.cp, align 8, !tbaa !19
  %i.cq = load ptr, ptr %i.bk, align 8, !tbaa !19
  %i.cr = load ptr, ptr @configs, align 8, !tbaa !73
  %i.cs = call ptr @dictFind(ptr noundef %i.cr, ptr noundef %i.cq) #25 ; 2 uses
  %.not.i93 = icmp eq ptr %i.cs, null
  br i1 %.not.i93, label %lookupConfig.exit94.thread, label %lookupConfig.exit94

lookupConfig.exit94:                              ; preds = %bb.ac
  %i.ct = call ptr @dictGetVal(ptr noundef nonnull %i.cs) #25 ; 3 uses
  %.not87 = icmp eq ptr %i.ct, null
  br i1 %.not87, label %lookupConfig.exit94.thread, label %bb.ad

bb.ad:                                            ; preds = %lookupConfig.exit94
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !74
  %i.cw = and i32 %i.cv, 128
  %.not88 = icmp eq i32 %i.cw, 0
  br i1 %.not88, label %lookupConfig.exit94.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cx = load ptr, ptr %i.bk, align 8, !tbaa !19
  call void @sdsfree(ptr noundef %i.cx) #25
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !161
  %i.da = call ptr @sdsnew(ptr noundef %i.cz) #25
  store ptr %i.da, ptr %i.bk, align 8, !tbaa !19
  br label %lookupConfig.exit94.thread

lookupConfig.exit94.thread:                       ; preds = %bb.ac, %bb.ae, %bb.ad, %lookupConfig.exit94
  %i.db = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 204), align 4, !tbaa !80
  %i.dc = icmp ne i32 %i.db, 0
  %i.dd = load i32, ptr %i.b, align 4
  %i.de = icmp sgt i32 %i.dd, 1
  %or.cond = select i1 %i.dc, i1 %i.de, i1 false
  %.pre107 = load ptr, ptr %i.bk, align 8, !tbaa !19 ; 3 uses
  br i1 %or.cond, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %lookupConfig.exit94.thread
  %i.df = call i32 @strcasecmp(ptr noundef %.pre107, ptr noundef nonnull @.str.75) #24
  %.not89 = icmp eq i32 %i.df, 0
  br i1 %.not89, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.dg = call ptr @sdsempty() #25
  %i.dh = load ptr, ptr %i.bk, align 8, !tbaa !19
  %i.di = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !19
  %i.dk = call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %i.dg, ptr noundef nonnull @.str.104, ptr noundef %i.dh, ptr noundef %i.dj) #25 ; 3 uses
  %i.dl = load ptr, ptr %i.k, align 8, !tbaa !154 ; 2 uses
  %i.dm = call ptr @dictFetchValue(ptr noundef %i.dl, ptr noundef %i.dk) #25 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %bb.ah, label %rewriteConfigAddLineNumberToOption.exit

bb.ah:                                            ; preds = %bb.ag
  %i.do = call ptr @listCreate() #25              ; 2 uses
  %i.dp = call ptr @sdsdup(ptr noundef %i.dk) #25
  %i.dq = call i32 @dictAdd(ptr noundef %i.dl, ptr noundef %i.dp, ptr noundef %i.do) #25 ; 0 uses
  br label %rewriteConfigAddLineNumberToOption.exit

rewriteConfigAddLineNumberToOption.exit:          ; preds = %bb.ag, %bb.ah
  %.0.i95 = phi ptr [ %i.do, %bb.ah ], [ %i.dm, %bb.ag ]
  %i.dr = inttoptr i64 %indvars.iv.next103 to ptr
  %i.ds = call ptr @listAddNodeTail(ptr noundef %.0.i95, ptr noundef %i.dr) #25 ; 0 uses
  call void @sdsfree(ptr noundef %i.dk) #25
  br label %bb.ak

bb.ai:                                            ; preds = %bb.af, %lookupConfig.exit94.thread
  %i.dt = load ptr, ptr %i.k, align 8, !tbaa !154 ; 2 uses
  %i.du = call ptr @dictFetchValue(ptr noundef %i.dt, ptr noundef %.pre107) #25 ; 2 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %bb.aj, label %rewriteConfigAddLineNumberToOption.exit97

bb.aj:                                            ; preds = %bb.ai
  %i.dw = call ptr @listCreate() #25              ; 2 uses
  %i.dx = call ptr @sdsdup(ptr noundef %.pre107) #25
  %i.dy = call i32 @dictAdd(ptr noundef %i.dt, ptr noundef %i.dx, ptr noundef %i.dw) #25 ; 0 uses
  br label %rewriteConfigAddLineNumberToOption.exit97

rewriteConfigAddLineNumberToOption.exit97:        ; preds = %bb.ai, %bb.aj
  %.0.i96 = phi ptr [ %i.dw, %bb.aj ], [ %i.du, %bb.ai ]
  %i.dz = inttoptr i64 %indvars.iv.next103 to ptr
  %i.ea = call ptr @listAddNodeTail(ptr noundef %.0.i96, ptr noundef %i.dz) #25 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %rewriteConfigAddLineNumberToOption.exit97, %rewriteConfigAddLineNumberToOption.exit
  %i.eb = load i32, ptr %i.b, align 4, !tbaa !9
  call void @sdsfreesplitres(ptr noundef nonnull %i.bk, i32 noundef %i.eb) #25
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ab, %bb.s
  %i.ec = phi i32 [ %i.cn, %bb.ak ], [ %i.ce, %bb.ab ], [ %i.bh, %bb.s ]
  %i.ed = phi ptr [ %i.cl, %bb.ak ], [ %i.cc, %bb.ab ], [ %i.bf, %bb.s ]
  %i.ee = phi i32 [ %i.av, %bb.ak ], [ %i.av, %bb.ab ], [ %i.bb, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ef = load i32, ptr %i.a, align 4, !tbaa !9
  %i.eg = sext i32 %i.ef to i64
  %i.eh = icmp slt i64 %indvars.iv.next, %i.eg
  br i1 %i.eh, label %.lr.ph, label %._crit_edge, !llvm.loop !162

._crit_edge:                                      ; preds = %bb.al, %sdslen.exit
  %i.ei = call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  %i.ej = load i32, ptr %i.a, align 4, !tbaa !9
  call void @sdsfreesplitres(ptr noundef %i.aq, i32 noundef %i.ej) #25
  call void @sdsfree(ptr noundef nonnull %i.x) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.am

bb.am:                                            ; preds = %bb.g, %bb.e, %._crit_edge, %bb.i, %bb.d
  %.2 = phi ptr [ null, %bb.d ], [ %i.k, %bb.e ], [ %i.k, %bb.g ], [ null, %bb.i ], [ %i.k, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.an

bb.an:                                            ; preds = %bb.b, %bb.am
  %.3 = phi ptr [ %.2, %bb.am ], [ null, %bb.b ]
  ret ptr %.3
}

; Function Attrs: nofree nounwind
declare noundef i32 @fstat64(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #10

declare ptr @sdsnewlen(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

declare ptr @sdscatsds(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @rewriteConfigRewriteLine(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @sdsnew(ptr noundef %1) #25 ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !154
  %i.c = tail call ptr @dictFetchValue(ptr noundef %i.b, ptr noundef %i.a) #25 ; 4 uses
  %i.d = tail call ptr @sdsnew(ptr noundef %1) #25 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !155
  %i.g = tail call i32 @dictAdd(ptr noundef %i.f, ptr noundef %i.d, ptr noundef null) #25
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %rewriteConfigMarkAsProcessed.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @sdsfree(ptr noundef %i.d) #25
  br label %rewriteConfigMarkAsProcessed.exit

rewriteConfigMarkAsProcessed.exit:                ; preds = %bb.a, %bb.b
  %i.h = icmp ne ptr %i.c, null                   ; 2 uses
  %i.i = icmp ne i32 %3, 0
  %or.cond = or i1 %i.i, %i.h
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %rewriteConfigMarkAsProcessed.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !157
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  tail call void @sdsfree(ptr noundef %2) #25
  br label %bb.k

bb.e:                                             ; preds = %rewriteConfigMarkAsProcessed.exit
  br i1 %i.h, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !163  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !165
  %i.o = ptrtoint ptr %i.n to i64
  tail call void @listDelNode(ptr noundef nonnull %i.c, ptr noundef %i.l) #25
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !166
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %0, align 8, !tbaa !154
  %i.t = tail call i32 @dictDelete(ptr noundef %i.s, ptr noundef %i.a) #25 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !151
  %sext = shl i64 %i.o, 32
  %i.w = ashr exact i64 %sext, 32                 ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !19
  tail call void @sdsfree(ptr noundef %i.y) #25
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !151
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.w
  store ptr %2, ptr %i.aa, align 8, !tbaa !19
  br label %bb.k

.thread:                                          ; preds = %bb.c, %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !156
  %.not31 = icmp eq i32 %i.ac, 0
  br i1 %.not31, label %.thread._crit_edge, label %bb.i

.thread._crit_edge:                               ; preds = %.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !151
  %.phi.trans.insert32 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre33 = load i32, ptr %.phi.trans.insert32, align 8, !tbaa !153
  br label %bb.j

bb.i:                                             ; preds = %.thread
  %i.ad = tail call ptr @sdsnew(ptr noundef nonnull @.str.102) #25
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !151
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !153
  %i.ai = add nsw i32 %i.ah, 1
  %i.aj = sext i32 %i.ai to i64
  %i.ak = shl nsw i64 %i.aj, 3
  %i.al = tail call ptr @zrealloc(ptr noundef %i.af, i64 noundef %i.ak) #27 ; 3 uses
  store ptr %i.al, ptr %i.ae, align 8, !tbaa !151
  %i.am = load i32, ptr %i.ag, align 8, !tbaa !153 ; 2 uses
  %i.an = add nsw i32 %i.am, 1                    ; 2 uses
  store i32 %i.an, ptr %i.ag, align 8, !tbaa !153
  %i.ao = sext i32 %i.am to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ao
  store ptr %i.ad, ptr %i.ap, align 8, !tbaa !19
  store i32 0, ptr %i.ab, align 8, !tbaa !156
  br label %bb.j

bb.j:                                             ; preds = %.thread._crit_edge, %bb.i
  %i.aq = phi i32 [ %.pre33, %.thread._crit_edge ], [ %i.an, %bb.i ]
  %i.ar = phi ptr [ %.pre, %.thread._crit_edge ], [ %i.al, %bb.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.au = add nsw i32 %i.aq, 1
  %i.av = sext i32 %i.au to i64
  %i.aw = shl nsw i64 %i.av, 3
  %i.ax = tail call ptr @zrealloc(ptr noundef %i.ar, i64 noundef %i.aw) #27 ; 2 uses
  store ptr %i.ax, ptr %i.as, align 8, !tbaa !151
  %i.ay = load i32, ptr %i.at, align 8, !tbaa !153 ; 2 uses
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr %i.at, align 8, !tbaa !153
  %i.ba = sext i32 %i.ay to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.ba
  store ptr %2, ptr %i.bb, align 8, !tbaa !19
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ 1, %bb.j ], [ 1, %bb.h ]
  tail call void @sdsfree(ptr noundef %i.a) #25
  ret i32 %.0
}

declare void @listDelNode(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @rewriteConfigFormatMemory(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #15 {
bb.a:
  %.not = icmp ne i64 %2, 0                       ; 3 uses
  %i.a = and i64 %2, 1073741823
  %i.b = icmp eq i64 %i.a, 0
  %or.cond = and i1 %.not, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = ashr exact i64 %2, 30
  %i.d = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.105, i64 noundef %i.c) #25
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = and i64 %2, 1048575
  %i.f = icmp eq i64 %i.e, 0
  %or.cond28 = and i1 %.not, %i.f
  br i1 %or.cond28, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = ashr exact i64 %2, 20
  %i.h = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.106, i64 noundef %i.g) #25
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.i = and i64 %2, 1023
  %i.j = icmp eq i64 %i.i, 0
  %or.cond31 = and i1 %.not, %i.j
  br i1 %or.cond31, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = ashr exact i64 %2, 10
  %i.l = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.107, i64 noundef %i.k) #25
  br label %bb.h

bb.g:                                             ; preds = %bb.e
end_hunk_0
