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
  %.0453.lcssa.ph.in = phi i64 [ %indvars.iv.next706, %bb.z ], [ %indvars.iv705, %bb.c ] ; 3 uses
  %.0453.lcssa.ph = trunc i64 %.0453.lcssa.ph.in to i32 ; 21 uses
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

end_hunk_0
begin_hunk_1_@do_meta_command:bb.a

.critedge39:                                      ; preds = %bb.el, %bb.ek
  %i.wd = load ptr, ptr %i.ul, align 8, !tbaa !23
  %fputc519 = tail call i32 @fputc(i32 10, ptr %i.wd) ; 0 uses
  br label %.loopexit

.critedge558:                                     ; preds = %bb.ao
  %i.we = icmp eq i8 %i.dj, 116                   ; 2 uses
  %or.cond42 = select i1 %i.we, i1 %i.dl, i1 false
  br i1 %or.cond42, label %bb.em, label %.critedge558.thread618

bb.em:                                            ; preds = %.critedge558
  %i.wf = and i64 %i.dh, 2147483647
  %i.wg = tail call i32 @strncmp(ptr noundef nonnull %i.dg, ptr noundef nonnull @.str.110, i64 noundef %i.wf) #23
  %i.wh = icmp eq i32 %i.wg, 0
  br i1 %i.wh, label %bb.en, label %.critedge558.thread618

bb.en:                                            ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #22
  tail call fastcc void @open_db(ptr noundef %1)
  %i.wi = icmp eq i32 %.0453.lcssa.ph, 1
  br i1 %i.wi, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.wj = load ptr, ptr %1, align 8, !tbaa !26
  %i.wk = call i32 @sqlite3_get_table(ptr noundef %i.wj, ptr noundef nonnull @.str.111, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef null, ptr noundef nonnull %i.l) #22
  br label %bb.eq

bb.ep:                                            ; preds = %bb.en
  %i.wl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !13
  store ptr %i.wm, ptr @zShellStatic, align 8, !tbaa !13
  %i.wn = load ptr, ptr %1, align 8, !tbaa !26
  %i.wo = call i32 @sqlite3_get_table(ptr noundef %i.wn, ptr noundef nonnull @.str.112, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef null, ptr noundef nonnull %i.l) #22
  store ptr null, ptr @zShellStatic, align 8, !tbaa !13
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %.0430 = phi i32 [ %i.wk, %bb.eo ], [ %i.wo, %bb.ep ]
  %i.wp = load ptr, ptr %i.l, align 8, !tbaa !13  ; 2 uses
  %.not508 = icmp eq ptr %i.wp, null
  br i1 %.not508, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.wq = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.wr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.wq, ptr noundef nonnull @.str.43, ptr noundef nonnull %i.wp) #25 ; 0 uses
  %i.ws = load ptr, ptr %i.l, align 8, !tbaa !13
  call void @sqlite3_free(ptr noundef %i.ws) #22
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %i.wt = icmp eq i32 %.0430, 0
  br i1 %i.wt, label %.preheader623, label %.loopexit622

.preheader623:                                    ; preds = %bb.es
  %i.wu = load i32, ptr %i.k, align 4, !tbaa !10  ; 3 uses
  %.not509665 = icmp slt i32 %i.wu, 1
  br i1 %.not509665, label %._crit_edge669.thread, label %.lr.ph668

.lr.ph668:                                        ; preds = %.preheader623
  %i.wv = load ptr, ptr %i.j, align 8, !tbaa !68
  %i.ww = add nuw i32 %i.wu, 1
  %wide.trip.count728 = zext i32 %i.ww to i64
  br label %bb.et

bb.et:                                            ; preds = %.lr.ph668, %bb.ev
  %indvars.iv724 = phi i64 [ 1, %.lr.ph668 ], [ %indvars.iv.next725, %bb.ev ] ; 2 uses
  %.0428666 = phi i32 [ 0, %.lr.ph668 ], [ %.1429, %bb.ev ] ; 2 uses
  %i.wx = getelementptr inbounds nuw [8 x i8], ptr %i.wv, i64 %indvars.iv724
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !13 ; 2 uses
  %i.wz = icmp eq ptr %i.wy, null
  br i1 %i.wz, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.xa = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.wy) #23
  %i.xb = trunc i64 %i.xa to i32
  %spec.select = call i32 @llvm.smax.i32(i32 %.0428666, i32 %i.xb)
  %i.xc = freeze i32 %spec.select
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %.1429 = phi i32 [ %.0428666, %bb.et ], [ %i.xc, %bb.eu ] ; 4 uses
  %indvars.iv.next725 = add nuw nsw i64 %indvars.iv724, 1 ; 2 uses
  %exitcond729.not = icmp eq i64 %indvars.iv.next725, %wide.trip.count728
  br i1 %exitcond729.not, label %._crit_edge669, label %bb.et, !llvm.loop !58

._crit_edge669:                                   ; preds = %bb.ev
  %i.xd = add nuw nsw i32 %.1429, 2
  %i.xe = udiv i32 80, %i.xd
  %i.xf = icmp ugt i32 %.1429, 78
  %spec.select798 = select i1 %i.xf, i32 1, i32 %i.xe
  br label %._crit_edge669.thread

._crit_edge669.thread:                            ; preds = %._crit_edge669, %.preheader623
  %.0428.lcssa783 = phi i32 [ 0, %.preheader623 ], [ %.1429, %._crit_edge669 ]
  %i.xg = phi i32 [ 40, %.preheader623 ], [ %spec.select798, %._crit_edge669 ] ; 2 uses
  %i.xh = add i32 %i.wu, -1
  %i.xi = add i32 %i.xh, %i.xg
  %i.xj = sdiv i32 %i.xi, %i.xg                   ; 4 uses
  %i.xk = icmp sgt i32 %i.xj, 0
  br i1 %i.xk, label %.lr.ph679.preheader, label %.loopexit622

.lr.ph679.preheader:                              ; preds = %._crit_edge669.thread
  %i.xl = zext nneg i32 %i.xj to i64
  br label %.lr.ph679

.lr.ph679:                                        ; preds = %.lr.ph679.preheader, %._crit_edge676
  %indvars.iv730 = phi i64 [ 1, %.lr.ph679.preheader ], [ %indvars.iv.next731, %._crit_edge676 ] ; 2 uses
  %.1677 = phi i32 [ 0, %.lr.ph679.preheader ], [ %i.xm, %._crit_edge676 ] ; 2 uses
  %i.xm = add nuw nsw i32 %.1677, 1               ; 2 uses
  %i.xn = load i32, ptr %i.k, align 4, !tbaa !10
  %.not510672.not = icmp slt i32 %.1677, %i.xn
  br i1 %.not510672.not, label %.lr.ph675, label %._crit_edge676

.lr.ph675:                                        ; preds = %.lr.ph679, %.lr.ph675
  %indvars.iv732 = phi i64 [ %indvars.iv.next733, %.lr.ph675 ], [ %indvars.iv730, %.lr.ph679 ] ; 3 uses
  %i.xo = trunc nuw i64 %indvars.iv732 to i32
  %.not511 = icmp slt i32 %i.xj, %i.xo
  %i.xp = select i1 %.not511, ptr @.str.114, ptr @.str.113
  %i.xq = load ptr, ptr %i.j, align 8, !tbaa !68
  %i.xr = getelementptr inbounds nuw [8 x i8], ptr %i.xq, i64 %indvars.iv732
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !13 ; 2 uses
  %.not512 = icmp eq ptr %i.xs, null
  %spec.select559 = select i1 %.not512, ptr @.str.113, ptr %i.xs
  %i.xt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.115, ptr noundef nonnull %i.xp, i32 noundef %.0428.lcssa783, ptr noundef nonnull %spec.select559) ; 0 uses
  %indvars.iv.next733 = add nuw nsw i64 %indvars.iv732, %i.xl ; 2 uses
  %i.xu = load i32, ptr %i.k, align 4, !tbaa !10
  %i.xv = trunc nuw i64 %indvars.iv.next733 to i32
  %.not510 = icmp slt i32 %i.xu, %i.xv
  br i1 %.not510, label %._crit_edge676, label %.lr.ph675, !llvm.loop !59

._crit_edge676:                                   ; preds = %.lr.ph675, %.lr.ph679
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  %indvars.iv.next731 = add nuw nsw i64 %indvars.iv730, 1
  %exitcond736.not = icmp eq i32 %i.xm, %i.xj
  br i1 %exitcond736.not, label %.loopexit622, label %.lr.ph679, !llvm.loop !60

.loopexit622:                                     ; preds = %._crit_edge676, %._crit_edge669.thread, %bb.es
  %i.xw = load ptr, ptr %i.j, align 8, !tbaa !68
  call void @sqlite3_free_table(ptr noundef %i.xw) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #22
  br label %.loopexit

.critedge558.thread618:                           ; preds = %.thread, %bb.em, %.critedge558
  %i.xx = phi i1 [ %i.we, %.critedge558 ], [ true, %bb.em ], [ false, %.thread ]
  %i.xy = icmp sgt i32 %i.di, 4
  %or.cond45 = select i1 %i.xx, i1 %i.xy, i1 false
  br i1 %or.cond45, label %bb.ew, label %bb.fa

bb.ew:                                            ; preds = %.critedge558.thread618
  %i.xz = and i64 %i.dh, 2147483647               ; 2 uses
  %i.ya = tail call i32 @strncmp(ptr noundef nonnull %i.dg, ptr noundef nonnull @.str.116, i64 noundef %i.xz) #23
  %i.yb = icmp eq i32 %i.ya, 0
  %i.yc = icmp ne i32 %.0453.lcssa.ph, 1          ; 2 uses
  %or.cond48 = and i1 %i.yb, %i.yc
  br i1 %or.cond48, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  tail call fastcc void @open_db(ptr noundef %1)
  %i.yd = load ptr, ptr %1, align 8, !tbaa !26
  %i.ye = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !13
  %i.yg = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.yf, ptr noundef null, i32 noundef 10) #22, !inline_history !0
  %i.yh = trunc i64 %i.yg to i32
  %i.yi = tail call i32 @sqlite3_busy_timeout(ptr noundef %i.yd, i32 noundef %i.yh) #22 ; 0 uses
  br label %.loopexit

bb.ey:                                            ; preds = %bb.ew
  %i.yj = tail call i32 @strncmp(ptr noundef nonnull %i.dg, ptr noundef nonnull @.str.117, i64 noundef %i.xz) #23
  %i.yk = icmp eq i32 %i.yj, 0
  %or.cond54 = and i1 %i.yk, %i.yc
  br i1 %or.cond54, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.yl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !13
  %i.yn = tail call fastcc i32 @booleanValue(ptr noundef %i.ym)
  store i32 %i.yn, ptr @enableTimer, align 4, !tbaa !10
  br label %.loopexit

bb.fa:                                            ; preds = %.critedge558.thread618, %bb.ey
  %i.yo = icmp eq i8 %i.dj, 119
  br i1 %i.yo, label %bb.fb, label %.thread787

bb.fb:                                            ; preds = %bb.fa
  %sext507 = shl i64 %i.dh, 32
  %i.yp = ashr exact i64 %sext507, 32
  %i.yq = tail call i32 @strncmp(ptr noundef nonnull %i.dg, ptr noundef nonnull @.str.108, i64 noundef %i.yp) #23
  %i.yr = icmp eq i32 %i.yq, 0
  br i1 %i.yr, label %.preheader, label %.thread787

.preheader:                                       ; preds = %bb.fb
  %.not685 = icmp eq i32 %.0453.lcssa.ph, 1
  br i1 %.not685, label %.loopexit, label %.lr.ph683.preheader

.lr.ph683.preheader:                              ; preds = %.preheader
  %wide.trip.count748 = and i64 %.0453.lcssa.ph.in, 4294967295
  br label %.lr.ph683

.lr.ph683:                                        ; preds = %.lr.ph683.preheader, %.lr.ph683
  %indvars.iv743 = phi i64 [ 1, %.lr.ph683.preheader ], [ %indvars.iv.next744, %.lr.ph683 ] ; 3 uses
  %i.ys = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv743
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !13
  %i.yu = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.yt, ptr noundef null, i32 noundef 10) #22, !inline_history !0
  %i.yv = trunc i64 %i.yu to i32
  %i.yw = getelementptr [4 x i8], ptr %1, i64 %indvars.iv743
  %i.yx = getelementptr i8, ptr %i.yw, i64 64
  store i32 %i.yv, ptr %i.yx, align 4, !tbaa !10
  %indvars.iv.next744 = add nuw nsw i64 %indvars.iv743, 1 ; 2 uses
  %exitcond749.not = icmp eq i64 %indvars.iv.next744, %wide.trip.count748
  br i1 %exitcond749.not, label %.loopexit, label %.lr.ph683, !llvm.loop !61

.thread787:                                       ; preds = %bb.be, %bb.ab, %.critedge547, %.critedge557, %bb.dr, %bb.do, %bb.dg, %bb.de, %bb.ci, %bb.ds, %bb.ce, %bb.fb, %bb.fa
  %i.yy = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.yz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.yy, ptr noundef nonnull @.str.118, ptr noundef nonnull %i.dg) #25 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph683, %bb.a, %.preheader, %.thread605, %.thread609, %booleanValue.exit, %bb.an, %booleanValue.exit600, %bb.dm, %bb.dn, %bb.dk, %bb.eg, %.critedge39, %bb.ex, %.thread787, %bb.ez, %.loopexit622, %bb.ei, %bb.dp, %bb.dq, %bb.df, %bb.ch, %bb.bf, %booleanValue.exit586, %bb.ai, %bb.as, %bb.ax, %bb.ay, %bb.aw, %bb.co, %bb.cs, %bb.cw, %bb.dd, %bb.dc, %bb.db, %bb.cy, %bb.cu, %bb.cq, %bb.cl, %bb.dr, %bb.dv, %bb.du, %._crit_edge
  %.1433 = phi i32 [ %.0432.ph, %.thread609 ], [ 0, %._crit_edge ], [ 0, %booleanValue.exit ], [ 0, %bb.ai ], [ 0, %bb.an ], [ 0, %booleanValue.exit586 ], [ 0, %.thread787 ], [ 2, %bb.as ], [ 0, %booleanValue.exit600 ], [ 0, %bb.bf ], [ 0, %bb.ch ], [ 0, %bb.aw ], [ 0, %bb.df ], [ 0, %bb.dk ], [ 0, %bb.dm ], [ 0, %bb.dn ], [ 0, %bb.dq ], [ 0, %bb.dp ], [ 0, %bb.cl ], [ 2, %bb.dr ], [ 0, %bb.eg ], [ 0, %bb.ei ], [ 0, %.critedge39 ], [ 0, %.loopexit622 ], [ 0, %bb.ex ], [ 0, %bb.ez ], [ 0, %bb.du ], [ 0, %bb.ax ], [ 0, %bb.ay ], [ 0, %bb.co ], [ 0, %bb.cs ], [ 0, %bb.cw ], [ 0, %bb.dd ], [ 0, %bb.dc ], [ 0, %bb.db ], [ 0, %bb.cy ], [ 0, %bb.cu ], [ 0, %bb.cq ], [ 0, %bb.dv ], [ 0, %.thread605 ], [ 0, %.preheader ], [ 0, %bb.a ], [ 0, %.lr.ph683 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.1433
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

declare i32 @sqlite3_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @callback(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(none) %3) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18
  switch i32 %i.b, label %.loopexit [
    i32 0, label %bb.b
    i32 9, label %bb.f
    i32 1, label %bb.f
    i32 3, label %bb.ac
    i32 2, label %bb.ac
    i32 4, label %bb.al
    i32 6, label %bb.ay
    i32 7, label %bb.bd
    i32 5, label %bb.bi
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.d = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %i.d, label %.lr.ph386.preheader, label %._crit_edge387

.lr.ph386.preheader:                              ; preds = %.preheader
  %wide.trip.count460 = zext nneg i32 %1 to i64
  br label %.lr.ph386

.lr.ph386:                                        ; preds = %.lr.ph386.preheader, %.lr.ph386
  %indvars.iv457 = phi i64 [ 0, %.lr.ph386.preheader ], [ %indvars.iv.next458, %.lr.ph386 ] ; 2 uses
  %.0226385 = phi i32 [ 5, %.lr.ph386.preheader ], [ %.1227, %.lr.ph386 ]
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv457
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %.not305 = icmp eq ptr %i.f, null
  %spec.select = select i1 %.not305, ptr @.str.113, ptr %i.f
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select) #23
  %i.h = trunc i64 %i.g to i32
  %.1227 = tail call i32 @llvm.smax.i32(i32 %.0226385, i32 %i.h) ; 2 uses
  %indvars.iv.next458 = add nuw nsw i64 %indvars.iv457, 1 ; 2 uses
  %exitcond461.not = icmp eq i64 %indvars.iv.next458, %wide.trip.count460
  br i1 %exitcond461.not, label %._crit_edge387, label %.lr.ph386, !llvm.loop !69

._crit_edge387:                                   ; preds = %.lr.ph386, %.preheader
  %.0226.lcssa = phi i32 [ 5, %.preheader ], [ %.1227, %.lr.ph386 ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !35   ; 2 uses
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !35
  %i.l = icmp sgt i32 %i.j, 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge387
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !23
  %fputc303 = tail call i32 @fputc(i32 10, ptr %i.n) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge387
  br i1 %i.d, label %.lr.ph390, label %.loopexit

.lr.ph390:                                        ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 868
  %wide.trip.count465 = zext nneg i32 %1 to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph390, %bb.e
  %indvars.iv462 = phi i64 [ 0, %.lr.ph390 ], [ %indvars.iv.next463, %bb.e ] ; 3 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv462
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv462
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !13   ; 2 uses
  %.not304 = icmp eq ptr %i.u, null
  %i.v = select i1 %.not304, ptr %i.p, ptr %i.u
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.q, ptr noundef nonnull @.str.141, i32 noundef %.0226.lcssa, ptr noundef %i.s, ptr noundef nonnull %i.v) #22 ; 0 uses
  %indvars.iv.next463 = add nuw nsw i64 %indvars.iv462, 1 ; 2 uses
  %exitcond466.not = icmp eq i64 %indvars.iv.next463, %wide.trip.count465
  br i1 %exitcond466.not, label %.loopexit, label %bb.e, !llvm.loop !70

bb.f:                                             ; preds = %bb.a, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !35   ; 2 uses
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 4, !tbaa !35
  %i.aa = icmp eq i32 %i.y, 0
  br i1 %i.aa, label %.preheader338, label %.loopexit337

.preheader338:                                    ; preds = %bb.f
  %i.ab = icmp sgt i32 %1, 0
  br i1 %i.ab, label %.lr.ph378, label %.loopexit

.lr.ph378:                                        ; preds = %.preheader338
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %.not299 = icmp eq ptr %2, null                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 868 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 468 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ah = add nsw i32 %1, -1
  %i.ai = zext nneg i32 %i.ah to i64              ; 2 uses
  %wide.trip.count445 = zext nneg i32 %1 to i64
  %.not517 = icmp eq i32 %1, 1
  br i1 %.not517, label %._crit_edge379.peel.begin, label %.lr.ph378.split

.lr.ph378.split:                                  ; preds = %.lr.ph378
  %i.aj = add nsw i64 %wide.trip.count445, -2
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph378.split, %bb.n
  %indvars.iv442 = phi i64 [ 0, %.lr.ph378.split ], [ %indvars.iv.next443, %bb.n ] ; 9 uses
  %i.ak = icmp samesign ult i64 %indvars.iv442, 100 ; 2 uses
  br i1 %i.ak, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv442
  %i.am = load i32, ptr %i.al, align 4, !tbaa !10 ; 2 uses
  %i.an = icmp slt i32 %i.am, 1
  br i1 %i.an, label %.thread, label %.thread326

.thread:                                          ; preds = %bb.g, %bb.h
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv442
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !13 ; 2 uses
  %.not298 = icmp eq ptr %i.ap, null
  %spec.select306 = select i1 %.not298, ptr @.str.113, ptr %i.ap
  %i.aq = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select306) #23
  %i.ar = trunc i64 %i.aq to i32
  br i1 %.not299, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.thread
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv442
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !13 ; 2 uses
  %.not300 = icmp eq ptr %i.at, null
  br i1 %.not300, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %.thread
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.au = phi ptr [ %i.ad, %bb.j ], [ %i.at, %bb.i ]
  %i.av = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.au) #23
  %i.aw = trunc i64 %i.av to i32
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.ar, i32 %i.aw)
  %spec.select307 = tail call i32 @llvm.smax.i32(i32 %spec.store.select, i32 10) ; 2 uses
  br i1 %i.ak, label %.thread326, label %bb.l

.thread326:                                       ; preds = %bb.h, %bb.k
  %.1225328 = phi i32 [ %spec.select307, %bb.k ], [ %i.am, %bb.h ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv442
  store i32 %.1225328, ptr %i.ax, align 4, !tbaa !10
  br label %bb.l

bb.l:                                             ; preds = %.thread326, %bb.k
  %.1225329 = phi i32 [ %.1225328, %.thread326 ], [ %spec.select307, %bb.k ] ; 2 uses
  %i.ay = load i32, ptr %i.af, align 8, !tbaa !24
  %.not301 = icmp eq i32 %i.ay, 0
  br i1 %.not301, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = load ptr, ptr %i.ag, align 8, !tbaa !23
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv442
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !13
  %i.bc = icmp eq i64 %indvars.iv442, %i.ai
  %i.bd = select i1 %i.bc, ptr @.str.107, ptr @.str.114
  %i.be = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.az, ptr noundef nonnull @.str.142, i32 noundef %.1225329, i32 noundef %.1225329, ptr noundef %i.bb, ptr noundef nonnull %i.bd) #22 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
end_hunk_1
begin_hunk_2_@appendText:bb.a
._crit_edge63:                                    ; preds = %._crit_edge63.loopexit.unr-lcssa, %bb.i, %.lr.ph62.epil.preheader, %bb.e
  %.0.lcssa = phi ptr [ %i.ae, %bb.e ], [ %.1.1, %._crit_edge63.loopexit.unr-lcssa ], [ %i.av, %bb.i ], [ %i.at, %.lr.ph62.epil.preheader ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1
  store i8 %2, ptr %.0.lcssa, align 1, !tbaa !19
  store i8 0, ptr %i.aw, align 1, !tbaa !19
  br label %bb.j

.thread56:                                        ; preds = %.thread
  %i.ax = sext i32 %i.e to i64
  %i.ay = getelementptr inbounds i8, ptr %i.ab, i64 %i.ax
  %sext = shl i64 %i.a, 32
  %i.az = ashr exact i64 %sext, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr nonnull align 1 %1, i64 %i.az, i1 false)
  %i.ba = getelementptr i8, ptr %i.ab, i64 %i.aa
  %i.bb = getelementptr i8, ptr %i.ba, i64 -1
  store i8 0, ptr %i.bb, align 1, !tbaa !19
  br label %bb.j

bb.j:                                             ; preds = %.thread, %._crit_edge63, %.thread56, %._crit_edge
  %.047 = phi ptr [ null, %._crit_edge ], [ %i.ab, %.thread56 ], [ %i.y, %._crit_edge63 ], [ null, %.thread ]
  ret ptr %.047
}

declare ptr @sqlite3_column_text(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @output_csv(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 6 uses
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 868
  %fputs39 = tail call i32 @fputs(ptr nonnull %i.d, ptr %i.b) ; 0 uses
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.f = load i8, ptr %1, align 1, !tbaa !19      ; 3 uses
  %.not44 = icmp eq i8 %i.f, 0
  br i1 %.not44, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #23
  %.fr = freeze i64 %i.g                          ; 2 uses
  %i.h = and i64 %.fr, 4294967295
  %i.i = icmp eq i64 %i.h, 1
  %sext = shl i64 %.fr, 32
  %i.j = ashr exact i64 %sext, 32
  br i1 %i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.e
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %bb.e ], [ 0, %.lr.ph ]
  %i.k = phi i8 [ %i.r, %bb.e ], [ %i.f, %.lr.ph ] ; 2 uses
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr @needCsvQuote, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !19
  %.not37.us = icmp eq i8 %i.n, 0
  br i1 %.not37.us, label %bb.d, label %.thread

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.o = load i8, ptr %i.e, align 8, !tbaa !19
  %i.p = icmp eq i8 %i.k, %i.o
  br i1 %i.p, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next50
  %i.r = load i8, ptr %i.q, align 1, !tbaa !19    ; 2 uses
  %.not.us = icmp eq i8 %i.r, 0
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !118

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %.lr.ph ]
  %i.s = phi i8 [ %i.aa, %bb.h ], [ %i.f, %.lr.ph ] ; 2 uses
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @needCsvQuote, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !19
  %.not37 = icmp eq i8 %i.v, 0
  br i1 %.not37, label %bb.f, label %.thread

bb.f:                                             ; preds = %.lr.ph.split
  %i.w = load i8, ptr %i.e, align 8, !tbaa !19
  %i.x = icmp eq i8 %i.s, %i.w
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %bcmp = tail call i32 @bcmp(ptr nonnull %1, ptr nonnull %i.e, i64 %i.j)
  %i.y = icmp eq i32 %bcmp, 0
  br i1 %i.y, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !19   ; 2 uses
  %.not = icmp eq i8 %i.aa, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !118

.thread:                                          ; preds = %bb.g, %.lr.ph.split, %.lr.ph.split.us, %bb.d, %bb.c
  %i.ab = tail call i32 @putc(i32 noundef 34, ptr noundef %i.b) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %.thread
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %bb.k ], [ 0, %.thread ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv51 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !19  ; 2 uses
  switch i8 %i.ad, label %bb.k [
    i8 0, label %bb.l
    i8 34, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call i32 @putc(i32 noundef 34, ptr noundef %i.b) ; 0 uses
  %.pre = load i8, ptr %i.ac, align 1, !tbaa !19
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.af = phi i8 [ %i.ad, %bb.i ], [ %.pre, %bb.j ]
  %i.ag = sext i8 %i.af to i32
  %i.ah = tail call i32 @putc(i32 noundef %i.ag, ptr noundef %i.b) ; 0 uses
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  br label %bb.i, !llvm.loop !119

bb.l:                                             ; preds = %bb.i
  %i.ai = tail call i32 @putc(i32 noundef 34, ptr noundef %i.b) ; 0 uses
  br label %bb.m

._crit_edge:                                      ; preds = %bb.h, %bb.e
  %fputs = tail call i32 @fputs(ptr nonnull %1, ptr %i.b) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge, %bb.b
  %.not40 = icmp eq i32 %2, 0
  br i1 %.not40, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %fputs41 = tail call i32 @fputs(ptr nonnull %i.ak, ptr %i.aj) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @getuid() local_unnamed_addr #2

declare ptr @getpwuid(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #17

declare i32 @sqlite3_complete(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @getrusage(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nounwind }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { cold nounwind }
attributes #26 = { cold noreturn nounwind }
attributes #27 = { cold }
attributes #28 = { noreturn nounwind }
attributes #29 = { nounwind willreturn memory(none) }
attributes #30 = { nounwind allocsize(1) }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{null}
!1 = distinct !{!1, !20}
!2 = distinct !{!2, !20}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"p1 _ZTS7sqlite3", !11, i64 0}
!15 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!16 = !{!"previous_mode_data", !9, i64 0, !9, i64 4, !9, i64 8, !8, i64 12}
!17 = !{!"callback_data", !14, i64 0, !9, i64 8, !9, i64 12, !15, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !12, i64 40, !8, i64 48, !8, i64 68, !8, i64 468, !8, i64 868, !16, i64 888, !8, i64 1300, !12, i64 5400}
!18 = !{!17, !9, i64 24}
!19 = !{!8, !8, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!17, !12, i64 5400}
!22 = !{!15, !15, i64 0}
!23 = !{!17, !15, i64 16}
!24 = !{!17, !9, i64 32}
!25 = !{!17, !9, i64 8}
!26 = !{!17, !14, i64 0}
!27 = !{!17, !12, i64 40}
!28 = !{!14, !14, i64 0}
!29 = !{!"p1 short", !11, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"short", !8, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"p1 int", !11, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!17, !9, i64 12}
!36 = !{!17, !9, i64 28}
!37 = !{!"p1 _ZTS12sqlite3_stmt", !11, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = distinct !{!41, !20}
!42 = distinct !{!42, !20}
!43 = !{!"passwd", !12, i64 0, !12, i64 8, !9, i64 16, !9, i64 20, !12, i64 24, !12, i64 32, !12, i64 40}
!44 = !{!43, !12, i64 32}
!45 = distinct !{!45, !20}
!46 = distinct !{!46, !20}
!47 = distinct !{!47, !20}
!48 = distinct !{!48, !20}
!49 = distinct !{!49, !20}
!50 = distinct !{!50, !20}
!51 = distinct !{!51, !20, !39, !40}
!52 = distinct !{!52, !20, !39, !40}
!53 = distinct !{!53, !20, !40, !39}
!54 = distinct !{!54, !20}
!55 = distinct !{!55, !20}
!56 = distinct !{!56, !20}
!57 = distinct !{!57, !20}
!58 = distinct !{!58, !20}
!59 = distinct !{!59, !20}
!60 = distinct !{!60, !20}
!61 = distinct !{!61, !20}
!62 = !{!17, !9, i64 888}
!63 = !{!17, !9, i64 892}
!64 = !{!17, !9, i64 896}
!65 = !{!"branch_weights", i32 4, i32 12}
!66 = !{!"any p2 pointer", !11, i64 0}
!67 = !{!"p2 omnipotent char", !66, i64 0}
!68 = !{!67, !67, i64 0}
!69 = distinct !{!69, !20}
!70 = distinct !{!70, !20}
!71 = distinct !{!71, !20, !91}
!72 = distinct !{!72, !20}
!73 = distinct !{!73, !20, !91}
!74 = distinct !{!74, !20, !91}
!75 = distinct !{!75, !20}
!76 = distinct !{!76, !20}
!77 = distinct !{!77, !20}
!78 = distinct !{!78, !20}
!79 = distinct !{!79, !20}
!80 = distinct !{!80, !20}
!81 = distinct !{!81, !20}
!82 = distinct !{!82, !20}
!83 = distinct !{!83, !20}
!84 = distinct !{!84, !20}
!85 = distinct !{!85, !20}
!86 = distinct !{!86, !20}
!87 = distinct !{!87, !20}
!88 = distinct !{!88, !20}
!89 = distinct !{!89, !20}
!90 = distinct !{!90, !20}
!91 = !{!"llvm.loop.peeled.count", i32 1}
!92 = distinct !{!92, !20}
!93 = distinct !{!93, !20}
!94 = distinct !{!94, !20}
!95 = distinct !{!95, !20}
!96 = distinct !{!96, !20}
!97 = distinct !{!97, !20}
!98 = distinct !{!98, !20}
!99 = !{!"long", !8, i64 0}
!100 = !{!99, !99, i64 0}
!101 = distinct !{!101, !20}
!102 = distinct !{!102, !20}
!103 = distinct !{!103, !20}
!104 = distinct !{!104, !20}
!105 = distinct !{!105, !20}
!106 = distinct !{!106, !20, !39, !40}
!107 = distinct !{!107, !20, !40, !39}
!108 = distinct !{!108, !20, !39, !40}
!109 = distinct !{!109, !20, !40, !39}
!110 = distinct !{!110, !20, !39, !40}
!111 = distinct !{!111, !20, !40, !39}
!112 = distinct !{!112, !20, !39, !40}
!113 = distinct !{!113, !20, !40, !39}
!114 = distinct !{!114, !20, !39, !40}
!115 = distinct !{!115, !20, !40, !39}
!116 = distinct !{!116, !20, !39, !40}
!117 = distinct !{!117, !20, !40, !39}
!118 = distinct !{!118, !20}
!119 = distinct !{!119, !20}
end_hunk_2
