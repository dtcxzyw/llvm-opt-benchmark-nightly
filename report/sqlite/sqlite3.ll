Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 95
loop-unroll.NumUnrolled: 372
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@fts3EvalPhraseMergeToken:bb.a
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 9 uses
  %i.h = alloca ptr, align 8                      ; 9 uses
  %i.i = alloca ptr, align 8                      ; 8 uses
  %i.j = icmp eq ptr %3, null
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %1, align 8, !tbaa !2783   ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %sqlite3_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.o(ptr noundef nonnull %i.n) #57, !inline_history !748
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.e, %bb.d
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.q = tail call i32 %i.p(ptr noundef nonnull %i.k) #57, !inline_history !13
  %i.r = sext i32 %i.q to i64
  %i.s = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.t = sub nsw i64 %i.s, %i.r
  store i64 %i.t, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.v = add nsw i64 %i.u, -1
  store i64 %i.v, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.w(ptr noundef nonnull %i.k) #57, !inline_history !749
  %i.x = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.x, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.f

bb.f:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.y(ptr noundef nonnull %i.x) #57, !inline_history !750
  br label %sqlite3_free.exit

bb.g:                                             ; preds = %bb.c
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.z(ptr noundef nonnull %i.k) #57, !inline_history !749
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.b, %sqlite3_mutex_enter.exit.i, %bb.f, %bb.g
  store ptr null, ptr %1, align 8, !tbaa !2783
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.aa, align 8, !tbaa !2800
  br label %sqlite3_free.exit45

bb.h:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !570 ; 4 uses
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %3, ptr %1, align 8, !tbaa !2783
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %4, ptr %i.ae, align 8, !tbaa !2800
  br label %sqlite3_free.exit45

bb.j:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %1, align 8, !tbaa !2783  ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.ah = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i41 = icmp eq i32 %i.ah, 0
  br i1 %.not.i41, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i42 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i42, label %sqlite3_mutex_enter.exit.i43, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.aj(ptr noundef nonnull %i.ai) #57, !inline_history !748
  br label %sqlite3_mutex_enter.exit.i43

sqlite3_mutex_enter.exit.i43:                     ; preds = %bb.m, %bb.l
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.al = tail call i32 %i.ak(ptr noundef nonnull %3) #57, !inline_history !13
  %i.am = sext i32 %i.al to i64
  %i.an = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.ao = sub nsw i64 %i.an, %i.am
  store i64 %i.ao, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.ap = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.aq = add nsw i64 %i.ap, -1
  store i64 %i.aq, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.ar(ptr noundef nonnull %3) #57, !inline_history !749
  %i.as = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i44 = icmp eq ptr %i.as, null
  br i1 %.not.i4.i44, label %sqlite3_free.exit45, label %bb.n

bb.n:                                             ; preds = %sqlite3_mutex_enter.exit.i43
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.at(ptr noundef nonnull %i.as) #57, !inline_history !750
  br label %sqlite3_free.exit45

bb.o:                                             ; preds = %bb.k
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.au(ptr noundef nonnull %3) #57, !inline_history !749
  br label %sqlite3_free.exit45

bb.p:                                             ; preds = %bb.j
  %i.av = icmp slt i32 %i.ac, %2
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !2800 ; 2 uses
  br i1 %i.av, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ay = sub nuw nsw i32 %2, %i.ac
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.az = sub nsw i32 %i.ac, %2
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.056 = phi ptr [ %3, %bb.q ], [ %i.af, %bb.r ] ; 10 uses
  %.055 = phi i32 [ %4, %bb.q ], [ %i.ax, %bb.r ] ; 4 uses
  %.037 = phi ptr [ %i.af, %bb.q ], [ %3, %bb.r ] ; 6 uses
  %.036 = phi i32 [ %i.ax, %bb.q ], [ %4, %bb.r ] ; 2 uses
  %.0 = phi i32 [ %i.ay, %bb.q ], [ %i.az, %bb.r ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 463
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !2672
  %i.bc = sext i32 %.036 to i64
  %i.bd = getelementptr inbounds i8, ptr %.037, i64 %i.bc ; 2 uses
  %i.be = sext i32 %.055 to i64                   ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %.056, i64 %i.be ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #57
  %.not.i46 = icmp eq i8 %i.bb, 0                 ; 8 uses
  br i1 %.not.i46, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = tail call i32 @sqlite3_initialize(), !inline_history !6115
  %.not.i.i47 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i47, label %sqlite3_malloc64.exit.i, label %bb.am

sqlite3_malloc64.exit.i:                          ; preds = %bb.t
  %i.bh = add nsw i64 %i.be, 10
  %i.bi = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.bh), !inline_history !6115 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.am, label %bb.u

bb.u:                                             ; preds = %sqlite3_malloc64.exit.i, %bb.s
  %.0.i = phi ptr [ %i.bi, %sqlite3_malloc64.exit.i ], [ %.056, %bb.s ] ; 7 uses
  store ptr %.0.i, ptr %i.i, align 8, !tbaa !741
  %.not.i39.i = icmp sgt i32 %.036, 0
  br i1 %.not.i39.i, label %bb.v, label %fts3GetDeltaVarint3.exit.i

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #57
  %i.bk = call fastcc i32 @sqlite3Fts3GetVarintU(ptr noundef nonnull %.037, ptr noundef nonnull %i.f), !inline_history !6116
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds i8, ptr %.037, i64 %i.bl
  %i.bn = load i64, ptr %i.f, align 8, !tbaa !565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #57
  br label %fts3GetDeltaVarint3.exit.i

fts3GetDeltaVarint3.exit.i:                       ; preds = %bb.v, %bb.u
  %i.bo = phi ptr [ %i.bm, %bb.v ], [ null, %bb.u ] ; 3 uses
  %.293.i = phi i64 [ %i.bn, %bb.v ], [ 0, %bb.u ]
  store ptr %i.bo, ptr %i.g, align 8, !tbaa !741
  %.not.i40.i = icmp sgt i32 %.055, 0
  br i1 %.not.i40.i, label %fts3GetDeltaVarint3.exit42.i, label %._crit_edge.i

fts3GetDeltaVarint3.exit42.i:                     ; preds = %fts3GetDeltaVarint3.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #57
  %i.bp = call fastcc i32 @sqlite3Fts3GetVarintU(ptr noundef nonnull %.056, ptr noundef nonnull %i.e), !inline_history !6116
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds i8, ptr %.056, i64 %i.bq ; 2 uses
  %i.bs = load i64, ptr %i.e, align 8, !tbaa !565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #57
  store ptr %i.br, ptr %i.h, align 8, !tbaa !741
  %.not = icmp eq ptr %i.bo, null
  br i1 %.not, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %fts3GetDeltaVarint3.exit42.i, %fts3GetDeltaVarint3.exit51.i
  %i.bt = phi ptr [ %i.eb, %fts3GetDeltaVarint3.exit51.i ], [ %i.br, %fts3GetDeltaVarint3.exit42.i ] ; 3 uses
  %i.bu = phi ptr [ %i.ec, %fts3GetDeltaVarint3.exit51.i ], [ %i.bo, %fts3GetDeltaVarint3.exit42.i ] ; 3 uses
  %.084103.i = phi i32 [ %.2.i, %fts3GetDeltaVarint3.exit51.i ], [ 0, %fts3GetDeltaVarint3.exit42.i ] ; 4 uses
  %.085102.i = phi i64 [ %.287.i, %fts3GetDeltaVarint3.exit51.i ], [ 0, %fts3GetDeltaVarint3.exit42.i ] ; 5 uses
  %.088101.i = phi i64 [ %.189.i, %fts3GetDeltaVarint3.exit51.i ], [ %i.bs, %fts3GetDeltaVarint3.exit42.i ] ; 4 uses
  %.091100.i = phi i64 [ %.192.i, %fts3GetDeltaVarint3.exit51.i ], [ %.293.i, %fts3GetDeltaVarint3.exit42.i ] ; 8 uses
  %5 = tail call i32 @llvm.scmp.i32.i64(i64 %.091100.i, i64 %.088101.i) ; 2 uses
  %6 = sub nsw i32 0, %5
  %7 = select i1 %.not.i46, i32 %5, i32 %6        ; 2 uses
  %i.bv = icmp eq i32 %7, 0
  br i1 %i.bv, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %.lr.ph.i
  %i.bw = load ptr, ptr %i.i, align 8, !tbaa !741 ; 4 uses
  %i.bx = icmp eq i32 %.084103.i, 0
  %or.cond.i = select i1 %.not.i46, i1 true, i1 %i.bx
  %i.by = sub i64 %.091100.i, %.085102.i
  %i.bz = sub i64 %.085102.i, %.091100.i
  %.0.i43.i = select i1 %or.cond.i, i64 %i.by, i64 %i.bz
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %bb.w
  %.08.i.i.i = phi ptr [ %i.bw, %bb.w ], [ %i.cc, %bb.x ] ; 3 uses
  %.0.i.i.i = phi i64 [ %.0.i43.i, %bb.w ], [ %i.cd, %bb.x ] ; 2 uses
  %i.ca = trunc i64 %.0.i.i.i to i8               ; 2 uses
  %i.cb = or i8 %i.ca, -128
  %i.cc = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 1 ; 2 uses
  store i8 %i.cb, ptr %.08.i.i.i, align 1, !tbaa !733
  %i.cd = lshr i64 %.0.i.i.i, 7                   ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i.i, label %fts3PutDeltaVarint3.exit.i, label %bb.x, !llvm.loop !489

fts3PutDeltaVarint3.exit.i:                       ; preds = %bb.x
  store i8 %i.ca, ptr %.08.i.i.i, align 1, !tbaa !733
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.bw to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = shl i64 %i.cg, 32
  %i.ci = ashr exact i64 %i.ch, 32
  %i.cj = getelementptr inbounds i8, ptr %i.bw, i64 %i.ci
  store ptr %i.cj, ptr %i.i, align 8, !tbaa !741
  %i.ck = call fastcc i32 @fts3PoslistPhraseMerge(ptr noundef %i.i, i32 noundef %.0, i32 noundef 0, i32 noundef 1, ptr noundef %i.g, ptr noundef %i.h), !inline_history !6116
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.y, label %bb.z

bb.y:                                             ; preds = %fts3PutDeltaVarint3.exit.i
  store ptr %i.bw, ptr %i.i, align 8, !tbaa !741
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %fts3PutDeltaVarint3.exit.i
  %.186.i = phi i64 [ %.085102.i, %bb.y ], [ %.091100.i, %fts3PutDeltaVarint3.exit.i ]
  %.1.i = phi i32 [ %.084103.i, %bb.y ], [ 1, %fts3PutDeltaVarint3.exit.i ]
  %i.cm = load ptr, ptr %i.g, align 8, !tbaa !741 ; 3 uses
  %.not.i44.i = icmp ult ptr %i.cm, %i.bd
  br i1 %.not.i44.i, label %bb.aa, label %fts3GetDeltaVarint3.exit46.i

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #57
  %i.cn = call fastcc i32 @sqlite3Fts3GetVarintU(ptr noundef %i.cm, ptr noundef nonnull %i.d), !inline_history !6116
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds i8, ptr %i.cm, i64 %i.co
  %i.cq = load i64, ptr %i.d, align 8, !tbaa !565 ; 2 uses
  %i.cr = sub i64 0, %i.cq
  %storemerge.p.i.i = select i1 %.not.i46, i64 %i.cq, i64 %i.cr
  %storemerge.i45.i = add i64 %storemerge.p.i.i, %.091100.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #57
  br label %fts3GetDeltaVarint3.exit46.i

fts3GetDeltaVarint3.exit46.i:                     ; preds = %bb.aa, %bb.z
  %.sink108.i = phi ptr [ %i.cp, %bb.aa ], [ null, %bb.z ] ; 2 uses
  %.394.i = phi i64 [ %storemerge.i45.i, %bb.aa ], [ %.091100.i, %bb.z ]
  store ptr %.sink108.i, ptr %i.g, align 8, !tbaa !741
  %i.cs = load ptr, ptr %i.h, align 8, !tbaa !741 ; 3 uses
  %.not.i47.i = icmp ult ptr %i.cs, %i.bf
  br i1 %.not.i47.i, label %bb.ab, label %._crit_edge.loopexit.i

bb.ab:                                            ; preds = %fts3GetDeltaVarint3.exit46.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #57
  %i.ct = call fastcc i32 @sqlite3Fts3GetVarintU(ptr noundef %i.cs, ptr noundef nonnull %i.c), !inline_history !6116
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds i8, ptr %i.cs, i64 %i.cu ; 2 uses
  store ptr %i.cv, ptr %i.h, align 8, !tbaa !741
  %i.cw = load i64, ptr %i.c, align 8, !tbaa !565 ; 2 uses
  %i.cx = sub i64 0, %i.cw
  %storemerge.p.i49.i = select i1 %.not.i46, i64 %i.cw, i64 %i.cx
  %storemerge.i50.i = add i64 %storemerge.p.i49.i, %.088101.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #57
  br label %fts3GetDeltaVarint3.exit51.i

bb.ac:                                            ; preds = %.lr.ph.i
  %i.cy = icmp slt i32 %7, 0
  br i1 %i.cy, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.cz = load i8, ptr %i.bu, align 1, !tbaa !733 ; 2 uses
  %.not20.i.i = icmp eq i8 %i.cz, 0
  br i1 %.not20.i.i, label %fts3PoslistCopy.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ad
  %i.da = sext i8 %i.cz to i32
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %i.db = phi i32 [ %i.de, %.lr.ph.i.i ], [ %i.da, %.lr.ph.preheader.i.i ]
  %.021.i.i = phi ptr [ %i.dc, %.lr.ph.i.i ], [ %i.bu, %.lr.ph.preheader.i.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 1 ; 3 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !733
  %i.de = sext i8 %i.dd to i32                    ; 2 uses
  %i.df = and i32 %i.db, -128
  %i.dg = or i32 %i.df, %i.de
  %.not.i52.i = icmp eq i32 %i.dg, 0
  br i1 %.not.i52.i, label %fts3PoslistCopy.exit.i, label %.lr.ph.i.i, !llvm.loop !491

fts3PoslistCopy.exit.i:                           ; preds = %.lr.ph.i.i, %bb.ad
  %.0.lcssa.i.i = phi ptr [ %i.bu, %bb.ad ], [ %i.dc, %.lr.ph.i.i ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 1 ; 4 uses
  store ptr %i.dh, ptr %i.g, align 8, !tbaa !741
  %.not.i53.i = icmp ult ptr %i.dh, %i.bd
  br i1 %.not.i53.i, label %bb.ae, label %._crit_edge.loopexit.i

bb.ae:                                            ; preds = %fts3PoslistCopy.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #57
  %i.di = call fastcc i32 @sqlite3Fts3GetVarintU(ptr noundef nonnull %i.dh, ptr noundef nonnull %i.b), !inline_history !6116
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds i8, ptr %i.dh, i64 %i.dj ; 2 uses
  store ptr %i.dk, ptr %i.g, align 8, !tbaa !741
  %i.dl = load i64, ptr %i.b, align 8, !tbaa !565 ; 2 uses
  %i.dm = sub i64 0, %i.dl
  %storemerge.p.i55.i = select i1 %.not.i46, i64 %i.dl, i64 %i.dm
  %storemerge.i56.i = add i64 %storemerge.p.i55.i, %.091100.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #57
  %.pre109.i = load ptr, ptr %i.h, align 8
  br label %fts3GetDeltaVarint3.exit51.i

bb.af:                                            ; preds = %bb.ac
  %i.dn = load i8, ptr %i.bt, align 1, !tbaa !733 ; 2 uses
  %.not20.i58.i = icmp eq i8 %i.dn, 0
  br i1 %.not20.i58.i, label %fts3PoslistCopy.exit64.i, label %.lr.ph.preheader.i59.i

.lr.ph.preheader.i59.i:                           ; preds = %bb.af
  %i.do = sext i8 %i.dn to i32
  br label %.lr.ph.i60.i

.lr.ph.i60.i:                                     ; preds = %.lr.ph.i60.i, %.lr.ph.preheader.i59.i
  %i.dp = phi i32 [ %i.ds, %.lr.ph.i60.i ], [ %i.do, %.lr.ph.preheader.i59.i ]
  %.021.i61.i = phi ptr [ %i.dq, %.lr.ph.i60.i ], [ %i.bt, %.lr.ph.preheader.i59.i ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.021.i61.i, i64 1 ; 3 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !733
  %i.ds = sext i8 %i.dr to i32                    ; 2 uses
  %i.dt = and i32 %i.dp, -128
  %i.du = or i32 %i.dt, %i.ds
  %.not.i62.i = icmp eq i32 %i.du, 0
  br i1 %.not.i62.i, label %fts3PoslistCopy.exit64.i, label %.lr.ph.i60.i, !llvm.loop !491

fts3PoslistCopy.exit64.i:                         ; preds = %.lr.ph.i60.i, %bb.af
  %.0.lcssa.i63.i = phi ptr [ %i.bt, %bb.af ], [ %i.dq, %.lr.ph.i60.i ]
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i63.i, i64 1 ; 4 uses
  store ptr %i.dv, ptr %i.h, align 8, !tbaa !741
  %.not.i65.i = icmp ult ptr %i.dv, %i.bf
  br i1 %.not.i65.i, label %bb.ag, label %._crit_edge.loopexit.i

bb.ag:                                            ; preds = %fts3PoslistCopy.exit64.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #57
  %i.dw = call fastcc i32 @sqlite3Fts3GetVarintU(ptr noundef nonnull %i.dv, ptr noundef nonnull %i.a), !inline_history !6116
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds i8, ptr %i.dv, i64 %i.dx ; 2 uses
  store ptr %i.dy, ptr %i.h, align 8, !tbaa !741
  %i.dz = load i64, ptr %i.a, align 8, !tbaa !565 ; 2 uses
  %i.ea = sub i64 0, %i.dz
  %storemerge.p.i67.i = select i1 %.not.i46, i64 %i.dz, i64 %i.ea
  %storemerge.i68.i = add i64 %storemerge.p.i67.i, %.088101.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #57
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !741
  br label %fts3GetDeltaVarint3.exit51.i

fts3GetDeltaVarint3.exit51.i:                     ; preds = %bb.ag, %bb.ae, %bb.ab
  %i.eb = phi ptr [ %.pre109.i, %bb.ae ], [ %i.cv, %bb.ab ], [ %i.dy, %bb.ag ] ; 2 uses
  %i.ec = phi ptr [ %i.dk, %bb.ae ], [ %.sink108.i, %bb.ab ], [ %.pre.i, %bb.ag ] ; 2 uses
  %.192.i = phi i64 [ %storemerge.i56.i, %bb.ae ], [ %.394.i, %bb.ab ], [ %.091100.i, %bb.ag ]
  %.189.i = phi i64 [ %.088101.i, %bb.ae ], [ %storemerge.i50.i, %bb.ab ], [ %storemerge.i68.i, %bb.ag ]
  %.287.i = phi i64 [ %.085102.i, %bb.ae ], [ %.186.i, %bb.ab ], [ %.085102.i, %bb.ag ]
  %.2.i = phi i32 [ %.084103.i, %bb.ae ], [ %.1.i, %bb.ab ], [ %.084103.i, %bb.ag ]
  %i.ed = icmp ne ptr %i.ec, null
  %i.ee = icmp ne ptr %i.eb, null
  %i.ef = select i1 %i.ed, i1 %i.ee, i1 false
  br i1 %i.ef, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !6117

._crit_edge.loopexit.i:                           ; preds = %fts3GetDeltaVarint3.exit51.i, %fts3PoslistCopy.exit64.i, %fts3PoslistCopy.exit.i, %fts3GetDeltaVarint3.exit46.i
  %.pre110.i = load ptr, ptr %i.i, align 8, !tbaa !741
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %fts3GetDeltaVarint3.exit42.i, %fts3GetDeltaVarint3.exit.i
  %i.eg = phi ptr [ %.pre110.i, %._crit_edge.loopexit.i ], [ %.0.i, %fts3GetDeltaVarint3.exit42.i ], [ %.0.i, %fts3GetDeltaVarint3.exit.i ]
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = ptrtoint ptr %.0.i to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = trunc i64 %i.ej to i32                  ; 4 uses
  br i1 %.not.i46, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.i
  %i.el = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i70.i = icmp eq i32 %i.el, 0
  br i1 %.not.i70.i, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.em = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i71.i = icmp eq ptr %i.em, null
  br i1 %.not.i.i71.i, label %sqlite3_mutex_enter.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.en = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.en(ptr noundef nonnull %i.em) #57, !inline_history !6118
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.aj, %bb.ai
  %i.eo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.ep = tail call i32 %i.eo(ptr noundef nonnull %.056) #57, !inline_history !6119
  %i.eq = sext i32 %i.ep to i64
  %i.er = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.es = sub nsw i64 %i.er, %i.eq
  store i64 %i.es, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.et = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.eu = add nsw i64 %i.et, -1
  store i64 %i.eu, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.ev = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.ev(ptr noundef nonnull %.056) #57, !inline_history !6120
  %i.ew = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.ew, null
  br i1 %.not.i4.i.i, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.ex = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.ex(ptr noundef nonnull %i.ew) #57, !inline_history !6121
  br label %bb.am

bb.al:                                            ; preds = %bb.ah
  %i.ey = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.ey(ptr noundef nonnull %.056) #57, !inline_history !6120
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge.i, %sqlite3_malloc64.exit.i, %bb.t, %bb.al, %bb.ak, %sqlite3_mutex_enter.exit.i.i
  %.157 = phi ptr [ %.056, %._crit_edge.i ], [ %.056, %bb.t ], [ %.056, %sqlite3_malloc64.exit.i ], [ %.0.i, %bb.al ], [ %.0.i, %bb.ak ], [ %.0.i, %sqlite3_mutex_enter.exit.i.i ]
  %.1 = phi i32 [ %i.ek, %._crit_edge.i ], [ %.055, %bb.t ], [ %.055, %sqlite3_malloc64.exit.i ], [ %i.ek, %bb.al ], [ %i.ek, %bb.ak ], [ %i.ek, %sqlite3_mutex_enter.exit.i.i ]
  %.036.i = phi i32 [ 0, %._crit_edge.i ], [ 7, %bb.t ], [ 7, %sqlite3_malloc64.exit.i ], [ 0, %bb.al ], [ 0, %bb.ak ], [ 0, %sqlite3_mutex_enter.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #57
  %i.ez = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i48 = icmp eq i32 %i.ez, 0
  br i1 %.not.i48, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fa = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i49, label %sqlite3_mutex_enter.exit.i50, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.fb(ptr noundef nonnull %i.fa) #57, !inline_history !748
  br label %sqlite3_mutex_enter.exit.i50

sqlite3_mutex_enter.exit.i50:                     ; preds = %bb.ao, %bb.an
  %i.fc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.fd = tail call i32 %i.fc(ptr noundef nonnull %.037) #57, !inline_history !13
  %i.fe = sext i32 %i.fd to i64
  %i.ff = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.fg = sub nsw i64 %i.ff, %i.fe
  store i64 %i.fg, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.fh = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.fi = add nsw i64 %i.fh, -1
  store i64 %i.fi, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.fj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.fj(ptr noundef nonnull %.037) #57, !inline_history !749
  %i.fk = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i51 = icmp eq ptr %i.fk, null
  br i1 %.not.i4.i51, label %sqlite3_free.exit52, label %bb.ap

bb.ap:                                            ; preds = %sqlite3_mutex_enter.exit.i50
  %i.fl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.fl(ptr noundef nonnull %i.fk) #57, !inline_history !750
  br label %sqlite3_free.exit52

bb.aq:                                            ; preds = %bb.am
  %i.fm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.fm(ptr noundef nonnull %.037) #57, !inline_history !749
  br label %sqlite3_free.exit52

sqlite3_free.exit52:                              ; preds = %sqlite3_mutex_enter.exit.i50, %bb.ap, %bb.aq
  store ptr %.157, ptr %1, align 8, !tbaa !2783
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_0
begin_hunk_1_@sqlite3Fts3GetVarintBounded:bb.a

bb.g:                                             ; preds = %bb.f
  %i.s = load i8, ptr %i.l, align 1, !tbaa !733   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.u = and i8 %i.s, 127
  %i.v = zext nneg i8 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 21
  %i.x = or disjoint i64 %i.w, %i.p               ; 3 uses
  %i.y = icmp sgt i8 %i.s, -1
  br i1 %i.y, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = icmp ult ptr %i.t, %1
  br i1 %i.z, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !733  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 4 uses
  %i.ac = and i8 %i.aa, 127
  %i.ad = zext nneg i8 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 28
  %i.af = or disjoint i64 %i.ae, %i.x             ; 3 uses
  %i.ag = icmp sgt i8 %i.aa, -1
  br i1 %i.ag, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = icmp ult ptr %i.ab, %1
  br i1 %i.ah, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ai = load i8, ptr %i.ab, align 1, !tbaa !733 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 4 uses
  %i.ak = and i8 %i.ai, 127
  %i.al = zext nneg i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 35
  %i.an = or disjoint i64 %i.am, %i.af            ; 3 uses
  %i.ao = icmp sgt i8 %i.ai, -1
  br i1 %i.ao, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = icmp ult ptr %i.aj, %1
  br i1 %i.ap, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.aq = load i8, ptr %i.aj, align 1, !tbaa !733 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 7 ; 4 uses
  %i.as = and i8 %i.aq, 127
  %i.at = zext nneg i8 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 42
  %i.av = add nuw nsw i64 %i.au, %i.an            ; 3 uses
  %i.aw = icmp sgt i8 %i.aq, -1
  br i1 %i.aw, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = icmp ult ptr %i.ar, %1
  br i1 %i.ax, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.ay = load i8, ptr %i.ar, align 1, !tbaa !733 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ba = and i8 %i.ay, 127
  %i.bb = zext nneg i8 %i.ba to i64
  %i.bc = shl nuw nsw i64 %i.bb, 49
  %i.bd = add nuw nsw i64 %i.bc, %i.av            ; 3 uses
  %i.be = icmp sgt i8 %i.ay, -1
  br i1 %i.be, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = icmp ult ptr %i.az, %1
  br i1 %i.bf, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.bg = load i8, ptr %i.az, align 1, !tbaa !733 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 4 uses
  %i.bi = and i8 %i.bg, 127
  %i.bj = zext nneg i8 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, 56
  %i.bl = add nuw nsw i64 %i.bk, %i.bd            ; 3 uses
  %i.bm = icmp sgt i8 %i.bg, -1
  br i1 %i.bm, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = icmp ult ptr %i.bh, %1
  br i1 %i.bn, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.bo = load i8, ptr %i.bh, align 1, !tbaa !733
  %i.bp = zext i8 %i.bo to i64
  %i.bq = shl i64 %i.bp, 63
  %i.br = add nuw i64 %i.bq, %i.bl
  %spec.select = getelementptr i8, ptr %0, i64 10
  br label %.loopexit

.thread:                                          ; preds = %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b, %bb.a
  %.01824.lcssa = phi i64 [ 0, %bb.a ], [ %i.bw, %bb.b ], [ %i.h, %bb.d ], [ %i.p, %bb.f ], [ %i.x, %bb.h ], [ %i.af, %bb.j ], [ %i.an, %bb.l ], [ %i.av, %bb.n ], [ %i.bd, %bb.p ], [ %i.bl, %bb.r ]
  %.01923.lcssa = phi ptr [ %0, %bb.a ], [ %i.bu, %bb.b ], [ %i.d, %bb.d ], [ %i.l, %bb.f ], [ %i.t, %bb.h ], [ %i.ab, %bb.j ], [ %i.aj, %bb.l ], [ %i.ar, %bb.n ], [ %i.az, %bb.p ], [ %i.bh, %bb.r ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.01923.lcssa, i64 1
  br label %.loopexit

bb.t:                                             ; preds = %bb.a
  %i.bt = load i8, ptr %0, align 1, !tbaa !733    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.bv = and i8 %i.bt, 127
  %i.bw = zext nneg i8 %i.bv to i64               ; 3 uses
  %i.bx = icmp sgt i8 %i.bt, -1
  br i1 %i.bx, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.s, %bb.t, %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.m, %bb.o, %bb.q, %.thread
  %.120 = phi ptr [ %i.bs, %.thread ], [ %i.aj, %bb.k ], [ %i.bu, %bb.t ], [ %i.d, %bb.c ], [ %spec.select, %bb.s ], [ %i.l, %bb.e ], [ %i.az, %bb.o ], [ %i.t, %bb.g ], [ %i.bh, %bb.q ], [ %i.ab, %bb.i ], [ %i.ar, %bb.m ]
  %.1 = phi i64 [ %.01824.lcssa, %.thread ], [ %i.an, %bb.k ], [ %i.bw, %bb.t ], [ %i.h, %bb.c ], [ %i.br, %bb.s ], [ %i.p, %bb.e ], [ %i.bd, %bb.o ], [ %i.x, %bb.g ], [ %i.bl, %bb.q ], [ %i.af, %bb.i ], [ %i.av, %bb.m ]
  store i64 %.1, ptr %2, align 8, !tbaa !565
  %i.by = ptrtoint ptr %.120 to i64
  %i.bz = ptrtoint ptr %0 to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = trunc i64 %i.ca to i32
  ret i32 %i.cb
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 268) i32 @fts3DoclistOrMerge(i32 noundef range(i32 0, 256) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %5, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 10 uses
  %i.h = alloca ptr, align 8                      ; 11 uses
  %i.i = alloca ptr, align 8                      ; 12 uses
  %i.j = sext i32 %2 to i64                       ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %1, i64 %i.j ; 2 uses
  %i.l = sext i32 %4 to i64                       ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %3, i64 %i.l ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #57
  store ptr null, ptr %5, align 8, !tbaa !741
  store i32 0, ptr %6, align 4, !tbaa !570
  %i.n = tail call i32 @sqlite3_initialize(), !inline_history !815
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %sqlite3_malloc64.exit, label %sqlite3_malloc64.exit.thread

sqlite3_malloc64.exit:                            ; preds = %bb.a
  %i.o = add nsw i64 %i.j, 17
  %i.p = add nsw i64 %i.o, %i.l
  %i.q = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.p), !inline_history !815 ; 9 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %sqlite3_malloc64.exit.thread, label %bb.b

bb.b:                                             ; preds = %sqlite3_malloc64.exit
  store ptr %i.q, ptr %i.i, align 8, !tbaa !741
  %.not.i55 = icmp sgt i32 %2, 0
  br i1 %.not.i55, label %bb.c, label %fts3GetDeltaVarint3.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #57
  %i.r = call fastcc i32 @sqlite3Fts3GetVarintU(ptr noundef %1, ptr noundef nonnull %i.f)
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %1, i64 %i.s
  %i.u = load i64, ptr %i.f, align 8, !tbaa !565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #57
  br label %fts3GetDeltaVarint3.exit

fts3GetDeltaVarint3.exit:                         ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.t, %bb.c ], [ null, %bb.b ] ; 3 uses
  %.2124 = phi i64 [ %i.u, %bb.c ], [ 0, %bb.b ]
  store ptr %i.v, ptr %i.g, align 8, !tbaa !741
  %.not.i56 = icmp sgt i32 %4, 0
  br i1 %.not.i56, label %bb.d, label %fts3GetDeltaVarint3.exit58

bb.d:                                             ; preds = %fts3GetDeltaVarint3.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #57
  %i.w = call fastcc i32 @sqlite3Fts3GetVarintU(ptr noundef %3, ptr noundef nonnull %i.e)
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %3, i64 %i.x
  %i.z = load i64, ptr %i.e, align 8, !tbaa !565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #57
  br label %fts3GetDeltaVarint3.exit58

fts3GetDeltaVarint3.exit58:                       ; preds = %fts3GetDeltaVarint3.exit, %bb.d
  %.sink160 = phi ptr [ %i.y, %bb.d ], [ null, %fts3GetDeltaVarint3.exit ] ; 3 uses
  %.2120 = phi i64 [ %i.z, %bb.d ], [ 0, %fts3GetDeltaVarint3.exit ]
  store ptr %.sink160, ptr %i.h, align 8, !tbaa !741
  %i.aa = icmp ne ptr %i.v, null                  ; 2 uses
  %i.ab = icmp ne ptr %.sink160, null             ; 2 uses
  %i.ac = select i1 %i.aa, i1 true, i1 %i.ab
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %fts3GetDeltaVarint3.exit58
  %.not50 = icmp eq i32 %0, 0                     ; 6 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %fts3GetDeltaVarint3.exit67
  %i.ad = phi ptr [ %.sink160, %.lr.ph ], [ %i.dw, %fts3GetDeltaVarint3.exit67 ] ; 6 uses
  %i.ae = phi ptr [ %i.v, %.lr.ph ], [ %i.dx, %fts3GetDeltaVarint3.exit67 ] ; 6 uses
  %i.af = phi i1 [ %i.ab, %.lr.ph ], [ %i.dz, %fts3GetDeltaVarint3.exit67 ] ; 2 uses
  %i.ag = phi i1 [ %i.aa, %.lr.ph ], [ %i.dy, %fts3GetDeltaVarint3.exit67 ] ; 2 uses
  %or.cond139 = phi i1 [ true, %.lr.ph ], [ %.not50, %fts3GetDeltaVarint3.exit67 ] ; 3 uses
  %.0116151 = phi i64 [ 0, %.lr.ph ], [ %.1117, %fts3GetDeltaVarint3.exit67 ] ; 6 uses
  %.0118150 = phi i64 [ %.2120, %.lr.ph ], [ %.1119, %fts3GetDeltaVarint3.exit67 ] ; 11 uses
  %.0122149 = phi i64 [ %.2124, %.lr.ph ], [ %.1123, %fts3GetDeltaVarint3.exit67 ] ; 15 uses
  %7 = tail call i32 @llvm.scmp.i32.i64(i64 %.0122149, i64 %.0118150) ; 2 uses
  %8 = sub nsw i32 0, %7
  %9 = select i1 %.not50, i32 %7, i32 %8          ; 2 uses
  %or.cond = and i1 %i.ag, %i.af
  %i.ah = icmp eq i32 %9, 0
  %or.cond3 = select i1 %or.cond, i1 %i.ah, i1 false
  br i1 %or.cond3, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.ai = sub i64 %.0122149, %.0116151
  %i.aj = sub i64 %.0116151, %.0122149
  %.0.i59 = select i1 %or.cond139, i64 %i.ai, i64 %i.aj
  %i.ak = load ptr, ptr %i.i, align 8, !tbaa !741 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.08.i.i = phi ptr [ %i.ak, %bb.f ], [ %i.an, %bb.g ] ; 3 uses
  %.0.i.i = phi i64 [ %.0.i59, %bb.f ], [ %i.ao, %bb.g ] ; 2 uses
  %i.al = trunc i64 %.0.i.i to i8                 ; 2 uses
  %i.am = or i8 %i.al, -128
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 1 ; 2 uses
  store i8 %i.am, ptr %.08.i.i, align 1, !tbaa !733
  %i.ao = lshr i64 %.0.i.i, 7                     ; 2 uses
  %.not.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i, label %fts3PutDeltaVarint3.exit, label %bb.g, !llvm.loop !489

fts3PutDeltaVarint3.exit:                         ; preds = %bb.g
  store i8 %i.al, ptr %.08.i.i, align 1, !tbaa !733
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ak to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = shl i64 %i.ar, 32
  %i.at = ashr exact i64 %i.as, 32
  %i.au = getelementptr inbounds i8, ptr %i.ak, i64 %i.at
  store ptr %i.au, ptr %i.i, align 8, !tbaa !741
  %i.av = call fastcc i32 @fts3PoslistMerge(ptr noundef %i.i, ptr noundef %i.g, ptr noundef %i.h) ; 4 uses
  %.not51 = icmp eq i32 %i.av, 0
  br i1 %.not51, label %bb.h, label %.thread

bb.h:                                             ; preds = %fts3PutDeltaVarint3.exit
  %i.aw = load ptr, ptr %i.g, align 8, !tbaa !741 ; 3 uses
  %.not.i60 = icmp ult ptr %i.aw, %i.k
  br i1 %.not.i60, label %bb.i, label %fts3GetDeltaVarint3.exit62

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #57
  %i.ax = call fastcc i32 @sqlite3Fts3GetVarintU(ptr noundef %i.aw, ptr noundef nonnull %i.d)
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr %i.aw, i64 %i.ay
  %i.ba = load i64, ptr %i.d, align 8, !tbaa !565 ; 2 uses
  %i.bb = sub i64 0, %i.ba
  %storemerge.p.i = select i1 %.not50, i64 %i.ba, i64 %i.bb
  %storemerge.i61 = add i64 %storemerge.p.i, %.0122149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #57
  br label %fts3GetDeltaVarint3.exit62

fts3GetDeltaVarint3.exit62:                       ; preds = %bb.h, %bb.i
  %.sink161 = phi ptr [ %i.az, %bb.i ], [ null, %bb.h ] ; 3 uses
  %.3125 = phi i64 [ %storemerge.i61, %bb.i ], [ %.0122149, %bb.h ] ; 2 uses
  store ptr %.sink161, ptr %i.g, align 8, !tbaa !741
  %i.bc = load ptr, ptr %i.h, align 8, !tbaa !741 ; 3 uses
  %.not.i63 = icmp ult ptr %i.bc, %i.m
  br i1 %.not.i63, label %bb.k, label %bb.j

bb.j:                                             ; preds = %fts3GetDeltaVarint3.exit62
  store ptr null, ptr %i.h, align 8, !tbaa !741
  br label %fts3GetDeltaVarint3.exit67

bb.k:                                             ; preds = %fts3GetDeltaVarint3.exit62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #57
  %i.bd = call fastcc i32 @sqlite3Fts3GetVarintU(ptr noundef %i.bc, ptr noundef nonnull %i.c)
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr %i.bc, i64 %i.be ; 2 uses
  store ptr %i.bf, ptr %i.h, align 8, !tbaa !741
  %i.bg = load i64, ptr %i.c, align 8, !tbaa !565 ; 2 uses
  %i.bh = sub i64 0, %i.bg
  %storemerge.p.i65 = select i1 %.not50, i64 %i.bg, i64 %i.bh
  %storemerge.i66 = add i64 %storemerge.p.i65, %.0118150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #57
  br label %fts3GetDeltaVarint3.exit67

bb.l:                                             ; preds = %bb.e
  %.not53 = xor i1 %i.af, true
  %i.bi = icmp slt i32 %9, 0
  %or.cond5 = select i1 %i.ag, i1 %i.bi, i1 false
  %or.cond54 = select i1 %.not53, i1 true, i1 %or.cond5
  %i.bj = load ptr, ptr %i.i, align 8, !tbaa !741 ; 6 uses
  br i1 %or.cond54, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.bk = sub i64 %.0122149, %.0116151
  %i.bl = sub i64 %.0116151, %.0122149
  %.0.i68 = select i1 %or.cond139, i64 %i.bk, i64 %i.bl
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.08.i.i69 = phi ptr [ %i.bj, %bb.m ], [ %i.bo, %bb.n ] ; 3 uses
  %.0.i.i70 = phi i64 [ %.0.i68, %bb.m ], [ %i.bp, %bb.n ] ; 2 uses
  %i.bm = trunc i64 %.0.i.i70 to i8               ; 2 uses
  %i.bn = or i8 %i.bm, -128
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i69, i64 1 ; 2 uses
  store i8 %i.bn, ptr %.08.i.i69, align 1, !tbaa !733
  %i.bp = lshr i64 %.0.i.i70, 7                   ; 2 uses
  %.not.i.i71 = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i71, label %fts3PutDeltaVarint3.exit72, label %bb.n, !llvm.loop !489

fts3PutDeltaVarint3.exit72:                       ; preds = %bb.n
  store i8 %i.bm, ptr %.08.i.i69, align 1, !tbaa !733
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bj to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = shl i64 %i.bs, 32
  %i.bu = ashr exact i64 %i.bt, 32
  %i.bv = getelementptr inbounds i8, ptr %i.bj, i64 %i.bu ; 3 uses
  store ptr %i.bv, ptr %i.i, align 8, !tbaa !741
  %i.bw = load i8, ptr %i.ae, align 1, !tbaa !733 ; 2 uses
  %.not20.i = icmp eq i8 %i.bw, 0
  br i1 %.not20.i, label %fts3PoslistCopy.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %fts3PutDeltaVarint3.exit72
  %i.bx = sext i8 %i.bw to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %i.by = phi i32 [ %i.cb, %.lr.ph.i ], [ %i.bx, %.lr.ph.preheader.i ]
  %.021.i = phi ptr [ %i.bz, %.lr.ph.i ], [ %i.ae, %.lr.ph.preheader.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.021.i, i64 1 ; 3 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !733
  %i.cb = sext i8 %i.ca to i32                    ; 2 uses
  %i.cc = and i32 %i.by, -128
  %i.cd = or i32 %i.cc, %i.cb
  %.not.i73 = icmp eq i32 %i.cd, 0
  br i1 %.not.i73, label %fts3PoslistCopy.exit, label %.lr.ph.i, !llvm.loop !491

fts3PoslistCopy.exit:                             ; preds = %.lr.ph.i, %fts3PutDeltaVarint3.exit72
  %.0.lcssa.i = phi ptr [ %i.ae, %fts3PutDeltaVarint3.exit72 ], [ %i.bz, %.lr.ph.i ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 1 ; 5 uses
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.ae to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = shl i64 %i.ch, 32
  %i.cj = ashr exact i64 %i.ci, 32                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr nonnull align 1 %i.ae, i64 %i.cj, i1 false)
  %i.ck = getelementptr inbounds i8, ptr %i.bv, i64 %i.cj
  store ptr %i.ck, ptr %i.i, align 8, !tbaa !741
  store ptr %i.ce, ptr %i.g, align 8, !tbaa !741
  %.not.i74 = icmp ult ptr %i.ce, %i.k
  br i1 %.not.i74, label %bb.p, label %bb.o

bb.o:                                             ; preds = %fts3PoslistCopy.exit
  store ptr null, ptr %i.g, align 8, !tbaa !741
  br label %fts3GetDeltaVarint3.exit67

bb.p:                                             ; preds = %fts3PoslistCopy.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #57
  %i.cl = call fastcc i32 @sqlite3Fts3GetVarintU(ptr noundef nonnull %i.ce, ptr noundef nonnull %i.b)
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds i8, ptr %i.ce, i64 %i.cm ; 2 uses
  store ptr %i.cn, ptr %i.g, align 8, !tbaa !741
  %i.co = load i64, ptr %i.b, align 8, !tbaa !565 ; 2 uses
  %i.cp = sub i64 0, %i.co
  %storemerge.p.i76 = select i1 %.not50, i64 %i.co, i64 %i.cp
  %storemerge.i77 = add i64 %storemerge.p.i76, %.0122149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #57
  %.pre162 = load ptr, ptr %i.h, align 8
  br label %fts3GetDeltaVarint3.exit67

bb.q:                                             ; preds = %bb.l
  %i.cq = sub i64 %.0118150, %.0116151
  %i.cr = sub i64 %.0116151, %.0118150
  %.0.i79 = select i1 %or.cond139, i64 %i.cq, i64 %i.cr
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.08.i.i80 = phi ptr [ %i.bj, %bb.q ], [ %i.cu, %bb.r ] ; 3 uses
  %.0.i.i81 = phi i64 [ %.0.i79, %bb.q ], [ %i.cv, %bb.r ] ; 2 uses
  %i.cs = trunc i64 %.0.i.i81 to i8               ; 2 uses
  %i.ct = or i8 %i.cs, -128
  %i.cu = getelementptr inbounds nuw i8, ptr %.08.i.i80, i64 1 ; 2 uses
  store i8 %i.ct, ptr %.08.i.i80, align 1, !tbaa !733
  %i.cv = lshr i64 %.0.i.i81, 7                   ; 2 uses
  %.not.i.i82 = icmp eq i64 %i.cv, 0
  br i1 %.not.i.i82, label %fts3PutDeltaVarint3.exit83, label %bb.r, !llvm.loop !489

fts3PutDeltaVarint3.exit83:                       ; preds = %bb.r
  store i8 %i.cs, ptr %.08.i.i80, align 1, !tbaa !733
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = ptrtoint ptr %i.bj to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = shl i64 %i.cy, 32
  %i.da = ashr exact i64 %i.cz, 32
  %i.db = getelementptr inbounds i8, ptr %i.bj, i64 %i.da ; 3 uses
  store ptr %i.db, ptr %i.i, align 8, !tbaa !741
  %i.dc = load i8, ptr %i.ad, align 1, !tbaa !733 ; 2 uses
  %.not20.i84 = icmp eq i8 %i.dc, 0
  br i1 %.not20.i84, label %fts3PoslistCopy.exit90, label %.lr.ph.preheader.i85

.lr.ph.preheader.i85:                             ; preds = %fts3PutDeltaVarint3.exit83
  %i.dd = sext i8 %i.dc to i32
  br label %.lr.ph.i86

.lr.ph.i86:                                       ; preds = %.lr.ph.i86, %.lr.ph.preheader.i85
  %i.de = phi i32 [ %i.dh, %.lr.ph.i86 ], [ %i.dd, %.lr.ph.preheader.i85 ]
  %.021.i87 = phi ptr [ %i.df, %.lr.ph.i86 ], [ %i.ad, %.lr.ph.preheader.i85 ]
  %i.df = getelementptr inbounds nuw i8, ptr %.021.i87, i64 1 ; 3 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !733
  %i.dh = sext i8 %i.dg to i32                    ; 2 uses
  %i.di = and i32 %i.de, -128
  %i.dj = or i32 %i.di, %i.dh
  %.not.i88 = icmp eq i32 %i.dj, 0
  br i1 %.not.i88, label %fts3PoslistCopy.exit90, label %.lr.ph.i86, !llvm.loop !491

fts3PoslistCopy.exit90:                           ; preds = %.lr.ph.i86, %fts3PutDeltaVarint3.exit83
  %.0.lcssa.i89 = phi ptr [ %i.ad, %fts3PutDeltaVarint3.exit83 ], [ %i.df, %.lr.ph.i86 ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i89, i64 1 ; 5 uses
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = ptrtoint ptr %i.ad to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = shl i64 %i.dn, 32
  %i.dp = ashr exact i64 %i.do, 32                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.db, ptr nonnull align 1 %i.ad, i64 %i.dp, i1 false)
  %i.dq = getelementptr inbounds i8, ptr %i.db, i64 %i.dp
  store ptr %i.dq, ptr %i.i, align 8, !tbaa !741
  store ptr %i.dk, ptr %i.h, align 8, !tbaa !741
  %.not.i91 = icmp ult ptr %i.dk, %i.m
  br i1 %.not.i91, label %bb.t, label %bb.s

bb.s:                                             ; preds = %fts3PoslistCopy.exit90
  store ptr null, ptr %i.h, align 8, !tbaa !741
  br label %fts3GetDeltaVarint3.exit67

bb.t:                                             ; preds = %fts3PoslistCopy.exit90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #57
  %i.dr = call fastcc i32 @sqlite3Fts3GetVarintU(ptr noundef nonnull %i.dk, ptr noundef nonnull %i.a)
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds i8, ptr %i.dk, i64 %i.ds ; 2 uses
  store ptr %i.dt, ptr %i.h, align 8, !tbaa !741
  %i.du = load i64, ptr %i.a, align 8, !tbaa !565 ; 2 uses
  %i.dv = sub i64 0, %i.du
  %storemerge.p.i93 = select i1 %.not50, i64 %i.du, i64 %i.dv
  %storemerge.i94 = add i64 %storemerge.p.i93, %.0118150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #57
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !741
  br label %fts3GetDeltaVarint3.exit67

fts3GetDeltaVarint3.exit67:                       ; preds = %bb.t, %bb.s, %bb.p, %bb.o, %bb.k, %bb.j
  %i.dw = phi ptr [ %i.ad, %bb.o ], [ %i.dt, %bb.t ], [ %i.bf, %bb.k ], [ null, %bb.j ], [ %.pre162, %bb.p ], [ null, %bb.s ] ; 2 uses
  %i.dx = phi ptr [ null, %bb.o ], [ %.pre, %bb.t ], [ %.sink161, %bb.k ], [ %.sink161, %bb.j ], [ %i.cn, %bb.p ], [ %i.ae, %bb.s ] ; 2 uses
  %.1123 = phi i64 [ %.0122149, %bb.o ], [ %.0122149, %bb.t ], [ %.3125, %bb.k ], [ %.3125, %bb.j ], [ %storemerge.i77, %bb.p ], [ %.0122149, %bb.s ]
  %.1119 = phi i64 [ %.0118150, %bb.o ], [ %storemerge.i94, %bb.t ], [ %storemerge.i66, %bb.k ], [ %.0118150, %bb.j ], [ %.0118150, %bb.p ], [ %.0118150, %bb.s ]
  %.1117 = phi i64 [ %.0122149, %bb.o ], [ %.0118150, %bb.t ], [ %.0122149, %bb.k ], [ %.0122149, %bb.j ], [ %.0122149, %bb.p ], [ %.0118150, %bb.s ]
  %i.dy = icmp ne ptr %i.dx, null                 ; 2 uses
  %i.dz = icmp ne ptr %i.dw, null                 ; 2 uses
  %i.ea = select i1 %i.dy, i1 true, i1 %i.dz
  br i1 %i.ea, label %bb.e, label %._crit_edge.loopexit

.thread:                                          ; preds = %fts3PutDeltaVarint3.exit
  %i.eb = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i96 = icmp eq i32 %i.eb, 0
  br i1 %.not.i96, label %bb.x, label %bb.u

bb.u:                                             ; preds = %.thread
  %i.ec = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i97 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i97, label %sqlite3_mutex_enter.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ed = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.ed(ptr noundef nonnull %i.ec) #57, !inline_history !748
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.v, %bb.u
  %i.ee = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.ef = tail call i32 %i.ee(ptr noundef nonnull %i.q) #57, !inline_history !13
  %i.eg = sext i32 %i.ef to i64
  %i.eh = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.ei = sub nsw i64 %i.eh, %i.eg
  store i64 %i.ei, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.ej = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.ek = add nsw i64 %i.ej, -1
  store i64 %i.ek, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.el = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.el(ptr noundef nonnull %i.q) #57, !inline_history !749
  %i.em = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.em, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.w

bb.w:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.en = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.en(ptr noundef nonnull %i.em) #57, !inline_history !750
  br label %sqlite3_free.exit

bb.x:                                             ; preds = %.thread
  %i.eo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.eo(ptr noundef nonnull %i.q) #57, !inline_history !749
  br label %sqlite3_free.exit

._crit_edge.loopexit:                             ; preds = %fts3GetDeltaVarint3.exit67
  %.pre163 = load ptr, ptr %i.i, align 8, !tbaa !741
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %fts3GetDeltaVarint3.exit58
  %i.ep = phi ptr [ %.pre163, %._crit_edge.loopexit ], [ %i.q, %fts3GetDeltaVarint3.exit58 ] ; 2 uses
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.q to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = getelementptr inbounds i8, ptr %i.q, i64 %i.es
  store i64 0, ptr %i.et, align 1
  %i.eu = ptrtoint ptr %i.ep to i64
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.x, %bb.w, %sqlite3_mutex_enter.exit.i, %._crit_edge
  %i.ev = phi i64 [ %i.eu, %._crit_edge ], [ 0, %sqlite3_mutex_enter.exit.i ], [ 0, %bb.w ], [ 0, %bb.x ]
  %.3136 = phi i32 [ 0, %._crit_edge ], [ %i.av, %sqlite3_mutex_enter.exit.i ], [ %i.av, %bb.w ], [ %i.av, %bb.x ]
  %.044 = phi ptr [ %i.q, %._crit_edge ], [ null, %sqlite3_mutex_enter.exit.i ], [ null, %bb.w ], [ null, %bb.x ] ; 2 uses
  store ptr %.044, ptr %5, align 8, !tbaa !741
  %i.ew = ptrtoint ptr %.044 to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = trunc i64 %i.ex to i32
  store i32 %i.ey, ptr %6, align 4, !tbaa !570
  br label %sqlite3_malloc64.exit.thread

sqlite3_malloc64.exit.thread:                     ; preds = %bb.a, %sqlite3_malloc64.exit, %sqlite3_free.exit
  %.046 = phi i32 [ %.3136, %sqlite3_free.exit ], [ 7, %sqlite3_malloc64.exit ], [ 7, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #57
  ret i32 %.046
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 268) i32 @fts3PoslistMerge(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #16 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !741
  %i.d = load ptr, ptr %1, align 8, !tbaa !741
  %i.e = load ptr, ptr %2, align 8, !tbaa !741
  br label %.loopexit.outer

.loopexit.outer:                                  ; preds = %.loopexit.outer.backedge, %bb.a
  %.0145.ph = phi ptr [ %i.c, %bb.a ], [ %.0145.ph.be, %.loopexit.outer.backedge ]
  %.0136.ph = phi ptr [ %i.d, %bb.a ], [ %.0136.ph.be, %.loopexit.outer.backedge ] ; 10 uses
  %.0133.ph = phi ptr [ %i.e, %bb.a ], [ %.0133.ph.be, %.loopexit.outer.backedge ]
  %i.f = getelementptr inbounds nuw i8, ptr %.0136.ph, i64 1
  %i.g = getelementptr inbounds nuw i8, ptr %.0136.ph, i64 2
  %i.h = getelementptr inbounds nuw i8, ptr %.0136.ph, i64 3
  %i.i = getelementptr inbounds nuw i8, ptr %.0136.ph, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %.0136.ph, i64 5
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.outer, %fts3ColumnlistCopy.exit74
  %.0145 = phi ptr [ %i.mu, %fts3ColumnlistCopy.exit74 ], [ %.0145.ph, %.loopexit.outer ] ; 28 uses
  %.0133 = phi ptr [ %.0.lcssa.i73, %fts3ColumnlistCopy.exit74 ], [ %.0133.ph, %.loopexit.outer ] ; 12 uses
  %i.k = load i8, ptr %.0136.ph, align 1, !tbaa !733 ; 2 uses
  switch i8 %i.k, label %thread-pre-split [
    i8 0, label %bb.b
    i8 1, label %bb.c
  ]

bb.b:                                             ; preds = %.loopexit
  %i.l = load i8, ptr %.0133, align 1, !tbaa !733 ; 2 uses
  %.not19 = icmp eq i8 %i.l, 0
  br i1 %.not19, label %.thread163, label %.critedge.thread

bb.c:                                             ; preds = %.loopexit
  %i.m = load i8, ptr %i.f, align 1, !tbaa !733   ; 3 uses
  %.not20 = icmp sgt i8 %i.m, -1
  br i1 %.not20, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = and i8 %i.m, 127
  %i.o = zext nneg i8 %i.n to i32
  %i.p = load i8, ptr %i.g, align 1, !tbaa !733   ; 2 uses
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 7
  %i.s = or disjoint i32 %i.r, %i.o               ; 2 uses
  %i.t = icmp sgt i8 %i.p, -1
  br i1 %i.t, label %sqlite3Fts3GetVarint32.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = and i32 %i.s, 16383
  %i.v = load i8, ptr %i.h, align 1, !tbaa !733   ; 2 uses
  %i.w = zext i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 14
  %i.y = or disjoint i32 %i.x, %i.u               ; 2 uses
  %i.z = icmp sgt i8 %i.v, -1
  br i1 %i.z, label %sqlite3Fts3GetVarint32.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = and i32 %i.y, 2097151
  %i.ab = load i8, ptr %i.i, align 1, !tbaa !733  ; 2 uses
  %i.ac = zext i8 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 21
  %i.ae = or disjoint i32 %i.ad, %i.aa            ; 2 uses
  %i.af = icmp sgt i8 %i.ab, -1
  br i1 %i.af, label %sqlite3Fts3GetVarint32.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = and i32 %i.ae, 268435455
  %i.ah = load i8, ptr %i.j, align 1, !tbaa !733
  %i.ai = and i8 %i.ah, 7
  %i.aj = zext nneg i8 %i.ai to i32
  %i.ak = shl nuw nsw i32 %i.aj, 28
  %i.al = or disjoint i32 %i.ak, %i.ag
  br label %sqlite3Fts3GetVarint32.exit

bb.h:                                             ; preds = %bb.c
  %i.am = zext nneg i8 %i.m to i32
  br label %sqlite3Fts3GetVarint32.exit

sqlite3Fts3GetVarint32.exit:                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.h
  %.0131 = phi i32 [ %i.am, %bb.h ], [ %i.al, %bb.g ], [ %i.y, %bb.e ], [ %i.s, %bb.d ], [ %i.ae, %bb.f ] ; 2 uses
  %i.an = icmp eq i32 %.0131, 0
  br i1 %i.an, label %.thread158, label %thread-pre-split

thread-pre-split:                                 ; preds = %.loopexit, %sqlite3Fts3GetVarint32.exit
  %.1132.ph = phi i32 [ %.0131, %sqlite3Fts3GetVarint32.exit ], [ 0, %.loopexit ]
  %.pr = load i8, ptr %.0133, align 1, !tbaa !733
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.b, %thread-pre-split
  %i.ao = phi i8 [ %.pr, %thread-pre-split ], [ %i.l, %bb.b ] ; 2 uses
  %.1132 = phi i32 [ %.1132.ph, %thread-pre-split ], [ 2147483647, %bb.b ] ; 14 uses
  switch i8 %i.ao, label %bb.o [
    i8 1, label %bb.i
    i8 0, label %bb.p
  ]

bb.i:                                             ; preds = %.critedge.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %.0133, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !733 ; 3 uses
  %.not21 = icmp sgt i8 %i.aq, -1
  br i1 %.not21, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.0133, i64 2
  %i.as = and i8 %i.aq, 127
  %i.at = zext nneg i8 %i.as to i32
  %i.au = load i8, ptr %i.ar, align 1, !tbaa !733 ; 2 uses
  %i.av = zext i8 %i.au to i32
  %i.aw = shl nuw nsw i32 %i.av, 7
  %i.ax = or disjoint i32 %i.aw, %i.at            ; 2 uses
  %i.ay = icmp sgt i8 %i.au, -1
  br i1 %i.ay, label %sqlite3Fts3GetVarint32.exit26, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %.0133, i64 3
  %i.ba = and i32 %i.ax, 16383
  %i.bb = load i8, ptr %i.az, align 1, !tbaa !733 ; 2 uses
  %i.bc = zext i8 %i.bb to i32
end_hunk_1
