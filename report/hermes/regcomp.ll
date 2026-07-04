inline.NumInlined: 141
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@p_bracket:bb.a
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.y, !llvm.loop !73

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.y
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod381 = trunc i32 %i.bi to i1
  tail call void @llvm.assume(i1 %lcmp.mod381)
  %i.cu = lshr i64 %indvars.iv.i.epil.init, 3
  %i.cv = and i64 %i.cu, 536870911
  %i.cw = mul nsw i64 %i.cv, %i.bm
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cw
  %i.cy = getelementptr inbounds nuw [32 x i8], ptr %i.ch, i64 %indvars.iv.i.epil.init
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !71
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.x
  %i.cz = sub nsw i64 %i.bt, %i.bm
  %i.da = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cz
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.da, i8 0, i64 %i.bm, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge.i, %bb.t
  %i.db = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.bg, %bb.t ] ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !70 ; 2 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %.thread.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !38 ; 2 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %.thread.i, label %allocset.exit

.thread.i:                                        ; preds = %bb.aa, %bb.z, %bb.w, %bb.v, %bb.u
  %i.di = phi ptr [ %.pre.i, %bb.w ], [ %.pre64.i, %bb.v ], [ %i.bg, %bb.u ], [ %i.db, %bb.z ], [ %i.db, %bb.aa ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !70
  tail call void @free(ptr noundef %i.dk) #16
  %i.dl = load ptr, ptr %i.bf, align 8, !tbaa !17 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  store ptr null, ptr %i.dm, align 8, !tbaa !70
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !38
  tail call void @free(ptr noundef %i.do) #16
  %i.dp = load ptr, ptr %i.bf, align 8, !tbaa !17
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  store ptr null, ptr %i.dq, align 8, !tbaa !38
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !20
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.ab, label %allocset.exit.thread

bb.ab:                                            ; preds = %.thread.i
  store i32 12, ptr %i.dr, align 8, !tbaa !20
  br label %allocset.exit.thread

allocset.exit.thread:                             ; preds = %.thread.i, %bb.ab
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.c, align 8, !tbaa !19
  br label %freeset.exit

allocset.exit:                                    ; preds = %bb.aa
  %i.du = sext i32 %i.bi to i64
  %i.dv = getelementptr inbounds [32 x i8], ptr %i.dd, i64 %i.du ; 34 uses
  %i.dw = sdiv i32 %i.bi, 8
  %i.dx = sext i32 %i.dw to i64
  %i.dy = mul nsw i64 %i.bm, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dy ; 2 uses
  store ptr %i.dz, ptr %i.dv, align 8, !tbaa !71
  %i.ea = and i32 %i.bi, 7
  %i.eb = shl nuw nsw i32 1, %i.ea
  %i.ec = trunc nuw i32 %i.eb to i8               ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 21 uses
  store i8 %i.ec, ptr %i.ed, align 8, !tbaa !74
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dv, i64 9 ; 42 uses
  store i8 0, ptr %i.ee, align 1, !tbaa !75
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, i8 0, i64 16, i1 false)
  %i.eg = load ptr, ptr %0, align 8, !tbaa !18    ; 5 uses
  %i.eh = load ptr, ptr %i.c, align 8, !tbaa !19  ; 2 uses
  %i.ei = icmp ult ptr %i.eg, %i.eh
  br i1 %i.ei, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %allocset.exit
  %i.ej = load i8, ptr %i.eg, align 1, !tbaa !33
  %i.ek = icmp eq i8 %i.ej, 94
  br i1 %i.ek, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 1 ; 2 uses
  store ptr %i.el, ptr %0, align 8, !tbaa !18
  br label %bb.ae

bb.ae:                                            ; preds = %allocset.exit, %bb.ac, %bb.ad
  %i.em = phi ptr [ %i.el, %bb.ad ], [ %i.eg, %bb.ac ], [ %i.eg, %allocset.exit ] ; 3 uses
  %.not123 = phi i1 [ false, %bb.ad ], [ true, %bb.ac ], [ true, %allocset.exit ]
  %i.en = icmp ult ptr %i.em, %i.eh
  br i1 %i.en, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.eo = load i8, ptr %i.em, align 1, !tbaa !33  ; 2 uses
  switch i8 %i.eo, label %bb.ah [
    i8 93, label %.sink.split
    i8 45, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af
  br label %.sink.split

.sink.split:                                      ; preds = %bb.af, %bb.ag
  %.sink334 = phi i64 [ 45, %bb.ag ], [ 93, %bb.af ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  store ptr %i.ep, ptr %0, align 8, !tbaa !18
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.sink334 ; 2 uses
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !33
  %i.es = or i8 %i.er, %i.ec
  store i8 %i.es, ptr %i.eq, align 1, !tbaa !33
  %i.et = load i8, ptr %i.ee, align 1, !tbaa !75
  %i.eu = add i8 %i.et, %i.eo
  store i8 %i.eu, ptr %i.ee, align 1, !tbaa !75
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split, %bb.af, %bb.ae
  %i.ev = load ptr, ptr %0, align 8, !tbaa !18    ; 3 uses
  %i.ew = load ptr, ptr %i.c, align 8, !tbaa !19  ; 3 uses
  %i.ex = icmp ult ptr %i.ev, %i.ew
  br i1 %i.ex, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.ah
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 22 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dv, i64 24 ; 4 uses
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph, %p_b_term.exit
  %i.fa = phi ptr [ %i.ew, %.lr.ph ], [ %i.nf, %p_b_term.exit ] ; 6 uses
  %i.fb = phi ptr [ %i.ev, %.lr.ph ], [ %i.ng, %p_b_term.exit ] ; 5 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !33  ; 3 uses
  %.not = icmp eq i8 %i.fc, 93
  br i1 %.not, label %.critedge, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 1 ; 4 uses
  %i.fe = icmp ult ptr %i.fd, %i.fa               ; 2 uses
  %i.ff = icmp eq i8 %i.fc, 45
  %or.cond = and i1 %i.fe, %i.ff
  br i1 %or.cond, label %bb.ak, label %.critedge131

bb.ak:                                            ; preds = %bb.aj
  %i.fg = load i8, ptr %i.fd, align 1, !tbaa !33
  %.not194 = icmp eq i8 %i.fg, 93
  br i1 %.not194, label %bb.cy, label %.critedge131.thread

.critedge131:                                     ; preds = %bb.aj
  switch i8 %i.fc, label %.thread106.i [
    i8 91, label %bb.al
    i8 45, label %.critedge131.thread
  ]

bb.al:                                            ; preds = %.critedge131
  br i1 %i.fe, label %bb.am, label %.thread106.i

.critedge131.thread:                              ; preds = %.critedge131, %bb.ak
  %i.fh = load i32, ptr %i.ey, align 8, !tbaa !20
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %.critedge.thread.sink.split, label %.critedge.thread

bb.am:                                            ; preds = %bb.al
  %i.fj = load i8, ptr %i.fd, align 1, !tbaa !33
  switch i8 %i.fj, label %.thread106.i [
    i8 58, label %bb.an
    i8 61, label %bb.bu
  ]

bb.an:                                            ; preds = %bb.am
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fb, i64 2 ; 3 uses
  store ptr %i.fk, ptr %0, align 8, !tbaa !18
  %i.fl = icmp ult ptr %i.fk, %i.fa
  br i1 %i.fl, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fm = load i32, ptr %i.ey, align 8, !tbaa !20
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %bb.ap, label %seterr.exit95.i

bb.ap:                                            ; preds = %bb.ao
  store i32 7, ptr %i.ey, align 8, !tbaa !20
  br label %seterr.exit95.i

seterr.exit95.i:                                  ; preds = %bb.ap, %bb.ao
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !56
  br label %bb.aq

bb.aq:                                            ; preds = %seterr.exit95.i, %bb.an
  %i.fo = phi ptr [ @nuls, %seterr.exit95.i ], [ %i.fa, %bb.an ] ; 3 uses
  %i.fp = phi ptr [ @nuls, %seterr.exit95.i ], [ %i.fk, %bb.an ] ; 9 uses
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !33
  switch i8 %i.fq, label %bb.at [
    i8 93, label %bb.ar
    i8 45, label %bb.ar
  ]

bb.ar:                                            ; preds = %bb.aq, %bb.aq
  %i.fr = load i32, ptr %i.ey, align 8, !tbaa !20
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %bb.as, label %.thread.i145

bb.as:                                            ; preds = %bb.ar
  store i32 4, ptr %i.ey, align 8, !tbaa !20
  br label %.thread.i145

.thread.i145:                                     ; preds = %bb.as, %bb.ar
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !56
  br label %.critedge.i.i

bb.at:                                            ; preds = %bb.aq
  %i.ft = icmp ult ptr %i.fp, %i.fo
  br i1 %i.ft, label %.lr.ph.i.i, label %.critedge.i.i

.lr.ph.i.i:                                       ; preds = %bb.at
  %1 = ptrtoaddr ptr %i.fo to i64
  %2 = ptrtoaddr ptr %i.fp to i64
  %i.fu = tail call ptr @__ctype_b_loc() #21
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !60
  %i.fw = sub i64 %1, %2
  %scevgep.i.i = getelementptr i8, ptr %i.fp, i64 %i.fw
  br label %bb.au

bb.au:                                            ; preds = %bb.av, %.lr.ph.i.i
  %i.fx = phi ptr [ %i.fp, %.lr.ph.i.i ], [ %i.gd, %bb.av ] ; 3 uses
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !33
  %i.fz = zext i8 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.fv, i64 %i.fz
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !62
  %i.gc = and i16 %i.gb, 1024
  %.not.i.i147 = icmp eq i16 %i.gc, 0
  br i1 %.not.i.i147, label %.critedge.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fx, i64 1 ; 3 uses
  store ptr %i.gd, ptr %0, align 8, !tbaa !18
  %exitcond.not.i.i = icmp eq ptr %i.gd, %i.fo
  br i1 %exitcond.not.i.i, label %.critedge.i.i, label %bb.au, !llvm.loop !76

.critedge.i.i:                                    ; preds = %bb.av, %bb.au, %bb.at, %.thread.i145
  %3 = phi ptr [ %i.fp, %bb.at ], [ @nuls, %.thread.i145 ], [ %i.fp, %bb.au ], [ %i.fp, %bb.av ] ; 13 uses
  %.lcssa37.i.i = phi ptr [ %i.fp, %bb.at ], [ @nuls, %.thread.i145 ], [ %scevgep.i.i, %bb.av ], [ %i.fx, %bb.au ]
  %4 = ptrtoint ptr %.lcssa37.i.i to i64
  %5 = ptrtoint ptr %3 to i64
  %i.ge = sub i64 %4, %5                          ; 14 uses
  %i.gf = tail call i32 @strncmp(ptr noundef nonnull @.str.2, ptr noundef nonnull %3, i64 noundef %i.ge) #17
  %i.gg = icmp eq i32 %i.gf, 0
  %i.gh = icmp eq i64 %i.ge, 5                    ; 11 uses
  %or.cond.i.i = and i1 %i.gg, %i.gh
  br i1 %or.cond.i.i, label %bb.bj, label %bb.aw

bb.aw:                                            ; preds = %.critedge.i.i
  %i.gi = tail call i32 @strncmp(ptr noundef nonnull @.str.5, ptr noundef nonnull %3, i64 noundef %i.ge) #17
  %i.gj = icmp eq i32 %i.gi, 0
  %or.cond53.i.i = and i1 %i.gh, %i.gj
  br i1 %or.cond53.i.i, label %bb.bj, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gk = tail call i32 @strncmp(ptr noundef nonnull @.str.7, ptr noundef nonnull %3, i64 noundef %i.ge) #17
  %i.gl = icmp eq i32 %i.gk, 0
  %or.cond54.i.i = and i1 %i.gh, %i.gl
  br i1 %or.cond54.i.i, label %bb.bj, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gm = tail call i32 @strncmp(ptr noundef nonnull @.str.9, ptr noundef nonnull %3, i64 noundef %i.ge) #17
  %i.gn = icmp eq i32 %i.gm, 0
  %or.cond55.i.i = and i1 %i.gh, %i.gn
  br i1 %or.cond55.i.i, label %bb.bj, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.go = tail call i32 @strncmp(ptr noundef nonnull @.str.11, ptr noundef nonnull %3, i64 noundef %i.ge) #17
  %i.gp = icmp eq i32 %i.go, 0
  %or.cond56.i.i = and i1 %i.gh, %i.gp
  br i1 %or.cond56.i.i, label %bb.bj, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gq = tail call i32 @strncmp(ptr noundef nonnull @.str.13, ptr noundef nonnull %3, i64 noundef %i.ge) #17
  %i.gr = icmp eq i32 %i.gq, 0
  %or.cond57.i.i = and i1 %i.gh, %i.gr
  br i1 %or.cond57.i.i, label %bb.bj, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gs = tail call i32 @strncmp(ptr noundef nonnull @.str.15, ptr noundef nonnull %3, i64 noundef %i.ge) #17
  %i.gt = icmp eq i32 %i.gs, 0
  %or.cond58.i.i = and i1 %i.gh, %i.gt
  br i1 %or.cond58.i.i, label %bb.bj, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gu = tail call i32 @strncmp(ptr noundef nonnull @.str.17, ptr noundef nonnull %3, i64 noundef %i.ge) #17
  %i.gv = icmp eq i32 %i.gu, 0
  %or.cond59.i.i = and i1 %i.gh, %i.gv
  br i1 %or.cond59.i.i, label %bb.bj, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gw = tail call i32 @strncmp(ptr noundef nonnull @.str.19, ptr noundef nonnull %3, i64 noundef %i.ge) #17
  %i.gx = icmp eq i32 %i.gw, 0
  %or.cond60.i.i = and i1 %i.gh, %i.gx
  br i1 %or.cond60.i.i, label %bb.bj, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gy = tail call i32 @strncmp(ptr noundef nonnull @.str.21, ptr noundef nonnull %3, i64 noundef %i.ge) #17
  %i.gz = icmp eq i32 %i.gy, 0
  %or.cond61.i.i = and i1 %i.gh, %i.gz
  br i1 %or.cond61.i.i, label %bb.bj, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ha = tail call i32 @strncmp(ptr noundef nonnull @.str.23, ptr noundef nonnull %3, i64 noundef %i.ge) #17
  %i.hb = icmp eq i32 %i.ha, 0
  %or.cond62.i.i = and i1 %i.gh, %i.hb
  br i1 %or.cond62.i.i, label %bb.bj, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hc = tail call i32 @strncmp(ptr noundef nonnull @.str.25, ptr noundef nonnull %3, i64 noundef %i.ge) #17
  %i.hd = icmp eq i32 %i.hc, 0
  %i.he = icmp eq i64 %i.ge, 6
  %or.cond63.i.i = and i1 %i.he, %i.hd
  br i1 %or.cond63.i.i, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hf = load i32, ptr %i.ey, align 8, !tbaa !20
  %i.hg = icmp eq i32 %i.hf, 0
  br i1 %i.hg, label %bb.bi, label %seterr.exit.i.i146

bb.bi:                                            ; preds = %bb.bh
  store i32 4, ptr %i.ey, align 8, !tbaa !20
  br label %seterr.exit.i.i146

seterr.exit.i.i146:                               ; preds = %bb.bi, %bb.bh
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !56
  br label %p_b_cclass.exit.i

bb.bj:                                            ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %.critedge.i.i
  %.040.lcssa.i.i = phi ptr [ @cclasses, %.critedge.i.i ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 24), %bb.aw ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 48), %bb.ax ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 72), %bb.ay ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 96), %bb.az ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 120), %bb.ba ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 144), %bb.bb ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 168), %bb.bc ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 192), %bb.bd ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 216), %bb.be ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 240), %bb.bf ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 264), %bb.bg ] ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.040.lcssa.i.i, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !77 ; 2 uses
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !33  ; 2 uses
  %.not3441.i.i = icmp eq i8 %i.hj, 0
  br i1 %.not3441.i.i, label %._crit_edge.i.i, label %.lr.ph43.i.i

.lr.ph43.i.i:                                     ; preds = %bb.bj, %.lr.ph43.i.i
  %i.hk = phi i8 [ %i.hu, %.lr.ph43.i.i ], [ %i.hj, %bb.bj ] ; 2 uses
  %.02942.i.i = phi ptr [ %i.hl, %.lr.ph43.i.i ], [ %i.hi, %bb.bj ]
  %i.hl = getelementptr inbounds nuw i8, ptr %.02942.i.i, i64 1 ; 2 uses
  %i.hm = load i8, ptr %i.ed, align 8, !tbaa !74
  %i.hn = load ptr, ptr %i.dv, align 8, !tbaa !71
  %i.ho = zext i8 %i.hk to i64
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.ho ; 2 uses
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !33
  %i.hr = or i8 %i.hq, %i.hm
  store i8 %i.hr, ptr %i.hp, align 1, !tbaa !33
  %i.hs = load i8, ptr %i.ee, align 1, !tbaa !75
  %i.ht = add i8 %i.hs, %i.hk
  store i8 %i.ht, ptr %i.ee, align 1, !tbaa !75
  %i.hu = load i8, ptr %i.hl, align 1, !tbaa !33  ; 2 uses
  %.not34.i.i = icmp eq i8 %i.hu, 0
  br i1 %.not34.i.i, label %._crit_edge.i.i, label %.lr.ph43.i.i, !llvm.loop !79

._crit_edge.i.i:                                  ; preds = %.lr.ph43.i.i, %bb.bj
  %i.hv = getelementptr inbounds nuw i8, ptr %.040.lcssa.i.i, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !80 ; 2 uses
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !33
  %.not3544.i.i = icmp eq i8 %i.hx, 0
  br i1 %.not3544.i.i, label %p_b_cclass.exit.i, label %.lr.ph47.i.i

.lr.ph47.i.i:                                     ; preds = %._crit_edge.i.i, %mcadd.exit.i.i
  %.145.i.i = phi ptr [ %i.ip, %mcadd.exit.i.i ], [ %i.hw, %._crit_edge.i.i ] ; 4 uses
  %i.hy = load i64, ptr %i.ef, align 8, !tbaa !81 ; 3 uses
  %i.hz = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.145.i.i) #17
  %i.ia = add i64 %i.hy, 1
  %i.ib = add i64 %i.ia, %i.hz                    ; 2 uses
  store i64 %i.ib, ptr %i.ef, align 8, !tbaa !81
  %i.ic = load ptr, ptr %i.ez, align 8, !tbaa !82
  %i.id = tail call ptr @realloc(ptr noundef %i.ic, i64 noundef %i.ib) #20 ; 3 uses
  %i.ie = icmp eq ptr %i.id, null
  br i1 %i.ie, label %bb.bk, label %bb.bo

bb.bk:                                            ; preds = %.lr.ph47.i.i
  %i.if = load ptr, ptr %i.ez, align 8, !tbaa !82 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.if, null
  br i1 %.not.i.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void @free(ptr noundef nonnull %i.if) #16
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  store ptr null, ptr %i.ez, align 8, !tbaa !82
  %i.ig = load i32, ptr %i.ey, align 8, !tbaa !20
  %i.ih = icmp eq i32 %i.ig, 0
  br i1 %i.ih, label %bb.bn, label %seterr.exit.i.i.i

bb.bn:                                            ; preds = %bb.bm
  store i32 12, ptr %i.ey, align 8, !tbaa !20
  br label %seterr.exit.i.i.i

seterr.exit.i.i.i:                                ; preds = %bb.bn, %bb.bm
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !56
  br label %mcadd.exit.i.i

bb.bo:                                            ; preds = %.lr.ph47.i.i
  store ptr %i.id, ptr %i.ez, align 8, !tbaa !82
  %i.ii = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.hy
  %i.ij = getelementptr inbounds i8, ptr %i.ii, i64 -1
  %i.ik = load i64, ptr %i.ef, align 8, !tbaa !81
  %reass.sub = sub i64 %i.ik, %i.hy
  %i.il = add i64 %reass.sub, 1
  %i.im = tail call i64 @llvh_strlcpy(ptr noundef nonnull %i.ij, ptr noundef nonnull %.145.i.i, i64 noundef %i.il) #16 ; 0 uses
  br label %mcadd.exit.i.i

mcadd.exit.i.i:                                   ; preds = %bb.bo, %seterr.exit.i.i.i
  %i.in = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.145.i.i) #17
  %i.io = getelementptr i8, ptr %.145.i.i, i64 %i.in
  %i.ip = getelementptr i8, ptr %i.io, i64 1      ; 2 uses
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !33
  %.not35.i.i = icmp eq i8 %i.iq, 0
  br i1 %.not35.i.i, label %p_b_cclass.exit.i, label %.lr.ph47.i.i, !llvm.loop !83

p_b_cclass.exit.i:                                ; preds = %mcadd.exit.i.i, %._crit_edge.i.i, %seterr.exit.i.i146
  %i.ir = load ptr, ptr %0, align 8, !tbaa !18    ; 4 uses
  %i.is = load ptr, ptr %i.c, align 8, !tbaa !19  ; 3 uses
  %i.it = icmp ult ptr %i.ir, %i.is
  br i1 %i.it, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %p_b_cclass.exit.i
  %i.iu = load i32, ptr %i.ey, align 8, !tbaa !20
  %i.iv = icmp eq i32 %i.iu, 0
  br i1 %i.iv, label %.critedge.thread.sink.split, label %.critedge.thread

bb.bq:                                            ; preds = %p_b_cclass.exit.i
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ir, i64 1 ; 2 uses
  %i.ix = icmp ult ptr %i.iw, %i.is
  br i1 %i.ix, label %bb.br, label %.thread146.i

bb.br:                                            ; preds = %bb.bq
  %i.iy = load i8, ptr %i.ir, align 1, !tbaa !33
  %i.iz = icmp eq i8 %i.iy, 58
  br i1 %i.iz, label %bb.bs, label %.thread146.i

bb.bs:                                            ; preds = %bb.br
  %i.ja = load i8, ptr %i.iw, align 1, !tbaa !33
  %i.jb = icmp eq i8 %i.ja, 93
  br i1 %i.jb, label %bb.bt, label %.thread146.i

bb.bt:                                            ; preds = %bb.bs
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ir, i64 2 ; 2 uses
  store ptr %i.jc, ptr %0, align 8, !tbaa !18
  br label %p_b_term.exit

.thread146.i:                                     ; preds = %bb.bs, %bb.br, %bb.bq
  %.pr = load i32, ptr %i.ey, align 8, !tbaa !20
  %i.jd = icmp eq i32 %.pr, 0
  br i1 %i.jd, label %.critedge.thread.sink.split, label %.critedge.thread

bb.bu:                                            ; preds = %bb.am
  %i.je = getelementptr inbounds nuw i8, ptr %i.fb, i64 2 ; 3 uses
  store ptr %i.je, ptr %0, align 8, !tbaa !18
  %i.jf = icmp ult ptr %i.je, %i.fa
  br i1 %i.jf, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jg = load i32, ptr %i.ey, align 8, !tbaa !20
  %i.jh = icmp eq i32 %i.jg, 0
  br i1 %i.jh, label %bb.bw, label %seterr.exit99.i

bb.bw:                                            ; preds = %bb.bv
  store i32 7, ptr %i.ey, align 8, !tbaa !20
  br label %seterr.exit99.i

seterr.exit99.i:                                  ; preds = %bb.bw, %bb.bv
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !56
  br label %bb.bx

bb.bx:                                            ; preds = %seterr.exit99.i, %bb.bu
  %i.ji = phi ptr [ @nuls, %seterr.exit99.i ], [ %i.fa, %bb.bu ] ; 3 uses
  %i.jj = phi ptr [ @nuls, %seterr.exit99.i ], [ %i.je, %bb.bu ] ; 6 uses
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !33
  switch i8 %i.jk, label %bb.bz [
    i8 93, label %bb.by
    i8 45, label %bb.by
  ]

bb.by:                                            ; preds = %bb.bx, %bb.bx
  %i.jl = load i32, ptr %i.ey, align 8, !tbaa !20
  %i.jm = icmp eq i32 %i.jl, 0
  br i1 %i.jm, label %seterr.exit.i.i101.i.sink.split, label %seterr.exit.i.i101.i

bb.bz:                                            ; preds = %bb.bx
  %i.jn = icmp ult ptr %i.jj, %i.ji
  br i1 %i.jn, label %.lr.ph.i.i.i, label %.critedge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bz, %.critedge34.i.i.i
  %i.jo = phi ptr [ %i.jp, %.critedge34.i.i.i ], [ %i.jj, %bb.bz ] ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 1 ; 5 uses
  %i.jq = icmp ult ptr %i.jp, %i.ji
  br i1 %i.jq, label %bb.ca, label %.critedge34.i.i.i

bb.ca:                                            ; preds = %.lr.ph.i.i.i
  %i.jr = load i8, ptr %i.jo, align 1, !tbaa !33
  %i.js = icmp eq i8 %i.jr, 61
  br i1 %i.js, label %bb.cb, label %.critedge34.i.i.i

bb.cb:                                            ; preds = %bb.ca
  %i.jt = load i8, ptr %i.jp, align 1, !tbaa !33
  %.not36.i.i.i = icmp eq i8 %i.jt, 93
  br i1 %.not36.i.i.i, label %bb.cc, label %.critedge34.i.i.i

.critedge34.i.i.i:                                ; preds = %bb.cb, %bb.ca, %.lr.ph.i.i.i
  store ptr %i.jp, ptr %0, align 8, !tbaa !18
  %exitcond.not.i.i.i = icmp eq ptr %i.jp, %i.ji
  br i1 %exitcond.not.i.i.i, label %.critedge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !84

.critedge.i.i.i:                                  ; preds = %.critedge34.i.i.i, %bb.bz
  %.pr308 = load i32, ptr %i.ey, align 8, !tbaa !20
  %i.ju = icmp eq i32 %.pr308, 0
  br i1 %i.ju, label %seterr.exit.i.i101.i.sink.split, label %seterr.exit.i.i101.i

seterr.exit.i.i101.i.sink.split:                  ; preds = %.critedge.i.i.i, %bb.by
  %.sink335 = phi i32 [ 3, %bb.by ], [ 7, %.critedge.i.i.i ]
  store i32 %.sink335, ptr %i.ey, align 8, !tbaa !20
  br label %seterr.exit.i.i101.i

seterr.exit.i.i101.i:                             ; preds = %seterr.exit.i.i101.i.sink.split, %bb.by, %.critedge.i.i.i
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !56
  br label %p_b_eclass.exit.i

bb.cc:                                            ; preds = %bb.cb
  %i.jv = ptrtoint ptr %i.jo to i64
  %6 = ptrtoint ptr %i.jj to i64
  %i.jw = sub i64 %i.jv, %6                       ; 3 uses
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cg, %bb.cc
  %i.jx = phi ptr [ @.str.27, %bb.cc ], [ %i.kf, %bb.cg ] ; 2 uses
  %.02741.i.i.i = phi ptr [ @cnames, %bb.cc ], [ %i.ke, %bb.cg ] ; 2 uses
  %i.jy = tail call i32 @strncmp(ptr noundef nonnull %i.jx, ptr noundef nonnull %i.jj, i64 noundef %i.jw) #17
  %i.jz = icmp eq i32 %i.jy, 0
  br i1 %i.jz, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.ka = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jx) #17
  %i.kb = icmp eq i64 %i.ka, %i.jw
  br i1 %i.kb, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.kc = getelementptr inbounds nuw i8, ptr %.02741.i.i.i, i64 8
  %i.kd = load i8, ptr %i.kc, align 8, !tbaa !85
  br label %p_b_eclass.exit.i

bb.cg:                                            ; preds = %bb.ce, %bb.cd
  %i.ke = getelementptr inbounds nuw i8, ptr %.02741.i.i.i, i64 16 ; 2 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !87 ; 2 uses
  %.not.i.i102.i = icmp eq ptr %i.kf, null
  br i1 %.not.i.i102.i, label %bb.ch, label %bb.cd, !llvm.loop !88

bb.ch:                                            ; preds = %bb.cg
  %i.kg = icmp eq i64 %i.jw, 1
  br i1 %i.kg, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.kh = load i8, ptr %i.jj, align 1, !tbaa !33
  br label %p_b_eclass.exit.i

bb.cj:                                            ; preds = %bb.ch
  %i.ki = load i32, ptr %i.ey, align 8, !tbaa !20
  %i.kj = icmp eq i32 %i.ki, 0
  br i1 %i.kj, label %bb.ck, label %seterr.exit35.i.i.i

bb.ck:                                            ; preds = %bb.cj
  store i32 3, ptr %i.ey, align 8, !tbaa !20
  br label %seterr.exit35.i.i.i

seterr.exit35.i.i.i:                              ; preds = %bb.ck, %bb.cj
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !56
  br label %p_b_eclass.exit.i

p_b_eclass.exit.i:                                ; preds = %seterr.exit35.i.i.i, %bb.ci, %bb.cf, %seterr.exit.i.i101.i
  %.0.i.i.i = phi i8 [ %i.kd, %bb.cf ], [ %i.kh, %bb.ci ], [ 0, %seterr.exit35.i.i.i ], [ 0, %seterr.exit.i.i101.i ] ; 2 uses
  %i.kk = load i8, ptr %i.ed, align 8, !tbaa !74
  %i.kl = load ptr, ptr %i.dv, align 8, !tbaa !71
  %i.km = zext i8 %.0.i.i.i to i64
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.km ; 2 uses
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !33
  %i.kp = or i8 %i.ko, %i.kk
  store i8 %i.kp, ptr %i.kn, align 1, !tbaa !33
  %i.kq = load i8, ptr %i.ee, align 1, !tbaa !75
  %i.kr = add i8 %i.kq, %.0.i.i.i
  store i8 %i.kr, ptr %i.ee, align 1, !tbaa !75
  %i.ks = load ptr, ptr %0, align 8, !tbaa !18    ; 4 uses
  %i.kt = load ptr, ptr %i.c, align 8, !tbaa !19  ; 3 uses
  %i.ku = icmp ult ptr %i.ks, %i.kt
  br i1 %i.ku, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %p_b_eclass.exit.i
  %i.kv = load i32, ptr %i.ey, align 8, !tbaa !20
  %i.kw = icmp eq i32 %i.kv, 0
  br i1 %i.kw, label %.critedge.thread.sink.split, label %.critedge.thread

bb.cm:                                            ; preds = %p_b_eclass.exit.i
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ks, i64 1 ; 2 uses
  %i.ky = icmp ult ptr %i.kx, %i.kt
  br i1 %i.ky, label %bb.cn, label %.thread148.i

bb.cn:                                            ; preds = %bb.cm
  %i.kz = load i8, ptr %i.ks, align 1, !tbaa !33
  %i.la = icmp eq i8 %i.kz, 61
  br i1 %i.la, label %bb.co, label %.thread148.i

bb.co:                                            ; preds = %bb.cn
  %i.lb = load i8, ptr %i.kx, align 1, !tbaa !33
  %i.lc = icmp eq i8 %i.lb, 93
  br i1 %i.lc, label %bb.cp, label %.thread148.i

bb.cp:                                            ; preds = %bb.co
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ks, i64 2 ; 2 uses
  store ptr %i.ld, ptr %0, align 8, !tbaa !18
  br label %p_b_term.exit

.thread148.i:                                     ; preds = %bb.co, %bb.cn, %bb.cm
  %.pr309 = load i32, ptr %i.ey, align 8, !tbaa !20
  %i.le = icmp eq i32 %.pr309, 0
  br i1 %i.le, label %.critedge.thread.sink.split, label %.critedge.thread

.thread106.i:                                     ; preds = %bb.am, %bb.al, %.critedge131
  %i.lf = tail call fastcc signext i8 @p_b_symbol(ptr noundef nonnull %0) ; 8 uses
  %i.lg = load ptr, ptr %0, align 8, !tbaa !18    ; 4 uses
  %i.lh = load ptr, ptr %i.c, align 8, !tbaa !19  ; 2 uses
  %i.li = icmp ult ptr %i.lg, %i.lh
  br i1 %i.li, label %bb.cq, label %.lr.ph.i141

bb.cq:                                            ; preds = %.thread106.i
  %i.lj = load i8, ptr %i.lg, align 1, !tbaa !33
  %i.lk = icmp eq i8 %i.lj, 45
  br i1 %i.lk, label %bb.cr, label %.lr.ph.i141

bb.cr:                                            ; preds = %bb.cq
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lg, i64 1 ; 4 uses
  %i.lm = icmp ult ptr %i.ll, %i.lh
  br i1 %i.lm, label %bb.cs, label %.lr.ph.i141

bb.cs:                                            ; preds = %bb.cr
  %i.ln = load i8, ptr %i.ll, align 1, !tbaa !33
  %.not.i143 = icmp eq i8 %i.ln, 93
  br i1 %.not.i143, label %.lr.ph.i141, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  store ptr %i.ll, ptr %0, align 8, !tbaa !18
  %i.lo = load i8, ptr %i.ll, align 1, !tbaa !33
  %i.lp = icmp eq i8 %i.lo, 45
  br i1 %i.lp, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lg, i64 2
  store ptr %i.lq, ptr %0, align 8, !tbaa !18
  br label %bb.cw

bb.cv:                                            ; preds = %bb.ct
  %i.lr = tail call fastcc signext i8 @p_b_symbol(ptr noundef nonnull %0)
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.080.i = phi i8 [ 45, %bb.cu ], [ %i.lr, %bb.cv ] ; 2 uses
  %.not93.i = icmp sgt i8 %i.lf, %.080.i
  br i1 %.not93.i, label %bb.cx, label %.lr.ph.i141

bb.cx:                                            ; preds = %bb.cw
  %i.ls = load i32, ptr %i.ey, align 8, !tbaa !20
  %i.lt = icmp eq i32 %i.ls, 0
  br i1 %i.lt, label %.critedge.thread.sink.split, label %.critedge.thread

.lr.ph.i141:                                      ; preds = %bb.cw, %bb.cs, %bb.cr, %bb.cq, %.thread106.i
  %.in151.i = phi i8 [ %i.lf, %.thread106.i ], [ %i.lf, %bb.cs ], [ %i.lf, %bb.cr ], [ %i.lf, %bb.cq ], [ %.080.i, %bb.cw ] ; 2 uses
  %i.lu = sext i8 %.in151.i to i32                ; 2 uses
  %i.lv = sext i8 %i.lf to i32                    ; 4 uses
  %i.lw = add nsw i32 %i.lu, %i.lv
  %i.lx = and i32 %i.lw, 1
  %lcmp.mod383.not.not = icmp eq i32 %i.lx, 0
  br i1 %lcmp.mod383.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i141
  %i.ly = load i8, ptr %i.ed, align 8, !tbaa !74
  %i.lz = load ptr, ptr %i.dv, align 8, !tbaa !71
  %i.ma = and i32 %i.lv, 255
  %i.mb = zext nneg i32 %i.ma to i64
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.mb ; 2 uses
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !33
  %i.me = or i8 %i.md, %i.ly
  store i8 %i.me, ptr %i.mc, align 1, !tbaa !33
  %i.mf = load i8, ptr %i.ee, align 1, !tbaa !75
  %i.mg = add i8 %i.mf, %i.lf
  store i8 %i.mg, ptr %i.ee, align 1, !tbaa !75
  %i.mh = add nsw i32 %i.lv, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i141
  %.0115.i.unr = phi i32 [ %i.lv, %.lr.ph.i141 ], [ %i.mh, %.prol.loopexit.unr-lcssa ]
  %i.mi = icmp eq i8 %.in151.i, %i.lf
  br i1 %i.mi, label %p_b_term.exit.loopexit, label %.lr.ph.i141.new

.lr.ph.i141.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i141.new
  %.0115.i = phi i32 [ %i.ne, %.lr.ph.i141.new ], [ %.0115.i.unr, %.prol.loopexit ] ; 4 uses
  %i.mj = load i8, ptr %i.ed, align 8, !tbaa !74
  %i.mk = load ptr, ptr %i.dv, align 8, !tbaa !71
  %i.ml = and i32 %.0115.i, 255
  %i.mm = zext nneg i32 %i.ml to i64
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.mm ; 2 uses
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !33
  %i.mp = or i8 %i.mo, %i.mj
  store i8 %i.mp, ptr %i.mn, align 1, !tbaa !33
  %i.mq = load i8, ptr %i.ee, align 1, !tbaa !75
  %i.mr = trunc i32 %.0115.i to i8
  %i.ms = add i8 %i.mq, %i.mr
  store i8 %i.ms, ptr %i.ee, align 1, !tbaa !75
  %i.mt = add nsw i32 %.0115.i, 1                 ; 3 uses
  %i.mu = load i8, ptr %i.ed, align 8, !tbaa !74
  %i.mv = load ptr, ptr %i.dv, align 8, !tbaa !71
  %i.mw = and i32 %i.mt, 255
  %i.mx = zext nneg i32 %i.mw to i64
  %i.my = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.mx ; 2 uses
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !33
  %i.na = or i8 %i.mz, %i.mu
  store i8 %i.na, ptr %i.my, align 1, !tbaa !33
  %i.nb = load i8, ptr %i.ee, align 1, !tbaa !75
  %i.nc = trunc i32 %i.mt to i8
  %i.nd = add i8 %i.nb, %i.nc
  store i8 %i.nd, ptr %i.ee, align 1, !tbaa !75
  %i.ne = add nsw i32 %.0115.i, 2
  %exitcond.not.i142.1 = icmp eq i32 %i.mt, %i.lu
  br i1 %exitcond.not.i142.1, label %p_b_term.exit.loopexit, label %.lr.ph.i141.new, !llvm.loop !89

end_hunk_0
begin_hunk_1_@repeat:bb.a
seterr.exit.i.i135:                               ; preds = %bb.be
  store i32 12, ptr %i.b, align 8, !tbaa !20
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !56
  br label %enlarge.exit.i133

bb.bf:                                            ; preds = %bb.be
  %i.hh = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.hi = shl nuw i64 %i.hf, 3
  %i.hj = tail call ptr @realloc(ptr noundef %i.hh, i64 noundef %i.hi) #20 ; 2 uses
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.hl = load i32, ptr %i.b, align 8, !tbaa !20
  %i.hm = icmp eq i32 %i.hl, 0
  br i1 %i.hm, label %bb.bh, label %seterr.exit12.i.i134

bb.bh:                                            ; preds = %bb.bg
  store i32 12, ptr %i.b, align 8, !tbaa !20
  br label %seterr.exit12.i.i134

seterr.exit12.i.i134:                             ; preds = %bb.bh, %bb.bg
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !56
  br label %enlarge.exit.i133

bb.bi:                                            ; preds = %bb.bf
  store ptr %i.hj, ptr %i.e, align 8, !tbaa !16
  store i64 %i.hf, ptr %i.d, align 8, !tbaa !13
  br label %enlarge.exit.i133

enlarge.exit.i133:                                ; preds = %bb.bi, %seterr.exit12.i.i134, %seterr.exit.i.i135, %bb.bd
  %i.hn = load ptr, ptr %i.e, align 8, !tbaa !16  ; 2 uses
  %i.ho = load i64, ptr %i.a, align 8, !tbaa !30
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.hn, i64 %i.ho
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.hn, i64 %.tr153203.lcssa382
  %i.hr = shl i64 %i.hd, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.hp, ptr align 1 %i.hq, i64 %i.hr, i1 false)
  %i.hs = load i64, ptr %i.a, align 8, !tbaa !30
  %i.ht = add nsw i64 %i.hs, %i.hd                ; 2 uses
  store i64 %i.ht, ptr %i.a, align 8, !tbaa !30
  br label %dupl.exit136

dupl.exit136:                                     ; preds = %.loopexit408, %enlarge.exit.i133
  %.pre253 = phi i64 [ %.pre254.ph, %.loopexit408 ], [ %i.ht, %enlarge.exit.i133 ]
  %i.hu = add nsw i32 %.tr154204.lcssa389, -1
  br label %tailrecurse.outer.backedge

bb.bj:                                            ; preds = %bb.b
  %i.hv = sub nsw i64 %.pre254.ph, %.tr153203.ph  ; 4 uses
  %i.hw = load i64, ptr %i.d, align 8, !tbaa !13
  %i.hx = add nsw i64 %i.hw, %i.hv                ; 3 uses
  %.not.i.i137 = icmp sgt i64 %i.hv, 0
  br i1 %.not.i.i137, label %bb.bk, label %enlarge.exit.i138

bb.bk:                                            ; preds = %bb.bj
  %i.hy = icmp ugt i64 %i.hx, 2305843009213693951
  br i1 %i.hy, label %seterr.exit.i.i140, label %bb.bl

seterr.exit.i.i140:                               ; preds = %bb.bk
  store i32 12, ptr %i.b, align 8, !tbaa !20
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !56
  br label %enlarge.exit.i138

bb.bl:                                            ; preds = %bb.bk
  %i.hz = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.ia = shl nuw i64 %i.hx, 3
  %i.ib = tail call ptr @realloc(ptr noundef %i.hz, i64 noundef %i.ia) #20 ; 2 uses
  %i.ic = icmp eq ptr %i.ib, null
  br i1 %i.ic, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %i.id = load i32, ptr %i.b, align 8, !tbaa !20
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %bb.bn, label %seterr.exit12.i.i139

bb.bn:                                            ; preds = %bb.bm
  store i32 12, ptr %i.b, align 8, !tbaa !20
  br label %seterr.exit12.i.i139

seterr.exit12.i.i139:                             ; preds = %bb.bn, %bb.bm
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !56
  br label %enlarge.exit.i138

bb.bo:                                            ; preds = %bb.bl
  store ptr %i.ib, ptr %i.e, align 8, !tbaa !16
  store i64 %i.hx, ptr %i.d, align 8, !tbaa !13
  br label %enlarge.exit.i138

enlarge.exit.i138:                                ; preds = %bb.bo, %seterr.exit12.i.i139, %seterr.exit.i.i140, %bb.bj
  %i.if = load ptr, ptr %i.e, align 8, !tbaa !16  ; 2 uses
  %i.ig = load i64, ptr %i.a, align 8, !tbaa !30
  %i.ih = getelementptr inbounds [8 x i8], ptr %i.if, i64 %i.ig
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.if, i64 %.tr153203.ph
  %i.ij = shl i64 %i.hv, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ih, ptr align 1 %i.ii, i64 %i.ij, i1 false)
  %i.ik = load i64, ptr %i.a, align 8, !tbaa !30
  %i.il = add nsw i64 %i.ik, %i.hv                ; 2 uses
  store i64 %i.il, ptr %i.a, align 8, !tbaa !30
  %.pre235 = load i32, ptr %i.b, align 8, !tbaa !20
  %i.im = icmp eq i32 %.pre235, 0
  %i.in = add nsw i32 %.tr154204.ph, -1
  br i1 %i.im, label %.outer, label %doemit.exit95

seterr.exit:                                      ; preds = %.outer, %.outer.peel.newph
  store i32 15, ptr %i.b, align 8, !tbaa !20
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.f, align 8, !tbaa !19
  br label %doemit.exit95

doemit.exit95:                                    ; preds = %tailrecurse.outer.backedge, %enlarge.exit.i138, %.outer.peel.newph, %.outer, %doemit.exit86.thread294, %doemit.exit.thread290, %bb.a, %doemit.exit, %.loopexit405, %enlarge.exit.i128, %.loopexit407, %enlarge.exit.i92, %doemit.exit86, %.loopexit, %seterr.exit
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc signext i8 @othercase(i32 noundef %0) unnamed_addr #11 {
bb.a:
  %i.a = and i32 %0, 255
  %i.b = tail call ptr @__ctype_b_loc() #21
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.d = zext nneg i32 %i.a to i64                ; 2 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.d
  %i.f = load i16, ptr %i.e, align 2, !tbaa !62
  %i.g = zext i16 %i.f to i32                     ; 2 uses
  %i.h = and i32 %i.g, 256
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__ctype_tolower_loc() #21
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.j = and i32 %i.g, 512
  %.not28 = icmp eq i32 %i.j, 0
  br i1 %.not28, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @__ctype_toupper_loc() #21
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.d
  %.sink = phi ptr [ %i.k, %bb.d ], [ %i.i, %bb.b ]
  %i.l = load ptr, ptr %.sink, align 8, !tbaa !92
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.d
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c
  %.0.in = phi i32 [ %0, %bb.c ], [ %i.n, %.sink.split ]
  %.0 = trunc i32 %.0.in to i8
  ret i8 %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc signext i8 @p_b_symbol(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #13 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18     ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 7 uses
  %i.d = icmp ult ptr %i.a, %i.c
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !20
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  store i32 7, ptr %i.e, align 8, !tbaa !20
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.b
  store ptr @nuls, ptr %i.b, align 8, !tbaa !19
  br label %bb.s

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.i = icmp ult ptr %i.h, %i.c
  br i1 %i.i, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d
  %i.j = load i8, ptr %i.a, align 1, !tbaa !33
  %i.k = icmp eq i8 %i.j, 91
  br i1 %i.k, label %bb.f, label %bb.s

bb.f:                                             ; preds = %bb.e
  %i.l = load i8, ptr %i.h, align 1, !tbaa !33
  %i.m = icmp eq i8 %i.l, 46
  br i1 %i.m, label %bb.g, label %bb.s

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 6 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !18
  %i.o = icmp ult ptr %i.n, %i.c
  br i1 %i.o, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.g, %.critedge34.i
  %i.p = phi ptr [ %i.q, %.critedge34.i ], [ %i.n, %bb.g ] ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 5 uses
  %i.r = icmp ult ptr %i.q, %i.c
  br i1 %i.r, label %bb.h, label %.critedge34.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.s = load i8, ptr %i.p, align 1, !tbaa !33
  %i.t = icmp eq i8 %i.s, 46
  br i1 %i.t, label %bb.i, label %.critedge34.i

bb.i:                                             ; preds = %bb.h
  %i.u = load i8, ptr %i.q, align 1, !tbaa !33
  %.not36.i = icmp eq i8 %i.u, 93
  br i1 %.not36.i, label %bb.k, label %.critedge34.i

.critedge34.i:                                    ; preds = %bb.i, %bb.h, %.lr.ph.i
  store ptr %i.q, ptr %0, align 8, !tbaa !18
  %exitcond.not.i = icmp eq ptr %i.q, %i.c
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !84

.critedge.i:                                      ; preds = %.critedge34.i, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !20
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.j, label %p_b_coll_elem.exit.thread

bb.j:                                             ; preds = %.critedge.i
  store i32 7, ptr %i.v, align 8, !tbaa !20
  br label %p_b_coll_elem.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.y = ptrtoint ptr %i.p to i64
  %1 = ptrtoint ptr %i.n to i64
  %i.z = sub i64 %i.y, %1                         ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.o, %bb.k
  %i.aa = phi ptr [ @.str.27, %bb.k ], [ %i.ah, %bb.o ] ; 2 uses
  %.02741.i = phi ptr [ @cnames, %bb.k ], [ %i.ag, %bb.o ] ; 2 uses
  %i.ab = tail call i32 @strncmp(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.n, i64 noundef %i.z) #17
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ad = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aa) #17
  %i.ae = icmp eq i64 %i.ad, %i.z
  br i1 %i.ae, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %.02741.i, i64 8
  br label %p_b_coll_elem.exit

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %.02741.i, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !87 ; 2 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %bb.p, label %bb.l, !llvm.loop !88

bb.p:                                             ; preds = %bb.o
  %i.ai = icmp eq i64 %i.z, 1
  br i1 %i.ai, label %p_b_coll_elem.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !20
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.r, label %p_b_coll_elem.exit.thread

bb.r:                                             ; preds = %bb.q
  store i32 3, ptr %i.aj, align 8, !tbaa !20
  br label %p_b_coll_elem.exit.thread

p_b_coll_elem.exit:                               ; preds = %bb.p, %bb.n
  %.0.i.in = phi ptr [ %i.af, %bb.n ], [ %i.n, %bb.p ]
  %.0.i = load i8, ptr %.0.i.in, align 1, !tbaa !33 ; 5 uses
  %i.am = icmp ult ptr %i.p, %i.c
  br i1 %i.am, label %bb.t, label %p_b_coll_elem.exit.thread

bb.s:                                             ; preds = %.thread, %bb.d, %bb.e, %bb.f
  %i.an = phi ptr [ @nuls, %.thread ], [ %i.a, %bb.f ], [ %i.a, %bb.d ], [ %i.a, %bb.e ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store ptr %i.ao, ptr %0, align 8, !tbaa !18
  %i.ap = load i8, ptr %i.an, align 1, !tbaa !33
  br label %bb.y

bb.t:                                             ; preds = %p_b_coll_elem.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %i.ar = icmp ult ptr %i.aq, %i.c
  br i1 %i.ar, label %bb.u, label %p_b_coll_elem.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.as = load i8, ptr %i.p, align 1, !tbaa !33
  %i.at = icmp eq i8 %i.as, 46
  br i1 %i.at, label %bb.v, label %p_b_coll_elem.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.au = load i8, ptr %i.aq, align 1, !tbaa !33
  %i.av = icmp eq i8 %i.au, 93
  br i1 %i.av, label %bb.w, label %p_b_coll_elem.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.aw = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  store ptr %i.aw, ptr %0, align 8, !tbaa !18
  br label %bb.y

p_b_coll_elem.exit.thread:                        ; preds = %bb.q, %bb.r, %.critedge.i, %bb.j, %p_b_coll_elem.exit, %bb.t, %bb.u, %bb.v
  %.0.i44 = phi i8 [ %.0.i, %bb.v ], [ %.0.i, %p_b_coll_elem.exit ], [ %.0.i, %bb.t ], [ %.0.i, %bb.u ], [ 0, %.critedge.i ], [ 0, %bb.j ], [ 0, %bb.r ], [ 0, %bb.q ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !20
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.x, label %seterr.exit27

bb.x:                                             ; preds = %p_b_coll_elem.exit.thread
  store i32 3, ptr %i.ax, align 8, !tbaa !20
  br label %seterr.exit27

seterr.exit27:                                    ; preds = %p_b_coll_elem.exit.thread, %bb.x
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.b, align 8, !tbaa !19
  br label %bb.y

bb.y:                                             ; preds = %seterr.exit27, %bb.w, %bb.s
  %.0 = phi i8 [ %i.ap, %bb.s ], [ %.0.i, %bb.w ], [ %.0.i44, %seterr.exit27 ]
  ret i8 %.0
}

declare i64 @llvh_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @bothcases(ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.c = trunc i32 %1 to i8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  store i8 %i.c, ptr %i.a, align 1, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 93, ptr %i.e, align 1, !tbaa !33
  store i8 0, ptr %i.d, align 1, !tbaa !33
  %i.f = load <2 x ptr>, ptr %0, align 8, !tbaa !56
  store ptr %i.a, ptr %0, align 8, !tbaa !18
  store ptr %i.d, ptr %i.b, align 8, !tbaa !19
  call fastcc void @p_bracket(ptr noundef %0)
  store <2 x ptr> %i.f, ptr %0, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind allocsize(0,1) }
attributes #20 = { nounwind allocsize(1) }
attributes #21 = { nounwind willreturn memory(none) }
attributes #22 = { "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !10, i64 16}
!8 = !{!"llvm_regex", !4, i64 0, !9, i64 8, !10, i64 16, !12, i64 24}
!9 = !{!"long", !5, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 _ZTS7re_guts", !11, i64 0}
!13 = !{!14, !9, i64 32}
!14 = !{!"parse", !10, i64 0, !10, i64 8, !4, i64 16, !15, i64 24, !9, i64 32, !9, i64 40, !4, i64 48, !12, i64 56, !5, i64 64, !5, i64 144}
!15 = !{!"p1 long", !11, i64 0}
!16 = !{!14, !15, i64 24}
!17 = !{!14, !12, i64 56}
!18 = !{!14, !10, i64 0}
!19 = !{!14, !10, i64 8}
!20 = !{!14, !4, i64 16}
!21 = !{!14, !4, i64 48}
!22 = !{!23, !4, i64 16}
!23 = !{!"re_guts", !4, i64 0, !15, i64 8, !4, i64 16, !4, i64 20, !11, i64 24, !10, i64 32, !4, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !4, i64 72, !4, i64 76, !4, i64 80, !4, i64 84, !10, i64 88, !10, i64 96, !4, i64 104, !9, i64 112, !4, i64 120, !9, i64 128, !5, i64 136}
!24 = !{!23, !4, i64 40}
!25 = !{!23, !10, i64 96}
!26 = !{!23, !4, i64 104}
!27 = !{!23, !9, i64 112}
!28 = !{!23, !10, i64 88}
!29 = !{!23, !4, i64 120}
!30 = !{!14, !9, i64 40}
!31 = !{!9, !9, i64 0}
!32 = !{!23, !9, i64 56}
!33 = !{!5, !5, i64 0}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!23, !9, i64 64}
!37 = !{!23, !4, i64 20}
end_hunk_1
