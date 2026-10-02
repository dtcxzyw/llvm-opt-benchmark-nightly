Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_blit_slow?download=true
inline.NumInlined: 17
inline.NumDeleted: 7
begin_hunk_0_@SDL_Blit_Slow:bb.a
  %i.wg = zext nneg i32 %i.wf to i64
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wa, i64 %i.wg
  %i.wi = load i8, ptr %i.wh, align 1
  br label %bb.at

bb.ar:                                            ; preds = %bb.ao
  %i.wj = load i8, ptr %i.db, align 4
  %i.wk = lshr i8 %i.wj, 3
  %i.wl = zext nneg i8 %i.wk to i64
  %i.wm = getelementptr inbounds nuw i8, ptr %.0556697, i64 %i.wl
  %i.wn = load i8, ptr %i.wm, align 1
  %i.wo = load i8, ptr %i.de, align 1
  %i.wp = lshr i8 %i.wo, 3
  %i.wq = zext nneg i8 %i.wp to i64
  %i.wr = getelementptr inbounds nuw i8, ptr %.0556697, i64 %i.wq
  %i.ws = load i8, ptr %i.wr, align 1
  %i.wt = load i8, ptr %i.dh, align 2
  %i.wu = lshr i8 %i.wt, 3
  %i.wv = zext nneg i8 %i.wu to i64
  %i.ww = getelementptr inbounds nuw i8, ptr %.0556697, i64 %i.wv
  %i.wx = load i8, ptr %i.ww, align 1
  br label %bb.at

bb.as:                                            ; preds = %bb.ao
  %i.wy = load i32, ptr %.0556697, align 4        ; 3 uses
  %i.wz = load i8, ptr %i.cz, align 4
  %i.xa = zext i8 %i.wz to i64
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.xa
  %i.xc = load ptr, ptr %i.xb, align 8
  %i.xd = load i32, ptr %i.da, align 4
  %i.xe = and i32 %i.xd, %i.wy
  %i.xf = load i8, ptr %i.db, align 4
  %i.xg = zext nneg i8 %i.xf to i32
  %i.xh = lshr i32 %i.xe, %i.xg
  %i.xi = zext i32 %i.xh to i64
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xc, i64 %i.xi
  %i.xk = load i8, ptr %i.xj, align 1
  %i.xl = load i8, ptr %i.dc, align 1
  %i.xm = zext i8 %i.xl to i64
  %i.xn = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.xm
  %i.xo = load ptr, ptr %i.xn, align 8
  %i.xp = load i32, ptr %i.dd, align 4
  %i.xq = and i32 %i.xp, %i.wy
  %i.xr = load i8, ptr %i.de, align 1
  %i.xs = zext nneg i8 %i.xr to i32
  %i.xt = lshr i32 %i.xq, %i.xs
  %i.xu = zext i32 %i.xt to i64
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xo, i64 %i.xu
  %i.xw = load i8, ptr %i.xv, align 1
  %i.xx = load i8, ptr %i.df, align 2
  %i.xy = zext i8 %i.xx to i64
  %i.xz = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.xy
  %i.ya = load ptr, ptr %i.xz, align 8
  %i.yb = load i32, ptr %i.dg, align 4
  %i.yc = and i32 %i.yb, %i.wy
  %i.yd = load i8, ptr %i.dh, align 2
  %i.ye = zext nneg i8 %i.yd to i32
  %i.yf = lshr i32 %i.yc, %i.ye
  %i.yg = zext i32 %i.yf to i64
  %i.yh = getelementptr inbounds nuw i8, ptr %i.ya, i64 %i.yg
  %i.yi = load i8, ptr %i.yh, align 1
  br label %bb.at

bb.at:                                            ; preds = %bb.ao, %bb.as, %bb.ar, %bb.aq, %bb.ap
  %.2590.shrunk = phi i8 [ %i.xk, %bb.as ], [ %i.ty, %bb.ap ], [ %i.vk, %bb.aq ], [ %i.wn, %bb.ar ], [ 0, %bb.ao ]
  %.2583.shrunk = phi i8 [ %i.xw, %bb.as ], [ %i.uk, %bb.ap ], [ %i.vw, %bb.aq ], [ %i.ws, %bb.ar ], [ 0, %bb.ao ]
  %.2576.shrunk = phi i8 [ %i.yi, %bb.as ], [ %i.uw, %bb.ap ], [ %i.wi, %bb.aq ], [ %i.wx, %bb.ar ], [ 0, %bb.ao ]
  %.2576 = zext i8 %.2576.shrunk to i32
  %.2583 = zext i8 %.2583.shrunk to i32
  %.2590 = zext i8 %.2590.shrunk to i32
  br label %bb.be

bb.au:                                            ; preds = %bb.am
  switch i8 %i.ab, label %bb.be [
    i8 1, label %bb.av
    i8 2, label %bb.aw
    i8 3, label %bb.ax
    i8 4, label %bb.ay
  ]

bb.av:                                            ; preds = %bb.au
  %i.yj = load i8, ptr %.0556697, align 1
  %i.yk = zext i8 %i.yj to i32                    ; 4 uses
  %i.yl = load i8, ptr %i.cz, align 4
  %i.ym = zext i8 %i.yl to i64
  %i.yn = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ym
  %i.yo = load ptr, ptr %i.yn, align 8
  %i.yp = load i32, ptr %i.da, align 4
  %i.yq = and i32 %i.yp, %i.yk
  %i.yr = load i8, ptr %i.db, align 4
  %i.ys = zext nneg i8 %i.yr to i32
  %i.yt = lshr i32 %i.yq, %i.ys
  %i.yu = zext nneg i32 %i.yt to i64
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yo, i64 %i.yu
  %i.yw = load i8, ptr %i.yv, align 1
  %i.yx = zext i8 %i.yw to i32
  %i.yy = load i8, ptr %i.dc, align 1
  %i.yz = zext i8 %i.yy to i64
  %i.za = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.yz
  %i.zb = load ptr, ptr %i.za, align 8
  %i.zc = load i32, ptr %i.dd, align 4
  %i.zd = and i32 %i.zc, %i.yk
  %i.ze = load i8, ptr %i.de, align 1
  %i.zf = zext nneg i8 %i.ze to i32
  %i.zg = lshr i32 %i.zd, %i.zf
  %i.zh = zext nneg i32 %i.zg to i64
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zb, i64 %i.zh
  %i.zj = load i8, ptr %i.zi, align 1
  %i.zk = zext i8 %i.zj to i32
  %i.zl = load i8, ptr %i.df, align 2
  %i.zm = zext i8 %i.zl to i64
  %i.zn = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.zm
  %i.zo = load ptr, ptr %i.zn, align 8
  %i.zp = load i32, ptr %i.dg, align 4
  %i.zq = and i32 %i.zp, %i.yk
  %i.zr = load i8, ptr %i.dh, align 2
  %i.zs = zext nneg i8 %i.zr to i32
  %i.zt = lshr i32 %i.zq, %i.zs
  %i.zu = zext nneg i32 %i.zt to i64
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zo, i64 %i.zu
  %i.zw = load i8, ptr %i.zv, align 1
  %i.zx = zext i8 %i.zw to i32
  %i.zy = load i8, ptr %i.di, align 1
  %i.zz = zext i8 %i.zy to i64
  %i.aaa = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.zz
  %i.aab = load ptr, ptr %i.aaa, align 8
  %i.aac = load i32, ptr %i.dj, align 4
  %i.aad = and i32 %i.aac, %i.yk
  %i.aae = load i8, ptr %i.dk, align 1
  %i.aaf = zext nneg i8 %i.aae to i32
  %i.aag = lshr i32 %i.aad, %i.aaf
  %i.aah = zext nneg i32 %i.aag to i64
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aab, i64 %i.aah
  %i.aaj = load i8, ptr %i.aai, align 1
  %i.aak = zext i8 %i.aaj to i32
  br label %bb.be

bb.aw:                                            ; preds = %bb.au
  %i.aal = load i16, ptr %.0556697, align 2
  %i.aam = zext i16 %i.aal to i32                 ; 4 uses
  %i.aan = load i8, ptr %i.cz, align 4
  %i.aao = zext i8 %i.aan to i64
  %i.aap = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aao
  %i.aaq = load ptr, ptr %i.aap, align 8
  %i.aar = load i32, ptr %i.da, align 4
  %i.aas = and i32 %i.aar, %i.aam
  %i.aat = load i8, ptr %i.db, align 4
  %i.aau = zext nneg i8 %i.aat to i32
  %i.aav = lshr i32 %i.aas, %i.aau
  %i.aaw = zext nneg i32 %i.aav to i64
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaq, i64 %i.aaw
  %i.aay = load i8, ptr %i.aax, align 1
  %i.aaz = zext i8 %i.aay to i32
  %i.aba = load i8, ptr %i.dc, align 1
  %i.abb = zext i8 %i.aba to i64
  %i.abc = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.abb
  %i.abd = load ptr, ptr %i.abc, align 8
  %i.abe = load i32, ptr %i.dd, align 4
  %i.abf = and i32 %i.abe, %i.aam
  %i.abg = load i8, ptr %i.de, align 1
  %i.abh = zext nneg i8 %i.abg to i32
  %i.abi = lshr i32 %i.abf, %i.abh
  %i.abj = zext nneg i32 %i.abi to i64
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abd, i64 %i.abj
  %i.abl = load i8, ptr %i.abk, align 1
  %i.abm = zext i8 %i.abl to i32
  %i.abn = load i8, ptr %i.df, align 2
  %i.abo = zext i8 %i.abn to i64
  %i.abp = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.abo
  %i.abq = load ptr, ptr %i.abp, align 8
  %i.abr = load i32, ptr %i.dg, align 4
  %i.abs = and i32 %i.abr, %i.aam
  %i.abt = load i8, ptr %i.dh, align 2
  %i.abu = zext nneg i8 %i.abt to i32
  %i.abv = lshr i32 %i.abs, %i.abu
  %i.abw = zext nneg i32 %i.abv to i64
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abq, i64 %i.abw
  %i.aby = load i8, ptr %i.abx, align 1
  %i.abz = zext i8 %i.aby to i32
  %i.aca = load i8, ptr %i.di, align 1
  %i.acb = zext i8 %i.aca to i64
  %i.acc = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.acb
  %i.acd = load ptr, ptr %i.acc, align 8
  %i.ace = load i32, ptr %i.dj, align 4
  %i.acf = and i32 %i.ace, %i.aam
  %i.acg = load i8, ptr %i.dk, align 1
  %i.ach = zext nneg i8 %i.acg to i32
  %i.aci = lshr i32 %i.acf, %i.ach
  %i.acj = zext nneg i32 %i.aci to i64
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acd, i64 %i.acj
  %i.acl = load i8, ptr %i.ack, align 1
  %i.acm = zext i8 %i.acl to i32
  br label %bb.be

bb.ax:                                            ; preds = %bb.au
  %i.acn = load i8, ptr %i.db, align 4
  %i.aco = lshr i8 %i.acn, 3
  %i.acp = zext nneg i8 %i.aco to i64
  %i.acq = getelementptr inbounds nuw i8, ptr %.0556697, i64 %i.acp
  %i.acr = load i8, ptr %i.acq, align 1
  %i.acs = load i8, ptr %i.de, align 1
  %i.act = lshr i8 %i.acs, 3
  %i.acu = zext nneg i8 %i.act to i64
  %i.acv = getelementptr inbounds nuw i8, ptr %.0556697, i64 %i.acu
  %i.acw = load i8, ptr %i.acv, align 1
  %i.acx = load i8, ptr %i.dh, align 2
  %i.acy = lshr i8 %i.acx, 3
  %i.acz = zext nneg i8 %i.acy to i64
  %i.ada = getelementptr inbounds nuw i8, ptr %.0556697, i64 %i.acz
  %i.adb = load i8, ptr %i.ada, align 1
  %1 = zext i8 %i.acr to i32
  %2 = zext i8 %i.acw to i32
  %i.adc = zext i8 %i.adb to i32
  br label %bb.be

bb.ay:                                            ; preds = %bb.au
  %i.add = load i32, ptr %.0556697, align 4       ; 4 uses
  %i.ade = load i8, ptr %i.cz, align 4
  %i.adf = zext i8 %i.ade to i64
  %i.adg = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.adf
  %i.adh = load ptr, ptr %i.adg, align 8
  %i.adi = load i32, ptr %i.da, align 4
  %i.adj = and i32 %i.adi, %i.add
  %i.adk = load i8, ptr %i.db, align 4
  %i.adl = zext nneg i8 %i.adk to i32
  %i.adm = lshr i32 %i.adj, %i.adl
  %i.adn = zext i32 %i.adm to i64
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adh, i64 %i.adn
  %i.adp = load i8, ptr %i.ado, align 1
  %i.adq = zext i8 %i.adp to i32
  %i.adr = load i8, ptr %i.dc, align 1
  %i.ads = zext i8 %i.adr to i64
  %i.adt = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ads
  %i.adu = load ptr, ptr %i.adt, align 8
  %i.adv = load i32, ptr %i.dd, align 4
  %i.adw = and i32 %i.adv, %i.add
  %i.adx = load i8, ptr %i.de, align 1
  %i.ady = zext nneg i8 %i.adx to i32
  %i.adz = lshr i32 %i.adw, %i.ady
  %i.aea = zext i32 %i.adz to i64
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adu, i64 %i.aea
  %i.aec = load i8, ptr %i.aeb, align 1
  %i.aed = zext i8 %i.aec to i32
  %i.aee = load i8, ptr %i.df, align 2
  %i.aef = zext i8 %i.aee to i64
  %i.aeg = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aef
  %i.aeh = load ptr, ptr %i.aeg, align 8
  %i.aei = load i32, ptr %i.dg, align 4
  %i.aej = and i32 %i.aei, %i.add
  %i.aek = load i8, ptr %i.dh, align 2
  %i.ael = zext nneg i8 %i.aek to i32
  %i.aem = lshr i32 %i.aej, %i.ael
  %i.aen = zext i32 %i.aem to i64
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aeh, i64 %i.aen
  %i.aep = load i8, ptr %i.aeo, align 1
  %i.aeq = zext i8 %i.aep to i32
  %i.aer = load i8, ptr %i.di, align 1
  %i.aes = zext i8 %i.aer to i64
  %i.aet = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aes
  %i.aeu = load ptr, ptr %i.aet, align 8
  %i.aev = load i32, ptr %i.dj, align 4
  %i.aew = and i32 %i.aev, %i.add
  %i.aex = load i8, ptr %i.dk, align 1
  %i.aey = zext nneg i8 %i.aex to i32
  %i.aez = lshr i32 %i.aew, %i.aey
  %i.afa = zext i32 %i.aez to i64
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aeu, i64 %i.afa
  %i.afc = load i8, ptr %i.afb, align 1
  %i.afd = zext i8 %i.afc to i32
  br label %bb.be

bb.az:                                            ; preds = %bb.am
  %i.afe = load i32, ptr %.0556697, align 4       ; 14 uses
  %i.aff = load i32, ptr %i.t, align 4
  %i.afg = add i32 %i.aff, -370614276             ; 2 uses
  %i.afh = tail call i32 @llvm.fshl.i32(i32 %i.afg, i32 %i.afg, i32 11)
  switch i32 %i.afh, label %bb.be [
    i32 0, label %bb.ba
    i32 2, label %bb.bb
    i32 1, label %bb.bc
    i32 3, label %bb.bd
  ]

bb.ba:                                            ; preds = %bb.az
  %i.afi = lshr i32 %i.afe, 22
  %i.afj = and i32 %i.afi, 255
  %i.afk = lshr i32 %i.afe, 12
  %i.afl = and i32 %i.afk, 255
  %i.afm = lshr i32 %i.afe, 2
  %i.afn = and i32 %i.afm, 255
  br label %bb.be

bb.bb:                                            ; preds = %bb.az
  %i.afo = lshr i32 %i.afe, 2
  %i.afp = and i32 %i.afo, 255
  %i.afq = lshr i32 %i.afe, 12
  %i.afr = and i32 %i.afq, 255
  %i.afs = lshr i32 %i.afe, 22
  %i.aft = and i32 %i.afs, 255
  br label %bb.be

bb.bc:                                            ; preds = %bb.az
  %i.afu = lshr i32 %i.afe, 22
  %i.afv = lshr i32 %i.afe, 12
  %i.afw = lshr i32 %i.afe, 2
  %i.afx = lshr i32 %i.afe, 30
  %i.afy = zext nneg i32 %i.afx to i64
  %i.afz = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.afy
  %i.aga = load i8, ptr %i.afz, align 1
  %i.agb = and i32 %i.afu, 255
  %i.agc = and i32 %i.afv, 255
  %i.agd = and i32 %i.afw, 255
  %i.age = zext i8 %i.aga to i32
  br label %bb.be

bb.bd:                                            ; preds = %bb.az
  %i.agf = lshr i32 %i.afe, 2
  %i.agg = lshr i32 %i.afe, 12
  %i.agh = lshr i32 %i.afe, 22
  %i.agi = lshr i32 %i.afe, 30
  %i.agj = zext nneg i32 %i.agi to i64
  %i.agk = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.agj
  %i.agl = load i8, ptr %i.agk, align 1
  %i.agm = and i32 %i.agf, 255
  %i.agn = and i32 %i.agg, 255
  %i.ago = and i32 %i.agh, 255
  %i.agp = zext i8 %i.agl to i32
  br label %bb.be

bb.be:                                            ; preds = %bb.au, %bb.al, %bb.am, %bb.an, %bb.at, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.az, %bb.bd, %bb.bc, %bb.bb, %bb.ba
  %.3591 = phi i32 [ %.1589.ph726, %bb.am ], [ %i.te, %bb.an ], [ %.2590, %bb.at ], [ %.1589.ph726, %bb.al ], [ %i.yx, %bb.av ], [ %i.aaz, %bb.aw ], [ %1, %bb.ax ], [ %i.adq, %bb.ay ], [ %.1589.ph726, %bb.az ], [ %i.afj, %bb.ba ], [ %i.afp, %bb.bb ], [ %i.agb, %bb.bc ], [ %i.agm, %bb.bd ], [ 0, %bb.au ] ; 6 uses
  %.3584 = phi i32 [ %.1582.ph727, %bb.am ], [ %i.tg, %bb.an ], [ %.2583, %bb.at ], [ %.1582.ph727, %bb.al ], [ %i.zk, %bb.av ], [ %i.abm, %bb.aw ], [ %2, %bb.ax ], [ %i.aed, %bb.ay ], [ %.1582.ph727, %bb.az ], [ %i.afl, %bb.ba ], [ %i.afr, %bb.bb ], [ %i.agc, %bb.bc ], [ %i.agn, %bb.bd ], [ 0, %bb.au ] ; 6 uses
  %.3577 = phi i32 [ %.1575.ph728, %bb.am ], [ %i.ti, %bb.an ], [ %.2576, %bb.at ], [ %.1575.ph728, %bb.al ], [ %i.zx, %bb.av ], [ %i.abz, %bb.aw ], [ %i.adc, %bb.ax ], [ %i.aeq, %bb.ay ], [ %.1575.ph728, %bb.az ], [ %i.afn, %bb.ba ], [ %i.aft, %bb.bb ], [ %i.agd, %bb.bc ], [ %i.ago, %bb.bd ], [ 0, %bb.au ] ; 6 uses
  %.2570 = phi i32 [ %.1569.ph729, %bb.am ], [ %i.tk, %bb.an ], [ 255, %bb.at ], [ %.1569.ph729, %bb.al ], [ %i.aak, %bb.av ], [ %i.acm, %bb.aw ], [ 255, %bb.ax ], [ %i.afd, %bb.ay ], [ %.1569.ph729, %bb.az ], [ 255, %bb.ba ], [ 255, %bb.bb ], [ %i.age, %bb.bc ], [ %i.agp, %bb.bd ], [ 0, %bb.au ] ; 6 uses
  br i1 %.not625, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.agq = mul nuw nsw i32 %.3614659, %i.e
  %i.agr = udiv i32 %i.agq, 255
  %i.ags = mul nuw nsw i32 %.3608661, %i.h
  %i.agt = udiv i32 %i.ags, 255
  %i.agu = mul nuw nsw i32 %.3602663, %i.k
  %i.agv = udiv i32 %i.agu, 255
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.4615 = phi i32 [ %i.agr, %bb.bf ], [ %.3614659, %bb.be ] ; 2 uses
  %.4609 = phi i32 [ %i.agt, %bb.bf ], [ %.3608661, %bb.be ] ; 2 uses
  %.4603 = phi i32 [ %i.agv, %bb.bf ], [ %.3602663, %bb.be ] ; 2 uses
  br i1 %.not626, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.agw = mul nuw nsw i32 %.2597665, %i.n
  %i.agx = udiv i32 %i.agw, 255
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.3598 = phi i32 [ %i.agx, %bb.bh ], [ %.2597665, %bb.bg ] ; 12 uses
  %i.agy = icmp ult i32 %.3598, 255
  %or.cond = select i1 %i.dp, i1 %i.agy, i1 false
  br i1 %or.cond, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.agz = mul nuw nsw i32 %.3598, %.4615
  %i.aha = udiv i32 %i.agz, 255
  %i.ahb = mul nuw nsw i32 %.3598, %.4609
  %i.ahc = udiv i32 %i.ahb, 255
  %i.ahd = mul nuw nsw i32 %.3598, %.4603
  %i.ahe = udiv i32 %i.ahd, 255
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.5616 = phi i32 [ %i.aha, %bb.bj ], [ %.4615, %bb.bi ] ; 8 uses
  %.5610 = phi i32 [ %i.ahc, %bb.bj ], [ %.4609, %bb.bi ] ; 8 uses
  %.5604 = phi i32 [ %i.ahe, %bb.bj ], [ %.4603, %bb.bi ] ; 8 uses
  switch i32 %i.cy, label %bb.br [
    i32 0, label %bb.bl
    i32 16, label %bb.bm
    i32 32, label %bb.bn
    i32 64, label %bb.bo
    i32 128, label %bb.bo
    i32 256, label %bb.bp
    i32 512, label %bb.bq
  ]

bb.bl:                                            ; preds = %bb.bk
  br label %bb.br

bb.bm:                                            ; preds = %bb.bk
  %i.ahf = sub nuw nsw i32 255, %.3598            ; 4 uses
  %i.ahg = mul i32 %i.ahf, %.3591
  %i.ahh = mul i32 %i.ahf, %.3584
  %i.ahi = mul i32 %i.ahf, %.3577
  %i.ahj = mul i32 %i.ahf, %.2570
  %i.ahk = insertelement <4 x i32> poison, i32 %i.ahj, i64 0
  %i.ahl = insertelement <4 x i32> %i.ahk, i32 %i.ahg, i64 1
  %i.ahm = insertelement <4 x i32> %i.ahl, i32 %i.ahh, i64 2
  %i.ahn = insertelement <4 x i32> %i.ahm, i32 %i.ahi, i64 3
  %i.aho = udiv <4 x i32> %i.ahn, splat (i32 255) ; 4 uses
  %i.ahp = extractelement <4 x i32> %i.aho, i64 1
  %i.ahq = add nuw nsw i32 %.5616, %i.ahp
  %i.ahr = extractelement <4 x i32> %i.aho, i64 2
  %i.ahs = add nuw nsw i32 %.5610, %i.ahr
  %i.aht = extractelement <4 x i32> %i.aho, i64 3
  %i.ahu = add nuw nsw i32 %.5604, %i.aht
  %i.ahv = extractelement <4 x i32> %i.aho, i64 0
  %i.ahw = add nuw nsw i32 %i.ahv, %.3598
  br label %bb.br

bb.bn:                                            ; preds = %bb.bk
  %i.ahx = sub nuw nsw i32 255, %.3598            ; 4 uses
  %i.ahy = mul i32 %i.ahx, %.3591
end_hunk_0
