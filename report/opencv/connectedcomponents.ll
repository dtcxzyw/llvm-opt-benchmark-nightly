Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/connectedcomponents?download=true
inline.NumInlined: 3211
inline.NumDeleted: 270
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN2cv19connectedcomponents13LabelingGranaIthNS0_4NoOpEEclERKNS_3MatERS4_iRS2_:bb.a
  %i.ww = phi ptr [ %i.wy, %.lr.ph.i.i2256.us ], [ %i.ws, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2249.us ]
  store i16 %spec.select.i2250.us, ptr %i.ww, align 2, !tbaa !53
  %i.wx = zext i16 %i.wv to i64
  %i.wy = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.wx ; 3 uses
  %i.wz = load i16, ptr %i.wy, align 2, !tbaa !53 ; 2 uses
  %i.xa = icmp ult i16 %i.wz, %i.wv
  br i1 %i.xa, label %.lr.ph.i.i2256.us, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2251.us, !llvm.loop !1

_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2251.us: ; preds = %.lr.ph.i.i2256.us, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2249.us
  %.lcssa.i.i2252.us = phi ptr [ %i.ws, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2249.us ], [ %i.wy, %.lr.ph.i.i2256.us ]
  store i16 %spec.select.i2250.us, ptr %.lcssa.i.i2252.us, align 2, !tbaa !53
  br label %bb.dd

bb.dd:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2251.us, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2245.us
  %.1.i2253.us = phi i16 [ %spec.select.i2250.us, %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2251.us ], [ %.0.i.i2244.us, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2245.us ] ; 6 uses
  %i.xb = zext i16 %i.wg to i64
  %i.xc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.xb ; 3 uses
  %i.xd = load i16, ptr %i.xc, align 2, !tbaa !53 ; 2 uses
  %i.xe = icmp ult i16 %i.xd, %i.wg
  br i1 %i.xe, label %.lr.ph.i18.i2255.us, label %.loopexit3191.us

.lr.ph.i18.i2255.us:                              ; preds = %bb.dd, %.lr.ph.i18.i2255.us
  %i.xf = phi i16 [ %i.xj, %.lr.ph.i18.i2255.us ], [ %i.xd, %bb.dd ] ; 2 uses
  %i.xg = phi ptr [ %i.xi, %.lr.ph.i18.i2255.us ], [ %i.xc, %bb.dd ]
  store i16 %.1.i2253.us, ptr %i.xg, align 2, !tbaa !53
  %i.xh = zext i16 %i.xf to i64
  %i.xi = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.xh ; 3 uses
  %i.xj = load i16, ptr %i.xi, align 2, !tbaa !53 ; 2 uses
  %i.xk = icmp ult i16 %i.xj, %i.xf
  br i1 %i.xk, label %.lr.ph.i18.i2255.us, label %.loopexit3191.us, !llvm.loop !1

.loopexit3191.us:                                 ; preds = %.lr.ph.i18.i2255.us, %bb.dd
  %.lcssa.i17.i2254.us = phi ptr [ %i.xc, %bb.dd ], [ %i.xi, %.lr.ph.i18.i2255.us ]
  store i16 %.1.i2253.us, ptr %.lcssa.i17.i2254.us, align 2, !tbaa !53
  %i.xl = getelementptr inbounds [2 x i8], ptr %i.bm, i64 %i.ng
  %i.xm = load i16, ptr %i.xl, align 2, !tbaa !53 ; 4 uses
  br label %bb.de

bb.de:                                            ; preds = %bb.de, %.loopexit3191.us
  %.0.i.i2258.us = phi i16 [ %.1.i2253.us, %.loopexit3191.us ], [ %i.xp, %bb.de ] ; 4 uses
  %i.xn = zext i16 %.0.i.i2258.us to i64
  %i.xo = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.xn
  %i.xp = load i16, ptr %i.xo, align 2, !tbaa !53 ; 2 uses
  %i.xq = icmp ult i16 %i.xp, %.0.i.i2258.us
  br i1 %i.xq, label %bb.de, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2259.us, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2259.us: ; preds = %bb.de
  %.not.i2260.us = icmp eq i16 %.1.i2253.us, %i.xm
  br i1 %.not.i2260.us, label %bb.df, label %.preheader.i2261.us

.preheader.i2261.us:                              ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2259.us, %.preheader.i2261.us
  %.0.i15.i2262.us = phi i16 [ %i.xt, %.preheader.i2261.us ], [ %i.xm, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2259.us ] ; 3 uses
  %i.xr = zext i16 %.0.i15.i2262.us to i64
  %i.xs = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.xr
  %i.xt = load i16, ptr %i.xs, align 2, !tbaa !53 ; 2 uses
  %i.xu = icmp ult i16 %i.xt, %.0.i15.i2262.us
  br i1 %i.xu, label %.preheader.i2261.us, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2263.us, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2263.us: ; preds = %.preheader.i2261.us
  %spec.select.i2264.us = tail call i16 @llvm.umin.i16(i16 %.0.i.i2258.us, i16 %.0.i15.i2262.us) ; 3 uses
  %i.xv = zext i16 %i.xm to i64
  %i.xw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.xv ; 3 uses
  %i.xx = load i16, ptr %i.xw, align 2, !tbaa !53 ; 2 uses
  %i.xy = icmp ult i16 %i.xx, %i.xm
  br i1 %i.xy, label %.lr.ph.i.i2270.us, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2265.us

.lr.ph.i.i2270.us:                                ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2263.us, %.lr.ph.i.i2270.us
  %i.xz = phi i16 [ %i.yd, %.lr.ph.i.i2270.us ], [ %i.xx, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2263.us ] ; 2 uses
  %i.ya = phi ptr [ %i.yc, %.lr.ph.i.i2270.us ], [ %i.xw, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2263.us ]
  store i16 %spec.select.i2264.us, ptr %i.ya, align 2, !tbaa !53
  %i.yb = zext i16 %i.xz to i64
  %i.yc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.yb ; 3 uses
  %i.yd = load i16, ptr %i.yc, align 2, !tbaa !53 ; 2 uses
  %i.ye = icmp ult i16 %i.yd, %i.xz
  br i1 %i.ye, label %.lr.ph.i.i2270.us, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2265.us, !llvm.loop !1

_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2265.us: ; preds = %.lr.ph.i.i2270.us, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2263.us
  %.lcssa.i.i2266.us = phi ptr [ %i.xw, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2263.us ], [ %i.yc, %.lr.ph.i.i2270.us ]
  store i16 %spec.select.i2264.us, ptr %.lcssa.i.i2266.us, align 2, !tbaa !53
  br label %bb.df

bb.df:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2265.us, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2259.us
  %.1.i2267.us = phi i16 [ %spec.select.i2264.us, %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2265.us ], [ %.0.i.i2258.us, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2259.us ] ; 3 uses
  %i.yf = zext i16 %.1.i2253.us to i64
  %i.yg = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.yf ; 3 uses
  %i.yh = load i16, ptr %i.yg, align 2, !tbaa !53 ; 2 uses
  %i.yi = icmp ult i16 %i.yh, %.1.i2253.us
  br i1 %i.yi, label %.lr.ph.i18.i2269.us, label %.loopexit3190.us

.lr.ph.i18.i2269.us:                              ; preds = %bb.df, %.lr.ph.i18.i2269.us
  %i.yj = phi i16 [ %i.yn, %.lr.ph.i18.i2269.us ], [ %i.yh, %bb.df ] ; 2 uses
  %i.yk = phi ptr [ %i.ym, %.lr.ph.i18.i2269.us ], [ %i.yg, %bb.df ]
  store i16 %.1.i2267.us, ptr %i.yk, align 2, !tbaa !53
  %i.yl = zext i16 %i.yj to i64
  %i.ym = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.yl ; 3 uses
  %i.yn = load i16, ptr %i.ym, align 2, !tbaa !53 ; 2 uses
  %i.yo = icmp ult i16 %i.yn, %i.yj
  br i1 %i.yo, label %.lr.ph.i18.i2269.us, label %.loopexit3190.us, !llvm.loop !1

.loopexit3190.us:                                 ; preds = %.lr.ph.i18.i2269.us, %bb.df
  %.lcssa.i17.i2268.us = phi ptr [ %i.yg, %bb.df ], [ %i.ym, %.lr.ph.i18.i2269.us ]
  store i16 %.1.i2267.us, ptr %.lcssa.i17.i2268.us, align 2, !tbaa !53
  %i.yp = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv
  store i16 %.1.i2267.us, ptr %i.yp, align 2, !tbaa !53
  br label %bb.qt

bb.dg:                                            ; preds = %bb.cw
  %i.yq = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %indvars.iv
  %i.yr = load i16, ptr %i.yq, align 2, !tbaa !53 ; 4 uses
  %i.ys = getelementptr inbounds [2 x i8], ptr %i.bm, i64 %i.ng
  %i.yt = load i16, ptr %i.ys, align 2, !tbaa !53 ; 4 uses
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dh, %bb.dg
  %.0.i.i2272.us = phi i16 [ %i.yr, %bb.dg ], [ %i.yw, %bb.dh ] ; 4 uses
  %i.yu = zext i16 %.0.i.i2272.us to i64
  %i.yv = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.yu
  %i.yw = load i16, ptr %i.yv, align 2, !tbaa !53 ; 2 uses
  %i.yx = icmp ult i16 %i.yw, %.0.i.i2272.us
  br i1 %i.yx, label %bb.dh, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2273.us, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2273.us: ; preds = %bb.dh
  %.not.i2274.us = icmp eq i16 %i.yr, %i.yt
  br i1 %.not.i2274.us, label %bb.di, label %.preheader.i2275.us

.preheader.i2275.us:                              ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2273.us, %.preheader.i2275.us
  %.0.i15.i2276.us = phi i16 [ %i.za, %.preheader.i2275.us ], [ %i.yt, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2273.us ] ; 3 uses
  %i.yy = zext i16 %.0.i15.i2276.us to i64
  %i.yz = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.yy
  %i.za = load i16, ptr %i.yz, align 2, !tbaa !53 ; 2 uses
  %i.zb = icmp ult i16 %i.za, %.0.i15.i2276.us
  br i1 %i.zb, label %.preheader.i2275.us, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2277.us, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2277.us: ; preds = %.preheader.i2275.us
  %spec.select.i2278.us = tail call i16 @llvm.umin.i16(i16 %.0.i.i2272.us, i16 %.0.i15.i2276.us) ; 3 uses
  %i.zc = zext i16 %i.yt to i64
  %i.zd = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.zc ; 3 uses
  %i.ze = load i16, ptr %i.zd, align 2, !tbaa !53 ; 2 uses
  %i.zf = icmp ult i16 %i.ze, %i.yt
  br i1 %i.zf, label %.lr.ph.i.i2284.us, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2279.us

.lr.ph.i.i2284.us:                                ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2277.us, %.lr.ph.i.i2284.us
  %i.zg = phi i16 [ %i.zk, %.lr.ph.i.i2284.us ], [ %i.ze, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2277.us ] ; 2 uses
  %i.zh = phi ptr [ %i.zj, %.lr.ph.i.i2284.us ], [ %i.zd, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2277.us ]
  store i16 %spec.select.i2278.us, ptr %i.zh, align 2, !tbaa !53
  %i.zi = zext i16 %i.zg to i64
  %i.zj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.zi ; 3 uses
  %i.zk = load i16, ptr %i.zj, align 2, !tbaa !53 ; 2 uses
  %i.zl = icmp ult i16 %i.zk, %i.zg
  br i1 %i.zl, label %.lr.ph.i.i2284.us, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2279.us, !llvm.loop !1

_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2279.us: ; preds = %.lr.ph.i.i2284.us, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2277.us
  %.lcssa.i.i2280.us = phi ptr [ %i.zd, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2277.us ], [ %i.zj, %.lr.ph.i.i2284.us ]
  store i16 %spec.select.i2278.us, ptr %.lcssa.i.i2280.us, align 2, !tbaa !53
  br label %bb.di

bb.di:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2279.us, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2273.us
  %.1.i2281.us = phi i16 [ %spec.select.i2278.us, %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2279.us ], [ %.0.i.i2272.us, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2273.us ] ; 3 uses
  %i.zm = zext i16 %i.yr to i64
  %i.zn = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.zm ; 3 uses
  %i.zo = load i16, ptr %i.zn, align 2, !tbaa !53 ; 2 uses
  %i.zp = icmp ult i16 %i.zo, %i.yr
  br i1 %i.zp, label %.lr.ph.i18.i2283.us, label %.loopexit3189.us

.lr.ph.i18.i2283.us:                              ; preds = %bb.di, %.lr.ph.i18.i2283.us
  %i.zq = phi i16 [ %i.zu, %.lr.ph.i18.i2283.us ], [ %i.zo, %bb.di ] ; 2 uses
  %i.zr = phi ptr [ %i.zt, %.lr.ph.i18.i2283.us ], [ %i.zn, %bb.di ]
  store i16 %.1.i2281.us, ptr %i.zr, align 2, !tbaa !53
  %i.zs = zext i16 %i.zq to i64
  %i.zt = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.zs ; 3 uses
  %i.zu = load i16, ptr %i.zt, align 2, !tbaa !53 ; 2 uses
  %i.zv = icmp ult i16 %i.zu, %i.zq
  br i1 %i.zv, label %.lr.ph.i18.i2283.us, label %.loopexit3189.us, !llvm.loop !1

.loopexit3189.us:                                 ; preds = %.lr.ph.i18.i2283.us, %bb.di
  %.lcssa.i17.i2282.us = phi ptr [ %i.zn, %bb.di ], [ %i.zt, %.lr.ph.i18.i2283.us ]
  store i16 %.1.i2281.us, ptr %.lcssa.i17.i2282.us, align 2, !tbaa !53
  %i.zw = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv
  store i16 %.1.i2281.us, ptr %i.zw, align 2, !tbaa !53
  br label %bb.qt

bb.dj:                                            ; preds = %bb.bt, %bb.bs
  br i1 %i.nd, label %bb.hi, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.zx = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.nc
  %i.zy = load i8, ptr %i.zx, align 1, !tbaa !32
  %.not1976.us = icmp eq i8 %i.zy, 0
  br i1 %.not1976.us, label %bb.hi, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.zz = add nuw nsw i64 %indvars.iv, 2          ; 17 uses
  %i.aaa = icmp samesign uge i64 %i.zz, %i.az
  %or.cond2049.us = or i1 %.not2024.us, %i.aaa
  br i1 %or.cond2049.us, label %bb.gm, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.aab = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.zz
  %i.aac = load i8, ptr %i.aab, align 1, !tbaa !32
  %.not1986.us = icmp eq i8 %i.aac, 0
  br i1 %.not1986.us, label %bb.gm, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.aad = add nsw i64 %indvars.iv, -2            ; 24 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.aad
  %i.aaf = load i8, ptr %i.aae, align 1, !tbaa !32
  %.not1995.us = icmp eq i8 %i.aaf, 0
  br i1 %.not1995.us, label %bb.fj, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.aag = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bu
  %i.aah = load i8, ptr %i.aag, align 1, !tbaa !32
  %.not2001.us = icmp eq i8 %i.aah, 0
  %i.aai = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.nc
  %i.aaj = load i8, ptr %i.aai, align 1, !tbaa !32
  %.not2002.us = icmp eq i8 %i.aaj, 0             ; 2 uses
  br i1 %.not2001.us, label %bb.ea, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  br i1 %.not2002.us, label %bb.dx, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.aak = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv
  %i.aal = load i8, ptr %i.aak, align 1, !tbaa !32
  %.not2011.us = icmp eq i8 %i.aal, 0
  br i1 %.not2011.us, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.aam = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.aad
  %i.aan = load i16, ptr %i.aam, align 2, !tbaa !53
  %i.aao = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv
  store i16 %i.aan, ptr %i.aao, align 2, !tbaa !53
  br label %bb.qt

bb.ds:                                            ; preds = %bb.dq
  %i.aap = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv
  %i.aaq = load i8, ptr %i.aap, align 1, !tbaa !32
  %.not2012.us = icmp eq i8 %i.aaq, 0
  br i1 %.not2012.us, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.aar = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.aad
  %i.aas = load i16, ptr %i.aar, align 2, !tbaa !53
  %i.aat = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv
  store i16 %i.aas, ptr %i.aat, align 2, !tbaa !53
  br label %bb.qt

bb.du:                                            ; preds = %bb.ds
  %i.aau = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.zz
  %i.aav = load i16, ptr %i.aau, align 2, !tbaa !53 ; 4 uses
  %i.aaw = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.aad
  %i.aax = load i16, ptr %i.aaw, align 2, !tbaa !53 ; 4 uses
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dv, %bb.du
  %.0.i.i2286.us = phi i16 [ %i.aav, %bb.du ], [ %i.aba, %bb.dv ] ; 4 uses
  %i.aay = zext i16 %.0.i.i2286.us to i64
  %i.aaz = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.aay
  %i.aba = load i16, ptr %i.aaz, align 2, !tbaa !53 ; 2 uses
  %i.abb = icmp ult i16 %i.aba, %.0.i.i2286.us
  br i1 %i.abb, label %bb.dv, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2287.us, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2287.us: ; preds = %bb.dv
  %.not.i2288.us = icmp eq i16 %i.aav, %i.aax
  br i1 %.not.i2288.us, label %bb.dw, label %.preheader.i2289.us

.preheader.i2289.us:                              ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2287.us, %.preheader.i2289.us
  %.0.i15.i2290.us = phi i16 [ %i.abe, %.preheader.i2289.us ], [ %i.aax, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2287.us ] ; 3 uses
  %i.abc = zext i16 %.0.i15.i2290.us to i64
  %i.abd = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.abc
  %i.abe = load i16, ptr %i.abd, align 2, !tbaa !53 ; 2 uses
  %i.abf = icmp ult i16 %i.abe, %.0.i15.i2290.us
  br i1 %i.abf, label %.preheader.i2289.us, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2291.us, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2291.us: ; preds = %.preheader.i2289.us
  %spec.select.i2292.us = tail call i16 @llvm.umin.i16(i16 %.0.i.i2286.us, i16 %.0.i15.i2290.us) ; 3 uses
  %i.abg = zext i16 %i.aax to i64
  %i.abh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.abg ; 3 uses
  %i.abi = load i16, ptr %i.abh, align 2, !tbaa !53 ; 2 uses
  %i.abj = icmp ult i16 %i.abi, %i.aax
  br i1 %i.abj, label %.lr.ph.i.i2298.us, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2293.us

.lr.ph.i.i2298.us:                                ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2291.us, %.lr.ph.i.i2298.us
  %i.abk = phi i16 [ %i.abo, %.lr.ph.i.i2298.us ], [ %i.abi, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2291.us ] ; 2 uses
  %i.abl = phi ptr [ %i.abn, %.lr.ph.i.i2298.us ], [ %i.abh, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2291.us ]
  store i16 %spec.select.i2292.us, ptr %i.abl, align 2, !tbaa !53
  %i.abm = zext i16 %i.abk to i64
  %i.abn = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.abm ; 3 uses
  %i.abo = load i16, ptr %i.abn, align 2, !tbaa !53 ; 2 uses
  %i.abp = icmp ult i16 %i.abo, %i.abk
  br i1 %i.abp, label %.lr.ph.i.i2298.us, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2293.us, !llvm.loop !1

_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2293.us: ; preds = %.lr.ph.i.i2298.us, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2291.us
  %.lcssa.i.i2294.us = phi ptr [ %i.abh, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2291.us ], [ %i.abn, %.lr.ph.i.i2298.us ]
  store i16 %spec.select.i2292.us, ptr %.lcssa.i.i2294.us, align 2, !tbaa !53
  br label %bb.dw

bb.dw:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2293.us, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2287.us
  %.1.i2295.us = phi i16 [ %spec.select.i2292.us, %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2293.us ], [ %.0.i.i2286.us, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2287.us ] ; 3 uses
  %i.abq = zext i16 %i.aav to i64
  %i.abr = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.abq ; 3 uses
  %i.abs = load i16, ptr %i.abr, align 2, !tbaa !53 ; 2 uses
  %i.abt = icmp ult i16 %i.abs, %i.aav
  br i1 %i.abt, label %.lr.ph.i18.i2297.us, label %.loopexit3188.us

.lr.ph.i18.i2297.us:                              ; preds = %bb.dw, %.lr.ph.i18.i2297.us
  %i.abu = phi i16 [ %i.aby, %.lr.ph.i18.i2297.us ], [ %i.abs, %bb.dw ] ; 2 uses
  %i.abv = phi ptr [ %i.abx, %.lr.ph.i18.i2297.us ], [ %i.abr, %bb.dw ]
  store i16 %.1.i2295.us, ptr %i.abv, align 2, !tbaa !53
  %i.abw = zext i16 %i.abu to i64
  %i.abx = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.abw ; 3 uses
  %i.aby = load i16, ptr %i.abx, align 2, !tbaa !53 ; 2 uses
  %i.abz = icmp ult i16 %i.aby, %i.abu
  br i1 %i.abz, label %.lr.ph.i18.i2297.us, label %.loopexit3188.us, !llvm.loop !1

.loopexit3188.us:                                 ; preds = %.lr.ph.i18.i2297.us, %bb.dw
  %.lcssa.i17.i2296.us = phi ptr [ %i.abr, %bb.dw ], [ %i.abx, %.lr.ph.i18.i2297.us ]
  store i16 %.1.i2295.us, ptr %.lcssa.i17.i2296.us, align 2, !tbaa !53
  %i.aca = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv
  store i16 %.1.i2295.us, ptr %i.aca, align 2, !tbaa !53
  br label %bb.qt

bb.dx:                                            ; preds = %bb.dp
  %i.acb = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.zz
  %i.acc = load i16, ptr %i.acb, align 2, !tbaa !53 ; 4 uses
  %i.acd = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.aad
  %i.ace = load i16, ptr %i.acd, align 2, !tbaa !53 ; 4 uses
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dy, %bb.dx
  %.0.i.i2300.us = phi i16 [ %i.acc, %bb.dx ], [ %i.ach, %bb.dy ] ; 4 uses
  %i.acf = zext i16 %.0.i.i2300.us to i64
  %i.acg = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.acf
  %i.ach = load i16, ptr %i.acg, align 2, !tbaa !53 ; 2 uses
  %i.aci = icmp ult i16 %i.ach, %.0.i.i2300.us
  br i1 %i.aci, label %bb.dy, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2301.us, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2301.us: ; preds = %bb.dy
  %.not.i2302.us = icmp eq i16 %i.acc, %i.ace
  br i1 %.not.i2302.us, label %bb.dz, label %.preheader.i2303.us

.preheader.i2303.us:                              ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2301.us, %.preheader.i2303.us
  %.0.i15.i2304.us = phi i16 [ %i.acl, %.preheader.i2303.us ], [ %i.ace, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2301.us ] ; 3 uses
  %i.acj = zext i16 %.0.i15.i2304.us to i64
  %i.ack = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.acj
  %i.acl = load i16, ptr %i.ack, align 2, !tbaa !53 ; 2 uses
  %i.acm = icmp ult i16 %i.acl, %.0.i15.i2304.us
  br i1 %i.acm, label %.preheader.i2303.us, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2305.us, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2305.us: ; preds = %.preheader.i2303.us
  %spec.select.i2306.us = tail call i16 @llvm.umin.i16(i16 %.0.i.i2300.us, i16 %.0.i15.i2304.us) ; 3 uses
  %i.acn = zext i16 %i.ace to i64
  %i.aco = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.acn ; 3 uses
  %i.acp = load i16, ptr %i.aco, align 2, !tbaa !53 ; 2 uses
  %i.acq = icmp ult i16 %i.acp, %i.ace
  br i1 %i.acq, label %.lr.ph.i.i2312.us, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2307.us

.lr.ph.i.i2312.us:                                ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2305.us, %.lr.ph.i.i2312.us
  %i.acr = phi i16 [ %i.acv, %.lr.ph.i.i2312.us ], [ %i.acp, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2305.us ] ; 2 uses
  %i.acs = phi ptr [ %i.acu, %.lr.ph.i.i2312.us ], [ %i.aco, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2305.us ]
  store i16 %spec.select.i2306.us, ptr %i.acs, align 2, !tbaa !53
  %i.act = zext i16 %i.acr to i64
  %i.acu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.act ; 3 uses
  %i.acv = load i16, ptr %i.acu, align 2, !tbaa !53 ; 2 uses
  %i.acw = icmp ult i16 %i.acv, %i.acr
  br i1 %i.acw, label %.lr.ph.i.i2312.us, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2307.us, !llvm.loop !1

_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2307.us: ; preds = %.lr.ph.i.i2312.us, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2305.us
  %.lcssa.i.i2308.us = phi ptr [ %i.aco, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2305.us ], [ %i.acu, %.lr.ph.i.i2312.us ]
  store i16 %spec.select.i2306.us, ptr %.lcssa.i.i2308.us, align 2, !tbaa !53
  br label %bb.dz

bb.dz:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2307.us, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2301.us
  %.1.i2309.us = phi i16 [ %spec.select.i2306.us, %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2307.us ], [ %.0.i.i2300.us, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2301.us ] ; 3 uses
  %i.acx = zext i16 %i.acc to i64
  %i.acy = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.acx ; 3 uses
  %i.acz = load i16, ptr %i.acy, align 2, !tbaa !53 ; 2 uses
  %i.ada = icmp ult i16 %i.acz, %i.acc
  br i1 %i.ada, label %.lr.ph.i18.i2311.us, label %.loopexit3187.us

.lr.ph.i18.i2311.us:                              ; preds = %bb.dz, %.lr.ph.i18.i2311.us
  %i.adb = phi i16 [ %i.adf, %.lr.ph.i18.i2311.us ], [ %i.acz, %bb.dz ] ; 2 uses
  %i.adc = phi ptr [ %i.ade, %.lr.ph.i18.i2311.us ], [ %i.acy, %bb.dz ]
  store i16 %.1.i2309.us, ptr %i.adc, align 2, !tbaa !53
  %i.add = zext i16 %i.adb to i64
  %i.ade = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.add ; 3 uses
  %i.adf = load i16, ptr %i.ade, align 2, !tbaa !53 ; 2 uses
  %i.adg = icmp ult i16 %i.adf, %i.adb
  br i1 %i.adg, label %.lr.ph.i18.i2311.us, label %.loopexit3187.us, !llvm.loop !1

.loopexit3187.us:                                 ; preds = %.lr.ph.i18.i2311.us, %bb.dz
  %.lcssa.i17.i2310.us = phi ptr [ %i.acy, %bb.dz ], [ %i.ade, %.lr.ph.i18.i2311.us ]
  store i16 %.1.i2309.us, ptr %.lcssa.i17.i2310.us, align 2, !tbaa !53
  %i.adh = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv
  store i16 %.1.i2309.us, ptr %i.adh, align 2, !tbaa !53
  br label %bb.qt

bb.ea:                                            ; preds = %bb.do
  br i1 %.not2002.us, label %bb.eq, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
end_hunk_0
begin_hunk_1_@_ZN2cv19connectedcomponents13LabelingGranaIthNS0_4NoOpEEclERKNS_3MatERS4_iRS2_:bb.a

.preheader.i2527.us:                              ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2525.us, %.preheader.i2527.us
  %.0.i15.i2528.us = phi i16 [ %i.axl, %.preheader.i2527.us ], [ %i.axe, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2525.us ] ; 3 uses
  %i.axj = zext i16 %.0.i15.i2528.us to i64
  %i.axk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.axj
  %i.axl = load i16, ptr %i.axk, align 2, !tbaa !53 ; 2 uses
  %i.axm = icmp ult i16 %i.axl, %.0.i15.i2528.us
  br i1 %i.axm, label %.preheader.i2527.us, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2529.us, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2529.us: ; preds = %.preheader.i2527.us
  %spec.select.i2530.us = tail call i16 @llvm.umin.i16(i16 %.0.i.i2524.us, i16 %.0.i15.i2528.us) ; 3 uses
  %i.axn = zext i16 %i.axe to i64
  %i.axo = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.axn ; 3 uses
  %i.axp = load i16, ptr %i.axo, align 2, !tbaa !53 ; 2 uses
  %i.axq = icmp ult i16 %i.axp, %i.axe
  br i1 %i.axq, label %.lr.ph.i.i2536.us, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2531.us

.lr.ph.i.i2536.us:                                ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2529.us, %.lr.ph.i.i2536.us
  %i.axr = phi i16 [ %i.axv, %.lr.ph.i.i2536.us ], [ %i.axp, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2529.us ] ; 2 uses
  %i.axs = phi ptr [ %i.axu, %.lr.ph.i.i2536.us ], [ %i.axo, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2529.us ]
  store i16 %spec.select.i2530.us, ptr %i.axs, align 2, !tbaa !53
  %i.axt = zext i16 %i.axr to i64
  %i.axu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.axt ; 3 uses
  %i.axv = load i16, ptr %i.axu, align 2, !tbaa !53 ; 2 uses
  %i.axw = icmp ult i16 %i.axv, %i.axr
  br i1 %i.axw, label %.lr.ph.i.i2536.us, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2531.us, !llvm.loop !1

_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2531.us: ; preds = %.lr.ph.i.i2536.us, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2529.us
  %.lcssa.i.i2532.us = phi ptr [ %i.axo, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2529.us ], [ %i.axu, %.lr.ph.i.i2536.us ]
  store i16 %spec.select.i2530.us, ptr %.lcssa.i.i2532.us, align 2, !tbaa !53
  br label %bb.gg

bb.gg:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2531.us, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2525.us
  %.1.i2533.us = phi i16 [ %spec.select.i2530.us, %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2531.us ], [ %.0.i.i2524.us, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2525.us ] ; 6 uses
  %i.axx = zext i16 %i.axc to i64
  %i.axy = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.axx ; 3 uses
  %i.axz = load i16, ptr %i.axy, align 2, !tbaa !53 ; 2 uses
  %i.aya = icmp ult i16 %i.axz, %i.axc
  br i1 %i.aya, label %.lr.ph.i18.i2535.us, label %.loopexit3171.us

.lr.ph.i18.i2535.us:                              ; preds = %bb.gg, %.lr.ph.i18.i2535.us
  %i.ayb = phi i16 [ %i.ayf, %.lr.ph.i18.i2535.us ], [ %i.axz, %bb.gg ] ; 2 uses
  %i.ayc = phi ptr [ %i.aye, %.lr.ph.i18.i2535.us ], [ %i.axy, %bb.gg ]
  store i16 %.1.i2533.us, ptr %i.ayc, align 2, !tbaa !53
  %i.ayd = zext i16 %i.ayb to i64
  %i.aye = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.ayd ; 3 uses
  %i.ayf = load i16, ptr %i.aye, align 2, !tbaa !53 ; 2 uses
  %i.ayg = icmp ult i16 %i.ayf, %i.ayb
  br i1 %i.ayg, label %.lr.ph.i18.i2535.us, label %.loopexit3171.us, !llvm.loop !1

.loopexit3171.us:                                 ; preds = %.lr.ph.i18.i2535.us, %bb.gg
  %.lcssa.i17.i2534.us = phi ptr [ %i.axy, %bb.gg ], [ %i.aye, %.lr.ph.i18.i2535.us ]
  store i16 %.1.i2533.us, ptr %.lcssa.i17.i2534.us, align 2, !tbaa !53
  %i.ayh = getelementptr inbounds [2 x i8], ptr %i.bm, i64 %i.aad
  %i.ayi = load i16, ptr %i.ayh, align 2, !tbaa !53 ; 4 uses
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gh, %.loopexit3171.us
  %.0.i.i2538.us = phi i16 [ %.1.i2533.us, %.loopexit3171.us ], [ %i.ayl, %bb.gh ] ; 4 uses
  %i.ayj = zext i16 %.0.i.i2538.us to i64
  %i.ayk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.ayj
  %i.ayl = load i16, ptr %i.ayk, align 2, !tbaa !53 ; 2 uses
  %i.aym = icmp ult i16 %i.ayl, %.0.i.i2538.us
  br i1 %i.aym, label %bb.gh, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2539.us, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2539.us: ; preds = %bb.gh
  %.not.i2540.us = icmp eq i16 %.1.i2533.us, %i.ayi
  br i1 %.not.i2540.us, label %bb.gi, label %.preheader.i2541.us

.preheader.i2541.us:                              ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2539.us, %.preheader.i2541.us
  %.0.i15.i2542.us = phi i16 [ %i.ayp, %.preheader.i2541.us ], [ %i.ayi, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2539.us ] ; 3 uses
  %i.ayn = zext i16 %.0.i15.i2542.us to i64
  %i.ayo = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.ayn
  %i.ayp = load i16, ptr %i.ayo, align 2, !tbaa !53 ; 2 uses
  %i.ayq = icmp ult i16 %i.ayp, %.0.i15.i2542.us
  br i1 %i.ayq, label %.preheader.i2541.us, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2543.us, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2543.us: ; preds = %.preheader.i2541.us
  %spec.select.i2544.us = tail call i16 @llvm.umin.i16(i16 %.0.i.i2538.us, i16 %.0.i15.i2542.us) ; 3 uses
  %i.ayr = zext i16 %i.ayi to i64
  %i.ays = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.ayr ; 3 uses
  %i.ayt = load i16, ptr %i.ays, align 2, !tbaa !53 ; 2 uses
  %i.ayu = icmp ult i16 %i.ayt, %i.ayi
  br i1 %i.ayu, label %.lr.ph.i.i2550.us, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2545.us

.lr.ph.i.i2550.us:                                ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2543.us, %.lr.ph.i.i2550.us
  %i.ayv = phi i16 [ %i.ayz, %.lr.ph.i.i2550.us ], [ %i.ayt, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2543.us ] ; 2 uses
  %i.ayw = phi ptr [ %i.ayy, %.lr.ph.i.i2550.us ], [ %i.ays, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2543.us ]
  store i16 %spec.select.i2544.us, ptr %i.ayw, align 2, !tbaa !53
  %i.ayx = zext i16 %i.ayv to i64
  %i.ayy = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.ayx ; 3 uses
  %i.ayz = load i16, ptr %i.ayy, align 2, !tbaa !53 ; 2 uses
  %i.aza = icmp ult i16 %i.ayz, %i.ayv
  br i1 %i.aza, label %.lr.ph.i.i2550.us, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2545.us, !llvm.loop !1

_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2545.us: ; preds = %.lr.ph.i.i2550.us, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2543.us
  %.lcssa.i.i2546.us = phi ptr [ %i.ays, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2543.us ], [ %i.ayy, %.lr.ph.i.i2550.us ]
  store i16 %spec.select.i2544.us, ptr %.lcssa.i.i2546.us, align 2, !tbaa !53
  br label %bb.gi

bb.gi:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2545.us, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2539.us
  %.1.i2547.us = phi i16 [ %spec.select.i2544.us, %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2545.us ], [ %.0.i.i2538.us, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2539.us ] ; 3 uses
  %i.azb = zext i16 %.1.i2533.us to i64
  %i.azc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.azb ; 3 uses
  %i.azd = load i16, ptr %i.azc, align 2, !tbaa !53 ; 2 uses
  %i.aze = icmp ult i16 %i.azd, %.1.i2533.us
  br i1 %i.aze, label %.lr.ph.i18.i2549.us, label %.loopexit3170.us

.lr.ph.i18.i2549.us:                              ; preds = %bb.gi, %.lr.ph.i18.i2549.us
  %i.azf = phi i16 [ %i.azj, %.lr.ph.i18.i2549.us ], [ %i.azd, %bb.gi ] ; 2 uses
  %i.azg = phi ptr [ %i.azi, %.lr.ph.i18.i2549.us ], [ %i.azc, %bb.gi ]
  store i16 %.1.i2547.us, ptr %i.azg, align 2, !tbaa !53
  %i.azh = zext i16 %i.azf to i64
  %i.azi = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.azh ; 3 uses
  %i.azj = load i16, ptr %i.azi, align 2, !tbaa !53 ; 2 uses
  %i.azk = icmp ult i16 %i.azj, %i.azf
  br i1 %i.azk, label %.lr.ph.i18.i2549.us, label %.loopexit3170.us, !llvm.loop !1

.loopexit3170.us:                                 ; preds = %.lr.ph.i18.i2549.us, %bb.gi
  %.lcssa.i17.i2548.us = phi ptr [ %i.azc, %bb.gi ], [ %i.azi, %.lr.ph.i18.i2549.us ]
  store i16 %.1.i2547.us, ptr %.lcssa.i17.i2548.us, align 2, !tbaa !53
  %i.azl = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv
  store i16 %.1.i2547.us, ptr %i.azl, align 2, !tbaa !53
  br label %bb.qt

bb.gj:                                            ; preds = %bb.ft
  %i.azm = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.zz
  %i.azn = load i16, ptr %i.azm, align 2, !tbaa !53 ; 4 uses
  %i.azo = getelementptr inbounds [2 x i8], ptr %i.bm, i64 %i.aad
  %i.azp = load i16, ptr %i.azo, align 2, !tbaa !53 ; 4 uses
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gk, %bb.gj
  %.0.i.i2552.us = phi i16 [ %i.azn, %bb.gj ], [ %i.azs, %bb.gk ] ; 4 uses
  %i.azq = zext i16 %.0.i.i2552.us to i64
  %i.azr = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.azq
  %i.azs = load i16, ptr %i.azr, align 2, !tbaa !53 ; 2 uses
  %i.azt = icmp ult i16 %i.azs, %.0.i.i2552.us
  br i1 %i.azt, label %bb.gk, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2553.us, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2553.us: ; preds = %bb.gk
  %.not.i2554.us = icmp eq i16 %i.azn, %i.azp
  br i1 %.not.i2554.us, label %bb.gl, label %.preheader.i2555.us

.preheader.i2555.us:                              ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2553.us, %.preheader.i2555.us
  %.0.i15.i2556.us = phi i16 [ %i.azw, %.preheader.i2555.us ], [ %i.azp, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2553.us ] ; 3 uses
  %i.azu = zext i16 %.0.i15.i2556.us to i64
  %i.azv = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.azu
  %i.azw = load i16, ptr %i.azv, align 2, !tbaa !53 ; 2 uses
  %i.azx = icmp ult i16 %i.azw, %.0.i15.i2556.us
  br i1 %i.azx, label %.preheader.i2555.us, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2557.us, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2557.us: ; preds = %.preheader.i2555.us
  %spec.select.i2558.us = tail call i16 @llvm.umin.i16(i16 %.0.i.i2552.us, i16 %.0.i15.i2556.us) ; 3 uses
  %i.azy = zext i16 %i.azp to i64
  %i.azz = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.azy ; 3 uses
  %i.baa = load i16, ptr %i.azz, align 2, !tbaa !53 ; 2 uses
  %i.bab = icmp ult i16 %i.baa, %i.azp
  br i1 %i.bab, label %.lr.ph.i.i2564.us, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2559.us

.lr.ph.i.i2564.us:                                ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2557.us, %.lr.ph.i.i2564.us
  %i.bac = phi i16 [ %i.bag, %.lr.ph.i.i2564.us ], [ %i.baa, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2557.us ] ; 2 uses
  %i.bad = phi ptr [ %i.baf, %.lr.ph.i.i2564.us ], [ %i.azz, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2557.us ]
  store i16 %spec.select.i2558.us, ptr %i.bad, align 2, !tbaa !53
  %i.bae = zext i16 %i.bac to i64
  %i.baf = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.bae ; 3 uses
  %i.bag = load i16, ptr %i.baf, align 2, !tbaa !53 ; 2 uses
  %i.bah = icmp ult i16 %i.bag, %i.bac
  br i1 %i.bah, label %.lr.ph.i.i2564.us, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2559.us, !llvm.loop !1

_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2559.us: ; preds = %.lr.ph.i.i2564.us, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2557.us
  %.lcssa.i.i2560.us = phi ptr [ %i.azz, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2557.us ], [ %i.baf, %.lr.ph.i.i2564.us ]
  store i16 %spec.select.i2558.us, ptr %.lcssa.i.i2560.us, align 2, !tbaa !53
  br label %bb.gl

bb.gl:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2559.us, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2553.us
  %.1.i2561.us = phi i16 [ %spec.select.i2558.us, %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2559.us ], [ %.0.i.i2552.us, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2553.us ] ; 3 uses
  %i.bai = zext i16 %i.azn to i64
  %i.baj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.bai ; 3 uses
  %i.bak = load i16, ptr %i.baj, align 2, !tbaa !53 ; 2 uses
  %i.bal = icmp ult i16 %i.bak, %i.azn
  br i1 %i.bal, label %.lr.ph.i18.i2563.us, label %.loopexit3169.us

.lr.ph.i18.i2563.us:                              ; preds = %bb.gl, %.lr.ph.i18.i2563.us
  %i.bam = phi i16 [ %i.baq, %.lr.ph.i18.i2563.us ], [ %i.bak, %bb.gl ] ; 2 uses
  %i.ban = phi ptr [ %i.bap, %.lr.ph.i18.i2563.us ], [ %i.baj, %bb.gl ]
  store i16 %.1.i2561.us, ptr %i.ban, align 2, !tbaa !53
  %i.bao = zext i16 %i.bam to i64
  %i.bap = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.bao ; 3 uses
  %i.baq = load i16, ptr %i.bap, align 2, !tbaa !53 ; 2 uses
  %i.bar = icmp ult i16 %i.baq, %i.bam
  br i1 %i.bar, label %.lr.ph.i18.i2563.us, label %.loopexit3169.us, !llvm.loop !1

.loopexit3169.us:                                 ; preds = %.lr.ph.i18.i2563.us, %bb.gl
  %.lcssa.i17.i2562.us = phi ptr [ %i.baj, %bb.gl ], [ %i.bap, %.lr.ph.i18.i2563.us ]
  store i16 %.1.i2561.us, ptr %.lcssa.i17.i2562.us, align 2, !tbaa !53
  %i.bas = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv
  store i16 %.1.i2561.us, ptr %i.bas, align 2, !tbaa !53
  br label %bb.qt

bb.gm:                                            ; preds = %bb.dm, %bb.dl
  br i1 %.not2024.us, label %bb.hh, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.bat = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bu
  %i.bau = load i8, ptr %i.bat, align 1, !tbaa !32
  %.not1988.us = icmp eq i8 %i.bau, 0
  br i1 %.not1988.us, label %bb.gt, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.bav = add nsw i64 %indvars.iv, -2            ; 4 uses
  %i.baw = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bav
  %i.bax = load i8, ptr %i.baw, align 1, !tbaa !32
  %.not1994.us = icmp eq i8 %i.bax, 0
  br i1 %.not1994.us, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.bay = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.bav
  %i.baz = load i16, ptr %i.bay, align 2, !tbaa !53
  %i.bba = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv
  store i16 %i.baz, ptr %i.bba, align 2, !tbaa !53
  br label %bb.qt

bb.gq:                                            ; preds = %bb.go
  %i.bbb = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.bav
  %i.bbc = load i16, ptr %i.bbb, align 2, !tbaa !53 ; 4 uses
  %i.bbd = getelementptr inbounds [2 x i8], ptr %i.bm, i64 %i.bav
  %i.bbe = load i16, ptr %i.bbd, align 2, !tbaa !53 ; 4 uses
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gr, %bb.gq
  %.0.i.i2566.us = phi i16 [ %i.bbc, %bb.gq ], [ %i.bbh, %bb.gr ] ; 4 uses
  %i.bbf = zext i16 %.0.i.i2566.us to i64
  %i.bbg = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.bbf
  %i.bbh = load i16, ptr %i.bbg, align 2, !tbaa !53 ; 2 uses
  %i.bbi = icmp ult i16 %i.bbh, %.0.i.i2566.us
  br i1 %i.bbi, label %bb.gr, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2567.us, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2567.us: ; preds = %bb.gr
  %.not.i2568.us = icmp eq i16 %i.bbc, %i.bbe
  br i1 %.not.i2568.us, label %bb.gs, label %.preheader.i2569.us

.preheader.i2569.us:                              ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2567.us, %.preheader.i2569.us
  %.0.i15.i2570.us = phi i16 [ %i.bbl, %.preheader.i2569.us ], [ %i.bbe, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2567.us ] ; 3 uses
  %i.bbj = zext i16 %.0.i15.i2570.us to i64
  %i.bbk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.bbj
  %i.bbl = load i16, ptr %i.bbk, align 2, !tbaa !53 ; 2 uses
  %i.bbm = icmp ult i16 %i.bbl, %.0.i15.i2570.us
  br i1 %i.bbm, label %.preheader.i2569.us, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2571.us, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2571.us: ; preds = %.preheader.i2569.us
  %spec.select.i2572.us = tail call i16 @llvm.umin.i16(i16 %.0.i.i2566.us, i16 %.0.i15.i2570.us) ; 3 uses
  %i.bbn = zext i16 %i.bbe to i64
  %i.bbo = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.bbn ; 3 uses
  %i.bbp = load i16, ptr %i.bbo, align 2, !tbaa !53 ; 2 uses
  %i.bbq = icmp ult i16 %i.bbp, %i.bbe
  br i1 %i.bbq, label %.lr.ph.i.i2578.us, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2573.us

.lr.ph.i.i2578.us:                                ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2571.us, %.lr.ph.i.i2578.us
  %i.bbr = phi i16 [ %i.bbv, %.lr.ph.i.i2578.us ], [ %i.bbp, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2571.us ] ; 2 uses
  %i.bbs = phi ptr [ %i.bbu, %.lr.ph.i.i2578.us ], [ %i.bbo, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2571.us ]
  store i16 %spec.select.i2572.us, ptr %i.bbs, align 2, !tbaa !53
  %i.bbt = zext i16 %i.bbr to i64
  %i.bbu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.bbt ; 3 uses
  %i.bbv = load i16, ptr %i.bbu, align 2, !tbaa !53 ; 2 uses
  %i.bbw = icmp ult i16 %i.bbv, %i.bbr
  br i1 %i.bbw, label %.lr.ph.i.i2578.us, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2573.us, !llvm.loop !1

_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2573.us: ; preds = %.lr.ph.i.i2578.us, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2571.us
  %.lcssa.i.i2574.us = phi ptr [ %i.bbo, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2571.us ], [ %i.bbu, %.lr.ph.i.i2578.us ]
  store i16 %spec.select.i2572.us, ptr %.lcssa.i.i2574.us, align 2, !tbaa !53
  br label %bb.gs

bb.gs:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2573.us, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2567.us
  %.1.i2575.us = phi i16 [ %spec.select.i2572.us, %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2573.us ], [ %.0.i.i2566.us, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2567.us ] ; 3 uses
  %i.bbx = zext i16 %i.bbc to i64
  %i.bby = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.bbx ; 3 uses
  %i.bbz = load i16, ptr %i.bby, align 2, !tbaa !53 ; 2 uses
  %i.bca = icmp ult i16 %i.bbz, %i.bbc
  br i1 %i.bca, label %.lr.ph.i18.i2577.us, label %.loopexit3168.us

.lr.ph.i18.i2577.us:                              ; preds = %bb.gs, %.lr.ph.i18.i2577.us
  %i.bcb = phi i16 [ %i.bcf, %.lr.ph.i18.i2577.us ], [ %i.bbz, %bb.gs ] ; 2 uses
  %i.bcc = phi ptr [ %i.bce, %.lr.ph.i18.i2577.us ], [ %i.bby, %bb.gs ]
  store i16 %.1.i2575.us, ptr %i.bcc, align 2, !tbaa !53
  %i.bcd = zext i16 %i.bcb to i64
  %i.bce = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.bcd ; 3 uses
  %i.bcf = load i16, ptr %i.bce, align 2, !tbaa !53 ; 2 uses
  %i.bcg = icmp ult i16 %i.bcf, %i.bcb
  br i1 %i.bcg, label %.lr.ph.i18.i2577.us, label %.loopexit3168.us, !llvm.loop !1

.loopexit3168.us:                                 ; preds = %.lr.ph.i18.i2577.us, %bb.gs
  %.lcssa.i17.i2576.us = phi ptr [ %i.bby, %bb.gs ], [ %i.bce, %.lr.ph.i18.i2577.us ]
  store i16 %.1.i2575.us, ptr %.lcssa.i17.i2576.us, align 2, !tbaa !53
  %i.bch = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv
  store i16 %.1.i2575.us, ptr %i.bch, align 2, !tbaa !53
  br label %bb.qt

bb.gt:                                            ; preds = %bb.gn
  %i.bci = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv
  %i.bcj = load i8, ptr %i.bci, align 1, !tbaa !32
  %.not1990.us = icmp eq i8 %i.bcj, 0
  br i1 %.not1990.us, label %bb.hh, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.bck = add nsw i64 %indvars.iv, -2            ; 6 uses
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bck
  %i.bcm = load i8, ptr %i.bcl, align 1, !tbaa !32
  %.not1991.us = icmp eq i8 %i.bcm, 0
  br i1 %.not1991.us, label %bb.he, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bck
  %i.bco = load i8, ptr %i.bcn, align 1, !tbaa !32
  %.not1992.us = icmp eq i8 %i.bco, 0
  br i1 %.not1992.us, label %bb.hb, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bu
  %i.bcq = load i8, ptr %i.bcp, align 1, !tbaa !32
  %.not1993.us = icmp eq i8 %i.bcq, 0
  br i1 %.not1993.us, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.bcr = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.bck
  %i.bcs = load i16, ptr %i.bcr, align 2, !tbaa !53
  %i.bct = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv
  store i16 %i.bcs, ptr %i.bct, align 2, !tbaa !53
  br label %bb.qt

bb.gy:                                            ; preds = %bb.gw
  %i.bcu = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %indvars.iv
  %i.bcv = load i16, ptr %i.bcu, align 2, !tbaa !53 ; 4 uses
  %i.bcw = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.bck
  %i.bcx = load i16, ptr %i.bcw, align 2, !tbaa !53 ; 4 uses
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gz, %bb.gy
  %.0.i.i2580.us = phi i16 [ %i.bcv, %bb.gy ], [ %i.bda, %bb.gz ] ; 4 uses
  %i.bcy = zext i16 %.0.i.i2580.us to i64
  %i.bcz = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.bcy
  %i.bda = load i16, ptr %i.bcz, align 2, !tbaa !53 ; 2 uses
  %i.bdb = icmp ult i16 %i.bda, %.0.i.i2580.us
  br i1 %i.bdb, label %bb.gz, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2581.us, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2581.us: ; preds = %bb.gz
  %.not.i2582.us = icmp eq i16 %i.bcv, %i.bcx
  br i1 %.not.i2582.us, label %bb.ha, label %.preheader.i2583.us

.preheader.i2583.us:                              ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2581.us, %.preheader.i2583.us
  %.0.i15.i2584.us = phi i16 [ %i.bde, %.preheader.i2583.us ], [ %i.bcx, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2581.us ] ; 3 uses
  %i.bdc = zext i16 %.0.i15.i2584.us to i64
  %i.bdd = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.bdc
  %i.bde = load i16, ptr %i.bdd, align 2, !tbaa !53 ; 2 uses
  %i.bdf = icmp ult i16 %i.bde, %.0.i15.i2584.us
  br i1 %i.bdf, label %.preheader.i2583.us, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2585.us, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2585.us: ; preds = %.preheader.i2583.us
  %spec.select.i2586.us = tail call i16 @llvm.umin.i16(i16 %.0.i.i2580.us, i16 %.0.i15.i2584.us) ; 3 uses
  %i.bdg = zext i16 %i.bcx to i64
  %i.bdh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.bdg ; 3 uses
  %i.bdi = load i16, ptr %i.bdh, align 2, !tbaa !53 ; 2 uses
  %i.bdj = icmp ult i16 %i.bdi, %i.bcx
  br i1 %i.bdj, label %.lr.ph.i.i2592.us, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2587.us

.lr.ph.i.i2592.us:                                ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2585.us, %.lr.ph.i.i2592.us
  %i.bdk = phi i16 [ %i.bdo, %.lr.ph.i.i2592.us ], [ %i.bdi, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2585.us ] ; 2 uses
  %i.bdl = phi ptr [ %i.bdn, %.lr.ph.i.i2592.us ], [ %i.bdh, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2585.us ]
  store i16 %spec.select.i2586.us, ptr %i.bdl, align 2, !tbaa !53
  %i.bdm = zext i16 %i.bdk to i64
  %i.bdn = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.bdm ; 3 uses
  %i.bdo = load i16, ptr %i.bdn, align 2, !tbaa !53 ; 2 uses
  %i.bdp = icmp ult i16 %i.bdo, %i.bdk
  br i1 %i.bdp, label %.lr.ph.i.i2592.us, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2587.us, !llvm.loop !1

_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2587.us: ; preds = %.lr.ph.i.i2592.us, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2585.us
  %.lcssa.i.i2588.us = phi ptr [ %i.bdh, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2585.us ], [ %i.bdn, %.lr.ph.i.i2592.us ]
  store i16 %spec.select.i2586.us, ptr %.lcssa.i.i2588.us, align 2, !tbaa !53
  br label %bb.ha

bb.ha:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2587.us, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2581.us
  %.1.i2589.us = phi i16 [ %spec.select.i2586.us, %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2587.us ], [ %.0.i.i2580.us, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2581.us ] ; 3 uses
  %i.bdq = zext i16 %i.bcv to i64
  %i.bdr = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.bdq ; 3 uses
  %i.bds = load i16, ptr %i.bdr, align 2, !tbaa !53 ; 2 uses
  %i.bdt = icmp ult i16 %i.bds, %i.bcv
  br i1 %i.bdt, label %.lr.ph.i18.i2591.us, label %.loopexit3167.us

.lr.ph.i18.i2591.us:                              ; preds = %bb.ha, %.lr.ph.i18.i2591.us
  %i.bdu = phi i16 [ %i.bdy, %.lr.ph.i18.i2591.us ], [ %i.bds, %bb.ha ] ; 2 uses
  %i.bdv = phi ptr [ %i.bdx, %.lr.ph.i18.i2591.us ], [ %i.bdr, %bb.ha ]
  store i16 %.1.i2589.us, ptr %i.bdv, align 2, !tbaa !53
  %i.bdw = zext i16 %i.bdu to i64
  %i.bdx = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03089.0, i64 %i.bdw ; 3 uses
  %i.bdy = load i16, ptr %i.bdx, align 2, !tbaa !53 ; 2 uses
  %i.bdz = icmp ult i16 %i.bdy, %i.bdu
  br i1 %i.bdz, label %.lr.ph.i18.i2591.us, label %.loopexit3167.us, !llvm.loop !1

.loopexit3167.us:                                 ; preds = %.lr.ph.i18.i2591.us, %bb.ha
  %.lcssa.i17.i2590.us = phi ptr [ %i.bdr, %bb.ha ], [ %i.bdx, %.lr.ph.i18.i2591.us ]
  store i16 %.1.i2589.us, ptr %.lcssa.i17.i2590.us, align 2, !tbaa !53
  %i.bea = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv
  store i16 %.1.i2589.us, ptr %i.bea, align 2, !tbaa !53
  br label %bb.qt
end_hunk_1
begin_hunk_2_@_ZN2cv19connectedcomponents13LabelingGranaIihNS0_4NoOpEEclERKNS_3MatERS4_iRS2_:bb.a
  %i.ww = phi ptr [ %i.wy, %.lr.ph.i.i2256.us ], [ %i.ws, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2249.us ]
  store i32 %spec.select.i2250.us, ptr %i.ww, align 4, !tbaa !58
  %i.wx = sext i32 %i.wv to i64
  %i.wy = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.wx ; 3 uses
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !58 ; 2 uses
  %i.xa = icmp slt i32 %i.wz, %i.wv
  br i1 %i.xa, label %.lr.ph.i.i2256.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2251.us, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2251.us: ; preds = %.lr.ph.i.i2256.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2249.us
  %.lcssa.i.i2252.us = phi ptr [ %i.ws, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2249.us ], [ %i.wy, %.lr.ph.i.i2256.us ]
  store i32 %spec.select.i2250.us, ptr %.lcssa.i.i2252.us, align 4, !tbaa !58
  br label %bb.dd

bb.dd:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2251.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2245.us
  %.1.i2253.us = phi i32 [ %spec.select.i2250.us, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2251.us ], [ %.0.i.i2244.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2245.us ] ; 6 uses
  %i.xb = sext i32 %i.wg to i64
  %i.xc = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.xb ; 3 uses
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !58 ; 2 uses
  %i.xe = icmp slt i32 %i.xd, %i.wg
  br i1 %i.xe, label %.lr.ph.i21.i2255.us, label %.loopexit3191.us

.lr.ph.i21.i2255.us:                              ; preds = %bb.dd, %.lr.ph.i21.i2255.us
  %i.xf = phi i32 [ %i.xj, %.lr.ph.i21.i2255.us ], [ %i.xd, %bb.dd ] ; 2 uses
  %i.xg = phi ptr [ %i.xi, %.lr.ph.i21.i2255.us ], [ %i.xc, %bb.dd ]
  store i32 %.1.i2253.us, ptr %i.xg, align 4, !tbaa !58
  %i.xh = sext i32 %i.xf to i64
  %i.xi = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.xh ; 3 uses
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !58 ; 2 uses
  %i.xk = icmp slt i32 %i.xj, %i.xf
  br i1 %i.xk, label %.lr.ph.i21.i2255.us, label %.loopexit3191.us, !llvm.loop !4

.loopexit3191.us:                                 ; preds = %.lr.ph.i21.i2255.us, %bb.dd
  %.lcssa.i20.i2254.us = phi ptr [ %i.xc, %bb.dd ], [ %i.xi, %.lr.ph.i21.i2255.us ]
  store i32 %.1.i2253.us, ptr %.lcssa.i20.i2254.us, align 4, !tbaa !58
  %i.xl = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.ng
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !58 ; 4 uses
  br label %bb.de

bb.de:                                            ; preds = %bb.de, %.loopexit3191.us
  %.0.i.i2258.us = phi i32 [ %.1.i2253.us, %.loopexit3191.us ], [ %i.xp, %bb.de ] ; 4 uses
  %i.xn = sext i32 %.0.i.i2258.us to i64
  %i.xo = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.xn
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !58 ; 2 uses
  %i.xq = icmp slt i32 %i.xp, %.0.i.i2258.us
  br i1 %i.xq, label %bb.de, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2259.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2259.us: ; preds = %bb.de
  %.not.i2260.us = icmp eq i32 %.1.i2253.us, %i.xm
  br i1 %.not.i2260.us, label %bb.df, label %.preheader.i2261.us

.preheader.i2261.us:                              ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2259.us, %.preheader.i2261.us
  %.0.i18.i2262.us = phi i32 [ %i.xt, %.preheader.i2261.us ], [ %i.xm, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2259.us ] ; 3 uses
  %i.xr = sext i32 %.0.i18.i2262.us to i64
  %i.xs = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.xr
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !58 ; 2 uses
  %i.xu = icmp slt i32 %i.xt, %.0.i18.i2262.us
  br i1 %i.xu, label %.preheader.i2261.us, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2263.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2263.us: ; preds = %.preheader.i2261.us
  %spec.select.i2264.us = tail call i32 @llvm.smin.i32(i32 %.0.i.i2258.us, i32 %.0.i18.i2262.us) ; 3 uses
  %i.xv = sext i32 %i.xm to i64
  %i.xw = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.xv ; 3 uses
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !58 ; 2 uses
  %i.xy = icmp slt i32 %i.xx, %i.xm
  br i1 %i.xy, label %.lr.ph.i.i2270.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2265.us

.lr.ph.i.i2270.us:                                ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2263.us, %.lr.ph.i.i2270.us
  %i.xz = phi i32 [ %i.yd, %.lr.ph.i.i2270.us ], [ %i.xx, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2263.us ] ; 2 uses
  %i.ya = phi ptr [ %i.yc, %.lr.ph.i.i2270.us ], [ %i.xw, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2263.us ]
  store i32 %spec.select.i2264.us, ptr %i.ya, align 4, !tbaa !58
  %i.yb = sext i32 %i.xz to i64
  %i.yc = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.yb ; 3 uses
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !58 ; 2 uses
  %i.ye = icmp slt i32 %i.yd, %i.xz
  br i1 %i.ye, label %.lr.ph.i.i2270.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2265.us, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2265.us: ; preds = %.lr.ph.i.i2270.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2263.us
  %.lcssa.i.i2266.us = phi ptr [ %i.xw, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2263.us ], [ %i.yc, %.lr.ph.i.i2270.us ]
  store i32 %spec.select.i2264.us, ptr %.lcssa.i.i2266.us, align 4, !tbaa !58
  br label %bb.df

bb.df:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2265.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2259.us
  %.1.i2267.us = phi i32 [ %spec.select.i2264.us, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2265.us ], [ %.0.i.i2258.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2259.us ] ; 3 uses
  %i.yf = sext i32 %.1.i2253.us to i64
  %i.yg = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.yf ; 3 uses
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !58 ; 2 uses
  %i.yi = icmp slt i32 %i.yh, %.1.i2253.us
  br i1 %i.yi, label %.lr.ph.i21.i2269.us, label %.loopexit3190.us

.lr.ph.i21.i2269.us:                              ; preds = %bb.df, %.lr.ph.i21.i2269.us
  %i.yj = phi i32 [ %i.yn, %.lr.ph.i21.i2269.us ], [ %i.yh, %bb.df ] ; 2 uses
  %i.yk = phi ptr [ %i.ym, %.lr.ph.i21.i2269.us ], [ %i.yg, %bb.df ]
  store i32 %.1.i2267.us, ptr %i.yk, align 4, !tbaa !58
  %i.yl = sext i32 %i.yj to i64
  %i.ym = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.yl ; 3 uses
  %i.yn = load i32, ptr %i.ym, align 4, !tbaa !58 ; 2 uses
  %i.yo = icmp slt i32 %i.yn, %i.yj
  br i1 %i.yo, label %.lr.ph.i21.i2269.us, label %.loopexit3190.us, !llvm.loop !4

.loopexit3190.us:                                 ; preds = %.lr.ph.i21.i2269.us, %bb.df
  %.lcssa.i20.i2268.us = phi ptr [ %i.yg, %bb.df ], [ %i.ym, %.lr.ph.i21.i2269.us ]
  store i32 %.1.i2267.us, ptr %.lcssa.i20.i2268.us, align 4, !tbaa !58
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv
  store i32 %.1.i2267.us, ptr %i.yp, align 4, !tbaa !58
  br label %bb.qt

bb.dg:                                            ; preds = %bb.cw
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv
  %i.yr = load i32, ptr %i.yq, align 4, !tbaa !58 ; 4 uses
  %i.ys = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.ng
  %i.yt = load i32, ptr %i.ys, align 4, !tbaa !58 ; 4 uses
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dh, %bb.dg
  %.0.i.i2272.us = phi i32 [ %i.yr, %bb.dg ], [ %i.yw, %bb.dh ] ; 4 uses
  %i.yu = sext i32 %.0.i.i2272.us to i64
  %i.yv = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.yu
  %i.yw = load i32, ptr %i.yv, align 4, !tbaa !58 ; 2 uses
  %i.yx = icmp slt i32 %i.yw, %.0.i.i2272.us
  br i1 %i.yx, label %bb.dh, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2273.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2273.us: ; preds = %bb.dh
  %.not.i2274.us = icmp eq i32 %i.yr, %i.yt
  br i1 %.not.i2274.us, label %bb.di, label %.preheader.i2275.us

.preheader.i2275.us:                              ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2273.us, %.preheader.i2275.us
  %.0.i18.i2276.us = phi i32 [ %i.za, %.preheader.i2275.us ], [ %i.yt, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2273.us ] ; 3 uses
  %i.yy = sext i32 %.0.i18.i2276.us to i64
  %i.yz = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.yy
  %i.za = load i32, ptr %i.yz, align 4, !tbaa !58 ; 2 uses
  %i.zb = icmp slt i32 %i.za, %.0.i18.i2276.us
  br i1 %i.zb, label %.preheader.i2275.us, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2277.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2277.us: ; preds = %.preheader.i2275.us
  %spec.select.i2278.us = tail call i32 @llvm.smin.i32(i32 %.0.i.i2272.us, i32 %.0.i18.i2276.us) ; 3 uses
  %i.zc = sext i32 %i.yt to i64
  %i.zd = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.zc ; 3 uses
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !58 ; 2 uses
  %i.zf = icmp slt i32 %i.ze, %i.yt
  br i1 %i.zf, label %.lr.ph.i.i2284.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2279.us

.lr.ph.i.i2284.us:                                ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2277.us, %.lr.ph.i.i2284.us
  %i.zg = phi i32 [ %i.zk, %.lr.ph.i.i2284.us ], [ %i.ze, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2277.us ] ; 2 uses
  %i.zh = phi ptr [ %i.zj, %.lr.ph.i.i2284.us ], [ %i.zd, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2277.us ]
  store i32 %spec.select.i2278.us, ptr %i.zh, align 4, !tbaa !58
  %i.zi = sext i32 %i.zg to i64
  %i.zj = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.zi ; 3 uses
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !58 ; 2 uses
  %i.zl = icmp slt i32 %i.zk, %i.zg
  br i1 %i.zl, label %.lr.ph.i.i2284.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2279.us, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2279.us: ; preds = %.lr.ph.i.i2284.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2277.us
  %.lcssa.i.i2280.us = phi ptr [ %i.zd, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2277.us ], [ %i.zj, %.lr.ph.i.i2284.us ]
  store i32 %spec.select.i2278.us, ptr %.lcssa.i.i2280.us, align 4, !tbaa !58
  br label %bb.di

bb.di:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2279.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2273.us
  %.1.i2281.us = phi i32 [ %spec.select.i2278.us, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2279.us ], [ %.0.i.i2272.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2273.us ] ; 3 uses
  %i.zm = sext i32 %i.yr to i64
  %i.zn = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.zm ; 3 uses
  %i.zo = load i32, ptr %i.zn, align 4, !tbaa !58 ; 2 uses
  %i.zp = icmp slt i32 %i.zo, %i.yr
  br i1 %i.zp, label %.lr.ph.i21.i2283.us, label %.loopexit3189.us

.lr.ph.i21.i2283.us:                              ; preds = %bb.di, %.lr.ph.i21.i2283.us
  %i.zq = phi i32 [ %i.zu, %.lr.ph.i21.i2283.us ], [ %i.zo, %bb.di ] ; 2 uses
  %i.zr = phi ptr [ %i.zt, %.lr.ph.i21.i2283.us ], [ %i.zn, %bb.di ]
  store i32 %.1.i2281.us, ptr %i.zr, align 4, !tbaa !58
  %i.zs = sext i32 %i.zq to i64
  %i.zt = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.zs ; 3 uses
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !58 ; 2 uses
  %i.zv = icmp slt i32 %i.zu, %i.zq
  br i1 %i.zv, label %.lr.ph.i21.i2283.us, label %.loopexit3189.us, !llvm.loop !4

.loopexit3189.us:                                 ; preds = %.lr.ph.i21.i2283.us, %bb.di
  %.lcssa.i20.i2282.us = phi ptr [ %i.zn, %bb.di ], [ %i.zt, %.lr.ph.i21.i2283.us ]
  store i32 %.1.i2281.us, ptr %.lcssa.i20.i2282.us, align 4, !tbaa !58
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv
  store i32 %.1.i2281.us, ptr %i.zw, align 4, !tbaa !58
  br label %bb.qt

bb.dj:                                            ; preds = %bb.bt, %bb.bs
  br i1 %i.nd, label %bb.hi, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.zx = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.nc
  %i.zy = load i8, ptr %i.zx, align 1, !tbaa !32
  %.not1976.us = icmp eq i8 %i.zy, 0
  br i1 %.not1976.us, label %bb.hi, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.zz = add nuw nsw i64 %indvars.iv, 2          ; 17 uses
  %i.aaa = icmp samesign uge i64 %i.zz, %i.az
  %or.cond2049.us = or i1 %.not2024.us, %i.aaa
  br i1 %or.cond2049.us, label %bb.gm, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.aab = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.zz
  %i.aac = load i8, ptr %i.aab, align 1, !tbaa !32
  %.not1986.us = icmp eq i8 %i.aac, 0
  br i1 %.not1986.us, label %bb.gm, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.aad = add nsw i64 %indvars.iv, -2            ; 24 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.aad
  %i.aaf = load i8, ptr %i.aae, align 1, !tbaa !32
  %.not1995.us = icmp eq i8 %i.aaf, 0
  br i1 %.not1995.us, label %bb.fj, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.aag = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bu
  %i.aah = load i8, ptr %i.aag, align 1, !tbaa !32
  %.not2001.us = icmp eq i8 %i.aah, 0
  %i.aai = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.nc
  %i.aaj = load i8, ptr %i.aai, align 1, !tbaa !32
  %.not2002.us = icmp eq i8 %i.aaj, 0             ; 2 uses
  br i1 %.not2001.us, label %bb.ea, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  br i1 %.not2002.us, label %bb.dx, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.aak = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv
  %i.aal = load i8, ptr %i.aak, align 1, !tbaa !32
  %.not2011.us = icmp eq i8 %i.aal, 0
  br i1 %.not2011.us, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.aad
  %i.aan = load i32, ptr %i.aam, align 4, !tbaa !58
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv
  store i32 %i.aan, ptr %i.aao, align 4, !tbaa !58
  br label %bb.qt

bb.ds:                                            ; preds = %bb.dq
  %i.aap = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv
  %i.aaq = load i8, ptr %i.aap, align 1, !tbaa !32
  %.not2012.us = icmp eq i8 %i.aaq, 0
  br i1 %.not2012.us, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.aad
  %i.aas = load i32, ptr %i.aar, align 4, !tbaa !58
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv
  store i32 %i.aas, ptr %i.aat, align 4, !tbaa !58
  br label %bb.qt

bb.du:                                            ; preds = %bb.ds
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.zz
  %i.aav = load i32, ptr %i.aau, align 4, !tbaa !58 ; 4 uses
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.aad
  %i.aax = load i32, ptr %i.aaw, align 4, !tbaa !58 ; 4 uses
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dv, %bb.du
  %.0.i.i2286.us = phi i32 [ %i.aav, %bb.du ], [ %i.aba, %bb.dv ] ; 4 uses
  %i.aay = sext i32 %.0.i.i2286.us to i64
  %i.aaz = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.aay
  %i.aba = load i32, ptr %i.aaz, align 4, !tbaa !58 ; 2 uses
  %i.abb = icmp slt i32 %i.aba, %.0.i.i2286.us
  br i1 %i.abb, label %bb.dv, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2287.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2287.us: ; preds = %bb.dv
  %.not.i2288.us = icmp eq i32 %i.aav, %i.aax
  br i1 %.not.i2288.us, label %bb.dw, label %.preheader.i2289.us

.preheader.i2289.us:                              ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2287.us, %.preheader.i2289.us
  %.0.i18.i2290.us = phi i32 [ %i.abe, %.preheader.i2289.us ], [ %i.aax, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2287.us ] ; 3 uses
  %i.abc = sext i32 %.0.i18.i2290.us to i64
  %i.abd = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.abc
  %i.abe = load i32, ptr %i.abd, align 4, !tbaa !58 ; 2 uses
  %i.abf = icmp slt i32 %i.abe, %.0.i18.i2290.us
  br i1 %i.abf, label %.preheader.i2289.us, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2291.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2291.us: ; preds = %.preheader.i2289.us
  %spec.select.i2292.us = tail call i32 @llvm.smin.i32(i32 %.0.i.i2286.us, i32 %.0.i18.i2290.us) ; 3 uses
  %i.abg = sext i32 %i.aax to i64
  %i.abh = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.abg ; 3 uses
  %i.abi = load i32, ptr %i.abh, align 4, !tbaa !58 ; 2 uses
  %i.abj = icmp slt i32 %i.abi, %i.aax
  br i1 %i.abj, label %.lr.ph.i.i2298.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2293.us

.lr.ph.i.i2298.us:                                ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2291.us, %.lr.ph.i.i2298.us
  %i.abk = phi i32 [ %i.abo, %.lr.ph.i.i2298.us ], [ %i.abi, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2291.us ] ; 2 uses
  %i.abl = phi ptr [ %i.abn, %.lr.ph.i.i2298.us ], [ %i.abh, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2291.us ]
  store i32 %spec.select.i2292.us, ptr %i.abl, align 4, !tbaa !58
  %i.abm = sext i32 %i.abk to i64
  %i.abn = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.abm ; 3 uses
  %i.abo = load i32, ptr %i.abn, align 4, !tbaa !58 ; 2 uses
  %i.abp = icmp slt i32 %i.abo, %i.abk
  br i1 %i.abp, label %.lr.ph.i.i2298.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2293.us, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2293.us: ; preds = %.lr.ph.i.i2298.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2291.us
  %.lcssa.i.i2294.us = phi ptr [ %i.abh, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2291.us ], [ %i.abn, %.lr.ph.i.i2298.us ]
  store i32 %spec.select.i2292.us, ptr %.lcssa.i.i2294.us, align 4, !tbaa !58
  br label %bb.dw

bb.dw:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2293.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2287.us
  %.1.i2295.us = phi i32 [ %spec.select.i2292.us, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2293.us ], [ %.0.i.i2286.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2287.us ] ; 3 uses
  %i.abq = sext i32 %i.aav to i64
  %i.abr = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.abq ; 3 uses
  %i.abs = load i32, ptr %i.abr, align 4, !tbaa !58 ; 2 uses
  %i.abt = icmp slt i32 %i.abs, %i.aav
  br i1 %i.abt, label %.lr.ph.i21.i2297.us, label %.loopexit3188.us

.lr.ph.i21.i2297.us:                              ; preds = %bb.dw, %.lr.ph.i21.i2297.us
  %i.abu = phi i32 [ %i.aby, %.lr.ph.i21.i2297.us ], [ %i.abs, %bb.dw ] ; 2 uses
  %i.abv = phi ptr [ %i.abx, %.lr.ph.i21.i2297.us ], [ %i.abr, %bb.dw ]
  store i32 %.1.i2295.us, ptr %i.abv, align 4, !tbaa !58
  %i.abw = sext i32 %i.abu to i64
  %i.abx = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.abw ; 3 uses
  %i.aby = load i32, ptr %i.abx, align 4, !tbaa !58 ; 2 uses
  %i.abz = icmp slt i32 %i.aby, %i.abu
  br i1 %i.abz, label %.lr.ph.i21.i2297.us, label %.loopexit3188.us, !llvm.loop !4

.loopexit3188.us:                                 ; preds = %.lr.ph.i21.i2297.us, %bb.dw
  %.lcssa.i20.i2296.us = phi ptr [ %i.abr, %bb.dw ], [ %i.abx, %.lr.ph.i21.i2297.us ]
  store i32 %.1.i2295.us, ptr %.lcssa.i20.i2296.us, align 4, !tbaa !58
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv
  store i32 %.1.i2295.us, ptr %i.aca, align 4, !tbaa !58
  br label %bb.qt

bb.dx:                                            ; preds = %bb.dp
  %i.acb = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.zz
  %i.acc = load i32, ptr %i.acb, align 4, !tbaa !58 ; 4 uses
  %i.acd = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.aad
  %i.ace = load i32, ptr %i.acd, align 4, !tbaa !58 ; 4 uses
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dy, %bb.dx
  %.0.i.i2300.us = phi i32 [ %i.acc, %bb.dx ], [ %i.ach, %bb.dy ] ; 4 uses
  %i.acf = sext i32 %.0.i.i2300.us to i64
  %i.acg = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.acf
  %i.ach = load i32, ptr %i.acg, align 4, !tbaa !58 ; 2 uses
  %i.aci = icmp slt i32 %i.ach, %.0.i.i2300.us
  br i1 %i.aci, label %bb.dy, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2301.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2301.us: ; preds = %bb.dy
  %.not.i2302.us = icmp eq i32 %i.acc, %i.ace
  br i1 %.not.i2302.us, label %bb.dz, label %.preheader.i2303.us

.preheader.i2303.us:                              ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2301.us, %.preheader.i2303.us
  %.0.i18.i2304.us = phi i32 [ %i.acl, %.preheader.i2303.us ], [ %i.ace, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2301.us ] ; 3 uses
  %i.acj = sext i32 %.0.i18.i2304.us to i64
  %i.ack = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.acj
  %i.acl = load i32, ptr %i.ack, align 4, !tbaa !58 ; 2 uses
  %i.acm = icmp slt i32 %i.acl, %.0.i18.i2304.us
  br i1 %i.acm, label %.preheader.i2303.us, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2305.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2305.us: ; preds = %.preheader.i2303.us
  %spec.select.i2306.us = tail call i32 @llvm.smin.i32(i32 %.0.i.i2300.us, i32 %.0.i18.i2304.us) ; 3 uses
  %i.acn = sext i32 %i.ace to i64
  %i.aco = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.acn ; 3 uses
  %i.acp = load i32, ptr %i.aco, align 4, !tbaa !58 ; 2 uses
  %i.acq = icmp slt i32 %i.acp, %i.ace
  br i1 %i.acq, label %.lr.ph.i.i2312.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2307.us

.lr.ph.i.i2312.us:                                ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2305.us, %.lr.ph.i.i2312.us
  %i.acr = phi i32 [ %i.acv, %.lr.ph.i.i2312.us ], [ %i.acp, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2305.us ] ; 2 uses
  %i.acs = phi ptr [ %i.acu, %.lr.ph.i.i2312.us ], [ %i.aco, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2305.us ]
  store i32 %spec.select.i2306.us, ptr %i.acs, align 4, !tbaa !58
  %i.act = sext i32 %i.acr to i64
  %i.acu = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.act ; 3 uses
  %i.acv = load i32, ptr %i.acu, align 4, !tbaa !58 ; 2 uses
  %i.acw = icmp slt i32 %i.acv, %i.acr
  br i1 %i.acw, label %.lr.ph.i.i2312.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2307.us, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2307.us: ; preds = %.lr.ph.i.i2312.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2305.us
  %.lcssa.i.i2308.us = phi ptr [ %i.aco, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2305.us ], [ %i.acu, %.lr.ph.i.i2312.us ]
  store i32 %spec.select.i2306.us, ptr %.lcssa.i.i2308.us, align 4, !tbaa !58
  br label %bb.dz

bb.dz:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2307.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2301.us
  %.1.i2309.us = phi i32 [ %spec.select.i2306.us, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2307.us ], [ %.0.i.i2300.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2301.us ] ; 3 uses
  %i.acx = sext i32 %i.acc to i64
  %i.acy = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.acx ; 3 uses
  %i.acz = load i32, ptr %i.acy, align 4, !tbaa !58 ; 2 uses
  %i.ada = icmp slt i32 %i.acz, %i.acc
  br i1 %i.ada, label %.lr.ph.i21.i2311.us, label %.loopexit3187.us

.lr.ph.i21.i2311.us:                              ; preds = %bb.dz, %.lr.ph.i21.i2311.us
  %i.adb = phi i32 [ %i.adf, %.lr.ph.i21.i2311.us ], [ %i.acz, %bb.dz ] ; 2 uses
  %i.adc = phi ptr [ %i.ade, %.lr.ph.i21.i2311.us ], [ %i.acy, %bb.dz ]
  store i32 %.1.i2309.us, ptr %i.adc, align 4, !tbaa !58
  %i.add = sext i32 %i.adb to i64
  %i.ade = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.add ; 3 uses
  %i.adf = load i32, ptr %i.ade, align 4, !tbaa !58 ; 2 uses
  %i.adg = icmp slt i32 %i.adf, %i.adb
  br i1 %i.adg, label %.lr.ph.i21.i2311.us, label %.loopexit3187.us, !llvm.loop !4

.loopexit3187.us:                                 ; preds = %.lr.ph.i21.i2311.us, %bb.dz
  %.lcssa.i20.i2310.us = phi ptr [ %i.acy, %bb.dz ], [ %i.ade, %.lr.ph.i21.i2311.us ]
  store i32 %.1.i2309.us, ptr %.lcssa.i20.i2310.us, align 4, !tbaa !58
  %i.adh = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv
  store i32 %.1.i2309.us, ptr %i.adh, align 4, !tbaa !58
  br label %bb.qt

bb.ea:                                            ; preds = %bb.do
  br i1 %.not2002.us, label %bb.eq, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
end_hunk_2
begin_hunk_3_@_ZN2cv19connectedcomponents13LabelingGranaIihNS0_4NoOpEEclERKNS_3MatERS4_iRS2_:bb.a

.preheader.i2527.us:                              ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2525.us, %.preheader.i2527.us
  %.0.i18.i2528.us = phi i32 [ %i.axl, %.preheader.i2527.us ], [ %i.axe, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2525.us ] ; 3 uses
  %i.axj = sext i32 %.0.i18.i2528.us to i64
  %i.axk = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.axj
  %i.axl = load i32, ptr %i.axk, align 4, !tbaa !58 ; 2 uses
  %i.axm = icmp slt i32 %i.axl, %.0.i18.i2528.us
  br i1 %i.axm, label %.preheader.i2527.us, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2529.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2529.us: ; preds = %.preheader.i2527.us
  %spec.select.i2530.us = tail call i32 @llvm.smin.i32(i32 %.0.i.i2524.us, i32 %.0.i18.i2528.us) ; 3 uses
  %i.axn = sext i32 %i.axe to i64
  %i.axo = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.axn ; 3 uses
  %i.axp = load i32, ptr %i.axo, align 4, !tbaa !58 ; 2 uses
  %i.axq = icmp slt i32 %i.axp, %i.axe
  br i1 %i.axq, label %.lr.ph.i.i2536.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2531.us

.lr.ph.i.i2536.us:                                ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2529.us, %.lr.ph.i.i2536.us
  %i.axr = phi i32 [ %i.axv, %.lr.ph.i.i2536.us ], [ %i.axp, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2529.us ] ; 2 uses
  %i.axs = phi ptr [ %i.axu, %.lr.ph.i.i2536.us ], [ %i.axo, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2529.us ]
  store i32 %spec.select.i2530.us, ptr %i.axs, align 4, !tbaa !58
  %i.axt = sext i32 %i.axr to i64
  %i.axu = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.axt ; 3 uses
  %i.axv = load i32, ptr %i.axu, align 4, !tbaa !58 ; 2 uses
  %i.axw = icmp slt i32 %i.axv, %i.axr
  br i1 %i.axw, label %.lr.ph.i.i2536.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2531.us, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2531.us: ; preds = %.lr.ph.i.i2536.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2529.us
  %.lcssa.i.i2532.us = phi ptr [ %i.axo, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2529.us ], [ %i.axu, %.lr.ph.i.i2536.us ]
  store i32 %spec.select.i2530.us, ptr %.lcssa.i.i2532.us, align 4, !tbaa !58
  br label %bb.gg

bb.gg:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2531.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2525.us
  %.1.i2533.us = phi i32 [ %spec.select.i2530.us, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2531.us ], [ %.0.i.i2524.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2525.us ] ; 6 uses
  %i.axx = sext i32 %i.axc to i64
  %i.axy = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.axx ; 3 uses
  %i.axz = load i32, ptr %i.axy, align 4, !tbaa !58 ; 2 uses
  %i.aya = icmp slt i32 %i.axz, %i.axc
  br i1 %i.aya, label %.lr.ph.i21.i2535.us, label %.loopexit3171.us

.lr.ph.i21.i2535.us:                              ; preds = %bb.gg, %.lr.ph.i21.i2535.us
  %i.ayb = phi i32 [ %i.ayf, %.lr.ph.i21.i2535.us ], [ %i.axz, %bb.gg ] ; 2 uses
  %i.ayc = phi ptr [ %i.aye, %.lr.ph.i21.i2535.us ], [ %i.axy, %bb.gg ]
  store i32 %.1.i2533.us, ptr %i.ayc, align 4, !tbaa !58
  %i.ayd = sext i32 %i.ayb to i64
  %i.aye = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.ayd ; 3 uses
  %i.ayf = load i32, ptr %i.aye, align 4, !tbaa !58 ; 2 uses
  %i.ayg = icmp slt i32 %i.ayf, %i.ayb
  br i1 %i.ayg, label %.lr.ph.i21.i2535.us, label %.loopexit3171.us, !llvm.loop !4

.loopexit3171.us:                                 ; preds = %.lr.ph.i21.i2535.us, %bb.gg
  %.lcssa.i20.i2534.us = phi ptr [ %i.axy, %bb.gg ], [ %i.aye, %.lr.ph.i21.i2535.us ]
  store i32 %.1.i2533.us, ptr %.lcssa.i20.i2534.us, align 4, !tbaa !58
  %i.ayh = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.aad
  %i.ayi = load i32, ptr %i.ayh, align 4, !tbaa !58 ; 4 uses
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gh, %.loopexit3171.us
  %.0.i.i2538.us = phi i32 [ %.1.i2533.us, %.loopexit3171.us ], [ %i.ayl, %bb.gh ] ; 4 uses
  %i.ayj = sext i32 %.0.i.i2538.us to i64
  %i.ayk = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.ayj
  %i.ayl = load i32, ptr %i.ayk, align 4, !tbaa !58 ; 2 uses
  %i.aym = icmp slt i32 %i.ayl, %.0.i.i2538.us
  br i1 %i.aym, label %bb.gh, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2539.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2539.us: ; preds = %bb.gh
  %.not.i2540.us = icmp eq i32 %.1.i2533.us, %i.ayi
  br i1 %.not.i2540.us, label %bb.gi, label %.preheader.i2541.us

.preheader.i2541.us:                              ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2539.us, %.preheader.i2541.us
  %.0.i18.i2542.us = phi i32 [ %i.ayp, %.preheader.i2541.us ], [ %i.ayi, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2539.us ] ; 3 uses
  %i.ayn = sext i32 %.0.i18.i2542.us to i64
  %i.ayo = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.ayn
  %i.ayp = load i32, ptr %i.ayo, align 4, !tbaa !58 ; 2 uses
  %i.ayq = icmp slt i32 %i.ayp, %.0.i18.i2542.us
  br i1 %i.ayq, label %.preheader.i2541.us, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2543.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2543.us: ; preds = %.preheader.i2541.us
  %spec.select.i2544.us = tail call i32 @llvm.smin.i32(i32 %.0.i.i2538.us, i32 %.0.i18.i2542.us) ; 3 uses
  %i.ayr = sext i32 %i.ayi to i64
  %i.ays = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.ayr ; 3 uses
  %i.ayt = load i32, ptr %i.ays, align 4, !tbaa !58 ; 2 uses
  %i.ayu = icmp slt i32 %i.ayt, %i.ayi
  br i1 %i.ayu, label %.lr.ph.i.i2550.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2545.us

.lr.ph.i.i2550.us:                                ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2543.us, %.lr.ph.i.i2550.us
  %i.ayv = phi i32 [ %i.ayz, %.lr.ph.i.i2550.us ], [ %i.ayt, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2543.us ] ; 2 uses
  %i.ayw = phi ptr [ %i.ayy, %.lr.ph.i.i2550.us ], [ %i.ays, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2543.us ]
  store i32 %spec.select.i2544.us, ptr %i.ayw, align 4, !tbaa !58
  %i.ayx = sext i32 %i.ayv to i64
  %i.ayy = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.ayx ; 3 uses
  %i.ayz = load i32, ptr %i.ayy, align 4, !tbaa !58 ; 2 uses
  %i.aza = icmp slt i32 %i.ayz, %i.ayv
  br i1 %i.aza, label %.lr.ph.i.i2550.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2545.us, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2545.us: ; preds = %.lr.ph.i.i2550.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2543.us
  %.lcssa.i.i2546.us = phi ptr [ %i.ays, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2543.us ], [ %i.ayy, %.lr.ph.i.i2550.us ]
  store i32 %spec.select.i2544.us, ptr %.lcssa.i.i2546.us, align 4, !tbaa !58
  br label %bb.gi

bb.gi:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2545.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2539.us
  %.1.i2547.us = phi i32 [ %spec.select.i2544.us, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2545.us ], [ %.0.i.i2538.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2539.us ] ; 3 uses
  %i.azb = sext i32 %.1.i2533.us to i64
  %i.azc = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.azb ; 3 uses
  %i.azd = load i32, ptr %i.azc, align 4, !tbaa !58 ; 2 uses
  %i.aze = icmp slt i32 %i.azd, %.1.i2533.us
  br i1 %i.aze, label %.lr.ph.i21.i2549.us, label %.loopexit3170.us

.lr.ph.i21.i2549.us:                              ; preds = %bb.gi, %.lr.ph.i21.i2549.us
  %i.azf = phi i32 [ %i.azj, %.lr.ph.i21.i2549.us ], [ %i.azd, %bb.gi ] ; 2 uses
  %i.azg = phi ptr [ %i.azi, %.lr.ph.i21.i2549.us ], [ %i.azc, %bb.gi ]
  store i32 %.1.i2547.us, ptr %i.azg, align 4, !tbaa !58
  %i.azh = sext i32 %i.azf to i64
  %i.azi = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.azh ; 3 uses
  %i.azj = load i32, ptr %i.azi, align 4, !tbaa !58 ; 2 uses
  %i.azk = icmp slt i32 %i.azj, %i.azf
  br i1 %i.azk, label %.lr.ph.i21.i2549.us, label %.loopexit3170.us, !llvm.loop !4

.loopexit3170.us:                                 ; preds = %.lr.ph.i21.i2549.us, %bb.gi
  %.lcssa.i20.i2548.us = phi ptr [ %i.azc, %bb.gi ], [ %i.azi, %.lr.ph.i21.i2549.us ]
  store i32 %.1.i2547.us, ptr %.lcssa.i20.i2548.us, align 4, !tbaa !58
  %i.azl = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv
  store i32 %.1.i2547.us, ptr %i.azl, align 4, !tbaa !58
  br label %bb.qt

bb.gj:                                            ; preds = %bb.ft
  %i.azm = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.zz
  %i.azn = load i32, ptr %i.azm, align 4, !tbaa !58 ; 4 uses
  %i.azo = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.aad
  %i.azp = load i32, ptr %i.azo, align 4, !tbaa !58 ; 4 uses
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gk, %bb.gj
  %.0.i.i2552.us = phi i32 [ %i.azn, %bb.gj ], [ %i.azs, %bb.gk ] ; 4 uses
  %i.azq = sext i32 %.0.i.i2552.us to i64
  %i.azr = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.azq
  %i.azs = load i32, ptr %i.azr, align 4, !tbaa !58 ; 2 uses
  %i.azt = icmp slt i32 %i.azs, %.0.i.i2552.us
  br i1 %i.azt, label %bb.gk, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2553.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2553.us: ; preds = %bb.gk
  %.not.i2554.us = icmp eq i32 %i.azn, %i.azp
  br i1 %.not.i2554.us, label %bb.gl, label %.preheader.i2555.us

.preheader.i2555.us:                              ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2553.us, %.preheader.i2555.us
  %.0.i18.i2556.us = phi i32 [ %i.azw, %.preheader.i2555.us ], [ %i.azp, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2553.us ] ; 3 uses
  %i.azu = sext i32 %.0.i18.i2556.us to i64
  %i.azv = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.azu
  %i.azw = load i32, ptr %i.azv, align 4, !tbaa !58 ; 2 uses
  %i.azx = icmp slt i32 %i.azw, %.0.i18.i2556.us
  br i1 %i.azx, label %.preheader.i2555.us, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2557.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2557.us: ; preds = %.preheader.i2555.us
  %spec.select.i2558.us = tail call i32 @llvm.smin.i32(i32 %.0.i.i2552.us, i32 %.0.i18.i2556.us) ; 3 uses
  %i.azy = sext i32 %i.azp to i64
  %i.azz = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.azy ; 3 uses
  %i.baa = load i32, ptr %i.azz, align 4, !tbaa !58 ; 2 uses
  %i.bab = icmp slt i32 %i.baa, %i.azp
  br i1 %i.bab, label %.lr.ph.i.i2564.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2559.us

.lr.ph.i.i2564.us:                                ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2557.us, %.lr.ph.i.i2564.us
  %i.bac = phi i32 [ %i.bag, %.lr.ph.i.i2564.us ], [ %i.baa, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2557.us ] ; 2 uses
  %i.bad = phi ptr [ %i.baf, %.lr.ph.i.i2564.us ], [ %i.azz, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2557.us ]
  store i32 %spec.select.i2558.us, ptr %i.bad, align 4, !tbaa !58
  %i.bae = sext i32 %i.bac to i64
  %i.baf = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.bae ; 3 uses
  %i.bag = load i32, ptr %i.baf, align 4, !tbaa !58 ; 2 uses
  %i.bah = icmp slt i32 %i.bag, %i.bac
  br i1 %i.bah, label %.lr.ph.i.i2564.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2559.us, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2559.us: ; preds = %.lr.ph.i.i2564.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2557.us
  %.lcssa.i.i2560.us = phi ptr [ %i.azz, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2557.us ], [ %i.baf, %.lr.ph.i.i2564.us ]
  store i32 %spec.select.i2558.us, ptr %.lcssa.i.i2560.us, align 4, !tbaa !58
  br label %bb.gl

bb.gl:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2559.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2553.us
  %.1.i2561.us = phi i32 [ %spec.select.i2558.us, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2559.us ], [ %.0.i.i2552.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2553.us ] ; 3 uses
  %i.bai = sext i32 %i.azn to i64
  %i.baj = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.bai ; 3 uses
  %i.bak = load i32, ptr %i.baj, align 4, !tbaa !58 ; 2 uses
  %i.bal = icmp slt i32 %i.bak, %i.azn
  br i1 %i.bal, label %.lr.ph.i21.i2563.us, label %.loopexit3169.us

.lr.ph.i21.i2563.us:                              ; preds = %bb.gl, %.lr.ph.i21.i2563.us
  %i.bam = phi i32 [ %i.baq, %.lr.ph.i21.i2563.us ], [ %i.bak, %bb.gl ] ; 2 uses
  %i.ban = phi ptr [ %i.bap, %.lr.ph.i21.i2563.us ], [ %i.baj, %bb.gl ]
  store i32 %.1.i2561.us, ptr %i.ban, align 4, !tbaa !58
  %i.bao = sext i32 %i.bam to i64
  %i.bap = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.bao ; 3 uses
  %i.baq = load i32, ptr %i.bap, align 4, !tbaa !58 ; 2 uses
  %i.bar = icmp slt i32 %i.baq, %i.bam
  br i1 %i.bar, label %.lr.ph.i21.i2563.us, label %.loopexit3169.us, !llvm.loop !4

.loopexit3169.us:                                 ; preds = %.lr.ph.i21.i2563.us, %bb.gl
  %.lcssa.i20.i2562.us = phi ptr [ %i.baj, %bb.gl ], [ %i.bap, %.lr.ph.i21.i2563.us ]
  store i32 %.1.i2561.us, ptr %.lcssa.i20.i2562.us, align 4, !tbaa !58
  %i.bas = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv
  store i32 %.1.i2561.us, ptr %i.bas, align 4, !tbaa !58
  br label %bb.qt

bb.gm:                                            ; preds = %bb.dm, %bb.dl
  br i1 %.not2024.us, label %bb.hh, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.bat = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bu
  %i.bau = load i8, ptr %i.bat, align 1, !tbaa !32
  %.not1988.us = icmp eq i8 %i.bau, 0
  br i1 %.not1988.us, label %bb.gt, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.bav = add nsw i64 %indvars.iv, -2            ; 4 uses
  %i.baw = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bav
  %i.bax = load i8, ptr %i.baw, align 1, !tbaa !32
  %.not1994.us = icmp eq i8 %i.bax, 0
  br i1 %.not1994.us, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.bay = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bav
  %i.baz = load i32, ptr %i.bay, align 4, !tbaa !58
  %i.bba = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv
  store i32 %i.baz, ptr %i.bba, align 4, !tbaa !58
  br label %bb.qt

bb.gq:                                            ; preds = %bb.go
  %i.bbb = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bav
  %i.bbc = load i32, ptr %i.bbb, align 4, !tbaa !58 ; 4 uses
  %i.bbd = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bav
  %i.bbe = load i32, ptr %i.bbd, align 4, !tbaa !58 ; 4 uses
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gr, %bb.gq
  %.0.i.i2566.us = phi i32 [ %i.bbc, %bb.gq ], [ %i.bbh, %bb.gr ] ; 4 uses
  %i.bbf = sext i32 %.0.i.i2566.us to i64
  %i.bbg = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.bbf
  %i.bbh = load i32, ptr %i.bbg, align 4, !tbaa !58 ; 2 uses
  %i.bbi = icmp slt i32 %i.bbh, %.0.i.i2566.us
  br i1 %i.bbi, label %bb.gr, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2567.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2567.us: ; preds = %bb.gr
  %.not.i2568.us = icmp eq i32 %i.bbc, %i.bbe
  br i1 %.not.i2568.us, label %bb.gs, label %.preheader.i2569.us

.preheader.i2569.us:                              ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2567.us, %.preheader.i2569.us
  %.0.i18.i2570.us = phi i32 [ %i.bbl, %.preheader.i2569.us ], [ %i.bbe, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2567.us ] ; 3 uses
  %i.bbj = sext i32 %.0.i18.i2570.us to i64
  %i.bbk = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.bbj
  %i.bbl = load i32, ptr %i.bbk, align 4, !tbaa !58 ; 2 uses
  %i.bbm = icmp slt i32 %i.bbl, %.0.i18.i2570.us
  br i1 %i.bbm, label %.preheader.i2569.us, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2571.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2571.us: ; preds = %.preheader.i2569.us
  %spec.select.i2572.us = tail call i32 @llvm.smin.i32(i32 %.0.i.i2566.us, i32 %.0.i18.i2570.us) ; 3 uses
  %i.bbn = sext i32 %i.bbe to i64
  %i.bbo = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.bbn ; 3 uses
  %i.bbp = load i32, ptr %i.bbo, align 4, !tbaa !58 ; 2 uses
  %i.bbq = icmp slt i32 %i.bbp, %i.bbe
  br i1 %i.bbq, label %.lr.ph.i.i2578.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2573.us

.lr.ph.i.i2578.us:                                ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2571.us, %.lr.ph.i.i2578.us
  %i.bbr = phi i32 [ %i.bbv, %.lr.ph.i.i2578.us ], [ %i.bbp, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2571.us ] ; 2 uses
  %i.bbs = phi ptr [ %i.bbu, %.lr.ph.i.i2578.us ], [ %i.bbo, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2571.us ]
  store i32 %spec.select.i2572.us, ptr %i.bbs, align 4, !tbaa !58
  %i.bbt = sext i32 %i.bbr to i64
  %i.bbu = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.bbt ; 3 uses
  %i.bbv = load i32, ptr %i.bbu, align 4, !tbaa !58 ; 2 uses
  %i.bbw = icmp slt i32 %i.bbv, %i.bbr
  br i1 %i.bbw, label %.lr.ph.i.i2578.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2573.us, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2573.us: ; preds = %.lr.ph.i.i2578.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2571.us
  %.lcssa.i.i2574.us = phi ptr [ %i.bbo, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2571.us ], [ %i.bbu, %.lr.ph.i.i2578.us ]
  store i32 %spec.select.i2572.us, ptr %.lcssa.i.i2574.us, align 4, !tbaa !58
  br label %bb.gs

bb.gs:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2573.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2567.us
  %.1.i2575.us = phi i32 [ %spec.select.i2572.us, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2573.us ], [ %.0.i.i2566.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2567.us ] ; 3 uses
  %i.bbx = sext i32 %i.bbc to i64
  %i.bby = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.bbx ; 3 uses
  %i.bbz = load i32, ptr %i.bby, align 4, !tbaa !58 ; 2 uses
  %i.bca = icmp slt i32 %i.bbz, %i.bbc
  br i1 %i.bca, label %.lr.ph.i21.i2577.us, label %.loopexit3168.us

.lr.ph.i21.i2577.us:                              ; preds = %bb.gs, %.lr.ph.i21.i2577.us
  %i.bcb = phi i32 [ %i.bcf, %.lr.ph.i21.i2577.us ], [ %i.bbz, %bb.gs ] ; 2 uses
  %i.bcc = phi ptr [ %i.bce, %.lr.ph.i21.i2577.us ], [ %i.bby, %bb.gs ]
  store i32 %.1.i2575.us, ptr %i.bcc, align 4, !tbaa !58
  %i.bcd = sext i32 %i.bcb to i64
  %i.bce = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.bcd ; 3 uses
  %i.bcf = load i32, ptr %i.bce, align 4, !tbaa !58 ; 2 uses
  %i.bcg = icmp slt i32 %i.bcf, %i.bcb
  br i1 %i.bcg, label %.lr.ph.i21.i2577.us, label %.loopexit3168.us, !llvm.loop !4

.loopexit3168.us:                                 ; preds = %.lr.ph.i21.i2577.us, %bb.gs
  %.lcssa.i20.i2576.us = phi ptr [ %i.bby, %bb.gs ], [ %i.bce, %.lr.ph.i21.i2577.us ]
  store i32 %.1.i2575.us, ptr %.lcssa.i20.i2576.us, align 4, !tbaa !58
  %i.bch = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv
  store i32 %.1.i2575.us, ptr %i.bch, align 4, !tbaa !58
  br label %bb.qt

bb.gt:                                            ; preds = %bb.gn
  %i.bci = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv
  %i.bcj = load i8, ptr %i.bci, align 1, !tbaa !32
  %.not1990.us = icmp eq i8 %i.bcj, 0
  br i1 %.not1990.us, label %bb.hh, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.bck = add nsw i64 %indvars.iv, -2            ; 6 uses
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bck
  %i.bcm = load i8, ptr %i.bcl, align 1, !tbaa !32
  %.not1991.us = icmp eq i8 %i.bcm, 0
  br i1 %.not1991.us, label %bb.he, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bck
  %i.bco = load i8, ptr %i.bcn, align 1, !tbaa !32
  %.not1992.us = icmp eq i8 %i.bco, 0
  br i1 %.not1992.us, label %bb.hb, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bu
  %i.bcq = load i8, ptr %i.bcp, align 1, !tbaa !32
  %.not1993.us = icmp eq i8 %i.bcq, 0
  br i1 %.not1993.us, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.bcr = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bck
  %i.bcs = load i32, ptr %i.bcr, align 4, !tbaa !58
  %i.bct = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv
  store i32 %i.bcs, ptr %i.bct, align 4, !tbaa !58
  br label %bb.qt

bb.gy:                                            ; preds = %bb.gw
  %i.bcu = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv
  %i.bcv = load i32, ptr %i.bcu, align 4, !tbaa !58 ; 4 uses
  %i.bcw = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bck
  %i.bcx = load i32, ptr %i.bcw, align 4, !tbaa !58 ; 4 uses
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gz, %bb.gy
  %.0.i.i2580.us = phi i32 [ %i.bcv, %bb.gy ], [ %i.bda, %bb.gz ] ; 4 uses
  %i.bcy = sext i32 %.0.i.i2580.us to i64
  %i.bcz = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.bcy
  %i.bda = load i32, ptr %i.bcz, align 4, !tbaa !58 ; 2 uses
  %i.bdb = icmp slt i32 %i.bda, %.0.i.i2580.us
  br i1 %i.bdb, label %bb.gz, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2581.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2581.us: ; preds = %bb.gz
  %.not.i2582.us = icmp eq i32 %i.bcv, %i.bcx
  br i1 %.not.i2582.us, label %bb.ha, label %.preheader.i2583.us

.preheader.i2583.us:                              ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2581.us, %.preheader.i2583.us
  %.0.i18.i2584.us = phi i32 [ %i.bde, %.preheader.i2583.us ], [ %i.bcx, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2581.us ] ; 3 uses
  %i.bdc = sext i32 %.0.i18.i2584.us to i64
  %i.bdd = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.bdc
  %i.bde = load i32, ptr %i.bdd, align 4, !tbaa !58 ; 2 uses
  %i.bdf = icmp slt i32 %i.bde, %.0.i18.i2584.us
  br i1 %i.bdf, label %.preheader.i2583.us, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2585.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2585.us: ; preds = %.preheader.i2583.us
  %spec.select.i2586.us = tail call i32 @llvm.smin.i32(i32 %.0.i.i2580.us, i32 %.0.i18.i2584.us) ; 3 uses
  %i.bdg = sext i32 %i.bcx to i64
  %i.bdh = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.bdg ; 3 uses
  %i.bdi = load i32, ptr %i.bdh, align 4, !tbaa !58 ; 2 uses
  %i.bdj = icmp slt i32 %i.bdi, %i.bcx
  br i1 %i.bdj, label %.lr.ph.i.i2592.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2587.us

.lr.ph.i.i2592.us:                                ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2585.us, %.lr.ph.i.i2592.us
  %i.bdk = phi i32 [ %i.bdo, %.lr.ph.i.i2592.us ], [ %i.bdi, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2585.us ] ; 2 uses
  %i.bdl = phi ptr [ %i.bdn, %.lr.ph.i.i2592.us ], [ %i.bdh, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2585.us ]
  store i32 %spec.select.i2586.us, ptr %i.bdl, align 4, !tbaa !58
  %i.bdm = sext i32 %i.bdk to i64
  %i.bdn = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.bdm ; 3 uses
  %i.bdo = load i32, ptr %i.bdn, align 4, !tbaa !58 ; 2 uses
  %i.bdp = icmp slt i32 %i.bdo, %i.bdk
  br i1 %i.bdp, label %.lr.ph.i.i2592.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2587.us, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2587.us: ; preds = %.lr.ph.i.i2592.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2585.us
  %.lcssa.i.i2588.us = phi ptr [ %i.bdh, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2585.us ], [ %i.bdn, %.lr.ph.i.i2592.us ]
  store i32 %spec.select.i2586.us, ptr %.lcssa.i.i2588.us, align 4, !tbaa !58
  br label %bb.ha

bb.ha:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2587.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2581.us
  %.1.i2589.us = phi i32 [ %spec.select.i2586.us, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2587.us ], [ %.0.i.i2580.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2581.us ] ; 3 uses
  %i.bdq = sext i32 %i.bcv to i64
  %i.bdr = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.bdq ; 3 uses
  %i.bds = load i32, ptr %i.bdr, align 4, !tbaa !58 ; 2 uses
  %i.bdt = icmp slt i32 %i.bds, %i.bcv
  br i1 %i.bdt, label %.lr.ph.i21.i2591.us, label %.loopexit3167.us

.lr.ph.i21.i2591.us:                              ; preds = %bb.ha, %.lr.ph.i21.i2591.us
  %i.bdu = phi i32 [ %i.bdy, %.lr.ph.i21.i2591.us ], [ %i.bds, %bb.ha ] ; 2 uses
  %i.bdv = phi ptr [ %i.bdx, %.lr.ph.i21.i2591.us ], [ %i.bdr, %bb.ha ]
  store i32 %.1.i2589.us, ptr %i.bdv, align 4, !tbaa !58
  %i.bdw = sext i32 %i.bdu to i64
  %i.bdx = getelementptr inbounds [4 x i8], ptr %.sroa.03089.0, i64 %i.bdw ; 3 uses
  %i.bdy = load i32, ptr %i.bdx, align 4, !tbaa !58 ; 2 uses
  %i.bdz = icmp slt i32 %i.bdy, %i.bdu
  br i1 %i.bdz, label %.lr.ph.i21.i2591.us, label %.loopexit3167.us, !llvm.loop !4

.loopexit3167.us:                                 ; preds = %.lr.ph.i21.i2591.us, %bb.ha
  %.lcssa.i20.i2590.us = phi ptr [ %i.bdr, %bb.ha ], [ %i.bdx, %.lr.ph.i21.i2591.us ]
  store i32 %.1.i2589.us, ptr %.lcssa.i20.i2590.us, align 4, !tbaa !58
  %i.bea = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv
  store i32 %.1.i2589.us, ptr %i.bea, align 4, !tbaa !58
  br label %bb.qt
end_hunk_3
begin_hunk_4_@_ZN2cv19connectedcomponents13LabelingGranaIthNS0_9CCStatsOpEEclERKNS_3MatERS4_iRS2_:bb.a
  %i.xy = phi ptr [ %i.ya, %.lr.ph.i.i2262 ], [ %i.xu, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2255 ]
  store i16 %spec.select.i2256, ptr %i.xy, align 2, !tbaa !53
  %i.xz = zext i16 %i.xx to i64
  %i.ya = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.xz ; 3 uses
  %i.yb = load i16, ptr %i.ya, align 2, !tbaa !53 ; 2 uses
  %i.yc = icmp ult i16 %i.yb, %i.xx
  br i1 %i.yc, label %.lr.ph.i.i2262, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2257, !llvm.loop !1

_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2257: ; preds = %.lr.ph.i.i2262, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2255
  %.lcssa.i.i2258 = phi ptr [ %i.xu, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2255 ], [ %i.ya, %.lr.ph.i.i2262 ]
  store i16 %spec.select.i2256, ptr %.lcssa.i.i2258, align 2, !tbaa !53
  br label %bb.dl

bb.dl:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2257, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2251
  %.1.i2259 = phi i16 [ %spec.select.i2256, %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2257 ], [ %.0.i.i2250, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2251 ] ; 6 uses
  %i.yd = zext i16 %i.xi to i64
  %i.ye = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.yd ; 3 uses
  %i.yf = load i16, ptr %i.ye, align 2, !tbaa !53 ; 2 uses
  %i.yg = icmp ult i16 %i.yf, %i.xi
  br i1 %i.yg, label %.lr.ph.i18.i2261, label %.loopexit3342

.lr.ph.i18.i2261:                                 ; preds = %bb.dl, %.lr.ph.i18.i2261
  %i.yh = phi i16 [ %i.yl, %.lr.ph.i18.i2261 ], [ %i.yf, %bb.dl ] ; 2 uses
  %i.yi = phi ptr [ %i.yk, %.lr.ph.i18.i2261 ], [ %i.ye, %bb.dl ]
  store i16 %.1.i2259, ptr %i.yi, align 2, !tbaa !53
  %i.yj = zext i16 %i.yh to i64
  %i.yk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.yj ; 3 uses
  %i.yl = load i16, ptr %i.yk, align 2, !tbaa !53 ; 2 uses
  %i.ym = icmp ult i16 %i.yl, %i.yh
  br i1 %i.ym, label %.lr.ph.i18.i2261, label %.loopexit3342, !llvm.loop !1

.loopexit3342:                                    ; preds = %.lr.ph.i18.i2261, %bb.dl
  %.lcssa.i17.i2260 = phi ptr [ %i.ye, %bb.dl ], [ %i.yk, %.lr.ph.i18.i2261 ]
  store i16 %.1.i2259, ptr %.lcssa.i17.i2260, align 2, !tbaa !53
  %i.yn = getelementptr inbounds [2 x i8], ptr %i.cl, i64 %i.oi
  %i.yo = load i16, ptr %i.yn, align 2, !tbaa !53 ; 4 uses
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dm, %.loopexit3342
  %.0.i.i2264 = phi i16 [ %.1.i2259, %.loopexit3342 ], [ %i.yr, %bb.dm ] ; 4 uses
  %i.yp = zext i16 %.0.i.i2264 to i64
  %i.yq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.yp
  %i.yr = load i16, ptr %i.yq, align 2, !tbaa !53 ; 2 uses
  %i.ys = icmp ult i16 %i.yr, %.0.i.i2264
  br i1 %i.ys, label %bb.dm, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2265, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2265: ; preds = %bb.dm
  %.not.i2266 = icmp eq i16 %.1.i2259, %i.yo
  br i1 %.not.i2266, label %bb.dn, label %.preheader.i2267

.preheader.i2267:                                 ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2265, %.preheader.i2267
  %.0.i15.i2268 = phi i16 [ %i.yv, %.preheader.i2267 ], [ %i.yo, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2265 ] ; 3 uses
  %i.yt = zext i16 %.0.i15.i2268 to i64
  %i.yu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.yt
  %i.yv = load i16, ptr %i.yu, align 2, !tbaa !53 ; 2 uses
  %i.yw = icmp ult i16 %i.yv, %.0.i15.i2268
  br i1 %i.yw, label %.preheader.i2267, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2269, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2269: ; preds = %.preheader.i2267
  %spec.select.i2270 = tail call i16 @llvm.umin.i16(i16 %.0.i.i2264, i16 %.0.i15.i2268) ; 3 uses
  %i.yx = zext i16 %i.yo to i64
  %i.yy = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.yx ; 3 uses
  %i.yz = load i16, ptr %i.yy, align 2, !tbaa !53 ; 2 uses
  %i.za = icmp ult i16 %i.yz, %i.yo
  br i1 %i.za, label %.lr.ph.i.i2276, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2271

.lr.ph.i.i2276:                                   ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2269, %.lr.ph.i.i2276
  %i.zb = phi i16 [ %i.zf, %.lr.ph.i.i2276 ], [ %i.yz, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2269 ] ; 2 uses
  %i.zc = phi ptr [ %i.ze, %.lr.ph.i.i2276 ], [ %i.yy, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2269 ]
  store i16 %spec.select.i2270, ptr %i.zc, align 2, !tbaa !53
  %i.zd = zext i16 %i.zb to i64
  %i.ze = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.zd ; 3 uses
  %i.zf = load i16, ptr %i.ze, align 2, !tbaa !53 ; 2 uses
  %i.zg = icmp ult i16 %i.zf, %i.zb
  br i1 %i.zg, label %.lr.ph.i.i2276, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2271, !llvm.loop !1

_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2271: ; preds = %.lr.ph.i.i2276, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2269
  %.lcssa.i.i2272 = phi ptr [ %i.yy, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2269 ], [ %i.ze, %.lr.ph.i.i2276 ]
  store i16 %spec.select.i2270, ptr %.lcssa.i.i2272, align 2, !tbaa !53
  br label %bb.dn

bb.dn:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2271, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2265
  %.1.i2273 = phi i16 [ %spec.select.i2270, %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2271 ], [ %.0.i.i2264, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2265 ] ; 3 uses
  %i.zh = zext i16 %.1.i2259 to i64
  %i.zi = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.zh ; 3 uses
  %i.zj = load i16, ptr %i.zi, align 2, !tbaa !53 ; 2 uses
  %i.zk = icmp ult i16 %i.zj, %.1.i2259
  br i1 %i.zk, label %.lr.ph.i18.i2275, label %.loopexit3341

.lr.ph.i18.i2275:                                 ; preds = %bb.dn, %.lr.ph.i18.i2275
  %i.zl = phi i16 [ %i.zp, %.lr.ph.i18.i2275 ], [ %i.zj, %bb.dn ] ; 2 uses
  %i.zm = phi ptr [ %i.zo, %.lr.ph.i18.i2275 ], [ %i.zi, %bb.dn ]
  store i16 %.1.i2273, ptr %i.zm, align 2, !tbaa !53
  %i.zn = zext i16 %i.zl to i64
  %i.zo = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.zn ; 3 uses
  %i.zp = load i16, ptr %i.zo, align 2, !tbaa !53 ; 2 uses
  %i.zq = icmp ult i16 %i.zp, %i.zl
  br i1 %i.zq, label %.lr.ph.i18.i2275, label %.loopexit3341, !llvm.loop !1

.loopexit3341:                                    ; preds = %.lr.ph.i18.i2275, %bb.dn
  %.lcssa.i17.i2274 = phi ptr [ %i.zi, %bb.dn ], [ %i.zo, %.lr.ph.i18.i2275 ]
  store i16 %.1.i2273, ptr %.lcssa.i17.i2274, align 2, !tbaa !53
  %i.zr = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %indvars.iv
  store i16 %.1.i2273, ptr %i.zr, align 2, !tbaa !53
  br label %bb.rb

bb.do:                                            ; preds = %bb.de
  %i.zs = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %indvars.iv
  %i.zt = load i16, ptr %i.zs, align 2, !tbaa !53 ; 4 uses
  %i.zu = getelementptr inbounds [2 x i8], ptr %i.cl, i64 %i.oi
  %i.zv = load i16, ptr %i.zu, align 2, !tbaa !53 ; 4 uses
  br label %bb.dp

bb.dp:                                            ; preds = %bb.dp, %bb.do
  %.0.i.i2278 = phi i16 [ %i.zt, %bb.do ], [ %i.zy, %bb.dp ] ; 4 uses
  %i.zw = zext i16 %.0.i.i2278 to i64
  %i.zx = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.zw
  %i.zy = load i16, ptr %i.zx, align 2, !tbaa !53 ; 2 uses
  %i.zz = icmp ult i16 %i.zy, %.0.i.i2278
  br i1 %i.zz, label %bb.dp, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2279, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2279: ; preds = %bb.dp
  %.not.i2280 = icmp eq i16 %i.zt, %i.zv
  br i1 %.not.i2280, label %bb.dq, label %.preheader.i2281

.preheader.i2281:                                 ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2279, %.preheader.i2281
  %.0.i15.i2282 = phi i16 [ %i.aac, %.preheader.i2281 ], [ %i.zv, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2279 ] ; 3 uses
  %i.aaa = zext i16 %.0.i15.i2282 to i64
  %i.aab = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.aaa
  %i.aac = load i16, ptr %i.aab, align 2, !tbaa !53 ; 2 uses
  %i.aad = icmp ult i16 %i.aac, %.0.i15.i2282
  br i1 %i.aad, label %.preheader.i2281, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2283, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2283: ; preds = %.preheader.i2281
  %spec.select.i2284 = tail call i16 @llvm.umin.i16(i16 %.0.i.i2278, i16 %.0.i15.i2282) ; 3 uses
  %i.aae = zext i16 %i.zv to i64
  %i.aaf = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.aae ; 3 uses
  %i.aag = load i16, ptr %i.aaf, align 2, !tbaa !53 ; 2 uses
  %i.aah = icmp ult i16 %i.aag, %i.zv
  br i1 %i.aah, label %.lr.ph.i.i2290, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2285

.lr.ph.i.i2290:                                   ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2283, %.lr.ph.i.i2290
  %i.aai = phi i16 [ %i.aam, %.lr.ph.i.i2290 ], [ %i.aag, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2283 ] ; 2 uses
  %i.aaj = phi ptr [ %i.aal, %.lr.ph.i.i2290 ], [ %i.aaf, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2283 ]
  store i16 %spec.select.i2284, ptr %i.aaj, align 2, !tbaa !53
  %i.aak = zext i16 %i.aai to i64
  %i.aal = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.aak ; 3 uses
  %i.aam = load i16, ptr %i.aal, align 2, !tbaa !53 ; 2 uses
  %i.aan = icmp ult i16 %i.aam, %i.aai
  br i1 %i.aan, label %.lr.ph.i.i2290, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2285, !llvm.loop !1

_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2285: ; preds = %.lr.ph.i.i2290, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2283
  %.lcssa.i.i2286 = phi ptr [ %i.aaf, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2283 ], [ %i.aal, %.lr.ph.i.i2290 ]
  store i16 %spec.select.i2284, ptr %.lcssa.i.i2286, align 2, !tbaa !53
  br label %bb.dq

bb.dq:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2285, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2279
  %.1.i2287 = phi i16 [ %spec.select.i2284, %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2285 ], [ %.0.i.i2278, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2279 ] ; 3 uses
  %i.aao = zext i16 %i.zt to i64
  %i.aap = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.aao ; 3 uses
  %i.aaq = load i16, ptr %i.aap, align 2, !tbaa !53 ; 2 uses
  %i.aar = icmp ult i16 %i.aaq, %i.zt
  br i1 %i.aar, label %.lr.ph.i18.i2289, label %.loopexit3340

.lr.ph.i18.i2289:                                 ; preds = %bb.dq, %.lr.ph.i18.i2289
  %i.aas = phi i16 [ %i.aaw, %.lr.ph.i18.i2289 ], [ %i.aaq, %bb.dq ] ; 2 uses
  %i.aat = phi ptr [ %i.aav, %.lr.ph.i18.i2289 ], [ %i.aap, %bb.dq ]
  store i16 %.1.i2287, ptr %i.aat, align 2, !tbaa !53
  %i.aau = zext i16 %i.aas to i64
  %i.aav = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.aau ; 3 uses
  %i.aaw = load i16, ptr %i.aav, align 2, !tbaa !53 ; 2 uses
  %i.aax = icmp ult i16 %i.aaw, %i.aas
  br i1 %i.aax, label %.lr.ph.i18.i2289, label %.loopexit3340, !llvm.loop !1

.loopexit3340:                                    ; preds = %.lr.ph.i18.i2289, %bb.dq
  %.lcssa.i17.i2288 = phi ptr [ %i.aap, %bb.dq ], [ %i.aav, %.lr.ph.i18.i2289 ]
  store i16 %.1.i2287, ptr %.lcssa.i17.i2288, align 2, !tbaa !53
  %i.aay = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %indvars.iv
  store i16 %.1.i2287, ptr %i.aay, align 2, !tbaa !53
  br label %bb.rb

bb.dr:                                            ; preds = %bb.cb, %bb.ca
  br i1 %i.of, label %bb.hq, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.oe
  %i.aba = load i8, ptr %i.aaz, align 1, !tbaa !32
  %.not1981 = icmp eq i8 %i.aba, 0
  br i1 %.not1981, label %bb.hq, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.abb = add nuw nsw i64 %indvars.iv, 2         ; 17 uses
  %i.abc = icmp sge i64 %i.abb, %i.az
  %or.cond2055 = or i1 %.not2029, %i.abc
  br i1 %or.cond2055, label %bb.gu, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.abd = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.abb
  %i.abe = load i8, ptr %i.abd, align 1, !tbaa !32
  %.not1991 = icmp eq i8 %i.abe, 0
  br i1 %.not1991, label %bb.gu, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.abf = add nsw i64 %indvars.iv, -2            ; 24 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.abf
  %i.abh = load i8, ptr %i.abg, align 1, !tbaa !32
  %.not2000 = icmp eq i8 %i.abh, 0
  br i1 %.not2000, label %bb.fr, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.abi = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cv
  %i.abj = load i8, ptr %i.abi, align 1, !tbaa !32
  %.not2006 = icmp eq i8 %i.abj, 0
  %i.abk = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.oe
  %i.abl = load i8, ptr %i.abk, align 1, !tbaa !32
  %.not2007 = icmp eq i8 %i.abl, 0                ; 2 uses
  br i1 %.not2006, label %bb.ei, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  br i1 %.not2007, label %bb.ef, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.abm = getelementptr inbounds nuw i8, ptr %i.cf, i64 %indvars.iv
  %i.abn = load i8, ptr %i.abm, align 1, !tbaa !32
  %.not2016 = icmp eq i8 %i.abn, 0
  br i1 %.not2016, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.abo = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %i.abf
  %i.abp = load i16, ptr %i.abo, align 2, !tbaa !53
  %i.abq = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %indvars.iv
  store i16 %i.abp, ptr %i.abq, align 2, !tbaa !53
  br label %bb.rb

bb.ea:                                            ; preds = %bb.dy
  %i.abr = getelementptr inbounds nuw i8, ptr %i.cg, i64 %indvars.iv
  %i.abs = load i8, ptr %i.abr, align 1, !tbaa !32
  %.not2017 = icmp eq i8 %i.abs, 0
  br i1 %.not2017, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.abt = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %i.abf
  %i.abu = load i16, ptr %i.abt, align 2, !tbaa !53
  %i.abv = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %indvars.iv
  store i16 %i.abu, ptr %i.abv, align 2, !tbaa !53
  br label %bb.rb

bb.ec:                                            ; preds = %bb.ea
  %i.abw = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.abb
  %i.abx = load i16, ptr %i.abw, align 2, !tbaa !53 ; 4 uses
  %i.aby = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %i.abf
  %i.abz = load i16, ptr %i.aby, align 2, !tbaa !53 ; 4 uses
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ed, %bb.ec
  %.0.i.i2292 = phi i16 [ %i.abx, %bb.ec ], [ %i.acc, %bb.ed ] ; 4 uses
  %i.aca = zext i16 %.0.i.i2292 to i64
  %i.acb = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.aca
  %i.acc = load i16, ptr %i.acb, align 2, !tbaa !53 ; 2 uses
  %i.acd = icmp ult i16 %i.acc, %.0.i.i2292
  br i1 %i.acd, label %bb.ed, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2293, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2293: ; preds = %bb.ed
  %.not.i2294 = icmp eq i16 %i.abx, %i.abz
  br i1 %.not.i2294, label %bb.ee, label %.preheader.i2295

.preheader.i2295:                                 ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2293, %.preheader.i2295
  %.0.i15.i2296 = phi i16 [ %i.acg, %.preheader.i2295 ], [ %i.abz, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2293 ] ; 3 uses
  %i.ace = zext i16 %.0.i15.i2296 to i64
  %i.acf = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.ace
  %i.acg = load i16, ptr %i.acf, align 2, !tbaa !53 ; 2 uses
  %i.ach = icmp ult i16 %i.acg, %.0.i15.i2296
  br i1 %i.ach, label %.preheader.i2295, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2297, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2297: ; preds = %.preheader.i2295
  %spec.select.i2298 = tail call i16 @llvm.umin.i16(i16 %.0.i.i2292, i16 %.0.i15.i2296) ; 3 uses
  %i.aci = zext i16 %i.abz to i64
  %i.acj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.aci ; 3 uses
  %i.ack = load i16, ptr %i.acj, align 2, !tbaa !53 ; 2 uses
  %i.acl = icmp ult i16 %i.ack, %i.abz
  br i1 %i.acl, label %.lr.ph.i.i2304, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2299

.lr.ph.i.i2304:                                   ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2297, %.lr.ph.i.i2304
  %i.acm = phi i16 [ %i.acq, %.lr.ph.i.i2304 ], [ %i.ack, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2297 ] ; 2 uses
  %i.acn = phi ptr [ %i.acp, %.lr.ph.i.i2304 ], [ %i.acj, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2297 ]
  store i16 %spec.select.i2298, ptr %i.acn, align 2, !tbaa !53
  %i.aco = zext i16 %i.acm to i64
  %i.acp = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.aco ; 3 uses
  %i.acq = load i16, ptr %i.acp, align 2, !tbaa !53 ; 2 uses
  %i.acr = icmp ult i16 %i.acq, %i.acm
  br i1 %i.acr, label %.lr.ph.i.i2304, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2299, !llvm.loop !1

_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2299: ; preds = %.lr.ph.i.i2304, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2297
  %.lcssa.i.i2300 = phi ptr [ %i.acj, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2297 ], [ %i.acp, %.lr.ph.i.i2304 ]
  store i16 %spec.select.i2298, ptr %.lcssa.i.i2300, align 2, !tbaa !53
  br label %bb.ee

bb.ee:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2299, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2293
  %.1.i2301 = phi i16 [ %spec.select.i2298, %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2299 ], [ %.0.i.i2292, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2293 ] ; 3 uses
  %i.acs = zext i16 %i.abx to i64
  %i.act = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.acs ; 3 uses
  %i.acu = load i16, ptr %i.act, align 2, !tbaa !53 ; 2 uses
  %i.acv = icmp ult i16 %i.acu, %i.abx
  br i1 %i.acv, label %.lr.ph.i18.i2303, label %.loopexit3339

.lr.ph.i18.i2303:                                 ; preds = %bb.ee, %.lr.ph.i18.i2303
  %i.acw = phi i16 [ %i.ada, %.lr.ph.i18.i2303 ], [ %i.acu, %bb.ee ] ; 2 uses
  %i.acx = phi ptr [ %i.acz, %.lr.ph.i18.i2303 ], [ %i.act, %bb.ee ]
  store i16 %.1.i2301, ptr %i.acx, align 2, !tbaa !53
  %i.acy = zext i16 %i.acw to i64
  %i.acz = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.acy ; 3 uses
  %i.ada = load i16, ptr %i.acz, align 2, !tbaa !53 ; 2 uses
  %i.adb = icmp ult i16 %i.ada, %i.acw
  br i1 %i.adb, label %.lr.ph.i18.i2303, label %.loopexit3339, !llvm.loop !1

.loopexit3339:                                    ; preds = %.lr.ph.i18.i2303, %bb.ee
  %.lcssa.i17.i2302 = phi ptr [ %i.act, %bb.ee ], [ %i.acz, %.lr.ph.i18.i2303 ]
  store i16 %.1.i2301, ptr %.lcssa.i17.i2302, align 2, !tbaa !53
  %i.adc = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %indvars.iv
  store i16 %.1.i2301, ptr %i.adc, align 2, !tbaa !53
  br label %bb.rb

bb.ef:                                            ; preds = %bb.dx
  %i.add = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.abb
  %i.ade = load i16, ptr %i.add, align 2, !tbaa !53 ; 4 uses
  %i.adf = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %i.abf
  %i.adg = load i16, ptr %i.adf, align 2, !tbaa !53 ; 4 uses
  br label %bb.eg

bb.eg:                                            ; preds = %bb.eg, %bb.ef
  %.0.i.i2306 = phi i16 [ %i.ade, %bb.ef ], [ %i.adj, %bb.eg ] ; 4 uses
  %i.adh = zext i16 %.0.i.i2306 to i64
  %i.adi = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.adh
  %i.adj = load i16, ptr %i.adi, align 2, !tbaa !53 ; 2 uses
  %i.adk = icmp ult i16 %i.adj, %.0.i.i2306
  br i1 %i.adk, label %bb.eg, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2307, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2307: ; preds = %bb.eg
  %.not.i2308 = icmp eq i16 %i.ade, %i.adg
  br i1 %.not.i2308, label %bb.eh, label %.preheader.i2309

.preheader.i2309:                                 ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2307, %.preheader.i2309
  %.0.i15.i2310 = phi i16 [ %i.adn, %.preheader.i2309 ], [ %i.adg, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2307 ] ; 3 uses
  %i.adl = zext i16 %.0.i15.i2310 to i64
  %i.adm = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.adl
  %i.adn = load i16, ptr %i.adm, align 2, !tbaa !53 ; 2 uses
  %i.ado = icmp ult i16 %i.adn, %.0.i15.i2310
  br i1 %i.ado, label %.preheader.i2309, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2311, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2311: ; preds = %.preheader.i2309
  %spec.select.i2312 = tail call i16 @llvm.umin.i16(i16 %.0.i.i2306, i16 %.0.i15.i2310) ; 3 uses
  %i.adp = zext i16 %i.adg to i64
  %i.adq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.adp ; 3 uses
  %i.adr = load i16, ptr %i.adq, align 2, !tbaa !53 ; 2 uses
  %i.ads = icmp ult i16 %i.adr, %i.adg
  br i1 %i.ads, label %.lr.ph.i.i2318, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2313

.lr.ph.i.i2318:                                   ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2311, %.lr.ph.i.i2318
  %i.adt = phi i16 [ %i.adx, %.lr.ph.i.i2318 ], [ %i.adr, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2311 ] ; 2 uses
  %i.adu = phi ptr [ %i.adw, %.lr.ph.i.i2318 ], [ %i.adq, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2311 ]
  store i16 %spec.select.i2312, ptr %i.adu, align 2, !tbaa !53
  %i.adv = zext i16 %i.adt to i64
  %i.adw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.adv ; 3 uses
  %i.adx = load i16, ptr %i.adw, align 2, !tbaa !53 ; 2 uses
  %i.ady = icmp ult i16 %i.adx, %i.adt
  br i1 %i.ady, label %.lr.ph.i.i2318, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2313, !llvm.loop !1

_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2313: ; preds = %.lr.ph.i.i2318, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2311
  %.lcssa.i.i2314 = phi ptr [ %i.adq, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2311 ], [ %i.adw, %.lr.ph.i.i2318 ]
  store i16 %spec.select.i2312, ptr %.lcssa.i.i2314, align 2, !tbaa !53
  br label %bb.eh

bb.eh:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2313, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2307
  %.1.i2315 = phi i16 [ %spec.select.i2312, %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2313 ], [ %.0.i.i2306, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2307 ] ; 3 uses
  %i.adz = zext i16 %i.ade to i64
  %i.aea = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.adz ; 3 uses
  %i.aeb = load i16, ptr %i.aea, align 2, !tbaa !53 ; 2 uses
  %i.aec = icmp ult i16 %i.aeb, %i.ade
  br i1 %i.aec, label %.lr.ph.i18.i2317, label %.loopexit3338

.lr.ph.i18.i2317:                                 ; preds = %bb.eh, %.lr.ph.i18.i2317
  %i.aed = phi i16 [ %i.aeh, %.lr.ph.i18.i2317 ], [ %i.aeb, %bb.eh ] ; 2 uses
  %i.aee = phi ptr [ %i.aeg, %.lr.ph.i18.i2317 ], [ %i.aea, %bb.eh ]
  store i16 %.1.i2315, ptr %i.aee, align 2, !tbaa !53
  %i.aef = zext i16 %i.aed to i64
  %i.aeg = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.aef ; 3 uses
  %i.aeh = load i16, ptr %i.aeg, align 2, !tbaa !53 ; 2 uses
  %i.aei = icmp ult i16 %i.aeh, %i.aed
  br i1 %i.aei, label %.lr.ph.i18.i2317, label %.loopexit3338, !llvm.loop !1

.loopexit3338:                                    ; preds = %.lr.ph.i18.i2317, %bb.eh
  %.lcssa.i17.i2316 = phi ptr [ %i.aea, %bb.eh ], [ %i.aeg, %.lr.ph.i18.i2317 ]
  store i16 %.1.i2315, ptr %.lcssa.i17.i2316, align 2, !tbaa !53
  %i.aej = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %indvars.iv
  store i16 %.1.i2315, ptr %i.aej, align 2, !tbaa !53
  br label %bb.rb

bb.ei:                                            ; preds = %bb.dw
  br i1 %.not2007, label %bb.ey, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
end_hunk_4
begin_hunk_5_@_ZN2cv19connectedcomponents13LabelingGranaIthNS0_9CCStatsOpEEclERKNS_3MatERS4_iRS2_:bb.a

.preheader.i2533:                                 ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2531, %.preheader.i2533
  %.0.i15.i2534 = phi i16 [ %i.ayn, %.preheader.i2533 ], [ %i.ayg, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2531 ] ; 3 uses
  %i.ayl = zext i16 %.0.i15.i2534 to i64
  %i.aym = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.ayl
  %i.ayn = load i16, ptr %i.aym, align 2, !tbaa !53 ; 2 uses
  %i.ayo = icmp ult i16 %i.ayn, %.0.i15.i2534
  br i1 %i.ayo, label %.preheader.i2533, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2535, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2535: ; preds = %.preheader.i2533
  %spec.select.i2536 = tail call i16 @llvm.umin.i16(i16 %.0.i.i2530, i16 %.0.i15.i2534) ; 3 uses
  %i.ayp = zext i16 %i.ayg to i64
  %i.ayq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.ayp ; 3 uses
  %i.ayr = load i16, ptr %i.ayq, align 2, !tbaa !53 ; 2 uses
  %i.ays = icmp ult i16 %i.ayr, %i.ayg
  br i1 %i.ays, label %.lr.ph.i.i2542, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2537

.lr.ph.i.i2542:                                   ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2535, %.lr.ph.i.i2542
  %i.ayt = phi i16 [ %i.ayx, %.lr.ph.i.i2542 ], [ %i.ayr, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2535 ] ; 2 uses
  %i.ayu = phi ptr [ %i.ayw, %.lr.ph.i.i2542 ], [ %i.ayq, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2535 ]
  store i16 %spec.select.i2536, ptr %i.ayu, align 2, !tbaa !53
  %i.ayv = zext i16 %i.ayt to i64
  %i.ayw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.ayv ; 3 uses
  %i.ayx = load i16, ptr %i.ayw, align 2, !tbaa !53 ; 2 uses
  %i.ayy = icmp ult i16 %i.ayx, %i.ayt
  br i1 %i.ayy, label %.lr.ph.i.i2542, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2537, !llvm.loop !1

_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2537: ; preds = %.lr.ph.i.i2542, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2535
  %.lcssa.i.i2538 = phi ptr [ %i.ayq, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2535 ], [ %i.ayw, %.lr.ph.i.i2542 ]
  store i16 %spec.select.i2536, ptr %.lcssa.i.i2538, align 2, !tbaa !53
  br label %bb.go

bb.go:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2537, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2531
  %.1.i2539 = phi i16 [ %spec.select.i2536, %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2537 ], [ %.0.i.i2530, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2531 ] ; 6 uses
  %i.ayz = zext i16 %i.aye to i64
  %i.aza = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.ayz ; 3 uses
  %i.azb = load i16, ptr %i.aza, align 2, !tbaa !53 ; 2 uses
  %i.azc = icmp ult i16 %i.azb, %i.aye
  br i1 %i.azc, label %.lr.ph.i18.i2541, label %.loopexit3322

.lr.ph.i18.i2541:                                 ; preds = %bb.go, %.lr.ph.i18.i2541
  %i.azd = phi i16 [ %i.azh, %.lr.ph.i18.i2541 ], [ %i.azb, %bb.go ] ; 2 uses
  %i.aze = phi ptr [ %i.azg, %.lr.ph.i18.i2541 ], [ %i.aza, %bb.go ]
  store i16 %.1.i2539, ptr %i.aze, align 2, !tbaa !53
  %i.azf = zext i16 %i.azd to i64
  %i.azg = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.azf ; 3 uses
  %i.azh = load i16, ptr %i.azg, align 2, !tbaa !53 ; 2 uses
  %i.azi = icmp ult i16 %i.azh, %i.azd
  br i1 %i.azi, label %.lr.ph.i18.i2541, label %.loopexit3322, !llvm.loop !1

.loopexit3322:                                    ; preds = %.lr.ph.i18.i2541, %bb.go
  %.lcssa.i17.i2540 = phi ptr [ %i.aza, %bb.go ], [ %i.azg, %.lr.ph.i18.i2541 ]
  store i16 %.1.i2539, ptr %.lcssa.i17.i2540, align 2, !tbaa !53
  %i.azj = getelementptr inbounds [2 x i8], ptr %i.cl, i64 %i.abf
  %i.azk = load i16, ptr %i.azj, align 2, !tbaa !53 ; 4 uses
  br label %bb.gp

bb.gp:                                            ; preds = %bb.gp, %.loopexit3322
  %.0.i.i2544 = phi i16 [ %.1.i2539, %.loopexit3322 ], [ %i.azn, %bb.gp ] ; 4 uses
  %i.azl = zext i16 %.0.i.i2544 to i64
  %i.azm = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.azl
  %i.azn = load i16, ptr %i.azm, align 2, !tbaa !53 ; 2 uses
  %i.azo = icmp ult i16 %i.azn, %.0.i.i2544
  br i1 %i.azo, label %bb.gp, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2545, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2545: ; preds = %bb.gp
  %.not.i2546 = icmp eq i16 %.1.i2539, %i.azk
  br i1 %.not.i2546, label %bb.gq, label %.preheader.i2547

.preheader.i2547:                                 ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2545, %.preheader.i2547
  %.0.i15.i2548 = phi i16 [ %i.azr, %.preheader.i2547 ], [ %i.azk, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2545 ] ; 3 uses
  %i.azp = zext i16 %.0.i15.i2548 to i64
  %i.azq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.azp
  %i.azr = load i16, ptr %i.azq, align 2, !tbaa !53 ; 2 uses
  %i.azs = icmp ult i16 %i.azr, %.0.i15.i2548
  br i1 %i.azs, label %.preheader.i2547, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2549, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2549: ; preds = %.preheader.i2547
  %spec.select.i2550 = tail call i16 @llvm.umin.i16(i16 %.0.i.i2544, i16 %.0.i15.i2548) ; 3 uses
  %i.azt = zext i16 %i.azk to i64
  %i.azu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.azt ; 3 uses
  %i.azv = load i16, ptr %i.azu, align 2, !tbaa !53 ; 2 uses
  %i.azw = icmp ult i16 %i.azv, %i.azk
  br i1 %i.azw, label %.lr.ph.i.i2556, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2551

.lr.ph.i.i2556:                                   ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2549, %.lr.ph.i.i2556
  %i.azx = phi i16 [ %i.bab, %.lr.ph.i.i2556 ], [ %i.azv, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2549 ] ; 2 uses
  %i.azy = phi ptr [ %i.baa, %.lr.ph.i.i2556 ], [ %i.azu, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2549 ]
  store i16 %spec.select.i2550, ptr %i.azy, align 2, !tbaa !53
  %i.azz = zext i16 %i.azx to i64
  %i.baa = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.azz ; 3 uses
  %i.bab = load i16, ptr %i.baa, align 2, !tbaa !53 ; 2 uses
  %i.bac = icmp ult i16 %i.bab, %i.azx
  br i1 %i.bac, label %.lr.ph.i.i2556, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2551, !llvm.loop !1

_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2551: ; preds = %.lr.ph.i.i2556, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2549
  %.lcssa.i.i2552 = phi ptr [ %i.azu, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2549 ], [ %i.baa, %.lr.ph.i.i2556 ]
  store i16 %spec.select.i2550, ptr %.lcssa.i.i2552, align 2, !tbaa !53
  br label %bb.gq

bb.gq:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2551, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2545
  %.1.i2553 = phi i16 [ %spec.select.i2550, %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2551 ], [ %.0.i.i2544, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2545 ] ; 3 uses
  %i.bad = zext i16 %.1.i2539 to i64
  %i.bae = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.bad ; 3 uses
  %i.baf = load i16, ptr %i.bae, align 2, !tbaa !53 ; 2 uses
  %i.bag = icmp ult i16 %i.baf, %.1.i2539
  br i1 %i.bag, label %.lr.ph.i18.i2555, label %.loopexit3321

.lr.ph.i18.i2555:                                 ; preds = %bb.gq, %.lr.ph.i18.i2555
  %i.bah = phi i16 [ %i.bal, %.lr.ph.i18.i2555 ], [ %i.baf, %bb.gq ] ; 2 uses
  %i.bai = phi ptr [ %i.bak, %.lr.ph.i18.i2555 ], [ %i.bae, %bb.gq ]
  store i16 %.1.i2553, ptr %i.bai, align 2, !tbaa !53
  %i.baj = zext i16 %i.bah to i64
  %i.bak = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.baj ; 3 uses
  %i.bal = load i16, ptr %i.bak, align 2, !tbaa !53 ; 2 uses
  %i.bam = icmp ult i16 %i.bal, %i.bah
  br i1 %i.bam, label %.lr.ph.i18.i2555, label %.loopexit3321, !llvm.loop !1

.loopexit3321:                                    ; preds = %.lr.ph.i18.i2555, %bb.gq
  %.lcssa.i17.i2554 = phi ptr [ %i.bae, %bb.gq ], [ %i.bak, %.lr.ph.i18.i2555 ]
  store i16 %.1.i2553, ptr %.lcssa.i17.i2554, align 2, !tbaa !53
  %i.ban = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %indvars.iv
  store i16 %.1.i2553, ptr %i.ban, align 2, !tbaa !53
  br label %bb.rb

bb.gr:                                            ; preds = %bb.gb
  %i.bao = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.abb
  %i.bap = load i16, ptr %i.bao, align 2, !tbaa !53 ; 4 uses
  %i.baq = getelementptr inbounds [2 x i8], ptr %i.cl, i64 %i.abf
  %i.bar = load i16, ptr %i.baq, align 2, !tbaa !53 ; 4 uses
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gs, %bb.gr
  %.0.i.i2558 = phi i16 [ %i.bap, %bb.gr ], [ %i.bau, %bb.gs ] ; 4 uses
  %i.bas = zext i16 %.0.i.i2558 to i64
  %i.bat = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.bas
  %i.bau = load i16, ptr %i.bat, align 2, !tbaa !53 ; 2 uses
  %i.bav = icmp ult i16 %i.bau, %.0.i.i2558
  br i1 %i.bav, label %bb.gs, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2559, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2559: ; preds = %bb.gs
  %.not.i2560 = icmp eq i16 %i.bap, %i.bar
  br i1 %.not.i2560, label %bb.gt, label %.preheader.i2561

.preheader.i2561:                                 ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2559, %.preheader.i2561
  %.0.i15.i2562 = phi i16 [ %i.bay, %.preheader.i2561 ], [ %i.bar, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2559 ] ; 3 uses
  %i.baw = zext i16 %.0.i15.i2562 to i64
  %i.bax = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.baw
  %i.bay = load i16, ptr %i.bax, align 2, !tbaa !53 ; 2 uses
  %i.baz = icmp ult i16 %i.bay, %.0.i15.i2562
  br i1 %i.baz, label %.preheader.i2561, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2563, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2563: ; preds = %.preheader.i2561
  %spec.select.i2564 = tail call i16 @llvm.umin.i16(i16 %.0.i.i2558, i16 %.0.i15.i2562) ; 3 uses
  %i.bba = zext i16 %i.bar to i64
  %i.bbb = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.bba ; 3 uses
  %i.bbc = load i16, ptr %i.bbb, align 2, !tbaa !53 ; 2 uses
  %i.bbd = icmp ult i16 %i.bbc, %i.bar
  br i1 %i.bbd, label %.lr.ph.i.i2570, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2565

.lr.ph.i.i2570:                                   ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2563, %.lr.ph.i.i2570
  %i.bbe = phi i16 [ %i.bbi, %.lr.ph.i.i2570 ], [ %i.bbc, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2563 ] ; 2 uses
  %i.bbf = phi ptr [ %i.bbh, %.lr.ph.i.i2570 ], [ %i.bbb, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2563 ]
  store i16 %spec.select.i2564, ptr %i.bbf, align 2, !tbaa !53
  %i.bbg = zext i16 %i.bbe to i64
  %i.bbh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.bbg ; 3 uses
  %i.bbi = load i16, ptr %i.bbh, align 2, !tbaa !53 ; 2 uses
  %i.bbj = icmp ult i16 %i.bbi, %i.bbe
  br i1 %i.bbj, label %.lr.ph.i.i2570, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2565, !llvm.loop !1

_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2565: ; preds = %.lr.ph.i.i2570, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2563
  %.lcssa.i.i2566 = phi ptr [ %i.bbb, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2563 ], [ %i.bbh, %.lr.ph.i.i2570 ]
  store i16 %spec.select.i2564, ptr %.lcssa.i.i2566, align 2, !tbaa !53
  br label %bb.gt

bb.gt:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2565, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2559
  %.1.i2567 = phi i16 [ %spec.select.i2564, %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2565 ], [ %.0.i.i2558, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2559 ] ; 3 uses
  %i.bbk = zext i16 %i.bap to i64
  %i.bbl = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.bbk ; 3 uses
  %i.bbm = load i16, ptr %i.bbl, align 2, !tbaa !53 ; 2 uses
  %i.bbn = icmp ult i16 %i.bbm, %i.bap
  br i1 %i.bbn, label %.lr.ph.i18.i2569, label %.loopexit3320

.lr.ph.i18.i2569:                                 ; preds = %bb.gt, %.lr.ph.i18.i2569
  %i.bbo = phi i16 [ %i.bbs, %.lr.ph.i18.i2569 ], [ %i.bbm, %bb.gt ] ; 2 uses
  %i.bbp = phi ptr [ %i.bbr, %.lr.ph.i18.i2569 ], [ %i.bbl, %bb.gt ]
  store i16 %.1.i2567, ptr %i.bbp, align 2, !tbaa !53
  %i.bbq = zext i16 %i.bbo to i64
  %i.bbr = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.bbq ; 3 uses
  %i.bbs = load i16, ptr %i.bbr, align 2, !tbaa !53 ; 2 uses
  %i.bbt = icmp ult i16 %i.bbs, %i.bbo
  br i1 %i.bbt, label %.lr.ph.i18.i2569, label %.loopexit3320, !llvm.loop !1

.loopexit3320:                                    ; preds = %.lr.ph.i18.i2569, %bb.gt
  %.lcssa.i17.i2568 = phi ptr [ %i.bbl, %bb.gt ], [ %i.bbr, %.lr.ph.i18.i2569 ]
  store i16 %.1.i2567, ptr %.lcssa.i17.i2568, align 2, !tbaa !53
  %i.bbu = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %indvars.iv
  store i16 %.1.i2567, ptr %i.bbu, align 2, !tbaa !53
  br label %bb.rb

bb.gu:                                            ; preds = %bb.dt, %bb.du
  br i1 %.not2029, label %bb.hp, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cv
  %i.bbw = load i8, ptr %i.bbv, align 1, !tbaa !32
  %.not1993 = icmp eq i8 %i.bbw, 0
  br i1 %.not1993, label %bb.hb, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.bbx = add nsw i64 %indvars.iv, -2            ; 4 uses
  %i.bby = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bbx
  %i.bbz = load i8, ptr %i.bby, align 1, !tbaa !32
  %.not1999 = icmp eq i8 %i.bbz, 0
  br i1 %.not1999, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.bca = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %i.bbx
  %i.bcb = load i16, ptr %i.bca, align 2, !tbaa !53
  %i.bcc = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %indvars.iv
  store i16 %i.bcb, ptr %i.bcc, align 2, !tbaa !53
  br label %bb.rb

bb.gy:                                            ; preds = %bb.gw
  %i.bcd = getelementptr inbounds [2 x i8], ptr %i.co, i64 %i.bbx
  %i.bce = load i16, ptr %i.bcd, align 2, !tbaa !53 ; 4 uses
  %i.bcf = getelementptr inbounds [2 x i8], ptr %i.cl, i64 %i.bbx
  %i.bcg = load i16, ptr %i.bcf, align 2, !tbaa !53 ; 4 uses
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gz, %bb.gy
  %.0.i.i2572 = phi i16 [ %i.bce, %bb.gy ], [ %i.bcj, %bb.gz ] ; 4 uses
  %i.bch = zext i16 %.0.i.i2572 to i64
  %i.bci = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.bch
  %i.bcj = load i16, ptr %i.bci, align 2, !tbaa !53 ; 2 uses
  %i.bck = icmp ult i16 %i.bcj, %.0.i.i2572
  br i1 %i.bck, label %bb.gz, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2573, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2573: ; preds = %bb.gz
  %.not.i2574 = icmp eq i16 %i.bce, %i.bcg
  br i1 %.not.i2574, label %bb.ha, label %.preheader.i2575

.preheader.i2575:                                 ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2573, %.preheader.i2575
  %.0.i15.i2576 = phi i16 [ %i.bcn, %.preheader.i2575 ], [ %i.bcg, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2573 ] ; 3 uses
  %i.bcl = zext i16 %.0.i15.i2576 to i64
  %i.bcm = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.bcl
  %i.bcn = load i16, ptr %i.bcm, align 2, !tbaa !53 ; 2 uses
  %i.bco = icmp ult i16 %i.bcn, %.0.i15.i2576
  br i1 %i.bco, label %.preheader.i2575, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2577, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2577: ; preds = %.preheader.i2575
  %spec.select.i2578 = tail call i16 @llvm.umin.i16(i16 %.0.i.i2572, i16 %.0.i15.i2576) ; 3 uses
  %i.bcp = zext i16 %i.bcg to i64
  %i.bcq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.bcp ; 3 uses
  %i.bcr = load i16, ptr %i.bcq, align 2, !tbaa !53 ; 2 uses
  %i.bcs = icmp ult i16 %i.bcr, %i.bcg
  br i1 %i.bcs, label %.lr.ph.i.i2584, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2579

.lr.ph.i.i2584:                                   ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2577, %.lr.ph.i.i2584
  %i.bct = phi i16 [ %i.bcx, %.lr.ph.i.i2584 ], [ %i.bcr, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2577 ] ; 2 uses
  %i.bcu = phi ptr [ %i.bcw, %.lr.ph.i.i2584 ], [ %i.bcq, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2577 ]
  store i16 %spec.select.i2578, ptr %i.bcu, align 2, !tbaa !53
  %i.bcv = zext i16 %i.bct to i64
  %i.bcw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.bcv ; 3 uses
  %i.bcx = load i16, ptr %i.bcw, align 2, !tbaa !53 ; 2 uses
  %i.bcy = icmp ult i16 %i.bcx, %i.bct
  br i1 %i.bcy, label %.lr.ph.i.i2584, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2579, !llvm.loop !1

_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2579: ; preds = %.lr.ph.i.i2584, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2577
  %.lcssa.i.i2580 = phi ptr [ %i.bcq, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2577 ], [ %i.bcw, %.lr.ph.i.i2584 ]
  store i16 %spec.select.i2578, ptr %.lcssa.i.i2580, align 2, !tbaa !53
  br label %bb.ha

bb.ha:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2579, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2573
  %.1.i2581 = phi i16 [ %spec.select.i2578, %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2579 ], [ %.0.i.i2572, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2573 ] ; 3 uses
  %i.bcz = zext i16 %i.bce to i64
  %i.bda = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.bcz ; 3 uses
  %i.bdb = load i16, ptr %i.bda, align 2, !tbaa !53 ; 2 uses
  %i.bdc = icmp ult i16 %i.bdb, %i.bce
  br i1 %i.bdc, label %.lr.ph.i18.i2583, label %.loopexit3319

.lr.ph.i18.i2583:                                 ; preds = %bb.ha, %.lr.ph.i18.i2583
  %i.bdd = phi i16 [ %i.bdh, %.lr.ph.i18.i2583 ], [ %i.bdb, %bb.ha ] ; 2 uses
  %i.bde = phi ptr [ %i.bdg, %.lr.ph.i18.i2583 ], [ %i.bda, %bb.ha ]
  store i16 %.1.i2581, ptr %i.bde, align 2, !tbaa !53
  %i.bdf = zext i16 %i.bdd to i64
  %i.bdg = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.bdf ; 3 uses
  %i.bdh = load i16, ptr %i.bdg, align 2, !tbaa !53 ; 2 uses
  %i.bdi = icmp ult i16 %i.bdh, %i.bdd
  br i1 %i.bdi, label %.lr.ph.i18.i2583, label %.loopexit3319, !llvm.loop !1

.loopexit3319:                                    ; preds = %.lr.ph.i18.i2583, %bb.ha
  %.lcssa.i17.i2582 = phi ptr [ %i.bda, %bb.ha ], [ %i.bdg, %.lr.ph.i18.i2583 ]
  store i16 %.1.i2581, ptr %.lcssa.i17.i2582, align 2, !tbaa !53
  %i.bdj = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %indvars.iv
  store i16 %.1.i2581, ptr %i.bdj, align 2, !tbaa !53
  br label %bb.rb

bb.hb:                                            ; preds = %bb.gv
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.cf, i64 %indvars.iv
  %i.bdl = load i8, ptr %i.bdk, align 1, !tbaa !32
  %.not1995 = icmp eq i8 %i.bdl, 0
  br i1 %.not1995, label %bb.hp, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.bdm = add nsw i64 %indvars.iv, -2            ; 6 uses
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bdm
  %i.bdo = load i8, ptr %i.bdn, align 1, !tbaa !32
  %.not1996 = icmp eq i8 %i.bdo, 0
  br i1 %.not1996, label %bb.hm, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.bdm
  %i.bdq = load i8, ptr %i.bdp, align 1, !tbaa !32
  %.not1997 = icmp eq i8 %i.bdq, 0
  br i1 %.not1997, label %bb.hj, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cv
  %i.bds = load i8, ptr %i.bdr, align 1, !tbaa !32
  %.not1998 = icmp eq i8 %i.bds, 0
  br i1 %.not1998, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.bdt = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %i.bdm
  %i.bdu = load i16, ptr %i.bdt, align 2, !tbaa !53
  %i.bdv = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %indvars.iv
  store i16 %i.bdu, ptr %i.bdv, align 2, !tbaa !53
  br label %bb.rb

bb.hg:                                            ; preds = %bb.he
  %i.bdw = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %indvars.iv
  %i.bdx = load i16, ptr %i.bdw, align 2, !tbaa !53 ; 4 uses
  %i.bdy = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %i.bdm
  %i.bdz = load i16, ptr %i.bdy, align 2, !tbaa !53 ; 4 uses
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hh, %bb.hg
  %.0.i.i2586 = phi i16 [ %i.bdx, %bb.hg ], [ %i.bec, %bb.hh ] ; 4 uses
  %i.bea = zext i16 %.0.i.i2586 to i64
  %i.beb = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.bea
  %i.bec = load i16, ptr %i.beb, align 2, !tbaa !53 ; 2 uses
  %i.bed = icmp ult i16 %i.bec, %.0.i.i2586
  br i1 %i.bed, label %bb.hh, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2587, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2587: ; preds = %bb.hh
  %.not.i2588 = icmp eq i16 %i.bdx, %i.bdz
  br i1 %.not.i2588, label %bb.hi, label %.preheader.i2589

.preheader.i2589:                                 ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2587, %.preheader.i2589
  %.0.i15.i2590 = phi i16 [ %i.beg, %.preheader.i2589 ], [ %i.bdz, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2587 ] ; 3 uses
  %i.bee = zext i16 %.0.i15.i2590 to i64
  %i.bef = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.bee
  %i.beg = load i16, ptr %i.bef, align 2, !tbaa !53 ; 2 uses
  %i.beh = icmp ult i16 %i.beg, %.0.i15.i2590
  br i1 %i.beh, label %.preheader.i2589, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2591, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2591: ; preds = %.preheader.i2589
  %spec.select.i2592 = tail call i16 @llvm.umin.i16(i16 %.0.i.i2586, i16 %.0.i15.i2590) ; 3 uses
  %i.bei = zext i16 %i.bdz to i64
  %i.bej = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.bei ; 3 uses
  %i.bek = load i16, ptr %i.bej, align 2, !tbaa !53 ; 2 uses
  %i.bel = icmp ult i16 %i.bek, %i.bdz
  br i1 %i.bel, label %.lr.ph.i.i2598, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2593

.lr.ph.i.i2598:                                   ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2591, %.lr.ph.i.i2598
  %i.bem = phi i16 [ %i.beq, %.lr.ph.i.i2598 ], [ %i.bek, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2591 ] ; 2 uses
  %i.ben = phi ptr [ %i.bep, %.lr.ph.i.i2598 ], [ %i.bej, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2591 ]
  store i16 %spec.select.i2592, ptr %i.ben, align 2, !tbaa !53
  %i.beo = zext i16 %i.bem to i64
  %i.bep = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.beo ; 3 uses
  %i.beq = load i16, ptr %i.bep, align 2, !tbaa !53 ; 2 uses
  %i.ber = icmp ult i16 %i.beq, %i.bem
  br i1 %i.ber, label %.lr.ph.i.i2598, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2593, !llvm.loop !1

_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2593: ; preds = %.lr.ph.i.i2598, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2591
  %.lcssa.i.i2594 = phi ptr [ %i.bej, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i2591 ], [ %i.bep, %.lr.ph.i.i2598 ]
  store i16 %spec.select.i2592, ptr %.lcssa.i.i2594, align 2, !tbaa !53
  br label %bb.hi

bb.hi:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2593, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2587
  %.1.i2595 = phi i16 [ %spec.select.i2592, %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i2593 ], [ %.0.i.i2586, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i2587 ] ; 3 uses
  %i.bes = zext i16 %i.bdx to i64
  %i.bet = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.bes ; 3 uses
  %i.beu = load i16, ptr %i.bet, align 2, !tbaa !53 ; 2 uses
  %i.bev = icmp ult i16 %i.beu, %i.bdx
  br i1 %i.bev, label %.lr.ph.i18.i2597, label %.loopexit3318

.lr.ph.i18.i2597:                                 ; preds = %bb.hi, %.lr.ph.i18.i2597
  %i.bew = phi i16 [ %i.bfa, %.lr.ph.i18.i2597 ], [ %i.beu, %bb.hi ] ; 2 uses
  %i.bex = phi ptr [ %i.bez, %.lr.ph.i18.i2597 ], [ %i.bet, %bb.hi ]
  store i16 %.1.i2595, ptr %i.bex, align 2, !tbaa !53
  %i.bey = zext i16 %i.bew to i64
  %i.bez = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.bey ; 3 uses
  %i.bfa = load i16, ptr %i.bez, align 2, !tbaa !53 ; 2 uses
  %i.bfb = icmp ult i16 %i.bfa, %i.bew
  br i1 %i.bfb, label %.lr.ph.i18.i2597, label %.loopexit3318, !llvm.loop !1

.loopexit3318:                                    ; preds = %.lr.ph.i18.i2597, %bb.hi
  %.lcssa.i17.i2596 = phi ptr [ %i.bet, %bb.hi ], [ %i.bez, %.lr.ph.i18.i2597 ]
  store i16 %.1.i2595, ptr %.lcssa.i17.i2596, align 2, !tbaa !53
  %i.bfc = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %indvars.iv
  store i16 %.1.i2595, ptr %i.bfc, align 2, !tbaa !53
  br label %bb.rb
end_hunk_5
begin_hunk_6_@_ZN2cv19connectedcomponents13LabelingGranaIihNS0_9CCStatsOpEEclERKNS_3MatERS4_iRS2_:bb.a
  %i.xx = phi ptr [ %i.xz, %.lr.ph.i.i2262 ], [ %i.xt, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2255 ]
  store i32 %spec.select.i2256, ptr %i.xx, align 4, !tbaa !58
  %i.xy = sext i32 %i.xw to i64
  %i.xz = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.xy ; 3 uses
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !58 ; 2 uses
  %i.yb = icmp slt i32 %i.ya, %i.xw
  br i1 %i.yb, label %.lr.ph.i.i2262, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2257, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2257: ; preds = %.lr.ph.i.i2262, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2255
  %.lcssa.i.i2258 = phi ptr [ %i.xt, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2255 ], [ %i.xz, %.lr.ph.i.i2262 ]
  store i32 %spec.select.i2256, ptr %.lcssa.i.i2258, align 4, !tbaa !58
  br label %bb.dl

bb.dl:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2257, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2251
  %.1.i2259 = phi i32 [ %spec.select.i2256, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2257 ], [ %.0.i.i2250, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2251 ] ; 6 uses
  %i.yc = sext i32 %i.xh to i64
  %i.yd = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.yc ; 3 uses
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !58 ; 2 uses
  %i.yf = icmp slt i32 %i.ye, %i.xh
  br i1 %i.yf, label %.lr.ph.i21.i2261, label %.loopexit3342

.lr.ph.i21.i2261:                                 ; preds = %bb.dl, %.lr.ph.i21.i2261
  %i.yg = phi i32 [ %i.yk, %.lr.ph.i21.i2261 ], [ %i.ye, %bb.dl ] ; 2 uses
  %i.yh = phi ptr [ %i.yj, %.lr.ph.i21.i2261 ], [ %i.yd, %bb.dl ]
  store i32 %.1.i2259, ptr %i.yh, align 4, !tbaa !58
  %i.yi = sext i32 %i.yg to i64
  %i.yj = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.yi ; 3 uses
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !58 ; 2 uses
  %i.yl = icmp slt i32 %i.yk, %i.yg
  br i1 %i.yl, label %.lr.ph.i21.i2261, label %.loopexit3342, !llvm.loop !4

.loopexit3342:                                    ; preds = %.lr.ph.i21.i2261, %bb.dl
  %.lcssa.i20.i2260 = phi ptr [ %i.yd, %bb.dl ], [ %i.yj, %.lr.ph.i21.i2261 ]
  store i32 %.1.i2259, ptr %.lcssa.i20.i2260, align 4, !tbaa !58
  %i.ym = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.oh
  %i.yn = load i32, ptr %i.ym, align 4, !tbaa !58 ; 4 uses
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dm, %.loopexit3342
  %.0.i.i2264 = phi i32 [ %.1.i2259, %.loopexit3342 ], [ %i.yq, %bb.dm ] ; 4 uses
  %i.yo = sext i32 %.0.i.i2264 to i64
  %i.yp = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.yo
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !58 ; 2 uses
  %i.yr = icmp slt i32 %i.yq, %.0.i.i2264
  br i1 %i.yr, label %bb.dm, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2265, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2265: ; preds = %bb.dm
  %.not.i2266 = icmp eq i32 %.1.i2259, %i.yn
  br i1 %.not.i2266, label %bb.dn, label %.preheader.i2267

.preheader.i2267:                                 ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2265, %.preheader.i2267
  %.0.i18.i2268 = phi i32 [ %i.yu, %.preheader.i2267 ], [ %i.yn, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2265 ] ; 3 uses
  %i.ys = sext i32 %.0.i18.i2268 to i64
  %i.yt = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.ys
  %i.yu = load i32, ptr %i.yt, align 4, !tbaa !58 ; 2 uses
  %i.yv = icmp slt i32 %i.yu, %.0.i18.i2268
  br i1 %i.yv, label %.preheader.i2267, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2269, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2269: ; preds = %.preheader.i2267
  %spec.select.i2270 = tail call i32 @llvm.smin.i32(i32 %.0.i.i2264, i32 %.0.i18.i2268) ; 3 uses
  %i.yw = sext i32 %i.yn to i64
  %i.yx = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.yw ; 3 uses
  %i.yy = load i32, ptr %i.yx, align 4, !tbaa !58 ; 2 uses
  %i.yz = icmp slt i32 %i.yy, %i.yn
  br i1 %i.yz, label %.lr.ph.i.i2276, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2271

.lr.ph.i.i2276:                                   ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2269, %.lr.ph.i.i2276
  %i.za = phi i32 [ %i.ze, %.lr.ph.i.i2276 ], [ %i.yy, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2269 ] ; 2 uses
  %i.zb = phi ptr [ %i.zd, %.lr.ph.i.i2276 ], [ %i.yx, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2269 ]
  store i32 %spec.select.i2270, ptr %i.zb, align 4, !tbaa !58
  %i.zc = sext i32 %i.za to i64
  %i.zd = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.zc ; 3 uses
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !58 ; 2 uses
  %i.zf = icmp slt i32 %i.ze, %i.za
  br i1 %i.zf, label %.lr.ph.i.i2276, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2271, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2271: ; preds = %.lr.ph.i.i2276, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2269
  %.lcssa.i.i2272 = phi ptr [ %i.yx, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2269 ], [ %i.zd, %.lr.ph.i.i2276 ]
  store i32 %spec.select.i2270, ptr %.lcssa.i.i2272, align 4, !tbaa !58
  br label %bb.dn

bb.dn:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2271, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2265
  %.1.i2273 = phi i32 [ %spec.select.i2270, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2271 ], [ %.0.i.i2264, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2265 ] ; 3 uses
  %i.zg = sext i32 %.1.i2259 to i64
  %i.zh = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.zg ; 3 uses
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !58 ; 2 uses
  %i.zj = icmp slt i32 %i.zi, %.1.i2259
  br i1 %i.zj, label %.lr.ph.i21.i2275, label %.loopexit3341

.lr.ph.i21.i2275:                                 ; preds = %bb.dn, %.lr.ph.i21.i2275
  %i.zk = phi i32 [ %i.zo, %.lr.ph.i21.i2275 ], [ %i.zi, %bb.dn ] ; 2 uses
  %i.zl = phi ptr [ %i.zn, %.lr.ph.i21.i2275 ], [ %i.zh, %bb.dn ]
  store i32 %.1.i2273, ptr %i.zl, align 4, !tbaa !58
  %i.zm = sext i32 %i.zk to i64
  %i.zn = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.zm ; 3 uses
  %i.zo = load i32, ptr %i.zn, align 4, !tbaa !58 ; 2 uses
  %i.zp = icmp slt i32 %i.zo, %i.zk
  br i1 %i.zp, label %.lr.ph.i21.i2275, label %.loopexit3341, !llvm.loop !4

.loopexit3341:                                    ; preds = %.lr.ph.i21.i2275, %bb.dn
  %.lcssa.i20.i2274 = phi ptr [ %i.zh, %bb.dn ], [ %i.zn, %.lr.ph.i21.i2275 ]
  store i32 %.1.i2273, ptr %.lcssa.i20.i2274, align 4, !tbaa !58
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv
  store i32 %.1.i2273, ptr %i.zq, align 4, !tbaa !58
  br label %bb.rb

bb.do:                                            ; preds = %bb.de
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv
  %i.zs = load i32, ptr %i.zr, align 4, !tbaa !58 ; 4 uses
  %i.zt = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.oh
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !58 ; 4 uses
  br label %bb.dp

bb.dp:                                            ; preds = %bb.dp, %bb.do
  %.0.i.i2278 = phi i32 [ %i.zs, %bb.do ], [ %i.zx, %bb.dp ] ; 4 uses
  %i.zv = sext i32 %.0.i.i2278 to i64
  %i.zw = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.zv
  %i.zx = load i32, ptr %i.zw, align 4, !tbaa !58 ; 2 uses
  %i.zy = icmp slt i32 %i.zx, %.0.i.i2278
  br i1 %i.zy, label %bb.dp, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2279, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2279: ; preds = %bb.dp
  %.not.i2280 = icmp eq i32 %i.zs, %i.zu
  br i1 %.not.i2280, label %bb.dq, label %.preheader.i2281

.preheader.i2281:                                 ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2279, %.preheader.i2281
  %.0.i18.i2282 = phi i32 [ %i.aab, %.preheader.i2281 ], [ %i.zu, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2279 ] ; 3 uses
  %i.zz = sext i32 %.0.i18.i2282 to i64
  %i.aaa = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.zz
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !58 ; 2 uses
  %i.aac = icmp slt i32 %i.aab, %.0.i18.i2282
  br i1 %i.aac, label %.preheader.i2281, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2283, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2283: ; preds = %.preheader.i2281
  %spec.select.i2284 = tail call i32 @llvm.smin.i32(i32 %.0.i.i2278, i32 %.0.i18.i2282) ; 3 uses
  %i.aad = sext i32 %i.zu to i64
  %i.aae = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.aad ; 3 uses
  %i.aaf = load i32, ptr %i.aae, align 4, !tbaa !58 ; 2 uses
  %i.aag = icmp slt i32 %i.aaf, %i.zu
  br i1 %i.aag, label %.lr.ph.i.i2290, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2285

.lr.ph.i.i2290:                                   ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2283, %.lr.ph.i.i2290
  %i.aah = phi i32 [ %i.aal, %.lr.ph.i.i2290 ], [ %i.aaf, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2283 ] ; 2 uses
  %i.aai = phi ptr [ %i.aak, %.lr.ph.i.i2290 ], [ %i.aae, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2283 ]
  store i32 %spec.select.i2284, ptr %i.aai, align 4, !tbaa !58
  %i.aaj = sext i32 %i.aah to i64
  %i.aak = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.aaj ; 3 uses
  %i.aal = load i32, ptr %i.aak, align 4, !tbaa !58 ; 2 uses
  %i.aam = icmp slt i32 %i.aal, %i.aah
  br i1 %i.aam, label %.lr.ph.i.i2290, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2285, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2285: ; preds = %.lr.ph.i.i2290, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2283
  %.lcssa.i.i2286 = phi ptr [ %i.aae, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2283 ], [ %i.aak, %.lr.ph.i.i2290 ]
  store i32 %spec.select.i2284, ptr %.lcssa.i.i2286, align 4, !tbaa !58
  br label %bb.dq

bb.dq:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2285, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2279
  %.1.i2287 = phi i32 [ %spec.select.i2284, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2285 ], [ %.0.i.i2278, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2279 ] ; 3 uses
  %i.aan = sext i32 %i.zs to i64
  %i.aao = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.aan ; 3 uses
  %i.aap = load i32, ptr %i.aao, align 4, !tbaa !58 ; 2 uses
  %i.aaq = icmp slt i32 %i.aap, %i.zs
  br i1 %i.aaq, label %.lr.ph.i21.i2289, label %.loopexit3340

.lr.ph.i21.i2289:                                 ; preds = %bb.dq, %.lr.ph.i21.i2289
  %i.aar = phi i32 [ %i.aav, %.lr.ph.i21.i2289 ], [ %i.aap, %bb.dq ] ; 2 uses
  %i.aas = phi ptr [ %i.aau, %.lr.ph.i21.i2289 ], [ %i.aao, %bb.dq ]
  store i32 %.1.i2287, ptr %i.aas, align 4, !tbaa !58
  %i.aat = sext i32 %i.aar to i64
  %i.aau = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.aat ; 3 uses
  %i.aav = load i32, ptr %i.aau, align 4, !tbaa !58 ; 2 uses
  %i.aaw = icmp slt i32 %i.aav, %i.aar
  br i1 %i.aaw, label %.lr.ph.i21.i2289, label %.loopexit3340, !llvm.loop !4

.loopexit3340:                                    ; preds = %.lr.ph.i21.i2289, %bb.dq
  %.lcssa.i20.i2288 = phi ptr [ %i.aao, %bb.dq ], [ %i.aau, %.lr.ph.i21.i2289 ]
  store i32 %.1.i2287, ptr %.lcssa.i20.i2288, align 4, !tbaa !58
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv
  store i32 %.1.i2287, ptr %i.aax, align 4, !tbaa !58
  br label %bb.rb

bb.dr:                                            ; preds = %bb.cb, %bb.ca
  br i1 %i.oe, label %bb.hq, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.aay = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.od
  %i.aaz = load i8, ptr %i.aay, align 1, !tbaa !32
  %.not1981 = icmp eq i8 %i.aaz, 0
  br i1 %.not1981, label %bb.hq, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.aba = add nuw nsw i64 %indvars.iv, 2         ; 17 uses
  %i.abb = icmp sge i64 %i.aba, %i.az
  %or.cond2055 = or i1 %.not2029, %i.abb
  br i1 %or.cond2055, label %bb.gu, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.abc = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.aba
  %i.abd = load i8, ptr %i.abc, align 1, !tbaa !32
  %.not1991 = icmp eq i8 %i.abd, 0
  br i1 %.not1991, label %bb.gu, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.abe = add nsw i64 %indvars.iv, -2            ; 24 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.abe
  %i.abg = load i8, ptr %i.abf, align 1, !tbaa !32
  %.not2000 = icmp eq i8 %i.abg, 0
  br i1 %.not2000, label %bb.fr, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.abh = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cu
  %i.abi = load i8, ptr %i.abh, align 1, !tbaa !32
  %.not2006 = icmp eq i8 %i.abi, 0
  %i.abj = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.od
  %i.abk = load i8, ptr %i.abj, align 1, !tbaa !32
  %.not2007 = icmp eq i8 %i.abk, 0                ; 2 uses
  br i1 %.not2006, label %bb.ei, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  br i1 %.not2007, label %bb.ef, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.abl = getelementptr inbounds nuw i8, ptr %i.ce, i64 %indvars.iv
  %i.abm = load i8, ptr %i.abl, align 1, !tbaa !32
  %.not2016 = icmp eq i8 %i.abm, 0
  br i1 %.not2016, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.abe
  %i.abo = load i32, ptr %i.abn, align 4, !tbaa !58
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv
  store i32 %i.abo, ptr %i.abp, align 4, !tbaa !58
  br label %bb.rb

bb.ea:                                            ; preds = %bb.dy
  %i.abq = getelementptr inbounds nuw i8, ptr %i.cf, i64 %indvars.iv
  %i.abr = load i8, ptr %i.abq, align 1, !tbaa !32
  %.not2017 = icmp eq i8 %i.abr, 0
  br i1 %.not2017, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.abe
  %i.abt = load i32, ptr %i.abs, align 4, !tbaa !58
  %i.abu = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv
  store i32 %i.abt, ptr %i.abu, align 4, !tbaa !58
  br label %bb.rb

bb.ec:                                            ; preds = %bb.ea
  %i.abv = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.aba
  %i.abw = load i32, ptr %i.abv, align 4, !tbaa !58 ; 4 uses
  %i.abx = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.abe
  %i.aby = load i32, ptr %i.abx, align 4, !tbaa !58 ; 4 uses
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ed, %bb.ec
  %.0.i.i2292 = phi i32 [ %i.abw, %bb.ec ], [ %i.acb, %bb.ed ] ; 4 uses
  %i.abz = sext i32 %.0.i.i2292 to i64
  %i.aca = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.abz
  %i.acb = load i32, ptr %i.aca, align 4, !tbaa !58 ; 2 uses
  %i.acc = icmp slt i32 %i.acb, %.0.i.i2292
  br i1 %i.acc, label %bb.ed, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2293, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2293: ; preds = %bb.ed
  %.not.i2294 = icmp eq i32 %i.abw, %i.aby
  br i1 %.not.i2294, label %bb.ee, label %.preheader.i2295

.preheader.i2295:                                 ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2293, %.preheader.i2295
  %.0.i18.i2296 = phi i32 [ %i.acf, %.preheader.i2295 ], [ %i.aby, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2293 ] ; 3 uses
  %i.acd = sext i32 %.0.i18.i2296 to i64
  %i.ace = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.acd
  %i.acf = load i32, ptr %i.ace, align 4, !tbaa !58 ; 2 uses
  %i.acg = icmp slt i32 %i.acf, %.0.i18.i2296
  br i1 %i.acg, label %.preheader.i2295, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2297, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2297: ; preds = %.preheader.i2295
  %spec.select.i2298 = tail call i32 @llvm.smin.i32(i32 %.0.i.i2292, i32 %.0.i18.i2296) ; 3 uses
  %i.ach = sext i32 %i.aby to i64
  %i.aci = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.ach ; 3 uses
  %i.acj = load i32, ptr %i.aci, align 4, !tbaa !58 ; 2 uses
  %i.ack = icmp slt i32 %i.acj, %i.aby
  br i1 %i.ack, label %.lr.ph.i.i2304, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2299

.lr.ph.i.i2304:                                   ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2297, %.lr.ph.i.i2304
  %i.acl = phi i32 [ %i.acp, %.lr.ph.i.i2304 ], [ %i.acj, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2297 ] ; 2 uses
  %i.acm = phi ptr [ %i.aco, %.lr.ph.i.i2304 ], [ %i.aci, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2297 ]
  store i32 %spec.select.i2298, ptr %i.acm, align 4, !tbaa !58
  %i.acn = sext i32 %i.acl to i64
  %i.aco = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.acn ; 3 uses
  %i.acp = load i32, ptr %i.aco, align 4, !tbaa !58 ; 2 uses
  %i.acq = icmp slt i32 %i.acp, %i.acl
  br i1 %i.acq, label %.lr.ph.i.i2304, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2299, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2299: ; preds = %.lr.ph.i.i2304, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2297
  %.lcssa.i.i2300 = phi ptr [ %i.aci, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2297 ], [ %i.aco, %.lr.ph.i.i2304 ]
  store i32 %spec.select.i2298, ptr %.lcssa.i.i2300, align 4, !tbaa !58
  br label %bb.ee

bb.ee:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2299, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2293
  %.1.i2301 = phi i32 [ %spec.select.i2298, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2299 ], [ %.0.i.i2292, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2293 ] ; 3 uses
  %i.acr = sext i32 %i.abw to i64
  %i.acs = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.acr ; 3 uses
  %i.act = load i32, ptr %i.acs, align 4, !tbaa !58 ; 2 uses
  %i.acu = icmp slt i32 %i.act, %i.abw
  br i1 %i.acu, label %.lr.ph.i21.i2303, label %.loopexit3339

.lr.ph.i21.i2303:                                 ; preds = %bb.ee, %.lr.ph.i21.i2303
  %i.acv = phi i32 [ %i.acz, %.lr.ph.i21.i2303 ], [ %i.act, %bb.ee ] ; 2 uses
  %i.acw = phi ptr [ %i.acy, %.lr.ph.i21.i2303 ], [ %i.acs, %bb.ee ]
  store i32 %.1.i2301, ptr %i.acw, align 4, !tbaa !58
  %i.acx = sext i32 %i.acv to i64
  %i.acy = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.acx ; 3 uses
  %i.acz = load i32, ptr %i.acy, align 4, !tbaa !58 ; 2 uses
  %i.ada = icmp slt i32 %i.acz, %i.acv
  br i1 %i.ada, label %.lr.ph.i21.i2303, label %.loopexit3339, !llvm.loop !4

.loopexit3339:                                    ; preds = %.lr.ph.i21.i2303, %bb.ee
  %.lcssa.i20.i2302 = phi ptr [ %i.acs, %bb.ee ], [ %i.acy, %.lr.ph.i21.i2303 ]
  store i32 %.1.i2301, ptr %.lcssa.i20.i2302, align 4, !tbaa !58
  %i.adb = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv
  store i32 %.1.i2301, ptr %i.adb, align 4, !tbaa !58
  br label %bb.rb

bb.ef:                                            ; preds = %bb.dx
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.aba
  %i.add = load i32, ptr %i.adc, align 4, !tbaa !58 ; 4 uses
  %i.ade = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.abe
  %i.adf = load i32, ptr %i.ade, align 4, !tbaa !58 ; 4 uses
  br label %bb.eg

bb.eg:                                            ; preds = %bb.eg, %bb.ef
  %.0.i.i2306 = phi i32 [ %i.add, %bb.ef ], [ %i.adi, %bb.eg ] ; 4 uses
  %i.adg = sext i32 %.0.i.i2306 to i64
  %i.adh = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.adg
  %i.adi = load i32, ptr %i.adh, align 4, !tbaa !58 ; 2 uses
  %i.adj = icmp slt i32 %i.adi, %.0.i.i2306
  br i1 %i.adj, label %bb.eg, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2307, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2307: ; preds = %bb.eg
  %.not.i2308 = icmp eq i32 %i.add, %i.adf
  br i1 %.not.i2308, label %bb.eh, label %.preheader.i2309

.preheader.i2309:                                 ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2307, %.preheader.i2309
  %.0.i18.i2310 = phi i32 [ %i.adm, %.preheader.i2309 ], [ %i.adf, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2307 ] ; 3 uses
  %i.adk = sext i32 %.0.i18.i2310 to i64
  %i.adl = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.adk
  %i.adm = load i32, ptr %i.adl, align 4, !tbaa !58 ; 2 uses
  %i.adn = icmp slt i32 %i.adm, %.0.i18.i2310
  br i1 %i.adn, label %.preheader.i2309, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2311, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2311: ; preds = %.preheader.i2309
  %spec.select.i2312 = tail call i32 @llvm.smin.i32(i32 %.0.i.i2306, i32 %.0.i18.i2310) ; 3 uses
  %i.ado = sext i32 %i.adf to i64
  %i.adp = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.ado ; 3 uses
  %i.adq = load i32, ptr %i.adp, align 4, !tbaa !58 ; 2 uses
  %i.adr = icmp slt i32 %i.adq, %i.adf
  br i1 %i.adr, label %.lr.ph.i.i2318, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2313

.lr.ph.i.i2318:                                   ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2311, %.lr.ph.i.i2318
  %i.ads = phi i32 [ %i.adw, %.lr.ph.i.i2318 ], [ %i.adq, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2311 ] ; 2 uses
  %i.adt = phi ptr [ %i.adv, %.lr.ph.i.i2318 ], [ %i.adp, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2311 ]
  store i32 %spec.select.i2312, ptr %i.adt, align 4, !tbaa !58
  %i.adu = sext i32 %i.ads to i64
  %i.adv = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.adu ; 3 uses
  %i.adw = load i32, ptr %i.adv, align 4, !tbaa !58 ; 2 uses
  %i.adx = icmp slt i32 %i.adw, %i.ads
  br i1 %i.adx, label %.lr.ph.i.i2318, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2313, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2313: ; preds = %.lr.ph.i.i2318, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2311
  %.lcssa.i.i2314 = phi ptr [ %i.adp, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2311 ], [ %i.adv, %.lr.ph.i.i2318 ]
  store i32 %spec.select.i2312, ptr %.lcssa.i.i2314, align 4, !tbaa !58
  br label %bb.eh

bb.eh:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2313, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2307
  %.1.i2315 = phi i32 [ %spec.select.i2312, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2313 ], [ %.0.i.i2306, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2307 ] ; 3 uses
  %i.ady = sext i32 %i.add to i64
  %i.adz = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.ady ; 3 uses
  %i.aea = load i32, ptr %i.adz, align 4, !tbaa !58 ; 2 uses
  %i.aeb = icmp slt i32 %i.aea, %i.add
  br i1 %i.aeb, label %.lr.ph.i21.i2317, label %.loopexit3338

.lr.ph.i21.i2317:                                 ; preds = %bb.eh, %.lr.ph.i21.i2317
  %i.aec = phi i32 [ %i.aeg, %.lr.ph.i21.i2317 ], [ %i.aea, %bb.eh ] ; 2 uses
  %i.aed = phi ptr [ %i.aef, %.lr.ph.i21.i2317 ], [ %i.adz, %bb.eh ]
  store i32 %.1.i2315, ptr %i.aed, align 4, !tbaa !58
  %i.aee = sext i32 %i.aec to i64
  %i.aef = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.aee ; 3 uses
  %i.aeg = load i32, ptr %i.aef, align 4, !tbaa !58 ; 2 uses
  %i.aeh = icmp slt i32 %i.aeg, %i.aec
  br i1 %i.aeh, label %.lr.ph.i21.i2317, label %.loopexit3338, !llvm.loop !4

.loopexit3338:                                    ; preds = %.lr.ph.i21.i2317, %bb.eh
  %.lcssa.i20.i2316 = phi ptr [ %i.adz, %bb.eh ], [ %i.aef, %.lr.ph.i21.i2317 ]
  store i32 %.1.i2315, ptr %.lcssa.i20.i2316, align 4, !tbaa !58
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv
  store i32 %.1.i2315, ptr %i.aei, align 4, !tbaa !58
  br label %bb.rb

bb.ei:                                            ; preds = %bb.dw
  br i1 %.not2007, label %bb.ey, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
end_hunk_6
begin_hunk_7_@_ZN2cv19connectedcomponents13LabelingGranaIihNS0_9CCStatsOpEEclERKNS_3MatERS4_iRS2_:bb.a

.preheader.i2533:                                 ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2531, %.preheader.i2533
  %.0.i18.i2534 = phi i32 [ %i.aym, %.preheader.i2533 ], [ %i.ayf, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2531 ] ; 3 uses
  %i.ayk = sext i32 %.0.i18.i2534 to i64
  %i.ayl = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.ayk
  %i.aym = load i32, ptr %i.ayl, align 4, !tbaa !58 ; 2 uses
  %i.ayn = icmp slt i32 %i.aym, %.0.i18.i2534
  br i1 %i.ayn, label %.preheader.i2533, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2535, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2535: ; preds = %.preheader.i2533
  %spec.select.i2536 = tail call i32 @llvm.smin.i32(i32 %.0.i.i2530, i32 %.0.i18.i2534) ; 3 uses
  %i.ayo = sext i32 %i.ayf to i64
  %i.ayp = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.ayo ; 3 uses
  %i.ayq = load i32, ptr %i.ayp, align 4, !tbaa !58 ; 2 uses
  %i.ayr = icmp slt i32 %i.ayq, %i.ayf
  br i1 %i.ayr, label %.lr.ph.i.i2542, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2537

.lr.ph.i.i2542:                                   ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2535, %.lr.ph.i.i2542
  %i.ays = phi i32 [ %i.ayw, %.lr.ph.i.i2542 ], [ %i.ayq, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2535 ] ; 2 uses
  %i.ayt = phi ptr [ %i.ayv, %.lr.ph.i.i2542 ], [ %i.ayp, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2535 ]
  store i32 %spec.select.i2536, ptr %i.ayt, align 4, !tbaa !58
  %i.ayu = sext i32 %i.ays to i64
  %i.ayv = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.ayu ; 3 uses
  %i.ayw = load i32, ptr %i.ayv, align 4, !tbaa !58 ; 2 uses
  %i.ayx = icmp slt i32 %i.ayw, %i.ays
  br i1 %i.ayx, label %.lr.ph.i.i2542, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2537, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2537: ; preds = %.lr.ph.i.i2542, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2535
  %.lcssa.i.i2538 = phi ptr [ %i.ayp, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2535 ], [ %i.ayv, %.lr.ph.i.i2542 ]
  store i32 %spec.select.i2536, ptr %.lcssa.i.i2538, align 4, !tbaa !58
  br label %bb.go

bb.go:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2537, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2531
  %.1.i2539 = phi i32 [ %spec.select.i2536, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2537 ], [ %.0.i.i2530, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2531 ] ; 6 uses
  %i.ayy = sext i32 %i.ayd to i64
  %i.ayz = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.ayy ; 3 uses
  %i.aza = load i32, ptr %i.ayz, align 4, !tbaa !58 ; 2 uses
  %i.azb = icmp slt i32 %i.aza, %i.ayd
  br i1 %i.azb, label %.lr.ph.i21.i2541, label %.loopexit3322

.lr.ph.i21.i2541:                                 ; preds = %bb.go, %.lr.ph.i21.i2541
  %i.azc = phi i32 [ %i.azg, %.lr.ph.i21.i2541 ], [ %i.aza, %bb.go ] ; 2 uses
  %i.azd = phi ptr [ %i.azf, %.lr.ph.i21.i2541 ], [ %i.ayz, %bb.go ]
  store i32 %.1.i2539, ptr %i.azd, align 4, !tbaa !58
  %i.aze = sext i32 %i.azc to i64
  %i.azf = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.aze ; 3 uses
  %i.azg = load i32, ptr %i.azf, align 4, !tbaa !58 ; 2 uses
  %i.azh = icmp slt i32 %i.azg, %i.azc
  br i1 %i.azh, label %.lr.ph.i21.i2541, label %.loopexit3322, !llvm.loop !4

.loopexit3322:                                    ; preds = %.lr.ph.i21.i2541, %bb.go
  %.lcssa.i20.i2540 = phi ptr [ %i.ayz, %bb.go ], [ %i.azf, %.lr.ph.i21.i2541 ]
  store i32 %.1.i2539, ptr %.lcssa.i20.i2540, align 4, !tbaa !58
  %i.azi = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.abe
  %i.azj = load i32, ptr %i.azi, align 4, !tbaa !58 ; 4 uses
  br label %bb.gp

bb.gp:                                            ; preds = %bb.gp, %.loopexit3322
  %.0.i.i2544 = phi i32 [ %.1.i2539, %.loopexit3322 ], [ %i.azm, %bb.gp ] ; 4 uses
  %i.azk = sext i32 %.0.i.i2544 to i64
  %i.azl = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.azk
  %i.azm = load i32, ptr %i.azl, align 4, !tbaa !58 ; 2 uses
  %i.azn = icmp slt i32 %i.azm, %.0.i.i2544
  br i1 %i.azn, label %bb.gp, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2545, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2545: ; preds = %bb.gp
  %.not.i2546 = icmp eq i32 %.1.i2539, %i.azj
  br i1 %.not.i2546, label %bb.gq, label %.preheader.i2547

.preheader.i2547:                                 ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2545, %.preheader.i2547
  %.0.i18.i2548 = phi i32 [ %i.azq, %.preheader.i2547 ], [ %i.azj, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2545 ] ; 3 uses
  %i.azo = sext i32 %.0.i18.i2548 to i64
  %i.azp = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.azo
  %i.azq = load i32, ptr %i.azp, align 4, !tbaa !58 ; 2 uses
  %i.azr = icmp slt i32 %i.azq, %.0.i18.i2548
  br i1 %i.azr, label %.preheader.i2547, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2549, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2549: ; preds = %.preheader.i2547
  %spec.select.i2550 = tail call i32 @llvm.smin.i32(i32 %.0.i.i2544, i32 %.0.i18.i2548) ; 3 uses
  %i.azs = sext i32 %i.azj to i64
  %i.azt = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.azs ; 3 uses
  %i.azu = load i32, ptr %i.azt, align 4, !tbaa !58 ; 2 uses
  %i.azv = icmp slt i32 %i.azu, %i.azj
  br i1 %i.azv, label %.lr.ph.i.i2556, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2551

.lr.ph.i.i2556:                                   ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2549, %.lr.ph.i.i2556
  %i.azw = phi i32 [ %i.baa, %.lr.ph.i.i2556 ], [ %i.azu, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2549 ] ; 2 uses
  %i.azx = phi ptr [ %i.azz, %.lr.ph.i.i2556 ], [ %i.azt, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2549 ]
  store i32 %spec.select.i2550, ptr %i.azx, align 4, !tbaa !58
  %i.azy = sext i32 %i.azw to i64
  %i.azz = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.azy ; 3 uses
  %i.baa = load i32, ptr %i.azz, align 4, !tbaa !58 ; 2 uses
  %i.bab = icmp slt i32 %i.baa, %i.azw
  br i1 %i.bab, label %.lr.ph.i.i2556, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2551, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2551: ; preds = %.lr.ph.i.i2556, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2549
  %.lcssa.i.i2552 = phi ptr [ %i.azt, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2549 ], [ %i.azz, %.lr.ph.i.i2556 ]
  store i32 %spec.select.i2550, ptr %.lcssa.i.i2552, align 4, !tbaa !58
  br label %bb.gq

bb.gq:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2551, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2545
  %.1.i2553 = phi i32 [ %spec.select.i2550, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2551 ], [ %.0.i.i2544, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2545 ] ; 3 uses
  %i.bac = sext i32 %.1.i2539 to i64
  %i.bad = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.bac ; 3 uses
  %i.bae = load i32, ptr %i.bad, align 4, !tbaa !58 ; 2 uses
  %i.baf = icmp slt i32 %i.bae, %.1.i2539
  br i1 %i.baf, label %.lr.ph.i21.i2555, label %.loopexit3321

.lr.ph.i21.i2555:                                 ; preds = %bb.gq, %.lr.ph.i21.i2555
  %i.bag = phi i32 [ %i.bak, %.lr.ph.i21.i2555 ], [ %i.bae, %bb.gq ] ; 2 uses
  %i.bah = phi ptr [ %i.baj, %.lr.ph.i21.i2555 ], [ %i.bad, %bb.gq ]
  store i32 %.1.i2553, ptr %i.bah, align 4, !tbaa !58
  %i.bai = sext i32 %i.bag to i64
  %i.baj = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.bai ; 3 uses
  %i.bak = load i32, ptr %i.baj, align 4, !tbaa !58 ; 2 uses
  %i.bal = icmp slt i32 %i.bak, %i.bag
  br i1 %i.bal, label %.lr.ph.i21.i2555, label %.loopexit3321, !llvm.loop !4

.loopexit3321:                                    ; preds = %.lr.ph.i21.i2555, %bb.gq
  %.lcssa.i20.i2554 = phi ptr [ %i.bad, %bb.gq ], [ %i.baj, %.lr.ph.i21.i2555 ]
  store i32 %.1.i2553, ptr %.lcssa.i20.i2554, align 4, !tbaa !58
  %i.bam = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv
  store i32 %.1.i2553, ptr %i.bam, align 4, !tbaa !58
  br label %bb.rb

bb.gr:                                            ; preds = %bb.gb
  %i.ban = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.aba
  %i.bao = load i32, ptr %i.ban, align 4, !tbaa !58 ; 4 uses
  %i.bap = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.abe
  %i.baq = load i32, ptr %i.bap, align 4, !tbaa !58 ; 4 uses
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gs, %bb.gr
  %.0.i.i2558 = phi i32 [ %i.bao, %bb.gr ], [ %i.bat, %bb.gs ] ; 4 uses
  %i.bar = sext i32 %.0.i.i2558 to i64
  %i.bas = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.bar
  %i.bat = load i32, ptr %i.bas, align 4, !tbaa !58 ; 2 uses
  %i.bau = icmp slt i32 %i.bat, %.0.i.i2558
  br i1 %i.bau, label %bb.gs, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2559, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2559: ; preds = %bb.gs
  %.not.i2560 = icmp eq i32 %i.bao, %i.baq
  br i1 %.not.i2560, label %bb.gt, label %.preheader.i2561

.preheader.i2561:                                 ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2559, %.preheader.i2561
  %.0.i18.i2562 = phi i32 [ %i.bax, %.preheader.i2561 ], [ %i.baq, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2559 ] ; 3 uses
  %i.bav = sext i32 %.0.i18.i2562 to i64
  %i.baw = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.bav
  %i.bax = load i32, ptr %i.baw, align 4, !tbaa !58 ; 2 uses
  %i.bay = icmp slt i32 %i.bax, %.0.i18.i2562
  br i1 %i.bay, label %.preheader.i2561, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2563, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2563: ; preds = %.preheader.i2561
  %spec.select.i2564 = tail call i32 @llvm.smin.i32(i32 %.0.i.i2558, i32 %.0.i18.i2562) ; 3 uses
  %i.baz = sext i32 %i.baq to i64
  %i.bba = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.baz ; 3 uses
  %i.bbb = load i32, ptr %i.bba, align 4, !tbaa !58 ; 2 uses
  %i.bbc = icmp slt i32 %i.bbb, %i.baq
  br i1 %i.bbc, label %.lr.ph.i.i2570, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2565

.lr.ph.i.i2570:                                   ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2563, %.lr.ph.i.i2570
  %i.bbd = phi i32 [ %i.bbh, %.lr.ph.i.i2570 ], [ %i.bbb, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2563 ] ; 2 uses
  %i.bbe = phi ptr [ %i.bbg, %.lr.ph.i.i2570 ], [ %i.bba, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2563 ]
  store i32 %spec.select.i2564, ptr %i.bbe, align 4, !tbaa !58
  %i.bbf = sext i32 %i.bbd to i64
  %i.bbg = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.bbf ; 3 uses
  %i.bbh = load i32, ptr %i.bbg, align 4, !tbaa !58 ; 2 uses
  %i.bbi = icmp slt i32 %i.bbh, %i.bbd
  br i1 %i.bbi, label %.lr.ph.i.i2570, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2565, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2565: ; preds = %.lr.ph.i.i2570, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2563
  %.lcssa.i.i2566 = phi ptr [ %i.bba, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2563 ], [ %i.bbg, %.lr.ph.i.i2570 ]
  store i32 %spec.select.i2564, ptr %.lcssa.i.i2566, align 4, !tbaa !58
  br label %bb.gt

bb.gt:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2565, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2559
  %.1.i2567 = phi i32 [ %spec.select.i2564, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2565 ], [ %.0.i.i2558, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2559 ] ; 3 uses
  %i.bbj = sext i32 %i.bao to i64
  %i.bbk = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.bbj ; 3 uses
  %i.bbl = load i32, ptr %i.bbk, align 4, !tbaa !58 ; 2 uses
  %i.bbm = icmp slt i32 %i.bbl, %i.bao
  br i1 %i.bbm, label %.lr.ph.i21.i2569, label %.loopexit3320

.lr.ph.i21.i2569:                                 ; preds = %bb.gt, %.lr.ph.i21.i2569
  %i.bbn = phi i32 [ %i.bbr, %.lr.ph.i21.i2569 ], [ %i.bbl, %bb.gt ] ; 2 uses
  %i.bbo = phi ptr [ %i.bbq, %.lr.ph.i21.i2569 ], [ %i.bbk, %bb.gt ]
  store i32 %.1.i2567, ptr %i.bbo, align 4, !tbaa !58
  %i.bbp = sext i32 %i.bbn to i64
  %i.bbq = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.bbp ; 3 uses
  %i.bbr = load i32, ptr %i.bbq, align 4, !tbaa !58 ; 2 uses
  %i.bbs = icmp slt i32 %i.bbr, %i.bbn
  br i1 %i.bbs, label %.lr.ph.i21.i2569, label %.loopexit3320, !llvm.loop !4

.loopexit3320:                                    ; preds = %.lr.ph.i21.i2569, %bb.gt
  %.lcssa.i20.i2568 = phi ptr [ %i.bbk, %bb.gt ], [ %i.bbq, %.lr.ph.i21.i2569 ]
  store i32 %.1.i2567, ptr %.lcssa.i20.i2568, align 4, !tbaa !58
  %i.bbt = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv
  store i32 %.1.i2567, ptr %i.bbt, align 4, !tbaa !58
  br label %bb.rb

bb.gu:                                            ; preds = %bb.dt, %bb.du
  br i1 %.not2029, label %bb.hp, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cu
  %i.bbv = load i8, ptr %i.bbu, align 1, !tbaa !32
  %.not1993 = icmp eq i8 %i.bbv, 0
  br i1 %.not1993, label %bb.hb, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.bbw = add nsw i64 %indvars.iv, -2            ; 4 uses
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bbw
  %i.bby = load i8, ptr %i.bbx, align 1, !tbaa !32
  %.not1999 = icmp eq i8 %i.bby, 0
  br i1 %.not1999, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.bbz = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.bbw
  %i.bca = load i32, ptr %i.bbz, align 4, !tbaa !58
  %i.bcb = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv
  store i32 %i.bca, ptr %i.bcb, align 4, !tbaa !58
  br label %bb.rb

bb.gy:                                            ; preds = %bb.gw
  %i.bcc = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.bbw
  %i.bcd = load i32, ptr %i.bcc, align 4, !tbaa !58 ; 4 uses
  %i.bce = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.bbw
  %i.bcf = load i32, ptr %i.bce, align 4, !tbaa !58 ; 4 uses
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gz, %bb.gy
  %.0.i.i2572 = phi i32 [ %i.bcd, %bb.gy ], [ %i.bci, %bb.gz ] ; 4 uses
  %i.bcg = sext i32 %.0.i.i2572 to i64
  %i.bch = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.bcg
  %i.bci = load i32, ptr %i.bch, align 4, !tbaa !58 ; 2 uses
  %i.bcj = icmp slt i32 %i.bci, %.0.i.i2572
  br i1 %i.bcj, label %bb.gz, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2573, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2573: ; preds = %bb.gz
  %.not.i2574 = icmp eq i32 %i.bcd, %i.bcf
  br i1 %.not.i2574, label %bb.ha, label %.preheader.i2575

.preheader.i2575:                                 ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2573, %.preheader.i2575
  %.0.i18.i2576 = phi i32 [ %i.bcm, %.preheader.i2575 ], [ %i.bcf, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2573 ] ; 3 uses
  %i.bck = sext i32 %.0.i18.i2576 to i64
  %i.bcl = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.bck
  %i.bcm = load i32, ptr %i.bcl, align 4, !tbaa !58 ; 2 uses
  %i.bcn = icmp slt i32 %i.bcm, %.0.i18.i2576
  br i1 %i.bcn, label %.preheader.i2575, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2577, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2577: ; preds = %.preheader.i2575
  %spec.select.i2578 = tail call i32 @llvm.smin.i32(i32 %.0.i.i2572, i32 %.0.i18.i2576) ; 3 uses
  %i.bco = sext i32 %i.bcf to i64
  %i.bcp = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.bco ; 3 uses
  %i.bcq = load i32, ptr %i.bcp, align 4, !tbaa !58 ; 2 uses
  %i.bcr = icmp slt i32 %i.bcq, %i.bcf
  br i1 %i.bcr, label %.lr.ph.i.i2584, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2579

.lr.ph.i.i2584:                                   ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2577, %.lr.ph.i.i2584
  %i.bcs = phi i32 [ %i.bcw, %.lr.ph.i.i2584 ], [ %i.bcq, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2577 ] ; 2 uses
  %i.bct = phi ptr [ %i.bcv, %.lr.ph.i.i2584 ], [ %i.bcp, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2577 ]
  store i32 %spec.select.i2578, ptr %i.bct, align 4, !tbaa !58
  %i.bcu = sext i32 %i.bcs to i64
  %i.bcv = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.bcu ; 3 uses
  %i.bcw = load i32, ptr %i.bcv, align 4, !tbaa !58 ; 2 uses
  %i.bcx = icmp slt i32 %i.bcw, %i.bcs
  br i1 %i.bcx, label %.lr.ph.i.i2584, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2579, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2579: ; preds = %.lr.ph.i.i2584, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2577
  %.lcssa.i.i2580 = phi ptr [ %i.bcp, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2577 ], [ %i.bcv, %.lr.ph.i.i2584 ]
  store i32 %spec.select.i2578, ptr %.lcssa.i.i2580, align 4, !tbaa !58
  br label %bb.ha

bb.ha:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2579, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2573
  %.1.i2581 = phi i32 [ %spec.select.i2578, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2579 ], [ %.0.i.i2572, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2573 ] ; 3 uses
  %i.bcy = sext i32 %i.bcd to i64
  %i.bcz = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.bcy ; 3 uses
  %i.bda = load i32, ptr %i.bcz, align 4, !tbaa !58 ; 2 uses
  %i.bdb = icmp slt i32 %i.bda, %i.bcd
  br i1 %i.bdb, label %.lr.ph.i21.i2583, label %.loopexit3319

.lr.ph.i21.i2583:                                 ; preds = %bb.ha, %.lr.ph.i21.i2583
  %i.bdc = phi i32 [ %i.bdg, %.lr.ph.i21.i2583 ], [ %i.bda, %bb.ha ] ; 2 uses
  %i.bdd = phi ptr [ %i.bdf, %.lr.ph.i21.i2583 ], [ %i.bcz, %bb.ha ]
  store i32 %.1.i2581, ptr %i.bdd, align 4, !tbaa !58
  %i.bde = sext i32 %i.bdc to i64
  %i.bdf = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.bde ; 3 uses
  %i.bdg = load i32, ptr %i.bdf, align 4, !tbaa !58 ; 2 uses
  %i.bdh = icmp slt i32 %i.bdg, %i.bdc
  br i1 %i.bdh, label %.lr.ph.i21.i2583, label %.loopexit3319, !llvm.loop !4

.loopexit3319:                                    ; preds = %.lr.ph.i21.i2583, %bb.ha
  %.lcssa.i20.i2582 = phi ptr [ %i.bcz, %bb.ha ], [ %i.bdf, %.lr.ph.i21.i2583 ]
  store i32 %.1.i2581, ptr %.lcssa.i20.i2582, align 4, !tbaa !58
  %i.bdi = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv
  store i32 %.1.i2581, ptr %i.bdi, align 4, !tbaa !58
  br label %bb.rb

bb.hb:                                            ; preds = %bb.gv
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.ce, i64 %indvars.iv
  %i.bdk = load i8, ptr %i.bdj, align 1, !tbaa !32
  %.not1995 = icmp eq i8 %i.bdk, 0
  br i1 %.not1995, label %bb.hp, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.bdl = add nsw i64 %indvars.iv, -2            ; 6 uses
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bdl
  %i.bdn = load i8, ptr %i.bdm, align 1, !tbaa !32
  %.not1996 = icmp eq i8 %i.bdn, 0
  br i1 %.not1996, label %bb.hm, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bdl
  %i.bdp = load i8, ptr %i.bdo, align 1, !tbaa !32
  %.not1997 = icmp eq i8 %i.bdp, 0
  br i1 %.not1997, label %bb.hj, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cu
  %i.bdr = load i8, ptr %i.bdq, align 1, !tbaa !32
  %.not1998 = icmp eq i8 %i.bdr, 0
  br i1 %.not1998, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.bds = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.bdl
  %i.bdt = load i32, ptr %i.bds, align 4, !tbaa !58
  %i.bdu = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv
  store i32 %i.bdt, ptr %i.bdu, align 4, !tbaa !58
  br label %bb.rb

bb.hg:                                            ; preds = %bb.he
  %i.bdv = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv
  %i.bdw = load i32, ptr %i.bdv, align 4, !tbaa !58 ; 4 uses
  %i.bdx = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.bdl
  %i.bdy = load i32, ptr %i.bdx, align 4, !tbaa !58 ; 4 uses
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hh, %bb.hg
  %.0.i.i2586 = phi i32 [ %i.bdw, %bb.hg ], [ %i.beb, %bb.hh ] ; 4 uses
  %i.bdz = sext i32 %.0.i.i2586 to i64
  %i.bea = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.bdz
  %i.beb = load i32, ptr %i.bea, align 4, !tbaa !58 ; 2 uses
  %i.bec = icmp slt i32 %i.beb, %.0.i.i2586
  br i1 %i.bec, label %bb.hh, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2587, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2587: ; preds = %bb.hh
  %.not.i2588 = icmp eq i32 %i.bdw, %i.bdy
  br i1 %.not.i2588, label %bb.hi, label %.preheader.i2589

.preheader.i2589:                                 ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2587, %.preheader.i2589
  %.0.i18.i2590 = phi i32 [ %i.bef, %.preheader.i2589 ], [ %i.bdy, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2587 ] ; 3 uses
  %i.bed = sext i32 %.0.i18.i2590 to i64
  %i.bee = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.bed
  %i.bef = load i32, ptr %i.bee, align 4, !tbaa !58 ; 2 uses
  %i.beg = icmp slt i32 %i.bef, %.0.i18.i2590
  br i1 %i.beg, label %.preheader.i2589, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2591, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2591: ; preds = %.preheader.i2589
  %spec.select.i2592 = tail call i32 @llvm.smin.i32(i32 %.0.i.i2586, i32 %.0.i18.i2590) ; 3 uses
  %i.beh = sext i32 %i.bdy to i64
  %i.bei = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.beh ; 3 uses
  %i.bej = load i32, ptr %i.bei, align 4, !tbaa !58 ; 2 uses
  %i.bek = icmp slt i32 %i.bej, %i.bdy
  br i1 %i.bek, label %.lr.ph.i.i2598, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2593

.lr.ph.i.i2598:                                   ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2591, %.lr.ph.i.i2598
  %i.bel = phi i32 [ %i.bep, %.lr.ph.i.i2598 ], [ %i.bej, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2591 ] ; 2 uses
  %i.bem = phi ptr [ %i.beo, %.lr.ph.i.i2598 ], [ %i.bei, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2591 ]
  store i32 %spec.select.i2592, ptr %i.bem, align 4, !tbaa !58
  %i.ben = sext i32 %i.bel to i64
  %i.beo = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.ben ; 3 uses
  %i.bep = load i32, ptr %i.beo, align 4, !tbaa !58 ; 2 uses
  %i.beq = icmp slt i32 %i.bep, %i.bel
  br i1 %i.beq, label %.lr.ph.i.i2598, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2593, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2593: ; preds = %.lr.ph.i.i2598, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2591
  %.lcssa.i.i2594 = phi ptr [ %i.bei, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i2591 ], [ %i.beo, %.lr.ph.i.i2598 ]
  store i32 %spec.select.i2592, ptr %.lcssa.i.i2594, align 4, !tbaa !58
  br label %bb.hi

bb.hi:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2593, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2587
  %.1.i2595 = phi i32 [ %spec.select.i2592, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i2593 ], [ %.0.i.i2586, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i2587 ] ; 3 uses
  %i.ber = sext i32 %i.bdw to i64
  %i.bes = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.ber ; 3 uses
  %i.bet = load i32, ptr %i.bes, align 4, !tbaa !58 ; 2 uses
  %i.beu = icmp slt i32 %i.bet, %i.bdw
  br i1 %i.beu, label %.lr.ph.i21.i2597, label %.loopexit3318

.lr.ph.i21.i2597:                                 ; preds = %bb.hi, %.lr.ph.i21.i2597
  %i.bev = phi i32 [ %i.bez, %.lr.ph.i21.i2597 ], [ %i.bet, %bb.hi ] ; 2 uses
  %i.bew = phi ptr [ %i.bey, %.lr.ph.i21.i2597 ], [ %i.bes, %bb.hi ]
  store i32 %.1.i2595, ptr %i.bew, align 4, !tbaa !58
  %i.bex = sext i32 %i.bev to i64
  %i.bey = getelementptr inbounds [4 x i8], ptr %.sroa.03251.0, i64 %i.bex ; 3 uses
  %i.bez = load i32, ptr %i.bey, align 4, !tbaa !58 ; 2 uses
  %i.bfa = icmp slt i32 %i.bez, %i.bev
  br i1 %i.bfa, label %.lr.ph.i21.i2597, label %.loopexit3318, !llvm.loop !4

.loopexit3318:                                    ; preds = %.lr.ph.i21.i2597, %bb.hi
  %.lcssa.i20.i2596 = phi ptr [ %i.bes, %bb.hi ], [ %i.bey, %.lr.ph.i21.i2597 ]
  store i32 %.1.i2595, ptr %.lcssa.i20.i2596, align 4, !tbaa !58
  %i.bfb = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv
  store i32 %.1.i2595, ptr %i.bfb, align 4, !tbaa !58
  br label %bb.rb
end_hunk_7
