Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/pngread?download=true
inline.NumInlined: 35
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 14
begin_hunk_0_@png_image_read_colormap:bb.a
  %i.vs = zext i16 %i.vr to i32
  %i.vt = mul nuw nsw i32 %i.vs, 127
  %i.vu = add nuw nsw i32 %i.vt, %i.vq            ; 2 uses
  %i.vv = lshr i32 %i.vu, 15
  %i.vw = zext nneg i32 %i.vv to i64              ; 2 uses
  %i.vx = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.vw
  %i.vy = load i16, ptr %i.vx, align 2, !tbaa !80
  %i.vz = zext i16 %i.vy to i32
  %i.wa = and i32 %i.vu, 32767
  %i.wb = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.vw
  %i.wc = load i8, ptr %i.wb, align 1, !tbaa !36
  %i.wd = zext i8 %i.wc to i32
  %i.we = mul nuw nsw i32 %i.wa, %i.wd
  %i.wf = lshr i32 %i.we, 12
  %i.wg = add nuw nsw i32 %i.wf, %i.vz
  %i.wh = lshr i32 %i.wg, 8
  %i.wi = and i32 %i.wh, 255                      ; 9 uses
  %i.wj = load i16, ptr %i.ta, align 2, !tbaa !80
  %i.wk = zext i16 %i.wj to i32
  %i.wl = mul nuw nsw i32 %i.wk, 127              ; 3 uses
  %i.wm = load i16, ptr %i.tc, align 2, !tbaa !80
  %i.wn = zext i16 %i.wm to i32
  %i.wo = mul nuw nsw i32 %i.wn, 127              ; 4 uses
  %i.wp = add nuw nsw i32 %i.wl, %i.up            ; 2 uses
  %i.wq = lshr i32 %i.wp, 15
  %i.wr = zext nneg i32 %i.wq to i64              ; 2 uses
  %i.ws = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.wr
  %i.wt = load i16, ptr %i.ws, align 2, !tbaa !80
  %i.wu = zext i16 %i.wt to i32
  %i.wv = and i32 %i.wp, 32767
  %i.ww = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.wr
  %i.wx = load i8, ptr %i.ww, align 1, !tbaa !36
  %i.wy = zext i8 %i.wx to i32
  %i.wz = mul nuw nsw i32 %i.wv, %i.wy
  %i.xa = lshr i32 %i.wz, 12
  %i.xb = add nuw nsw i32 %i.xa, %i.wu
  %i.xc = lshr i32 %i.xb, 8
  %i.xd = and i32 %i.xc, 255                      ; 3 uses
  %i.xe = add i32 %.4581, 1
  %i.xf = add nuw nsw i32 %i.wo, %i.up            ; 2 uses
  %i.xg = lshr i32 %i.xf, 15
  %i.xh = zext nneg i32 %i.xg to i64              ; 2 uses
  %i.xi = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.xh
  %i.xj = load i16, ptr %i.xi, align 2, !tbaa !80
  %i.xk = zext i16 %i.xj to i32
  %i.xl = and i32 %i.xf, 32767
  %i.xm = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.xh
  %i.xn = load i8, ptr %i.xm, align 1, !tbaa !36
  %i.xo = zext i8 %i.xn to i32
  %i.xp = mul nuw nsw i32 %i.xl, %i.xo
  %i.xq = lshr i32 %i.xp, 12
  %i.xr = add nuw nsw i32 %i.xq, %i.xk
  %i.xs = lshr i32 %i.xr, 8
  %i.xt = and i32 %i.xs, 255                      ; 2 uses
  tail call fastcc void @png_create_colormap_entry(ptr noundef nonnull %0, i32 noundef %.4581, i32 noundef %i.wi, i32 noundef %i.xd, i32 noundef %i.xt, i32 noundef 0, i32 noundef 1)
  %i.xu = add i32 %.4581, 2
  %i.xv = add nuw nsw i32 %i.wo, %i.us            ; 2 uses
  %i.xw = lshr i32 %i.xv, 15
  %i.xx = zext nneg i32 %i.xw to i64              ; 2 uses
  %i.xy = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.xx
  %i.xz = load i16, ptr %i.xy, align 2, !tbaa !80
  %i.ya = zext i16 %i.xz to i32
  %i.yb = and i32 %i.xv, 32767
  %i.yc = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.xx
  %i.yd = load i8, ptr %i.yc, align 1, !tbaa !36
  %i.ye = zext i8 %i.yd to i32
  %i.yf = mul nuw nsw i32 %i.yb, %i.ye
  %i.yg = lshr i32 %i.yf, 12
  %i.yh = add nuw nsw i32 %i.yg, %i.ya
  %i.yi = lshr i32 %i.yh, 8
  %i.yj = and i32 %i.yi, 255                      ; 3 uses
  tail call fastcc void @png_create_colormap_entry(ptr noundef nonnull %0, i32 noundef %i.xe, i32 noundef %i.wi, i32 noundef %i.xd, i32 noundef %i.yj, i32 noundef 0, i32 noundef 1)
  %i.yk = add i32 %.4581, 3
  %i.yl = add nuw nsw i32 %i.wo, %i.uv            ; 2 uses
  %i.ym = lshr i32 %i.yl, 15
  %i.yn = zext nneg i32 %i.ym to i64              ; 2 uses
  %i.yo = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.yn
  %i.yp = load i16, ptr %i.yo, align 2, !tbaa !80
  %i.yq = zext i16 %i.yp to i32
  %i.yr = and i32 %i.yl, 32767
  %i.ys = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.yn
  %i.yt = load i8, ptr %i.ys, align 1, !tbaa !36
  %i.yu = zext i8 %i.yt to i32
  %i.yv = mul nuw nsw i32 %i.yr, %i.yu
  %i.yw = lshr i32 %i.yv, 12
  %i.yx = add nuw nsw i32 %i.yw, %i.yq
  %i.yy = lshr i32 %i.yx, 8
  %i.yz = and i32 %i.yy, 255                      ; 3 uses
  tail call fastcc void @png_create_colormap_entry(ptr noundef nonnull %0, i32 noundef %i.xu, i32 noundef %i.wi, i32 noundef %i.xd, i32 noundef %i.yz, i32 noundef 0, i32 noundef 1)
  %i.za = add nuw nsw i32 %i.wl, %i.us            ; 2 uses
  %i.zb = lshr i32 %i.za, 15
  %i.zc = zext nneg i32 %i.zb to i64              ; 2 uses
  %i.zd = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.zc
  %i.ze = load i16, ptr %i.zd, align 2, !tbaa !80
  %i.zf = zext i16 %i.ze to i32
  %i.zg = and i32 %i.za, 32767
  %i.zh = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.zc
  %i.zi = load i8, ptr %i.zh, align 1, !tbaa !36
  %i.zj = zext i8 %i.zi to i32
  %i.zk = mul nuw nsw i32 %i.zg, %i.zj
  %i.zl = lshr i32 %i.zk, 12
  %i.zm = add nuw nsw i32 %i.zl, %i.zf
  %i.zn = lshr i32 %i.zm, 8
  %i.zo = and i32 %i.zn, 255                      ; 3 uses
  %i.zp = add i32 %.4581, 4
  tail call fastcc void @png_create_colormap_entry(ptr noundef nonnull %0, i32 noundef %i.yk, i32 noundef %i.wi, i32 noundef %i.zo, i32 noundef %i.xt, i32 noundef 0, i32 noundef 1)
  %i.zq = add i32 %.4581, 5
  tail call fastcc void @png_create_colormap_entry(ptr noundef nonnull %0, i32 noundef %i.zp, i32 noundef %i.wi, i32 noundef %i.zo, i32 noundef %i.yj, i32 noundef 0, i32 noundef 1)
  %i.zr = add i32 %.4581, 6
  tail call fastcc void @png_create_colormap_entry(ptr noundef nonnull %0, i32 noundef %i.zq, i32 noundef %i.wi, i32 noundef %i.zo, i32 noundef %i.yz, i32 noundef 0, i32 noundef 1)
  %i.zs = add nuw nsw i32 %i.wl, %i.uv            ; 2 uses
  %i.zt = lshr i32 %i.zs, 15
  %i.zu = zext nneg i32 %i.zt to i64              ; 2 uses
  %i.zv = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.zu
  %i.zw = load i16, ptr %i.zv, align 2, !tbaa !80
  %i.zx = zext i16 %i.zw to i32
  %i.zy = and i32 %i.zs, 32767
  %i.zz = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.zu
  %i.aaa = load i8, ptr %i.zz, align 1, !tbaa !36
  %i.aab = zext i8 %i.aaa to i32
  %i.aac = mul nuw nsw i32 %i.zy, %i.aab
  %i.aad = lshr i32 %i.aac, 12
  %i.aae = add nuw nsw i32 %i.aad, %i.zx
  %i.aaf = lshr i32 %i.aae, 8
  %i.aag = and i32 %i.aaf, 255                    ; 3 uses
  %i.aah = add i32 %.4581, 7
  %i.aai = add nuw nsw i32 %i.wo, %i.uy           ; 2 uses
  %i.aaj = lshr i32 %i.aai, 15
  %i.aak = zext nneg i32 %i.aaj to i64            ; 2 uses
  %i.aal = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.aak
  %i.aam = load i16, ptr %i.aal, align 2, !tbaa !80
  %i.aan = zext i16 %i.aam to i32
  %i.aao = and i32 %i.aai, 32767
  %i.aap = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.aak
  %i.aaq = load i8, ptr %i.aap, align 1, !tbaa !36
  %i.aar = zext i8 %i.aaq to i32
  %i.aas = mul nuw nsw i32 %i.aao, %i.aar
  %i.aat = lshr i32 %i.aas, 12
  %i.aau = add nuw nsw i32 %i.aat, %i.aan
  %i.aav = lshr i32 %i.aau, 8
  %i.aaw = and i32 %i.aav, 255
  tail call fastcc void @png_create_colormap_entry(ptr noundef nonnull %0, i32 noundef %i.zr, i32 noundef %i.wi, i32 noundef %i.aag, i32 noundef %i.aaw, i32 noundef 0, i32 noundef 1)
  %i.aax = add i32 %.4581, 8
  tail call fastcc void @png_create_colormap_entry(ptr noundef nonnull %0, i32 noundef %i.aah, i32 noundef %i.wi, i32 noundef %i.aag, i32 noundef %i.yj, i32 noundef 0, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef nonnull %0, i32 noundef %i.aax, i32 noundef %i.wi, i32 noundef %i.aag, i32 noundef %i.yz, i32 noundef 0, i32 noundef 1)
  br label %.split579.us

.split579.us:                                     ; preds = %.preheader552.preheader, %.preheader553.split.us
  %.us-phi580 = add i32 %.4581, 9                 ; 2 uses
  %i.aay = shl nuw nsw i32 %.1387582, 1
  %i.aaz = or i32 %i.aay, 127
  %i.aba = icmp ult i32 %.1387582, 128
  br i1 %i.aba, label %.preheader553, label %.loopexit, !llvm.loop !173

bb.cj:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store i8 0, ptr %4, align 2, !tbaa !81
  %i.abb = trunc nuw i32 %.0411 to i16
  %i.abc = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.abb, ptr %i.abc, align 2, !tbaa !82
  %i.abd = trunc nuw i32 %.0409 to i16            ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.abd, ptr %i.abe, align 2, !tbaa !83
  %i.abf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.abd, ptr %i.abf, align 2, !tbaa !84
  %i.abg = trunc nuw i32 %.0407 to i16
  %i.abh = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.abg, ptr %i.abh, align 2, !tbaa !85
  call void @png_set_background_fixed(ptr noundef nonnull %i.c, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %.thread.thread

bb.ck:                                            ; preds = %bb.bz
  %i.abi = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.abj = load i32, ptr %i.abi, align 4, !tbaa !65
  %i.abk = icmp ult i32 %i.abj, 216
  br i1 %i.abk, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  tail call void @png_error(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.45) #14
  unreachable

bb.cm:                                            ; preds = %bb.ck
  %i.abl = tail call fastcc i32 @make_rgb_colormap(ptr noundef nonnull %0)
  br label %.thread.thread

bb.cn:                                            ; preds = %bb.m
  %i.abm = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  %i.abn = load i16, ptr %i.abm, align 8, !tbaa !62 ; 2 uses
  %.not433 = icmp eq i16 %i.abn, 0
  br i1 %.not433, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.abo = getelementptr inbounds nuw i8, ptr %i.c, i64 800
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !45
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cn, %bb.co
  %i.abq = phi ptr [ %i.abp, %bb.co ], [ null, %bb.cn ] ; 3 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.c, i64 600
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !44 ; 2 uses
  %i.abt = icmp ne ptr %i.abq, null               ; 2 uses
  %i.abu = and i32 %i.e, 1
  %i.abv = icmp eq i32 %i.abu, 0
  %i.abw = select i1 %i.abt, i1 %i.abv, i1 false
  %i.abx = getelementptr inbounds nuw i8, ptr %i.c, i64 608
  %i.aby = load i16, ptr %i.abx, align 8, !tbaa !41 ; 2 uses
  %i.abz = tail call i16 @llvm.umin.i16(i16 %i.aby, i16 256) ; 2 uses
  %spec.store.select = zext nneg i16 %i.abz to i32 ; 3 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.acb = load i32, ptr %i.aca, align 4, !tbaa !65
  %i.acc = icmp ult i32 %i.acb, %spec.store.select
  br i1 %i.acc, label %bb.cq, label %.preheader557

.preheader557:                                    ; preds = %bb.cp
  %.not = icmp eq i16 %i.aby, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader557
  %i.acd = zext i16 %i.abn to i64
  %wide.trip.count = zext nneg i16 %i.abz to i64
  br label %.lr.ph

bb.cq:                                            ; preds = %bb.cp
  tail call void @png_error(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.46) #14
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.de
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.de ] ; 9 uses
  %i.ace = icmp samesign ult i64 %indvars.iv, %i.acd ; 2 uses
  %5 = select i1 %i.abt, i1 %i.ace, i1 false
  %or.cond464 = select i1 %i.abw, i1 %i.ace, i1 false
  br i1 %or.cond464, label %bb.cr, label %bb.db

bb.cr:                                            ; preds = %.lr.ph
  %i.acf = getelementptr inbounds nuw i8, ptr %i.abq, i64 %indvars.iv ; 5 uses
  %i.acg = load i8, ptr %i.acf, align 1, !tbaa !36 ; 2 uses
  switch i8 %i.acg, label %bb.ct [
    i8 -1, label %bb.db
    i8 0, label %bb.cs
  ]

bb.cs:                                            ; preds = %bb.cr
  %i.ach = trunc nuw nsw i64 %indvars.iv to i32
  tail call fastcc void @png_create_colormap_entry(ptr noundef nonnull %0, i32 noundef %i.ach, i32 noundef %.0411, i32 noundef %.0409, i32 noundef %.0407, i32 noundef 0, i32 noundef %i.g)
  br label %bb.de

bb.ct:                                            ; preds = %bb.cr
  %i.aci = zext i8 %i.acg to i32                  ; 2 uses
  %i.acj = getelementptr inbounds nuw [3 x i8], ptr %i.abs, i64 %indvars.iv ; 3 uses
  %i.ack = load i8, ptr %i.acj, align 1, !tbaa !78
  %i.acl = zext i8 %i.ack to i32
  %i.acm = tail call fastcc i32 @decode_gamma(ptr noundef nonnull %0, i32 noundef range(i32 0, 256) %i.acl, i32 noundef 3)
  %i.acn = tail call fastcc i32 @decode_gamma(ptr noundef nonnull %0, i32 noundef range(i32 0, 65536) %.0411, i32 noundef range(i32 1, 3) %i.g)
  %i.aco = mul nuw i32 %i.acm, %i.aci
  %i.acp = xor i32 %i.aci, 255
  %i.acq = mul nuw i32 %i.acn, %i.acp
  %i.acr = add i32 %i.acq, %i.aco                 ; 3 uses
  br i1 %.not.not, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.acs = mul i32 %i.acr, 257                    ; 2 uses
  %i.act = lshr i32 %i.acs, 16
  %i.acu = add i32 %i.acs, 32768
  %i.acv = add i32 %i.acu, %i.act
  %i.acw = lshr i32 %i.acv, 16
  br label %png_colormap_compose.exit479

bb.cv:                                            ; preds = %bb.ct
  %i.acx = lshr i32 %i.acr, 15
  %i.acy = zext nneg i32 %i.acx to i64            ; 2 uses
  %i.acz = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.acy
  %i.ada = load i16, ptr %i.acz, align 2, !tbaa !80
  %i.adb = zext i16 %i.ada to i32
  %i.adc = and i32 %i.acr, 32767
  %i.add = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.acy
  %i.ade = load i8, ptr %i.add, align 1, !tbaa !36
  %i.adf = zext i8 %i.ade to i32
  %i.adg = mul nuw nsw i32 %i.adc, %i.adf
  %i.adh = lshr i32 %i.adg, 12
  %i.adi = add nuw nsw i32 %i.adh, %i.adb
  %i.adj = lshr i32 %i.adi, 8
  %i.adk = and i32 %i.adj, 255
  br label %png_colormap_compose.exit479

png_colormap_compose.exit479:                     ; preds = %bb.cu, %bb.cv
  %.0.i478 = phi i32 [ %i.acw, %bb.cu ], [ %i.adk, %bb.cv ]
  %i.adl = getelementptr inbounds nuw i8, ptr %i.acj, i64 1
  %i.adm = load i8, ptr %i.adl, align 1, !tbaa !77
  %i.adn = zext i8 %i.adm to i32
  %i.ado = load i8, ptr %i.acf, align 1, !tbaa !36
  %i.adp = zext i8 %i.ado to i32                  ; 2 uses
  %i.adq = tail call fastcc i32 @decode_gamma(ptr noundef nonnull %0, i32 noundef range(i32 0, 256) %i.adn, i32 noundef 3)
  %i.adr = tail call fastcc i32 @decode_gamma(ptr noundef nonnull %0, i32 noundef range(i32 0, 65536) %.0409, i32 noundef range(i32 1, 3) %i.g)
  %i.ads = mul nuw i32 %i.adq, %i.adp
  %i.adt = xor i32 %i.adp, 255
  %i.adu = mul nuw i32 %i.adr, %i.adt
  %i.adv = add i32 %i.adu, %i.ads                 ; 3 uses
  br i1 %.not.not, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %png_colormap_compose.exit479
  %i.adw = mul i32 %i.adv, 257                    ; 2 uses
  %i.adx = lshr i32 %i.adw, 16
  %i.ady = add i32 %i.adw, 32768
  %i.adz = add i32 %i.ady, %i.adx
  %i.aea = lshr i32 %i.adz, 16
  br label %png_colormap_compose.exit481

bb.cx:                                            ; preds = %png_colormap_compose.exit479
  %i.aeb = lshr i32 %i.adv, 15
  %i.aec = zext nneg i32 %i.aeb to i64            ; 2 uses
  %i.aed = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.aec
  %i.aee = load i16, ptr %i.aed, align 2, !tbaa !80
  %i.aef = zext i16 %i.aee to i32
  %i.aeg = and i32 %i.adv, 32767
  %i.aeh = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.aec
  %i.aei = load i8, ptr %i.aeh, align 1, !tbaa !36
  %i.aej = zext i8 %i.aei to i32
  %i.aek = mul nuw nsw i32 %i.aeg, %i.aej
  %i.ael = lshr i32 %i.aek, 12
  %i.aem = add nuw nsw i32 %i.ael, %i.aef
  %i.aen = lshr i32 %i.aem, 8
  %i.aeo = and i32 %i.aen, 255
  br label %png_colormap_compose.exit481

png_colormap_compose.exit481:                     ; preds = %bb.cw, %bb.cx
  %.0.i480 = phi i32 [ %i.aea, %bb.cw ], [ %i.aeo, %bb.cx ]
  %i.aep = getelementptr inbounds nuw i8, ptr %i.acj, i64 2
  %i.aeq = load i8, ptr %i.aep, align 1, !tbaa !79
  %i.aer = zext i8 %i.aeq to i32
  %i.aes = load i8, ptr %i.acf, align 1, !tbaa !36
  %i.aet = zext i8 %i.aes to i32                  ; 2 uses
  %i.aeu = tail call fastcc i32 @decode_gamma(ptr noundef nonnull %0, i32 noundef range(i32 0, 256) %i.aer, i32 noundef 3)
  %i.aev = tail call fastcc i32 @decode_gamma(ptr noundef nonnull %0, i32 noundef range(i32 0, 65536) %.0407, i32 noundef range(i32 1, 3) %i.g)
  %i.aew = mul nuw i32 %i.aeu, %i.aet
  %i.aex = xor i32 %i.aet, 255
  %i.aey = mul nuw i32 %i.aev, %i.aex
  %i.aez = add i32 %i.aey, %i.aew                 ; 3 uses
  br i1 %.not.not, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %png_colormap_compose.exit481
  %i.afa = mul i32 %i.aez, 257                    ; 2 uses
  %i.afb = lshr i32 %i.afa, 16
  %i.afc = add i32 %i.afa, 32768
  %i.afd = add i32 %i.afc, %i.afb
  %i.afe = lshr i32 %i.afd, 16
  %i.aff = load i8, ptr %i.acf, align 1, !tbaa !36
  %i.afg = zext i8 %i.aff to i32
  %i.afh = mul nuw nsw i32 %i.afg, 257
  br label %bb.da

bb.cz:                                            ; preds = %png_colormap_compose.exit481
  %i.afi = lshr i32 %i.aez, 15
  %i.afj = zext nneg i32 %i.afi to i64            ; 2 uses
  %i.afk = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.afj
  %i.afl = load i16, ptr %i.afk, align 2, !tbaa !80
  %i.afm = zext i16 %i.afl to i32
  %i.afn = and i32 %i.aez, 32767
  %i.afo = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.afj
  %i.afp = load i8, ptr %i.afo, align 1, !tbaa !36
  %i.afq = zext i8 %i.afp to i32
  %i.afr = mul nuw nsw i32 %i.afn, %i.afq
  %i.afs = lshr i32 %i.afr, 12
  %i.aft = add nuw nsw i32 %i.afs, %i.afm
  %i.afu = lshr i32 %i.aft, 8
  %i.afv = and i32 %i.afu, 255
  %i.afw = load i8, ptr %i.acf, align 1, !tbaa !36
  %i.afx = zext i8 %i.afw to i32
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.0.i482620 = phi i32 [ %i.afe, %bb.cy ], [ %i.afv, %bb.cz ]
  %i.afy = phi i32 [ %i.afh, %bb.cy ], [ %i.afx, %bb.cz ]
  %i.afz = trunc nuw nsw i64 %indvars.iv to i32
  tail call fastcc void @png_create_colormap_entry(ptr noundef nonnull %0, i32 noundef %i.afz, i32 noundef %.0.i478, i32 noundef %.0.i480, i32 noundef %.0.i482620, i32 noundef %i.afy, i32 noundef %i.g)
  br label %bb.de

bb.db:                                            ; preds = %bb.cr, %.lr.ph
  %i.aga = getelementptr inbounds nuw [3 x i8], ptr %i.abs, i64 %indvars.iv ; 3 uses
  %i.agb = load i8, ptr %i.aga, align 1, !tbaa !78
  %6 = zext i8 %i.agb to i32
  %i.agc = getelementptr inbounds nuw i8, ptr %i.aga, i64 1
  %i.agd = load i8, ptr %i.agc, align 1, !tbaa !77
  %7 = zext i8 %i.agd to i32
  %i.age = getelementptr inbounds nuw i8, ptr %i.aga, i64 2
  %i.agf = load i8, ptr %i.age, align 1, !tbaa !79
  %8 = zext i8 %i.agf to i32
  br i1 %5, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.agg = getelementptr inbounds nuw i8, ptr %i.abq, i64 %indvars.iv
  %i.agh = load i8, ptr %i.agg, align 1, !tbaa !36
  %i.agi = zext i8 %i.agh to i32
  br label %bb.dd

bb.dd:                                            ; preds = %bb.db, %bb.dc
  %9 = phi i32 [ %i.agi, %bb.dc ], [ 255, %bb.db ]
  %i.agj = trunc nuw nsw i64 %indvars.iv to i32
  tail call fastcc void @png_create_colormap_entry(ptr noundef nonnull %0, i32 noundef %i.agj, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef 3)
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.da, %bb.cs
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !174

._crit_edge.loopexit:                             ; preds = %bb.de
  %.pre = load i8, ptr %i.aa, align 8, !tbaa !33
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader557
  %i.agk = phi i8 [ %.pre, %._crit_edge.loopexit ], [ %i.ab, %.preheader557 ] ; 2 uses
  %i.agl = icmp ult i8 %i.agk, 8
  br i1 %i.agl, label %bb.df, label %.thread.thread539

bb.df:                                            ; preds = %._crit_edge
  tail call void @png_set_packing(ptr noundef nonnull %i.c) #13
  br label %.thread.thread539thread-pre-split

bb.dg:                                            ; preds = %bb.m
  tail call void @png_error(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.47) #14
  unreachable

.loopexit:                                        ; preds = %.split579.us, %.preheader555, %bb.bk, %bb.ah, %bb.bx
  %.8 = phi i32 [ 256, %bb.bx ], [ %i.py, %.preheader555 ], [ %i.ms, %bb.bk ], [ 256, %bb.ah ], [ %.us-phi580, %.split579.us ] ; 3 uses
  %.2420 = phi i32 [ 0, %bb.bx ], [ 4, %.preheader555 ], [ 1, %bb.bk ], [ 2, %bb.ah ], [ 4, %.split579.us ] ; 3 uses
  %.1417 = phi i32 [ %.0416, %bb.bx ], [ 1, %.preheader555 ], [ 1, %bb.bk ], [ 1, %bb.ah ], [ 1, %.split579.us ] ; 3 uses
  %.2415 = phi i32 [ 256, %bb.bx ], [ %i.ow, %.preheader555 ], [ 231, %bb.bk ], [ 254, %bb.ah ], [ %i.qf, %.split579.us ] ; 3 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  %i.agn = load i16, ptr %i.agm, align 8, !tbaa !62
  %.not448 = icmp eq i16 %i.agn, 0
  br i1 %.not448, label %.thread.a, label %bb.dh

bb.dh:                                            ; preds = %.loopexit
  %i.ago = load i8, ptr %i.h, align 1, !tbaa !30
  %i.agp = and i8 %i.ago, 4
  %i.agq = icmp eq i8 %i.agp, 0
  br i1 %i.agq, label %bb.di, label %.thread.a

bb.di:                                            ; preds = %bb.dh
  call void @png_set_tRNS_to_alpha(ptr noundef nonnull %i.c) #13
  br label %.thread.a

.thread.a:                                        ; preds = %bb.bq, %bb.di, %bb.dh, %.loopexit
  %.2415526 = phi i32 [ %.2415, %.loopexit ], [ %.2415, %bb.di ], [ %.2415, %bb.dh ], [ 256, %bb.bq ] ; 2 uses
  %.1417525 = phi i32 [ %.1417, %.loopexit ], [ %.1417, %bb.di ], [ %.1417, %bb.dh ], [ %.0416, %bb.bq ]
  %.2420524 = phi i32 [ %.2420, %.loopexit ], [ %.2420, %bb.di ], [ %.2420, %bb.dh ], [ 0, %bb.bq ] ; 2 uses
  %.8523 = phi i32 [ %.8, %.loopexit ], [ %.8, %bb.di ], [ %.8, %bb.dh ], [ 256, %bb.bq ] ; 2 uses
  %i.agr = icmp eq i32 %.1417525, 1
  br i1 %i.agr, label %.thread.thread, label %.thread.thread539thread-pre-split

.thread.thread:                                   ; preds = %bb.bd, %bb.cj, %bb.af, %bb.al, %bb.ar, %make_gray_colormap.exit, %bb.cm, %.thread.a
  %.8523536 = phi i32 [ %.8523, %.thread.a ], [ 256, %bb.af ], [ %i.cj, %bb.al ], [ 256, %bb.ar ], [ 256, %make_gray_colormap.exit ], [ %i.qf, %bb.cj ], [ %i.abl, %bb.cm ], [ 256, %bb.bd ]
  %.2420524534 = phi i32 [ %.2420524, %.thread.a ], [ 0, %bb.af ], [ 1, %bb.al ], [ 0, %bb.ar ], [ 0, %make_gray_colormap.exit ], [ 3, %bb.cj ], [ 3, %bb.cm ], [ 1, %bb.bd ]
  %.2415526532 = phi i32 [ %.2415526, %.thread.a ], [ 256, %bb.af ], [ 231, %bb.al ], [ 256, %bb.ar ], [ 256, %make_gray_colormap.exit ], [ 256, %bb.cj ], [ 256, %bb.cm ], [ 231, %bb.bd ]
  call void @png_set_alpha_mode_fixed(ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 220000) #13
  br label %.thread.thread539thread-pre-split

.thread.thread539thread-pre-split:                ; preds = %.thread.thread, %.thread.a, %bb.df, %bb.y
  %.8523535.ph = phi i32 [ %spec.store.select, %bb.df ], [ %i.ak, %bb.y ], [ %.8523536, %.thread.thread ], [ %.8523, %.thread.a ]
  %.2420524533.ph = phi i32 [ 0, %bb.df ], [ 0, %bb.y ], [ %.2420524534, %.thread.thread ], [ %.2420524, %.thread.a ]
  %.2415526531.ph = phi i32 [ 256, %bb.df ], [ 256, %bb.y ], [ %.2415526532, %.thread.thread ], [ %.2415526, %.thread.a ]
  %.pr = load i8, ptr %i.aa, align 8, !tbaa !33
  br label %.thread.thread539

.thread.thread539:                                ; preds = %.thread.thread539thread-pre-split, %bb.x, %._crit_edge
  %i.ags = phi i8 [ %.pr, %.thread.thread539thread-pre-split ], [ %i.ba, %bb.x ], [ %i.agk, %._crit_edge ]
  %.8523535 = phi i32 [ %.8523535.ph, %.thread.thread539thread-pre-split ], [ %i.ak, %bb.x ], [ %spec.store.select, %._crit_edge ] ; 4 uses
  %.2420524533 = phi i32 [ %.2420524533.ph, %.thread.thread539thread-pre-split ], [ 0, %bb.x ], [ 0, %._crit_edge ] ; 2 uses
  %.2415526531 = phi i32 [ %.2415526531.ph, %.thread.thread539thread-pre-split ], [ 256, %bb.x ], [ 256, %._crit_edge ] ; 5 uses
  %i.agt = icmp ugt i8 %i.ags, 8
  br i1 %i.agt, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %.thread.thread539
  call void @png_set_scale_16(ptr noundef nonnull %i.c) #13
  br label %bb.dk

bb.dk:                                            ; preds = %.thread.thread539, %bb.dj
  %i.agu = icmp ugt i32 %.8523535, 256
  br i1 %i.agu, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.agv = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 2 uses
  %i.agw = load i32, ptr %i.agv, align 4, !tbaa !65
  %i.agx = icmp ugt i32 %.8523535, %i.agw
  br i1 %i.agx, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  call void @png_error(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.49) #14
  unreachable

bb.dn:                                            ; preds = %bb.dl
  store i32 %.8523535, ptr %i.agv, align 4, !tbaa !65
  switch i32 %.2420524533, label %default.unreachable615 [
    i32 0, label %bb.do
    i32 1, label %bb.dp
    i32 2, label %bb.dq
    i32 3, label %bb.dr
    i32 4, label %bb.ds
  ]

bb.do:                                            ; preds = %bb.dn
  %.not452 = icmp eq i32 %.2415526531, 256
  br i1 %.not452, label %bb.du, label %bb.dt

bb.dp:                                            ; preds = %bb.dn
  %.not451 = icmp eq i32 %.2415526531, 231
  br i1 %.not451, label %bb.du, label %bb.dt

bb.dq:                                            ; preds = %bb.dn
  %i.agy = icmp ne i32 %.2415526531, 254
  %i.agz = icmp samesign ult i32 %.8523535, 255
  %or.cond = or i1 %i.agz, %i.agy
  br i1 %or.cond, label %bb.dt, label %bb.du

bb.dr:                                            ; preds = %bb.dn
  %.not450 = icmp eq i32 %.2415526531, 256
  br i1 %.not450, label %bb.du, label %bb.dt

bb.ds:                                            ; preds = %bb.dn
  %.not449 = icmp eq i32 %.2415526531, 216
  br i1 %.not449, label %bb.du, label %bb.dt

default.unreachable615:                           ; preds = %bb.dn
  unreachable

bb.dt:                                            ; preds = %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do
  call void @png_error(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.51) #14
  unreachable

bb.du:                                            ; preds = %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do
  %i.aha = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %.2420524533, ptr %i.aha, align 8, !tbaa !86
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @png_image_read_colormapped(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !71     ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !59   ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !61   ; 10 uses
  tail call void @png_set_keep_unknown_chunks(ptr noundef %i.c, i32 noundef 1, ptr noundef null, i32 noundef -1) #13
  tail call void @png_set_keep_unknown_chunks(ptr noundef %i.c, i32 noundef 0, ptr noundef nonnull @png_image_skip_unused_chunks.chunks_to_process, i32 noundef 7) #13
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !86
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @png_set_interlace_handling(ptr noundef %i.c) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.064 = phi i32 [ %i.i, %bb.b ], [ 0, %bb.a ]   ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %png_read_update_info.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  %i.k = load i32, ptr %i.j, align 8, !tbaa !27, !alias.scope !182
  %i.l = and i32 %i.k, 64
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @png_read_start_row(ptr noundef nonnull %i.c) #13, !noalias !183
  tail call void @png_read_transform_info(ptr noundef nonnull %i.c, ptr noundef %i.e) #13
  br label %png_read_update_info.exit

bb.f:                                             ; preds = %bb.d
  tail call void @png_app_error(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.7) #13, !noalias !183
  br label %png_read_update_info.exit

png_read_update_info.exit:                        ; preds = %bb.c, %bb.e, %bb.f
  %i.n = load i32, ptr %i.f, align 8, !tbaa !86
  switch i32 %i.n, label %bb.u [
    i32 0, label %bb.g
    i32 2, label %bb.i
    i32 1, label %bb.i
    i32 3, label %bb.m
    i32 4, label %bb.q
  ]

bb.g:                                             ; preds = %png_read_update_info.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 37
  %i.p = load i8, ptr %i.o, align 1, !tbaa !87
  switch i8 %i.p, label %bb.u [
    i8 3, label %bb.h
    i8 0, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.r = load i8, ptr %i.q, align 4, !tbaa !88
  %i.s = icmp eq i8 %i.r, 8
  br i1 %i.s, label %bb.v, label %bb.u
end_hunk_0
