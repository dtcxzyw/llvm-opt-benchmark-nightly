inline.NumInlined: 13633
inline.NumDeleted: 4657
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 85
begin_hunk_0_@_ZN11OpenImageIO4v3_114ImageCacheImpl10get_pixelsEPNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoEiiiiiiiiiiNS0_8TypeDescEPvlllii:bb.a
  %i.dk = mul i64 %i.dj, %spec.select.i313        ; 21 uses
  %i.dl = icmp eq i64 %i.dk, %.0                  ; 3 uses
  %i.dm = icmp eq i32 %i.bt, %i.bx
  %i.dn = select i1 %i.dl, i1 %i.dm, i1 false
  %i.do = mul nsw i64 %i.dk, %i.cl                ; 3 uses
  %i.dp = mul nsw i64 %i.do, %i.co                ; 4 uses
  %.not299407.not = icmp slt i32 %9, %10
  br i1 %.not299407.not, label %.lr.ph415, label %.thread353

.lr.ph415:                                        ; preds = %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bp, i64 20 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bp, i64 4 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.bp, i64 52 ; 2 uses
  %i.dv = icmp slt i32 %7, %8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %.not298375 = icmp slt i32 %5, %6               ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bp, i64 48 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %28, i64 4
  %i.ea = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %28, i64 12
  %i.ec = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %28, i64 20
  %i.ee = trunc i32 %.0200 to i16
  %i.ef = getelementptr inbounds nuw i8, ptr %28, i64 22 ; 2 uses
  %i.eg = trunc i32 %.0201 to i16
  %i.eh = getelementptr inbounds nuw i8, ptr %28, i64 24
  %i.ei = getelementptr inbounds nuw i8, ptr %28, i64 28
  %i.ej = getelementptr inbounds nuw i8, ptr %28, i64 32
  %i.ek = icmp slt i32 %.0201, %.0200
  %i.el = getelementptr inbounds nuw i8, ptr %.0196, i64 80
  %i.em = icmp eq i64 %.0338, %i.do
  %or.cond306 = select i1 %i.dl, i1 %i.em, i1 false
  %or.cond306.fr = freeze i1 %or.cond306          ; 2 uses
  %.not494 = icmp slt i32 %5, %6
  br i1 %i.dv, label %.lr.ph415.split.us.preheader, label %.lr.ph415.split

.lr.ph415.split.us.preheader:                     ; preds = %.lr.ph415
  %i.en = sub i32 %6, %5                          ; 2 uses
  %i.eo = xor i32 %5, -1
  %i.ep = add i32 %6, %i.eo                       ; 2 uses
  %xtraiter512 = and i32 %i.en, 7                 ; 2 uses
  %lcmp.mod513.not = icmp eq i32 %xtraiter512, 0
  %i.eq = icmp ult i32 %i.ep, 7
  %xtraiter514 = and i32 %i.en, 7                 ; 2 uses
  %lcmp.mod515.not = icmp eq i32 %xtraiter514, 0
  %i.er = icmp ult i32 %i.ep, 7
  br label %.lr.ph415.split.us

.lr.ph415.split.us:                               ; preds = %.lr.ph415.split.us.preheader, %.loopexit365.us
  %.0236413.us = phi i64 [ %.5241.us, %.loopexit365.us ], [ 0, %.lr.ph415.split.us.preheader ] ; 4 uses
  %.0275411.us = phi i32 [ %i.kf, %.loopexit365.us ], [ %9, %.lr.ph415.split.us.preheader ] ; 6 uses
  %.0276408.us = phi ptr [ %i.kg, %.loopexit365.us ], [ %14, %.lr.ph415.split.us.preheader ] ; 4 uses
  %i.es = load i32, ptr %i.dq, align 4, !tbaa !96 ; 3 uses
  %i.et = icmp slt i32 %.0275411.us, %i.es
  br i1 %i.et, label %bb.al, label %bb.r

bb.r:                                             ; preds = %.lr.ph415.split.us
  %i.eu = load i32, ptr %i.dr, align 4, !tbaa !102
  %i.ev = add nsw i32 %i.eu, %i.es
  %.not291.us = icmp slt i32 %.0275411.us, %i.ev
  br i1 %.not291.us, label %.lr.ph400.us, label %bb.al

.lr.ph400.us:                                     ; preds = %bb.r
  %i.ew = sub nsw i32 %.0275411.us, %i.es
  %i.ex = load i32, ptr %i.ds, align 4, !tbaa !106
  %i.ey = srem i32 %i.ew, %i.ex
  %i.ez = sub nsw i32 %.0275411.us, %i.ey         ; 4 uses
  %i.fa = load i32, ptr %i.dt, align 4, !tbaa !94
  %i.fb = sub nsw i32 %7, %i.fa
  %i.fc = load i32, ptr %i.du, align 4, !tbaa !104 ; 2 uses
  %i.fd = srem i32 %i.fb, %i.fc
  %i.fe = sub nsw i32 %7, %i.fd                   ; 2 uses
  %i.ff = add nsw i32 %i.fe, %i.fc
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph400.us, %.loopexit.us
  %.0230398.us = phi i32 [ %7, %.lr.ph400.us ], [ %i.ju, %.loopexit.us ] ; 7 uses
  %.0231397.us = phi i32 [ %i.ff, %.lr.ph400.us ], [ %.1232.us, %.loopexit.us ] ; 2 uses
  %.0233396.us = phi i32 [ %i.fe, %.lr.ph400.us ], [ %.1234.us, %.loopexit.us ]
  %.0235394.us = phi ptr [ %.0276408.us, %.lr.ph400.us ], [ %i.jv, %.loopexit.us ] ; 5 uses
  %.1237393.us = phi i64 [ %.0236413.us, %.lr.ph400.us ], [ %.3239.us, %.loopexit.us ] ; 6 uses
  %.0242392.us = phi i32 [ -100000, %.lr.ph400.us ], [ %.7249.us, %.loopexit.us ] ; 6 uses
  %.0250391.us = phi i32 [ -100000, %.lr.ph400.us ], [ %.7257.us, %.loopexit.us ] ; 6 uses
  %.0258390.us = phi i32 [ -100000, %.lr.ph400.us ], [ %.7265.us, %.loopexit.us ] ; 6 uses
  %i.fg = icmp eq i32 %.0230398.us, %.0231397.us
  br i1 %i.fg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fh = load i32, ptr %i.du, align 4, !tbaa !104
  %i.fi = add nsw i32 %i.fh, %.0230398.us
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1234.us = phi i32 [ %.0230398.us, %bb.t ], [ %.0233396.us, %bb.s ] ; 5 uses
  %.1232.us = phi i32 [ %i.fi, %bb.t ], [ %.0231397.us, %bb.s ]
  %i.fj = load i32, ptr %i.dt, align 4, !tbaa !94 ; 2 uses
  %i.fk = icmp slt i32 %.0230398.us, %i.fj
  br i1 %i.fk, label %bb.aj, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fl = load i32, ptr %i.dw, align 4, !tbaa !100
  %i.fm = add nsw i32 %i.fl, %i.fj
  %.not292.us = icmp slt i32 %.0230398.us, %i.fm
  br i1 %.not292.us, label %.preheader362.us, label %bb.aj

.lr.ph.us:                                        ; preds = %.preheader362.us, %.thread.us
  %.0213383.us = phi i32 [ %i.ji, %.thread.us ], [ %5, %.preheader362.us ] ; 9 uses
  %.0217382.us = phi ptr [ %.6223.us, %.thread.us ], [ null, %.preheader362.us ] ; 3 uses
  %.0224381.us = phi ptr [ %i.jj, %.thread.us ], [ %.0235394.us, %.preheader362.us ] ; 6 uses
  %.2238379.us = phi i64 [ %i.jk, %.thread.us ], [ %.1237393.us, %.preheader362.us ] ; 2 uses
  %.1243378.us = phi i32 [ %.5247.us, %.thread.us ], [ %.0242392.us, %.preheader362.us ] ; 2 uses
  %.1251377.us = phi i32 [ %.5255.us, %.thread.us ], [ %.0250391.us, %.preheader362.us ] ; 2 uses
  %.1259376.us = phi i32 [ %.5263.us, %.thread.us ], [ %.0258390.us, %.preheader362.us ] ; 4 uses
  %i.fn = load i32, ptr %i.bp, align 4, !tbaa !92 ; 3 uses
  %i.fo = icmp slt i32 %.0213383.us, %i.fn
  br i1 %i.fo, label %bb.ai, label %bb.w

bb.w:                                             ; preds = %.lr.ph.us
  %i.fp = load i32, ptr %i.dx, align 4, !tbaa !98
  %i.fq = add nsw i32 %i.fp, %i.fn
  %.not293.us = icmp slt i32 %.0213383.us, %i.fq
  br i1 %.not293.us, label %bb.x, label %bb.ai

bb.x:                                             ; preds = %bb.w
  %i.fr = sub nsw i32 %.0213383.us, %i.fn
  %i.fs = load i32, ptr %i.dy, align 4, !tbaa !105
  %i.ft = srem i32 %i.fr, %i.fs
  %i.fu = sub nsw i32 %.0213383.us, %i.ft         ; 4 uses
  %.not294.us = icmp eq i32 %.1259376.us, %i.fu
  %.not295.us = icmp eq i32 %.1251377.us, %.1234.us
  %or.cond307.us = select i1 %.not294.us, i1 %.not295.us, i1 false
  %.not296.us = icmp eq i32 %.1243378.us, %i.ez
  %or.cond308.us = select i1 %or.cond307.us, i1 %.not296.us, i1 false
  br i1 %or.cond308.us, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #5
  %i.fv = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %i.fw = load i32, ptr %i.b, align 4, !tbaa !3
  store i32 %i.fu, ptr %28, align 8, !tbaa !582
  store i32 %.1234.us, ptr %i.dz, align 4, !tbaa !583
  store i32 %i.ez, ptr %i.ea, align 8, !tbaa !584
  store i32 %i.fv, ptr %i.eb, align 4, !tbaa !581
  store i32 %i.fw, ptr %i.ec, align 8, !tbaa !579
  store i16 %i.ee, ptr %i.ed, align 4, !tbaa !585
  store i16 %i.eg, ptr %i.ef, align 2, !tbaa !586
  store i32 0, ptr %i.eh, align 8, !tbaa !593
  store i32 0, ptr %i.ei, align 4, !tbaa !620
  store ptr %i.d, ptr %i.ej, align 8, !tbaa !587
  br i1 %i.ek, label %bb.z, label %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit.us

bb.z:                                             ; preds = %bb.y
  %i.fx = sext i32 %i.fv to i64
  %i.fy = load ptr, ptr %i.y, align 8, !tbaa !275
  %i.fz = getelementptr inbounds nuw [128 x i8], ptr %i.fy, i64 %i.fx
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 120
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !298
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 60
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !359
  %i.ge = trunc i32 %i.gd to i16
  store i16 %i.ge, ptr %i.ef, align 2, !tbaa !586
  br label %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit.us

_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit.us: ; preds = %bb.z, %bb.y
  %i.gf = icmp eq i64 %.2238379.us, 0
  %i.gg = call noundef zeroext i1 @_ZN11OpenImageIO4v3_114ImageCacheImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb(ptr noundef nonnull align 64 dereferenceable(25240) %0, ptr noundef nonnull align 8 dereferenceable(40) %28, ptr noundef nonnull %.0196, i1 noundef zeroext %i.gf)
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #5
  br i1 %i.gg, label %.thread, label %.thread353

bb.aa:                                            ; preds = %bb.x
  %.not297.us = icmp eq ptr %.0217382.us, null
  br i1 %.not297.us, label %.thread, label %_ZNK11OpenImageIO4v3_114ImageCacheTile4dataEiiii.exit.us

.thread:                                          ; preds = %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit.us, %bb.aa
  %.3261.us499 = phi i32 [ %.1259376.us, %bb.aa ], [ %i.fu, %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit.us ] ; 6 uses
  %i.gh = load ptr, ptr %i.el, align 8, !tbaa !599 ; 11 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 40
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !587
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 20
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !581
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gj, i64 80
  %i.go = sext i32 %i.gm to i64
  %i.gp = load ptr, ptr %i.gn, align 8, !tbaa !275
  %i.gq = getelementptr inbounds nuw [128 x i8], ptr %i.gp, i64 %i.go ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !579
  %i.gt = sext i32 %i.gs to i64
  %i.gu = load ptr, ptr %i.gq, align 8, !tbaa !374
  %i.gv = getelementptr inbounds nuw [40 x i8], ptr %i.gu, i64 %i.gt
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !74 ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.gw, null
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gq, i64 120
  %i.gy = load ptr, ptr %i.gx, align 8
  %i.gz = select i1 %.not.i.i.us, ptr %i.gy, ptr %i.gw ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 48
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !105 ; 2 uses
  %29 = sext i32 %i.hb to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 52
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !104 ; 2 uses
  %30 = sext i32 %i.hd to i64
  %i.he = getelementptr inbounds nuw i8, ptr %i.gz, i64 56
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !106
  %i.hg = load i32, ptr %i.gk, align 8, !tbaa !582
  %i.hh = sub nsw i32 %.0213383.us, %i.hg         ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gh, i64 12
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !583
  %i.hk = sub nsw i32 %.0230398.us, %i.hj         ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !584
  %i.hn = sub nsw i32 %.0275411.us, %i.hm         ; 3 uses
  %i.ho = icmp slt i32 %i.hh, 0
  br i1 %i.ho, label %_ZNK11OpenImageIO4v3_114ImageCacheTile4dataEiiii.exit.us, label %bb.ab

bb.ab:                                            ; preds = %.thread
  %i.hp = icmp sge i32 %i.hh, %i.hb
  %i.hq = icmp slt i32 %i.hk, 0
  %or.cond.i.us = select i1 %i.hp, i1 true, i1 %i.hq
  br i1 %or.cond.i.us, label %_ZNK11OpenImageIO4v3_114ImageCacheTile4dataEiiii.exit.us, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hr = icmp slt i32 %i.hk, %i.hd
  %i.hs = icmp sgt i32 %i.hn, -1
  %or.cond3.not36.i.us = select i1 %i.hr, i1 %i.hs, i1 false
  %.not.i314.us = icmp slt i32 %i.hn, %i.hf
  %or.cond33.i.us = select i1 %or.cond3.not36.i.us, i1 %.not.i314.us, i1 false
  br i1 %or.cond33.i.us, label %bb.ad, label %_ZNK11OpenImageIO4v3_114ImageCacheTile4dataEiiii.exit.us

bb.ad:                                            ; preds = %bb.ac
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gh, i64 28
  %i.hu = load i16, ptr %i.ht, align 4, !tbaa !585
  %i.hv = sext i16 %i.hu to i32                   ; 2 uses
  %i.hw = icmp slt i32 %.0198, %i.hv
  br i1 %i.hw, label %_ZNK11OpenImageIO4v3_114ImageCacheTile4dataEiiii.exit.us, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gh, i64 30
  %i.hy = load i16, ptr %i.hx, align 2, !tbaa !586
  %i.hz = sext i16 %i.hy to i32
  %i.ia = icmp sgt i32 %.0198, %i.hz
  br i1 %i.ia, label %_ZNK11OpenImageIO4v3_114ImageCacheTile4dataEiiii.exit.us, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ib = zext nneg i32 %i.hn to i64
  %i.ic = mul nsw i64 %i.ib, %30
  %i.id = zext nneg i32 %i.hk to i64
  %i.ie = add nsw i64 %i.ic, %i.id
  %i.if = mul i64 %i.ie, %29
  %i.ig = zext nneg i32 %i.hh to i64
  %i.ih = add i64 %i.if, %i.ig
  %i.ii = getelementptr inbounds nuw i8, ptr %i.gh, i64 68
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !634
  %i.ik = sext i32 %i.ij to i64
  %i.il = mul i64 %i.ih, %i.ik
  %i.im = sub nsw i32 %.0198, %i.hv
  %i.in = getelementptr inbounds nuw i8, ptr %i.gh, i64 64
  %i.io = load i32, ptr %i.in, align 8, !tbaa !635
  %i.ip = mul nsw i32 %i.io, %i.im
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw i8, ptr %i.gh, i64 48
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !114
  %i.it = getelementptr i8, ptr %i.is, i64 %i.il
  %i.iu = getelementptr i8, ptr %i.it, i64 %i.iq
  br label %_ZNK11OpenImageIO4v3_114ImageCacheTile4dataEiiii.exit.us

_ZNK11OpenImageIO4v3_114ImageCacheTile4dataEiiii.exit.us: ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %.thread, %bb.aa
  %.3261.us498 = phi i32 [ %.1259376.us, %bb.aa ], [ %.3261.us499, %bb.af ], [ %.3261.us499, %bb.ae ], [ %.3261.us499, %bb.ad ], [ %.3261.us499, %bb.ac ], [ %.3261.us499, %bb.ab ], [ %.3261.us499, %.thread ] ; 2 uses
  %.3220.us = phi ptr [ %.0217382.us, %bb.aa ], [ %i.iu, %bb.af ], [ null, %bb.ae ], [ null, %bb.ad ], [ null, %bb.ac ], [ null, %bb.ab ], [ null, %.thread ] ; 4 uses
  br i1 %i.dn, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheTile4dataEiiii.exit.us
  %.sroa.011.0.copyload.us = load i64, ptr %27, align 8
  %.sroa.0.0.copyload.us = load i64, ptr %22, align 8
  %i.iv = call noundef zeroext i1 @_ZN11OpenImageIO4v3_120convert_pixel_valuesENS0_8TypeDescEPKvS1_Pvi(i64 %.sroa.011.0.copyload.us, ptr noundef %.3220.us, i64 %.sroa.0.0.copyload.us, ptr noundef %.0224381.us, i32 noundef %i.bt) ; 0 uses
  %i.iw = getelementptr inbounds i8, ptr %.3220.us, i64 %i.db
  br label %.thread.us

bb.ah:                                            ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheTile4dataEiiii.exit.us
  %i.ix = load i32, ptr %i.dy, align 4, !tbaa !105
  %i.iy = add nsw i32 %i.ix, %i.fu
  %.sroa.speculated.us = call i32 @llvm.smin.i32(i32 %6, i32 %i.iy)
  %i.iz = sub nsw i32 %.sroa.speculated.us, %.0213383.us ; 2 uses
  %i.ja = sext i32 %i.iz to i64
  %.sroa.013.0.copyload.us = load i64, ptr %27, align 8
  %.sroa.012.0.copyload.us = load i64, ptr %22, align 8
  %i.jb = mul i32 %i.iz, %i.bt
  %i.jc = call noundef zeroext i1 @_ZN11OpenImageIO4v3_120convert_pixel_valuesENS0_8TypeDescEPKvS1_Pvi(i64 %.sroa.013.0.copyload.us, ptr noundef %.3220.us, i64 %.sroa.012.0.copyload.us, ptr noundef %.0224381.us, i32 noundef %i.jb) ; 0 uses
  %i.jd = add nsw i64 %i.ja, -1                   ; 2 uses
  %i.je = trunc i64 %i.jd to i32
  %i.jf = add i32 %.0213383.us, %i.je
  %i.jg = mul nsw i64 %i.jd, %.0
  %i.jh = getelementptr inbounds i8, ptr %.0224381.us, i64 %i.jg
  br label %.thread.us

bb.ai:                                            ; preds = %bb.w, %.lr.ph.us
  call void @llvm.memset.p0.i64(ptr align 1 %.0224381.us, i8 0, i64 %i.dk, i1 false)
  br label %.thread.us

.thread.us:                                       ; preds = %bb.ai, %bb.ah, %bb.ag
  %.5263.us = phi i32 [ %.1259376.us, %bb.ai ], [ %.3261.us498, %bb.ag ], [ %.3261.us498, %bb.ah ] ; 2 uses
  %.5255.us = phi i32 [ %.1251377.us, %bb.ai ], [ %.1234.us, %bb.ag ], [ %.1234.us, %bb.ah ] ; 2 uses
  %.5247.us = phi i32 [ %.1243378.us, %bb.ai ], [ %i.ez, %bb.ag ], [ %i.ez, %bb.ah ] ; 2 uses
  %.3227.us = phi ptr [ %.0224381.us, %bb.ai ], [ %.0224381.us, %bb.ag ], [ %i.jh, %bb.ah ]
  %.6223.us = phi ptr [ %.0217382.us, %bb.ai ], [ %i.iw, %bb.ag ], [ %.3220.us, %bb.ah ]
  %.3216.us = phi i32 [ %.0213383.us, %bb.ai ], [ %.0213383.us, %bb.ag ], [ %i.jf, %bb.ah ]
  %i.ji = add nsw i32 %.3216.us, 1                ; 2 uses
  %i.jj = getelementptr inbounds i8, ptr %.3227.us, i64 %.0
  %i.jk = add i64 %.2238379.us, 1                 ; 2 uses
  %.not298.us = icmp slt i32 %i.ji, %6
  br i1 %.not298.us, label %.lr.ph.us, label %.loopexit.us, !llvm.loop !636

bb.aj:                                            ; preds = %bb.v, %bb.u
  br i1 %i.dl, label %bb.ak, label %.preheader361.us

.lr.ph389.us:                                     ; preds = %.lr.ph389.us.prol.loopexit, %.lr.ph389.us
  %.0228388.us = phi i32 [ %i.js, %.lr.ph389.us ], [ %.0228388.us.unr, %.lr.ph389.us.prol.loopexit ]
  %.0229387.us = phi ptr [ %i.jt, %.lr.ph389.us ], [ %.0229387.us.unr, %.lr.ph389.us.prol.loopexit ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %.0229387.us, i8 0, i64 %i.dk, i1 false)
  %i.jl = getelementptr inbounds i8, ptr %.0229387.us, i64 %.0 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.jl, i8 0, i64 %i.dk, i1 false)
  %i.jm = getelementptr inbounds i8, ptr %i.jl, i64 %.0 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.jm, i8 0, i64 %i.dk, i1 false)
  %i.jn = getelementptr inbounds i8, ptr %i.jm, i64 %.0 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.jn, i8 0, i64 %i.dk, i1 false)
  %i.jo = getelementptr inbounds i8, ptr %i.jn, i64 %.0 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.jo, i8 0, i64 %i.dk, i1 false)
  %i.jp = getelementptr inbounds i8, ptr %i.jo, i64 %.0 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.jp, i8 0, i64 %i.dk, i1 false)
  %i.jq = getelementptr inbounds i8, ptr %i.jp, i64 %.0 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.jq, i8 0, i64 %i.dk, i1 false)
  %i.jr = getelementptr inbounds i8, ptr %i.jq, i64 %.0 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.jr, i8 0, i64 %i.dk, i1 false)
  %i.js = add nsw i32 %.0228388.us, 8             ; 2 uses
  %i.jt = getelementptr inbounds i8, ptr %i.jr, i64 %.0
  %exitcond456.not.7 = icmp eq i32 %i.js, %6
  br i1 %exitcond456.not.7, label %.loopexit.us, label %.lr.ph389.us, !llvm.loop !637

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.memset.p0.i64(ptr align 1 %.0235394.us, i8 0, i64 %i.do, i1 false)
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %.thread.us, %.lr.ph389.us.prol.loopexit, %.lr.ph389.us, %.preheader362.us, %.preheader361.us, %bb.ak
  %.7265.us = phi i32 [ %.0258390.us, %bb.ak ], [ %.0258390.us, %.preheader361.us ], [ %.0258390.us, %.lr.ph389.us.prol.loopexit ], [ %.0258390.us, %.preheader362.us ], [ %.0258390.us, %.lr.ph389.us ], [ %.5263.us, %.thread.us ]
  %.7257.us = phi i32 [ %.0250391.us, %bb.ak ], [ %.0250391.us, %.preheader361.us ], [ %.0250391.us, %.lr.ph389.us.prol.loopexit ], [ %.0250391.us, %.preheader362.us ], [ %.0250391.us, %.lr.ph389.us ], [ %.5255.us, %.thread.us ]
  %.7249.us = phi i32 [ %.0242392.us, %bb.ak ], [ %.0242392.us, %.preheader361.us ], [ %.0242392.us, %.lr.ph389.us.prol.loopexit ], [ %.0242392.us, %.preheader362.us ], [ %.0242392.us, %.lr.ph389.us ], [ %.5247.us, %.thread.us ]
  %.3239.us = phi i64 [ %.1237393.us, %bb.ak ], [ %.1237393.us, %.preheader361.us ], [ %.1237393.us, %.lr.ph389.us.prol.loopexit ], [ %.1237393.us, %.preheader362.us ], [ %.1237393.us, %.lr.ph389.us ], [ %i.jk, %.thread.us ] ; 2 uses
  %i.ju = add i32 %.0230398.us, 1                 ; 2 uses
  %i.jv = getelementptr inbounds i8, ptr %.0235394.us, i64 %.0338
  %exitcond457.not = icmp eq i32 %i.ju, %8
  br i1 %exitcond457.not, label %.loopexit365.us, label %bb.s, !llvm.loop !638

bb.al:                                            ; preds = %bb.r, %.lr.ph415.split.us
  br i1 %or.cond306.fr, label %bb.am, label %.preheader364.us

.preheader.us.new:                                ; preds = %.prol.loopexit, %.preheader.us.new
  %.0266403.us = phi i32 [ %i.kd, %.preheader.us.new ], [ %.0266403.us.unr, %.prol.loopexit ]
  %.0267402.us = phi ptr [ %i.ke, %.preheader.us.new ], [ %.0267402.us.unr, %.prol.loopexit ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %.0267402.us, i8 0, i64 %i.dk, i1 false)
  %i.jw = getelementptr inbounds i8, ptr %.0267402.us, i64 %.0 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.jw, i8 0, i64 %i.dk, i1 false)
  %i.jx = getelementptr inbounds i8, ptr %i.jw, i64 %.0 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.jx, i8 0, i64 %i.dk, i1 false)
  %i.jy = getelementptr inbounds i8, ptr %i.jx, i64 %.0 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.jy, i8 0, i64 %i.dk, i1 false)
  %i.jz = getelementptr inbounds i8, ptr %i.jy, i64 %.0 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.jz, i8 0, i64 %i.dk, i1 false)
  %i.ka = getelementptr inbounds i8, ptr %i.jz, i64 %.0 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.ka, i8 0, i64 %i.dk, i1 false)
  %i.kb = getelementptr inbounds i8, ptr %i.ka, i64 %.0 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.kb, i8 0, i64 %i.dk, i1 false)
  %i.kc = getelementptr inbounds i8, ptr %i.kb, i64 %.0 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.kc, i8 0, i64 %i.dk, i1 false)
  %i.kd = add nsw i32 %.0266403.us, 8             ; 2 uses
  %i.ke = getelementptr inbounds i8, ptr %i.kc, i64 %.0
  %exitcond458.not.7 = icmp eq i32 %i.kd, %6
  br i1 %exitcond458.not.7, label %._crit_edge.us, label %.preheader.us.new, !llvm.loop !639

bb.am:                                            ; preds = %bb.al
  call void @llvm.memset.p0.i64(ptr align 1 %.0276408.us, i8 0, i64 %i.dp, i1 false)
  br label %.loopexit365.us

.loopexit365.us:                                  ; preds = %.loopexit.us, %._crit_edge.us, %.preheader364.us, %bb.am
  %.5241.us = phi i64 [ %.0236413.us, %bb.am ], [ %.0236413.us, %.preheader364.us ], [ %.0236413.us, %._crit_edge.us ], [ %.3239.us, %.loopexit.us ]
  %i.kf = add i32 %.0275411.us, 1                 ; 2 uses
  %i.kg = getelementptr inbounds i8, ptr %.0276408.us, i64 %.0337
  %exitcond460.not = icmp eq i32 %i.kf, %10
  br i1 %exitcond460.not, label %.thread353, label %.lr.ph415.split.us, !llvm.loop !640

.preheader.us:                                    ; preds = %.preheader364.us, %._crit_edge.us
  %.0268406.us = phi i32 [ %i.kl, %._crit_edge.us ], [ %7, %.preheader364.us ]
  %.0269405.us = phi ptr [ %i.km, %._crit_edge.us ], [ %.0276408.us, %.preheader364.us ] ; 3 uses
  br i1 %lcmp.mod515.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader.us, %.prol.preheader
  %.0266403.us.prol = phi i32 [ %i.kh, %.prol.preheader ], [ %5, %.preheader.us ]
  %.0267402.us.prol = phi ptr [ %i.ki, %.prol.preheader ], [ %.0269405.us, %.preheader.us ] ; 2 uses
  %prol.iter516 = phi i32 [ %prol.iter516.next, %.prol.preheader ], [ 0, %.preheader.us ]
  call void @llvm.memset.p0.i64(ptr align 1 %.0267402.us.prol, i8 0, i64 %i.dk, i1 false)
  %i.kh = add nsw i32 %.0266403.us.prol, 1        ; 2 uses
  %i.ki = getelementptr inbounds i8, ptr %.0267402.us.prol, i64 %.0 ; 2 uses
  %prol.iter516.next = add i32 %prol.iter516, 1   ; 2 uses
  %prol.iter516.cmp.not = icmp eq i32 %prol.iter516.next, %xtraiter514
  br i1 %prol.iter516.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !641

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader.us
  %.0266403.us.unr = phi i32 [ %5, %.preheader.us ], [ %i.kh, %.prol.preheader ]
  %.0267402.us.unr = phi ptr [ %.0269405.us, %.preheader.us ], [ %i.ki, %.prol.preheader ]
  br i1 %i.er, label %._crit_edge.us, label %.preheader.us.new

.preheader361.us:                                 ; preds = %bb.aj
  br i1 %.not298375, label %.lr.ph389.us.preheader, label %.loopexit.us

.lr.ph389.us.preheader:                           ; preds = %.preheader361.us
  br i1 %lcmp.mod513.not, label %.lr.ph389.us.prol.loopexit, label %.lr.ph389.us.prol

.lr.ph389.us.prol:                                ; preds = %.lr.ph389.us.preheader, %.lr.ph389.us.prol
  %.0228388.us.prol = phi i32 [ %i.kj, %.lr.ph389.us.prol ], [ %5, %.lr.ph389.us.preheader ]
  %.0229387.us.prol = phi ptr [ %i.kk, %.lr.ph389.us.prol ], [ %.0235394.us, %.lr.ph389.us.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph389.us.prol ], [ 0, %.lr.ph389.us.preheader ]
  call void @llvm.memset.p0.i64(ptr align 1 %.0229387.us.prol, i8 0, i64 %i.dk, i1 false)
  %i.kj = add nsw i32 %.0228388.us.prol, 1        ; 2 uses
  %i.kk = getelementptr inbounds i8, ptr %.0229387.us.prol, i64 %.0 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter512
  br i1 %prol.iter.cmp.not, label %.lr.ph389.us.prol.loopexit, label %.lr.ph389.us.prol, !llvm.loop !642

.lr.ph389.us.prol.loopexit:                       ; preds = %.lr.ph389.us.prol, %.lr.ph389.us.preheader
  %.0228388.us.unr = phi i32 [ %5, %.lr.ph389.us.preheader ], [ %i.kj, %.lr.ph389.us.prol ]
  %.0229387.us.unr = phi ptr [ %.0235394.us, %.lr.ph389.us.preheader ], [ %i.kk, %.lr.ph389.us.prol ]
  br i1 %i.eq, label %.loopexit.us, label %.lr.ph389.us

.preheader362.us:                                 ; preds = %bb.v
  br i1 %.not298375, label %.lr.ph.us, label %.loopexit.us

.preheader364.us:                                 ; preds = %bb.al
  br i1 %.not494, label %.preheader.us, label %.loopexit365.us

._crit_edge.us:                                   ; preds = %.preheader.us.new, %.prol.loopexit
  %i.kl = add nsw i32 %.0268406.us, 1             ; 2 uses
  %i.km = getelementptr inbounds i8, ptr %.0269405.us, i64 %.0338
  %exitcond459.not = icmp eq i32 %i.kl, %8
  br i1 %exitcond459.not, label %.loopexit365.us, label %.preheader.us, !llvm.loop !643

.lr.ph415.split:                                  ; preds = %.lr.ph415
  br i1 %or.cond306.fr, label %.lr.ph415.split.split.us.preheader, label %.thread353

.lr.ph415.split.split.us.preheader:               ; preds = %.lr.ph415.split
end_hunk_0
begin_hunk_1_@_ZNK11OpenImageIO4v3_114ImageCacheImpl5errorIJNS0_7ustringEEEEvPKcDpRKT_:bb.a
  store i64 %i.e, ptr %3, align 16, !noalias !714
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.0.i.i.i.i.i.i, ptr %.sroa_idx3.i, align 8, !noalias !714
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull %1, i64 %i.a, i64 13, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5, !noalias !714
  %i.f = load ptr, ptr %5, align 8, !tbaa !36
  store ptr %i.f, ptr %4, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !169
  store i64 %i.i, ptr %i.g, align 8, !tbaa !12
  invoke void @_ZNK11OpenImageIO4v3_114ImageCacheImpl12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 64 dereferenceable(25240) %0, ptr noundef nonnull dead_on_return %4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_7ustringEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_.exit
  %i.j = load ptr, ptr %5, align 8, !tbaa !36     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !39
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  ret void

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_7ustringEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %5, align 8, !tbaa !36     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.d
  %i.s = load i64, ptr %i.q, align 8, !tbaa !39
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK11OpenImageIO4v3_114ImageCacheImpl5errorIJNS0_7ustringEiiiiiEEEvPKcDpRKT_(ptr noundef nonnull align 64 dereferenceable(25240) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.fmt::v12::detail::format_arg_store.462", align 16 ; 10 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #5
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #5, !noalias !717
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5, !noalias !717
  tail call void @llvm.experimental.noalias.scope.decl(metadata !720)
  %i.b = load ptr, ptr %2, align 8, !tbaa !13, !noalias !717 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_7ustringERKiSA_SA_SA_SA_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !207, !noalias !717
  br label %_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_7ustringERKiSA_SA_SA_SA_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_.exit

_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_7ustringERKiSA_SA_SA_SA_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i.i.i.i = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  store ptr %i.b, ptr %8, align 16, !tbaa !39, !noalias !717
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.0.i.i.i.i.i.i, ptr %i.e, align 8, !tbaa !39, !noalias !717
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.g = load i32, ptr %3, align 4, !tbaa !3, !noalias !723
  store i32 %i.g, ptr %i.f, align 16, !tbaa !39, !alias.scope !720, !noalias !717
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.i = load i32, ptr %4, align 4, !tbaa !3, !noalias !723
  store i32 %i.i, ptr %i.h, align 16, !tbaa !39, !alias.scope !720, !noalias !717
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.k = load i32, ptr %5, align 4, !tbaa !3, !noalias !723
  store i32 %i.k, ptr %i.j, align 16, !tbaa !39, !alias.scope !720, !noalias !717
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.m = load i32, ptr %6, align 4, !tbaa !3, !noalias !723
  store i32 %i.m, ptr %i.l, align 16, !tbaa !39, !alias.scope !720, !noalias !717
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.o = load i32, ptr %7, align 4, !tbaa !3, !noalias !723
  store i32 %i.o, ptr %i.n, align 16, !tbaa !39, !alias.scope !720, !noalias !717
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull %1, i64 %i.a, i64 1118493, ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5, !noalias !717
  %i.p = load ptr, ptr %10, align 8, !tbaa !36
  store ptr %i.p, ptr %9, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !169
  store i64 %i.s, ptr %i.q, align 8, !tbaa !12
  invoke void @_ZNK11OpenImageIO4v3_114ImageCacheImpl12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 64 dereferenceable(25240) %0, ptr noundef nonnull dead_on_return %9)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_7ustringERKiSA_SA_SA_SA_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_.exit
  %i.t = load ptr, ptr %10, align 8, !tbaa !36    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.w = load i64, ptr %i.u, align 8, !tbaa !39
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #5
  ret void

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_7ustringERKiSA_SA_SA_SA_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %10, align 8, !tbaa !36    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.d
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !39
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #5
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK11OpenImageIO4v3_114ImageCacheTile17wait_pixels_readyEv(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(88) %0) local_unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 78 ; 2 uses
  %i.b = load volatile i8, ptr %i.a, align 2, !tbaa !644, !range !368, !noundef !290
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit
  %.sroa.0.02 = phi i32 [ %.sroa.0.1, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit ], [ 1, %bb.a ] ; 5 uses
  %.not.i = icmp sgt i32 %.sroa.0.02, 16
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp sgt i32 %.sroa.0.02, 0
  br i1 %i.d, label %.lr.ph.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.03.i.i = phi i32 [ %i.e, %.lr.ph.i.i ], [ 0, %bb.b ]
  tail call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !528
  %i.e = add nuw nsw i32 %.03.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.e, %.sroa.0.02
  br i1 %exitcond.not.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i, label %.lr.ph.i.i, !llvm.loop !529

_ZN11OpenImageIO4v3_15pauseEi.exit.i:             ; preds = %.lr.ph.i.i, %bb.b
  %i.f = shl nsw i32 %.sroa.0.02, 1
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit

bb.c:                                             ; preds = %.lr.ph
  %i.g = tail call noundef i32 @sched_yield() #5  ; 0 uses
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit

_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit:   ; preds = %_ZN11OpenImageIO4v3_15pauseEi.exit.i, %bb.c
  %.sroa.0.1 = phi i32 [ %.sroa.0.02, %bb.c ], [ %i.f, %_ZN11OpenImageIO4v3_15pauseEi.exit.i ]
  %i.h = load volatile i8, ptr %i.a, align 2, !tbaa !644, !range !368, !noundef !290
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %._crit_edge, label %.lr.ph, !llvm.loop !646

._crit_edge:                                      ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZNK11OpenImageIO4v3_114ImageCacheTile4dataEiiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !587
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !581
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.g = sext i32 %i.e to i64
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !275
  %i.i = getelementptr inbounds nuw [128 x i8], ptr %i.h, i64 %i.g ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !579
  %i.l = sext i32 %i.k to i64
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !374
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !74   ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %.not.i, ptr %i.q, ptr %i.o    ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load i32, ptr %i.s, align 4, !tbaa !105  ; 2 uses
  %5 = sext i32 %i.t to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 52
  %i.v = load i32, ptr %i.u, align 4, !tbaa !104  ; 2 uses
  %6 = sext i32 %i.v to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.x = load i32, ptr %i.w, align 4, !tbaa !106
  %i.y = load i32, ptr %i.c, align 8, !tbaa !582
  %i.z = sub nsw i32 %1, %i.y                     ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !583
  %i.ac = sub nsw i32 %2, %i.ab                   ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !584
  %i.af = sub nsw i32 %3, %i.ae                   ; 3 uses
  %i.ag = icmp slt i32 %i.z, 0
  br i1 %i.ag, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ah = icmp sge i32 %i.z, %i.t
  %i.ai = icmp slt i32 %i.ac, 0
  %or.cond = select i1 %i.ah, i1 true, i1 %i.ai
  br i1 %or.cond, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = icmp slt i32 %i.ac, %i.v
  %i.ak = icmp sgt i32 %i.af, -1
  %or.cond3.not36 = select i1 %i.aj, i1 %i.ak, i1 false
  %.not = icmp slt i32 %i.af, %i.x
  %or.cond33 = select i1 %or.cond3.not36, i1 %.not, i1 false
  br i1 %or.cond33, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.am = load i16, ptr %i.al, align 4, !tbaa !585
  %i.an = sext i16 %i.am to i32                   ; 2 uses
  %i.ao = icmp slt i32 %4, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.aq = load i16, ptr %i.ap, align 2
  %i.ar = sext i16 %i.aq to i32
  %i.as = icmp sgt i32 %4, %i.ar
  %or.cond45 = select i1 %i.ao, i1 true, i1 %i.as
  br i1 %or.cond45, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = zext nneg i32 %i.af to i64
  %i.au = mul nsw i64 %i.at, %6
  %i.av = zext nneg i32 %i.ac to i64
  %i.aw = add nsw i64 %i.au, %i.av
  %i.ax = mul i64 %i.aw, %5
  %i.ay = zext nneg i32 %i.z to i64
  %i.az = add i64 %i.ax, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !634
  %i.bc = sext i32 %i.bb to i64
  %i.bd = mul i64 %i.az, %i.bc
  %i.be = sub nsw i32 %4, %i.an
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !635
  %i.bh = mul nsw i32 %i.bg, %i.be
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !114
  %i.bl = getelementptr i8, ptr %i.bk, i64 %i.bd
  %i.bm = getelementptr i8, ptr %i.bl, i64 %i.bi
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.0 = phi ptr [ %i.bm, %bb.e ], [ null, %bb.a ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11OpenImageIO4v3_114ImageCacheImplC2Ev(ptr noundef nonnull align 64 dereferenceable(25240) initializes((8, 32)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  store ptr %i.c, ptr %i.b, align 16, !tbaa !168
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.d, align 8, !tbaa !169
  store i8 0, ptr %i.c, align 64, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !168
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.h, align 16, !tbaa !169
  store i8 0, ptr %i.g, align 8, !tbaa !39
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i8 0, ptr %i.i, align 4, !tbaa !470
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 149
  store i8 0, ptr %i.j, align 1, !tbaa !527
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 1073741824, ptr %i.k, align 4, !tbaa !492
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160
  store float 1.000000e+00, ptr %i.l, align 32, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 180
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.n, align 4, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.p, align 8, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 220
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.r, align 4, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 244
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.t, align 4, !tbaa !32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.v, align 8, !tbaa !32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 284
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.x, align 4, !tbaa !32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.idx.i = phi i64 [ 64, %bb.a ], [ %.add.i, %bb.e ] ; 2 uses
  %.ptr.ptr.i = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx.i ; 8 uses
  store i32 0, ptr %.ptr.ptr.i, align 64, !tbaa !708
  %i.aa = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aa, i8 0, i64 32, i1 false)
  %i.ab = load atomic i8, ptr @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEvE12empty_bucket acquire, align 8
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %bb.c, label %bb.e, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.ad = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEvE12empty_bucket) #5
  %.not.i10.i.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i10.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEvE12empty_bucket, align 8
  store i16 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEvE12empty_bucket, i64 4), align 4, !tbaa !545
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEvE12empty_bucket, i64 6), align 2, !tbaa !703
  %i.ae = tail call i32 @__cxa_atexit(ptr nonnull @_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EED2Ev, ptr nonnull @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEvE12empty_bucket, ptr nonnull @__dso_handle) #5 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEvE12empty_bucket) #5
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 40
  store ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEvE12empty_bucket, ptr %i.af, align 8, !tbaa !544
  %i.ag = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 80
  store i8 0, ptr %i.ah, align 16, !tbaa !701
  %i.ai = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 81
  store i8 0, ptr %i.ai, align 1, !tbaa !724
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 72
  store <2 x float> <float 0.000000e+00, float 5.000000e-01>, ptr %i.aj, align 8, !tbaa !32
  %i.ak = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 64
  store i64 0, ptr %i.ak, align 64, !tbaa !725
  %.add.i = add nuw nsw i64 %.idx.i, 128          ; 2 uses
  %i.al = icmp samesign eq i64 %.add.i, 8256
  br i1 %i.al, label %bb.f, label %bb.b

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 324
  store atomic i32 0, ptr %i.am seq_cst, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8576
  store ptr null, ptr %i.an, align 64, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8584
  store i8 0, ptr %i.ao, align 8, !tbaa !567
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8585
  store i8 0, ptr %i.ap, align 1, !tbaa !567
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8592 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.aq, i8 0, i64 32, i1 false)
  %i.ar = load atomic i8, ptr @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEvE12empty_bucket acquire, align 8
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %bb.g, label %bb.i, !prof !15

bb.g:                                             ; preds = %bb.f
  %i.at = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEvE12empty_bucket) #5
  %.not.i10.i.i = icmp eq i32 %i.at, 0
  br i1 %.not.i10.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEvE12empty_bucket, align 8
  store i16 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEvE12empty_bucket, i64 4), align 4, !tbaa !545
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEvE12empty_bucket, i64 6), align 2, !tbaa !703
  %i.au = tail call i32 @__cxa_atexit(ptr nonnull @_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EED2Ev, ptr nonnull @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEvE12empty_bucket, ptr nonnull @__dso_handle) #5 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEvE12empty_bucket) #5
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8624
  store ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEvE12empty_bucket, ptr %i.av, align 16, !tbaa !544
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8632
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8664
  store i8 0, ptr %i.ax, align 8, !tbaa !701
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8665
  store i8 0, ptr %i.ay, align 1, !tbaa !724
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8656
  store <2 x float> <float 0.000000e+00, float 5.000000e-01>, ptr %i.az, align 16, !tbaa !32
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8648
  store i64 0, ptr %i.ba, align 8, !tbaa !725
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8704 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.i
  %.idx.i8 = phi i64 [ 64, %bb.i ], [ %.add.i10, %bb.m ] ; 2 uses
  %.ptr.ptr.i9 = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx.i8 ; 8 uses
  store i32 0, ptr %.ptr.ptr.i9, align 64, !tbaa !708
  %i.bc = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i9, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bc, i8 0, i64 32, i1 false)
  %i.bd = load atomic i8, ptr @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_16TileIDENS4_13intrusive_ptrINS4_14ImageCacheTileEEEENS_9robin_mapIS5_S8_NS5_6HasherESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket acquire, align 8
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.k, label %bb.m, !prof !15

bb.k:                                             ; preds = %bb.j
  %i.bf = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_16TileIDENS4_13intrusive_ptrINS4_14ImageCacheTileEEEENS_9robin_mapIS5_S8_NS5_6HasherESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket) #5
  %.not.i10.i.i.i.i11 = icmp eq i32 %i.bf, 0
  br i1 %.not.i10.i.i.i.i11, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_16TileIDENS4_13intrusive_ptrINS4_14ImageCacheTileEEEENS_9robin_mapIS5_S8_NS5_6HasherESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, align 8
  store i16 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_16TileIDENS4_13intrusive_ptrINS4_14ImageCacheTileEEEENS_9robin_mapIS5_S8_NS5_6HasherESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, i64 4), align 4, !tbaa !726
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_16TileIDENS4_13intrusive_ptrINS4_14ImageCacheTileEEEENS_9robin_mapIS5_S8_NS5_6HasherESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, i64 6), align 2, !tbaa !728
  %i.bg = tail call i32 @__cxa_atexit(ptr nonnull @_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_16TileIDENS4_13intrusive_ptrINS4_14ImageCacheTileEEEELb1EED2Ev, ptr nonnull @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_16TileIDENS4_13intrusive_ptrINS4_14ImageCacheTileEEEENS_9robin_mapIS5_S8_NS5_6HasherESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, ptr nonnull @__dso_handle) #5 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_16TileIDENS4_13intrusive_ptrINS4_14ImageCacheTileEEEENS_9robin_mapIS5_S8_NS5_6HasherESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket) #5
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i9, i64 40
  store ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_16TileIDENS4_13intrusive_ptrINS4_14ImageCacheTileEEEENS_9robin_mapIS5_S8_NS5_6HasherESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, ptr %i.bh, align 8, !tbaa !729
  %i.bi = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i9, i64 48
  %i.bj = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i9, i64 80
  store i8 0, ptr %i.bj, align 16, !tbaa !735
  %i.bk = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i9, i64 81
  store i8 0, ptr %i.bk, align 1, !tbaa !736
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i9, i64 72
  store <2 x float> <float 0.000000e+00, float 5.000000e-01>, ptr %i.bl, align 8, !tbaa !32
  %i.bm = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i9, i64 64
  store i64 0, ptr %i.bm, align 64, !tbaa !737
  %.add.i10 = add nuw nsw i64 %.idx.i8, 128       ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b:bb.a
  %i.w = load i64, ptr %i.h, align 8, !tbaa !169  ; 4 uses
  %i.x = add i64 %i.w, 1                          ; 3 uses
  %i.y = load ptr, ptr %4, align 8, !tbaa !36     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.g
  br i1 %i.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt5ctypeIcE6narrowEcc.exit
  %i.aa = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.aa)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt5ctypeIcE6narrowEcc.exit
  %i.ab = load i64, ptr %i.g, align 8, !tbaa !39
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ac = phi i64 [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.ad = icmp ugt i64 %i.x, %i.ac
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.w, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc29 unwind label %bb.h

.noexc29:                                         ; preds = %bb.f
  %.pre.i.i = load ptr, ptr %4, align 8, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %.noexc29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.ae = phi ptr [ %.pre.i.i, %.noexc29 ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.w
  store i8 %.0.i, ptr %i.af, align 1, !tbaa !39
  store i64 %i.x, ptr %i.h, align 8, !tbaa !169
  %i.ag = load ptr, ptr %4, align 8, !tbaa !36
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.x
  store i8 0, ptr %i.ah, align 1, !tbaa !39
  %i.ai = getelementptr inbounds nuw i8, ptr %.042, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ai, %2
  br i1 %.not, label %.preheader, label %bb.c, !llvm.loop !2245

bb.h:                                             ; preds = %bb.f, %bb.d, %bb.c
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.g
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.preheader
  %bcmp.i = call i32 @bcmp(ptr %.pre51, ptr nonnull @.str.356, i64 %i.j)
  %i.am = icmp eq i32 %bcmp.i, 0
  br i1 %i.am, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.1

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.2, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.3, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.4, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.5, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.6, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.7, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.8, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.9, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.10, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.11, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.12, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.13, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.14
  %.021.ptr44.lcssa = phi ptr [ @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 16), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.1 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 32), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.2 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 48), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.3 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 64), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.4 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 80), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.5 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 96), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.6 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 112), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.7 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 128), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.8 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 144), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.9 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 160), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.10 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 176), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.11 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 192), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.12 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 208), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.13 ], [ getelementptr inbounds nuw (i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_bE12__classnamesB5cxx11, i64 224), %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.14 ] ; 2 uses
  br i1 %3, label %bb.i, label %.critedge

bb.i:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.an = getelementptr inbounds nuw i8, ptr %.021.ptr44.lcssa, i64 8
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !2138
  %i.ap = and i16 %i.ao, 768
  %.not39 = icmp eq i16 %i.ap, 0
  br i1 %.not39, label %.critedge, label %.critedge28

.critedge:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.021.ptr44.lcssa, i64 8
  %i.ar = load i32, ptr %i.aq, align 8
  br label %.critedge28

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.1: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %bcmp.i.1 = call i32 @bcmp(ptr %.pre51, ptr nonnull @.str.357, i64 %i.j)
  %i.as = icmp eq i32 %bcmp.i.1, 0
  br i1 %i.as, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.2

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.2: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.1
  %bcmp.i.2 = call i32 @bcmp(ptr %.pre51, ptr nonnull @.str.358, i64 %i.j)
  %i.at = icmp eq i32 %bcmp.i.2, 0
  br i1 %i.at, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge28

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.3: ; preds = %.preheader
  %bcmp.i.3 = call i32 @bcmp(ptr %.pre51, ptr nonnull @.str.359, i64 %i.j)
  %i.au = icmp eq i32 %bcmp.i.3, 0
  br i1 %i.au, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.4

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.4: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.3
  %bcmp.i.4 = call i32 @bcmp(ptr %.pre51, ptr nonnull @.str.360, i64 %i.j)
  %i.av = icmp eq i32 %bcmp.i.4, 0
  br i1 %i.av, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.5

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.5: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.4
  %bcmp.i.5 = call i32 @bcmp(ptr %.pre51, ptr nonnull @.str.361, i64 %i.j)
  %i.aw = icmp eq i32 %bcmp.i.5, 0
  br i1 %i.aw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.6

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.6: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.5
  %bcmp.i.6 = call i32 @bcmp(ptr %.pre51, ptr nonnull @.str.362, i64 %i.j)
  %i.ax = icmp eq i32 %bcmp.i.6, 0
  br i1 %i.ax, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.7

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.7: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.6
  %bcmp.i.7 = call i32 @bcmp(ptr %.pre51, ptr nonnull @.str.363, i64 %i.j)
  %i.ay = icmp eq i32 %bcmp.i.7, 0
  br i1 %i.ay, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.8

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.8: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.7
  %bcmp.i.8 = call i32 @bcmp(ptr %.pre51, ptr nonnull @.str.364, i64 %i.j)
  %i.az = icmp eq i32 %bcmp.i.8, 0
  br i1 %i.az, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.9

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.9: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.8
  %bcmp.i.9 = call i32 @bcmp(ptr %.pre51, ptr nonnull @.str.365, i64 %i.j)
  %i.ba = icmp eq i32 %bcmp.i.9, 0
  br i1 %i.ba, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.10

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.10: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.9
  %bcmp.i.10 = call i32 @bcmp(ptr %.pre51, ptr nonnull @.str.366, i64 %i.j)
  %i.bb = icmp eq i32 %bcmp.i.10, 0
  br i1 %i.bb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.11

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.11: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.10
  %bcmp.i.11 = call i32 @bcmp(ptr %.pre51, ptr nonnull @.str.367, i64 %i.j)
  %i.bc = icmp eq i32 %bcmp.i.11, 0
  br i1 %i.bc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.12

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.12: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.11
  %bcmp.i.12 = call i32 @bcmp(ptr %.pre51, ptr nonnull @.str.368, i64 %i.j)
  %i.bd = icmp eq i32 %bcmp.i.12, 0
  br i1 %i.bd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.13

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.13: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.12
  %bcmp.i.13 = call i32 @bcmp(ptr %.pre51, ptr nonnull @.str.369, i64 %i.j)
  %i.be = icmp eq i32 %bcmp.i.13, 0
  br i1 %i.be, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge28

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.14: ; preds = %.preheader
  %bcmp.i.14 = call i32 @bcmp(ptr %.pre51, ptr nonnull @.str.370, i64 %i.j)
  %i.bf = icmp eq i32 %bcmp.i.14, 0
  br i1 %i.bf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge28

.critedge28:                                      ; preds = %.preheader, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.2, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.13, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.14, %bb.i, %.critedge
  %.sroa.6.4 = phi i32 [ 1024, %bb.i ], [ %i.ar, %.critedge ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.13 ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.2 ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.14 ], [ 0, %.preheader ] ; 2 uses
  %i.bg = icmp eq ptr %.pre51, %i.g
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge28
  %i.bh = load i64, ptr %i.g, align 8, !tbaa !39
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %.pre51, i64 noundef %i.bi) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge28, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.sroa.6.477 = phi i32 [ %.sroa.6.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.sroa.6.4, %.critedge28 ], [ 0, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  ret i32 %.sroa.6.477

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.h
  %i.bj = load i64, ptr %i.g, align 8, !tbaa !39
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.bk) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  resume { ptr, i32 } %i.aj
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 16
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph43

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit
  %i.g = icmp eq i64 %i.ar, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph43, !llvm.loop !2246

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge17.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %storemerge17.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i ], [ %storemerge17.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -1 ; 4 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !39    ; 2 uses
  %i.j = load i8, ptr %0, align 1, !tbaa !39
  store i8 %i.j, ptr %i.h, align 1, !tbaa !39
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 5 uses
  %i.m = add nsw i64 %i.l, -1
  %4 = sdiv i64 %i.m, 2
  %i.n = icmp sgt i64 %i.l, 2
  br i1 %i.n, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.035.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.o = shl i64 %.035.i.i.i.i, 1                 ; 2 uses
  %i.p = add i64 %i.o, 2                          ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p
  %i.r = or disjoint i64 %i.o, 1                  ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.r
  %i.t = load i8, ptr %i.q, align 1, !tbaa !39
  %i.u = load i8, ptr %i.s, align 1, !tbaa !39
  %i.v = icmp slt i8 %i.t, %i.u
  %spec.select.i.i.i.i = select i1 %i.v, i64 %i.r, i64 %i.p ; 4 uses
  %i.w = getelementptr inbounds i8, ptr %0, i64 %spec.select.i.i.i.i
  %i.x = load i8, ptr %i.w, align 1, !tbaa !39
  %i.y = getelementptr inbounds i8, ptr %0, i64 %.035.i.i.i.i
  store i8 %i.x, ptr %i.y, align 1, !tbaa !39
  %i.z = icmp slt i64 %spec.select.i.i.i.i, %4
  br i1 %i.z, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !2247

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.aa = and i64 %i.l, 1
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ac = add nsw i64 %i.l, -2
  %i.ad = ashr exact i64 %i.ac, 1
  %i.ae = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ad
  br i1 %i.ae, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.af = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ag = or disjoint i64 %i.af, 1                ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !39
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %.0.lcssa.i.i.i.i
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !39
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ag, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i56.i.i.i, %bb.e ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i56.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.0920.i.i56.i.i.i
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !39  ; 2 uses
  %i.am = icmp slt i8 %i.al, %i.i
  br i1 %i.am, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.an = getelementptr inbounds i8, ptr %0, i64 %.019.i.i.i.i.i
  store i8 %i.al, ptr %i.an, align 1, !tbaa !39
  %.not7.i.i.i = icmp eq i64 %.0920.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2248

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.ao = getelementptr inbounds i8, ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i8 %i.i, ptr %i.ao, align 1, !tbaa !39
  %i.ap = icmp sgt i64 %i.l, 1
  br i1 %i.ap, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, !llvm.loop !2249

.lr.ph43:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1742 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01841 = phi i64 [ %i.ar, %bb.b ], [ %2, %.lr.ph ]
  %i.aq = phi i64 [ %i.bp, %bb.b ], [ %i.c, %.lr.ph ]
  %i.ar = add nsw i64 %.01841, -1                 ; 3 uses
  %i.as = lshr i64 %i.aq, 1
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %i.as ; 3 uses
  %i.au = getelementptr inbounds i8, ptr %storemerge1742, i64 -1 ; 3 uses
  %i.av = load i8, ptr %i.e, align 1, !tbaa !39   ; 5 uses
  %i.aw = load i8, ptr %i.at, align 1, !tbaa !39  ; 5 uses
  %i.ax = icmp slt i8 %i.av, %i.aw
  %i.ay = load i8, ptr %i.au, align 1, !tbaa !39  ; 6 uses
  br i1 %i.ax, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph43
  %i.az = icmp slt i8 %i.aw, %i.ay
  br i1 %i.az, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ba = load i8, ptr %0, align 1, !tbaa !39
  store i8 %i.aw, ptr %0, align 1, !tbaa !39
  store i8 %i.ba, ptr %i.at, align 1, !tbaa !39
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bb = icmp slt i8 %i.av, %i.ay
  %i.bc = load i8, ptr %0, align 1, !tbaa !39     ; 2 uses
  br i1 %i.bb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 %i.ay, ptr %0, align 1, !tbaa !39
  store i8 %i.bc, ptr %i.au, align 1, !tbaa !39
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store i8 %i.av, ptr %0, align 1, !tbaa !39
  store i8 %i.bc, ptr %i.e, align 1, !tbaa !39
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph43
  %i.bd = icmp slt i8 %i.av, %i.ay
  br i1 %i.bd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.be = load i8, ptr %0, align 1, !tbaa !39
  store i8 %i.av, ptr %0, align 1, !tbaa !39
  store i8 %i.be, ptr %i.e, align 1, !tbaa !39
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bf = icmp slt i8 %i.aw, %i.ay
  %i.bg = load i8, ptr %0, align 1, !tbaa !39     ; 2 uses
  br i1 %i.bf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i8 %i.ay, ptr %0, align 1, !tbaa !39
  store i8 %i.bg, ptr %i.au, align 1, !tbaa !39
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store i8 %i.aw, ptr %0, align 1, !tbaa !39
  store i8 %i.bg, ptr %i.at, align 1, !tbaa !39
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader, %bb.r
  %.sroa.010.0.i.i = phi ptr [ %i.bk, %bb.r ], [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.r ], [ %storemerge1742, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %i.bh = load i8, ptr %0, align 1, !tbaa !39     ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i ], [ %i.bk, %bb.p ] ; 8 uses
  %i.bi = load i8, ptr %.sroa.010.1.i.i, align 1, !tbaa !39 ; 2 uses
  %i.bj = icmp slt i8 %i.bi, %i.bh
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 1 ; 2 uses
  br i1 %i.bj, label %bb.p, label %.preheader.i.i, !llvm.loop !2250

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.p ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -1 ; 5 uses
  %i.bl = load i8, ptr %.sroa.0.1.i.i, align 1, !tbaa !39 ; 2 uses
  %i.bm = icmp slt i8 %i.bh, %i.bl
  br i1 %i.bm, label %.preheader.i.i, label %bb.q, !llvm.loop !2251

bb.q:                                             ; preds = %.preheader.i.i
  %i.bn = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.bn, label %bb.r, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit

bb.r:                                             ; preds = %bb.q
  store i8 %i.bl, ptr %.sroa.010.1.i.i, align 1, !tbaa !39
  store i8 %i.bi, ptr %.sroa.0.1.i.i, align 1, !tbaa !39
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i, !llvm.loop !2252

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge1742, i64 noundef %i.ar)
  %i.bo = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.bp = sub i64 %i.bo, %i.a                     ; 2 uses
  %i.bq = icmp sgt i64 %i.bp, 16
  br i1 %i.bq, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, !llvm.loop !2246

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %0, ptr %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 16
  br i1 %i.d, label %.lr.ph.i, label %bb.g

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.0.015.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i
  %.sroa.0.018.i.idx = phi i64 [ 1, %.lr.ph.i ], [ %.sroa.0.018.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.pn17.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.018.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %.sroa.0.018.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.018.i.idx ; 4 uses
  %i.e = load i8, ptr %.sroa.0.018.i.ptr, align 1, !tbaa !39 ; 4 uses
  %i.f = load i8, ptr %0, align 1, !tbaa !39      ; 2 uses
  %i.g = icmp slt i8 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %.sroa.0.018.i.idx, 1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !548

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.015.i.ptr, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %.sroa.0.018.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 1
  store i8 %i.f, ptr %i.i, align 1, !tbaa !39
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.j = load i8, ptr %.pn17.i, align 1, !tbaa !39 ; 2 uses
  %i.k = icmp slt i8 %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.l = phi i8 [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.f ]
  %.sroa.0.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn17.i, %bb.f ] ; 3 uses
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i.i ], [ %.sroa.0.018.i.ptr, %bb.f ]
  store i8 %i.l, ptr %.sroa.04.08.i.i, align 1, !tbaa !39
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i, i64 -1 ; 2 uses
  %i.m = load i8, ptr %.sroa.0.0.i.i, align 1, !tbaa !39 ; 2 uses
  %i.n = icmp slt i8 %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !2253

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.018.i.ptr, %bb.f ], [ %.sroa.0.09.i.i, %.lr.ph.i.i ]
  store i8 %i.e, ptr %.sink.i, align 1, !tbaa !39
  %.sroa.0.018.i.add = add nuw nsw i64 %.sroa.0.018.i.idx, 1 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.018.i.add, 16
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %bb.b, !llvm.loop !2254

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.not4.i = icmp eq ptr %i.o, %1
end_hunk_2
