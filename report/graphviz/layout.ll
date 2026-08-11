inline.NumInlined: 73
inline.NumDeleted: 31
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@layout:bb.a
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !13 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 240
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !92
  %.not185.i = icmp eq ptr %i.cz, null
  br i1 %.not185.i, label %bb.q, label %bb.w

bb.q:                                             ; preds = %.lr.ph224.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 336 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !63 ; 2 uses
  %.not186.i = icmp eq ptr %i.db, null
  br i1 %.not186.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dc = load ptr, ptr %i.am, align 8, !tbaa !13
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 160
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !18
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 56
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !85
  %.not187.i = icmp eq ptr %i.db, %i.dg
  br i1 %.not187.i, label %bb.s, label %deriveGraph.exit.thread

deriveGraph.exit.thread:                          ; preds = %bb.r
  %i.dh = call ptr @agnameof(ptr noundef nonnull %.1170220.i) #18
  %i.di = call ptr @agnameof(ptr noundef nonnull %0) #18
  %i.dj = load ptr, ptr %i.cw, align 8, !tbaa !13
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 336
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !63
  %i.dm = call ptr @agnameof(ptr noundef %i.dl) #18
  call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.14, ptr noundef %i.dh, ptr noundef %i.di, ptr noundef %i.dm) #18
  br label %bb.dr

bb.s:                                             ; preds = %bb.r, %bb.q
  store ptr %0, ptr %i.da, align 8, !tbaa !63
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cx, i64 162
  %i.do = load i8, ptr %i.dn, align 2, !tbaa !54, !range !61, !noundef !62
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dq = call ptr @agnameof(ptr noundef nonnull %.1170220.i) #18
  %i.dr = call fastcc ptr @mkDeriveNode(ptr noundef %i.w, ptr noundef %i.dq) ; 2 uses
  %i.ds = load ptr, ptr %i.cw, align 8, !tbaa !13 ; 7 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 240
  store ptr %i.dr, ptr %i.dt, align 8, !tbaa !92
  %i.du = add nsw i32 %.1165222.i, 1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !13 ; 8 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 164
  store i32 %.1165222.i, ptr %i.dx, align 4, !tbaa !95
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  %i.ea = load <2 x double>, ptr %i.dy, align 8, !tbaa !8
  store <2 x double> %i.ea, ptr %i.dz, align 8, !tbaa !8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ds, i64 112
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !66
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dw, i64 112
  store double %i.ec, ptr %i.ed, align 8, !tbaa !66
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ds, i64 96
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 96
  %i.eg = load <2 x double>, ptr %i.ee, align 8, !tbaa !8
  store <2 x double> %i.eg, ptr %i.ef, align 8, !tbaa !8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.ej = load <2 x ptr>, ptr %i.eh, align 8, !tbaa !99
  store <2 x ptr> %i.ej, ptr %i.ei, align 8, !tbaa !99
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ds, i64 163
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !96  ; 2 uses
  %.not188.i = icmp eq i8 %i.el, 0
  br i1 %.not188.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.em = getelementptr inbounds nuw i8, ptr %i.ds, i64 176
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !64 ; 2 uses
  %i.eo = load double, ptr %i.en, align 8, !tbaa !8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dw, i64 176
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !64 ; 2 uses
  store double %i.eo, ptr %i.eq, align 8, !tbaa !8
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.es = load double, ptr %i.er, align 8, !tbaa !8
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store double %i.es, ptr %i.et, align 8, !tbaa !8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dw, i64 163
  store i8 %i.el, ptr %i.eu, align 1, !tbaa !96
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dw, i64 152
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !100
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store ptr %.1170220.i, ptr %i.ex, align 8, !tbaa !101
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s, %.lr.ph224.i
  %.2.i = phi i32 [ %.1165222.i, %.lr.ph224.i ], [ %.1165222.i, %bb.s ], [ %i.du, %bb.v ] ; 2 uses
  %i.ey = call ptr @agnxtnode(ptr noundef nonnull %0, ptr noundef nonnull %.1170220.i) #18 ; 2 uses
  %.not179.i = icmp eq ptr %i.ey, null
  br i1 %.not179.i, label %._crit_edge225.i, label %.lr.ph224.i, !llvm.loop !103

._crit_edge225.i:                                 ; preds = %bb.w, %._crit_edge218.i
  %.1165.lcssa.i = phi i32 [ %.0164.lcssa.i, %._crit_edge218.i ], [ %.2.i, %bb.w ]
  %i.ez = call ptr @agfstnode(ptr noundef nonnull %0) #18 ; 2 uses
  %.not180232.i = icmp eq ptr %i.ez, null
  br i1 %.not180232.i, label %._crit_edge236.i, label %.lr.ph235.i

.lr.ph235.i:                                      ; preds = %._crit_edge225.i, %._crit_edge231.i
  %.2171233.i = phi ptr [ %i.hr, %._crit_edge231.i ], [ %i.ez, %._crit_edge225.i ] ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.2171233.i, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !13
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 240
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !92 ; 5 uses
  %i.fe = call ptr @agfstout(ptr noundef nonnull %0, ptr noundef nonnull %.2171233.i) #18 ; 2 uses
  %.not184227.i = icmp eq ptr %i.fe, null
  br i1 %.not184227.i, label %._crit_edge231.i, label %.lr.ph230.i

.lr.ph230.i:                                      ; preds = %.lr.ph235.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  br label %bb.x

bb.x:                                             ; preds = %bb.ak, %.lr.ph230.i
  %.0163228.i = phi ptr [ %i.fe, %.lr.ph230.i ], [ %i.hq, %bb.ak ] ; 5 uses
  %i.fg = load i32, ptr %.0163228.i, align 8
  %i.fh = and i32 %i.fg, 3
  %i.fi = icmp eq i32 %i.fh, 2
  %i.fj = select i1 %i.fi, i64 56, i64 -8
  %i.fk = getelementptr inbounds i8, ptr %.0163228.i, i64 %i.fj
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !104
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !13
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 240
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !92 ; 5 uses
  %i.fq = icmp eq ptr %i.fp, %i.fd
  br i1 %i.fq, label %bb.ak, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fr = icmp ugt ptr %i.fp, %i.fd
  br i1 %i.fr, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fs = call ptr @agedge(ptr noundef %i.w, ptr noundef %i.fd, ptr noundef nonnull %i.fp, ptr noundef null, i32 noundef 1) #18
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.ft = call ptr @agedge(ptr noundef %i.w, ptr noundef %i.fp, ptr noundef %i.fd, ptr noundef null, i32 noundef 1) #18
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0167.i = phi ptr [ %i.fs, %bb.z ], [ %i.ft, %bb.aa ] ; 2 uses
  %i.fu = call ptr @agbindrec(ptr noundef %.0167.i, ptr noundef nonnull @.str.15, i32 noundef 240, i32 noundef 1) #18 ; 0 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.0163228.i, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !13
  %i.fx = getelementptr inbounds nuw i8, ptr %.0167.i, i64 16 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !13 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 176
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 176
  %i.gb = load <2 x double>, ptr %i.fz, align 8, !tbaa !8
  store <2 x double> %i.gb, ptr %i.ga, align 8, !tbaa !8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !13
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 152
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !100 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 4 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !108
  %i.gi = add nsw i32 %i.gh, 1
  store i32 %i.gi, ptr %i.gg, align 4, !tbaa !108
  %i.gj = load ptr, ptr %i.ff, align 8, !tbaa !13
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 152
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !100 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 4 ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !108
  %i.go = add nsw i32 %i.gn, 1
  store i32 %i.go, ptr %i.gm, align 4, !tbaa !108
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fy, i64 232
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !109 ; 3 uses
  %i.gr = icmp eq ptr %i.gq, null
  br i1 %i.gr, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gs = load i32, ptr %i.gf, align 8, !tbaa !114
  %i.gt = add nsw i32 %i.gs, 1
  store i32 %i.gt, ptr %i.gf, align 8, !tbaa !114
  %i.gu = load i32, ptr %i.gl, align 8, !tbaa !114
  %i.gv = add nsw i32 %i.gu, 1
  store i32 %i.gv, ptr %i.gl, align 8, !tbaa !114
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fy, i64 224
  %i.gx = load i16, ptr %i.gw, align 8, !tbaa !115
  %i.gy = sext i16 %i.gx to i64                   ; 3 uses
  %i.gz = add nsw i64 %i.gy, 1                    ; 4 uses
  %mul.ov.i.i.i = icmp ugt i64 %i.gz, 2305843009213693951
  br i1 %mul.ov.i.i.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ha = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.hb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ha, ptr noundef nonnull @.str.1, i64 noundef %i.gz, i64 noundef 8) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.hc = shl nsw i64 %i.gy, 3
  %i.hd = icmp eq i64 %i.gz, 0
  br i1 %i.hd, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @free(ptr noundef %i.gq) #18
  br label %addEdge.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.he = shl nuw nsw i64 %i.gz, 3                ; 2 uses
  %i.hf = call ptr @realloc(ptr noundef %i.gq, i64 noundef %i.he) #24 ; 3 uses
  %i.hg = icmp eq ptr %i.hf, null
  br i1 %i.hg, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.hh = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.hi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hh, ptr noundef nonnull @.str.2, i64 noundef %i.he) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hc
  store i64 0, ptr %i.hj, align 1
  br label %addEdge.exit.i

addEdge.exit.i:                                   ; preds = %bb.aj, %bb.ag
  %.0.i.i.i.i = phi ptr [ null, %bb.ag ], [ %i.hf, %bb.aj ] ; 2 uses
  %i.hk = getelementptr inbounds [8 x i8], ptr %.0.i.i.i.i, i64 %i.gy
  store ptr %.0163228.i, ptr %i.hk, align 8, !tbaa !116
  %i.hl = load ptr, ptr %i.fx, align 8, !tbaa !13 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 232
  store ptr %.0.i.i.i.i, ptr %i.hm, align 8, !tbaa !109
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 224 ; 2 uses
  %i.ho = load i16, ptr %i.hn, align 8, !tbaa !115
  %i.hp = add i16 %i.ho, 1
  store i16 %i.hp, ptr %i.hn, align 8, !tbaa !115
  br label %bb.ak

bb.ak:                                            ; preds = %addEdge.exit.i, %bb.x
  %i.hq = call ptr @agnxtout(ptr noundef nonnull %0, ptr noundef nonnull %.0163228.i) #18 ; 2 uses
  %.not184.i = icmp eq ptr %i.hq, null
  br i1 %.not184.i, label %._crit_edge231.i, label %bb.x, !llvm.loop !117

._crit_edge231.i:                                 ; preds = %bb.ak, %.lr.ph235.i
  %i.hr = call ptr @agnxtnode(ptr noundef nonnull %0, ptr noundef nonnull %.2171233.i) #18 ; 2 uses
  %.not180.i = icmp eq ptr %i.hr, null
  br i1 %.not180.i, label %._crit_edge236.i, label %.lr.ph235.i, !llvm.loop !118

._crit_edge236.i:                                 ; preds = %._crit_edge231.i, %._crit_edge225.i
  %i.hs = load ptr, ptr %i.am, align 8, !tbaa !13
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 160
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !18 ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !119 ; 3 uses
  %.not181.i = icmp eq ptr %i.hv, null
  br i1 %.not181.i, label %deriveGraph.exit, label %bb.al

bb.al:                                            ; preds = %._crit_edge236.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !120 ; 2 uses
  %i.hy = add nsw i32 %i.hx, 1                    ; 2 uses
  %i.hz = sext i32 %i.hy to i64                   ; 3 uses
  %.not.i193.i = icmp eq i32 %i.hy, 0
  br i1 %.not.i193.i, label %.thread.i.i, label %bb.am

.thread.i.i:                                      ; preds = %bb.al
  %i.ia = call noalias ptr @calloc(i64 noundef 0, i64 noundef 24) #19
  br label %gv_calloc.exit.i

bb.am:                                            ; preds = %bb.al
  %mul.ov.i.i = icmp slt i32 %i.hx, -1
  br i1 %mul.ov.i.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ib = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.ic = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ib, ptr noundef nonnull @.str.1, i64 noundef %i.hz, i64 noundef 24) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.id = call noalias ptr @calloc(i64 noundef %i.hz, i64 noundef 24) #19 ; 2 uses
  %i.ie = icmp eq ptr %i.id, null
  br i1 %i.ie, label %bb.ap, label %gv_calloc.exit.i

bb.ap:                                            ; preds = %bb.ao
  %i.if = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.ig = mul nuw nsw i64 %i.hz, 24
  %i.ih = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.if, ptr noundef nonnull @.str.2, i64 noundef %i.ig) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit.i:                                 ; preds = %bb.ao, %.thread.i.i
  %i.ii = phi ptr [ %i.ia, %.thread.i.i ], [ %i.id, %bb.ao ] ; 2 uses
  %i.ij = load ptr, ptr %i.ac, align 8, !tbaa !13
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 160
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !18
  store ptr %i.ii, ptr %i.il, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.im = load ptr, ptr %i.hv, align 8, !tbaa !121 ; 2 uses
  %.not182237.i = icmp eq ptr %i.im, null
  br i1 %.not182237.i, label %deriveGraph.exit.thread146, label %.lr.ph242.i

.lr.ph242.i:                                      ; preds = %gv_calloc.exit.i
  %i.in = getelementptr inbounds nuw i8, ptr %4, i64 31 ; 7 uses
  %i.io = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.aq

bb.aq:                                            ; preds = %bb.bh, %.lr.ph242.i
  %i.iq = phi ptr [ %i.im, %.lr.ph242.i ], [ %i.ml, %bb.bh ] ; 4 uses
  %.0241.i = phi i32 [ 0, %.lr.ph242.i ], [ %.1.i, %bb.bh ] ; 2 uses
  %.0160240.i = phi ptr [ %i.ii, %.lr.ph242.i ], [ %.1161.i, %bb.bh ] ; 5 uses
  %.0162239.i = phi ptr [ %i.hv, %.lr.ph242.i ], [ %i.mk, %bb.bh ] ; 4 uses
  %.3238.i = phi i32 [ %.1165.lcssa.i, %.lr.ph242.i ], [ %.4.i, %bb.bh ] ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.0162239.i, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !123
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !13
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 240
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !92 ; 5 uses
  %.not183.i = icmp eq ptr %i.iw, null
  br i1 %.not183.i, label %bb.bh, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ix = load i32, ptr %i.iq, align 8
  %i.iy = and i32 %i.ix, 3                        ; 2 uses
  %i.iz = icmp eq i32 %i.iy, 2
  %i.ja = select i1 %i.iz, i64 56, i64 -8
  %i.jb = getelementptr inbounds i8, ptr %i.iq, i64 %i.ja
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !104
  %i.jd = icmp eq i32 %i.iy, 3
  %i.je = select i1 %i.jd, i64 56, i64 120
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.je
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !104
  %i.jh = call ptr @agnameof(ptr noundef nonnull %0) #18
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !13
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 164
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !95
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !13
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 164
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !95
  %i.jq = load i32, ptr %i.iq, align 8
  %i.jr = lshr i32 %i.jq, 4
  call void (ptr, ptr, ...) @agxbprint(ptr noundef nonnull %4, ptr nonnull poison, ptr noundef %i.jh, i32 noundef %i.jl, i32 noundef %i.jp, i32 noundef %i.jr)
  %.val.i.i.i = load i8, ptr %i.in, align 1, !tbaa !80 ; 3 uses
  switch i8 %.val.i.i.i, label %agxblen.exit.i.i.i.i [
    i8 -1, label %bb.as
    i8 31, label %agxbclear.exit.thread.i.i.i
  ]

agxblen.exit.i.i.i.i:                             ; preds = %bb.ar
  %i.js = zext i8 %.val.i.i.i to i64
  br label %agxbsizeof.exit.i.i.i.i

bb.as:                                            ; preds = %bb.ar
  %i.jt = load i64, ptr %i.io, align 8, !tbaa !80
  %i.ju = load i64, ptr %i.ip, align 8, !tbaa !80
  br label %agxbsizeof.exit.i.i.i.i

agxbsizeof.exit.i.i.i.i:                          ; preds = %bb.as, %agxblen.exit.i.i.i.i
  %.0.i20.i.i.i.i = phi i64 [ %i.jt, %bb.as ], [ %i.js, %agxblen.exit.i.i.i.i ]
  %.0.i14.i.i.i.i = phi i64 [ %i.ju, %bb.as ], [ 31, %agxblen.exit.i.i.i.i ]
  %.not.i5.i.i.i = icmp ult i64 %.0.i20.i.i.i.i, %.0.i14.i.i.i.i
  br i1 %.not.i5.i.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %agxbsizeof.exit.i.i.i.i
  call fastcc void @agxbmore(ptr noundef nonnull %4, i64 noundef 1)
  %.val.i15.pre.i.i.i.i = load i8, ptr %i.in, align 1, !tbaa !80
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %agxbsizeof.exit.i.i.i.i
  %.val.i15.i.i.i.i = phi i8 [ %.val.i15.pre.i.i.i.i, %bb.at ], [ %.val.i.i.i, %agxbsizeof.exit.i.i.i.i ] ; 2 uses
  %.not.i16.i.i.i.i = icmp eq i8 %.val.i15.i.i.i.i, -1
  br i1 %.not.i16.i.i.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jv = zext i8 %.val.i15.i.i.i.i to i64
  %i.jw = getelementptr inbounds nuw i8, ptr %4, i64 %i.jv
  store i8 0, ptr %i.jw, align 1, !tbaa !80
  %i.jx = load i8, ptr %i.in, align 1, !tbaa !80
  %i.jy = add i8 %i.jx, 1                         ; 2 uses
  store i8 %i.jy, ptr %i.in, align 1, !tbaa !80
  br label %agxbputc.exit.i.i.i

bb.aw:                                            ; preds = %bb.au
  %i.jz = load i64, ptr %i.io, align 8, !tbaa !80
  %i.ka = load ptr, ptr %4, align 8, !tbaa !80
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.jz
  store i8 0, ptr %i.kb, align 1, !tbaa !80
  %i.kc = load i64, ptr %i.io, align 8, !tbaa !80
  %i.kd = add i64 %i.kc, 1
  store i64 %i.kd, ptr %i.io, align 8, !tbaa !80
  %.val.i6.pr.i.i.i = load i8, ptr %i.in, align 1, !tbaa !80
  br label %agxbputc.exit.i.i.i

agxbputc.exit.i.i.i:                              ; preds = %bb.aw, %bb.av
  %.val.i8.pr.i.i.i = phi i8 [ %.val.i6.pr.i.i.i, %bb.aw ], [ %i.jy, %bb.av ]
  %.not.i7.i.i.i = icmp eq i8 %.val.i8.pr.i.i.i, -1
  br i1 %.not.i7.i.i.i, label %bb.ax, label %agxbclear.exit.thread.i.i.i

agxbclear.exit.thread.i.i.i:                      ; preds = %agxbputc.exit.i.i.i, %bb.ar
  store i8 0, ptr %i.in, align 1, !tbaa !80
  br label %portName.exit.i

bb.ax:                                            ; preds = %agxbputc.exit.i.i.i
  store i64 0, ptr %i.io, align 8, !tbaa !80
  %i.ke = load ptr, ptr %4, align 8, !tbaa !80
  br label %portName.exit.i

portName.exit.i:                                  ; preds = %bb.ax, %agxbclear.exit.thread.i.i.i
  %i.kf = phi ptr [ %i.ke, %bb.ax ], [ %4, %agxbclear.exit.thread.i.i.i ]
  %i.kg = call fastcc ptr @mkDeriveNode(ptr noundef %i.w, ptr noundef %i.kf) ; 5 uses
  %i.kh = add nsw i32 %.0241.i, 1
  %i.ki = add nsw i32 %.3238.i, 1
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !13
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 164
  store i32 %.3238.i, ptr %i.kl, align 4, !tbaa !95
  %i.km = icmp ugt ptr %i.kg, %i.iw
  br i1 %i.km, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %portName.exit.i
  %i.kn = call ptr @agedge(ptr noundef %i.w, ptr noundef nonnull %i.iw, ptr noundef nonnull %i.kg, ptr noundef null, i32 noundef 1) #18
  br label %bb.ba

bb.az:                                            ; preds = %portName.exit.i
  %i.ko = call ptr @agedge(ptr noundef %i.w, ptr noundef nonnull %i.kg, ptr noundef nonnull %i.iw, ptr noundef null, i32 noundef 1) #18
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.1168.i = phi ptr [ %i.kn, %bb.ay ], [ %i.ko, %bb.az ] ; 3 uses
  %i.kp = call ptr @agbindrec(ptr noundef %.1168.i, ptr noundef nonnull @.str.15, i32 noundef 240, i32 noundef 1) #18 ; 0 uses
  %i.kq = load ptr, ptr %.0162239.i, align 8, !tbaa !121 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !13
  %i.kt = getelementptr inbounds nuw i8, ptr %.1168.i, i64 16 ; 2 uses
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !13 ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 176
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 176
  %i.kx = load <2 x double>, ptr %i.kv, align 8, !tbaa !8
  store <2 x double> %i.kx, ptr %i.kw, align 8, !tbaa !8
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ku, i64 224
  %i.kz = load i16, ptr %i.ky, align 8, !tbaa !115
  %i.la = getelementptr inbounds nuw i8, ptr %i.ku, i64 232
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !109 ; 2 uses
  %i.lc = sext i16 %i.kz to i64                   ; 3 uses
  %i.ld = add nsw i64 %i.lc, 1                    ; 4 uses
  %mul.ov.i.i194.i = icmp ugt i64 %i.ld, 2305843009213693951
  br i1 %mul.ov.i.i194.i, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.le = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.lf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.le, ptr noundef nonnull @.str.1, i64 noundef %i.ld, i64 noundef 8) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.lg = shl nsw i64 %i.lc, 3
  %i.lh = icmp eq i64 %i.ld, 0
  br i1 %i.lh, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void @free(ptr noundef %i.lb) #18
  br label %addEdge.exit196.i

bb.be:                                            ; preds = %bb.bc
  %i.li = shl nuw nsw i64 %i.ld, 3                ; 2 uses
  %i.lj = call ptr @realloc(ptr noundef %i.lb, i64 noundef %i.li) #24 ; 3 uses
  %i.lk = icmp eq ptr %i.lj, null
  br i1 %i.lk, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ll = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.lm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ll, ptr noundef nonnull @.str.2, i64 noundef %i.li) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.lg
  store i64 0, ptr %i.ln, align 1
  br label %addEdge.exit196.i

addEdge.exit196.i:                                ; preds = %bb.bg, %bb.bd
  %.0.i.i.i195.i = phi ptr [ null, %bb.bd ], [ %i.lj, %bb.bg ] ; 2 uses
  %i.lo = getelementptr inbounds [8 x i8], ptr %.0.i.i.i195.i, i64 %i.lc
  store ptr %i.kq, ptr %i.lo, align 8, !tbaa !116
  %i.lp = load ptr, ptr %i.kt, align 8, !tbaa !13 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 232
  store ptr %.0.i.i.i195.i, ptr %i.lq, align 8, !tbaa !109
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 224 ; 2 uses
  %i.ls = load i16, ptr %i.lr, align 8, !tbaa !115
  %i.lt = add i16 %i.ls, 1
  store i16 %i.lt, ptr %i.lr, align 8, !tbaa !115
  %i.lu = load ptr, ptr %i.kj, align 8, !tbaa !13
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 152
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !100 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !13
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 152
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !100 ; 2 uses
  %i.mb = load <2 x i32>, ptr %i.lw, align 8, !tbaa !77
  %i.mc = add nsw <2 x i32> %i.mb, splat (i32 1)
  store <2 x i32> %i.mc, ptr %i.lw, align 8, !tbaa !77
  %i.md = load <2 x i32>, ptr %i.ma, align 8, !tbaa !77
  %i.me = add nsw <2 x i32> %i.md, splat (i32 1)
  store <2 x i32> %i.me, ptr %i.ma, align 8, !tbaa !77
  %i.mf = getelementptr inbounds nuw i8, ptr %.0160240.i, i64 8
  store ptr %i.kg, ptr %i.mf, align 8, !tbaa !123
  %i.mg = getelementptr inbounds nuw i8, ptr %.0162239.i, i64 16
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !124
  %i.mi = getelementptr inbounds nuw i8, ptr %.0160240.i, i64 16
  store double %i.mh, ptr %i.mi, align 8, !tbaa !124
  store ptr %.1168.i, ptr %.0160240.i, align 8, !tbaa !121
  %i.mj = getelementptr inbounds nuw i8, ptr %.0160240.i, i64 24
  br label %bb.bh

bb.bh:                                            ; preds = %addEdge.exit196.i, %bb.aq
  %.4.i = phi i32 [ %i.ki, %addEdge.exit196.i ], [ %.3238.i, %bb.aq ]
  %.1161.i = phi ptr [ %i.mj, %addEdge.exit196.i ], [ %.0160240.i, %bb.aq ]
  %.1.i = phi i32 [ %i.kh, %addEdge.exit196.i ], [ %.0241.i, %bb.aq ] ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.0162239.i, i64 24 ; 2 uses
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !121 ; 2 uses
  %.not182.i = icmp eq ptr %i.ml, null
  br i1 %.not182.i, label %._crit_edge243.i, label %bb.aq, !llvm.loop !125

._crit_edge243.i:                                 ; preds = %bb.bh
  %.val192.pre.i = load i8, ptr %i.in, align 1, !tbaa !80
  %i.mm = icmp eq i8 %.val192.pre.i, -1
  br i1 %i.mm, label %bb.bi, label %deriveGraph.exit.thread146

bb.bi:                                            ; preds = %._crit_edge243.i
  %.val.i = load ptr, ptr %4, align 8
  call void @free(ptr noundef %.val.i) #18
  br label %deriveGraph.exit.thread146

deriveGraph.exit.thread146:                       ; preds = %gv_calloc.exit.i, %._crit_edge243.i, %bb.bi
  %.0.lcssa289.i = phi i32 [ %.1.i, %bb.bi ], [ %.1.i, %._crit_edge243.i ], [ 0, %gv_calloc.exit.i ]
  %i.mn = load ptr, ptr %i.ac, align 8, !tbaa !13
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 160
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !18
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  store i32 %.0.lcssa289.i, ptr %i.mq, align 8, !tbaa !120
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.bj

deriveGraph.exit:                                 ; preds = %._crit_edge236.i
  %i.mr = icmp eq ptr %i.w, null
  br i1 %i.mr, label %bb.dr, label %bb.bj

bb.bj:                                            ; preds = %deriveGraph.exit.thread146, %deriveGraph.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @findCComp(ptr dead_on_unwind nonnull writable sret(%struct.graphs_t) align 8 %6, ptr noundef nonnull %i.w, ptr noundef nonnull %i.b, ptr noundef nonnull %2) #18
  %i.ms = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 11 uses
  %.val126188 = load i64, ptr %i.ms, align 8, !tbaa !87
  %.not113189.not = icmp eq i64 %.val126188, 0
  br i1 %.not113189.not, label %.thread, label %.lr.ph192

.lr.ph192:                                        ; preds = %bb.bj, %.critedge.thread
  %.0102190 = phi i64 [ %i.vg, %.critedge.thread ], [ 0, %bb.bj ] ; 2 uses
  %i.mt = load ptr, ptr %6, align 8, !tbaa !80
  %i.mu = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %6, i64 noundef %.0102190) #18
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.mt, i64 %i.mu
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !81 ; 9 uses
  call void @fdp_tLayout(ptr noundef %i.mw, ptr noundef nonnull %5) #18
  %i.mx = call ptr @agfstnode(ptr noundef %i.mw) #18 ; 2 uses
  %.not109183 = icmp eq ptr %i.mx, null
  br i1 %.not109183, label %._crit_edge187, label %.lr.ph186

.lr.ph186:                                        ; preds = %.lr.ph192, %bb.cn
  %.198184 = phi ptr [ %i.my, %bb.cn ], [ %i.mx, %.lr.ph192 ] ; 9 uses
  %i.my = call ptr @agnxtnode(ptr noundef %i.mw, ptr noundef nonnull %.198184) #18 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.198184, i64 16 ; 3 uses
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !13 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 336
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !63 ; 5 uses
  %.not110 = icmp eq ptr %i.nc, null
  %i.nd = getelementptr inbounds nuw i8, ptr %i.na, i64 152
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !100 ; 3 uses
  br i1 %.not110, label %bb.cl, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph186
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 4
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !108 ; 4 uses
  %.not.i = icmp eq i32 %i.ng, 0
  br i1 %.not.i, label %expandCluster.exit.thread, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.nh = add nsw i32 %i.ng, 1                    ; 2 uses
  %i.ni = sext i32 %i.nh to i64                   ; 3 uses
  %.not.i.i127 = icmp eq i32 %i.nh, 0
  br i1 %.not.i.i127, label %.thread.i.i133, label %bb.bm

.thread.i.i133:                                   ; preds = %bb.bl
  %i.nj = call noalias ptr @calloc(i64 noundef 0, i64 noundef 24) #19
  br label %gv_calloc.exit.i129

bb.bm:                                            ; preds = %bb.bl
  %mul.ov.i.i128 = icmp slt i32 %i.ng, -1
  br i1 %mul.ov.i.i128, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.nk = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.nl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nk, ptr noundef nonnull @.str.1, i64 noundef %i.ni, i64 noundef 24) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.bo:                                            ; preds = %bb.bm
  %i.nm = call noalias ptr @calloc(i64 noundef %i.ni, i64 noundef 24) #19 ; 2 uses
  %i.nn = icmp eq ptr %i.nm, null
  br i1 %i.nn, label %bb.bp, label %gv_calloc.exit.i129

bb.bp:                                            ; preds = %bb.bo
  %i.no = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.np = mul nuw nsw i64 %i.ni, 24
  %i.nq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.no, ptr noundef nonnull @.str.2, i64 noundef %i.np) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit.i129:                              ; preds = %bb.bo, %.thread.i.i133
  %i.nr = phi ptr [ %i.nj, %.thread.i.i133 ], [ %i.nm, %bb.bo ] ; 2 uses
  %i.ns = load i32, ptr %i.ne, align 8, !tbaa !114 ; 8 uses
  %i.nt = add nsw i32 %i.ns, 1                    ; 2 uses
  %i.nu = sext i32 %i.nt to i64                   ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.nt, 0
  br i1 %.not.i.i.i, label %.thread.i.i.i, label %bb.bq

.thread.i.i.i:                                    ; preds = %gv_calloc.exit.i129
  %i.nv = call noalias ptr @calloc(i64 noundef 0, i64 noundef 24) #19
  br label %gv_calloc.exit.i.i

bb.bq:                                            ; preds = %gv_calloc.exit.i129
  %mul.ov.i.i.i130 = icmp slt i32 %i.ns, -1
  br i1 %mul.ov.i.i.i130, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.nw = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.nx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nw, ptr noundef nonnull @.str.1, i64 noundef %i.nu, i64 noundef 24) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.ny = call noalias ptr @calloc(i64 noundef %i.nu, i64 noundef 24) #19 ; 2 uses
  %i.nz = icmp eq ptr %i.ny, null
  br i1 %i.nz, label %bb.bt, label %gv_calloc.exit.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.oa = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.ob = mul nuw nsw i64 %i.nu, 24
  %i.oc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.oa, ptr noundef nonnull @.str.2, i64 noundef %i.ob) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit.i.i:                               ; preds = %bb.bs, %.thread.i.i.i
  %i.od = phi ptr [ %i.nv, %.thread.i.i.i ], [ %i.ny, %bb.bs ] ; 14 uses
  %i.oe = call ptr @agfstedge(ptr noundef %i.mw, ptr noundef nonnull %.198184) #18 ; 2 uses
  %.not77.i.i = icmp eq ptr %i.oe, null
  br i1 %.not77.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

end_hunk_0
