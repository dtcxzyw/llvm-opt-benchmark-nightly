inline.NumInlined: 110
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@build_grammar:bb.a
  store i32 1, ptr %i.au, align 8, !tbaa !46
  store ptr %i.bq, ptr %i.az, align 8, !tbaa !51
  br label %bb.o

.loopexit.i:                                      ; preds = %.thread.i90.i, %.loopexit105..loopexit_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre148.i, %.loopexit105..loopexit_crit_edge.i ], [ %i.bo, %.thread.i90.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.bx = load ptr, ptr %i.az, align 8, !tbaa !51
  %i.by = call ptr @strncpy(ptr noundef nonnull %i.a, ptr noundef %i.bx, i64 noundef %.pre-phi.i) #25 ; 0 uses
  %i.bz = call i32 @llvm.smin.i32(i32 %i.bb, i32 255)
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds i8, ptr %i.a, i64 %i.ca
  store i8 0, ptr %i.cb, align 1, !tbaa !51
  call void (ptr, ...) @d_fail(ptr noundef nonnull @.str.66, ptr noundef nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.pr.i = load i32, ptr %i.au, align 8, !tbaa !46
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.i, %bb.g
  %i.cc = phi i32 [ %i.ax, %bb.g ], [ %.pr.i, %.loopexit.i ]
  %i.cd = icmp eq i32 %i.cc, 1
  br i1 %i.cd, label %._crit_edge147.i, label %bb.o

._crit_edge147.i:                                 ; preds = %bb.n
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !51
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge147.i, %bb.n, %.thread.i, %.thread104.i
  %.164.i = phi ptr [ %.063114.i, %.thread104.i ], [ %.063114.i, %bb.n ], [ %.pre.i, %._crit_edge147.i ], [ %i.bq, %.thread.i ] ; 4 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ce = load i32, ptr %i.am, align 8, !tbaa !66 ; 2 uses
  %i.cf = zext i32 %i.ce to i64
  %i.cg = icmp samesign ult i64 %indvars.iv.next.i, %i.cf
  br i1 %i.cg, label %bb.g, label %._crit_edge.i, !llvm.loop !196

._crit_edge.i:                                    ; preds = %bb.o
  %i.ch = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !45
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store i32 %i.ce, ptr %i.cj, align 4, !tbaa !194
  %i.ck = load i32, ptr %i.h, align 8, !tbaa !80
  %i.cl = icmp ne i32 %i.ck, 0
  %i.cm = icmp ne ptr %.164.i, null
  %or.cond.i = select i1 %i.cl, i1 %i.cm, i1 false
  br i1 %or.cond.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %._crit_edge.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aj, i64 28
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !119 ; 2 uses
  %.not72.i = icmp eq i32 %i.co, 0
  br i1 %.not72.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cp = getelementptr inbounds nuw i8, ptr %.164.i, i64 12
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !197
  %i.cq = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !118
  %i.cs = getelementptr inbounds nuw i8, ptr %.164.i, i64 16
  store i32 %i.cr, ptr %i.cs, align 8, !tbaa !198
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge.i, %._crit_edge.thread.i
  %indvars.iv.next139.i = add nuw nsw i64 %indvars.iv138.i, 1 ; 2 uses
  %i.ct = load i32, ptr %i.ae, align 8, !tbaa !106
  %i.cu = zext i32 %i.ct to i64
  %i.cv = icmp samesign ult i64 %indvars.iv.next139.i, %i.cu
  br i1 %i.cv, label %bb.f, label %._crit_edge120.i, !llvm.loop !199

._crit_edge120.i:                                 ; preds = %bb.r, %bb.e
  %indvars.iv.next142.i = add nuw nsw i64 %indvars.iv141.i, 1 ; 2 uses
  %i.cw = load i32, ptr %i.c, align 8, !tbaa !8   ; 3 uses
  %i.cx = zext i32 %i.cw to i64
  %i.cy = icmp samesign ult i64 %indvars.iv.next142.i, %i.cx
  br i1 %i.cy, label %.lr.ph.i.i, label %.preheader.i, !llvm.loop !200

bb.s:                                             ; preds = %bb.s, %.lr.ph124.i.new
  %indvars.iv144.i = phi i64 [ 0, %.lr.ph124.i.new ], [ %indvars.iv.next145.i.7, %bb.s ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph124.i.new ], [ %niter.next.7, %bb.s ]
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv144.i
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !64
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.dc = trunc nuw nsw i64 %indvars.iv144.i to i32
  store i32 %i.dc, ptr %i.db, align 4, !tbaa !201
  %indvars.iv.next145.i = or disjoint i64 %indvars.iv144.i, 1 ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next145.i
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !64
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.dg = trunc nuw nsw i64 %indvars.iv.next145.i to i32
  store i32 %i.dg, ptr %i.df, align 4, !tbaa !201
  %indvars.iv.next145.i.1 = or disjoint i64 %indvars.iv144.i, 2 ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next145.i.1
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.dk = trunc nuw nsw i64 %indvars.iv.next145.i.1 to i32
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !201
  %indvars.iv.next145.i.2 = or disjoint i64 %indvars.iv144.i, 3 ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next145.i.2
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.do = trunc nuw nsw i64 %indvars.iv.next145.i.2 to i32
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !201
  %indvars.iv.next145.i.3 = or disjoint i64 %indvars.iv144.i, 4 ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next145.i.3
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.ds = trunc nuw nsw i64 %indvars.iv.next145.i.3 to i32
  store i32 %i.ds, ptr %i.dr, align 4, !tbaa !201
  %indvars.iv.next145.i.4 = or disjoint i64 %indvars.iv144.i, 5 ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next145.i.4
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %i.dw = trunc nuw nsw i64 %indvars.iv.next145.i.4 to i32
  store i32 %i.dw, ptr %i.dv, align 4, !tbaa !201
  %indvars.iv.next145.i.5 = or disjoint i64 %indvars.iv144.i, 6 ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next145.i.5
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.ea = trunc nuw nsw i64 %indvars.iv.next145.i.5 to i32
  store i32 %i.ea, ptr %i.dz, align 4, !tbaa !201
  %indvars.iv.next145.i.6 = or disjoint i64 %indvars.iv144.i, 7 ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next145.i.6
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.ee = trunc nuw nsw i64 %indvars.iv.next145.i.6 to i32
  store i32 %i.ee, ptr %i.ed, align 4, !tbaa !201
  %indvars.iv.next145.i.7 = add nuw nsw i64 %indvars.iv144.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge125.i.loopexit.unr-lcssa, label %bb.s, !llvm.loop !202

._crit_edge125.i.loopexit.unr-lcssa:              ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge125.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge125.i.loopexit.unr-lcssa, %.lr.ph124.i
  %indvars.iv144.i.epil.init = phi i64 [ 0, %.lr.ph124.i ], [ %indvars.iv.next145.i.7, %._crit_edge125.i.loopexit.unr-lcssa ]
  %lcmp.mod257 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod257)
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.epil.preheader
  %indvars.iv144.i.epil = phi i64 [ %indvars.iv144.i.epil.init, %.epil.preheader ], [ %indvars.iv.next145.i.epil, %bb.t ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.t ]
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv144.i.epil
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %i.ei = trunc nuw nsw i64 %indvars.iv144.i.epil to i32
  store i32 %i.ei, ptr %i.eh, align 4, !tbaa !201
  %indvars.iv.next145.i.epil = add nuw nsw i64 %indvars.iv144.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge125.i, label %bb.t, !llvm.loop !203

._crit_edge125.i:                                 ; preds = %._crit_edge125.i.loopexit.unr-lcssa, %bb.t, %.preheader.i
  %.not.i94.i = icmp eq i32 %i.i, 0
  br i1 %.not.i94.i, label %convert_regex_productions.exit, label %.preheader51.lr.ph.i.i

.preheader51.lr.ph.i.i:                           ; preds = %._crit_edge125.i
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !28 ; 2 uses
  %wide.trip.count75.i.i = zext i32 %i.i to i64   ; 2 uses
  br label %.preheader51.i.i

.preheader51.i.i:                                 ; preds = %.loopexit52.i.i, %.preheader51.lr.ph.i.i
  %indvars.iv72.i.i = phi i64 [ 0, %.preheader51.lr.ph.i.i ], [ %indvars.iv.next73.i.i, %.loopexit52.i.i ] ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv72.i.i
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !29 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !106 ; 2 uses
  %.not67.i.i = icmp eq i32 %i.eo, 0
  br i1 %.not67.i.i, label %.loopexit52.i.i, label %.lr.ph.i95.i

.lr.ph.i95.i:                                     ; preds = %.preheader51.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !105
  %wide.trip.count.i96.i = zext i32 %i.eo to i64
  br label %bb.z

.preheader48.us.i.i:                              ; preds = %.loopexit52.i.i, %.preheader48.us.i.i.backedge
  %indvars.iv82.i.i = phi i64 [ %indvars.iv82.i.i.be, %.preheader48.us.i.i.backedge ], [ 0, %.loopexit52.i.i ] ; 2 uses
  %.14063.us.i.i = phi i32 [ %.14063.us.i.i.be, %.preheader48.us.i.i.backedge ], [ 0, %.loopexit52.i.i ] ; 4 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv82.i.i
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !29 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 64 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !205
  %.not43.us.i.i = icmp eq ptr %i.eu, null
  br i1 %.not43.us.i.i, label %bb.u, label %.loopexit.us.i.i

bb.u:                                             ; preds = %.preheader48.us.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !106
  %.not44.us.i.i = icmp eq i32 %i.ew, 0
  br i1 %.not44.us.i.i, label %.loopexit.us.i.i, label %.preheader.us.i.i

bb.v:                                             ; preds = %bb.x
  %indvars.iv.next78.i.i = add nuw nsw i64 %indvars.iv77.i.i, 1 ; 2 uses
  %exitcond81.not.i.i = icmp eq i64 %indvars.iv.next78.i.i, %wide.trip.count80.i.i
  br i1 %exitcond81.not.i.i, label %._crit_edge.us.i.i, label %bb.w, !llvm.loop !206

._crit_edge.us.i.i:                               ; preds = %bb.v, %.preheader.us.i.i
  store ptr %i.fg, ptr %i.et, align 8, !tbaa !205
  br label %.loopexit.us.i.i

bb.w:                                             ; preds = %.lr.ph61.us.i.i, %bb.v
  %indvars.iv77.i.i = phi i64 [ 0, %.lr.ph61.us.i.i ], [ %indvars.iv.next78.i.i, %bb.v ] ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %indvars.iv77.i.i
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !67 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !46
  %.not45.us.i.i = icmp eq i32 %i.ez, 0
  br i1 %.not45.us.i.i, label %bb.x, label %.loopexit.us.i.i

bb.x:                                             ; preds = %bb.w
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !51
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 64
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !205
  %.not46.us.i.i = icmp eq ptr %i.fd, null
  br i1 %.not46.us.i.i, label %.loopexit.us.i.i, label %bb.v

.loopexit.us.i.i:                                 ; preds = %bb.x, %bb.w, %._crit_edge.us.i.i, %bb.u, %.preheader48.us.i.i
  %.2.us.i.i = phi i32 [ %.14063.us.i.i, %.preheader48.us.i.i ], [ 1, %._crit_edge.us.i.i ], [ %.14063.us.i.i, %bb.u ], [ %.14063.us.i.i, %bb.w ], [ %.14063.us.i.i, %bb.x ] ; 2 uses
  %indvars.iv.next83.i.i = add nuw nsw i64 %indvars.iv82.i.i, 1 ; 2 uses
  %exitcond86.not.i.i = icmp eq i64 %indvars.iv.next83.i.i, %wide.trip.count75.i.i
  br i1 %exitcond86.not.i.i, label %..loopexit49_crit_edge.us.i.i, label %.preheader48.us.i.i.backedge

.preheader48.us.i.i.backedge:                     ; preds = %.loopexit.us.i.i, %..loopexit49_crit_edge.us.i.i
  %indvars.iv82.i.i.be = phi i64 [ %indvars.iv.next83.i.i, %.loopexit.us.i.i ], [ 0, %..loopexit49_crit_edge.us.i.i ]
  %.14063.us.i.i.be = phi i32 [ %.2.us.i.i, %.loopexit.us.i.i ], [ 0, %..loopexit49_crit_edge.us.i.i ]
  br label %.preheader48.us.i.i, !llvm.loop !207

.preheader.us.i.i:                                ; preds = %bb.u
  %i.fe = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !105
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !107 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !66 ; 2 uses
  %.not69.i.i = icmp eq i32 %i.fi, 0
  br i1 %.not69.i.i, label %._crit_edge.us.i.i, label %.lr.ph61.us.i.i

.lr.ph61.us.i.i:                                  ; preds = %.preheader.us.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !65
  %wide.trip.count80.i.i = zext i32 %i.fi to i64
  br label %bb.w

..loopexit49_crit_edge.us.i.i:                    ; preds = %.loopexit.us.i.i
  %.not.us.i.i = icmp eq i32 %.2.us.i.i, 0
  br i1 %.not.us.i.i, label %.lr.ph.i16, label %.preheader48.us.i.i.backedge

bb.y:                                             ; preds = %bb.z
  %indvars.iv.next.i98.i = add nuw nsw i64 %indvars.iv.i97.i, 1 ; 2 uses
  %exitcond.not.i99.i = icmp eq i64 %indvars.iv.next.i98.i, %wide.trip.count.i96.i
  br i1 %exitcond.not.i99.i, label %.loopexit52.i.i, label %bb.z, !llvm.loop !208

bb.z:                                             ; preds = %bb.y, %.lr.ph.i95.i
  %indvars.iv.i97.i = phi i64 [ 0, %.lr.ph.i95.i ], [ %indvars.iv.next.i98.i, %bb.y ] ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.i97.i
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !107 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !66
  %.not47.i.i = icmp eq i32 %i.fo, 0
  br i1 %.not47.i.i, label %bb.aa, label %bb.y

bb.aa:                                            ; preds = %bb.z
  %i.fp = getelementptr inbounds nuw i8, ptr %i.em, i64 64
  store ptr %i.fm, ptr %i.fp, align 8, !tbaa !205
  br label %.loopexit52.i.i

.loopexit52.i.i:                                  ; preds = %bb.y, %bb.aa, %.preheader51.i.i
  %indvars.iv.next73.i.i = add nuw nsw i64 %indvars.iv72.i.i, 1 ; 2 uses
  %exitcond76.not.i.i = icmp eq i64 %indvars.iv.next73.i.i, %wide.trip.count75.i.i
  br i1 %exitcond76.not.i.i, label %.preheader48.us.i.i, label %.preheader51.i.i, !llvm.loop !209

.lr.ph.i16:                                       ; preds = %..loopexit49_crit_edge.us.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.ab

.preheader.i20:                                   ; preds = %bb.ad
  %.not45.i = icmp eq i32 %i.fy, 0
  br i1 %.not45.i, label %convert_regex_productions.exit, label %.lr.ph42.i

bb.ab:                                            ; preds = %bb.ad, %.lr.ph.i16
  %i.fr = phi i32 [ %i.i, %.lr.ph.i16 ], [ %i.fy, %bb.ad ]
  %indvars.iv.i17 = phi i64 [ 0, %.lr.ph.i16 ], [ %indvars.iv.next.i19, %bb.ad ] ; 2 uses
  %i.fs = load ptr, ptr %i.fq, align 8, !tbaa !28
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %indvars.iv.i17
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !29 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 60
  %i.fw = load i8, ptr %i.fv, align 4
  %i.fx = and i8 %i.fw, 1
  %.not33.i = icmp eq i8 %i.fx, 0
  br i1 %.not33.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call fastcc void @convert_regex_production_one(ptr noundef nonnull %0, ptr noundef nonnull %i.fu)
  %.pre.i18 = load i32, ptr %i.c, align 8, !tbaa !8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.fy = phi i32 [ %i.fr, %bb.ab ], [ %.pre.i18, %bb.ac ] ; 4 uses
  %indvars.iv.next.i19 = add nuw nsw i64 %indvars.iv.i17, 1 ; 2 uses
  %i.fz = zext i32 %i.fy to i64
  %i.ga = icmp samesign ult i64 %indvars.iv.next.i19, %i.fz
  br i1 %i.ga, label %bb.ab, label %.preheader.i20, !llvm.loop !210

.lr.ph42.i:                                       ; preds = %.preheader.i20, %._crit_edge40.i
  %i.gb = phi i32 [ %i.hj, %._crit_edge40.i ], [ %i.fy, %.preheader.i20 ]
  %indvars.iv55.i = phi i64 [ %indvars.iv.next56.i, %._crit_edge40.i ], [ 0, %.preheader.i20 ] ; 2 uses
  %i.gc = load ptr, ptr %i.fq, align 8, !tbaa !28
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv55.i
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !29 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !106 ; 2 uses
  %.not46.i = icmp eq i32 %i.gg, 0
  br i1 %.not46.i, label %._crit_edge40.i, label %.lr.ph39.i

.lr.ph39.i:                                       ; preds = %.lr.ph42.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge.i21, %.lr.ph39.i
  %i.gi = phi i32 [ %i.gg, %.lr.ph39.i ], [ %i.hg, %._crit_edge.i21 ]
  %indvars.iv52.i = phi i64 [ 0, %.lr.ph39.i ], [ %indvars.iv.next53.i, %._crit_edge.i21 ] ; 2 uses
  %i.gj = load ptr, ptr %i.gh, align 8, !tbaa !105
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %indvars.iv52.i
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !107 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 32 ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !66 ; 2 uses
  %.not47.i = icmp eq i32 %i.gn, 0
  br i1 %.not47.i, label %._crit_edge.i21, label %.lr.ph36.i

.lr.ph36.i:                                       ; preds = %bb.ae
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 40 ; 2 uses
  %.pre58.i = load ptr, ptr %i.go, align 8, !tbaa !65
  br label %bb.af

bb.af:                                            ; preds = %bb.ai, %.lr.ph36.i
  %i.gp = phi i32 [ %i.gn, %.lr.ph36.i ], [ %i.hc, %bb.ai ] ; 2 uses
  %i.gq = phi ptr [ %.pre58.i, %.lr.ph36.i ], [ %i.hd, %bb.ai ] ; 3 uses
  %indvars.iv49.i = phi i64 [ 0, %.lr.ph36.i ], [ %indvars.iv.next50.i, %bb.ai ] ; 3 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %indvars.iv49.i
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !67 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !46
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 16 ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !51
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 216
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !211 ; 2 uses
  %.not.i22 = icmp eq ptr %i.gy, null
  br i1 %.not.i22, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store ptr %i.gy, ptr %i.gv, align 8, !tbaa !51
  %i.gz = load ptr, ptr %i.go, align 8, !tbaa !65 ; 2 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv49.i
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !67
  store i32 1, ptr %i.hb, align 8, !tbaa !46
  %.pre59.i = load i32, ptr %i.gm, align 8, !tbaa !66
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %i.hc = phi i32 [ %i.gp, %bb.af ], [ %i.gp, %bb.ag ], [ %.pre59.i, %bb.ah ] ; 2 uses
  %i.hd = phi ptr [ %i.gq, %bb.af ], [ %i.gq, %bb.ag ], [ %i.gz, %bb.ah ]
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1 ; 2 uses
  %i.he = zext i32 %i.hc to i64
  %i.hf = icmp samesign ult i64 %indvars.iv.next50.i, %i.he
  br i1 %i.hf, label %bb.af, label %._crit_edge.loopexit.i, !llvm.loop !212

._crit_edge.loopexit.i:                           ; preds = %bb.ai
  %.pre60.i = load i32, ptr %i.gf, align 8, !tbaa !106
  br label %._crit_edge.i21

._crit_edge.i21:                                  ; preds = %._crit_edge.loopexit.i, %bb.ae
  %i.hg = phi i32 [ %.pre60.i, %._crit_edge.loopexit.i ], [ %i.gi, %bb.ae ] ; 2 uses
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %i.hh = zext i32 %i.hg to i64
  %i.hi = icmp samesign ult i64 %indvars.iv.next53.i, %i.hh
  br i1 %i.hi, label %bb.ae, label %._crit_edge40.loopexit.i, !llvm.loop !213

._crit_edge40.loopexit.i:                         ; preds = %._crit_edge.i21
  %.pre61.i = load i32, ptr %i.c, align 8, !tbaa !8
  br label %._crit_edge40.i

._crit_edge40.i:                                  ; preds = %._crit_edge40.loopexit.i, %.lr.ph42.i
  %i.hj = phi i32 [ %.pre61.i, %._crit_edge40.loopexit.i ], [ %i.gb, %.lr.ph42.i ] ; 2 uses
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %i.hk = zext i32 %i.hj to i64
  %i.hl = icmp samesign ult i64 %indvars.iv.next56.i, %i.hk
  br i1 %i.hl, label %.lr.ph42.i, label %convert_regex_productions.exit, !llvm.loop !214

convert_regex_productions.exit:                   ; preds = %._crit_edge40.i, %._crit_edge125.i, %.preheader.i20
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !83
  %.not.i23 = icmp eq i32 %i.hn, 0
  br i1 %.not.i23, label %new_declaration.exit.i, label %bb.aj

bb.aj:                                            ; preds = %convert_regex_productions.exit
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !28
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !29
  %calloc.i.i.i = call noalias noundef dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32) ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %calloc.i.i.i, i64 16
  store ptr %i.hq, ptr %i.hr, align 8, !tbaa !51
  %i.hs = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 7 uses
  store ptr %calloc.i.i.i, ptr %i.hs, align 8, !tbaa !72
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  store i32 0, ptr %i.ht, align 8, !tbaa !74
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !75 ; 9 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 12
  store i32 %i.hv, ptr %i.hw, align 4, !tbaa !76
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !77 ; 4 uses
  %.not.i.i24 = icmp eq ptr %i.hy, null
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  br i1 %.not.i.i24, label %bb.ak, label %bb.al
end_hunk_0
