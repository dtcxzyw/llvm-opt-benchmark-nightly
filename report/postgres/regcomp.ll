Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/regcomp?download=true
inline.NumInlined: 319
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@subcolorcvec:bb.a
  store i32 %i.ej, ptr %i.ek, align 4
  %i.el = tail call fastcc i32 @newhicolorrow(ptr noundef %i.cy, i32 noundef 0) ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store i32 %i.el, ptr %i.em, align 4
  %i.en = add i32 %.1132161.i196, 1
  call fastcc void @subcoloronerow(ptr noundef nonnull readonly %0, i32 noundef %i.el, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.a)
  %i.eo = load i32, ptr %.1129162.i193, align 4
  br label %bb.ad

bb.ac:                                            ; preds = %.lr.ph198
  %.not148.i = icmp ugt i32 %.0134160.i197, %i.ee
  br i1 %.not148.i, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.thread.i
  %.2133205.i = phi i32 [ %i.en, %.thread.i ], [ %.1132161.i196, %bb.ac ] ; 3 uses
  %.1135204.i = phi i32 [ %i.eo, %.thread.i ], [ %.0134160.i197, %bb.ac ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.1129162.i193, i64 4 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4
  %.not149.i = icmp ult i32 %i.ac, %i.eq
  br i1 %.not149.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.er = add i32 %.2133205.i, 1
  %i.es = sext i32 %.2133205.i to i64
  %i.et = getelementptr inbounds [12 x i8], ptr %i.de, i64 %i.es
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.et, ptr noundef nonnull align 4 dereferenceable(12) %.1129162.i193, i64 12, i1 false)
  %i.eu = getelementptr inbounds nuw i8, ptr %.1129162.i193, i64 8
  %i.ev = load i32, ptr %i.eu, align 4
  br label %bb.ak

bb.af:                                            ; preds = %bb.ac
  %i.ew = sext i32 %.1132161.i196 to i64
  %i.ex = getelementptr inbounds [12 x i8], ptr %i.de, i64 %i.ew ; 3 uses
  store i32 %i.ee, ptr %i.ex, align 4
  %i.ey = add i32 %.0134160.i197, -1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  store i32 %i.ey, ptr %i.ez, align 4
  %i.fa = getelementptr inbounds nuw i8, ptr %.1129162.i193, i64 8
  %i.fb = load i32, ptr %i.fa, align 4
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i32 %i.fb, ptr %i.fc, align 4
  %i.fd = add i32 %.1132161.i196, 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ad
  %.1135203.i = phi i32 [ %.0134160.i197, %bb.af ], [ %.1135204.i, %bb.ad ] ; 2 uses
  %.3.i = phi i32 [ %i.fd, %bb.af ], [ %.2133205.i, %bb.ad ] ; 3 uses
  %i.fe = sext i32 %.3.i to i64
  %i.ff = getelementptr inbounds [12 x i8], ptr %i.de, i64 %i.fe ; 3 uses
  store i32 %.1135203.i, ptr %i.ff, align 4
  %i.fg = getelementptr inbounds nuw i8, ptr %.1129162.i193, i64 4 ; 5 uses
  %i.fh = load i32, ptr %i.fg, align 4
  %..i = tail call i32 @llvm.umin.i32(i32 %i.ac, i32 %i.fh)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  store i32 %..i, ptr %i.fi, align 4
  %i.fj = getelementptr inbounds nuw i8, ptr %.1129162.i193, i64 8 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4
  %i.fl = tail call fastcc i32 @newhicolorrow(ptr noundef %i.cy, i32 noundef %i.fk) ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store i32 %i.fl, ptr %i.fm, align 4
  %i.fn = add i32 %.3.i, 1                        ; 2 uses
  %i.fo = load i32, ptr %i.fg, align 4
  %i.fp = icmp ult i32 %i.ac, %i.fo
  br i1 %i.fp, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.fq = sext i32 %i.fn to i64
  %i.fr = getelementptr inbounds [12 x i8], ptr %i.de, i64 %i.fq ; 3 uses
  store i32 %i.eb, ptr %i.fr, align 4
  %i.fs = load i32, ptr %i.fg, align 4
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  store i32 %i.fs, ptr %i.ft, align 4
  %i.fu = load i32, ptr %.1129162.i193, align 4
  %i.fv = icmp ugt i32 %.1135203.i, %i.fu
  %i.fw = load i32, ptr %i.fj, align 4            ; 2 uses
  br i1 %i.fv, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fx = tail call fastcc i32 @newhicolorrow(ptr noundef %i.cy, i32 noundef %i.fw)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.fy = phi i32 [ %i.fx, %bb.ai ], [ %i.fw, %bb.ah ]
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  store i32 %i.fy, ptr %i.fz, align 4
  %i.ga = add i32 %.3.i, 2
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ag, %bb.ae
  %.2136.in.in.i = phi ptr [ %i.ep, %bb.ae ], [ %i.fg, %bb.aj ], [ %i.fg, %bb.ag ]
  %.5.i = phi i32 [ %i.er, %bb.ae ], [ %i.ga, %bb.aj ], [ %i.fn, %bb.ag ] ; 3 uses
  %.0.i116 = phi i32 [ %i.ev, %bb.ae ], [ %i.fl, %bb.aj ], [ %i.fl, %bb.ag ]
  %.2136.in.i = load i32, ptr %.2136.in.in.i, align 4
  %.2136.i = add i32 %.2136.in.i, 1               ; 3 uses
  call fastcc void @subcoloronerow(ptr noundef nonnull readonly %0, i32 noundef %.0.i116, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.a)
  %i.gb = getelementptr inbounds nuw i8, ptr %.1129162.i193, i64 12 ; 4 uses
  %i.gc = add nuw nsw i32 %.1163.i192, 1          ; 4 uses
  %i.gd = load i32, ptr %i.cz, align 8            ; 3 uses
  %i.ge = icmp slt i32 %i.gc, %i.gd
  br i1 %i.ge, label %bb.ab, label %..critedge.i.loopexit_crit_edge204, !llvm.loop !141

..critedge.i.loopexit_crit_edge204:               ; preds = %bb.ak
  br label %.critedge.i, !llvm.loop !141

.critedge.i:                                      ; preds = %bb.ab, %.lr.ph165.i, %..critedge.i.loopexit_crit_edge204, %._crit_edge.i
  %i.gf = phi i32 [ %i.dz, %._crit_edge.i ], [ %i.dz, %.lr.ph165.i ], [ %i.gd, %..critedge.i.loopexit_crit_edge204 ], [ %i.gd, %bb.ab ]
  %.0134.lcssa.i = phi i32 [ %.396, %._crit_edge.i ], [ %.396, %.lr.ph165.i ], [ %.2136.i, %..critedge.i.loopexit_crit_edge204 ], [ %.2136.i, %bb.ab ] ; 2 uses
  %.1132.lcssa.i = phi i32 [ %.0131.lcssa.i, %._crit_edge.i ], [ %.0131.lcssa.i, %.lr.ph165.i ], [ %.5.i, %..critedge.i.loopexit_crit_edge204 ], [ %.5.i, %bb.ab ] ; 3 uses
  %.1129.lcssa.i = phi ptr [ %.0128.lcssa.i, %._crit_edge.i ], [ %.0128.lcssa.i, %.lr.ph165.i ], [ %i.gb, %..critedge.i.loopexit_crit_edge204 ], [ %i.gb, %bb.ab ]
  %.1.lcssa.i = phi i32 [ %.0131.lcssa.i, %._crit_edge.i ], [ %.0131.lcssa.i, %.lr.ph165.i ], [ %i.gc, %..critedge.i.loopexit_crit_edge204 ], [ %i.gc, %bb.ab ] ; 2 uses
  %.not146.i = icmp ugt i32 %.0134.lcssa.i, %i.ac
  br i1 %.not146.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.critedge.i
  %i.gg = sext i32 %.1132.lcssa.i to i64
  %i.gh = getelementptr inbounds [12 x i8], ptr %i.de, i64 %i.gg ; 3 uses
  store i32 %.0134.lcssa.i, ptr %i.gh, align 4
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  store i32 %i.ac, ptr %i.gi, align 4
  %i.gj = tail call fastcc i32 @newhicolorrow(ptr noundef %i.cy, i32 noundef 0) ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store i32 %i.gj, ptr %i.gk, align 4
  %i.gl = add i32 %.1132.lcssa.i, 1
  call fastcc void @subcoloronerow(ptr noundef nonnull readonly %0, i32 noundef %i.gj, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.a)
  %.pre.i115 = load i32, ptr %i.cz, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.critedge.i
  %i.gm = phi i32 [ %.pre.i115, %bb.al ], [ %i.gf, %.critedge.i ]
  %.6.i = phi i32 [ %i.gl, %bb.al ], [ %.1132.lcssa.i, %.critedge.i ] ; 2 uses
  %i.gn = icmp slt i32 %.1.lcssa.i, %i.gm
  br i1 %i.gn, label %.lr.ph179.i, label %._crit_edge180.i

.lr.ph179.i:                                      ; preds = %bb.am, %.lr.ph179.i
  %.2177.i = phi i32 [ %i.gs, %.lr.ph179.i ], [ %.1.lcssa.i, %bb.am ]
  %.2130176.i = phi ptr [ %i.gr, %.lr.ph179.i ], [ %.1129.lcssa.i, %bb.am ] ; 2 uses
  %.7175.i = phi i32 [ %i.go, %.lr.ph179.i ], [ %.6.i, %bb.am ] ; 2 uses
  %i.go = add i32 %.7175.i, 1                     ; 2 uses
  %i.gp = sext i32 %.7175.i to i64
  %i.gq = getelementptr inbounds [12 x i8], ptr %i.de, i64 %i.gp
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.gq, ptr noundef nonnull align 4 dereferenceable(12) %.2130176.i, i64 12, i1 false)
  %i.gr = getelementptr inbounds nuw i8, ptr %.2130176.i, i64 12
  %i.gs = add nuw nsw i32 %.2177.i, 1             ; 2 uses
  %i.gt = load i32, ptr %i.cz, align 8
  %i.gu = icmp slt i32 %i.gs, %i.gt
  br i1 %i.gu, label %.lr.ph179.i, label %._crit_edge180.i, !llvm.loop !142

._crit_edge180.i:                                 ; preds = %.lr.ph179.i, %bb.am
  %.7.lcssa.i = phi i32 [ %.6.i, %bb.am ], [ %i.go, %.lr.ph179.i ]
  %i.gv = load ptr, ptr %i.dm, align 8            ; 2 uses
  %.not147.i = icmp eq ptr %i.gv, null
  br i1 %.not147.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %._crit_edge180.i
  tail call void @pfree(ptr noundef nonnull %i.gv) #17
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %._crit_edge180.i
  store ptr %i.de, ptr %i.dm, align 8
  store i32 %.7.lcssa.i, ptr %i.cz, align 8
  br label %subcoloronerange.exit

bb.ap:                                            ; preds = %.thread152
  %i.gw = icmp eq i32 %.396, %i.ac
  br i1 %i.gw, label %bb.aq, label %subcoloronerange.exit

bb.aq:                                            ; preds = %bb.ap
  call fastcc void @subcoloronechr(ptr noundef %0, i32 noundef %i.ac, ptr noundef %2, ptr noundef %3, ptr noundef %i.a)
  br label %subcoloronerange.exit

subcoloronerange.exit:                            ; preds = %bb.ao, %bb.z, %bb.ap, %bb.aq
  %i.gx = load i32, ptr %i.v, align 8
  %.not110 = icmp eq i32 %i.gx, 0
  br i1 %.not110, label %bb.ar, label %.critedge

bb.ar:                                            ; preds = %subcoloronerange.exit
  %i.gy = getelementptr inbounds nuw i8, ptr %.192210, i64 8
  %i.gz = add nsw i32 %.190211, -1
  %i.ha = icmp sgt i32 %.190211, 1
  br i1 %i.ha, label %bb.d, label %._crit_edge214, !llvm.loop !143

._crit_edge214:                                   ; preds = %bb.ar, %._crit_edge
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 8            ; 3 uses
  %i.hd = icmp sgt i32 %i.hc, -1
  br i1 %i.hd, label %bb.as, label %.critedge

bb.as:                                            ; preds = %._crit_edge214
  %i.he = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.hf = zext nneg i32 %i.hc to i64
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %i.hf ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 4
  %i.hi = icmp eq i32 %i.hh, 0
  br i1 %i.hi, label %bb.at, label %bb.ay

bb.at:                                            ; preds = %bb.as
  %i.hj = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 4 uses
  %i.hk = load i32, ptr %i.hj, align 8            ; 3 uses
  store i32 %i.hk, ptr %i.hg, align 4
  %i.hl = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.hm = load i32, ptr %i.hl, align 8            ; 2 uses
  %i.hn = shl i32 %i.hm, 1
  %i.ho = sdiv i32 2147483647, %i.hn
  %.not.i119 = icmp slt i32 %i.hk, %i.ho
  br i1 %.not.i119, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hp = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 36
  store i32 101, ptr %i.hr, align 4
  %i.hs = load ptr, ptr %i.hp, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 24 ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 8            ; 2 uses
  %.not45.i = icmp eq i32 %i.hu, 0
  %spec.select.i120 = select i1 %.not45.i, i32 12, i32 %i.hu
  store i32 %spec.select.i120, ptr %i.ht, align 8
  br label %newhicolorcols.exit

bb.av:                                            ; preds = %bb.at
  %i.hv = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8
  %4 = shl i32 %i.hk, 1
  %i.hx = mul i32 %4, %i.hm
  %i.hy = sext i32 %i.hx to i64
  %i.hz = tail call ptr @repalloc_mul_extended(ptr noundef %i.hw, i64 noundef 2, i64 noundef %i.hy, i32 noundef 2) #17 ; 4 uses
  %i.ia = icmp eq ptr %i.hz, null
  br i1 %i.ia, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ib = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ic = load ptr, ptr %i.ib, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 36
  store i32 101, ptr %i.id, align 4
  %i.ie = load ptr, ptr %i.ib, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 24 ; 2 uses
  %i.ig = load i32, ptr %i.if, align 8            ; 2 uses
  %.not44.i = icmp eq i32 %i.ig, 0
  %spec.select46.i = select i1 %.not44.i, i32 12, i32 %i.ig
  store i32 %spec.select46.i, ptr %i.if, align 8
  br label %newhicolorcols.exit

bb.ax:                                            ; preds = %bb.av
  store ptr %i.hz, ptr %i.hv, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.c, i64 140
  %i.ii = load i32, ptr %i.ih, align 4
  %.03948.i = add i32 %i.ii, -1                   ; 2 uses
  %i.ij = icmp sgt i32 %.03948.i, -1
  %.pre.i121 = load i32, ptr %i.hj, align 8       ; 4 uses
  br i1 %i.ij, label %.lr.ph50.i, label %._crit_edge.i122

.lr.ph50.i:                                       ; preds = %bb.ax
  %i.ik = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.il = icmp sgt i32 %.pre.i121, 0
  br i1 %i.il, label %.lr.ph50.split.i, label %._crit_edge.i122

.loopexit.i123:                                   ; preds = %.lr.ph.i124, %.lr.ph50.split.i
  %i.im = phi i32 [ %i.io, %.lr.ph50.split.i ], [ %i.ji, %.lr.ph.i124 ] ; 2 uses
  %.039.i = add nsw i32 %.03949.i, -1
  %i.in = icmp sgt i32 %.03949.i, 0
  br i1 %i.in, label %.lr.ph50.split.i, label %._crit_edge.i122, !llvm.loop !144

.lr.ph50.split.i:                                 ; preds = %.lr.ph50.i, %.loopexit.i123
  %i.io = phi i32 [ %i.im, %.loopexit.i123 ], [ %.pre.i121, %.lr.ph50.i ] ; 4 uses
  %.03949.i = phi i32 [ %.039.i, %.loopexit.i123 ], [ %.03948.i, %.lr.ph50.i ] ; 3 uses
  %i.ip = mul i32 %.03949.i, %i.io                ; 2 uses
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr inbounds [2 x i8], ptr %i.hz, i64 %i.iq
  %i.is = shl i32 %i.ip, 1
  %i.it = sext i32 %i.is to i64
  %i.iu = getelementptr inbounds [2 x i8], ptr %i.hz, i64 %i.it ; 2 uses
  %i.iv = zext nneg i32 %i.io to i64
  %i.iw = getelementptr inbounds nuw [2 x i8], ptr %i.iu, i64 %i.iv
  %i.ix = icmp sgt i32 %i.io, 0
  br i1 %i.ix, label %.lr.ph.i124, label %.loopexit.i123

.lr.ph.i124:                                      ; preds = %.lr.ph50.split.i, %.lr.ph.i124
  %indvars.iv.i125 = phi i64 [ %indvars.iv.next.i126, %.lr.ph.i124 ], [ 0, %.lr.ph50.split.i ] ; 4 uses
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %i.ir, i64 %indvars.iv.i125
  %i.iz = load i16, ptr %i.iy, align 2            ; 3 uses
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %i.iw, i64 %indvars.iv.i125
  store i16 %i.iz, ptr %i.ja, align 2
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %i.iu, i64 %indvars.iv.i125
  store i16 %i.iz, ptr %i.jb, align 2
  %i.jc = load ptr, ptr %i.ik, align 8
  %i.jd = sext i16 %i.iz to i64
  %i.je = getelementptr inbounds [32 x i8], ptr %i.jc, i64 %i.jd
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 4 ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 4
  %i.jh = add i32 %i.jg, 1
  store i32 %i.jh, ptr %i.jf, align 4
  %indvars.iv.next.i126 = add nuw nsw i64 %indvars.iv.i125, 1 ; 2 uses
  %i.ji = load i32, ptr %i.hj, align 8            ; 2 uses
  %i.jj = sext i32 %i.ji to i64
  %i.jk = icmp slt i64 %indvars.iv.next.i126, %i.jj
  br i1 %i.jk, label %.lr.ph.i124, label %.loopexit.i123, !llvm.loop !145

._crit_edge.i122:                                 ; preds = %.loopexit.i123, %.lr.ph50.i, %bb.ax
  %i.jl = phi i32 [ %.pre.i121, %bb.ax ], [ %.pre.i121, %.lr.ph50.i ], [ %i.im, %.loopexit.i123 ]
  %i.jm = shl i32 %i.jl, 1
  store i32 %i.jm, ptr %i.hj, align 8
  br label %newhicolorcols.exit

newhicolorcols.exit:                              ; preds = %bb.au, %bb.aw, %._crit_edge.i122
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jo = load i32, ptr %i.jn, align 8
  %.not = icmp eq i32 %i.jo, 0
  br i1 %.not, label %newhicolorcols.exit._crit_edge, label %.critedge

newhicolorcols.exit._crit_edge:                   ; preds = %newhicolorcols.exit
  %.pre = load i32, ptr %i.hb, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %newhicolorcols.exit._crit_edge, %bb.as
  %i.jp = phi i32 [ %.pre, %newhicolorcols.exit._crit_edge ], [ %i.hc, %bb.as ]
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.he, i64 %i.jq
  %i.js = load i32, ptr %i.jr, align 4
  %i.jt = getelementptr inbounds nuw i8, ptr %i.c, i64 140 ; 2 uses
  %i.ju = load i32, ptr %i.jt, align 4            ; 2 uses
  %i.jv = icmp sgt i32 %i.ju, 0
  br i1 %i.jv, label %.preheader.lr.ph, label %.critedge

.preheader.lr.ph:                                 ; preds = %bb.ay
  %i.jw = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 5 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.kb = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.kc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.0.in30.i134 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.kd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ke = load i32, ptr %i.jw, align 8            ; 2 uses
  %i.kf = icmp sgt i32 %i.ke, 0
  br i1 %i.kf, label %.preheader.preheader, label %.critedge

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.kg = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.kh = load ptr, ptr %i.kg, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge219
  %i.ki = phi i32 [ %i.my, %._crit_edge219 ], [ %i.ju, %.preheader.preheader ]
  %i.kj = phi i32 [ %i.mz, %._crit_edge219 ], [ %i.ke, %.preheader.preheader ] ; 2 uses
  %.085222 = phi i32 [ %i.na, %._crit_edge219 ], [ 0, %.preheader.preheader ]
  %.086221 = phi ptr [ %.1.lcssa, %._crit_edge219 ], [ %i.kh, %.preheader.preheader ] ; 2 uses
  %i.kk = icmp sgt i32 %i.kj, 0
  br i1 %i.kk, label %.lr.ph218, label %._crit_edge219

.lr.ph218:                                        ; preds = %.preheader, %bb.br
  %.0217 = phi i32 [ %i.mv, %bb.br ], [ 0, %.preheader ] ; 2 uses
  %.1215 = phi ptr [ %i.mu, %bb.br ], [ %.086221, %.preheader ] ; 3 uses
  %i.kl = and i32 %.0217, %i.js
  %.not102 = icmp eq i32 %i.kl, 0
  br i1 %.not102, label %bb.br, label %bb.az

bb.az:                                            ; preds = %.lr.ph218
  %i.km = load i16, ptr %.1215, align 2           ; 4 uses
  %i.kn = load ptr, ptr %i.jx, align 8
  %i.ko = sext i16 %i.km to i64                   ; 3 uses
  %i.kp = getelementptr inbounds [32 x i8], ptr %i.kn, i64 %i.ko ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kr = load i16, ptr %i.kq, align 8            ; 2 uses
  %i.ks = icmp eq i16 %i.kr, -1
  br i1 %i.ks, label %bb.ba, label %newsub.exit.i127

bb.ba:                                            ; preds = %bb.az
  %i.kt = load i32, ptr %i.kp, align 8
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kp, i64 4
  %i.kv = load i32, ptr %i.ku, align 4
  %i.kw = add i32 %i.kv, %i.kt
  %i.kx = icmp eq i32 %i.kw, 1
  br i1 %i.kx, label %newsub.exit.i127, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ky = tail call fastcc signext i16 @newcolor(ptr noundef nonnull %i.c) ; 5 uses
  %i.kz = icmp eq i16 %i.ky, -1
  br i1 %i.kz, label %newsub.exit.i127, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.la = load ptr, ptr %i.jx, align 8
  %i.lb = getelementptr inbounds [32 x i8], ptr %i.la, i64 %i.ko
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  store i16 %i.ky, ptr %i.lc, align 8
  %i.ld = load ptr, ptr %i.jx, align 8
  %i.le = sext i16 %i.ky to i64
  %i.lf = getelementptr inbounds [32 x i8], ptr %i.ld, i64 %i.le
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  store i16 %i.ky, ptr %i.lg, align 8
  br label %newsub.exit.i127

newsub.exit.i127:                                 ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.az
  %.017.i.i128 = phi i16 [ -1, %bb.bb ], [ %i.km, %bb.ba ], [ %i.ky, %bb.bc ], [ %i.kr, %bb.az ] ; 4 uses
  %i.lh = load ptr, ptr %i.jy, align 8
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  %i.lj = load i32, ptr %i.li, align 8
  %.not.i129 = icmp eq i32 %i.lj, 0
  br i1 %.not.i129, label %bb.bd, label %subcolorhi.exit

bb.bd:                                            ; preds = %newsub.exit.i127
  %i.lk = icmp eq i16 %i.km, %.017.i.i128
  br i1 %i.lk, label %subcolorhi.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ll = load ptr, ptr %i.jx, align 8
  %i.lm = getelementptr inbounds [32 x i8], ptr %i.ll, i64 %i.ko
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 4 ; 2 uses
  %i.lo = load i32, ptr %i.ln, align 4
  %i.lp = add i32 %i.lo, -1
  store i32 %i.lp, ptr %i.ln, align 4
  %i.lq = load ptr, ptr %i.jx, align 8
  %i.lr = sext i16 %.017.i.i128 to i64
  %i.ls = getelementptr inbounds [32 x i8], ptr %i.lq, i64 %i.lr
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 4 ; 2 uses
  %i.lu = load i32, ptr %i.lt, align 4
  %i.lv = add i32 %i.lu, 1
  store i32 %i.lv, ptr %i.lt, align 4
  store i16 %.017.i.i128, ptr %.1215, align 2
  br label %subcolorhi.exit

subcolorhi.exit:                                  ; preds = %newsub.exit.i127, %bb.bd, %bb.be
  %.0.i130 = phi i16 [ %.017.i.i128, %bb.be ], [ -1, %newsub.exit.i127 ], [ %i.km, %bb.bd ] ; 5 uses
  %i.lw = load i32, ptr %i.jz, align 8
end_hunk_0
