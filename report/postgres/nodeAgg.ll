inline.NumInlined: 148
inline.NumDeleted: 58
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@ExecAgg:bb.a
._crit_edge.i13:                                  ; preds = %._crit_edge.loopexit.i, %bb.j
  %.pre.i = phi i32 [ %.pre.pre.i, %._crit_edge.loopexit.i ], [ %i.cr, %bb.j ] ; 4 uses
  %i.cz = load i8, ptr %i.bx, align 8, !range !6, !noundef !7
  %i.da = trunc nuw i8 %i.cz to i1
  %i.db = add nsw i32 %.0129189.i, -1             ; 4 uses
  %.not.i14 = icmp sge i32 %.pre.i, %i.db
  %or.cond234.not.i = select i1 %i.da, i1 %.not.i14, i1 false
  br i1 %or.cond234.not.i, label %bb.k, label %bb.r

bb.k:                                             ; preds = %._crit_edge.i13
  %i.dc = load i32, ptr %i.by, align 4            ; 2 uses
  %i.dd = load i32, ptr %i.bz, align 8
  %i.de = add i32 %i.dd, -1
  %i.df = icmp slt i32 %i.dc, %i.de
  br i1 %i.df, label %.thread.i, label %bb.l

.thread.i:                                        ; preds = %bb.k
  %i.dg = add nsw i32 %i.dc, 1
  call fastcc void @initialize_phase(ptr noundef nonnull %0, i32 noundef %i.dg)
  store i8 0, ptr %i.bx, align 8
  store i32 -1, ptr %i.bv, align 4
  %i.dh = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dj = load i32, ptr %i.di, align 4
  %spec.select155.i = call i32 @llvm.smax.i32(i32 %i.dj, i32 1) ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = add nsw i32 %spec.select155.i, -1
  br label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.dn = load i32, ptr %i.cj, align 8
  %i.do = icmp eq i32 %i.dn, 3
  br i1 %i.do, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8            ; 2 uses
  %.not.i.i27 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i27, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @tuplesort_end(ptr noundef nonnull %i.dq) #11
  store ptr null, ptr %i.dp, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8            ; 2 uses
  %.not31.i.i = icmp eq ptr %i.ds, null
  br i1 %.not31.i.i, label %initialize_phase.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @tuplesort_end(ptr noundef nonnull %i.ds) #11
  store ptr null, ptr %i.dr, align 8
  br label %initialize_phase.exit.i

initialize_phase.exit.i:                          ; preds = %bb.p, %bb.o
  store i32 0, ptr %i.by, align 4
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.du = load ptr, ptr %i.dt, align 8
  store ptr %i.du, ptr %i.h, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 432
  store i8 1, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.dx = load ptr, ptr %i.dw, align 8            ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  call void @tuplehash_start_iterate(ptr noundef %i.dz, ptr noundef nonnull %i.ea) #11
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.sink.i.i28 = load ptr, ptr %i.eb, align 8
  store ptr %.sink.i.i28, ptr %i.cg, align 8
  store i32 0, ptr %i.ch, align 8
  %i.ec = call fastcc ptr @agg_retrieve_hash_table(ptr noundef nonnull %0)
  br label %agg_retrieve_direct.exit

bb.q:                                             ; preds = %bb.l
  store i8 1, ptr %i.e, align 1
  br label %agg_retrieve_direct.exit.thread

bb.r:                                             ; preds = %._crit_edge.i13
  %i.ed = icmp sgt i32 %.pre.i, -1
  %i.ee = icmp slt i32 %.pre.i, %i.db
  %or.cond157.i = select i1 %i.ed, i1 %i.ee, i1 false
  br i1 %or.cond157.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ef = load ptr, ptr %i.h, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = zext nneg i32 %.pre.i to i64
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.el = load i32, ptr %i.ek, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.thread.i
  %i.em = phi i32 [ %i.db, %bb.s ], [ %i.db, %bb.r ], [ %i.dm, %.thread.i ]
  %.1230.i = phi i32 [ %.0127.i, %bb.s ], [ %.0127.i, %bb.r ], [ %spec.select155.i, %.thread.i ] ; 2 uses
  %.1130227.i = phi i32 [ %.0129189.i, %bb.s ], [ %.0129189.i, %bb.r ], [ %spec.select155.i, %.thread.i ] ; 3 uses
  %.1132224.i = phi ptr [ %.0131188.i, %bb.s ], [ %.0131188.i, %bb.r ], [ %i.dl, %.thread.i ] ; 3 uses
  %.0128.i = phi i32 [ %i.el, %bb.s ], [ 0, %bb.r ], [ 0, %.thread.i ] ; 2 uses
  %i.en = load ptr, ptr %i.ca, align 8
  store ptr %i.en, ptr %i.cb, align 8
  %i.eo = load i8, ptr %i.bx, align 8, !range !6, !noundef !7
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eq = getelementptr inbounds nuw i8, ptr %.1132224.i, i64 104 ; 3 uses
  %i.er = load i32, ptr %i.eq, align 8
  %.not144.i = icmp eq i32 %i.er, 0
  br i1 %.not144.i, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.es = load i32, ptr %i.bv, align 4            ; 2 uses
  %.not145.i = icmp eq i32 %i.es, -1
  br i1 %.not145.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.et = icmp slt i32 %i.es, %i.em
  %i.eu = icmp sgt i32 %.0128.i, 0
  %or.cond.i = select i1 %i.et, i1 %i.eu, i1 false
  br i1 %or.cond.i, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.ev = load ptr, ptr %i.h, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = zext nneg i32 %.0128.i to i64
  %i.ez = getelementptr [8 x i8], ptr %i.ex, i64 %i.ey
  %i.fa = getelementptr i8, ptr %i.ez, i64 -8
  %i.fb = load ptr, ptr %i.fa, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %ExecQualAndReset.exit.thread.i, label %ExecQualAndReset.exit.i

ExecQualAndReset.exit.thread.i:                   ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.fd = load ptr, ptr %i.cc, align 8
  call void @MemoryContextReset(ptr noundef %i.fd) #11
  br label %bb.z

ExecQualAndReset.exit.i:                          ; preds = %bb.x
  %i.fe = load ptr, ptr %i.cc, align 8
  %i.ff = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.fe, ptr @CurrentMemoryContext, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = call i64 %i.fh(ptr noundef nonnull %i.fb, ptr noundef nonnull %i.bm, ptr noundef nonnull %i.c) #11, !inline_history !31
  store ptr %i.ff, ptr @CurrentMemoryContext, align 8
  %.not175.i = icmp eq i64 %i.fi, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.fj = load ptr, ptr %i.cc, align 8
  call void @MemoryContextReset(ptr noundef %i.fj) #11
  br i1 %.not175.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %ExecQualAndReset.exit.i, %bb.t
  %i.fk = load i32, ptr %i.bv, align 4
  %i.fl = add i32 %i.fk, 1                        ; 2 uses
  store i32 %i.fl, ptr %i.bv, align 4
  %.pre198.i = load ptr, ptr %i.ca, align 8
  br label %bb.bk

bb.z:                                             ; preds = %ExecQualAndReset.exit.i, %ExecQualAndReset.exit.thread.i, %bb.w, %bb.v, %bb.u
  store i32 0, ptr %i.bv, align 4
  %i.fm = load ptr, ptr %i.cd, align 8
  %i.fn = icmp eq ptr %i.fm, null
  br i1 %i.fn, label %bb.aa, label %bb.aj

bb.aa:                                            ; preds = %bb.z
  %i.fo = call fastcc ptr @fetch_input_tuple(ptr noundef nonnull %0) ; 4 uses
  %i.fp = icmp eq ptr %i.fo, null
  br i1 %i.fp, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %i.fr = load i16, ptr %i.fq, align 4
  %i.fs = and i16 %i.fr, 2
  %.not146.i = icmp eq i16 %i.fs, 0
  br i1 %.not146.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 88
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = call ptr %i.fw(ptr noundef nonnull %i.fo) #11, !inline_history !32
  store ptr %i.fx, ptr %i.cd, align 8
  br label %bb.aj

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  br i1 %i.bi, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  store i8 1, ptr %i.bx, align 8
  %i.fy = load ptr, ptr %i.h, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %.pre196.i = load i32, ptr %i.bv, align 4
  br label %bb.af

bb.af:                                            ; preds = %bb.ag, %bb.ae
  %1 = phi i32 [ %3, %bb.ag ], [ %.pre196.i, %bb.ae ] ; 3 uses
  %i.ga = load ptr, ptr %i.fz, align 8
  %2 = sext i32 %1 to i64
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %2
  %i.gc = load i32, ptr %i.gb, align 4
  %i.gd = icmp sgt i32 %i.gc, 0
  br i1 %i.gd, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %3 = add i32 %1, 1                              ; 4 uses
  store i32 %3, ptr %i.bv, align 4
  %.not148.i = icmp slt i32 %3, %.1130227.i
  br i1 %.not148.i, label %bb.af, label %bb.ah, !llvm.loop !33

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %4 = phi i32 [ %3, %bb.ag ], [ %1, %bb.af ]
  %.not149.i = icmp slt i32 %4, %.1130227.i
  br i1 %.not149.i, label %bb.aj, label %.backedge.i

.backedge.i:                                      ; preds = %bb.bs, %bb.br, %bb.ah
  %i.ge = load i8, ptr %i.e, align 1, !range !6, !noundef !7
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %agg_retrieve_direct.exit.thread, label %bb.j, !llvm.loop !34

bb.ai:                                            ; preds = %bb.ad
  store i8 1, ptr %i.e, align 1
  %i.gg = load i32, ptr %i.eq, align 8
  %.not147.i = icmp eq i32 %i.gg, 0
  br i1 %.not147.i, label %bb.aj, label %agg_retrieve_direct.exit.thread

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ac, %bb.z
  %i.gh = load i32, ptr %i.ce, align 4            ; 2 uses
  %i.gi = load ptr, ptr %i.cf, align 8
  %i.gj = icmp sgt i32 %i.gh, 0
  %wide.trip.count41.i.i = zext i32 %.1230.i to i64 ; 3 uses
  br i1 %i.gj, label %.lr.ph.us.preheader.i.i, label %.split.preheader.i.i

.split.preheader.i.i:                             ; preds = %bb.aj
  %.pre.i.i15 = load ptr, ptr %i.bw, align 8      ; 5 uses
  %xtraiter = and i64 %wide.trip.count41.i.i, 3   ; 3 uses
  %i.gk = add i32 %.1230.i, -1
  %i.gl = icmp ult i32 %i.gk, 3
  br i1 %i.gl, label %.split.i.i.epil.preheader, label %.split.preheader.i.i.new

.split.preheader.i.i.new:                         ; preds = %.split.preheader.i.i
  %unroll_iter = and i64 %wide.trip.count41.i.i, 4294967292
  br label %.split.i.i

.lr.ph.us.preheader.i.i:                          ; preds = %bb.aj
  %wide.trip.count36.i.i = zext nneg i32 %i.gh to i64
  br label %.lr.ph.us.i.i

.lr.ph.us.i.i:                                    ; preds = %._crit_edge.us.i.i, %.lr.ph.us.preheader.i.i
  %indvars.iv38.i.i = phi i64 [ 0, %.lr.ph.us.preheader.i.i ], [ %indvars.iv.next39.i.i, %._crit_edge.us.i.i ] ; 4 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv38.i.i
  %i.gn = load ptr, ptr %i.gm, align 8
  %i.go = load ptr, ptr %i.bw, align 8
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv38.i.i
  %.sink.i.us.i.i = load ptr, ptr %i.gp, align 8
  store ptr %.sink.i.us.i.i, ptr %i.cg, align 8
  %i.gq = trunc nuw nsw i64 %indvars.iv38.i.i to i32
  store i32 %i.gq, ptr %i.ch, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %initialize_aggregate.exit.us.i.i, %.lr.ph.us.i.i
  %indvars.iv33.i.i = phi i64 [ 0, %.lr.ph.us.i.i ], [ %indvars.iv.next34.i.i, %initialize_aggregate.exit.us.i.i ] ; 3 uses
  %i.gr = getelementptr inbounds nuw [376 x i8], ptr %i.gi, i64 %indvars.iv33.i.i ; 17 uses
  %i.gs = getelementptr inbounds nuw [16 x i8], ptr %i.gn, i64 %indvars.iv33.i.i ; 4 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 9
  %i.gu = load i8, ptr %i.gt, align 1, !range !6, !noundef !7
  %i.gv = trunc nuw i8 %i.gu to i1
  br i1 %i.gv, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gr, i64 344 ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8
  %i.gy = load i32, ptr %i.ch, align 8
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.gx, i64 %i.gz
  %i.hb = load ptr, ptr %i.ha, align 8            ; 2 uses
  %.not.i.us.i.i = icmp eq ptr %i.hb, null
  br i1 %.not.i.us.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @tuplesort_end(ptr noundef nonnull %i.hb) #11
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gr, i64 12
  %i.hd = load i32, ptr %i.hc, align 4
  %i.he = icmp eq i32 %i.hd, 1
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gr, i64 320
  %i.hg = load ptr, ptr %i.hf, align 8            ; 3 uses
  br i1 %i.he, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gr, i64 188
  %i.hi = load i32, ptr %i.hh, align 4
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gr, i64 200
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gr, i64 208
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gr, i64 216
  %i.ho = load ptr, ptr %i.hn, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gr, i64 224
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = load i32, ptr @work_mem, align 4
  %i.hs = call ptr @tuplesort_begin_heap(ptr noundef %i.hg, i32 noundef %i.hi, ptr noundef %i.hk, ptr noundef %i.hm, ptr noundef %i.ho, ptr noundef %i.hq, i32 noundef %i.hr, ptr noundef null, i32 noundef 0) #11
  br label %.sink.split.i.us.i.i

bb.ap:                                            ; preds = %bb.an
  %i.ht = load i32, ptr %i.hg, align 8
  %i.hu = sext i32 %i.ht to i64
  %i.hv = shl nsw i64 %i.hu, 3
  %i.hw = getelementptr i8, ptr %i.hg, i64 %i.hv
  %i.hx = getelementptr i8, ptr %i.hw, i64 100
  %i.hy = load i32, ptr %i.hx, align 4
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gr, i64 208
  %i.ia = load ptr, ptr %i.hz, align 8
  %i.ib = load i32, ptr %i.ia, align 4
  %i.ic = getelementptr inbounds nuw i8, ptr %i.gr, i64 216
  %i.id = load ptr, ptr %i.ic, align 8
  %i.ie = load i32, ptr %i.id, align 4
  %i.if = getelementptr inbounds nuw i8, ptr %i.gr, i64 224
  %i.ig = load ptr, ptr %i.if, align 8
  %i.ih = load i8, ptr %i.ig, align 1, !range !6, !noundef !7
  %i.ii = trunc nuw i8 %i.ih to i1
  %i.ij = load i32, ptr @work_mem, align 4
  %i.ik = call ptr @tuplesort_begin_datum(i32 noundef %i.hy, i32 noundef %i.ib, i32 noundef %i.ie, i1 noundef zeroext %i.ii, i32 noundef %i.ij, ptr noundef null, i32 noundef 0) #11
  br label %.sink.split.i.us.i.i

.sink.split.i.us.i.i:                             ; preds = %bb.ap, %bb.ao
  %.sink.i26.us.i.i = phi ptr [ %i.ik, %bb.ap ], [ %i.hs, %bb.ao ]
  %i.il = load ptr, ptr %i.gw, align 8
  %i.im = load i32, ptr %i.ch, align 8
  %i.in = sext i32 %i.im to i64
  %i.io = getelementptr inbounds [8 x i8], ptr %i.il, i64 %i.in
  store ptr %.sink.i26.us.i.i, ptr %i.io, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %.sink.split.i.us.i.i, %bb.ak
  %i.ip = getelementptr inbounds nuw i8, ptr %i.gr, i64 296 ; 2 uses
  %i.iq = load i8, ptr %i.ip, align 8, !range !6, !noundef !7
  %i.ir = trunc nuw i8 %i.iq to i1
  br i1 %i.ir, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.is = load ptr, ptr %i.cg, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 40
  %i.iu = load ptr, ptr %i.it, align 8
  %i.iv = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.iu, ptr @CurrentMemoryContext, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.gr, i64 288
  %i.ix = load i64, ptr %i.iw, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.gr, i64 303
  %i.iz = load i8, ptr %i.iy, align 1, !range !6, !noundef !7
  %i.ja = trunc nuw i8 %i.iz to i1
  %i.jb = getelementptr inbounds nuw i8, ptr %i.gr, i64 300
  %i.jc = load i16, ptr %i.jb, align 4
  %i.jd = sext i16 %i.jc to i32
  %i.je = call i64 @datumCopy(i64 noundef %i.ix, i1 noundef zeroext %i.ja, i32 noundef %i.jd) #11
  store i64 %i.je, ptr %i.gs, align 8
  store ptr %i.iv, ptr @CurrentMemoryContext, align 8
  br label %initialize_aggregate.exit.us.i.i

bb.as:                                            ; preds = %bb.aq
  %i.jf = getelementptr inbounds nuw i8, ptr %i.gr, i64 288
  %i.jg = load i64, ptr %i.jf, align 8
  store i64 %i.jg, ptr %i.gs, align 8
  br label %initialize_aggregate.exit.us.i.i

initialize_aggregate.exit.us.i.i:                 ; preds = %bb.as, %bb.ar
  %i.jh = load i8, ptr %i.ip, align 8, !range !6, !noundef !7 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  store i8 %i.jh, ptr %i.ji, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.gs, i64 9
  store i8 %i.jh, ptr %i.jj, align 1
  %indvars.iv.next34.i.i = add nuw nsw i64 %indvars.iv33.i.i, 1 ; 2 uses
  %exitcond37.not.i.i = icmp eq i64 %indvars.iv.next34.i.i, %wide.trip.count36.i.i
  br i1 %exitcond37.not.i.i, label %._crit_edge.us.i.i, label %bb.ak, !llvm.loop !35

._crit_edge.us.i.i:                               ; preds = %initialize_aggregate.exit.us.i.i
  %indvars.iv.next39.i.i = add nuw nsw i64 %indvars.iv38.i.i, 1 ; 2 uses
  %exitcond42.not.i.i = icmp eq i64 %indvars.iv.next39.i.i, %wide.trip.count41.i.i
  br i1 %exitcond42.not.i.i, label %initialize_aggregates.exit.i, label %.lr.ph.us.i.i, !llvm.loop !36

.split.i.i:                                       ; preds = %.split.i.i, %.split.preheader.i.i.new
  %indvars.iv.i.i16 = phi i64 [ 0, %.split.preheader.i.i.new ], [ %indvars.iv.next.i.i17.3, %.split.i.i ] ; 6 uses
  %niter = phi i64 [ 0, %.split.preheader.i.i.new ], [ %niter.next.3, %.split.i.i ]
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i15, i64 %indvars.iv.i.i16
  %.sink.i.i.i = load ptr, ptr %i.jk, align 8
  store ptr %.sink.i.i.i, ptr %i.cg, align 8
  %i.jl = trunc nuw nsw i64 %indvars.iv.i.i16 to i32
  store i32 %i.jl, ptr %i.ch, align 8
  %indvars.iv.next.i.i17 = or disjoint i64 %indvars.iv.i.i16, 1 ; 2 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i15, i64 %indvars.iv.next.i.i17
  %.sink.i.i.i.1 = load ptr, ptr %i.jm, align 8
  store ptr %.sink.i.i.i.1, ptr %i.cg, align 8
  %i.jn = trunc nuw nsw i64 %indvars.iv.next.i.i17 to i32
  store i32 %i.jn, ptr %i.ch, align 8
  %indvars.iv.next.i.i17.1 = or disjoint i64 %indvars.iv.i.i16, 2 ; 2 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i15, i64 %indvars.iv.next.i.i17.1
  %.sink.i.i.i.2 = load ptr, ptr %i.jo, align 8
  store ptr %.sink.i.i.i.2, ptr %i.cg, align 8
  %i.jp = trunc nuw nsw i64 %indvars.iv.next.i.i17.1 to i32
  store i32 %i.jp, ptr %i.ch, align 8
  %indvars.iv.next.i.i17.2 = or disjoint i64 %indvars.iv.i.i16, 3 ; 2 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i15, i64 %indvars.iv.next.i.i17.2
  %.sink.i.i.i.3 = load ptr, ptr %i.jq, align 8
  store ptr %.sink.i.i.i.3, ptr %i.cg, align 8
  %i.jr = trunc nuw nsw i64 %indvars.iv.next.i.i17.2 to i32
  store i32 %i.jr, ptr %i.ch, align 8
  %indvars.iv.next.i.i17.3 = add nuw nsw i64 %indvars.iv.i.i16, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %initialize_aggregates.exit.i.loopexit74.unr-lcssa, label %.split.i.i, !llvm.loop !36

initialize_aggregates.exit.i.loopexit74.unr-lcssa: ; preds = %.split.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %initialize_aggregates.exit.i, label %.split.i.i.epil.preheader
end_hunk_0
