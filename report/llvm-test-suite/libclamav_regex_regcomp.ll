inline.NumInlined: 135
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@p_bracket:bb.a
  %i.co = and i64 %i.cn, 536870911
  %i.cp = mul nsw i64 %i.co, %i.bk
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cp
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.cg, i64 %indvars.iv.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  store ptr %i.cq, ptr %i.cs, align 8, !tbaa !72
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.v, !llvm.loop !74

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.v
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod375 = trunc i32 %i.bg to i1
  tail call void @llvm.assume(i1 %lcmp.mod375)
  %i.ct = lshr i64 %indvars.iv.i.epil.init, 3
  %i.cu = and i64 %i.ct, 536870911
  %i.cv = mul nsw i64 %i.cu, %i.bk
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cv
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %i.cg, i64 %indvars.iv.i.epil.init
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !72
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.u
  %i.cy = sub i64 %i.bq, %i.bk
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cy
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cz, i8 0, i64 %i.bk, i1 false)
  %.pre.i = load ptr, ptr %i.bd, align 8, !tbaa !18
  br label %bb.y

bb.w:                                             ; preds = %bb.t, %bb.s
  %i.da = load ptr, ptr %i.bd, align 8, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !71
  tail call void @free(ptr noundef %i.dc) #11
  %i.dd = load ptr, ptr %i.bd, align 8, !tbaa !18 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  store ptr null, ptr %i.de, align 8, !tbaa !71
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !39
  tail call void @free(ptr noundef %i.dg) #11
  %i.dh = load ptr, ptr %i.bd, align 8, !tbaa !18
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  store ptr null, ptr %i.di, align 8, !tbaa !39
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !21
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.x, label %allocset.exit.thread

bb.x:                                             ; preds = %bb.w
  store i32 12, ptr %i.dj, align 8, !tbaa !21
  br label %allocset.exit.thread

allocset.exit.thread:                             ; preds = %bb.w, %bb.x
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.c, align 8, !tbaa !20
  br label %freeset.exit

bb.y:                                             ; preds = %._crit_edge.i, %bb.r
  %i.dm = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.be, %bb.r ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !71
  %i.dp = sext i32 %i.bg to i64
  %i.dq = getelementptr inbounds [32 x i8], ptr %i.do, i64 %i.dp ; 34 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !39
  %i.dt = sdiv i32 %i.bg, 8
  %i.du = sext i32 %i.dt to i64
  %i.dv = mul nsw i64 %i.bk, %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dv ; 2 uses
  store ptr %i.dw, ptr %i.dq, align 8, !tbaa !72
  %i.dx = and i32 %i.bg, 7
  %i.dy = shl nuw nsw i32 1, %i.dx
  %i.dz = trunc nuw i32 %i.dy to i8               ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 21 uses
  store i8 %i.dz, ptr %i.ea, align 8, !tbaa !75
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dq, i64 9 ; 42 uses
  store i8 0, ptr %i.eb, align 1, !tbaa !76
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dq, i64 16 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ec, i8 0, i64 16, i1 false)
  %i.ed = load ptr, ptr %0, align 8, !tbaa !19    ; 5 uses
  %i.ee = load ptr, ptr %i.c, align 8, !tbaa !20  ; 2 uses
  %i.ef = icmp ult ptr %i.ed, %i.ee
  br i1 %i.ef, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.eg = load i8, ptr %i.ed, align 1, !tbaa !34
  %i.eh = icmp eq i8 %i.eg, 94
  br i1 %i.eh, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 1 ; 2 uses
  store ptr %i.ei, ptr %0, align 8, !tbaa !19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.z, %bb.aa
  %i.ej = phi ptr [ %i.ei, %bb.aa ], [ %i.ed, %bb.z ], [ %i.ed, %bb.y ] ; 3 uses
  %.not123 = phi i1 [ false, %bb.aa ], [ true, %bb.z ], [ true, %bb.y ]
  %i.ek = icmp ult ptr %i.ej, %i.ee
  br i1 %i.ek, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.el = load i8, ptr %i.ej, align 1, !tbaa !34  ; 2 uses
  switch i8 %i.el, label %bb.ae [
    i8 93, label %.sink.split
    i8 45, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ac, %bb.ad
  %.sink328 = phi i64 [ 45, %bb.ad ], [ 93, %bb.ac ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 1
  store ptr %i.em, ptr %0, align 8, !tbaa !19
  %i.en = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.sink328 ; 2 uses
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !34
  %i.ep = or i8 %i.eo, %i.dz
  store i8 %i.ep, ptr %i.en, align 1, !tbaa !34
  %i.eq = load i8, ptr %i.eb, align 1, !tbaa !76
  %i.er = add i8 %i.eq, %i.el
  store i8 %i.er, ptr %i.eb, align 1, !tbaa !76
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %bb.ac, %bb.ab
  %i.es = load ptr, ptr %0, align 8, !tbaa !19    ; 3 uses
  %i.et = load ptr, ptr %i.c, align 8, !tbaa !20  ; 3 uses
  %i.eu = icmp ult ptr %i.es, %i.et
  br i1 %i.eu, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.ae
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 22 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dq, i64 24 ; 4 uses
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph, %p_b_term.exit
  %i.ex = phi ptr [ %i.et, %.lr.ph ], [ %i.nh, %p_b_term.exit ] ; 6 uses
  %i.ey = phi ptr [ %i.es, %.lr.ph ], [ %i.ni, %p_b_term.exit ] ; 5 uses
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !34  ; 3 uses
  %.not = icmp eq i8 %i.ez, 93
  br i1 %.not, label %.critedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 1 ; 4 uses
  %i.fb = icmp ult ptr %i.fa, %i.ex               ; 2 uses
  %i.fc = icmp eq i8 %i.ez, 45
  %or.cond = and i1 %i.fb, %i.fc
  br i1 %or.cond, label %bb.ah, label %.critedge131

bb.ah:                                            ; preds = %bb.ag
  %i.fd = load i8, ptr %i.fa, align 1, !tbaa !34
  %.not190 = icmp eq i8 %i.fd, 93
  br i1 %.not190, label %bb.cy, label %.critedge131.thread

.critedge131:                                     ; preds = %bb.ag
  switch i8 %i.ez, label %.thread107.i [
    i8 91, label %bb.ai
    i8 45, label %.critedge131.thread
  ]

bb.ai:                                            ; preds = %.critedge131
  br i1 %i.fb, label %bb.aj, label %.thread107.i

.critedge131.thread:                              ; preds = %.critedge131, %bb.ah
  %i.fe = load i32, ptr %i.ev, align 8, !tbaa !21
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %.critedge.thread.sink.split, label %.critedge.thread

bb.aj:                                            ; preds = %bb.ai
  %i.fg = load i8, ptr %i.fa, align 1, !tbaa !34
  switch i8 %i.fg, label %.thread107.i [
    i8 58, label %bb.ak
    i8 61, label %bb.bu
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ey, i64 2 ; 3 uses
  store ptr %i.fh, ptr %0, align 8, !tbaa !19
  %i.fi = icmp ult ptr %i.fh, %i.ex
  br i1 %i.fi, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fj = load i32, ptr %i.ev, align 8, !tbaa !21
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %bb.am, label %seterr.exit95.i

bb.am:                                            ; preds = %bb.al
  store i32 7, ptr %i.ev, align 8, !tbaa !21
  br label %seterr.exit95.i

seterr.exit95.i:                                  ; preds = %bb.am, %bb.al
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !57
  br label %bb.an

bb.an:                                            ; preds = %seterr.exit95.i, %bb.ak
  %i.fl = phi ptr [ @nuls, %seterr.exit95.i ], [ %i.ex, %bb.ak ] ; 3 uses
  %i.fm = phi ptr [ @nuls, %seterr.exit95.i ], [ %i.fh, %bb.ak ] ; 7 uses
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !34
  switch i8 %i.fn, label %bb.aq [
    i8 93, label %bb.ao
    i8 45, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an, %bb.an
  %i.fo = load i32, ptr %i.ev, align 8, !tbaa !21
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %bb.ap, label %.thread.i

bb.ap:                                            ; preds = %bb.ao
  store i32 4, ptr %i.ev, align 8, !tbaa !21
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ap, %bb.ao
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !57
  br label %.critedge.i.i

bb.aq:                                            ; preds = %bb.an
  %1 = ptrtoint ptr %i.fm to i64                  ; 4 uses
  %i.fq = icmp ult ptr %i.fm, %i.fl
  br i1 %i.fq, label %.lr.ph.i.i, label %.critedge.i.i

.lr.ph.i.i:                                       ; preds = %bb.aq
  %2 = ptrtoint ptr %i.fl to i64
  %i.fr = tail call ptr @__ctype_b_loc() #13
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !61
  %i.ft = sub i64 %2, %1
  %scevgep.i.i = getelementptr i8, ptr %i.fm, i64 %i.ft
  br label %bb.ar

bb.ar:                                            ; preds = %bb.as, %.lr.ph.i.i
  %i.fu = phi ptr [ %i.fm, %.lr.ph.i.i ], [ %i.ga, %bb.as ] ; 3 uses
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !34
  %i.fw = sext i8 %i.fv to i64
  %i.fx = getelementptr inbounds [2 x i8], ptr %i.fs, i64 %i.fw
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !63
  %i.fz = and i16 %i.fy, 1024
  %.not.i.i145 = icmp eq i16 %i.fz, 0
  br i1 %.not.i.i145, label %.critedge.loopexit.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fu, i64 1 ; 3 uses
  store ptr %i.ga, ptr %0, align 8, !tbaa !19
  %exitcond.not.i.i = icmp eq ptr %i.ga, %i.fl
  br i1 %exitcond.not.i.i, label %.critedge.loopexit.i.i, label %bb.ar, !llvm.loop !77

.critedge.loopexit.i.i:                           ; preds = %bb.as, %bb.ar
  %.lcssa37.ph.i.i = phi ptr [ %i.fu, %bb.ar ], [ %scevgep.i.i, %bb.as ]
  %.pre.i.i = ptrtoint ptr %.lcssa37.ph.i.i to i64
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.loopexit.i.i, %bb.aq, %.thread.i
  %3 = phi i64 [ %1, %.critedge.loopexit.i.i ], [ %1, %bb.aq ], [ ptrtoint (ptr @nuls to i64), %.thread.i ]
  %4 = phi ptr [ %i.fm, %.critedge.loopexit.i.i ], [ %i.fm, %bb.aq ], [ @nuls, %.thread.i ] ; 12 uses
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %.critedge.loopexit.i.i ], [ %1, %bb.aq ], [ ptrtoint (ptr @nuls to i64), %.thread.i ]
  %i.gb = sub i64 %.pre-phi.i.i, %3               ; 14 uses
  %i.gc = tail call i32 @strncmp(ptr noundef nonnull @.str.2, ptr noundef nonnull %4, i64 noundef %i.gb) #12
  %i.gd = icmp eq i32 %i.gc, 0
  %i.ge = icmp eq i64 %i.gb, 5                    ; 11 uses
  %or.cond.i.i = and i1 %i.gd, %i.ge
  br i1 %or.cond.i.i, label %bb.bg, label %bb.at

bb.at:                                            ; preds = %.critedge.i.i
  %i.gf = tail call i32 @strncmp(ptr noundef nonnull @.str.5, ptr noundef nonnull %4, i64 noundef %i.gb) #12
  %i.gg = icmp eq i32 %i.gf, 0
  %or.cond53.i.i = and i1 %i.ge, %i.gg
  br i1 %or.cond53.i.i, label %bb.bg, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gh = tail call i32 @strncmp(ptr noundef nonnull @.str.7, ptr noundef nonnull %4, i64 noundef %i.gb) #12
  %i.gi = icmp eq i32 %i.gh, 0
  %or.cond54.i.i = and i1 %i.ge, %i.gi
  br i1 %or.cond54.i.i, label %bb.bg, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gj = tail call i32 @strncmp(ptr noundef nonnull @.str.9, ptr noundef nonnull %4, i64 noundef %i.gb) #12
  %i.gk = icmp eq i32 %i.gj, 0
  %or.cond55.i.i = and i1 %i.ge, %i.gk
  br i1 %or.cond55.i.i, label %bb.bg, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gl = tail call i32 @strncmp(ptr noundef nonnull @.str.11, ptr noundef nonnull %4, i64 noundef %i.gb) #12
  %i.gm = icmp eq i32 %i.gl, 0
  %or.cond56.i.i = and i1 %i.ge, %i.gm
  br i1 %or.cond56.i.i, label %bb.bg, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gn = tail call i32 @strncmp(ptr noundef nonnull @.str.13, ptr noundef nonnull %4, i64 noundef %i.gb) #12
  %i.go = icmp eq i32 %i.gn, 0
  %or.cond57.i.i = and i1 %i.ge, %i.go
  br i1 %or.cond57.i.i, label %bb.bg, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gp = tail call i32 @strncmp(ptr noundef nonnull @.str.15, ptr noundef nonnull %4, i64 noundef %i.gb) #12
  %i.gq = icmp eq i32 %i.gp, 0
  %or.cond58.i.i = and i1 %i.ge, %i.gq
  br i1 %or.cond58.i.i, label %bb.bg, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gr = tail call i32 @strncmp(ptr noundef nonnull @.str.17, ptr noundef nonnull %4, i64 noundef %i.gb) #12
  %i.gs = icmp eq i32 %i.gr, 0
  %or.cond59.i.i = and i1 %i.ge, %i.gs
  br i1 %or.cond59.i.i, label %bb.bg, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gt = tail call i32 @strncmp(ptr noundef nonnull @.str.19, ptr noundef nonnull %4, i64 noundef %i.gb) #12
  %i.gu = icmp eq i32 %i.gt, 0
  %or.cond60.i.i = and i1 %i.ge, %i.gu
  br i1 %or.cond60.i.i, label %bb.bg, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gv = tail call i32 @strncmp(ptr noundef nonnull @.str.21, ptr noundef nonnull %4, i64 noundef %i.gb) #12
  %i.gw = icmp eq i32 %i.gv, 0
  %or.cond61.i.i = and i1 %i.ge, %i.gw
  br i1 %or.cond61.i.i, label %bb.bg, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gx = tail call i32 @strncmp(ptr noundef nonnull @.str.23, ptr noundef nonnull %4, i64 noundef %i.gb) #12
  %i.gy = icmp eq i32 %i.gx, 0
  %or.cond62.i.i = and i1 %i.ge, %i.gy
  br i1 %or.cond62.i.i, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gz = tail call i32 @strncmp(ptr noundef nonnull @.str.25, ptr noundef nonnull %4, i64 noundef %i.gb) #12
  %i.ha = icmp eq i32 %i.gz, 0
  %i.hb = icmp eq i64 %i.gb, 6
  %or.cond63.i.i = and i1 %i.hb, %i.ha
  br i1 %or.cond63.i.i, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hc = load i32, ptr %i.ev, align 8, !tbaa !21
  %i.hd = icmp eq i32 %i.hc, 0
  br i1 %i.hd, label %bb.bf, label %seterr.exit.i.i144

bb.bf:                                            ; preds = %bb.be
  store i32 4, ptr %i.ev, align 8, !tbaa !21
  br label %seterr.exit.i.i144

seterr.exit.i.i144:                               ; preds = %bb.bf, %bb.be
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !57
  br label %p_b_cclass.exit.i

bb.bg:                                            ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %.critedge.i.i
  %.040.lcssa.i.i = phi ptr [ @cclasses, %.critedge.i.i ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 24), %bb.at ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 48), %bb.au ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 72), %bb.av ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 96), %bb.aw ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 120), %bb.ax ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 144), %bb.ay ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 168), %bb.az ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 192), %bb.ba ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 216), %bb.bb ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 240), %bb.bc ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 264), %bb.bd ] ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.040.lcssa.i.i, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !78 ; 2 uses
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !34  ; 2 uses
  %.not3441.i.i = icmp eq i8 %i.hg, 0
  br i1 %.not3441.i.i, label %._crit_edge.i.i, label %.lr.ph43.i.i

.lr.ph43.i.i:                                     ; preds = %bb.bg, %.lr.ph43.i.i
  %i.hh = phi i8 [ %i.hr, %.lr.ph43.i.i ], [ %i.hg, %bb.bg ] ; 2 uses
  %.02942.i.i = phi ptr [ %i.hi, %.lr.ph43.i.i ], [ %i.hf, %bb.bg ]
  %i.hi = getelementptr inbounds nuw i8, ptr %.02942.i.i, i64 1 ; 2 uses
  %i.hj = load i8, ptr %i.ea, align 8, !tbaa !75
  %i.hk = load ptr, ptr %i.dq, align 8, !tbaa !72
  %i.hl = zext i8 %i.hh to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hl ; 2 uses
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !34
  %i.ho = or i8 %i.hn, %i.hj
  store i8 %i.ho, ptr %i.hm, align 1, !tbaa !34
  %i.hp = load i8, ptr %i.eb, align 1, !tbaa !76
  %i.hq = add i8 %i.hp, %i.hh
  store i8 %i.hq, ptr %i.eb, align 1, !tbaa !76
  %i.hr = load i8, ptr %i.hi, align 1, !tbaa !34  ; 2 uses
  %.not34.i.i = icmp eq i8 %i.hr, 0
  br i1 %.not34.i.i, label %._crit_edge.i.i, label %.lr.ph43.i.i, !llvm.loop !80

._crit_edge.i.i:                                  ; preds = %.lr.ph43.i.i, %bb.bg
  %i.hs = getelementptr inbounds nuw i8, ptr %.040.lcssa.i.i, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !81 ; 2 uses
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !34
  %.not3544.i.i = icmp eq i8 %i.hu, 0
  br i1 %.not3544.i.i, label %p_b_cclass.exit.i, label %.lr.ph47.i.i

.lr.ph47.i.i:                                     ; preds = %._crit_edge.i.i, %mcadd.exit.i.i
  %.145.i.i = phi ptr [ %i.io, %mcadd.exit.i.i ], [ %i.ht, %._crit_edge.i.i ] ; 4 uses
  %i.hv = load i64, ptr %i.ec, align 8, !tbaa !82 ; 3 uses
  %i.hw = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.145.i.i) #12
  %i.hx = add i64 %i.hv, 1
  %i.hy = add i64 %i.hx, %i.hw                    ; 3 uses
  store i64 %i.hy, ptr %i.ec, align 8, !tbaa !82
  %i.hz = load ptr, ptr %i.ew, align 8, !tbaa !83 ; 2 uses
  %i.ia = icmp eq ptr %i.hz, null
  br i1 %i.ia, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.lr.ph47.i.i
  %i.ib = tail call ptr @cli_malloc(i64 noundef %i.hy) #11
  br label %bb.bj

bb.bi:                                            ; preds = %.lr.ph47.i.i
  %i.ic = tail call ptr @cli_realloc(ptr noundef nonnull %i.hz, i64 noundef %i.hy) #11
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.0.i.i.i = phi ptr [ %i.ib, %bb.bh ], [ %i.ic, %bb.bi ] ; 3 uses
  %i.id = icmp eq ptr %.0.i.i.i, null
  br i1 %i.id, label %bb.bk, label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  %i.ie = load ptr, ptr %i.ew, align 8, !tbaa !83 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ie, null
  br i1 %.not.i.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void @free(ptr noundef nonnull %i.ie) #11
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  store ptr null, ptr %i.ew, align 8, !tbaa !83
  %i.if = load i32, ptr %i.ev, align 8, !tbaa !21
  %i.ig = icmp eq i32 %i.if, 0
  br i1 %i.ig, label %bb.bn, label %seterr.exit.i.i.i

bb.bn:                                            ; preds = %bb.bm
  store i32 12, ptr %i.ev, align 8, !tbaa !21
  br label %seterr.exit.i.i.i

seterr.exit.i.i.i:                                ; preds = %bb.bn, %bb.bm
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !57
  br label %mcadd.exit.i.i

bb.bo:                                            ; preds = %bb.bj
  store ptr %.0.i.i.i, ptr %i.ew, align 8, !tbaa !83
  %i.ih = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.hv
  %i.ii = getelementptr inbounds i8, ptr %i.ih, i64 -1
  %i.ij = load i64, ptr %i.ec, align 8, !tbaa !82
  %reass.sub = sub i64 %i.ij, %i.hv
  %i.ik = add i64 %reass.sub, 1
  %i.il = tail call i64 @cli_strlcpy(ptr noundef nonnull %i.ii, ptr noundef nonnull %.145.i.i, i64 noundef %i.ik) #11 ; 0 uses
  br label %mcadd.exit.i.i

mcadd.exit.i.i:                                   ; preds = %bb.bo, %seterr.exit.i.i.i
  %i.im = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.145.i.i) #12
  %i.in = getelementptr i8, ptr %.145.i.i, i64 %i.im
  %i.io = getelementptr i8, ptr %i.in, i64 1      ; 2 uses
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !34
  %.not35.i.i = icmp eq i8 %i.ip, 0
  br i1 %.not35.i.i, label %p_b_cclass.exit.i, label %.lr.ph47.i.i, !llvm.loop !84

p_b_cclass.exit.i:                                ; preds = %mcadd.exit.i.i, %._crit_edge.i.i, %seterr.exit.i.i144
  %i.iq = load ptr, ptr %0, align 8, !tbaa !19    ; 4 uses
  %i.ir = load ptr, ptr %i.c, align 8, !tbaa !20  ; 3 uses
  %i.is = icmp ult ptr %i.iq, %i.ir
  br i1 %i.is, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %p_b_cclass.exit.i
  %i.it = load i32, ptr %i.ev, align 8, !tbaa !21
  %i.iu = icmp eq i32 %i.it, 0
  br i1 %i.iu, label %.critedge.thread.sink.split, label %.critedge.thread

bb.bq:                                            ; preds = %p_b_cclass.exit.i
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iq, i64 1 ; 2 uses
  %i.iw = icmp ult ptr %i.iv, %i.ir
  br i1 %i.iw, label %bb.br, label %.thread147.i

bb.br:                                            ; preds = %bb.bq
  %i.ix = load i8, ptr %i.iq, align 1, !tbaa !34
  %i.iy = icmp eq i8 %i.ix, 58
  br i1 %i.iy, label %bb.bs, label %.thread147.i

bb.bs:                                            ; preds = %bb.br
  %i.iz = load i8, ptr %i.iv, align 1, !tbaa !34
  %i.ja = icmp eq i8 %i.iz, 93
  br i1 %i.ja, label %bb.bt, label %.thread147.i

bb.bt:                                            ; preds = %bb.bs
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iq, i64 2 ; 2 uses
  store ptr %i.jb, ptr %0, align 8, !tbaa !19
  br label %p_b_term.exit

.thread147.i:                                     ; preds = %bb.bs, %bb.br, %bb.bq
  %.pr = load i32, ptr %i.ev, align 8, !tbaa !21
  %i.jc = icmp eq i32 %.pr, 0
  br i1 %i.jc, label %.critedge.thread.sink.split, label %.critedge.thread

bb.bu:                                            ; preds = %bb.aj
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ey, i64 2 ; 3 uses
  store ptr %i.jd, ptr %0, align 8, !tbaa !19
  %i.je = icmp ult ptr %i.jd, %i.ex
  br i1 %i.je, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jf = load i32, ptr %i.ev, align 8, !tbaa !21
  %i.jg = icmp eq i32 %i.jf, 0
  br i1 %i.jg, label %bb.bw, label %seterr.exit99.i

bb.bw:                                            ; preds = %bb.bv
  store i32 7, ptr %i.ev, align 8, !tbaa !21
  br label %seterr.exit99.i

seterr.exit99.i:                                  ; preds = %bb.bw, %bb.bv
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !57
  br label %bb.bx

bb.bx:                                            ; preds = %seterr.exit99.i, %bb.bu
  %i.jh = phi ptr [ @nuls, %seterr.exit99.i ], [ %i.ex, %bb.bu ] ; 3 uses
  %i.ji = phi ptr [ @nuls, %seterr.exit99.i ], [ %i.jd, %bb.bu ] ; 6 uses
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !34
  switch i8 %i.jj, label %bb.bz [
    i8 93, label %bb.by
    i8 45, label %bb.by
  ]

bb.by:                                            ; preds = %bb.bx, %bb.bx
  %i.jk = load i32, ptr %i.ev, align 8, !tbaa !21
  %i.jl = icmp eq i32 %i.jk, 0
  br i1 %i.jl, label %seterr.exit.i.i101.i.sink.split, label %seterr.exit.i.i101.i

bb.bz:                                            ; preds = %bb.bx
  %5 = ptrtoint ptr %i.ji to i64
  %i.jm = icmp ult ptr %i.ji, %i.jh
  br i1 %i.jm, label %.lr.ph.i.i.i, label %.critedge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bz, %.critedge34.i.i.i
  %i.jn = phi ptr [ %i.jo, %.critedge34.i.i.i ], [ %i.ji, %bb.bz ] ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 1 ; 5 uses
  %i.jp = icmp ult ptr %i.jo, %i.jh
  br i1 %i.jp, label %bb.ca, label %.critedge34.i.i.i

bb.ca:                                            ; preds = %.lr.ph.i.i.i
  %i.jq = load i8, ptr %i.jn, align 1, !tbaa !34
  %i.jr = icmp eq i8 %i.jq, 61
  br i1 %i.jr, label %bb.cb, label %.critedge34.i.i.i

bb.cb:                                            ; preds = %bb.ca
  %i.js = load i8, ptr %i.jo, align 1, !tbaa !34
  %.not36.i.i.i = icmp eq i8 %i.js, 93
  br i1 %.not36.i.i.i, label %bb.cc, label %.critedge34.i.i.i

.critedge34.i.i.i:                                ; preds = %bb.cb, %bb.ca, %.lr.ph.i.i.i
  store ptr %i.jo, ptr %0, align 8, !tbaa !19
  %exitcond.not.i.i.i = icmp eq ptr %i.jo, %i.jh
  br i1 %exitcond.not.i.i.i, label %.critedge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !85

.critedge.i.i.i:                                  ; preds = %.critedge34.i.i.i, %bb.bz
  %.pr302 = load i32, ptr %i.ev, align 8, !tbaa !21
  %i.jt = icmp eq i32 %.pr302, 0
  br i1 %i.jt, label %seterr.exit.i.i101.i.sink.split, label %seterr.exit.i.i101.i

seterr.exit.i.i101.i.sink.split:                  ; preds = %.critedge.i.i.i, %bb.by
  %.sink329 = phi i32 [ 3, %bb.by ], [ 7, %.critedge.i.i.i ]
  store i32 %.sink329, ptr %i.ev, align 8, !tbaa !21
  br label %seterr.exit.i.i101.i

seterr.exit.i.i101.i:                             ; preds = %seterr.exit.i.i101.i.sink.split, %bb.by, %.critedge.i.i.i
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !57
  br label %p_b_eclass.exit.i

bb.cc:                                            ; preds = %bb.cb
  %i.ju = ptrtoint ptr %i.jn to i64
  %i.jv = sub i64 %i.ju, %5                       ; 2 uses
  %sext.i.i.i = shl i64 %i.jv, 32
  %i.jw = ashr exact i64 %sext.i.i.i, 32          ; 2 uses
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cg, %bb.cc
  %i.jx = phi ptr [ @.str.27, %bb.cc ], [ %i.kg, %bb.cg ] ; 2 uses
  %.02741.i.i.i = phi ptr [ @cnames, %bb.cc ], [ %i.kf, %bb.cg ] ; 2 uses
  %i.jy = tail call i32 @strncmp(ptr noundef nonnull %i.jx, ptr noundef nonnull %i.ji, i64 noundef %i.jw) #12
  %i.jz = icmp eq i32 %i.jy, 0
  br i1 %i.jz, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.ka = getelementptr inbounds i8, ptr %i.jx, i64 %i.jw
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !34
  %i.kc = icmp eq i8 %i.kb, 0
  br i1 %i.kc, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.kd = getelementptr inbounds nuw i8, ptr %.02741.i.i.i, i64 8
  %i.ke = load i8, ptr %i.kd, align 8, !tbaa !86
  br label %p_b_eclass.exit.i

bb.cg:                                            ; preds = %bb.ce, %bb.cd
  %i.kf = getelementptr inbounds nuw i8, ptr %.02741.i.i.i, i64 16 ; 2 uses
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !88 ; 2 uses
  %.not.i.i103.i = icmp eq ptr %i.kg, null
  br i1 %.not.i.i103.i, label %bb.ch, label %bb.cd, !llvm.loop !89

bb.ch:                                            ; preds = %bb.cg
  %i.kh = and i64 %i.jv, 4294967295
  %i.ki = icmp eq i64 %i.kh, 1
  br i1 %i.ki, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.kj = load i8, ptr %i.ji, align 1, !tbaa !34
  br label %p_b_eclass.exit.i

bb.cj:                                            ; preds = %bb.ch
  %i.kk = load i32, ptr %i.ev, align 8, !tbaa !21
  %i.kl = icmp eq i32 %i.kk, 0
  br i1 %i.kl, label %bb.ck, label %seterr.exit35.i.i.i

bb.ck:                                            ; preds = %bb.cj
  store i32 3, ptr %i.ev, align 8, !tbaa !21
  br label %seterr.exit35.i.i.i

seterr.exit35.i.i.i:                              ; preds = %bb.ck, %bb.cj
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !57
  br label %p_b_eclass.exit.i

p_b_eclass.exit.i:                                ; preds = %seterr.exit35.i.i.i, %bb.ci, %bb.cf, %seterr.exit.i.i101.i
  %.0.i.i102.i = phi i8 [ %i.ke, %bb.cf ], [ %i.kj, %bb.ci ], [ 0, %seterr.exit35.i.i.i ], [ 0, %seterr.exit.i.i101.i ] ; 2 uses
  %i.km = load i8, ptr %i.ea, align 8, !tbaa !75
  %i.kn = load ptr, ptr %i.dq, align 8, !tbaa !72
  %i.ko = zext i8 %.0.i.i102.i to i64
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 %i.ko ; 2 uses
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !34
  %i.kr = or i8 %i.kq, %i.km
  store i8 %i.kr, ptr %i.kp, align 1, !tbaa !34
  %i.ks = load i8, ptr %i.eb, align 1, !tbaa !76
  %i.kt = add i8 %i.ks, %.0.i.i102.i
  store i8 %i.kt, ptr %i.eb, align 1, !tbaa !76
  %i.ku = load ptr, ptr %0, align 8, !tbaa !19    ; 4 uses
  %i.kv = load ptr, ptr %i.c, align 8, !tbaa !20  ; 3 uses
  %i.kw = icmp ult ptr %i.ku, %i.kv
  br i1 %i.kw, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %p_b_eclass.exit.i
  %i.kx = load i32, ptr %i.ev, align 8, !tbaa !21
  %i.ky = icmp eq i32 %i.kx, 0
  br i1 %i.ky, label %.critedge.thread.sink.split, label %.critedge.thread

bb.cm:                                            ; preds = %p_b_eclass.exit.i
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ku, i64 1 ; 2 uses
  %i.la = icmp ult ptr %i.kz, %i.kv
  br i1 %i.la, label %bb.cn, label %.thread149.i

bb.cn:                                            ; preds = %bb.cm
  %i.lb = load i8, ptr %i.ku, align 1, !tbaa !34
  %i.lc = icmp eq i8 %i.lb, 61
  br i1 %i.lc, label %bb.co, label %.thread149.i

bb.co:                                            ; preds = %bb.cn
  %i.ld = load i8, ptr %i.kz, align 1, !tbaa !34
  %i.le = icmp eq i8 %i.ld, 93
  br i1 %i.le, label %bb.cp, label %.thread149.i

bb.cp:                                            ; preds = %bb.co
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ku, i64 2 ; 2 uses
  store ptr %i.lf, ptr %0, align 8, !tbaa !19
  br label %p_b_term.exit

.thread149.i:                                     ; preds = %bb.co, %bb.cn, %bb.cm
  %.pr303 = load i32, ptr %i.ev, align 8, !tbaa !21
  %i.lg = icmp eq i32 %.pr303, 0
  br i1 %i.lg, label %.critedge.thread.sink.split, label %.critedge.thread

.thread107.i:                                     ; preds = %bb.aj, %bb.ai, %.critedge131
  %i.lh = tail call fastcc signext i8 @p_b_symbol(ptr noundef nonnull %0) ; 8 uses
  %i.li = load ptr, ptr %0, align 8, !tbaa !19    ; 4 uses
  %i.lj = load ptr, ptr %i.c, align 8, !tbaa !20  ; 2 uses
  %i.lk = icmp ult ptr %i.li, %i.lj
  br i1 %i.lk, label %bb.cq, label %.lr.ph.i140

bb.cq:                                            ; preds = %.thread107.i
  %i.ll = load i8, ptr %i.li, align 1, !tbaa !34
  %i.lm = icmp eq i8 %i.ll, 45
  br i1 %i.lm, label %bb.cr, label %.lr.ph.i140

bb.cr:                                            ; preds = %bb.cq
  %i.ln = getelementptr inbounds nuw i8, ptr %i.li, i64 1 ; 4 uses
  %i.lo = icmp ult ptr %i.ln, %i.lj
  br i1 %i.lo, label %bb.cs, label %.lr.ph.i140

bb.cs:                                            ; preds = %bb.cr
  %i.lp = load i8, ptr %i.ln, align 1, !tbaa !34
  %.not.i142 = icmp eq i8 %i.lp, 93
  br i1 %.not.i142, label %.lr.ph.i140, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  store ptr %i.ln, ptr %0, align 8, !tbaa !19
  %i.lq = load i8, ptr %i.ln, align 1, !tbaa !34
  %i.lr = icmp eq i8 %i.lq, 45
  br i1 %i.lr, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.ls = getelementptr inbounds nuw i8, ptr %i.li, i64 2
  store ptr %i.ls, ptr %0, align 8, !tbaa !19
  br label %bb.cw

bb.cv:                                            ; preds = %bb.ct
  %i.lt = tail call fastcc signext i8 @p_b_symbol(ptr noundef nonnull %0)
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.080.i = phi i8 [ 45, %bb.cu ], [ %i.lt, %bb.cv ] ; 2 uses
  %.not93.i = icmp sgt i8 %i.lh, %.080.i
  br i1 %.not93.i, label %bb.cx, label %.lr.ph.i140

bb.cx:                                            ; preds = %bb.cw
  %i.lu = load i32, ptr %i.ev, align 8, !tbaa !21
  %i.lv = icmp eq i32 %i.lu, 0
  br i1 %i.lv, label %.critedge.thread.sink.split, label %.critedge.thread

.lr.ph.i140:                                      ; preds = %bb.cw, %bb.cs, %bb.cr, %bb.cq, %.thread107.i
  %.in152.i = phi i8 [ %i.lh, %.thread107.i ], [ %i.lh, %bb.cs ], [ %i.lh, %bb.cr ], [ %i.lh, %bb.cq ], [ %.080.i, %bb.cw ] ; 2 uses
  %i.lw = sext i8 %.in152.i to i32                ; 2 uses
  %i.lx = sext i8 %i.lh to i32                    ; 4 uses
  %i.ly = add nsw i32 %i.lw, %i.lx
  %i.lz = and i32 %i.ly, 1
  %lcmp.mod377.not.not = icmp eq i32 %i.lz, 0
  br i1 %lcmp.mod377.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i140
  %i.ma = load i8, ptr %i.ea, align 8, !tbaa !75
  %i.mb = load ptr, ptr %i.dq, align 8, !tbaa !72
  %i.mc = and i32 %i.lx, 255
  %i.md = zext nneg i32 %i.mc to i64
  %i.me = getelementptr inbounds nuw i8, ptr %i.mb, i64 %i.md ; 2 uses
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !34
  %i.mg = or i8 %i.mf, %i.ma
  store i8 %i.mg, ptr %i.me, align 1, !tbaa !34
  %i.mh = load i8, ptr %i.eb, align 1, !tbaa !76
  %i.mi = add i8 %i.mh, %i.lh
  store i8 %i.mi, ptr %i.eb, align 1, !tbaa !76
  %i.mj = add nsw i32 %i.lx, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i140
  %.0116.i.unr = phi i32 [ %i.lx, %.lr.ph.i140 ], [ %i.mj, %.prol.loopexit.unr-lcssa ]
  %i.mk = icmp eq i8 %.in152.i, %i.lh
  br i1 %i.mk, label %p_b_term.exit.loopexit, label %.lr.ph.i140.new

.lr.ph.i140.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i140.new
  %.0116.i = phi i32 [ %i.ng, %.lr.ph.i140.new ], [ %.0116.i.unr, %.prol.loopexit ] ; 4 uses
  %i.ml = load i8, ptr %i.ea, align 8, !tbaa !75
  %i.mm = load ptr, ptr %i.dq, align 8, !tbaa !72
  %i.mn = and i32 %.0116.i, 255
  %i.mo = zext nneg i32 %i.mn to i64
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.mo ; 2 uses
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !34
  %i.mr = or i8 %i.mq, %i.ml
  store i8 %i.mr, ptr %i.mp, align 1, !tbaa !34
  %i.ms = load i8, ptr %i.eb, align 1, !tbaa !76
  %i.mt = trunc i32 %.0116.i to i8
  %i.mu = add i8 %i.ms, %i.mt
  store i8 %i.mu, ptr %i.eb, align 1, !tbaa !76
  %i.mv = add nsw i32 %.0116.i, 1                 ; 3 uses
  %i.mw = load i8, ptr %i.ea, align 8, !tbaa !75
  %i.mx = load ptr, ptr %i.dq, align 8, !tbaa !72
  %i.my = and i32 %i.mv, 255
  %i.mz = zext nneg i32 %i.my to i64
  %i.na = getelementptr inbounds nuw i8, ptr %i.mx, i64 %i.mz ; 2 uses
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !34
  %i.nc = or i8 %i.nb, %i.mw
  store i8 %i.nc, ptr %i.na, align 1, !tbaa !34
  %i.nd = load i8, ptr %i.eb, align 1, !tbaa !76
  %i.ne = trunc i32 %i.mv to i8
  %i.nf = add i8 %i.nd, %i.ne
  store i8 %i.nf, ptr %i.eb, align 1, !tbaa !76
end_hunk_0
begin_hunk_1_@repeat:bb.a
.loopexit396:                                     ; preds = %.outer, %.outer.peel.newph
  %.tr145195.lcssa377 = phi i32 [ %.tr145195, %.outer.peel.newph ], [ %.tr145195.ph, %.outer ]
  %.tr144194.lcssa370 = phi i64 [ %.pre251.ph, %.outer.peel.newph ], [ %.tr144194.ph, %.outer ] ; 3 uses
  %i.gr = icmp eq i64 %.pre251.ph, %.tr144194.lcssa370
  br i1 %i.gr, label %dupl.exit128, label %bb.au

bb.au:                                            ; preds = %.loopexit396
  %i.gs = sub nsw i64 %.pre251.ph, %.tr144194.lcssa370 ; 4 uses
  %i.gt = load i64, ptr %i.d, align 8, !tbaa !14
  %i.gu = add nsw i64 %i.gt, %i.gs                ; 2 uses
  %.not.i.i125 = icmp sgt i64 %i.gs, 0
  %.pre230 = load ptr, ptr %i.e, align 8, !tbaa !17 ; 2 uses
  br i1 %.not.i.i125, label %bb.av, label %enlarge.exit.i126

bb.av:                                            ; preds = %bb.au
  %i.gv = shl i64 %i.gu, 3
  %i.gw = tail call ptr @cli_realloc(ptr noundef %.pre230, i64 noundef %i.gv) #11 ; 3 uses
  %i.gx = icmp eq ptr %i.gw, null
  br i1 %i.gx, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.gy = load i32, ptr %i.b, align 8, !tbaa !21
  %i.gz = icmp eq i32 %i.gy, 0
  br i1 %i.gz, label %bb.ax, label %seterr.exit.i.i127

bb.ax:                                            ; preds = %bb.aw
  store i32 12, ptr %i.b, align 8, !tbaa !21
  br label %seterr.exit.i.i127

seterr.exit.i.i127:                               ; preds = %bb.ax, %bb.aw
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !57
  %.pre229 = load ptr, ptr %i.e, align 8, !tbaa !17
  br label %enlarge.exit.i126

bb.ay:                                            ; preds = %bb.av
  store ptr %i.gw, ptr %i.e, align 8, !tbaa !17
  store i64 %i.gu, ptr %i.d, align 8, !tbaa !14
  br label %enlarge.exit.i126

enlarge.exit.i126:                                ; preds = %bb.ay, %seterr.exit.i.i127, %bb.au
  %i.ha = phi ptr [ %i.gw, %bb.ay ], [ %.pre229, %seterr.exit.i.i127 ], [ %.pre230, %bb.au ] ; 2 uses
  %i.hb = load i64, ptr %i.a, align 8, !tbaa !31
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.ha, i64 %i.hb
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.ha, i64 %.tr144194.lcssa370
  %i.he = shl i64 %i.gs, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.hc, ptr align 1 %i.hd, i64 %i.he, i1 false)
  %i.hf = load i64, ptr %i.a, align 8, !tbaa !31
  %i.hg = add nsw i64 %i.hf, %i.gs                ; 2 uses
  store i64 %i.hg, ptr %i.a, align 8, !tbaa !31
  br label %dupl.exit128

dupl.exit128:                                     ; preds = %.loopexit396, %enlarge.exit.i126
  %.pre250 = phi i64 [ %.pre251.ph, %.loopexit396 ], [ %i.hg, %enlarge.exit.i126 ]
  %i.hh = add nsw i32 %.tr145195.lcssa377, -1
  br label %tailrecurse.outer.backedge

bb.az:                                            ; preds = %bb.b
  %i.hi = sub nsw i64 %.pre251.ph, %.tr144194.ph  ; 4 uses
  %i.hj = load i64, ptr %i.d, align 8, !tbaa !14
  %i.hk = add nsw i64 %i.hj, %i.hi                ; 2 uses
  %.not.i.i129 = icmp sgt i64 %i.hi, 0
  %.pre227 = load ptr, ptr %i.e, align 8, !tbaa !17 ; 2 uses
  br i1 %.not.i.i129, label %bb.ba, label %enlarge.exit.i130

bb.ba:                                            ; preds = %bb.az
  %i.hl = shl i64 %i.hk, 3
  %i.hm = tail call ptr @cli_realloc(ptr noundef %.pre227, i64 noundef %i.hl) #11 ; 3 uses
  %i.hn = icmp eq ptr %i.hm, null
  br i1 %i.hn, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.ho = load i32, ptr %i.b, align 8, !tbaa !21
  %i.hp = icmp eq i32 %i.ho, 0
  br i1 %i.hp, label %bb.bc, label %seterr.exit.i.i131

bb.bc:                                            ; preds = %bb.bb
  store i32 12, ptr %i.b, align 8, !tbaa !21
  br label %seterr.exit.i.i131

seterr.exit.i.i131:                               ; preds = %bb.bc, %bb.bb
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !57
  %.pre226 = load ptr, ptr %i.e, align 8, !tbaa !17
  br label %enlarge.exit.i130

bb.bd:                                            ; preds = %bb.ba
  store ptr %i.hm, ptr %i.e, align 8, !tbaa !17
  store i64 %i.hk, ptr %i.d, align 8, !tbaa !14
  br label %enlarge.exit.i130

enlarge.exit.i130:                                ; preds = %bb.bd, %seterr.exit.i.i131, %bb.az
  %i.hq = phi ptr [ %i.hm, %bb.bd ], [ %.pre226, %seterr.exit.i.i131 ], [ %.pre227, %bb.az ] ; 2 uses
  %i.hr = load i64, ptr %i.a, align 8, !tbaa !31
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.hq, i64 %i.hr
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.hq, i64 %.tr144194.ph
  %i.hu = shl i64 %i.hi, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.hs, ptr align 1 %i.ht, i64 %i.hu, i1 false)
  %i.hv = load i64, ptr %i.a, align 8, !tbaa !31
  %i.hw = add nsw i64 %i.hv, %i.hi                ; 2 uses
  store i64 %i.hw, ptr %i.a, align 8, !tbaa !31
  %.pre228 = load i32, ptr %i.b, align 8, !tbaa !21
  %i.hx = icmp eq i32 %.pre228, 0
  %i.hy = add nsw i32 %.tr145195.ph, -1
  br i1 %i.hx, label %.outer, label %doemit.exit93

seterr.exit:                                      ; preds = %.outer, %.outer.peel.newph
  store i32 15, ptr %i.b, align 8, !tbaa !21
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.f, align 8, !tbaa !20
  br label %doemit.exit93

doemit.exit93:                                    ; preds = %tailrecurse.outer.backedge, %enlarge.exit.i130, %.outer.peel.newph, %.outer, %doemit.exit85.thread286, %doemit.exit.thread283, %bb.a, %doemit.exit, %.loopexit393, %enlarge.exit.i122, %.loopexit395, %enlarge.exit.i91, %doemit.exit85, %.loopexit, %seterr.exit
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc signext i8 @othercase(i32 noundef %0) unnamed_addr #7 {
bb.a:
  %i.a = and i32 %0, 255
  %i.b = tail call ptr @__ctype_b_loc() #13
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.d = zext nneg i32 %i.a to i64                ; 2 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.d
  %i.f = load i16, ptr %i.e, align 2, !tbaa !63
  %i.g = zext i16 %i.f to i32                     ; 2 uses
  %i.h = and i32 %i.g, 256
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__ctype_tolower_loc() #13
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.j = and i32 %i.g, 512
  %.not28 = icmp eq i32 %i.j, 0
  br i1 %.not28, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @__ctype_toupper_loc() #13
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.d
  %.sink = phi ptr [ %i.k, %bb.d ], [ %i.i, %bb.b ]
  %i.l = load ptr, ptr %.sink, align 8, !tbaa !93
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.d
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c
  %.0.in = phi i32 [ %0, %bb.c ], [ %i.n, %.sink.split ]
  %.0 = trunc i32 %.0.in to i8
  ret i8 %.0
}

declare ptr @cli_realloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc signext i8 @p_b_symbol(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19     ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 7 uses
  %i.d = icmp ult ptr %i.a, %i.c
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !21
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  store i32 7, ptr %i.e, align 8, !tbaa !21
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.b
  store ptr @nuls, ptr %i.b, align 8, !tbaa !20
  br label %bb.s

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.i = icmp ult ptr %i.h, %i.c
  br i1 %i.i, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d
  %i.j = load i8, ptr %i.a, align 1, !tbaa !34
  %i.k = icmp eq i8 %i.j, 91
  br i1 %i.k, label %bb.f, label %bb.s

bb.f:                                             ; preds = %bb.e
  %i.l = load i8, ptr %i.h, align 1, !tbaa !34
  %i.m = icmp eq i8 %i.l, 46
  br i1 %i.m, label %bb.g, label %bb.s

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 6 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !19
  %1 = ptrtoint ptr %i.n to i64
  %i.o = icmp ult ptr %i.n, %i.c
  br i1 %i.o, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.g, %.critedge34.i
  %i.p = phi ptr [ %i.q, %.critedge34.i ], [ %i.n, %bb.g ] ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 5 uses
  %i.r = icmp ult ptr %i.q, %i.c
  br i1 %i.r, label %bb.h, label %.critedge34.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.s = load i8, ptr %i.p, align 1, !tbaa !34
  %i.t = icmp eq i8 %i.s, 46
  br i1 %i.t, label %bb.i, label %.critedge34.i

bb.i:                                             ; preds = %bb.h
  %i.u = load i8, ptr %i.q, align 1, !tbaa !34
  %.not36.i = icmp eq i8 %i.u, 93
  br i1 %.not36.i, label %bb.k, label %.critedge34.i

.critedge34.i:                                    ; preds = %bb.i, %bb.h, %.lr.ph.i
  store ptr %i.q, ptr %0, align 8, !tbaa !19
  %exitcond.not.i = icmp eq ptr %i.q, %i.c
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !85

.critedge.i:                                      ; preds = %.critedge34.i, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !21
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.j, label %p_b_coll_elem.exit.thread

bb.j:                                             ; preds = %.critedge.i
  store i32 7, ptr %i.v, align 8, !tbaa !21
  br label %p_b_coll_elem.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.y = ptrtoint ptr %i.p to i64
  %i.z = sub i64 %i.y, %1                         ; 2 uses
  %sext.i = shl i64 %i.z, 32
  %i.aa = ashr exact i64 %sext.i, 32              ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.o, %bb.k
  %i.ab = phi ptr [ @.str.27, %bb.k ], [ %i.aj, %bb.o ] ; 2 uses
  %.02741.i = phi ptr [ @cnames, %bb.k ], [ %i.ai, %bb.o ] ; 2 uses
  %i.ac = tail call i32 @strncmp(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.n, i64 noundef %i.aa) #12
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds i8, ptr %i.ab, i64 %i.aa
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !34
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %.02741.i, i64 8
  br label %p_b_coll_elem.exit

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %.02741.i, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !88 ; 2 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %bb.p, label %bb.l, !llvm.loop !89

bb.p:                                             ; preds = %bb.o
  %i.ak = and i64 %i.z, 4294967295
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %p_b_coll_elem.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !21
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.r, label %p_b_coll_elem.exit.thread

bb.r:                                             ; preds = %bb.q
  store i32 3, ptr %i.am, align 8, !tbaa !21
  br label %p_b_coll_elem.exit.thread

p_b_coll_elem.exit:                               ; preds = %bb.p, %bb.n
  %.0.i.in = phi ptr [ %i.ah, %bb.n ], [ %i.n, %bb.p ]
  %.0.i = load i8, ptr %.0.i.in, align 1, !tbaa !34 ; 5 uses
  %i.ap = icmp ult ptr %i.p, %i.c
  br i1 %i.ap, label %bb.t, label %p_b_coll_elem.exit.thread

bb.s:                                             ; preds = %.thread, %bb.d, %bb.e, %bb.f
  %i.aq = phi ptr [ @nuls, %.thread ], [ %i.a, %bb.f ], [ %i.a, %bb.d ], [ %i.a, %bb.e ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  store ptr %i.ar, ptr %0, align 8, !tbaa !19
  %i.as = load i8, ptr %i.aq, align 1, !tbaa !34
  br label %bb.y

bb.t:                                             ; preds = %p_b_coll_elem.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %i.au = icmp ult ptr %i.at, %i.c
  br i1 %i.au, label %bb.u, label %p_b_coll_elem.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.av = load i8, ptr %i.p, align 1, !tbaa !34
  %i.aw = icmp eq i8 %i.av, 46
  br i1 %i.aw, label %bb.v, label %p_b_coll_elem.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.ax = load i8, ptr %i.at, align 1, !tbaa !34
  %i.ay = icmp eq i8 %i.ax, 93
  br i1 %i.ay, label %bb.w, label %p_b_coll_elem.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.az = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  store ptr %i.az, ptr %0, align 8, !tbaa !19
  br label %bb.y

p_b_coll_elem.exit.thread:                        ; preds = %bb.q, %bb.r, %.critedge.i, %bb.j, %p_b_coll_elem.exit, %bb.t, %bb.u, %bb.v
  %.0.i44 = phi i8 [ %.0.i, %bb.v ], [ %.0.i, %p_b_coll_elem.exit ], [ %.0.i, %bb.t ], [ %.0.i, %bb.u ], [ 0, %.critedge.i ], [ 0, %bb.j ], [ 0, %bb.r ], [ 0, %bb.q ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !21
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.x, label %seterr.exit27

bb.x:                                             ; preds = %p_b_coll_elem.exit.thread
  store i32 3, ptr %i.ba, align 8, !tbaa !21
  br label %seterr.exit27

seterr.exit27:                                    ; preds = %p_b_coll_elem.exit.thread, %bb.x
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.b, align 8, !tbaa !20
  br label %bb.y

bb.y:                                             ; preds = %seterr.exit27, %bb.w, %bb.s
  %.0 = phi i8 [ %i.as, %bb.s ], [ %.0.i, %bb.w ], [ %.0.i44, %seterr.exit27 ]
  ret i8 %.0
}

declare i64 @cli_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @bothcases(ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.c = trunc i32 %1 to i8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  store i8 %i.c, ptr %i.a, align 1, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 93, ptr %i.e, align 1, !tbaa !34
  store i8 0, ptr %i.d, align 1, !tbaa !34
  %i.f = load <2 x ptr>, ptr %0, align 8, !tbaa !57
  store ptr %i.a, ptr %0, align 8, !tbaa !19
  store ptr %i.d, ptr %i.b, align 8, !tbaa !20
  call fastcc void @p_bracket(ptr noundef %0)
  store <2 x ptr> %i.f, ptr %0, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !11, i64 16}
!9 = !{!"", !5, i64 0, !10, i64 8, !11, i64 16, !13, i64 24}
!10 = !{!"long", !6, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 _ZTS7re_guts", !12, i64 0}
!14 = !{!15, !10, i64 32}
!15 = !{!"parse", !11, i64 0, !11, i64 8, !5, i64 16, !16, i64 24, !10, i64 32, !10, i64 40, !5, i64 48, !13, i64 56, !6, i64 64, !6, i64 144}
!16 = !{!"p1 long", !12, i64 0}
!17 = !{!15, !16, i64 24}
!18 = !{!15, !13, i64 56}
!19 = !{!15, !11, i64 0}
!20 = !{!15, !11, i64 8}
!21 = !{!15, !5, i64 16}
!22 = !{!15, !5, i64 48}
!23 = !{!24, !5, i64 16}
!24 = !{!"re_guts", !5, i64 0, !16, i64 8, !5, i64 16, !5, i64 20, !12, i64 24, !11, i64 32, !5, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !11, i64 88, !11, i64 96, !5, i64 104, !10, i64 112, !5, i64 120, !10, i64 128, !6, i64 136}
!25 = !{!24, !5, i64 40}
!26 = !{!24, !11, i64 96}
!27 = !{!24, !5, i64 104}
!28 = !{!24, !10, i64 112}
!29 = !{!24, !11, i64 88}
!30 = !{!24, !5, i64 120}
!31 = !{!15, !10, i64 40}
!32 = !{!10, !10, i64 0}
!33 = !{!24, !10, i64 56}
!34 = !{!6, !6, i64 0}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!24, !10, i64 64}
!38 = !{!24, !5, i64 20}
!39 = !{!24, !11, i64 32}
!40 = distinct !{!40, !36}
!41 = !{!24, !5, i64 84}
end_hunk_1
