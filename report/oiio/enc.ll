inline.NumInlined: 51
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 66
loop-unroll.NumUnrolled: 66
begin_hunk_0_@Disto16x16_C:bb.a
  %i.sf = add nuw nsw <4 x i32> %i.sd, %i.se      ; 2 uses
  %i.sg = add nuw nsw <4 x i32> %i.sc, %i.sf      ; 2 uses
  %i.sh = add nuw nsw <4 x i32> %i.oq, %i.od      ; 2 uses
  %i.si = add nuw nsw <4 x i32> %i.pr, %i.pe      ; 2 uses
  %i.sj = add nuw nsw <4 x i32> %i.sh, %i.si      ; 2 uses
  %i.sk = add nuw nsw <4 x i32> %i.qt, %i.qg      ; 2 uses
  %i.sl = add nuw nsw <4 x i32> %i.rt, %i.rg      ; 2 uses
  %i.sm = add nuw nsw <4 x i32> %i.sk, %i.sl      ; 2 uses
  %i.sn = add nuw nsw <4 x i32> %i.sj, %i.sm      ; 2 uses
  %i.so = add nuw nsw <4 x i32> %i.sg, %i.sn
  %i.sp = mul nuw nsw <4 x i32> %i.so, %broadcast.splat
  %i.sq = add nuw nsw <4 x i32> %i.rz, %i.sp
  %i.sr = sub nsw <4 x i32> %i.sn, %i.sg
  %i.ss = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.sr, i1 true)
  %i.st = mul nuw nsw <4 x i32> %i.ss, %broadcast.splat73
  %i.su = add nuw nsw <4 x i32> %i.sq, %i.st
  %i.sv = sub nsw <4 x i32> %i.sm, %i.sj          ; 2 uses
  %i.sw = sub nsw <4 x i32> %i.sf, %i.sc          ; 2 uses
  %i.sx = sub nsw <4 x i32> %i.sv, %i.sw
  %i.sy = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.sx, i1 true)
  %i.sz = mul nuw nsw <4 x i32> %i.sy, %broadcast.splat71
  %i.ta = add nuw nsw <4 x i32> %i.su, %i.sz
  %i.tb = add nsw <4 x i32> %i.sw, %i.sv
  %i.tc = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.tb, i1 true)
  %i.td = mul nuw nsw <4 x i32> %i.tc, %broadcast.splat69
  %i.te = add nuw nsw <4 x i32> %i.ta, %i.td
  %i.tf = sub nsw <4 x i32> %i.np, %i.lm          ; 2 uses
  %i.tg = sub nsw <4 x i32> %i.rv, %i.pt          ; 2 uses
  %i.th = add nsw <4 x i32> %i.tf, %i.tg
  %i.ti = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.th, i1 true)
  %i.tj = mul nuw nsw <4 x i32> %i.ti, %broadcast.splat77
  %i.tk = add nuw nsw <4 x i32> %i.te, %i.tj
  %i.tl = sub nsw <4 x i32> %i.tg, %i.tf
  %i.tm = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.tl, i1 true)
  %i.tn = mul nuw nsw <4 x i32> %i.tm, %broadcast.splat79
  %i.to = add nuw nsw <4 x i32> %i.tk, %i.tn
  %i.tp = sub nsw <4 x i32> %i.rw, %i.nq
  %i.tq = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.tp, i1 true)
  %i.tr = mul nuw nsw <4 x i32> %i.tq, %broadcast.splat81
  %i.ts = add nuw nsw <4 x i32> %i.to, %i.tr
  %i.tt = sub nsw <4 x i32> %i.ll, %i.kk          ; 2 uses
  %i.tu = sub nsw <4 x i32> %i.no, %i.mn          ; 2 uses
  %i.tv = add nsw <4 x i32> %i.tt, %i.tu          ; 2 uses
  %i.tw = sub nsw <4 x i32> %i.ps, %i.or          ; 2 uses
  %i.tx = sub nsw <4 x i32> %i.ru, %i.qu          ; 2 uses
  %i.ty = add nsw <4 x i32> %i.tw, %i.tx          ; 2 uses
  %i.tz = add nsw <4 x i32> %i.tv, %i.ty
  %i.ua = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.tz, i1 true)
  %i.ub = mul nuw nsw <4 x i32> %i.ua, %broadcast.splat83
  %i.uc = add nuw nsw <4 x i32> %i.ts, %i.ub
  %i.ud = sub nsw <4 x i32> %i.tu, %i.tt          ; 2 uses
  %i.ue = sub nsw <4 x i32> %i.tx, %i.tw          ; 2 uses
  %i.uf = add nsw <4 x i32> %i.ud, %i.ue
  %i.ug = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.uf, i1 true)
  %i.uh = mul nuw nsw <4 x i32> %i.ug, %broadcast.splat85
  %i.ui = add nuw nsw <4 x i32> %i.uc, %i.uh
  %i.uj = sub nsw <4 x i32> %i.ue, %i.ud
  %i.uk = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.uj, i1 true)
  %i.ul = mul nuw nsw <4 x i32> %i.uk, %broadcast.splat87
  %i.um = add nuw nsw <4 x i32> %i.ui, %i.ul
  %i.un = sub nsw <4 x i32> %i.ty, %i.tv
  %i.uo = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.un, i1 true)
  %i.up = mul nuw nsw <4 x i32> %i.uo, %broadcast.splat89
  %i.uq = add nuw nsw <4 x i32> %i.um, %i.up
  %i.ur = sub nsw <4 x i32> %i.sb, %i.sa          ; 2 uses
  %i.us = sub nsw <4 x i32> %i.se, %i.sd          ; 2 uses
  %i.ut = add nsw <4 x i32> %i.ur, %i.us          ; 2 uses
  %i.uu = sub nsw <4 x i32> %i.si, %i.sh          ; 2 uses
  %i.uv = sub nsw <4 x i32> %i.sl, %i.sk          ; 2 uses
  %i.uw = add nsw <4 x i32> %i.uu, %i.uv          ; 2 uses
  %i.ux = add nsw <4 x i32> %i.ut, %i.uw
  %i.uy = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ux, i1 true)
  %i.uz = mul nuw nsw <4 x i32> %i.uy, %broadcast.splat91
  %i.va = add nuw nsw <4 x i32> %i.uq, %i.uz
  %i.vb = sub nsw <4 x i32> %i.us, %i.ur          ; 2 uses
  %i.vc = sub nsw <4 x i32> %i.uv, %i.uu          ; 2 uses
  %i.vd = add nsw <4 x i32> %i.vb, %i.vc
  %i.ve = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.vd, i1 true)
  %i.vf = mul nuw nsw <4 x i32> %i.ve, %broadcast.splat93
  %i.vg = add nuw nsw <4 x i32> %i.va, %i.vf
  %i.vh = sub nsw <4 x i32> %i.vc, %i.vb
  %i.vi = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.vh, i1 true)
  %i.vj = mul nuw nsw <4 x i32> %i.vi, %broadcast.splat95
  %i.vk = add nuw nsw <4 x i32> %i.vg, %i.vj
  %i.vl = sub nsw <4 x i32> %i.uw, %i.ut
  %i.vm = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.vl, i1 true)
  %i.vn = mul nuw nsw <4 x i32> %i.vm, %broadcast.splat97
  %i.vo = add nuw <4 x i32> %i.vk, %i.vn
  %i.vp = sub <4 x i32> %i.jj, %i.vo
  %i.vq = sub nsw <4 x i32> %i.fa, %i.cx          ; 2 uses
  %i.vr = sub nsw <4 x i32> %i.jg, %i.he          ; 2 uses
  %i.vs = add nsw <4 x i32> %i.vq, %i.vr
  %i.vt = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.vs, i1 true)
  %i.vu = mul nuw nsw <4 x i32> %i.vt, %broadcast.splat69
  %i.vv = add <4 x i32> %i.vp, %i.vu
  %i.vw = sub nsw <4 x i32> %i.vr, %i.vq
  %i.vx = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.vw, i1 true)
  %i.vy = mul nuw nsw <4 x i32> %i.vx, %broadcast.splat71
  %i.vz = add <4 x i32> %i.vv, %i.vy
  %i.wa = sub nsw <4 x i32> %i.jh, %i.fb
  %i.wb = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.wa, i1 true)
  %i.wc = mul nuw nsw <4 x i32> %i.wb, %broadcast.splat73
  %i.wd = add <4 x i32> %i.vz, %i.wc
  %i.we = sub nsw <4 x i32> %i.bu, %i.bh          ; 2 uses
  %i.wf = sub nsw <4 x i32> %i.cv, %i.ci          ; 2 uses
  %i.wg = add nsw <4 x i32> %i.we, %i.wf          ; 2 uses
  %i.wh = sub nsw <4 x i32> %i.dx, %i.dk          ; 2 uses
  %i.wi = sub nsw <4 x i32> %i.ey, %i.el          ; 2 uses
  %i.wj = add nsw <4 x i32> %i.wh, %i.wi          ; 2 uses
  %i.wk = add nsw <4 x i32> %i.wg, %i.wj          ; 2 uses
  %i.wl = sub nsw <4 x i32> %i.gb, %i.fo          ; 2 uses
  %i.wm = sub nsw <4 x i32> %i.hc, %i.gp          ; 2 uses
  %i.wn = add nsw <4 x i32> %i.wl, %i.wm          ; 2 uses
  %i.wo = sub nsw <4 x i32> %i.ie, %i.hr          ; 2 uses
  %i.wp = sub nsw <4 x i32> %i.je, %i.is          ; 2 uses
  %i.wq = add nsw <4 x i32> %i.wo, %i.wp          ; 2 uses
  %i.wr = add nsw <4 x i32> %i.wn, %i.wq          ; 2 uses
  %i.ws = add nsw <4 x i32> %i.wk, %i.wr
  %i.wt = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ws, i1 true)
  %i.wu = mul nuw nsw <4 x i32> %i.wt, %broadcast.splat75
  %i.wv = add <4 x i32> %i.wd, %i.wu
  %i.ww = sub nsw <4 x i32> %i.wj, %i.wg          ; 2 uses
  %i.wx = sub nsw <4 x i32> %i.wq, %i.wn          ; 2 uses
  %i.wy = add nsw <4 x i32> %i.ww, %i.wx
  %i.wz = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.wy, i1 true)
  %i.xa = mul nuw nsw <4 x i32> %i.wz, %broadcast.splat77
  %i.xb = add <4 x i32> %i.wv, %i.xa
  %i.xc = sub nsw <4 x i32> %i.wx, %i.ww
  %i.xd = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.xc, i1 true)
  %i.xe = mul nuw nsw <4 x i32> %i.xd, %broadcast.splat79
  %i.xf = add <4 x i32> %i.xb, %i.xe
  %i.xg = sub nsw <4 x i32> %i.wr, %i.wk
  %i.xh = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.xg, i1 true)
  %i.xi = mul nuw nsw <4 x i32> %i.xh, %broadcast.splat81
  %i.xj = add <4 x i32> %i.xf, %i.xi
  %i.xk = sub nsw <4 x i32> %i.wf, %i.we          ; 2 uses
  %i.xl = sub nsw <4 x i32> %i.wi, %i.wh          ; 2 uses
  %i.xm = add nsw <4 x i32> %i.xk, %i.xl          ; 2 uses
  %i.xn = sub nsw <4 x i32> %i.wm, %i.wl          ; 2 uses
  %i.xo = sub nsw <4 x i32> %i.wp, %i.wo          ; 2 uses
  %i.xp = add nsw <4 x i32> %i.xn, %i.xo          ; 2 uses
  %i.xq = add nsw <4 x i32> %i.xm, %i.xp
  %i.xr = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.xq, i1 true)
  %i.xs = mul nuw nsw <4 x i32> %i.xr, %broadcast.splat83
  %i.xt = add <4 x i32> %i.xj, %i.xs
  %i.xu = sub nsw <4 x i32> %i.xl, %i.xk          ; 2 uses
  %i.xv = sub nsw <4 x i32> %i.xo, %i.xn          ; 2 uses
  %i.xw = add nsw <4 x i32> %i.xu, %i.xv
  %i.xx = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.xw, i1 true)
  %i.xy = mul nuw nsw <4 x i32> %i.xx, %broadcast.splat85
  %i.xz = add <4 x i32> %i.xt, %i.xy
  %i.ya = sub nsw <4 x i32> %i.xv, %i.xu
  %i.yb = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ya, i1 true)
  %i.yc = mul nuw nsw <4 x i32> %i.yb, %broadcast.splat87
  %i.yd = add <4 x i32> %i.xz, %i.yc
  %i.ye = sub nsw <4 x i32> %i.xp, %i.xm
  %i.yf = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ye, i1 true)
  %i.yg = mul nuw nsw <4 x i32> %i.yf, %broadcast.splat89
  %i.yh = add <4 x i32> %i.yd, %i.yg
  %i.yi = sub nsw <4 x i32> %i.cw, %i.bv          ; 2 uses
  %i.yj = sub nsw <4 x i32> %i.ez, %i.dy          ; 2 uses
  %i.yk = add nsw <4 x i32> %i.yi, %i.yj          ; 2 uses
  %i.yl = sub nsw <4 x i32> %i.hd, %i.gc          ; 2 uses
  %i.ym = sub nsw <4 x i32> %i.jf, %i.if          ; 2 uses
  %i.yn = add nsw <4 x i32> %i.yl, %i.ym          ; 2 uses
  %i.yo = add nsw <4 x i32> %i.yk, %i.yn
  %i.yp = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.yo, i1 true)
  %i.yq = mul nuw nsw <4 x i32> %i.yp, %broadcast.splat91
  %i.yr = add <4 x i32> %i.yh, %i.yq
  %i.ys = sub nsw <4 x i32> %i.yj, %i.yi          ; 2 uses
  %i.yt = sub nsw <4 x i32> %i.ym, %i.yl          ; 2 uses
  %i.yu = add nsw <4 x i32> %i.ys, %i.yt
  %i.yv = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.yu, i1 true)
  %i.yw = mul nuw nsw <4 x i32> %i.yv, %broadcast.splat93
  %i.yx = add <4 x i32> %i.yr, %i.yw
  %i.yy = sub nsw <4 x i32> %i.yt, %i.ys
  %i.yz = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.yy, i1 true)
  %i.za = mul nuw nsw <4 x i32> %i.yz, %broadcast.splat95
  %i.zb = add <4 x i32> %i.yx, %i.za
  %i.zc = sub nsw <4 x i32> %i.yn, %i.yk
  %i.zd = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.zc, i1 true)
  %i.ze = mul nuw nsw <4 x i32> %i.zd, %broadcast.splat97
  %i.zf = add <4 x i32> %i.zb, %i.ze
  %i.zg = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.zf, i1 true)
  %i.zh = lshr <4 x i32> %i.zg, splat (i32 5)
  %i.zi = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.01362, i64 0
  %i.zj = add <4 x i32> %i.zh, %i.zi
  %i.zk = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.zj) ; 2 uses
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 128
  %i.zl = icmp samesign ult i64 %indvars.iv65, 384
  br i1 %i.zl, label %.preheader, label %bb.b, !llvm.loop !40

bb.b:                                             ; preds = %.preheader
  ret i32 %i.zk
}

; Function Attrs: nounwind uwtable
define internal void @CollectHistogram_C(ptr noalias noundef %0, ptr noalias noundef %1, i32 noundef %2, i32 noundef %3, ptr noalias nofree noundef writeonly captures(none) %4) #2 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 20 uses
  %i.b = alloca [16 x i16], align 16              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.c = icmp slt i32 %2, %3
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = sext i32 %2 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.d, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.l = load ptr, ptr @VP8FTransform, align 8, !tbaa !10
  %i.m = getelementptr inbounds [4 x i8], ptr @VP8DspScan, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3
  %i.o = sext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.o
  %i.q = getelementptr inbounds i8, ptr %1, i64 %i.o
  call void %i.l(ptr noundef %i.p, ptr noundef %i.q, ptr noundef nonnull %i.b) #17
  %5 = load <2 x i16>, ptr %i.b, align 16, !tbaa !18
  %6 = call <2 x i16> @llvm.abs.v2i16(<2 x i16> %5, i1 false)
  %7 = lshr <2 x i16> %6, splat (i16 3)
  %8 = call <2 x i16> @llvm.umin.v2i16(<2 x i16> %7, <2 x i16> splat (i16 31))
  %9 = trunc nuw nsw <2 x i16> %8 to <2 x i8>     ; 2 uses
  %10 = extractelement <2 x i8> %9, i64 0
  %i.r = zext nneg i8 %10 to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !3
  %11 = extractelement <2 x i8> %9, i64 1
  %i.v = zext nneg i8 %11 to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !3
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 4, !tbaa !3
  %12 = load <2 x i16>, ptr %i.e, align 4, !tbaa !18
  %13 = call <2 x i16> @llvm.abs.v2i16(<2 x i16> %12, i1 false)
  %14 = lshr <2 x i16> %13, splat (i16 3)
  %15 = call <2 x i16> @llvm.umin.v2i16(<2 x i16> %14, <2 x i16> splat (i16 31))
  %16 = trunc nuw nsw <2 x i16> %15 to <2 x i8>   ; 2 uses
  %17 = extractelement <2 x i8> %16, i64 0
  %i.z = zext nneg i8 %17 to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !3
  %18 = extractelement <2 x i8> %16, i64 1
  %i.ad = zext nneg i8 %18 to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !3
  %19 = load <2 x i16>, ptr %i.f, align 8, !tbaa !18
  %20 = call <2 x i16> @llvm.abs.v2i16(<2 x i16> %19, i1 false)
  %21 = lshr <2 x i16> %20, splat (i16 3)
  %22 = call <2 x i16> @llvm.umin.v2i16(<2 x i16> %21, <2 x i16> splat (i16 31))
  %23 = trunc nuw nsw <2 x i16> %22 to <2 x i8>   ; 2 uses
  %24 = extractelement <2 x i8> %23, i64 0
  %i.ah = zext nneg i8 %24 to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !3
  %25 = extractelement <2 x i8> %23, i64 1
  %i.al = zext nneg i8 %25 to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.al ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !3
  %26 = load <2 x i16>, ptr %i.g, align 4, !tbaa !18
  %27 = call <2 x i16> @llvm.abs.v2i16(<2 x i16> %26, i1 false)
  %28 = lshr <2 x i16> %27, splat (i16 3)
  %29 = call <2 x i16> @llvm.umin.v2i16(<2 x i16> %28, <2 x i16> splat (i16 31))
  %30 = trunc nuw nsw <2 x i16> %29 to <2 x i8>   ; 2 uses
  %31 = extractelement <2 x i8> %30, i64 0
  %i.ap = zext nneg i8 %31 to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ap ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !3
  %32 = extractelement <2 x i8> %30, i64 1
  %i.at = zext nneg i8 %32 to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.at ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !3
  %33 = load <2 x i16>, ptr %i.h, align 16, !tbaa !18
  %34 = call <2 x i16> @llvm.abs.v2i16(<2 x i16> %33, i1 false)
  %35 = lshr <2 x i16> %34, splat (i16 3)
  %36 = call <2 x i16> @llvm.umin.v2i16(<2 x i16> %35, <2 x i16> splat (i16 31))
  %37 = trunc nuw nsw <2 x i16> %36 to <2 x i8>   ; 2 uses
  %38 = extractelement <2 x i8> %37, i64 0
  %i.ax = zext nneg i8 %38 to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !3
  %39 = extractelement <2 x i8> %37, i64 1
  %i.bb = zext nneg i8 %39 to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = add nsw i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !3
  %40 = load <2 x i16>, ptr %i.i, align 4, !tbaa !18
  %41 = call <2 x i16> @llvm.abs.v2i16(<2 x i16> %40, i1 false)
  %42 = lshr <2 x i16> %41, splat (i16 3)
  %43 = call <2 x i16> @llvm.umin.v2i16(<2 x i16> %42, <2 x i16> splat (i16 31))
  %44 = trunc nuw nsw <2 x i16> %43 to <2 x i8>   ; 2 uses
  %45 = extractelement <2 x i8> %44, i64 0
  %i.bf = zext nneg i8 %45 to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !3
  %46 = extractelement <2 x i8> %44, i64 1
  %i.bj = zext nneg i8 %46 to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bj ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3
  %i.bm = add nsw i32 %i.bl, 1
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !3
  %47 = load <2 x i16>, ptr %i.j, align 8, !tbaa !18
  %48 = call <2 x i16> @llvm.abs.v2i16(<2 x i16> %47, i1 false)
  %49 = lshr <2 x i16> %48, splat (i16 3)
  %50 = call <2 x i16> @llvm.umin.v2i16(<2 x i16> %49, <2 x i16> splat (i16 31))
  %51 = trunc nuw nsw <2 x i16> %50 to <2 x i8>   ; 2 uses
  %52 = extractelement <2 x i8> %51, i64 0
  %i.bn = zext nneg i8 %52 to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bn ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  %i.bq = add nsw i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !3
  %53 = extractelement <2 x i8> %51, i64 1
  %i.br = zext nneg i8 %53 to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !3
  %i.bu = add nsw i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !3
  %54 = load <2 x i16>, ptr %i.k, align 4, !tbaa !18
  %55 = call <2 x i16> @llvm.abs.v2i16(<2 x i16> %54, i1 false)
  %56 = lshr <2 x i16> %55, splat (i16 3)
  %57 = call <2 x i16> @llvm.umin.v2i16(<2 x i16> %56, <2 x i16> splat (i16 31))
  %58 = trunc nuw nsw <2 x i16> %57 to <2 x i8>   ; 2 uses
  %59 = extractelement <2 x i8> %58, i64 0
  %i.bv = zext nneg i8 %59 to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bv ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !3
  %60 = extractelement <2 x i8> %58, i64 1
  %i.bz = zext nneg i8 %60 to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bz ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  %i.cc = add nsw i32 %i.cb, 1
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %3, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !41

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @VP8SetHistogramData(ptr noundef nonnull %i.a, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: read) uwtable
define internal i32 @SSE16x16_C(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1) #7 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %bb.a
  %.024.i = phi ptr [ %0, %bb.a ], [ %i.h, %.preheader.i ] ; 2 uses
  %.01623.i = phi i32 [ 0, %bb.a ], [ %i.j, %.preheader.i ]
  %.01722.i = phi i32 [ 0, %bb.a ], [ %op.rdx, %.preheader.i ]
  %.01821.i = phi ptr [ %1, %bb.a ], [ %i.i, %.preheader.i ] ; 2 uses
  %i.a = load <16 x i8>, ptr %.024.i, align 1, !tbaa !12, !alias.scope !42, !noalias !45
  %i.b = zext <16 x i8> %i.a to <16 x i32>
  %i.c = load <16 x i8>, ptr %.01821.i, align 1, !tbaa !12, !alias.scope !45, !noalias !42
  %i.d = zext <16 x i8> %i.c to <16 x i32>
  %i.e = sub nsw <16 x i32> %i.b, %i.d            ; 2 uses
  %i.f = mul nsw <16 x i32> %i.e, %i.e
  %i.g = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.f)
  %op.rdx = add i32 %i.g, %.01722.i               ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.024.i, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %.01821.i, i64 32
  %i.j = add nuw nsw i32 %.01623.i, 1             ; 2 uses
  %exitcond26.not.i = icmp eq i32 %i.j, 16
  br i1 %exitcond26.not.i, label %GetSSE.exit, label %.preheader.i, !llvm.loop !47

GetSSE.exit:                                      ; preds = %.preheader.i
  ret i32 %op.rdx
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: read) uwtable
define internal i32 @SSE16x8_C(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1) #7 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %bb.a
  %.024.i = phi ptr [ %0, %bb.a ], [ %i.h, %.preheader.i ] ; 2 uses
  %.01623.i = phi i32 [ 0, %bb.a ], [ %i.j, %.preheader.i ]
  %.01722.i = phi i32 [ 0, %bb.a ], [ %op.rdx, %.preheader.i ]
  %.01821.i = phi ptr [ %1, %bb.a ], [ %i.i, %.preheader.i ] ; 2 uses
  %i.a = load <16 x i8>, ptr %.024.i, align 1, !tbaa !12, !alias.scope !48, !noalias !51
  %i.b = zext <16 x i8> %i.a to <16 x i32>
  %i.c = load <16 x i8>, ptr %.01821.i, align 1, !tbaa !12, !alias.scope !51, !noalias !48
  %i.d = zext <16 x i8> %i.c to <16 x i32>
  %i.e = sub nsw <16 x i32> %i.b, %i.d            ; 2 uses
  %i.f = mul nsw <16 x i32> %i.e, %i.e
  %i.g = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.f)
  %op.rdx = add i32 %i.g, %.01722.i               ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.024.i, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %.01821.i, i64 32
  %i.j = add nuw nsw i32 %.01623.i, 1             ; 2 uses
  %exitcond26.not.i = icmp eq i32 %i.j, 8
  br i1 %exitcond26.not.i, label %GetSSE.exit, label %.preheader.i, !llvm.loop !47

GetSSE.exit:                                      ; preds = %.preheader.i
  ret i32 %op.rdx
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: read) uwtable
define internal i32 @SSE8x8_C(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1) #7 {
.preheader.i:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.a = load <8 x i8>, ptr %0, align 1, !tbaa !12, !alias.scope !53, !noalias !56
  %i.b = zext <8 x i8> %i.a to <8 x i32>
  %i.c = load <8 x i8>, ptr %1, align 1, !tbaa !12, !alias.scope !56, !noalias !53
  %i.d = zext <8 x i8> %i.c to <8 x i32>
  %i.e = sub nsw <8 x i32> %i.b, %i.d             ; 2 uses
  %i.f = mul nsw <8 x i32> %i.e, %i.e
  %i.g = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load <8 x i8>, ptr %i.h, align 1, !tbaa !12, !alias.scope !53, !noalias !56
  %i.k = zext <8 x i8> %i.j to <8 x i32>
  %i.l = load <8 x i8>, ptr %i.i, align 1, !tbaa !12, !alias.scope !56, !noalias !53
  %i.m = zext <8 x i8> %i.l to <8 x i32>
  %i.n = sub nsw <8 x i32> %i.k, %i.m             ; 2 uses
  %i.o = mul nsw <8 x i32> %i.n, %i.n
  %i.p = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.o)
  %op.rdx.1 = add i32 %i.p, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load <8 x i8>, ptr %i.q, align 1, !tbaa !12, !alias.scope !53, !noalias !56
  %i.t = zext <8 x i8> %i.s to <8 x i32>
  %i.u = load <8 x i8>, ptr %i.r, align 1, !tbaa !12, !alias.scope !56, !noalias !53
  %i.v = zext <8 x i8> %i.u to <8 x i32>
  %i.w = sub nsw <8 x i32> %i.t, %i.v             ; 2 uses
  %i.x = mul nsw <8 x i32> %i.w, %i.w
  %i.y = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.x)
  %op.rdx.2 = add i32 %i.y, %op.rdx.1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ab = load <8 x i8>, ptr %i.z, align 1, !tbaa !12, !alias.scope !53, !noalias !56
  %i.ac = zext <8 x i8> %i.ab to <8 x i32>
  %i.ad = load <8 x i8>, ptr %i.aa, align 1, !tbaa !12, !alias.scope !56, !noalias !53
  %i.ae = zext <8 x i8> %i.ad to <8 x i32>
  %i.af = sub nsw <8 x i32> %i.ac, %i.ae          ; 2 uses
  %i.ag = mul nsw <8 x i32> %i.af, %i.af
  %i.ah = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.ag)
  %op.rdx.3 = add i32 %i.ah, %op.rdx.2
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ak = load <8 x i8>, ptr %i.ai, align 1, !tbaa !12, !alias.scope !53, !noalias !56
  %i.al = zext <8 x i8> %i.ak to <8 x i32>
  %i.am = load <8 x i8>, ptr %i.aj, align 1, !tbaa !12, !alias.scope !56, !noalias !53
  %i.an = zext <8 x i8> %i.am to <8 x i32>
  %i.ao = sub nsw <8 x i32> %i.al, %i.an          ; 2 uses
  %i.ap = mul nsw <8 x i32> %i.ao, %i.ao
  %i.aq = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.ap)
  %op.rdx.4 = add i32 %i.aq, %op.rdx.3
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.at = load <8 x i8>, ptr %i.ar, align 1, !tbaa !12, !alias.scope !53, !noalias !56
  %i.au = zext <8 x i8> %i.at to <8 x i32>
  %i.av = load <8 x i8>, ptr %i.as, align 1, !tbaa !12, !alias.scope !56, !noalias !53
  %i.aw = zext <8 x i8> %i.av to <8 x i32>
  %i.ax = sub nsw <8 x i32> %i.au, %i.aw          ; 2 uses
  %i.ay = mul nsw <8 x i32> %i.ax, %i.ax
  %i.az = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.ay)
  %op.rdx.5 = add i32 %i.az, %op.rdx.4
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.bc = load <8 x i8>, ptr %i.ba, align 1, !tbaa !12, !alias.scope !53, !noalias !56
  %i.bd = zext <8 x i8> %i.bc to <8 x i32>
  %i.be = load <8 x i8>, ptr %i.bb, align 1, !tbaa !12, !alias.scope !56, !noalias !53
  %i.bf = zext <8 x i8> %i.be to <8 x i32>
  %i.bg = sub nsw <8 x i32> %i.bd, %i.bf          ; 2 uses
  %i.bh = mul nsw <8 x i32> %i.bg, %i.bg
  %i.bi = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.bh)
  %op.rdx.6 = add i32 %i.bi, %op.rdx.5
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.bl = load <8 x i8>, ptr %i.bj, align 1, !tbaa !12, !alias.scope !53, !noalias !56
  %i.bm = zext <8 x i8> %i.bl to <8 x i32>
  %i.bn = load <8 x i8>, ptr %i.bk, align 1, !tbaa !12, !alias.scope !56, !noalias !53
  %i.bo = zext <8 x i8> %i.bn to <8 x i32>
  %i.bp = sub nsw <8 x i32> %i.bm, %i.bo          ; 2 uses
  %i.bq = mul nsw <8 x i32> %i.bp, %i.bp
  %i.br = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.bq)
  %op.rdx.7 = add i32 %i.br, %op.rdx.6
  ret i32 %op.rdx.7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define internal range(i32 -1040400, 1040401) i32 @SSE4x4_C(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1) #8 {
.preheader.i:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load <4 x i8>, ptr %0, align 1, !tbaa !12, !alias.scope !58, !noalias !61
  %i.d = load <4 x i8>, ptr %1, align 1, !tbaa !12, !alias.scope !61, !noalias !58
  %i.e = load <4 x i8>, ptr %i.a, align 1, !tbaa !12, !alias.scope !58, !noalias !61
  %i.f = shufflevector <4 x i8> %i.c, <4 x i8> %i.e, <8 x i32> <i32 1, i32 0, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.g = zext <8 x i8> %i.f to <8 x i32>
  %i.h = load <4 x i8>, ptr %i.b, align 1, !tbaa !12, !alias.scope !61, !noalias !58
  %i.i = shufflevector <4 x i8> %i.d, <4 x i8> %i.h, <8 x i32> <i32 1, i32 0, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.j = zext <8 x i8> %i.i to <8 x i32>
  %i.k = sub nsw <8 x i32> %i.g, %i.j             ; 2 uses
  %i.l = mul nsw <8 x i32> %i.k, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.q = load <4 x i8>, ptr %i.m, align 1, !tbaa !12, !alias.scope !58, !noalias !61
  %i.r = load <4 x i8>, ptr %i.n, align 1, !tbaa !12, !alias.scope !61, !noalias !58
  %i.s = load <4 x i8>, ptr %i.o, align 1, !tbaa !12, !alias.scope !58, !noalias !61
  %i.t = shufflevector <4 x i8> %i.q, <4 x i8> %i.s, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.u = zext <8 x i8> %i.t to <8 x i32>
  %i.v = load <4 x i8>, ptr %i.p, align 1, !tbaa !12, !alias.scope !61, !noalias !58
  %i.w = shufflevector <4 x i8> %i.r, <4 x i8> %i.v, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.x = zext <8 x i8> %i.w to <8 x i32>
  %i.y = sub nsw <8 x i32> %i.u, %i.x             ; 2 uses
  %i.z = mul nsw <8 x i32> %i.y, %i.y
  %rdx.op = add nuw nsw <8 x i32> %i.l, %i.z
  %i.aa = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %rdx.op)
  ret i32 %i.aa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal range(i32 0, 2) i32 @QuantizeBlock_C(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2) #9 {
bb.a:
end_hunk_0
begin_hunk_1_@TTransform:.preheader.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 35
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !12
  %i.af = zext i8 %i.ae to i32                    ; 2 uses
  %i.ag = add nuw nsw i32 %i.af, %i.ac            ; 2 uses
  %i.ah = sub nsw i32 %i.ac, %i.af                ; 2 uses
  %i.ai = sub nsw i32 %i.v, %i.y                  ; 2 uses
  %i.aj = add nuw nsw i32 %i.ag, %i.z             ; 2 uses
  %i.ak = add nsw i32 %i.ah, %i.ai                ; 2 uses
  %i.al = sub nsw i32 %i.ai, %i.ah                ; 2 uses
  %i.am = sub nsw i32 %i.z, %i.ag                 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !12
  %i.ap = zext i8 %i.ao to i32                    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !12
  %i.as = zext i8 %i.ar to i32                    ; 2 uses
  %i.at = add nuw nsw i32 %i.as, %i.ap            ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.av = load i8, ptr %i.au, align 1, !tbaa !12
  %i.aw = zext i8 %i.av to i32                    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 67
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !12
  %i.az = zext i8 %i.ay to i32                    ; 2 uses
  %i.ba = add nuw nsw i32 %i.az, %i.aw            ; 2 uses
  %i.bb = sub nsw i32 %i.aw, %i.az                ; 2 uses
  %i.bc = sub nsw i32 %i.ap, %i.as                ; 2 uses
  %i.bd = add nuw nsw i32 %i.ba, %i.at            ; 2 uses
  %i.be = add nsw i32 %i.bb, %i.bc                ; 2 uses
  %i.bf = sub nsw i32 %i.bc, %i.bb                ; 2 uses
  %i.bg = sub nsw i32 %i.at, %i.ba                ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !12
  %i.bj = zext i8 %i.bi to i32                    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !12
  %i.bm = zext i8 %i.bl to i32                    ; 2 uses
  %i.bn = add nuw nsw i32 %i.bm, %i.bj            ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !12
  %i.bq = zext i8 %i.bp to i32                    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 99
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !12
  %i.bt = zext i8 %i.bs to i32                    ; 2 uses
  %i.bu = add nuw nsw i32 %i.bt, %i.bq            ; 2 uses
  %i.bv = sub nsw i32 %i.bq, %i.bt                ; 2 uses
  %i.bw = sub nsw i32 %i.bj, %i.bm                ; 2 uses
  %i.bx = add nuw nsw i32 %i.bu, %i.bn            ; 2 uses
  %i.by = add nsw i32 %i.bv, %i.bw                ; 2 uses
  %i.bz = sub nsw i32 %i.bw, %i.bv                ; 2 uses
  %i.ca = sub nsw i32 %i.bn, %i.bu                ; 2 uses
  %i.cb = add nuw nsw i32 %i.bd, %i.p             ; 2 uses
  %i.cc = add nuw nsw i32 %i.bx, %i.aj            ; 2 uses
  %i.cd = sub nsw i32 %i.aj, %i.bx                ; 2 uses
  %i.ce = sub nsw i32 %i.p, %i.bd                 ; 2 uses
  %i.cf = add nuw nsw i32 %i.cc, %i.cb
  %i.cg = add nsw i32 %i.cd, %i.ce
  %i.ch = sub nsw i32 %i.ce, %i.cd
  %i.ci = sub nsw i32 %i.cb, %i.cc
  %i.cj = load i16, ptr %1, align 2, !tbaa !18
  %i.ck = zext i16 %i.cj to i32
  %i.cl = mul nuw nsw i32 %i.cf, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !18
  %i.co = zext i16 %i.cn to i32
  %i.cp = tail call i32 @llvm.abs.i32(i32 %i.cg, i1 true)
  %i.cq = mul nuw nsw i32 %i.cp, %i.co
  %i.cr = add nuw nsw i32 %i.cl, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !18
  %i.cu = zext i16 %i.ct to i32
  %i.cv = tail call i32 @llvm.abs.i32(i32 %i.ch, i1 true)
  %i.cw = mul nuw nsw i32 %i.cv, %i.cu
  %i.cx = add nuw nsw i32 %i.cr, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !18
  %i.da = zext i16 %i.cz to i32
  %i.db = tail call i32 @llvm.abs.i32(i32 %i.ci, i1 true)
  %i.dc = mul nuw nsw i32 %i.db, %i.da
  %i.dd = add nuw nsw i32 %i.cx, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.df = add nsw i32 %i.be, %i.q                 ; 2 uses
  %i.dg = add nsw i32 %i.by, %i.ak                ; 2 uses
  %i.dh = sub nsw i32 %i.ak, %i.by                ; 2 uses
  %i.di = sub nsw i32 %i.q, %i.be                 ; 2 uses
  %i.dj = add nsw i32 %i.dg, %i.df
  %i.dk = add nsw i32 %i.dh, %i.di
  %i.dl = sub nsw i32 %i.di, %i.dh
  %i.dm = sub nsw i32 %i.df, %i.dg
  %i.dn = load i16, ptr %i.de, align 2, !tbaa !18
  %i.do = zext i16 %i.dn to i32
  %i.dp = tail call i32 @llvm.abs.i32(i32 %i.dj, i1 true)
  %i.dq = mul nuw nsw i32 %i.dp, %i.do
  %i.dr = add nuw nsw i32 %i.dq, %i.dd
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !18
  %i.du = zext i16 %i.dt to i32
  %i.dv = tail call i32 @llvm.abs.i32(i32 %i.dk, i1 true)
  %i.dw = mul nuw nsw i32 %i.dv, %i.du
  %i.dx = add nuw nsw i32 %i.dr, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !18
  %i.ea = zext i16 %i.dz to i32
  %i.eb = tail call i32 @llvm.abs.i32(i32 %i.dl, i1 true)
  %i.ec = mul nuw nsw i32 %i.eb, %i.ea
  %i.ed = add nuw nsw i32 %i.dx, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !18
  %i.eg = zext i16 %i.ef to i32
  %i.eh = tail call i32 @llvm.abs.i32(i32 %i.dm, i1 true)
  %i.ei = mul nuw nsw i32 %i.eh, %i.eg
  %i.ej = add nuw nsw i32 %i.ed, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.el = add nsw i32 %i.bf, %i.r                 ; 2 uses
  %i.em = add nsw i32 %i.bz, %i.al                ; 2 uses
  %i.en = sub nsw i32 %i.al, %i.bz                ; 2 uses
  %i.eo = sub nsw i32 %i.r, %i.bf                 ; 2 uses
  %i.ep = add nsw i32 %i.em, %i.el
  %i.eq = add nsw i32 %i.en, %i.eo
  %i.er = sub nsw i32 %i.eo, %i.en
  %i.es = sub nsw i32 %i.el, %i.em
  %i.et = load i16, ptr %i.ek, align 2, !tbaa !18
  %i.eu = zext i16 %i.et to i32
  %i.ev = tail call i32 @llvm.abs.i32(i32 %i.ep, i1 true)
  %i.ew = mul nuw nsw i32 %i.ev, %i.eu
  %i.ex = add nuw nsw i32 %i.ew, %i.ej
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !18
  %i.fa = zext i16 %i.ez to i32
  %i.fb = tail call i32 @llvm.abs.i32(i32 %i.eq, i1 true)
  %i.fc = mul nuw nsw i32 %i.fb, %i.fa
  %i.fd = add nuw nsw i32 %i.ex, %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !18
  %i.fg = zext i16 %i.ff to i32
  %i.fh = tail call i32 @llvm.abs.i32(i32 %i.er, i1 true)
  %i.fi = mul nuw nsw i32 %i.fh, %i.fg
  %i.fj = add nuw nsw i32 %i.fd, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !18
  %i.fm = zext i16 %i.fl to i32
  %i.fn = tail call i32 @llvm.abs.i32(i32 %i.es, i1 true)
  %i.fo = mul nuw nsw i32 %i.fn, %i.fm
  %i.fp = add nuw nsw i32 %i.fj, %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.fr = add nsw i32 %i.bg, %i.s                 ; 2 uses
  %i.fs = add nsw i32 %i.ca, %i.am                ; 2 uses
  %i.ft = sub nsw i32 %i.am, %i.ca                ; 2 uses
  %i.fu = sub nsw i32 %i.s, %i.bg                 ; 2 uses
  %i.fv = add nsw i32 %i.fs, %i.fr
  %i.fw = add nsw i32 %i.ft, %i.fu
  %i.fx = sub nsw i32 %i.fu, %i.ft
  %i.fy = sub nsw i32 %i.fr, %i.fs
  %i.fz = load i16, ptr %i.fq, align 2, !tbaa !18
  %i.ga = zext i16 %i.fz to i32
  %i.gb = tail call i32 @llvm.abs.i32(i32 %i.fv, i1 true)
  %i.gc = mul nuw nsw i32 %i.gb, %i.ga
  %i.gd = add nuw nsw i32 %i.gc, %i.fp
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !18
  %i.gg = zext i16 %i.gf to i32
  %i.gh = tail call i32 @llvm.abs.i32(i32 %i.fw, i1 true)
  %i.gi = mul nuw nsw i32 %i.gh, %i.gg
  %i.gj = add nuw nsw i32 %i.gd, %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !18
  %i.gm = zext i16 %i.gl to i32
  %i.gn = tail call i32 @llvm.abs.i32(i32 %i.fx, i1 true)
  %i.go = mul nuw nsw i32 %i.gn, %i.gm
  %i.gp = add nuw nsw i32 %i.gj, %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !18
  %i.gs = zext i16 %i.gr to i32
  %i.gt = tail call i32 @llvm.abs.i32(i32 %i.fy, i1 true)
  %i.gu = mul nuw nsw i32 %i.gt, %i.gs
  %i.gv = add nuw nsw i32 %i.gp, %i.gu
  ret i32 %i.gv
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smax.v16i32(<16 x i32>, <16 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umin.v16i32(<16 x i32>, <16 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.abs.v2i16(<2 x i16>, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.umin.v2i16(<2 x i16>, <2 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v16i16(<16 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v8i16(<8 x i16>) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 0}
!8 = !{!"", !4, i64 0, !4, i64 4}
!9 = !{!8, !4, i64 4}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!5, !5, i64 0}
!13 = distinct !{!13, !14, !15, !16}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{null}
!18 = !{!19, !19, i64 0}
!19 = !{!"short", !5, i64 0}
!20 = !{!21, !23, !25}
!21 = distinct !{!21, !22, !"TTransform: argument 1"}
!22 = distinct !{!22, !"TTransform"}
!23 = distinct !{!23, !24, !"Disto4x4_C: argument 0"}
!24 = distinct !{!24, !"Disto4x4_C"}
!25 = distinct !{!25, !24, !"Disto4x4_C: argument 2"}
!26 = !{!27, !28}
!27 = distinct !{!27, !22, !"TTransform: argument 0"}
!28 = distinct !{!28, !24, !"Disto4x4_C: argument 1"}
!29 = !{!23}
!30 = !{!28}
!31 = !{!27}
!32 = !{!21}
!33 = !{!34, !28, !25}
!34 = distinct !{!34, !35, !"TTransform: argument 0"}
!35 = distinct !{!35, !"TTransform"}
!36 = !{!37, !23}
!37 = distinct !{!37, !35, !"TTransform: argument 1"}
!38 = !{!27, !23, !25}
!39 = !{!21, !28}
!40 = distinct !{!40, !14}
!41 = distinct !{!41, !14}
!42 = !{!43}
!43 = distinct !{!43, !44, !"GetSSE: argument 0"}
!44 = distinct !{!44, !"GetSSE"}
!45 = !{!46}
!46 = distinct !{!46, !44, !"GetSSE: argument 1"}
!47 = distinct !{!47, !14}
!48 = !{!49}
!49 = distinct !{!49, !50, !"GetSSE: argument 0"}
!50 = distinct !{!50, !"GetSSE"}
!51 = !{!52}
!52 = distinct !{!52, !50, !"GetSSE: argument 1"}
!53 = !{!54}
!54 = distinct !{!54, !55, !"GetSSE: argument 0"}
!55 = distinct !{!55, !"GetSSE"}
!56 = !{!57}
!57 = distinct !{!57, !55, !"GetSSE: argument 1"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"GetSSE: argument 0"}
!60 = distinct !{!60, !"GetSSE"}
!61 = !{!62}
!62 = distinct !{!62, !60, !"GetSSE: argument 1"}
!63 = distinct !{!63, !14}
!64 = !{!65}
!65 = distinct !{!65, !66, !"DC4: argument 0"}
!66 = distinct !{!66, !"DC4"}
!67 = !{!68}
!68 = distinct !{!68, !66, !"DC4: argument 1"}
!69 = !{!70}
!70 = distinct !{!70, !71, !"TM4: argument 0"}
!71 = distinct !{!71, !"TM4"}
!72 = !{!73}
!73 = distinct !{!73, !71, !"TM4: argument 1"}
!74 = !{!70, !73}
!75 = !{!76}
!76 = distinct !{!76, !77, !"VE4: argument 0"}
!77 = distinct !{!77, !"VE4"}
!78 = !{!79}
!79 = distinct !{!79, !77, !"VE4: argument 1"}
!80 = !{!81}
!81 = distinct !{!81, !82, !"HE4: argument 0"}
!82 = distinct !{!82, !"HE4"}
!83 = !{!84}
!84 = distinct !{!84, !82, !"HE4: argument 1"}
!85 = !{!86}
!86 = distinct !{!86, !87, !"RD4: argument 0"}
!87 = distinct !{!87, !"RD4"}
!88 = !{!89}
!89 = distinct !{!89, !87, !"RD4: argument 1"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"VR4: argument 0"}
!92 = distinct !{!92, !"VR4"}
!93 = !{!94}
!94 = distinct !{!94, !92, !"VR4: argument 1"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"LD4: argument 0"}
!97 = distinct !{!97, !"LD4"}
!98 = !{!99}
!99 = distinct !{!99, !97, !"LD4: argument 1"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"VL4: argument 0"}
!102 = distinct !{!102, !"VL4"}
!103 = !{!104}
!104 = distinct !{!104, !102, !"VL4: argument 1"}
!105 = !{!106}
!106 = distinct !{!106, !107, !"HD4: argument 0"}
!107 = distinct !{!107, !"HD4"}
!108 = !{!109}
!109 = distinct !{!109, !107, !"HD4: argument 1"}
!110 = !{!111}
!111 = distinct !{!111, !112, !"HU4: argument 0"}
!112 = distinct !{!112, !"HU4"}
!113 = !{!114}
!114 = distinct !{!114, !112, !"HU4: argument 1"}
!115 = !{!116}
!116 = distinct !{!116, !117, !"DCMode: argument 0"}
!117 = distinct !{!117, !"DCMode"}
!118 = !{!119}
!119 = distinct !{!119, !117, !"DCMode: argument 1"}
!120 = !{!121}
!121 = distinct !{!121, !117, !"DCMode: argument 2"}
!122 = !{!116, !119}
!123 = !{!116, !121}
!124 = !{!119, !121}
!125 = !{!126}
!126 = distinct !{!126, !127, !"VerticalPred: argument 1"}
!127 = distinct !{!127, !"VerticalPred"}
!128 = !{!129, !126}
!129 = distinct !{!129, !127, !"VerticalPred: argument 0"}
!130 = !{!129}
!131 = !{!132}
!132 = distinct !{!132, !133, !"HorizontalPred: argument 0"}
!133 = distinct !{!133, !"HorizontalPred"}
!134 = !{!135}
!135 = distinct !{!135, !133, !"HorizontalPred: argument 1"}
!136 = !{!137}
!137 = distinct !{!137, !138, !"TrueMotion: argument 0"}
!138 = distinct !{!138, !"TrueMotion"}
!139 = !{!140}
!140 = distinct !{!140, !138, !"TrueMotion: argument 1"}
!141 = !{!142}
!142 = distinct !{!142, !138, !"TrueMotion: argument 2"}
!143 = !{!137, !142}
!144 = !{!137, !140}
!145 = !{!137, !140, !142}
!146 = !{!140, !142}
!147 = distinct !{!147, !14}
!148 = !{!149, !137}
!149 = distinct !{!149, !150, !"HorizontalPred: argument 0"}
!150 = distinct !{!150, !"HorizontalPred"}
!151 = !{!152, !140, !142}
!152 = distinct !{!152, !150, !"HorizontalPred: argument 1"}
!153 = !{!154, !156, !137, !142}
!154 = distinct !{!154, !155, !"VerticalPred: argument 0"}
!155 = distinct !{!155, !"VerticalPred"}
!156 = distinct !{!156, !155, !"VerticalPred: argument 1"}
!157 = !{!158}
!158 = distinct !{!158, !159, !"DCMode: argument 0"}
!159 = distinct !{!159, !"DCMode"}
!160 = !{!161}
!161 = distinct !{!161, !159, !"DCMode: argument 1"}
!162 = !{!163}
!163 = distinct !{!163, !159, !"DCMode: argument 2"}
!164 = !{!158, !161}
end_hunk_1
