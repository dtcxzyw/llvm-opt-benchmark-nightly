Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_hqx?download=true
inline.NumInlined: 6
inline.NumDeleted: 1
begin_hunk_0_@hq2x:bb.a
  %i.vz = lshr i32 %i.bg, 8
  %i.wa = and i32 %i.vz, 16711935
  %reass.add = add nuw nsw i32 %i.vy, %i.wa
  %reass.mul = mul nuw nsw i32 %reass.add, 3
  %i.wb = add nuw nsw i32 %reass.mul, %i.vw
  %i.wc = shl nuw i32 %i.wb, 5
  %i.wd = and i32 %i.wc, -16711936
  %i.we = shl i32 %i.bo, 1
  %i.wf = and i32 %i.we, 33423870
  %i.wg = and i32 %i.bn, 16711935
  %i.wh = and i32 %i.bg, 16711935
  %reass.add252 = add nuw nsw i32 %i.wg, %i.wh
  %reass.mul253 = mul nuw nsw i32 %reass.add252, 3
  %i.wi = add nuw nsw i32 %reass.mul253, %i.wf
  %i.wj = lshr i32 %i.wi, 3
  %i.wk = and i32 %i.wj, 16711935
  %i.wl = or disjoint i32 %i.wd, %i.wk
  br label %hq2x_interp_1x1.exit138

bb.bl:                                            ; preds = %bb.bj
  %i.wm = extractelement <8 x i32> %i.of, i64 5   ; 2 uses
  %i.wn = icmp eq i32 %i.wm, 106
  %i.wo = icmp eq i32 %i.nx, 110
  %or.cond200.i121 = or i1 %i.wn, %i.wo
  %i.wp = extractelement <8 x i32> %i.of, i64 4
  %i.wq = icmp eq i32 %i.wp, 62
  %or.cond202.i122 = or i1 %i.wq, %or.cond200.i121
  %i.wr = icmp eq i32 %i.wm, 250
  %or.cond203.i123 = or i1 %i.wr, %or.cond202.i122
  br i1 %or.cond203.i123, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ws = bitcast <8 x i32> %i.of to <32 x i8>
  %trunc193 = extractelement <32 x i8> %i.ws, i64 0
  switch i8 %trunc193, label %bb.bo [
    i8 -34, label %bb.bn
    i8 30, label %bb.bn
  ]

bb.bn:                                            ; preds = %bb.bm, %bb.bm, %bb.bl
  %i.wt = lshr i32 %i.bo, 8
  %i.wu = and i32 %i.wt, 16711935
  %i.wv = mul nuw nsw i32 %i.wu, 3
  %i.ww = lshr i32 %i.be, 8
  %i.wx = and i32 %i.ww, 16711935
  %i.wy = add nuw nsw i32 %i.wv, %i.wx
  %i.wz = shl nuw i32 %i.wy, 6
  %i.xa = and i32 %i.wz, -16711936
  %i.xb = and i32 %i.bo, 16711935
  %i.xc = mul nuw nsw i32 %i.xb, 3
  %i.xd = and i32 %i.be, 16711935
  %i.xe = add nuw nsw i32 %i.xc, %i.xd
  %i.xf = lshr i32 %i.xe, 2
  %i.xg = and i32 %i.xf, 16711935
  %i.xh = or disjoint i32 %i.xa, %i.xg
  br label %hq2x_interp_1x1.exit138

bb.bo:                                            ; preds = %bb.bm
  %i.xi = and i32 %i.jf, 10
  %i.xj = icmp eq i32 %i.xi, 0
  %i.xk = icmp eq i32 %i.tz, 75
  %or.cond204.i124 = or i1 %i.xj, %i.xk
  %i.xl = extractelement <8 x i32> %i.of, i64 1
  %i.xm = icmp eq i32 %i.xl, 27
  %or.cond206.i125 = or i1 %i.xm, %or.cond204.i124
  %i.xn = icmp eq i32 %i.rl, 11
  %or.cond207.i126 = or i1 %i.xn, %or.cond206.i125
  %i.xo = and i32 %i.jf, 190
  %i.xp = icmp eq i32 %i.xo, 10
  %or.cond209.i127 = or i1 %i.xp, %or.cond207.i126
  %i.xq = and i32 %i.jf, 238
  %i.xr = icmp eq i32 %i.xq, 10
  %or.cond211.i128 = or i1 %i.xr, %or.cond209.i127
  %i.xs = icmp eq i32 %i.vq, 10
  %or.cond212.i129 = or i1 %i.xs, %or.cond211.i128
  %i.xt = icmp eq i32 %i.oj, 75
  %or.cond214.i130 = or i1 %i.xt, %or.cond212.i129
  %i.xu = icmp eq i32 %i.uz, 27
  %or.cond215.i131 = or i1 %i.xu, %or.cond214.i130
  br i1 %or.cond215.i131, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.xv = lshr i32 %i.bo, 7
  %i.xw = and i32 %i.xv, 33423870
  %i.xx = lshr i32 %i.bn, 8
  %i.xy = and i32 %i.xx, 16711935
  %i.xz = lshr i32 %i.bg, 8
  %i.ya = and i32 %i.xz, 16711935
  %i.yb = add nuw nsw i32 %i.xy, %i.ya
  %i.yc = add nuw nsw i32 %i.yb, %i.xw
  %i.yd = shl nuw i32 %i.yc, 6
  %i.ye = and i32 %i.yd, -16711936
  %i.yf = shl i32 %i.bo, 1
  %i.yg = and i32 %i.yf, 33423870
  %i.yh = and i32 %i.bn, 16711935
  %i.yi = and i32 %i.bg, 16711935
  %i.yj = add nuw nsw i32 %i.yh, %i.yi
  %i.yk = add nuw nsw i32 %i.yj, %i.yg
  %i.yl = lshr i32 %i.yk, 2
  %i.ym = and i32 %i.yl, 16711935
  %i.yn = or disjoint i32 %i.ye, %i.ym
  br label %hq2x_interp_1x1.exit138

bb.bq:                                            ; preds = %bb.bo
  %i.yo = lshr i32 %i.bo, 8
  %i.yp = and i32 %i.yo, 16711935
  %i.yq = mul nuw nsw i32 %i.yp, 6
  %i.yr = lshr i32 %i.bn, 8
  %i.ys = and i32 %i.yr, 16711935
  %i.yt = lshr i32 %i.bg, 8
  %i.yu = and i32 %i.yt, 16711935
  %i.yv = add nuw nsw i32 %i.ys, %i.yu
  %i.yw = add nuw nsw i32 %i.yv, %i.yq
  %i.yx = shl nuw i32 %i.yw, 5
  %i.yy = and i32 %i.yx, -16711936
  %i.yz = and i32 %i.bo, 16711935
  %i.za = mul nuw nsw i32 %i.yz, 6
  %i.zb = and i32 %i.bn, 16711935
  %i.zc = and i32 %i.bg, 16711935
  %i.zd = add nuw nsw i32 %i.zb, %i.zc
  %i.ze = add nuw nsw i32 %i.zd, %i.za
  %i.zf = lshr i32 %i.ze, 3
  %i.zg = and i32 %i.zf, 16711935
  %i.zh = or disjoint i32 %i.yy, %i.zg
  br label %hq2x_interp_1x1.exit138

hq2x_interp_1x1.exit138:                          ; preds = %bb.ao, %bb.ap, %yuv_diff.exit218.i136.thread, %yuv_diff.exit217.i134.thread, %yuv_diff.exit216.i99, %yuv_diff.exit.i132.thread, %bb.au, %bb.av, %bb.ax, %bb.az, %bb.bb, %bb.bf, %bb.bi, %bb.bk, %bb.bn, %bb.bp, %bb.bq
  %.0.i101 = phi i32 [ %i.lh, %yuv_diff.exit218.i136.thread ], [ %i.mw, %yuv_diff.exit217.i134.thread ], [ %i.zh, %bb.bq ], [ %i.py, %yuv_diff.exit.i132.thread ], [ %i.qr, %bb.au ], [ %i.rk, %bb.av ], [ %i.sg, %bb.ax ], [ %i.tb, %bb.az ], [ %i.tw, %bb.bb ], [ %i.ut, %bb.bf ], [ %i.vp, %bb.bi ], [ %i.wl, %bb.bk ], [ %i.xh, %bb.bn ], [ %i.yn, %bb.bp ], [ %i.bo, %yuv_diff.exit216.i99 ], [ %i.bo, %bb.ap ], [ %i.bo, %bb.ao ]
  store i32 %.0.i101, ptr %.0.i304, align 4, !tbaa !22
  %trunc195 = trunc i32 %i.jf to i3
  %rev = tail call i3 @llvm.bitreverse.i3(i3 %trunc195)
  %i.zi = zext i3 %rev to i32
  %i.zj = shl nuw nsw i32 %i.jh, 4
  %i.zk = shl nuw nsw i32 %i.jk, 3
  %i.zl = shl nuw nsw i32 %i.jn, 7
  %i.zm = or disjoint i32 %i.zl, %i.zi
  %i.zn = or disjoint i32 %i.zm, %i.jq
  %i.zo = shl nuw nsw i32 %i.jr, 5
  %i.zp = or i32 %i.zo, %i.zn
  %i.zq = or disjoint i32 %i.zp, %i.zj
  %i.zr = or disjoint i32 %i.zq, %i.zk            ; 23 uses
  %i.zs = and i32 %i.zr, 191                      ; 3 uses
  %i.zt = icmp eq i32 %i.zs, 55
  %i.zu = and i32 %i.zr, 219                      ; 2 uses
  %i.zv = icmp eq i32 %i.zu, 19
  %or.cond.i55 = or i1 %i.zt, %i.zv               ; 2 uses
  br i1 %or.cond.i55, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %hq2x_interp_1x1.exit138
  %i.zw = and i32 %i.bg, 16777215
  %i.zx = zext nneg i32 %i.zw to i64
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.zx
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !22 ; 3 uses
  %i.aaa = and i32 %i.bn, 16777215
  %i.aab = zext nneg i32 %i.aaa to i64
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aab
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !22 ; 3 uses
  %i.aae = and i32 %i.zz, 16711680
  %i.aaf = and i32 %i.aad, 16711680
  %i.aag = add nsw i32 %i.aae, -3145729
  %i.aah = sub nsw i32 %i.aag, %i.aaf
  %i.aai = icmp ult i32 %i.aah, -6291457
  br i1 %i.aai, label %yuv_diff.exit218.i94.thread, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.aaj = and i32 %i.zz, 65280
  %i.aak = and i32 %i.aad, 65280
  %i.aal = add nsw i32 %i.aaj, -1793
  %i.aam = sub nsw i32 %i.aal, %i.aak
  %i.aan = icmp ult i32 %i.aam, -3585
  br i1 %i.aan, label %yuv_diff.exit218.i94.thread, label %yuv_diff.exit218.i94

yuv_diff.exit218.i94:                             ; preds = %bb.bs
  %i.aao = and i32 %i.zz, 255
  %i.aap = and i32 %i.aad, 255
  %i.aaq = add nuw nsw i32 %i.aao, 6
  %i.aar = sub nsw i32 %i.aaq, %i.aap
  %i.aas = icmp ult i32 %i.aar, 13
  br i1 %i.aas, label %bb.bt, label %yuv_diff.exit218.i94.thread

yuv_diff.exit218.i94.thread:                      ; preds = %bb.br, %bb.bs, %yuv_diff.exit218.i94
  %i.aat = lshr i32 %i.bo, 8
  %i.aau = and i32 %i.aat, 16711935
  %i.aav = mul nuw nsw i32 %i.aau, 3
  %i.aaw = lshr i32 %i.br, 8
  %i.aax = and i32 %i.aaw, 16711935
  %i.aay = add nuw nsw i32 %i.aav, %i.aax
  %i.aaz = shl nuw i32 %i.aay, 6
  %i.aba = and i32 %i.aaz, -16711936
  %i.abb = and i32 %i.bo, 16711935
  %i.abc = mul nuw nsw i32 %i.abb, 3
  %i.abd = and i32 %i.br, 16711935
  %i.abe = add nuw nsw i32 %i.abc, %i.abd
  %i.abf = lshr i32 %i.abe, 2
  %i.abg = and i32 %i.abf, 16711935
  %i.abh = or disjoint i32 %i.aba, %i.abg
  br label %hq2x_interp_1x1.exit96

bb.bt:                                            ; preds = %yuv_diff.exit218.i94, %hq2x_interp_1x1.exit138
  %i.abi = icmp eq i32 %i.zu, 73
  %i.abj = and i32 %i.zr, 239
  %i.abk = insertelement <2 x i32> poison, i32 %i.zr, i64 0
  %i.abl = shufflevector <2 x i32> %i.abk, <2 x i32> poison, <8 x i32> zeroinitializer
  %i.abm = icmp eq i32 %i.abj, 109
  %or.cond167.i56 = or i1 %i.abi, %i.abm          ; 2 uses
  br i1 %or.cond167.i56, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.abn = and i32 %i.bx, 16777215
  %i.abo = zext nneg i32 %i.abn to i64
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.abo
  %i.abq = load i32, ptr %i.abp, align 4, !tbaa !22 ; 3 uses
  %i.abr = and i32 %i.br, 16777215
  %i.abs = zext nneg i32 %i.abr to i64
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.abs
  %i.abu = load i32, ptr %i.abt, align 4, !tbaa !22 ; 3 uses
  %i.abv = and i32 %i.abq, 16711680
  %i.abw = and i32 %i.abu, 16711680
  %i.abx = add nsw i32 %i.abv, -3145729
  %i.aby = sub nsw i32 %i.abx, %i.abw
  %i.abz = icmp ult i32 %i.aby, -6291457
  br i1 %i.abz, label %yuv_diff.exit217.i92.thread, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.aca = and i32 %i.abq, 65280
  %i.acb = and i32 %i.abu, 65280
  %i.acc = add nsw i32 %i.aca, -1793
  %i.acd = sub nsw i32 %i.acc, %i.acb
  %i.ace = icmp ult i32 %i.acd, -3585
  br i1 %i.ace, label %yuv_diff.exit217.i92.thread, label %yuv_diff.exit217.i92

yuv_diff.exit217.i92:                             ; preds = %bb.bv
  %i.acf = and i32 %i.abq, 255
  %i.acg = and i32 %i.abu, 255
  %i.ach = add nuw nsw i32 %i.acf, 6
  %i.aci = sub nsw i32 %i.ach, %i.acg
  %i.acj = icmp ult i32 %i.aci, 13
  br i1 %i.acj, label %bb.bw, label %yuv_diff.exit217.i92.thread

yuv_diff.exit217.i92.thread:                      ; preds = %bb.bu, %bb.bv, %yuv_diff.exit217.i92
  %i.ack = lshr i32 %i.bo, 8
  %i.acl = and i32 %i.ack, 16711935
  %i.acm = mul nuw nsw i32 %i.acl, 3
  %i.acn = lshr i32 %i.bg, 8
  %i.aco = and i32 %i.acn, 16711935
  %i.acp = add nuw nsw i32 %i.acm, %i.aco
  %i.acq = shl nuw i32 %i.acp, 6
  %i.acr = and i32 %i.acq, -16711936
  %i.acs = and i32 %i.bo, 16711935
  %i.act = mul nuw nsw i32 %i.acs, 3
  %i.acu = and i32 %i.bg, 16711935
  %i.acv = add nuw nsw i32 %i.act, %i.acu
  %i.acw = lshr i32 %i.acv, 2
  %i.acx = and i32 %i.acw, 16711935
  %i.acy = or disjoint i32 %i.acr, %i.acx
  br label %hq2x_interp_1x1.exit96

bb.bw:                                            ; preds = %yuv_diff.exit217.i92, %bb.bt
  %i.acz = and i32 %i.zr, 11                      ; 2 uses
  %i.ada = icmp eq i32 %i.acz, 11
  br i1 %i.ada, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.adb = trunc nuw i32 %i.zr to i8
  %trunc196 = and i8 %i.adb, -2
  switch i8 %trunc196, label %bb.ca [
    i8 74, label %bb.by
    i8 26, label %bb.by
  ]

bb.by:                                            ; preds = %bb.bx, %bb.bx, %bb.bw
  %i.adc = and i32 %i.br, 16777215
  %i.add = zext nneg i32 %i.adc to i64
  %i.ade = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.add
  %i.adf = load i32, ptr %i.ade, align 4, !tbaa !22 ; 3 uses
  %i.adg = and i32 %i.bg, 16777215
  %i.adh = zext nneg i32 %i.adg to i64
  %i.adi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.adh
  %i.adj = load i32, ptr %i.adi, align 4, !tbaa !22 ; 3 uses
  %i.adk = and i32 %i.adf, 16711680
  %i.adl = and i32 %i.adj, 16711680
  %i.adm = add nsw i32 %i.adk, -3145729
  %i.adn = sub nsw i32 %i.adm, %i.adl
  %i.ado = icmp ult i32 %i.adn, -6291457
  br i1 %i.ado, label %hq2x_interp_1x1.exit96, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.adp = and i32 %i.adf, 65280
  %i.adq = and i32 %i.adj, 65280
  %i.adr = add nsw i32 %i.adp, -1793
  %i.ads = sub nsw i32 %i.adr, %i.adq
  %i.adt = icmp ult i32 %i.ads, -3585
  br i1 %i.adt, label %hq2x_interp_1x1.exit96, label %yuv_diff.exit216.i57

yuv_diff.exit216.i57:                             ; preds = %bb.bz
  %i.adu = and i32 %i.adf, 255
  %i.adv = and i32 %i.adj, 255
  %i.adw = add nuw nsw i32 %i.adu, 6
  %i.adx = sub nsw i32 %i.adw, %i.adv
  %i.ady = icmp ult i32 %i.adx, 13
  br i1 %i.ady, label %bb.ca, label %hq2x_interp_1x1.exit96

bb.ca:                                            ; preds = %yuv_diff.exit216.i57, %bb.bx
  %i.adz = and i32 %i.zr, 111                     ; 2 uses
  %i.aea = icmp eq i32 %i.adz, 42
  %i.aeb = and i32 %i.zr, 91
  %i.aec = icmp eq i32 %i.aeb, 10
  %i.aed = icmp eq i32 %i.zs, 58
  %i.aee = and <8 x i32> %i.abl, <i32 223, i32 159, i32 207, i32 239, i32 63, i32 251, i32 187, i32 127> ; 5 uses
  %i.aef = icmp eq <8 x i32> %i.aee, <i32 90, i32 138, i32 138, i32 78, i32 14, i32 90, i32 138, i32 90>
  %i.aeg = and i32 %i.zr, 175
  %i.aeh = icmp eq i32 %i.aeg, 138
  %i.aei = and i32 %i.zr, 235                     ; 2 uses
  %i.aej = icmp eq i32 %i.aei, 138
  %i.aek = bitcast <8 x i1> %i.aef to i8
  %i.ael = icmp ne i8 %i.aek, 0
  %op.rdx360 = or i1 %i.ael, %i.aea
  %op.rdx361 = or i1 %i.aec, %i.aed
  %op.rdx362 = or i1 %i.aeh, %i.aej
  %op.rdx363 = or i1 %op.rdx360, %op.rdx361
  %op.rdx364 = or i1 %op.rdx363, %op.rdx362
  br i1 %op.rdx364, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  %i.aem = and i32 %i.br, 16777215
  %i.aen = zext nneg i32 %i.aem to i64
  %i.aeo = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aen
  %i.aep = load i32, ptr %i.aeo, align 4, !tbaa !22 ; 3 uses
  %i.aeq = and i32 %i.bg, 16777215
  %i.aer = zext nneg i32 %i.aeq to i64
  %i.aes = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aer
  %i.aet = load i32, ptr %i.aes, align 4, !tbaa !22 ; 3 uses
  %i.aeu = and i32 %i.aep, 16711680
  %i.aev = and i32 %i.aet, 16711680
  %i.aew = add nsw i32 %i.aeu, -3145729
  %i.aex = sub nsw i32 %i.aew, %i.aev
  %i.aey = icmp ult i32 %i.aex, -6291457
  br i1 %i.aey, label %yuv_diff.exit.i90.thread, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.aez = and i32 %i.aep, 65280
  %i.afa = and i32 %i.aet, 65280
  %i.afb = add nsw i32 %i.aez, -1793
  %i.afc = sub nsw i32 %i.afb, %i.afa
  %i.afd = icmp ult i32 %i.afc, -3585
  br i1 %i.afd, label %yuv_diff.exit.i90.thread, label %yuv_diff.exit.i90

yuv_diff.exit.i90:                                ; preds = %bb.cc
  %i.afe = and i32 %i.aep, 255
  %i.aff = and i32 %i.aet, 255
  %i.afg = add nuw nsw i32 %i.afe, 6
  %i.afh = sub nsw i32 %i.afg, %i.aff
  %i.afi = icmp ult i32 %i.afh, 13
  br i1 %i.afi, label %bb.cd, label %yuv_diff.exit.i90.thread

yuv_diff.exit.i90.thread:                         ; preds = %bb.cb, %bb.cc, %yuv_diff.exit.i90
  %i.afj = lshr i32 %i.bo, 8
  %i.afk = and i32 %i.afj, 16711935
  %i.afl = mul nuw nsw i32 %i.afk, 3
  %i.afm = lshr i32 %i.bk, 8
  %i.afn = and i32 %i.afm, 16711935
  %i.afo = add nuw nsw i32 %i.afl, %i.afn
  %i.afp = shl nuw i32 %i.afo, 6
  %i.afq = and i32 %i.afp, -16711936
  %i.afr = and i32 %i.bo, 16711935
  %i.afs = mul nuw nsw i32 %i.afr, 3
  %i.aft = and i32 %i.bk, 16711935
  %i.afu = add nuw nsw i32 %i.afs, %i.aft
  %i.afv = lshr i32 %i.afu, 2
  %i.afw = and i32 %i.afv, 16711935
  %i.afx = or disjoint i32 %i.afq, %i.afw
  br label %hq2x_interp_1x1.exit96

bb.cd:                                            ; preds = %yuv_diff.exit.i90, %bb.ca
  switch i32 %i.acz, label %bb.cg [
    i32 8, label %bb.ce
    i32 2, label %bb.cf
  ]

bb.ce:                                            ; preds = %bb.cd
  %i.afy = lshr i32 %i.bo, 7
  %i.afz = and i32 %i.afy, 33423870
  %i.aga = lshr i32 %i.bk, 8
  %i.agb = and i32 %i.aga, 16711935
  %i.agc = lshr i32 %i.bg, 8
  %i.agd = and i32 %i.agc, 16711935
  %i.age = add nuw nsw i32 %i.agb, %i.agd
  %i.agf = add nuw nsw i32 %i.age, %i.afz
  %i.agg = shl nuw i32 %i.agf, 6
  %i.agh = and i32 %i.agg, -16711936
  %i.agi = shl i32 %i.bo, 1
  %i.agj = and i32 %i.agi, 33423870
  %i.agk = and i32 %i.bk, 16711935
  %i.agl = and i32 %i.bg, 16711935
  %i.agm = add nuw nsw i32 %i.agk, %i.agl
  %i.agn = add nuw nsw i32 %i.agm, %i.agj
  %i.ago = lshr i32 %i.agn, 2
  %i.agp = and i32 %i.ago, 16711935
  %i.agq = or disjoint i32 %i.agh, %i.agp
  br label %hq2x_interp_1x1.exit96

bb.cf:                                            ; preds = %bb.cd
  %i.agr = lshr i32 %i.bo, 7
  %i.ags = and i32 %i.agr, 33423870
  %i.agt = lshr i32 %i.bk, 8
  %i.agu = and i32 %i.agt, 16711935
  %i.agv = add nuw nsw i32 %i.ags, %i.agu
  %i.agw = lshr i32 %i.br, 8
  %i.agx = and i32 %i.agw, 16711935
  %i.agy = add nuw nsw i32 %i.agv, %i.agx
  %i.agz = shl nuw i32 %i.agy, 6
  %i.aha = and i32 %i.agz, -16711936
  %i.ahb = shl i32 %i.bo, 1
  %i.ahc = and i32 %i.ahb, 33423870
  %i.ahd = and i32 %i.bk, 16711935
  %i.ahe = add nuw nsw i32 %i.ahc, %i.ahd
  %i.ahf = and i32 %i.br, 16711935
  %i.ahg = add nuw nsw i32 %i.ahe, %i.ahf
  %i.ahh = lshr i32 %i.ahg, 2
  %i.ahi = and i32 %i.ahh, 16711935
  %i.ahj = or disjoint i32 %i.aha, %i.ahi
  br label %hq2x_interp_1x1.exit96

bb.cg:                                            ; preds = %bb.cd
  %i.ahk = and i32 %i.zr, 47                      ; 2 uses
  %i.ahl = icmp eq i32 %i.ahk, 47
  br i1 %i.ahl, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.ahm = lshr i32 %i.bo, 8
  %i.ahn = and i32 %i.ahm, 16711935
  %i.aho = mul nuw nsw i32 %i.ahn, 14
  %i.ahp = lshr i32 %i.br, 8
  %i.ahq = and i32 %i.ahp, 16711935
  %i.ahr = lshr i32 %i.bg, 8
  %i.ahs = and i32 %i.ahr, 16711935
  %i.aht = add nuw nsw i32 %i.ahq, %i.ahs
  %i.ahu = add nuw nsw i32 %i.aht, %i.aho
  %i.ahv = shl nuw i32 %i.ahu, 4
  %i.ahw = and i32 %i.ahv, -16711936
  %i.ahx = and i32 %i.bo, 16711935
  %i.ahy = mul nuw nsw i32 %i.ahx, 14
  %i.ahz = and i32 %i.br, 16711935
  %i.aia = and i32 %i.bg, 16711935
  %i.aib = add nuw nsw i32 %i.ahz, %i.aia
  %i.aic = add nuw nsw i32 %i.aib, %i.ahy
  %i.aid = lshr i32 %i.aic, 4
  %i.aie = and i32 %i.aid, 16711935
  %i.aif = or disjoint i32 %i.ahw, %i.aie
  br label %hq2x_interp_1x1.exit96

bb.ci:                                            ; preds = %bb.cg
  br i1 %or.cond.i55, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.aig = lshr i32 %i.bo, 8
  %i.aih = and i32 %i.aig, 16711935
  %i.aii = mul nuw nsw i32 %i.aih, 5
  %i.aij = lshr i32 %i.bg, 7
  %i.aik = and i32 %i.aij, 33423870
  %i.ail = add nuw nsw i32 %i.aii, %i.aik
  %i.aim = lshr i32 %i.br, 8
  %i.ain = and i32 %i.aim, 16711935
  %i.aio = add nuw nsw i32 %i.ail, %i.ain
  %i.aip = shl nuw i32 %i.aio, 5
  %i.aiq = and i32 %i.aip, -16711936
  %i.air = and i32 %i.bo, 16711935
  %i.ais = mul nuw nsw i32 %i.air, 5
  %i.ait = shl i32 %i.bg, 1
  %i.aiu = and i32 %i.ait, 33423870
  %i.aiv = add nuw nsw i32 %i.ais, %i.aiu
  %i.aiw = and i32 %i.br, 16711935
  %i.aix = add nuw nsw i32 %i.aiv, %i.aiw
  %i.aiy = lshr i32 %i.aix, 3
  %i.aiz = and i32 %i.aiy, 16711935
  %i.aja = or disjoint i32 %i.aiq, %i.aiz
  br label %hq2x_interp_1x1.exit96

bb.ck:                                            ; preds = %bb.ci
  br i1 %or.cond167.i56, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.ajb = lshr i32 %i.bo, 8
  %i.ajc = and i32 %i.ajb, 16711935
  %i.ajd = mul nuw nsw i32 %i.ajc, 5
  %i.aje = lshr i32 %i.br, 7
  %i.ajf = and i32 %i.aje, 33423870
  %i.ajg = lshr i32 %i.bg, 8
  %i.ajh = and i32 %i.ajg, 16711935
  %i.aji = add nuw nsw i32 %i.ajf, %i.ajh
  %i.ajj = add nuw nsw i32 %i.aji, %i.ajd
  %i.ajk = shl nuw i32 %i.ajj, 5
  %i.ajl = and i32 %i.ajk, -16711936
  %i.ajm = and i32 %i.bo, 16711935
  %i.ajn = mul nuw nsw i32 %i.ajm, 5
  %i.ajo = shl i32 %i.br, 1
  %i.ajp = and i32 %i.ajo, 33423870
  %i.ajq = and i32 %i.bg, 16711935
  %i.ajr = add nuw nsw i32 %i.ajn, %i.ajq
  %i.ajs = add nuw nsw i32 %i.ajr, %i.ajp
  %i.ajt = lshr i32 %i.ajs, 3
  %i.aju = and i32 %i.ajt, 16711935
  %i.ajv = or disjoint i32 %i.ajl, %i.aju
  br label %hq2x_interp_1x1.exit96

bb.cm:                                            ; preds = %bb.ck
  %i.ajw = and i32 %i.zr, 27
  %i.ajx = icmp eq i32 %i.ajw, 3
  br i1 %i.ajx, label %bb.cp, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ajy = and i32 %i.zr, 79                      ; 2 uses
  %i.ajz = icmp eq i32 %i.ajy, 67
  br i1 %i.ajz, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.aka = and i32 %i.zr, 139                     ; 2 uses
  %i.akb = icmp eq i32 %i.aka, 131
  %i.akc = and i32 %i.zr, 107
  %i.akd = icmp eq i32 %i.akc, 67
  %or.cond193.i73 = or i1 %i.akb, %i.akd
  br i1 %or.cond193.i73, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co, %bb.cn, %bb.cm
  %i.ake = lshr i32 %i.bo, 8
  %i.akf = and i32 %i.ake, 16711935
  %i.akg = mul nuw nsw i32 %i.akf, 3
  %i.akh = lshr i32 %i.br, 8
  %i.aki = and i32 %i.akh, 16711935
  %i.akj = add nuw nsw i32 %i.akg, %i.aki
  %i.akk = shl nuw i32 %i.akj, 6
  %i.akl = and i32 %i.akk, -16711936
  %i.akm = and i32 %i.bo, 16711935
  %i.akn = mul nuw nsw i32 %i.akm, 3
  %i.ako = and i32 %i.br, 16711935
  %i.akp = add nuw nsw i32 %i.akn, %i.ako
  %i.akq = lshr i32 %i.akp, 2
  %i.akr = and i32 %i.akq, 16711935
  %i.aks = or disjoint i32 %i.akl, %i.akr
  br label %hq2x_interp_1x1.exit96

bb.cq:                                            ; preds = %bb.co
  %i.akt = and i32 %i.zr, 75
  %i.aku = icmp eq i32 %i.akt, 9
  %i.akv = icmp eq i32 %i.aka, 137
  %or.cond194.i74 = or i1 %i.aku, %i.akv
  %i.akw = and i32 %i.zr, 31
  %i.akx = icmp eq i32 %i.akw, 25
  %or.cond196.i75 = or i1 %i.akx, %or.cond194.i74
  br i1 %or.cond196.i75, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.aky = and i32 %i.zr, 59                      ; 2 uses
  %i.akz = icmp eq i32 %i.aky, 25
  br i1 %i.akz, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.ala = lshr i32 %i.bo, 8
  %i.alb = and i32 %i.ala, 16711935
  %i.alc = mul nuw nsw i32 %i.alb, 3
  %i.ald = lshr i32 %i.bg, 8
  %i.ale = and i32 %i.ald, 16711935
  %i.alf = add nuw nsw i32 %i.alc, %i.ale
  %i.alg = shl nuw i32 %i.alf, 6
  %i.alh = and i32 %i.alg, -16711936
  %i.ali = and i32 %i.bo, 16711935
  %i.alj = mul nuw nsw i32 %i.ali, 3
  %i.alk = and i32 %i.bg, 16711935
  %i.all = add nuw nsw i32 %i.alj, %i.alk
  %i.alm = lshr i32 %i.all, 2
  %i.aln = and i32 %i.alm, 16711935
  %i.alo = or disjoint i32 %i.alh, %i.aln
  br label %hq2x_interp_1x1.exit96

bb.ct:                                            ; preds = %bb.cr
  %i.alp = and i32 %i.zr, 126                     ; 3 uses
  %i.alq = icmp eq i32 %i.alp, 42
  %4 = extractelement <8 x i32> %i.aee, i64 3
  %i.alr = icmp eq i32 %4, 171
  %or.cond197.i76 = or i1 %i.alq, %i.alr
  %i.als = icmp eq i32 %i.zs, 143
  %or.cond198.i77 = or i1 %i.als, %or.cond197.i76
  %i.alt = icmp eq i32 %i.alp, 14
  %or.cond199.i78 = or i1 %i.alt, %or.cond198.i77
  br i1 %or.cond199.i78, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.alu = lshr i32 %i.bo, 7
  %i.alv = and i32 %i.alu, 33423870
  %i.alw = lshr i32 %i.br, 8
  %i.alx = and i32 %i.alw, 16711935
  %i.aly = lshr i32 %i.bg, 8
  %i.alz = and i32 %i.aly, 16711935
  %reass.add266 = add nuw nsw i32 %i.alx, %i.alz
  %reass.mul267 = mul nuw nsw i32 %reass.add266, 3
  %i.ama = add nuw nsw i32 %reass.mul267, %i.alv
  %i.amb = shl nuw i32 %i.ama, 5
  %i.amc = and i32 %i.amb, -16711936
  %i.amd = shl i32 %i.bo, 1
  %i.ame = and i32 %i.amd, 33423870
  %i.amf = and i32 %i.br, 16711935
  %i.amg = and i32 %i.bg, 16711935
  %reass.add268 = add nuw nsw i32 %i.amf, %i.amg
  %reass.mul269 = mul nuw nsw i32 %reass.add268, 3
  %i.amh = add nuw nsw i32 %reass.mul269, %i.ame
  %i.ami = lshr i32 %i.amh, 3
  %i.amj = and i32 %i.ami, 16711935
  %i.amk = or disjoint i32 %i.amc, %i.amj
  br label %hq2x_interp_1x1.exit96

bb.cv:                                            ; preds = %bb.ct
  %i.aml = extractelement <8 x i32> %i.aee, i64 5 ; 2 uses
  %i.amm = icmp eq i32 %i.aml, 106
  %i.amn = icmp eq i32 %i.adz, 110
  %or.cond200.i79 = or i1 %i.amm, %i.amn
  %i.amo = extractelement <8 x i32> %i.aee, i64 4
  %i.amp = icmp eq i32 %i.amo, 62
  %or.cond202.i80 = or i1 %i.amp, %or.cond200.i79
  %i.amq = icmp eq i32 %i.aml, 250
  %or.cond203.i81 = or i1 %i.amq, %or.cond202.i80
  br i1 %or.cond203.i81, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.amr = trunc i32 %i.zr to i8
  %trunc197 = and i8 %i.amr, -33
  switch i8 %trunc197, label %bb.cy [
    i8 -34, label %bb.cx
    i8 30, label %bb.cx
  ]

bb.cx:                                            ; preds = %bb.cw, %bb.cw, %bb.cv
  %i.ams = lshr i32 %i.bo, 8
  %i.amt = and i32 %i.ams, 16711935
  %i.amu = mul nuw nsw i32 %i.amt, 3
  %i.amv = lshr i32 %i.bk, 8
  %i.amw = and i32 %i.amv, 16711935
  %i.amx = add nuw nsw i32 %i.amu, %i.amw
  %i.amy = shl nuw i32 %i.amx, 6
  %i.amz = and i32 %i.amy, -16711936
  %i.ana = and i32 %i.bo, 16711935
  %i.anb = mul nuw nsw i32 %i.ana, 3
  %i.anc = and i32 %i.bk, 16711935
  %i.and = add nuw nsw i32 %i.anb, %i.anc
  %i.ane = lshr i32 %i.and, 2
  %i.anf = and i32 %i.ane, 16711935
  %i.ang = or disjoint i32 %i.amz, %i.anf
  br label %hq2x_interp_1x1.exit96

bb.cy:                                            ; preds = %bb.cw
  %i.anh = and i32 %i.zr, 10
  %i.ani = icmp eq i32 %i.anh, 0
  %i.anj = icmp eq i32 %i.ajy, 75
  %or.cond204.i82 = or i1 %i.ani, %i.anj
  %i.ank = extractelement <8 x i32> %i.aee, i64 1
  %i.anl = icmp eq i32 %i.ank, 27
  %or.cond206.i83 = or i1 %i.anl, %or.cond204.i82
  %i.anm = icmp eq i32 %i.ahk, 11
  %or.cond207.i84 = or i1 %i.anm, %or.cond206.i83
  %i.ann = and i32 %i.zr, 190
  %i.ano = icmp eq i32 %i.ann, 10
  %or.cond209.i85 = or i1 %i.ano, %or.cond207.i84
  %i.anp = and i32 %i.zr, 238
  %i.anq = icmp eq i32 %i.anp, 10
  %or.cond211.i86 = or i1 %i.anq, %or.cond209.i85
  %i.anr = icmp eq i32 %i.alp, 10
  %or.cond212.i87 = or i1 %i.anr, %or.cond211.i86
  %i.ans = icmp eq i32 %i.aei, 75
  %or.cond214.i88 = or i1 %i.ans, %or.cond212.i87
  %i.ant = icmp eq i32 %i.aky, 27
  %or.cond215.i89 = or i1 %i.ant, %or.cond214.i88
  br i1 %or.cond215.i89, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.anu = lshr i32 %i.bo, 7
  %i.anv = and i32 %i.anu, 33423870
  %i.anw = lshr i32 %i.br, 8
  %i.anx = and i32 %i.anw, 16711935
  %i.any = lshr i32 %i.bg, 8
  %i.anz = and i32 %i.any, 16711935
  %i.aoa = add nuw nsw i32 %i.anv, %i.anz
  %i.aob = add nuw nsw i32 %i.aoa, %i.anx
  %i.aoc = shl nuw i32 %i.aob, 6
  %i.aod = and i32 %i.aoc, -16711936
  %i.aoe = shl i32 %i.bo, 1
  %i.aof = and i32 %i.aoe, 33423870
  %i.aog = and i32 %i.br, 16711935
  %i.aoh = and i32 %i.bg, 16711935
  %i.aoi = add nuw nsw i32 %i.aog, %i.aoh
  %i.aoj = add nuw nsw i32 %i.aoi, %i.aof
  %i.aok = lshr i32 %i.aoj, 2
  %i.aol = and i32 %i.aok, 16711935
  %i.aom = or disjoint i32 %i.aod, %i.aol
  br label %hq2x_interp_1x1.exit96

bb.da:                                            ; preds = %bb.cy
  %i.aon = lshr i32 %i.bo, 8
  %i.aoo = and i32 %i.aon, 16711935
  %i.aop = mul nuw nsw i32 %i.aoo, 6
  %i.aoq = lshr i32 %i.br, 8
  %i.aor = and i32 %i.aoq, 16711935
  %i.aos = lshr i32 %i.bg, 8
  %i.aot = and i32 %i.aos, 16711935
  %i.aou = add nuw nsw i32 %i.aor, %i.aot
  %i.aov = add nuw nsw i32 %i.aou, %i.aop
  %i.aow = shl nuw i32 %i.aov, 5
  %i.aox = and i32 %i.aow, -16711936
  %i.aoy = and i32 %i.bo, 16711935
  %i.aoz = mul nuw nsw i32 %i.aoy, 6
  %i.apa = and i32 %i.br, 16711935
  %i.apb = and i32 %i.bg, 16711935
  %i.apc = add nuw nsw i32 %i.apa, %i.apb
  %i.apd = add nuw nsw i32 %i.apc, %i.aoz
  %i.ape = lshr i32 %i.apd, 3
  %i.apf = and i32 %i.ape, 16711935
  %i.apg = or disjoint i32 %i.aox, %i.apf
  br label %hq2x_interp_1x1.exit96

hq2x_interp_1x1.exit96:                           ; preds = %bb.by, %bb.bz, %yuv_diff.exit218.i94.thread, %yuv_diff.exit217.i92.thread, %yuv_diff.exit216.i57, %yuv_diff.exit.i90.thread, %bb.ce, %bb.cf, %bb.ch, %bb.cj, %bb.cl, %bb.cp, %bb.cs, %bb.cu, %bb.cx, %bb.cz, %bb.da
  %.0.i59 = phi i32 [ %i.abh, %yuv_diff.exit218.i94.thread ], [ %i.acy, %yuv_diff.exit217.i92.thread ], [ %i.apg, %bb.da ], [ %i.afx, %yuv_diff.exit.i90.thread ], [ %i.agq, %bb.ce ], [ %i.ahj, %bb.cf ], [ %i.aif, %bb.ch ], [ %i.aja, %bb.cj ], [ %i.ajv, %bb.cl ], [ %i.aks, %bb.cp ], [ %i.alo, %bb.cs ], [ %i.amk, %bb.cu ], [ %i.ang, %bb.cx ], [ %i.aom, %bb.cz ], [ %i.bo, %yuv_diff.exit216.i57 ], [ %i.bo, %bb.bz ], [ %i.bo, %bb.by ]
  %i.aph = getelementptr inbounds nuw i8, ptr %.0.i304, i64 4
  store i32 %.0.i59, ptr %i.aph, align 4, !tbaa !22
  %i.api = shl nuw nsw i32 %i.jf, 5               ; 2 uses
  %i.apj = and i32 %i.api, 64
  %i.apk = and i32 %i.api, 160
  %i.apl = or disjoint i32 %i.apk, %i.ji
  %i.apm = or disjoint i32 %i.apl, %i.jl
  %i.apn = shl nuw nsw i32 %i.jp, 1
  %i.apo = shl nuw nsw i32 %i.jr, 2
  %i.app = or i32 %i.apj, %i.apo
  %i.apq = or i32 %i.app, %i.apm
  %i.apr = or disjoint i32 %i.apq, %i.apn         ; 6 uses
  %i.aps = or disjoint i32 %i.apr, %i.jn          ; 18 uses
  %i.apt = and i32 %i.aps, 191                    ; 3 uses
  %i.apu = icmp eq i32 %i.apt, 55
  %i.apv = and i32 %i.aps, 219                    ; 2 uses
  %i.apw = icmp eq i32 %i.apv, 19
  %or.cond.i13 = or i1 %i.apu, %i.apw             ; 2 uses
  br i1 %or.cond.i13, label %bb.db, label %bb.dd

bb.db:                                            ; preds = %hq2x_interp_1x1.exit96
  %i.apx = and i32 %i.bx, 16777215
  %i.apy = zext nneg i32 %i.apx to i64
  %i.apz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.apy
  %i.aqa = load i32, ptr %i.apz, align 4, !tbaa !22 ; 3 uses
  %i.aqb = and i32 %i.br, 16777215
  %i.aqc = zext nneg i32 %i.aqb to i64
  %i.aqd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aqc
  %i.aqe = load i32, ptr %i.aqd, align 4, !tbaa !22 ; 3 uses
  %i.aqf = and i32 %i.aqa, 16711680
  %i.aqg = and i32 %i.aqe, 16711680
  %i.aqh = add nsw i32 %i.aqf, -3145729
  %i.aqi = sub nsw i32 %i.aqh, %i.aqg
  %i.aqj = icmp ult i32 %i.aqi, -6291457
  br i1 %i.aqj, label %yuv_diff.exit218.i52.thread, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.aqk = and i32 %i.aqa, 65280
  %i.aql = and i32 %i.aqe, 65280
  %i.aqm = add nsw i32 %i.aqk, -1793
  %i.aqn = sub nsw i32 %i.aqm, %i.aql
  %i.aqo = icmp ult i32 %i.aqn, -3585
  br i1 %i.aqo, label %yuv_diff.exit218.i52.thread, label %yuv_diff.exit218.i52

yuv_diff.exit218.i52:                             ; preds = %bb.dc
  %i.aqp = and i32 %i.aqa, 255
  %i.aqq = and i32 %i.aqe, 255
  %i.aqr = add nuw nsw i32 %i.aqp, 6
  %i.aqs = sub nsw i32 %i.aqr, %i.aqq
  %i.aqt = icmp ult i32 %i.aqs, 13
  br i1 %i.aqt, label %bb.dd, label %yuv_diff.exit218.i52.thread

yuv_diff.exit218.i52.thread:                      ; preds = %bb.db, %bb.dc, %yuv_diff.exit218.i52
  %i.aqu = lshr i32 %i.bo, 8
  %i.aqv = and i32 %i.aqu, 16711935
  %i.aqw = mul nuw nsw i32 %i.aqv, 3
  %i.aqx = lshr i32 %i.bn, 8
  %i.aqy = and i32 %i.aqx, 16711935
  %i.aqz = add nuw nsw i32 %i.aqw, %i.aqy
  %i.ara = shl nuw i32 %i.aqz, 6
  %i.arb = and i32 %i.ara, -16711936
  %i.arc = and i32 %i.bo, 16711935
  %i.ard = mul nuw nsw i32 %i.arc, 3
  %i.are = and i32 %i.bn, 16711935
  %i.arf = add nuw nsw i32 %i.ard, %i.are
  %i.arg = lshr i32 %i.arf, 2
  %i.arh = and i32 %i.arg, 16711935
  %i.ari = or disjoint i32 %i.arb, %i.arh
  br label %hq2x_interp_1x1.exit54

bb.dd:                                            ; preds = %yuv_diff.exit218.i52, %hq2x_interp_1x1.exit96
  %i.arj = icmp eq i32 %i.apv, 73
  %i.ark = and i32 %i.aps, 239
  %i.arl = insertelement <2 x i32> poison, i32 %i.aps, i64 0
  %i.arm = shufflevector <2 x i32> %i.arl, <2 x i32> poison, <8 x i32> zeroinitializer
  %i.arn = icmp eq i32 %i.ark, 109
  %or.cond167.i14 = or i1 %i.arj, %i.arn          ; 2 uses
  br i1 %or.cond167.i14, label %bb.de, label %bb.dg

bb.de:                                            ; preds = %bb.dd
  %i.aro = and i32 %i.bg, 16777215
  %i.arp = zext nneg i32 %i.aro to i64
  %i.arq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.arp
  %i.arr = load i32, ptr %i.arq, align 4, !tbaa !22 ; 3 uses
  %i.ars = and i32 %i.bn, 16777215
  %i.art = zext nneg i32 %i.ars to i64
  %i.aru = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.art
  %i.arv = load i32, ptr %i.aru, align 4, !tbaa !22 ; 3 uses
  %i.arw = and i32 %i.arr, 16711680
  %i.arx = and i32 %i.arv, 16711680
  %i.ary = add nsw i32 %i.arw, -3145729
  %i.arz = sub nsw i32 %i.ary, %i.arx
  %i.asa = icmp ult i32 %i.arz, -6291457
  br i1 %i.asa, label %yuv_diff.exit217.i50.thread, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.asb = and i32 %i.arr, 65280
  %i.asc = and i32 %i.arv, 65280
  %i.asd = add nsw i32 %i.asb, -1793
  %i.ase = sub nsw i32 %i.asd, %i.asc
  %i.asf = icmp ult i32 %i.ase, -3585
  br i1 %i.asf, label %yuv_diff.exit217.i50.thread, label %yuv_diff.exit217.i50

yuv_diff.exit217.i50:                             ; preds = %bb.df
  %i.asg = and i32 %i.arr, 255
  %i.ash = and i32 %i.arv, 255
  %i.asi = add nuw nsw i32 %i.asg, 6
  %i.asj = sub nsw i32 %i.asi, %i.ash
  %i.ask = icmp ult i32 %i.asj, 13
  br i1 %i.ask, label %bb.dg, label %yuv_diff.exit217.i50.thread

yuv_diff.exit217.i50.thread:                      ; preds = %bb.de, %bb.df, %yuv_diff.exit217.i50
  %i.asl = lshr i32 %i.bo, 8
  %i.asm = and i32 %i.asl, 16711935
  %i.asn = mul nuw nsw i32 %i.asm, 3
  %i.aso = lshr i32 %i.bx, 8
  %i.asp = and i32 %i.aso, 16711935
  %i.asq = add nuw nsw i32 %i.asp, %i.asn
  %i.asr = shl nuw i32 %i.asq, 6
  %i.ass = and i32 %i.asr, -16711936
  %i.ast = and i32 %i.bo, 16711935
  %i.asu = mul nuw nsw i32 %i.ast, 3
  %i.asv = and i32 %i.bx, 16711935
  %i.asw = add nuw nsw i32 %i.asv, %i.asu
  %i.asx = lshr i32 %i.asw, 2
  %i.asy = and i32 %i.asx, 16711935
  %i.asz = or disjoint i32 %i.ass, %i.asy
  br label %hq2x_interp_1x1.exit54

bb.dg:                                            ; preds = %yuv_diff.exit217.i50, %bb.dd
  %i.ata = and i32 %i.aps, 11                     ; 2 uses
  %i.atb = icmp eq i32 %i.ata, 11
  br i1 %i.atb, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.atc = trunc nuw i32 %i.apr to i8
  %trunc198 = and i8 %i.atc, -2
  switch i8 %trunc198, label %bb.dk [
    i8 74, label %bb.di
    i8 26, label %bb.di
  ]

bb.di:                                            ; preds = %bb.dh, %bb.dh, %bb.dg
  %i.atd = and i32 %i.bn, 16777215
  %i.ate = zext nneg i32 %i.atd to i64
  %i.atf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ate
  %i.atg = load i32, ptr %i.atf, align 4, !tbaa !22 ; 3 uses
  %i.ath = and i32 %i.bx, 16777215
  %i.ati = zext nneg i32 %i.ath to i64
  %i.atj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ati
  %i.atk = load i32, ptr %i.atj, align 4, !tbaa !22 ; 3 uses
  %i.atl = and i32 %i.atg, 16711680
  %i.atm = and i32 %i.atk, 16711680
  %i.atn = add nsw i32 %i.atl, -3145729
  %i.ato = sub nsw i32 %i.atn, %i.atm
  %i.atp = icmp ult i32 %i.ato, -6291457
  br i1 %i.atp, label %hq2x_interp_1x1.exit54, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.atq = and i32 %i.atg, 65280
  %i.atr = and i32 %i.atk, 65280
  %i.ats = add nsw i32 %i.atq, -1793
  %i.att = sub nsw i32 %i.ats, %i.atr
  %i.atu = icmp ult i32 %i.att, -3585
  br i1 %i.atu, label %hq2x_interp_1x1.exit54, label %yuv_diff.exit216.i15

yuv_diff.exit216.i15:                             ; preds = %bb.dj
  %i.atv = and i32 %i.atg, 255
  %i.atw = and i32 %i.atk, 255
  %i.atx = add nuw nsw i32 %i.atv, 6
  %i.aty = sub nsw i32 %i.atx, %i.atw
  %i.atz = icmp ult i32 %i.aty, 13
  br i1 %i.atz, label %bb.dk, label %hq2x_interp_1x1.exit54

bb.dk:                                            ; preds = %yuv_diff.exit216.i15, %bb.dh
  %i.aua = and i32 %i.aps, 111                    ; 2 uses
  %i.aub = icmp eq i32 %i.aua, 42
  %i.auc = and i32 %i.aps, 91
  %i.aud = icmp eq i32 %i.auc, 10
  %i.aue = icmp eq i32 %i.apt, 58
  %i.auf = and <8 x i32> %i.arm, <i32 223, i32 159, i32 207, i32 239, i32 63, i32 251, i32 187, i32 127> ; 5 uses
  %i.aug = icmp eq <8 x i32> %i.auf, <i32 90, i32 138, i32 138, i32 78, i32 14, i32 90, i32 138, i32 90>
  %i.auh = and i32 %i.aps, 175
  %i.aui = icmp eq i32 %i.auh, 138
  %i.auj = and i32 %i.aps, 235                    ; 2 uses
  %i.auk = icmp eq i32 %i.auj, 138
  %i.aul = bitcast <8 x i1> %i.aug to i8
  %i.aum = icmp ne i8 %i.aul, 0
  %op.rdx355 = or i1 %i.aum, %i.aub
  %op.rdx356 = or i1 %i.aud, %i.aue
  %op.rdx357 = or i1 %i.aui, %i.auk
  %op.rdx358 = or i1 %op.rdx355, %op.rdx356
  %op.rdx359 = or i1 %op.rdx358, %op.rdx357
  br i1 %op.rdx359, label %bb.dl, label %bb.dn

bb.dl:                                            ; preds = %bb.dk
  %i.aun = and i32 %i.bn, 16777215
  %i.auo = zext nneg i32 %i.aun to i64
  %i.aup = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.auo
  %i.auq = load i32, ptr %i.aup, align 4, !tbaa !22 ; 3 uses
  %i.aur = and i32 %i.bx, 16777215
  %i.aus = zext nneg i32 %i.aur to i64
  %i.aut = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aus
  %i.auu = load i32, ptr %i.aut, align 4, !tbaa !22 ; 3 uses
  %i.auv = and i32 %i.auq, 16711680
  %i.auw = and i32 %i.auu, 16711680
  %i.aux = add nsw i32 %i.auv, -3145729
  %i.auy = sub nsw i32 %i.aux, %i.auw
  %i.auz = icmp ult i32 %i.auy, -6291457
  br i1 %i.auz, label %yuv_diff.exit.i48.thread, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ava = and i32 %i.auq, 65280
  %i.avb = and i32 %i.auu, 65280
  %i.avc = add nsw i32 %i.ava, -1793
  %i.avd = sub nsw i32 %i.avc, %i.avb
  %i.ave = icmp ult i32 %i.avd, -3585
  br i1 %i.ave, label %yuv_diff.exit.i48.thread, label %yuv_diff.exit.i48

yuv_diff.exit.i48:                                ; preds = %bb.dm
  %i.avf = and i32 %i.auq, 255
  %i.avg = and i32 %i.auu, 255
  %i.avh = add nuw nsw i32 %i.avf, 6
  %i.avi = sub nsw i32 %i.avh, %i.avg
  %i.avj = icmp ult i32 %i.avi, 13
  br i1 %i.avj, label %bb.dn, label %yuv_diff.exit.i48.thread

yuv_diff.exit.i48.thread:                         ; preds = %bb.dl, %bb.dm, %yuv_diff.exit.i48
  %i.avk = lshr i32 %i.bo, 8
  %i.avl = and i32 %i.avk, 16711935
  %i.avm = mul nuw nsw i32 %i.avl, 3
  %i.avn = lshr i32 %i.bv, 8
  %i.avo = and i32 %i.avn, 16711935
  %i.avp = add nuw nsw i32 %i.avo, %i.avm
  %i.avq = shl nuw i32 %i.avp, 6
  %i.avr = and i32 %i.avq, -16711936
  %i.avs = and i32 %i.bo, 16711935
  %i.avt = mul nuw nsw i32 %i.avs, 3
  %i.avu = and i32 %i.bv, 16711935
  %i.avv = add nuw nsw i32 %i.avu, %i.avt
  %i.avw = lshr i32 %i.avv, 2
  %i.avx = and i32 %i.avw, 16711935
  %i.avy = or disjoint i32 %i.avr, %i.avx
  br label %hq2x_interp_1x1.exit54

bb.dn:                                            ; preds = %yuv_diff.exit.i48, %bb.dk
  switch i32 %i.ata, label %bb.dq [
    i32 8, label %bb.do
    i32 2, label %bb.dp
  ]

bb.do:                                            ; preds = %bb.dn
  %i.avz = lshr i32 %i.bo, 7
  %i.awa = and i32 %i.avz, 33423870
  %i.awb = lshr i32 %i.bv, 8
  %i.awc = and i32 %i.awb, 16711935
  %i.awd = add nuw nsw i32 %i.awc, %i.awa
  %i.awe = lshr i32 %i.bx, 8
  %i.awf = and i32 %i.awe, 16711935
  %i.awg = add nuw nsw i32 %i.awd, %i.awf
  %i.awh = shl nuw i32 %i.awg, 6
  %i.awi = and i32 %i.awh, -16711936
  %i.awj = shl i32 %i.bo, 1
  %i.awk = and i32 %i.awj, 33423870
  %i.awl = and i32 %i.bv, 16711935
  %i.awm = add nuw nsw i32 %i.awl, %i.awk
  %i.awn = and i32 %i.bx, 16711935
  %i.awo = add nuw nsw i32 %i.awm, %i.awn
  %i.awp = lshr i32 %i.awo, 2
  %i.awq = and i32 %i.awp, 16711935
  %i.awr = or disjoint i32 %i.awi, %i.awq
  br label %hq2x_interp_1x1.exit54

bb.dp:                                            ; preds = %bb.dn
  %i.aws = lshr i32 %i.bo, 7
  %i.awt = and i32 %i.aws, 33423870
  %i.awu = lshr i32 %i.bv, 8
  %i.awv = and i32 %i.awu, 16711935
  %i.aww = lshr i32 %i.bn, 8
  %i.awx = and i32 %i.aww, 16711935
  %i.awy = add nuw nsw i32 %i.awt, %i.awx
  %i.awz = add nuw nsw i32 %i.awy, %i.awv
  %i.axa = shl nuw i32 %i.awz, 6
  %i.axb = and i32 %i.axa, -16711936
  %i.axc = shl i32 %i.bo, 1
  %i.axd = and i32 %i.axc, 33423870
  %i.axe = and i32 %i.bv, 16711935
  %i.axf = and i32 %i.bn, 16711935
  %i.axg = add nuw nsw i32 %i.axd, %i.axf
  %i.axh = add nuw nsw i32 %i.axg, %i.axe
  %i.axi = lshr i32 %i.axh, 2
  %i.axj = and i32 %i.axi, 16711935
  %i.axk = or disjoint i32 %i.axb, %i.axj
  br label %hq2x_interp_1x1.exit54

bb.dq:                                            ; preds = %bb.dn
  %i.axl = and i32 %i.aps, 47                     ; 2 uses
  %i.axm = icmp eq i32 %i.axl, 47
  br i1 %i.axm, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.axn = lshr i32 %i.bo, 8
  %i.axo = and i32 %i.axn, 16711935
  %i.axp = mul nuw nsw i32 %i.axo, 14
  %i.axq = lshr i32 %i.bn, 8
  %i.axr = and i32 %i.axq, 16711935
  %i.axs = add nuw nsw i32 %i.axp, %i.axr
  %i.axt = lshr i32 %i.bx, 8
  %i.axu = and i32 %i.axt, 16711935
  %i.axv = add nuw nsw i32 %i.axs, %i.axu
  %i.axw = shl nuw i32 %i.axv, 4
  %i.axx = and i32 %i.axw, -16711936
  %i.axy = and i32 %i.bo, 16711935
  %i.axz = mul nuw nsw i32 %i.axy, 14
  %i.aya = and i32 %i.bn, 16711935
  %i.ayb = add nuw nsw i32 %i.axz, %i.aya
  %i.ayc = and i32 %i.bx, 16711935
  %i.ayd = add nuw nsw i32 %i.ayb, %i.ayc
  %i.aye = lshr i32 %i.ayd, 4
  %i.ayf = and i32 %i.aye, 16711935
  %i.ayg = or disjoint i32 %i.axx, %i.ayf
  br label %hq2x_interp_1x1.exit54

bb.ds:                                            ; preds = %bb.dq
  br i1 %or.cond.i13, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.ayh = lshr i32 %i.bo, 8
  %i.ayi = and i32 %i.ayh, 16711935
  %i.ayj = mul nuw nsw i32 %i.ayi, 5
  %i.ayk = lshr i32 %i.bx, 7
  %i.ayl = and i32 %i.ayk, 33423870
  %i.aym = lshr i32 %i.bn, 8
  %i.ayn = and i32 %i.aym, 16711935
  %i.ayo = add nuw nsw i32 %i.ayj, %i.ayn
  %i.ayp = add nuw nsw i32 %i.ayo, %i.ayl
  %i.ayq = shl nuw i32 %i.ayp, 5
  %i.ayr = and i32 %i.ayq, -16711936
  %i.ays = and i32 %i.bo, 16711935
  %i.ayt = mul nuw nsw i32 %i.ays, 5
  %i.ayu = shl i32 %i.bx, 1
  %i.ayv = and i32 %i.ayu, 33423870
  %i.ayw = and i32 %i.bn, 16711935
  %i.ayx = add nuw nsw i32 %i.ayt, %i.ayw
  %i.ayy = add nuw nsw i32 %i.ayx, %i.ayv
  %i.ayz = lshr i32 %i.ayy, 3
  %i.aza = and i32 %i.ayz, 16711935
  %i.azb = or disjoint i32 %i.ayr, %i.aza
  br label %hq2x_interp_1x1.exit54

bb.du:                                            ; preds = %bb.ds
  br i1 %or.cond167.i14, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.azc = lshr i32 %i.bo, 8
  %i.azd = and i32 %i.azc, 16711935
  %i.aze = mul nuw nsw i32 %i.azd, 5
  %i.azf = lshr i32 %i.bn, 7
  %i.azg = and i32 %i.azf, 33423870
  %i.azh = add nuw nsw i32 %i.aze, %i.azg
  %i.azi = lshr i32 %i.bx, 8
  %i.azj = and i32 %i.azi, 16711935
  %i.azk = add nuw nsw i32 %i.azh, %i.azj
  %i.azl = shl nuw i32 %i.azk, 5
  %i.azm = and i32 %i.azl, -16711936
  %i.azn = and i32 %i.bo, 16711935
  %i.azo = mul nuw nsw i32 %i.azn, 5
  %i.azp = shl i32 %i.bn, 1
  %i.azq = and i32 %i.azp, 33423870
  %i.azr = add nuw nsw i32 %i.azo, %i.azq
  %i.azs = and i32 %i.bx, 16711935
  %i.azt = add nuw nsw i32 %i.azr, %i.azs
  %i.azu = lshr i32 %i.azt, 3
  %i.azv = and i32 %i.azu, 16711935
  %i.azw = or disjoint i32 %i.azm, %i.azv
  br label %hq2x_interp_1x1.exit54

bb.dw:                                            ; preds = %bb.du
  %i.azx = and i32 %i.aps, 27
  %i.azy = icmp eq i32 %i.azx, 3
  br i1 %i.azy, label %bb.dz, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.azz = and i32 %i.aps, 79                     ; 2 uses
  %i.baa = icmp eq i32 %i.azz, 67
  br i1 %i.baa, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.bab = and i32 %i.aps, 139                    ; 2 uses
  %i.bac = icmp eq i32 %i.bab, 131
  %i.bad = and i32 %i.aps, 107
  %i.bae = icmp eq i32 %i.bad, 67
  %or.cond193.i31 = or i1 %i.bac, %i.bae
  br i1 %or.cond193.i31, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy, %bb.dx, %bb.dw
  %i.baf = lshr i32 %i.bo, 8
  %i.bag = and i32 %i.baf, 16711935
  %i.bah = mul nuw nsw i32 %i.bag, 3
  %i.bai = lshr i32 %i.bn, 8
  %i.baj = and i32 %i.bai, 16711935
  %i.bak = add nuw nsw i32 %i.bah, %i.baj
  %i.bal = shl nuw i32 %i.bak, 6
  %i.bam = and i32 %i.bal, -16711936
  %i.ban = and i32 %i.bo, 16711935
  %i.bao = mul nuw nsw i32 %i.ban, 3
  %i.bap = and i32 %i.bn, 16711935
  %i.baq = add nuw nsw i32 %i.bao, %i.bap
  %i.bar = lshr i32 %i.baq, 2
  %i.bas = and i32 %i.bar, 16711935
  %i.bat = or disjoint i32 %i.bam, %i.bas
  br label %hq2x_interp_1x1.exit54

bb.ea:                                            ; preds = %bb.dy
  %i.bau = and i32 %i.aps, 75
  %i.bav = icmp eq i32 %i.bau, 9
  %i.baw = icmp eq i32 %i.bab, 137
  %or.cond194.i32 = or i1 %i.bav, %i.baw
  %i.bax = and i32 %i.aps, 31
  %i.bay = icmp eq i32 %i.bax, 25
  %or.cond196.i33 = or i1 %i.bay, %or.cond194.i32
  br i1 %or.cond196.i33, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.baz = and i32 %i.aps, 59                     ; 2 uses
  %i.bba = icmp eq i32 %i.baz, 25
  br i1 %i.bba, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %i.bbb = lshr i32 %i.bo, 8
  %i.bbc = and i32 %i.bbb, 16711935
  %i.bbd = mul nuw nsw i32 %i.bbc, 3
  %i.bbe = lshr i32 %i.bx, 8
  %i.bbf = and i32 %i.bbe, 16711935
  %i.bbg = add nuw nsw i32 %i.bbf, %i.bbd
  %i.bbh = shl nuw i32 %i.bbg, 6
  %i.bbi = and i32 %i.bbh, -16711936
  %i.bbj = and i32 %i.bo, 16711935
  %i.bbk = mul nuw nsw i32 %i.bbj, 3
  %i.bbl = and i32 %i.bx, 16711935
  %i.bbm = add nuw nsw i32 %i.bbl, %i.bbk
  %i.bbn = lshr i32 %i.bbm, 2
  %i.bbo = and i32 %i.bbn, 16711935
  %i.bbp = or disjoint i32 %i.bbi, %i.bbo
  br label %hq2x_interp_1x1.exit54

bb.ed:                                            ; preds = %bb.eb
  %i.bbq = and i32 %i.apr, 126                    ; 3 uses
  %i.bbr = icmp eq i32 %i.bbq, 42
  %5 = extractelement <8 x i32> %i.auf, i64 3
  %i.bbs = icmp eq i32 %5, 171
  %or.cond197.i34 = or i1 %i.bbr, %i.bbs
  %i.bbt = icmp eq i32 %i.apt, 143
  %or.cond198.i35 = or i1 %i.bbt, %or.cond197.i34
  %i.bbu = icmp eq i32 %i.bbq, 14
  %or.cond199.i36 = or i1 %i.bbu, %or.cond198.i35
  br i1 %or.cond199.i36, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.bbv = lshr i32 %i.bo, 7
  %i.bbw = and i32 %i.bbv, 33423870
  %i.bbx = lshr i32 %i.bn, 8
  %i.bby = and i32 %i.bbx, 16711935
  %i.bbz = lshr i32 %i.bx, 8
  %i.bca = and i32 %i.bbz, 16711935
  %reass.add282 = add nuw nsw i32 %i.bca, %i.bby
  %reass.mul283 = mul nuw nsw i32 %reass.add282, 3
  %i.bcb = add nuw nsw i32 %reass.mul283, %i.bbw
  %i.bcc = shl nuw i32 %i.bcb, 5
  %i.bcd = and i32 %i.bcc, -16711936
  %i.bce = shl i32 %i.bo, 1
  %i.bcf = and i32 %i.bce, 33423870
  %i.bcg = and i32 %i.bn, 16711935
  %i.bch = and i32 %i.bx, 16711935
  %reass.add284 = add nuw nsw i32 %i.bch, %i.bcg
  %reass.mul285 = mul nuw nsw i32 %reass.add284, 3
  %i.bci = add nuw nsw i32 %reass.mul285, %i.bcf
  %i.bcj = lshr i32 %i.bci, 3
  %i.bck = and i32 %i.bcj, 16711935
  %i.bcl = or disjoint i32 %i.bcd, %i.bck
  br label %hq2x_interp_1x1.exit54

bb.ef:                                            ; preds = %bb.ed
  %i.bcm = extractelement <8 x i32> %i.auf, i64 5 ; 2 uses
  %i.bcn = icmp eq i32 %i.bcm, 106
  %i.bco = icmp eq i32 %i.aua, 110
  %or.cond200.i37 = or i1 %i.bcn, %i.bco
  %i.bcp = extractelement <8 x i32> %i.auf, i64 4
  %i.bcq = icmp eq i32 %i.bcp, 62
  %or.cond202.i38 = or i1 %i.bcq, %or.cond200.i37
  %i.bcr = icmp eq i32 %i.bcm, 250
  %or.cond203.i39 = or i1 %i.bcr, %or.cond202.i38
  br i1 %or.cond203.i39, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.bcs = trunc i32 %i.aps to i8
  %trunc199 = and i8 %i.bcs, -33
  switch i8 %trunc199, label %bb.ei [
    i8 -34, label %bb.eh
    i8 30, label %bb.eh
  ]

bb.eh:                                            ; preds = %bb.eg, %bb.eg, %bb.ef
  %i.bct = lshr i32 %i.bo, 8
  %i.bcu = and i32 %i.bct, 16711935
  %i.bcv = mul nuw nsw i32 %i.bcu, 3
  %i.bcw = lshr i32 %i.bv, 8
  %i.bcx = and i32 %i.bcw, 16711935
  %i.bcy = add nuw nsw i32 %i.bcx, %i.bcv
  %i.bcz = shl nuw i32 %i.bcy, 6
  %i.bda = and i32 %i.bcz, -16711936
  %i.bdb = and i32 %i.bo, 16711935
  %i.bdc = mul nuw nsw i32 %i.bdb, 3
  %i.bdd = and i32 %i.bv, 16711935
  %i.bde = add nuw nsw i32 %i.bdd, %i.bdc
  %i.bdf = lshr i32 %i.bde, 2
  %i.bdg = and i32 %i.bdf, 16711935
  %i.bdh = or disjoint i32 %i.bda, %i.bdg
  br label %hq2x_interp_1x1.exit54

bb.ei:                                            ; preds = %bb.eg
  %i.bdi = and i32 %i.apr, 10
  %i.bdj = icmp eq i32 %i.bdi, 0
  %i.bdk = icmp eq i32 %i.azz, 75
  %or.cond204.i40 = or i1 %i.bdj, %i.bdk
  %i.bdl = extractelement <8 x i32> %i.auf, i64 1
  %i.bdm = icmp eq i32 %i.bdl, 27
  %or.cond206.i41 = or i1 %i.bdm, %or.cond204.i40
  %i.bdn = icmp eq i32 %i.axl, 11
  %or.cond207.i42 = or i1 %i.bdn, %or.cond206.i41
  %i.bdo = and i32 %i.apr, 190
  %i.bdp = icmp eq i32 %i.bdo, 10
  %or.cond209.i43 = or i1 %i.bdp, %or.cond207.i42
  %i.bdq = and i32 %i.apr, 238
  %i.bdr = icmp eq i32 %i.bdq, 10
  %or.cond211.i44 = or i1 %i.bdr, %or.cond209.i43
  %i.bds = icmp eq i32 %i.bbq, 10
  %or.cond212.i45 = or i1 %i.bds, %or.cond211.i44
  %i.bdt = icmp eq i32 %i.auj, 75
  %or.cond214.i46 = or i1 %i.bdt, %or.cond212.i45
  %i.bdu = icmp eq i32 %i.baz, 27
  %or.cond215.i47 = or i1 %i.bdu, %or.cond214.i46
  br i1 %or.cond215.i47, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.bdv = lshr i32 %i.bo, 7
  %i.bdw = and i32 %i.bdv, 33423870
  %i.bdx = lshr i32 %i.bn, 8
  %i.bdy = and i32 %i.bdx, 16711935
  %i.bdz = add nuw nsw i32 %i.bdw, %i.bdy
  %i.bea = lshr i32 %i.bx, 8
  %i.beb = and i32 %i.bea, 16711935
  %i.bec = add nuw nsw i32 %i.bdz, %i.beb
  %i.bed = shl nuw i32 %i.bec, 6
  %i.bee = and i32 %i.bed, -16711936
  %i.bef = shl i32 %i.bo, 1
  %i.beg = and i32 %i.bef, 33423870
  %i.beh = and i32 %i.bn, 16711935
  %i.bei = add nuw nsw i32 %i.beg, %i.beh
  %i.bej = and i32 %i.bx, 16711935
  %i.bek = add nuw nsw i32 %i.bei, %i.bej
  %i.bel = lshr i32 %i.bek, 2
  %i.bem = and i32 %i.bel, 16711935
  %i.ben = or disjoint i32 %i.bee, %i.bem
  br label %hq2x_interp_1x1.exit54

bb.ek:                                            ; preds = %bb.ei
  %i.beo = lshr i32 %i.bo, 8
  %i.bep = and i32 %i.beo, 16711935
  %i.beq = mul nuw nsw i32 %i.bep, 6
  %i.ber = lshr i32 %i.bn, 8
  %i.bes = and i32 %i.ber, 16711935
  %i.bet = add nuw nsw i32 %i.beq, %i.bes
  %i.beu = lshr i32 %i.bx, 8
  %i.bev = and i32 %i.beu, 16711935
  %i.bew = add nuw nsw i32 %i.bet, %i.bev
  %i.bex = shl nuw i32 %i.bew, 5
  %i.bey = and i32 %i.bex, -16711936
  %i.bez = and i32 %i.bo, 16711935
  %i.bfa = mul nuw nsw i32 %i.bez, 6
  %i.bfb = and i32 %i.bn, 16711935
  %i.bfc = add nuw nsw i32 %i.bfa, %i.bfb
  %i.bfd = and i32 %i.bx, 16711935
  %i.bfe = add nuw nsw i32 %i.bfc, %i.bfd
  %i.bff = lshr i32 %i.bfe, 3
  %i.bfg = and i32 %i.bff, 16711935
  %i.bfh = or disjoint i32 %i.bey, %i.bfg
  br label %hq2x_interp_1x1.exit54

hq2x_interp_1x1.exit54:                           ; preds = %bb.di, %bb.dj, %yuv_diff.exit218.i52.thread, %yuv_diff.exit217.i50.thread, %yuv_diff.exit216.i15, %yuv_diff.exit.i48.thread, %bb.do, %bb.dp, %bb.dr, %bb.dt, %bb.dv, %bb.dz, %bb.ec, %bb.ee, %bb.eh, %bb.ej, %bb.ek
  %.0.i17 = phi i32 [ %i.ari, %yuv_diff.exit218.i52.thread ], [ %i.asz, %yuv_diff.exit217.i50.thread ], [ %i.bfh, %bb.ek ], [ %i.avy, %yuv_diff.exit.i48.thread ], [ %i.awr, %bb.do ], [ %i.axk, %bb.dp ], [ %i.ayg, %bb.dr ], [ %i.azb, %bb.dt ], [ %i.azw, %bb.dv ], [ %i.bat, %bb.dz ], [ %i.bbp, %bb.ec ], [ %i.bcl, %bb.ee ], [ %i.bdh, %bb.eh ], [ %i.ben, %bb.ej ], [ %i.bo, %yuv_diff.exit216.i15 ], [ %i.bo, %bb.dj ], [ %i.bo, %bb.di ]
  %i.bfi = getelementptr inbounds [4 x i8], ptr %.0.i304, i64 %i.af ; 2 uses
  store i32 %.0.i17, ptr %i.bfi, align 4, !tbaa !22
  %trunc212 = trunc nuw i32 %i.jf to i8
  %i.bfj = and i8 %trunc212, 127
  %mask214 = tail call i8 @llvm.bitreverse.i8(i8 %i.bfj)
  %i.bfk = zext i8 %mask214 to i32
  %i.bfl = or i32 %i.jr, %i.bfk                   ; 23 uses
  %i.bfm = and i32 %i.bfl, 191                    ; 3 uses
  %i.bfn = icmp eq i32 %i.bfm, 55
  %i.bfo = and i32 %i.bfl, 219                    ; 2 uses
  %i.bfp = icmp eq i32 %i.bfo, 19
  %or.cond.i = or i1 %i.bfn, %i.bfp               ; 2 uses
  br i1 %or.cond.i, label %bb.el, label %bb.en

bb.el:                                            ; preds = %hq2x_interp_1x1.exit54
  %i.bfq = and i32 %i.bx, 16777215
  %i.bfr = zext nneg i32 %i.bfq to i64
  %i.bfs = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bfr
  %i.bft = load i32, ptr %i.bfs, align 4, !tbaa !22 ; 3 uses
  %i.bfu = and i32 %i.bn, 16777215
  %i.bfv = zext nneg i32 %i.bfu to i64
  %i.bfw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bfv
  %i.bfx = load i32, ptr %i.bfw, align 4, !tbaa !22 ; 3 uses
  %i.bfy = and i32 %i.bft, 16711680
  %i.bfz = and i32 %i.bfx, 16711680
  %i.bga = add nsw i32 %i.bfy, -3145729
  %i.bgb = sub nsw i32 %i.bga, %i.bfz
  %i.bgc = icmp ult i32 %i.bgb, -6291457
  br i1 %i.bgc, label %yuv_diff.exit218.i.thread, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.bgd = and i32 %i.bft, 65280
  %i.bge = and i32 %i.bfx, 65280
  %i.bgf = add nsw i32 %i.bgd, -1793
  %i.bgg = sub nsw i32 %i.bgf, %i.bge
  %i.bgh = icmp ult i32 %i.bgg, -3585
  br i1 %i.bgh, label %yuv_diff.exit218.i.thread, label %yuv_diff.exit218.i

yuv_diff.exit218.i:                               ; preds = %bb.em
  %i.bgi = and i32 %i.bft, 255
  %i.bgj = and i32 %i.bfx, 255
  %i.bgk = add nuw nsw i32 %i.bgi, 6
  %i.bgl = sub nsw i32 %i.bgk, %i.bgj
  %i.bgm = icmp ult i32 %i.bgl, 13
  br i1 %i.bgm, label %bb.en, label %yuv_diff.exit218.i.thread

yuv_diff.exit218.i.thread:                        ; preds = %bb.el, %bb.em, %yuv_diff.exit218.i
  %i.bgn = lshr i32 %i.bo, 8
  %i.bgo = and i32 %i.bgn, 16711935
  %i.bgp = mul nuw nsw i32 %i.bgo, 3
  %i.bgq = lshr i32 %i.br, 8
  %i.bgr = and i32 %i.bgq, 16711935
  %i.bgs = add nuw nsw i32 %i.bgp, %i.bgr
  %i.bgt = shl nuw i32 %i.bgs, 6
  %i.bgu = and i32 %i.bgt, -16711936
  %i.bgv = and i32 %i.bo, 16711935
  %i.bgw = mul nuw nsw i32 %i.bgv, 3
  %i.bgx = and i32 %i.br, 16711935
  %i.bgy = add nuw nsw i32 %i.bgw, %i.bgx
  %i.bgz = lshr i32 %i.bgy, 2
  %i.bha = and i32 %i.bgz, 16711935
  %i.bhb = or disjoint i32 %i.bgu, %i.bha
  br label %hq2x_interp_1x1.exit

bb.en:                                            ; preds = %yuv_diff.exit218.i, %hq2x_interp_1x1.exit54
  %i.bhc = icmp eq i32 %i.bfo, 73
  %i.bhd = and i32 %i.bfl, 239
  %i.bhe = insertelement <2 x i32> poison, i32 %i.bfl, i64 0
  %i.bhf = shufflevector <2 x i32> %i.bhe, <2 x i32> poison, <8 x i32> zeroinitializer
  %i.bhg = icmp eq i32 %i.bhd, 109
  %or.cond167.i = or i1 %i.bhc, %i.bhg            ; 2 uses
  br i1 %or.cond167.i, label %bb.eo, label %bb.eq

bb.eo:                                            ; preds = %bb.en
  %i.bhh = and i32 %i.bg, 16777215
  %i.bhi = zext nneg i32 %i.bhh to i64
  %i.bhj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bhi
  %i.bhk = load i32, ptr %i.bhj, align 4, !tbaa !22 ; 3 uses
  %i.bhl = and i32 %i.br, 16777215
  %i.bhm = zext nneg i32 %i.bhl to i64
  %i.bhn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bhm
  %i.bho = load i32, ptr %i.bhn, align 4, !tbaa !22 ; 3 uses
  %i.bhp = and i32 %i.bhk, 16711680
  %i.bhq = and i32 %i.bho, 16711680
  %i.bhr = add nsw i32 %i.bhp, -3145729
  %i.bhs = sub nsw i32 %i.bhr, %i.bhq
  %i.bht = icmp ult i32 %i.bhs, -6291457
  br i1 %i.bht, label %yuv_diff.exit217.i.thread, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.bhu = and i32 %i.bhk, 65280
  %i.bhv = and i32 %i.bho, 65280
  %i.bhw = add nsw i32 %i.bhu, -1793
  %i.bhx = sub nsw i32 %i.bhw, %i.bhv
  %i.bhy = icmp ult i32 %i.bhx, -3585
  br i1 %i.bhy, label %yuv_diff.exit217.i.thread, label %yuv_diff.exit217.i

yuv_diff.exit217.i:                               ; preds = %bb.ep
  %i.bhz = and i32 %i.bhk, 255
  %i.bia = and i32 %i.bho, 255
  %i.bib = add nuw nsw i32 %i.bhz, 6
  %i.bic = sub nsw i32 %i.bib, %i.bia
  %i.bid = icmp ult i32 %i.bic, 13
  br i1 %i.bid, label %bb.eq, label %yuv_diff.exit217.i.thread

yuv_diff.exit217.i.thread:                        ; preds = %bb.eo, %bb.ep, %yuv_diff.exit217.i
  %i.bie = lshr i32 %i.bo, 8
  %i.bif = and i32 %i.bie, 16711935
  %i.big = mul nuw nsw i32 %i.bif, 3
  %i.bih = lshr i32 %i.bx, 8
  %i.bii = and i32 %i.bih, 16711935
  %i.bij = add nuw nsw i32 %i.bii, %i.big
  %i.bik = shl nuw i32 %i.bij, 6
  %i.bil = and i32 %i.bik, -16711936
  %i.bim = and i32 %i.bo, 16711935
  %i.bin = mul nuw nsw i32 %i.bim, 3
  %i.bio = and i32 %i.bx, 16711935
  %i.bip = add nuw nsw i32 %i.bio, %i.bin
  %i.biq = lshr i32 %i.bip, 2
  %i.bir = and i32 %i.biq, 16711935
  %i.bis = or disjoint i32 %i.bil, %i.bir
  br label %hq2x_interp_1x1.exit

bb.eq:                                            ; preds = %yuv_diff.exit217.i, %bb.en
  %i.bit = and i32 %i.bfl, 11                     ; 2 uses
  %i.biu = icmp eq i32 %i.bit, 11
  br i1 %i.biu, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.biv = trunc nuw i32 %i.bfl to i8
  %trunc215 = and i8 %i.biv, -2
  switch i8 %trunc215, label %bb.eu [
    i8 74, label %bb.es
    i8 26, label %bb.es
  ]

bb.es:                                            ; preds = %bb.er, %bb.er, %bb.eq
  %i.biw = and i32 %i.br, 16777215
  %i.bix = zext nneg i32 %i.biw to i64
  %i.biy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bix
  %i.biz = load i32, ptr %i.biy, align 4, !tbaa !22 ; 3 uses
  %i.bja = and i32 %i.bx, 16777215
  %i.bjb = zext nneg i32 %i.bja to i64
  %i.bjc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bjb
  %i.bjd = load i32, ptr %i.bjc, align 4, !tbaa !22 ; 3 uses
  %i.bje = and i32 %i.biz, 16711680
  %i.bjf = and i32 %i.bjd, 16711680
  %i.bjg = add nsw i32 %i.bje, -3145729
  %i.bjh = sub nsw i32 %i.bjg, %i.bjf
  %i.bji = icmp ult i32 %i.bjh, -6291457
  br i1 %i.bji, label %hq2x_interp_1x1.exit, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.bjj = and i32 %i.biz, 65280
  %i.bjk = and i32 %i.bjd, 65280
  %i.bjl = add nsw i32 %i.bjj, -1793
  %i.bjm = sub nsw i32 %i.bjl, %i.bjk
  %i.bjn = icmp ult i32 %i.bjm, -3585
  br i1 %i.bjn, label %hq2x_interp_1x1.exit, label %yuv_diff.exit216.i

yuv_diff.exit216.i:                               ; preds = %bb.et
  %i.bjo = and i32 %i.biz, 255
  %i.bjp = and i32 %i.bjd, 255
  %i.bjq = add nuw nsw i32 %i.bjo, 6
  %i.bjr = sub nsw i32 %i.bjq, %i.bjp
  %i.bjs = icmp ult i32 %i.bjr, 13
  br i1 %i.bjs, label %bb.eu, label %hq2x_interp_1x1.exit

bb.eu:                                            ; preds = %yuv_diff.exit216.i, %bb.er
  %i.bjt = and i32 %i.bfl, 111                    ; 2 uses
  %i.bju = icmp eq i32 %i.bjt, 42
  %i.bjv = and i32 %i.bfl, 91
  %i.bjw = icmp eq i32 %i.bjv, 10
  %i.bjx = icmp eq i32 %i.bfm, 58
  %i.bjy = and <8 x i32> %i.bhf, <i32 223, i32 159, i32 207, i32 239, i32 63, i32 251, i32 187, i32 127> ; 5 uses
  %i.bjz = icmp eq <8 x i32> %i.bjy, <i32 90, i32 138, i32 138, i32 78, i32 14, i32 90, i32 138, i32 90>
  %i.bka = and i32 %i.bfl, 175
  %i.bkb = icmp eq i32 %i.bka, 138
  %i.bkc = and i32 %i.bfl, 235                    ; 2 uses
  %i.bkd = icmp eq i32 %i.bkc, 138
  %i.bke = bitcast <8 x i1> %i.bjz to i8
  %i.bkf = icmp ne i8 %i.bke, 0
  %op.rdx = or i1 %i.bkf, %i.bju
  %op.rdx351 = or i1 %i.bjw, %i.bjx
  %op.rdx352 = or i1 %i.bkb, %i.bkd
  %op.rdx353 = or i1 %op.rdx, %op.rdx351
  %op.rdx354 = or i1 %op.rdx353, %op.rdx352
  br i1 %op.rdx354, label %bb.ev, label %bb.ex

bb.ev:                                            ; preds = %bb.eu
  %i.bkg = and i32 %i.br, 16777215
  %i.bkh = zext nneg i32 %i.bkg to i64
  %i.bki = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bkh
  %i.bkj = load i32, ptr %i.bki, align 4, !tbaa !22 ; 3 uses
  %i.bkk = and i32 %i.bx, 16777215
  %i.bkl = zext nneg i32 %i.bkk to i64
  %i.bkm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bkl
  %i.bkn = load i32, ptr %i.bkm, align 4, !tbaa !22 ; 3 uses
  %i.bko = and i32 %i.bkj, 16711680
  %i.bkp = and i32 %i.bkn, 16711680
  %i.bkq = add nsw i32 %i.bko, -3145729
  %i.bkr = sub nsw i32 %i.bkq, %i.bkp
  %i.bks = icmp ult i32 %i.bkr, -6291457
  br i1 %i.bks, label %yuv_diff.exit.i.thread, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.bkt = and i32 %i.bkj, 65280
  %i.bku = and i32 %i.bkn, 65280
  %i.bkv = add nsw i32 %i.bkt, -1793
  %i.bkw = sub nsw i32 %i.bkv, %i.bku
  %i.bkx = icmp ult i32 %i.bkw, -3585
  br i1 %i.bkx, label %yuv_diff.exit.i.thread, label %yuv_diff.exit.i

yuv_diff.exit.i:                                  ; preds = %bb.ew
  %i.bky = and i32 %i.bkj, 255
  %i.bkz = and i32 %i.bkn, 255
  %i.bla = add nuw nsw i32 %i.bky, 6
  %i.blb = sub nsw i32 %i.bla, %i.bkz
  %i.blc = icmp ult i32 %i.blb, 13
  br i1 %i.blc, label %bb.ex, label %yuv_diff.exit.i.thread

yuv_diff.exit.i.thread:                           ; preds = %bb.ev, %bb.ew, %yuv_diff.exit.i
  %i.bld = lshr i32 %i.bo, 8
  %i.ble = and i32 %i.bld, 16711935
  %i.blf = mul nuw nsw i32 %i.ble, 3
  %i.blg = lshr i32 %i.cb, 8
  %i.blh = and i32 %i.blg, 16711935
  %i.bli = add nuw nsw i32 %i.blh, %i.blf
  %i.blj = shl nuw i32 %i.bli, 6
  %i.blk = and i32 %i.blj, -16711936
  %i.bll = and i32 %i.bo, 16711935
  %i.blm = mul nuw nsw i32 %i.bll, 3
  %i.bln = and i32 %i.cb, 16711935
  %i.blo = add nuw nsw i32 %i.bln, %i.blm
  %i.blp = lshr i32 %i.blo, 2
  %i.blq = and i32 %i.blp, 16711935
  %i.blr = or disjoint i32 %i.blk, %i.blq
  br label %hq2x_interp_1x1.exit

bb.ex:                                            ; preds = %yuv_diff.exit.i, %bb.eu
  switch i32 %i.bit, label %bb.fa [
    i32 8, label %bb.ey
    i32 2, label %bb.ez
  ]

bb.ey:                                            ; preds = %bb.ex
  %i.bls = lshr i32 %i.bo, 7
  %i.blt = and i32 %i.bls, 33423870
  %i.blu = lshr i32 %i.cb, 8
  %i.blv = and i32 %i.blu, 16711935
  %i.blw = lshr i32 %i.bx, 8
  %i.blx = and i32 %i.blw, 16711935
  %i.bly = add nuw nsw i32 %i.blx, %i.blt
  %i.blz = add nuw nsw i32 %i.bly, %i.blv
  %i.bma = shl nuw i32 %i.blz, 6
  %i.bmb = and i32 %i.bma, -16711936
  %i.bmc = shl i32 %i.bo, 1
  %i.bmd = and i32 %i.bmc, 33423870
  %i.bme = and i32 %i.cb, 16711935
  %i.bmf = and i32 %i.bx, 16711935
  %i.bmg = add nuw nsw i32 %i.bmf, %i.bmd
  %i.bmh = add nuw nsw i32 %i.bmg, %i.bme
  %i.bmi = lshr i32 %i.bmh, 2
  %i.bmj = and i32 %i.bmi, 16711935
  %i.bmk = or disjoint i32 %i.bmb, %i.bmj
  br label %hq2x_interp_1x1.exit

bb.ez:                                            ; preds = %bb.ex
  %i.bml = lshr i32 %i.bo, 7
  %i.bmm = and i32 %i.bml, 33423870
  %i.bmn = lshr i32 %i.cb, 8
  %i.bmo = and i32 %i.bmn, 16711935
  %i.bmp = lshr i32 %i.br, 8
  %i.bmq = and i32 %i.bmp, 16711935
  %i.bmr = add nuw nsw i32 %i.bmq, %i.bmm
  %i.bms = add nuw nsw i32 %i.bmr, %i.bmo
  %i.bmt = shl nuw i32 %i.bms, 6
  %i.bmu = and i32 %i.bmt, -16711936
  %i.bmv = shl i32 %i.bo, 1
  %i.bmw = and i32 %i.bmv, 33423870
  %i.bmx = and i32 %i.cb, 16711935
  %i.bmy = and i32 %i.br, 16711935
  %i.bmz = add nuw nsw i32 %i.bmy, %i.bmw
  %i.bna = add nuw nsw i32 %i.bmz, %i.bmx
  %i.bnb = lshr i32 %i.bna, 2
  %i.bnc = and i32 %i.bnb, 16711935
  %i.bnd = or disjoint i32 %i.bmu, %i.bnc
  br label %hq2x_interp_1x1.exit

bb.fa:                                            ; preds = %bb.ex
  %i.bne = and i32 %i.bfl, 47                     ; 2 uses
  %i.bnf = icmp eq i32 %i.bne, 47
  br i1 %i.bnf, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.bng = lshr i32 %i.bo, 8
  %i.bnh = and i32 %i.bng, 16711935
  %i.bni = mul nuw nsw i32 %i.bnh, 14
  %i.bnj = lshr i32 %i.br, 8
  %i.bnk = and i32 %i.bnj, 16711935
  %i.bnl = add nuw nsw i32 %i.bni, %i.bnk
  %i.bnm = lshr i32 %i.bx, 8
  %i.bnn = and i32 %i.bnm, 16711935
  %i.bno = add nuw nsw i32 %i.bnl, %i.bnn
  %i.bnp = shl nuw i32 %i.bno, 4
  %i.bnq = and i32 %i.bnp, -16711936
  %i.bnr = and i32 %i.bo, 16711935
  %i.bns = mul nuw nsw i32 %i.bnr, 14
  %i.bnt = and i32 %i.br, 16711935
  %i.bnu = add nuw nsw i32 %i.bns, %i.bnt
  %i.bnv = and i32 %i.bx, 16711935
  %i.bnw = add nuw nsw i32 %i.bnu, %i.bnv
  %i.bnx = lshr i32 %i.bnw, 4
  %i.bny = and i32 %i.bnx, 16711935
  %i.bnz = or disjoint i32 %i.bnq, %i.bny
  br label %hq2x_interp_1x1.exit

bb.fc:                                            ; preds = %bb.fa
  br i1 %or.cond.i, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.boa = lshr i32 %i.bo, 8
  %i.bob = and i32 %i.boa, 16711935
  %i.boc = mul nuw nsw i32 %i.bob, 5
  %i.bod = lshr i32 %i.bx, 7
  %i.boe = and i32 %i.bod, 33423870
  %i.bof = lshr i32 %i.br, 8
  %i.bog = and i32 %i.bof, 16711935
  %i.boh = add nuw nsw i32 %i.bog, %i.boc
  %i.boi = add nuw nsw i32 %i.boh, %i.boe
  %i.boj = shl nuw i32 %i.boi, 5
  %i.bok = and i32 %i.boj, -16711936
  %i.bol = and i32 %i.bo, 16711935
  %i.bom = mul nuw nsw i32 %i.bol, 5
  %i.bon = shl i32 %i.bx, 1
  %i.boo = and i32 %i.bon, 33423870
  %i.bop = and i32 %i.br, 16711935
  %i.boq = add nuw nsw i32 %i.bop, %i.bom
  %i.bor = add nuw nsw i32 %i.boq, %i.boo
  %i.bos = lshr i32 %i.bor, 3
  %i.bot = and i32 %i.bos, 16711935
  %i.bou = or disjoint i32 %i.bok, %i.bot
  br label %hq2x_interp_1x1.exit

bb.fe:                                            ; preds = %bb.fc
  br i1 %or.cond167.i, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.bov = lshr i32 %i.bo, 8
  %i.bow = and i32 %i.bov, 16711935
  %i.box = mul nuw nsw i32 %i.bow, 5
  %i.boy = lshr i32 %i.br, 7
  %i.boz = and i32 %i.boy, 33423870
  %i.bpa = add nuw nsw i32 %i.box, %i.boz
  %i.bpb = lshr i32 %i.bx, 8
  %i.bpc = and i32 %i.bpb, 16711935
  %i.bpd = add nuw nsw i32 %i.bpa, %i.bpc
  %i.bpe = shl nuw i32 %i.bpd, 5
  %i.bpf = and i32 %i.bpe, -16711936
  %i.bpg = and i32 %i.bo, 16711935
  %i.bph = mul nuw nsw i32 %i.bpg, 5
  %i.bpi = shl i32 %i.br, 1
  %i.bpj = and i32 %i.bpi, 33423870
  %i.bpk = add nuw nsw i32 %i.bpj, %i.bph
  %i.bpl = and i32 %i.bx, 16711935
  %i.bpm = add nuw nsw i32 %i.bpk, %i.bpl
  %i.bpn = lshr i32 %i.bpm, 3
  %i.bpo = and i32 %i.bpn, 16711935
  %i.bpp = or disjoint i32 %i.bpf, %i.bpo
  br label %hq2x_interp_1x1.exit

bb.fg:                                            ; preds = %bb.fe
  %i.bpq = and i32 %i.bfl, 27
  %i.bpr = icmp eq i32 %i.bpq, 3
  br i1 %i.bpr, label %bb.fj, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.bps = and i32 %i.bfl, 79                     ; 2 uses
  %i.bpt = icmp eq i32 %i.bps, 67
  br i1 %i.bpt, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.bpu = and i32 %i.bfl, 139                    ; 2 uses
  %i.bpv = icmp eq i32 %i.bpu, 131
  %i.bpw = and i32 %i.bfl, 107
  %i.bpx = icmp eq i32 %i.bpw, 67
  %or.cond193.i = or i1 %i.bpv, %i.bpx
  br i1 %or.cond193.i, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi, %bb.fh, %bb.fg
  %i.bpy = lshr i32 %i.bo, 8
  %i.bpz = and i32 %i.bpy, 16711935
  %i.bqa = mul nuw nsw i32 %i.bpz, 3
  %i.bqb = lshr i32 %i.br, 8
  %i.bqc = and i32 %i.bqb, 16711935
  %i.bqd = add nuw nsw i32 %i.bqa, %i.bqc
  %i.bqe = shl nuw i32 %i.bqd, 6
  %i.bqf = and i32 %i.bqe, -16711936
  %i.bqg = and i32 %i.bo, 16711935
  %i.bqh = mul nuw nsw i32 %i.bqg, 3
  %i.bqi = and i32 %i.br, 16711935
  %i.bqj = add nuw nsw i32 %i.bqh, %i.bqi
  %i.bqk = lshr i32 %i.bqj, 2
  %i.bql = and i32 %i.bqk, 16711935
  %i.bqm = or disjoint i32 %i.bqf, %i.bql
  br label %hq2x_interp_1x1.exit

bb.fk:                                            ; preds = %bb.fi
  %i.bqn = and i32 %i.bfl, 75
  %i.bqo = icmp eq i32 %i.bqn, 9
  %i.bqp = icmp eq i32 %i.bpu, 137
  %or.cond194.i = or i1 %i.bqo, %i.bqp
  %i.bqq = and i32 %i.bfl, 31
  %i.bqr = icmp eq i32 %i.bqq, 25
  %or.cond196.i = or i1 %i.bqr, %or.cond194.i
  br i1 %or.cond196.i, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.bqs = and i32 %i.bfl, 59                     ; 2 uses
  %i.bqt = icmp eq i32 %i.bqs, 25
  br i1 %i.bqt, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %i.bqu = lshr i32 %i.bo, 8
  %i.bqv = and i32 %i.bqu, 16711935
  %i.bqw = mul nuw nsw i32 %i.bqv, 3
  %i.bqx = lshr i32 %i.bx, 8
  %i.bqy = and i32 %i.bqx, 16711935
  %i.bqz = add nuw nsw i32 %i.bqy, %i.bqw
  %i.bra = shl nuw i32 %i.bqz, 6
  %i.brb = and i32 %i.bra, -16711936
  %i.brc = and i32 %i.bo, 16711935
  %i.brd = mul nuw nsw i32 %i.brc, 3
  %i.bre = and i32 %i.bx, 16711935
  %i.brf = add nuw nsw i32 %i.bre, %i.brd
  %i.brg = lshr i32 %i.brf, 2
  %i.brh = and i32 %i.brg, 16711935
  %i.bri = or disjoint i32 %i.brb, %i.brh
  br label %hq2x_interp_1x1.exit

bb.fn:                                            ; preds = %bb.fl
  %i.brj = and i32 %i.bfl, 126                    ; 3 uses
  %i.brk = icmp eq i32 %i.brj, 42
  %6 = extractelement <8 x i32> %i.bjy, i64 3
  %i.brl = icmp eq i32 %6, 171
  %or.cond197.i = or i1 %i.brk, %i.brl
  %i.brm = icmp eq i32 %i.bfm, 143
  %or.cond198.i = or i1 %i.brm, %or.cond197.i
  %i.brn = icmp eq i32 %i.brj, 14
  %or.cond199.i = or i1 %i.brn, %or.cond198.i
  br i1 %or.cond199.i, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.bro = lshr i32 %i.bo, 7
  %i.brp = and i32 %i.bro, 33423870
  %i.brq = lshr i32 %i.br, 8
  %i.brr = and i32 %i.brq, 16711935
  %i.brs = lshr i32 %i.bx, 8
  %i.brt = and i32 %i.brs, 16711935
  %reass.add298 = add nuw nsw i32 %i.brt, %i.brr
  %reass.mul299 = mul nuw nsw i32 %reass.add298, 3
  %i.bru = add nuw nsw i32 %reass.mul299, %i.brp
  %i.brv = shl nuw i32 %i.bru, 5
  %i.brw = and i32 %i.brv, -16711936
  %i.brx = shl i32 %i.bo, 1
  %i.bry = and i32 %i.brx, 33423870
  %i.brz = and i32 %i.br, 16711935
  %i.bsa = and i32 %i.bx, 16711935
  %reass.add300 = add nuw nsw i32 %i.bsa, %i.brz
  %reass.mul301 = mul nuw nsw i32 %reass.add300, 3
  %i.bsb = add nuw nsw i32 %reass.mul301, %i.bry
  %i.bsc = lshr i32 %i.bsb, 3
  %i.bsd = and i32 %i.bsc, 16711935
  %i.bse = or disjoint i32 %i.brw, %i.bsd
  br label %hq2x_interp_1x1.exit

bb.fp:                                            ; preds = %bb.fn
  %i.bsf = extractelement <8 x i32> %i.bjy, i64 5 ; 2 uses
  %i.bsg = icmp eq i32 %i.bsf, 106
  %i.bsh = icmp eq i32 %i.bjt, 110
  %or.cond200.i = or i1 %i.bsg, %i.bsh
  %i.bsi = extractelement <8 x i32> %i.bjy, i64 4
  %i.bsj = icmp eq i32 %i.bsi, 62
  %or.cond202.i = or i1 %i.bsj, %or.cond200.i
  %i.bsk = icmp eq i32 %i.bsf, 250
  %or.cond203.i = or i1 %i.bsk, %or.cond202.i
  br i1 %or.cond203.i, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.bsl = trunc i32 %i.bfl to i8
  %trunc216 = and i8 %i.bsl, -33
  switch i8 %trunc216, label %bb.fs [
    i8 -34, label %bb.fr
    i8 30, label %bb.fr
  ]

bb.fr:                                            ; preds = %bb.fq, %bb.fq, %bb.fp
  %i.bsm = lshr i32 %i.bo, 8
  %i.bsn = and i32 %i.bsm, 16711935
  %i.bso = mul nuw nsw i32 %i.bsn, 3
  %i.bsp = lshr i32 %i.cb, 8
  %i.bsq = and i32 %i.bsp, 16711935
  %i.bsr = add nuw nsw i32 %i.bsq, %i.bso
  %i.bss = shl nuw i32 %i.bsr, 6
  %i.bst = and i32 %i.bss, -16711936
  %i.bsu = and i32 %i.bo, 16711935
  %i.bsv = mul nuw nsw i32 %i.bsu, 3
  %i.bsw = and i32 %i.cb, 16711935
  %i.bsx = add nuw nsw i32 %i.bsw, %i.bsv
  %i.bsy = lshr i32 %i.bsx, 2
  %i.bsz = and i32 %i.bsy, 16711935
  %i.bta = or disjoint i32 %i.bst, %i.bsz
  br label %hq2x_interp_1x1.exit

bb.fs:                                            ; preds = %bb.fq
  %i.btb = and i32 %i.bfl, 10
  %i.btc = icmp eq i32 %i.btb, 0
  %i.btd = icmp eq i32 %i.bps, 75
  %or.cond204.i = or i1 %i.btc, %i.btd
  %i.bte = extractelement <8 x i32> %i.bjy, i64 1
  %i.btf = icmp eq i32 %i.bte, 27
  %or.cond206.i = or i1 %i.btf, %or.cond204.i
  %i.btg = icmp eq i32 %i.bne, 11
  %or.cond207.i = or i1 %i.btg, %or.cond206.i
  %i.bth = and i32 %i.bfl, 190
  %i.bti = icmp eq i32 %i.bth, 10
  %or.cond209.i = or i1 %i.bti, %or.cond207.i
  %i.btj = and i32 %i.bfl, 238
  %i.btk = icmp eq i32 %i.btj, 10
  %or.cond211.i = or i1 %i.btk, %or.cond209.i
  %i.btl = icmp eq i32 %i.brj, 10
  %or.cond212.i = or i1 %i.btl, %or.cond211.i
  %i.btm = icmp eq i32 %i.bkc, 75
  %or.cond214.i = or i1 %i.btm, %or.cond212.i
  %i.btn = icmp eq i32 %i.bqs, 27
  %or.cond215.i = or i1 %i.btn, %or.cond214.i
  br i1 %or.cond215.i, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %i.bto = lshr i32 %i.bo, 7
  %i.btp = and i32 %i.bto, 33423870
  %i.btq = lshr i32 %i.br, 8
  %i.btr = and i32 %i.btq, 16711935
  %i.bts = add nuw nsw i32 %i.btr, %i.btp
  %i.btt = lshr i32 %i.bx, 8
  %i.btu = and i32 %i.btt, 16711935
  %i.btv = add nuw nsw i32 %i.bts, %i.btu
  %i.btw = shl nuw i32 %i.btv, 6
  %i.btx = and i32 %i.btw, -16711936
  %i.bty = shl i32 %i.bo, 1
  %i.btz = and i32 %i.bty, 33423870
  %i.bua = and i32 %i.br, 16711935
  %i.bub = add nuw nsw i32 %i.btz, %i.bua
  %i.buc = and i32 %i.bx, 16711935
  %i.bud = add nuw nsw i32 %i.bub, %i.buc
  %i.bue = lshr i32 %i.bud, 2
  %i.buf = and i32 %i.bue, 16711935
  %i.bug = or disjoint i32 %i.btx, %i.buf
  br label %hq2x_interp_1x1.exit

bb.fu:                                            ; preds = %bb.fs
  %i.buh = lshr i32 %i.bo, 8
  %i.bui = and i32 %i.buh, 16711935
  %i.buj = mul nuw nsw i32 %i.bui, 6
  %i.buk = lshr i32 %i.br, 8
  %i.bul = and i32 %i.buk, 16711935
  %i.bum = add nuw nsw i32 %i.buj, %i.bul
  %i.bun = lshr i32 %i.bx, 8
  %i.buo = and i32 %i.bun, 16711935
  %i.bup = add nuw nsw i32 %i.bum, %i.buo
  %i.buq = shl nuw i32 %i.bup, 5
  %i.bur = and i32 %i.buq, -16711936
  %i.bus = and i32 %i.bo, 16711935
  %i.but = mul nuw nsw i32 %i.bus, 6
  %i.buu = and i32 %i.br, 16711935
  %i.buv = add nuw nsw i32 %i.but, %i.buu
  %i.buw = and i32 %i.bx, 16711935
  %i.bux = add nuw nsw i32 %i.buv, %i.buw
  %i.buy = lshr i32 %i.bux, 3
  %i.buz = and i32 %i.buy, 16711935
  %i.bva = or disjoint i32 %i.bur, %i.buz
  br label %hq2x_interp_1x1.exit

hq2x_interp_1x1.exit:                             ; preds = %bb.es, %bb.et, %yuv_diff.exit218.i.thread, %yuv_diff.exit217.i.thread, %yuv_diff.exit216.i, %yuv_diff.exit.i.thread, %bb.ey, %bb.ez, %bb.fb, %bb.fd, %bb.ff, %bb.fj, %bb.fm, %bb.fo, %bb.fr, %bb.ft, %bb.fu
  %.0.i10 = phi i32 [ %i.bhb, %yuv_diff.exit218.i.thread ], [ %i.bis, %yuv_diff.exit217.i.thread ], [ %i.bva, %bb.fu ], [ %i.blr, %yuv_diff.exit.i.thread ], [ %i.bmk, %bb.ey ], [ %i.bnd, %bb.ez ], [ %i.bnz, %bb.fb ], [ %i.bou, %bb.fd ], [ %i.bpp, %bb.ff ], [ %i.bqm, %bb.fj ], [ %i.bri, %bb.fm ], [ %i.bse, %bb.fo ], [ %i.bta, %bb.fr ], [ %i.bug, %bb.ft ], [ %i.bo, %yuv_diff.exit216.i ], [ %i.bo, %bb.et ], [ %i.bo, %bb.es ]
  %i.bvb = getelementptr i8, ptr %i.bfi, i64 4
  store i32 %.0.i10, ptr %i.bvb, align 4, !tbaa !22
  %i.bvc = getelementptr inbounds nuw i8, ptr %.0141.i303, i64 4
  %i.bvd = getelementptr inbounds nuw i8, ptr %.0.i304, i64 8
  %i.bve = add nuw nsw i32 %.0145.i302, 1         ; 2 uses
  %exitcond.not = icmp eq i32 %i.bve, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !0

._crit_edge:                                      ; preds = %hq2x_interp_1x1.exit
  %i.bvf = getelementptr inbounds i8, ptr %.0142.i307, i64 %i.ag
  %i.bvg = getelementptr inbounds i8, ptr %.0143.i306, i64 %i.ai
  %i.bvh = add nsw i32 %.0144.i305, 1             ; 2 uses
  %exitcond310.not = icmp eq i32 %i.bvh, %i.r
  br i1 %exitcond310.not, label %hqx_filter.exit, label %.lr.ph, !llvm.loop !1

hqx_filter.exit:                                  ; preds = %._crit_edge, %.lr.ph309, %bb.a
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @hq3x(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !43     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45   ; 57 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  %i.e = load i32, ptr %i.d, align 4, !tbaa !51   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.g = load i32, ptr %i.f, align 8, !tbaa !52   ; 3 uses
  %i.h = sext i32 %i.e to i64                     ; 2 uses
  %i.i = sext i32 %2 to i64
  %i.j = mul nsw i64 %i.h, %i.i
  %i.k = sext i32 %3 to i64                       ; 2 uses
  %i.l = sdiv i64 %i.j, %i.k
  %i.m = trunc i64 %i.l to i32                    ; 4 uses
  %i.n = add nsw i32 %2, 1
  %i.o = sext i32 %i.n to i64
  %i.p = mul nsw i64 %i.h, %i.o
  %i.q = sdiv i64 %i.p, %i.k
  %i.r = trunc i64 %i.q to i32                    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.t = load i32, ptr %i.s, align 8, !tbaa !22   ; 3 uses
  %i.u = ashr i32 %i.t, 2                         ; 2 uses
  %i.v = icmp slt i32 %i.m, %i.r
  br i1 %i.v, label %.lr.ph434, label %hqx_filter.exit

.lr.ph434:                                        ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !44   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.z = load i32, ptr %i.y, align 8, !tbaa !22   ; 2 uses
  %i.aa = ashr i32 %i.z, 2                        ; 2 uses
  %i.ab = mul i32 %i.z, 3                         ; 2 uses
  %i.ac = sub nsw i32 0, %i.u
  %i.ad = add nsw i32 %i.e, -1
  %i.ae = icmp sgt i32 %i.g, 0
  %i.af = add nsw i32 %i.g, -1
  %i.ag = add nsw i32 %i.aa, 1
  %i.ah = sext i32 %i.ag to i64                   ; 2 uses
  %i.ai = sext i32 %i.aa to i64                   ; 3 uses
end_hunk_0
begin_hunk_1_@hq4x:bb.a
bb.ly:                                            ; preds = %.thread239
  %i.dfa = and i32 %i.br, 16777215
  %i.dfb = zext nneg i32 %i.dfa to i64
  %i.dfc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dfb
  %i.dfd = load i32, ptr %i.dfc, align 4, !tbaa !22 ; 3 uses
  %i.dfe = and i32 %i.cb, 16777215
  %i.dff = zext nneg i32 %i.dfe to i64
  %i.dfg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dff
  %i.dfh = load i32, ptr %i.dfg, align 4, !tbaa !22 ; 3 uses
  %i.dfi = and i32 %i.dfd, 16711680
  %i.dfj = and i32 %i.dfh, 16711680
  %i.dfk = add nsw i32 %i.dfi, -3145729
  %i.dfl = sub nsw i32 %i.dfk, %i.dfj
  %i.dfm = icmp ult i32 %i.dfl, -6291457
  br i1 %i.dfm, label %hq4x_interp_2x2.exit68, label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  %i.dfn = and i32 %i.dfd, 65280
  %i.dfo = and i32 %i.dfh, 65280
  %i.dfp = add nsw i32 %i.dfn, -1793
  %i.dfq = sub nsw i32 %i.dfp, %i.dfo
  %i.dfr = icmp ult i32 %i.dfq, -3585
  br i1 %i.dfr, label %hq4x_interp_2x2.exit68, label %yuv_diff.exit.i58

yuv_diff.exit.i58:                                ; preds = %bb.lz
  %i.dfs = and i32 %i.dfd, 255
  %i.dft = and i32 %i.dfh, 255
  %i.dfu = add nuw nsw i32 %i.dfs, 6
  %i.dfv = sub nsw i32 %i.dfu, %i.dft
  %i.dfw = icmp ult i32 %i.dfv, 13
  br i1 %i.dfw, label %bb.ma, label %hq4x_interp_2x2.exit68

bb.ma:                                            ; preds = %yuv_diff.exit.i58, %.thread239
  br i1 %i.cet, label %bb.mb, label %bb.mc

bb.mb:                                            ; preds = %bb.ma
  %i.dfx = lshr i32 %i.bs, 8
  %i.dfy = and i32 %i.dfx, 16711935
  %i.dfz = mul nuw nsw i32 %i.dfy, 7
  %i.dga = lshr i32 %i.bz, 8
  %i.dgb = and i32 %i.dga, 16711935
  %i.dgc = add nuw nsw i32 %i.dgb, %i.dfz
  %i.dgd = shl nuw i32 %i.dgc, 5
  %i.dge = and i32 %i.dgd, -16711936
  %i.dgf = and i32 %i.bs, 16711935
  %i.dgg = mul nuw nsw i32 %i.dgf, 7
  %i.dgh = and i32 %i.bz, 16711935
  %i.dgi = add nuw nsw i32 %i.dgh, %i.dgg
  %i.dgj = lshr i32 %i.dgi, 3
  %i.dgk = and i32 %i.dgj, 16711935
  %i.dgl = or disjoint i32 %i.dge, %i.dgk
  br label %hq4x_interp_2x2.exit68

bb.mc:                                            ; preds = %bb.ma
  br i1 %i.cij, label %bb.md, label %bb.me

bb.md:                                            ; preds = %bb.mc
  %i.dgm = lshr i32 %i.bs, 8
  %i.dgn = and i32 %i.dgm, 16711935
  %i.dgo = mul nuw nsw i32 %i.dgn, 7
  %i.dgp = lshr i32 %i.br, 8
  %i.dgq = and i32 %i.dgp, 16711935
  %i.dgr = add nuw nsw i32 %i.dgo, %i.dgq
  %i.dgs = shl nuw i32 %i.dgr, 5
  %i.dgt = and i32 %i.dgs, -16711936
  %i.dgu = and i32 %i.bs, 16711935
  %i.dgv = mul nuw nsw i32 %i.dgu, 7
  %i.dgw = and i32 %i.br, 16711935
  %i.dgx = add nuw nsw i32 %i.dgv, %i.dgw
  %i.dgy = lshr i32 %i.dgx, 3
  %i.dgz = and i32 %i.dgy, 16711935
  %i.dha = or disjoint i32 %i.dgt, %i.dgz
  br label %hq4x_interp_2x2.exit68

bb.me:                                            ; preds = %bb.mc
  br i1 %i.chm, label %bb.mf, label %bb.mg

bb.mf:                                            ; preds = %bb.me
  %i.dhb = lshr i32 %i.bs, 8
  %i.dhc = and i32 %i.dhb, 16711935
  %i.dhd = mul nuw nsw i32 %i.dhc, 7
  %i.dhe = lshr i32 %i.cb, 8
  %i.dhf = and i32 %i.dhe, 16711935
  %i.dhg = add nuw nsw i32 %i.dhf, %i.dhd
  %i.dhh = shl nuw i32 %i.dhg, 5
  %i.dhi = and i32 %i.dhh, -16711936
  %i.dhj = and i32 %i.bs, 16711935
  %i.dhk = mul nuw nsw i32 %i.dhj, 7
  %i.dhl = and i32 %i.cb, 16711935
  %i.dhm = add nuw nsw i32 %i.dhl, %i.dhk
  %i.dhn = lshr i32 %i.dhm, 3
  %i.dho = and i32 %i.dhn, 16711935
  %i.dhp = or disjoint i32 %i.dhi, %i.dho
  br label %hq4x_interp_2x2.exit68

bb.mg:                                            ; preds = %bb.me
  %brmerge445.i54 = or i1 %i.chl, %i.cho
  %brmerge446.i55 = or i1 %i.chp, %brmerge445.i54
  %brmerge447.i56 = or i1 %i.chr, %brmerge446.i55
  %brmerge448.i57 = or i1 %i.chs, %brmerge447.i56
  br i1 %brmerge448.i57, label %bb.mh, label %bb.mi

bb.mh:                                            ; preds = %bb.mg
  %i.dhq = lshr i32 %i.bs, 8
  %i.dhr = and i32 %i.dhq, 16711935
  %i.dhs = mul nuw nsw i32 %i.dhr, 6
  %i.dht = lshr i32 %i.br, 8
  %i.dhu = and i32 %i.dht, 16711935
  %i.dhv = add nuw nsw i32 %i.dhs, %i.dhu
  %i.dhw = lshr i32 %i.cb, 8
  %i.dhx = and i32 %i.dhw, 16711935
  %i.dhy = add nuw nsw i32 %i.dhv, %i.dhx
  %i.dhz = shl nuw i32 %i.dhy, 5
  %i.dia = and i32 %i.dhz, -16711936
  %i.dib = and i32 %i.bs, 16711935
  %i.dic = mul nuw nsw i32 %i.dib, 6
  %i.did = and i32 %i.br, 16711935
  %i.die = add nuw nsw i32 %i.dic, %i.did
  %i.dif = and i32 %i.cb, 16711935
  %i.dig = add nuw nsw i32 %i.die, %i.dif
  %i.dih = lshr i32 %i.dig, 3
  %i.dii = and i32 %i.dih, 16711935
  %i.dij = or disjoint i32 %i.dia, %i.dii
  br label %hq4x_interp_2x2.exit68

bb.mi:                                            ; preds = %bb.mg
  br i1 %i.cge, label %bb.mj, label %hq4x_interp_2x2.exit68

bb.mj:                                            ; preds = %bb.mi
  %i.dik = lshr i32 %i.bs, 8
  %i.dil = and i32 %i.dik, 16711935
  %i.dim = mul nuw nsw i32 %i.dil, 7
  %i.din = lshr i32 %i.bz, 8
  %i.dio = and i32 %i.din, 16711935
  %i.dip = add nuw nsw i32 %i.dio, %i.dim
  %i.diq = shl nuw i32 %i.dip, 5
  %i.dir = and i32 %i.diq, -16711936
  %i.dis = and i32 %i.bs, 16711935
  %i.dit = mul nuw nsw i32 %i.dis, 7
  %i.diu = and i32 %i.bz, 16711935
  %i.div = add nuw nsw i32 %i.diu, %i.dit
  %i.diw = lshr i32 %i.div, 3
  %i.dix = and i32 %i.diw, 16711935
  %i.diy = or disjoint i32 %i.dir, %i.dix
  br label %hq4x_interp_2x2.exit68

hq4x_interp_2x2.exit68:                           ; preds = %bb.mi, %yuv_diff.exit.i58, %bb.lz, %bb.ly, %bb.mb, %bb.md, %bb.mf, %bb.mh, %bb.mj
  %.sink549 = phi i32 [ %i.bs, %yuv_diff.exit.i58 ], [ %i.dgl, %bb.mb ], [ %i.dha, %bb.md ], [ %i.dhp, %bb.mf ], [ %i.dij, %bb.mh ], [ %i.diy, %bb.mj ], [ %i.bs, %bb.ly ], [ %i.bs, %bb.lz ], [ %i.bs, %bb.mi ]
  store i32 %.sink549, ptr %i.caw, align 4, !tbaa !22
  %i.diz = getelementptr inbounds nuw i8, ptr %i.cai, i64 8 ; 3 uses
  %trunc292 = trunc i32 %.fr260 to i8
  %i.dja = and i8 %trunc292, 127
  %mask294 = tail call i8 @llvm.bitreverse.i8(i8 %i.dja)
  %i.djb = zext i8 %mask294 to i32
  %i.djc = getelementptr inbounds [4 x i8], ptr %i.diz, i64 %i.ah ; 4 uses
  %i.djd = getelementptr inbounds [4 x i8], ptr %i.diz, i64 %i.af ; 3 uses
  %i.dje = getelementptr inbounds nuw i8, ptr %i.cai, i64 12
  %i.djf = or i32 %i.jv, %i.djb                   ; 33 uses
  %i.djg = and i32 %i.djf, 191                    ; 3 uses
  %i.djh = icmp eq i32 %i.djg, 55
  %i.dji = and i32 %i.djf, 219                    ; 2 uses
  %i.djj = icmp eq i32 %i.dji, 19
  %or.cond.i = or i1 %i.djh, %i.djj               ; 3 uses
  br i1 %or.cond.i, label %bb.mk, label %yuv_diff.exit453.i

bb.mk:                                            ; preds = %hq4x_interp_2x2.exit68
  %i.djk = and i32 %i.cb, 16777215
  %i.djl = zext nneg i32 %i.djk to i64
  %i.djm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.djl
  %i.djn = load i32, ptr %i.djm, align 4, !tbaa !22 ; 3 uses
  %i.djo = and i32 %i.br, 16777215
  %i.djp = zext nneg i32 %i.djo to i64
  %i.djq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.djp
  %i.djr = load i32, ptr %i.djq, align 4, !tbaa !22 ; 3 uses
  %i.djs = and i32 %i.djn, 16711680
  %i.djt = and i32 %i.djr, 16711680
  %i.dju = add nsw i32 %i.djs, -3145729
  %i.djv = sub nsw i32 %i.dju, %i.djt
  %i.djw = icmp ult i32 %i.djv, -6291457
  br i1 %i.djw, label %yuv_diff.exit453.i, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  %i.djx = and i32 %i.djn, 65280
  %i.djy = and i32 %i.djr, 65280
  %i.djz = add nsw i32 %i.djx, -1793
  %i.dka = sub nsw i32 %i.djz, %i.djy
  %i.dkb = icmp ult i32 %i.dka, -3585
  br i1 %i.dkb, label %yuv_diff.exit453.i, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %i.dkc = and i32 %i.djn, 255
  %i.dkd = and i32 %i.djr, 255
  %i.dke = add nsw i32 %i.dkc, -7
  %i.dkf = sub nsw i32 %i.dke, %i.dkd
  %i.dkg = icmp ult i32 %i.dkf, -13
  br label %yuv_diff.exit453.i

yuv_diff.exit453.i:                               ; preds = %bb.mk, %bb.ml, %bb.mm, %hq4x_interp_2x2.exit68
  %i.dkh = phi i1 [ false, %hq4x_interp_2x2.exit68 ], [ true, %bb.ml ], [ true, %bb.mk ], [ %i.dkg, %bb.mm ]
  %i.dki = icmp eq i32 %i.dji, 73
  %i.dkj = and i32 %i.djf, 239
  %i.dkk = insertelement <3 x i32> poison, i32 %i.djf, i64 0
  %i.dkl = insertelement <3 x i32> %i.dkk, i32 %i.djg, i64 1
  %i.dkm = shufflevector <3 x i32> %i.dkl, <3 x i32> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0>
  %i.dkn = icmp eq i32 %i.dkj, 109
  %or.cond367.i = or i1 %i.dki, %i.dkn            ; 3 uses
  br i1 %or.cond367.i, label %bb.mn, label %yuv_diff.exit452.i

bb.mn:                                            ; preds = %yuv_diff.exit453.i
  %i.dko = and i32 %i.bk, 16777215
  %i.dkp = zext nneg i32 %i.dko to i64
  %i.dkq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dkp
  %i.dkr = load i32, ptr %i.dkq, align 4, !tbaa !22 ; 3 uses
  %i.dks = and i32 %i.bv, 16777215
  %i.dkt = zext nneg i32 %i.dks to i64
  %i.dku = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dkt
  %i.dkv = load i32, ptr %i.dku, align 4, !tbaa !22 ; 3 uses
  %i.dkw = and i32 %i.dkr, 16711680
  %i.dkx = and i32 %i.dkv, 16711680
  %i.dky = add nsw i32 %i.dkw, -3145729
  %i.dkz = sub nsw i32 %i.dky, %i.dkx
  %i.dla = icmp ult i32 %i.dkz, -6291457
  br i1 %i.dla, label %yuv_diff.exit452.i, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  %i.dlb = and i32 %i.dkr, 65280
  %i.dlc = and i32 %i.dkv, 65280
  %i.dld = add nsw i32 %i.dlb, -1793
  %i.dle = sub nsw i32 %i.dld, %i.dlc
  %i.dlf = icmp ult i32 %i.dle, -3585
  br i1 %i.dlf, label %yuv_diff.exit452.i, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  %i.dlg = and i32 %i.dkr, 255
  %i.dlh = and i32 %i.dkv, 255
  %i.dli = add nsw i32 %i.dlg, -7
  %i.dlj = sub nsw i32 %i.dli, %i.dlh
  %i.dlk = icmp ult i32 %i.dlj, -13
  br label %yuv_diff.exit452.i

yuv_diff.exit452.i:                               ; preds = %bb.mn, %bb.mo, %bb.mp, %yuv_diff.exit453.i
  %i.dll = phi i1 [ false, %yuv_diff.exit453.i ], [ true, %bb.mo ], [ true, %bb.mn ], [ %i.dlk, %bb.mp ] ; 2 uses
  %i.dlm = and <8 x i32> %i.dkm, <i32 111, i32 91, i32 -1, i32 223, i32 159, i32 207, i32 239, i32 63> ; 3 uses
  %i.dln = icmp eq <8 x i32> %i.dlm, <i32 42, i32 10, i32 58, i32 90, i32 138, i32 138, i32 78, i32 14> ; 2 uses
  %i.dlo = insertelement <4 x i32> poison, i32 %i.djf, i64 0
  %i.dlp = shufflevector <4 x i32> %i.dlo, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.dlq = and <4 x i32> %i.dlp, <i32 251, i32 187, i32 127, i32 175>
  %i.dlr = and i32 %i.djf, 127                    ; 2 uses
  %i.dls = icmp eq <4 x i32> %i.dlq, <i32 90, i32 138, i32 90, i32 138>
  %i.dlt = and i32 %i.djf, 235                    ; 2 uses
  %i.dlu = icmp eq i32 %i.dlt, 138
  %i.dlv = shufflevector <4 x i1> %i.dls, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dlw = or <8 x i1> %i.dln, %i.dlv
  %i.dlx = shufflevector <8 x i1> %i.dlw, <8 x i1> %i.dln, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.dly = bitcast <8 x i1> %i.dlx to i8
  %i.dlz = icmp ne i8 %i.dly, 0
  %op.rdx557 = or i1 %i.dlz, %i.dlu
  br i1 %op.rdx557, label %bb.mq, label %yuv_diff.exit451.i

bb.mq:                                            ; preds = %yuv_diff.exit452.i
  %i.dma = and i32 %i.bv, 16777215
  %i.dmb = zext nneg i32 %i.dma to i64
  %i.dmc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dmb
  %i.dmd = load i32, ptr %i.dmc, align 4, !tbaa !22 ; 3 uses
  %i.dme = and i32 %i.cb, 16777215
  %i.dmf = zext nneg i32 %i.dme to i64
  %i.dmg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dmf
  %i.dmh = load i32, ptr %i.dmg, align 4, !tbaa !22 ; 3 uses
  %i.dmi = and i32 %i.dmd, 16711680
  %i.dmj = and i32 %i.dmh, 16711680
  %i.dmk = add nsw i32 %i.dmi, -3145729
  %i.dml = sub nsw i32 %i.dmk, %i.dmj
  %i.dmm = icmp ult i32 %i.dml, -6291457
  br i1 %i.dmm, label %yuv_diff.exit451.i, label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  %i.dmn = and i32 %i.dmd, 65280
  %i.dmo = and i32 %i.dmh, 65280
  %i.dmp = add nsw i32 %i.dmn, -1793
  %i.dmq = sub nsw i32 %i.dmp, %i.dmo
  %i.dmr = icmp ult i32 %i.dmq, -3585
  br i1 %i.dmr, label %yuv_diff.exit451.i, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  %i.dms = and i32 %i.dmd, 255
  %i.dmt = and i32 %i.dmh, 255
  %i.dmu = add nsw i32 %i.dms, -7
  %i.dmv = sub nsw i32 %i.dmu, %i.dmt
  %i.dmw = icmp ult i32 %i.dmv, -13
  br label %yuv_diff.exit451.i

yuv_diff.exit451.i:                               ; preds = %bb.mq, %bb.mr, %bb.ms, %yuv_diff.exit452.i
  %i.dmx = phi i1 [ false, %yuv_diff.exit452.i ], [ true, %bb.mr ], [ true, %bb.mq ], [ %i.dmw, %bb.ms ] ; 4 uses
  %i.dmy = and i32 %i.djf, 27
  %i.dmz = icmp eq i32 %i.dmy, 3
  %i.dna = and i32 %i.djf, 79                     ; 2 uses
  %i.dnb = icmp eq i32 %i.dna, 67
  %or.cond392.i = or i1 %i.dmz, %i.dnb
  %i.dnc = and i32 %i.djf, 139                    ; 2 uses
  %i.dnd = icmp eq i32 %i.dnc, 131
  %or.cond394.i = or i1 %i.dnd, %or.cond392.i
  br i1 %or.cond394.i, label %bb.mu, label %bb.mt

bb.mt:                                            ; preds = %yuv_diff.exit451.i
  %i.dne = and i32 %i.djf, 107
  %i.dnf = icmp eq i32 %i.dne, 67
  br label %bb.mu

bb.mu:                                            ; preds = %bb.mt, %yuv_diff.exit451.i
  %i.dng = phi i1 [ true, %yuv_diff.exit451.i ], [ %i.dnf, %bb.mt ] ; 2 uses
  %i.dnh = and i32 %i.djf, 75
  %i.dni = icmp eq i32 %i.dnh, 9
  %i.dnj = icmp eq i32 %i.dnc, 137
  %or.cond396.i = or i1 %i.dni, %i.dnj
  %i.dnk = and i32 %i.djf, 31
  %i.dnl = icmp eq i32 %i.dnk, 25
  %or.cond398.i = or i1 %i.dnl, %or.cond396.i
  br i1 %or.cond398.i, label %bb.mw, label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  %i.dnm = and i32 %i.djf, 59
  %i.dnn = icmp eq i32 %i.dnm, 25
  br label %bb.mw

bb.mw:                                            ; preds = %bb.mv, %bb.mu
  %i.dno = phi i1 [ true, %bb.mu ], [ %i.dnn, %bb.mv ] ; 2 uses
  %i.dnp = and i32 %i.djf, 11                     ; 7 uses
  %i.dnq = icmp eq i32 %i.dnp, 8                  ; 3 uses
  br i1 %i.dnq, label %bb.na, label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  %i.dnr = and i32 %i.djf, 249                    ; 2 uses
  %i.dns = icmp eq i32 %i.dnr, 104
  br i1 %i.dns, label %bb.na, label %bb.my

bb.my:                                            ; preds = %bb.mx
  %i.dnt = and <4 x i32> %i.dlp, <i32 243, i32 109, i32 103, i32 61>
  %i.dnu = and i32 %i.djf, 243
  %i.dnv = icmp eq <4 x i32> %i.dnt, <i32 98, i32 108, i32 102, i32 60>
  %i.dnw = and i32 %i.djf, 55
  %i.dnx = icmp eq i32 %i.dnw, 54
  %i.dny = icmp eq i32 %i.dnr, 248
  %i.dnz = icmp eq i32 %i.dnu, 242
  %i.doa = bitcast <4 x i1> %i.dnv to i4
  %i.dob = icmp ne i4 %i.doa, 0
  %op.rdx = or i1 %i.dob, %i.dnx
  %op.rdx555 = or i1 %i.dny, %i.dnz
  %op.rdx556 = or i1 %op.rdx, %op.rdx555
  br i1 %op.rdx556, label %bb.na, label %switch.early.test305

switch.early.test305:                             ; preds = %bb.my
  %i.doc = trunc i32 %i.djf to i8                 ; 2 uses
  %trunc414 = and i8 %i.doc, -35
  switch i8 %trunc414, label %switch.early.test.i [
    i8 -36, label %bb.na
    i8 28, label %bb.na
  ]

switch.early.test.i:                              ; preds = %switch.early.test305
  %trunc295 = and i8 %i.doc, -41
  switch i8 %trunc295, label %bb.mz [
    i8 -42, label %bb.na
    i8 22, label %bb.na
  ]

bb.mz:                                            ; preds = %switch.early.test.i
  %i.dod = icmp eq i32 %i.dnp, 2
  br label %bb.na

bb.na:                                            ; preds = %switch.early.test305, %switch.early.test305, %bb.mz, %switch.early.test.i, %switch.early.test.i, %bb.my, %bb.mx, %bb.mw
  %i.doe = phi i1 [ true, %bb.my ], [ true, %bb.mx ], [ true, %switch.early.test.i ], [ true, %bb.mw ], [ true, %switch.early.test305 ], [ %i.dod, %bb.mz ], [ true, %switch.early.test.i ], [ true, %switch.early.test305 ] ; 2 uses
  %i.dof = and i32 %i.djf, 15
  %i.dog = icmp eq i32 %i.dof, 11                 ; 2 uses
  %i.doh = and i32 %i.djf, 43
  %i.doi = icmp eq i32 %i.doh, 11                 ; 2 uses
  %or.cond412.i = or i1 %i.dog, %i.doi
  br i1 %or.cond412.i, label %bb.nc, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  %i.doj = trunc i32 %i.djf to i8
  %trunc296 = and i8 %i.doj, -2
  switch i8 %trunc296, label %yuv_diff.exit450.i [
    i8 74, label %bb.nc
    i8 26, label %bb.nc
  ]

bb.nc:                                            ; preds = %bb.nb, %bb.nb, %bb.na
  %i.dok = and i32 %i.bv, 16777215
  %i.dol = zext nneg i32 %i.dok to i64
  %i.dom = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dol
  %i.don = load i32, ptr %i.dom, align 4, !tbaa !22 ; 3 uses
  %i.doo = and i32 %i.cb, 16777215
  %i.dop = zext nneg i32 %i.doo to i64
  %i.doq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dop
  %i.dor = load i32, ptr %i.doq, align 4, !tbaa !22 ; 3 uses
  %i.dos = and i32 %i.don, 16711680
  %i.dot = and i32 %i.dor, 16711680
  %i.dou = add nsw i32 %i.dos, -3145729
  %i.dov = sub nsw i32 %i.dou, %i.dot
  %i.dow = icmp ult i32 %i.dov, -6291457
  br i1 %i.dow, label %yuv_diff.exit450.i, label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  %i.dox = and i32 %i.don, 65280
  %i.doy = and i32 %i.dor, 65280
  %i.doz = add nsw i32 %i.dox, -1793
  %i.dpa = sub nsw i32 %i.doz, %i.doy
  %i.dpb = icmp ult i32 %i.dpa, -3585
  br i1 %i.dpb, label %yuv_diff.exit450.i, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  %i.dpc = and i32 %i.don, 255
  %i.dpd = and i32 %i.dor, 255
  %i.dpe = add nsw i32 %i.dpc, -7
  %i.dpf = sub nsw i32 %i.dpe, %i.dpd
  %i.dpg = icmp ult i32 %i.dpf, -13
  br label %yuv_diff.exit450.i

yuv_diff.exit450.i:                               ; preds = %bb.nc, %bb.nd, %bb.ne, %bb.nb
  %i.dph = phi i1 [ false, %bb.nb ], [ true, %bb.nd ], [ true, %bb.nc ], [ %i.dpg, %bb.ne ] ; 4 uses
  %i.dpi = and i32 %i.djf, 47                     ; 2 uses
  %i.dpj = icmp eq i32 %i.dpi, 47                 ; 2 uses
  %i.dpk = and i32 %i.djf, 10
  %i.dpl = icmp eq i32 %i.dpk, 0                  ; 3 uses
  %i.dpm = icmp eq i32 %i.dnp, 9                  ; 2 uses
  %i.dpn = and i32 %i.djf, 126                    ; 3 uses
  %i.dpo = icmp eq i32 %i.dpn, 42                 ; 2 uses
  %4 = extractelement <8 x i32> %i.dlm, i64 6
  %i.dpp = icmp eq i32 %4, 171                    ; 3 uses
  %i.dpq = or i1 %i.dpo, %i.dpp                   ; 2 uses
  %i.dpr = icmp eq i32 %i.djg, 143                ; 3 uses
  %i.dps = icmp eq i32 %i.dpn, 14                 ; 2 uses
  %i.dpt = or i1 %i.dpr, %i.dps                   ; 2 uses
  %i.dpu = icmp eq i32 %i.dna, 75
  %i.dpv = extractelement <8 x i32> %i.dlm, i64 4
  %i.dpw = icmp eq i32 %i.dpv, 27
  %or.cond414.i = or i1 %i.dpu, %i.dpw
  %i.dpx = icmp eq i32 %i.dpi, 11
  %or.cond415.i = or i1 %i.dpx, %or.cond414.i
  %i.dpy = and i32 %i.djf, 190
  %i.dpz = icmp eq i32 %i.dpy, 10                 ; 2 uses
  %i.dqa = and i32 %i.djf, 238
  %i.dqb = icmp eq i32 %i.dqa, 10                 ; 2 uses
  %i.dqc = icmp eq i32 %i.dpn, 10
  %i.dqd = or i1 %i.dqc, %or.cond415.i
  %i.dqe = icmp eq i32 %i.dlt, 75
  %i.dqf = or i1 %i.dqe, %i.dqd
  %i.dqg = or i1 %i.dpz, %i.dqf
  %or.cond422.i = or i1 %i.dqb, %i.dqg
  br i1 %or.cond422.i, label %bb.ng, label %bb.nf

bb.nf:                                            ; preds = %yuv_diff.exit450.i
  %i.dqh = and i32 %i.djf, 59
  %i.dqi = icmp eq i32 %i.dqh, 27
  br label %bb.ng

bb.ng:                                            ; preds = %bb.nf, %yuv_diff.exit450.i
  %i.dqj = phi i1 [ true, %yuv_diff.exit450.i ], [ %i.dqi, %bb.nf ] ; 2 uses
  %i.dqk = icmp eq i32 %i.dnp, 3                  ; 2 uses
  br i1 %i.dkh, label %bb.oa, label %bb.nh

bb.nh:                                            ; preds = %bb.ng
  br i1 %i.dll, label %.thread255, label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  %i.dql = icmp eq i32 %i.dnp, 11
  br i1 %i.dql, label %bb.nk, label %bb.nj

bb.nj:                                            ; preds = %bb.ni
  %i.dqm = trunc i32 %i.djf to i8
  %trunc297 = and i8 %i.dqm, -2
  switch i8 %trunc297, label %bb.nm [
    i8 74, label %bb.nk
    i8 26, label %bb.nk
  ]

bb.nk:                                            ; preds = %bb.nj, %bb.nj, %bb.ni
  %i.dqn = and i32 %i.bv, 16777215
  %i.dqo = zext nneg i32 %i.dqn to i64
  %i.dqp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dqo
  %i.dqq = load i32, ptr %i.dqp, align 4, !tbaa !22 ; 3 uses
  %i.dqr = and i32 %i.cb, 16777215
  %i.dqs = zext nneg i32 %i.dqr to i64
  %i.dqt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dqs
  %i.dqu = load i32, ptr %i.dqt, align 4, !tbaa !22 ; 3 uses
  %i.dqv = and i32 %i.dqq, 16711680
  %i.dqw = and i32 %i.dqu, 16711680
  %i.dqx = add nsw i32 %i.dqv, -3145729
  %i.dqy = sub nsw i32 %i.dqx, %i.dqw
  %i.dqz = icmp ult i32 %i.dqy, -6291457
  br i1 %i.dqz, label %yuv_diff.exit449.i.thread, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  %i.dra = and i32 %i.dqq, 65280
  %i.drb = and i32 %i.dqu, 65280
  %i.drc = add nsw i32 %i.dra, -1793
  %i.drd = sub nsw i32 %i.drc, %i.drb
  %i.dre = icmp ult i32 %i.drd, -3585
  br i1 %i.dre, label %yuv_diff.exit449.i.thread, label %yuv_diff.exit449.i

yuv_diff.exit449.i:                               ; preds = %bb.nl
  %i.drf = and i32 %i.dqq, 255
  %i.drg = and i32 %i.dqu, 255
  %i.drh = add nuw nsw i32 %i.drf, 6
  %i.dri = sub nsw i32 %i.drh, %i.drg
  %i.drj = icmp ult i32 %i.dri, 13
  br i1 %i.drj, label %bb.nm, label %yuv_diff.exit449.i.thread

bb.nm:                                            ; preds = %yuv_diff.exit449.i, %bb.nj
  br i1 %i.dmx, label %.thread244, label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  br i1 %or.cond367.i, label %bb.no, label %bb.np

bb.no:                                            ; preds = %bb.nn
  %i.drk = lshr i32 %i.bs, 8
  %i.drl = and i32 %i.drk, 16711935
  %i.drm = mul nuw nsw i32 %i.drl, 3
  %i.drn = lshr i32 %i.bv, 8
  %i.dro = and i32 %i.drn, 16711935
  %i.drp = add nuw nsw i32 %i.drm, %i.dro
  %i.drq = shl nuw i32 %i.drp, 6
  %i.drr = and i32 %i.drq, -16711936
  %i.drs = and i32 %i.bs, 16711935
  %i.drt = mul nuw nsw i32 %i.drs, 3
  %i.dru = and i32 %i.bv, 16711935
  %i.drv = add nuw nsw i32 %i.drt, %i.dru
  %i.drw = lshr i32 %i.drv, 2
  %i.drx = and i32 %i.drw, 16711935
  %i.dry = or disjoint i32 %i.drr, %i.drx
  br label %yuv_diff.exit449.i.thread

bb.np:                                            ; preds = %bb.nn
  br i1 %or.cond.i, label %bb.nq, label %bb.nr

bb.nq:                                            ; preds = %bb.np
  %i.drz = lshr i32 %i.bs, 8
  %i.dsa = and i32 %i.drz, 16711935
  %i.dsb = mul nuw nsw i32 %i.dsa, 3
  %i.dsc = lshr i32 %i.cb, 8
  %i.dsd = and i32 %i.dsc, 16711935
  %i.dse = add nuw nsw i32 %i.dsd, %i.dsb
  %i.dsf = shl nuw i32 %i.dse, 6
  %i.dsg = and i32 %i.dsf, -16711936
  %i.dsh = and i32 %i.bs, 16711935
  %i.dsi = mul nuw nsw i32 %i.dsh, 3
  %i.dsj = and i32 %i.cb, 16711935
  %i.dsk = add nuw nsw i32 %i.dsj, %i.dsi
  %i.dsl = lshr i32 %i.dsk, 2
  %i.dsm = and i32 %i.dsl, 16711935
  %i.dsn = or disjoint i32 %i.dsg, %i.dsm
  br label %yuv_diff.exit449.i.thread

bb.nr:                                            ; preds = %bb.np
  br i1 %i.dng, label %bb.ns, label %bb.nt

bb.ns:                                            ; preds = %bb.nr
  %i.dso = lshr i32 %i.bs, 8
  %i.dsp = and i32 %i.dso, 16711935
  %i.dsq = mul nuw nsw i32 %i.dsp, 5
  %i.dsr = lshr i32 %i.bv, 8
  %i.dss = and i32 %i.dsr, 16711935
  %i.dst = mul nuw nsw i32 %i.dss, 3
  %i.dsu = add nuw nsw i32 %i.dst, %i.dsq
  %i.dsv = shl nuw i32 %i.dsu, 5
  %i.dsw = and i32 %i.dsv, -16711936
  %i.dsx = and i32 %i.bs, 16711935
  %i.dsy = mul nuw nsw i32 %i.dsx, 5
  %i.dsz = and i32 %i.bv, 16711935
  %i.dta = mul nuw nsw i32 %i.dsz, 3
  %i.dtb = add nuw nsw i32 %i.dta, %i.dsy
  %i.dtc = lshr i32 %i.dtb, 3
  %i.dtd = and i32 %i.dtc, 16711935
  %i.dte = or disjoint i32 %i.dsw, %i.dtd
  br label %yuv_diff.exit449.i.thread

bb.nt:                                            ; preds = %bb.nr
  br i1 %i.dno, label %bb.nu, label %bb.nv

bb.nu:                                            ; preds = %bb.nt
  %i.dtf = lshr i32 %i.bs, 8
  %i.dtg = and i32 %i.dtf, 16711935
  %i.dth = mul nuw nsw i32 %i.dtg, 5
  %i.dti = lshr i32 %i.cb, 8
  %i.dtj = and i32 %i.dti, 16711935
  %i.dtk = mul nuw nsw i32 %i.dtj, 3
  %i.dtl = add nuw nsw i32 %i.dtk, %i.dth
  %i.dtm = shl nuw i32 %i.dtl, 5
  %i.dtn = and i32 %i.dtm, -16711936
  %i.dto = and i32 %i.bs, 16711935
  %i.dtp = mul nuw nsw i32 %i.dto, 5
  %i.dtq = and i32 %i.cb, 16711935
  %i.dtr = mul nuw nsw i32 %i.dtq, 3
  %i.dts = add nuw nsw i32 %i.dtr, %i.dtp
  %i.dtt = lshr i32 %i.dts, 3
  %i.dtu = and i32 %i.dtt, 16711935
  %i.dtv = or disjoint i32 %i.dtn, %i.dtu
  br label %yuv_diff.exit449.i.thread

bb.nv:                                            ; preds = %bb.nt
  %i.dtw = and i32 %i.djf, 94
  %i.dtx = icmp eq i32 %i.dtw, 10
  %i.dty = and i32 %i.djf, 122
  %i.dtz = icmp eq i32 %i.dty, 10
  %i.dua = or i1 %i.dtx, %i.dtz
  %i.dub = or i1 %i.dog, %i.dua
  %i.duc = or i1 %i.doi, %i.dub
  %or.cond430.i = or i1 %i.dpz, %i.duc
  %or.cond432.i = or i1 %i.dqb, %or.cond430.i
  br i1 %or.cond432.i, label %bb.nw, label %bb.nx

bb.nw:                                            ; preds = %bb.nv
  %i.dud = lshr i32 %i.cb, 8
  %i.due = and i32 %i.dud, 16711935
  %i.duf = lshr i32 %i.bv, 8
  %i.dug = and i32 %i.duf, 16711935
  %i.duh = add nuw nsw i32 %i.due, %i.dug
  %i.dui = shl nuw i32 %i.duh, 7
  %i.duj = and i32 %i.dui, -16711936
  %i.duk = and i32 %i.cb, 16711935
  %i.dul = and i32 %i.bv, 16711935
  %i.dum = add nuw nsw i32 %i.duk, %i.dul
  %i.dun = lshr i32 %i.dum, 1
  %i.duo = and i32 %i.dun, 16711935
  %i.dup = or disjoint i32 %i.duj, %i.duo
  br label %yuv_diff.exit449.i.thread

bb.nx:                                            ; preds = %bb.nv
  br i1 %i.doe, label %bb.ny, label %bb.nz
end_hunk_1
