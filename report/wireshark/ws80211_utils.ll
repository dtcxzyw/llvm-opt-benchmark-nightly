Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/ws80211_utils?download=true
inline.NumInlined: 17
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@get_phys_handler:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 256
  %i.ah = load ptr, ptr %i.ag, align 16           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #15
  %.not.i17 = icmp eq ptr %i.ah, null
  br i1 %.not.i17, label %parse_supported_iftypes.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = call ptr @nla_data(ptr noundef nonnull %i.ah) ; 2 uses
  %i.aj = call i32 @nla_len(ptr noundef nonnull %i.ah) ; 2 uses
  store i32 %i.aj, ptr %i.h, align 4
  %i.ak = call i32 @nla_ok(ptr noundef %i.ai, i32 noundef %i.aj)
  %.not89.i = icmp eq i32 %i.ak, 0
  br i1 %.not89.i, label %parse_supported_iftypes.exit, label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %bb.i
  %i.al = getelementptr i8, ptr %i.af, i64 24
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %.lr.ph.i18
  %.010.i = phi ptr [ %i.ai, %.lr.ph.i18 ], [ %i.ao, %bb.l ] ; 2 uses
  %i.am = call i32 @nla_type(ptr noundef %.010.i)
  %i.an = icmp eq i32 %i.am, 6
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %i.al, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ao = call ptr @nla_next(ptr noundef %.010.i, ptr noundef nonnull %i.h) ; 2 uses
  %i.ap = load i32, ptr %i.h, align 4
  %i.aq = call i32 @nla_ok(ptr noundef %i.ao, i32 noundef %i.ap)
  %.not8.i = icmp eq i32 %i.aq, 0
  br i1 %.not8.i, label %parse_supported_iftypes.exit, label %bb.j, !llvm.loop !15

parse_supported_iftypes.exit:                     ; preds = %bb.l, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #15
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  %i.as = load ptr, ptr %i.ar, align 16           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  %.not.i19 = icmp eq ptr %i.as, null
  br i1 %.not.i19, label %parse_wiphy_bands.exit, label %bb.m

bb.m:                                             ; preds = %parse_supported_iftypes.exit
  %i.at = call ptr @nla_data(ptr noundef nonnull %i.as) ; 2 uses
  %i.au = call i32 @nla_len(ptr noundef nonnull %i.as) ; 2 uses
  store i32 %i.au, ptr %i.g, align 4
  %i.av = call i32 @nla_ok(ptr noundef %i.at, i32 noundef %i.au)
  %.not2228.i = icmp eq i32 %i.av, 0
  br i1 %.not2228.i, label %parse_wiphy_bands.exit, label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %bb.m
  %i.aw = getelementptr i8, ptr %i.af, i64 16     ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  br label %bb.n

bb.n:                                             ; preds = %bb.ar, %.lr.ph.i20
  %.01929.i = phi ptr [ %i.at, %.lr.ph.i20 ], [ %i.ew, %bb.ar ] ; 4 uses
  %i.bl = call ptr @nla_data(ptr noundef %.01929.i)
  %i.bm = call i32 @nla_len(ptr noundef %.01929.i)
  %i.bn = call i32 @nla_parse(ptr noundef nonnull %i.f, i32 noundef 13, ptr noundef %i.bl, i32 noundef %i.bm, ptr noundef null) ; 0 uses
  %i.bo = getelementptr i8, ptr %.01929.i, i64 2
  %i.bp = load i16, ptr %i.bo, align 2
  switch i16 %i.bp, label %bb.ar [
    i16 0, label %bb.q
    i16 1, label %bb.o
    i16 3, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.0.i = phi i32 [ 2, %bb.p ], [ 1, %bb.o ], [ 0, %bb.n ] ; 3 uses
  %i.bq = load ptr, ptr %i.aw, align 8            ; 3 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  %i.bs = load i32, ptr %i.br, align 8
  %.not23.i = icmp ugt i32 %i.bs, %.0.i
  br i1 %.not23.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = add nuw nsw i32 %.0.i, 1
  %i.bu = call ptr @g_array_set_size(ptr noundef %i.bq, i32 noundef %i.bt) ; 0 uses
  %.pre.i = load ptr, ptr %i.aw, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bv = phi ptr [ %.pre.i, %bb.r ], [ %i.bq, %bb.q ]
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = zext nneg i32 %.0.i to i64
  %i.by = getelementptr [16 x i8], ptr %i.bw, i64 %i.bx ; 6 uses
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cb = call ptr @g_array_new(i32 noundef 0, i32 noundef 0, i32 noundef 8)
  store ptr %i.cb, ptr %i.by, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cc = load ptr, ptr %i.ax, align 16           ; 2 uses
  %.not.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i, label %parse_band_ht_capa.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cd = getelementptr i8, ptr %i.by, i64 8      ; 4 uses
  %i.ce = load i32, ptr %i.cd, align 8
  %i.cf = or i32 %i.ce, 2
  store i32 %i.cf, ptr %i.cd, align 8
  %i.cg = call zeroext i16 @nla_get_u16(ptr noundef nonnull %i.cc)
  %i.ch = and i16 %i.cg, 2
  %.not5.i.i = icmp eq i16 %i.ch, 0
  br i1 %.not5.i.i, label %parse_band_ht_capa.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ci = load i32, ptr %i.cd, align 8
  %i.cj = or i32 %i.ci, 12
  store i32 %i.cj, ptr %i.cd, align 8
  br label %parse_band_ht_capa.exit.i

parse_band_ht_capa.exit.i:                        ; preds = %bb.w, %bb.v, %bb.u
  %i.ck = load ptr, ptr %i.ay, align 16           ; 2 uses
  %.not.i24.i = icmp eq ptr %i.ck, null
  br i1 %.not.i24.i, label %parse_band_vht_capa.exit.i, label %bb.x

bb.x:                                             ; preds = %parse_band_ht_capa.exit.i
  %i.cl = call i32 @nla_get_u32(ptr noundef nonnull %i.ck)
  %i.cm = lshr i32 %i.cl, 2
  %i.cn = and i32 %i.cm, 3
  %.phi.trans.insert.i.i = getelementptr i8, ptr %i.by, i64 8 ; 2 uses
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8 ; 3 uses
  switch i32 %i.cn, label %._crit_edge.i.i [
    i32 1, label %bb.y
    i32 2, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  %i.co = or i32 %.pre.i.i, 128
  br label %._crit_edge.i.i

bb.z:                                             ; preds = %bb.x
  %i.cp = or i32 %.pre.i.i, 192
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.z, %bb.y, %bb.x
  %i.cq = phi i32 [ %i.cp, %bb.z ], [ %i.co, %bb.y ], [ %.pre.i.i, %bb.x ]
  %i.cr = or i32 %i.cq, 32
  store i32 %i.cr, ptr %.phi.trans.insert.i.i, align 8
  br label %parse_band_vht_capa.exit.i

parse_band_vht_capa.exit.i:                       ; preds = %._crit_edge.i.i, %parse_band_ht_capa.exit.i
  %i.cs = load ptr, ptr %i.az, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  %.not.i25.i = icmp eq ptr %i.cs, null
  br i1 %.not.i25.i, label %parse_band_iftype_data.exit.i, label %bb.aa

bb.aa:                                            ; preds = %parse_band_vht_capa.exit.i
  %i.ct = call ptr @nla_data(ptr noundef nonnull %i.cs) ; 2 uses
  %i.cu = call i32 @nla_len(ptr noundef nonnull %i.cs) ; 2 uses
  store i32 %i.cu, ptr %i.e, align 4
  %i.cv = call i32 @nla_ok(ptr noundef %i.ct, i32 noundef %i.cu)
  %.not1012.i.i = icmp eq i32 %i.cv, 0
  br i1 %.not1012.i.i, label %parse_band_iftype_data.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aa
  %i.cw = getelementptr i8, ptr %i.by, i64 8      ; 5 uses
  br label %bb.ab

bb.ab:                                            ; preds = %parse_band_eht_cap_phy.exit.i.i, %.lr.ph.i.i
  %.013.i.i = phi ptr [ %i.ct, %.lr.ph.i.i ], [ %i.dq, %parse_band_eht_cap_phy.exit.i.i ] ; 3 uses
  %i.cx = call ptr @nla_data(ptr noundef %.013.i.i)
  %i.cy = call i32 @nla_len(ptr noundef %.013.i.i)
  %i.cz = call i32 @nla_parse(ptr noundef nonnull %i.d, i32 noundef 11, ptr noundef %i.cx, i32 noundef %i.cy, ptr noundef null) ; 0 uses
  %i.da = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i, label %parse_band_he_cap_phy.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.db = call zeroext i8 @nla_get_u8(ptr noundef nonnull %i.da)
  %i.dc = lshr i8 %i.db, 1
  %i.dd = and i8 %i.dc, 15                        ; 2 uses
  %i.de = load i32, ptr %i.cw, align 8
  %i.df = zext nneg i8 %i.dd to i32               ; 3 uses
  %i.dg = and i32 %i.df, 1
  %.not11.i.i.i = icmp eq i32 %i.dg, 0
  %spec.select.v.i.i.i = select i1 %.not11.i.i.i, i32 2, i32 18
  %i.dh = and i32 %i.df, 2
  %.not12.i.i.i = icmp eq i32 %i.dh, 0
  %spec.select15.v.i.i.i = select i1 %.not12.i.i.i, i32 %spec.select.v.i.i.i, i32 50
  %i.di = shl nuw nsw i32 %i.df, 5
  %i.dj = and i32 %i.di, 128
  %spec.select15.i.i.i = or i32 %i.dj, %i.de
  %spec.select.i.i.i.a = or i32 %spec.select15.i.i.i, %spec.select15.v.i.i.i ; 2 uses
  store i32 %spec.select.i.i.i.a, ptr %i.cw, align 8
  %.not14.i.i.i = icmp samesign ult i8 %i.dd, 8
  br i1 %.not14.i.i.i, label %parse_band_he_cap_phy.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dk = or i32 %spec.select.i.i.i.a, 64
  store i32 %i.dk, ptr %i.cw, align 8
  br label %parse_band_he_cap_phy.exit.i.i

parse_band_he_cap_phy.exit.i.i:                   ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.dl = load ptr, ptr %i.bb, align 8            ; 2 uses
  %.not.i11.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i11.i.i, label %parse_band_eht_cap_phy.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %parse_band_he_cap_phy.exit.i.i
  %i.dm = call zeroext i8 @nla_get_u8(ptr noundef nonnull %i.dl)
  %i.dn = and i8 %i.dm, 2
  %.not3.i.i.i = icmp eq i8 %i.dn, 0
  br i1 %.not3.i.i.i, label %parse_band_eht_cap_phy.exit.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.do = load i32, ptr %i.cw, align 8
  %i.dp = or i32 %i.do, 256
  store i32 %i.dp, ptr %i.cw, align 8
  br label %parse_band_eht_cap_phy.exit.i.i

parse_band_eht_cap_phy.exit.i.i:                  ; preds = %bb.af, %bb.ae, %parse_band_he_cap_phy.exit.i.i
  %i.dq = call ptr @nla_next(ptr noundef %.013.i.i, ptr noundef nonnull %i.e) ; 2 uses
  %i.dr = load i32, ptr %i.e, align 4
  %i.ds = call i32 @nla_ok(ptr noundef %i.dq, i32 noundef %i.dr)
  %.not10.i.i = icmp eq i32 %i.ds, 0
  br i1 %.not10.i.i, label %parse_band_iftype_data.exit.i, label %bb.ab, !llvm.loop !16

parse_band_iftype_data.exit.i:                    ; preds = %parse_band_eht_cap_phy.exit.i.i, %bb.aa, %parse_band_vht_capa.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  %i.dt = load ptr, ptr %i.bc, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %.not.i26.i = icmp eq ptr %i.dt, null
  br i1 %.not.i26.i, label %parse_band_freqs.exit.i, label %bb.ag

bb.ag:                                            ; preds = %parse_band_iftype_data.exit.i
  %i.du = call ptr @nla_data(ptr noundef nonnull %i.dt) ; 2 uses
  %i.dv = call i32 @nla_len(ptr noundef nonnull %i.dt) ; 2 uses
  store i32 %i.dv, ptr %i.c, align 4
  %i.dw = call i32 @nla_ok(ptr noundef %i.du, i32 noundef %i.dv)
  %.not1117.i.i = icmp eq i32 %i.dw, 0
  br i1 %.not1117.i.i, label %parse_band_freqs.exit.i, label %.lr.ph.i27.i

.lr.ph.i27.i:                                     ; preds = %bb.ag, %bb.aq
  %.018.i.i = phi ptr [ %i.et, %bb.aq ], [ %i.du, %bb.ag ] ; 3 uses
  %i.dx = call ptr @nla_data(ptr noundef %.018.i.i)
  %i.dy = call i32 @nla_len(ptr noundef %.018.i.i)
  %i.dz = call i32 @nla_parse(ptr noundef nonnull %i.b, i32 noundef 31, ptr noundef %i.dx, i32 noundef %i.dy, ptr noundef nonnull @parse_band_freqs.freq_policy) ; 0 uses
  %i.ea = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.eb = icmp eq ptr %i.ea, null
  %i.ec = load ptr, ptr %i.be, align 16
  %i.ed = icmp ne ptr %i.ec, null
  %or.cond.i.i = select i1 %i.eb, i1 true, i1 %i.ed
  br i1 %or.cond.i.i, label %bb.aq, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i27.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.ee = call i32 @nla_get_u32(ptr noundef nonnull %i.ea)
  store i32 %i.ee, ptr %2, align 4
  %i.ef = load ptr, ptr %i.bg, align 8
  %.not12.i.i = icmp eq ptr %i.ef, null
  %spec.store.select.i.i = select i1 %.not12.i.i, i32 0, i32 4 ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.bf, align 4
  %i.eg = load ptr, ptr %i.bh, align 16
  %.not13.i.i = icmp eq ptr %i.eg, null
  br i1 %.not13.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eh = or disjoint i32 %spec.store.select.i.i, 8 ; 2 uses
  store i32 %i.eh, ptr %i.bf, align 4
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ei = phi i32 [ %i.eh, %bb.ai ], [ %spec.store.select.i.i, %bb.ah ] ; 2 uses
  %i.ej = load ptr, ptr %i.bi, align 8
  %.not14.i.i = icmp eq ptr %i.ej, null
  br i1 %.not14.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ek = or i32 %i.ei, 32                        ; 2 uses
  store i32 %i.ek, ptr %i.bf, align 4
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.el = phi i32 [ %i.ek, %bb.ak ], [ %i.ei, %bb.aj ] ; 2 uses
  %i.em = load ptr, ptr %i.bj, align 16
  %.not15.i.i = icmp eq ptr %i.em, null
  br i1 %.not15.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.en = or i32 %i.el, 128                       ; 2 uses
  store i32 %i.en, ptr %i.bf, align 4
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.eo = phi i32 [ %i.en, %bb.am ], [ %i.el, %bb.al ]
  %i.ep = load ptr, ptr %i.bk, align 16
  %.not16.i.i = icmp eq ptr %i.ep, null
  br i1 %.not16.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eq = or i32 %i.eo, 256
  store i32 %i.eq, ptr %i.bf, align 4
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.er = load ptr, ptr %i.by, align 8
  %i.es = call ptr @g_array_append_vals(ptr noundef %i.er, ptr noundef nonnull %2, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.lr.ph.i27.i
  %i.et = call ptr @nla_next(ptr noundef %.018.i.i, ptr noundef nonnull %i.c) ; 2 uses
  %i.eu = load i32, ptr %i.c, align 4
  %i.ev = call i32 @nla_ok(ptr noundef %i.et, i32 noundef %i.eu)
  %.not11.i.i = icmp eq i32 %i.ev, 0
  br i1 %.not11.i.i, label %parse_band_freqs.exit.i, label %.lr.ph.i27.i, !llvm.loop !17

parse_band_freqs.exit.i:                          ; preds = %bb.aq, %bb.ag, %parse_band_iftype_data.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.ar

bb.ar:                                            ; preds = %parse_band_freqs.exit.i, %bb.n
  %i.ew = call ptr @nla_next(ptr noundef %.01929.i, ptr noundef nonnull %i.g) ; 2 uses
  %i.ex = load i32, ptr %i.g, align 4
  %i.ey = call i32 @nla_ok(ptr noundef %i.ew, i32 noundef %i.ex)
  %.not22.i = icmp eq i32 %i.ey, 0
  br i1 %.not22.i, label %parse_wiphy_bands.exit.loopexit, label %bb.n, !llvm.loop !18

parse_wiphy_bands.exit.loopexit:                  ; preds = %bb.ar
  %.pre = load ptr, ptr %i.j, align 8
  br label %parse_wiphy_bands.exit

parse_wiphy_bands.exit:                           ; preds = %parse_wiphy_bands.exit.loopexit, %parse_supported_iftypes.exit, %bb.m
  %i.ez = phi ptr [ %.pre, %parse_wiphy_bands.exit.loopexit ], [ %i.af, %parse_supported_iftypes.exit ], [ %i.af, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  %i.fa = getelementptr inbounds nuw i8, ptr %i.i, i64 400
  %i.fb = load ptr, ptr %i.fa, align 16           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %.not.i21 = icmp eq ptr %i.fb, null
  br i1 %.not.i21, label %parse_supported_commands.exit, label %bb.as

bb.as:                                            ; preds = %parse_wiphy_bands.exit
  %i.fc = call ptr @nla_data(ptr noundef nonnull %i.fb) ; 2 uses
  %i.fd = call i32 @nla_len(ptr noundef nonnull %i.fb) ; 2 uses
  store i32 %i.fd, ptr %i.a, align 4
  %i.fe = call i32 @nla_ok(ptr noundef %i.fc, i32 noundef %i.fd)
  %.not89.i22 = icmp eq i32 %i.fe, 0
  br i1 %.not89.i22, label %parse_supported_commands.exit, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %bb.as
  %i.ff = getelementptr i8, ptr %i.ez, i64 8
  br label %bb.at

bb.at:                                            ; preds = %bb.av, %.lr.ph.i23
  %.010.i24 = phi ptr [ %i.fc, %.lr.ph.i23 ], [ %i.fi, %bb.av ] ; 2 uses
  %i.fg = call i32 @nla_get_u32(ptr noundef %.010.i24)
  %i.fh = icmp eq i32 %i.fg, 65
  br i1 %i.fh, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i8 1, ptr %i.ff, align 8
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.fi = call ptr @nla_next(ptr noundef %.010.i24, ptr noundef nonnull %i.a) ; 2 uses
  %i.fj = load i32, ptr %i.a, align 4
  %i.fk = call i32 @nla_ok(ptr noundef %i.fi, i32 noundef %i.fj)
  %.not8.i25 = icmp eq i32 %i.fk, 0
  br i1 %.not8.i25, label %parse_supported_commands.exit, label %bb.at, !llvm.loop !19

parse_supported_commands.exit:                    ; preds = %bb.av, %parse_wiphy_bands.exit, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br i1 %.not14.not28, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %parse_supported_commands.exit
  %i.fl = load ptr, ptr %i.t, align 8
  %i.fm = call ptr @g_array_append_vals(ptr noundef %i.fl, ptr noundef nonnull %i.j, i32 noundef 1) ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %parse_supported_commands.exit, %bb.aw, %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #15
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare ptr @nla_get_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #13
end_hunk_0
