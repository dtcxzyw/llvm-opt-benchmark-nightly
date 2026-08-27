Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/regcomp?download=true
inline.NumInlined: 145
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@p_bracket:bb.a
  store ptr null, ptr %i.do, align 8, !tbaa !74
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !40
  tail call void @free(ptr noundef %i.dq) #14
  %i.dr = load ptr, ptr %i.bh, align 8, !tbaa !18
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  store ptr null, ptr %i.ds, align 8, !tbaa !40
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !21
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.ab, label %allocset.exit.thread

bb.ab:                                            ; preds = %.thread.i
  store i32 12, ptr %i.dt, align 8, !tbaa !21
  br label %allocset.exit.thread

allocset.exit.thread:                             ; preds = %.thread.i, %bb.ab
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.a, align 8, !tbaa !20
  br label %freeset.exit

allocset.exit:                                    ; preds = %bb.aa
  %i.dw = sext i32 %i.bk to i64
  %i.dx = getelementptr inbounds [32 x i8], ptr %i.df, i64 %i.dw ; 34 uses
  %i.dy = sdiv i32 %i.bk, 8
  %i.dz = sext i32 %i.dy to i64
  %i.ea = mul nsw i64 %i.bo, %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.ea ; 2 uses
  store ptr %i.eb, ptr %i.dx, align 8, !tbaa !75
  %i.ec = and i32 %i.bk, 7
  %i.ed = shl nuw nsw i32 1, %i.ec
  %i.ee = trunc nuw i32 %i.ed to i8               ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 21 uses
  store i8 %i.ee, ptr %i.ef, align 8, !tbaa !78
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dx, i64 9 ; 42 uses
  store i8 0, ptr %i.eg, align 1, !tbaa !79
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, i8 0, i64 16, i1 false)
  %i.ei = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.ej = load ptr, ptr %0, align 8, !tbaa !19    ; 4 uses
  %i.ek = ptrtoint ptr %i.ei to i64               ; 2 uses
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = icmp sgt i64 %i.em, 0
  br i1 %i.en, label %bb.ac, label %.thread286

bb.ac:                                            ; preds = %allocset.exit
  %i.eo = load i8, ptr %i.ej, align 1, !tbaa !35  ; 2 uses
  %i.ep = icmp ne i8 %i.eo, 94                    ; 3 uses
  br i1 %i.ep, label %.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ej, i64 1 ; 4 uses
  store ptr %i.eq, ptr %0, align 8, !tbaa !19
  %.pre239 = ptrtoint ptr %i.eq to i64
  %.pre240 = sub i64 %i.ek, %.pre239
  %i.er = icmp sgt i64 %.pre240, 0
  br i1 %i.er, label %thread-pre-split, label %.thread286

thread-pre-split:                                 ; preds = %bb.ad
  %.pr = load i8, ptr %i.eq, align 1, !tbaa !35
  br label %.thread

.thread:                                          ; preds = %bb.ac, %thread-pre-split
  %i.es = phi i8 [ %.pr, %thread-pre-split ], [ %i.eo, %bb.ac ] ; 2 uses
  %i.et = phi ptr [ %i.eq, %thread-pre-split ], [ %i.ej, %bb.ac ]
  switch i8 %i.es, label %.thread286 [
    i8 93, label %.thread286.sink.split
    i8 45, label %bb.ae
  ]

bb.ae:                                            ; preds = %.thread
  br label %.thread286.sink.split

.thread286.sink.split:                            ; preds = %.thread, %bb.ae
  %.sink311 = phi i64 [ 45, %bb.ae ], [ 93, %.thread ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 1
  store ptr %i.eu, ptr %0, align 8, !tbaa !19
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.sink311 ; 2 uses
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !35
  %i.ex = or i8 %i.ew, %i.ee
  store i8 %i.ex, ptr %i.ev, align 1, !tbaa !35
  %i.ey = load i8, ptr %i.eg, align 1, !tbaa !79
  %i.ez = add i8 %i.ey, %i.es
  store i8 %i.ez, ptr %i.eg, align 1, !tbaa !79
  br label %.thread286

.thread286:                                       ; preds = %.thread286.sink.split, %.thread, %allocset.exit, %bb.ad
  %.not113284 = phi i1 [ false, %bb.ad ], [ true, %allocset.exit ], [ %i.ep, %.thread ], [ %i.ep, %.thread286.sink.split ]
  %i.fa = load ptr, ptr %i.a, align 8, !tbaa !20  ; 3 uses
  %i.fb = load ptr, ptr %0, align 8, !tbaa !19    ; 3 uses
  %i.fc = ptrtoint ptr %i.fa to i64               ; 2 uses
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = sub i64 %i.fc, %i.fd                    ; 2 uses
  %i.ff = icmp sgt i64 %i.fe, 0
  br i1 %i.ff, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.thread286
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 28 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dx, i64 24 ; 4 uses
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph, %p_b_term.exit
  %i.fi = phi i64 [ %i.fe, %.lr.ph ], [ %i.pv, %p_b_term.exit ] ; 2 uses
  %i.fj = phi i64 [ %i.fc, %.lr.ph ], [ %i.pt, %p_b_term.exit ] ; 2 uses
  %i.fk = phi ptr [ %i.fb, %.lr.ph ], [ %i.pr, %p_b_term.exit ] ; 7 uses
  %i.fl = phi ptr [ %i.fa, %.lr.ph ], [ %i.ps, %p_b_term.exit ] ; 3 uses
  %i.fm = load i8, ptr %i.fk, align 1, !tbaa !35  ; 3 uses
  %.not = icmp eq i8 %i.fm, 93
  br i1 %.not, label %.critedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not109 = icmp ne i64 %i.fi, 1
  %i.fn = icmp eq i8 %i.fm, 45
  %or.cond = and i1 %.not109, %i.fn
  br i1 %or.cond, label %bb.ah, label %.critedge121

bb.ah:                                            ; preds = %bb.ag
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 1
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !35
  %.not187 = icmp eq i8 %i.fp, 93
  br i1 %.not187, label %bb.de, label %.critedge121.thread

.critedge121:                                     ; preds = %bb.ag
  switch i8 %i.fm, label %.thread93.i [
    i8 91, label %bb.ai
    i8 45, label %.critedge121.thread
  ]

bb.ai:                                            ; preds = %.critedge121
  %.not99.i = icmp eq i64 %i.fi, 1
  br i1 %.not99.i, label %.thread93.i, label %bb.ak

.critedge121.thread:                              ; preds = %bb.ah, %.critedge121
  %i.fq = load i32, ptr %i.fg, align 8, !tbaa !21
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %bb.aj, label %seterr.exit.i133

bb.aj:                                            ; preds = %.critedge121.thread
  store i32 11, ptr %i.fg, align 8, !tbaa !21
  br label %seterr.exit.i133

seterr.exit.i133:                                 ; preds = %bb.aj, %.critedge121.thread
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !58
  br label %p_b_term.exit

bb.ak:                                            ; preds = %bb.ai
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fk, i64 1
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !35
  switch i8 %i.ft, label %.thread93.i [
    i8 58, label %bb.al
    i8 61, label %bb.bu
  ]

bb.al:                                            ; preds = %bb.ak
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fk, i64 2 ; 3 uses
  store ptr %i.fu, ptr %0, align 8, !tbaa !19
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = sub i64 %i.fj, %i.fv
  %i.fx = icmp sgt i64 %i.fw, 0
  br i1 %i.fx, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fy = load i32, ptr %i.fg, align 8, !tbaa !21
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.an, label %seterr.exit82.i

bb.an:                                            ; preds = %bb.am
  store i32 7, ptr %i.fg, align 8, !tbaa !21
  br label %seterr.exit82.i

seterr.exit82.i:                                  ; preds = %bb.an, %bb.am
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !58
  br label %bb.ao

bb.ao:                                            ; preds = %seterr.exit82.i, %bb.al
  %i.ga = phi ptr [ @nuls, %seterr.exit82.i ], [ %i.fl, %bb.al ]
  %i.gb = phi ptr [ @nuls, %seterr.exit82.i ], [ %i.fu, %bb.al ] ; 2 uses
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !35
  switch i8 %i.gc, label %bb.ar [
    i8 93, label %bb.ap
    i8 45, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao, %bb.ao
  %i.gd = load i32, ptr %i.fg, align 8, !tbaa !21
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %bb.aq, label %seterr.exit83.i

bb.aq:                                            ; preds = %bb.ap
  store i32 4, ptr %i.fg, align 8, !tbaa !21
  br label %seterr.exit83.i

seterr.exit83.i:                                  ; preds = %bb.aq, %bb.ap
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !58
  br label %bb.ar

bb.ar:                                            ; preds = %seterr.exit83.i, %bb.ao
  %i.gf = phi ptr [ %i.ga, %bb.ao ], [ @nuls, %seterr.exit83.i ]
  %i.gg = phi ptr [ %i.gb, %bb.ao ], [ @nuls, %seterr.exit83.i ] ; 15 uses
  %i.gh = ptrtoint ptr %i.gf to i64               ; 3 uses
  %i.gi = ptrtoint ptr %i.gg to i64               ; 4 uses
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = icmp sgt i64 %i.gj, 0
  br i1 %i.gk, label %.lr.ph.i.i, label %.critedge.i.i

.lr.ph.i.i:                                       ; preds = %bb.ar
  %i.gl = tail call ptr @__ctype_b_loc() #19
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !62 ; 2 uses
  %i.gn = load i8, ptr %i.gg, align 1, !tbaa !35
  %i.go = zext i8 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %i.gm, i64 %i.go
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !64
  %i.gr = and i16 %i.gq, 1024
  %.not.i102.i = icmp eq i16 %i.gr, 0
  br i1 %.not.i102.i, label %.critedge.i.i, label %.lr.ph.i135.preheader

.lr.ph.i135.preheader:                            ; preds = %.lr.ph.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gg, i64 1 ; 3 uses
  store ptr %i.gs, ptr %0, align 8, !tbaa !19
  %i.gt = ptrtoint ptr %i.gs to i64               ; 3 uses
  %i.gu = sub i64 %i.gh, %i.gt
  %i.gv = icmp sgt i64 %i.gu, 0
  br i1 %i.gv, label %.lr.ph327, label %..critedge.i.loopexit_crit_edge103.i, !llvm.loop !80

.lr.ph327:                                        ; preds = %.lr.ph.i135.preheader
  br label %bb.as, !llvm.loop !80

bb.as:                                            ; preds = %.lr.ph327, %.lr.ph.i135
  %i.gw = phi i64 [ %i.gt, %.lr.ph327 ], [ %i.he, %.lr.ph.i135 ]
  %i.gx = phi ptr [ %i.gs, %.lr.ph327 ], [ %i.hd, %.lr.ph.i135 ] ; 2 uses
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !35
  %i.gz = zext i8 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %i.gm, i64 %i.gz
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !64
  %i.hc = and i16 %i.hb, 1024
  %.not.i.i136 = icmp eq i16 %i.hc, 0
  br i1 %.not.i.i136, label %.critedge.i.i, label %.lr.ph.i135, !llvm.loop !80

.lr.ph.i135:                                      ; preds = %bb.as
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gx, i64 1 ; 3 uses
  store ptr %i.hd, ptr %0, align 8, !tbaa !19
  %i.he = ptrtoint ptr %i.hd to i64               ; 3 uses
  %i.hf = sub i64 %i.gh, %i.he
  %i.hg = icmp sgt i64 %i.hf, 0
  br i1 %i.hg, label %bb.as, label %.lr.ph.i135...critedge.i.loopexit_crit_edge103.i_crit_edge, !llvm.loop !80

.lr.ph.i135...critedge.i.loopexit_crit_edge103.i_crit_edge: ; preds = %.lr.ph.i135
  br label %..critedge.i.loopexit_crit_edge103.i, !llvm.loop !80

..critedge.i.loopexit_crit_edge103.i:             ; preds = %.lr.ph.i135...critedge.i.loopexit_crit_edge103.i_crit_edge, %.lr.ph.i135.preheader
  %.lcssa323 = phi i64 [ %i.he, %.lr.ph.i135...critedge.i.loopexit_crit_edge103.i_crit_edge ], [ %i.gt, %.lr.ph.i135.preheader ]
  br label %.critedge.i.i, !llvm.loop !80

.critedge.i.i:                                    ; preds = %bb.as, %..critedge.i.loopexit_crit_edge103.i, %.lr.ph.i.i, %bb.ar
  %.lcssa.i.i = phi i64 [ %i.gi, %bb.ar ], [ %i.gi, %.lr.ph.i.i ], [ %.lcssa323, %..critedge.i.loopexit_crit_edge103.i ], [ %i.gw, %bb.as ]
  %i.hh = sub i64 %.lcssa.i.i, %i.gi              ; 14 uses
  %i.hi = tail call i32 @strncmp(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.gg, i64 noundef %i.hh) #15
  %i.hj = icmp eq i32 %i.hi, 0
  %i.hk = icmp eq i64 %i.hh, 5                    ; 11 uses
  %or.cond.i.i = and i1 %i.hj, %i.hk
  br i1 %or.cond.i.i, label %bb.bg, label %bb.at

bb.at:                                            ; preds = %.critedge.i.i
  %i.hl = tail call i32 @strncmp(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.gg, i64 noundef %i.hh) #15
  %i.hm = icmp eq i32 %i.hl, 0
  %or.cond50.i.i = and i1 %i.hk, %i.hm
  br i1 %or.cond50.i.i, label %bb.bg, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hn = tail call i32 @strncmp(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.gg, i64 noundef %i.hh) #15
  %i.ho = icmp eq i32 %i.hn, 0
  %or.cond51.i.i = and i1 %i.hk, %i.ho
  br i1 %or.cond51.i.i, label %bb.bg, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hp = tail call i32 @strncmp(ptr noundef nonnull @.str.9, ptr noundef nonnull %i.gg, i64 noundef %i.hh) #15
  %i.hq = icmp eq i32 %i.hp, 0
  %or.cond52.i.i = and i1 %i.hk, %i.hq
  br i1 %or.cond52.i.i, label %bb.bg, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hr = tail call i32 @strncmp(ptr noundef nonnull @.str.11, ptr noundef nonnull %i.gg, i64 noundef %i.hh) #15
  %i.hs = icmp eq i32 %i.hr, 0
  %or.cond53.i.i = and i1 %i.hk, %i.hs
  br i1 %or.cond53.i.i, label %bb.bg, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ht = tail call i32 @strncmp(ptr noundef nonnull @.str.13, ptr noundef nonnull %i.gg, i64 noundef %i.hh) #15
  %i.hu = icmp eq i32 %i.ht, 0
  %or.cond54.i.i = and i1 %i.hk, %i.hu
  br i1 %or.cond54.i.i, label %bb.bg, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hv = tail call i32 @strncmp(ptr noundef nonnull @.str.15, ptr noundef nonnull %i.gg, i64 noundef %i.hh) #15
  %i.hw = icmp eq i32 %i.hv, 0
  %or.cond55.i.i = and i1 %i.hk, %i.hw
  br i1 %or.cond55.i.i, label %bb.bg, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hx = tail call i32 @strncmp(ptr noundef nonnull @.str.17, ptr noundef nonnull %i.gg, i64 noundef %i.hh) #15
  %i.hy = icmp eq i32 %i.hx, 0
  %or.cond56.i.i = and i1 %i.hk, %i.hy
  br i1 %or.cond56.i.i, label %bb.bg, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hz = tail call i32 @strncmp(ptr noundef nonnull @.str.19, ptr noundef nonnull %i.gg, i64 noundef %i.hh) #15
  %i.ia = icmp eq i32 %i.hz, 0
  %or.cond57.i.i = and i1 %i.hk, %i.ia
  br i1 %or.cond57.i.i, label %bb.bg, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ib = tail call i32 @strncmp(ptr noundef nonnull @.str.21, ptr noundef nonnull %i.gg, i64 noundef %i.hh) #15
  %i.ic = icmp eq i32 %i.ib, 0
  %or.cond58.i.i = and i1 %i.hk, %i.ic
  br i1 %or.cond58.i.i, label %bb.bg, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.id = tail call i32 @strncmp(ptr noundef nonnull @.str.23, ptr noundef nonnull %i.gg, i64 noundef %i.hh) #15
  %i.ie = icmp eq i32 %i.id, 0
  %or.cond59.i.i = and i1 %i.hk, %i.ie
  br i1 %or.cond59.i.i, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.if = tail call i32 @strncmp(ptr noundef nonnull @.str.25, ptr noundef nonnull %i.gg, i64 noundef %i.hh) #15
  %i.ig = icmp eq i32 %i.if, 0
  %i.ih = icmp eq i64 %i.hh, 6
  %or.cond60.i.i = and i1 %i.ih, %i.ig
  br i1 %or.cond60.i.i, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ii = load i32, ptr %i.fg, align 8, !tbaa !21
  %i.ij = icmp eq i32 %i.ii, 0
  br i1 %i.ij, label %bb.bf, label %seterr.exit.i.i134

bb.bf:                                            ; preds = %bb.be
  store i32 4, ptr %i.fg, align 8, !tbaa !21
  br label %seterr.exit.i.i134

seterr.exit.i.i134:                               ; preds = %bb.bf, %bb.be
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !58
  br label %p_b_cclass.exit.i

bb.bg:                                            ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %.critedge.i.i
  %.02939.lcssa.i.i = phi ptr [ @cclasses, %.critedge.i.i ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 24), %bb.at ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 48), %bb.au ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 72), %bb.av ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 96), %bb.aw ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 120), %bb.ax ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 144), %bb.ay ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 168), %bb.az ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 192), %bb.ba ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 216), %bb.bb ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 240), %bb.bc ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 264), %bb.bd ] ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.02939.lcssa.i.i, i64 8
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !81 ; 2 uses
  %i.im = load i8, ptr %i.il, align 1, !tbaa !35  ; 2 uses
  %.not3340.i.i = icmp eq i8 %i.im, 0
  br i1 %.not3340.i.i, label %._crit_edge.i.i, label %.lr.ph42.i.i

.lr.ph42.i.i:                                     ; preds = %bb.bg, %.lr.ph42.i.i
  %i.in = phi i8 [ %i.ix, %.lr.ph42.i.i ], [ %i.im, %bb.bg ] ; 2 uses
  %.041.i.i = phi ptr [ %i.io, %.lr.ph42.i.i ], [ %i.il, %bb.bg ]
  %i.io = getelementptr inbounds nuw i8, ptr %.041.i.i, i64 1 ; 2 uses
  %i.ip = load i8, ptr %i.ef, align 8, !tbaa !78
  %i.iq = load ptr, ptr %i.dx, align 8, !tbaa !75
  %i.ir = zext i8 %i.in to i64
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.ir ; 2 uses
  %i.it = load i8, ptr %i.is, align 1, !tbaa !35
  %i.iu = or i8 %i.it, %i.ip
  store i8 %i.iu, ptr %i.is, align 1, !tbaa !35
  %i.iv = load i8, ptr %i.eg, align 1, !tbaa !79
  %i.iw = add i8 %i.iv, %i.in
  store i8 %i.iw, ptr %i.eg, align 1, !tbaa !79
  %i.ix = load i8, ptr %i.io, align 1, !tbaa !35  ; 2 uses
  %.not33.i.i = icmp eq i8 %i.ix, 0
  br i1 %.not33.i.i, label %._crit_edge.i.i, label %.lr.ph42.i.i, !llvm.loop !83

._crit_edge.i.i:                                  ; preds = %.lr.ph42.i.i, %bb.bg
  %i.iy = getelementptr inbounds nuw i8, ptr %.02939.lcssa.i.i, i64 16
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !84 ; 2 uses
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !35
  %.not3443.i.i = icmp eq i8 %i.ja, 0
  br i1 %.not3443.i.i, label %p_b_cclass.exit.i, label %.lr.ph46.i.i

.lr.ph46.i.i:                                     ; preds = %._crit_edge.i.i, %mcadd.exit.i.i
  %.144.i.i = phi ptr [ %i.js, %mcadd.exit.i.i ], [ %i.iz, %._crit_edge.i.i ] ; 4 uses
  %i.jb = load i64, ptr %i.eh, align 8, !tbaa !85 ; 3 uses
  %i.jc = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.144.i.i) #15
  %i.jd = add i64 %i.jb, 1
  %i.je = add i64 %i.jd, %i.jc                    ; 2 uses
  store i64 %i.je, ptr %i.eh, align 8, !tbaa !85
  %i.jf = load ptr, ptr %i.fh, align 8, !tbaa !86
  %i.jg = tail call ptr @realloc(ptr noundef %i.jf, i64 noundef %i.je) #18 ; 3 uses
  %i.jh = icmp eq ptr %i.jg, null
  br i1 %i.jh, label %bb.bh, label %bb.bl

bb.bh:                                            ; preds = %.lr.ph46.i.i
  %i.ji = load ptr, ptr %i.fh, align 8, !tbaa !86 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ji, null
  br i1 %.not.i.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  tail call void @free(ptr noundef nonnull %i.ji) #14
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  store ptr null, ptr %i.fh, align 8, !tbaa !86
  %i.jj = load i32, ptr %i.fg, align 8, !tbaa !21
  %i.jk = icmp eq i32 %i.jj, 0
  br i1 %i.jk, label %bb.bk, label %seterr.exit.i.i.i

bb.bk:                                            ; preds = %bb.bj
  store i32 12, ptr %i.fg, align 8, !tbaa !21
  br label %seterr.exit.i.i.i

seterr.exit.i.i.i:                                ; preds = %bb.bk, %bb.bj
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !58
  br label %mcadd.exit.i.i

bb.bl:                                            ; preds = %.lr.ph46.i.i
  store ptr %i.jg, ptr %i.fh, align 8, !tbaa !86
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.jb
  %i.jm = getelementptr inbounds i8, ptr %i.jl, i64 -1
  %i.jn = load i64, ptr %i.eh, align 8, !tbaa !85
  %reass.sub = sub i64 %i.jn, %i.jb
  %i.jo = add i64 %reass.sub, 1
  %i.jp = tail call i64 @llvm_strlcpy(ptr noundef nonnull %i.jm, ptr noundef nonnull %.144.i.i, i64 noundef %i.jo) #14 ; 0 uses
  br label %mcadd.exit.i.i

mcadd.exit.i.i:                                   ; preds = %bb.bl, %seterr.exit.i.i.i
  %i.jq = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.144.i.i) #15
  %i.jr = getelementptr i8, ptr %.144.i.i, i64 %i.jq
  %i.js = getelementptr i8, ptr %i.jr, i64 1      ; 2 uses
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !35
  %.not34.i.i = icmp eq i8 %i.jt, 0
  br i1 %.not34.i.i, label %p_b_cclass.exit.i, label %.lr.ph46.i.i, !llvm.loop !87

p_b_cclass.exit.i:                                ; preds = %mcadd.exit.i.i, %._crit_edge.i.i, %seterr.exit.i.i134
  %i.ju = load ptr, ptr %i.a, align 8, !tbaa !20  ; 2 uses
  %i.jv = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.jw = ptrtoint ptr %i.ju to i64
  %i.jx = ptrtoint ptr %i.jv to i64
  %i.jy = sub i64 %i.jw, %i.jx
  %i.jz = icmp sgt i64 %i.jy, 0
  br i1 %i.jz, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %p_b_cclass.exit.i
  %i.ka = load i32, ptr %i.fg, align 8, !tbaa !21
  %i.kb = icmp eq i32 %i.ka, 0
  br i1 %i.kb, label %bb.bn, label %seterr.exit84.i

bb.bn:                                            ; preds = %bb.bm
  store i32 7, ptr %i.fg, align 8, !tbaa !21
  br label %seterr.exit84.i

seterr.exit84.i:                                  ; preds = %bb.bn, %bb.bm
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !58
  br label %bb.bo

bb.bo:                                            ; preds = %seterr.exit84.i, %p_b_cclass.exit.i
  %i.kc = phi ptr [ @nuls, %seterr.exit84.i ], [ %i.jv, %p_b_cclass.exit.i ] ; 4 uses
  %i.kd = phi ptr [ @nuls, %seterr.exit84.i ], [ %i.ju, %p_b_cclass.exit.i ] ; 2 uses
  %i.ke = ptrtoint ptr %i.kd to i64
  %i.kf = ptrtoint ptr %i.kc to i64
end_hunk_0
