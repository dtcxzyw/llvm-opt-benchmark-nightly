Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_regex_regcomp?download=true
inline.NumInlined: 135
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@p_bracket:bb.a
  store i32 12, ptr %i.dj, align 8, !tbaa !22
  br label %allocset.exit.thread

allocset.exit.thread:                             ; preds = %bb.w, %bb.x
  store ptr @nuls, ptr %0, align 8, !tbaa !20
  store ptr @nuls, ptr %i.c, align 8, !tbaa !21
  br label %freeset.exit

bb.y:                                             ; preds = %._crit_edge.i, %bb.r
  %i.dm = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.be, %bb.r ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !91
  %i.dp = sext i32 %i.bg to i64
  %i.dq = getelementptr inbounds [32 x i8], ptr %i.do, i64 %i.dp ; 34 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !35
  %i.dt = sdiv i32 %i.bg, 8
  %i.du = sext i32 %i.dt to i64
  %i.dv = mul nsw i64 %i.bk, %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dv ; 2 uses
  store ptr %i.dw, ptr %i.dq, align 8, !tbaa !93
  %i.dx = and i32 %i.bg, 7
  %i.dy = shl nuw nsw i32 1, %i.dx
  %i.dz = trunc nuw i32 %i.dy to i8               ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 21 uses
  store i8 %i.dz, ptr %i.ea, align 8, !tbaa !94
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dq, i64 9 ; 42 uses
  store i8 0, ptr %i.eb, align 1, !tbaa !95
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dq, i64 16 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ec, i8 0, i64 16, i1 false)
  %i.ed = load ptr, ptr %0, align 8, !tbaa !20    ; 5 uses
  %i.ee = load ptr, ptr %i.c, align 8, !tbaa !21  ; 2 uses
  %i.ef = icmp ult ptr %i.ed, %i.ee
  br i1 %i.ef, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.eg = load i8, ptr %i.ed, align 1, !tbaa !32
  %i.eh = icmp eq i8 %i.eg, 94
  br i1 %i.eh, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 1 ; 2 uses
  store ptr %i.ei, ptr %0, align 8, !tbaa !20
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.z, %bb.aa
  %i.ej = phi ptr [ %i.ei, %bb.aa ], [ %i.ed, %bb.z ], [ %i.ed, %bb.y ] ; 3 uses
  %.not123 = phi i1 [ false, %bb.aa ], [ true, %bb.z ], [ true, %bb.y ]
  %i.ek = icmp ult ptr %i.ej, %i.ee
  br i1 %i.ek, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.el = load i8, ptr %i.ej, align 1, !tbaa !32  ; 2 uses
  switch i8 %i.el, label %bb.ae [
    i8 93, label %.sink.split
    i8 45, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ac, %bb.ad
  %.sink326 = phi i64 [ 45, %bb.ad ], [ 93, %bb.ac ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 1
  store ptr %i.em, ptr %0, align 8, !tbaa !20
  %i.en = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.sink326 ; 2 uses
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !32
  %i.ep = or i8 %i.eo, %i.dz
  store i8 %i.ep, ptr %i.en, align 1, !tbaa !32
  %i.eq = load i8, ptr %i.eb, align 1, !tbaa !95
  %i.er = add i8 %i.eq, %i.el
  store i8 %i.er, ptr %i.eb, align 1, !tbaa !95
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %bb.ac, %bb.ab
  %i.es = load ptr, ptr %0, align 8, !tbaa !20    ; 3 uses
  %i.et = load ptr, ptr %i.c, align 8, !tbaa !21  ; 3 uses
  %i.eu = icmp ult ptr %i.es, %i.et
  br i1 %i.eu, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.ae
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 22 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dq, i64 24 ; 4 uses
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph, %p_b_term.exit
  %i.ex = phi ptr [ %i.et, %.lr.ph ], [ %i.na, %p_b_term.exit ] ; 6 uses
  %i.ey = phi ptr [ %i.es, %.lr.ph ], [ %i.nb, %p_b_term.exit ] ; 5 uses
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !32  ; 3 uses
  %.not = icmp eq i8 %i.ez, 93
  br i1 %.not, label %.critedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 1 ; 4 uses
  %i.fb = icmp ult ptr %i.fa, %i.ex               ; 2 uses
  %i.fc = icmp eq i8 %i.ez, 45
  %or.cond = and i1 %i.fb, %i.fc
  br i1 %or.cond, label %bb.ah, label %.critedge131

bb.ah:                                            ; preds = %bb.ag
  %i.fd = load i8, ptr %i.fa, align 1, !tbaa !32
  %.not189 = icmp eq i8 %i.fd, 93
  br i1 %.not189, label %bb.cy, label %.critedge131.thread

.critedge131:                                     ; preds = %bb.ag
  switch i8 %i.ez, label %.thread106.i [
    i8 91, label %bb.ai
    i8 45, label %.critedge131.thread
  ]

bb.ai:                                            ; preds = %.critedge131
  br i1 %i.fb, label %bb.aj, label %.thread106.i

.critedge131.thread:                              ; preds = %.critedge131, %bb.ah
  %i.fe = load i32, ptr %i.ev, align 8, !tbaa !22
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %.critedge.thread.sink.split, label %.critedge.thread

bb.aj:                                            ; preds = %bb.ai
  %i.fg = load i8, ptr %i.fa, align 1, !tbaa !32
  switch i8 %i.fg, label %.thread106.i [
    i8 58, label %bb.ak
    i8 61, label %bb.bu
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ey, i64 2 ; 3 uses
  store ptr %i.fh, ptr %0, align 8, !tbaa !20
  %i.fi = icmp ult ptr %i.fh, %i.ex
  br i1 %i.fi, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fj = load i32, ptr %i.ev, align 8, !tbaa !22
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %bb.am, label %seterr.exit95.i

bb.am:                                            ; preds = %bb.al
  store i32 7, ptr %i.ev, align 8, !tbaa !22
  br label %seterr.exit95.i

seterr.exit95.i:                                  ; preds = %bb.am, %bb.al
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !38
  br label %bb.an

bb.an:                                            ; preds = %seterr.exit95.i, %bb.ak
  %i.fl = phi ptr [ @nuls, %seterr.exit95.i ], [ %i.ex, %bb.ak ] ; 3 uses
  %i.fm = phi ptr [ @nuls, %seterr.exit95.i ], [ %i.fh, %bb.ak ] ; 9 uses
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !32
  switch i8 %i.fn, label %bb.aq [
    i8 93, label %bb.ao
    i8 45, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an, %bb.an
  %i.fo = load i32, ptr %i.ev, align 8, !tbaa !22
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %bb.ap, label %.thread.i

bb.ap:                                            ; preds = %bb.ao
  store i32 4, ptr %i.ev, align 8, !tbaa !22
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ap, %bb.ao
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !38
  br label %.critedge.i.i

bb.aq:                                            ; preds = %bb.an
  %i.fq = icmp ult ptr %i.fm, %i.fl
  br i1 %i.fq, label %.lr.ph.i.i, label %.critedge.i.i

.lr.ph.i.i:                                       ; preds = %bb.aq
  %i.fr = ptrtoaddr ptr %i.fl to i64
  %i.fs = ptrtoaddr ptr %i.fm to i64
  %i.ft = tail call ptr @__ctype_b_loc() #13
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !42
  %i.fv = sub i64 %i.fr, %i.fs
  %scevgep.i.i = getelementptr i8, ptr %i.fm, i64 %i.fv
  br label %bb.ar

bb.ar:                                            ; preds = %bb.as, %.lr.ph.i.i
  %i.fw = phi ptr [ %i.fm, %.lr.ph.i.i ], [ %i.gc, %bb.as ] ; 3 uses
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !32
  %i.fy = sext i8 %i.fx to i64
  %i.fz = getelementptr inbounds [2 x i8], ptr %i.fu, i64 %i.fy
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !44
  %i.gb = and i16 %i.ga, 1024
  %.not.i.i145 = icmp eq i16 %i.gb, 0
  br i1 %.not.i.i145, label %.critedge.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fw, i64 1 ; 3 uses
  store ptr %i.gc, ptr %0, align 8, !tbaa !20
  %exitcond.not.i.i = icmp eq ptr %i.gc, %i.fl
  br i1 %exitcond.not.i.i, label %.critedge.i.i, label %bb.ar, !llvm.loop !78

.critedge.i.i:                                    ; preds = %bb.as, %bb.ar, %bb.aq, %.thread.i
  %i.gd = phi ptr [ %i.fm, %bb.aq ], [ @nuls, %.thread.i ], [ %i.fm, %bb.ar ], [ %i.fm, %bb.as ] ; 13 uses
  %.lcssa37.i.i = phi ptr [ %i.fm, %bb.aq ], [ @nuls, %.thread.i ], [ %scevgep.i.i, %bb.as ], [ %i.fw, %bb.ar ]
  %i.ge = ptrtoint ptr %.lcssa37.i.i to i64
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = sub i64 %i.ge, %i.gf                    ; 14 uses
  %i.gh = tail call i32 @strncmp(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.gd, i64 noundef %i.gg) #12
  %1 = icmp eq i32 %i.gh, 0
  %i.gi = icmp eq i64 %i.gg, 5                    ; 11 uses
  %or.cond.i.i = and i1 %1, %i.gi
  br i1 %or.cond.i.i, label %bb.bg, label %bb.at

bb.at:                                            ; preds = %.critedge.i.i
  %2 = tail call i32 @strncmp(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.gd, i64 noundef %i.gg) #12
  %3 = icmp eq i32 %2, 0
  %or.cond53.i.i = and i1 %i.gi, %3
  br i1 %or.cond53.i.i, label %bb.bg, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gj = tail call i32 @strncmp(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.gd, i64 noundef %i.gg) #12
  %i.gk = icmp eq i32 %i.gj, 0
  %or.cond54.i.i = and i1 %i.gi, %i.gk
  br i1 %or.cond54.i.i, label %bb.bg, label %bb.av

bb.av:                                            ; preds = %bb.au
  %4 = tail call i32 @strncmp(ptr noundef nonnull @.str.9, ptr noundef nonnull %i.gd, i64 noundef %i.gg) #12
  %5 = icmp eq i32 %4, 0
  %or.cond55.i.i = and i1 %i.gi, %5
  br i1 %or.cond55.i.i, label %bb.bg, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gl = tail call i32 @strncmp(ptr noundef nonnull @.str.11, ptr noundef nonnull %i.gd, i64 noundef %i.gg) #12
  %i.gm = icmp eq i32 %i.gl, 0
  %or.cond56.i.i = and i1 %i.gi, %i.gm
  br i1 %or.cond56.i.i, label %bb.bg, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %6 = tail call i32 @strncmp(ptr noundef nonnull @.str.13, ptr noundef nonnull %i.gd, i64 noundef %i.gg) #12
  %7 = icmp eq i32 %6, 0
  %or.cond57.i.i = and i1 %i.gi, %7
  br i1 %or.cond57.i.i, label %bb.bg, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gn = tail call i32 @strncmp(ptr noundef nonnull @.str.15, ptr noundef nonnull %i.gd, i64 noundef %i.gg) #12
  %i.go = icmp eq i32 %i.gn, 0
  %or.cond58.i.i = and i1 %i.gi, %i.go
  br i1 %or.cond58.i.i, label %bb.bg, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %8 = tail call i32 @strncmp(ptr noundef nonnull @.str.17, ptr noundef nonnull %i.gd, i64 noundef %i.gg) #12
  %9 = icmp eq i32 %8, 0
  %or.cond59.i.i = and i1 %i.gi, %9
  br i1 %or.cond59.i.i, label %bb.bg, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gp = tail call i32 @strncmp(ptr noundef nonnull @.str.19, ptr noundef nonnull %i.gd, i64 noundef %i.gg) #12
  %i.gq = icmp eq i32 %i.gp, 0
  %or.cond60.i.i = and i1 %i.gi, %i.gq
  br i1 %or.cond60.i.i, label %bb.bg, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %10 = tail call i32 @strncmp(ptr noundef nonnull @.str.21, ptr noundef nonnull %i.gd, i64 noundef %i.gg) #12
  %11 = icmp eq i32 %10, 0
  %or.cond61.i.i = and i1 %i.gi, %11
  br i1 %or.cond61.i.i, label %bb.bg, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gr = tail call i32 @strncmp(ptr noundef nonnull @.str.23, ptr noundef nonnull %i.gd, i64 noundef %i.gg) #12
  %i.gs = icmp eq i32 %i.gr, 0
  %or.cond62.i.i = and i1 %i.gi, %i.gs
  br i1 %or.cond62.i.i, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %12 = tail call i32 @strncmp(ptr noundef nonnull @.str.25, ptr noundef nonnull %i.gd, i64 noundef %i.gg) #12
  %13 = icmp eq i32 %12, 0
  %i.gt = icmp eq i64 %i.gg, 6
  %or.cond63.i.i = and i1 %i.gt, %13
  br i1 %or.cond63.i.i, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gu = load i32, ptr %i.ev, align 8, !tbaa !22
  %i.gv = icmp eq i32 %i.gu, 0
  br i1 %i.gv, label %bb.bf, label %seterr.exit.i.i144

bb.bf:                                            ; preds = %bb.be
  store i32 4, ptr %i.ev, align 8, !tbaa !22
  br label %seterr.exit.i.i144

seterr.exit.i.i144:                               ; preds = %bb.bf, %bb.be
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !38
  br label %p_b_cclass.exit.i

bb.bg:                                            ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %.critedge.i.i
  %.02940.lcssa.i.i = phi ptr [ @cclasses, %.critedge.i.i ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 24), %bb.at ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 48), %bb.au ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 72), %bb.av ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 96), %bb.aw ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 120), %bb.ax ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 144), %bb.ay ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 168), %bb.az ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 192), %bb.ba ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 216), %bb.bb ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 240), %bb.bc ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 264), %bb.bd ] ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.02940.lcssa.i.i, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !97 ; 2 uses
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !32  ; 2 uses
  %.not3441.i.i = icmp eq i8 %i.gy, 0
  br i1 %.not3441.i.i, label %._crit_edge.i.i, label %.lr.ph43.i.i

.lr.ph43.i.i:                                     ; preds = %bb.bg, %.lr.ph43.i.i
  %i.gz = phi i8 [ %i.hj, %.lr.ph43.i.i ], [ %i.gy, %bb.bg ] ; 2 uses
  %.042.i.i = phi ptr [ %i.ha, %.lr.ph43.i.i ], [ %i.gx, %bb.bg ]
  %i.ha = getelementptr inbounds nuw i8, ptr %.042.i.i, i64 1 ; 2 uses
  %i.hb = load i8, ptr %i.ea, align 8, !tbaa !94
  %i.hc = load ptr, ptr %i.dq, align 8, !tbaa !93
  %i.hd = zext i8 %i.gz to i64
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.hd ; 2 uses
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !32
  %i.hg = or i8 %i.hf, %i.hb
  store i8 %i.hg, ptr %i.he, align 1, !tbaa !32
  %i.hh = load i8, ptr %i.eb, align 1, !tbaa !95
  %i.hi = add i8 %i.hh, %i.gz
  store i8 %i.hi, ptr %i.eb, align 1, !tbaa !95
  %i.hj = load i8, ptr %i.ha, align 1, !tbaa !32  ; 2 uses
  %.not34.i.i = icmp eq i8 %i.hj, 0
  br i1 %.not34.i.i, label %._crit_edge.i.i, label %.lr.ph43.i.i, !llvm.loop !79

._crit_edge.i.i:                                  ; preds = %.lr.ph43.i.i, %bb.bg
  %i.hk = getelementptr inbounds nuw i8, ptr %.02940.lcssa.i.i, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !98 ; 2 uses
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !32
  %.not3544.i.i = icmp eq i8 %i.hm, 0
  br i1 %.not3544.i.i, label %p_b_cclass.exit.i, label %.lr.ph47.i.i

.lr.ph47.i.i:                                     ; preds = %._crit_edge.i.i, %mcadd.exit.i.i
  %.145.i.i = phi ptr [ %i.ig, %mcadd.exit.i.i ], [ %i.hl, %._crit_edge.i.i ] ; 4 uses
  %i.hn = load i64, ptr %i.ec, align 8, !tbaa !99 ; 3 uses
  %i.ho = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.145.i.i) #12
  %i.hp = add i64 %i.hn, 1
  %i.hq = add i64 %i.hp, %i.ho                    ; 3 uses
  store i64 %i.hq, ptr %i.ec, align 8, !tbaa !99
  %i.hr = load ptr, ptr %i.ew, align 8, !tbaa !100 ; 2 uses
  %i.hs = icmp eq ptr %i.hr, null
  br i1 %i.hs, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.lr.ph47.i.i
  %i.ht = tail call ptr @cli_malloc(i64 noundef %i.hq) #11
  br label %bb.bj

bb.bi:                                            ; preds = %.lr.ph47.i.i
  %i.hu = tail call ptr @cli_realloc(ptr noundef nonnull %i.hr, i64 noundef %i.hq) #11
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.0.i.i.i = phi ptr [ %i.ht, %bb.bh ], [ %i.hu, %bb.bi ] ; 3 uses
  %i.hv = icmp eq ptr %.0.i.i.i, null
  br i1 %i.hv, label %bb.bk, label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  %i.hw = load ptr, ptr %i.ew, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void @free(ptr noundef nonnull %i.hw) #11
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  store ptr null, ptr %i.ew, align 8, !tbaa !100
  %i.hx = load i32, ptr %i.ev, align 8, !tbaa !22
  %i.hy = icmp eq i32 %i.hx, 0
  br i1 %i.hy, label %bb.bn, label %seterr.exit.i.i.i

bb.bn:                                            ; preds = %bb.bm
  store i32 12, ptr %i.ev, align 8, !tbaa !22
  br label %seterr.exit.i.i.i

seterr.exit.i.i.i:                                ; preds = %bb.bn, %bb.bm
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !38
  br label %mcadd.exit.i.i

bb.bo:                                            ; preds = %bb.bj
  store ptr %.0.i.i.i, ptr %i.ew, align 8, !tbaa !100
  %i.hz = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.hn
  %i.ia = getelementptr inbounds i8, ptr %i.hz, i64 -1
  %i.ib = load i64, ptr %i.ec, align 8, !tbaa !99
  %reass.sub = sub i64 %i.ib, %i.hn
  %i.ic = add i64 %reass.sub, 1
  %i.id = tail call i64 @cli_strlcpy(ptr noundef nonnull %i.ia, ptr noundef nonnull %.145.i.i, i64 noundef %i.ic) #11 ; 0 uses
  br label %mcadd.exit.i.i

mcadd.exit.i.i:                                   ; preds = %bb.bo, %seterr.exit.i.i.i
  %i.ie = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.145.i.i) #12
  %i.if = getelementptr i8, ptr %.145.i.i, i64 %i.ie
  %i.ig = getelementptr i8, ptr %i.if, i64 1      ; 2 uses
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !32
  %.not35.i.i = icmp eq i8 %i.ih, 0
  br i1 %.not35.i.i, label %p_b_cclass.exit.i, label %.lr.ph47.i.i, !llvm.loop !80

p_b_cclass.exit.i:                                ; preds = %mcadd.exit.i.i, %._crit_edge.i.i, %seterr.exit.i.i144
  %i.ii = load ptr, ptr %0, align 8, !tbaa !20    ; 4 uses
  %i.ij = load ptr, ptr %i.c, align 8, !tbaa !21  ; 3 uses
  %i.ik = icmp ult ptr %i.ii, %i.ij
  br i1 %i.ik, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %p_b_cclass.exit.i
  %i.il = load i32, ptr %i.ev, align 8, !tbaa !22
  %i.im = icmp eq i32 %i.il, 0
  br i1 %i.im, label %.critedge.thread.sink.split, label %.critedge.thread

bb.bq:                                            ; preds = %p_b_cclass.exit.i
  %i.in = getelementptr inbounds nuw i8, ptr %i.ii, i64 1 ; 2 uses
  %i.io = icmp ult ptr %i.in, %i.ij
  br i1 %i.io, label %bb.br, label %.thread147.i

bb.br:                                            ; preds = %bb.bq
  %i.ip = load i8, ptr %i.ii, align 1, !tbaa !32
  %i.iq = icmp eq i8 %i.ip, 58
  br i1 %i.iq, label %bb.bs, label %.thread147.i

bb.bs:                                            ; preds = %bb.br
  %i.ir = load i8, ptr %i.in, align 1, !tbaa !32
  %i.is = icmp eq i8 %i.ir, 93
  br i1 %i.is, label %bb.bt, label %.thread147.i

bb.bt:                                            ; preds = %bb.bs
  %i.it = getelementptr inbounds nuw i8, ptr %i.ii, i64 2 ; 2 uses
  store ptr %i.it, ptr %0, align 8, !tbaa !20
  br label %p_b_term.exit

.thread147.i:                                     ; preds = %bb.bs, %bb.br, %bb.bq
  %.pr = load i32, ptr %i.ev, align 8, !tbaa !22
  %i.iu = icmp eq i32 %.pr, 0
  br i1 %i.iu, label %.critedge.thread.sink.split, label %.critedge.thread

bb.bu:                                            ; preds = %bb.aj
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ey, i64 2 ; 3 uses
  store ptr %i.iv, ptr %0, align 8, !tbaa !20
  %i.iw = icmp ult ptr %i.iv, %i.ex
  br i1 %i.iw, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ix = load i32, ptr %i.ev, align 8, !tbaa !22
  %i.iy = icmp eq i32 %i.ix, 0
  br i1 %i.iy, label %bb.bw, label %seterr.exit99.i

bb.bw:                                            ; preds = %bb.bv
  store i32 7, ptr %i.ev, align 8, !tbaa !22
  br label %seterr.exit99.i

seterr.exit99.i:                                  ; preds = %bb.bw, %bb.bv
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !38
  br label %bb.bx

bb.bx:                                            ; preds = %seterr.exit99.i, %bb.bu
  %i.iz = phi ptr [ @nuls, %seterr.exit99.i ], [ %i.ex, %bb.bu ] ; 3 uses
  %i.ja = phi ptr [ @nuls, %seterr.exit99.i ], [ %i.iv, %bb.bu ] ; 6 uses
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !32
  switch i8 %i.jb, label %bb.bz [
    i8 93, label %bb.by
    i8 45, label %bb.by
  ]

bb.by:                                            ; preds = %bb.bx, %bb.bx
  %i.jc = load i32, ptr %i.ev, align 8, !tbaa !22
  %i.jd = icmp eq i32 %i.jc, 0
  br i1 %i.jd, label %seterr.exit.i.i101.i.sink.split, label %seterr.exit.i.i101.i

bb.bz:                                            ; preds = %bb.bx
  %i.je = icmp ult ptr %i.ja, %i.iz
  br i1 %i.je, label %.lr.ph.i.i.i, label %.critedge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bz, %.critedge34.i.i.i
  %i.jf = phi ptr [ %i.jg, %.critedge34.i.i.i ], [ %i.ja, %bb.bz ] ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 1 ; 5 uses
  %i.jh = icmp ult ptr %i.jg, %i.iz
  br i1 %i.jh, label %bb.ca, label %.critedge34.i.i.i

bb.ca:                                            ; preds = %.lr.ph.i.i.i
  %i.ji = load i8, ptr %i.jf, align 1, !tbaa !32
  %i.jj = icmp eq i8 %i.ji, 61
  br i1 %i.jj, label %bb.cb, label %.critedge34.i.i.i

bb.cb:                                            ; preds = %bb.ca
  %i.jk = load i8, ptr %i.jg, align 1, !tbaa !32
  %.not36.i.i.i = icmp eq i8 %i.jk, 93
  br i1 %.not36.i.i.i, label %bb.cc, label %.critedge34.i.i.i

.critedge34.i.i.i:                                ; preds = %bb.cb, %bb.ca, %.lr.ph.i.i.i
  store ptr %i.jg, ptr %0, align 8, !tbaa !20
  %exitcond.not.i.i.i = icmp eq ptr %i.jg, %i.iz
  br i1 %exitcond.not.i.i.i, label %.critedge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

.critedge.i.i.i:                                  ; preds = %.critedge34.i.i.i, %bb.bz
  %.pr300 = load i32, ptr %i.ev, align 8, !tbaa !22
  %i.jl = icmp eq i32 %.pr300, 0
  br i1 %i.jl, label %seterr.exit.i.i101.i.sink.split, label %seterr.exit.i.i101.i

seterr.exit.i.i101.i.sink.split:                  ; preds = %.critedge.i.i.i, %bb.by
  %.sink327 = phi i32 [ 3, %bb.by ], [ 7, %.critedge.i.i.i ]
  store i32 %.sink327, ptr %i.ev, align 8, !tbaa !22
  br label %seterr.exit.i.i101.i

end_hunk_0
