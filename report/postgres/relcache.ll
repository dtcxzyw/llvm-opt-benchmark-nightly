Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/relcache?download=true
inline.NumInlined: 221
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@RelationCacheInvalidateEntry:bb.a
  %i.bb = icmp eq i32 %i.ba, 1
  br i1 %i.bb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call fastcc void @RelationInvalidateRelation(ptr noundef nonnull %i.e)
  br label %RelationFlushRelation.exit

bb.v:                                             ; preds = %bb.t, %bb.s
  call fastcc void @RelationRebuildRelation(ptr noundef nonnull %i.e)
  br label %RelationFlushRelation.exit

bb.w:                                             ; preds = %bb.aa, %.lr.ph.new
  %i.bc = phi i32 [ %.pre12, %.lr.ph.new ], [ %i.bn, %bb.aa ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.aa ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.aa ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = icmp eq i32 %i.be, %i.bc
  br i1 %i.bf, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store i8 1, ptr %i.bg, align 4
  %.pre = load i32, ptr %i.a, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.bh = phi i32 [ %i.bc, %bb.w ], [ %.pre, %bb.x ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = icmp eq i32 %i.bk, %i.bh
  br i1 %i.bl, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  store i8 1, ptr %i.bm, align 4
  %.pre.1 = load i32, ptr %i.a, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bn = phi i32 [ %i.bh, %bb.y ], [ %.pre.1, %bb.z ] ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %RelationFlushRelation.exit.loopexit.unr-lcssa, label %bb.w, !llvm.loop !18

RelationFlushRelation.exit.loopexit.unr-lcssa:    ; preds = %bb.aa
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %RelationFlushRelation.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %RelationFlushRelation.exit.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i32 [ %.pre12, %.lr.ph ], [ %i.bn, %RelationFlushRelation.exit.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %RelationFlushRelation.exit.loopexit.unr-lcssa ]
  %lcmp.mod21 = trunc i32 %i.f to i1
  call void @llvm.assume(i1 %lcmp.mod21)
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.epil.init ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = icmp eq i32 %i.bp, %.epil.init
  br i1 %i.bq, label %bb.ab, label %RelationFlushRelation.exit

bb.ab:                                            ; preds = %.epil.preheader
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store i8 1, ptr %i.br, align 4
  br label %RelationFlushRelation.exit

RelationFlushRelation.exit:                       ; preds = %RelationFlushRelation.exit.loopexit.unr-lcssa, %bb.ab, %.epil.preheader, %.preheader, %bb.v, %bb.u, %RelationInvalidateRelation.exit18.i, %bb.n, %RelationInvalidateRelation.exit.i, %bb.i, %RelationIncrementReferenceCount.exit.i
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RelationCacheInvalidate(i1 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.HASH_SEQ_STATUS, align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  tail call void @RelationMapInvalidateAll() #13
  %i.a = load ptr, ptr @RelationIdCache, align 8
  call void @hash_seq_init(ptr noundef nonnull %1, ptr noundef %i.a) #13
  %i.b = call ptr @hash_seq_search(ptr noundef nonnull %1) #13 ; 2 uses
  %.not7377 = icmp eq ptr %i.b, null
  br i1 %.not7377, label %.critedge.thread, label %.lr.ph

.critedge.thread:                                 ; preds = %bb.a
  call void @smgrreleaseall() #13
  call void @list_free(ptr noundef null) #13
  br label %.critedge67

.lr.ph:                                           ; preds = %bb.a, %.outer
  %i.c = phi ptr [ %i.aj, %.outer ], [ %i.b, %bb.a ]
  %.053.ph79 = phi ptr [ %.154, %.outer ], [ null, %bb.a ] ; 6 uses
  %.055.ph78 = phi ptr [ %.156, %.outer ], [ null, %bb.a ] ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.d = phi ptr [ %i.c, %.lr.ph ], [ %i.k, %bb.d ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i32, ptr %i.g, align 8
  %.not64 = icmp eq i32 %i.h, 0
  br i1 %.not64, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.j = load i32, ptr %i.i, align 8
  %.not65 = icmp eq i32 %i.j, 0
  br i1 %.not65, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = call ptr @hash_seq_search(ptr noundef nonnull %1) #13 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %.outer._crit_edge, label %bb.b, !llvm.loop !19

bb.e:                                             ; preds = %bb.c
  %i.l = load i64, ptr @relcacheInvalsReceived, align 8
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr @relcacheInvalsReceived, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.o = load i32, ptr %i.n, align 8
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call fastcc void @RelationClearRelation(ptr noundef nonnull %i.f)
  br label %.outer

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 119
  %i.t = load i8, ptr %i.s, align 1
  switch i8 %i.t, label %bb.k [
    i8 114, label %bb.h
    i8 105, label %bb.h
    i8 83, label %bb.h
    i8 116, label %bb.h
    i8 109, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.v = load i32, ptr %i.u, align 4
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %RelationCloseSmgr.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @smgrunpin(ptr noundef nonnull %i.y) #13
  %i.z = load ptr, ptr %i.x, align 8
  call void @smgrclose(ptr noundef %i.z) #13
  store ptr null, ptr %i.x, align 8
  br label %RelationCloseSmgr.exit

RelationCloseSmgr.exit:                           ; preds = %bb.i, %bb.j
  call fastcc void @RelationInitPhysicalAddr(ptr noundef nonnull %i.f)
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %RelationCloseSmgr.exit, %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.ab = load i32, ptr %i.aa, align 8
  switch i32 %i.ab, label %bb.n [
    i32 1259, label %bb.l
    i32 2662, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.ac = call ptr @lcons(ptr noundef nonnull %i.f, ptr noundef %.055.ph78) #13
  br label %.outer

bb.m:                                             ; preds = %bb.k
  %i.ad = call ptr @lappend(ptr noundef %.055.ph78, ptr noundef nonnull %i.f) #13
  br label %.outer

bb.n:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 33
  %i.af = load i8, ptr %i.ae, align 1, !range !4, !noundef !5
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ah = call ptr @lcons(ptr noundef nonnull %i.f, ptr noundef %.053.ph79) #13
  br label %.outer

bb.p:                                             ; preds = %bb.n
  %i.ai = call ptr @lappend(ptr noundef %.053.ph79, ptr noundef nonnull %i.f) #13
  br label %.outer

.outer:                                           ; preds = %bb.l, %bb.o, %bb.p, %bb.m, %bb.f
  %.156 = phi ptr [ %.055.ph78, %bb.f ], [ %i.ac, %bb.l ], [ %i.ad, %bb.m ], [ %.055.ph78, %bb.o ], [ %.055.ph78, %bb.p ] ; 2 uses
  %.154 = phi ptr [ %.053.ph79, %bb.f ], [ %.053.ph79, %bb.l ], [ %.053.ph79, %bb.m ], [ %i.ah, %bb.o ], [ %i.ai, %bb.p ] ; 2 uses
  %i.aj = call ptr @hash_seq_search(ptr noundef nonnull %1) #13 ; 2 uses
  %.not73 = icmp eq ptr %i.aj, null
  br i1 %.not73, label %.outer._crit_edge, label %.lr.ph, !llvm.loop !19

.outer._crit_edge:                                ; preds = %.outer, %bb.d
  %.055.ph.lcssa = phi ptr [ %.055.ph78, %bb.d ], [ %.156, %.outer ] ; 4 uses
  %.053.ph.lcssa = phi ptr [ %.053.ph79, %bb.d ], [ %.154, %.outer ] ; 5 uses
  call void @smgrreleaseall() #13
  %i.ak = getelementptr inbounds nuw i8, ptr %.055.ph.lcssa, i64 4 ; 2 uses
  %.not60 = icmp eq ptr %.055.ph.lcssa, null
  br i1 %.not60, label %.critedge, label %.lr.ph84

.lr.ph84:                                         ; preds = %.outer._crit_edge
  %i.al = getelementptr inbounds nuw i8, ptr %.055.ph.lcssa, i64 16
  %i.am = load i32, ptr %i.ak, align 4
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph87, label %.critedge

.lr.ph87:                                         ; preds = %.lr.ph84, %bb.w
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.w ], [ 0, %.lr.ph84 ] ; 2 uses
  %i.ao = load ptr, ptr %i.al, align 8
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv
  %i.aq = load ptr, ptr %i.ap, align 8            ; 6 uses
  %i.ar = call zeroext i1 @IsTransactionState() #13
  br i1 %i.ar, label %bb.q, label %bb.s

.critedge:                                        ; preds = %bb.w, %.lr.ph84, %.outer._crit_edge
  call void @list_free(ptr noundef %.055.ph.lcssa) #13
  %i.as = getelementptr inbounds nuw i8, ptr %.053.ph.lcssa, i64 4 ; 2 uses
  %.not62 = icmp eq ptr %.053.ph.lcssa, null
  br i1 %.not62, label %.critedge67, label %.lr.ph89

.lr.ph89:                                         ; preds = %.critedge
  %i.at = getelementptr inbounds nuw i8, ptr %.053.ph.lcssa, i64 16
  %i.au = load i32, ptr %i.as, align 4
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph92, label %.critedge67

bb.q:                                             ; preds = %.lr.ph87
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 33
  %i.ax = load i8, ptr %i.aw, align 1, !range !4, !noundef !5
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = icmp eq i32 %i.ba, 1
  br i1 %i.bb, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r, %.lr.ph87
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %RelationCloseSmgr.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @smgrunpin(ptr noundef nonnull %i.bd) #13
  %i.be = load ptr, ptr %i.bc, align 8
  call void @smgrclose(ptr noundef %i.be) #13
  store ptr null, ptr %i.bc, align 8
  br label %RelationCloseSmgr.exit.i

RelationCloseSmgr.exit.i:                         ; preds = %bb.t, %bb.s
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 456 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %.not.i68 = icmp eq ptr %i.bg, null
  br i1 %.not.i68, label %RelationInvalidateRelation.exit, label %bb.u

bb.u:                                             ; preds = %RelationCloseSmgr.exit.i
  call void @pfree(ptr noundef nonnull %i.bg) #13
  br label %RelationInvalidateRelation.exit

RelationInvalidateRelation.exit:                  ; preds = %RelationCloseSmgr.exit.i, %bb.u
  store ptr null, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aq, i64 34
  store i8 0, ptr %i.bh, align 2
  br label %bb.w

bb.v:                                             ; preds = %bb.r, %bb.q
  call fastcc void @RelationRebuildRelation(ptr noundef nonnull %i.aq)
  br label %bb.w

bb.w:                                             ; preds = %RelationInvalidateRelation.exit, %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bi = load i32, ptr %i.ak, align 4
  %i.bj = sext i32 %i.bi to i64
  %i.bk = icmp slt i64 %indvars.iv.next, %i.bj
  br i1 %i.bk, label %.lr.ph87, label %.critedge

.lr.ph92:                                         ; preds = %.lr.ph89, %bb.ad
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %bb.ad ], [ 0, %.lr.ph89 ] ; 2 uses
  %i.bl = load ptr, ptr %i.at, align 8
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv100
  %i.bn = load ptr, ptr %i.bm, align 8            ; 6 uses
  %i.bo = call zeroext i1 @IsTransactionState() #13
  br i1 %i.bo, label %bb.x, label %bb.z

.critedge67:                                      ; preds = %bb.ad, %.critedge.thread, %.lr.ph89, %.critedge
  %.053.ph.lcssa118122 = phi ptr [ null, %.critedge.thread ], [ null, %.critedge ], [ %.053.ph.lcssa, %.lr.ph89 ], [ %.053.ph.lcssa, %bb.ad ]
  call void @list_free(ptr noundef %.053.ph.lcssa118122) #13
  br i1 %0, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.critedge67
  %i.bp = load i32, ptr @in_progress_list_len, align 4 ; 3 uses
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %.lr.ph94, label %.loopexit

.lr.ph94:                                         ; preds = %.preheader
  %i.br = load ptr, ptr @in_progress_list, align 8 ; 9 uses
  %wide.trip.count = zext nneg i32 %i.bp to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.bs = icmp ult i32 %i.bp, 8
  br i1 %i.bs, label %.epil.preheader, label %.lr.ph94.new

.lr.ph94.new:                                     ; preds = %.lr.ph94
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %bb.ae

bb.x:                                             ; preds = %.lr.ph92
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 33
  %i.bu = load i8, ptr %i.bt, align 1, !range !4, !noundef !5
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bx = load i32, ptr %i.bw, align 8
  %i.by = icmp eq i32 %i.bx, 1
  br i1 %i.by, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y, %.lr.ph92
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %.not.i.i69 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i69, label %RelationCloseSmgr.exit.i70, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @smgrunpin(ptr noundef nonnull %i.ca) #13
  %i.cb = load ptr, ptr %i.bz, align 8
  call void @smgrclose(ptr noundef %i.cb) #13
  store ptr null, ptr %i.bz, align 8
  br label %RelationCloseSmgr.exit.i70

RelationCloseSmgr.exit.i70:                       ; preds = %bb.aa, %bb.z
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bn, i64 456 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8            ; 2 uses
  %.not.i71 = icmp eq ptr %i.cd, null
  br i1 %.not.i71, label %RelationInvalidateRelation.exit72, label %bb.ab

bb.ab:                                            ; preds = %RelationCloseSmgr.exit.i70
  call void @pfree(ptr noundef nonnull %i.cd) #13
  br label %RelationInvalidateRelation.exit72

RelationInvalidateRelation.exit72:                ; preds = %RelationCloseSmgr.exit.i70, %bb.ab
  store ptr null, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bn, i64 34
  store i8 0, ptr %i.ce, align 2
  br label %bb.ad

bb.ac:                                            ; preds = %bb.y, %bb.x
  call fastcc void @RelationRebuildRelation(ptr noundef nonnull %i.bn)
  br label %bb.ad

bb.ad:                                            ; preds = %RelationInvalidateRelation.exit72, %bb.ac
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %i.cf = load i32, ptr %i.as, align 4
  %i.cg = sext i32 %i.cf to i64
  %i.ch = icmp slt i64 %indvars.iv.next101, %i.cg
  br i1 %i.ch, label %.lr.ph92, label %.critedge67

bb.ae:                                            ; preds = %bb.ae, %.lr.ph94.new
  %indvars.iv103 = phi i64 [ 0, %.lr.ph94.new ], [ %indvars.iv.next104.7, %bb.ae ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph94.new ], [ %niter.next.7, %bb.ae ]
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv103
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store i8 1, ptr %i.cj, align 4
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv103
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  store i8 1, ptr %i.cl, align 4
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv103
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 20
  store i8 1, ptr %i.cn, align 4
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv103
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 28
  store i8 1, ptr %i.cp, align 4
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv103
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 36
  store i8 1, ptr %i.cr, align 4
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv103
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 44
  store i8 1, ptr %i.ct, align 4
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv103
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 52
  store i8 1, ptr %i.cv, align 4
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv103
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 60
  store i8 1, ptr %i.cx, align 4
  %indvars.iv.next104.7 = add nuw nsw i64 %indvars.iv103, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %bb.ae, !llvm.loop !20

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.ae
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph94
  %indvars.iv103.epil.init = phi i64 [ 0, %.lr.ph94 ], [ %indvars.iv.next104.7, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod135 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod135)
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.epil.preheader
  %indvars.iv103.epil = phi i64 [ %indvars.iv103.epil.init, %.epil.preheader ], [ %indvars.iv.next104.epil, %bb.af ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.af ]
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv103.epil
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store i8 1, ptr %i.cz, align 4
  %indvars.iv.next104.epil = add nuw nsw i64 %indvars.iv103.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.af, !llvm.loop !21

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.af, %.preheader, %.critedge67
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret void
}
end_hunk_0
