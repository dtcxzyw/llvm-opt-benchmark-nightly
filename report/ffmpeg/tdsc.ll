Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/tdsc?download=true
inline.NumInlined: 7
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@tdsc_decode_frame:bb.a
  store i8 %i.sy, ptr %i.sw, align 1, !tbaa !75
  %i.sz = getelementptr inbounds nuw i8, ptr %.1193.i.i, i64 100
  %i.ta = lshr i8 %i.sx, 6
  %i.tb = and i8 %i.ta, 1
  store i8 %i.tb, ptr %i.sz, align 1, !tbaa !75
  %i.tc = getelementptr inbounds nuw i8, ptr %.1193.i.i, i64 104
  %i.td = lshr i8 %i.sx, 5
  %i.te = and i8 %i.td, 1
  store i8 %i.te, ptr %i.tc, align 1, !tbaa !75
  %i.tf = getelementptr inbounds nuw i8, ptr %.1193.i.i, i64 108
  %i.tg = lshr i8 %i.sx, 4
  %i.th = and i8 %i.tg, 1
  store i8 %i.th, ptr %i.tf, align 1, !tbaa !75
  %i.ti = getelementptr inbounds nuw i8, ptr %.1193.i.i, i64 112
  %i.tj = lshr i8 %i.sx, 3
  %i.tk = and i8 %i.tj, 1
  store i8 %i.tk, ptr %i.ti, align 1, !tbaa !75
  %i.tl = getelementptr inbounds nuw i8, ptr %.1193.i.i, i64 116
  %i.tm = lshr i8 %i.sx, 2
  %i.tn = and i8 %i.tm, 1
  store i8 %i.tn, ptr %i.tl, align 1, !tbaa !75
  %i.to = getelementptr inbounds nuw i8, ptr %.1193.i.i, i64 120
  %i.tp = lshr i8 %i.sx, 1
  %i.tq = and i8 %i.tp, 1
  store i8 %i.tq, ptr %i.to, align 1, !tbaa !75
  %i.tr = getelementptr inbounds nuw i8, ptr %.1193.i.i, i64 124
  %i.ts = and i8 %i.sx, 1
  store i8 %i.ts, ptr %i.tr, align 1, !tbaa !75
  %i.tt = getelementptr inbounds nuw i8, ptr %.1193.i.i, i64 128 ; 2 uses
  %i.tu = add nuw nsw i32 %.0135192.i.i, 32       ; 2 uses
  %i.tv = load i32, ptr %i.nk, align 4, !tbaa !85 ; 2 uses
  %i.tw = icmp slt i32 %i.tu, %i.tv
  br i1 %i.tw, label %.lr.ph194.i.i, label %._crit_edge195.loopexit.i.i, !llvm.loop !53

._crit_edge195.loopexit.i.i:                      ; preds = %bytestream2_get_be32.exit164.i.i
  %.pre224.i.i = load i32, ptr %i.nr, align 8, !tbaa !86
  br label %._crit_edge195.i.i

._crit_edge195.i.i:                               ; preds = %._crit_edge195.loopexit.i.i, %.preheader167.i.i
  %i.tx = phi i32 [ %i.ov, %.preheader167.i.i ], [ %.pre224.i.i, %._crit_edge195.loopexit.i.i ] ; 4 uses
  %.pr.i.i = phi i32 [ %i.ow, %.preheader167.i.i ], [ %i.tv, %._crit_edge195.loopexit.i.i ] ; 3 uses
  %.1.lcssa.i.i = phi ptr [ %.0128198.i.i, %.preheader167.i.i ], [ %i.tt, %._crit_edge195.loopexit.i.i ]
  %i.ty = add nuw nsw i32 %.0131197.i.i, 1        ; 2 uses
  %i.tz = icmp slt i32 %i.ty, %i.tx
  br i1 %i.tz, label %.preheader167.i.i, label %._crit_edge199.i.i, !llvm.loop !54

._crit_edge199.i.i:                               ; preds = %._crit_edge195.i.i
  %i.ua = icmp sgt i32 %i.tx, 0
  %i.ub = icmp sgt i32 %.pr.i.i, 0
  %or.cond90.i = and i1 %i.ua, %i.ub
  br i1 %or.cond90.i, label %.preheader.preheader.i.i, label %.thread134

.preheader.preheader.i.i:                         ; preds = %._crit_edge199.i.i
  %i.uc = load ptr, ptr %i.ol, align 8, !tbaa !88
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge206.i.i, %.preheader.preheader.i.i
  %i.ud = phi i32 [ %i.vd, %._crit_edge206.i.i ], [ %i.tx, %.preheader.preheader.i.i ]
  %i.ue = phi i32 [ %i.ve, %._crit_edge206.i.i ], [ %.pr.i.i, %.preheader.preheader.i.i ] ; 2 uses
  %.3209.i.i = phi ptr [ %.4.lcssa.i.i, %._crit_edge206.i.i ], [ %i.uc, %.preheader.preheader.i.i ] ; 2 uses
  %.1132208.i.i = phi i32 [ %i.vf, %._crit_edge206.i.i ], [ 0, %.preheader.preheader.i.i ]
  %i.uf = icmp sgt i32 %i.ue, 0
  br i1 %i.uf, label %.lr.ph205.i.i, label %._crit_edge206.i.i

.lr.ph205.i.i:                                    ; preds = %.preheader.i.i, %bb.cj
  %.4204.i.i = phi ptr [ %i.ux, %bb.cj ], [ %.3209.i.i, %.preheader.i.i ]
  %.1136203.i.i = phi i32 [ %i.va, %bb.cj ], [ 0, %.preheader.i.i ]
  %i.ug = load ptr, ptr %i.lp, align 8, !tbaa !73 ; 2 uses
  %i.uh = load ptr, ptr %i.lo, align 8, !tbaa !71 ; 3 uses
  %i.ui = ptrtoint ptr %i.ug to i64
  %i.uj = ptrtoint ptr %i.uh to i64
  %i.uk = sub i64 %i.ui, %i.uj
  %i.ul = icmp slt i64 %i.uk, 4
  br i1 %i.ul, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %.lr.ph205.i.i
  store ptr %i.ug, ptr %i.lo, align 8, !tbaa !71
  br label %bytestream2_get_be32.exit162.i.i.preheader

bb.cb:                                            ; preds = %.lr.ph205.i.i
  %i.um = getelementptr inbounds nuw i8, ptr %i.uh, i64 4
  store ptr %i.um, ptr %i.lo, align 8, !tbaa !74
  %i.un = load i32, ptr %i.uh, align 1, !tbaa !75
  %i.uo = call i32 @llvm.bswap.i32(i32 %i.un)
  br label %bytestream2_get_be32.exit162.i.i.preheader

bytestream2_get_be32.exit162.i.i.preheader:       ; preds = %bb.cb, %bb.ca
  %.0126202.i.i.ph = phi i32 [ %i.uo, %bb.cb ], [ 0, %bb.ca ]
  br label %bytestream2_get_be32.exit162.i.i

bytestream2_get_be32.exit162.i.i:                 ; preds = %bb.ci, %bytestream2_get_be32.exit162.i.i.preheader
  %.0126202.i.i = phi i32 [ %.0126202.i.i.ph, %bytestream2_get_be32.exit162.i.i.preheader ], [ %i.uy, %bb.ci ] ; 3 uses
  %.5201.i.i = phi ptr [ %.4204.i.i, %bytestream2_get_be32.exit162.i.i.preheader ], [ %i.ux, %bb.ci ] ; 6 uses
  %.1130200.i.i = phi i32 [ 0, %bytestream2_get_be32.exit162.i.i.preheader ], [ %i.uz, %bb.ci ]
  %i.up = load i8, ptr %.5201.i.i, align 1, !tbaa !75
  %i.uq = zext i8 %i.up to i32
  %i.ur = call i32 @llvm.fshl.i32(i32 %i.uq, i32 %.0126202.i.i, i32 1)
  switch i32 %i.ur, label %bb.ce [
    i32 0, label %bb.cc
    i32 1, label %bb.cd
  ]

bb.cc:                                            ; preds = %bytestream2_get_be32.exit162.i.i
  store <4 x i8> <i8 -1, i8 0, i8 0, i8 0>, ptr %.5201.i.i, align 1, !tbaa !75
  br label %bytestream2_get_be32.exit162.i.i.1

bb.cd:                                            ; preds = %bytestream2_get_be32.exit162.i.i
  store i32 -1, ptr %.5201.i.i, align 1
  br label %bytestream2_get_be32.exit162.i.i.1

bb.ce:                                            ; preds = %bytestream2_get_be32.exit162.i.i
  store i32 0, ptr %.5201.i.i, align 1
  br label %bytestream2_get_be32.exit162.i.i.1

bytestream2_get_be32.exit162.i.i.1:               ; preds = %bb.ce, %bb.cd, %bb.cc
  %i.us = getelementptr inbounds nuw i8, ptr %.5201.i.i, i64 4 ; 4 uses
  %i.ut = shl i32 %.0126202.i.i, 1
  %i.uu = load i8, ptr %i.us, align 1, !tbaa !75
  %i.uv = zext i8 %i.uu to i32
  %i.uw = call i32 @llvm.fshl.i32(i32 %i.uv, i32 %i.ut, i32 1)
  switch i32 %i.uw, label %bb.ch [
    i32 0, label %bb.cg
    i32 1, label %bb.cf
  ]

bb.cf:                                            ; preds = %bytestream2_get_be32.exit162.i.i.1
  store i32 -1, ptr %i.us, align 1
  br label %bb.ci

bb.cg:                                            ; preds = %bytestream2_get_be32.exit162.i.i.1
  store <4 x i8> <i8 -1, i8 0, i8 0, i8 0>, ptr %i.us, align 1, !tbaa !75
  br label %bb.ci

bb.ch:                                            ; preds = %bytestream2_get_be32.exit162.i.i.1
  store i32 0, ptr %i.us, align 1
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %bb.cf
  %i.ux = getelementptr inbounds nuw i8, ptr %.5201.i.i, i64 8 ; 3 uses
  %i.uy = shl i32 %.0126202.i.i, 2
  %i.uz = add nuw nsw i32 %.1130200.i.i, 2        ; 2 uses
  %exitcond.not.i.i111.1 = icmp eq i32 %i.uz, 32
  br i1 %exitcond.not.i.i111.1, label %bb.cj, label %bytestream2_get_be32.exit162.i.i, !llvm.loop !55

bb.cj:                                            ; preds = %bb.ci
  %i.va = add nuw nsw i32 %.1136203.i.i, 32       ; 2 uses
  %i.vb = load i32, ptr %i.nk, align 4, !tbaa !85 ; 2 uses
  %i.vc = icmp slt i32 %i.va, %i.vb
  br i1 %i.vc, label %.lr.ph205.i.i, label %._crit_edge206.loopexit.i.i, !llvm.loop !56

._crit_edge206.loopexit.i.i:                      ; preds = %bb.cj
  %.pre225.i.i = load i32, ptr %i.nr, align 8, !tbaa !86
  br label %._crit_edge206.i.i

._crit_edge206.i.i:                               ; preds = %._crit_edge206.loopexit.i.i, %.preheader.i.i
  %i.vd = phi i32 [ %i.ud, %.preheader.i.i ], [ %.pre225.i.i, %._crit_edge206.loopexit.i.i ] ; 2 uses
  %i.ve = phi i32 [ %i.ue, %.preheader.i.i ], [ %i.vb, %._crit_edge206.loopexit.i.i ]
  %.4.lcssa.i.i = phi ptr [ %.3209.i.i, %.preheader.i.i ], [ %i.ux, %._crit_edge206.loopexit.i.i ]
  %i.vf = add nuw nsw i32 %.1132208.i.i, 1        ; 2 uses
  %i.vg = icmp slt i32 %i.vf, %i.vd
  br i1 %i.vg, label %.preheader.i.i, label %.thread134, !llvm.loop !57

bb.ck:                                            ; preds = %bb.bx, %bb.bx
  %i.vh = load i32, ptr %i.nr, align 8, !tbaa !86 ; 4 uses
  %i.vi = load i32, ptr %i.nk, align 4, !tbaa !85 ; 4 uses
  %i.vj = add nsw i32 %i.vi, 31
  %i.vk = ashr i32 %i.vj, 3
  %i.vl = and i32 %i.vk, -4
  %i.vm = mul nsw i32 %i.vl, %i.vh
  %i.vn = load ptr, ptr %i.lp, align 8, !tbaa !73
  %i.vo = load ptr, ptr %i.lo, align 8, !tbaa !71 ; 2 uses
  %i.vp = ptrtoint ptr %i.vn to i64
  %i.vq = ptrtoint ptr %i.vo to i64
  %i.vr = sub i64 %i.vp, %i.vq
  %i.vs = zext i32 %i.vm to i64
  %..i.i.i109 = call i64 @llvm.smin.i64(i64 %i.vr, i64 %i.vs)
  %i.vt = getelementptr inbounds i8, ptr %i.vo, i64 %..i.i.i109
  store ptr %i.vt, ptr %i.lo, align 8, !tbaa !71
  %i.vu = and i32 %.0.i.i.i107, 8
  %.not149.i.i = icmp eq i32 %i.vu, 0
  %i.vv = icmp sgt i32 %i.vh, 0
  %i.vw = icmp sgt i32 %i.vi, 0
  %or.cond276.i.i = select i1 %i.vv, i1 %i.vw, i1 false ; 2 uses
  br i1 %.not149.i.i, label %.preheader170.i.i, label %.preheader173.i.i

.preheader173.i.i:                                ; preds = %bb.ck
  br i1 %or.cond276.i.i, label %.preheader172.i.i, label %.thread134

.preheader170.i.i:                                ; preds = %bb.ck
  br i1 %or.cond276.i.i, label %.preheader169.i.i, label %.thread134

.preheader172.i.i:                                ; preds = %.preheader173.i.i, %._crit_edge.i.i
  %i.vx = phi i32 [ %i.wl, %._crit_edge.i.i ], [ %i.vh, %.preheader173.i.i ]
  %i.vy = phi i32 [ %i.wm, %._crit_edge.i.i ], [ %i.vi, %.preheader173.i.i ] ; 2 uses
  %.6180.i.i = phi ptr [ %i.wr, %._crit_edge.i.i ], [ %i.oq, %.preheader173.i.i ] ; 2 uses
  %.2133179.i.i = phi i32 [ %i.ws, %._crit_edge.i.i ], [ 0, %.preheader173.i.i ]
  %i.vz = icmp sgt i32 %i.vy, 0
  br i1 %i.vz, label %.lr.ph.i.i110, label %._crit_edge.i.i

.lr.ph.i.i110:                                    ; preds = %.preheader172.i.i, %bytestream2_get_be32.exit160.i.i
  %.7177.i.i = phi ptr [ %i.wh, %bytestream2_get_be32.exit160.i.i ], [ %.6180.i.i, %.preheader172.i.i ] ; 2 uses
  %.2137176.i.i = phi i32 [ %i.wi, %bytestream2_get_be32.exit160.i.i ], [ 0, %.preheader172.i.i ]
  %i.wa = load ptr, ptr %i.lp, align 8, !tbaa !73 ; 2 uses
  %i.wb = load ptr, ptr %i.lo, align 8, !tbaa !71 ; 3 uses
  %i.wc = ptrtoint ptr %i.wa to i64
  %i.wd = ptrtoint ptr %i.wb to i64
  %i.we = sub i64 %i.wc, %i.wd
  %i.wf = icmp slt i64 %i.we, 4
  br i1 %i.wf, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %.lr.ph.i.i110
  store ptr %i.wa, ptr %i.lo, align 8, !tbaa !71
  br label %bytestream2_get_be32.exit160.i.i

bb.cm:                                            ; preds = %.lr.ph.i.i110
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wb, i64 4
  store ptr %i.wg, ptr %i.lo, align 8, !tbaa !74
  %4 = load <4 x i8>, ptr %i.wb, align 1, !tbaa !75
  br label %bytestream2_get_be32.exit160.i.i

bytestream2_get_be32.exit160.i.i:                 ; preds = %bb.cm, %bb.cl
  %.0.i159.i.i = phi <4 x i8> [ zeroinitializer, %bb.cl ], [ %4, %bb.cm ]
  %i.wh = getelementptr inbounds nuw i8, ptr %.7177.i.i, i64 4 ; 2 uses
  store <4 x i8> %.0.i159.i.i, ptr %.7177.i.i, align 1, !tbaa !75
  %i.wi = add nuw nsw i32 %.2137176.i.i, 1        ; 2 uses
  %i.wj = load i32, ptr %i.nk, align 4, !tbaa !85 ; 2 uses
  %i.wk = icmp slt i32 %i.wi, %i.wj
  br i1 %i.wk, label %.lr.ph.i.i110, label %._crit_edge.loopexit.i.i, !llvm.loop !58

._crit_edge.loopexit.i.i:                         ; preds = %bytestream2_get_be32.exit160.i.i
  %.pre222.i.i = load i32, ptr %i.nr, align 8, !tbaa !86
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %.preheader172.i.i
  %i.wl = phi i32 [ %i.vx, %.preheader172.i.i ], [ %.pre222.i.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.wm = phi i32 [ %i.vy, %.preheader172.i.i ], [ %i.wj, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.7.lcssa.i.i = phi ptr [ %.6180.i.i, %.preheader172.i.i ], [ %i.wh, %._crit_edge.loopexit.i.i ]
  %i.wn = load i32, ptr %i.nv, align 8, !tbaa !87
  %i.wo = shl nsw i32 %i.wm, 2
  %i.wp = sub nsw i32 %i.wn, %i.wo
  %i.wq = sext i32 %i.wp to i64
  %i.wr = getelementptr inbounds i8, ptr %.7.lcssa.i.i, i64 %i.wq
  %i.ws = add nuw nsw i32 %.2133179.i.i, 1        ; 2 uses
  %i.wt = icmp slt i32 %i.ws, %i.wl
  br i1 %i.wt, label %.preheader172.i.i, label %.thread134, !llvm.loop !59

.preheader169.i.i:                                ; preds = %.preheader170.i.i, %._crit_edge184.i.i
  %i.wu = phi i32 [ %i.xu, %._crit_edge184.i.i ], [ %i.vh, %.preheader170.i.i ]
  %i.wv = phi i32 [ %i.xv, %._crit_edge184.i.i ], [ %i.vi, %.preheader170.i.i ] ; 2 uses
  %.8188.i.i = phi ptr [ %i.ya, %._crit_edge184.i.i ], [ %i.oq, %.preheader170.i.i ] ; 2 uses
  %.3134187.i.i = phi i32 [ %i.yb, %._crit_edge184.i.i ], [ 0, %.preheader170.i.i ]
  %i.ww = icmp sgt i32 %i.wv, 0
  br i1 %i.ww, label %.lr.ph183.i.i, label %._crit_edge184.i.i

.lr.ph183.i.i:                                    ; preds = %.preheader169.i.i, %bytestream2_get_be32.exit.i.i
  %.9182.i.i = phi ptr [ %i.xq, %bytestream2_get_be32.exit.i.i ], [ %.8188.i.i, %.preheader169.i.i ] ; 5 uses
  %.3138181.i.i = phi i32 [ %i.xr, %bytestream2_get_be32.exit.i.i ], [ 0, %.preheader169.i.i ]
  %i.wx = load ptr, ptr %i.lp, align 8, !tbaa !73 ; 2 uses
  %i.wy = load ptr, ptr %i.lo, align 8, !tbaa !71 ; 3 uses
  %i.wz = ptrtoint ptr %i.wx to i64
  %i.xa = ptrtoint ptr %i.wy to i64
  %i.xb = sub i64 %i.wz, %i.xa
  %i.xc = icmp slt i64 %i.xb, 4
  br i1 %i.xc, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %.lr.ph183.i.i
  store ptr %i.wx, ptr %i.lo, align 8, !tbaa !71
  br label %bytestream2_get_be32.exit.i.i

bb.co:                                            ; preds = %.lr.ph183.i.i
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wy, i64 4
  store ptr %i.xd, ptr %i.lo, align 8, !tbaa !74
  %i.xe = load i32, ptr %i.wy, align 1, !tbaa !75
  %i.xf = call i32 @llvm.bswap.i32(i32 %i.xe)
  br label %bytestream2_get_be32.exit.i.i

bytestream2_get_be32.exit.i.i:                    ; preds = %bb.co, %bb.cn
  %.0.i158.i.i = phi i32 [ 0, %bb.cn ], [ %i.xf, %bb.co ] ; 4 uses
  %i.xg = trunc i32 %.0.i158.i.i to i8
  %i.xh = getelementptr inbounds nuw i8, ptr %.9182.i.i, i64 1
  store i8 %i.xg, ptr %.9182.i.i, align 1, !tbaa !75
  %i.xi = lshr i32 %.0.i158.i.i, 24
  %i.xj = trunc nuw i32 %i.xi to i8
  %i.xk = getelementptr inbounds nuw i8, ptr %.9182.i.i, i64 2
  store i8 %i.xj, ptr %i.xh, align 1, !tbaa !75
  %i.xl = lshr i32 %.0.i158.i.i, 16
  %i.xm = trunc i32 %i.xl to i8
  %i.xn = getelementptr inbounds nuw i8, ptr %.9182.i.i, i64 3
  store i8 %i.xm, ptr %i.xk, align 1, !tbaa !75
  %i.xo = lshr i32 %.0.i158.i.i, 8
  %i.xp = trunc i32 %i.xo to i8
  %i.xq = getelementptr inbounds nuw i8, ptr %.9182.i.i, i64 4 ; 2 uses
  store i8 %i.xp, ptr %i.xn, align 1, !tbaa !75
  %i.xr = add nuw nsw i32 %.3138181.i.i, 1        ; 2 uses
  %i.xs = load i32, ptr %i.nk, align 4, !tbaa !85 ; 2 uses
  %i.xt = icmp slt i32 %i.xr, %i.xs
  br i1 %i.xt, label %.lr.ph183.i.i, label %._crit_edge184.loopexit.i.i, !llvm.loop !60

._crit_edge184.loopexit.i.i:                      ; preds = %bytestream2_get_be32.exit.i.i
  %.pre223.i.i = load i32, ptr %i.nr, align 8, !tbaa !86
  br label %._crit_edge184.i.i

._crit_edge184.i.i:                               ; preds = %._crit_edge184.loopexit.i.i, %.preheader169.i.i
  %i.xu = phi i32 [ %i.wu, %.preheader169.i.i ], [ %.pre223.i.i, %._crit_edge184.loopexit.i.i ] ; 2 uses
  %i.xv = phi i32 [ %i.wv, %.preheader169.i.i ], [ %i.xs, %._crit_edge184.loopexit.i.i ] ; 2 uses
  %.9.lcssa.i.i = phi ptr [ %.8188.i.i, %.preheader169.i.i ], [ %i.xq, %._crit_edge184.loopexit.i.i ]
  %i.xw = load i32, ptr %i.nv, align 8, !tbaa !87
  %i.xx = shl nsw i32 %i.xv, 2
  %i.xy = sub nsw i32 %i.xw, %i.xx
  %i.xz = sext i32 %i.xy to i64
  %i.ya = getelementptr inbounds i8, ptr %.9.lcssa.i.i, i64 %i.xz
  %i.yb = add nuw nsw i32 %.3134187.i.i, 1        ; 2 uses
  %i.yc = icmp slt i32 %i.yb, %i.xu
  br i1 %i.yc, label %.preheader169.i.i, label %.thread134, !llvm.loop !61

bb.cp:                                            ; preds = %bb.bx
  call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.21, i32 noundef %.0.i.i.i107) #6
  br label %tdsc_load_cursor.exit.i

tdsc_load_cursor.exit.i:                          ; preds = %bb.cp, %bb.bw, %bb.bs
  %.0.i23.i = phi i32 [ -1094995529, %bb.bs ], [ %i.oo, %bb.bw ], [ -1163346256, %bb.cp ]
  %i.yd = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ye = load i32, ptr %i.yd, align 8, !tbaa !79
  %i.yf = and i32 %i.ye, 8
  %.not.i = icmp eq i32 %i.yf, 0
  br i1 %.not.i, label %.thread134, label %bytestream2_get_le32.exit92

bb.cq:                                            ; preds = %bytestream2_get_le32.exit22.i, %bytestream2_get_le32.exit22.thread.i
  %.0.i2179.i = phi i32 [ 0, %bytestream2_get_le32.exit22.thread.i ], [ %i.lx, %bytestream2_get_le32.exit22.i ]
  call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.17, i32 noundef %.0.i2179.i) #6
  br label %.thread134

.thread134:                                       ; preds = %._crit_edge.i.i, %._crit_edge184.i.i, %._crit_edge206.i.i, %tdsc_parse_tdsf.exit.thread121, %bb.bb, %bb.cq, %tdsc_load_cursor.exit.i, %.preheader170.i.i, %.preheader173.i.i, %._crit_edge199.i.i, %.preheader167.lr.ph.i.i, %.preheader168.i.i, %bytestream2_get_le32.exit.i103, %.thread127, %bytestream2_get_le32.exit92.thread
  %.171130 = phi i1 [ true, %.thread127 ], [ %.171, %bytestream2_get_le32.exit92.thread ], [ %.171, %bytestream2_get_le32.exit.i103 ], [ %.171, %.preheader168.i.i ], [ %.171, %.preheader167.lr.ph.i.i ], [ %.171, %._crit_edge199.i.i ], [ %.171, %bb.cq ], [ %.171, %.preheader173.i.i ], [ %.171, %.preheader170.i.i ], [ %.0.i93, %tdsc_parse_tdsf.exit.thread121 ], [ %.171, %._crit_edge206.i.i ], [ %.171, %tdsc_load_cursor.exit.i ], [ %.171, %._crit_edge184.i.i ], [ %.0.i93, %bb.bb ], [ %.171, %._crit_edge.i.i ]
  %i.yg = call i32 @ff_get_buffer(ptr noundef %0, ptr noundef %1, i32 noundef 0) #6 ; 2 uses
  %i.yh = icmp slt i32 %i.yg, 0
  br i1 %i.yh, label %bytestream2_get_le32.exit92, label %bb.cr

bb.cr:                                            ; preds = %.thread134
  %i.yi = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !38
  %i.yk = call i32 @av_frame_copy(ptr noundef %1, ptr noundef %i.yj) #6 ; 2 uses
  %i.yl = icmp slt i32 %i.yk, 0
  br i1 %i.yl, label %bytestream2_get_le32.exit92, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ym = load ptr, ptr %1, align 8, !tbaa !74
  %i.yn = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.yo = load i32, ptr %i.yn, align 8, !tbaa !42 ; 2 uses
  %.val = load ptr, ptr %i.b, align 8, !tbaa !28  ; 11 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !88 ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %.val, i64 100
  %i.ys = load i32, ptr %i.yr, align 4, !tbaa !85 ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.yu = load i32, ptr %i.yt, align 8, !tbaa !86 ; 2 uses
  %.not.i113 = icmp eq ptr %i.yq, null
  br i1 %.not.i113, label %tdsc_paint_cursor.exit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.yv = getelementptr inbounds nuw i8, ptr %.val, i64 108
  %i.yw = load i32, ptr %i.yv, align 4, !tbaa !81 ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.yy = load i32, ptr %i.yx, align 8, !tbaa !64 ; 3 uses
  %.not95.i = icmp ult i32 %i.yw, %i.yy
  br i1 %.not95.i, label %bb.cu, label %tdsc_paint_cursor.exit

bb.cu:                                            ; preds = %bb.ct
  %i.yz = getelementptr inbounds nuw i8, ptr %.val, i64 112
  %i.za = load i32, ptr %i.yz, align 8, !tbaa !82 ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %.val, i64 12
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !65 ; 3 uses
  %.not96.i = icmp ult i32 %i.za, %i.zc
  br i1 %.not96.i, label %bb.cv, label %tdsc_paint_cursor.exit

bb.cv:                                            ; preds = %bb.cu
  %i.zd = getelementptr inbounds nuw i8, ptr %.val, i64 116
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !83
  %i.zf = sub i32 %i.yw, %i.ze                    ; 4 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.zh = load i32, ptr %i.zg, align 8, !tbaa !84
  %i.zi = sub nsw i32 %i.za, %i.zh                ; 6 uses
  %i.zj = add i32 %i.zf, %i.ys
  %i.zk = icmp sgt i32 %i.zj, %i.yy
  %i.zl = sub i32 %i.yy, %i.zf
  %spec.select.i = select i1 %i.zk, i32 %i.zl, i32 %i.ys
  %i.zm = add nsw i32 %i.zi, %i.yu
  %i.zn = icmp sgt i32 %i.zm, %i.zc
  %i.zo = sub nsw i32 %i.zc, %i.zi
  %.079.i = select i1 %i.zn, i32 %i.zo, i32 %i.yu ; 2 uses
  %i.zp = call i32 @llvm.smin.i32(i32 %i.zf, i32 0) ; 2 uses
  %narrow.i = mul i32 %i.zp, -4
  %.083.idx.i = zext i32 %narrow.i to i64
  %.083.i = getelementptr inbounds nuw i8, ptr %i.yq, i64 %.083.idx.i ; 2 uses
  %.182.i = add i32 %spec.select.i, %i.zp         ; 3 uses
  %i.zq = call i32 @llvm.smax.i32(i32 %i.zf, i32 0)
  %narrow1.i = mul nuw nsw i32 %i.zq, 3
  %.0.idx.i = zext nneg i32 %narrow1.i to i64
  %.0.i114 = getelementptr inbounds nuw i8, ptr %i.ym, i64 %.0.idx.i ; 2 uses
  %i.zr = icmp slt i32 %i.zi, 0
  br i1 %i.zr, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.zs = add nsw i32 %.079.i, %i.zi
  %i.zt = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.zu = load i32, ptr %i.zt, align 8, !tbaa !87
  %i.zv = mul i32 %i.zi, %i.zu
  %i.zw = sub i32 0, %i.zv
  %i.zx = sext i32 %i.zw to i64
  %i.zy = getelementptr inbounds i8, ptr %.083.i, i64 %i.zx
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cv
  %i.zz = mul nsw i32 %i.zi, %i.yo
  %i.aaa = sext i32 %i.zz to i64
  %i.aab = getelementptr inbounds i8, ptr %.0.i114, i64 %i.aaa
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.184.i = phi ptr [ %i.zy, %bb.cw ], [ %.083.i, %bb.cx ]
  %.180.i = phi i32 [ %i.zs, %bb.cw ], [ %.079.i, %bb.cx ] ; 2 uses
  %.1.i = phi ptr [ %.0.i114, %bb.cw ], [ %i.aab, %bb.cx ]
  %i.aac = icmp sgt i32 %.182.i, -1
  %i.aad = icmp sgt i32 %.180.i, 0
end_hunk_0
