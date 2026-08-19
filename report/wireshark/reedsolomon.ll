inline.NumInlined: 20
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@eras_dec_rs:bb.a
  %i.rp = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store i32 %i.ro, ptr %i.rp, align 16
  %i.rq = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  %i.rr = load i32, ptr %i.rq, align 4
  %i.rs = sext i32 %i.rr to i64
  %i.rt = getelementptr [4 x i8], ptr @Index_of, i64 %i.rs
  %i.ru = load i32, ptr %i.rt, align 4
  %i.rv = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  store i32 %i.ru, ptr %i.rv, align 4
  %i.rw = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.rx = load i32, ptr %i.rw, align 8
  %i.ry = sext i32 %i.rx to i64
  %i.rz = getelementptr [4 x i8], ptr @Index_of, i64 %i.ry
  %i.sa = load i32, ptr %i.rz, align 4
  %i.sb = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i32 %i.sa, ptr %i.sb, align 8
  %i.sc = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  %i.sd = load i32, ptr %i.sc, align 4
  %i.se = sext i32 %i.sd to i64
  %i.sf = getelementptr [4 x i8], ptr @Index_of, i64 %i.se
  %i.sg = load i32, ptr %i.sf, align 4
  %i.sh = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  store i32 %i.sg, ptr %i.sh, align 4
  %i.si = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.sj = load i32, ptr %i.si, align 16
  %i.sk = sext i32 %i.sj to i64
  %i.sl = getelementptr [4 x i8], ptr @Index_of, i64 %i.sk
  %i.sm = load i32, ptr %i.sl, align 4
  %i.sn = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store i32 %i.sm, ptr %i.sn, align 16
  %i.so = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  %i.sp = load i32, ptr %i.so, align 4
  %i.sq = sext i32 %i.sp to i64
  %i.sr = getelementptr [4 x i8], ptr @Index_of, i64 %i.sq
  %i.ss = load i32, ptr %i.sr, align 4
  %i.st = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  store i32 %i.ss, ptr %i.st, align 4
  %i.su = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.sv = load i32, ptr %i.su, align 8
  %i.sw = sext i32 %i.sv to i64
  %i.sx = getelementptr [4 x i8], ptr @Index_of, i64 %i.sw
  %i.sy = load i32, ptr %i.sx, align 4
  %i.sz = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store i32 %i.sy, ptr %i.sz, align 8
  %i.ta = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  %i.tb = load i32, ptr %i.ta, align 4
  %i.tc = sext i32 %i.tb to i64
  %i.td = getelementptr [4 x i8], ptr @Index_of, i64 %i.tc
  %i.te = load i32, ptr %i.td, align 4
  %i.tf = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  store i32 %i.te, ptr %i.tf, align 4
  %i.tg = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.th = load i32, ptr %i.tg, align 16
  %i.ti = sext i32 %i.th to i64
  %i.tj = getelementptr [4 x i8], ptr @Index_of, i64 %i.ti
  %i.tk = load i32, ptr %i.tj, align 4
  %i.tl = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store i32 %i.tk, ptr %i.tl, align 16
  %i.tm = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.tn = load i32, ptr %i.tm, align 4
  %i.to = sext i32 %i.tn to i64
  %i.tp = getelementptr [4 x i8], ptr @Index_of, i64 %i.to
  %i.tq = load i32, ptr %i.tp, align 4
  %i.tr = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  store i32 %i.tq, ptr %i.tr, align 4
  %i.ts = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.tt = load i32, ptr %i.ts, align 8
  %i.tu = sext i32 %i.tt to i64
  %i.tv = getelementptr [4 x i8], ptr @Index_of, i64 %i.tu
  %i.tw = load i32, ptr %i.tv, align 4
  %i.tx = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store i32 %i.tw, ptr %i.tx, align 8
  %i.ty = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  %i.tz = load i32, ptr %i.ty, align 4
  %i.ua = sext i32 %i.tz to i64
  %i.ub = getelementptr [4 x i8], ptr @Index_of, i64 %i.ua
  %i.uc = load i32, ptr %i.ub, align 4
  %i.ud = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  store i32 %i.uc, ptr %i.ud, align 4
  %i.ue = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.uf = load i32, ptr %i.ue, align 16
  %i.ug = sext i32 %i.uf to i64
  %i.uh = getelementptr [4 x i8], ptr @Index_of, i64 %i.ug
  %i.ui = load i32, ptr %i.uh, align 4
  %i.uj = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store i32 %i.ui, ptr %i.uj, align 16
  %i.uk = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  %i.ul = load i32, ptr %i.uk, align 4
  %i.um = sext i32 %i.ul to i64
  %i.un = getelementptr [4 x i8], ptr @Index_of, i64 %i.um
  %i.uo = load i32, ptr %i.un, align 4
  %i.up = getelementptr inbounds nuw i8, ptr %i.c, i64 132
  store i32 %i.uo, ptr %i.up, align 4
  %i.uq = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.ur = load i32, ptr %i.uq, align 8
  %i.us = sext i32 %i.ur to i64
  %i.ut = getelementptr [4 x i8], ptr @Index_of, i64 %i.us
  %i.uu = load i32, ptr %i.ut, align 4
  %i.uv = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  store i32 %i.uu, ptr %i.uv, align 8
  %i.uw = getelementptr inbounds nuw i8, ptr %i.a, i64 140
  %i.ux = load i32, ptr %i.uw, align 4
  %i.uy = sext i32 %i.ux to i64
  %i.uz = getelementptr [4 x i8], ptr @Index_of, i64 %i.uy
  %i.va = load i32, ptr %i.uz, align 4
  %i.vb = getelementptr inbounds nuw i8, ptr %i.c, i64 140
  store i32 %i.va, ptr %i.vb, align 4
  %i.vc = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.vd = load i32, ptr %i.vc, align 16
  %i.ve = sext i32 %i.vd to i64
  %i.vf = getelementptr [4 x i8], ptr @Index_of, i64 %i.ve
  %i.vg = load i32, ptr %i.vf, align 4
  %i.vh = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store i32 %i.vg, ptr %i.vh, align 16
  %i.vi = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  %i.vj = load i32, ptr %i.vi, align 4
  %i.vk = sext i32 %i.vj to i64
  %i.vl = getelementptr [4 x i8], ptr @Index_of, i64 %i.vk
  %i.vm = load i32, ptr %i.vl, align 4
  %i.vn = getelementptr inbounds nuw i8, ptr %i.c, i64 148
  store i32 %i.vm, ptr %i.vn, align 4
  %i.vo = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.vp = load i32, ptr %i.vo, align 8
  %i.vq = sext i32 %i.vp to i64
  %i.vr = getelementptr [4 x i8], ptr @Index_of, i64 %i.vq
  %i.vs = load i32, ptr %i.vr, align 4
  %i.vt = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  store i32 %i.vs, ptr %i.vt, align 8
  %i.vu = getelementptr inbounds nuw i8, ptr %i.a, i64 156
  %i.vv = load i32, ptr %i.vu, align 4
  %i.vw = sext i32 %i.vv to i64
  %i.vx = getelementptr [4 x i8], ptr @Index_of, i64 %i.vw
  %i.vy = load i32, ptr %i.vx, align 4
  %i.vz = getelementptr inbounds nuw i8, ptr %i.c, i64 156
  store i32 %i.vy, ptr %i.vz, align 4
  %i.wa = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.wb = load i32, ptr %i.wa, align 16
  %i.wc = sext i32 %i.wb to i64
  %i.wd = getelementptr [4 x i8], ptr @Index_of, i64 %i.wc
  %i.we = load i32, ptr %i.wd, align 4
  %i.wf = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  store i32 %i.we, ptr %i.wf, align 16
  %i.wg = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  %i.wh = load i32, ptr %i.wg, align 4
  %i.wi = sext i32 %i.wh to i64
  %i.wj = getelementptr [4 x i8], ptr @Index_of, i64 %i.wi
  %i.wk = load i32, ptr %i.wj, align 4
  %i.wl = getelementptr inbounds nuw i8, ptr %i.c, i64 164
  store i32 %i.wk, ptr %i.wl, align 4
  %i.wm = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.wn = load i32, ptr %i.wm, align 8
  %i.wo = sext i32 %i.wn to i64
  %i.wp = getelementptr [4 x i8], ptr @Index_of, i64 %i.wo
  %i.wq = load i32, ptr %i.wp, align 4
  %i.wr = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  store i32 %i.wq, ptr %i.wr, align 8
  %i.ws = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  %i.wt = load i32, ptr %i.ws, align 4
  %i.wu = sext i32 %i.wt to i64
  %i.wv = getelementptr [4 x i8], ptr @Index_of, i64 %i.wu
  %i.ww = load i32, ptr %i.wv, align 4
  %i.wx = getelementptr inbounds nuw i8, ptr %i.c, i64 172
  store i32 %i.ww, ptr %i.wx, align 4
  %i.wy = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.wz = load i32, ptr %i.wy, align 16
  %i.xa = sext i32 %i.wz to i64
  %i.xb = getelementptr [4 x i8], ptr @Index_of, i64 %i.xa
  %i.xc = load i32, ptr %i.xb, align 4
  %i.xd = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  store i32 %i.xc, ptr %i.xd, align 16
  %i.xe = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  %i.xf = load i32, ptr %i.xe, align 4
  %i.xg = sext i32 %i.xf to i64
  %i.xh = getelementptr [4 x i8], ptr @Index_of, i64 %i.xg
  %i.xi = load i32, ptr %i.xh, align 4
  %i.xj = getelementptr inbounds nuw i8, ptr %i.c, i64 180
  store i32 %i.xi, ptr %i.xj, align 4
  %i.xk = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.xl = load i32, ptr %i.xk, align 8
  %i.xm = sext i32 %i.xl to i64
  %i.xn = getelementptr [4 x i8], ptr @Index_of, i64 %i.xm
  %i.xo = load i32, ptr %i.xn, align 4
  %i.xp = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  store i32 %i.xo, ptr %i.xp, align 8
  %i.xq = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  %i.xr = load i32, ptr %i.xq, align 4
  %i.xs = sext i32 %i.xr to i64
  %i.xt = getelementptr [4 x i8], ptr @Index_of, i64 %i.xs
  %i.xu = load i32, ptr %i.xt, align 4
  %i.xv = getelementptr inbounds nuw i8, ptr %i.c, i64 188
  store i32 %i.xu, ptr %i.xv, align 4
  %i.xw = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.xx = load i32, ptr %i.xw, align 16
  %i.xy = sext i32 %i.xx to i64
  %i.xz = getelementptr [4 x i8], ptr @Index_of, i64 %i.xy
  %i.ya = load i32, ptr %i.xz, align 4
  %i.yb = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  store i32 %i.ya, ptr %i.yb, align 16
  %i.yc = add i32 %2, 1                           ; 2 uses
  %i.yd = icmp slt i32 %i.yc, 49
  br i1 %i.yd, label %.preheader309, label %.preheader309.lr.ph

.preheader309.lr.ph:                              ; preds = %.loopexit306, %.loopexit312
  br label %.preheader304

.preheader309:                                    ; preds = %.loopexit312, %.loopexit306
  %3 = phi i32 [ %5, %.loopexit306 ], [ %i.yc, %.loopexit312 ] ; 6 uses
  %.0196348 = phi i32 [ %3, %.loopexit306 ], [ %2, %.loopexit312 ]
  %.0208347 = phi i32 [ %.2210, %.loopexit306 ], [ %2, %.loopexit312 ] ; 4 uses
  %i.ye = icmp sgt i32 %3, 0
  br i1 %i.ye, label %.lr.ph341.preheader, label %._crit_edge

.lr.ph341.preheader:                              ; preds = %.preheader309
  %4 = zext nneg i32 %3 to i64
  %wide.trip.count420 = zext nneg i32 %3 to i64
  br label %.lr.ph341

.lr.ph341:                                        ; preds = %.lr.ph341.preheader, %bb.k
  %indvars.iv417 = phi i64 [ 0, %.lr.ph341.preheader ], [ %indvars.iv.next418, %bb.k ] ; 3 uses
  %.0185340 = phi i32 [ 0, %.lr.ph341.preheader ], [ %.1186, %bb.k ] ; 3 uses
  %i.yf = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv417
  %i.yg = load i32, ptr %i.yf, align 4            ; 2 uses
  %.not242 = icmp eq i32 %i.yg, 0
  br i1 %.not242, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph341
  %i.yh = sub nsw i64 %4, %indvars.iv417
  %i.yi = getelementptr [4 x i8], ptr %i.b, i64 %i.yh
  %i.yj = load i32, ptr %i.yi, align 4            ; 2 uses
  %.not243 = icmp eq i32 %i.yj, 255
  br i1 %.not243, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.yk = sext i32 %i.yg to i64
  %i.yl = getelementptr [4 x i8], ptr @Index_of, i64 %i.yk
  %i.ym = load i32, ptr %i.yl, align 4
  %i.yn = add i32 %i.ym, %i.yj                    ; 3 uses
  %i.yo = icmp sgt i32 %i.yn, 254
  br i1 %i.yo, label %.lr.ph.i259, label %modnn.exit261

.lr.ph.i259:                                      ; preds = %bb.j, %.lr.ph.i259
  %.05.i260 = phi i32 [ %i.ys, %.lr.ph.i259 ], [ %i.yn, %bb.j ]
  %i.yp = add nsw i32 %.05.i260, -255             ; 2 uses
  %i.yq = lshr i32 %i.yp, 8
  %i.yr = and i32 %i.yp, 255
  %i.ys = add nuw nsw i32 %i.yq, %i.yr            ; 3 uses
  %i.yt = icmp samesign ugt i32 %i.ys, 254
  br i1 %i.yt, label %.lr.ph.i259, label %modnn.exit261, !llvm.loop !6

modnn.exit261:                                    ; preds = %.lr.ph.i259, %bb.j
  %.0.lcssa.i258 = phi i32 [ %i.yn, %bb.j ], [ %i.ys, %.lr.ph.i259 ]
  %i.yu = sext i32 %.0.lcssa.i258 to i64
  %i.yv = getelementptr [4 x i8], ptr @Alpha_to, i64 %i.yu
  %i.yw = load i32, ptr %i.yv, align 4
  %i.yx = xor i32 %i.yw, %.0185340
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph341, %bb.i, %modnn.exit261
  %.1186 = phi i32 [ %i.yx, %modnn.exit261 ], [ %.0185340, %bb.i ], [ %.0185340, %.lr.ph341 ] ; 2 uses
  %indvars.iv.next418 = add nuw nsw i64 %indvars.iv417, 1 ; 2 uses
  %exitcond421.not = icmp eq i64 %indvars.iv.next418, %wide.trip.count420
  br i1 %exitcond421.not, label %._crit_edge.loopexit, label %.lr.ph341, !llvm.loop !17

._crit_edge.loopexit:                             ; preds = %bb.k
  %i.yy = sext i32 %.1186 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader309
  %.0185.lcssa = phi i64 [ 0, %.preheader309 ], [ %i.yy, %._crit_edge.loopexit ]
  %i.yz = getelementptr [4 x i8], ptr @Index_of, i64 %.0185.lcssa
  %i.za = load i32, ptr %i.yz, align 4            ; 3 uses
  %i.zb = icmp eq i32 %i.za, 255
  br i1 %i.zb, label %.preheader305.preheader, label %bb.l

.preheader305.preheader:                          ; preds = %._crit_edge
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %i.os, ptr noundef nonnull align 16 dereferenceable(192) %i.c, i64 192, i1 false)
  store i32 255, ptr %i.c, align 16
  br label %.loopexit306

bb.l:                                             ; preds = %._crit_edge
  %i.zc = load i32, ptr %i.a, align 16
  store i32 %i.zc, ptr %i.d, align 16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.o
  %indvars.iv422 = phi i64 [ 0, %bb.l ], [ %i.zf, %bb.o ] ; 2 uses
  %i.zd = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv422
  %i.ze = load i32, ptr %i.zd, align 4            ; 2 uses
  %.not241 = icmp eq i32 %i.ze, 255
  %i.zf = add nuw nsw i64 %indvars.iv422, 1       ; 4 uses
  %i.zg = getelementptr [4 x i8], ptr %i.a, i64 %i.zf
  %i.zh = load i32, ptr %i.zg, align 4            ; 2 uses
  br i1 %.not241, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.zi = add i32 %i.ze, %i.za                    ; 3 uses
  %i.zj = icmp sgt i32 %i.zi, 254
  br i1 %i.zj, label %.lr.ph.i263, label %modnn.exit265

.lr.ph.i263:                                      ; preds = %bb.n, %.lr.ph.i263
  %.05.i264 = phi i32 [ %i.zn, %.lr.ph.i263 ], [ %i.zi, %bb.n ]
  %i.zk = add nsw i32 %.05.i264, -255             ; 2 uses
  %i.zl = lshr i32 %i.zk, 8
  %i.zm = and i32 %i.zk, 255
  %i.zn = add nuw nsw i32 %i.zl, %i.zm            ; 3 uses
  %i.zo = icmp samesign ugt i32 %i.zn, 254
  br i1 %i.zo, label %.lr.ph.i263, label %modnn.exit265, !llvm.loop !6

modnn.exit265:                                    ; preds = %.lr.ph.i263, %bb.n
  %.0.lcssa.i262 = phi i32 [ %i.zi, %bb.n ], [ %i.zn, %.lr.ph.i263 ]
  %i.zp = sext i32 %.0.lcssa.i262 to i64
  %i.zq = getelementptr [4 x i8], ptr @Alpha_to, i64 %i.zp
  %i.zr = load i32, ptr %i.zq, align 4
  %i.zs = xor i32 %i.zr, %i.zh
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %modnn.exit265
  %.sink = phi i32 [ %i.zs, %modnn.exit265 ], [ %i.zh, %bb.m ]
  %i.zt = getelementptr [4 x i8], ptr %i.d, i64 %i.zf
  store i32 %.sink, ptr %i.zt, align 4
  %exitcond425.not = icmp eq i64 %i.zf, 48
  br i1 %exitcond425.not, label %bb.p, label %bb.m, !llvm.loop !18

bb.p:                                             ; preds = %bb.o
  %i.zu = shl i32 %.0208347, 1
  %i.zv = add i32 %.0196348, %2
  %.not240 = icmp sgt i32 %i.zu, %i.zv
  br i1 %.not240, label %.preheader307.preheader, label %.preheader

.preheader307.preheader:                          ; preds = %bb.p
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %i.os, ptr noundef nonnull align 16 dereferenceable(192) %i.c, i64 192, i1 false)
  store i32 255, ptr %i.c, align 16
  br label %.loopexit308

.preheader:                                       ; preds = %bb.p, %modnn.exit269
  %indvars.iv426 = phi i64 [ %indvars.iv.next427, %modnn.exit269 ], [ 0, %bb.p ] ; 3 uses
  %i.zw = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv426
  %i.zx = load i32, ptr %i.zw, align 4            ; 2 uses
  %i.zy = icmp eq i32 %i.zx, 0
  br i1 %i.zy, label %modnn.exit269, label %bb.q

bb.q:                                             ; preds = %.preheader
  %i.zz = sext i32 %i.zx to i64
  %i.aaa = getelementptr [4 x i8], ptr @Index_of, i64 %i.zz
  %i.aab = load i32, ptr %i.aaa, align 4
  %i.aac = sub i32 %i.aab, %i.za                  ; 2 uses
  %i.aad = add i32 %i.aac, 255                    ; 2 uses
  %i.aae = icmp ult i32 %i.aac, 2147483393
  br i1 %i.aae, label %.lr.ph.i267, label %modnn.exit269

.lr.ph.i267:                                      ; preds = %bb.q, %.lr.ph.i267
  %.05.i268 = phi i32 [ %i.aai, %.lr.ph.i267 ], [ %i.aad, %bb.q ]
  %i.aaf = add nsw i32 %.05.i268, -255            ; 2 uses
  %i.aag = lshr i32 %i.aaf, 8
  %i.aah = and i32 %i.aaf, 255
  %i.aai = add nuw nsw i32 %i.aag, %i.aah         ; 3 uses
  %i.aaj = icmp samesign ugt i32 %i.aai, 254
  br i1 %i.aaj, label %.lr.ph.i267, label %modnn.exit269, !llvm.loop !6

modnn.exit269:                                    ; preds = %.lr.ph.i267, %bb.q, %.preheader
  %i.aak = phi i32 [ 255, %.preheader ], [ %i.aad, %bb.q ], [ %i.aai, %.lr.ph.i267 ]
  %i.aal = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv426
  store i32 %i.aak, ptr %i.aal, align 4
  %indvars.iv.next427 = add nuw nsw i64 %indvars.iv426, 1 ; 2 uses
  %exitcond429.not = icmp eq i64 %indvars.iv.next427, 49
  br i1 %exitcond429.not, label %.loopexit308.loopexit, label %.preheader, !llvm.loop !19

.loopexit308.loopexit:                            ; preds = %modnn.exit269
  %i.aam = sub i32 %2, %.0208347
  %i.aan = add i32 %i.aam, %3
  br label %.loopexit308

.loopexit308:                                     ; preds = %.loopexit308.loopexit, %.preheader307.preheader
  %.1209 = phi i32 [ %.0208347, %.preheader307.preheader ], [ %i.aan, %.loopexit308.loopexit ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(196) %i.a, ptr noundef nonnull align 16 dereferenceable(196) %i.d, i64 196, i1 false)
  br label %.loopexit306

.loopexit306:                                     ; preds = %.loopexit308, %.preheader305.preheader
  %.2210 = phi i32 [ %.0208347, %.preheader305.preheader ], [ %.1209, %.loopexit308 ]
  %5 = add nsw i32 %3, 1                          ; 2 uses
  %exitcond442.not = icmp eq i32 %5, 49
  br i1 %exitcond442.not, label %.preheader309.lr.ph, label %.preheader309, !llvm.loop !20

.preheader303:                                    ; preds = %.preheader304
  %i.aao = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %i.aao, ptr noundef nonnull align 4 dereferenceable(192) %i.lv, i64 192, i1 false)
  %.not376 = icmp eq i32 %spec.select, 0
  %i.aap = zext i32 %spec.select to i64           ; 5 uses
  br label %.preheader301

.preheader304:                                    ; preds = %.preheader304.1, %.preheader309.lr.ph
  %indvars.iv443 = phi i64 [ 0, %.preheader309.lr.ph ], [ %indvars.iv.next444.1, %.preheader304.1 ] ; 5 uses
  %.0211349 = phi i32 [ 0, %.preheader309.lr.ph ], [ %spec.select.1, %.preheader304.1 ]
  %i.aaq = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv443 ; 2 uses
  %i.aar = load i32, ptr %i.aaq, align 8
  %i.aas = sext i32 %i.aar to i64
  %i.aat = getelementptr [4 x i8], ptr @Index_of, i64 %i.aas
  %i.aau = load i32, ptr %i.aat, align 4          ; 2 uses
  store i32 %i.aau, ptr %i.aaq, align 8
  %.not239 = icmp eq i32 %i.aau, 255
  %i.aav = trunc nuw nsw i64 %indvars.iv443 to i32
  %spec.select = select i1 %.not239, i32 %.0211349, i32 %i.aav ; 13 uses
  %exitcond446.not = icmp eq i64 %indvars.iv443, 48
  br i1 %exitcond446.not, label %.preheader303, label %.preheader304.1

.preheader304.1:                                  ; preds = %.preheader304
  %indvars.iv.next444 = or disjoint i64 %indvars.iv443, 1 ; 2 uses
  %i.aaw = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.next444 ; 2 uses
  %i.aax = load i32, ptr %i.aaw, align 4
  %i.aay = sext i32 %i.aax to i64
  %i.aaz = getelementptr [4 x i8], ptr @Index_of, i64 %i.aay
  %i.aba = load i32, ptr %i.aaz, align 4          ; 2 uses
  store i32 %i.aba, ptr %i.aaw, align 4
  %.not239.1 = icmp eq i32 %i.aba, 255
  %i.abb = trunc nuw nsw i64 %indvars.iv.next444 to i32
  %spec.select.1 = select i1 %.not239.1, i32 %spec.select, i32 %i.abb
  %indvars.iv.next444.1 = add nuw nsw i64 %indvars.iv443, 2
  br label %.preheader304

.preheader301:                                    ; preds = %.preheader303, %modnn.exit277
  %.0183359 = phi i32 [ 0, %.preheader303 ], [ %.1, %modnn.exit277 ] ; 4 uses
  %.0195358 = phi i32 [ 254, %.preheader303 ], [ %.0.lcssa.i274, %modnn.exit277 ] ; 3 uses
  %.9357 = phi i32 [ 1, %.preheader303 ], [ %i.abw, %modnn.exit277 ] ; 2 uses
  br i1 %.not376, label %._crit_edge355.thread, label %.lr.ph354

.lr.ph354:                                        ; preds = %.preheader301, %.lr.ph354._crit_edge
  %indvars.iv451 = phi i64 [ %indvars.iv.next452, %.lr.ph354._crit_edge ], [ %i.aap, %.preheader301 ] ; 3 uses
  %.0193353 = phi i32 [ %.1194, %.lr.ph354._crit_edge ], [ 1, %.preheader301 ] ; 2 uses
  %i.abc = getelementptr [4 x i8], ptr %i.g, i64 %indvars.iv451 ; 2 uses
  %i.abd = load i32, ptr %i.abc, align 4          ; 2 uses
  %.not238 = icmp eq i32 %i.abd, 255
  %.pre502 = trunc nuw i64 %indvars.iv451 to i32  ; 2 uses
  br i1 %.not238, label %.lr.ph354._crit_edge, label %bb.r

bb.r:                                             ; preds = %.lr.ph354
  %i.abe = add i32 %i.abd, %.pre502               ; 3 uses
  %i.abf = icmp sgt i32 %i.abe, 254
  br i1 %i.abf, label %.lr.ph.i271, label %modnn.exit273

.lr.ph.i271:                                      ; preds = %bb.r, %.lr.ph.i271
  %.05.i272 = phi i32 [ %i.abj, %.lr.ph.i271 ], [ %i.abe, %bb.r ]
  %i.abg = add nsw i32 %.05.i272, -255            ; 2 uses
  %i.abh = lshr i32 %i.abg, 8
  %i.abi = and i32 %i.abg, 255
  %i.abj = add nuw nsw i32 %i.abh, %i.abi         ; 3 uses
  %i.abk = icmp samesign ugt i32 %i.abj, 254
  br i1 %i.abk, label %.lr.ph.i271, label %modnn.exit273, !llvm.loop !6

modnn.exit273:                                    ; preds = %.lr.ph.i271, %bb.r
  %.0.lcssa.i270 = phi i32 [ %i.abe, %bb.r ], [ %i.abj, %.lr.ph.i271 ] ; 2 uses
  store i32 %.0.lcssa.i270, ptr %i.abc, align 4
  %i.abl = sext i32 %.0.lcssa.i270 to i64
  %i.abm = getelementptr [4 x i8], ptr @Alpha_to, i64 %i.abl
  %i.abn = load i32, ptr %i.abm, align 4
  %i.abo = xor i32 %i.abn, %.0193353
  br label %.lr.ph354._crit_edge

.lr.ph354._crit_edge:                             ; preds = %.lr.ph354, %modnn.exit273
  %.1194 = phi i32 [ %i.abo, %modnn.exit273 ], [ %.0193353, %.lr.ph354 ] ; 2 uses
  %indvars.iv.next452 = add nsw i64 %indvars.iv451, -1
  %i.abp = icmp sgt i32 %.pre502, 1
  br i1 %i.abp, label %.lr.ph354, label %._crit_edge355, !llvm.loop !21

._crit_edge355:                                   ; preds = %.lr.ph354._crit_edge
  %i.abq = icmp eq i32 %.1194, 0
  br i1 %i.abq, label %bb.s, label %._crit_edge355.thread

bb.s:                                             ; preds = %._crit_edge355
  %i.abr = sext i32 %.0183359 to i64              ; 2 uses
  %i.abs = getelementptr [4 x i8], ptr %i.f, i64 %i.abr
  store i32 %.9357, ptr %i.abs, align 4
  %i.abt = getelementptr [4 x i8], ptr %i.h, i64 %i.abr
  store i32 %.0195358, ptr %i.abt, align 4
  %i.abu = add i32 %.0183359, 1                   ; 2 uses
  %i.abv = icmp eq i32 %i.abu, %spec.select
  br i1 %i.abv, label %.preheader300.preheader, label %._crit_edge355.thread

._crit_edge355.thread:                            ; preds = %.preheader301, %bb.s, %._crit_edge355
  %.1 = phi i32 [ %.0183359, %._crit_edge355 ], [ %i.abu, %bb.s ], [ %.0183359, %.preheader301 ] ; 2 uses
  %i.abw = add nuw nsw i32 %.9357, 1              ; 2 uses
  %i.abx = add nsw i32 %.0195358, 254             ; 2 uses
  %i.aby = icmp sgt i32 %.0195358, 0
  br i1 %i.aby, label %.lr.ph.i275, label %modnn.exit277

.lr.ph.i275:                                      ; preds = %._crit_edge355.thread, %.lr.ph.i275
  %.05.i276 = phi i32 [ %i.acc, %.lr.ph.i275 ], [ %i.abx, %._crit_edge355.thread ]
  %i.abz = add nsw i32 %.05.i276, -255            ; 2 uses
  %i.aca = lshr i32 %i.abz, 8
  %i.acb = and i32 %i.abz, 255
  %i.acc = add nuw nsw i32 %i.aca, %i.acb         ; 3 uses
  %i.acd = icmp samesign ugt i32 %i.acc, 254
  br i1 %i.acd, label %.lr.ph.i275, label %modnn.exit277, !llvm.loop !6

modnn.exit277:                                    ; preds = %.lr.ph.i275, %._crit_edge355.thread
  %.0.lcssa.i274 = phi i32 [ %i.abx, %._crit_edge355.thread ], [ %i.acc, %.lr.ph.i275 ]
  %exitcond454.not = icmp eq i32 %i.abw, 256
  br i1 %exitcond454.not, label %bb.t, label %.preheader301, !llvm.loop !22

bb.t:                                             ; preds = %modnn.exit277
  %.not230 = icmp eq i32 %spec.select, %.1
  br i1 %.not230, label %.preheader300.preheader, label %.loopexit

.preheader300.preheader:                          ; preds = %bb.s, %bb.t
  br label %.preheader300

.preheader300:                                    ; preds = %.preheader300.preheader, %bb.y
  %indvars.iv455 = phi i64 [ %indvars.iv.next456, %bb.y ], [ 0, %.preheader300.preheader ] ; 4 uses
  %.0206362 = phi i32 [ %spec.select245, %bb.y ], [ 0, %.preheader300.preheader ]
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv455, i64 %i.aap)
  %indvars.iv.next456 = add nuw nsw i64 %indvars.iv455, 1 ; 3 uses
  br label %bb.u

bb.u:                                             ; preds = %.preheader300, %bb.x
  %indvars.iv457 = phi i64 [ %umin, %.preheader300 ], [ %indvars.iv.next458, %bb.x ] ; 4 uses
  %.0191361 = phi i32 [ 0, %.preheader300 ], [ %.1192, %bb.x ] ; 3 uses
  %i.ace = sub i64 %indvars.iv.next456, %indvars.iv457
  %sext = shl i64 %i.ace, 32
  %i.acf = ashr exact i64 %sext, 30
  %i.acg = getelementptr i8, ptr %i.b, i64 %i.acf
  %i.ach = load i32, ptr %i.acg, align 4          ; 2 uses
  %.not235 = icmp eq i32 %i.ach, 255
  br i1 %.not235, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aci = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv457
  %i.acj = load i32, ptr %i.aci, align 4          ; 2 uses
  %.not236 = icmp eq i32 %i.acj, 255
  br i1 %.not236, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ack = add i32 %i.acj, %i.ach                 ; 3 uses
  %i.acl = icmp sgt i32 %i.ack, 254
  br i1 %i.acl, label %.lr.ph.i279, label %modnn.exit281

.lr.ph.i279:                                      ; preds = %bb.w, %.lr.ph.i279
  %.05.i280 = phi i32 [ %i.acp, %.lr.ph.i279 ], [ %i.ack, %bb.w ]
  %i.acm = add nsw i32 %.05.i280, -255            ; 2 uses
  %i.acn = lshr i32 %i.acm, 8
  %i.aco = and i32 %i.acm, 255
  %i.acp = add nuw nsw i32 %i.acn, %i.aco         ; 3 uses
  %i.acq = icmp samesign ugt i32 %i.acp, 254
  br i1 %i.acq, label %.lr.ph.i279, label %modnn.exit281, !llvm.loop !6

modnn.exit281:                                    ; preds = %.lr.ph.i279, %bb.w
  %.0.lcssa.i278 = phi i32 [ %i.ack, %bb.w ], [ %i.acp, %.lr.ph.i279 ]
  %i.acr = sext i32 %.0.lcssa.i278 to i64
  %i.acs = getelementptr [4 x i8], ptr @Alpha_to, i64 %i.acr
  %i.act = load i32, ptr %i.acs, align 4
  %i.acu = xor i32 %i.act, %.0191361
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.v, %modnn.exit281
  %.1192 = phi i32 [ %i.acu, %modnn.exit281 ], [ %.0191361, %bb.v ], [ %.0191361, %bb.u ] ; 3 uses
  %indvars.iv.next458 = add nsw i64 %indvars.iv457, -1
  %i.acv = icmp sgt i64 %indvars.iv457, 0
  br i1 %i.acv, label %bb.u, label %bb.y, !llvm.loop !23

bb.y:                                             ; preds = %bb.x
  %.not234 = icmp eq i32 %.1192, 0
  %i.acw = trunc nuw nsw i64 %indvars.iv455 to i32
  %spec.select245 = select i1 %.not234, i32 %.0206362, i32 %i.acw ; 2 uses
  %i.acx = sext i32 %.1192 to i64
  %i.acy = getelementptr [4 x i8], ptr @Index_of, i64 %i.acx
  %i.acz = load i32, ptr %i.acy, align 4
  %i.ada = getelementptr [4 x i8], ptr %i.e, i64 %indvars.iv455
  store i32 %i.acz, ptr %i.ada, align 4
  %exitcond460.not = icmp eq i64 %indvars.iv.next456, 48
  br i1 %exitcond460.not, label %bb.z, label %.preheader300, !llvm.loop !24

bb.z:                                             ; preds = %bb.y
  %i.adb = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  store i32 255, ptr %i.adb, align 16
  %.4368 = add i32 %spec.select, -1               ; 2 uses
  %i.adc = icmp sgt i32 %.4368, -1
  br i1 %i.adc, label %.preheader298.lr.ph, label %.loopexit

.preheader298.lr.ph:                              ; preds = %bb.z
  %i.add = zext nneg i32 %spec.select245 to i64
  %umin465 = tail call i64 @llvm.umin.i64(i64 %i.aap, i64 47)
  %i.ade = and i64 %umin465, 62
  %i.adf = zext nneg i32 %.4368 to i64
  %i.adg = load i32, ptr @Alpha_to, align 16
  %i.adh = sext i32 %i.adg to i64
  %i.adi = getelementptr [4 x i8], ptr @Index_of, i64 %i.adh
  br label %.preheader298

.preheader298:                                    ; preds = %.preheader298.lr.ph, %bb.ai
  %indvars.iv468.a = phi i64 [ %i.adf, %.preheader298.lr.ph ], [ %indvars.iv.next469.a, %bb.ai ] ; 4 uses
  %i.adj = getelementptr [4 x i8], ptr %i.f, i64 %indvars.iv468.a ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.preheader298, %bb.ac
  %indvars.iv462 = phi i64 [ %i.add, %.preheader298 ], [ %indvars.iv.next463, %bb.ac ] ; 4 uses
end_hunk_0
