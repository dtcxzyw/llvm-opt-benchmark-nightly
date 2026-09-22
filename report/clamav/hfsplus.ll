Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/hfsplus?download=true
inline.NumInlined: 22
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@hfsplus_walk_catalog:bb.a
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.53) #11
  store ptr null, ptr %i.d, align 8, !tbaa !66
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge840, %bb.w
  %i.dl = phi ptr [ %.pre, %._crit_edge840 ], [ null, %bb.w ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.54, ptr noundef %i.dl) #11
  br label %bb.y

bb.y:                                             ; preds = %bb.t, %bb.u, %bb.x, %bb.s
  %i.dm = add nuw nsw i32 %i.cv, 2
  %i.dn = zext nneg i32 %i.dm to i64              ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.dn ; 2 uses
  %.0.copyload = load i16, ptr %i.do, align 1     ; 2 uses
  %rev = call i16 @llvm.bswap.i16(i16 %.0.copyload)
  %i.dp = sext i16 %rev to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.55, i32 noundef %i.bu, i32 noundef %i.ch, i32 noundef %i.cu, i32 noundef %i.dp) #11
  %.not357 = icmp eq i16 %.0.copyload, 512
  br i1 %.not357, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dq = load ptr, ptr %i.d, align 8, !tbaa !66  ; 2 uses
  %.not405 = icmp eq ptr %i.dq, null
  br i1 %.not405, label %bb.ec, label %.sink.split

bb.aa:                                            ; preds = %bb.y
  %i.dr = add nuw nsw i64 %i.dn, 248
  %.not358 = icmp samesign ult i64 %i.dr, %i.bt
  br i1 %.not358, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.56) #11
  br label %.thread119

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(248) %5, ptr noundef nonnull align 1 dereferenceable(248) %i.do, i64 248, i1 false)
  %i.ds = load i32, ptr %i.w, align 4, !tbaa !99
  %i.dt = call i32 @llvm.bswap.i32(i32 %i.ds)
  store i32 %i.dt, ptr %i.w, align 4, !tbaa !99
  %i.du = load i16, ptr %i.x, align 2, !tbaa !100
  %rev362 = call i16 @llvm.bswap.i16(i16 %i.du)   ; 2 uses
  store i16 %rev362, ptr %i.x, align 2, !tbaa !100
  %i.dv = zext i16 %rev362 to i32                 ; 2 uses
  %i.dw = and i32 %i.dv, 61440
  %i.dx = icmp eq i32 %i.dw, 32768
  br i1 %i.dx, label %bb.ad, label %bb.ea

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  %i.dy = load i64, ptr %i.y, align 4, !tbaa !35
  %i.dz = call i64 @llvm.bswap.i64(i64 %i.dy)
  store i64 %i.dz, ptr %i.y, align 4, !tbaa !35
  %i.ea = load <4 x i32>, ptr %i.z, align 4, !tbaa !32
  %i.eb = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.ea)
  store <4 x i32> %i.eb, ptr %i.z, align 4, !tbaa !32
  %i.ec = load <4 x i32>, ptr %i.aa, align 4, !tbaa !32
  %i.ed = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.ec)
  store <4 x i32> %i.ed, ptr %i.aa, align 4, !tbaa !32
  %i.ee = load <4 x i32>, ptr %i.ab, align 4, !tbaa !32
  %i.ef = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.ee)
  store <4 x i32> %i.ef, ptr %i.ab, align 4, !tbaa !32
  %i.eg = load <4 x i32>, ptr %i.ac, align 4, !tbaa !32
  %i.eh = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.eg)
  store <4 x i32> %i.eh, ptr %i.ac, align 4, !tbaa !32
  %i.ei = load i32, ptr %i.ad, align 4, !tbaa !37
  %i.ej = call i32 @llvm.bswap.i32(i32 %i.ei)
  store i32 %i.ej, ptr %i.ad, align 4, !tbaa !37
  %i.ek = load i32, ptr %i.ae, align 4, !tbaa !38
  %i.el = call i32 @llvm.bswap.i32(i32 %i.ek)
  store i32 %i.el, ptr %i.ae, align 4, !tbaa !38
  call fastcc void @forkdata_print(ptr noundef nonnull @.str.57, ptr noundef %i.y)
  %i.em = load i64, ptr %i.af, align 4, !tbaa !35
  %i.en = call i64 @llvm.bswap.i64(i64 %i.em)
  store i64 %i.en, ptr %i.af, align 4, !tbaa !35
  %i.eo = load <4 x i32>, ptr %i.ag, align 4, !tbaa !32
  %i.ep = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.eo)
  store <4 x i32> %i.ep, ptr %i.ag, align 4, !tbaa !32
  %i.eq = load <4 x i32>, ptr %i.ah, align 4, !tbaa !32
  %i.er = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.eq)
  store <4 x i32> %i.er, ptr %i.ah, align 4, !tbaa !32
  %i.es = load <4 x i32>, ptr %i.ai, align 4, !tbaa !32
  %i.et = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.es)
  store <4 x i32> %i.et, ptr %i.ai, align 4, !tbaa !32
  %i.eu = load <4 x i32>, ptr %i.aj, align 4, !tbaa !32
  %i.ev = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.eu)
  store <4 x i32> %i.ev, ptr %i.aj, align 4, !tbaa !32
  %i.ew = load i32, ptr %i.ak, align 4, !tbaa !37
  %i.ex = call i32 @llvm.bswap.i32(i32 %i.ew)
  store i32 %i.ex, ptr %i.ak, align 4, !tbaa !37
  %i.ey = load i32, ptr %i.al, align 4, !tbaa !38
  %i.ez = call i32 @llvm.bswap.i32(i32 %i.ey)
  store i32 %i.ez, ptr %i.al, align 4, !tbaa !38
  call fastcc void @forkdata_print(ptr noundef nonnull @.str.58, ptr noundef %i.af)
  %i.fa = load i32, ptr %i.w, align 4, !tbaa !99
  br i1 %.not.i, label %.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fb = load i32, ptr %i.am, align 1, !tbaa !64
  %spec.select.i = call i32 @llvm.umin.i32(i32 %i.fb, i32 1000)
  %i.fc = load i32, ptr %i.an, align 1, !tbaa !62 ; 2 uses
  %i.fd = load i16, ptr %i.ao, align 1, !tbaa !63 ; 5 uses
  %i.fe = zext i16 %i.fd to i64                   ; 2 uses
  %i.ff = call ptr @cli_max_malloc(i64 noundef %i.fe) #11 ; 12 uses
  %.not141.i = icmp eq ptr %i.ff, null
  br i1 %.not141.i, label %.thread191.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ae
  %i.fg = icmp eq i32 %i.fc, 0
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 9
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 10
  %i.fh = lshr i16 %i.fd, 2
  %i.fi = add i16 %i.fd, -2
  br i1 %i.fg, label %.thread38, label %.preheader.split.preheader.i

.preheader.split.preheader.i:                     ; preds = %.preheader.i
  %i.fj = add nuw nsw i32 %spec.select.i, 1
  br label %bb.af

.thread191.i:                                     ; preds = %bb.ae
  %i.fk = zext i16 %i.fd to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.111, i32 noundef %i.fk) #11
  br label %.thread

bb.af:                                            ; preds = %.preheader.split.preheader.i, %.loopexit.i
  %i.fl = phi i32 [ 1, %.preheader.split.preheader.i ], [ %i.hk, %.loopexit.i ] ; 2 uses
  %i.fm = call fastcc i32 @hfsplus_fetch_node(ptr noundef nonnull readonly %0, ptr noundef readonly %1, ptr noundef readonly %3, ptr noundef nonnull readonly %i.ap, i32 noundef %i.fc, ptr noundef nonnull %i.ff, i64 noundef %i.fe)
  %.not144.i = icmp eq i32 %i.fm, 0
  br i1 %.not144.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.114) #11
  br label %hfsplus_check_attribute.exit.thread30

bb.ah:                                            ; preds = %bb.af
  %.sroa.0.0.copyload163.i = load i32, ptr %i.ff, align 1
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 1
  %.sroa.9.0.copyload.i = load i8, ptr %.sroa.9.0..sroa_idx.i, align 1 ; 2 uses
  %.sroa.11.0.copyload.i = load i8, ptr %.sroa.11.0..sroa_idx.i, align 1 ; 2 uses
  %.sroa.13.0.copyload.i = load i16, ptr %.sroa.13.0..sroa_idx.i, align 1 ; 2 uses
  %i.fn = call i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload163.i)
  %i.fo = call i32 @llvm.bswap.i32(i32 %.sroa.6.0.copyload.i)
  %rev.i.i = call i16 @llvm.bswap.i16(i16 %.sroa.13.0.copyload.i) ; 4 uses
  %i.fp = sext i8 %.sroa.9.0.copyload.i to i32
  %i.fq = zext i8 %.sroa.11.0.copyload.i to i32
  %i.fr = zext i16 %rev.i.i to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.115, i32 noundef %i.fn, i32 noundef %i.fo, i32 noundef %i.fp, i32 noundef %i.fq, i32 noundef %i.fr) #11
  %i.fs = icmp ne i8 %.sroa.9.0.copyload.i, -1
  %i.ft = icmp ne i8 %.sroa.11.0.copyload.i, 1
  %or.cond.i = or i1 %i.fs, %i.ft
  br i1 %or.cond.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.116) #11
  br label %hfsplus_check_attribute.exit.thread30

bb.aj:                                            ; preds = %bb.ah
  %i.fu = icmp ult i16 %i.fh, %rev.i.i
  br i1 %i.fu, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.117) #11
  br label %hfsplus_check_attribute.exit.thread30

bb.al:                                            ; preds = %bb.aj
  %i.fv = shl nuw nsw i16 %rev.i.i, 1
  %i.fw = sub i16 %i.fd, %i.fv
  %i.fx = add i16 %i.fw, -2                       ; 3 uses
  %.not228.i = icmp eq i16 %.sroa.13.0.copyload.i, 0
  br i1 %.not228.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.al
  %i.fy = zext i16 %i.fx to i32
  %i.fz = zext i16 %i.fx to i64                   ; 2 uses
  %wide.trip.count.i = zext nneg i16 %rev.i.i to i64
  br label %bb.am

bb.am:                                            ; preds = %bb.az, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.az ] ; 5 uses
  %.0115226.i = phi i16 [ 14, %.lr.ph.i ], [ %i.gl, %bb.az ]
  %i.ga = trunc nuw i64 %indvars.iv.i to i16
  %i.gb = shl i16 %i.ga, 1
  %i.gc = sub i16 %i.fi, %i.gb
  %i.gd = zext i16 %i.gc to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.gd ; 2 uses
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !39
  %i.gg = zext i8 %i.gf to i16
  %i.gh = shl nuw i16 %i.gg, 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 1
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !39
  %i.gk = zext i8 %i.gj to i16
  %i.gl = or disjoint i16 %i.gh, %i.gk            ; 5 uses
  %i.gm = zext i16 %i.gl to i32                   ; 4 uses
  %.not145.i = icmp ule i16 %i.fx, %i.gl
  %i.gn = icmp ult i16 %i.gl, %.0115226.i
  %or.cond160.i = or i1 %.not145.i, %i.gn
  br i1 %or.cond160.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.go = trunc i64 %indvars.iv.i to i32
  %8 = and i32 %i.go, 65535
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.118, i32 noundef %i.gm, i32 noundef %8) #11
  br label %hfsplus_check_attribute.exit.thread30

bb.ao:                                            ; preds = %bb.am
  %i.gp = zext i16 %i.gl to i64                   ; 2 uses
  %i.gq = add nuw nsw i64 %i.gp, 14               ; 2 uses
  %.not146.i = icmp samesign ult i64 %i.gq, %i.fz
  br i1 %.not146.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gr = trunc i64 %indvars.iv.i to i32
  %9 = and i32 %i.gr, 65535
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.119, i32 noundef %i.gm, i32 noundef %9) #11
  br label %hfsplus_check_attribute.exit.thread30

bb.aq:                                            ; preds = %bb.ao
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.gp ; 7 uses
  %.sroa.016.0.copyload.i = load i16, ptr %i.gs, align 1
  %.sroa.719.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  %.sroa.719.0.copyload.i = load i32, ptr %.sroa.719.0..sroa_idx.i, align 1
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gs, i64 12
  %.sroa.18.0.copyload.i = load i16, ptr %.sroa.18.0..sroa_idx.i, align 1 ; 2 uses
  %rev.i419 = call i16 @llvm.bswap.i16(i16 %.sroa.016.0.copyload.i)
  %i.gt = call i32 @llvm.bswap.i32(i32 %.sroa.719.0.copyload.i)
  %i.gu = zext i16 %rev.i419 to i32
  %i.gv = add nuw nsw i32 %i.gm, 4
  %i.gw = add nuw nsw i32 %i.gv, %i.gu
  %.not151.i = icmp samesign ult i32 %i.gw, %i.fy
  br i1 %.not151.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gx = trunc i64 %indvars.iv.i to i32
  %10 = and i32 %i.gx, 65535
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.120, i32 noundef %i.gm, i32 noundef %10) #11
  br label %hfsplus_check_attribute.exit.thread30

bb.as:                                            ; preds = %bb.aq
  %rev150.i = call i16 @llvm.bswap.i16(i16 %.sroa.18.0.copyload.i) ; 2 uses
  %i.gy = zext i16 %rev150.i to i64
  %i.gz = add nuw nsw i64 %i.gq, %i.gy
  %.not152.i = icmp samesign ult i64 %i.gz, %i.fz
  br i1 %.not152.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ha = zext i16 %rev150.i to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.121, i32 noundef %i.ha) #11
  br label %hfsplus_check_attribute.exit.thread30

bb.au:                                            ; preds = %bb.as
  %i.hb = icmp eq i32 %i.gt, %i.fa
  %i.hc = icmp eq i16 %.sroa.18.0.copyload.i, 4352
  %or.cond161.i = select i1 %i.hb, i1 %i.hc, i1 false
  br i1 %or.cond161.i, label %bb.av, label %bb.az

bb.av:                                            ; preds = %bb.au
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gs, i64 14
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(34) %i.hd, ptr noundef nonnull readonly dereferenceable(34) @__const.hfsplus_walk_catalog.COMPRESSED_ATTR, i64 34)
  %i.he = icmp eq i32 %bcmp.i, 0
  br i1 %i.he, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gs, i64 48
  %.sroa.0.0.copyload.i = load i32, ptr %i.hf, align 1 ; 2 uses
  %.not159.i = icmp eq i32 %.sroa.0.0.copyload.i, 268435456
  br i1 %.not159.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hg = call i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i)
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.122, i32 noundef %i.hg) #11
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %.sroa.109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gs, i64 60
  %.sroa.109.0.copyload.i = load i32, ptr %.sroa.109.0..sroa_idx.i, align 1 ; 2 uses
  %i.hh = call i32 @llvm.bswap.i32(i32 %.sroa.109.0.copyload.i) ; 4 uses
  %i.hi = zext i32 %i.hh to i64                   ; 2 uses
  %i.hj = icmp ugt i32 %i.hh, 8192
  br i1 %i.hj, label %hfsplus_check_attribute.exit.thread30, label %bb.ba

bb.az:                                            ; preds = %bb.ax, %bb.av, %bb.au
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.am

.loopexit.i:                                      ; preds = %bb.az, %bb.al
  %i.hk = add nuw nsw i32 %i.fl, 1
  %exitcond255.i = icmp eq i32 %i.fl, %i.fj
  br i1 %exitcond255.i, label %.thread38, label %bb.af

hfsplus_check_attribute.exit.thread30:            ; preds = %bb.ak, %bb.at, %bb.ar, %bb.ap, %bb.an, %bb.ag, %bb.ai, %bb.ay
  call void @free(ptr noundef nonnull %i.ff) #11
  br label %.thread

.thread:                                          ; preds = %hfsplus_check_attribute.exit.thread30, %.thread191.i, %bb.ad
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.59) #11
  br label %bb.dt

.thread38:                                        ; preds = %.loopexit.i, %.preheader.i
  %.str.112.sink = phi ptr [ @.str.112, %.preheader.i ], [ @.str.113, %.loopexit.i ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull %.str.112.sink) #11
  call void @free(ptr noundef nonnull %i.ff) #11
  br label %bb.dt

bb.ba:                                            ; preds = %bb.ay
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gs, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.g, ptr nonnull align 1 %i.hl, i64 %i.hi, i1 false)
  call void @free(ptr noundef nonnull %i.ff) #11
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.60) #11
  %i.hm = icmp samesign ult i32 %i.hh, 16
  br i1 %i.hm, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.61) #11
  br label %.thread111

bb.bc:                                            ; preds = %bb.ba
  %.sroa.0.0.copyload = load i32, ptr %i.g, align 16 ; 3 uses
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 4 ; 2 uses
  %.sroa.19.0.copyload = load i64, ptr %.sroa.19.0..sroa_idx, align 8 ; 2 uses
  %i.hn = icmp eq i32 %.sroa.0.0.copyload, 1718644067 ; 2 uses
  %i.ho = call i32 @llvm.bswap.i32(i32 %.sroa.11.0.copyload)
  %i.hp = call i64 @llvm.bswap.i64(i64 %.sroa.19.0.copyload)
  %.sroa.19.0 = select i1 %i.hn, i64 %i.hp, i64 %.sroa.19.0.copyload ; 8 uses
  %.sroa.11.0 = select i1 %i.hn, i32 %i.ho, i32 %.sroa.11.0.copyload ; 3 uses
  switch i32 %.sroa.0.0.copyload, label %bb.bd [
    i32 1718644067, label %bb.be
    i32 1668116582, label %bb.be
  ]

bb.bd:                                            ; preds = %bb.bc
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.62, i32 noundef %.sroa.0.0.copyload) #11
  br label %.thread111

bb.be:                                            ; preds = %bb.bc, %bb.bc
  %i.hq = call i32 @cli_gentempfd(ptr noundef nonnull %4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #11 ; 2 uses
  %.not376 = icmp eq i32 %i.hq, 0
  br i1 %.not376, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.63) #11
  br label %.thread111

bb.bg:                                            ; preds = %bb.be
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.64, i32 noundef %.sroa.11.0, i64 noundef %.sroa.19.0) #11
  switch i32 %.sroa.11.0, label %bb.dk [
    i32 3, label %bb.bh
    i32 4, label %bb.cd
  ]

bb.bh:                                            ; preds = %bb.bg
  %i.hr = icmp eq i32 %.sroa.109.0.copyload.i, 268435456
  br i1 %i.hr, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.65) #11
  br label %.thread111

bb.bj:                                            ; preds = %bb.bh
  %i.hs = load i8, ptr %i.av, align 16, !tbaa !39
  %i.ht = and i8 %i.hs, 15
  %i.hu = icmp eq i8 %i.ht, 15
  br i1 %i.hu, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %i.hv = add nsw i64 %i.hi, -17
  %.not394 = icmp eq i64 %i.hv, %.sroa.19.0
  br i1 %.not394, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.66) #11
  br label %.thread111

bb.bm:                                            ; preds = %bb.bk
  %i.hw = load i32, ptr %i.c, align 4, !tbaa !32
  %i.hx = call i64 @cli_writen(i32 noundef %i.hw, ptr noundef nonnull %i.ba, i64 noundef %.sroa.19.0) #11
  br label %bb.cb

bb.bn:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.hy = icmp ugt i64 %.sroa.19.0, 65536
  br i1 %i.hy, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.67) #11
  br label %.thread44

bb.bp:                                            ; preds = %bb.bn
  %i.hz = call noalias ptr @malloc(i64 noundef %.sroa.19.0) #12 ; 9 uses
  %.not392 = icmp eq ptr %i.hz, null
  br i1 %.not392, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.68) #11
  br label %.thread44

bb.br:                                            ; preds = %bb.bp
  %i.ia = add nsw i32 %i.hh, -16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  store i32 %i.ia, ptr %i.ax, align 8, !tbaa !103
  store ptr %i.av, ptr %6, align 8, !tbaa !104
  %i.ib = trunc nuw nsw i64 %.sroa.19.0 to i32
  store i32 %i.ib, ptr %i.ay, align 8, !tbaa !105
  store ptr %i.hz, ptr %i.az, align 8, !tbaa !106
  %i.ic = call i32 @inflateInit2_(ptr noundef nonnull %6, i32 noundef 15, ptr noundef nonnull @.str.69, i32 noundef 112) #11 ; 2 uses
  switch i32 %i.ic, label %bb.bv [
    i32 0, label %bb.bw
    i32 -4, label %bb.bs
    i32 -6, label %bb.bt
    i32 -2, label %bb.bu
  ]

bb.bs:                                            ; preds = %bb.br
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.70) #11
  br label %.thread44

bb.bt:                                            ; preds = %bb.br
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.71) #11
  br label %.thread44

bb.bu:                                            ; preds = %bb.br
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.72) #11
  br label %.thread44

bb.bv:                                            ; preds = %bb.br
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.73, i32 noundef %i.ic) #11
  br label %.thread44

bb.bw:                                            ; preds = %bb.br
  %i.id = call i32 @inflate(ptr noundef nonnull %6, i32 noundef 0) #11 ; 2 uses
  %or.cond13 = icmp ugt i32 %i.id, 1
  br i1 %or.cond13, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.74, i32 noundef %i.id) #11
end_hunk_0
begin_hunk_1_@hfsplus_walk_catalog:bb.a
}

declare i32 @cli_rmdirs(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @forkdata_print(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 1, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 1, !tbaa !113
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = load i32, ptr %i.d, align 1, !tbaa !65
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.28, ptr noundef %0, i64 noundef %i.a, i32 noundef %i.c, i32 noundef %i.e) #11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i32, ptr %i.f, align 1, !tbaa !37   ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.j = load i32, ptr %i.i, align 1, !tbaa !38
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.29, ptr noundef %0, i32 noundef 0, i32 noundef %i.g, i32 noundef %i.j) #11
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i32, ptr %i.k, align 1, !tbaa !37   ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.o = load i32, ptr %i.n, align 1, !tbaa !38
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.29, ptr noundef %0, i32 noundef 1, i32 noundef %i.l, i32 noundef %i.o) #11
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load i32, ptr %i.p, align 1, !tbaa !37   ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.t = load i32, ptr %i.s, align 1, !tbaa !38
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.29, ptr noundef %0, i32 noundef 2, i32 noundef %i.q, i32 noundef %i.t) #11
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load i32, ptr %i.u, align 1, !tbaa !37   ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.y = load i32, ptr %i.x, align 1, !tbaa !38
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.29, ptr noundef %0, i32 noundef 3, i32 noundef %i.v, i32 noundef %i.y) #11
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load i32, ptr %i.z, align 1, !tbaa !37  ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ad = load i32, ptr %i.ac, align 1, !tbaa !38
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.29, ptr noundef %0, i32 noundef 4, i32 noundef %i.aa, i32 noundef %i.ad) #11
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.af = load i32, ptr %i.ae, align 1, !tbaa !37 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ai = load i32, ptr %i.ah, align 1, !tbaa !38
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.29, ptr noundef %0, i32 noundef 5, i32 noundef %i.af, i32 noundef %i.ai) #11
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ak = load i32, ptr %i.aj, align 1, !tbaa !37 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.an = load i32, ptr %i.am, align 1, !tbaa !38
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.29, ptr noundef %0, i32 noundef 6, i32 noundef %i.ak, i32 noundef %i.an) #11
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ap = load i32, ptr %i.ao, align 1, !tbaa !37 ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.as = load i32, ptr %i.ar, align 1, !tbaa !38
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.29, ptr noundef %0, i32 noundef 7, i32 noundef %i.ap, i32 noundef %i.as) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

declare ptr @cli_max_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 27) i32 @hfsplus_fetch_node(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef range(i32 1, 0) %4, ptr nofree noundef writeonly captures(none) %5, i64 noundef range(i64 0, 65536) %6) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.b = load i32, ptr %i.a, align 1, !tbaa !64
  %.not = icmp ult i32 %4, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.99, i32 noundef %4) #11
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.c = zext i32 %4 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.e = load i16, ptr %i.d, align 1, !tbaa !63
  %i.f = zext i16 %i.e to i64                     ; 2 uses
  %i.g = mul nuw nsw i64 %i.f, %i.c               ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.i = load i32, ptr %i.h, align 1, !tbaa !33
  %i.j = zext i32 %i.i to i64                     ; 4 uses
  %i.k = udiv i64 %i.g, %i.j
  %i.l = trunc i64 %i.k to i32                    ; 5 uses
  %i.m = urem i64 %i.g, %i.j
  %i.n = add nsw i64 %i.f, -1
  %i.o = add nsw i64 %i.n, %i.g                   ; 2 uses
  %i.p = udiv i64 %i.o, %i.j
  %i.q = trunc i64 %i.p to i32                    ; 4 uses
  %i.r = urem i64 %i.o, %i.j
  %i.s = trunc nuw i64 %i.r to i32
  %i.t = add nuw i32 %i.s, 1
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.100, i32 noundef %i.l) #11
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.v = load i32, ptr %i.u, align 1, !tbaa !65   ; 2 uses
  %.not90 = icmp ugt i32 %i.v, %i.l
  %.not91 = icmp ugt i32 %i.v, %i.q
  %or.cond = select i1 %.not90, i1 %.not91, i1 false
  br i1 %or.cond, label %.preheader19, label %bb.d

.preheader19:                                     ; preds = %bb.c
  %.not9230 = icmp ugt i32 %i.l, %i.q
  br i1 %.not9230, label %.thread, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader19
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.z = trunc nuw nsw i64 %6 to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 76
  br label %.preheader

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.101) #11
  br label %.thread

bb.e:                                             ; preds = %fmap_readn.exit
  %i.ap = add i32 %.07531, 1                      ; 2 uses
  %.not92 = icmp ugt i32 %i.ap, %i.q
  br i1 %.not92, label %.thread, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.e
  %.06832 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.do, %bb.e ] ; 2 uses
  %.07531 = phi i32 [ %i.l, %.preheader.lr.ph ], [ %i.ap, %bb.e ] ; 6 uses
  %i.aq = load i32, ptr %i.w, align 1, !tbaa !37  ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.preheader
  %i.as = load i32, ptr %i.aa, align 1, !tbaa !38 ; 3 uses
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.ai, %bb.ah, %bb.ae, %bb.ad, %bb.aa, %bb.z, %bb.w, %bb.v, %bb.s, %bb.r, %bb.o, %bb.n, %bb.k, %bb.j, %bb.f, %.preheader
  %.07428.lcssa = phi i32 [ 0, %bb.f ], [ 0, %.preheader ], [ 1, %bb.j ], [ 1, %bb.k ], [ 2, %bb.n ], [ 2, %bb.o ], [ 3, %bb.r ], [ 3, %bb.s ], [ 4, %bb.v ], [ 4, %bb.w ], [ 5, %bb.z ], [ 5, %bb.aa ], [ 6, %bb.ad ], [ 6, %bb.ae ], [ 7, %bb.ah ], [ 7, %bb.ai ]
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.102, i32 noundef %.07428.lcssa) #11
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.au = and i32 %i.aq, 268435456
  %i.av = and i32 %i.au, %i.as
  %or.cond97.not.not = icmp eq i32 %i.av, 0
  br i1 %or.cond97.not.not, label %7, label %bb.i

bb.i:                                             ; preds = %bb.aj, %bb.af, %bb.ab, %bb.x, %bb.t, %bb.p, %bb.l, %bb.h
  %.07428.lcssa36.wide = phi i32 [ 0, %bb.h ], [ 1, %bb.l ], [ 2, %bb.p ], [ 3, %bb.t ], [ 4, %bb.x ], [ 5, %bb.ab ], [ 6, %bb.af ], [ 7, %bb.aj ]
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.103, i32 noundef %.07428.lcssa36.wide) #11
  br label %.thread

7:                                                ; preds = %bb.h
  %8 = icmp ult i32 %.07531, %i.as
  br i1 %8, label %.thread13, label %bb.j

.thread13:                                        ; preds = %bb.ak, %bb.ag, %bb.ac, %bb.y, %bb.u, %bb.q, %bb.m, %7
  %.06929.lcssa40 = phi i32 [ %.07531, %7 ], [ %i.ax, %bb.m ], [ %i.bg, %bb.q ], [ %i.bp, %bb.u ], [ %i.by, %bb.y ], [ %i.ch, %bb.ac ], [ %i.cq, %bb.ag ], [ %i.cz, %bb.ak ]
  %.07428.lcssa37.wide = phi i32 [ 0, %7 ], [ 1, %bb.m ], [ 2, %bb.q ], [ 3, %bb.u ], [ 4, %bb.y ], [ 5, %bb.ac ], [ 6, %bb.ag ], [ 7, %bb.ak ]
  %.lcssa34 = phi ptr [ %i.w, %7 ], [ %i.ab, %bb.m ], [ %i.ad, %bb.q ], [ %i.af, %bb.u ], [ %i.ah, %bb.y ], [ %i.aj, %bb.ac ], [ %i.al, %bb.ag ], [ %i.an, %bb.ak ]
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.104, i32 noundef %.07428.lcssa37.wide) #11
  %9 = load i32, ptr %.lcssa34, align 1, !tbaa !37
  %10 = add i32 %9, %.06929.lcssa40               ; 2 uses
  %11 = load i32, ptr %i.x, align 1, !tbaa !34
  %.not95.a = icmp ult i32 %10, %11
  br i1 %.not95.a, label %bb.an, label %bb.am

bb.j:                                             ; preds = %7
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.105, i32 noundef 0) #11
  %i.aw = load i32, ptr %i.aa, align 1, !tbaa !38
  %i.ax = sub i32 %.07531, %i.aw                  ; 3 uses
  %i.ay = load i32, ptr %i.ab, align 1, !tbaa !37 ; 2 uses
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.g, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = load i32, ptr %i.ac, align 1, !tbaa !38 ; 3 uses
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.g, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = and i32 %i.ay, 268435456
  %i.bd = and i32 %i.bc, %i.ba
  %or.cond97.not.not.1 = icmp eq i32 %i.bd, 0
  br i1 %or.cond97.not.not.1, label %bb.m, label %bb.i

bb.m:                                             ; preds = %bb.l
  %i.be = icmp ult i32 %i.ax, %i.ba
  br i1 %i.be, label %.thread13, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.105, i32 noundef 1) #11
  %i.bf = load i32, ptr %i.ac, align 1, !tbaa !38
  %i.bg = sub i32 %i.ax, %i.bf                    ; 3 uses
  %i.bh = load i32, ptr %i.ad, align 1, !tbaa !37 ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.g, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = load i32, ptr %i.ae, align 1, !tbaa !38 ; 3 uses
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.g, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = and i32 %i.bh, 268435456
  %i.bm = and i32 %i.bl, %i.bj
  %or.cond97.not.not.2 = icmp eq i32 %i.bm, 0
  br i1 %or.cond97.not.not.2, label %bb.q, label %bb.i

bb.q:                                             ; preds = %bb.p
  %i.bn = icmp ult i32 %i.bg, %i.bj
  br i1 %i.bn, label %.thread13, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.105, i32 noundef 2) #11
  %i.bo = load i32, ptr %i.ae, align 1, !tbaa !38
  %i.bp = sub i32 %i.bg, %i.bo                    ; 3 uses
  %i.bq = load i32, ptr %i.af, align 1, !tbaa !37 ; 2 uses
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.g, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bs = load i32, ptr %i.ag, align 1, !tbaa !38 ; 3 uses
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.g, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = and i32 %i.bq, 268435456
  %i.bv = and i32 %i.bu, %i.bs
  %or.cond97.not.not.3 = icmp eq i32 %i.bv, 0
  br i1 %or.cond97.not.not.3, label %bb.u, label %bb.i

bb.u:                                             ; preds = %bb.t
  %i.bw = icmp ult i32 %i.bp, %i.bs
  br i1 %i.bw, label %.thread13, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.105, i32 noundef 3) #11
  %i.bx = load i32, ptr %i.ag, align 1, !tbaa !38
  %i.by = sub i32 %i.bp, %i.bx                    ; 3 uses
  %i.bz = load i32, ptr %i.ah, align 1, !tbaa !37 ; 2 uses
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.g, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cb = load i32, ptr %i.ai, align 1, !tbaa !38 ; 3 uses
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.g, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cd = and i32 %i.bz, 268435456
  %i.ce = and i32 %i.cd, %i.cb
  %or.cond97.not.not.4 = icmp eq i32 %i.ce, 0
  br i1 %or.cond97.not.not.4, label %bb.y, label %bb.i

bb.y:                                             ; preds = %bb.x
  %i.cf = icmp ult i32 %i.by, %i.cb
  br i1 %i.cf, label %.thread13, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.105, i32 noundef 4) #11
  %i.cg = load i32, ptr %i.ai, align 1, !tbaa !38
  %i.ch = sub i32 %i.by, %i.cg                    ; 3 uses
  %i.ci = load i32, ptr %i.aj, align 1, !tbaa !37 ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.g, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ck = load i32, ptr %i.ak, align 1, !tbaa !38 ; 3 uses
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.g, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cm = and i32 %i.ci, 268435456
  %i.cn = and i32 %i.cm, %i.ck
  %or.cond97.not.not.5 = icmp eq i32 %i.cn, 0
  br i1 %or.cond97.not.not.5, label %bb.ac, label %bb.i

bb.ac:                                            ; preds = %bb.ab
  %i.co = icmp ult i32 %i.ch, %i.ck
  br i1 %i.co, label %.thread13, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.105, i32 noundef 5) #11
  %i.cp = load i32, ptr %i.ak, align 1, !tbaa !38
  %i.cq = sub i32 %i.ch, %i.cp                    ; 3 uses
  %i.cr = load i32, ptr %i.al, align 1, !tbaa !37 ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.g, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ct = load i32, ptr %i.am, align 1, !tbaa !38 ; 3 uses
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.g, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cv = and i32 %i.cr, 268435456
  %i.cw = and i32 %i.cv, %i.ct
  %or.cond97.not.not.6 = icmp eq i32 %i.cw, 0
  br i1 %or.cond97.not.not.6, label %bb.ag, label %bb.i

bb.ag:                                            ; preds = %bb.af
  %i.cx = icmp ult i32 %i.cq, %i.ct
  br i1 %i.cx, label %.thread13, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.105, i32 noundef 6) #11
  %i.cy = load i32, ptr %i.am, align 1, !tbaa !38
  %i.cz = sub i32 %i.cq, %i.cy                    ; 2 uses
  %i.da = load i32, ptr %i.an, align 1, !tbaa !37 ; 2 uses
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.g, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dc = load i32, ptr %i.ao, align 1, !tbaa !38 ; 3 uses
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.g, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.de = and i32 %i.da, 268435456
  %i.df = and i32 %i.de, %i.dc
  %or.cond97.not.not.7 = icmp eq i32 %i.df, 0
  br i1 %or.cond97.not.not.7, label %bb.ak, label %bb.i

bb.ak:                                            ; preds = %bb.aj
  %i.dg = icmp ult i32 %i.cz, %i.dc
  br i1 %i.dg, label %.thread13, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.105, i32 noundef 7) #11
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.106) #11
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.107) #11
  br label %.thread

bb.am:                                            ; preds = %.thread13
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.108) #11
  br label %.thread

bb.an:                                            ; preds = %.thread13
  %i.dh = load i32, ptr %i.h, align 1, !tbaa !33  ; 2 uses
  %i.di = mul i32 %i.dh, %10
  %i.dj = zext i32 %i.di to i64
  %i.dk = icmp eq i32 %.07531, %i.l               ; 2 uses
  %i.dl = icmp ne i32 %.07531, %i.q
  %i.dm = select i1 %i.dk, i1 true, i1 %i.dl
  %.071 = select i1 %i.dm, i32 %i.dh, i32 %i.t    ; 3 uses
  %i.dn = select i1 %i.dk, i64 %i.m, i64 0
  %.070 = add nuw nsw i64 %i.dn, %i.dj            ; 4 uses
  %i.do = add i32 %.071, %.06832                  ; 2 uses
  %i.dp = icmp ugt i32 %i.do, %i.z
  br i1 %i.dp, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.109) #11
  br label %.thread

bb.ap:                                            ; preds = %bb.an
  %i.dq = load ptr, ptr %i.y, align 8, !tbaa !25  ; 3 uses
  %i.dr = zext nneg i32 %.06832 to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 %i.dr
  %i.dt = zext i32 %.071 to i64                   ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 88
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !27 ; 3 uses
  %i.dw = icmp ne i64 %.070, %i.dv
  %i.dx = icmp ne i32 %.071, 0
  %or.cond.i = and i1 %i.dx, %i.dw
  br i1 %or.cond.i, label %bb.aq, label %fmap_readn.exit

bb.aq:                                            ; preds = %bb.ap
  %i.dy = icmp ugt i64 %.070, %i.dv
  br i1 %i.dy, label %fmap_readn.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dz = sub nuw i64 %i.dv, %.070
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %i.dt, i64 %i.dz) ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dq, i64 104
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !28
  %i.ec = tail call ptr %i.eb(ptr noundef nonnull %i.dq, i64 noundef range(i64 0, 8589934590) %.070, i64 noundef range(i64 0, 4294967296) %spec.select.i, i32 noundef 0) #11, !inline_history !114 ; 2 uses
  %.not.i = icmp eq ptr %i.ec, null
  br i1 %.not.i, label %fmap_readn.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ds, ptr nonnull align 1 %i.ec, i64 %spec.select.i, i1 false)
  %i.ed = icmp samesign ult i64 %spec.select.i, 2147483648
  %i.ee = select i1 %i.ed, i64 %spec.select.i, i64 -1
  br label %fmap_readn.exit

fmap_readn.exit:                                  ; preds = %bb.ap, %bb.as
  %.020.i = phi i64 [ 0, %bb.ap ], [ %i.ee, %bb.as ]
  %.not96 = icmp eq i64 %.020.i, %i.dt
  br i1 %.not96, label %bb.e, label %fmap_readn.exit.thread

fmap_readn.exit.thread:                           ; preds = %bb.ar, %bb.aq, %fmap_readn.exit
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.110) #11
  br label %.thread

.thread:                                          ; preds = %bb.e, %.preheader19, %bb.i, %bb.g, %fmap_readn.exit.thread, %bb.ao, %bb.am, %bb.al, %bb.d, %bb.b
  %.4 = phi i32 [ 26, %bb.b ], [ 26, %bb.d ], [ 26, %bb.i ], [ 26, %bb.al ], [ 26, %bb.am ], [ 26, %bb.ao ], [ 26, %fmap_readn.exit.thread ], [ 26, %bb.g ], [ 0, %.preheader19 ], [ 0, %bb.e ]
  ret i32 %.4
}

declare i32 @cli_codepage_to_utf8(ptr noundef, i64 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @cli_warnmsg(ptr noundef, ...) local_unnamed_addr #2

declare i32 @cli_gentempfd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @cli_writen(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @inflateInit2_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @inflateEnd(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hfsplus_scanfile(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr noundef nonnull %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 -1, ptr %i.b, align 4, !tbaa !32
  %i.c = load i64, ptr %2, align 1, !tbaa !35     ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.f = load i32, ptr %i.e, align 1, !tbaa !65
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.123) #11
  br label %.thread12

bb.d:                                             ; preds = %bb.b
  %i.h = tail call i32 @cli_checklimits(ptr noundef nonnull @.str.124, ptr noundef nonnull %0, i64 noundef %i.c, i64 noundef 0, i64 noundef 0) #11 ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.e, label %.thread12

bb.e:                                             ; preds = %bb.d
  %i.i = call i32 @cli_gentempfd(ptr noundef nonnull %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #11 ; 2 uses
  %.not99 = icmp eq i32 %i.i, 0
  br i1 %.not99, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.125) #11
  br label %.thread12

bb.g:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !66
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.126, ptr noundef %i.j) #11
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = load i32, ptr %i.e, align 1, !tbaa !65
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.thread6, %bb.g
  %.07236.lcssa = phi i64 [ %i.c, %bb.g ], [ %.3, %.thread6 ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.128, i64 noundef %.07236.lcssa) #11
  br label %.thread18

.lr.ph:                                           ; preds = %bb.g, %.thread6
  %.0723689 = phi i64 [ %.3, %.thread6 ], [ %i.c, %bb.g ]
  %indvars.iv88 = phi i64 [ %indvars.iv.next, %.thread6 ], [ 0, %bb.g ] ; 4 uses
  %exitcond.not = icmp eq i64 %indvars.iv88, 8
  br i1 %exitcond.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.q = trunc nuw nsw i64 %indvars.iv88 to i32
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv88 ; 2 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.129, i32 noundef %i.q) #11
  %i.s = load i32, ptr %i.r, align 1, !tbaa !37   ; 5 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.k, label %bb.j

bb.i:                                             ; preds = %.lr.ph
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.130) #11
  br label %.thread12

bb.j:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.v = load i32, ptr %i.u, align 1, !tbaa !38   ; 4 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.h
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.131) #11
  br label %.thread18

bb.l:                                             ; preds = %bb.j
  %i.x = and i32 %i.s, 268435456
  %i.y = and i32 %i.x, %i.v
  %or.cond107.not.not = icmp eq i32 %i.y, 0
  br i1 %or.cond107.not.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.132) #11
  br label %.thread12

bb.n:                                             ; preds = %bb.l
  %i.z = add i32 %i.s, -1
  %i.aa = add i32 %i.z, %i.v                      ; 2 uses
  %i.ab = load i32, ptr %i.l, align 1, !tbaa !34  ; 3 uses
  %i.ac = icmp ugt i32 %i.s, %i.ab
  %i.ad = icmp ugt i32 %i.aa, %i.ab
  %or.cond108 = or i1 %i.ac, %i.ad
  %i.ae = icmp ugt i32 %i.v, %i.ab
  %or.cond109 = or i1 %i.ae, %or.cond108
  br i1 %or.cond109, label %bb.o, label %.preheader

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.133) #11
  br label %.thread12

.preheader:                                       ; preds = %bb.n, %bb.u
  %.173 = phi i64 [ %i.ap, %bb.u ], [ %.0723689, %bb.n ] ; 3 uses
  %.068 = phi i32 [ %i.ar, %bb.u ], [ %i.s, %bb.n ] ; 3 uses
  %.not102 = icmp ugt i32 %.068, %i.aa
  br i1 %.not102, label %.thread6, label %bb.p

bb.p:                                             ; preds = %.preheader
  %i.af = load i32, ptr %i.m, align 1, !tbaa !33  ; 2 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %.173. = call i64 @llvm.umin.i64(i64 %.173, i64 %i.ag) ; 3 uses
  %i.ah = mul i32 %i.af, %.068
  %i.ai = zext i32 %i.ah to i64
  %i.aj = load ptr, ptr %i.n, align 8, !tbaa !25  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 104
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !28
  %i.am = call ptr %i.al(ptr noundef %i.aj, i64 noundef range(i64 0, 8589934590) %i.ai, i64 noundef range(i64 0, 4294967296) %i.ag, i32 noundef 0) #11, !inline_history !0 ; 2 uses
  %.not103 = icmp eq ptr %i.am, null
  br i1 %.not103, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
end_hunk_1
