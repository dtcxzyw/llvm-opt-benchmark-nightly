inline.NumInlined: 3419
inline.NumDeleted: 948
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 79
begin_hunk_0_@bcdec_bc7:bb.a
  %i.vx = or i64 %i.vw, %i.vt                     ; 2 uses
  %i.vy = lshr i64 %i.vm, %i.vs                   ; 2 uses
  %i.vz = trunc nuw nsw i32 %i.vr to i8
  %i.wa = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.vz, ptr %i.wa, align 1, !tbaa !9
  %i.wb = trunc i64 %i.vx to i32
  %i.wc = and i32 %i.vo, %i.wb
  %i.wd = lshr i64 %i.vx, %i.vs
  %i.we = and i64 %i.vy, %i.vp
  %i.wf = shl i64 %i.we, %i.vv
  %i.wg = or i64 %i.wf, %i.wd                     ; 2 uses
  %i.wh = lshr i64 %i.vy, %i.vs                   ; 2 uses
  %i.wi = trunc nuw nsw i32 %i.wc to i8
  %i.wj = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.wi, ptr %i.wj, align 2, !tbaa !9
  %i.wk = trunc i64 %i.wg to i32
  %i.wl = and i32 %i.vo, %i.wk
  %i.wm = lshr i64 %i.wg, %i.vs
  %i.wn = and i64 %i.wh, %i.vp
  %i.wo = shl i64 %i.wn, %i.vv
  %i.wp = or i64 %i.wo, %i.wm                     ; 2 uses
  %i.wq = lshr i64 %i.wh, %i.vs                   ; 2 uses
  %i.wr = trunc nuw nsw i32 %i.wl to i8
  %i.ws = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.wr, ptr %i.ws, align 1, !tbaa !9
  %i.wt = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.wu = trunc i64 %i.wp to i32
  %i.wv = and i32 %i.vo, %i.wu
  %i.ww = lshr i64 %i.wp, %i.vs
  %i.wx = and i64 %i.wq, %i.vp
  %i.wy = shl i64 %i.wx, %i.vv
  %i.wz = or i64 %i.wy, %i.ww                     ; 2 uses
  %i.xa = lshr i64 %i.wq, %i.vs                   ; 2 uses
  %i.xb = trunc nuw nsw i32 %i.wv to i8
  store i8 %i.xb, ptr %i.wt, align 4, !tbaa !9
  %i.xc = trunc i64 %i.wz to i32
  %i.xd = and i32 %i.vo, %i.xc
  %i.xe = lshr i64 %i.wz, %i.vs
  %i.xf = and i64 %i.xa, %i.vp
  %i.xg = shl i64 %i.xf, %i.vv
  %i.xh = or i64 %i.xg, %i.xe                     ; 2 uses
  %i.xi = lshr i64 %i.xa, %i.vs                   ; 2 uses
  %i.xj = trunc nuw nsw i32 %i.xd to i8
  %i.xk = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store i8 %i.xj, ptr %i.xk, align 1, !tbaa !9
  %i.xl = trunc i64 %i.xh to i32
  %i.xm = and i32 %i.vo, %i.xl
  %i.xn = lshr i64 %i.xh, %i.vs
  %i.xo = and i64 %i.xi, %i.vp
  %i.xp = shl i64 %i.xo, %i.vv
  %i.xq = or i64 %i.xp, %i.xn                     ; 2 uses
  %i.xr = lshr i64 %i.xi, %i.vs                   ; 2 uses
  %i.xs = trunc nuw nsw i32 %i.xm to i8
  %i.xt = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i8 %i.xs, ptr %i.xt, align 2, !tbaa !9
  %i.xu = trunc i64 %i.xq to i32
  %i.xv = and i32 %i.vo, %i.xu
  %i.xw = lshr i64 %i.xq, %i.vs
  %i.xx = and i64 %i.xr, %i.vp
  %i.xy = shl i64 %i.xx, %i.vv
  %i.xz = or i64 %i.xy, %i.xw                     ; 2 uses
  %i.ya = lshr i64 %i.xr, %i.vs                   ; 2 uses
  %i.yb = trunc nuw nsw i32 %i.xv to i8
  %i.yc = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  store i8 %i.yb, ptr %i.yc, align 1, !tbaa !9
  %i.yd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ye = trunc i64 %i.xz to i32
  %i.yf = and i32 %i.vo, %i.ye
  %i.yg = lshr i64 %i.xz, %i.vs
  %i.yh = and i64 %i.ya, %i.vp
  %i.yi = shl i64 %i.yh, %i.vv
  %i.yj = or i64 %i.yi, %i.yg                     ; 2 uses
  %i.yk = lshr i64 %i.ya, %i.vs                   ; 2 uses
  %i.yl = trunc nuw nsw i32 %i.yf to i8
  store i8 %i.yl, ptr %i.yd, align 8, !tbaa !9
  %i.ym = trunc i64 %i.yj to i32
  %i.yn = and i32 %i.vo, %i.ym
  %i.yo = lshr i64 %i.yj, %i.vs
  %i.yp = and i64 %i.yk, %i.vp
  %i.yq = shl i64 %i.yp, %i.vv
  %i.yr = or i64 %i.yq, %i.yo                     ; 2 uses
  %i.ys = lshr i64 %i.yk, %i.vs                   ; 2 uses
  %i.yt = trunc nuw nsw i32 %i.yn to i8
  %i.yu = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  store i8 %i.yt, ptr %i.yu, align 1, !tbaa !9
  %i.yv = trunc i64 %i.yr to i32
  %i.yw = and i32 %i.vo, %i.yv
  %i.yx = lshr i64 %i.yr, %i.vs
  %i.yy = and i64 %i.ys, %i.vp
  %i.yz = shl i64 %i.yy, %i.vv
  %i.za = or i64 %i.yz, %i.yx                     ; 2 uses
  %i.zb = lshr i64 %i.ys, %i.vs                   ; 2 uses
  %i.zc = trunc nuw nsw i32 %i.yw to i8
  %i.zd = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i8 %i.zc, ptr %i.zd, align 2, !tbaa !9
  %i.ze = trunc i64 %i.za to i32
  %i.zf = and i32 %i.vo, %i.ze
  %i.zg = lshr i64 %i.za, %i.vs
  %i.zh = and i64 %i.zb, %i.vp
  %i.zi = shl i64 %i.zh, %i.vv
  %i.zj = or i64 %i.zi, %i.zg                     ; 2 uses
  %i.zk = lshr i64 %i.zb, %i.vs                   ; 2 uses
  %i.zl = trunc nuw nsw i32 %i.zf to i8
  %i.zm = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  store i8 %i.zl, ptr %i.zm, align 1, !tbaa !9
  %i.zn = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.zo = trunc i64 %i.zj to i32
  %i.zp = and i32 %i.vo, %i.zo
  %i.zq = lshr i64 %i.zj, %i.vs
  %i.zr = and i64 %i.zk, %i.vp
  %i.zs = shl i64 %i.zr, %i.vv
  %i.zt = or i64 %i.zs, %i.zq                     ; 2 uses
  %i.zu = lshr i64 %i.zk, %i.vs                   ; 2 uses
  %i.zv = trunc nuw nsw i32 %i.zp to i8
  store i8 %i.zv, ptr %i.zn, align 4, !tbaa !9
  %i.zw = trunc i64 %i.zt to i32
  %i.zx = and i32 %i.vo, %i.zw
  %i.zy = lshr i64 %i.zt, %i.vs
  %i.zz = and i64 %i.zu, %i.vp
  %i.aaa = shl i64 %i.zz, %i.vv
  %i.aab = or i64 %i.aaa, %i.zy                   ; 2 uses
  %i.aac = lshr i64 %i.zu, %i.vs                  ; 2 uses
  %i.aad = trunc nuw nsw i32 %i.zx to i8
  %i.aae = getelementptr inbounds nuw i8, ptr %i.b, i64 13
  store i8 %i.aad, ptr %i.aae, align 1, !tbaa !9
  %i.aaf = trunc i64 %i.aab to i32
  %i.aag = and i32 %i.vo, %i.aaf
  %i.aah = lshr i64 %i.aab, %i.vs
  %i.aai = and i64 %i.aac, %i.vp
  %i.aaj = shl i64 %i.aai, %i.vv
  %i.aak = or i64 %i.aaj, %i.aah                  ; 2 uses
  %i.aal = lshr i64 %i.aac, %i.vs                 ; 2 uses
  %i.aam = trunc nuw nsw i32 %i.aag to i8
  %i.aan = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  store i8 %i.aam, ptr %i.aan, align 2, !tbaa !9
  %i.aao = trunc i64 %i.aak to i32
  %i.aap = and i32 %i.vo, %i.aao
  %i.aaq = lshr i64 %i.aak, %i.vs
  %i.aar = and i64 %i.aal, %i.vp
  %i.aas = shl i64 %i.aar, %i.vv
  %i.aat = or i64 %i.aas, %i.aaq
  %i.aau = lshr i64 %i.aal, %i.vs
  br label %.preheader318

.preheader318:                                    ; preds = %.preheader319.preheader, %.preheader319.us.preheader
  %.sink605 = phi i32 [ %i.uu, %.preheader319.preheader ], [ %i.aap, %.preheader319.us.preheader ]
  %.us-phi368 = phi i64 [ %i.vb, %.preheader319.preheader ], [ %i.aau, %.preheader319.us.preheader ]
  %.us-phi369 = phi i64 [ %i.va, %.preheader319.preheader ], [ %i.aat, %.preheader319.us.preheader ]
  %i.aav = trunc nuw nsw i32 %.sink605 to i8
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  store i8 %i.aav, ptr %i.aaw, align 1, !tbaa !9
  %.not260 = icmp eq i32 %i.lj, 0
  %i.aax = sext i32 %2 to i64                     ; 3 uses
  br i1 %.not260, label %.preheader318.split380.us, label %.preheader

.preheader318.split380.us:                        ; preds = %.preheader318
  %i.aay = load i32, ptr %i.a, align 16           ; 4 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aba = load i32, ptr %i.aaz, align 16         ; 4 uses
  %i.abb = load i32, ptr %invariant.gep.1, align 4 ; 4 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.abd = load i32, ptr %i.abc, align 4          ; 4 uses
  %i.abe = load i32, ptr %invariant.gep.2, align 8 ; 4 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.abg = load i32, ptr %i.abf, align 8          ; 4 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.abi = load i32, ptr %i.abh, align 4          ; 4 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.abk = load i32, ptr %i.abj, align 4          ; 4 uses
  br i1 %i.lo, label %.preheader.us.us, label %.preheader.us

.preheader.us.us:                                 ; preds = %.preheader318.split380.us, %.split374.us.us.split.us.us
  %indvars.iv507 = phi i64 [ %indvars.iv.next508, %.split374.us.us.split.us.us ], [ 0, %.preheader318.split380.us ] ; 2 uses
  %.1379.us.us = phi ptr [ %i.aga, %.split374.us.us.split.us.us ], [ %1, %.preheader318.split380.us ] ; 17 uses
  %i.abl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv507 ; 4 uses
  %i.abm = load i8, ptr %i.abl, align 4, !tbaa !9
  %i.abn = sext i8 %i.abm to i64
  %i.abo = getelementptr inbounds [4 x i8], ptr %i.lm, i64 %i.abn
  %i.abp = load i32, ptr %i.abo, align 4, !tbaa !3 ; 5 uses
  %i.abq = sub nsw i32 64, %i.abp                 ; 4 uses
  %i.abr = mul nsw i32 %i.abq, %i.aay
  %i.abs = mul nsw i32 %i.abp, %i.aba
  %i.abt = add i32 %i.abs, 32
  %i.abu = add i32 %i.abt, %i.abr
  %i.abv = mul nsw i32 %i.abq, %i.abb
  %i.abw = mul nsw i32 %i.abd, %i.abp
  %i.abx = add i32 %i.abv, 32
  %i.aby = add i32 %i.abx, %i.abw
  %i.abz = mul nsw i32 %i.abe, %i.abq
  %i.aca = mul nsw i32 %i.abg, %i.abp
  %i.acb = add i32 %i.abz, 32
  %i.acc = add i32 %i.acb, %i.aca
  %i.acd = mul nsw i32 %i.abi, %i.abq
  %i.ace = mul nsw i32 %i.abk, %i.abp
  %i.acf = add i32 %i.acd, 32
  %i.acg = add i32 %i.acf, %i.ace
  %.0304.us.us.us.us = ashr i32 %i.acg, 6         ; 4 uses
  %.0306.us.us.us.us = ashr i32 %i.acc, 6         ; 4 uses
  %.0308.us.us.us.us = ashr i32 %i.aby, 6         ; 4 uses
  %.0310.us.us.us.us = ashr i32 %i.abu, 6         ; 4 uses
  switch i32 %.0251, label %.preheader.us.us.unreachabledefault.a [
    i32 1, label %bb.u
    i32 2, label %bb.t
    i32 3, label %bb.s
    i32 0, label %bb.v
  ]

bb.s:                                             ; preds = %.preheader.us.us
  br label %bb.v

bb.t:                                             ; preds = %.preheader.us.us
  br label %bb.v

bb.u:                                             ; preds = %.preheader.us.us
  br label %bb.v

.preheader.us.us.unreachabledefault.a:            ; preds = %.preheader.us.us
  unreachable

default.unreachable:                              ; preds = %bb.bb, %bb.as, %bb.ao, %bb.ak, %.preheader.us, %bb.ad, %bb.z, %bb.v
  unreachable

bb.v:                                             ; preds = %.preheader.us.us, %bb.u, %bb.t, %bb.s
  %.1311.us.us.us.us = phi i32 [ %.0310.us.us.us.us, %.preheader.us.us ], [ %.0304.us.us.us.us, %bb.u ], [ %.0310.us.us.us.us, %bb.t ], [ %.0310.us.us.us.us, %bb.s ]
  %.1309.us.us.us.us = phi i32 [ %.0308.us.us.us.us, %.preheader.us.us ], [ %.0308.us.us.us.us, %bb.u ], [ %.0304.us.us.us.us, %bb.t ], [ %.0308.us.us.us.us, %bb.s ]
  %.1307.us.us.us.us = phi i32 [ %.0306.us.us.us.us, %.preheader.us.us ], [ %.0306.us.us.us.us, %bb.u ], [ %.0306.us.us.us.us, %bb.t ], [ %.0304.us.us.us.us, %bb.s ]
  %.1305.us.us.us.us = phi i32 [ %.0304.us.us.us.us, %.preheader.us.us ], [ %.0310.us.us.us.us, %bb.u ], [ %.0308.us.us.us.us, %bb.t ], [ %.0306.us.us.us.us, %bb.s ]
  %i.ach = trunc i32 %.1311.us.us.us.us to i8
  store i8 %i.ach, ptr %.1379.us.us, align 1, !tbaa !9
  %i.aci = trunc i32 %.1309.us.us.us.us to i8
  %i.acj = getelementptr inbounds nuw i8, ptr %.1379.us.us, i64 1
  store i8 %i.aci, ptr %i.acj, align 1, !tbaa !9
  %i.ack = trunc i32 %.1307.us.us.us.us to i8
  %i.acl = getelementptr inbounds nuw i8, ptr %.1379.us.us, i64 2
  store i8 %i.ack, ptr %i.acl, align 1, !tbaa !9
  %i.acm = trunc i32 %.1305.us.us.us.us to i8
  %i.acn = getelementptr inbounds nuw i8, ptr %.1379.us.us, i64 3
  store i8 %i.acm, ptr %i.acn, align 1, !tbaa !9
  %i.aco = getelementptr inbounds nuw i8, ptr %i.abl, i64 1
  %i.acp = load i8, ptr %i.aco, align 1, !tbaa !9
  %i.acq = sext i8 %i.acp to i64
  %i.acr = getelementptr inbounds [4 x i8], ptr %i.lm, i64 %i.acq
  %i.acs = load i32, ptr %i.acr, align 4, !tbaa !3 ; 5 uses
  %i.act = sub nsw i32 64, %i.acs                 ; 4 uses
  %i.acu = mul nsw i32 %i.act, %i.aay
  %i.acv = mul nsw i32 %i.acs, %i.aba
  %i.acw = add i32 %i.acv, 32
  %i.acx = add i32 %i.acw, %i.acu
  %i.acy = mul nsw i32 %i.act, %i.abb
  %i.acz = mul nsw i32 %i.abd, %i.acs
  %i.ada = add i32 %i.acy, 32
  %i.adb = add i32 %i.ada, %i.acz
  %i.adc = mul nsw i32 %i.abe, %i.act
  %i.add = mul nsw i32 %i.abg, %i.acs
  %i.ade = add i32 %i.adc, 32
  %i.adf = add i32 %i.ade, %i.add
  %i.adg = mul nsw i32 %i.abi, %i.act
  %i.adh = mul nsw i32 %i.abk, %i.acs
  %i.adi = add i32 %i.adg, 32
  %i.adj = add i32 %i.adi, %i.adh
  %.0304.us.us.us.us.1 = ashr i32 %i.adj, 6       ; 4 uses
  %.0306.us.us.us.us.1 = ashr i32 %i.adf, 6       ; 4 uses
  %.0308.us.us.us.us.1 = ashr i32 %i.adb, 6       ; 4 uses
  %.0310.us.us.us.us.1 = ashr i32 %i.acx, 6       ; 4 uses
  switch i32 %.0251, label %default.unreachable [
    i32 1, label %bb.y
    i32 2, label %bb.x
    i32 3, label %bb.w
    i32 0, label %bb.z
  ]

bb.w:                                             ; preds = %bb.v
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %.1311.us.us.us.us.1 = phi i32 [ %.0310.us.us.us.us.1, %bb.v ], [ %.0304.us.us.us.us.1, %bb.y ], [ %.0310.us.us.us.us.1, %bb.x ], [ %.0310.us.us.us.us.1, %bb.w ]
  %.1309.us.us.us.us.1 = phi i32 [ %.0308.us.us.us.us.1, %bb.v ], [ %.0308.us.us.us.us.1, %bb.y ], [ %.0304.us.us.us.us.1, %bb.x ], [ %.0308.us.us.us.us.1, %bb.w ]
  %.1307.us.us.us.us.1 = phi i32 [ %.0306.us.us.us.us.1, %bb.v ], [ %.0306.us.us.us.us.1, %bb.y ], [ %.0306.us.us.us.us.1, %bb.x ], [ %.0304.us.us.us.us.1, %bb.w ]
  %.1305.us.us.us.us.1 = phi i32 [ %.0304.us.us.us.us.1, %bb.v ], [ %.0310.us.us.us.us.1, %bb.y ], [ %.0308.us.us.us.us.1, %bb.x ], [ %.0306.us.us.us.us.1, %bb.w ]
  %i.adk = trunc i32 %.1311.us.us.us.us.1 to i8
  %i.adl = getelementptr inbounds nuw i8, ptr %.1379.us.us, i64 4
  store i8 %i.adk, ptr %i.adl, align 1, !tbaa !9
  %i.adm = trunc i32 %.1309.us.us.us.us.1 to i8
  %i.adn = getelementptr inbounds nuw i8, ptr %.1379.us.us, i64 5
  store i8 %i.adm, ptr %i.adn, align 1, !tbaa !9
  %i.ado = trunc i32 %.1307.us.us.us.us.1 to i8
  %i.adp = getelementptr inbounds nuw i8, ptr %.1379.us.us, i64 6
  store i8 %i.ado, ptr %i.adp, align 1, !tbaa !9
  %i.adq = trunc i32 %.1305.us.us.us.us.1 to i8
  %i.adr = getelementptr inbounds nuw i8, ptr %.1379.us.us, i64 7
  store i8 %i.adq, ptr %i.adr, align 1, !tbaa !9
  %i.ads = getelementptr inbounds nuw i8, ptr %i.abl, i64 2
  %i.adt = load i8, ptr %i.ads, align 2, !tbaa !9
  %i.adu = sext i8 %i.adt to i64
  %i.adv = getelementptr inbounds [4 x i8], ptr %i.lm, i64 %i.adu
  %i.adw = load i32, ptr %i.adv, align 4, !tbaa !3 ; 5 uses
  %i.adx = sub nsw i32 64, %i.adw                 ; 4 uses
  %i.ady = mul nsw i32 %i.adx, %i.aay
  %i.adz = mul nsw i32 %i.adw, %i.aba
  %i.aea = add i32 %i.adz, 32
  %i.aeb = add i32 %i.aea, %i.ady
  %i.aec = mul nsw i32 %i.adx, %i.abb
  %i.aed = mul nsw i32 %i.abd, %i.adw
  %i.aee = add i32 %i.aec, 32
  %i.aef = add i32 %i.aee, %i.aed
  %i.aeg = mul nsw i32 %i.abe, %i.adx
  %i.aeh = mul nsw i32 %i.abg, %i.adw
  %i.aei = add i32 %i.aeg, 32
  %i.aej = add i32 %i.aei, %i.aeh
  %i.aek = mul nsw i32 %i.abi, %i.adx
  %i.ael = mul nsw i32 %i.abk, %i.adw
  %i.aem = add i32 %i.aek, 32
  %i.aen = add i32 %i.aem, %i.ael
  %.0304.us.us.us.us.2 = ashr i32 %i.aen, 6       ; 4 uses
  %.0306.us.us.us.us.2 = ashr i32 %i.aej, 6       ; 4 uses
  %.0308.us.us.us.us.2 = ashr i32 %i.aef, 6       ; 4 uses
  %.0310.us.us.us.us.2 = ashr i32 %i.aeb, 6       ; 4 uses
  switch i32 %.0251, label %default.unreachable [
    i32 1, label %bb.ac
    i32 2, label %bb.ab
    i32 3, label %bb.aa
    i32 0, label %bb.ad
  ]

bb.aa:                                            ; preds = %bb.z
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  br label %bb.ad

bb.ac:                                            ; preds = %bb.z
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z
  %.1311.us.us.us.us.2 = phi i32 [ %.0310.us.us.us.us.2, %bb.z ], [ %.0304.us.us.us.us.2, %bb.ac ], [ %.0310.us.us.us.us.2, %bb.ab ], [ %.0310.us.us.us.us.2, %bb.aa ]
  %.1309.us.us.us.us.2 = phi i32 [ %.0308.us.us.us.us.2, %bb.z ], [ %.0308.us.us.us.us.2, %bb.ac ], [ %.0304.us.us.us.us.2, %bb.ab ], [ %.0308.us.us.us.us.2, %bb.aa ]
  %.1307.us.us.us.us.2 = phi i32 [ %.0306.us.us.us.us.2, %bb.z ], [ %.0306.us.us.us.us.2, %bb.ac ], [ %.0306.us.us.us.us.2, %bb.ab ], [ %.0304.us.us.us.us.2, %bb.aa ]
  %.1305.us.us.us.us.2 = phi i32 [ %.0304.us.us.us.us.2, %bb.z ], [ %.0310.us.us.us.us.2, %bb.ac ], [ %.0308.us.us.us.us.2, %bb.ab ], [ %.0306.us.us.us.us.2, %bb.aa ]
  %i.aeo = trunc i32 %.1311.us.us.us.us.2 to i8
  %i.aep = getelementptr inbounds nuw i8, ptr %.1379.us.us, i64 8
  store i8 %i.aeo, ptr %i.aep, align 1, !tbaa !9
  %i.aeq = trunc i32 %.1309.us.us.us.us.2 to i8
  %i.aer = getelementptr inbounds nuw i8, ptr %.1379.us.us, i64 9
  store i8 %i.aeq, ptr %i.aer, align 1, !tbaa !9
  %i.aes = trunc i32 %.1307.us.us.us.us.2 to i8
  %i.aet = getelementptr inbounds nuw i8, ptr %.1379.us.us, i64 10
  store i8 %i.aes, ptr %i.aet, align 1, !tbaa !9
  %i.aeu = trunc i32 %.1305.us.us.us.us.2 to i8
  %i.aev = getelementptr inbounds nuw i8, ptr %.1379.us.us, i64 11
  store i8 %i.aeu, ptr %i.aev, align 1, !tbaa !9
  %i.aew = getelementptr inbounds nuw i8, ptr %i.abl, i64 3
  %i.aex = load i8, ptr %i.aew, align 1, !tbaa !9
  %i.aey = sext i8 %i.aex to i64
  %i.aez = getelementptr inbounds [4 x i8], ptr %i.lm, i64 %i.aey
  %i.afa = load i32, ptr %i.aez, align 4, !tbaa !3 ; 5 uses
  %i.afb = sub nsw i32 64, %i.afa                 ; 4 uses
  %i.afc = mul nsw i32 %i.afb, %i.aay
  %i.afd = mul nsw i32 %i.afa, %i.aba
  %i.afe = add i32 %i.afd, 32
  %i.aff = add i32 %i.afe, %i.afc
  %i.afg = mul nsw i32 %i.afb, %i.abb
  %i.afh = mul nsw i32 %i.abd, %i.afa
  %i.afi = add i32 %i.afg, 32
  %i.afj = add i32 %i.afi, %i.afh
  %i.afk = mul nsw i32 %i.abe, %i.afb
  %i.afl = mul nsw i32 %i.abg, %i.afa
  %i.afm = add i32 %i.afk, 32
  %i.afn = add i32 %i.afm, %i.afl
  %i.afo = mul nsw i32 %i.abi, %i.afb
  %i.afp = mul nsw i32 %i.abk, %i.afa
  %i.afq = add i32 %i.afo, 32
  %i.afr = add i32 %i.afq, %i.afp
  %.0304.us.us.us.us.3 = ashr i32 %i.afr, 6       ; 4 uses
  %.0306.us.us.us.us.3 = ashr i32 %i.afn, 6       ; 4 uses
  %.0308.us.us.us.us.3 = ashr i32 %i.afj, 6       ; 4 uses
  %.0310.us.us.us.us.3 = ashr i32 %i.aff, 6       ; 4 uses
  switch i32 %.0251, label %default.unreachable [
    i32 1, label %bb.ag
    i32 2, label %bb.af
    i32 3, label %bb.ae
    i32 0, label %.split374.us.us.split.us.us
  ]

bb.ae:                                            ; preds = %bb.ad
  br label %.split374.us.us.split.us.us

bb.af:                                            ; preds = %bb.ad
  br label %.split374.us.us.split.us.us

bb.ag:                                            ; preds = %bb.ad
  br label %.split374.us.us.split.us.us

.split374.us.us.split.us.us:                      ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad
  %.1311.us.us.us.us.3 = phi i32 [ %.0310.us.us.us.us.3, %bb.ad ], [ %.0304.us.us.us.us.3, %bb.ag ], [ %.0310.us.us.us.us.3, %bb.af ], [ %.0310.us.us.us.us.3, %bb.ae ]
  %.1309.us.us.us.us.3 = phi i32 [ %.0308.us.us.us.us.3, %bb.ad ], [ %.0308.us.us.us.us.3, %bb.ag ], [ %.0304.us.us.us.us.3, %bb.af ], [ %.0308.us.us.us.us.3, %bb.ae ]
  %.1307.us.us.us.us.3 = phi i32 [ %.0306.us.us.us.us.3, %bb.ad ], [ %.0306.us.us.us.us.3, %bb.ag ], [ %.0306.us.us.us.us.3, %bb.af ], [ %.0304.us.us.us.us.3, %bb.ae ]
  %.1305.us.us.us.us.3 = phi i32 [ %.0304.us.us.us.us.3, %bb.ad ], [ %.0310.us.us.us.us.3, %bb.ag ], [ %.0308.us.us.us.us.3, %bb.af ], [ %.0306.us.us.us.us.3, %bb.ae ]
  %i.afs = trunc i32 %.1311.us.us.us.us.3 to i8
  %i.aft = getelementptr inbounds nuw i8, ptr %.1379.us.us, i64 12
  store i8 %i.afs, ptr %i.aft, align 1, !tbaa !9
  %i.afu = trunc i32 %.1309.us.us.us.us.3 to i8
  %i.afv = getelementptr inbounds nuw i8, ptr %.1379.us.us, i64 13
  store i8 %i.afu, ptr %i.afv, align 1, !tbaa !9
  %i.afw = trunc i32 %.1307.us.us.us.us.3 to i8
  %i.afx = getelementptr inbounds nuw i8, ptr %.1379.us.us, i64 14
  store i8 %i.afw, ptr %i.afx, align 1, !tbaa !9
  %i.afy = trunc i32 %.1305.us.us.us.us.3 to i8
  %i.afz = getelementptr inbounds nuw i8, ptr %.1379.us.us, i64 15
  store i8 %i.afy, ptr %i.afz, align 1, !tbaa !9
  %i.aga = getelementptr inbounds i8, ptr %.1379.us.us, i64 %i.aax
  %indvars.iv.next508 = add nuw nsw i64 %indvars.iv507, 1 ; 2 uses
  %exitcond510.not = icmp eq i64 %indvars.iv.next508, 4
  br i1 %exitcond510.not, label %.loopexit, label %.preheader.us.us, !llvm.loop !32

.preheader.us:                                    ; preds = %.preheader318.split380.us, %.split374.us.us.split
  %indvars.iv499 = phi i64 [ %indvars.iv.next500, %.split374.us.us.split ], [ 0, %.preheader318.split380.us ] ; 3 uses
  %.1379.us = phi ptr [ %i.anw, %.split374.us.us.split ], [ %1, %.preheader318.split380.us ] ; 17 uses
  %i.agb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv499 ; 4 uses
  %i.agc = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %indvars.iv499 ; 4 uses
  %i.agd = load i8, ptr %i.agc, align 4, !tbaa !9
  %i.age = shl i8 %i.agd, 1
  %i.agf = and i8 %i.age, 6
  %i.agg = zext nneg i8 %i.agf to i64
  %i.agh = load i8, ptr %i.agb, align 4, !tbaa !9
  %i.agi = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.agg ; 8 uses
  %i.agj = load i32, ptr %i.agi, align 16, !tbaa !3
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agi, i64 16
  %i.agl = load i32, ptr %i.agk, align 16, !tbaa !3
  %i.agm = sext i8 %i.agh to i64
  %i.agn = getelementptr inbounds [4 x i8], ptr %i.lm, i64 %i.agm
  %i.ago = load i32, ptr %i.agn, align 4, !tbaa !3 ; 5 uses
  %i.agp = sub nsw i32 64, %i.ago                 ; 4 uses
  %i.agq = mul nsw i32 %i.agp, %i.agj
  %i.agr = mul nsw i32 %i.ago, %i.agl
  %i.ags = add i32 %i.agr, 32
  %i.agt = add i32 %i.ags, %i.agq
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agi, i64 4
  %i.agv = load i32, ptr %i.agu, align 4, !tbaa !3
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agi, i64 20
  %i.agx = load i32, ptr %i.agw, align 4, !tbaa !3
  %i.agy = mul nsw i32 %i.agp, %i.agv
  %i.agz = mul nsw i32 %i.agx, %i.ago
  %i.aha = add i32 %i.agy, 32
  %i.ahb = add i32 %i.aha, %i.agz
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agi, i64 8
  %i.ahd = load i32, ptr %i.ahc, align 8, !tbaa !3
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.agi, i64 24
  %i.ahf = load i32, ptr %i.ahe, align 8, !tbaa !3
  %i.ahg = mul nsw i32 %i.ahd, %i.agp
  %i.ahh = mul nsw i32 %i.ahf, %i.ago
  %i.ahi = add i32 %i.ahg, 32
  %i.ahj = add i32 %i.ahi, %i.ahh
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.agi, i64 12
  %i.ahl = load i32, ptr %i.ahk, align 4, !tbaa !3
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.agi, i64 28
  %i.ahn = load i32, ptr %i.ahm, align 4, !tbaa !3
  %i.aho = mul nsw i32 %i.ahl, %i.agp
  %i.ahp = mul nsw i32 %i.ahn, %i.ago
  %i.ahq = add i32 %i.aho, 32
  %i.ahr = add i32 %i.ahq, %i.ahp
  %.0304.us.us = ashr i32 %i.ahr, 6               ; 4 uses
  %.0306.us.us = ashr i32 %i.ahj, 6               ; 4 uses
  %.0308.us.us = ashr i32 %i.ahb, 6               ; 4 uses
  %.0310.us.us = ashr i32 %i.agt, 6               ; 4 uses
  switch i32 %.0251, label %default.unreachable [
    i32 1, label %bb.aj
    i32 2, label %bb.ai
    i32 3, label %bb.ah
    i32 0, label %bb.ak
  ]

bb.ah:                                            ; preds = %.preheader.us
  br label %bb.ak

bb.ai:                                            ; preds = %.preheader.us
  br label %bb.ak

bb.aj:                                            ; preds = %.preheader.us
  br label %bb.ak

bb.ak:                                            ; preds = %.preheader.us, %bb.aj, %bb.ai, %bb.ah
  %.1311.us.us = phi i32 [ %.0310.us.us, %.preheader.us ], [ %.0304.us.us, %bb.aj ], [ %.0310.us.us, %bb.ai ], [ %.0310.us.us, %bb.ah ]
  %.1309.us.us = phi i32 [ %.0308.us.us, %.preheader.us ], [ %.0308.us.us, %bb.aj ], [ %.0304.us.us, %bb.ai ], [ %.0308.us.us, %bb.ah ]
  %.1307.us.us = phi i32 [ %.0306.us.us, %.preheader.us ], [ %.0306.us.us, %bb.aj ], [ %.0306.us.us, %bb.ai ], [ %.0304.us.us, %bb.ah ]
  %.1305.us.us = phi i32 [ %.0304.us.us, %.preheader.us ], [ %.0310.us.us, %bb.aj ], [ %.0308.us.us, %bb.ai ], [ %.0306.us.us, %bb.ah ]
  %i.ahs = trunc i32 %.1311.us.us to i8
  store i8 %i.ahs, ptr %.1379.us, align 1, !tbaa !9
  %i.aht = trunc i32 %.1309.us.us to i8
  %i.ahu = getelementptr inbounds nuw i8, ptr %.1379.us, i64 1
  store i8 %i.aht, ptr %i.ahu, align 1, !tbaa !9
  %i.ahv = trunc i32 %.1307.us.us to i8
  %i.ahw = getelementptr inbounds nuw i8, ptr %.1379.us, i64 2
  store i8 %i.ahv, ptr %i.ahw, align 1, !tbaa !9
  %i.ahx = trunc i32 %.1305.us.us to i8
  %i.ahy = getelementptr inbounds nuw i8, ptr %.1379.us, i64 3
  store i8 %i.ahx, ptr %i.ahy, align 1, !tbaa !9
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.agc, i64 1
  %i.aia = load i8, ptr %i.ahz, align 1, !tbaa !9
  %i.aib = shl i8 %i.aia, 1
  %i.aic = and i8 %i.aib, 6
  %i.aid = zext nneg i8 %i.aic to i64
  %i.aie = getelementptr inbounds nuw i8, ptr %i.agb, i64 1
  %i.aif = load i8, ptr %i.aie, align 1, !tbaa !9
  %i.aig = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.aid ; 8 uses
  %i.aih = load i32, ptr %i.aig, align 16, !tbaa !3
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aig, i64 16
  %i.aij = load i32, ptr %i.aii, align 16, !tbaa !3
  %i.aik = sext i8 %i.aif to i64
  %i.ail = getelementptr inbounds [4 x i8], ptr %i.lm, i64 %i.aik
  %i.aim = load i32, ptr %i.ail, align 4, !tbaa !3 ; 5 uses
  %i.ain = sub nsw i32 64, %i.aim                 ; 4 uses
  %i.aio = mul nsw i32 %i.ain, %i.aih
  %i.aip = mul nsw i32 %i.aim, %i.aij
  %i.aiq = add i32 %i.aip, 32
  %i.air = add i32 %i.aiq, %i.aio
  %i.ais = getelementptr inbounds nuw i8, ptr %i.aig, i64 4
  %i.ait = load i32, ptr %i.ais, align 4, !tbaa !3
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.aig, i64 20
  %i.aiv = load i32, ptr %i.aiu, align 4, !tbaa !3
  %i.aiw = mul nsw i32 %i.ain, %i.ait
  %i.aix = mul nsw i32 %i.aiv, %i.aim
  %i.aiy = add i32 %i.aiw, 32
  %i.aiz = add i32 %i.aiy, %i.aix
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aig, i64 8
  %i.ajb = load i32, ptr %i.aja, align 8, !tbaa !3
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aig, i64 24
  %i.ajd = load i32, ptr %i.ajc, align 8, !tbaa !3
  %i.aje = mul nsw i32 %i.ajb, %i.ain
  %i.ajf = mul nsw i32 %i.ajd, %i.aim
  %i.ajg = add i32 %i.aje, 32
  %i.ajh = add i32 %i.ajg, %i.ajf
  %i.aji = getelementptr inbounds nuw i8, ptr %i.aig, i64 12
  %i.ajj = load i32, ptr %i.aji, align 4, !tbaa !3
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.aig, i64 28
  %i.ajl = load i32, ptr %i.ajk, align 4, !tbaa !3
  %i.ajm = mul nsw i32 %i.ajj, %i.ain
  %i.ajn = mul nsw i32 %i.ajl, %i.aim
  %i.ajo = add i32 %i.ajm, 32
  %i.ajp = add i32 %i.ajo, %i.ajn
  %.0304.us.us.1 = ashr i32 %i.ajp, 6             ; 4 uses
  %.0306.us.us.1 = ashr i32 %i.ajh, 6             ; 4 uses
  %.0308.us.us.1 = ashr i32 %i.aiz, 6             ; 4 uses
  %.0310.us.us.1 = ashr i32 %i.air, 6             ; 4 uses
  switch i32 %.0251, label %default.unreachable [
    i32 1, label %bb.an
    i32 2, label %bb.am
    i32 3, label %bb.al
    i32 0, label %bb.ao
  ]

bb.al:                                            ; preds = %bb.ak
  br label %bb.ao

bb.am:                                            ; preds = %bb.ak
  br label %bb.ao

bb.an:                                            ; preds = %bb.ak
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al, %bb.ak
  %.1311.us.us.1 = phi i32 [ %.0310.us.us.1, %bb.ak ], [ %.0304.us.us.1, %bb.an ], [ %.0310.us.us.1, %bb.am ], [ %.0310.us.us.1, %bb.al ]
  %.1309.us.us.1 = phi i32 [ %.0308.us.us.1, %bb.ak ], [ %.0308.us.us.1, %bb.an ], [ %.0304.us.us.1, %bb.am ], [ %.0308.us.us.1, %bb.al ]
  %.1307.us.us.1 = phi i32 [ %.0306.us.us.1, %bb.ak ], [ %.0306.us.us.1, %bb.an ], [ %.0306.us.us.1, %bb.am ], [ %.0304.us.us.1, %bb.al ]
  %.1305.us.us.1 = phi i32 [ %.0304.us.us.1, %bb.ak ], [ %.0310.us.us.1, %bb.an ], [ %.0308.us.us.1, %bb.am ], [ %.0306.us.us.1, %bb.al ]
  %i.ajq = trunc i32 %.1311.us.us.1 to i8
  %i.ajr = getelementptr inbounds nuw i8, ptr %.1379.us, i64 4
  store i8 %i.ajq, ptr %i.ajr, align 1, !tbaa !9
  %i.ajs = trunc i32 %.1309.us.us.1 to i8
  %i.ajt = getelementptr inbounds nuw i8, ptr %.1379.us, i64 5
  store i8 %i.ajs, ptr %i.ajt, align 1, !tbaa !9
  %i.aju = trunc i32 %.1307.us.us.1 to i8
  %i.ajv = getelementptr inbounds nuw i8, ptr %.1379.us, i64 6
  store i8 %i.aju, ptr %i.ajv, align 1, !tbaa !9
  %i.ajw = trunc i32 %.1305.us.us.1 to i8
  %i.ajx = getelementptr inbounds nuw i8, ptr %.1379.us, i64 7
  store i8 %i.ajw, ptr %i.ajx, align 1, !tbaa !9
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.agc, i64 2
  %i.ajz = load i8, ptr %i.ajy, align 2, !tbaa !9
  %i.aka = shl i8 %i.ajz, 1
  %i.akb = and i8 %i.aka, 6
  %i.akc = zext nneg i8 %i.akb to i64
  %i.akd = getelementptr inbounds nuw i8, ptr %i.agb, i64 2
  %i.ake = load i8, ptr %i.akd, align 2, !tbaa !9
  %i.akf = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.akc ; 8 uses
  %i.akg = load i32, ptr %i.akf, align 16, !tbaa !3
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akf, i64 16
  %i.aki = load i32, ptr %i.akh, align 16, !tbaa !3
  %i.akj = sext i8 %i.ake to i64
  %i.akk = getelementptr inbounds [4 x i8], ptr %i.lm, i64 %i.akj
  %i.akl = load i32, ptr %i.akk, align 4, !tbaa !3 ; 5 uses
  %i.akm = sub nsw i32 64, %i.akl                 ; 4 uses
  %i.akn = mul nsw i32 %i.akm, %i.akg
  %i.ako = mul nsw i32 %i.akl, %i.aki
  %i.akp = add i32 %i.ako, 32
  %i.akq = add i32 %i.akp, %i.akn
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akf, i64 4
  %i.aks = load i32, ptr %i.akr, align 4, !tbaa !3
  %i.akt = getelementptr inbounds nuw i8, ptr %i.akf, i64 20
  %i.aku = load i32, ptr %i.akt, align 4, !tbaa !3
  %i.akv = mul nsw i32 %i.akm, %i.aks
  %i.akw = mul nsw i32 %i.aku, %i.akl
  %i.akx = add i32 %i.akv, 32
  %i.aky = add i32 %i.akx, %i.akw
  %i.akz = getelementptr inbounds nuw i8, ptr %i.akf, i64 8
  %i.ala = load i32, ptr %i.akz, align 8, !tbaa !3
  %i.alb = getelementptr inbounds nuw i8, ptr %i.akf, i64 24
  %i.alc = load i32, ptr %i.alb, align 8, !tbaa !3
  %i.ald = mul nsw i32 %i.ala, %i.akm
  %i.ale = mul nsw i32 %i.alc, %i.akl
  %i.alf = add i32 %i.ald, 32
  %i.alg = add i32 %i.alf, %i.ale
  %i.alh = getelementptr inbounds nuw i8, ptr %i.akf, i64 12
  %i.ali = load i32, ptr %i.alh, align 4, !tbaa !3
  %i.alj = getelementptr inbounds nuw i8, ptr %i.akf, i64 28
  %i.alk = load i32, ptr %i.alj, align 4, !tbaa !3
  %i.all = mul nsw i32 %i.ali, %i.akm
  %i.alm = mul nsw i32 %i.alk, %i.akl
  %i.aln = add i32 %i.all, 32
  %i.alo = add i32 %i.aln, %i.alm
  %.0304.us.us.2 = ashr i32 %i.alo, 6             ; 4 uses
  %.0306.us.us.2 = ashr i32 %i.alg, 6             ; 4 uses
  %.0308.us.us.2 = ashr i32 %i.aky, 6             ; 4 uses
  %.0310.us.us.2 = ashr i32 %i.akq, 6             ; 4 uses
  switch i32 %.0251, label %default.unreachable [
    i32 1, label %bb.ar
    i32 2, label %bb.aq
    i32 3, label %bb.ap
    i32 0, label %bb.as
  ]

bb.ap:                                            ; preds = %bb.ao
  br label %bb.as

bb.aq:                                            ; preds = %bb.ao
  br label %bb.as

bb.ar:                                            ; preds = %bb.ao
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao
  %.1311.us.us.2 = phi i32 [ %.0310.us.us.2, %bb.ao ], [ %.0304.us.us.2, %bb.ar ], [ %.0310.us.us.2, %bb.aq ], [ %.0310.us.us.2, %bb.ap ]
  %.1309.us.us.2 = phi i32 [ %.0308.us.us.2, %bb.ao ], [ %.0308.us.us.2, %bb.ar ], [ %.0304.us.us.2, %bb.aq ], [ %.0308.us.us.2, %bb.ap ]
  %.1307.us.us.2 = phi i32 [ %.0306.us.us.2, %bb.ao ], [ %.0306.us.us.2, %bb.ar ], [ %.0306.us.us.2, %bb.aq ], [ %.0304.us.us.2, %bb.ap ]
  %.1305.us.us.2 = phi i32 [ %.0304.us.us.2, %bb.ao ], [ %.0310.us.us.2, %bb.ar ], [ %.0308.us.us.2, %bb.aq ], [ %.0306.us.us.2, %bb.ap ]
  %i.alp = trunc i32 %.1311.us.us.2 to i8
  %i.alq = getelementptr inbounds nuw i8, ptr %.1379.us, i64 8
  store i8 %i.alp, ptr %i.alq, align 1, !tbaa !9
  %i.alr = trunc i32 %.1309.us.us.2 to i8
  %i.als = getelementptr inbounds nuw i8, ptr %.1379.us, i64 9
  store i8 %i.alr, ptr %i.als, align 1, !tbaa !9
  %i.alt = trunc i32 %.1307.us.us.2 to i8
  %i.alu = getelementptr inbounds nuw i8, ptr %.1379.us, i64 10
  store i8 %i.alt, ptr %i.alu, align 1, !tbaa !9
  %i.alv = trunc i32 %.1305.us.us.2 to i8
  %i.alw = getelementptr inbounds nuw i8, ptr %.1379.us, i64 11
  store i8 %i.alv, ptr %i.alw, align 1, !tbaa !9
  %i.alx = getelementptr inbounds nuw i8, ptr %i.agc, i64 3
  %i.aly = load i8, ptr %i.alx, align 1, !tbaa !9
  %i.alz = shl i8 %i.aly, 1
  %i.ama = and i8 %i.alz, 6
  %i.amb = zext nneg i8 %i.ama to i64
  %i.amc = getelementptr inbounds nuw i8, ptr %i.agb, i64 3
  %i.amd = load i8, ptr %i.amc, align 1, !tbaa !9
  %i.ame = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.amb ; 8 uses
  %i.amf = load i32, ptr %i.ame, align 16, !tbaa !3
  %i.amg = getelementptr inbounds nuw i8, ptr %i.ame, i64 16
  %i.amh = load i32, ptr %i.amg, align 16, !tbaa !3
  %i.ami = sext i8 %i.amd to i64
  %i.amj = getelementptr inbounds [4 x i8], ptr %i.lm, i64 %i.ami
  %i.amk = load i32, ptr %i.amj, align 4, !tbaa !3 ; 5 uses
  %i.aml = sub nsw i32 64, %i.amk                 ; 4 uses
  %i.amm = mul nsw i32 %i.aml, %i.amf
  %i.amn = mul nsw i32 %i.amk, %i.amh
  %i.amo = add i32 %i.amn, 32
  %i.amp = add i32 %i.amo, %i.amm
  %i.amq = getelementptr inbounds nuw i8, ptr %i.ame, i64 4
  %i.amr = load i32, ptr %i.amq, align 4, !tbaa !3
  %i.ams = getelementptr inbounds nuw i8, ptr %i.ame, i64 20
  %i.amt = load i32, ptr %i.ams, align 4, !tbaa !3
  %i.amu = mul nsw i32 %i.aml, %i.amr
  %i.amv = mul nsw i32 %i.amt, %i.amk
  %i.amw = add i32 %i.amu, 32
  %i.amx = add i32 %i.amw, %i.amv
  %i.amy = getelementptr inbounds nuw i8, ptr %i.ame, i64 8
  %i.amz = load i32, ptr %i.amy, align 8, !tbaa !3
  %i.ana = getelementptr inbounds nuw i8, ptr %i.ame, i64 24
  %i.anb = load i32, ptr %i.ana, align 8, !tbaa !3
  %i.anc = mul nsw i32 %i.amz, %i.aml
  %i.and = mul nsw i32 %i.anb, %i.amk
  %i.ane = add i32 %i.anc, 32
  %i.anf = add i32 %i.ane, %i.and
  %i.ang = getelementptr inbounds nuw i8, ptr %i.ame, i64 12
  %i.anh = load i32, ptr %i.ang, align 4, !tbaa !3
  %i.ani = getelementptr inbounds nuw i8, ptr %i.ame, i64 28
  %i.anj = load i32, ptr %i.ani, align 4, !tbaa !3
  %i.ank = mul nsw i32 %i.anh, %i.aml
  %i.anl = mul nsw i32 %i.anj, %i.amk
  %i.anm = add i32 %i.ank, 32
  %i.ann = add i32 %i.anm, %i.anl
  %.0304.us.us.3 = ashr i32 %i.ann, 6             ; 4 uses
  %.0306.us.us.3 = ashr i32 %i.anf, 6             ; 4 uses
  %.0308.us.us.3 = ashr i32 %i.amx, 6             ; 4 uses
  %.0310.us.us.3 = ashr i32 %i.amp, 6             ; 4 uses
  switch i32 %.0251, label %default.unreachable [
    i32 1, label %bb.av
    i32 2, label %bb.au
    i32 3, label %bb.at
    i32 0, label %.split374.us.us.split
  ]

bb.at:                                            ; preds = %bb.as
  br label %.split374.us.us.split

bb.au:                                            ; preds = %bb.as
  br label %.split374.us.us.split

bb.av:                                            ; preds = %bb.as
  br label %.split374.us.us.split

.split374.us.us.split:                            ; preds = %bb.av, %bb.au, %bb.at, %bb.as
  %.1311.us.us.3 = phi i32 [ %.0310.us.us.3, %bb.as ], [ %.0304.us.us.3, %bb.av ], [ %.0310.us.us.3, %bb.au ], [ %.0310.us.us.3, %bb.at ]
  %.1309.us.us.3 = phi i32 [ %.0308.us.us.3, %bb.as ], [ %.0308.us.us.3, %bb.av ], [ %.0304.us.us.3, %bb.au ], [ %.0308.us.us.3, %bb.at ]
  %.1307.us.us.3 = phi i32 [ %.0306.us.us.3, %bb.as ], [ %.0306.us.us.3, %bb.av ], [ %.0306.us.us.3, %bb.au ], [ %.0304.us.us.3, %bb.at ]
  %.1305.us.us.3 = phi i32 [ %.0304.us.us.3, %bb.as ], [ %.0310.us.us.3, %bb.av ], [ %.0308.us.us.3, %bb.au ], [ %.0306.us.us.3, %bb.at ]
  %i.ano = trunc i32 %.1311.us.us.3 to i8
  %i.anp = getelementptr inbounds nuw i8, ptr %.1379.us, i64 12
  store i8 %i.ano, ptr %i.anp, align 1, !tbaa !9
  %i.anq = trunc i32 %.1309.us.us.3 to i8
  %i.anr = getelementptr inbounds nuw i8, ptr %.1379.us, i64 13
  store i8 %i.anq, ptr %i.anr, align 1, !tbaa !9
  %i.ans = trunc i32 %.1307.us.us.3 to i8
  %i.ant = getelementptr inbounds nuw i8, ptr %.1379.us, i64 14
  store i8 %i.ans, ptr %i.ant, align 1, !tbaa !9
  %i.anu = trunc i32 %.1305.us.us.3 to i8
  %i.anv = getelementptr inbounds nuw i8, ptr %.1379.us, i64 15
  store i8 %i.anu, ptr %i.anv, align 1, !tbaa !9
  %i.anw = getelementptr inbounds i8, ptr %.1379.us, i64 %i.aax
  %indvars.iv.next500 = add nuw nsw i64 %indvars.iv499, 1 ; 2 uses
  %exitcond502.not = icmp eq i64 %indvars.iv.next500, 4
  br i1 %exitcond502.not, label %.loopexit, label %.preheader.us, !llvm.loop !32

.preheader:                                       ; preds = %.preheader318, %.split374
  %indvars.iv491 = phi i64 [ %indvars.iv.next492, %.split374 ], [ 0, %.preheader318 ] ; 4 uses
  %.1379 = phi ptr [ %i.ark, %.split374 ], [ %1, %.preheader318 ] ; 2 uses
  %.sroa.0.12377 = phi i64 [ %i.aou, %.split374 ], [ %.us-phi369, %.preheader318 ]
  %.sroa.25.12376 = phi i64 [ %i.aov, %.split374 ], [ %.us-phi368, %.preheader318 ]
  %i.anx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv491
  %i.any = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %indvars.iv491
  br label %bb.aw

bb.aw:                                            ; preds = %.preheader, %bb.bf
  %indvars.iv487 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next488, %bb.bf ] ; 5 uses
  %.sroa.0.13371 = phi i64 [ %.sroa.0.12377, %.preheader ], [ %i.aou, %bb.bf ] ; 2 uses
  %.sroa.25.13370 = phi i64 [ %.sroa.25.12376, %.preheader ], [ %i.aov, %bb.bf ] ; 2 uses
  br i1 %i.lo, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.anz = getelementptr inbounds nuw i8, ptr %i.any, i64 %indvars.iv487
  %i.aoa = load i8, ptr %i.anz, align 1, !tbaa !9
  %i.aob = shl i8 %i.aoa, 1
  %i.aoc = and i8 %i.aob, 6
  %i.aod = zext nneg i8 %i.aoc to i64
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %i.aoe = phi i64 [ %i.aod, %bb.ax ], [ 0, %bb.aw ]
  %i.aof = getelementptr inbounds nuw i8, ptr %i.anx, i64 %indvars.iv487
  %i.aog = load i8, ptr %i.aof, align 1, !tbaa !9 ; 2 uses
  %i.aoh = or i64 %indvars.iv487, %indvars.iv491
  %i.aoi = and i64 %i.aoh, 4294967295
  %.not261 = icmp eq i64 %i.aoi, 0
  %i.aoj = sext i1 %.not261 to i32
  %i.aok = add nsw i32 %i.lj, %i.aoj              ; 3 uses
  %notmask.i268 = shl nsw i32 -1, %i.aok
  %i.aol = xor i32 %notmask.i268, -1              ; 2 uses
  %i.aom = zext nneg i32 %i.aol to i64
  %i.aon = trunc i64 %.sroa.0.13371 to i32
  %i.aoo = and i32 %i.aol, %i.aon                 ; 2 uses
  %i.aop = zext nneg i32 %i.aok to i64            ; 2 uses
  %i.aoq = lshr i64 %.sroa.0.13371, %i.aop
  %i.aor = and i64 %.sroa.25.13370, %i.aom
  %narrow316 = sub nuw nsw i32 64, %i.aok
  %i.aos = zext nneg i32 %narrow316 to i64
  %i.aot = shl i64 %i.aor, %i.aos
  %i.aou = or i64 %i.aot, %i.aoq                  ; 2 uses
  %i.aov = lshr i64 %.sroa.25.13370, %i.aop       ; 2 uses
  %i.aow = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.aoe ; 8 uses
  %i.aox = load i32, ptr %i.aow, align 16, !tbaa !3 ; 2 uses
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aow, i64 16
  %i.aoz = load i32, ptr %i.aoy, align 16, !tbaa !3 ; 2 uses
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aow, i64 4
  %i.apb = load i32, ptr %i.apa, align 4, !tbaa !3 ; 2 uses
  %i.apc = getelementptr inbounds nuw i8, ptr %i.aow, i64 20
  %i.apd = load i32, ptr %i.apc, align 4, !tbaa !3 ; 2 uses
  %i.ape = getelementptr inbounds nuw i8, ptr %i.aow, i64 8
  %i.apf = load i32, ptr %i.ape, align 8, !tbaa !3 ; 2 uses
  %i.apg = getelementptr inbounds nuw i8, ptr %i.aow, i64 24
  %i.aph = load i32, ptr %i.apg, align 8, !tbaa !3 ; 2 uses
  %i.api = getelementptr inbounds nuw i8, ptr %i.aow, i64 12
  %i.apj = load i32, ptr %i.api, align 4, !tbaa !3
  %i.apk = getelementptr inbounds nuw i8, ptr %i.aow, i64 28
  %i.apl = load i32, ptr %i.apk, align 4, !tbaa !3
  br i1 %.0250, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.apm = sext i8 %i.aog to i64
  %i.apn = getelementptr inbounds [4 x i8], ptr %i.lm, i64 %i.apm
  %i.apo = load i32, ptr %i.apn, align 4, !tbaa !3 ; 4 uses
  %i.app = sub nsw i32 64, %i.apo                 ; 3 uses
  %i.apq = mul nsw i32 %i.app, %i.aox
  %i.apr = mul nsw i32 %i.apo, %i.aoz
  %i.aps = add i32 %i.apr, 32
  %i.apt = add i32 %i.aps, %i.apq
  %i.apu = mul nsw i32 %i.app, %i.apb
  %i.apv = mul nsw i32 %i.apd, %i.apo
  %i.apw = add i32 %i.apu, 32
  %i.apx = add i32 %i.apw, %i.apv
  %i.apy = mul nsw i32 %i.apf, %i.app
  %i.apz = mul nsw i32 %i.aph, %i.apo
  %i.aqa = add i32 %i.apy, 32
  %i.aqb = add i32 %i.aqa, %i.apz
  %i.aqc = zext nneg i32 %i.aoo to i64
  %i.aqd = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %i.aqc
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.aqe = zext nneg i32 %i.aoo to i64
  %i.aqf = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %i.aqe
  %i.aqg = load i32, ptr %i.aqf, align 4, !tbaa !3 ; 4 uses
  %i.aqh = sub nsw i32 64, %i.aqg                 ; 3 uses
  %i.aqi = mul nsw i32 %i.aqh, %i.aox
  %i.aqj = mul nsw i32 %i.aqg, %i.aoz
  %i.aqk = add i32 %i.aqj, 32
  %i.aql = add i32 %i.aqk, %i.aqi
  %i.aqm = mul nsw i32 %i.aqh, %i.apb
  %i.aqn = mul nsw i32 %i.apd, %i.aqg
  %i.aqo = add i32 %i.aqm, 32
  %i.aqp = add i32 %i.aqo, %i.aqn
  %i.aqq = mul nsw i32 %i.apf, %i.aqh
  %i.aqr = mul nsw i32 %i.aph, %i.aqg
  %i.aqs = add i32 %i.aqq, 32
  %i.aqt = add i32 %i.aqs, %i.aqr
  %i.aqu = sext i8 %i.aog to i64
  %i.aqv = getelementptr inbounds [4 x i8], ptr %i.lm, i64 %i.aqu
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %.sink609.in = phi ptr [ %i.aqd, %bb.az ], [ %i.aqv, %bb.ba ]
  %.0310.in = phi i32 [ %i.apt, %bb.az ], [ %i.aql, %bb.ba ]
  %.0308.in = phi i32 [ %i.apx, %bb.az ], [ %i.aqp, %bb.ba ]
  %.0306.in = phi i32 [ %i.aqb, %bb.az ], [ %i.aqt, %bb.ba ]
  %.sink609 = load i32, ptr %.sink609.in, align 4, !tbaa !3 ; 2 uses
  %i.aqw = sub nsw i32 64, %.sink609
  %i.aqx = mul nsw i32 %i.aqw, %i.apj
  %i.aqy = mul nsw i32 %.sink609, %i.apl
  %i.aqz = add i32 %i.aqy, 32
  %i.ara = add i32 %i.aqz, %i.aqx
  %.0304 = ashr i32 %i.ara, 6                     ; 4 uses
  %.0306 = ashr i32 %.0306.in, 6                  ; 4 uses
  %.0308 = ashr i32 %.0308.in, 6                  ; 4 uses
  %.0310 = ashr i32 %.0310.in, 6                  ; 4 uses
  switch i32 %.0251, label %default.unreachable [
    i32 1, label %bb.bc
    i32 2, label %bb.bd
    i32 3, label %bb.be
    i32 0, label %bb.bf
  ]

bb.bc:                                            ; preds = %bb.bb
  br label %bb.bf

bb.bd:                                            ; preds = %bb.bb
  br label %bb.bf

bb.be:                                            ; preds = %bb.bb
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bb, %bb.be, %bb.bd, %bb.bc
  %.1311 = phi i32 [ %.0310, %bb.bb ], [ %.0304, %bb.bc ], [ %.0310, %bb.bd ], [ %.0310, %bb.be ]
  %.1309 = phi i32 [ %.0308, %bb.bb ], [ %.0308, %bb.bc ], [ %.0304, %bb.bd ], [ %.0308, %bb.be ]
  %.1307 = phi i32 [ %.0306, %bb.bb ], [ %.0306, %bb.bc ], [ %.0306, %bb.bd ], [ %.0304, %bb.be ]
  %.1305 = phi i32 [ %.0304, %bb.bb ], [ %.0310, %bb.bc ], [ %.0308, %bb.bd ], [ %.0306, %bb.be ]
  %i.arb = trunc i32 %.1311 to i8
  %i.arc = shl nuw nsw i64 %indvars.iv487, 2
  %i.ard = getelementptr inbounds nuw i8, ptr %.1379, i64 %i.arc ; 4 uses
  store i8 %i.arb, ptr %i.ard, align 1, !tbaa !9
  %i.are = trunc i32 %.1309 to i8
  %i.arf = getelementptr inbounds nuw i8, ptr %i.ard, i64 1
  store i8 %i.are, ptr %i.arf, align 1, !tbaa !9
  %i.arg = trunc i32 %.1307 to i8
  %i.arh = getelementptr inbounds nuw i8, ptr %i.ard, i64 2
  store i8 %i.arg, ptr %i.arh, align 1, !tbaa !9
  %i.ari = trunc i32 %.1305 to i8
  %i.arj = getelementptr inbounds nuw i8, ptr %i.ard, i64 3
  store i8 %i.ari, ptr %i.arj, align 1, !tbaa !9
  %indvars.iv.next488 = add nuw nsw i64 %indvars.iv487, 1 ; 2 uses
  %exitcond490.not = icmp eq i64 %indvars.iv.next488, 4
  br i1 %exitcond490.not, label %.split374, label %bb.aw, !llvm.loop !33

.split374:                                        ; preds = %bb.bf
  %i.ark = getelementptr inbounds i8, ptr %.1379, i64 %i.aax
  %indvars.iv.next492 = add nuw nsw i64 %indvars.iv491, 1 ; 2 uses
  %exitcond494.not = icmp eq i64 %indvars.iv.next492, 4
  br i1 %exitcond494.not, label %.loopexit, label %.preheader, !llvm.loop !32

.loopexit:                                        ; preds = %.split374, %.split374.us.us.split, %.split374.us.us.split.us.us, %.critedge.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN11OpenImageIO4v3_124dds_input_imageio_createEv() local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN11OpenImageIO4v3_110ImageInputnwEm(i64 noundef 448) ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18DDSInputC2Ev(ptr noundef nonnull align 8 dereferenceable(448) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11OpenImageIO4v3_110ImageInputdlEPv(ptr noundef nonnull %i.a) #34
  resume { ptr, i32 } %i.b
}

declare noundef ptr @_ZN11OpenImageIO4v3_110ImageInputnwEm(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_18DDSInputC2Ev(ptr noundef nonnull align 8 dereferenceable(448) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt6vectorIhSaIhEE5clearEv.exit.i:
  tail call void @_ZN11OpenImageIO4v3_110ImageInputC2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 344) (i8, ptr @_ZTVN11OpenImageIO4v3_18DDSInputE, i64 16), ptr %0, align 8, !tbaa !34
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 0, ptr %i.c, align 8, !tbaa !40
  store i8 0, ptr %i.b, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 292
  store i32 0, ptr %i.e, align 4, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 -1, ptr %i.f, align 8, !tbaa !83
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 244
  store i32 -1, ptr %i.g, align 4, !tbaa !84
  invoke void @_ZN11OpenImageIO4v3_110ImageInput13ioproxy_clearEv(ptr noundef nonnull align 8 dereferenceable(448) %0)
          to label %_ZN11OpenImageIO4v3_18DDSInput4initEv.exit unwind label %bb.a

_ZN11OpenImageIO4v3_18DDSInput4initEv.exit:       ; preds = %_ZNSt6vectorIhSaIhEE5clearEv.exit.i
  ret void

bb.a:                                             ; preds = %_ZNSt6vectorIhSaIhEE5clearEv.exit.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !85   ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !86
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #35
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.q = load i64, ptr %i.b, align 8, !tbaa !9
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZN11OpenImageIO4v3_110ImageInputD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) #34
  resume { ptr, i32 } %i.h
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_110ImageInputdlEPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noalias noundef ptr @_ZN11OpenImageIO4v3_127dds_imageio_library_versionEv() local_unnamed_addr #3 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18DDSInput18validate_signatureEj(i32 noundef %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp eq i32 %0, 542327876
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK11OpenImageIO4v3_18DDSInput10valid_fileEPNS0_10Filesystem7IOProxyE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load i32, ptr %i.b, align 8, !tbaa !88
  %.not5 = icmp eq i32 %i.c, 114
  br i1 %.not5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.d = load ptr, ptr %1, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = call noundef i64 %i.f(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 0)
  %i.h = icmp eq i64 %i.g, 4
  %i.i = load i32, ptr %i.a, align 4
  %i.j = icmp eq i32 %i.i, 542327876
  %i.k = select i1 %i.h, i1 %i.j, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ %i.k, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18DDSInput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_9ImageSpecERKSA_(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull align 8 dereferenceable(160) %3) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN11OpenImageIO4v3_110ImageInput28ioproxy_retrieve_from_configERKNS0_9ImageSpecE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(160) %3)
  %i.a = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_18DDSInput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_9ImageSpecE(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(160) %2)
  ret i1 %i.a
}

declare void @_ZN11OpenImageIO4v3_110ImageInput28ioproxy_retrieve_from_configERKNS0_9ImageSpecE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18DDSInput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_9ImageSpecE(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(160) %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.c = load ptr, ptr %1, align 8, !tbaa !87
  store ptr %i.c, ptr %4, align 8, !tbaa !91
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !40
  store i64 %i.f, ptr %i.d, align 8, !tbaa !93
  %i.g = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput19ioproxy_use_or_openENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %4)
end_hunk_0
