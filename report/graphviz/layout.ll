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
  %.2171233.i = phi ptr [ %i.hq, %._crit_edge231.i ], [ %i.ez, %._crit_edge225.i ] ; 3 uses
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
  %.0163228.i = phi ptr [ %i.fe, %.lr.ph230.i ], [ %i.hp, %bb.ak ] ; 5 uses
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
  %i.hc = shl nsw i64 %i.gy, 3                    ; 2 uses
  %7 = shl nuw nsw i64 %i.gz, 3                   ; 3 uses
  %i.hd = icmp eq i64 %i.gz, 0
  br i1 %i.hd, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @free(ptr noundef %i.gq) #18
  br label %addEdge.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.he = call ptr @realloc(ptr noundef %i.gq, i64 noundef %7) #24 ; 4 uses
  %i.hf = icmp eq ptr %i.he, null
  br i1 %i.hf, label %bb.ai, label %8

bb.ai:                                            ; preds = %bb.ah
  %i.hg = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.hh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hg, ptr noundef nonnull @.str.2, i64 noundef %7) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

8:                                                ; preds = %bb.ah
  %9 = icmp ugt i64 %7, %i.hc
  br i1 %9, label %bb.aj, label %addEdge.exit.i

bb.aj:                                            ; preds = %8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hc
  store i64 0, ptr %i.hi, align 1
  br label %addEdge.exit.i

addEdge.exit.i:                                   ; preds = %bb.aj, %8, %bb.ag
  %.0.i.i.i.i = phi ptr [ null, %bb.ag ], [ %i.he, %bb.aj ], [ %i.he, %8 ] ; 2 uses
  %i.hj = getelementptr inbounds [8 x i8], ptr %.0.i.i.i.i, i64 %i.gy
  store ptr %.0163228.i, ptr %i.hj, align 8, !tbaa !116
  %i.hk = load ptr, ptr %i.fx, align 8, !tbaa !13 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 232
  store ptr %.0.i.i.i.i, ptr %i.hl, align 8, !tbaa !109
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 224 ; 2 uses
  %i.hn = load i16, ptr %i.hm, align 8, !tbaa !115
  %i.ho = add i16 %i.hn, 1
  store i16 %i.ho, ptr %i.hm, align 8, !tbaa !115
  br label %bb.ak

bb.ak:                                            ; preds = %addEdge.exit.i, %bb.x
  %i.hp = call ptr @agnxtout(ptr noundef nonnull %0, ptr noundef nonnull %.0163228.i) #18 ; 2 uses
  %.not184.i = icmp eq ptr %i.hp, null
  br i1 %.not184.i, label %._crit_edge231.i, label %bb.x, !llvm.loop !117

._crit_edge231.i:                                 ; preds = %bb.ak, %.lr.ph235.i
  %i.hq = call ptr @agnxtnode(ptr noundef nonnull %0, ptr noundef nonnull %.2171233.i) #18 ; 2 uses
  %.not180.i = icmp eq ptr %i.hq, null
  br i1 %.not180.i, label %._crit_edge236.i, label %.lr.ph235.i, !llvm.loop !118

._crit_edge236.i:                                 ; preds = %._crit_edge231.i, %._crit_edge225.i
  %i.hr = load ptr, ptr %i.am, align 8, !tbaa !13
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 160
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !18 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !119 ; 3 uses
  %.not181.i = icmp eq ptr %i.hu, null
  br i1 %.not181.i, label %deriveGraph.exit, label %bb.al

bb.al:                                            ; preds = %._crit_edge236.i
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !120 ; 2 uses
  %i.hx = add nsw i32 %i.hw, 1                    ; 2 uses
  %i.hy = sext i32 %i.hx to i64                   ; 3 uses
  %.not.i193.i = icmp eq i32 %i.hx, 0
  br i1 %.not.i193.i, label %.thread.i.i, label %bb.am

.thread.i.i:                                      ; preds = %bb.al
  %i.hz = call noalias ptr @calloc(i64 noundef 0, i64 noundef 24) #19
  br label %gv_calloc.exit.i

bb.am:                                            ; preds = %bb.al
  %mul.ov.i.i = icmp slt i32 %i.hw, -1
  br i1 %mul.ov.i.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ia = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.ib = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ia, ptr noundef nonnull @.str.1, i64 noundef %i.hy, i64 noundef 24) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.ic = call noalias ptr @calloc(i64 noundef %i.hy, i64 noundef 24) #19 ; 2 uses
  %i.id = icmp eq ptr %i.ic, null
  br i1 %i.id, label %bb.ap, label %gv_calloc.exit.i

bb.ap:                                            ; preds = %bb.ao
  %i.ie = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.if = mul nuw nsw i64 %i.hy, 24
  %i.ig = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ie, ptr noundef nonnull @.str.2, i64 noundef %i.if) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit.i:                                 ; preds = %bb.ao, %.thread.i.i
  %i.ih = phi ptr [ %i.hz, %.thread.i.i ], [ %i.ic, %bb.ao ] ; 2 uses
  %i.ii = load ptr, ptr %i.ac, align 8, !tbaa !13
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 160
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !18
  store ptr %i.ih, ptr %i.ik, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.il = load ptr, ptr %i.hu, align 8, !tbaa !121 ; 2 uses
  %.not182237.i = icmp eq ptr %i.il, null
  br i1 %.not182237.i, label %deriveGraph.exit.thread146, label %.lr.ph242.i

.lr.ph242.i:                                      ; preds = %gv_calloc.exit.i
  %i.im = getelementptr inbounds nuw i8, ptr %4, i64 31 ; 7 uses
  %i.in = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.io = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.aq

bb.aq:                                            ; preds = %bb.bh, %.lr.ph242.i
  %i.ip = phi ptr [ %i.il, %.lr.ph242.i ], [ %i.mj, %bb.bh ] ; 4 uses
  %.0241.i = phi i32 [ 0, %.lr.ph242.i ], [ %.1.i, %bb.bh ] ; 2 uses
  %.0160240.i = phi ptr [ %i.ih, %.lr.ph242.i ], [ %.1161.i, %bb.bh ] ; 5 uses
  %.0162239.i = phi ptr [ %i.hu, %.lr.ph242.i ], [ %i.mi, %bb.bh ] ; 4 uses
  %.3238.i = phi i32 [ %.1165.lcssa.i, %.lr.ph242.i ], [ %.4.i, %bb.bh ] ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.0162239.i, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !123
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !13
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 240
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !92 ; 5 uses
  %.not183.i = icmp eq ptr %i.iv, null
  br i1 %.not183.i, label %bb.bh, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.iw = load i32, ptr %i.ip, align 8
  %i.ix = and i32 %i.iw, 3                        ; 2 uses
  %i.iy = icmp eq i32 %i.ix, 2
  %i.iz = select i1 %i.iy, i64 56, i64 -8
  %i.ja = getelementptr inbounds i8, ptr %i.ip, i64 %i.iz
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !104
  %i.jc = icmp eq i32 %i.ix, 3
  %i.jd = select i1 %i.jc, i64 56, i64 120
  %i.je = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.jd
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !104
  %i.jg = call ptr @agnameof(ptr noundef nonnull %0) #18
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !13
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 164
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !95
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !13
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 164
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !95
  %i.jp = load i32, ptr %i.ip, align 8
  %i.jq = lshr i32 %i.jp, 4
  call void (ptr, ptr, ...) @agxbprint(ptr noundef nonnull %4, ptr nonnull poison, ptr noundef %i.jg, i32 noundef %i.jk, i32 noundef %i.jo, i32 noundef %i.jq)
  %.val.i.i.i = load i8, ptr %i.im, align 1, !tbaa !80 ; 3 uses
  switch i8 %.val.i.i.i, label %agxblen.exit.i.i.i.i [
    i8 -1, label %bb.as
    i8 31, label %agxbclear.exit.thread.i.i.i
  ]

agxblen.exit.i.i.i.i:                             ; preds = %bb.ar
  %i.jr = zext i8 %.val.i.i.i to i64
  br label %agxbsizeof.exit.i.i.i.i

bb.as:                                            ; preds = %bb.ar
  %i.js = load i64, ptr %i.in, align 8, !tbaa !80
  %i.jt = load i64, ptr %i.io, align 8, !tbaa !80
  br label %agxbsizeof.exit.i.i.i.i

agxbsizeof.exit.i.i.i.i:                          ; preds = %bb.as, %agxblen.exit.i.i.i.i
  %.0.i20.i.i.i.i = phi i64 [ %i.js, %bb.as ], [ %i.jr, %agxblen.exit.i.i.i.i ]
  %.0.i14.i.i.i.i = phi i64 [ %i.jt, %bb.as ], [ 31, %agxblen.exit.i.i.i.i ]
  %.not.i5.i.i.i = icmp ult i64 %.0.i20.i.i.i.i, %.0.i14.i.i.i.i
  br i1 %.not.i5.i.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %agxbsizeof.exit.i.i.i.i
  call fastcc void @agxbmore(ptr noundef nonnull %4, i64 noundef 1)
  %.val.i15.pre.i.i.i.i = load i8, ptr %i.im, align 1, !tbaa !80
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %agxbsizeof.exit.i.i.i.i
  %.val.i15.i.i.i.i = phi i8 [ %.val.i15.pre.i.i.i.i, %bb.at ], [ %.val.i.i.i, %agxbsizeof.exit.i.i.i.i ] ; 2 uses
  %.not.i16.i.i.i.i = icmp eq i8 %.val.i15.i.i.i.i, -1
  br i1 %.not.i16.i.i.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ju = zext i8 %.val.i15.i.i.i.i to i64
  %i.jv = getelementptr inbounds nuw i8, ptr %4, i64 %i.ju
  store i8 0, ptr %i.jv, align 1, !tbaa !80
  %i.jw = load i8, ptr %i.im, align 1, !tbaa !80
  %i.jx = add i8 %i.jw, 1                         ; 2 uses
  store i8 %i.jx, ptr %i.im, align 1, !tbaa !80
  br label %agxbputc.exit.i.i.i

bb.aw:                                            ; preds = %bb.au
  %i.jy = load i64, ptr %i.in, align 8, !tbaa !80
  %i.jz = load ptr, ptr %4, align 8, !tbaa !80
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.jy
  store i8 0, ptr %i.ka, align 1, !tbaa !80
  %i.kb = load i64, ptr %i.in, align 8, !tbaa !80
  %i.kc = add i64 %i.kb, 1
  store i64 %i.kc, ptr %i.in, align 8, !tbaa !80
  %.val.i6.pr.i.i.i = load i8, ptr %i.im, align 1, !tbaa !80
  br label %agxbputc.exit.i.i.i

agxbputc.exit.i.i.i:                              ; preds = %bb.aw, %bb.av
  %.val.i8.pr.i.i.i = phi i8 [ %.val.i6.pr.i.i.i, %bb.aw ], [ %i.jx, %bb.av ]
  %.not.i7.i.i.i = icmp eq i8 %.val.i8.pr.i.i.i, -1
  br i1 %.not.i7.i.i.i, label %bb.ax, label %agxbclear.exit.thread.i.i.i

agxbclear.exit.thread.i.i.i:                      ; preds = %agxbputc.exit.i.i.i, %bb.ar
  store i8 0, ptr %i.im, align 1, !tbaa !80
  br label %portName.exit.i

bb.ax:                                            ; preds = %agxbputc.exit.i.i.i
  store i64 0, ptr %i.in, align 8, !tbaa !80
  %i.kd = load ptr, ptr %4, align 8, !tbaa !80
  br label %portName.exit.i

portName.exit.i:                                  ; preds = %bb.ax, %agxbclear.exit.thread.i.i.i
  %i.ke = phi ptr [ %i.kd, %bb.ax ], [ %4, %agxbclear.exit.thread.i.i.i ]
  %i.kf = call fastcc ptr @mkDeriveNode(ptr noundef %i.w, ptr noundef %i.ke) ; 5 uses
  %i.kg = add nsw i32 %.0241.i, 1
  %i.kh = add nsw i32 %.3238.i, 1
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 16 ; 2 uses
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !13
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 164
  store i32 %.3238.i, ptr %i.kk, align 4, !tbaa !95
  %i.kl = icmp ugt ptr %i.kf, %i.iv
  br i1 %i.kl, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %portName.exit.i
  %i.km = call ptr @agedge(ptr noundef %i.w, ptr noundef nonnull %i.iv, ptr noundef nonnull %i.kf, ptr noundef null, i32 noundef 1) #18
  br label %bb.ba

bb.az:                                            ; preds = %portName.exit.i
  %i.kn = call ptr @agedge(ptr noundef %i.w, ptr noundef nonnull %i.kf, ptr noundef nonnull %i.iv, ptr noundef null, i32 noundef 1) #18
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.1168.i = phi ptr [ %i.km, %bb.ay ], [ %i.kn, %bb.az ] ; 3 uses
  %i.ko = call ptr @agbindrec(ptr noundef %.1168.i, ptr noundef nonnull @.str.15, i32 noundef 240, i32 noundef 1) #18 ; 0 uses
  %i.kp = load ptr, ptr %.0162239.i, align 8, !tbaa !121 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !13
  %i.ks = getelementptr inbounds nuw i8, ptr %.1168.i, i64 16 ; 2 uses
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !13 ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 176
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 176
  %i.kw = load <2 x double>, ptr %i.ku, align 8, !tbaa !8
  store <2 x double> %i.kw, ptr %i.kv, align 8, !tbaa !8
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kt, i64 224
  %i.ky = load i16, ptr %i.kx, align 8, !tbaa !115
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kt, i64 232
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !109 ; 2 uses
  %i.lb = sext i16 %i.ky to i64                   ; 3 uses
  %i.lc = add nsw i64 %i.lb, 1                    ; 4 uses
  %mul.ov.i.i194.i = icmp ugt i64 %i.lc, 2305843009213693951
  br i1 %mul.ov.i.i194.i, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ld = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.le = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ld, ptr noundef nonnull @.str.1, i64 noundef %i.lc, i64 noundef 8) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.lf = shl nsw i64 %i.lb, 3                    ; 2 uses
  %10 = shl nuw nsw i64 %i.lc, 3                  ; 3 uses
  %i.lg = icmp eq i64 %i.lc, 0
  br i1 %i.lg, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void @free(ptr noundef %i.la) #18
  br label %addEdge.exit196.i

bb.be:                                            ; preds = %bb.bc
  %i.lh = call ptr @realloc(ptr noundef %i.la, i64 noundef %10) #24 ; 4 uses
  %i.li = icmp eq ptr %i.lh, null
  br i1 %i.li, label %bb.bf, label %11

bb.bf:                                            ; preds = %bb.be
  %i.lj = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.lk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lj, ptr noundef nonnull @.str.2, i64 noundef %10) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

11:                                               ; preds = %bb.be
  %12 = icmp ugt i64 %10, %i.lf
  br i1 %12, label %bb.bg, label %addEdge.exit196.i

bb.bg:                                            ; preds = %11
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.lf
  store i64 0, ptr %i.ll, align 1
  br label %addEdge.exit196.i

addEdge.exit196.i:                                ; preds = %bb.bg, %11, %bb.bd
  %.0.i.i.i195.i = phi ptr [ null, %bb.bd ], [ %i.lh, %bb.bg ], [ %i.lh, %11 ] ; 2 uses
  %i.lm = getelementptr inbounds [8 x i8], ptr %.0.i.i.i195.i, i64 %i.lb
  store ptr %i.kp, ptr %i.lm, align 8, !tbaa !116
  %i.ln = load ptr, ptr %i.ks, align 8, !tbaa !13 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 232
  store ptr %.0.i.i.i195.i, ptr %i.lo, align 8, !tbaa !109
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ln, i64 224 ; 2 uses
  %i.lq = load i16, ptr %i.lp, align 8, !tbaa !115
  %i.lr = add i16 %i.lq, 1
  store i16 %i.lr, ptr %i.lp, align 8, !tbaa !115
  %i.ls = load ptr, ptr %i.ki, align 8, !tbaa !13
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 152
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !100 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !13
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 152
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !100 ; 2 uses
  %i.lz = load <2 x i32>, ptr %i.lu, align 8, !tbaa !77
  %i.ma = add nsw <2 x i32> %i.lz, splat (i32 1)
  store <2 x i32> %i.ma, ptr %i.lu, align 8, !tbaa !77
  %i.mb = load <2 x i32>, ptr %i.ly, align 8, !tbaa !77
  %i.mc = add nsw <2 x i32> %i.mb, splat (i32 1)
  store <2 x i32> %i.mc, ptr %i.ly, align 8, !tbaa !77
  %i.md = getelementptr inbounds nuw i8, ptr %.0160240.i, i64 8
  store ptr %i.kf, ptr %i.md, align 8, !tbaa !123
  %i.me = getelementptr inbounds nuw i8, ptr %.0162239.i, i64 16
  %i.mf = load double, ptr %i.me, align 8, !tbaa !124
  %i.mg = getelementptr inbounds nuw i8, ptr %.0160240.i, i64 16
  store double %i.mf, ptr %i.mg, align 8, !tbaa !124
  store ptr %.1168.i, ptr %.0160240.i, align 8, !tbaa !121
  %i.mh = getelementptr inbounds nuw i8, ptr %.0160240.i, i64 24
  br label %bb.bh

bb.bh:                                            ; preds = %addEdge.exit196.i, %bb.aq
  %.4.i = phi i32 [ %i.kh, %addEdge.exit196.i ], [ %.3238.i, %bb.aq ]
  %.1161.i = phi ptr [ %i.mh, %addEdge.exit196.i ], [ %.0160240.i, %bb.aq ]
  %.1.i = phi i32 [ %i.kg, %addEdge.exit196.i ], [ %.0241.i, %bb.aq ] ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.0162239.i, i64 24 ; 2 uses
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !121 ; 2 uses
  %.not182.i = icmp eq ptr %i.mj, null
  br i1 %.not182.i, label %._crit_edge243.i, label %bb.aq, !llvm.loop !125

._crit_edge243.i:                                 ; preds = %bb.bh
  %.val192.pre.i = load i8, ptr %i.im, align 1, !tbaa !80
  %i.mk = icmp eq i8 %.val192.pre.i, -1
  br i1 %i.mk, label %bb.bi, label %deriveGraph.exit.thread146

bb.bi:                                            ; preds = %._crit_edge243.i
  %.val.i = load ptr, ptr %4, align 8
  call void @free(ptr noundef %.val.i) #18
  br label %deriveGraph.exit.thread146

deriveGraph.exit.thread146:                       ; preds = %gv_calloc.exit.i, %._crit_edge243.i, %bb.bi
  %.0.lcssa291.i = phi i32 [ %.1.i, %bb.bi ], [ %.1.i, %._crit_edge243.i ], [ 0, %gv_calloc.exit.i ]
  %i.ml = load ptr, ptr %i.ac, align 8, !tbaa !13
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 160
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !18
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  store i32 %.0.lcssa291.i, ptr %i.mo, align 8, !tbaa !120
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.bj

deriveGraph.exit:                                 ; preds = %._crit_edge236.i
  %i.mp = icmp eq ptr %i.w, null
  br i1 %i.mp, label %bb.dr, label %bb.bj

bb.bj:                                            ; preds = %deriveGraph.exit.thread146, %deriveGraph.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @findCComp(ptr dead_on_unwind nonnull writable sret(%struct.graphs_t) align 8 %6, ptr noundef nonnull %i.w, ptr noundef nonnull %i.b, ptr noundef nonnull %2) #18
  %i.mq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 11 uses
  %.val126188 = load i64, ptr %i.mq, align 8, !tbaa !87
  %.not113189.not = icmp eq i64 %.val126188, 0
  br i1 %.not113189.not, label %.thread, label %.lr.ph192

.lr.ph192:                                        ; preds = %bb.bj, %.critedge.thread
  %.0102190 = phi i64 [ %i.ve, %.critedge.thread ], [ 0, %bb.bj ] ; 2 uses
  %i.mr = load ptr, ptr %6, align 8, !tbaa !80
  %i.ms = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %6, i64 noundef %.0102190) #18
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.mr, i64 %i.ms
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !81 ; 9 uses
  call void @fdp_tLayout(ptr noundef %i.mu, ptr noundef nonnull %5) #18
  %i.mv = call ptr @agfstnode(ptr noundef %i.mu) #18 ; 2 uses
  %.not109183 = icmp eq ptr %i.mv, null
  br i1 %.not109183, label %._crit_edge187, label %.lr.ph186

.lr.ph186:                                        ; preds = %.lr.ph192, %bb.cn
  %.198184 = phi ptr [ %i.mw, %bb.cn ], [ %i.mv, %.lr.ph192 ] ; 9 uses
  %i.mw = call ptr @agnxtnode(ptr noundef %i.mu, ptr noundef nonnull %.198184) #18 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.198184, i64 16 ; 3 uses
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !13 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 336
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !63 ; 5 uses
  %.not110 = icmp eq ptr %i.na, null
  %i.nb = getelementptr inbounds nuw i8, ptr %i.my, i64 152
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !100 ; 3 uses
  br i1 %.not110, label %bb.cl, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph186
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 4
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !108 ; 4 uses
  %.not.i = icmp eq i32 %i.ne, 0
  br i1 %.not.i, label %expandCluster.exit.thread, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.nf = add nsw i32 %i.ne, 1                    ; 2 uses
  %i.ng = sext i32 %i.nf to i64                   ; 3 uses
  %.not.i.i127 = icmp eq i32 %i.nf, 0
  br i1 %.not.i.i127, label %.thread.i.i133, label %bb.bm

.thread.i.i133:                                   ; preds = %bb.bl
  %i.nh = call noalias ptr @calloc(i64 noundef 0, i64 noundef 24) #19
  br label %gv_calloc.exit.i129

bb.bm:                                            ; preds = %bb.bl
  %mul.ov.i.i128 = icmp slt i32 %i.ne, -1
  br i1 %mul.ov.i.i128, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.ni = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.nj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ni, ptr noundef nonnull @.str.1, i64 noundef %i.ng, i64 noundef 24) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.bo:                                            ; preds = %bb.bm
  %i.nk = call noalias ptr @calloc(i64 noundef %i.ng, i64 noundef 24) #19 ; 2 uses
  %i.nl = icmp eq ptr %i.nk, null
  br i1 %i.nl, label %bb.bp, label %gv_calloc.exit.i129

bb.bp:                                            ; preds = %bb.bo
  %i.nm = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.nn = mul nuw nsw i64 %i.ng, 24
  %i.no = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nm, ptr noundef nonnull @.str.2, i64 noundef %i.nn) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit.i129:                              ; preds = %bb.bo, %.thread.i.i133
  %i.np = phi ptr [ %i.nh, %.thread.i.i133 ], [ %i.nk, %bb.bo ] ; 2 uses
  %i.nq = load i32, ptr %i.nc, align 8, !tbaa !114 ; 8 uses
  %i.nr = add nsw i32 %i.nq, 1                    ; 2 uses
  %i.ns = sext i32 %i.nr to i64                   ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.nr, 0
  br i1 %.not.i.i.i, label %.thread.i.i.i, label %bb.bq

.thread.i.i.i:                                    ; preds = %gv_calloc.exit.i129
  %i.nt = call noalias ptr @calloc(i64 noundef 0, i64 noundef 24) #19
  br label %gv_calloc.exit.i.i

bb.bq:                                            ; preds = %gv_calloc.exit.i129
  %mul.ov.i.i.i130 = icmp slt i32 %i.nq, -1
  br i1 %mul.ov.i.i.i130, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.nu = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.nv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nu, ptr noundef nonnull @.str.1, i64 noundef %i.ns, i64 noundef 24) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.nw = call noalias ptr @calloc(i64 noundef %i.ns, i64 noundef 24) #19 ; 2 uses
  %i.nx = icmp eq ptr %i.nw, null
  br i1 %i.nx, label %bb.bt, label %gv_calloc.exit.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.ny = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.nz = mul nuw nsw i64 %i.ns, 24
  %i.oa = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ny, ptr noundef nonnull @.str.2, i64 noundef %i.nz) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit.i.i:                               ; preds = %bb.bs, %.thread.i.i.i
  %i.ob = phi ptr [ %i.nt, %.thread.i.i.i ], [ %i.nw, %bb.bs ] ; 14 uses
  %i.oc = call ptr @agfstedge(ptr noundef %i.mu, ptr noundef nonnull %.198184) #18 ; 2 uses
  %.not77.i.i = icmp eq ptr %i.oc, null
  br i1 %.not77.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %gv_calloc.exit.i.i, %bb.bv
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.bv ], [ 0, %gv_calloc.exit.i.i ] ; 2 uses
  %.07178.i.i = phi ptr [ %i.pj, %bb.bv ], [ %i.oc, %gv_calloc.exit.i.i ] ; 5 uses
  %i.od = load i32, ptr %.07178.i.i, align 8
  %i.oe = and i32 %i.od, 3                        ; 2 uses
  %i.of = icmp eq i32 %i.oe, 2
  %i.og = select i1 %i.of, i64 56, i64 -8
  %i.oh = getelementptr inbounds i8, ptr %.07178.i.i, i64 %i.og
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !104 ; 2 uses
  %i.oj = icmp eq ptr %i.oi, %.198184
  br i1 %i.oj, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.lr.ph.i.i
  %i.ok = icmp eq i32 %i.oe, 3
  %i.ol = select i1 %i.ok, i64 56, i64 120
  %i.om = getelementptr inbounds nuw i8, ptr %.07178.i.i, i64 %i.ol
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !104
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %.lr.ph.i.i
  %.073.i.i = phi ptr [ %i.on, %bb.bu ], [ %i.oi, %.lr.ph.i.i ]
  %i.oo = getelementptr inbounds nuw i8, ptr %.073.i.i, i64 16
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !13
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 176
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !64 ; 2 uses
  %i.os = load double, ptr %i.or, align 8, !tbaa !8
end_hunk_0
