Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rmodels?download=true
inline.NumInlined: 1421
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 99
loop-unroll.NumUnrolled: 188
begin_hunk_0_@cgltf_parse_json:bb.a
  br i1 %i.hn, label %.lr.ph1119.i, label %._crit_edge1120.loopexit.i

._crit_edge1120.loopexit.i:                       ; preds = %._crit_edge1117.i
  %.pre1203.i = load i64, ptr %i.am, align 8
  br label %._crit_edge1120.i

._crit_edge1120.i:                                ; preds = %._crit_edge1120.loopexit.i, %.preheader1074.i
  %i.ho = phi i64 [ %.pre1203.i, %._crit_edge1120.loopexit.i ], [ %i.av, %.preheader1074.i ] ; 2 uses
  %i.hp = phi ptr [ %i.hi, %._crit_edge1120.loopexit.i ], [ %i.aw, %.preheader1074.i ]
  %i.hq = phi ptr [ %i.hi, %._crit_edge1120.loopexit.i ], [ %i.ax, %.preheader1074.i ]
  %i.hr = add nuw i64 %.07801121.i, 1             ; 2 uses
  %i.hs = icmp ult i64 %i.hr, %i.ho
  br i1 %i.hs, label %.preheader1074.i, label %.preheader1065.i

.preheader1063.i:                                 ; preds = %bb.ax, %.preheader1065.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.aa, i64 200 ; 23 uses
  %i.hu = load i64, ptr %i.ht, align 8
  %.not1167.i = icmp eq i64 %i.hu, 0
  br i1 %.not1167.i, label %.preheader1061.i, label %.lr.ph1125.i

.lr.ph1125.i:                                     ; preds = %.preheader1063.i
  %i.hv = getelementptr inbounds nuw i8, ptr %i.aa, i64 192 ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.aa, i64 184 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.aa, i64 176 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.aa, i64 216
  %i.hz = getelementptr inbounds nuw i8, ptr %i.aa, i64 208
  br label %bb.ay

bb.ac:                                            ; preds = %bb.ax, %.lr.ph1123.i
  %.07721122.i = phi i64 [ 0, %.lr.ph1123.i ], [ %i.ka, %bb.ax ] ; 6 uses
  %i.ia = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.ib = getelementptr inbounds nuw [288 x i8], ptr %i.ia, i64 %.07721122.i
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 48 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8            ; 2 uses
  %.not921.i = icmp eq ptr %i.id, null
  br i1 %.not921.i, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ie = ptrtoint ptr %i.id to i64               ; 2 uses
  %i.if = load i64, ptr %i.be, align 8
  %i.ig = icmp ult i64 %i.if, %i.ie
  br i1 %i.ig, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ih = load ptr, ptr %i.bf, align 8
  %i.ii = getelementptr [160 x i8], ptr %i.ih, i64 %i.ie
  %i.ij = getelementptr i8, ptr %i.ii, i64 -160
  store ptr %i.ij, ptr %i.ic, align 8
  %.pre1204.i = load ptr, ptr %i.bd, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ac
  %i.ik = phi ptr [ %.pre1204.i, %bb.ae ], [ %i.ia, %bb.ac ] ; 2 uses
  %i.il = getelementptr inbounds nuw [288 x i8], ptr %i.ik, i64 %.07721122.i ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 192
  %i.in = load i32, ptr %i.im, align 8
  %.not922.i = icmp eq i32 %i.in, 0
  br i1 %.not922.i, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 208 ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8            ; 2 uses
  %.not923.i = icmp eq ptr %i.ip, null
  br i1 %.not923.i, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.iq = ptrtoint ptr %i.ip to i64               ; 2 uses
  %i.ir = load i64, ptr %i.be, align 8
  %i.is = icmp ult i64 %i.ir, %i.iq
  br i1 %i.is, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.it = load ptr, ptr %i.bf, align 8
  %i.iu = getelementptr [160 x i8], ptr %i.it, i64 %i.iq
  %i.iv = getelementptr i8, ptr %i.iu, i64 -160
  store ptr %i.iv, ptr %i.io, align 8
  %i.iw = load ptr, ptr %i.bd, align 8
  %i.ix = getelementptr inbounds nuw [288 x i8], ptr %i.iw, i64 %.07721122.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 232 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8            ; 2 uses
  %.not924.i = icmp eq ptr %i.iz, null
  br i1 %.not924.i, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ja = ptrtoint ptr %i.iz to i64               ; 2 uses
  %i.jb = load i64, ptr %i.be, align 8
  %i.jc = icmp ult i64 %i.jb, %i.ja
  br i1 %i.jc, label %.loopexit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jd = load ptr, ptr %i.bf, align 8
  %i.je = getelementptr [160 x i8], ptr %i.jd, i64 %i.ja
  %i.jf = getelementptr i8, ptr %i.je, i64 -160
  store ptr %i.jf, ptr %i.iy, align 8
  %.pre1205.i = load ptr, ptr %i.bd, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.af
  %i.jg = phi ptr [ %.pre1205.i, %bb.ak ], [ %i.ik, %bb.af ] ; 2 uses
  %i.jh = getelementptr inbounds nuw [288 x i8], ptr %i.jg, i64 %.07721122.i ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 48
  %i.jj = load ptr, ptr %i.ji, align 8            ; 2 uses
  %.not925.i = icmp eq ptr %i.jj, null
  br i1 %.not925.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 32
  %i.jl = load i64, ptr %i.jk, align 8
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 40
  store i64 %i.jl, ptr %i.jm, align 8
  %.pre1206.i = load ptr, ptr %i.bd, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.jn = phi ptr [ %.pre1206.i, %bb.am ], [ %i.jg, %bb.al ]
  %i.jo = getelementptr inbounds nuw [288 x i8], ptr %i.jn, i64 %.07721122.i ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 40 ; 2 uses
  %i.jq = load i64, ptr %i.jp, align 8
  %i.jr = icmp eq i64 %i.jq, 0
  br i1 %i.jr, label %bb.ao, label %bb.ax

bb.ao:                                            ; preds = %bb.an
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %i.jt = load i32, ptr %i.js, align 8            ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jv = load i32, ptr %i.ju, align 8
  switch i32 %i.jv, label %bb.aq [
    i32 1, label %cgltf_component_size.exit.i.i
    i32 2, label %cgltf_component_size.exit.i.i
    i32 3, label %cgltf_component_size.exit.thread.i.i
    i32 4, label %cgltf_component_size.exit.thread.i.i
    i32 5, label %bb.ap
    i32 6, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao, %bb.ao
  br label %cgltf_component_size.exit.thread.i.i

bb.aq:                                            ; preds = %bb.ao
  br label %cgltf_component_size.exit.thread.i.i

cgltf_component_size.exit.i.i:                    ; preds = %bb.ao, %bb.ao
  %i.jw = icmp eq i32 %i.jt, 5
  br i1 %i.jw, label %cgltf_calc_size.exit.i, label %cgltf_component_size.exit.thread.i.i

cgltf_component_size.exit.thread.i.i:             ; preds = %cgltf_component_size.exit.i.i, %bb.aq, %bb.ap, %bb.ao, %bb.ao
  %.0.i21.i.i = phi i64 [ 1, %cgltf_component_size.exit.i.i ], [ 0, %bb.aq ], [ 4, %bb.ap ], [ 2, %bb.ao ], [ 2, %bb.ao ] ; 3 uses
  switch i32 %i.jt, label %bb.au [
    i32 6, label %bb.av
    i32 2, label %cgltf_num_components.exit.i.i
    i32 3, label %bb.ar
    i32 4, label %bb.as
    i32 5, label %bb.as
    i32 7, label %bb.at
  ]

bb.ar:                                            ; preds = %cgltf_component_size.exit.thread.i.i
  br label %cgltf_num_components.exit.i.i

bb.as:                                            ; preds = %cgltf_component_size.exit.thread.i.i, %cgltf_component_size.exit.thread.i.i
  br label %cgltf_num_components.exit.i.i

bb.at:                                            ; preds = %cgltf_component_size.exit.thread.i.i
  br label %cgltf_num_components.exit.i.i

bb.au:                                            ; preds = %cgltf_component_size.exit.thread.i.i
  br label %cgltf_num_components.exit.i.i

bb.av:                                            ; preds = %cgltf_component_size.exit.thread.i.i
  %i.jx = add nsw i64 %.0.i21.i.i, -1
  %or.cond3.i.i = icmp ult i64 %i.jx, 2
  br i1 %or.cond3.i.i, label %bb.aw, label %cgltf_num_components.exit.i.i

bb.aw:                                            ; preds = %bb.av
  %i.jy = mul nuw nsw i64 %.0.i21.i.i, 12
  br label %cgltf_calc_size.exit.i

cgltf_num_components.exit.i.i:                    ; preds = %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %cgltf_component_size.exit.thread.i.i
  %phi.call.i.i = phi i64 [ 9, %bb.av ], [ 1, %bb.au ], [ 16, %bb.at ], [ 3, %bb.ar ], [ 4, %bb.as ], [ 2, %cgltf_component_size.exit.thread.i.i ]
  %i.jz = mul nuw nsw i64 %phi.call.i.i, %.0.i21.i.i
  br label %cgltf_calc_size.exit.i

cgltf_calc_size.exit.i:                           ; preds = %cgltf_num_components.exit.i.i, %bb.aw, %cgltf_component_size.exit.i.i
  %.0.i.i = phi i64 [ %i.jz, %cgltf_num_components.exit.i.i ], [ %i.jy, %bb.aw ], [ 8, %cgltf_component_size.exit.i.i ]
  store i64 %.0.i.i, ptr %i.jp, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %cgltf_calc_size.exit.i, %bb.an
  %i.ka = add nuw i64 %.07721122.i, 1             ; 2 uses
  %i.kb = load i64, ptr %i.bb, align 8
  %i.kc = icmp ult i64 %i.ka, %i.kb
  br i1 %i.kc, label %bb.ac, label %.preheader1063.i

.preheader1061.i:                                 ; preds = %bb.bk, %.preheader1063.i
  %i.kd = getelementptr inbounds nuw i8, ptr %i.aa, i64 184 ; 2 uses
  %i.ke = load i64, ptr %i.kd, align 8            ; 2 uses
  %.not1168.i = icmp eq i64 %i.ke, 0
  br i1 %.not1168.i, label %.preheader1059.i, label %.lr.ph1127.i

.lr.ph1127.i:                                     ; preds = %.preheader1061.i
  %i.kf = getelementptr inbounds nuw i8, ptr %i.aa, i64 176
  %i.kg = getelementptr inbounds nuw i8, ptr %i.aa, i64 152
  %i.kh = getelementptr inbounds nuw i8, ptr %i.aa, i64 144
  br label %bb.bl

bb.ay:                                            ; preds = %bb.bk, %.lr.ph1125.i
  %.07711124.i = phi i64 [ 0, %.lr.ph1125.i ], [ %i.lw, %bb.bk ] ; 5 uses
  %i.ki = load ptr, ptr %i.hv, align 8            ; 2 uses
  %i.kj = getelementptr inbounds nuw [96 x i8], ptr %i.ki, i64 %.07711124.i
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8 ; 2 uses
  %i.kl = load ptr, ptr %i.kk, align 8            ; 2 uses
  %.not926.i = icmp eq ptr %i.kl, null
  br i1 %.not926.i, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.km = ptrtoint ptr %i.kl to i64               ; 2 uses
  %i.kn = load i64, ptr %i.hw, align 8
  %i.ko = icmp ult i64 %i.kn, %i.km
  br i1 %i.ko, label %.loopexit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kp = load ptr, ptr %i.hx, align 8
  %i.kq = getelementptr [72 x i8], ptr %i.kp, i64 %i.km
  %i.kr = getelementptr i8, ptr %i.kq, i64 -72
  store ptr %i.kr, ptr %i.kk, align 8
  %.pre1207.i = load ptr, ptr %i.hv, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.ay
  %i.ks = phi ptr [ %.pre1207.i, %bb.ba ], [ %i.ki, %bb.ay ] ; 2 uses
  %i.kt = getelementptr inbounds nuw [96 x i8], ptr %i.ks, i64 %.07711124.i
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 32 ; 2 uses
  %i.kv = load ptr, ptr %i.ku, align 8            ; 2 uses
  %.not927.i = icmp eq ptr %i.kv, null
  br i1 %.not927.i, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.kw = ptrtoint ptr %i.kv to i64               ; 2 uses
  %i.kx = load i64, ptr %i.hw, align 8
  %i.ky = icmp ult i64 %i.kx, %i.kw
  br i1 %i.ky, label %.loopexit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kz = load ptr, ptr %i.hx, align 8
  %i.la = getelementptr [72 x i8], ptr %i.kz, i64 %i.kw
  %i.lb = getelementptr i8, ptr %i.la, i64 -72
  store ptr %i.lb, ptr %i.ku, align 8
  %.pre1208.i = load ptr, ptr %i.hv, align 8
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bb
  %i.lc = phi ptr [ %.pre1208.i, %bb.bd ], [ %i.ks, %bb.bb ] ; 2 uses
  %i.ld = getelementptr inbounds nuw [96 x i8], ptr %i.lc, i64 %.07711124.i
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 48 ; 2 uses
  %i.lf = load ptr, ptr %i.le, align 8            ; 2 uses
  %.not928.i = icmp eq ptr %i.lf, null
  br i1 %.not928.i, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.lg = ptrtoint ptr %i.lf to i64               ; 2 uses
  %i.lh = load i64, ptr %i.hw, align 8
  %i.li = icmp ult i64 %i.lh, %i.lg
  br i1 %i.li, label %.loopexit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lj = load ptr, ptr %i.hx, align 8
  %i.lk = getelementptr [72 x i8], ptr %i.lj, i64 %i.lg
  %i.ll = getelementptr i8, ptr %i.lk, i64 -72
  store ptr %i.ll, ptr %i.le, align 8
  %.pre1209.i = load ptr, ptr %i.hv, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.be
  %i.lm = phi ptr [ %.pre1209.i, %bb.bg ], [ %i.lc, %bb.be ]
  %i.ln = getelementptr inbounds nuw [96 x i8], ptr %i.lm, i64 %.07711124.i
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16 ; 2 uses
  %i.lp = load ptr, ptr %i.lo, align 8            ; 2 uses
  %.not929.i = icmp eq ptr %i.lp, null
  br i1 %.not929.i, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.lq = ptrtoint ptr %i.lp to i64               ; 2 uses
  %i.lr = load i64, ptr %i.hy, align 8
  %i.ls = icmp ult i64 %i.lr, %i.lq
  br i1 %i.ls, label %.loopexit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.lt = load ptr, ptr %i.hz, align 8
  %i.lu = getelementptr [64 x i8], ptr %i.lt, i64 %i.lq
  %i.lv = getelementptr i8, ptr %i.lu, i64 -64
  store ptr %i.lv, ptr %i.lo, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bh
  %i.lw = add nuw i64 %.07711124.i, 1             ; 2 uses
  %i.lx = load i64, ptr %i.ht, align 8
  %i.ly = icmp ult i64 %i.lw, %i.lx
  br i1 %i.ly, label %bb.ay, label %.preheader1061.i

.preheader1059.i:                                 ; preds = %bb.bo, %.preheader1061.i
  %i.lz = getelementptr inbounds nuw i8, ptr %i.aa, i64 120 ; 2 uses
  %i.ma = load i64, ptr %i.lz, align 8
  %.not1169.i = icmp eq i64 %i.ma, 0
  br i1 %.not1169.i, label %.preheader1057.i, label %.lr.ph1129.i

.lr.ph1129.i:                                     ; preds = %.preheader1059.i
  %i.mb = getelementptr inbounds nuw i8, ptr %i.aa, i64 112 ; 21 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.aa, i64 192 ; 21 uses
  br label %bb.bp

bb.bl:                                            ; preds = %bb.bo, %.lr.ph1127.i
  %i.md = phi i64 [ %i.ke, %.lr.ph1127.i ], [ %i.mn, %bb.bo ]
  %.07701126.i = phi i64 [ 0, %.lr.ph1127.i ], [ %i.mo, %bb.bo ] ; 2 uses
  %5 = load ptr, ptr %i.kf, align 8
  %i.me = getelementptr inbounds nuw [72 x i8], ptr %5, i64 %.07701126.i
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 16 ; 2 uses
  %i.mg = load ptr, ptr %i.mf, align 8            ; 2 uses
  %.not930.i = icmp eq ptr %i.mg, null
  br i1 %.not930.i, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.mh = ptrtoint ptr %i.mg to i64               ; 2 uses
  %i.mi = load i64, ptr %i.kg, align 8
  %i.mj = icmp ult i64 %i.mi, %i.mh
  br i1 %i.mj, label %.loopexit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.mk = load ptr, ptr %i.kh, align 8
  %i.ml = getelementptr [160 x i8], ptr %i.mk, i64 %i.mh
  %i.mm = getelementptr i8, ptr %i.ml, i64 -160
  store ptr %i.mm, ptr %i.mf, align 8
  %.pre1210.i.a = load i64, ptr %i.kd, align 8
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bl
  %i.mn = phi i64 [ %i.md, %bb.bl ], [ %.pre1210.i.a, %bb.bn ] ; 2 uses
  %i.mo = add nuw i64 %.07701126.i, 1             ; 2 uses
  %i.mp = icmp ult i64 %i.mo, %i.mn
  br i1 %i.mp, label %bb.bl, label %.preheader1059.i

.preheader1057.i:                                 ; preds = %bb.ea, %.preheader1059.i
  %i.mq = getelementptr inbounds nuw i8, ptr %i.aa, i64 152 ; 2 uses
  %i.mr = load i64, ptr %i.mq, align 8
  %.not1170.i = icmp eq i64 %i.mr, 0
  br i1 %.not1170.i, label %.preheader1055.i, label %.lr.ph1131.i

.lr.ph1131.i:                                     ; preds = %.preheader1057.i
  %i.ms = getelementptr inbounds nuw i8, ptr %i.aa, i64 144 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.aa, i64 168 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.aa, i64 160 ; 2 uses
  br label %bb.eb

bb.bp:                                            ; preds = %bb.ea, %.lr.ph1129.i
  %.07691128.i = phi i64 [ 0, %.lr.ph1129.i ], [ %i.ux, %bb.ea ] ; 22 uses
  %i.mv = load ptr, ptr %i.mb, align 8            ; 2 uses
  %i.mw = getelementptr inbounds nuw [1352 x i8], ptr %i.mv, i64 %.07691128.i
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 1136 ; 2 uses
  %i.my = load ptr, ptr %i.mx, align 8            ; 2 uses
  %.not931.i = icmp eq ptr %i.my, null
  br i1 %.not931.i, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.mz = ptrtoint ptr %i.my to i64               ; 2 uses
  %i.na = load i64, ptr %i.ht, align 8
  %i.nb = icmp ult i64 %i.na, %i.mz
  br i1 %i.nb, label %.loopexit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.nc = load ptr, ptr %i.mc, align 8
  %i.nd = getelementptr [96 x i8], ptr %i.nc, i64 %i.mz
  %i.ne = getelementptr i8, ptr %i.nd, i64 -96
  store ptr %i.ne, ptr %i.mx, align 8
  %.pre1211.i.a = load ptr, ptr %i.mb, align 8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bp
  %i.nf = phi ptr [ %.pre1211.i.a, %bb.br ], [ %i.mv, %bb.bp ] ; 2 uses
  %i.ng = getelementptr inbounds nuw [1352 x i8], ptr %i.nf, i64 %.07691128.i
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 1232 ; 2 uses
  %i.ni = load ptr, ptr %i.nh, align 8            ; 2 uses
  %.not932.i = icmp eq ptr %i.ni, null
  br i1 %.not932.i, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.nj = ptrtoint ptr %i.ni to i64               ; 2 uses
  %i.nk = load i64, ptr %i.ht, align 8
  %i.nl = icmp ult i64 %i.nk, %i.nj
  br i1 %i.nl, label %.loopexit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.nm = load ptr, ptr %i.mc, align 8
  %i.nn = getelementptr [96 x i8], ptr %i.nm, i64 %i.nj
  %i.no = getelementptr i8, ptr %i.nn, i64 -96
  store ptr %i.no, ptr %i.nh, align 8
  %.pre1212.i = load ptr, ptr %i.mb, align 8
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bs
  %i.np = phi ptr [ %.pre1212.i, %bb.bu ], [ %i.nf, %bb.bs ] ; 2 uses
  %i.nq = getelementptr inbounds nuw [1352 x i8], ptr %i.np, i64 %.07691128.i
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 1184 ; 2 uses
  %i.ns = load ptr, ptr %i.nr, align 8            ; 2 uses
  %.not933.i = icmp eq ptr %i.ns, null
  br i1 %.not933.i, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.nt = ptrtoint ptr %i.ns to i64               ; 2 uses
  %i.nu = load i64, ptr %i.ht, align 8
  %i.nv = icmp ult i64 %i.nu, %i.nt
  br i1 %i.nv, label %.loopexit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.nw = load ptr, ptr %i.mc, align 8
  %i.nx = getelementptr [96 x i8], ptr %i.nw, i64 %i.nt
  %i.ny = getelementptr i8, ptr %i.nx, i64 -96
  store ptr %i.ny, ptr %i.nr, align 8
  %.pre1213.i = load ptr, ptr %i.mb, align 8
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bv
  %i.nz = phi ptr [ %.pre1213.i, %bb.bx ], [ %i.np, %bb.bv ] ; 2 uses
  %i.oa = getelementptr inbounds nuw [1352 x i8], ptr %i.nz, i64 %.07691128.i
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 64 ; 2 uses
  %i.oc = load ptr, ptr %i.ob, align 8            ; 2 uses
  %.not934.i = icmp eq ptr %i.oc, null
  br i1 %.not934.i, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.od = ptrtoint ptr %i.oc to i64               ; 2 uses
  %i.oe = load i64, ptr %i.ht, align 8
  %i.of = icmp ult i64 %i.oe, %i.od
  br i1 %i.of, label %.loopexit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.og = load ptr, ptr %i.mc, align 8
  %i.oh = getelementptr [96 x i8], ptr %i.og, i64 %i.od
  %i.oi = getelementptr i8, ptr %i.oh, i64 -96
  store ptr %i.oi, ptr %i.ob, align 8
  %.pre1214.i = load ptr, ptr %i.mb, align 8
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.by
  %i.oj = phi ptr [ %.pre1214.i, %bb.ca ], [ %i.nz, %bb.by ] ; 2 uses
  %i.ok = getelementptr inbounds nuw [1352 x i8], ptr %i.oj, i64 %.07691128.i
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 112 ; 2 uses
  %i.om = load ptr, ptr %i.ol, align 8            ; 2 uses
  %.not935.i = icmp eq ptr %i.om, null
  br i1 %.not935.i, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.on = ptrtoint ptr %i.om to i64               ; 2 uses
  %i.oo = load i64, ptr %i.ht, align 8
  %i.op = icmp ult i64 %i.oo, %i.on
  br i1 %i.op, label %.loopexit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.oq = load ptr, ptr %i.mc, align 8
  %i.or = getelementptr [96 x i8], ptr %i.oq, i64 %i.on
  %i.os = getelementptr i8, ptr %i.or, i64 -96
  store ptr %i.os, ptr %i.ol, align 8
  %.pre1215.i = load ptr, ptr %i.mb, align 8
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cb
  %i.ot = phi ptr [ %.pre1215.i, %bb.cd ], [ %i.oj, %bb.cb ] ; 2 uses
  %i.ou = getelementptr inbounds nuw [1352 x i8], ptr %i.ot, i64 %.07691128.i
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 184 ; 2 uses
  %i.ow = load ptr, ptr %i.ov, align 8            ; 2 uses
  %.not936.i = icmp eq ptr %i.ow, null
  br i1 %.not936.i, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ox = ptrtoint ptr %i.ow to i64               ; 2 uses
  %i.oy = load i64, ptr %i.ht, align 8
  %i.oz = icmp ult i64 %i.oy, %i.ox
  br i1 %i.oz, label %.loopexit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.pa = load ptr, ptr %i.mc, align 8
  %i.pb = getelementptr [96 x i8], ptr %i.pa, i64 %i.ox
  %i.pc = getelementptr i8, ptr %i.pb, i64 -96
  store ptr %i.pc, ptr %i.ov, align 8
  %.pre1216.i = load ptr, ptr %i.mb, align 8
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.ce
  %i.pd = phi ptr [ %.pre1216.i, %bb.cg ], [ %i.ot, %bb.ce ] ; 2 uses
  %i.pe = getelementptr inbounds nuw [1352 x i8], ptr %i.pd, i64 %.07691128.i
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 232 ; 2 uses
  %i.pg = load ptr, ptr %i.pf, align 8            ; 2 uses
  %.not937.i = icmp eq ptr %i.pg, null
  br i1 %.not937.i, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ph = ptrtoint ptr %i.pg to i64               ; 2 uses
  %i.pi = load i64, ptr %i.ht, align 8
  %i.pj = icmp ult i64 %i.pi, %i.ph
  br i1 %i.pj, label %.loopexit, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.pk = load ptr, ptr %i.mc, align 8
  %i.pl = getelementptr [96 x i8], ptr %i.pk, i64 %i.ph
  %i.pm = getelementptr i8, ptr %i.pl, i64 -96
  store ptr %i.pm, ptr %i.pf, align 8
  %.pre1217.i = load ptr, ptr %i.mb, align 8
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ch
  %i.pn = phi ptr [ %.pre1217.i, %bb.cj ], [ %i.pd, %bb.ch ] ; 2 uses
  %i.po = getelementptr inbounds nuw [1352 x i8], ptr %i.pn, i64 %.07691128.i
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 312 ; 2 uses
  %i.pq = load ptr, ptr %i.pp, align 8            ; 2 uses
  %.not938.i = icmp eq ptr %i.pq, null
  br i1 %.not938.i, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.pr = ptrtoint ptr %i.pq to i64               ; 2 uses
  %i.ps = load i64, ptr %i.ht, align 8
  %i.pt = icmp ult i64 %i.ps, %i.pr
  br i1 %i.pt, label %.loopexit, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.pu = load ptr, ptr %i.mc, align 8
  %i.pv = getelementptr [96 x i8], ptr %i.pu, i64 %i.pr
  %i.pw = getelementptr i8, ptr %i.pv, i64 -96
  store ptr %i.pw, ptr %i.pp, align 8
  %.pre1218.i = load ptr, ptr %i.mb, align 8
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.ck
  %i.px = phi ptr [ %.pre1218.i, %bb.cm ], [ %i.pn, %bb.ck ] ; 2 uses
  %i.py = getelementptr inbounds nuw [1352 x i8], ptr %i.px, i64 %.07691128.i
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 360 ; 2 uses
  %i.qa = load ptr, ptr %i.pz, align 8            ; 2 uses
  %.not939.i = icmp eq ptr %i.qa, null
  br i1 %.not939.i, label %bb.cq, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.qb = ptrtoint ptr %i.qa to i64               ; 2 uses
  %i.qc = load i64, ptr %i.ht, align 8
  %i.qd = icmp ult i64 %i.qc, %i.qb
  br i1 %i.qd, label %.loopexit, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.qe = load ptr, ptr %i.mc, align 8
  %i.qf = getelementptr [96 x i8], ptr %i.qe, i64 %i.qb
  %i.qg = getelementptr i8, ptr %i.qf, i64 -96
  store ptr %i.qg, ptr %i.pz, align 8
  %.pre1219.i = load ptr, ptr %i.mb, align 8
  br label %bb.cq
end_hunk_0
begin_hunk_1_@cgltf_parse_json:bb.a
  %i.ru = getelementptr i8, ptr %i.rt, i64 -96
  store ptr %i.ru, ptr %i.rn, align 8
  %.pre1223.i = load ptr, ptr %i.mb, align 8
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.cz
  %i.rv = phi ptr [ %.pre1223.i, %bb.db ], [ %i.rl, %bb.cz ] ; 2 uses
  %i.rw = getelementptr inbounds nuw [1352 x i8], ptr %i.rv, i64 %.07691128.i
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 760 ; 2 uses
  %i.ry = load ptr, ptr %i.rx, align 8            ; 2 uses
  %.not944.i = icmp eq ptr %i.ry, null
  br i1 %.not944.i, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.rz = ptrtoint ptr %i.ry to i64               ; 2 uses
  %i.sa = load i64, ptr %i.ht, align 8
  %i.sb = icmp ult i64 %i.sa, %i.rz
  br i1 %i.sb, label %.loopexit, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.sc = load ptr, ptr %i.mc, align 8
  %i.sd = getelementptr [96 x i8], ptr %i.sc, i64 %i.rz
  %i.se = getelementptr i8, ptr %i.sd, i64 -96
  store ptr %i.se, ptr %i.rx, align 8
  %.pre1224.i = load ptr, ptr %i.mb, align 8
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dc
  %i.sf = phi ptr [ %.pre1224.i, %bb.de ], [ %i.rv, %bb.dc ] ; 2 uses
  %i.sg = getelementptr inbounds nuw [1352 x i8], ptr %i.sf, i64 %.07691128.i
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 584 ; 2 uses
  %i.si = load ptr, ptr %i.sh, align 8            ; 2 uses
  %.not945.i = icmp eq ptr %i.si, null
  br i1 %.not945.i, label %bb.di, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.sj = ptrtoint ptr %i.si to i64               ; 2 uses
  %i.sk = load i64, ptr %i.ht, align 8
  %i.sl = icmp ult i64 %i.sk, %i.sj
  br i1 %i.sl, label %.loopexit, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.sm = load ptr, ptr %i.mc, align 8
  %i.sn = getelementptr [96 x i8], ptr %i.sm, i64 %i.sj
  %i.so = getelementptr i8, ptr %i.sn, i64 -96
  store ptr %i.so, ptr %i.sh, align 8
  %.pre1225.i = load ptr, ptr %i.mb, align 8
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.df
  %i.sp = phi ptr [ %.pre1225.i, %bb.dh ], [ %i.sf, %bb.df ] ; 2 uses
  %i.sq = getelementptr inbounds nuw [1352 x i8], ptr %i.sp, i64 %.07691128.i
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 648 ; 2 uses
  %i.ss = load ptr, ptr %i.sr, align 8            ; 2 uses
  %.not946.i = icmp eq ptr %i.ss, null
  br i1 %.not946.i, label %bb.dl, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.st = ptrtoint ptr %i.ss to i64               ; 2 uses
  %i.su = load i64, ptr %i.ht, align 8
  %i.sv = icmp ult i64 %i.su, %i.st
  br i1 %i.sv, label %.loopexit, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.sw = load ptr, ptr %i.mc, align 8
  %i.sx = getelementptr [96 x i8], ptr %i.sw, i64 %i.st
  %i.sy = getelementptr i8, ptr %i.sx, i64 -96
  store ptr %i.sy, ptr %i.sr, align 8
  %.pre1226.i = load ptr, ptr %i.mb, align 8
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.di
  %i.sz = phi ptr [ %.pre1226.i, %bb.dk ], [ %i.sp, %bb.di ] ; 2 uses
  %i.ta = getelementptr inbounds nuw [1352 x i8], ptr %i.sz, i64 %.07691128.i
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 848 ; 2 uses
  %i.tc = load ptr, ptr %i.tb, align 8            ; 2 uses
  %.not947.i = icmp eq ptr %i.tc, null
  br i1 %.not947.i, label %bb.do, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.td = ptrtoint ptr %i.tc to i64               ; 2 uses
  %i.te = load i64, ptr %i.ht, align 8
  %i.tf = icmp ult i64 %i.te, %i.td
  br i1 %i.tf, label %.loopexit, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.tg = load ptr, ptr %i.mc, align 8
  %i.th = getelementptr [96 x i8], ptr %i.tg, i64 %i.td
  %i.ti = getelementptr i8, ptr %i.th, i64 -96
  store ptr %i.ti, ptr %i.tb, align 8
  %.pre1227.i = load ptr, ptr %i.mb, align 8
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dl
  %i.tj = phi ptr [ %.pre1227.i, %bb.dn ], [ %i.sz, %bb.dl ] ; 2 uses
  %i.tk = getelementptr inbounds nuw [1352 x i8], ptr %i.tj, i64 %.07691128.i
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 912 ; 2 uses
  %i.tm = load ptr, ptr %i.tl, align 8            ; 2 uses
  %.not948.i = icmp eq ptr %i.tm, null
  br i1 %.not948.i, label %bb.dr, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.tn = ptrtoint ptr %i.tm to i64               ; 2 uses
  %i.to = load i64, ptr %i.ht, align 8
  %i.tp = icmp ult i64 %i.to, %i.tn
  br i1 %i.tp, label %.loopexit, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.tq = load ptr, ptr %i.mc, align 8
  %i.tr = getelementptr [96 x i8], ptr %i.tq, i64 %i.tn
  %i.ts = getelementptr i8, ptr %i.tr, i64 -96
  store ptr %i.ts, ptr %i.tl, align 8
  %.pre1228.i = load ptr, ptr %i.mb, align 8
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.do
  %i.tt = phi ptr [ %.pre1228.i, %bb.dq ], [ %i.tj, %bb.do ] ; 2 uses
  %i.tu = getelementptr inbounds nuw [1352 x i8], ptr %i.tt, i64 %.07691128.i
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 960 ; 2 uses
  %i.tw = load ptr, ptr %i.tv, align 8            ; 2 uses
  %.not949.i = icmp eq ptr %i.tw, null
  br i1 %.not949.i, label %bb.du, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.tx = ptrtoint ptr %i.tw to i64               ; 2 uses
  %i.ty = load i64, ptr %i.ht, align 8
  %i.tz = icmp ult i64 %i.ty, %i.tx
  br i1 %i.tz, label %.loopexit, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ua = load ptr, ptr %i.mc, align 8
  %i.ub = getelementptr [96 x i8], ptr %i.ua, i64 %i.tx
  %i.uc = getelementptr i8, ptr %i.ub, i64 -96
  store ptr %i.uc, ptr %i.tv, align 8
  %.pre1229.i = load ptr, ptr %i.mb, align 8
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.dr
  %i.ud = phi ptr [ %.pre1229.i, %bb.dt ], [ %i.tt, %bb.dr ] ; 2 uses
  %i.ue = getelementptr inbounds nuw [1352 x i8], ptr %i.ud, i64 %.07691128.i
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 1024 ; 2 uses
  %i.ug = load ptr, ptr %i.uf, align 8            ; 2 uses
  %.not950.i = icmp eq ptr %i.ug, null
  br i1 %.not950.i, label %bb.dx, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.uh = ptrtoint ptr %i.ug to i64               ; 2 uses
  %i.ui = load i64, ptr %i.ht, align 8
  %i.uj = icmp ult i64 %i.ui, %i.uh
  br i1 %i.uj, label %.loopexit, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.uk = load ptr, ptr %i.mc, align 8
  %i.ul = getelementptr [96 x i8], ptr %i.uk, i64 %i.uh
  %i.um = getelementptr i8, ptr %i.ul, i64 -96
  store ptr %i.um, ptr %i.uf, align 8
  %.pre1230.i = load ptr, ptr %i.mb, align 8
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.du
  %i.un = phi ptr [ %.pre1230.i, %bb.dw ], [ %i.ud, %bb.du ]
  %i.uo = getelementptr inbounds nuw [1352 x i8], ptr %i.un, i64 %.07691128.i
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 1080 ; 2 uses
  %i.uq = load ptr, ptr %i.up, align 8            ; 2 uses
  %.not951.i = icmp eq ptr %i.uq, null
  br i1 %.not951.i, label %bb.ea, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.ur = ptrtoint ptr %i.uq to i64               ; 2 uses
  %i.us = load i64, ptr %i.ht, align 8
  %i.ut = icmp ult i64 %i.us, %i.ur
  br i1 %i.ut, label %.loopexit, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.uu = load ptr, ptr %i.mc, align 8
  %i.uv = getelementptr [96 x i8], ptr %i.uu, i64 %i.ur
  %i.uw = getelementptr i8, ptr %i.uv, i64 -96
  store ptr %i.uw, ptr %i.up, align 8
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dx
  %i.ux = add nuw i64 %.07691128.i, 1             ; 2 uses
  %i.uy = load i64, ptr %i.lz, align 8
  %i.uz = icmp ult i64 %i.ux, %i.uy
  br i1 %i.uz, label %bb.bp, label %.preheader1057.i

.preheader1055.i:                                 ; preds = %bb.eh, %.preheader1057.i
  %i.va = getelementptr inbounds nuw i8, ptr %i.aa, i64 232 ; 3 uses
  %i.vb = load i64, ptr %i.va, align 8
  %.not1171.i = icmp eq i64 %i.vb, 0
  br i1 %.not1171.i, label %.preheader1051.i, label %.preheader1053.lr.ph.i

.preheader1053.lr.ph.i:                           ; preds = %.preheader1055.i
  %i.vc = getelementptr inbounds nuw i8, ptr %i.aa, i64 224 ; 3 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.aa, i64 280 ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.aa, i64 272 ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  br label %.preheader1053.i

bb.eb:                                            ; preds = %bb.eh, %.lr.ph1131.i
  %.07681130.i = phi i64 [ 0, %.lr.ph1131.i ], [ %i.wb, %bb.eh ] ; 3 uses
  %6 = load ptr, ptr %i.ms, align 8
  %i.vg = getelementptr inbounds nuw [160 x i8], ptr %6, i64 %.07681130.i
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 8 ; 2 uses
  %i.vi = load ptr, ptr %i.vh, align 8            ; 2 uses
  %.not952.i = icmp eq ptr %i.vi, null
  br i1 %.not952.i, label %.loopexit, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.vj = ptrtoint ptr %i.vi to i64               ; 2 uses
  %i.vk = load i64, ptr %i.mt, align 8
  %i.vl = icmp ult i64 %i.vk, %i.vj
  br i1 %i.vl, label %.loopexit, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.vm = load ptr, ptr %i.mu, align 8
  %i.vn = getelementptr [80 x i8], ptr %i.vm, i64 %i.vj
  %i.vo = getelementptr i8, ptr %i.vn, i64 -80
  store ptr %i.vo, ptr %i.vh, align 8
  %i.vp = load ptr, ptr %i.ms, align 8
  %i.vq = getelementptr inbounds nuw [160 x i8], ptr %i.vp, i64 %.07681130.i ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 56
  %i.vs = load i32, ptr %i.vr, align 8
  %.not953.i = icmp eq i32 %i.vs, 0
  br i1 %.not953.i, label %bb.eh, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vq, i64 64 ; 2 uses
  %i.vu = load ptr, ptr %i.vt, align 8            ; 2 uses
  %.not954.i = icmp eq ptr %i.vu, null
  br i1 %.not954.i, label %.loopexit, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.vv = ptrtoint ptr %i.vu to i64               ; 2 uses
  %i.vw = load i64, ptr %i.mt, align 8
  %i.vx = icmp ult i64 %i.vw, %i.vv
  br i1 %i.vx, label %.loopexit, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.vy = load ptr, ptr %i.mu, align 8
  %i.vz = getelementptr [80 x i8], ptr %i.vy, i64 %i.vv
  %i.wa = getelementptr i8, ptr %i.vz, i64 -80
  store ptr %i.wa, ptr %i.vt, align 8
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ed
  %i.wb = add nuw i64 %.07681130.i, 1             ; 2 uses
  %i.wc = load i64, ptr %i.mq, align 8
  %i.wd = icmp ult i64 %i.wb, %i.wc
  br i1 %i.wd, label %bb.eb, label %.preheader1055.i

.preheader1053.i:                                 ; preds = %bb.ep, %.preheader1053.lr.ph.i
  %.07671136.i = phi i64 [ 0, %.preheader1053.lr.ph.i ], [ %i.yd, %bb.ep ] ; 6 uses
  %i.we = load ptr, ptr %i.vc, align 8            ; 3 uses
  %i.wf = getelementptr inbounds nuw [80 x i8], ptr %i.we, i64 %.07671136.i
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 16
  %i.wh = load i64, ptr %i.wg, align 8
  %.not9561132.not.i = icmp eq i64 %i.wh, 0
  br i1 %.not9561132.not.i, label %._crit_edge1135.i, label %.lr.ph1134.i

.preheader1051.i:                                 ; preds = %bb.ep, %.preheader1055.i
  %i.wi = getelementptr inbounds nuw i8, ptr %i.aa, i64 280 ; 5 uses
  %i.wj = load i64, ptr %i.wi, align 8
  %.not1172.i = icmp eq i64 %i.wj, 0
  br i1 %.not1172.i, label %.preheader1046.i, label %.preheader1049.lr.ph.i

.preheader1049.lr.ph.i:                           ; preds = %.preheader1051.i
  %i.wk = getelementptr inbounds nuw i8, ptr %i.aa, i64 272 ; 8 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  %i.wm = getelementptr inbounds nuw i8, ptr %i.aa, i64 224
  %i.wn = getelementptr inbounds nuw i8, ptr %i.aa, i64 248
  %i.wo = getelementptr inbounds nuw i8, ptr %i.aa, i64 240
  %i.wp = getelementptr inbounds nuw i8, ptr %i.aa, i64 264
  %i.wq = getelementptr inbounds nuw i8, ptr %i.aa, i64 256
  %i.wr = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  %.pre1232.i = load ptr, ptr %i.wk, align 8      ; 2 uses
  br label %.preheader1049.i

.lr.ph1134.i:                                     ; preds = %.preheader1053.i, %bb.ej
  %i.ws = phi ptr [ %i.xf, %bb.ej ], [ %i.we, %.preheader1053.i ]
  %.07661133.i = phi i64 [ %i.xe, %bb.ej ], [ 0, %.preheader1053.i ] ; 2 uses
  %i.wt = getelementptr inbounds nuw [80 x i8], ptr %i.ws, i64 %.07671136.i
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 8
  %i.wv = load ptr, ptr %i.wu, align 8
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.wv, i64 %.07661133.i ; 2 uses
  %i.wx = load ptr, ptr %i.ww, align 8            ; 2 uses
  %.not955.i = icmp eq ptr %i.wx, null
  br i1 %.not955.i, label %.loopexit, label %bb.ei

bb.ei:                                            ; preds = %.lr.ph1134.i
  %i.wy = ptrtoint ptr %i.wx to i64               ; 2 uses
  %i.wz = load i64, ptr %i.vd, align 8
  %i.xa = icmp ult i64 %i.wz, %i.wy
  br i1 %i.xa, label %.loopexit, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.xb = load ptr, ptr %i.ve, align 8
  %i.xc = getelementptr [264 x i8], ptr %i.xb, i64 %i.wy
  %i.xd = getelementptr i8, ptr %i.xc, i64 -264
  store ptr %i.xd, ptr %i.ww, align 8
  %i.xe = add nuw i64 %.07661133.i, 1             ; 2 uses
  %i.xf = load ptr, ptr %i.vc, align 8            ; 3 uses
  %i.xg = getelementptr inbounds nuw [80 x i8], ptr %i.xf, i64 %.07671136.i
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 16
  %i.xi = load i64, ptr %i.xh, align 8
  %.not956.i = icmp ult i64 %i.xe, %i.xi
  br i1 %.not956.i, label %.lr.ph1134.i, label %._crit_edge1135.i

._crit_edge1135.i:                                ; preds = %bb.ej, %.preheader1053.i
  %i.xj = phi ptr [ %i.we, %.preheader1053.i ], [ %i.xf, %bb.ej ] ; 2 uses
  %i.xk = getelementptr inbounds nuw [80 x i8], ptr %i.xj, i64 %.07671136.i
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 24 ; 2 uses
  %i.xm = load ptr, ptr %i.xl, align 8            ; 2 uses
  %.not957.i = icmp eq ptr %i.xm, null
  br i1 %.not957.i, label %bb.em, label %bb.ek

bb.ek:                                            ; preds = %._crit_edge1135.i
  %i.xn = ptrtoint ptr %i.xm to i64               ; 2 uses
  %i.xo = load i64, ptr %i.vd, align 8
  %i.xp = icmp ult i64 %i.xo, %i.xn
  br i1 %i.xp, label %.loopexit, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.xq = load ptr, ptr %i.ve, align 8
  %i.xr = getelementptr [264 x i8], ptr %i.xq, i64 %i.xn
  %i.xs = getelementptr i8, ptr %i.xr, i64 -264
  store ptr %i.xs, ptr %i.xl, align 8
  %.pre1231.i = load ptr, ptr %i.vc, align 8
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %._crit_edge1135.i
  %i.xt = phi ptr [ %.pre1231.i, %bb.el ], [ %i.xj, %._crit_edge1135.i ]
  %i.xu = getelementptr inbounds nuw [80 x i8], ptr %i.xt, i64 %.07671136.i
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 32 ; 2 uses
  %i.xw = load ptr, ptr %i.xv, align 8            ; 2 uses
  %.not958.i = icmp eq ptr %i.xw, null
  br i1 %.not958.i, label %bb.ep, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.xx = ptrtoint ptr %i.xw to i64               ; 2 uses
  %i.xy = load i64, ptr %i.bb, align 8
  %i.xz = icmp ult i64 %i.xy, %i.xx
  br i1 %i.xz, label %.loopexit, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.ya = load ptr, ptr %i.vf, align 8
  %i.yb = getelementptr [288 x i8], ptr %i.ya, i64 %i.xx
  %i.yc = getelementptr i8, ptr %i.yb, i64 -288
  store ptr %i.yc, ptr %i.xv, align 8
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.em
  %i.yd = add nuw i64 %.07671136.i, 1             ; 2 uses
  %i.ye = load i64, ptr %i.va, align 8
  %i.yf = icmp ult i64 %i.yd, %i.ye
  br i1 %i.yf, label %.preheader1053.i, label %.preheader1051.i

.preheader1049.i:                                 ; preds = %.loopexit.i, %.preheader1049.lr.ph.i
  %i.yg = phi ptr [ %.pre1232.i, %.preheader1049.lr.ph.i ], [ %i.acf, %.loopexit.i ]
  %i.yh = phi ptr [ %.pre1232.i, %.preheader1049.lr.ph.i ], [ %i.acg, %.loopexit.i ] ; 3 uses
  %.07651145.i = phi i64 [ 0, %.preheader1049.lr.ph.i ], [ %i.ach, %.loopexit.i ] ; 13 uses
  %i.yi = getelementptr inbounds nuw [264 x i8], ptr %i.yh, i64 %.07651145.i
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 24
  %i.yk = load i64, ptr %i.yj, align 8
  %.not9611137.not.i = icmp eq i64 %i.yk, 0
  br i1 %.not9611137.not.i, label %._crit_edge1140.i, label %.lr.ph1139.i

.preheader1046.i:                                 ; preds = %.loopexit.i, %.preheader1051.i
  %i.yl = getelementptr inbounds nuw i8, ptr %i.aa, i64 296 ; 2 uses
  %i.ym = load i64, ptr %i.yl, align 8            ; 2 uses
  %.not1173.i = icmp eq i64 %i.ym, 0
  br i1 %.not1173.i, label %._crit_edge1153.i, label %.preheader1044.lr.ph.i

.preheader1044.lr.ph.i:                           ; preds = %.preheader1046.i
  %i.yn = getelementptr inbounds nuw i8, ptr %i.aa, i64 288 ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.aa, i64 272
  %.pre1237.i.a = load ptr, ptr %i.yn, align 8
  br label %.preheader1044.i

.lr.ph1139.i:                                     ; preds = %.preheader1049.i, %bb.es
  %i.yp = phi ptr [ %i.zj, %bb.es ], [ %i.yh, %.preheader1049.i ] ; 2 uses
  %.07641138.i = phi i64 [ %i.zi, %bb.es ], [ 0, %.preheader1049.i ] ; 3 uses
  %i.yq = getelementptr inbounds nuw [264 x i8], ptr %i.yp, i64 %.07651145.i
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 16
  %i.ys = load ptr, ptr %i.yr, align 8
  %i.yt = getelementptr inbounds nuw [8 x i8], ptr %i.ys, i64 %.07641138.i ; 2 uses
  %i.yu = load ptr, ptr %i.yt, align 8            ; 2 uses
  %.not959.i = icmp eq ptr %i.yu, null
  br i1 %.not959.i, label %.loopexit, label %bb.eq

bb.eq:                                            ; preds = %.lr.ph1139.i
  %i.yv = ptrtoint ptr %i.yu to i64               ; 2 uses
  %i.yw = load i64, ptr %i.wi, align 8
  %i.yx = icmp ult i64 %i.yw, %i.yv
  br i1 %i.yx, label %.loopexit, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.yy = getelementptr [264 x i8], ptr %i.yp, i64 %i.yv
  %i.yz = getelementptr i8, ptr %i.yy, i64 -264
  store ptr %i.yz, ptr %i.yt, align 8
  %i.za = load ptr, ptr %i.wk, align 8
  %i.zb = getelementptr inbounds nuw [264 x i8], ptr %i.za, i64 %.07651145.i ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 16
  %i.zd = load ptr, ptr %i.zc, align 8
  %i.ze = getelementptr inbounds nuw [8 x i8], ptr %i.zd, i64 %.07641138.i
  %i.zf = load ptr, ptr %i.ze, align 8
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 8 ; 2 uses
  %i.zh = load ptr, ptr %i.zg, align 8
  %.not960.i = icmp eq ptr %i.zh, null
  br i1 %.not960.i, label %bb.es, label %.loopexit

bb.es:                                            ; preds = %bb.er
  store ptr %i.zb, ptr %i.zg, align 8
  %i.zi = add nuw i64 %.07641138.i, 1             ; 2 uses
  %i.zj = load ptr, ptr %i.wk, align 8            ; 4 uses
  %i.zk = getelementptr inbounds nuw [264 x i8], ptr %i.zj, i64 %.07651145.i
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 24
  %i.zm = load i64, ptr %i.zl, align 8
  %.not961.i = icmp ult i64 %i.zi, %i.zm
  br i1 %.not961.i, label %.lr.ph1139.i, label %._crit_edge1140.i

._crit_edge1140.i:                                ; preds = %bb.es, %.preheader1049.i
  %i.zn = phi ptr [ %i.yg, %.preheader1049.i ], [ %i.zj, %bb.es ]
  %i.zo = phi ptr [ %i.yh, %.preheader1049.i ], [ %i.zj, %bb.es ] ; 2 uses
  %i.zp = getelementptr inbounds nuw [264 x i8], ptr %i.zo, i64 %.07651145.i
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 40 ; 2 uses
  %i.zr = load ptr, ptr %i.zq, align 8            ; 2 uses
  %.not962.i = icmp eq ptr %i.zr, null
  br i1 %.not962.i, label %bb.ev, label %bb.et

bb.et:                                            ; preds = %._crit_edge1140.i
  %i.zs = ptrtoint ptr %i.zr to i64               ; 2 uses
  %i.zt = load i64, ptr %i.am, align 8
  %i.zu = icmp ult i64 %i.zt, %i.zs
  br i1 %i.zu, label %.loopexit, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.zv = load ptr, ptr %i.wl, align 8
  %i.zw = getelementptr [96 x i8], ptr %i.zv, i64 %i.zs
  %i.zx = getelementptr i8, ptr %i.zw, i64 -96
  store ptr %i.zx, ptr %i.zq, align 8
  %.pre1233.i.a = load ptr, ptr %i.wk, align 8    ; 2 uses
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %._crit_edge1140.i
  %i.zy = phi ptr [ %.pre1233.i.a, %bb.eu ], [ %i.zn, %._crit_edge1140.i ]
end_hunk_1
