Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/huf_decompress?download=true
inline.NumInlined: 435
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 34
begin_hunk_0_@HUF_decompress4X2_usingDTable_internal:bb.a
  ]

bb.ao:                                            ; preds = %bb.an
  %i.sm = getelementptr inbounds nuw i8, ptr %i.pm, i64 6
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !16
  %i.so = zext i8 %i.sn to i64
  %i.sp = shl nuw nsw i64 %i.so, 48
  %i.sq = or disjoint i64 %i.sp, %i.sl
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.sr = phi i64 [ %i.sq, %bb.ao ], [ %i.sl, %bb.an ]
  %i.ss = getelementptr inbounds nuw i8, ptr %i.pm, i64 5
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !16
  %i.su = zext i8 %i.st to i64
  %i.sv = shl nuw nsw i64 %i.su, 40
  %i.sw = add nuw nsw i64 %i.sv, %i.sr
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.an
  %i.sx = phi i64 [ %i.sw, %bb.ap ], [ %i.sl, %bb.an ]
  %i.sy = getelementptr inbounds nuw i8, ptr %i.pm, i64 4
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !16
  %i.ta = zext i8 %i.sz to i64
  %i.tb = shl nuw nsw i64 %i.ta, 32
  %i.tc = add nuw nsw i64 %i.tb, %i.sx
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.an
  %i.td = phi i64 [ %i.tc, %bb.aq ], [ %i.sl, %bb.an ]
  %i.te = getelementptr inbounds nuw i8, ptr %i.pm, i64 3
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !16
  %i.tg = zext i8 %i.tf to i64
  %i.th = shl nuw nsw i64 %i.tg, 24
  %i.ti = add nuw nsw i64 %i.th, %i.td
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.an
  %i.tj = phi i64 [ %i.ti, %bb.ar ], [ %i.sl, %bb.an ]
  %i.tk = getelementptr inbounds nuw i8, ptr %i.pm, i64 2
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !16
  %i.tm = zext i8 %i.tl to i64
  %i.tn = shl nuw nsw i64 %i.tm, 16
  %i.to = add nuw nsw i64 %i.tn, %i.tj
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.an
  %i.tp = phi i64 [ %i.to, %bb.as ], [ %i.sl, %bb.an ]
  %i.tq = getelementptr inbounds nuw i8, ptr %i.pm, i64 1
  %i.tr = load i8, ptr %i.tq, align 1, !tbaa !16
  %i.ts = zext i8 %i.tr to i64
  %i.tt = shl nuw nsw i64 %i.ts, 8
  %i.tu = add nuw nsw i64 %i.tt, %i.tp
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.an
  %.sroa.0309.11.i = phi i64 [ %i.sl, %bb.an ], [ %i.tu, %bb.at ]
  %i.tv = getelementptr i8, ptr %i.pn, i64 -1
  %i.tw = load i8, ptr %i.tv, align 1, !tbaa !16  ; 2 uses
  %.not.i152.i = icmp eq i8 %i.tw, 0
  br i1 %.not.i152.i, label %BIT_initDStream.exit.thread.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.tx = zext i8 %i.tw to i32
  %i.ty = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.tx, i1 true)
  %i.tz = shl nuw nsw i16 %.val149.i, 3
  %i.ua = zext nneg i16 %i.tz to i32
  %reass.sub161 = sub nsw i32 %i.ty, %i.ua
  %i.ub = add nsw i32 %reass.sub161, 41
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.thread.i156.i
  %.sroa.0309.12.i = phi i64 [ %.sroa.0309.11.i, %bb.av ], [ %.val.i154.i, %.thread.i156.i ] ; 2 uses
  %.sroa.36310.14.i = phi i32 [ %i.ub, %bb.av ], [ %i.sj, %.thread.i156.i ] ; 2 uses
  %.sroa.116344.11.i = phi ptr [ %i.pm, %bb.av ], [ %i.sf, %.thread.i156.i ] ; 2 uses
  %i.uc = icmp eq i16 %.val148.i, 0
  br i1 %i.uc, label %BIT_initDStream.exit.thread.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ud = getelementptr inbounds nuw i8, ptr %i.pn, i64 8 ; 5 uses
  %i.ue = icmp ugt i16 %.val148.i, 7
  br i1 %i.ue, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.uf = getelementptr i8, ptr %i.po, i64 -1
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !16  ; 2 uses
  %.not51.i161.i = icmp eq i8 %i.ug, 0
  br i1 %.not51.i161.i, label %BIT_initDStream.exit.thread.i, label %.thread.i162.i

.thread.i162.i:                                   ; preds = %bb.ay
  %i.uh = getelementptr inbounds i8, ptr %i.po, i64 -8 ; 2 uses
  %.val.i160.i = load i64, ptr %i.uh, align 1, !tbaa !22
  %i.ui = zext i8 %i.ug to i32
  %i.uj = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.ui, i1 true)
  %i.uk = xor i32 %i.uj, 31
  %i.ul = sub nuw nsw i32 8, %i.uk
  br label %bb.bi

bb.az:                                            ; preds = %bb.ax
  %i.um = load i8, ptr %i.pn, align 1, !tbaa !16
  %i.un = zext i8 %i.um to i64                    ; 7 uses
  switch i16 %.val148.i, label %bb.bg [
    i16 7, label %bb.ba
    i16 6, label %bb.bb
    i16 5, label %bb.bc
    i16 4, label %bb.bd
    i16 3, label %bb.be
    i16 2, label %bb.bf
  ]

bb.ba:                                            ; preds = %bb.az
  %i.uo = getelementptr inbounds nuw i8, ptr %i.pn, i64 6
  %i.up = load i8, ptr %i.uo, align 1, !tbaa !16
  %i.uq = zext i8 %i.up to i64
  %i.ur = shl nuw nsw i64 %i.uq, 48
  %i.us = or disjoint i64 %i.ur, %i.un
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ut = phi i64 [ %i.us, %bb.ba ], [ %i.un, %bb.az ]
  %i.uu = getelementptr inbounds nuw i8, ptr %i.pn, i64 5
  %i.uv = load i8, ptr %i.uu, align 1, !tbaa !16
  %i.uw = zext i8 %i.uv to i64
  %i.ux = shl nuw nsw i64 %i.uw, 40
  %i.uy = add nuw nsw i64 %i.ux, %i.ut
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.az
  %i.uz = phi i64 [ %i.uy, %bb.bb ], [ %i.un, %bb.az ]
  %i.va = getelementptr inbounds nuw i8, ptr %i.pn, i64 4
  %i.vb = load i8, ptr %i.va, align 1, !tbaa !16
  %i.vc = zext i8 %i.vb to i64
  %i.vd = shl nuw nsw i64 %i.vc, 32
  %i.ve = add nuw nsw i64 %i.vd, %i.uz
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.az
  %i.vf = phi i64 [ %i.ve, %bb.bc ], [ %i.un, %bb.az ]
  %i.vg = getelementptr inbounds nuw i8, ptr %i.pn, i64 3
  %i.vh = load i8, ptr %i.vg, align 1, !tbaa !16
  %i.vi = zext i8 %i.vh to i64
  %i.vj = shl nuw nsw i64 %i.vi, 24
  %i.vk = add nuw nsw i64 %i.vj, %i.vf
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.az
  %i.vl = phi i64 [ %i.vk, %bb.bd ], [ %i.un, %bb.az ]
  %i.vm = getelementptr inbounds nuw i8, ptr %i.pn, i64 2
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !16
  %i.vo = zext i8 %i.vn to i64
  %i.vp = shl nuw nsw i64 %i.vo, 16
  %i.vq = add nuw nsw i64 %i.vp, %i.vl
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.az
  %i.vr = phi i64 [ %i.vq, %bb.be ], [ %i.un, %bb.az ]
  %i.vs = getelementptr inbounds nuw i8, ptr %i.pn, i64 1
  %i.vt = load i8, ptr %i.vs, align 1, !tbaa !16
  %i.vu = zext i8 %i.vt to i64
  %i.vv = shl nuw nsw i64 %i.vu, 8
  %i.vw = add nuw nsw i64 %i.vv, %i.vr
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.az
  %.sroa.0.11.i = phi i64 [ %i.un, %bb.az ], [ %i.vw, %bb.bf ]
  %i.vx = getelementptr i8, ptr %i.po, i64 -1
  %i.vy = load i8, ptr %i.vx, align 1, !tbaa !16  ; 2 uses
  %.not.i158.i = icmp eq i8 %i.vy, 0
  br i1 %.not.i158.i, label %BIT_initDStream.exit.thread.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.vz = zext i8 %i.vy to i32
  %i.wa = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.vz, i1 true)
  %i.wb = shl nuw nsw i16 %.val148.i, 3
  %i.wc = zext nneg i16 %i.wb to i32
  %reass.sub162 = sub nsw i32 %i.wa, %i.wc
  %i.wd = add nsw i32 %reass.sub162, 41
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.thread.i162.i
  %.sroa.0.12.i = phi i64 [ %.sroa.0.11.i, %bb.bh ], [ %.val.i160.i, %.thread.i162.i ] ; 2 uses
  %.sroa.36.14.i = phi i32 [ %i.wd, %bb.bh ], [ %i.ul, %.thread.i162.i ] ; 2 uses
  %.sroa.116224.11.i = phi ptr [ %i.pn, %bb.bh ], [ %i.uh, %.thread.i162.i ] ; 2 uses
  %i.we = call fastcc i64 @BIT_initDStream(ptr noundef %6, ptr noundef nonnull %i.po, i64 noundef %i.pk) ; 2 uses
  %i.wf = icmp ult i64 %i.we, -119
  br i1 %i.wf, label %bb.bj, label %BIT_initDStream.exit.thread.i

bb.bj:                                            ; preds = %bb.bi
  %.neg.i.i = mul i64 %i.pq, -3
  %gepdiff.i.i = add i64 %.neg.i.i, %1
  %i.wg = icmp ugt i64 %gepdiff.i.i, 7
  %.not848.i = icmp ult ptr %i.pt, %i.pa
  %or.cond.i = select i1 %i.wg, i1 %.not848.i, i1 false
  br i1 %or.cond.i, label %.lr.ph.i28, label %.loopexit670.i

.lr.ph.i28:                                       ; preds = %bb.bj
  %.promoted.i = load i64, ptr %6, align 8
  %i.wh = sub nsw i32 0, %.sroa.3.0.extract.shift.i.i
  %i.wi = and i32 %i.wh, 63
  %i.wj = zext nneg i32 %i.wi to i64              ; 16 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !45
  %.promoted705.i = load i32, ptr %i.wk, align 8, !tbaa !46
  %.promoted708.i = load ptr, ptr %i.wl, align 8, !tbaa !47
  br label %bb.bk

bb.bk:                                            ; preds = %BIT_reloadDStreamFast.exit172.i, %.lr.ph.i28
  %i.wo = phi ptr [ %.promoted708.i, %.lr.ph.i28 ], [ %i.agb, %BIT_reloadDStreamFast.exit172.i ] ; 2 uses
  %.val27706.i = phi i32 [ %.promoted705.i, %.lr.ph.i28 ], [ %i.agc, %BIT_reloadDStreamFast.exit172.i ] ; 2 uses
  %.0162.i692.i = phi ptr [ %i.pt, %.lr.ph.i28 ], [ %i.afq, %BIT_reloadDStreamFast.exit172.i ] ; 2 uses
  %.0166.i691.i = phi ptr [ %i.ps, %.lr.ph.i28 ], [ %i.adm, %BIT_reloadDStreamFast.exit172.i ] ; 2 uses
  %.0170.i690.i = phi ptr [ %i.pr, %.lr.ph.i28 ], [ %i.aaw, %BIT_reloadDStreamFast.exit172.i ] ; 2 uses
  %.0174.i689.i = phi ptr [ %0, %.lr.ph.i28 ], [ %i.ys, %BIT_reloadDStreamFast.exit172.i ] ; 2 uses
  %.sroa.116224.10688.i = phi ptr [ %.sroa.116224.11.i, %.lr.ph.i28 ], [ %.sroa.116224.12.i, %BIT_reloadDStreamFast.exit172.i ] ; 3 uses
  %.sroa.36.13687.i = phi i32 [ %.sroa.36.14.i, %.lr.ph.i28 ], [ %.sroa.36.15.i, %BIT_reloadDStreamFast.exit172.i ] ; 2 uses
  %.sroa.0.10686.i = phi i64 [ %.sroa.0.12.i, %.lr.ph.i28 ], [ %.sroa.0.13.i, %BIT_reloadDStreamFast.exit172.i ] ; 5 uses
  %.sroa.116344.10685.i = phi ptr [ %.sroa.116344.11.i, %.lr.ph.i28 ], [ %.sroa.116344.12.i, %BIT_reloadDStreamFast.exit172.i ] ; 3 uses
  %.sroa.36310.13684.i = phi i32 [ %.sroa.36310.14.i, %.lr.ph.i28 ], [ %.sroa.36310.15.i, %BIT_reloadDStreamFast.exit172.i ] ; 2 uses
  %.sroa.0309.10683.i = phi i64 [ %.sroa.0309.12.i, %.lr.ph.i28 ], [ %.sroa.0309.13.i, %BIT_reloadDStreamFast.exit172.i ] ; 5 uses
  %.sroa.116466.10682.i = phi ptr [ %.sroa.116466.11.i, %.lr.ph.i28 ], [ %.sroa.116466.12.i, %BIT_reloadDStreamFast.exit172.i ] ; 3 uses
  %.sroa.36432.13681.i = phi i32 [ %.sroa.36432.14.i, %.lr.ph.i28 ], [ %.sroa.36432.15.i, %BIT_reloadDStreamFast.exit172.i ] ; 2 uses
  %.sroa.0431.10680.i = phi i64 [ %.sroa.0431.12.i, %.lr.ph.i28 ], [ %.sroa.0431.13.i, %BIT_reloadDStreamFast.exit172.i ] ; 5 uses
  %.val.i.i170678679.i = phi i64 [ %.promoted.i, %.lr.ph.i28 ], [ %.val.i.i170.i, %BIT_reloadDStreamFast.exit172.i ] ; 4 uses
  %i.wp = and i32 %.sroa.36432.13681.i, 63
  %i.wq = zext nneg i32 %i.wp to i64
  %i.wr = shl i64 %.sroa.0431.10680.i, %i.wq
  %i.ws = lshr i64 %i.wr, %i.wj
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %i.ws ; 3 uses
  %i.wu = load i16, ptr %i.wt, align 2
  store i16 %i.wu, ptr %.0174.i689.i, align 1
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wt, i64 2
  %i.ww = load i8, ptr %i.wv, align 2, !tbaa !25
  %i.wx = zext i8 %i.ww to i32
  %i.wy = add i32 %.sroa.36432.13681.i, %i.wx     ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wt, i64 3
  %i.xa = load i8, ptr %i.wz, align 1, !tbaa !26
  %i.xb = zext i8 %i.xa to i64
  %i.xc = getelementptr inbounds nuw i8, ptr %.0174.i689.i, i64 %i.xb ; 2 uses
  %i.xd = and i32 %i.wy, 63
  %i.xe = zext nneg i32 %i.xd to i64
  %i.xf = shl i64 %.sroa.0431.10680.i, %i.xe
  %i.xg = lshr i64 %i.xf, %i.wj
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %i.xg ; 3 uses
  %i.xi = load i16, ptr %i.xh, align 2
  store i16 %i.xi, ptr %i.xc, align 1
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xh, i64 2
  %i.xk = load i8, ptr %i.xj, align 2, !tbaa !25
  %i.xl = zext i8 %i.xk to i32
  %i.xm = add i32 %i.wy, %i.xl                    ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xh, i64 3
  %i.xo = load i8, ptr %i.xn, align 1, !tbaa !26
  %i.xp = zext i8 %i.xo to i64
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xc, i64 %i.xp ; 2 uses
  %i.xr = and i32 %i.xm, 63
  %i.xs = zext nneg i32 %i.xr to i64
  %i.xt = shl i64 %.sroa.0431.10680.i, %i.xs
  %i.xu = lshr i64 %i.xt, %i.wj
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %i.xu ; 3 uses
  %i.xw = load i16, ptr %i.xv, align 2
  store i16 %i.xw, ptr %i.xq, align 1
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xv, i64 2
  %i.xy = load i8, ptr %i.xx, align 2, !tbaa !25
  %i.xz = zext i8 %i.xy to i32
  %i.ya = add i32 %i.xm, %i.xz                    ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xv, i64 3
  %i.yc = load i8, ptr %i.yb, align 1, !tbaa !26
  %i.yd = zext i8 %i.yc to i64
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xq, i64 %i.yd ; 2 uses
  %i.yf = and i32 %i.ya, 63
  %i.yg = zext nneg i32 %i.yf to i64
  %i.yh = shl i64 %.sroa.0431.10680.i, %i.yg
  %i.yi = lshr i64 %i.yh, %i.wj
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %i.yi ; 3 uses
  %i.yk = load i16, ptr %i.yj, align 2
  store i16 %i.yk, ptr %i.ye, align 1
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yj, i64 2
  %i.ym = load i8, ptr %i.yl, align 2, !tbaa !25
  %i.yn = zext i8 %i.ym to i32
  %i.yo = add i32 %i.ya, %i.yn                    ; 3 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yj, i64 3
  %i.yq = load i8, ptr %i.yp, align 1, !tbaa !26
  %i.yr = zext i8 %i.yq to i64
  %i.ys = getelementptr inbounds nuw i8, ptr %i.ye, i64 %i.yr ; 2 uses
  %i.yt = and i32 %.sroa.36310.13684.i, 63
  %i.yu = zext nneg i32 %i.yt to i64
  %i.yv = shl i64 %.sroa.0309.10683.i, %i.yu
  %i.yw = lshr i64 %i.yv, %i.wj
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %i.yw ; 3 uses
  %i.yy = load i16, ptr %i.yx, align 2
  store i16 %i.yy, ptr %.0170.i690.i, align 1
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yx, i64 2
  %i.za = load i8, ptr %i.yz, align 2, !tbaa !25
  %i.zb = zext i8 %i.za to i32
  %i.zc = add i32 %.sroa.36310.13684.i, %i.zb     ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yx, i64 3
  %i.ze = load i8, ptr %i.zd, align 1, !tbaa !26
  %i.zf = zext i8 %i.ze to i64
  %i.zg = getelementptr inbounds nuw i8, ptr %.0170.i690.i, i64 %i.zf ; 2 uses
  %i.zh = and i32 %i.zc, 63
  %i.zi = zext nneg i32 %i.zh to i64
  %i.zj = shl i64 %.sroa.0309.10683.i, %i.zi
  %i.zk = lshr i64 %i.zj, %i.wj
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %i.zk ; 3 uses
  %i.zm = load i16, ptr %i.zl, align 2
  store i16 %i.zm, ptr %i.zg, align 1
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zl, i64 2
  %i.zo = load i8, ptr %i.zn, align 2, !tbaa !25
  %i.zp = zext i8 %i.zo to i32
  %i.zq = add i32 %i.zc, %i.zp                    ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zl, i64 3
  %i.zs = load i8, ptr %i.zr, align 1, !tbaa !26
  %i.zt = zext i8 %i.zs to i64
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zg, i64 %i.zt ; 2 uses
  %i.zv = and i32 %i.zq, 63
  %i.zw = zext nneg i32 %i.zv to i64
  %i.zx = shl i64 %.sroa.0309.10683.i, %i.zw
  %i.zy = lshr i64 %i.zx, %i.wj
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %i.zy ; 3 uses
  %i.aaa = load i16, ptr %i.zz, align 2
  store i16 %i.aaa, ptr %i.zu, align 1
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zz, i64 2
  %i.aac = load i8, ptr %i.aab, align 2, !tbaa !25
  %i.aad = zext i8 %i.aac to i32
  %i.aae = add i32 %i.zq, %i.aad                  ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.zz, i64 3
  %i.aag = load i8, ptr %i.aaf, align 1, !tbaa !26
  %i.aah = zext i8 %i.aag to i64
  %i.aai = getelementptr inbounds nuw i8, ptr %i.zu, i64 %i.aah ; 2 uses
  %i.aaj = and i32 %i.aae, 63
  %i.aak = zext nneg i32 %i.aaj to i64
  %i.aal = shl i64 %.sroa.0309.10683.i, %i.aak
  %i.aam = lshr i64 %i.aal, %i.wj
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %i.aam ; 3 uses
  %i.aao = load i16, ptr %i.aan, align 2
  store i16 %i.aao, ptr %i.aai, align 1
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aan, i64 2
  %i.aaq = load i8, ptr %i.aap, align 2, !tbaa !25
  %i.aar = zext i8 %i.aaq to i32
  %i.aas = add i32 %i.aae, %i.aar                 ; 3 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aan, i64 3
  %i.aau = load i8, ptr %i.aat, align 1, !tbaa !26
  %i.aav = zext i8 %i.aau to i64
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aai, i64 %i.aav ; 2 uses
  %i.aax = icmp ult ptr %.sroa.116466.10682.i, %i.pz ; 2 uses
  br i1 %i.aax, label %BIT_reloadDStreamFast.exit.i, label %bb.bl, !prof !48

bb.bl:                                            ; preds = %bb.bk
  %i.aay = lshr i32 %i.yo, 3
  %i.aaz = zext nneg i32 %i.aay to i64
  %i.aba = sub nsw i64 0, %i.aaz
  %i.abb = getelementptr inbounds i8, ptr %.sroa.116466.10682.i, i64 %i.aba ; 2 uses
  %i.abc = and i32 %i.yo, 7
  %.val.i.i.i = load i64, ptr %i.abb, align 1, !tbaa !22
  br label %BIT_reloadDStreamFast.exit.i

BIT_reloadDStreamFast.exit.i:                     ; preds = %bb.bl, %bb.bk
  %.sroa.0431.13.i = phi i64 [ %.sroa.0431.10680.i, %bb.bk ], [ %.val.i.i.i, %bb.bl ] ; 2 uses
  %.sroa.36432.15.i = phi i32 [ %i.yo, %bb.bk ], [ %i.abc, %bb.bl ] ; 2 uses
  %.sroa.116466.12.i = phi ptr [ %.sroa.116466.10682.i, %bb.bk ], [ %i.abb, %bb.bl ] ; 2 uses
  %i.abd = icmp ult ptr %.sroa.116344.10685.i, %i.sb
  br i1 %i.abd, label %BIT_reloadDStreamFast.exit166.i, label %bb.bm, !prof !48

bb.bm:                                            ; preds = %BIT_reloadDStreamFast.exit.i
  %i.abe = lshr i32 %i.aas, 3
  %i.abf = zext nneg i32 %i.abe to i64
  %i.abg = sub nsw i64 0, %i.abf
  %i.abh = getelementptr inbounds i8, ptr %.sroa.116344.10685.i, i64 %i.abg ; 2 uses
  %i.abi = and i32 %i.aas, 7
  %.val.i.i164.i = load i64, ptr %i.abh, align 1, !tbaa !22
  br label %BIT_reloadDStreamFast.exit166.i

BIT_reloadDStreamFast.exit166.i:                  ; preds = %bb.bm, %BIT_reloadDStreamFast.exit.i
  %.sroa.0309.13.i = phi i64 [ %.sroa.0309.10683.i, %BIT_reloadDStreamFast.exit.i ], [ %.val.i.i164.i, %bb.bm ] ; 2 uses
  %.sroa.36310.15.i = phi i32 [ %i.aas, %BIT_reloadDStreamFast.exit.i ], [ %i.abi, %bb.bm ] ; 2 uses
  %.sroa.116344.12.i = phi ptr [ %.sroa.116344.10685.i, %BIT_reloadDStreamFast.exit.i ], [ %i.abh, %bb.bm ] ; 2 uses
  %.0.i165.i = phi i1 [ true, %BIT_reloadDStreamFast.exit.i ], [ %i.aax, %bb.bm ]
  %i.abj = and i32 %.sroa.36.13687.i, 63
  %i.abk = zext nneg i32 %i.abj to i64
  %i.abl = shl i64 %.sroa.0.10686.i, %i.abk
  %i.abm = lshr i64 %i.abl, %i.wj
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %i.abm ; 3 uses
  %i.abo = load i16, ptr %i.abn, align 2
  store i16 %i.abo, ptr %.0166.i691.i, align 1
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abn, i64 2
  %i.abq = load i8, ptr %i.abp, align 2, !tbaa !25
  %i.abr = zext i8 %i.abq to i32
  %i.abs = add i32 %.sroa.36.13687.i, %i.abr      ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abn, i64 3
  %i.abu = load i8, ptr %i.abt, align 1, !tbaa !26
  %i.abv = zext i8 %i.abu to i64
  %i.abw = getelementptr inbounds nuw i8, ptr %.0166.i691.i, i64 %i.abv ; 2 uses
  %i.abx = and i32 %i.abs, 63
  %i.aby = zext nneg i32 %i.abx to i64
  %i.abz = shl i64 %.sroa.0.10686.i, %i.aby
  %i.aca = lshr i64 %i.abz, %i.wj
  %i.acb = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %i.aca ; 3 uses
  %i.acc = load i16, ptr %i.acb, align 2
  store i16 %i.acc, ptr %i.abw, align 1
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acb, i64 2
  %i.ace = load i8, ptr %i.acd, align 2, !tbaa !25
  %i.acf = zext i8 %i.ace to i32
  %i.acg = add i32 %i.abs, %i.acf                 ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acb, i64 3
  %i.aci = load i8, ptr %i.ach, align 1, !tbaa !26
  %i.acj = zext i8 %i.aci to i64
  %i.ack = getelementptr inbounds nuw i8, ptr %i.abw, i64 %i.acj ; 2 uses
  %i.acl = and i32 %i.acg, 63
  %i.acm = zext nneg i32 %i.acl to i64
  %i.acn = shl i64 %.sroa.0.10686.i, %i.acm
  %i.aco = lshr i64 %i.acn, %i.wj
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %i.aco ; 3 uses
  %i.acq = load i16, ptr %i.acp, align 2
  store i16 %i.acq, ptr %i.ack, align 1
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acp, i64 2
  %i.acs = load i8, ptr %i.acr, align 2, !tbaa !25
  %i.act = zext i8 %i.acs to i32
  %i.acu = add i32 %i.acg, %i.act                 ; 2 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acp, i64 3
  %i.acw = load i8, ptr %i.acv, align 1, !tbaa !26
  %i.acx = zext i8 %i.acw to i64
  %i.acy = getelementptr inbounds nuw i8, ptr %i.ack, i64 %i.acx ; 2 uses
  %i.acz = and i32 %i.acu, 63
  %i.ada = zext nneg i32 %i.acz to i64
  %i.adb = shl i64 %.sroa.0.10686.i, %i.ada
  %i.adc = lshr i64 %i.adb, %i.wj
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %i.adc ; 3 uses
  %i.ade = load i16, ptr %i.add, align 2
  store i16 %i.ade, ptr %i.acy, align 1
  %i.adf = getelementptr inbounds nuw i8, ptr %i.add, i64 2
  %i.adg = load i8, ptr %i.adf, align 2, !tbaa !25
  %i.adh = zext i8 %i.adg to i32
  %i.adi = add i32 %i.acu, %i.adh                 ; 3 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %i.add, i64 3
  %i.adk = load i8, ptr %i.adj, align 1, !tbaa !26
  %i.adl = zext i8 %i.adk to i64
  %i.adm = getelementptr inbounds nuw i8, ptr %i.acy, i64 %i.adl ; 2 uses
  %i.adn = and i32 %.val27706.i, 63
  %i.ado = zext nneg i32 %i.adn to i64
  %i.adp = shl i64 %.val.i.i170678679.i, %i.ado
  %i.adq = lshr i64 %i.adp, %i.wj
  %i.adr = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %i.adq ; 3 uses
  %i.ads = load i16, ptr %i.adr, align 2
  store i16 %i.ads, ptr %.0162.i692.i, align 1
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adr, i64 2
  %i.adu = load i8, ptr %i.adt, align 2, !tbaa !25
  %i.adv = zext i8 %i.adu to i32
  %i.adw = add i32 %.val27706.i, %i.adv           ; 2 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adr, i64 3
  %i.ady = load i8, ptr %i.adx, align 1, !tbaa !26
  %i.adz = zext i8 %i.ady to i64
  %i.aea = getelementptr inbounds nuw i8, ptr %.0162.i692.i, i64 %i.adz ; 2 uses
  %i.aeb = and i32 %i.adw, 63
  %i.aec = zext nneg i32 %i.aeb to i64
  %i.aed = shl i64 %.val.i.i170678679.i, %i.aec
  %i.aee = lshr i64 %i.aed, %i.wj
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %i.aee ; 3 uses
  %i.aeg = load i16, ptr %i.aef, align 2
  store i16 %i.aeg, ptr %i.aea, align 1
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aef, i64 2
  %i.aei = load i8, ptr %i.aeh, align 2, !tbaa !25
  %i.aej = zext i8 %i.aei to i32
  %i.aek = add i32 %i.adw, %i.aej                 ; 2 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aef, i64 3
  %i.aem = load i8, ptr %i.ael, align 1, !tbaa !26
  %i.aen = zext i8 %i.aem to i64
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aea, i64 %i.aen ; 2 uses
  %i.aep = and i32 %i.aek, 63
  %i.aeq = zext nneg i32 %i.aep to i64
  %i.aer = shl i64 %.val.i.i170678679.i, %i.aeq
  %i.aes = lshr i64 %i.aer, %i.wj
  %i.aet = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %i.aes ; 3 uses
  %i.aeu = load i16, ptr %i.aet, align 2
  store i16 %i.aeu, ptr %i.aeo, align 1
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aet, i64 2
  %i.aew = load i8, ptr %i.aev, align 2, !tbaa !25
  %i.aex = zext i8 %i.aew to i32
  %i.aey = add i32 %i.aek, %i.aex                 ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aet, i64 3
  %i.afa = load i8, ptr %i.aez, align 1, !tbaa !26
  %i.afb = zext i8 %i.afa to i64
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aeo, i64 %i.afb ; 2 uses
  %i.afd = and i32 %i.aey, 63
  %i.afe = zext nneg i32 %i.afd to i64
  %i.aff = shl i64 %.val.i.i170678679.i, %i.afe
  %i.afg = lshr i64 %i.aff, %i.wj
  %i.afh = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %i.afg ; 3 uses
  %i.afi = load i16, ptr %i.afh, align 2
  store i16 %i.afi, ptr %i.afc, align 1
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afh, i64 2
  %i.afk = load i8, ptr %i.afj, align 2, !tbaa !25
  %i.afl = zext i8 %i.afk to i32
  %i.afm = add i32 %i.aey, %i.afl                 ; 3 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afh, i64 3
  %i.afo = load i8, ptr %i.afn, align 1, !tbaa !26
  %i.afp = zext i8 %i.afo to i64
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afc, i64 %i.afp ; 3 uses
  %i.afr = icmp ult ptr %.sroa.116224.10688.i, %i.ud
  br i1 %i.afr, label %BIT_reloadDStreamFast.exit169.i, label %bb.bn, !prof !48

bb.bn:                                            ; preds = %BIT_reloadDStreamFast.exit166.i
  %i.afs = lshr i32 %i.adi, 3
  %i.aft = zext nneg i32 %i.afs to i64
  %i.afu = sub nsw i64 0, %i.aft
  %i.afv = getelementptr inbounds i8, ptr %.sroa.116224.10688.i, i64 %i.afu ; 2 uses
  %i.afw = and i32 %i.adi, 7
  %.val.i.i167.i = load i64, ptr %i.afv, align 1, !tbaa !22
  br label %BIT_reloadDStreamFast.exit169.i

BIT_reloadDStreamFast.exit169.i:                  ; preds = %bb.bn, %BIT_reloadDStreamFast.exit166.i
  %.sroa.0.13.i = phi i64 [ %.sroa.0.10686.i, %BIT_reloadDStreamFast.exit166.i ], [ %.val.i.i167.i, %bb.bn ] ; 2 uses
  %.sroa.36.15.i = phi i32 [ %i.adi, %BIT_reloadDStreamFast.exit166.i ], [ %i.afw, %bb.bn ] ; 2 uses
  %.sroa.116224.12.i = phi ptr [ %.sroa.116224.10688.i, %BIT_reloadDStreamFast.exit166.i ], [ %i.afv, %bb.bn ] ; 2 uses
  %.0.i168.i = phi i1 [ true, %BIT_reloadDStreamFast.exit166.i ], [ %.0.i165.i, %bb.bn ]
  %i.afx = icmp ult ptr %i.wo, %i.wn
  br i1 %i.afx, label %..loopexit670_crit_edge.i, label %BIT_reloadDStreamFast.exit172.i, !prof !48

BIT_reloadDStreamFast.exit172.i:                  ; preds = %BIT_reloadDStreamFast.exit169.i
  %i.afy = lshr i32 %i.afm, 3
  %i.afz = zext nneg i32 %i.afy to i64
  %i.aga = sub nsw i64 0, %i.afz
  %i.agb = getelementptr inbounds i8, ptr %i.wo, i64 %i.aga ; 3 uses
  store ptr %i.agb, ptr %i.wl, align 8, !tbaa !47
  %i.agc = and i32 %i.afm, 7                      ; 2 uses
  %.val.i.i170.i = load i64, ptr %i.agb, align 1, !tbaa !22 ; 2 uses
  store i64 %.val.i.i170.i, ptr %6, align 8, !tbaa !49
  %i.agd = icmp uge ptr %i.afq, %i.pa
  %.not193.i.i = or i1 %i.agd, %.0.i168.i
  br i1 %.not193.i.i, label %..loopexit670_crit_edge.i, label %bb.bk, !llvm.loop !137

..loopexit670_crit_edge.i:                        ; preds = %BIT_reloadDStreamFast.exit172.i, %BIT_reloadDStreamFast.exit169.i
  %.val27707967.i = phi i32 [ %i.agc, %BIT_reloadDStreamFast.exit172.i ], [ %i.afm, %BIT_reloadDStreamFast.exit169.i ]
  store i32 %.val27707967.i, ptr %i.wk, align 8, !tbaa !46
  br label %.loopexit670.i

.loopexit670.i:                                   ; preds = %..loopexit670_crit_edge.i, %bb.bj
  %.sroa.0431.0.i = phi i64 [ %.sroa.0431.12.i, %bb.bj ], [ %.sroa.0431.13.i, %..loopexit670_crit_edge.i ] ; 6 uses
  %.sroa.36432.0.i = phi i32 [ %.sroa.36432.14.i, %bb.bj ], [ %.sroa.36432.15.i, %..loopexit670_crit_edge.i ] ; 12 uses
  %.sroa.116466.0.i = phi ptr [ %.sroa.116466.11.i, %bb.bj ], [ %.sroa.116466.12.i, %..loopexit670_crit_edge.i ] ; 8 uses
  %.sroa.0309.0.i = phi i64 [ %.sroa.0309.12.i, %bb.bj ], [ %.sroa.0309.13.i, %..loopexit670_crit_edge.i ] ; 6 uses
  %.sroa.36310.0.i = phi i32 [ %.sroa.36310.14.i, %bb.bj ], [ %.sroa.36310.15.i, %..loopexit670_crit_edge.i ] ; 12 uses
  %.sroa.116344.0.i = phi ptr [ %.sroa.116344.11.i, %bb.bj ], [ %.sroa.116344.12.i, %..loopexit670_crit_edge.i ] ; 8 uses
  %.sroa.0.0.i = phi i64 [ %.sroa.0.12.i, %bb.bj ], [ %.sroa.0.13.i, %..loopexit670_crit_edge.i ] ; 6 uses
  %.sroa.36.0.i = phi i32 [ %.sroa.36.14.i, %bb.bj ], [ %.sroa.36.15.i, %..loopexit670_crit_edge.i ] ; 12 uses
  %.sroa.116224.0.i = phi ptr [ %.sroa.116224.11.i, %bb.bj ], [ %.sroa.116224.12.i, %..loopexit670_crit_edge.i ] ; 8 uses
  %.3177.i.i = phi ptr [ %0, %bb.bj ], [ %i.ys, %..loopexit670_crit_edge.i ] ; 10 uses
  %.3173.i.i = phi ptr [ %i.pr, %bb.bj ], [ %i.aaw, %..loopexit670_crit_edge.i ] ; 10 uses
  %.3169.i.i = phi ptr [ %i.ps, %bb.bj ], [ %i.adm, %..loopexit670_crit_edge.i ] ; 10 uses
  %.3165.i.i = phi ptr [ %i.pt, %bb.bj ], [ %i.afq, %..loopexit670_crit_edge.i ] ; 9 uses
  %i.age = icmp ugt ptr %.3177.i.i, %i.pr
  %i.agf = icmp ugt ptr %.3173.i.i, %i.ps
  %or.cond198.i.i = select i1 %i.age, i1 true, i1 %i.agf
  %i.agg = icmp ugt ptr %.3169.i.i, %i.pt
  %or.cond199.i.i = select i1 %or.cond198.i.i, i1 true, i1 %i.agg
  br i1 %or.cond199.i.i, label %BIT_initDStream.exit.thread.i, label %bb.bo

bb.bo:                                            ; preds = %.loopexit670.i
  %i.agh = ptrtoint ptr %i.pr to i64              ; 2 uses
  %i.agi = ptrtoint ptr %.3177.i.i to i64
  %i.agj = sub i64 %i.agh, %i.agi
  %i.agk = icmp ugt i64 %i.agj, 7
  br i1 %i.agk, label %bb.bp, label %bb.ca

bb.bp:                                            ; preds = %bb.bo
  %i.agl = icmp samesign ult i32 %i.pu, 12
  %i.agm = icmp ugt i32 %.sroa.36432.0.i, 64      ; 2 uses
  br i1 %i.agl, label %.preheader663.i, label %.preheader664.i

.preheader664.i:                                  ; preds = %bb.bp
  br i1 %i.agm, label %BIT_reloadDStream.exit249.i.i, label %.lr.ph713.i, !prof !28

.lr.ph713.i:                                      ; preds = %.preheader664.i
  %i.agn = ptrtoint ptr %i.pl to i64
  %i.ago = getelementptr inbounds i8, ptr %i.pr, i64 -7
  %i.agp = sub nsw i32 0, %.sroa.3.0.extract.shift.i.i
  %i.agq = and i32 %i.agp, 63
  %i.agr = zext nneg i32 %i.agq to i64            ; 4 uses
  br label %bb.bv

.preheader663.i:                                  ; preds = %bb.bp
  br i1 %i.agm, label %BIT_reloadDStream.exit249.i.i, label %.lr.ph731.i, !prof !28

.lr.ph731.i:                                      ; preds = %.preheader663.i
  %i.ags = ptrtoint ptr %i.pl to i64
  %i.agt = getelementptr inbounds i8, ptr %i.pr, i64 -9
  %i.agu = sub nsw i32 0, %.sroa.3.0.extract.shift.i.i
  %i.agv = and i32 %i.agu, 63
  %i.agw = zext nneg i32 %i.agv to i64            ; 5 uses
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bu, %.lr.ph731.i
  %.0.i225.i730.i = phi ptr [ %.3177.i.i, %.lr.ph731.i ], [ %i.akd, %bb.bu ] ; 5 uses
  %.sroa.116466.8729.i = phi ptr [ %.sroa.116466.0.i, %.lr.ph731.i ], [ %.sroa.116466.9.i, %bb.bu ] ; 5 uses
  %.sroa.36432.11728.i = phi i32 [ %.sroa.36432.0.i, %.lr.ph731.i ], [ %i.ajz, %bb.bu ] ; 5 uses
  %.sroa.0431.8727.i = phi i64 [ %.sroa.0431.0.i, %.lr.ph731.i ], [ %.sroa.0431.9.i, %bb.bu ]
  %.not.i227.i.i = icmp ult ptr %.sroa.116466.8729.i, %i.pz
  br i1 %.not.i227.i.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.agx = lshr i32 %.sroa.36432.11728.i, 3
  %i.agy = and i32 %.sroa.36432.11728.i, 7
  br label %BIT_reloadDStream.exit.i.i

bb.bs:                                            ; preds = %bb.bq
  %i.agz = icmp eq ptr %.sroa.116466.8729.i, %i.pl
  br i1 %i.agz, label %BIT_reloadDStream.exit249.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.aha = lshr i32 %.sroa.36432.11728.i, 3       ; 2 uses
  %i.ahb = zext nneg i32 %i.aha to i64
  %i.ahc = sub nsw i64 0, %i.ahb
  %i.ahd = getelementptr inbounds i8, ptr %.sroa.116466.8729.i, i64 %i.ahc
  %i.ahe = icmp uge ptr %i.ahd, %i.pl             ; 2 uses
  %i.ahf = ptrtoint ptr %.sroa.116466.8729.i to i64
  %i.ahg = sub i64 %i.ahf, %i.ags
  %i.ahh = trunc i64 %i.ahg to i32
  %.021.i.i.i = select i1 %i.ahe, i32 %i.aha, i32 %i.ahh ; 2 uses
  %i.ahi = shl i32 %.021.i.i.i, 3
  %i.ahj = sub i32 %.sroa.36432.11728.i, %i.ahi
  br label %BIT_reloadDStream.exit.i.i

BIT_reloadDStream.exit.i.i:                       ; preds = %bb.bt, %bb.br
  %.sroa.36432.12.i = phi i32 [ %i.agy, %bb.br ], [ %i.ahj, %bb.bt ] ; 3 uses
  %.pn606.in.i = phi i32 [ %i.agx, %bb.br ], [ %.021.i.i.i, %bb.bt ]
  %.022.i.i.i = phi i1 [ true, %bb.br ], [ %i.ahe, %bb.bt ]
  %.pn606.i = zext i32 %.pn606.in.i to i64
  %.pn605.i = sub nsw i64 0, %.pn606.i
  %.sroa.116466.9.i = getelementptr inbounds i8, ptr %.sroa.116466.8729.i, i64 %.pn605.i ; 3 uses
  %.sroa.0431.9.i = load i64, ptr %.sroa.116466.9.i, align 1, !tbaa !22 ; 8 uses
  %i.ahk = icmp ult ptr %.0.i225.i730.i, %i.agt
  %i.ahl = and i1 %i.ahk, %.022.i.i.i
  br i1 %i.ahl, label %bb.bu, label %BIT_reloadDStream.exit249.i.i

bb.bu:                                            ; preds = %BIT_reloadDStream.exit.i.i
  %i.ahm = and i32 %.sroa.36432.12.i, 63
  %i.ahn = zext nneg i32 %i.ahm to i64
  %i.aho = shl i64 %.sroa.0431.9.i, %i.ahn
  %i.ahp = lshr i64 %i.aho, %i.agw
  %i.ahq = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %i.ahp ; 3 uses
  %i.ahr = load i16, ptr %i.ahq, align 2
  store i16 %i.ahr, ptr %.0.i225.i730.i, align 1
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahq, i64 2
  %i.aht = load i8, ptr %i.ahs, align 2, !tbaa !25
  %i.ahu = zext i8 %i.aht to i32
  %i.ahv = add i32 %.sroa.36432.12.i, %i.ahu      ; 2 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahq, i64 3
  %i.ahx = load i8, ptr %i.ahw, align 1, !tbaa !26
  %i.ahy = zext i8 %i.ahx to i64
  %i.ahz = getelementptr inbounds nuw i8, ptr %.0.i225.i730.i, i64 %i.ahy ; 2 uses
  %i.aia = and i32 %i.ahv, 63
  %i.aib = zext nneg i32 %i.aia to i64
  %i.aic = shl i64 %.sroa.0431.9.i, %i.aib
  %i.aid = lshr i64 %i.aic, %i.agw
  %i.aie = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %i.aid ; 3 uses
  %i.aif = load i16, ptr %i.aie, align 2
  store i16 %i.aif, ptr %i.ahz, align 1
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aie, i64 2
  %i.aih = load i8, ptr %i.aig, align 2, !tbaa !25
  %i.aii = zext i8 %i.aih to i32
  %i.aij = add i32 %i.ahv, %i.aii                 ; 2 uses
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aie, i64 3
  %i.ail = load i8, ptr %i.aik, align 1, !tbaa !26
  %i.aim = zext i8 %i.ail to i64
  %i.ain = getelementptr inbounds nuw i8, ptr %i.ahz, i64 %i.aim ; 2 uses
  %i.aio = and i32 %i.aij, 63
  %i.aip = zext nneg i32 %i.aio to i64
  %i.aiq = shl i64 %.sroa.0431.9.i, %i.aip
  %i.air = lshr i64 %i.aiq, %i.agw
  %i.ais = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %i.air ; 3 uses
  %i.ait = load i16, ptr %i.ais, align 2
  store i16 %i.ait, ptr %i.ain, align 1
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ais, i64 2
  %i.aiv = load i8, ptr %i.aiu, align 2, !tbaa !25
  %i.aiw = zext i8 %i.aiv to i32
  %i.aix = add i32 %i.aij, %i.aiw                 ; 2 uses
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.ais, i64 3
  %i.aiz = load i8, ptr %i.aiy, align 1, !tbaa !26
  %i.aja = zext i8 %i.aiz to i64
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.ain, i64 %i.aja ; 2 uses
  %i.ajc = and i32 %i.aix, 63
  %i.ajd = zext nneg i32 %i.ajc to i64
  %i.aje = shl i64 %.sroa.0431.9.i, %i.ajd
  %i.ajf = lshr i64 %i.aje, %i.agw
  %i.ajg = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %i.ajf ; 3 uses
  %i.ajh = load i16, ptr %i.ajg, align 2
  store i16 %i.ajh, ptr %i.ajb, align 1
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajg, i64 2
  %i.ajj = load i8, ptr %i.aji, align 2, !tbaa !25
  %i.ajk = zext i8 %i.ajj to i32
  %i.ajl = add i32 %i.aix, %i.ajk                 ; 2 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajg, i64 3
  %i.ajn = load i8, ptr %i.ajm, align 1, !tbaa !26
  %i.ajo = zext i8 %i.ajn to i64
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajb, i64 %i.ajo ; 2 uses
  %i.ajq = and i32 %i.ajl, 63
  %i.ajr = zext nneg i32 %i.ajq to i64
  %i.ajs = shl i64 %.sroa.0431.9.i, %i.ajr
  %i.ajt = lshr i64 %i.ajs, %i.agw
  %i.aju = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %i.ajt ; 3 uses
  %i.ajv = load i16, ptr %i.aju, align 2
  store i16 %i.ajv, ptr %i.ajp, align 1
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.aju, i64 2
  %i.ajx = load i8, ptr %i.ajw, align 2, !tbaa !25
  %i.ajy = zext i8 %i.ajx to i32
  %i.ajz = add i32 %i.ajl, %i.ajy                 ; 3 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %i.aju, i64 3
  %i.akb = load i8, ptr %i.aka, align 1, !tbaa !26
  %i.akc = zext i8 %i.akb to i64
  %i.akd = getelementptr inbounds nuw i8, ptr %i.ajp, i64 %i.akc ; 2 uses
  %i.ake = icmp ugt i32 %i.ajz, 64
  br i1 %i.ake, label %BIT_reloadDStream.exit249.i.i, label %bb.bq, !prof !27, !llvm.loop !0

bb.bv:                                            ; preds = %bb.bz, %.lr.ph713.i
  %.1.i224.i712.i = phi ptr [ %.3177.i.i, %.lr.ph713.i ], [ %i.amx, %bb.bz ] ; 5 uses
  %.sroa.116466.6711.i = phi ptr [ %.sroa.116466.0.i, %.lr.ph713.i ], [ %.sroa.116466.7.i, %bb.bz ] ; 5 uses
  %.sroa.36432.9710.i = phi i32 [ %.sroa.36432.0.i, %.lr.ph713.i ], [ %i.amt, %bb.bz ] ; 5 uses
  %.sroa.0431.6709.i = phi i64 [ %.sroa.0431.0.i, %.lr.ph713.i ], [ %.sroa.0431.7.i, %bb.bz ]
  %.not.i229.i.i = icmp ult ptr %.sroa.116466.6711.i, %i.pz
  br i1 %.not.i229.i.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.akf = lshr i32 %.sroa.36432.9710.i, 3
  %i.akg = and i32 %.sroa.36432.9710.i, 7
  br label %BIT_reloadDStream.exit235.i.i

bb.bx:                                            ; preds = %bb.bv
  %i.akh = icmp eq ptr %.sroa.116466.6711.i, %i.pl
  br i1 %i.akh, label %BIT_reloadDStream.exit249.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.aki = lshr i32 %.sroa.36432.9710.i, 3        ; 2 uses
  %i.akj = zext nneg i32 %i.aki to i64
  %i.akk = sub nsw i64 0, %i.akj
  %i.akl = getelementptr inbounds i8, ptr %.sroa.116466.6711.i, i64 %i.akk
  %i.akm = icmp uge ptr %i.akl, %i.pl             ; 2 uses
  %i.akn = ptrtoint ptr %.sroa.116466.6711.i to i64
  %i.ako = sub i64 %i.akn, %i.agn
  %i.akp = trunc i64 %i.ako to i32
  %.021.i231.i.i = select i1 %i.akm, i32 %i.aki, i32 %i.akp ; 2 uses
  %i.akq = shl i32 %.021.i231.i.i, 3
  %i.akr = sub i32 %.sroa.36432.9710.i, %i.akq
  br label %BIT_reloadDStream.exit235.i.i

BIT_reloadDStream.exit235.i.i:                    ; preds = %bb.by, %bb.bw
  %.sroa.36432.10.i = phi i32 [ %i.akg, %bb.bw ], [ %i.akr, %bb.by ] ; 3 uses
  %.pn604.in.i = phi i32 [ %i.akf, %bb.bw ], [ %.021.i231.i.i, %bb.by ]
  %.022.i230.i.i = phi i1 [ true, %bb.bw ], [ %i.akm, %bb.by ]
  %.pn604.i = zext i32 %.pn604.in.i to i64
  %.pn.i27 = sub nsw i64 0, %.pn604.i
end_hunk_0
begin_hunk_1_@HUF_decompress4X1_usingDTable_internal:bb.a
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.ri = getelementptr inbounds nuw i8, ptr %i.oj, i64 6
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !16
  %i.rk = zext i8 %i.rj to i64
  %i.rl = shl nuw nsw i64 %i.rk, 48
  %i.rm = or disjoint i64 %i.rl, %i.rh
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.rn = phi i64 [ %i.rm, %bb.aj ], [ %i.rh, %bb.ai ]
  %i.ro = getelementptr inbounds nuw i8, ptr %i.oj, i64 5
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !16
  %i.rq = zext i8 %i.rp to i64
  %i.rr = shl nuw nsw i64 %i.rq, 40
  %i.rs = add nuw nsw i64 %i.rr, %i.rn
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ai
  %i.rt = phi i64 [ %i.rs, %bb.ak ], [ %i.rh, %bb.ai ]
  %i.ru = getelementptr inbounds nuw i8, ptr %i.oj, i64 4
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !16
  %i.rw = zext i8 %i.rv to i64
  %i.rx = shl nuw nsw i64 %i.rw, 32
  %i.ry = add nuw nsw i64 %i.rx, %i.rt
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ai
  %i.rz = phi i64 [ %i.ry, %bb.al ], [ %i.rh, %bb.ai ]
  %i.sa = getelementptr inbounds nuw i8, ptr %i.oj, i64 3
  %i.sb = load i8, ptr %i.sa, align 1, !tbaa !16
  %i.sc = zext i8 %i.sb to i64
  %i.sd = shl nuw nsw i64 %i.sc, 24
  %i.se = add nuw nsw i64 %i.sd, %i.rz
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ai
  %i.sf = phi i64 [ %i.se, %bb.am ], [ %i.rh, %bb.ai ]
  %i.sg = getelementptr inbounds nuw i8, ptr %i.oj, i64 2
  %i.sh = load i8, ptr %i.sg, align 1, !tbaa !16
  %i.si = zext i8 %i.sh to i64
  %i.sj = shl nuw nsw i64 %i.si, 16
  %i.sk = add nuw nsw i64 %i.sj, %i.sf
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ai
  %i.sl = phi i64 [ %i.sk, %bb.an ], [ %i.rh, %bb.ai ]
  %i.sm = getelementptr inbounds nuw i8, ptr %i.oj, i64 1
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !16
  %i.so = zext i8 %i.sn to i64
  %i.sp = shl nuw nsw i64 %i.so, 8
  %i.sq = add nuw nsw i64 %i.sp, %i.sl
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.ai
  %.sroa.0181.6.i = phi i64 [ %i.rh, %bb.ai ], [ %i.sq, %bb.ao ]
  %i.sr = getelementptr i8, ptr %i.ok, i64 -1
  %i.ss = load i8, ptr %i.sr, align 1, !tbaa !16  ; 2 uses
  %.not.i88.i = icmp eq i8 %i.ss, 0
  br i1 %.not.i88.i, label %BIT_initDStream.exit.thread.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.st = zext i8 %i.ss to i32
  %i.su = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.st, i1 true)
  %i.sv = shl nuw nsw i16 %.val85.i, 3
  %i.sw = zext nneg i16 %i.sv to i32
  %reass.sub59 = sub nsw i32 %i.su, %i.sw
  %i.sx = add nsw i32 %reass.sub59, 41
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.thread.i92.i
  %.sroa.0181.7.i = phi i64 [ %.sroa.0181.6.i, %bb.aq ], [ %.val.i90.i, %.thread.i92.i ] ; 2 uses
  %.sroa.25182.7.i = phi i32 [ %i.sx, %bb.aq ], [ %i.rf, %.thread.i92.i ] ; 2 uses
  %.sroa.69200.6.i = phi ptr [ %i.oj, %bb.aq ], [ %i.rb, %.thread.i92.i ] ; 2 uses
  %i.sy = icmp eq i16 %.val84.i, 0
  br i1 %i.sy, label %BIT_initDStream.exit.thread.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.sz = getelementptr inbounds nuw i8, ptr %i.ok, i64 8 ; 3 uses
  %i.ta = icmp ugt i16 %.val84.i, 7
  br i1 %i.ta, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.tb = getelementptr i8, ptr %i.ol, i64 -1
  %i.tc = load i8, ptr %i.tb, align 1, !tbaa !16  ; 2 uses
  %.not51.i97.i = icmp eq i8 %i.tc, 0
  br i1 %.not51.i97.i, label %BIT_initDStream.exit.thread.i, label %.thread.i98.i

.thread.i98.i:                                    ; preds = %bb.at
  %i.td = getelementptr inbounds i8, ptr %i.ol, i64 -8 ; 2 uses
  %.val.i96.i = load i64, ptr %i.td, align 1, !tbaa !22
  %i.te = zext i8 %i.tc to i32
  %i.tf = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.te, i1 true)
  %i.tg = xor i32 %i.tf, 31
  %i.th = sub nuw nsw i32 8, %i.tg
  br label %bb.bd

bb.au:                                            ; preds = %bb.as
  %i.ti = load i8, ptr %i.ok, align 1, !tbaa !16
  %i.tj = zext i8 %i.ti to i64                    ; 7 uses
  switch i16 %.val84.i, label %bb.bb [
    i16 7, label %bb.av
    i16 6, label %bb.aw
    i16 5, label %bb.ax
    i16 4, label %bb.ay
    i16 3, label %bb.az
    i16 2, label %bb.ba
  ]

bb.av:                                            ; preds = %bb.au
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ok, i64 6
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !16
  %i.tm = zext i8 %i.tl to i64
  %i.tn = shl nuw nsw i64 %i.tm, 48
  %i.to = or disjoint i64 %i.tn, %i.tj
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.tp = phi i64 [ %i.to, %bb.av ], [ %i.tj, %bb.au ]
  %i.tq = getelementptr inbounds nuw i8, ptr %i.ok, i64 5
  %i.tr = load i8, ptr %i.tq, align 1, !tbaa !16
  %i.ts = zext i8 %i.tr to i64
  %i.tt = shl nuw nsw i64 %i.ts, 40
  %i.tu = add nuw nsw i64 %i.tt, %i.tp
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.au
  %i.tv = phi i64 [ %i.tu, %bb.aw ], [ %i.tj, %bb.au ]
  %i.tw = getelementptr inbounds nuw i8, ptr %i.ok, i64 4
  %i.tx = load i8, ptr %i.tw, align 1, !tbaa !16
  %i.ty = zext i8 %i.tx to i64
  %i.tz = shl nuw nsw i64 %i.ty, 32
  %i.ua = add nuw nsw i64 %i.tz, %i.tv
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.au
  %i.ub = phi i64 [ %i.ua, %bb.ax ], [ %i.tj, %bb.au ]
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ok, i64 3
  %i.ud = load i8, ptr %i.uc, align 1, !tbaa !16
  %i.ue = zext i8 %i.ud to i64
  %i.uf = shl nuw nsw i64 %i.ue, 24
  %i.ug = add nuw nsw i64 %i.uf, %i.ub
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.au
  %i.uh = phi i64 [ %i.ug, %bb.ay ], [ %i.tj, %bb.au ]
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ok, i64 2
  %i.uj = load i8, ptr %i.ui, align 1, !tbaa !16
  %i.uk = zext i8 %i.uj to i64
  %i.ul = shl nuw nsw i64 %i.uk, 16
  %i.um = add nuw nsw i64 %i.ul, %i.uh
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.au
  %i.un = phi i64 [ %i.um, %bb.az ], [ %i.tj, %bb.au ]
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ok, i64 1
  %i.up = load i8, ptr %i.uo, align 1, !tbaa !16
  %i.uq = zext i8 %i.up to i64
  %i.ur = shl nuw nsw i64 %i.uq, 8
  %i.us = add nuw nsw i64 %i.ur, %i.un
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.au
  %.sroa.0.6.i = phi i64 [ %i.tj, %bb.au ], [ %i.us, %bb.ba ]
  %i.ut = getelementptr i8, ptr %i.ol, i64 -1
  %i.uu = load i8, ptr %i.ut, align 1, !tbaa !16  ; 2 uses
  %.not.i94.i = icmp eq i8 %i.uu, 0
  br i1 %.not.i94.i, label %BIT_initDStream.exit.thread.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.uv = zext i8 %i.uu to i32
  %i.uw = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.uv, i1 true)
  %i.ux = shl nuw nsw i16 %.val84.i, 3
  %i.uy = zext nneg i16 %i.ux to i32
  %reass.sub60 = sub nsw i32 %i.uw, %i.uy
  %i.uz = add nsw i32 %reass.sub60, 41
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.thread.i98.i
  %.sroa.0.7.i = phi i64 [ %.sroa.0.6.i, %bb.bc ], [ %.val.i96.i, %.thread.i98.i ] ; 2 uses
  %.sroa.25.7.i = phi i32 [ %i.uz, %bb.bc ], [ %i.th, %.thread.i98.i ] ; 2 uses
  %.sroa.69136.6.i = phi ptr [ %i.ok, %bb.bc ], [ %i.td, %.thread.i98.i ] ; 2 uses
  %i.va = call fastcc i64 @BIT_initDStream(ptr noundef %6, ptr noundef nonnull %i.ol, i64 noundef %i.oh) ; 2 uses
  %i.vb = icmp ult i64 %i.va, -119
  br i1 %i.vb, label %bb.be, label %BIT_initDStream.exit.thread.i

bb.be:                                            ; preds = %bb.bd
  %.neg.i.i = mul i64 %i.on, -3
  %gepdiff.i.i = add i64 %.neg.i.i, %1
  %i.vc = icmp ugt i64 %gepdiff.i.i, 7
  %.not485.i = icmp ult ptr %i.oq, %i.nx
  %or.cond.i = select i1 %i.vc, i1 %.not485.i, i1 false
  br i1 %or.cond.i, label %.lr.ph.i25, label %.loopexit.i

.lr.ph.i25:                                       ; preds = %bb.be
  %.promoted.i = load i64, ptr %6, align 8
  %i.vd = sub nsw i32 0, %.sroa.3.0.extract.shift.i.i
  %i.ve = and i32 %i.vd, 63
  %i.vf = zext nneg i32 %i.ve to i64              ; 16 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !45
  %.promoted408.i = load i32, ptr %i.vg, align 8, !tbaa !46
  %.promoted411.i = load ptr, ptr %i.vh, align 8, !tbaa !47
  br label %bb.bf

bb.bf:                                            ; preds = %BIT_reloadDStreamFast.exit108.i, %.lr.ph.i25
  %i.vk = phi ptr [ %.promoted411.i, %.lr.ph.i25 ], [ %i.adb, %BIT_reloadDStreamFast.exit108.i ] ; 2 uses
  %.val37410.i = phi i32 [ %.promoted408.i, %.lr.ph.i25 ], [ %i.adc, %BIT_reloadDStreamFast.exit108.i ] ; 2 uses
  %.0146.i395.i = phi ptr [ %i.oq, %.lr.ph.i25 ], [ %i.ace, %BIT_reloadDStreamFast.exit108.i ] ; 5 uses
  %.0150.i394.i = phi ptr [ %i.op, %.lr.ph.i25 ], [ %i.abt, %BIT_reloadDStreamFast.exit108.i ] ; 5 uses
  %.0154.i393.i = phi ptr [ %i.oo, %.lr.ph.i25 ], [ %i.abi, %BIT_reloadDStreamFast.exit108.i ] ; 5 uses
  %.0158.i392.i = phi ptr [ %0, %.lr.ph.i25 ], [ %i.aax, %BIT_reloadDStreamFast.exit108.i ] ; 5 uses
  %.sroa.69136.5391.i = phi ptr [ %.sroa.69136.6.i, %.lr.ph.i25 ], [ %.sroa.69136.7.i, %BIT_reloadDStreamFast.exit108.i ] ; 3 uses
  %.sroa.25.6390.i = phi i32 [ %.sroa.25.7.i, %.lr.ph.i25 ], [ %.sroa.25.8.i, %BIT_reloadDStreamFast.exit108.i ] ; 2 uses
  %.sroa.0.5389.i = phi i64 [ %.sroa.0.7.i, %.lr.ph.i25 ], [ %.sroa.0.8.i, %BIT_reloadDStreamFast.exit108.i ] ; 5 uses
  %.sroa.69200.5388.i = phi ptr [ %.sroa.69200.6.i, %.lr.ph.i25 ], [ %.sroa.69200.7.i, %BIT_reloadDStreamFast.exit108.i ] ; 3 uses
  %.sroa.25182.6387.i = phi i32 [ %.sroa.25182.7.i, %.lr.ph.i25 ], [ %.sroa.25182.8.i, %BIT_reloadDStreamFast.exit108.i ] ; 2 uses
  %.sroa.0181.5386.i = phi i64 [ %.sroa.0181.7.i, %.lr.ph.i25 ], [ %.sroa.0181.8.i, %BIT_reloadDStreamFast.exit108.i ] ; 5 uses
  %.sroa.69266.5385.i = phi ptr [ %.sroa.69266.6.i, %.lr.ph.i25 ], [ %.sroa.69266.7.i, %BIT_reloadDStreamFast.exit108.i ] ; 3 uses
  %.sroa.25248.6384.i = phi i32 [ %.sroa.25248.7.i, %.lr.ph.i25 ], [ %.sroa.25248.8.i, %BIT_reloadDStreamFast.exit108.i ] ; 2 uses
  %.sroa.0247.5383.i = phi i64 [ %.sroa.0247.7.i, %.lr.ph.i25 ], [ %.sroa.0247.8.i, %BIT_reloadDStreamFast.exit108.i ] ; 5 uses
  %.val.i.i106381382.i = phi i64 [ %.promoted.i, %.lr.ph.i25 ], [ %.val.i.i106.i, %BIT_reloadDStreamFast.exit108.i ] ; 4 uses
  %i.vl = and i32 %.sroa.25248.6384.i, 63
  %i.vm = zext nneg i32 %i.vl to i64
  %i.vn = shl i64 %.sroa.0247.5383.i, %i.vm
  %i.vo = lshr i64 %i.vn, %i.vf
  %i.vp = getelementptr inbounds nuw [2 x i8], ptr %i.ny, i64 %i.vo ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 1
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !33
  %i.vs = load i8, ptr %i.vp, align 1, !tbaa !34
  %i.vt = zext i8 %i.vs to i32
  %i.vu = add i32 %.sroa.25248.6384.i, %i.vt      ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %.0158.i392.i, i64 1
  store i8 %i.vr, ptr %.0158.i392.i, align 1, !tbaa !16
  %i.vw = and i32 %.sroa.25182.6387.i, 63
  %i.vx = zext nneg i32 %i.vw to i64
  %i.vy = shl i64 %.sroa.0181.5386.i, %i.vx
  %i.vz = lshr i64 %i.vy, %i.vf
  %i.wa = getelementptr inbounds nuw [2 x i8], ptr %i.ny, i64 %i.vz ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 1
  %i.wc = load i8, ptr %i.wb, align 1, !tbaa !33
  %i.wd = load i8, ptr %i.wa, align 1, !tbaa !34
  %i.we = zext i8 %i.wd to i32
  %i.wf = add i32 %.sroa.25182.6387.i, %i.we      ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %.0154.i393.i, i64 1
  store i8 %i.wc, ptr %.0154.i393.i, align 1, !tbaa !16
  %i.wh = and i32 %.sroa.25.6390.i, 63
  %i.wi = zext nneg i32 %i.wh to i64
  %i.wj = shl i64 %.sroa.0.5389.i, %i.wi
  %i.wk = lshr i64 %i.wj, %i.vf
  %i.wl = getelementptr inbounds nuw [2 x i8], ptr %i.ny, i64 %i.wk ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 1
  %i.wn = load i8, ptr %i.wm, align 1, !tbaa !33
  %i.wo = load i8, ptr %i.wl, align 1, !tbaa !34
  %i.wp = zext i8 %i.wo to i32
  %i.wq = add i32 %.sroa.25.6390.i, %i.wp         ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %.0150.i394.i, i64 1
  store i8 %i.wn, ptr %.0150.i394.i, align 1, !tbaa !16
  %i.ws = and i32 %.val37410.i, 63
  %i.wt = zext nneg i32 %i.ws to i64
  %i.wu = shl i64 %.val.i.i106381382.i, %i.wt
  %i.wv = lshr i64 %i.wu, %i.vf
  %i.ww = getelementptr inbounds nuw [2 x i8], ptr %i.ny, i64 %i.wv ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 1
  %i.wy = load i8, ptr %i.wx, align 1, !tbaa !33
  %i.wz = load i8, ptr %i.ww, align 1, !tbaa !34
  %i.xa = zext i8 %i.wz to i32
  %i.xb = add i32 %.val37410.i, %i.xa             ; 2 uses
  store i8 %i.wy, ptr %.0146.i395.i, align 1, !tbaa !16
  %i.xc = getelementptr inbounds nuw i8, ptr %.0146.i395.i, i64 1
  %i.xd = and i32 %i.vu, 63
  %i.xe = zext nneg i32 %i.xd to i64
  %i.xf = shl i64 %.sroa.0247.5383.i, %i.xe
  %i.xg = lshr i64 %i.xf, %i.vf
  %i.xh = getelementptr inbounds nuw [2 x i8], ptr %i.ny, i64 %i.xg ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 1
  %i.xj = load i8, ptr %i.xi, align 1, !tbaa !33
  %i.xk = load i8, ptr %i.xh, align 1, !tbaa !34
  %i.xl = zext i8 %i.xk to i32
  %i.xm = add i32 %i.vu, %i.xl                    ; 2 uses
  store i8 %i.xj, ptr %i.vv, align 1, !tbaa !16
  %i.xn = and i32 %i.wf, 63
  %i.xo = zext nneg i32 %i.xn to i64
  %i.xp = shl i64 %.sroa.0181.5386.i, %i.xo
  %i.xq = lshr i64 %i.xp, %i.vf
  %i.xr = getelementptr inbounds nuw [2 x i8], ptr %i.ny, i64 %i.xq ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 1
  %i.xt = load i8, ptr %i.xs, align 1, !tbaa !33
  %i.xu = load i8, ptr %i.xr, align 1, !tbaa !34
  %i.xv = zext i8 %i.xu to i32
  %i.xw = add i32 %i.wf, %i.xv                    ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %.0154.i393.i, i64 2
  store i8 %i.xt, ptr %i.wg, align 1, !tbaa !16
  %i.xy = and i32 %i.wq, 63
  %i.xz = zext nneg i32 %i.xy to i64
  %i.ya = shl i64 %.sroa.0.5389.i, %i.xz
  %i.yb = lshr i64 %i.ya, %i.vf
  %i.yc = getelementptr inbounds nuw [2 x i8], ptr %i.ny, i64 %i.yb ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 1
  %i.ye = load i8, ptr %i.yd, align 1, !tbaa !33
  %i.yf = load i8, ptr %i.yc, align 1, !tbaa !34
  %i.yg = zext i8 %i.yf to i32
  %i.yh = add i32 %i.wq, %i.yg                    ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %.0150.i394.i, i64 2
  store i8 %i.ye, ptr %i.wr, align 1, !tbaa !16
  %i.yj = and i32 %i.xb, 63
  %i.yk = zext nneg i32 %i.yj to i64
  %i.yl = shl i64 %.val.i.i106381382.i, %i.yk
  %i.ym = lshr i64 %i.yl, %i.vf
  %i.yn = getelementptr inbounds nuw [2 x i8], ptr %i.ny, i64 %i.ym ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 1
  %i.yp = load i8, ptr %i.yo, align 1, !tbaa !33
  %i.yq = load i8, ptr %i.yn, align 1, !tbaa !34
  %i.yr = zext i8 %i.yq to i32
  %i.ys = add i32 %i.xb, %i.yr                    ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %.0146.i395.i, i64 2
  store i8 %i.yp, ptr %i.xc, align 1, !tbaa !16
  %i.yu = getelementptr inbounds nuw i8, ptr %.0158.i392.i, i64 2
  %i.yv = and i32 %i.xm, 63
  %i.yw = zext nneg i32 %i.yv to i64
  %i.yx = shl i64 %.sroa.0247.5383.i, %i.yw
  %i.yy = lshr i64 %i.yx, %i.vf
  %i.yz = getelementptr inbounds nuw [2 x i8], ptr %i.ny, i64 %i.yy ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 1
  %i.zb = load i8, ptr %i.za, align 1, !tbaa !33
  %i.zc = load i8, ptr %i.yz, align 1, !tbaa !34
  %i.zd = zext i8 %i.zc to i32
  %i.ze = add i32 %i.xm, %i.zd                    ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %.0158.i392.i, i64 3
  store i8 %i.zb, ptr %i.yu, align 1, !tbaa !16
  %i.zg = and i32 %i.xw, 63
  %i.zh = zext nneg i32 %i.zg to i64
  %i.zi = shl i64 %.sroa.0181.5386.i, %i.zh
  %i.zj = lshr i64 %i.zi, %i.vf
  %i.zk = getelementptr inbounds nuw [2 x i8], ptr %i.ny, i64 %i.zj ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 1
  %i.zm = load i8, ptr %i.zl, align 1, !tbaa !33
  %i.zn = load i8, ptr %i.zk, align 1, !tbaa !34
  %i.zo = zext i8 %i.zn to i32
  %i.zp = add i32 %i.xw, %i.zo                    ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %.0154.i393.i, i64 3
  store i8 %i.zm, ptr %i.xx, align 1, !tbaa !16
  %i.zr = and i32 %i.yh, 63
  %i.zs = zext nneg i32 %i.zr to i64
  %i.zt = shl i64 %.sroa.0.5389.i, %i.zs
  %i.zu = lshr i64 %i.zt, %i.vf
  %i.zv = getelementptr inbounds nuw [2 x i8], ptr %i.ny, i64 %i.zu ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 1
  %i.zx = load i8, ptr %i.zw, align 1, !tbaa !33
  %i.zy = load i8, ptr %i.zv, align 1, !tbaa !34
  %i.zz = zext i8 %i.zy to i32
  %i.aaa = add i32 %i.yh, %i.zz                   ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %.0150.i394.i, i64 3
  store i8 %i.zx, ptr %i.yi, align 1, !tbaa !16
  %i.aac = and i32 %i.ys, 63
  %i.aad = zext nneg i32 %i.aac to i64
  %i.aae = shl i64 %.val.i.i106381382.i, %i.aad
  %i.aaf = lshr i64 %i.aae, %i.vf
  %i.aag = getelementptr inbounds nuw [2 x i8], ptr %i.ny, i64 %i.aaf ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 1
  %i.aai = load i8, ptr %i.aah, align 1, !tbaa !33
  %i.aaj = load i8, ptr %i.aag, align 1, !tbaa !34
  %i.aak = zext i8 %i.aaj to i32
  %i.aal = add i32 %i.ys, %i.aak                  ; 2 uses
  store i8 %i.aai, ptr %i.yt, align 1, !tbaa !16
  %i.aam = getelementptr inbounds nuw i8, ptr %.0146.i395.i, i64 3
  %i.aan = and i32 %i.ze, 63
  %i.aao = zext nneg i32 %i.aan to i64
  %i.aap = shl i64 %.sroa.0247.5383.i, %i.aao
  %i.aaq = lshr i64 %i.aap, %i.vf
  %i.aar = getelementptr inbounds nuw [2 x i8], ptr %i.ny, i64 %i.aaq ; 2 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 1
  %i.aat = load i8, ptr %i.aas, align 1, !tbaa !33
  %i.aau = load i8, ptr %i.aar, align 1, !tbaa !34
  %i.aav = zext i8 %i.aau to i32
  %i.aaw = add i32 %i.ze, %i.aav                  ; 3 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %.0158.i392.i, i64 4 ; 2 uses
  store i8 %i.aat, ptr %i.zf, align 1, !tbaa !16
  %i.aay = and i32 %i.zp, 63
  %i.aaz = zext nneg i32 %i.aay to i64
  %i.aba = shl i64 %.sroa.0181.5386.i, %i.aaz
  %i.abb = lshr i64 %i.aba, %i.vf
  %i.abc = getelementptr inbounds nuw [2 x i8], ptr %i.ny, i64 %i.abb ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 1
  %i.abe = load i8, ptr %i.abd, align 1, !tbaa !33
  %i.abf = load i8, ptr %i.abc, align 1, !tbaa !34
  %i.abg = zext i8 %i.abf to i32
  %i.abh = add i32 %i.zp, %i.abg                  ; 3 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %.0154.i393.i, i64 4 ; 2 uses
  store i8 %i.abe, ptr %i.zq, align 1, !tbaa !16
  %i.abj = and i32 %i.aaa, 63
  %i.abk = zext nneg i32 %i.abj to i64
  %i.abl = shl i64 %.sroa.0.5389.i, %i.abk
  %i.abm = lshr i64 %i.abl, %i.vf
  %i.abn = getelementptr inbounds nuw [2 x i8], ptr %i.ny, i64 %i.abm ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 1
  %i.abp = load i8, ptr %i.abo, align 1, !tbaa !33
  %i.abq = load i8, ptr %i.abn, align 1, !tbaa !34
  %i.abr = zext i8 %i.abq to i32
  %i.abs = add i32 %i.aaa, %i.abr                 ; 3 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %.0150.i394.i, i64 4 ; 2 uses
  store i8 %i.abp, ptr %i.aab, align 1, !tbaa !16
  %i.abu = and i32 %i.aal, 63
  %i.abv = zext nneg i32 %i.abu to i64
  %i.abw = shl i64 %.val.i.i106381382.i, %i.abv
  %i.abx = lshr i64 %i.abw, %i.vf
  %i.aby = getelementptr inbounds nuw [2 x i8], ptr %i.ny, i64 %i.abx ; 2 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 1
  %i.aca = load i8, ptr %i.abz, align 1, !tbaa !33
  %i.acb = load i8, ptr %i.aby, align 1, !tbaa !34
  %i.acc = zext i8 %i.acb to i32
  %i.acd = add i32 %i.aal, %i.acc                 ; 3 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %.0146.i395.i, i64 4 ; 3 uses
  store i8 %i.aca, ptr %i.aam, align 1, !tbaa !16
  %i.acf = icmp ult ptr %.sroa.69266.5385.i, %i.ov ; 2 uses
  br i1 %i.acf, label %BIT_reloadDStreamFast.exit.i, label %bb.bg, !prof !48

bb.bg:                                            ; preds = %bb.bf
  %i.acg = lshr i32 %i.aaw, 3
  %i.ach = zext nneg i32 %i.acg to i64
  %i.aci = sub nsw i64 0, %i.ach
  %i.acj = getelementptr inbounds i8, ptr %.sroa.69266.5385.i, i64 %i.aci ; 2 uses
  %i.ack = and i32 %i.aaw, 7
  %.val.i.i.i = load i64, ptr %i.acj, align 1, !tbaa !22
  br label %BIT_reloadDStreamFast.exit.i

BIT_reloadDStreamFast.exit.i:                     ; preds = %bb.bg, %bb.bf
  %.sroa.0247.8.i = phi i64 [ %.sroa.0247.5383.i, %bb.bf ], [ %.val.i.i.i, %bb.bg ] ; 2 uses
  %.sroa.25248.8.i = phi i32 [ %i.aaw, %bb.bf ], [ %i.ack, %bb.bg ] ; 2 uses
  %.sroa.69266.7.i = phi ptr [ %.sroa.69266.5385.i, %bb.bf ], [ %i.acj, %bb.bg ] ; 2 uses
  %i.acl = icmp ult ptr %.sroa.69200.5388.i, %i.qx
  br i1 %i.acl, label %BIT_reloadDStreamFast.exit102.i, label %bb.bh, !prof !48

bb.bh:                                            ; preds = %BIT_reloadDStreamFast.exit.i
  %i.acm = lshr i32 %i.abh, 3
  %i.acn = zext nneg i32 %i.acm to i64
  %i.aco = sub nsw i64 0, %i.acn
  %i.acp = getelementptr inbounds i8, ptr %.sroa.69200.5388.i, i64 %i.aco ; 2 uses
  %i.acq = and i32 %i.abh, 7
  %.val.i.i100.i = load i64, ptr %i.acp, align 1, !tbaa !22
  br label %BIT_reloadDStreamFast.exit102.i

BIT_reloadDStreamFast.exit102.i:                  ; preds = %bb.bh, %BIT_reloadDStreamFast.exit.i
  %.sroa.0181.8.i = phi i64 [ %.sroa.0181.5386.i, %BIT_reloadDStreamFast.exit.i ], [ %.val.i.i100.i, %bb.bh ] ; 2 uses
  %.sroa.25182.8.i = phi i32 [ %i.abh, %BIT_reloadDStreamFast.exit.i ], [ %i.acq, %bb.bh ] ; 2 uses
  %.sroa.69200.7.i = phi ptr [ %.sroa.69200.5388.i, %BIT_reloadDStreamFast.exit.i ], [ %i.acp, %bb.bh ] ; 2 uses
  %.0.i101.i = phi i1 [ true, %BIT_reloadDStreamFast.exit.i ], [ %i.acf, %bb.bh ]
  %i.acr = icmp ult ptr %.sroa.69136.5391.i, %i.sz
  br i1 %i.acr, label %BIT_reloadDStreamFast.exit105.i, label %bb.bi, !prof !48

bb.bi:                                            ; preds = %BIT_reloadDStreamFast.exit102.i
  %i.acs = lshr i32 %i.abs, 3
  %i.act = zext nneg i32 %i.acs to i64
  %i.acu = sub nsw i64 0, %i.act
  %i.acv = getelementptr inbounds i8, ptr %.sroa.69136.5391.i, i64 %i.acu ; 2 uses
  %i.acw = and i32 %i.abs, 7
  %.val.i.i103.i = load i64, ptr %i.acv, align 1, !tbaa !22
  br label %BIT_reloadDStreamFast.exit105.i

BIT_reloadDStreamFast.exit105.i:                  ; preds = %bb.bi, %BIT_reloadDStreamFast.exit102.i
  %.sroa.0.8.i = phi i64 [ %.sroa.0.5389.i, %BIT_reloadDStreamFast.exit102.i ], [ %.val.i.i103.i, %bb.bi ] ; 2 uses
  %.sroa.25.8.i = phi i32 [ %i.abs, %BIT_reloadDStreamFast.exit102.i ], [ %i.acw, %bb.bi ] ; 2 uses
  %.sroa.69136.7.i = phi ptr [ %.sroa.69136.5391.i, %BIT_reloadDStreamFast.exit102.i ], [ %i.acv, %bb.bi ] ; 2 uses
  %.0.i104.i = phi i1 [ true, %BIT_reloadDStreamFast.exit102.i ], [ %.0.i101.i, %bb.bi ]
  %i.acx = icmp ult ptr %i.vk, %i.vj
  br i1 %i.acx, label %..loopexit_crit_edge.i, label %BIT_reloadDStreamFast.exit108.i, !prof !48

BIT_reloadDStreamFast.exit108.i:                  ; preds = %BIT_reloadDStreamFast.exit105.i
  %i.acy = lshr i32 %i.acd, 3
  %i.acz = zext nneg i32 %i.acy to i64
  %i.ada = sub nsw i64 0, %i.acz
  %i.adb = getelementptr inbounds i8, ptr %i.vk, i64 %i.ada ; 3 uses
  store ptr %i.adb, ptr %i.vh, align 8, !tbaa !47
  %i.adc = and i32 %i.acd, 7                      ; 2 uses
  %.val.i.i106.i = load i64, ptr %i.adb, align 1, !tbaa !22 ; 2 uses
  store i64 %.val.i.i106.i, ptr %6, align 8, !tbaa !49
  %i.add = icmp uge ptr %i.ace, %i.nx
  %.not177.i.i = or i1 %i.add, %.0.i104.i
  br i1 %.not177.i.i, label %..loopexit_crit_edge.i, label %bb.bf, !llvm.loop !140

..loopexit_crit_edge.i:                           ; preds = %BIT_reloadDStreamFast.exit108.i, %BIT_reloadDStreamFast.exit105.i
  %.val37409550.i = phi i32 [ %i.adc, %BIT_reloadDStreamFast.exit108.i ], [ %i.acd, %BIT_reloadDStreamFast.exit105.i ]
  store i32 %.val37409550.i, ptr %i.vg, align 8, !tbaa !46
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %..loopexit_crit_edge.i, %bb.be
  %.sroa.0247.0.i = phi i64 [ %.sroa.0247.7.i, %bb.be ], [ %.sroa.0247.8.i, %..loopexit_crit_edge.i ] ; 4 uses
  %.sroa.25248.0.i = phi i32 [ %.sroa.25248.7.i, %bb.be ], [ %.sroa.25248.8.i, %..loopexit_crit_edge.i ] ; 9 uses
  %.sroa.69266.0.i = phi ptr [ %.sroa.69266.6.i, %bb.be ], [ %.sroa.69266.7.i, %..loopexit_crit_edge.i ] ; 7 uses
  %.sroa.0181.0.i = phi i64 [ %.sroa.0181.7.i, %bb.be ], [ %.sroa.0181.8.i, %..loopexit_crit_edge.i ] ; 4 uses
  %.sroa.25182.0.i = phi i32 [ %.sroa.25182.7.i, %bb.be ], [ %.sroa.25182.8.i, %..loopexit_crit_edge.i ] ; 9 uses
  %.sroa.69200.0.i = phi ptr [ %.sroa.69200.6.i, %bb.be ], [ %.sroa.69200.7.i, %..loopexit_crit_edge.i ] ; 7 uses
  %.sroa.0.0.i = phi i64 [ %.sroa.0.7.i, %bb.be ], [ %.sroa.0.8.i, %..loopexit_crit_edge.i ] ; 4 uses
  %.sroa.25.0.i = phi i32 [ %.sroa.25.7.i, %bb.be ], [ %.sroa.25.8.i, %..loopexit_crit_edge.i ] ; 9 uses
  %.sroa.69136.0.i = phi ptr [ %.sroa.69136.6.i, %bb.be ], [ %.sroa.69136.7.i, %..loopexit_crit_edge.i ] ; 7 uses
  %.3161.i.i = phi ptr [ %0, %bb.be ], [ %i.aax, %..loopexit_crit_edge.i ] ; 8 uses
  %.3157.i.i = phi ptr [ %i.oo, %bb.be ], [ %i.abi, %..loopexit_crit_edge.i ] ; 8 uses
  %.3153.i.i = phi ptr [ %i.op, %bb.be ], [ %i.abt, %..loopexit_crit_edge.i ] ; 8 uses
  %.3149.i.i = phi ptr [ %i.oq, %bb.be ], [ %i.ace, %..loopexit_crit_edge.i ] ; 7 uses
  %i.ade = icmp ugt ptr %.3161.i.i, %i.oo
  %i.adf = icmp ugt ptr %.3157.i.i, %i.op
  %or.cond182.i.i = select i1 %i.ade, i1 true, i1 %i.adf
  %i.adg = icmp ugt ptr %.3153.i.i, %i.oq
  %or.cond183.i.i = select i1 %or.cond182.i.i, i1 true, i1 %i.adg
  br i1 %or.cond183.i.i, label %BIT_initDStream.exit.thread.i, label %bb.bj

bb.bj:                                            ; preds = %.loopexit.i
  %i.adh = ptrtoint ptr %i.oo to i64
  %i.adi = ptrtoint ptr %.3161.i.i to i64
  %i.adj = sub i64 %i.adh, %i.adi
  %i.adk = icmp sgt i64 %i.adj, 3
  %i.adl = icmp ugt i32 %.sroa.25248.0.i, 64      ; 2 uses
  br i1 %i.adk, label %.preheader377.i, label %bb.bp

.preheader377.i:                                  ; preds = %bb.bj
  br i1 %i.adl, label %BIT_reloadDStream.exit.i221.i.i, label %.lr.ph416.i, !prof !28

.lr.ph416.i:                                      ; preds = %.preheader377.i
  %i.adm = ptrtoint ptr %i.oi to i64
  %i.adn = getelementptr inbounds i8, ptr %i.oo, i64 -3
  %i.ado = sub nsw i32 0, %.sroa.3.0.extract.shift.i.i
  %i.adp = and i32 %i.ado, 63
  %i.adq = zext nneg i32 %i.adp to i64            ; 4 uses
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bo, %.lr.ph416.i
  %.0.i229.i415.i = phi ptr [ %.3161.i.i, %.lr.ph416.i ], [ %i.afx, %bb.bo ] ; 8 uses
  %.sroa.69266.3414.i = phi ptr [ %.sroa.69266.0.i, %.lr.ph416.i ], [ %.sroa.69266.4.i, %bb.bo ] ; 5 uses
  %.sroa.25248.4413.i = phi i32 [ %.sroa.25248.0.i, %.lr.ph416.i ], [ %i.afw, %bb.bo ] ; 5 uses
  %.sroa.0247.3412.i = phi i64 [ %.sroa.0247.0.i, %.lr.ph416.i ], [ %.sroa.0247.4.i, %bb.bo ]
  %.not.i37.i230.i.i = icmp ult ptr %.sroa.69266.3414.i, %i.ov
  br i1 %.not.i37.i230.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.adr = lshr i32 %.sroa.25248.4413.i, 3
  %i.ads = and i32 %.sroa.25248.4413.i, 7
  br label %BIT_reloadDStream.exit43.i231.i.i

bb.bm:                                            ; preds = %bb.bk
  %i.adt = icmp eq ptr %.sroa.69266.3414.i, %i.oi
  br i1 %i.adt, label %BIT_reloadDStream.exit.i221.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.adu = lshr i32 %.sroa.25248.4413.i, 3        ; 2 uses
  %i.adv = zext nneg i32 %i.adu to i64
  %i.adw = sub nsw i64 0, %i.adv
  %i.adx = getelementptr inbounds i8, ptr %.sroa.69266.3414.i, i64 %i.adw
  %i.ady = icmp uge ptr %i.adx, %i.oi             ; 2 uses
  %i.adz = ptrtoint ptr %.sroa.69266.3414.i to i64
  %i.aea = sub i64 %i.adz, %i.adm
  %i.aeb = trunc i64 %i.aea to i32
  %.021.i39.i233.i.i = select i1 %i.ady, i32 %i.adu, i32 %i.aeb ; 2 uses
  %i.aec = shl i32 %.021.i39.i233.i.i, 3
  %i.aed = sub i32 %.sroa.25248.4413.i, %i.aec
  br label %BIT_reloadDStream.exit43.i231.i.i

BIT_reloadDStream.exit43.i231.i.i:                ; preds = %bb.bn, %bb.bl
  %.sroa.25248.5.i = phi i32 [ %i.ads, %bb.bl ], [ %i.aed, %bb.bn ] ; 3 uses
  %.pn349.in.i = phi i32 [ %i.adr, %bb.bl ], [ %.021.i39.i233.i.i, %bb.bn ]
  %.022.i38.i232.i.i = phi i1 [ true, %bb.bl ], [ %i.ady, %bb.bn ]
  %.pn349.i = zext i32 %.pn349.in.i to i64
  %.pn.i24 = sub nsw i64 0, %.pn349.i
  %.sroa.69266.4.i = getelementptr inbounds i8, ptr %.sroa.69266.3414.i, i64 %.pn.i24 ; 3 uses
  %.sroa.0247.4.i = load i64, ptr %.sroa.69266.4.i, align 1, !tbaa !22 ; 7 uses
  %i.aee = icmp ult ptr %.0.i229.i415.i, %i.adn
  %i.aef = and i1 %i.aee, %.022.i38.i232.i.i
  br i1 %i.aef, label %bb.bo, label %BIT_reloadDStream.exit.i221.i.i

bb.bo:                                            ; preds = %BIT_reloadDStream.exit43.i231.i.i
  %i.aeg = and i32 %.sroa.25248.5.i, 63
  %i.aeh = zext nneg i32 %i.aeg to i64
  %i.aei = shl i64 %.sroa.0247.4.i, %i.aeh
  %i.aej = lshr i64 %i.aei, %i.adq
  %i.aek = getelementptr inbounds nuw [2 x i8], ptr %i.ny, i64 %i.aej ; 2 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 1
  %i.aem = load i8, ptr %i.ael, align 1, !tbaa !33
  %i.aen = load i8, ptr %i.aek, align 1, !tbaa !34
  %i.aeo = zext i8 %i.aen to i32
  %i.aep = add i32 %.sroa.25248.5.i, %i.aeo       ; 2 uses
  store i8 %i.aem, ptr %.0.i229.i415.i, align 1, !tbaa !16
  %i.aeq = getelementptr inbounds nuw i8, ptr %.0.i229.i415.i, i64 1
  %i.aer = and i32 %i.aep, 63
  %i.aes = zext nneg i32 %i.aer to i64
  %i.aet = shl i64 %.sroa.0247.4.i, %i.aes
  %i.aeu = lshr i64 %i.aet, %i.adq
  %i.aev = getelementptr inbounds nuw [2 x i8], ptr %i.ny, i64 %i.aeu ; 2 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 1
  %i.aex = load i8, ptr %i.aew, align 1, !tbaa !33
  %i.aey = load i8, ptr %i.aev, align 1, !tbaa !34
  %i.aez = zext i8 %i.aey to i32
  %i.afa = add i32 %i.aep, %i.aez                 ; 2 uses
  store i8 %i.aex, ptr %i.aeq, align 1, !tbaa !16
  %i.afb = getelementptr inbounds nuw i8, ptr %.0.i229.i415.i, i64 2
  %i.afc = and i32 %i.afa, 63
  %i.afd = zext nneg i32 %i.afc to i64
  %i.afe = shl i64 %.sroa.0247.4.i, %i.afd
  %i.aff = lshr i64 %i.afe, %i.adq
  %i.afg = getelementptr inbounds nuw [2 x i8], ptr %i.ny, i64 %i.aff ; 2 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 1
  %i.afi = load i8, ptr %i.afh, align 1, !tbaa !33
  %i.afj = load i8, ptr %i.afg, align 1, !tbaa !34
  %i.afk = zext i8 %i.afj to i32
  %i.afl = add i32 %i.afa, %i.afk                 ; 2 uses
  store i8 %i.afi, ptr %i.afb, align 1, !tbaa !16
  %i.afm = getelementptr inbounds nuw i8, ptr %.0.i229.i415.i, i64 3
  %i.afn = and i32 %i.afl, 63
  %i.afo = zext nneg i32 %i.afn to i64
  %i.afp = shl i64 %.sroa.0247.4.i, %i.afo
  %i.afq = lshr i64 %i.afp, %i.adq
  %i.afr = getelementptr inbounds nuw [2 x i8], ptr %i.ny, i64 %i.afq ; 2 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 1
  %i.aft = load i8, ptr %i.afs, align 1, !tbaa !33
  %i.afu = load i8, ptr %i.afr, align 1, !tbaa !34
  %i.afv = zext i8 %i.afu to i32
  %i.afw = add i32 %i.afl, %i.afv                 ; 3 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %.0.i229.i415.i, i64 4 ; 2 uses
  store i8 %i.aft, ptr %i.afm, align 1, !tbaa !16
  %i.afy = icmp ugt i32 %i.afw, 64
  br i1 %i.afy, label %BIT_reloadDStream.exit.i221.i.i, label %bb.bk, !prof !27, !llvm.loop !4

bb.bp:                                            ; preds = %bb.bj
  br i1 %i.adl, label %BIT_reloadDStream.exit.i221.i.i, label %bb.bq, !prof !48

bb.bq:                                            ; preds = %bb.bp
  %.not.i.i220.i.i = icmp ult ptr %.sroa.69266.0.i, %i.ov
  br i1 %.not.i.i220.i.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.afz = lshr i32 %.sroa.25248.0.i, 3
  %i.aga = zext nneg i32 %i.afz to i64
  %i.agb = sub nsw i64 0, %i.aga
  %i.agc = getelementptr inbounds i8, ptr %.sroa.69266.0.i, i64 %i.agb ; 2 uses
  %i.agd = and i32 %.sroa.25248.0.i, 7
  %.val.i110.i = load i64, ptr %i.agc, align 1, !tbaa !22
  br label %BIT_reloadDStream.exit.i221.i.i

bb.bs:                                            ; preds = %bb.bq
  %i.age = icmp eq ptr %.sroa.69266.0.i, %i.oi
  br i1 %i.age, label %BIT_reloadDStream.exit.i221.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.agf = lshr i32 %.sroa.25248.0.i, 3           ; 2 uses
  %i.agg = zext nneg i32 %i.agf to i64
  %i.agh = sub nsw i64 0, %i.agg
  %i.agi = getelementptr inbounds i8, ptr %.sroa.69266.0.i, i64 %i.agh
  %i.agj = icmp ult ptr %i.agi, %i.oi
  %i.agk = ptrtoint ptr %.sroa.69266.0.i to i64
  %i.agl = ptrtoint ptr %i.oi to i64
  %i.agm = sub i64 %i.agk, %i.agl
  %i.agn = trunc i64 %i.agm to i32
  %.021.i.i225.i.i = select i1 %i.agj, i32 %i.agn, i32 %i.agf ; 2 uses
  %i.ago = zext i32 %.021.i.i225.i.i to i64
  %i.agp = sub nsw i64 0, %i.ago
  %i.agq = getelementptr inbounds i8, ptr %.sroa.69266.0.i, i64 %i.agp ; 2 uses
  %i.agr = shl i32 %.021.i.i225.i.i, 3
  %i.ags = sub i32 %.sroa.25248.0.i, %i.agr
  %.val5.i = load i64, ptr %i.agq, align 1, !tbaa !22
  br label %BIT_reloadDStream.exit.i221.i.i

BIT_reloadDStream.exit.i221.i.i:                  ; preds = %bb.bo, %BIT_reloadDStream.exit43.i231.i.i, %bb.bm, %bb.bt, %bb.bs, %bb.br, %bb.bp, %.preheader377.i
  %.sroa.0247.2.i = phi i64 [ %.val5.i, %bb.bt ], [ %.sroa.0247.0.i, %bb.bp ], [ %.val.i110.i, %bb.br ], [ %.sroa.0247.0.i, %bb.bs ], [ %.sroa.0247.0.i, %.preheader377.i ], [ %.sroa.0247.3412.i, %bb.bm ], [ %.sroa.0247.4.i, %bb.bo ], [ %.sroa.0247.4.i, %BIT_reloadDStream.exit43.i231.i.i ] ; 3 uses
  %.sroa.25248.2.i = phi i32 [ %i.ags, %bb.bt ], [ %.sroa.25248.0.i, %bb.bp ], [ %i.agd, %bb.br ], [ %.sroa.25248.0.i, %bb.bs ], [ %.sroa.25248.0.i, %.preheader377.i ], [ %.sroa.25248.4413.i, %bb.bm ], [ %i.afw, %bb.bo ], [ %.sroa.25248.5.i, %BIT_reloadDStream.exit43.i231.i.i ] ; 4 uses
  %.sroa.69266.2.i = phi ptr [ %i.agq, %bb.bt ], [ @BIT_reloadDStream.zeroFilled, %bb.bp ], [ %i.agc, %bb.br ], [ %i.oi, %bb.bs ], [ @BIT_reloadDStream.zeroFilled, %.preheader377.i ], [ %i.oi, %bb.bm ], [ @BIT_reloadDStream.zeroFilled, %bb.bo ], [ %.sroa.69266.4.i, %BIT_reloadDStream.exit43.i231.i.i ]
  %.3.i223.i.i = phi ptr [ %.3161.i.i, %bb.bt ], [ %.3161.i.i, %bb.bp ], [ %.3161.i.i, %bb.br ], [ %.3161.i.i, %bb.bs ], [ %.3161.i.i, %.preheader377.i ], [ %.0.i229.i415.i, %bb.bm ], [ %i.afx, %bb.bo ], [ %.0.i229.i415.i, %BIT_reloadDStream.exit43.i231.i.i ] ; 6 uses
  %i.agt = icmp ult ptr %.3.i223.i.i, %i.oo
  br i1 %i.agt, label %.lr.ph432.i, label %HUF_decodeStreamX1.exit237.i.i

.lr.ph432.i:                                      ; preds = %BIT_reloadDStream.exit.i221.i.i
  %.3.i223.i494.i = ptrtoaddr ptr %.3.i223.i.i to i64 ; 2 uses
  %i.agu = sub nsw i32 0, %.sroa.3.0.extract.shift.i.i
  %i.agv = and i32 %i.agu, 63
  %i.agw = zext nneg i32 %i.agv to i64            ; 3 uses
  %i.agx = add i64 %i.on, %i.nt
  %i.agy = sub i64 %i.agx, %.3.i223.i494.i        ; 2 uses
  %scevgep.i = getelementptr i8, ptr %.3.i223.i.i, i64 %i.agy
  %i.agz = add i64 %i.on, %i.nt
  %.neg = add i64 %.3.i223.i494.i, 1
  %xtraiter201 = and i64 %i.agy, 1
  %lcmp.mod202.not = icmp eq i64 %xtraiter201, 0
  br i1 %lcmp.mod202.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph432.i
  %i.aha = and i32 %.sroa.25248.2.i, 63
  %i.ahb = zext nneg i32 %i.aha to i64
  %i.ahc = shl i64 %.sroa.0247.2.i, %i.ahb
  %i.ahd = lshr i64 %i.ahc, %i.agw
  %i.ahe = getelementptr inbounds nuw [2 x i8], ptr %i.ny, i64 %i.ahd ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahe, i64 1
  %i.ahg = load i8, ptr %i.ahf, align 1, !tbaa !33
  %i.ahh = load i8, ptr %i.ahe, align 1, !tbaa !34
  %i.ahi = zext i8 %i.ahh to i32
  %i.ahj = add i32 %.sroa.25248.2.i, %i.ahi       ; 2 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %.3.i223.i.i, i64 1
  store i8 %i.ahg, ptr %.3.i223.i.i, align 1, !tbaa !16
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph432.i
  %.lcssa183.unr = phi i32 [ poison, %.lr.ph432.i ], [ %i.ahj, %.prol.loopexit.unr-lcssa ]
  %.6.i224.i431.i.unr = phi ptr [ %.3.i223.i.i, %.lr.ph432.i ], [ %i.ahk, %.prol.loopexit.unr-lcssa ]
end_hunk_1
