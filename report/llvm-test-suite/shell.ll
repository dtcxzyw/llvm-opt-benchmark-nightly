Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/shell?download=true
inline.NumInlined: 40
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@do_meta_command:bb.a

.preheader626:                                    ; preds = %bb.g, %bb.o
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.o ], [ 0, %bb.g ] ; 3 uses
  %.035.i = phi i32 [ %i.bj, %bb.o ], [ 0, %bb.g ] ; 5 uses
  %i.aj = sext i32 %.035.i to i64
  %i.ak = getelementptr inbounds i8, ptr %i.aa, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !19  ; 2 uses
  switch i8 %i.al, label %bb.o [
    i8 0, label %resolve_backslashes.exit
    i8 92, label %bb.h
  ]

bb.h:                                             ; preds = %.preheader626
  %i.am = add nsw i32 %.035.i, 1                  ; 6 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %i.aa, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !19  ; 4 uses
  switch i8 %i.ap, label %bb.k [
    i8 110, label %bb.o
    i8 116, label %bb.i
    i8 114, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  br label %bb.o

bb.k:                                             ; preds = %bb.h
  %i.aq = and i8 %i.ap, -8
  %or.cond.i = icmp eq i8 %i.aq, 48
  br i1 %or.cond.i, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ar = add nsw i8 %i.ap, -48                   ; 2 uses
  %i.as = add nsw i32 %.035.i, 2                  ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds i8, ptr %i.aa, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !19  ; 2 uses
  %i.aw = and i8 %i.av, -8
  %or.cond40.i = icmp eq i8 %i.aw, 48
  br i1 %or.cond40.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ax = shl nuw nsw i8 %i.ar, 3
  %i.ay = add nsw i8 %i.ax, -48
  %i.az = add nsw i8 %i.ay, %i.av                 ; 2 uses
  %i.ba = add nsw i32 %.035.i, 3                  ; 2 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds i8, ptr %i.aa, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !19  ; 2 uses
  %i.be = and i8 %i.bd, -8
  %or.cond41.i = icmp eq i8 %i.be, 48
  br i1 %or.cond41.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bf = shl i8 %i.az, 3
  %i.bg = add i8 %i.bf, -48
  %i.bh = add i8 %i.bg, %i.bd
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %.preheader626
  %.1.i = phi i32 [ %.035.i, %.preheader626 ], [ %i.am, %bb.i ], [ %i.am, %bb.j ], [ %i.ba, %bb.n ], [ %i.am, %bb.k ], [ %i.as, %bb.m ], [ %i.am, %bb.h ], [ %i.am, %bb.l ]
  %.0.i = phi i8 [ %i.al, %.preheader626 ], [ 9, %bb.i ], [ 13, %bb.j ], [ %i.bh, %bb.n ], [ %i.ap, %bb.k ], [ %i.az, %bb.m ], [ 10, %bb.h ], [ %i.ar, %bb.l ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv.i
  store i8 %.0.i, ptr %i.bi, align 1, !tbaa !19
  %i.bj = add nsw i32 %.1.i, 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %.preheader626, !llvm.loop !47

resolve_backslashes.exit:                         ; preds = %.preheader626
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv.i
  store i8 0, ptr %i.bk, align 1, !tbaa !19
  br label %bb.z

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv705
  store ptr %i.x, ptr %i.bl, align 8, !tbaa !13
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %indvars.iv703 = phi i64 [ %indvars.iv, %.lr.ph.preheader ], [ %indvars.iv.next704, %bb.p ] ; 3 uses
  %i.bm = phi i8 [ %i.s, %.lr.ph.preheader ], [ %i.bs, %bb.p ]
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !32
  %i.bq = and i16 %i.bp, 8192
  %.not487 = icmp eq i16 %i.bq, 0
  br i1 %.not487, label %bb.p, label %.critedge2

bb.p:                                             ; preds = %.lr.ph
  %indvars.iv.next704 = add nsw i64 %indvars.iv703, 1 ; 3 uses
  %i.br = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next704
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !19  ; 2 uses
  %.not486 = icmp eq i8 %i.bs, 0
  br i1 %.not486, label %.critedge2.thread.loopexit, label %.lr.ph, !llvm.loop !48

.critedge2:                                       ; preds = %.lr.ph
  %i.bt = trunc nsw i64 %indvars.iv703 to i32
  %i.bu = getelementptr inbounds i8, ptr %0, i64 %indvars.iv703
  %i.bv = add nsw i32 %i.bt, 1
  store i8 0, ptr %i.bu, align 1, !tbaa !19
  br label %.critedge2.thread

.critedge2.thread.loopexit:                       ; preds = %bb.p
  %i.bw = trunc nsw i64 %indvars.iv.next704 to i32
  br label %.critedge2.thread

.critedge2.thread:                                ; preds = %.critedge2.thread.loopexit, %.critedge2
  %.5 = phi i32 [ %i.bv, %.critedge2 ], [ %i.bw, %.critedge2.thread.loopexit ]
  br label %bb.q

bb.q:                                             ; preds = %bb.y, %.critedge2.thread
  %indvars.iv.i561 = phi i64 [ %indvars.iv.next.i565, %bb.y ], [ 0, %.critedge2.thread ] ; 3 uses
  %.035.i562 = phi i32 [ %i.cx, %bb.y ], [ 0, %.critedge2.thread ] ; 5 uses
  %i.bx = sext i32 %.035.i562 to i64
  %i.by = getelementptr inbounds i8, ptr %i.x, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !19  ; 2 uses
  switch i8 %i.bz, label %bb.y [
    i8 0, label %resolve_backslashes.exit569
    i8 92, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.ca = add nsw i32 %.035.i562, 1               ; 6 uses
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds i8, ptr %i.x, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !19  ; 4 uses
  switch i8 %i.cd, label %bb.u [
    i8 110, label %bb.y
    i8 116, label %bb.s
    i8 114, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  br label %bb.y

bb.t:                                             ; preds = %bb.r
  br label %bb.y

bb.u:                                             ; preds = %bb.r
  %i.ce = and i8 %i.cd, -8
  %or.cond.i566 = icmp eq i8 %i.ce, 48
  br i1 %or.cond.i566, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.cf = add nsw i8 %i.cd, -48                   ; 2 uses
  %i.cg = add nsw i32 %.035.i562, 2               ; 2 uses
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds i8, ptr %i.x, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !19  ; 2 uses
  %i.ck = and i8 %i.cj, -8
  %or.cond40.i567 = icmp eq i8 %i.ck, 48
  br i1 %or.cond40.i567, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.cl = shl nuw nsw i8 %i.cf, 3
  %i.cm = add nsw i8 %i.cl, -48
  %i.cn = add nsw i8 %i.cm, %i.cj                 ; 2 uses
  %i.co = add nsw i32 %.035.i562, 3               ; 2 uses
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds i8, ptr %i.x, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !19  ; 2 uses
  %i.cs = and i8 %i.cr, -8
  %or.cond41.i568 = icmp eq i8 %i.cs, 48
  br i1 %or.cond41.i568, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ct = shl i8 %i.cn, 3
  %i.cu = add i8 %i.ct, -48
  %i.cv = add i8 %i.cu, %i.cr
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %.1.i563 = phi i32 [ %.035.i562, %bb.q ], [ %i.ca, %bb.s ], [ %i.ca, %bb.t ], [ %i.co, %bb.x ], [ %i.ca, %bb.u ], [ %i.cg, %bb.w ], [ %i.ca, %bb.r ], [ %i.ca, %bb.v ]
  %.0.i564 = phi i8 [ %i.bz, %bb.q ], [ 9, %bb.s ], [ 13, %bb.t ], [ %i.cv, %bb.x ], [ %i.cd, %bb.u ], [ %i.cn, %bb.w ], [ 10, %bb.r ], [ %i.cf, %bb.v ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.i561
  store i8 %.0.i564, ptr %i.cw, align 1, !tbaa !19
  %i.cx = add nsw i32 %.1.i563, 1
  %indvars.iv.next.i565 = add nuw nsw i64 %indvars.iv.i561, 1
  br label %bb.q, !llvm.loop !47

resolve_backslashes.exit569:                      ; preds = %bb.q
  %i.cy = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.i561
  store i8 0, ptr %i.cy, align 1, !tbaa !19
  br label %bb.z

bb.z:                                             ; preds = %bb.g, %resolve_backslashes.exit, %resolve_backslashes.exit569
  %.6 = phi i32 [ %.5, %resolve_backslashes.exit569 ], [ %.3, %resolve_backslashes.exit ], [ %.3, %bb.g ] ; 2 uses
  %indvars.iv.next706 = add nuw nsw i64 %indvars.iv705, 1 ; 2 uses
  %i.cz = sext i32 %.6 to i64
  %i.da = getelementptr inbounds i8, ptr %0, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !19
  %i.dc = icmp ne i8 %i.db, 0
  %i.dd = icmp samesign ult i64 %indvars.iv705, 49
  %i.de = select i1 %i.dc, i1 %i.dd, i1 false
  br i1 %i.de, label %.preheader627, label %._crit_edge, !llvm.loop !49

._crit_edge:                                      ; preds = %bb.z, %bb.c
  %.0453.lcssa.ph.in = phi i64 [ %indvars.iv.next706, %bb.z ], [ %indvars.iv705, %bb.c ] ; 2 uses
  %.0453.lcssa.ph = trunc i64 %.0453.lcssa.ph.in to i32 ; 22 uses
  %i.df = icmp eq i32 %.0453.lcssa.ph, 0
  br i1 %i.df, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge
  %i.dg = load ptr, ptr %i.a, align 16, !tbaa !13 ; 27 uses
  %i.dh = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dg) #23 ; 17 uses
  %i.di = trunc i64 %i.dh to i32                  ; 2 uses
  %i.dj = load i8, ptr %i.dg, align 1, !tbaa !19  ; 5 uses
  %i.dk = icmp eq i8 %i.dj, 98
  %i.dl = icmp sgt i32 %i.di, 1                   ; 3 uses
  %or.cond = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %or.cond, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.dm = and i64 %i.dh, 2147483647
  %i.dn = tail call i32 @strncmp(ptr noundef nonnull %i.dg, ptr noundef nonnull @.str.40, i64 noundef %i.dm) #23
  %i.do = icmp eq i32 %i.dn, 0
  %i.dp = icmp ne i32 %.0453.lcssa.ph, 1
  %or.cond5 = and i1 %i.do, %i.dp
  br i1 %or.cond5, label %bb.ac, label %.thread787

bb.ac:                                            ; preds = %bb.ab
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !13 ; 8 uses
  %i.ds = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.dr, ptr noundef null, i32 noundef 10) #22, !inline_history !0
  %i.dt = trunc i64 %i.ds to i32
  %i.du = load i8, ptr %i.dr, align 1, !tbaa !19  ; 2 uses
  %.not14.i = icmp eq i8 %i.du, 0
  br i1 %.not14.i, label %.tail.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ac
  %i.dv = tail call ptr @__ctype_tolower_loc() #29
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.lr.ph.i
  %indvars.iv.i570 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i571, %bb.ad ] ; 2 uses
  %i.dw = phi i8 [ %i.du, %.lr.ph.i ], [ %i.ee, %bb.ad ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 %indvars.iv.i570
  %i.dy = load ptr, ptr %i.dv, align 8, !tbaa !34
  %i.dz = sext i8 %i.dw to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !10
  %i.ec = trunc i32 %i.eb to i8
  store i8 %i.ec, ptr %i.dx, align 1, !tbaa !19
  %indvars.iv.next.i571 = add nuw nsw i64 %indvars.iv.i570, 1 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dr, i64 %indvars.iv.next.i571
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !19  ; 2 uses
  %.not.i = icmp eq i8 %i.ee, 0
  br i1 %.not.i, label %sub_0.i, label %bb.ad, !llvm.loop !1

sub_0.i:                                          ; preds = %bb.ad
  %.pre.i = load i8, ptr %i.dr, align 1
  %i.ef = icmp eq i8 %.pre.i, 111
  br i1 %i.ef, label %sub_1.i, label %.tail.thread.i

sub_1.i:                                          ; preds = %sub_0.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  %i.eh = load i8, ptr %i.eg, align 1
  %.not17.i = icmp eq i8 %i.eh, 110
  br i1 %.not17.i, label %.tail.i, label %.tail.thread.i

.tail.i:                                          ; preds = %sub_1.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dr, i64 2
  %i.ej = load i8, ptr %i.ei, align 1
  %i.ek = icmp eq i8 %i.ej, 0
  br i1 %i.ek, label %booleanValue.exit, label %.tail.thread.i

.tail.thread.i:                                   ; preds = %.tail.i, %sub_1.i, %sub_0.i, %bb.ac
  %i.el = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.dr, ptr noundef nonnull dereferenceable(4) @.str.119) #23
  %i.em = icmp eq i32 %i.el, 0
  %spec.select.i = select i1 %i.em, i32 1, i32 %i.dt
  br label %booleanValue.exit

booleanValue.exit:                                ; preds = %.tail.i, %.tail.thread.i
  %.0.i572 = phi i32 [ %spec.select.i, %.tail.thread.i ], [ 1, %.tail.i ]
  store i32 %.0.i572, ptr @bail_on_error, align 4, !tbaa !10
  br label %.loopexit

bb.ae:                                            ; preds = %bb.aa
  %i.en = icmp eq i8 %i.dj, 100                   ; 2 uses
  %or.cond7 = select i1 %i.en, i1 %i.dl, i1 false
  br i1 %or.cond7, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.eo = and i64 %i.dh, 2147483647
  %i.ep = tail call i32 @strncmp(ptr noundef nonnull %i.dg, ptr noundef nonnull @.str.41, i64 noundef %i.eo) #23
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store ptr null, ptr %i.b, align 8, !tbaa !13
  tail call fastcc void @open_db(ptr noundef %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5408) %2, ptr noundef nonnull align 8 dereferenceable(5408) %1, i64 5408, i1 false)
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 1, ptr %i.er, align 8, !tbaa !24
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 1, ptr %i.es, align 8, !tbaa !18
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 3, ptr %i.et, align 4, !tbaa !10
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i32 15, ptr %i.eu, align 8, !tbaa !10
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 76
  store i32 58, ptr %i.ev, align 4, !tbaa !10
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %i.ew, align 4, !tbaa !35
  %i.ex = load ptr, ptr %1, align 8, !tbaa !26
  %i.ey = call i32 @sqlite3_exec(ptr noundef %i.ex, ptr noundef nonnull @.str.42, ptr noundef nonnull @callback, ptr noundef nonnull %2, ptr noundef nonnull %i.b) #22 ; 0 uses
  %i.ez = load ptr, ptr %i.b, align 8, !tbaa !13  ; 2 uses
  %.not544 = icmp eq ptr %i.ez, null
  br i1 %.not544, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fa = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.fb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fa, ptr noundef nonnull @.str.43, ptr noundef nonnull %i.ez) #25 ; 0 uses
  %i.fc = load ptr, ptr %i.b, align 8, !tbaa !13
  call void @sqlite3_free(ptr noundef %i.fc) #22
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %.loopexit

bb.aj:                                            ; preds = %bb.ae
  br i1 %i.en, label %.thread, label %bb.ao

.thread:                                          ; preds = %bb.af, %bb.aj
  %sext = shl i64 %i.dh, 32
  %i.fd = ashr exact i64 %sext, 32
  %i.fe = tail call i32 @strncmp(ptr noundef nonnull %i.dg, ptr noundef nonnull @.str.44, i64 noundef %i.fd) #23
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.ak, label %.critedge558.thread618

bb.ak:                                            ; preds = %.thread
  tail call fastcc void @open_db(ptr noundef %1)
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !23
  %fwrite540 = tail call i64 @fwrite(ptr nonnull @.str.45, i64 19, i64 1, ptr %i.fh) ; 0 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  store i32 0, ptr %i.fi, align 4, !tbaa !36
  %i.fj = icmp eq i32 %.0453.lcssa.ph, 1
  br i1 %i.fj, label %bb.al, label %.lr.ph681.preheader

.lr.ph681.preheader:                              ; preds = %bb.ak
  %wide.trip.count741 = and i64 %.0453.lcssa.ph.in, 4294967295
  br label %.lr.ph681

bb.al:                                            ; preds = %bb.ak
  tail call fastcc void @run_schema_dump_query(ptr noundef %1, ptr noundef nonnull @.str.46)
  %i.fk = load ptr, ptr %i.fg, align 8, !tbaa !23
  %i.fl = load ptr, ptr %1, align 8, !tbaa !26
  %i.fm = tail call fastcc i32 @run_table_dump_query(ptr noundef %i.fk, ptr noundef %i.fl, ptr noundef nonnull @.str.47) ; 0 uses
  br label %.loopexit621

.lr.ph681:                                        ; preds = %.lr.ph681.preheader, %.lr.ph681
  %indvars.iv737 = phi i64 [ 1, %.lr.ph681.preheader ], [ %indvars.iv.next738, %.lr.ph681 ] ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv737
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !13
  store ptr %i.fo, ptr @zShellStatic, align 8, !tbaa !13
  tail call fastcc void @run_schema_dump_query(ptr noundef %1, ptr noundef nonnull @.str.48)
  %i.fp = load ptr, ptr %i.fg, align 8, !tbaa !23
  %i.fq = load ptr, ptr %1, align 8, !tbaa !26
  %i.fr = tail call fastcc i32 @run_table_dump_query(ptr noundef %i.fp, ptr noundef %i.fq, ptr noundef nonnull @.str.49) ; 0 uses
  store ptr null, ptr @zShellStatic, align 8, !tbaa !13
  %indvars.iv.next738 = add nuw nsw i64 %indvars.iv737, 1 ; 2 uses
  %exitcond742.not = icmp eq i64 %indvars.iv.next738, %wide.trip.count741
  br i1 %exitcond742.not, label %.loopexit621, label %.lr.ph681, !llvm.loop !50

.loopexit621:                                     ; preds = %.lr.ph681, %bb.al
  %i.fs = load i32, ptr %i.fi, align 4, !tbaa !36
  %.not541 = icmp eq i32 %i.fs, 0
  br i1 %.not541, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.loopexit621
  %i.ft = load ptr, ptr %i.fg, align 8, !tbaa !23
  %fwrite542 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 28, i64 1, ptr %i.ft) ; 0 uses
  store i32 0, ptr %i.fi, align 4, !tbaa !36
  br label %bb.an

bb.an:                                            ; preds = %.loopexit621, %bb.am
  %i.fu = load ptr, ptr %i.fg, align 8, !tbaa !23
  %fwrite543 = tail call i64 @fwrite(ptr nonnull @.str.51, i64 8, i64 1, ptr %i.fu) ; 0 uses
  br label %.loopexit

bb.ao:                                            ; preds = %bb.aj
  switch i8 %i.dj, label %.critedge558 [
    i8 101, label %bb.ap
    i8 104, label %bb.az
    i8 105, label %bb.bg
    i8 109, label %bb.ci
    i8 110, label %bb.de
    i8 111, label %bb.dg
    i8 112, label %bb.do
    i8 113, label %bb.dr
    i8 114, label %bb.ds
    i8 115, label %bb.dw
  ]

bb.ap:                                            ; preds = %bb.ao
  %sext491 = shl i64 %i.dh, 32
  %i.fv = ashr exact i64 %sext491, 32             ; 3 uses
  %i.fw = tail call i32 @strncmp(ptr noundef nonnull %i.dg, ptr noundef nonnull @.str.52, i64 noundef %i.fv) #23
  %i.fx = icmp eq i32 %i.fw, 0
  %i.fy = icmp ne i32 %.0453.lcssa.ph, 1
  %or.cond9 = and i1 %i.fx, %i.fy
  br i1 %or.cond9, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.fz = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !13 ; 8 uses
  %i.gb = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.ga, ptr noundef null, i32 noundef 10) #22, !inline_history !0
  %i.gc = trunc i64 %i.gb to i32
  %i.gd = load i8, ptr %i.ga, align 1, !tbaa !19  ; 2 uses
  %.not14.i573 = icmp eq i8 %i.gd, 0
  br i1 %.not14.i573, label %.tail.thread.i580, label %.lr.ph.i574

.lr.ph.i574:                                      ; preds = %bb.aq
  %i.ge = tail call ptr @__ctype_tolower_loc() #29
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %.lr.ph.i574
  %indvars.iv.i575 = phi i64 [ 0, %.lr.ph.i574 ], [ %indvars.iv.next.i576, %bb.ar ] ; 2 uses
  %i.gf = phi i8 [ %i.gd, %.lr.ph.i574 ], [ %i.gn, %bb.ar ]
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ga, i64 %indvars.iv.i575
  %i.gh = load ptr, ptr %i.ge, align 8, !tbaa !34
  %i.gi = sext i8 %i.gf to i64
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.gh, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !10
  %i.gl = trunc i32 %i.gk to i8
  store i8 %i.gl, ptr %i.gg, align 1, !tbaa !19
  %indvars.iv.next.i576 = add nuw nsw i64 %indvars.iv.i575, 1 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ga, i64 %indvars.iv.next.i576
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !19  ; 2 uses
  %.not.i577 = icmp eq i8 %i.gn, 0
  br i1 %.not.i577, label %sub_0.i578, label %bb.ar, !llvm.loop !1

sub_0.i578:                                       ; preds = %bb.ar
  %.pre.i579 = load i8, ptr %i.ga, align 1
  %i.go = icmp eq i8 %.pre.i579, 111
  br i1 %i.go, label %sub_1.i583, label %.tail.thread.i580

sub_1.i583:                                       ; preds = %sub_0.i578
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ga, i64 1
  %i.gq = load i8, ptr %i.gp, align 1
  %.not17.i584 = icmp eq i8 %i.gq, 110
  br i1 %.not17.i584, label %.tail.i585, label %.tail.thread.i580

.tail.i585:                                       ; preds = %sub_1.i583
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ga, i64 2
  %i.gs = load i8, ptr %i.gr, align 1
  %i.gt = icmp eq i8 %i.gs, 0
  br i1 %i.gt, label %booleanValue.exit586, label %.tail.thread.i580

.tail.thread.i580:                                ; preds = %.tail.i585, %sub_1.i583, %sub_0.i578, %bb.aq
  %i.gu = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ga, ptr noundef nonnull dereferenceable(4) @.str.119) #23
  %i.gv = icmp eq i32 %i.gu, 0
  %spec.select.i581 = select i1 %i.gv, i32 1, i32 %i.gc
  br label %booleanValue.exit586

booleanValue.exit586:                             ; preds = %.tail.i585, %.tail.thread.i580
  %.0.i582 = phi i32 [ %spec.select.i581, %.tail.thread.i580 ], [ 1, %.tail.i585 ]
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.0.i582, ptr %i.gw, align 8, !tbaa !25
  br label %.loopexit

bb.as:                                            ; preds = %bb.ap
  %i.gx = tail call i32 @strncmp(ptr noundef nonnull %i.dg, ptr noundef nonnull @.str.53, i64 noundef %i.fv) #23
  %i.gy = icmp eq i32 %i.gx, 0
  br i1 %i.gy, label %.loopexit, label %.critedge547

.critedge547:                                     ; preds = %bb.as
  %i.gz = tail call i32 @strncmp(ptr noundef nonnull %i.dg, ptr noundef nonnull @.str.54, i64 noundef %i.fv) #23
  %i.ha = icmp eq i32 %i.gz, 0
  br i1 %i.ha, label %bb.at, label %.thread787

bb.at:                                            ; preds = %.critedge547
  %.not537 = icmp eq i32 %.0453.lcssa.ph, 1
  br i1 %.not537, label %.critedge550, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !13
  %i.hd = tail call fastcc i32 @booleanValue(ptr noundef %i.hc)
  %i.he = icmp eq i32 %i.hd, 1
  br i1 %i.he, label %.critedge550, label %bb.ax

.critedge550:                                     ; preds = %bb.at, %bb.au
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 888 ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !62
  %.not539 = icmp eq i32 %i.hg, 0
  br i1 %.not539, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.critedge550
  store i32 1, ptr %i.hf, align 8, !tbaa !62
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !18
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 892
  store i32 %i.hi, ptr %i.hj, align 4, !tbaa !63
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !24
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 896
  store i32 %i.hl, ptr %i.hm, align 8, !tbaa !64
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 900
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 68
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.hn, ptr noundef nonnull align 4 dereferenceable(400) %i.ho, i64 400, i1 false)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.critedge550
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 9, ptr %i.hp, align 8, !tbaa !18
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 1, ptr %i.hq, align 8, !tbaa !24
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 100
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.hs, i8 0, i64 68, i1 false)
  store <4 x i32> <i32 4, i32 13, i32 4, i32 4>, ptr %i.hr, align 4, !tbaa !10
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 84
  store <4 x i32> <i32 4, i32 13, i32 2, i32 13>, ptr %i.ht, align 4, !tbaa !10
  br label %.loopexit

bb.ax:                                            ; preds = %bb.au
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 888 ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !62
  %.not538 = icmp eq i32 %i.hv, 0
  br i1 %.not538, label %.loopexit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %i.hu, align 8, !tbaa !62
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 892
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !63
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.hx, ptr %i.hy, align 8, !tbaa !18
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 896
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !64
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %i.ia, ptr %i.ib, align 8, !tbaa !24
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 900
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.ic, ptr noundef nonnull align 4 dereferenceable(400) %i.id, i64 400, i1 false)
  br label %.loopexit

bb.az:                                            ; preds = %bb.ao
  %sext494 = shl i64 %i.dh, 32
  %i.ie = ashr exact i64 %sext494, 32             ; 3 uses
  %i.if = tail call i32 @strncmp(ptr noundef nonnull %i.dg, ptr noundef nonnull @.str.55, i64 noundef %i.ie) #23
end_hunk_0
