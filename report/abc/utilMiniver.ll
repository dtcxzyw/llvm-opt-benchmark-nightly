Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/utilMiniver?download=true
inline.NumInlined: 18
inline.NumDeleted: 8
loop-unroll.NumUnrolled: 1
begin_hunk_0_@miniver_translate:bb.a
  %i.t = and i16 %i.s, 8192
  %.not8.i = icmp eq i16 %i.t, 0
  br i1 %.not8.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.011.i, i64 1
  store i8 %i.p, ptr %.011.i, align 1, !tbaa !9
  %.pre.i = load ptr, ptr %i.n, align 8, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = phi ptr [ %i.o, %bb.d ], [ %.pre.i, %bb.e ]
  %.1.i = phi ptr [ %.011.i, %bb.d ], [ %i.u, %bb.e ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0610.i, i64 1 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !9     ; 2 uses
  %.not.i = icmp eq i8 %i.x, 0
  br i1 %.not.i, label %strip_ws.exit, label %bb.d, !llvm.loop !27

strip_ws.exit:                                    ; preds = %bb.f, %bb.c
  %.0.lcssa.i = phi ptr [ %i.e, %bb.c ], [ %.1.i, %bb.f ]
  store i8 0, ptr %.0.lcssa.i, align 1, !tbaa !9
  %i.y = load i8, ptr %i.e, align 16, !tbaa !9
  %.not = icmp eq i8 %i.y, 0
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %strip_ws.exit
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.cc

bb.h:                                             ; preds = %strip_ws.exit
  %i.z = tail call noalias dereferenceable_or_null(4743316) ptr @calloc(i64 noundef 1, i64 noundef 4743316) #18 ; 40 uses
  %.not141 = icmp eq ptr %i.z, null
  br i1 %.not141, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %puts142 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  br label %bb.cc

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(127) %i.z, ptr noundef nonnull align 1 dereferenceable(127) @str.2, i64 noundef 127, i1 false) #16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4743312 ; 6 uses
  store i32 0, ptr %i.aa, align 4, !tbaa !41
  %i.ab = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #19
  %i.ac = add i64 %i.ab, 1
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.ac) #20 ; 5 uses
  %.not143 = icmp eq ptr %i.ad, null
  br i1 %.not143, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %puts144 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  tail call void @free(ptr noundef nonnull %i.z) #16
  br label %bb.cc

bb.l:                                             ; preds = %bb.j
  %i.ae = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ad, ptr noundef nonnull dereferenceable(1) %i.e) #16 ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 139392 ; 9 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 128 ; 9 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 278660 ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 139396 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 278664 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 417928 ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 31 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %parse_clause.exit.thread206, %bb.l
  %.0122 = phi ptr [ %i.ad, %bb.l ], [ %i.hf, %parse_clause.exit.thread206 ] ; 19 uses
  %i.ao = load i8, ptr %.0122, align 1, !tbaa !9  ; 2 uses
  %.not145 = icmp eq i8 %i.ao, 0
  br i1 %.not145, label %.thread211, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.0122, i32 noundef 59) #19 ; 3 uses
  %.not146 = icmp eq ptr %i.ap, null              ; 2 uses
  br i1 %.not146, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %i.ap, align 1, !tbaa !9
  %.pr = load i8, ptr %.0122, align 1, !tbaa !9
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.aq = phi i8 [ %.pr, %bb.o ], [ %i.ao, %bb.n ] ; 5 uses
  switch i8 %i.aq, label %.thread.sink.split [
    i8 0, label %parse_clause.exit.thread206
    i8 109, label %bb.q
    i8 105, label %bb.s
    i8 111, label %bb.s
    i8 119, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %.0122, i64 1 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !9   ; 4 uses
  %i.at = tail call ptr @__ctype_b_loc() #17
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !12 ; 2 uses
  %i.av = zext i8 %i.as to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !14
  %.fr210.i = freeze i16 %i.ax
  %i.ay = and i16 %.fr210.i, 1024
  %i.az = icmp eq i16 %i.ay, 0
  br i1 %i.az, label %switch.early.test.i, label %.preheader.i

switch.early.test.i:                              ; preds = %bb.q
  switch i8 %i.as, label %.thread.sink.split [
    i8 95, label %.lr.ph204.i.preheader
    i8 36, label %.lr.ph204.i.preheader
  ]

.preheader.i:                                     ; preds = %bb.q
  %.not129202.i = icmp eq i8 %i.as, 0
  br i1 %.not129202.i, label %._crit_edge205.i, label %.lr.ph204.i.preheader

.lr.ph204.i.preheader:                            ; preds = %.preheader.i, %switch.early.test.i, %switch.early.test.i
  br label %.lr.ph204.i

.lr.ph204.i:                                      ; preds = %.lr.ph204.i.preheader, %bb.r
  %indvars.iv236.i = phi i64 [ %indvars.iv.next237.i, %bb.r ], [ 1, %.lr.ph204.i.preheader ] ; 2 uses
  %i.ba = phi i8 [ %i.bh, %bb.r ], [ %i.as, %.lr.ph204.i.preheader ] ; 2 uses
  %i.bb = zext i8 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !14
  %.fr211.i = freeze i16 %i.bd
  %i.be = and i16 %.fr211.i, 8
  %i.bf = icmp eq i16 %i.be, 0
  br i1 %i.bf, label %switch.early.test180.i, label %bb.r

switch.early.test180.i:                           ; preds = %.lr.ph204.i
  switch i8 %i.ba, label %.thread.sink.split [
    i8 95, label %bb.r
    i8 36, label %bb.r
  ]

bb.r:                                             ; preds = %switch.early.test180.i, %switch.early.test180.i, %.lr.ph204.i
  %indvars.iv.next237.i = add nuw nsw i64 %indvars.iv236.i, 1 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0122, i64 %indvars.iv.next237.i
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !9   ; 2 uses
  %.not129.i = icmp eq i8 %i.bh, 0
  br i1 %.not129.i, label %._crit_edge205.loopexit.i, label %.lr.ph204.i, !llvm.loop !28

._crit_edge205.loopexit.i:                        ; preds = %bb.r
  %i.bi = trunc nuw nsw i64 %indvars.iv236.i to i32
  %i.bj = call i32 @llvm.umin.i32(i32 %i.bi, i32 127)
  %i.bk = zext nneg i32 %i.bj to i64
  br label %._crit_edge205.i

._crit_edge205.i:                                 ; preds = %._crit_edge205.loopexit.i, %.preheader.i
  %.0107.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.bk, %._crit_edge205.loopexit.i ] ; 2 uses
  %i.bl = call ptr @strncpy(ptr noundef nonnull %i.z, ptr noundef nonnull %i.ar, i64 noundef %.0107.lcssa.i) #16 ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.z, i64 %.0107.lcssa.i
  store i8 0, ptr %i.bm, align 1, !tbaa !9
  br label %parse_clause.exit.thread206

bb.s:                                             ; preds = %bb.p, %bb.p, %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %.0122, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !9
  %i.bp = icmp eq i8 %i.bo, 115                   ; 2 uses
  %spec.select.i = select i1 %i.bp, i32 2, i32 1  ; 3 uses
  %spec.select132.i = zext i1 %i.bp to i32        ; 4 uses
  %i.bq = zext nneg i32 %spec.select.i to i64
  %i.br = getelementptr inbounds nuw i8, ptr %.0122, i64 %i.bq ; 2 uses
  %i.bs = tail call ptr @__ctype_b_loc() #17
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !12 ; 5 uses
  %i.bu = load i8, ptr %i.br, align 1, !tbaa !9   ; 2 uses
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %i.bv
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !14
  %i.by = and i16 %i.bx, 2048
  %.not.i.i = icmp eq i16 %i.by, 0
  br i1 %.not.i.i, label %.thread.sink.split, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.s, %.lr.ph.i.i
  %indvars.iv.in.i = phi i32 [ %indvars.iv.i, %.lr.ph.i.i ], [ %spec.select.i, %bb.s ]
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %bb.s ]
  %i.bz = phi i8 [ %i.cf, %.lr.ph.i.i ], [ %i.bu, %bb.s ]
  %.016.i.i = phi i32 [ %i.cd, %.lr.ph.i.i ], [ 0, %bb.s ]
  %indvars.iv.i = add i32 %indvars.iv.in.i, 1     ; 2 uses
  %i.ca = mul nsw i32 %.016.i.i, 10
  %i.cb = sext i8 %i.bz to i32
  %i.cc = add nsw i32 %i.cb, -48
  %i.cd = add i32 %i.cc, %i.ca                    ; 6 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.br, i64 %indvars.iv.next.i.i
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !9   ; 2 uses
  %i.cg = zext i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %i.cg
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !14
  %i.cj = and i16 %i.ci, 2048
  %.not13.i.i = icmp eq i16 %i.cj, 0
  br i1 %.not13.i.i, label %bb.t, label %.lr.ph.i.i, !llvm.loop !29

bb.t:                                             ; preds = %.lr.ph.i.i
  %i.ck = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  %i.cl = add nuw nsw i32 %spec.select.i, %i.ck   ; 2 uses
  %i.cm = icmp slt i32 %i.cd, 1
  br i1 %i.cm, label %.thread.sink.split, label %bb.u

bb.u:                                             ; preds = %bb.t
  %4 = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds i8, ptr %.0122, i64 %4 ; 5 uses
  %i.co = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.cn, i32 noundef 61) #19 ; 4 uses
  %i.cp = icmp eq i8 %i.aq, 105
  br i1 %i.cp, label %bb.v, label %bb.ao

bb.v:                                             ; preds = %bb.u
  %i.cq = load i8, ptr %i.cn, align 1, !tbaa !9
  %.not126.i = icmp eq i8 %i.cq, 0
  br i1 %.not126.i, label %bb.w, label %bb.am

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %.promoted.i.i = load i32, ptr %i.aa, align 4, !tbaa !41 ; 6 uses
  %i.cr = icmp slt i32 %.promoted.i.i, 26
  br i1 %i.cr, label %.lr.ph.i135.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.loopexit.us85.i.i, %.loopexit.us72.i.i, %.loopexit.us.i.i, %bb.w
  br label %.preheader.i.i

.lr.ph.i135.i:                                    ; preds = %bb.w
  %i.cs = load i32, ptr %i.ah, align 4, !tbaa !42 ; 3 uses
  %i.ct = icmp sgt i32 %i.cs, 0
  %wide.trip.count.i.i.i = zext nneg i32 %i.cs to i64
  br i1 %i.ct, label %.lr.ph.i.us.i.i, label %.lr.ph.split.i.i

.lr.ph.i.us.i.i:                                  ; preds = %.lr.ph.i135.i, %.loopexit.us.i.i
  %i.cu = phi i32 [ %i.df, %.loopexit.us.i.i ], [ %.promoted.i.i, %.lr.ph.i135.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.cv = trunc i32 %i.cu to i8
  %i.cw = add i8 %i.cv, 97
  store i8 %i.cw, ptr %i.a, align 1, !tbaa !9
  store i8 0, ptr %i.af, align 1, !tbaa !9
  store i8 0, ptr %i.ag, align 1, !tbaa !9
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %.lr.ph.i.us.i.i
  %indvars.iv.i.us.i.i = phi i64 [ 0, %.lr.ph.i.us.i.i ], [ %indvars.iv.next.i.us.i.i, %bb.y ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [136 x i8], ptr %i.ai, i64 %indvars.iv.i.us.i.i
  %i.cy = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.cx, ptr noundef nonnull readonly dereferenceable(1) %i.a) #19
  %.not.i.us.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not.i.us.i.i, label %.loopexit.us.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %indvars.iv.next.i.us.i.i = add nuw nsw i64 %indvars.iv.i.us.i.i, 1 ; 2 uses
  %exitcond.not.i.us.i.i = icmp eq i64 %indvars.iv.next.i.us.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.us.i.i, label %.preheader34.i.loopexit.us.i.i, label %bb.x, !llvm.loop !30

.lr.ph39.i.us.i.i:                                ; preds = %.preheader34.i.loopexit.us.i.i
  %wide.trip.count50.i.us.i.i = zext nneg i32 %i.dg to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.aa, %.lr.ph39.i.us.i.i
  %indvars.iv47.i.us.i.i = phi i64 [ 0, %.lr.ph39.i.us.i.i ], [ %indvars.iv.next48.i.us.i.i, %bb.aa ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [136 x i8], ptr %i.ak, i64 %indvars.iv47.i.us.i.i
  %i.da = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.cz, ptr noundef nonnull readonly dereferenceable(1) %i.a) #19
  %.not27.i.us.i.i = icmp eq i32 %i.da, 0
  br i1 %.not27.i.us.i.i, label %.loopexit.us.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %indvars.iv.next48.i.us.i.i = add nuw nsw i64 %indvars.iv47.i.us.i.i, 1 ; 2 uses
  %exitcond51.not.i.us.i.i = icmp eq i64 %indvars.iv.next48.i.us.i.i, %wide.trip.count50.i.us.i.i
  br i1 %exitcond51.not.i.us.i.i, label %.preheader.i.us.i.i, label %bb.z, !llvm.loop !31

.preheader.i.us.i.i:                              ; preds = %bb.aa, %.preheader34.i.loopexit.us.i.i
  %i.db = load i32, ptr %i.am, align 4, !tbaa !43 ; 2 uses
  %i.dc = icmp sgt i32 %i.db, 0
  br i1 %i.dc, label %.lr.ph41.preheader.i.us.i.i, label %.loopexit50.i.i

.lr.ph41.preheader.i.us.i.i:                      ; preds = %.preheader.i.us.i.i
  %wide.trip.count55.i.us.i.i = zext nneg i32 %i.db to i64
  br label %.lr.ph41.i.us.i.i

.lr.ph41.i.us.i.i:                                ; preds = %bb.ab, %.lr.ph41.preheader.i.us.i.i
  %indvars.iv52.i.us.i.i = phi i64 [ 0, %.lr.ph41.preheader.i.us.i.i ], [ %indvars.iv.next53.i.us.i.i, %bb.ab ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [136 x i8], ptr %i.al, i64 %indvars.iv52.i.us.i.i
  %i.de = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.dd, ptr noundef nonnull readonly dereferenceable(1) %i.a) #19
  %.not28.i.us.i.i = icmp eq i32 %i.de, 0
  br i1 %.not28.i.us.i.i, label %.loopexit.us.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph41.i.us.i.i
  %indvars.iv.next53.i.us.i.i = add nuw nsw i64 %indvars.iv52.i.us.i.i, 1 ; 2 uses
  %exitcond56.not.i.us.i.i = icmp eq i64 %indvars.iv.next53.i.us.i.i, %wide.trip.count55.i.us.i.i
  br i1 %exitcond56.not.i.us.i.i, label %.loopexit50.i.i, label %.lr.ph41.i.us.i.i, !llvm.loop !32

.loopexit.us.i.i:                                 ; preds = %bb.x, %bb.z, %.lr.ph41.i.us.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.df = add nsw i32 %i.cu, 1                    ; 3 uses
  store i32 %i.df, ptr %i.aa, align 4, !tbaa !41
  %exitcond101.not.i.i = icmp eq i32 %i.df, 26
  br i1 %exitcond101.not.i.i, label %.preheader.i.i.preheader, label %.lr.ph.i.us.i.i, !llvm.loop !33

.preheader34.i.loopexit.us.i.i:                   ; preds = %bb.y
  %i.dg = load i32, ptr %i.aj, align 4, !tbaa !44 ; 2 uses
  %i.dh = icmp sgt i32 %i.dg, 0
  br i1 %i.dh, label %.lr.ph39.i.us.i.i, label %.preheader.i.us.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i135.i
  %i.di = load i32, ptr %i.aj, align 4, !tbaa !44 ; 2 uses
  %i.dj = icmp sgt i32 %i.di, 0
  %wide.trip.count50.i.i.i = zext nneg i32 %i.di to i64
  br i1 %i.dj, label %.preheader34.i.us57.i.i, label %.lr.ph.split.split.i.i

.preheader34.i.us57.i.i:                          ; preds = %.lr.ph.split.i.i, %.loopexit.us72.i.i
  %i.dk = phi i32 [ %i.dt, %.loopexit.us72.i.i ], [ %.promoted.i.i, %.lr.ph.split.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.dl = trunc i32 %i.dk to i8
  %i.dm = add i8 %i.dl, 97
  store i8 %i.dm, ptr %i.a, align 1, !tbaa !9
  store i8 0, ptr %i.af, align 1, !tbaa !9
  store i8 0, ptr %i.ag, align 1, !tbaa !9
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ad, %.preheader34.i.us57.i.i
  %indvars.iv47.i.us59.i.i = phi i64 [ 0, %.preheader34.i.us57.i.i ], [ %indvars.iv.next48.i.us61.i.i, %bb.ad ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [136 x i8], ptr %i.ak, i64 %indvars.iv47.i.us59.i.i
  %i.do = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.dn, ptr noundef nonnull readonly dereferenceable(1) %i.a) #19
  %.not27.i.us60.i.i = icmp eq i32 %i.do, 0
  br i1 %.not27.i.us60.i.i, label %.loopexit.us72.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %indvars.iv.next48.i.us61.i.i = add nuw nsw i64 %indvars.iv47.i.us59.i.i, 1 ; 2 uses
  %exitcond51.not.i.us62.i.i = icmp eq i64 %indvars.iv.next48.i.us61.i.i, %wide.trip.count50.i.i.i
  br i1 %exitcond51.not.i.us62.i.i, label %.preheader.i.loopexit.us63.i.i, label %bb.ac, !llvm.loop !31

.preheader.i.loopexit.us63.i.i:                   ; preds = %bb.ad
  %i.dp = load i32, ptr %i.am, align 4, !tbaa !43 ; 2 uses
  %i.dq = icmp sgt i32 %i.dp, 0
  br i1 %i.dq, label %.lr.ph41.preheader.i.us65.i.i, label %.loopexit50.i.i

.lr.ph41.preheader.i.us65.i.i:                    ; preds = %.preheader.i.loopexit.us63.i.i
  %wide.trip.count55.i.us66.i.i = zext nneg i32 %i.dp to i64
  br label %.lr.ph41.i.us67.i.i

.lr.ph41.i.us67.i.i:                              ; preds = %bb.ae, %.lr.ph41.preheader.i.us65.i.i
  %indvars.iv52.i.us68.i.i = phi i64 [ 0, %.lr.ph41.preheader.i.us65.i.i ], [ %indvars.iv.next53.i.us70.i.i, %bb.ae ] ; 2 uses
  %i.dr = getelementptr inbounds nuw [136 x i8], ptr %i.al, i64 %indvars.iv52.i.us68.i.i
  %i.ds = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.dr, ptr noundef nonnull readonly dereferenceable(1) %i.a) #19
  %.not28.i.us69.i.i = icmp eq i32 %i.ds, 0
  br i1 %.not28.i.us69.i.i, label %.loopexit.us72.i.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph41.i.us67.i.i
  %indvars.iv.next53.i.us70.i.i = add nuw nsw i64 %indvars.iv52.i.us68.i.i, 1 ; 2 uses
  %exitcond56.not.i.us71.i.i = icmp eq i64 %indvars.iv.next53.i.us70.i.i, %wide.trip.count55.i.us66.i.i
  br i1 %exitcond56.not.i.us71.i.i, label %.loopexit50.i.i, label %.lr.ph41.i.us67.i.i, !llvm.loop !32

.loopexit.us72.i.i:                               ; preds = %bb.ac, %.lr.ph41.i.us67.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.dt = add nsw i32 %i.dk, 1                    ; 3 uses
  store i32 %i.dt, ptr %i.aa, align 4, !tbaa !41
  %exitcond100.not.i.i = icmp eq i32 %i.dt, 26
  br i1 %exitcond100.not.i.i, label %.preheader.i.i.preheader, label %.preheader34.i.us57.i.i, !llvm.loop !33

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.i.i
  %i.du = load i32, ptr %i.am, align 4, !tbaa !43 ; 2 uses
  %i.dv = icmp sgt i32 %i.du, 0
  %wide.trip.count55.i.i.i = zext nneg i32 %i.du to i64
  br i1 %i.dv, label %.preheader34.i.us78.i.i, label %.preheader34.i.i.i

.preheader34.i.us78.i.i:                          ; preds = %.lr.ph.split.split.i.i, %.loopexit.us85.i.i
  %i.dw = phi i32 [ %i.eb, %.loopexit.us85.i.i ], [ %.promoted.i.i, %.lr.ph.split.split.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.dx = trunc i32 %i.dw to i8
  %i.dy = add i8 %i.dx, 97
  store i8 %i.dy, ptr %i.a, align 1, !tbaa !9
  store i8 0, ptr %i.af, align 1, !tbaa !9
  store i8 0, ptr %i.ag, align 1, !tbaa !9
  br label %.lr.ph41.i.us80.i.i

.lr.ph41.i.us80.i.i:                              ; preds = %bb.af, %.preheader34.i.us78.i.i
  %indvars.iv52.i.us81.i.i = phi i64 [ 0, %.preheader34.i.us78.i.i ], [ %indvars.iv.next53.i.us83.i.i, %bb.af ] ; 2 uses
  %i.dz = getelementptr inbounds nuw [136 x i8], ptr %i.al, i64 %indvars.iv52.i.us81.i.i
  %i.ea = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.dz, ptr noundef nonnull readonly dereferenceable(1) %i.a) #19
  %.not28.i.us82.i.i = icmp eq i32 %i.ea, 0
  br i1 %.not28.i.us82.i.i, label %.loopexit.us85.i.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph41.i.us80.i.i
  %indvars.iv.next53.i.us83.i.i = add nuw nsw i64 %indvars.iv52.i.us81.i.i, 1 ; 2 uses
  %exitcond56.not.i.us84.i.i = icmp eq i64 %indvars.iv.next53.i.us83.i.i, %wide.trip.count55.i.i.i
  br i1 %exitcond56.not.i.us84.i.i, label %.loopexit50.i.i, label %.lr.ph41.i.us80.i.i, !llvm.loop !32

.loopexit.us85.i.i:                               ; preds = %.lr.ph41.i.us80.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.eb = add nsw i32 %i.dw, 1                    ; 3 uses
  store i32 %i.eb, ptr %i.aa, align 4, !tbaa !41
  %exitcond.not.i.i = icmp eq i32 %i.eb, 26
  br i1 %exitcond.not.i.i, label %.preheader.i.i.preheader, label %.preheader34.i.us78.i.i, !llvm.loop !33

.preheader34.i.i.i:                               ; preds = %.lr.ph.split.split.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.ec = trunc i32 %.promoted.i.i to i8
  %i.ed = add i8 %i.ec, 97
  store i8 %i.ed, ptr %i.a, align 1, !tbaa !9
  store i8 0, ptr %i.af, align 1, !tbaa !9
  store i8 0, ptr %i.ag, align 1, !tbaa !9
  br label %.loopexit50.i.i

.loopexit50.i.i:                                  ; preds = %.preheader.i.loopexit.us63.i.i, %.preheader.i.us.i.i, %bb.af, %bb.ae, %bb.ab, %.preheader34.i.i.i
  %i.ee = phi i32 [ %i.dk, %bb.ae ], [ %i.cu, %bb.ab ], [ %i.dw, %bb.af ], [ %i.cu, %.preheader.i.us.i.i ], [ %.promoted.i.i, %.preheader34.i.i.i ], [ %i.dk, %.preheader.i.loopexit.us63.i.i ]
  %i.ef = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 31) #16 ; 0 uses
  store i8 0, ptr %i.an, align 1, !tbaa !9
  %i.eg = add nsw i32 %i.ee, 1
  store i32 %i.eg, ptr %i.aa, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %gen_auto_in_name.exit.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.critedge.i.i
  %.0.i.i = phi i32 [ %i.ev, %.critedge.i.i ], [ 0, %.preheader.i.i.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.eh = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 32, ptr noundef nonnull @.str.28, i32 noundef %.0.i.i) #16 ; 0 uses
  %i.ei = load i32, ptr %i.ah, align 4, !tbaa !42 ; 3 uses
  %i.ej = icmp sgt i32 %i.ei, 0
  br i1 %i.ej, label %.lr.ph.i34.i.i, label %.preheader34.i18.i.i

.lr.ph.i34.i.i:                                   ; preds = %.preheader.i.i
  %wide.trip.count.i35.i.i = zext nneg i32 %i.ei to i64
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ah
  %indvars.iv.next.i38.i.i = add nuw nsw i64 %indvars.iv.i36.i.i, 1 ; 2 uses
  %exitcond.not.i39.i.i = icmp eq i64 %indvars.iv.next.i38.i.i, %wide.trip.count.i35.i.i
  br i1 %exitcond.not.i39.i.i, label %.preheader34.i18.i.i, label %bb.ah, !llvm.loop !30

.preheader34.i18.i.i:                             ; preds = %bb.ag, %.preheader.i.i
  %i.ek = load i32, ptr %i.aj, align 4, !tbaa !44 ; 2 uses
  %i.el = icmp sgt i32 %i.ek, 0
  br i1 %i.el, label %.lr.ph39.i28.i.i, label %.preheader.i19.i.i

.lr.ph39.i28.i.i:                                 ; preds = %.preheader34.i18.i.i
  %wide.trip.count50.i29.i.i = zext nneg i32 %i.ek to i64
  br label %bb.aj

bb.ah:                                            ; preds = %bb.ag, %.lr.ph.i34.i.i
  %indvars.iv.i36.i.i = phi i64 [ 0, %.lr.ph.i34.i.i ], [ %indvars.iv.next.i38.i.i, %bb.ag ] ; 2 uses
  %i.em = getelementptr inbounds nuw [136 x i8], ptr %i.ai, i64 %indvars.iv.i36.i.i
  %i.en = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.em, ptr noundef nonnull readonly dereferenceable(1) %i.b) #19
  %.not.i37.i.i = icmp eq i32 %i.en, 0
  br i1 %.not.i37.i.i, label %.critedge.i.i, label %bb.ag

bb.ai:                                            ; preds = %bb.aj
  %indvars.iv.next48.i32.i.i = add nuw nsw i64 %indvars.iv47.i30.i.i, 1 ; 2 uses
  %exitcond51.not.i33.i.i = icmp eq i64 %indvars.iv.next48.i32.i.i, %wide.trip.count50.i29.i.i
  br i1 %exitcond51.not.i33.i.i, label %.preheader.i19.i.i, label %bb.aj, !llvm.loop !31

.preheader.i19.i.i:                               ; preds = %bb.ai, %.preheader34.i18.i.i
  %i.eo = load i32, ptr %i.am, align 4, !tbaa !43 ; 2 uses
  %i.ep = icmp sgt i32 %i.eo, 0
  br i1 %i.ep, label %.lr.ph41.preheader.i21.i.i, label %name_exists.exit40.i.i

.lr.ph41.preheader.i21.i.i:                       ; preds = %.preheader.i19.i.i
  %wide.trip.count55.i22.i.i = zext nneg i32 %i.eo to i64
  br label %.lr.ph41.i23.i.i

bb.aj:                                            ; preds = %bb.ai, %.lr.ph39.i28.i.i
  %indvars.iv47.i30.i.i = phi i64 [ 0, %.lr.ph39.i28.i.i ], [ %indvars.iv.next48.i32.i.i, %bb.ai ] ; 2 uses
  %i.eq = getelementptr inbounds nuw [136 x i8], ptr %i.ak, i64 %indvars.iv47.i30.i.i
  %i.er = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.eq, ptr noundef nonnull readonly dereferenceable(1) %i.b) #19
  %.not27.i31.i.i = icmp eq i32 %i.er, 0
  br i1 %.not27.i31.i.i, label %.critedge.i.i, label %bb.ai

bb.ak:                                            ; preds = %.lr.ph41.i23.i.i
  %indvars.iv.next53.i26.i.i = add nuw nsw i64 %indvars.iv52.i24.i.i, 1 ; 2 uses
  %exitcond56.not.i27.i.i = icmp eq i64 %indvars.iv.next53.i26.i.i, %wide.trip.count55.i22.i.i
  br i1 %exitcond56.not.i27.i.i, label %name_exists.exit40.i.i, label %.lr.ph41.i23.i.i, !llvm.loop !32

.lr.ph41.i23.i.i:                                 ; preds = %bb.ak, %.lr.ph41.preheader.i21.i.i
  %indvars.iv52.i24.i.i = phi i64 [ 0, %.lr.ph41.preheader.i21.i.i ], [ %indvars.iv.next53.i26.i.i, %bb.ak ] ; 2 uses
  %i.es = getelementptr inbounds nuw [136 x i8], ptr %i.al, i64 %indvars.iv52.i24.i.i
  %i.et = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.es, ptr noundef nonnull readonly dereferenceable(1) %i.b) #19
  %.not28.i25.i.i = icmp eq i32 %i.et, 0
  br i1 %.not28.i25.i.i, label %.critedge.i.i, label %bb.ak

name_exists.exit40.i.i:                           ; preds = %.preheader.i19.i.i, %bb.ak
  %i.eu = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 31) #16 ; 0 uses
  store i8 0, ptr %i.an, align 1, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %gen_auto_in_name.exit.i

.critedge.i.i:                                    ; preds = %bb.ah, %bb.aj, %.lr.ph41.i23.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.ev = add nuw nsw i32 %.0.i.i, 1
  br label %.preheader.i.i

gen_auto_in_name.exit.i:                          ; preds = %name_exists.exit40.i.i, %.loopexit50.i.i
  %i.ew = phi i32 [ %i.cs, %.loopexit50.i.i ], [ %i.ei, %name_exists.exit40.i.i ] ; 3 uses
  %i.ex = icmp sgt i32 %i.ew, 0
  br i1 %i.ex, label %.lr.ph.preheader.i.i, label %._crit_edge.i136.i

.lr.ph.preheader.i.i:                             ; preds = %gen_auto_in_name.exit.i
  %wide.trip.count.i.i = zext nneg i32 %i.ew to i64
  br label %.lr.ph.i137.i

bb.al:                                            ; preds = %.lr.ph.i137.i
  %indvars.iv.next.i140.i = add nuw nsw i64 %indvars.iv.i138.i, 1 ; 2 uses
  %exitcond.not.i141.i = icmp eq i64 %indvars.iv.next.i140.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i141.i, label %._crit_edge.i136.i, label %.lr.ph.i137.i, !llvm.loop !0

.lr.ph.i137.i:                                    ; preds = %bb.al, %.lr.ph.preheader.i.i
  %indvars.iv.i138.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i140.i, %bb.al ] ; 2 uses
  %i.ey = getelementptr inbounds nuw [136 x i8], ptr %i.ai, i64 %indvars.iv.i138.i
  %i.ez = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ey, ptr noundef nonnull readonly dereferenceable(1) %i.c) #19
  %.not.i139.i = icmp eq i32 %i.ez, 0
  br i1 %.not.i139.i, label %add_decl.exit.i, label %bb.al

._crit_edge.i136.i:                               ; preds = %bb.al, %gen_auto_in_name.exit.i
  %i.fa = sext i32 %i.ew to i64
  %i.fb = getelementptr inbounds [136 x i8], ptr %i.ai, i64 %i.fa
  %i.fc = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.fb, ptr noundef nonnull readonly dereferenceable(1) %i.c, i64 noundef 127) #16 ; 0 uses
  %i.fd = load i32, ptr %i.ah, align 4, !tbaa !17 ; 2 uses
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [136 x i8], ptr %i.ai, i64 %i.fe ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 128
  store i32 %i.cd, ptr %i.fg, align 4, !tbaa !19
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 132
  store i32 %spec.select132.i, ptr %i.fh, align 4, !tbaa !20
  %i.fi = add nsw i32 %i.fd, 1
  store i32 %i.fi, ptr %i.ah, align 4, !tbaa !17
  br label %add_decl.exit.i

add_decl.exit.i:                                  ; preds = %.lr.ph.i137.i, %._crit_edge.i136.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %parse_clause.exit.thread206

bb.am:                                            ; preds = %bb.v
  %.not127.i = icmp eq ptr %i.co, null
  br i1 %.not127.i, label %bb.an, label %.thread.sink.split

bb.an:                                            ; preds = %bb.am
  %i.fj = call fastcc i32 @split_ids(ptr noundef nonnull %i.z, ptr noundef nonnull %.0122, ptr noundef %i.cn, ptr noundef nonnull @emit_in, i32 noundef %i.cd, i32 noundef %spec.select132.i)
  br label %parse_clause.exit

bb.ao:                                            ; preds = %bb.u
  %i.fk = icmp ne i8 %i.aq, 119
  %i.fl = icmp ne ptr %i.co, null                 ; 2 uses
  %or.cond.i = select i1 %i.fk, i1 true, i1 %i.fl
  br i1 %or.cond.i, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fm = load i8, ptr %i.cn, align 1, !tbaa !9
  %.not120.i = icmp eq i8 %i.fm, 0
  br i1 %.not120.i, label %.thread.sink.split, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fn = call fastcc i32 @split_ids(ptr noundef nonnull %i.z, ptr noundef nonnull %.0122, ptr noundef %i.cn, ptr noundef nonnull @emit_wi, i32 noundef %i.cd, i32 noundef %spec.select132.i)
  br label %parse_clause.exit

bb.ar:                                            ; preds = %bb.ao
  br i1 %i.fl, label %bb.as, label %.thread.sink.split

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.fo = ptrtoint ptr %i.co to i64
  %i.fp = ptrtoint ptr %.0122 to i64
  %i.fq = sub i64 %i.fo, %i.fp                    ; 2 uses
  %i.fr = trunc i64 %i.fq to i32
  %i.fs = icmp slt i32 %i.cl, %i.fr
  %i.ft = icmp eq i8 %i.aq, 111                   ; 2 uses
  br i1 %i.fs, label %.lr.ph.i189, label %._crit_edge.i

.lr.ph.i189:                                      ; preds = %bb.as
  %5 = sext i32 %indvars.iv.i to i64              ; 2 uses
  %sext.i = shl i64 %i.fq, 32
  %6 = ashr exact i64 %sext.i, 32                 ; 3 uses
  %i.fu = getelementptr inbounds i8, ptr %.0122, i64 %5
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !9   ; 4 uses
  %i.fw = zext i8 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %i.fw
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !14
  %.fr208.peel.i = freeze i16 %i.fy
  %i.fz = and i16 %.fr208.peel.i, 1024
  %i.ga = icmp eq i16 %i.fz, 0                    ; 2 uses
  %or.cond289.i = and i1 %i.ft, %i.ga
  br i1 %or.cond289.i, label %switch.early.test181.peel.i, label %.thread.peel.i

switch.early.test181.peel.i:                      ; preds = %.lr.ph.i189
  switch i8 %i.fv, label %._crit_edge.loopexit.loopexit.i.sink.split [
    i8 95, label %.thread157.peel.i
    i8 36, label %.thread157.peel.i
  ]

.thread.peel.i:                                   ; preds = %.lr.ph.i189
  br i1 %i.ga, label %switch.early.test183.peel.i, label %.thread157.peel.i

switch.early.test183.peel.i:                      ; preds = %.thread.peel.i
  switch i8 %i.fv, label %.loopexit.i [
    i8 95, label %.thread157.peel.i
    i8 36, label %.thread157.peel.i
  ]

.thread157.peel.i:                                ; preds = %switch.early.test181.peel.i, %switch.early.test181.peel.i, %switch.early.test183.peel.i, %switch.early.test183.peel.i, %.thread.peel.i
  store i8 %i.fv, ptr %i.d, align 16, !tbaa !9
  %indvars.iv.next227.peel.i = add nsw i64 %5, 1  ; 2 uses
  %i.gb = icmp slt i64 %indvars.iv.next227.peel.i, %6
  br i1 %i.gb, label %.peel.next.i, label %._crit_edge.loopexit.loopexit.i

.peel.next.i:                                     ; preds = %.thread157.peel.i, %.thread157.i.1
  %indvars.iv228.i = phi i64 [ %indvars.iv.next229.i.1, %.thread157.i.1 ], [ 1, %.thread157.peel.i ] ; 3 uses
  %indvars.iv226.i = phi i64 [ %indvars.iv.next227.i.1, %.thread157.i.1 ], [ %indvars.iv.next227.peel.i, %.thread157.peel.i ] ; 3 uses
  %i.gc = getelementptr inbounds i8, ptr %.0122, i64 %indvars.iv226.i
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !9   ; 3 uses
  %i.ge = zext i8 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %i.ge
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !14
  %.fr207.i = freeze i16 %i.gg
  %i.gh = and i16 %.fr207.i, 8
  %i.gi = icmp eq i16 %i.gh, 0
  br i1 %i.gi, label %switch.early.test182.i, label %.thread157.i

switch.early.test182.i:                           ; preds = %.peel.next.i
  switch i8 %i.gd, label %.loopexit.i [
    i8 95, label %.thread157.i
    i8 36, label %.thread157.i
  ]

.loopexit.i:                                      ; preds = %switch.early.test182.i, %switch.early.test182.i.1, %switch.early.test183.peel.i
  %i.gj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, ptr noundef nonnull %.0122) ; 0 uses
  br label %.thread167.i

.loopexit234.i:                                   ; preds = %bb.at
  %i.gk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, ptr noundef nonnull %.0122) ; 0 uses
  br label %.thread167.i

.thread157.i:                                     ; preds = %.peel.next.i, %switch.early.test182.i, %switch.early.test182.i
  %indvars.iv.next229.i = add nuw nsw i64 %indvars.iv228.i, 1 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv228.i
  store i8 %i.gd, ptr %i.gl, align 1, !tbaa !9
  %indvars.iv.next227.i = add nsw i64 %indvars.iv226.i, 1 ; 2 uses
  %i.gm = icmp slt i64 %indvars.iv.next227.i, %6
  br i1 %i.gm, label %.peel.next.i.1, label %._crit_edge.loopexit.loopexit.i

.peel.next.i.1:                                   ; preds = %.thread157.i
  %i.gn = getelementptr inbounds i8, ptr %.0122, i64 %indvars.iv.next227.i
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !9   ; 3 uses
  %i.gp = zext i8 %i.go to i64
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %i.gp
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !14
  %.fr207.i.1 = freeze i16 %i.gr
  %i.gs = and i16 %.fr207.i.1, 8
  %i.gt = icmp eq i16 %i.gs, 0
  br i1 %i.gt, label %switch.early.test182.i.1, label %bb.at

switch.early.test182.i.1:                         ; preds = %.peel.next.i.1
  switch i8 %i.go, label %.loopexit.i [
    i8 95, label %bb.at
    i8 36, label %bb.at
  ]

bb.at:                                            ; preds = %switch.early.test182.i.1, %switch.early.test182.i.1, %.peel.next.i.1
  %exitcond.1 = icmp eq i64 %indvars.iv.next229.i, 120
  br i1 %exitcond.1, label %.loopexit234.i, label %.thread157.i.1

.thread157.i.1:                                   ; preds = %bb.at
  %indvars.iv.next229.i.1 = add nuw nsw i64 %indvars.iv228.i, 2 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.next229.i
  store i8 %i.go, ptr %i.gu, align 1, !tbaa !9
  %indvars.iv.next227.i.1 = add nsw i64 %indvars.iv226.i, 2 ; 2 uses
  %i.gv = icmp slt i64 %indvars.iv.next227.i.1, %6
  br i1 %i.gv, label %.peel.next.i, label %._crit_edge.loopexit.loopexit.i, !llvm.loop !34

._crit_edge.i:                                    ; preds = %bb.as
  br i1 %i.ft, label %._crit_edge.loopexit.loopexit.i.sink.split, label %bb.au

bb.au:                                            ; preds = %._crit_edge.i
  %i.gw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef nonnull %.0122) ; 0 uses
  br label %.thread167.i

._crit_edge.loopexit.loopexit.i.sink.split:       ; preds = %._crit_edge.i, %switch.early.test181.peel.i
  store i8 111, ptr %i.d, align 16, !tbaa !9
  br label %._crit_edge.loopexit.loopexit.i

._crit_edge.loopexit.loopexit.i:                  ; preds = %.thread157.i, %.thread157.i.1, %._crit_edge.loopexit.loopexit.i.sink.split, %.thread157.peel.i
  %.sink290.i = phi i64 [ 1, %.thread157.peel.i ], [ 1, %._crit_edge.loopexit.loopexit.i.sink.split ], [ %indvars.iv.next229.i, %.thread157.i ], [ %indvars.iv.next229.i.1, %.thread157.i.1 ]
  %i.gx = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink290.i
  store i8 0, ptr %i.gx, align 1, !tbaa !9
  %i.gy = getelementptr inbounds nuw i8, ptr %i.co, i64 1 ; 2 uses
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !9
  %.not125.i = icmp eq i8 %i.gz, 0
  br i1 %.not125.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %._crit_edge.loopexit.loopexit.i
  %i.ha = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, ptr noundef nonnull %.0122) ; 0 uses
  br label %.thread167.i

bb.aw:                                            ; preds = %._crit_edge.loopexit.loopexit.i
  switch i8 %i.aq, label %bb.ay [
    i8 111, label %.sink.split.i
    i8 119, label %bb.ax
  ]

bb.ax:                                            ; preds = %bb.aw
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ax, %bb.aw
  %.sink293.i = phi i64 [ 278664, %bb.ax ], [ 139396, %bb.aw ]
  %.sink292.i = phi i64 [ 417928, %bb.ax ], [ 278660, %bb.aw ]
  %i.hb = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sink293.i
  %i.hc = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sink292.i
  call fastcc void @add_decl(ptr noundef nonnull %i.hb, ptr noundef nonnull %i.hc, ptr noundef nonnull %i.d, i32 noundef %i.cd, i32 noundef %spec.select132.i)
  br label %bb.ay

bb.ay:                                            ; preds = %.sink.split.i, %bb.aw
  %i.hd = call fastcc i32 @add_asn(ptr noundef nonnull %i.z, ptr noundef %i.d, ptr noundef %i.gy)
  br label %.thread167.i

.thread167.i:                                     ; preds = %bb.ay, %bb.av, %bb.au, %.loopexit234.i, %.loopexit.i
  %.4.i = phi i32 [ 1, %bb.au ], [ %i.hd, %bb.ay ], [ 1, %bb.av ], [ 1, %.loopexit.i ], [ 1, %.loopexit234.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br label %parse_clause.exit

parse_clause.exit:                                ; preds = %bb.an, %bb.aq, %.thread167.i
  %.7.i = phi i32 [ %i.fj, %bb.an ], [ %.4.i, %.thread167.i ], [ %i.fn, %bb.aq ]
  %.not147 = icmp eq i32 %.7.i, 0
  br i1 %.not147, label %parse_clause.exit.thread206, label %.thread

.thread.sink.split:                               ; preds = %bb.ar, %bb.ap, %bb.am, %bb.t, %bb.s, %bb.p, %switch.early.test.i, %switch.early.test180.i
  %.str.16.sink = phi ptr [ @.str.17, %switch.early.test180.i ], [ @.str.22, %bb.ap ], [ @.str.20, %bb.t ], [ @.str.18, %bb.p ], [ @.str.19, %bb.s ], [ @.str.16, %switch.early.test.i ], [ @.str.23, %bb.ar ], [ @.str.21, %bb.am ]
  %i.he = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.16.sink, ptr noundef nonnull %.0122) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %parse_clause.exit, %.thread.sink.split
  call void @free(ptr noundef %i.ad) #16
  call void @free(ptr noundef %i.z) #16
  br label %bb.cc

parse_clause.exit.thread206:                      ; preds = %add_decl.exit.i, %._crit_edge205.i, %bb.p, %parse_clause.exit
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  br i1 %.not146, label %.thread211, label %bb.m

.thread211:                                       ; preds = %parse_clause.exit.thread206, %bb.m
  call void @free(ptr noundef %i.ad) #16
  %i.hg = load i8, ptr %i.z, align 4, !tbaa !9
  %.not148 = icmp eq i8 %i.hg, 0
  br i1 %.not148, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.thread211
  %puts149 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  call void @free(ptr noundef nonnull %i.z) #16
  br label %bb.cc

bb.ba:                                            ; preds = %.thread211
  %i.hh = load i32, ptr %i.aj, align 4, !tbaa !44
  %i.hi = icmp eq i32 %i.hh, 0
  br i1 %i.hi, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %puts174 = call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  call void @free(ptr noundef nonnull %i.z) #16
  br label %bb.cc

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  store ptr %1, ptr %i.f, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  store i64 %2, ptr %i.g, align 8, !tbaa !25
  %i.hj = call i32 (ptr, ptr, ptr, ...) @out_cat(ptr noundef %i.f, ptr noundef %i.g, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.z)
  %.not150 = icmp eq i32 %i.hj, 0
  br i1 %.not150, label %.preheader224, label %bb.be

.preheader224:                                    ; preds = %bb.bc
  %i.hk = load i32, ptr %i.ah, align 4, !tbaa !42
  %.not153265 = icmp sgt i32 %i.hk, 0
  br i1 %.not153265, label %.lr.ph, label %.critedge.preheader

.lr.ph:                                           ; preds = %.preheader224
  %i.hl = call i32 (ptr, ptr, ptr, ...) @out_cat(ptr noundef %i.f, ptr noundef %i.g, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.ai)
  %.not152.peel = icmp eq i32 %i.hl, 0
  br i1 %.not152.peel, label %bb.bd, label %.loopexit319

bb.bd:                                            ; preds = %.lr.ph
  %i.hm = load i32, ptr %i.ah, align 4, !tbaa !42
  %.not153.peel = icmp sgt i32 %i.hm, 1
  br i1 %.not153.peel, label %.peel.next, label %.critedge.preheader

bb.be:                                            ; preds = %bb.bc
  call void @free(ptr noundef nonnull %i.z) #16
  br label %bb.cb

bb.bf:                                            ; preds = %.peel.next
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hn = load i32, ptr %i.ah, align 4, !tbaa !42
  %i.ho = sext i32 %i.hn to i64
  %.not153 = icmp slt i64 %indvars.iv.next, %i.ho
  br i1 %.not153, label %.peel.next, label %.critedge.preheader, !llvm.loop !35

.critedge.preheader:                              ; preds = %bb.bf, %bb.bd, %.preheader224
  %i.hp = load i32, ptr %i.aj, align 4, !tbaa !44
  %.not156267 = icmp sgt i32 %i.hp, 0
  br i1 %.not156267, label %.lr.ph269, label %.critedge177

.peel.next:                                       ; preds = %bb.bd, %bb.bf
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bf ], [ 1, %bb.bd ] ; 2 uses
  %i.hq = getelementptr inbounds nuw [136 x i8], ptr %i.ai, i64 %indvars.iv
  %i.hr = call i32 (ptr, ptr, ptr, ...) @out_cat(ptr noundef %i.f, ptr noundef %i.g, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.hq)
  %.not152 = icmp eq i32 %i.hr, 0
  br i1 %.not152, label %bb.bf, label %.loopexit319

.loopexit319:                                     ; preds = %.peel.next, %.lr.ph
  call void @free(ptr noundef nonnull %i.z) #16
  br label %bb.cb

.critedge:                                        ; preds = %.lr.ph269
  %indvars.iv.next321 = add nuw nsw i64 %indvars.iv320, 1 ; 2 uses
  %i.hs = load i32, ptr %i.aj, align 4, !tbaa !44
  %i.ht = sext i32 %i.hs to i64
  %.not156 = icmp slt i64 %indvars.iv.next321, %i.ht
  br i1 %.not156, label %.lr.ph269, label %.critedge177, !llvm.loop !36

.lr.ph269:                                        ; preds = %.critedge.preheader, %.critedge
  %indvars.iv320 = phi i64 [ %indvars.iv.next321, %.critedge ], [ 0, %.critedge.preheader ] ; 3 uses
  %i.hu = load i32, ptr %i.ah, align 4, !tbaa !42
  %i.hv = trunc nuw nsw i64 %indvars.iv320 to i32
  %i.hw = or i32 %i.hu, %i.hv
  %.not154 = icmp eq i32 %i.hw, 0
  %i.hx = select i1 %.not154, ptr @.str.9, ptr @.str.8
  %i.hy = getelementptr inbounds nuw [136 x i8], ptr %i.ak, i64 %indvars.iv320
  %i.hz = call i32 (ptr, ptr, ptr, ...) @out_cat(ptr noundef %i.f, ptr noundef %i.g, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.hx, ptr noundef nonnull %i.hy)
  %.not155 = icmp eq i32 %i.hz, 0
  br i1 %.not155, label %.critedge, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph269
  call void @free(ptr noundef nonnull %i.z) #16
  br label %bb.cb

.critedge177:                                     ; preds = %.critedge, %.critedge.preheader
  %i.ia = call i32 (ptr, ptr, ptr, ...) @out_cat(ptr noundef %i.f, ptr noundef %i.g, ptr noundef nonnull @.str.10)
  %.not157 = icmp eq i32 %i.ia, 0
  br i1 %.not157, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.critedge177
  call void @free(ptr noundef nonnull %i.z) #16
  br label %bb.cb

bb.bi:                                            ; preds = %.critedge177
  %.not158 = icmp eq i32 %3, 0
  %i.ib = load i32, ptr %i.ah, align 4, !tbaa !42 ; 2 uses
  br i1 %.not158, label %bb.bj, label %bb.br

bb.bj:                                            ; preds = %bb.bi
  %i.ic = call fastcc i32 @print_decl_to_buf(ptr noundef %i.f, ptr noundef %i.g, ptr noundef nonnull @.str.11, ptr noundef %i.ai, i32 noundef %i.ib)
  %.not159 = icmp eq i32 %i.ic, 0
  br i1 %.not159, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @free(ptr noundef nonnull %i.z) #16
  br label %bb.cb

bb.bl:                                            ; preds = %bb.bj
  %i.id = load i32, ptr %i.aj, align 4, !tbaa !44
  %i.ie = call fastcc i32 @print_decl_to_buf(ptr noundef %i.f, ptr noundef %i.g, ptr noundef nonnull @.str.12, ptr noundef %i.ak, i32 noundef %i.id)
  %.not160 = icmp eq i32 %i.ie, 0
  br i1 %.not160, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @free(ptr noundef nonnull %i.z) #16
  br label %bb.cb

bb.bn:                                            ; preds = %bb.bl
end_hunk_0
