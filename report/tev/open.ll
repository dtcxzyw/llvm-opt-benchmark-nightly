Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/open?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN6LibRaw15open_datastreamEP26LibRaw_abstract_datastream:bb.a
bb.dz:                                            ; preds = %bb.dy
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 190 ; 3 uses
  %i.vg = load i16, ptr %i.vf, align 2, !tbaa !129
  %i.vh = icmp eq i16 %i.vg, -1
  br i1 %i.vh, label %bb.ea, label %bb.ef

bb.ea:                                            ; preds = %bb.dz
  %i.vi = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.vj = load i16, ptr %i.vi, align 8, !tbaa !130
  %i.vk = icmp eq i16 %i.vj, -1
  br i1 %i.vk, label %bb.eb, label %bb.ef

bb.eb:                                            ; preds = %bb.ea
  %i.vl = insertelement <2 x i16> poison, i16 %i.uq, i64 0
  %i.vm = insertelement <2 x i16> %i.vl, i16 %i.uk, i64 1
  %i.vn = uitofp <2 x i16> %i.vm to <2 x float>   ; 2 uses
  %i.vo = uitofp i16 %i.va to float               ; 2 uses
  %i.vp = insertelement <2 x float> <float poison, float 1.000000e+03>, float %i.vo, i64 0
  %i.vq = fdiv <2 x float> %i.vn, %i.vp           ; 2 uses
  %i.vr = extractelement <2 x float> %i.vq, i64 0 ; 2 uses
  %i.vs = extractelement <2 x float> %i.vq, i64 1 ; 4 uses
  %i.vt = fdiv float %i.vr, %i.vs
  %i.vu = fpext float %i.vt to double             ; 2 uses
  %i.vv = fcmp olt double %i.vu, f0x3FEF5C28F5C28F5C
  %i.vw = fcmp ogt double %i.vu, 1.020000e+00
  %or.cond568 = or i1 %i.vv, %i.vw
  br i1 %or.cond568, label %bb.ec, label %bb.ef

bb.ec:                                            ; preds = %bb.eb
  %i.vx = fcmp ogt float %i.vs, %i.vr
  br i1 %i.vx, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.vy = extractelement <2 x float> %i.vn, i64 0
  %i.vz = fdiv float %i.vy, %i.vs
  %i.wa = fptosi float %i.vz to i32               ; 2 uses
  %i.wb = sub nsw i32 %i.vb, %i.wa
  %i.wc = sdiv i32 %i.wb, 2
  %i.wd = trunc i32 %i.wc to i16
  %i.we = add i16 %i.ux, %i.wd
  store i16 %i.we, ptr %i.vi, align 8, !tbaa !130
  %i.wf = trunc i32 %i.wa to i16
  %i.wg = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i16 %i.wf, ptr %i.wg, align 4, !tbaa !149
  store i16 %i.un, ptr %i.vf, align 2, !tbaa !129
  br label %.sink.split

bb.ee:                                            ; preds = %bb.ec
  %i.wh = fmul float %i.vs, %i.vo
  %i.wi = fptosi float %i.wh to i32               ; 2 uses
  %i.wj = sub nsw i32 %i.ur, %i.wi
  %i.wk = sdiv i32 %i.wj, 2
  %i.wl = trunc i32 %i.wk to i16
  %i.wm = add i16 %i.un, %i.wl
  store i16 %i.wm, ptr %i.vf, align 2, !tbaa !129
  %i.wn = trunc i32 %i.wi to i16
  %i.wo = getelementptr inbounds nuw i8, ptr %0, i64 194
  store i16 %i.wn, ptr %i.wo, align 2, !tbaa !131
  store i16 %i.ux, ptr %i.vi, align 8, !tbaa !130
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ed, %bb.ee
  %.sink949 = phi i64 [ 196, %bb.ee ], [ 194, %bb.ed ]
  %.sink = phi i16 [ %i.va, %bb.ee ], [ %i.uq, %bb.ed ]
  %i.wp = getelementptr inbounds nuw i8, ptr %0, i64 %.sink949
  store i16 %.sink, ptr %i.wp, align 2, !tbaa !122
  br label %bb.ef

bb.ef:                                            ; preds = %.sink.split, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %.thread591.thread
  %i.wq = load i32, ptr %i.aq, align 4, !tbaa !110 ; 7 uses
  %i.wr = icmp eq i32 %i.wq, 18                   ; 2 uses
  br i1 %i.wr, label %bb.eg, label %bb.ei

bb.eg:                                            ; preds = %bb.ef
  %i.ws = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.wt = load i32, ptr %i.ws, align 8, !tbaa !83
  %i.wu = icmp eq i32 %i.wt, 9
  br i1 %i.wu, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.wv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ww = load <2 x i16>, ptr %i.wv, align 8, !tbaa !122
  %i.wx = freeze <2 x i16> %i.ww                  ; 4 uses
  %i.wy = zext <2 x i16> %i.wx to <2 x i32>       ; 2 uses
  %i.wz = urem <2 x i16> %i.wx, splat (i16 6)     ; 2 uses
  %i.xa = icmp eq <2 x i16> %i.wz, zeroinitializer
  %i.xb = sub nuw <2 x i16> %i.wx, %i.wz
  %i.xc = zext <2 x i16> %i.xb to <2 x i32>
  %i.xd = add nuw nsw <2 x i32> %i.xc, splat (i32 6)
  %i.xe = select <2 x i1> %i.xa, <2 x i32> %i.wy, <2 x i32> %i.xd ; 4 uses
  %i.xf = icmp eq <2 x i32> %i.xe, %i.wy          ; 2 uses
  %i.xg = extractelement <2 x i1> %i.xf, i64 0
  %i.xh = extractelement <2 x i1> %i.xf, i64 1
  %or.cond658 = select i1 %i.xg, i1 %i.xh, i1 false
  br i1 %or.cond658, label %.loopexit687, label %.loopexit687.loopexit

.loopexit687.loopexit:                            ; preds = %bb.eh
  %i.xi = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.xj = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.xk = trunc <2 x i32> %i.xe to <2 x i16>
  %i.xl = bitcast <2 x i32> %i.xe to <4 x i16>
  %i.xm = extractelement <4 x i16> %i.xl, i64 0
  store i16 %i.xm, ptr %i.wv, align 8, !tbaa !80
  %i.xn = bitcast <2 x i32> %i.xe to <4 x i16>
  %i.xo = extractelement <4 x i16> %i.xn, i64 2
  %i.xp = load <2 x i16>, ptr %i.xj, align 4, !tbaa !122
  %i.xq = sub <2 x i16> %i.wx, %i.xk
  %i.xr = add <2 x i16> %i.xq, %i.xp
  store <2 x i16> %i.xr, ptr %i.xj, align 4, !tbaa !122
  store i16 %i.xo, ptr %i.xi, align 2, !tbaa !79
  %i.xs = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.xt = getelementptr inbounds nuw i8, ptr %0, i64 548
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.xt, ptr noundef nonnull align 8 dereferenceable(36) %i.xs, i64 36, i1 false), !tbaa !126
  br label %.loopexit687

bb.ei:                                            ; preds = %bb.eg, %bb.ef
  %i.xu = load i16, ptr %i.ad, align 2, !tbaa !107
  %.not455 = icmp eq i16 %i.xu, 0
  br i1 %.not455, label %bb.ej, label %.critedge570

bb.ej:                                            ; preds = %bb.ei
  %i.xv = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.xw = load i32, ptr %i.xv, align 8, !tbaa !83 ; 17 uses
  %i.xx = icmp ugt i32 %i.xw, 999
  br i1 %i.xx, label %bb.ek, label %.critedge570

bb.ek:                                            ; preds = %bb.ej
  %i.xy = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.xz = load i16, ptr %i.xy, align 8, !tbaa !80 ; 2 uses
  %i.ya = and i16 %i.xz, 1
  %.not456 = icmp eq i16 %i.ya, 0
  br i1 %.not456, label %bb.el, label %.thread597

bb.el:                                            ; preds = %bb.ek
  %i.yb = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.yc = load i16, ptr %i.yb, align 2, !tbaa !79 ; 2 uses
  %i.yd = and i16 %i.yc, 1
  %.not457 = icmp eq i16 %i.yd, 0
  br i1 %.not457, label %.loopexit687, label %.thread597.thread

.thread597:                                       ; preds = %bb.ek
  %i.ye = add i16 %i.xz, 1
  store i16 %i.ye, ptr %i.xy, align 8, !tbaa !80
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.yg = load i16, ptr %i.yf, align 4, !tbaa !82
  %i.yh = add i16 %i.yg, -1
  store i16 %i.yh, ptr %i.yf, align 4, !tbaa !82
  %.phi.trans.insert868 = getelementptr inbounds nuw i8, ptr %0, i64 26
  %.pre869 = load i16, ptr %.phi.trans.insert868, align 2, !tbaa !79 ; 2 uses
  %.pre877 = and i16 %.pre869, 1
  %i.yi = icmp eq i16 %.pre877, 0
  br i1 %i.yi, label %bb.em, label %.thread597.thread

.thread597.thread:                                ; preds = %bb.el, %.thread597
  %.sroa.5.0926 = phi i32 [ 2, %.thread597 ], [ 0, %bb.el ]
  %i.yj = phi i16 [ %.pre869, %.thread597 ], [ %i.yc, %bb.el ]
  %i.yk = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.yl = add i16 %i.yj, 1
  store i16 %i.yl, ptr %i.yk, align 2, !tbaa !79
  %i.ym = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.yn = load i16, ptr %i.ym, align 2, !tbaa !81
  %i.yo = add i16 %i.yn, -1
  store i16 %i.yo, ptr %i.ym, align 2, !tbaa !81
  br label %bb.em

bb.em:                                            ; preds = %.thread597.thread, %.thread597
  %.sroa.5.0927 = phi i32 [ %.sroa.5.0926, %.thread597.thread ], [ 2, %.thread597 ] ; 16 uses
  %.sroa.0.0 = phi i32 [ 1, %.thread597.thread ], [ 0, %.thread597 ] ; 16 uses
  %i.yp = or disjoint i32 %.sroa.5.0927, %.sroa.0.0
  %i.yq = shl nuw nsw i32 %i.yp, 1
  %i.yr = lshr i32 %i.xw, %i.yq
  %i.ys = and i32 %i.yr, 3
  %i.yt = or disjoint i32 %.sroa.0.0, %.sroa.5.0927
  %i.yu = shl nuw nsw i32 %i.yt, 1
  %i.yv = xor i32 %i.yu, 2
  %i.yw = lshr i32 %i.xw, %i.yv
  %i.yx = shl i32 %i.yw, 2
  %i.yy = and i32 %i.yx, 12
  %i.yz = or disjoint i32 %i.yy, %i.ys
  %i.za = add nuw nsw i32 %.sroa.5.0927, 2
  %i.zb = or disjoint i32 %i.za, %.sroa.0.0
  %i.zc = shl nuw nsw i32 %i.zb, 1
  %i.zd = lshr i32 %i.xw, %i.zc
  %i.ze = shl nuw i32 %i.zd, 4
  %i.zf = and i32 %i.ze, 48
  %i.zg = or disjoint i32 %i.zf, %i.yz
  %i.zh = add nuw nsw i32 %.sroa.5.0927, 2
  %i.zi = or disjoint i32 %.sroa.0.0, %i.zh
  %i.zj = shl nuw nsw i32 %i.zi, 1
  %i.zk = xor i32 %i.zj, 2
  %i.zl = lshr i32 %i.xw, %i.zk
  %i.zm = shl i32 %i.zl, 6
  %i.zn = and i32 %i.zm, 192
  %i.zo = or disjoint i32 %i.zn, %i.zg
  %i.zp = or disjoint i32 %.sroa.5.0927, %.sroa.0.0
  %i.zq = shl nuw nsw i32 %i.zp, 1
  %i.zr = or disjoint i32 %i.zq, 8
  %i.zs = lshr i32 %i.xw, %i.zr
  %i.zt = shl nuw i32 %i.zs, 8
  %i.zu = and i32 %i.zt, 768
  %i.zv = or disjoint i32 %i.zu, %i.zo
  %i.zw = or disjoint i32 %.sroa.0.0, %.sroa.5.0927
  %i.zx = shl nuw nsw i32 %i.zw, 1
  %i.zy = xor i32 %i.zx, 10
  %i.zz = lshr i32 %i.xw, %i.zy
  %i.aaa = shl i32 %i.zz, 10
  %i.aab = and i32 %i.aaa, 3072
  %i.aac = or disjoint i32 %i.aab, %i.zv
  %i.aad = add nuw nsw i32 %.sroa.5.0927, 6
  %i.aae = or disjoint i32 %i.aad, %.sroa.0.0
  %i.aaf = shl nuw nsw i32 %i.aae, 1
  %i.aag = lshr i32 %i.xw, %i.aaf
  %i.aah = shl nuw i32 %i.aag, 12
  %i.aai = and i32 %i.aah, 12288
  %i.aaj = or i32 %i.aai, %i.aac
  %i.aak = add nuw nsw i32 %.sroa.5.0927, 6
  %i.aal = or disjoint i32 %.sroa.0.0, %i.aak
  %i.aam = shl nuw nsw i32 %i.aal, 1
  %i.aan = xor i32 %i.aam, 2
  %i.aao = lshr i32 %i.xw, %i.aan
  %i.aap = shl i32 %i.aao, 14
  %i.aaq = and i32 %i.aap, 49152
  %i.aar = or i32 %i.aaq, %i.aaj
  %i.aas = or disjoint i32 %.sroa.5.0927, %.sroa.0.0
  %i.aat = shl nuw nsw i32 %i.aas, 1
  %i.aau = or disjoint i32 %i.aat, 16
  %i.aav = lshr i32 %i.xw, %i.aau
  %i.aaw = shl nuw i32 %i.aav, 16
  %i.aax = and i32 %i.aaw, 196608
  %i.aay = or i32 %i.aax, %i.aar
  %i.aaz = or disjoint i32 %.sroa.0.0, %.sroa.5.0927
  %i.aba = shl nuw nsw i32 %i.aaz, 1
  %i.abb = xor i32 %i.aba, 18
  %i.abc = lshr i32 %i.xw, %i.abb
  %i.abd = shl i32 %i.abc, 18
  %i.abe = and i32 %i.abd, 786432
  %i.abf = or i32 %i.abe, %i.aay
  %i.abg = add nuw nsw i32 %.sroa.5.0927, 10
  %i.abh = or disjoint i32 %i.abg, %.sroa.0.0
  %i.abi = shl nuw nsw i32 %i.abh, 1
  %i.abj = lshr i32 %i.xw, %i.abi
  %i.abk = shl nuw i32 %i.abj, 20
  %i.abl = and i32 %i.abk, 3145728
  %i.abm = or i32 %i.abl, %i.abf
  %i.abn = add nuw nsw i32 %.sroa.5.0927, 10
  %i.abo = or disjoint i32 %.sroa.0.0, %i.abn
  %i.abp = shl nuw nsw i32 %i.abo, 1
  %i.abq = xor i32 %i.abp, 2
  %i.abr = lshr i32 %i.xw, %i.abq
  %i.abs = shl i32 %i.abr, 22
  %i.abt = and i32 %i.abs, 12582912
  %i.abu = or i32 %i.abt, %i.abm
  %i.abv = or disjoint i32 %.sroa.5.0927, %.sroa.0.0
  %i.abw = shl nuw nsw i32 %i.abv, 1
  %i.abx = or disjoint i32 %i.abw, 24
  %i.aby = lshr i32 %i.xw, %i.abx
  %i.abz = shl nuw i32 %i.aby, 24
  %i.aca = and i32 %i.abz, 50331648
  %i.acb = or i32 %i.aca, %i.abu
  %i.acc = or disjoint i32 %.sroa.0.0, %.sroa.5.0927
  %i.acd = shl nuw nsw i32 %i.acc, 1
  %i.ace = xor i32 %i.acd, 26
  %i.acf = lshr i32 %i.xw, %i.ace
  %i.acg = shl i32 %i.acf, 26
  %i.ach = and i32 %i.acg, 201326592
  %i.aci = or i32 %i.ach, %i.acb
  %i.acj = add nuw nsw i32 %.sroa.5.0927, 14
  %i.ack = and i32 %i.acj, 14
  %i.acl = or disjoint i32 %i.ack, %.sroa.0.0
  %i.acm = shl nuw nsw i32 %i.acl, 1
  %i.acn = lshr i32 %i.xw, %i.acm
  %i.aco = shl i32 %i.acn, 28
  %i.acp = and i32 %i.aco, 805306368
  %i.acq = or i32 %i.acp, %i.aci
  %i.acr = add nuw nsw i32 %.sroa.5.0927, 14
  %i.acs = and i32 %i.acr, 14
  %i.act = or disjoint i32 %.sroa.0.0, %i.acs
  %i.acu = shl nuw nsw i32 %i.act, 1
  %i.acv = xor i32 %i.acu, 2
  %i.acw = lshr i32 %i.xw, %i.acv
  %i.acx = shl i32 %i.acw, 30
  %i.acy = or i32 %i.acx, %i.acq
  store i32 %i.acy, ptr %i.xv, align 8, !tbaa !83
  br label %.loopexit687

.loopexit687:                                     ; preds = %.loopexit687.loopexit, %bb.eh, %bb.em, %bb.el
  %.0312 = phi i32 [ 2, %bb.em ], [ 2, %bb.el ], [ 6, %bb.eh ], [ 6, %.loopexit687.loopexit ] ; 13 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %0, i64 182 ; 2 uses
  %.rhs.trunc642 = trunc nuw nsw i32 %.0312 to i16 ; 4 uses
  %i.ada = load i16, ptr %i.acz, align 2, !tbaa !129 ; 5 uses
  %.not544 = icmp eq i16 %i.ada, 0
  br i1 %.not544, label %bb.es, label %bb.en

bb.en:                                            ; preds = %.loopexit687
  %i.adb = zext i16 %i.ada to i32
  %.not545 = icmp eq i16 %i.ada, -1
  br i1 %.not545, label %bb.es, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.adc = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 2 uses
  %i.add = load i16, ptr %i.adc, align 2, !tbaa !131 ; 3 uses
  %.off668 = add i16 %i.add, -1
  %switch669 = icmp ult i16 %.off668, -2
  br i1 %switch669, label %bb.ep, label %bb.es

bb.ep:                                            ; preds = %bb.eo
  %i.ade = zext i16 %i.add to i32
  %.rhs.trunc946 = trunc nuw nsw i32 %.0312 to i16
  %i.adf = urem i16 %i.ada, %.rhs.trunc946
  %.not548 = icmp ne i16 %i.adf, 0
  %i.adg = icmp samesign ult i32 %.0312, %i.ade
  %or.cond571 = select i1 %.not548, i1 %i.adg, i1 false
  br i1 %or.cond571, label %bb.eq, label %bb.es

bb.eq:                                            ; preds = %bb.ep
  %i.adh = udiv i16 %i.ada, %.rhs.trunc642
  %narrow666 = add nuw i16 %i.adh, 1
  %i.adi = zext i16 %narrow666 to i32
  %i.adj = mul nuw nsw i32 %.0312, %i.adi         ; 2 uses
  %i.adk = sub nsw i32 %i.adj, %i.adb             ; 2 uses
  %i.adl = icmp sgt i32 %i.adk, 0
  br i1 %i.adl, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.adm = trunc i32 %i.adj to i16
  store i16 %i.adm, ptr %i.acz, align 2, !tbaa !129
  %i.adn = trunc i32 %i.adk to i16
  %i.ado = sub i16 %i.add, %i.adn
  store i16 %i.ado, ptr %i.adc, align 2, !tbaa !131
  br label %bb.es

bb.es:                                            ; preds = %bb.eo, %bb.eq, %bb.er, %bb.ep, %bb.en, %.loopexit687
  %i.adp = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.adq = load i16, ptr %i.adp, align 8, !tbaa !130 ; 5 uses
  %.not549 = icmp eq i16 %i.adq, 0
  br i1 %.not549, label %bb.ey, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.adr = zext i16 %i.adq to i32
  %.not550 = icmp eq i16 %i.adq, -1
  br i1 %.not550, label %bb.ey, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.ads = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.adt = load i16, ptr %i.ads, align 4, !tbaa !149 ; 3 uses
  %.off670 = add i16 %i.adt, -1
  %switch671 = icmp ult i16 %.off670, -2
  br i1 %switch671, label %bb.ev, label %bb.ey

bb.ev:                                            ; preds = %bb.eu
  %i.adu = zext i16 %i.adt to i32
  %.rhs.trunc943 = trunc nuw nsw i32 %.0312 to i16
  %i.adv = urem i16 %i.adq, %.rhs.trunc943
  %.not553 = icmp ne i16 %i.adv, 0
  %i.adw = icmp samesign ult i32 %.0312, %i.adu
  %or.cond572 = select i1 %.not553, i1 %i.adw, i1 false
  br i1 %or.cond572, label %bb.ew, label %bb.ey

bb.ew:                                            ; preds = %bb.ev
  %i.adx = udiv i16 %i.adq, %.rhs.trunc642
  %narrow667 = add nuw i16 %i.adx, 1
  %i.ady = zext i16 %narrow667 to i32
  %i.adz = mul nuw nsw i32 %.0312, %i.ady         ; 2 uses
  %i.aea = sub nsw i32 %i.adz, %i.adr             ; 2 uses
  %i.aeb = icmp sgt i32 %i.aea, 0
  br i1 %i.aeb, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.aec = trunc i32 %i.adz to i16
  store i16 %i.aec, ptr %i.adp, align 8, !tbaa !130
  %i.aed = trunc i32 %i.aea to i16
  %i.aee = sub i16 %i.adt, %i.aed
  store i16 %i.aee, ptr %i.ads, align 4, !tbaa !149
  br label %bb.ey

bb.ey:                                            ; preds = %bb.eu, %bb.ew, %bb.ex, %bb.es, %bb.et, %bb.ev
  %i.aef = getelementptr inbounds nuw i8, ptr %0, i64 190 ; 2 uses
  %i.aeg = load i16, ptr %i.aef, align 2, !tbaa !129 ; 5 uses
  %.not544.1 = icmp eq i16 %i.aeg, 0
  br i1 %.not544.1, label %bb.fe, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.aeh = zext i16 %i.aeg to i32
  %.not545.1 = icmp eq i16 %i.aeg, -1
  br i1 %.not545.1, label %bb.fe, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.aei = getelementptr inbounds nuw i8, ptr %0, i64 194 ; 2 uses
  %i.aej = load i16, ptr %i.aei, align 2, !tbaa !131 ; 3 uses
  %.off668.1 = add i16 %i.aej, -1
  %switch669.1 = icmp ult i16 %.off668.1, -2
  br i1 %switch669.1, label %bb.fb, label %bb.fe

bb.fb:                                            ; preds = %bb.fa
  %i.aek = zext i16 %i.aej to i32
  %.rhs.trunc940 = trunc nuw nsw i32 %.0312 to i16
  %i.ael = urem i16 %i.aeg, %.rhs.trunc940
  %.not548.1 = icmp ne i16 %i.ael, 0
  %i.aem = icmp samesign ult i32 %.0312, %i.aek
  %or.cond571.1 = select i1 %.not548.1, i1 %i.aem, i1 false
  br i1 %or.cond571.1, label %bb.fc, label %bb.fe

bb.fc:                                            ; preds = %bb.fb
  %i.aen = udiv i16 %i.aeg, %.rhs.trunc642
  %narrow666.1 = add nuw i16 %i.aen, 1
  %i.aeo = zext i16 %narrow666.1 to i32
  %i.aep = mul nuw nsw i32 %.0312, %i.aeo         ; 2 uses
  %i.aeq = sub nsw i32 %i.aep, %i.aeh             ; 2 uses
  %i.aer = icmp sgt i32 %i.aeq, 0
  br i1 %i.aer, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.aes = trunc i32 %i.aep to i16
  store i16 %i.aes, ptr %i.aef, align 2, !tbaa !129
  %i.aet = trunc i32 %i.aeq to i16
  %i.aeu = sub i16 %i.aej, %i.aet
  store i16 %i.aeu, ptr %i.aei, align 2, !tbaa !131
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey
  %i.aev = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.aew = load i16, ptr %i.aev, align 8, !tbaa !130 ; 5 uses
  %.not549.1 = icmp eq i16 %i.aew, 0
  br i1 %.not549.1, label %.critedge570, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.aex = zext i16 %i.aew to i32
  %.not550.1 = icmp eq i16 %i.aew, -1
  br i1 %.not550.1, label %.critedge570, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.aey = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.aez = load i16, ptr %i.aey, align 4, !tbaa !149 ; 3 uses
  %.off670.1 = add i16 %i.aez, -1
  %switch671.1 = icmp ult i16 %.off670.1, -2
  br i1 %switch671.1, label %bb.fh, label %.critedge570

bb.fh:                                            ; preds = %bb.fg
  %i.afa = zext i16 %i.aez to i32
  %.rhs.trunc = trunc nuw nsw i32 %.0312 to i16
  %i.afb = urem i16 %i.aew, %.rhs.trunc
  %.not553.1 = icmp ne i16 %i.afb, 0
  %i.afc = icmp samesign ult i32 %.0312, %i.afa
  %or.cond572.1 = select i1 %.not553.1, i1 %i.afc, i1 false
  br i1 %or.cond572.1, label %bb.fi, label %.critedge570

bb.fi:                                            ; preds = %bb.fh
  %i.afd = udiv i16 %i.aew, %.rhs.trunc642
  %narrow667.1 = add nuw i16 %i.afd, 1
  %i.afe = zext i16 %narrow667.1 to i32
  %i.aff = mul nuw nsw i32 %.0312, %i.afe         ; 2 uses
  %i.afg = sub nsw i32 %i.aff, %i.aex             ; 2 uses
  %i.afh = icmp sgt i32 %i.afg, 0
  br i1 %i.afh, label %bb.fj, label %.critedge570

bb.fj:                                            ; preds = %bb.fi
  %i.afi = trunc i32 %i.aff to i16
  store i16 %i.afi, ptr %i.aev, align 8, !tbaa !130
  %i.afj = trunc i32 %i.afg to i16
  %i.afk = sub i16 %i.aez, %i.afj
  store i16 %i.afk, ptr %i.aey, align 4, !tbaa !149
  br label %.critedge570

.critedge570:                                     ; preds = %bb.fe, %bb.ff, %bb.fg, %bb.fh, %bb.fi, %bb.fj, %bb.ej, %bb.ei
  %i.afl = load i32, ptr %i.in, align 4, !tbaa !109
  %.not467 = icmp eq i32 %i.afl, 0
end_hunk_0
