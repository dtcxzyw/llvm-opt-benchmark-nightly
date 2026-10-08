Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Tconv?download=true
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@H5T__conv_order_opt:bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !15
  %i.br = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !15
  %.not1261 = icmp eq i64 %i.bq, %i.bs
  br i1 %.not1261, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %bb.v
  %i.bt = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !15
  %i.bv = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !15
  %.not1262 = icmp eq i64 %i.bu, %i.bw
  br i1 %.not1262, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.bx = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !15
  %i.bz = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !15
  %.not1263 = icmp eq i64 %i.by, %i.ca
  br i1 %.not1263, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.cb = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !15
  %i.cd = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !15
  %.not1264 = icmp eq i64 %i.cc, %i.ce
  br i1 %.not1264, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !15
  %i.ch = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !15
  %.not1265 = icmp eq i64 %i.cg, %i.ci
  br i1 %.not1265, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.cj = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !15
  %i.cl = getelementptr inbounds nuw i8, ptr %i.r, i64 120
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !15
  %.not1266 = icmp eq i64 %i.ck, %i.cm
  br i1 %.not1266, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.cn = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !15
  %i.cp = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !15
  %.not1267 = icmp eq i32 %i.co, %i.cq
  br i1 %.not1267, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cr = getelementptr inbounds nuw i8, ptr %i.n, i64 132
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !15
  %i.ct = getelementptr inbounds nuw i8, ptr %i.r, i64 132
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !15
  %.not1268 = icmp eq i32 %i.cs, %i.cu
  br i1 %.not1268, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac
  %i.cv = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !14
  %i.cw = load i64, ptr @H5E_UNSUPPORTED_g, align 8, !tbaa !14
  %i.cx = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_order_opt, i32 noundef 524, i64 noundef %i.cv, i64 noundef %i.cw, ptr noundef nonnull @.str.6) #8 ; 0 uses
  br label %.loopexit

bb.ae:                                            ; preds = %bb.u
  %i.cy = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !14
  %i.cz = load i64, ptr @H5E_UNSUPPORTED_g, align 8, !tbaa !14
  %i.da = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_order_opt, i32 noundef 541, i64 noundef %i.cy, i64 noundef %i.cz, ptr noundef nonnull @.str.6) #8 ; 0 uses
  br label %.loopexit

bb.af:                                            ; preds = %bb.ac, %bb.u, %bb.u, %bb.u
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.db, align 4, !tbaa !35
  br label %.loopexit

bb.ag:                                            ; preds = %bb.b
  %i.dc = icmp eq ptr %0, null
  %i.dd = icmp eq ptr %1, null
  %or.cond17 = or i1 %i.dc, %i.dd
  br i1 %or.cond17, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.de = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !14
  %i.df = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !14
  %i.dg = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_order_opt, i32 noundef 549, i64 noundef %i.de, i64 noundef %i.df, ptr noundef nonnull @.str.5) #8 ; 0 uses
  br label %.loopexit

bb.ai:                                            ; preds = %bb.ag
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !25 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !28
  %i.dl = icmp eq i32 %i.dk, 7
  br i1 %i.dl, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !25
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !28
  %.not = icmp eq i32 %i.dp, 7
  br i1 %.not, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dq = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !14
  %i.dr = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !14
  %i.ds = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_order_opt, i32 noundef 555, i64 noundef %i.dq, i64 noundef %i.dr, ptr noundef nonnull @.str.7) #8 ; 0 uses
  br label %.loopexit

bb.al:                                            ; preds = %bb.aj
  %i.dt = load i32, ptr @H5T_native_order_g, align 4, !tbaa !97
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ai
  %.not1251 = icmp eq i64 %5, 0
  %i.dv = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !29 ; 3 uses
  %. = select i1 %.not1251, i64 %i.dw, i64 %5     ; 84 uses
  %i.dx = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dw)
  %i.dy = icmp eq i64 %i.dx, 1
  br i1 %i.dy, label %.split, label %bb.an

.split:                                           ; preds = %bb.am
  %i.dz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.dw, i1 true)
  switch i64 %i.dz, label %bb.an [
    i64 0, label %.loopexit
    i64 1, label %.preheader1276
    i64 2, label %.preheader1279
    i64 3, label %.preheader1282
    i64 4, label %.preheader1285
  ]

.preheader1285:                                   ; preds = %.split
  %i.ea = icmp ugt i64 %4, 9
  br i1 %i.ea, label %.lr.ph, label %.preheader1283

.preheader1282:                                   ; preds = %.split
  %i.eb = icmp ugt i64 %4, 9
  br i1 %i.eb, label %.lr.ph1294, label %.preheader1280

.preheader1279:                                   ; preds = %.split
  %i.ec = icmp ugt i64 %4, 19
  br i1 %i.ec, label %.lr.ph1302, label %.preheader1277

.preheader1276:                                   ; preds = %.split
  %i.ed = icmp ugt i64 %4, 19
  br i1 %i.ed, label %.lr.ph1310, label %.preheader

.preheader:                                       ; preds = %.lr.ph1310, %.preheader1276
  %.01230.lcssa = phi ptr [ %7, %.preheader1276 ], [ %i.hx, %.lr.ph1310 ] ; 5 uses
  %.0.lcssa = phi i64 [ %4, %.preheader1276 ], [ %i.hy, %.lr.ph1310 ] ; 7 uses
  %.not1319 = icmp eq i64 %.0.lcssa, 0
  br i1 %.not1319, label %.loopexit, label %.lr.ph1315.lver.check

.lr.ph1315.lver.check:                            ; preds = %.preheader
  %ident.check.not = icmp eq i64 %., 1
  br i1 %ident.check.not, label %.lr.ph1315.ph, label %.lr.ph1315.lver.orig.preheader

.lr.ph1315.lver.orig.preheader:                   ; preds = %.lr.ph1315.lver.check
  %xtraiter1400 = and i64 %.0.lcssa, 3            ; 3 uses
  %i.ee = icmp ult i64 %.0.lcssa, 4
  br i1 %i.ee, label %.lr.ph1315.lver.orig.epil.preheader, label %.lr.ph1315.lver.orig.preheader.new

.lr.ph1315.lver.orig.preheader.new:               ; preds = %.lr.ph1315.lver.orig.preheader
  %unroll_iter1404 = and i64 %.0.lcssa, 28
  br label %.lr.ph1315.lver.orig

.lr.ph1315.lver.orig:                             ; preds = %.lr.ph1315.lver.orig, %.lr.ph1315.lver.orig.preheader.new
  %.112311314.lver.orig = phi ptr [ %.01230.lcssa, %.lr.ph1315.lver.orig.preheader.new ], [ %i.eu, %.lr.ph1315.lver.orig ] ; 4 uses
  %niter1405 = phi i64 [ 0, %.lr.ph1315.lver.orig.preheader.new ], [ %niter1405.next.3, %.lr.ph1315.lver.orig ]
  %i.ef = load i8, ptr %.112311314.lver.orig, align 1, !tbaa !15
  %i.eg = getelementptr inbounds nuw i8, ptr %.112311314.lver.orig, i64 1 ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !15
  store i8 %i.eh, ptr %.112311314.lver.orig, align 1, !tbaa !15
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !15
  %i.ei = getelementptr inbounds nuw i8, ptr %.112311314.lver.orig, i64 %. ; 4 uses
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !15
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 1 ; 2 uses
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !15
  store i8 %i.el, ptr %i.ei, align 1, !tbaa !15
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !15
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 %. ; 4 uses
  %i.en = load i8, ptr %i.em, align 1, !tbaa !15
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 1 ; 2 uses
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !15
  store i8 %i.ep, ptr %i.em, align 1, !tbaa !15
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !15
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 %. ; 4 uses
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !15
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 1 ; 2 uses
  %i.et = load i8, ptr %i.es, align 1, !tbaa !15
  store i8 %i.et, ptr %i.eq, align 1, !tbaa !15
  store i8 %i.er, ptr %i.es, align 1, !tbaa !15
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 %. ; 2 uses
  %niter1405.next.3 = add nuw i64 %niter1405, 4   ; 2 uses
  %niter1405.ncmp.3 = icmp eq i64 %niter1405.next.3, %unroll_iter1404
  br i1 %niter1405.ncmp.3, label %.loopexit.loopexit1375.unr-lcssa, label %.lr.ph1315.lver.orig, !llvm.loop !86

.lr.ph1315.ph:                                    ; preds = %.lr.ph1315.lver.check
  %load_initial = load i8, ptr %.01230.lcssa, align 1 ; 5 uses
  %xtraiter1406 = and i64 %.0.lcssa, 3            ; 3 uses
  %i.ev = icmp ult i64 %.0.lcssa, 4
  br i1 %i.ev, label %.lr.ph1315.epil.preheader, label %.lr.ph1315.ph.new

.lr.ph1315.ph.new:                                ; preds = %.lr.ph1315.ph
  %unroll_iter1410 = and i64 %.0.lcssa, 28
  br label %.lr.ph1315

.lr.ph1310:                                       ; preds = %.preheader1276, %.lr.ph1310
  %.01309 = phi i64 [ %i.hy, %.lr.ph1310 ], [ %4, %.preheader1276 ]
  %.012301308 = phi ptr [ %i.hx, %.lr.ph1310 ], [ %7, %.preheader1276 ] ; 4 uses
  %i.ew = load i8, ptr %.012301308, align 1, !tbaa !15
  %i.ex = getelementptr inbounds nuw i8, ptr %.012301308, i64 1 ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !15
  store i8 %i.ey, ptr %.012301308, align 1, !tbaa !15
  store i8 %i.ew, ptr %i.ex, align 1, !tbaa !15
  %i.ez = getelementptr inbounds nuw i8, ptr %.012301308, i64 %. ; 4 uses
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !15
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 1 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !15
  store i8 %i.fc, ptr %i.ez, align 1, !tbaa !15
  store i8 %i.fa, ptr %i.fb, align 1, !tbaa !15
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 %. ; 4 uses
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !15
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 1 ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !15
  store i8 %i.fg, ptr %i.fd, align 1, !tbaa !15
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !15
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 %. ; 4 uses
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !15
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 1 ; 2 uses
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !15
  store i8 %i.fk, ptr %i.fh, align 1, !tbaa !15
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !15
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 %. ; 4 uses
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !15
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 1 ; 2 uses
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !15
  store i8 %i.fo, ptr %i.fl, align 1, !tbaa !15
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !15
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 %. ; 4 uses
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !15
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 1 ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !15
  store i8 %i.fs, ptr %i.fp, align 1, !tbaa !15
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !15
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 %. ; 4 uses
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !15
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 1 ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !15
  store i8 %i.fw, ptr %i.ft, align 1, !tbaa !15
  store i8 %i.fu, ptr %i.fv, align 1, !tbaa !15
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 %. ; 4 uses
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !15
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 1 ; 2 uses
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !15
  store i8 %i.ga, ptr %i.fx, align 1, !tbaa !15
  store i8 %i.fy, ptr %i.fz, align 1, !tbaa !15
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 %. ; 4 uses
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !15
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 1 ; 2 uses
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !15
  store i8 %i.ge, ptr %i.gb, align 1, !tbaa !15
  store i8 %i.gc, ptr %i.gd, align 1, !tbaa !15
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 %. ; 4 uses
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !15
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 1 ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !15
  store i8 %i.gi, ptr %i.gf, align 1, !tbaa !15
  store i8 %i.gg, ptr %i.gh, align 1, !tbaa !15
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 %. ; 4 uses
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !15
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 1 ; 2 uses
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !15
  store i8 %i.gm, ptr %i.gj, align 1, !tbaa !15
  store i8 %i.gk, ptr %i.gl, align 1, !tbaa !15
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gj, i64 %. ; 4 uses
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !15
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 1 ; 2 uses
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !15
  store i8 %i.gq, ptr %i.gn, align 1, !tbaa !15
  store i8 %i.go, ptr %i.gp, align 1, !tbaa !15
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 %. ; 4 uses
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !15
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 1 ; 2 uses
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !15
  store i8 %i.gu, ptr %i.gr, align 1, !tbaa !15
  store i8 %i.gs, ptr %i.gt, align 1, !tbaa !15
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 %. ; 4 uses
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !15
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 1 ; 2 uses
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !15
  store i8 %i.gy, ptr %i.gv, align 1, !tbaa !15
  store i8 %i.gw, ptr %i.gx, align 1, !tbaa !15
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 %. ; 4 uses
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !15
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 1 ; 2 uses
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !15
  store i8 %i.hc, ptr %i.gz, align 1, !tbaa !15
  store i8 %i.ha, ptr %i.hb, align 1, !tbaa !15
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 %. ; 4 uses
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !15
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 1 ; 2 uses
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !15
  store i8 %i.hg, ptr %i.hd, align 1, !tbaa !15
  store i8 %i.he, ptr %i.hf, align 1, !tbaa !15
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 %. ; 4 uses
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !15
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 1 ; 2 uses
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !15
  store i8 %i.hk, ptr %i.hh, align 1, !tbaa !15
  store i8 %i.hi, ptr %i.hj, align 1, !tbaa !15
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 %. ; 4 uses
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !15
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 1 ; 2 uses
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !15
  store i8 %i.ho, ptr %i.hl, align 1, !tbaa !15
  store i8 %i.hm, ptr %i.hn, align 1, !tbaa !15
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 %. ; 4 uses
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !15
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 1 ; 2 uses
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !15
  store i8 %i.hs, ptr %i.hp, align 1, !tbaa !15
  store i8 %i.hq, ptr %i.hr, align 1, !tbaa !15
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hp, i64 %. ; 4 uses
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !15
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 1 ; 2 uses
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !15
  store i8 %i.hw, ptr %i.ht, align 1, !tbaa !15
  store i8 %i.hu, ptr %i.hv, align 1, !tbaa !15
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ht, i64 %. ; 2 uses
  %i.hy = add i64 %.01309, -20                    ; 3 uses
  %i.hz = icmp ugt i64 %i.hy, 19
  br i1 %i.hz, label %.lr.ph1310, label %.preheader, !llvm.loop !87

.lr.ph1315:                                       ; preds = %.lr.ph1315, %.lr.ph1315.ph.new
  %.112311314 = phi ptr [ %.01230.lcssa, %.lr.ph1315.ph.new ], [ %i.il, %.lr.ph1315 ] ; 3 uses
  %niter1411 = phi i64 [ 0, %.lr.ph1315.ph.new ], [ %niter1411.next.3, %.lr.ph1315 ]
  %i.ia = getelementptr inbounds nuw i8, ptr %.112311314, i64 1 ; 2 uses
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !15
  store i8 %i.ib, ptr %.112311314, align 1, !tbaa !15
  store i8 %load_initial, ptr %i.ia, align 1, !tbaa !15
  %i.ic = getelementptr inbounds nuw i8, ptr %.112311314, i64 %. ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 1 ; 2 uses
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !15
  store i8 %i.ie, ptr %i.ic, align 1, !tbaa !15
  store i8 %load_initial, ptr %i.id, align 1, !tbaa !15
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 %. ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 1 ; 2 uses
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !15
  store i8 %i.ih, ptr %i.if, align 1, !tbaa !15
  store i8 %load_initial, ptr %i.ig, align 1, !tbaa !15
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 %. ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 1 ; 2 uses
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !15
  store i8 %i.ik, ptr %i.ii, align 1, !tbaa !15
  store i8 %load_initial, ptr %i.ij, align 1, !tbaa !15
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 %. ; 2 uses
  %niter1411.next.3 = add nuw i64 %niter1411, 4   ; 2 uses
  %niter1411.ncmp.3 = icmp eq i64 %niter1411.next.3, %unroll_iter1410
  br i1 %niter1411.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph1315, !llvm.loop !86

.preheader1277:                                   ; preds = %.lr.ph1302, %.preheader1279
  %.21232.lcssa = phi ptr [ %7, %.preheader1279 ], [ %i.nf, %.lr.ph1302 ] ; 5 uses
  %.1.lcssa = phi i64 [ %4, %.preheader1279 ], [ %i.ng, %.lr.ph1302 ] ; 8 uses
  %.not1318 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not1318, label %.loopexit, label %.lr.ph1307.lver.check

.lr.ph1307.lver.check:                            ; preds = %.preheader1277
  %ident.check1366.not = icmp eq i64 %., 1
  br i1 %ident.check1366.not, label %.lr.ph1307.ph, label %.lr.ph1307.lver.orig.preheader

.lr.ph1307.lver.orig.preheader:                   ; preds = %.lr.ph1307.lver.check
  %xtraiter1389 = and i64 %.1.lcssa, 3            ; 3 uses
  %i.im = icmp ult i64 %.1.lcssa, 4
  br i1 %i.im, label %.lr.ph1307.lver.orig.epil.preheader, label %.lr.ph1307.lver.orig.preheader.new

.lr.ph1307.lver.orig.preheader.new:               ; preds = %.lr.ph1307.lver.orig.preheader
  %unroll_iter1392 = and i64 %.1.lcssa, 28
  br label %.lr.ph1307.lver.orig

.lr.ph1307.lver.orig:                             ; preds = %.lr.ph1307.lver.orig, %.lr.ph1307.lver.orig.preheader.new
  %.312331306.lver.orig = phi ptr [ %.21232.lcssa, %.lr.ph1307.lver.orig.preheader.new ], [ %i.iy, %.lr.ph1307.lver.orig ] ; 3 uses
  %niter1393 = phi i64 [ 0, %.lr.ph1307.lver.orig.preheader.new ], [ %niter1393.next.3, %.lr.ph1307.lver.orig ]
  %i.in = load <4 x i8>, ptr %.312331306.lver.orig, align 1, !tbaa !15
  %i.io = shufflevector <4 x i8> %i.in, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.io, ptr %.312331306.lver.orig, align 1, !tbaa !15
  %i.ip = getelementptr inbounds nuw i8, ptr %.312331306.lver.orig, i64 %. ; 3 uses
  %i.iq = load <4 x i8>, ptr %i.ip, align 1, !tbaa !15
  %i.ir = shufflevector <4 x i8> %i.iq, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.ir, ptr %i.ip, align 1, !tbaa !15
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 %. ; 3 uses
  %i.it = load <4 x i8>, ptr %i.is, align 1, !tbaa !15
  %i.iu = shufflevector <4 x i8> %i.it, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.iu, ptr %i.is, align 1, !tbaa !15
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 %. ; 3 uses
  %i.iw = load <4 x i8>, ptr %i.iv, align 1, !tbaa !15
  %i.ix = shufflevector <4 x i8> %i.iw, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.ix, ptr %i.iv, align 1, !tbaa !15
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 %. ; 2 uses
  %niter1393.next.3 = add nuw i64 %niter1393, 4   ; 2 uses
  %niter1393.ncmp.3 = icmp eq i64 %niter1393.next.3, %unroll_iter1392
  br i1 %niter1393.ncmp.3, label %.loopexit.loopexit1378.unr-lcssa, label %.lr.ph1307.lver.orig, !llvm.loop !88

.lr.ph1307.ph:                                    ; preds = %.lr.ph1307.lver.check
  %scevgep = getelementptr i8, ptr %.21232.lcssa, i64 2
  %load_initial1368 = load i8, ptr %scevgep, align 1 ; 2 uses
  %xtraiter1394 = and i64 %.1.lcssa, 1
  %i.iz = icmp eq i64 %.1.lcssa, 1
  br i1 %i.iz, label %.lr.ph1307.epil.preheader, label %.lr.ph1307.ph.new

.lr.ph1307.ph.new:                                ; preds = %.lr.ph1307.ph
  %unroll_iter1398 = and i64 %.1.lcssa, 30
  br label %.lr.ph1307

.lr.ph1302:                                       ; preds = %.preheader1279, %.lr.ph1302
  %.11301 = phi i64 [ %i.ng, %.lr.ph1302 ], [ %4, %.preheader1279 ]
  %.212321300 = phi ptr [ %i.nf, %.lr.ph1302 ], [ %7, %.preheader1279 ] ; 3 uses
  %i.ja = load <4 x i8>, ptr %.212321300, align 1, !tbaa !15
  %i.jb = shufflevector <4 x i8> %i.ja, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.jb, ptr %.212321300, align 1, !tbaa !15
  %i.jc = getelementptr inbounds nuw i8, ptr %.212321300, i64 %. ; 3 uses
  %i.jd = load <4 x i8>, ptr %i.jc, align 1, !tbaa !15
  %i.je = shufflevector <4 x i8> %i.jd, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.je, ptr %i.jc, align 1, !tbaa !15
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 %. ; 3 uses
  %i.jg = load <4 x i8>, ptr %i.jf, align 1, !tbaa !15
  %i.jh = shufflevector <4 x i8> %i.jg, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.jh, ptr %i.jf, align 1, !tbaa !15
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 %. ; 3 uses
  %i.jj = load <4 x i8>, ptr %i.ji, align 1, !tbaa !15
  %i.jk = shufflevector <4 x i8> %i.jj, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.jk, ptr %i.ji, align 1, !tbaa !15
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 %. ; 3 uses
  %i.jm = load <4 x i8>, ptr %i.jl, align 1, !tbaa !15
  %i.jn = shufflevector <4 x i8> %i.jm, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.jn, ptr %i.jl, align 1, !tbaa !15
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 %. ; 3 uses
  %i.jp = load <4 x i8>, ptr %i.jo, align 1, !tbaa !15
  %i.jq = shufflevector <4 x i8> %i.jp, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.jq, ptr %i.jo, align 1, !tbaa !15
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 %. ; 3 uses
  %i.js = load <4 x i8>, ptr %i.jr, align 1, !tbaa !15
  %i.jt = shufflevector <4 x i8> %i.js, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.jt, ptr %i.jr, align 1, !tbaa !15
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 %. ; 3 uses
  %i.jv = load <4 x i8>, ptr %i.ju, align 1, !tbaa !15
  %i.jw = shufflevector <4 x i8> %i.jv, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.jw, ptr %i.ju, align 1, !tbaa !15
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 %. ; 3 uses
  %i.jy = load <4 x i8>, ptr %i.jx, align 1, !tbaa !15
  %i.jz = shufflevector <4 x i8> %i.jy, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.jz, ptr %i.jx, align 1, !tbaa !15
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 %. ; 3 uses
  %i.kb = load <4 x i8>, ptr %i.ka, align 1, !tbaa !15
  %i.kc = shufflevector <4 x i8> %i.kb, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.kc, ptr %i.ka, align 1, !tbaa !15
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 %. ; 6 uses
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !15
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 3 ; 2 uses
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !15
  store i8 %i.kg, ptr %i.kd, align 1, !tbaa !15
  store i8 %i.ke, ptr %i.kf, align 1, !tbaa !15
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kd, i64 1 ; 2 uses
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !15
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kd, i64 2 ; 2 uses
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !15
  store i8 %i.kk, ptr %i.kh, align 1, !tbaa !15
  store i8 %i.ki, ptr %i.kj, align 1, !tbaa !15
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kd, i64 %. ; 6 uses
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !15
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kl, i64 3 ; 2 uses
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !15
  store i8 %i.ko, ptr %i.kl, align 1, !tbaa !15
  store i8 %i.km, ptr %i.kn, align 1, !tbaa !15
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kl, i64 1 ; 2 uses
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !15
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kl, i64 2 ; 2 uses
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !15
  store i8 %i.ks, ptr %i.kp, align 1, !tbaa !15
  store i8 %i.kq, ptr %i.kr, align 1, !tbaa !15
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kl, i64 %. ; 6 uses
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !15
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 3 ; 2 uses
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !15
  store i8 %i.kw, ptr %i.kt, align 1, !tbaa !15
  store i8 %i.ku, ptr %i.kv, align 1, !tbaa !15
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kt, i64 1 ; 2 uses
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !15
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kt, i64 2 ; 2 uses
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !15
  store i8 %i.la, ptr %i.kx, align 1, !tbaa !15
  store i8 %i.ky, ptr %i.kz, align 1, !tbaa !15
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kt, i64 %. ; 6 uses
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !15
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 3 ; 2 uses
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !15
  store i8 %i.le, ptr %i.lb, align 1, !tbaa !15
  store i8 %i.lc, ptr %i.ld, align 1, !tbaa !15
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lb, i64 1 ; 2 uses
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !15
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lb, i64 2 ; 2 uses
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !15
  store i8 %i.li, ptr %i.lf, align 1, !tbaa !15
  store i8 %i.lg, ptr %i.lh, align 1, !tbaa !15
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lb, i64 %. ; 6 uses
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !15
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 3 ; 2 uses
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !15
  store i8 %i.lm, ptr %i.lj, align 1, !tbaa !15
  store i8 %i.lk, ptr %i.ll, align 1, !tbaa !15
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lj, i64 1 ; 2 uses
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !15
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lj, i64 2 ; 2 uses
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !15
  store i8 %i.lq, ptr %i.ln, align 1, !tbaa !15
  store i8 %i.lo, ptr %i.lp, align 1, !tbaa !15
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lj, i64 %. ; 6 uses
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !15
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 3 ; 2 uses
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !15
  store i8 %i.lu, ptr %i.lr, align 1, !tbaa !15
  store i8 %i.ls, ptr %i.lt, align 1, !tbaa !15
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lr, i64 1 ; 2 uses
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !15
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lr, i64 2 ; 2 uses
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !15
  store i8 %i.ly, ptr %i.lv, align 1, !tbaa !15
  store i8 %i.lw, ptr %i.lx, align 1, !tbaa !15
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lr, i64 %. ; 6 uses
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !15
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lz, i64 3 ; 2 uses
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !15
  store i8 %i.mc, ptr %i.lz, align 1, !tbaa !15
  store i8 %i.ma, ptr %i.mb, align 1, !tbaa !15
  %i.md = getelementptr inbounds nuw i8, ptr %i.lz, i64 1 ; 2 uses
  %i.me = load i8, ptr %i.md, align 1, !tbaa !15
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lz, i64 2 ; 2 uses
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !15
  store i8 %i.mg, ptr %i.md, align 1, !tbaa !15
  store i8 %i.me, ptr %i.mf, align 1, !tbaa !15
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lz, i64 %. ; 6 uses
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !15
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 3 ; 2 uses
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !15
  store i8 %i.mk, ptr %i.mh, align 1, !tbaa !15
  store i8 %i.mi, ptr %i.mj, align 1, !tbaa !15
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mh, i64 1 ; 2 uses
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !15
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mh, i64 2 ; 2 uses
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !15
  store i8 %i.mo, ptr %i.ml, align 1, !tbaa !15
  store i8 %i.mm, ptr %i.mn, align 1, !tbaa !15
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mh, i64 %. ; 6 uses
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !15
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 3 ; 2 uses
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !15
  store i8 %i.ms, ptr %i.mp, align 1, !tbaa !15
  store i8 %i.mq, ptr %i.mr, align 1, !tbaa !15
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mp, i64 1 ; 2 uses
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !15
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mp, i64 2 ; 2 uses
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !15
  store i8 %i.mw, ptr %i.mt, align 1, !tbaa !15
  store i8 %i.mu, ptr %i.mv, align 1, !tbaa !15
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mp, i64 %. ; 6 uses
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !15
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mx, i64 3 ; 2 uses
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !15
  store i8 %i.na, ptr %i.mx, align 1, !tbaa !15
  store i8 %i.my, ptr %i.mz, align 1, !tbaa !15
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mx, i64 1 ; 2 uses
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !15
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mx, i64 2 ; 2 uses
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !15
  store i8 %i.ne, ptr %i.nb, align 1, !tbaa !15
  store i8 %i.nc, ptr %i.nd, align 1, !tbaa !15
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mx, i64 %. ; 2 uses
  %i.ng = add i64 %.11301, -20                    ; 3 uses
  %i.nh = icmp ugt i64 %i.ng, 19
  br i1 %i.nh, label %.lr.ph1302, label %.preheader1277, !llvm.loop !89

.lr.ph1307:                                       ; preds = %.lr.ph1307, %.lr.ph1307.ph.new
  %store_forwarded1369 = phi i8 [ %load_initial1368, %.lr.ph1307.ph.new ], [ %i.np, %.lr.ph1307 ]
  %.312331306 = phi ptr [ %.21232.lcssa, %.lr.ph1307.ph.new ], [ %i.nv, %.lr.ph1307 ] ; 6 uses
  %niter1399 = phi i64 [ 0, %.lr.ph1307.ph.new ], [ %niter1399.next.1, %.lr.ph1307 ]
  %i.ni = load i8, ptr %.312331306, align 1, !tbaa !15 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.312331306, i64 3 ; 2 uses
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !15
  store i8 %i.nk, ptr %.312331306, align 1, !tbaa !15
  store i8 %i.ni, ptr %i.nj, align 1, !tbaa !15
  %i.nl = getelementptr inbounds nuw i8, ptr %.312331306, i64 1 ; 2 uses
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !15
  %i.nn = getelementptr inbounds nuw i8, ptr %.312331306, i64 2
  store i8 %store_forwarded1369, ptr %i.nl, align 1, !tbaa !15
  store i8 %i.nm, ptr %i.nn, align 1, !tbaa !15
  %i.no = getelementptr inbounds nuw i8, ptr %.312331306, i64 %. ; 6 uses
  %i.np = load i8, ptr %i.no, align 1, !tbaa !15  ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.no, i64 3 ; 2 uses
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !15
  store i8 %i.nr, ptr %i.no, align 1, !tbaa !15
  store i8 %i.np, ptr %i.nq, align 1, !tbaa !15
  %i.ns = getelementptr inbounds nuw i8, ptr %i.no, i64 1 ; 2 uses
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !15
  %i.nu = getelementptr inbounds nuw i8, ptr %i.no, i64 2
  store i8 %i.ni, ptr %i.ns, align 1, !tbaa !15
  store i8 %i.nt, ptr %i.nu, align 1, !tbaa !15
  %i.nv = getelementptr inbounds nuw i8, ptr %i.no, i64 %. ; 2 uses
  %niter1399.next.1 = add nuw i64 %niter1399, 2   ; 2 uses
  %niter1399.ncmp.1 = icmp eq i64 %niter1399.next.1, %unroll_iter1398
  br i1 %niter1399.ncmp.1, label %.loopexit.loopexit1377.unr-lcssa, label %.lr.ph1307, !llvm.loop !88

.preheader1280:                                   ; preds = %.lr.ph1294, %.preheader1282
  %.4.lcssa = phi ptr [ %7, %.preheader1282 ], [ %i.pe, %.lr.ph1294 ] ; 4 uses
  %.2.lcssa = phi i64 [ %4, %.preheader1282 ], [ %i.pf, %.lr.ph1294 ] ; 6 uses
  %.not1317 = icmp eq i64 %.2.lcssa, 0
  br i1 %.not1317, label %.loopexit, label %.lr.ph1299.lver.check

.lr.ph1299.lver.check:                            ; preds = %.preheader1280
  %ident.check1370.not = icmp eq i64 %., 1
  br i1 %ident.check1370.not, label %.lr.ph1299.ph, label %.lr.ph1299.lver.orig

.lr.ph1299.lver.orig:                             ; preds = %.lr.ph1299.lver.check, %.lr.ph1299.lver.orig
  %.51298.lver.orig = phi ptr [ %i.nz, %.lr.ph1299.lver.orig ], [ %.4.lcssa, %.lr.ph1299.lver.check ] ; 3 uses
  %.212381297.lver.orig = phi i64 [ %i.ny, %.lr.ph1299.lver.orig ], [ 0, %.lr.ph1299.lver.check ]
  %i.nw = load <8 x i8>, ptr %.51298.lver.orig, align 1, !tbaa !15
  %i.nx = shufflevector <8 x i8> %i.nw, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.nx, ptr %.51298.lver.orig, align 1, !tbaa !15
  %i.ny = add nuw nsw i64 %.212381297.lver.orig, 1 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.51298.lver.orig, i64 %.
  %exitcond1330.not.lver.orig = icmp eq i64 %i.ny, %.2.lcssa
  br i1 %exitcond1330.not.lver.orig, label %.loopexit, label %.lr.ph1299.lver.orig, !llvm.loop !90

.lr.ph1299.ph:                                    ; preds = %.lr.ph1299.lver.check
  %scevgep1372 = getelementptr i8, ptr %.4.lcssa, i64 6
  %load_initial1373 = load i8, ptr %scevgep1372, align 1 ; 2 uses
  %xtraiter = and i64 %.2.lcssa, 1
  %i.oa = icmp eq i64 %.2.lcssa, 1
  br i1 %i.oa, label %.lr.ph1299.epil.preheader, label %.lr.ph1299.ph.new

.lr.ph1299.ph.new:                                ; preds = %.lr.ph1299.ph
  %unroll_iter = and i64 %.2.lcssa, 14
  br label %.lr.ph1299

.lr.ph1294:                                       ; preds = %.preheader1282, %.lr.ph1294
  %.21293 = phi i64 [ %i.pf, %.lr.ph1294 ], [ %4, %.preheader1282 ]
  %.41292 = phi ptr [ %i.pe, %.lr.ph1294 ], [ %7, %.preheader1282 ] ; 3 uses
  %i.ob = load <8 x i8>, ptr %.41292, align 1, !tbaa !15
  %i.oc = shufflevector <8 x i8> %i.ob, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.oc, ptr %.41292, align 1, !tbaa !15
  %i.od = getelementptr inbounds nuw i8, ptr %.41292, i64 %. ; 3 uses
  %i.oe = load <8 x i8>, ptr %i.od, align 1, !tbaa !15
  %i.of = shufflevector <8 x i8> %i.oe, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.of, ptr %i.od, align 1, !tbaa !15
  %i.og = getelementptr inbounds nuw i8, ptr %i.od, i64 %. ; 3 uses
  %i.oh = load <8 x i8>, ptr %i.og, align 1, !tbaa !15
  %i.oi = shufflevector <8 x i8> %i.oh, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.oi, ptr %i.og, align 1, !tbaa !15
  %i.oj = getelementptr inbounds nuw i8, ptr %i.og, i64 %. ; 3 uses
  %i.ok = load <8 x i8>, ptr %i.oj, align 1, !tbaa !15
  %i.ol = shufflevector <8 x i8> %i.ok, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.ol, ptr %i.oj, align 1, !tbaa !15
  %i.om = getelementptr inbounds nuw i8, ptr %i.oj, i64 %. ; 3 uses
  %i.on = load <8 x i8>, ptr %i.om, align 1, !tbaa !15
  %i.oo = shufflevector <8 x i8> %i.on, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.oo, ptr %i.om, align 1, !tbaa !15
  %i.op = getelementptr inbounds nuw i8, ptr %i.om, i64 %. ; 3 uses
  %i.oq = load <8 x i8>, ptr %i.op, align 1, !tbaa !15
  %i.or = shufflevector <8 x i8> %i.oq, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.or, ptr %i.op, align 1, !tbaa !15
  %i.os = getelementptr inbounds nuw i8, ptr %i.op, i64 %. ; 3 uses
  %i.ot = load <8 x i8>, ptr %i.os, align 1, !tbaa !15
  %i.ou = shufflevector <8 x i8> %i.ot, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.ou, ptr %i.os, align 1, !tbaa !15
  %i.ov = getelementptr inbounds nuw i8, ptr %i.os, i64 %. ; 3 uses
  %i.ow = load <8 x i8>, ptr %i.ov, align 1, !tbaa !15
  %i.ox = shufflevector <8 x i8> %i.ow, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.ox, ptr %i.ov, align 1, !tbaa !15
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ov, i64 %. ; 3 uses
  %i.oz = load <8 x i8>, ptr %i.oy, align 1, !tbaa !15
  %i.pa = shufflevector <8 x i8> %i.oz, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.pa, ptr %i.oy, align 1, !tbaa !15
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oy, i64 %. ; 3 uses
  %i.pc = load <8 x i8>, ptr %i.pb, align 1, !tbaa !15
  %i.pd = shufflevector <8 x i8> %i.pc, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.pd, ptr %i.pb, align 1, !tbaa !15
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pb, i64 %. ; 2 uses
  %i.pf = add i64 %.21293, -10                    ; 3 uses
  %i.pg = icmp ugt i64 %i.pf, 9
  br i1 %i.pg, label %.lr.ph1294, label %.preheader1280, !llvm.loop !91

.lr.ph1299:                                       ; preds = %.lr.ph1299, %.lr.ph1299.ph.new
  %store_forwarded1374 = phi i8 [ %load_initial1373, %.lr.ph1299.ph.new ], [ %i.pr, %.lr.ph1299 ]
  %.51298 = phi ptr [ %.4.lcssa, %.lr.ph1299.ph.new ], [ %i.qa, %.lr.ph1299 ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph1299.ph.new ], [ %niter.next.1, %.lr.ph1299 ]
  %i.ph = load i8, ptr %.51298, align 1, !tbaa !15 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %.51298, i64 7 ; 2 uses
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !15
  store i8 %i.pj, ptr %.51298, align 1, !tbaa !15
  store i8 %i.ph, ptr %i.pi, align 1, !tbaa !15
  %i.pk = getelementptr inbounds nuw i8, ptr %.51298, i64 1 ; 2 uses
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !15
  %i.pm = getelementptr inbounds nuw i8, ptr %.51298, i64 6
  store i8 %store_forwarded1374, ptr %i.pk, align 1, !tbaa !15
  store i8 %i.pl, ptr %i.pm, align 1, !tbaa !15
  %i.pn = getelementptr inbounds nuw i8, ptr %.51298, i64 2 ; 2 uses
  %i.po = load <4 x i8>, ptr %i.pn, align 1, !tbaa !15
  %i.pp = shufflevector <4 x i8> %i.po, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.pp, ptr %i.pn, align 1, !tbaa !15
  %i.pq = getelementptr inbounds nuw i8, ptr %.51298, i64 %. ; 7 uses
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !15  ; 3 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pq, i64 7 ; 2 uses
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !15
  store i8 %i.pt, ptr %i.pq, align 1, !tbaa !15
  store i8 %i.pr, ptr %i.ps, align 1, !tbaa !15
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pq, i64 1 ; 2 uses
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !15
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pq, i64 6
  store i8 %i.ph, ptr %i.pu, align 1, !tbaa !15
  store i8 %i.pv, ptr %i.pw, align 1, !tbaa !15
  %i.px = getelementptr inbounds nuw i8, ptr %i.pq, i64 2 ; 2 uses
  %i.py = load <4 x i8>, ptr %i.px, align 1, !tbaa !15
  %i.pz = shufflevector <4 x i8> %i.py, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.pz, ptr %i.px, align 1, !tbaa !15
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pq, i64 %. ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit1381.unr-lcssa, label %.lr.ph1299, !llvm.loop !90

.preheader1283:                                   ; preds = %.lr.ph, %.preheader1285
  %.6.lcssa = phi ptr [ %7, %.preheader1285 ], [ %i.re, %.lr.ph ]
  %.3.lcssa = phi i64 [ %4, %.preheader1285 ], [ %i.rf, %.lr.ph ] ; 2 uses
  %.not1316 = icmp eq i64 %.3.lcssa, 0
  br i1 %.not1316, label %.loopexit, label %.lr.ph1291

.lr.ph:                                           ; preds = %.preheader1285, %.lr.ph
  %.31287 = phi i64 [ %i.rf, %.lr.ph ], [ %4, %.preheader1285 ]
  %.61286 = phi ptr [ %i.re, %.lr.ph ], [ %7, %.preheader1285 ] ; 3 uses
  %i.qb = load <16 x i8>, ptr %.61286, align 1, !tbaa !15
  %i.qc = shufflevector <16 x i8> %i.qb, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %i.qc, ptr %.61286, align 1, !tbaa !15
  %i.qd = getelementptr inbounds nuw i8, ptr %.61286, i64 %. ; 3 uses
  %i.qe = load <16 x i8>, ptr %i.qd, align 1, !tbaa !15
  %i.qf = shufflevector <16 x i8> %i.qe, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %i.qf, ptr %i.qd, align 1, !tbaa !15
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qd, i64 %. ; 3 uses
  %i.qh = load <16 x i8>, ptr %i.qg, align 1, !tbaa !15
  %i.qi = shufflevector <16 x i8> %i.qh, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %i.qi, ptr %i.qg, align 1, !tbaa !15
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qg, i64 %. ; 3 uses
  %i.qk = load <16 x i8>, ptr %i.qj, align 1, !tbaa !15
  %i.ql = shufflevector <16 x i8> %i.qk, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %i.ql, ptr %i.qj, align 1, !tbaa !15
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qj, i64 %. ; 3 uses
  %i.qn = load <16 x i8>, ptr %i.qm, align 1, !tbaa !15
  %i.qo = shufflevector <16 x i8> %i.qn, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %i.qo, ptr %i.qm, align 1, !tbaa !15
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qm, i64 %. ; 3 uses
  %i.qq = load <16 x i8>, ptr %i.qp, align 1, !tbaa !15
  %i.qr = shufflevector <16 x i8> %i.qq, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %i.qr, ptr %i.qp, align 1, !tbaa !15
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qp, i64 %. ; 3 uses
  %i.qt = load <16 x i8>, ptr %i.qs, align 1, !tbaa !15
  %i.qu = shufflevector <16 x i8> %i.qt, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %i.qu, ptr %i.qs, align 1, !tbaa !15
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qs, i64 %. ; 3 uses
  %i.qw = load <16 x i8>, ptr %i.qv, align 1, !tbaa !15
  %i.qx = shufflevector <16 x i8> %i.qw, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %i.qx, ptr %i.qv, align 1, !tbaa !15
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qv, i64 %. ; 3 uses
  %i.qz = load <16 x i8>, ptr %i.qy, align 1, !tbaa !15
  %i.ra = shufflevector <16 x i8> %i.qz, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %i.ra, ptr %i.qy, align 1, !tbaa !15
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qy, i64 %. ; 3 uses
  %i.rc = load <16 x i8>, ptr %i.rb, align 1, !tbaa !15
  %i.rd = shufflevector <16 x i8> %i.rc, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %i.rd, ptr %i.rb, align 1, !tbaa !15
  %i.re = getelementptr inbounds nuw i8, ptr %i.rb, i64 %. ; 2 uses
  %i.rf = add i64 %.31287, -10                    ; 3 uses
  %i.rg = icmp ugt i64 %i.rf, 9
  br i1 %i.rg, label %.lr.ph, label %.preheader1283, !llvm.loop !92

.lr.ph1291:                                       ; preds = %.preheader1283, %.lr.ph1291
  %.71290 = phi ptr [ %i.rk, %.lr.ph1291 ], [ %.6.lcssa, %.preheader1283 ] ; 3 uses
  %.312391289 = phi i64 [ %i.rj, %.lr.ph1291 ], [ 0, %.preheader1283 ]
  %i.rh = load <16 x i8>, ptr %.71290, align 1, !tbaa !15
  %i.ri = shufflevector <16 x i8> %i.rh, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %i.ri, ptr %.71290, align 1, !tbaa !15
  %i.rj = add nuw nsw i64 %.312391289, 1          ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %.71290, i64 %.
  %exitcond.not = icmp eq i64 %i.rj, %.3.lcssa
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph1291, !llvm.loop !93

bb.an:                                            ; preds = %.split, %bb.am
  %i.rl = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !14
  %i.rm = load i64, ptr @H5E_UNSUPPORTED_g, align 8, !tbaa !14
  %i.rn = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_order_opt, i32 noundef 859, i64 noundef %i.rl, i64 noundef %i.rm, ptr noundef nonnull @.str.8) #8 ; 0 uses
  br label %.loopexit

bb.ao:                                            ; preds = %bb.b
  %i.ro = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !14
  %i.rp = load i64, ptr @H5E_UNSUPPORTED_g, align 8, !tbaa !14
  %i.rq = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_order_opt, i32 noundef 868, i64 noundef %i.ro, i64 noundef %i.rp, ptr noundef nonnull @.str.4) #8 ; 0 uses
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph1315
  %lcmp.mod1408.not = icmp eq i64 %xtraiter1406, 0
  br i1 %lcmp.mod1408.not, label %.loopexit, label %.lr.ph1315.epil.preheader

.lr.ph1315.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph1315.ph
  %.112311314.epil.init = phi ptr [ %.01230.lcssa, %.lr.ph1315.ph ], [ %i.il, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod1409 = icmp ne i64 %xtraiter1406, 0
  tail call void @llvm.assume(i1 %lcmp.mod1409)
  br label %.lr.ph1315.epil

.lr.ph1315.epil:                                  ; preds = %.lr.ph1315.epil, %.lr.ph1315.epil.preheader
  %.112311314.epil = phi ptr [ %i.rt, %.lr.ph1315.epil ], [ %.112311314.epil.init, %.lr.ph1315.epil.preheader ] ; 3 uses
  %epil.iter1407 = phi i64 [ %epil.iter1407.next, %.lr.ph1315.epil ], [ 0, %.lr.ph1315.epil.preheader ]
  %i.rr = getelementptr inbounds nuw i8, ptr %.112311314.epil, i64 1 ; 2 uses
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !15
  store i8 %i.rs, ptr %.112311314.epil, align 1, !tbaa !15
  store i8 %load_initial, ptr %i.rr, align 1, !tbaa !15
  %i.rt = getelementptr inbounds nuw i8, ptr %.112311314.epil, i64 %.
  %epil.iter1407.next = add i64 %epil.iter1407, 1 ; 2 uses
  %epil.iter1407.cmp.not = icmp eq i64 %epil.iter1407.next, %xtraiter1406
  br i1 %epil.iter1407.cmp.not, label %.loopexit, label %.lr.ph1315.epil, !llvm.loop !94

.loopexit.loopexit1375.unr-lcssa:                 ; preds = %.lr.ph1315.lver.orig
  %lcmp.mod1402.not = icmp eq i64 %xtraiter1400, 0
  br i1 %lcmp.mod1402.not, label %.loopexit, label %.lr.ph1315.lver.orig.epil.preheader

.lr.ph1315.lver.orig.epil.preheader:              ; preds = %.loopexit.loopexit1375.unr-lcssa, %.lr.ph1315.lver.orig.preheader
  %.112311314.lver.orig.epil.init = phi ptr [ %.01230.lcssa, %.lr.ph1315.lver.orig.preheader ], [ %i.eu, %.loopexit.loopexit1375.unr-lcssa ]
  %lcmp.mod1403 = icmp ne i64 %xtraiter1400, 0
  tail call void @llvm.assume(i1 %lcmp.mod1403)
  br label %.lr.ph1315.lver.orig.epil

.lr.ph1315.lver.orig.epil:                        ; preds = %.lr.ph1315.lver.orig.epil, %.lr.ph1315.lver.orig.epil.preheader
  %.112311314.lver.orig.epil = phi ptr [ %i.rx, %.lr.ph1315.lver.orig.epil ], [ %.112311314.lver.orig.epil.init, %.lr.ph1315.lver.orig.epil.preheader ] ; 4 uses
  %epil.iter1401 = phi i64 [ %epil.iter1401.next, %.lr.ph1315.lver.orig.epil ], [ 0, %.lr.ph1315.lver.orig.epil.preheader ]
  %i.ru = load i8, ptr %.112311314.lver.orig.epil, align 1, !tbaa !15
  %i.rv = getelementptr inbounds nuw i8, ptr %.112311314.lver.orig.epil, i64 1 ; 2 uses
  %i.rw = load i8, ptr %i.rv, align 1, !tbaa !15
  store i8 %i.rw, ptr %.112311314.lver.orig.epil, align 1, !tbaa !15
  store i8 %i.ru, ptr %i.rv, align 1, !tbaa !15
  %i.rx = getelementptr inbounds nuw i8, ptr %.112311314.lver.orig.epil, i64 %.
  %epil.iter1401.next = add i64 %epil.iter1401, 1 ; 2 uses
  %epil.iter1401.cmp.not = icmp eq i64 %epil.iter1401.next, %xtraiter1400
  br i1 %epil.iter1401.cmp.not, label %.loopexit, label %.lr.ph1315.lver.orig.epil, !llvm.loop !95

.loopexit.loopexit1377.unr-lcssa:                 ; preds = %.lr.ph1307
  %lcmp.mod1396.not = icmp eq i64 %xtraiter1394, 0
  br i1 %lcmp.mod1396.not, label %.loopexit, label %.lr.ph1307.epil.preheader

.lr.ph1307.epil.preheader:                        ; preds = %.loopexit.loopexit1377.unr-lcssa, %.lr.ph1307.ph
  %store_forwarded1369.epil.init = phi i8 [ %load_initial1368, %.lr.ph1307.ph ], [ %i.np, %.loopexit.loopexit1377.unr-lcssa ]
  %.312331306.epil.init = phi ptr [ %.21232.lcssa, %.lr.ph1307.ph ], [ %i.nv, %.loopexit.loopexit1377.unr-lcssa ] ; 5 uses
  %lcmp.mod1397 = trunc i64 %.1.lcssa to i1
  tail call void @llvm.assume(i1 %lcmp.mod1397)
  %i.ry = load i8, ptr %.312331306.epil.init, align 1, !tbaa !15
  %i.rz = getelementptr inbounds nuw i8, ptr %.312331306.epil.init, i64 3 ; 2 uses
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !15
  store i8 %i.sa, ptr %.312331306.epil.init, align 1, !tbaa !15
  store i8 %i.ry, ptr %i.rz, align 1, !tbaa !15
  %i.sb = getelementptr inbounds nuw i8, ptr %.312331306.epil.init, i64 1 ; 2 uses
  %i.sc = load i8, ptr %i.sb, align 1, !tbaa !15
  %i.sd = getelementptr inbounds nuw i8, ptr %.312331306.epil.init, i64 2
  store i8 %store_forwarded1369.epil.init, ptr %i.sb, align 1, !tbaa !15
  store i8 %i.sc, ptr %i.sd, align 1, !tbaa !15
  br label %.loopexit

.loopexit.loopexit1378.unr-lcssa:                 ; preds = %.lr.ph1307.lver.orig
  %lcmp.mod1390.not = icmp eq i64 %xtraiter1389, 0
  br i1 %lcmp.mod1390.not, label %.loopexit, label %.lr.ph1307.lver.orig.epil.preheader

.lr.ph1307.lver.orig.epil.preheader:              ; preds = %.loopexit.loopexit1378.unr-lcssa, %.lr.ph1307.lver.orig.preheader
  %.312331306.lver.orig.epil.init = phi ptr [ %.21232.lcssa, %.lr.ph1307.lver.orig.preheader ], [ %i.iy, %.loopexit.loopexit1378.unr-lcssa ]
  %lcmp.mod1391 = icmp ne i64 %xtraiter1389, 0
  tail call void @llvm.assume(i1 %lcmp.mod1391)
  br label %.lr.ph1307.lver.orig.epil

.lr.ph1307.lver.orig.epil:                        ; preds = %.lr.ph1307.lver.orig.epil, %.lr.ph1307.lver.orig.epil.preheader
  %.312331306.lver.orig.epil = phi ptr [ %i.sg, %.lr.ph1307.lver.orig.epil ], [ %.312331306.lver.orig.epil.init, %.lr.ph1307.lver.orig.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph1307.lver.orig.epil ], [ 0, %.lr.ph1307.lver.orig.epil.preheader ]
  %i.se = load <4 x i8>, ptr %.312331306.lver.orig.epil, align 1, !tbaa !15
  %i.sf = shufflevector <4 x i8> %i.se, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.sf, ptr %.312331306.lver.orig.epil, align 1, !tbaa !15
  %i.sg = getelementptr inbounds nuw i8, ptr %.312331306.lver.orig.epil, i64 %.
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1389
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph1307.lver.orig.epil, !llvm.loop !96

.loopexit.loopexit1381.unr-lcssa:                 ; preds = %.lr.ph1299
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph1299.epil.preheader

.lr.ph1299.epil.preheader:                        ; preds = %.loopexit.loopexit1381.unr-lcssa, %.lr.ph1299.ph
  %store_forwarded1374.epil.init = phi i8 [ %load_initial1373, %.lr.ph1299.ph ], [ %i.pr, %.loopexit.loopexit1381.unr-lcssa ]
  %.51298.epil.init = phi ptr [ %.4.lcssa, %.lr.ph1299.ph ], [ %i.qa, %.loopexit.loopexit1381.unr-lcssa ] ; 6 uses
  %lcmp.mod1388 = trunc i64 %.2.lcssa to i1
  tail call void @llvm.assume(i1 %lcmp.mod1388)
  %i.sh = load i8, ptr %.51298.epil.init, align 1, !tbaa !15
  %i.si = getelementptr inbounds nuw i8, ptr %.51298.epil.init, i64 7 ; 2 uses
  %i.sj = load i8, ptr %i.si, align 1, !tbaa !15
  store i8 %i.sj, ptr %.51298.epil.init, align 1, !tbaa !15
  store i8 %i.sh, ptr %i.si, align 1, !tbaa !15
  %i.sk = getelementptr inbounds nuw i8, ptr %.51298.epil.init, i64 1 ; 2 uses
  %i.sl = load i8, ptr %i.sk, align 1, !tbaa !15
  %i.sm = getelementptr inbounds nuw i8, ptr %.51298.epil.init, i64 6
  store i8 %store_forwarded1374.epil.init, ptr %i.sk, align 1, !tbaa !15
  store i8 %i.sl, ptr %i.sm, align 1, !tbaa !15
  %i.sn = getelementptr inbounds nuw i8, ptr %.51298.epil.init, i64 2 ; 2 uses
  %i.so = load <4 x i8>, ptr %i.sn, align 1, !tbaa !15
  %i.sp = shufflevector <4 x i8> %i.so, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.sp, ptr %i.sn, align 1, !tbaa !15
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph1291, %.lr.ph1299.lver.orig, %.lr.ph1299.epil.preheader, %.loopexit.loopexit1381.unr-lcssa, %.loopexit.loopexit1378.unr-lcssa, %.lr.ph1307.lver.orig.epil, %.lr.ph1307.epil.preheader, %.loopexit.loopexit1377.unr-lcssa, %.loopexit.loopexit1375.unr-lcssa, %.lr.ph1315.lver.orig.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph1315.epil, %.preheader1283, %.preheader1280, %.preheader1277, %.preheader, %bb.d, %bb.f, %bb.i, %bb.l, %bb.n, %.thread1274, %bb.r, %bb.t, %bb.ad, %bb.ae, %bb.ah, %bb.ak, %bb.an, %bb.ao, %.split, %bb.al, %bb.af, %bb.b, %bb.a
  %.01240 = phi i32 [ -1, %bb.ao ], [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.i ], [ -1, %bb.l ], [ -1, %bb.n ], [ -1, %.thread1274 ], [ -1, %bb.t ], [ -1, %bb.ae ], [ 0, %bb.af ], [ -1, %bb.ad ], [ -1, %bb.r ], [ -1, %bb.ah ], [ -1, %bb.ak ], [ 0, %bb.al ], [ -1, %bb.an ], [ 0, %.split ], [ 0, %bb.a ], [ 0, %.preheader1280 ], [ 0, %.preheader ], [ 0, %.preheader1277 ], [ 0, %bb.b ], [ 0, %.preheader1283 ], [ 0, %.loopexit.loopexit1375.unr-lcssa ], [ 0, %.loopexit.loopexit1378.unr-lcssa ], [ 0, %.lr.ph1299.lver.orig ], [ 0, %.lr.ph1299.epil.preheader ], [ 0, %.loopexit.loopexit.unr-lcssa ], [ 0, %.lr.ph1307.epil.preheader ], [ 0, %.lr.ph1315.epil ], [ 0, %.lr.ph1315.lver.orig.epil ], [ 0, %.loopexit.loopexit1377.unr-lcssa ], [ 0, %.lr.ph1307.lver.orig.epil ], [ 0, %.loopexit.loopexit1381.unr-lcssa ], [ 0, %.lr.ph1291 ]
  ret i32 %.01240
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_0
