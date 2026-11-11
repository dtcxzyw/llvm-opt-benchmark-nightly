Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/open?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN6LibRaw15open_datastreamEP26LibRaw_abstract_datastream:bb.a
bb.dy:                                            ; preds = %bb.dx
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 190 ; 3 uses
  %i.vd = load i16, ptr %i.vc, align 2, !tbaa !127
  %i.ve = icmp eq i16 %i.vd, -1
  br i1 %i.ve, label %bb.dz, label %bb.ee

bb.dz:                                            ; preds = %bb.dy
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.vg = load i16, ptr %i.vf, align 8, !tbaa !128
  %i.vh = icmp eq i16 %i.vg, -1
  br i1 %i.vh, label %bb.ea, label %bb.ee

bb.ea:                                            ; preds = %bb.dz
  %i.vi = insertelement <2 x i16> poison, i16 %i.un, i64 0
  %i.vj = insertelement <2 x i16> %i.vi, i16 %i.uh, i64 1
  %i.vk = uitofp <2 x i16> %i.vj to <2 x float>   ; 2 uses
  %i.vl = uitofp i16 %i.ux to float               ; 2 uses
  %i.vm = insertelement <2 x float> <float poison, float 1.000000e+03>, float %i.vl, i64 0
  %i.vn = fdiv <2 x float> %i.vk, %i.vm           ; 2 uses
  %i.vo = extractelement <2 x float> %i.vn, i64 0 ; 2 uses
  %i.vp = extractelement <2 x float> %i.vn, i64 1 ; 4 uses
  %i.vq = fdiv float %i.vo, %i.vp
  %i.vr = fpext float %i.vq to double             ; 2 uses
  %i.vs = fcmp olt double %i.vr, f0x3FEF5C28F5C28F5C
  %i.vt = fcmp ogt double %i.vr, 1.020000e+00
  %or.cond568 = or i1 %i.vs, %i.vt
  br i1 %or.cond568, label %bb.eb, label %bb.ee

bb.eb:                                            ; preds = %bb.ea
  %i.vu = fcmp ogt float %i.vp, %i.vo
  br i1 %i.vu, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.vv = extractelement <2 x float> %i.vk, i64 0
  %i.vw = fdiv float %i.vv, %i.vp
  %i.vx = fptosi float %i.vw to i32               ; 2 uses
  %i.vy = sub nsw i32 %i.uy, %i.vx
  %i.vz = sdiv i32 %i.vy, 2
  %i.wa = trunc i32 %i.vz to i16
  %i.wb = add i16 %i.uu, %i.wa
  store i16 %i.wb, ptr %i.vf, align 8, !tbaa !128
  %i.wc = trunc i32 %i.vx to i16
  %i.wd = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i16 %i.wc, ptr %i.wd, align 4, !tbaa !147
  store i16 %i.uk, ptr %i.vc, align 2, !tbaa !127
  br label %.sink.split

bb.ed:                                            ; preds = %bb.eb
  %i.we = fmul float %i.vp, %i.vl
  %i.wf = fptosi float %i.we to i32               ; 2 uses
  %i.wg = sub nsw i32 %i.uo, %i.wf
  %i.wh = sdiv i32 %i.wg, 2
  %i.wi = trunc i32 %i.wh to i16
  %i.wj = add i16 %i.uk, %i.wi
  store i16 %i.wj, ptr %i.vc, align 2, !tbaa !127
  %i.wk = trunc i32 %i.wf to i16
  %i.wl = getelementptr inbounds nuw i8, ptr %0, i64 194
  store i16 %i.wk, ptr %i.wl, align 2, !tbaa !129
  store i16 %i.uu, ptr %i.vf, align 8, !tbaa !128
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ec, %bb.ed
  %.sink951 = phi i64 [ 196, %bb.ed ], [ 194, %bb.ec ]
  %.sink = phi i16 [ %i.ux, %bb.ed ], [ %i.un, %bb.ec ]
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 %.sink951
  store i16 %.sink, ptr %i.wm, align 2, !tbaa !120
  br label %bb.ee

bb.ee:                                            ; preds = %.sink.split, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %.thread591.thread
  %i.wn = load i32, ptr %i.ap, align 4, !tbaa !108 ; 7 uses
  %i.wo = icmp eq i32 %i.wn, 18                   ; 2 uses
  br i1 %i.wo, label %bb.ef, label %bb.eh

bb.ef:                                            ; preds = %bb.ee
  %i.wp = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.wq = load i32, ptr %i.wp, align 8, !tbaa !83
  %i.wr = icmp eq i32 %i.wq, 9
  br i1 %i.wr, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.ws = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.wt = load <2 x i16>, ptr %i.ws, align 8, !tbaa !120
  %i.wu = freeze <2 x i16> %i.wt                  ; 4 uses
  %i.wv = zext <2 x i16> %i.wu to <2 x i32>       ; 2 uses
  %i.ww = urem <2 x i16> %i.wu, splat (i16 6)     ; 2 uses
  %i.wx = icmp eq <2 x i16> %i.ww, zeroinitializer
  %i.wy = sub nuw <2 x i16> %i.wu, %i.ww
  %i.wz = zext <2 x i16> %i.wy to <2 x i32>
  %i.xa = add nuw nsw <2 x i32> %i.wz, splat (i32 6)
  %i.xb = select <2 x i1> %i.wx, <2 x i32> %i.wv, <2 x i32> %i.xa ; 4 uses
  %i.xc = icmp eq <2 x i32> %i.xb, %i.wv          ; 2 uses
  %i.xd = extractelement <2 x i1> %i.xc, i64 0
  %i.xe = extractelement <2 x i1> %i.xc, i64 1
  %or.cond658 = select i1 %i.xd, i1 %i.xe, i1 false
  br i1 %or.cond658, label %.loopexit687, label %.loopexit687.loopexit

.loopexit687.loopexit:                            ; preds = %bb.eg
  %i.xf = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.xg = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.xh = trunc <2 x i32> %i.xb to <2 x i16>
  %i.xi = bitcast <2 x i32> %i.xb to <4 x i16>
  %i.xj = extractelement <4 x i16> %i.xi, i64 0
  store i16 %i.xj, ptr %i.ws, align 8, !tbaa !80
  %i.xk = bitcast <2 x i32> %i.xb to <4 x i16>
  %i.xl = extractelement <4 x i16> %i.xk, i64 2
  %i.xm = load <2 x i16>, ptr %i.xg, align 4, !tbaa !120
  %i.xn = sub <2 x i16> %i.wu, %i.xh
  %i.xo = add <2 x i16> %i.xn, %i.xm
  store <2 x i16> %i.xo, ptr %i.xg, align 4, !tbaa !120
  store i16 %i.xl, ptr %i.xf, align 2, !tbaa !79
  %i.xp = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.xq = getelementptr inbounds nuw i8, ptr %0, i64 548
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.xq, ptr noundef nonnull align 8 dereferenceable(36) %i.xp, i64 36, i1 false), !tbaa !124
  br label %.loopexit687

bb.eh:                                            ; preds = %bb.ef, %bb.ee
  %i.xr = load i16, ptr %i.ac, align 2, !tbaa !105
  %.not455 = icmp eq i16 %i.xr, 0
  br i1 %.not455, label %bb.ei, label %.critedge570

bb.ei:                                            ; preds = %bb.eh
  %i.xs = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.xt = load i32, ptr %i.xs, align 8, !tbaa !83 ; 17 uses
  %i.xu = icmp ugt i32 %i.xt, 999
  br i1 %i.xu, label %bb.ej, label %.critedge570

bb.ej:                                            ; preds = %bb.ei
  %i.xv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.xw = load i16, ptr %i.xv, align 8, !tbaa !80 ; 2 uses
  %i.xx = and i16 %i.xw, 1
  %.not456 = icmp eq i16 %i.xx, 0
  br i1 %.not456, label %bb.ek, label %.thread597

bb.ek:                                            ; preds = %bb.ej
  %i.xy = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.xz = load i16, ptr %i.xy, align 2, !tbaa !79 ; 2 uses
  %i.ya = and i16 %i.xz, 1
  %.not457 = icmp eq i16 %i.ya, 0
  br i1 %.not457, label %.loopexit687, label %.thread597.thread

.thread597:                                       ; preds = %bb.ej
  %i.yb = add i16 %i.xw, 1
  store i16 %i.yb, ptr %i.xv, align 8, !tbaa !80
  %i.yc = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.yd = load i16, ptr %i.yc, align 4, !tbaa !82
  %i.ye = add i16 %i.yd, -1
  store i16 %i.ye, ptr %i.yc, align 4, !tbaa !82
  %.phi.trans.insert868 = getelementptr inbounds nuw i8, ptr %0, i64 26
  %.pre869 = load i16, ptr %.phi.trans.insert868, align 2, !tbaa !79 ; 2 uses
  %.pre879 = and i16 %.pre869, 1
  %i.yf = icmp eq i16 %.pre879, 0
  br i1 %i.yf, label %bb.el, label %.thread597.thread

.thread597.thread:                                ; preds = %bb.ek, %.thread597
  %.sroa.5.0928 = phi i32 [ 2, %.thread597 ], [ 0, %bb.ek ]
  %i.yg = phi i16 [ %.pre869, %.thread597 ], [ %i.xz, %bb.ek ]
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.yi = add i16 %i.yg, 1
  store i16 %i.yi, ptr %i.yh, align 2, !tbaa !79
  %i.yj = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.yk = load i16, ptr %i.yj, align 2, !tbaa !81
  %i.yl = add i16 %i.yk, -1
  store i16 %i.yl, ptr %i.yj, align 2, !tbaa !81
  br label %bb.el

bb.el:                                            ; preds = %.thread597.thread, %.thread597
  %.sroa.5.0929 = phi i32 [ %.sroa.5.0928, %.thread597.thread ], [ 2, %.thread597 ] ; 16 uses
  %.sroa.0.0 = phi i32 [ 1, %.thread597.thread ], [ 0, %.thread597 ] ; 16 uses
  %i.ym = or disjoint i32 %.sroa.5.0929, %.sroa.0.0
  %i.yn = shl nuw nsw i32 %i.ym, 1
  %i.yo = lshr i32 %i.xt, %i.yn
  %i.yp = and i32 %i.yo, 3
  %i.yq = or disjoint i32 %.sroa.0.0, %.sroa.5.0929
  %i.yr = shl nuw nsw i32 %i.yq, 1
  %i.ys = xor i32 %i.yr, 2
  %i.yt = lshr i32 %i.xt, %i.ys
  %i.yu = shl i32 %i.yt, 2
  %i.yv = and i32 %i.yu, 12
  %i.yw = or disjoint i32 %i.yv, %i.yp
  %i.yx = add nuw nsw i32 %.sroa.5.0929, 2
  %i.yy = or disjoint i32 %i.yx, %.sroa.0.0
  %i.yz = shl nuw nsw i32 %i.yy, 1
  %i.za = lshr i32 %i.xt, %i.yz
  %i.zb = shl nuw i32 %i.za, 4
  %i.zc = and i32 %i.zb, 48
  %i.zd = or disjoint i32 %i.zc, %i.yw
  %i.ze = add nuw nsw i32 %.sroa.5.0929, 2
  %i.zf = or disjoint i32 %.sroa.0.0, %i.ze
  %i.zg = shl nuw nsw i32 %i.zf, 1
  %i.zh = xor i32 %i.zg, 2
  %i.zi = lshr i32 %i.xt, %i.zh
  %i.zj = shl i32 %i.zi, 6
  %i.zk = and i32 %i.zj, 192
  %i.zl = or disjoint i32 %i.zk, %i.zd
  %i.zm = or disjoint i32 %.sroa.5.0929, %.sroa.0.0
  %i.zn = shl nuw nsw i32 %i.zm, 1
  %i.zo = or disjoint i32 %i.zn, 8
  %i.zp = lshr i32 %i.xt, %i.zo
  %i.zq = shl nuw i32 %i.zp, 8
  %i.zr = and i32 %i.zq, 768
  %i.zs = or disjoint i32 %i.zr, %i.zl
  %i.zt = or disjoint i32 %.sroa.5.0929, %.sroa.0.0
  %i.zu = shl nuw nsw i32 %i.zt, 1
  %i.zv = xor i32 %i.zu, 10
  %i.zw = lshr i32 %i.xt, %i.zv
  %i.zx = shl i32 %i.zw, 10
  %i.zy = and i32 %i.zx, 3072
  %i.zz = or disjoint i32 %i.zy, %i.zs
  %i.aaa = add nuw nsw i32 %.sroa.5.0929, 6
  %i.aab = or disjoint i32 %i.aaa, %.sroa.0.0
  %i.aac = shl nuw nsw i32 %i.aab, 1
  %i.aad = lshr i32 %i.xt, %i.aac
  %i.aae = shl nuw i32 %i.aad, 12
  %i.aaf = and i32 %i.aae, 12288
  %i.aag = or i32 %i.aaf, %i.zz
  %i.aah = add nuw nsw i32 %.sroa.5.0929, 6
  %i.aai = or disjoint i32 %.sroa.0.0, %i.aah
  %i.aaj = shl nuw nsw i32 %i.aai, 1
  %i.aak = xor i32 %i.aaj, 2
  %i.aal = lshr i32 %i.xt, %i.aak
  %i.aam = shl i32 %i.aal, 14
  %i.aan = and i32 %i.aam, 49152
  %i.aao = or i32 %i.aan, %i.aag
  %i.aap = or disjoint i32 %.sroa.5.0929, %.sroa.0.0
  %i.aaq = shl nuw nsw i32 %i.aap, 1
  %i.aar = or disjoint i32 %i.aaq, 16
  %i.aas = lshr i32 %i.xt, %i.aar
  %i.aat = shl nuw i32 %i.aas, 16
  %i.aau = and i32 %i.aat, 196608
  %i.aav = or i32 %i.aau, %i.aao
  %i.aaw = or disjoint i32 %.sroa.5.0929, %.sroa.0.0
  %i.aax = shl nuw nsw i32 %i.aaw, 1
  %i.aay = xor i32 %i.aax, 18
  %i.aaz = lshr i32 %i.xt, %i.aay
  %i.aba = shl i32 %i.aaz, 18
  %i.abb = and i32 %i.aba, 786432
  %i.abc = or i32 %i.abb, %i.aav
  %i.abd = add nuw nsw i32 %.sroa.5.0929, 10
  %i.abe = or disjoint i32 %i.abd, %.sroa.0.0
  %i.abf = shl nuw nsw i32 %i.abe, 1
  %i.abg = lshr i32 %i.xt, %i.abf
  %i.abh = shl nuw i32 %i.abg, 20
  %i.abi = and i32 %i.abh, 3145728
  %i.abj = or i32 %i.abi, %i.abc
  %i.abk = add nuw nsw i32 %.sroa.5.0929, 10
  %i.abl = or disjoint i32 %.sroa.0.0, %i.abk
  %i.abm = shl nuw nsw i32 %i.abl, 1
  %i.abn = xor i32 %i.abm, 2
  %i.abo = lshr i32 %i.xt, %i.abn
  %i.abp = shl i32 %i.abo, 22
  %i.abq = and i32 %i.abp, 12582912
  %i.abr = or i32 %i.abq, %i.abj
  %i.abs = or disjoint i32 %.sroa.5.0929, %.sroa.0.0
  %i.abt = shl nuw nsw i32 %i.abs, 1
  %i.abu = or disjoint i32 %i.abt, 24
  %i.abv = lshr i32 %i.xt, %i.abu
  %i.abw = shl nuw i32 %i.abv, 24
  %i.abx = and i32 %i.abw, 50331648
  %i.aby = or i32 %i.abx, %i.abr
  %i.abz = or disjoint i32 %.sroa.5.0929, %.sroa.0.0
  %i.aca = shl nuw nsw i32 %i.abz, 1
  %i.acb = xor i32 %i.aca, 26
  %i.acc = lshr i32 %i.xt, %i.acb
  %i.acd = shl i32 %i.acc, 26
  %i.ace = and i32 %i.acd, 201326592
  %i.acf = or i32 %i.ace, %i.aby
  %i.acg = add nuw nsw i32 %.sroa.5.0929, 14
  %i.ach = and i32 %i.acg, 14
  %i.aci = or disjoint i32 %i.ach, %.sroa.0.0
  %i.acj = shl nuw nsw i32 %i.aci, 1
  %i.ack = lshr i32 %i.xt, %i.acj
  %i.acl = shl i32 %i.ack, 28
  %i.acm = and i32 %i.acl, 805306368
  %i.acn = or i32 %i.acm, %i.acf
  %i.aco = add nuw nsw i32 %.sroa.5.0929, 14
  %i.acp = and i32 %i.aco, 14
  %i.acq = or disjoint i32 %.sroa.0.0, %i.acp
  %i.acr = shl nuw nsw i32 %i.acq, 1
  %i.acs = xor i32 %i.acr, 2
  %i.act = lshr i32 %i.xt, %i.acs
  %i.acu = shl i32 %i.act, 30
  %i.acv = or i32 %i.acu, %i.acn
  store i32 %i.acv, ptr %i.xs, align 8, !tbaa !83
  br label %.loopexit687

.loopexit687:                                     ; preds = %.loopexit687.loopexit, %bb.eg, %bb.el, %bb.ek
  %.0312 = phi i32 [ 2, %bb.el ], [ 2, %bb.ek ], [ 6, %bb.eg ], [ 6, %.loopexit687.loopexit ] ; 13 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %0, i64 182 ; 2 uses
  %.rhs.trunc642 = trunc nuw nsw i32 %.0312 to i16 ; 4 uses
  %i.acx = load i16, ptr %i.acw, align 2, !tbaa !127 ; 5 uses
  %.not544 = icmp eq i16 %i.acx, 0
  br i1 %.not544, label %bb.er, label %bb.em

bb.em:                                            ; preds = %.loopexit687
  %i.acy = zext i16 %i.acx to i32
  %.not545 = icmp eq i16 %i.acx, -1
  br i1 %.not545, label %bb.er, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.acz = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 2 uses
  %i.ada = load i16, ptr %i.acz, align 2, !tbaa !129 ; 3 uses
  %.off668 = add i16 %i.ada, -1
  %switch669 = icmp ult i16 %.off668, -2
  br i1 %switch669, label %bb.eo, label %bb.er

bb.eo:                                            ; preds = %bb.en
  %i.adb = zext i16 %i.ada to i32
  %.rhs.trunc948 = trunc nuw nsw i32 %.0312 to i16
  %i.adc = urem i16 %i.acx, %.rhs.trunc948
  %.not548 = icmp ne i16 %i.adc, 0
  %i.add = icmp samesign ult i32 %.0312, %i.adb
  %or.cond571 = select i1 %.not548, i1 %i.add, i1 false
  br i1 %or.cond571, label %bb.ep, label %bb.er

bb.ep:                                            ; preds = %bb.eo
  %i.ade = udiv i16 %i.acx, %.rhs.trunc642
  %narrow666 = add nuw i16 %i.ade, 1
  %i.adf = zext i16 %narrow666 to i32
  %i.adg = mul nuw nsw i32 %.0312, %i.adf         ; 2 uses
  %i.adh = sub nsw i32 %i.adg, %i.acy             ; 2 uses
  %i.adi = icmp sgt i32 %i.adh, 0
  br i1 %i.adi, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.adj = trunc i32 %i.adg to i16
  store i16 %i.adj, ptr %i.acw, align 2, !tbaa !127
  %i.adk = trunc i32 %i.adh to i16
  %i.adl = sub i16 %i.ada, %i.adk
  store i16 %i.adl, ptr %i.acz, align 2, !tbaa !129
  br label %bb.er

bb.er:                                            ; preds = %bb.en, %bb.ep, %bb.eq, %bb.eo, %bb.em, %.loopexit687
  %i.adm = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.adn = load i16, ptr %i.adm, align 8, !tbaa !128 ; 5 uses
  %.not549 = icmp eq i16 %i.adn, 0
  br i1 %.not549, label %bb.ex, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.ado = zext i16 %i.adn to i32
  %.not550 = icmp eq i16 %i.adn, -1
  br i1 %.not550, label %bb.ex, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.adp = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.adq = load i16, ptr %i.adp, align 4, !tbaa !147 ; 3 uses
  %.off670 = add i16 %i.adq, -1
  %switch671 = icmp ult i16 %.off670, -2
  br i1 %switch671, label %bb.eu, label %bb.ex

bb.eu:                                            ; preds = %bb.et
  %i.adr = zext i16 %i.adq to i32
  %.rhs.trunc945 = trunc nuw nsw i32 %.0312 to i16
  %i.ads = urem i16 %i.adn, %.rhs.trunc945
  %.not553 = icmp ne i16 %i.ads, 0
  %i.adt = icmp samesign ult i32 %.0312, %i.adr
  %or.cond572 = select i1 %.not553, i1 %i.adt, i1 false
  br i1 %or.cond572, label %bb.ev, label %bb.ex

bb.ev:                                            ; preds = %bb.eu
  %i.adu = udiv i16 %i.adn, %.rhs.trunc642
  %narrow667 = add nuw i16 %i.adu, 1
  %i.adv = zext i16 %narrow667 to i32
  %i.adw = mul nuw nsw i32 %.0312, %i.adv         ; 2 uses
  %i.adx = sub nsw i32 %i.adw, %i.ado             ; 2 uses
  %i.ady = icmp sgt i32 %i.adx, 0
  br i1 %i.ady, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.adz = trunc i32 %i.adw to i16
  store i16 %i.adz, ptr %i.adm, align 8, !tbaa !128
  %i.aea = trunc i32 %i.adx to i16
  %i.aeb = sub i16 %i.adq, %i.aea
  store i16 %i.aeb, ptr %i.adp, align 4, !tbaa !147
  br label %bb.ex

bb.ex:                                            ; preds = %bb.et, %bb.ev, %bb.ew, %bb.er, %bb.es, %bb.eu
  %i.aec = getelementptr inbounds nuw i8, ptr %0, i64 190 ; 2 uses
  %i.aed = load i16, ptr %i.aec, align 2, !tbaa !127 ; 5 uses
  %.not544.1 = icmp eq i16 %i.aed, 0
  br i1 %.not544.1, label %bb.fd, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.aee = zext i16 %i.aed to i32
  %.not545.1 = icmp eq i16 %i.aed, -1
  br i1 %.not545.1, label %bb.fd, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.aef = getelementptr inbounds nuw i8, ptr %0, i64 194 ; 2 uses
  %i.aeg = load i16, ptr %i.aef, align 2, !tbaa !129 ; 3 uses
  %.off668.1 = add i16 %i.aeg, -1
  %switch669.1 = icmp ult i16 %.off668.1, -2
  br i1 %switch669.1, label %bb.fa, label %bb.fd

bb.fa:                                            ; preds = %bb.ez
  %i.aeh = zext i16 %i.aeg to i32
  %.rhs.trunc942 = trunc nuw nsw i32 %.0312 to i16
  %i.aei = urem i16 %i.aed, %.rhs.trunc942
  %.not548.1 = icmp ne i16 %i.aei, 0
  %i.aej = icmp samesign ult i32 %.0312, %i.aeh
  %or.cond571.1 = select i1 %.not548.1, i1 %i.aej, i1 false
  br i1 %or.cond571.1, label %bb.fb, label %bb.fd

bb.fb:                                            ; preds = %bb.fa
  %i.aek = udiv i16 %i.aed, %.rhs.trunc642
  %narrow666.1 = add nuw i16 %i.aek, 1
  %i.ael = zext i16 %narrow666.1 to i32
  %i.aem = mul nuw nsw i32 %.0312, %i.ael         ; 2 uses
  %i.aen = sub nsw i32 %i.aem, %i.aee             ; 2 uses
  %i.aeo = icmp sgt i32 %i.aen, 0
  br i1 %i.aeo, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.aep = trunc i32 %i.aem to i16
  store i16 %i.aep, ptr %i.aec, align 2, !tbaa !127
  %i.aeq = trunc i32 %i.aen to i16
  %i.aer = sub i16 %i.aeg, %i.aeq
  store i16 %i.aer, ptr %i.aef, align 2, !tbaa !129
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ex
  %i.aes = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.aet = load i16, ptr %i.aes, align 8, !tbaa !128 ; 5 uses
  %.not549.1 = icmp eq i16 %i.aet, 0
  br i1 %.not549.1, label %.critedge570, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.aeu = zext i16 %i.aet to i32
  %.not550.1 = icmp eq i16 %i.aet, -1
  br i1 %.not550.1, label %.critedge570, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.aev = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.aew = load i16, ptr %i.aev, align 4, !tbaa !147 ; 3 uses
  %.off670.1 = add i16 %i.aew, -1
  %switch671.1 = icmp ult i16 %.off670.1, -2
  br i1 %switch671.1, label %bb.fg, label %.critedge570

bb.fg:                                            ; preds = %bb.ff
  %i.aex = zext i16 %i.aew to i32
  %.rhs.trunc = trunc nuw nsw i32 %.0312 to i16
  %i.aey = urem i16 %i.aet, %.rhs.trunc
  %.not553.1 = icmp ne i16 %i.aey, 0
  %i.aez = icmp samesign ult i32 %.0312, %i.aex
  %or.cond572.1 = select i1 %.not553.1, i1 %i.aez, i1 false
  br i1 %or.cond572.1, label %bb.fh, label %.critedge570

bb.fh:                                            ; preds = %bb.fg
  %i.afa = udiv i16 %i.aet, %.rhs.trunc642
  %narrow667.1 = add nuw i16 %i.afa, 1
  %i.afb = zext i16 %narrow667.1 to i32
  %i.afc = mul nuw nsw i32 %.0312, %i.afb         ; 2 uses
  %i.afd = sub nsw i32 %i.afc, %i.aeu             ; 2 uses
  %i.afe = icmp sgt i32 %i.afd, 0
  br i1 %i.afe, label %bb.fi, label %.critedge570

bb.fi:                                            ; preds = %bb.fh
  %i.aff = trunc i32 %i.afc to i16
  store i16 %i.aff, ptr %i.aes, align 8, !tbaa !128
  %i.afg = trunc i32 %i.afd to i16
  %i.afh = sub i16 %i.aew, %i.afg
  store i16 %i.afh, ptr %i.aev, align 4, !tbaa !147
  br label %.critedge570

.critedge570:                                     ; preds = %bb.fd, %bb.fe, %bb.ff, %bb.fg, %bb.fh, %bb.fi, %bb.ei, %bb.eh
  %i.afi = load i32, ptr %i.im, align 4, !tbaa !107
  %.not467 = icmp eq i32 %i.afi, 0
end_hunk_0
