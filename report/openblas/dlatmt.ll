loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@dlatmt_:bb.a
  %.10.lcssa = phi i32 [ %.910101490, %bb.bz ], [ %.11.lcssa, %._crit_edge1485.loopexit ] ; 2 uses
  %i.rg = add nuw nsw i32 %.19401491, 1
  %.not1122.not = icmp slt i32 %.19401491, %i.rf
  br i1 %.not1122.not, label %bb.bz, label %.loopexit1288, !llvm.loop !26

bb.ch:                                            ; preds = %bb.az
  %i.rh = load i32, ptr %i.i, align 4, !tbaa !8
  %i.ri = add nsw i32 %i.rh, 1
  store i32 %i.ri, ptr %i.b, align 4, !tbaa !8
  %i.rj = xor i32 %.0980, 1                       ; 5 uses
  %i.rk = add i32 %i.rj, %i.ab                    ; 2 uses
  br i1 %i.dv, label %bb.cp, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.rl = add nsw i32 %i.fz, 1
  %.0981 = select i1 %i.bc, i32 %i.rl, i32 %.0947 ; 7 uses
  %.1950 = select i1 %i.bc, i32 6, i32 1          ; 2 uses
  %i.rm = add i32 %i.rk, %.0981
  %i.rn = sext i32 %i.rm to i64
  %i.ro = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.rn
  call void @dcopy_(ptr noundef nonnull %i.p, ptr noundef nonnull %5, ptr noundef nonnull @c__1, ptr noundef %i.ro, ptr noundef nonnull %i.b) #8
  %i.rp = load i32, ptr %i.z, align 4, !tbaa !8   ; 3 uses
  store i32 %i.rp, ptr %i.b, align 4, !tbaa !8
  %.not11091316 = icmp slt i32 %i.rp, 1
  br i1 %.not11091316, label %._crit_edge1322, label %.lr.ph1321

.lr.ph1321:                                       ; preds = %bb.ci
  %reass.add = sub i32 %i.ab, %.0980              ; 3 uses
  br label %bb.cj

bb.cj:                                            ; preds = %.lr.ph1321, %._crit_edge1313
  %i.rq = phi i32 [ %i.rp, %.lr.ph1321 ], [ %i.uv, %._crit_edge1313 ]
  %indvars.iv1617 = phi i64 [ 1, %.lr.ph1321 ], [ %indvars.iv.next1618, %._crit_edge1313 ] ; 8 uses
  %.121318 = phi i32 [ undef, %.lr.ph1321 ], [ %.13.lcssa, %._crit_edge1313 ]
  %.1210231317 = phi i32 [ undef, %.lr.ph1321 ], [ %.131024.lcssa, %._crit_edge1313 ]
  %i.rr = load i32, ptr %1, align 4, !tbaa !8     ; 2 uses
  %i.rs = add nsw i32 %i.rr, -1
  store i32 %i.rs, ptr %i.e, align 4, !tbaa !8
  %.not11151309 = icmp slt i32 %i.rr, 2
  br i1 %.not11151309, label %._crit_edge1313, label %.lr.ph1312

.lr.ph1312:                                       ; preds = %bb.cj
  %i.rt = trunc i64 %indvars.iv1617 to i32
  %i.ru = add i32 %i.rt, 2                        ; 5 uses
  %i.rv = trunc nuw nsw i64 %indvars.iv1617 to i32 ; 3 uses
  %i.rw = trunc i64 %indvars.iv1617 to i32
  %i.rx = sub i32 0, %i.rw
  br label %bb.ck

.loopexit1295:                                    ; preds = %.lr.ph1305, %bb.ck
  %.141025.lcssa = phi i32 [ %i.sf, %bb.ck ], [ %.41303, %.lr.ph1305 ]
  %.14.lcssa = phi i32 [ %i.sc, %bb.ck ], [ %i.ue, %.lr.ph1305 ]
  %i.ry = load i32, ptr %i.e, align 4, !tbaa !8
  %i.rz = sext i32 %i.ry to i64
  %.not1115.not = icmp slt i64 %indvars.iv1614, %i.rz
  br i1 %.not1115.not, label %bb.ck, label %._crit_edge1313.loopexit, !llvm.loop !27

bb.ck:                                            ; preds = %.lr.ph1312, %.loopexit1295
  %indvars.iv1614 = phi i64 [ 1, %.lr.ph1312 ], [ %indvars.iv.next1615, %.loopexit1295 ] ; 8 uses
  %i.sa = sub nsw i64 %indvars.iv1614, %indvars.iv1617 ; 2 uses
  %i.sb = trunc nsw i64 %i.sa to i32              ; 2 uses
  %i.sc = call i32 @llvm.smax.i32(i32 %i.sb, i32 1) ; 2 uses
  %indvars.iv.next1615 = add nuw nsw i64 %indvars.iv1614, 1 ; 2 uses
  %i.sd = trunc nuw nsw i64 %indvars.iv.next1615 to i32 ; 3 uses
  store i32 %i.sd, ptr %i.c, align 4, !tbaa !8
  store i32 %i.ru, ptr %i.d, align 4, !tbaa !8
  %i.se = call i32 @llvm.umin.i32(i32 %i.sd, i32 %i.ru)
  store i32 %i.se, ptr %i.t, align 4, !tbaa !8
  store double 0.000000e+00, ptr %i.q, align 8, !tbaa !9
  %reass.mul = mul i32 %reass.add, %i.sd
  %i.sf = trunc nuw nsw i64 %indvars.iv1614 to i32 ; 4 uses
  %i.sg = add i32 %.0981, %i.sf
  %i.sh = add i32 %i.sg, %reass.mul
  %i.si = sext i32 %i.sh to i64
  %i.sj = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.si
  %i.sk = load double, ptr %i.sj, align 8, !tbaa !9
  store double %i.sk, ptr %i.j, align 8, !tbaa !9
  %i.sl = call double @dlarnd_(ptr noundef nonnull @c__1, ptr noundef nonnull %3) #8
  %i.sm = fmul double %i.sl, f0x401921FB54442D18  ; 2 uses
  %i.sn = call double @cos(double noundef %i.sm) #8
  store double %i.sn, ptr %i.k, align 8, !tbaa !9
  %i.so = call double @sin(double noundef %i.sm) #8
  store double %i.so, ptr %i.l, align 8, !tbaa !9
  %i.sp = icmp samesign ugt i64 %indvars.iv1614, %indvars.iv1617
  %i.sq = zext i1 %i.sp to i32
  store i32 %i.sq, ptr %i.h, align 4, !tbaa !8
  %i.sr = trunc i64 %indvars.iv1614 to i32
  %i.ss = mul i32 %i.ab, %i.sr
  %i.st = add i32 %i.ss, %.0981                   ; 2 uses
  %i.su = trunc i64 %indvars.iv1614 to i32
  %i.sv = mul nuw i32 %.0980, %i.su
  %i.sw = sub i32 %i.st, %i.sv
  %i.sx = add i32 %i.sw, %i.sc
  %i.sy = sext i32 %i.sx to i64
  %i.sz = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.sy
  call void @dlarot_(ptr noundef nonnull @c_false, ptr noundef nonnull %i.h, ptr noundef nonnull @c_true, ptr noundef nonnull %i.t, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef %i.sz, ptr noundef nonnull %i.i, ptr noundef nonnull %i.q, ptr noundef nonnull %i.j) #8
  store i32 %i.rv, ptr %i.d, align 4, !tbaa !8
  %i.ta = load i32, ptr %1, align 4, !tbaa !8
  %i.tb = sub nsw i32 %i.ta, %i.sf                ; 2 uses
  store i32 %i.tb, ptr %i.f, align 4, !tbaa !8
  %i.tc = call i32 @llvm.smin.i32(i32 %i.rv, i32 %i.tb)
  %i.td = add nsw i32 %i.tc, 1
  store i32 %i.td, ptr %i.c, align 4, !tbaa !8
  %i.te = trunc i64 %indvars.iv1614 to i32
  %i.tf = mul nuw i32 %i.rj, %i.te
  %i.tg = add i32 %i.st, %i.tf
  %i.th = sext i32 %i.tg to i64
  %i.ti = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.th
  call void @dlarot_(ptr noundef nonnull @c_true, ptr noundef nonnull @c_true, ptr noundef nonnull @c_false, ptr noundef nonnull %i.c, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef %i.ti, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.r) #8
  store i32 %i.rx, ptr %i.c, align 4, !tbaa !8
  %i.tj = icmp sgt i64 %i.sa, 0
  br i1 %i.tj, label %.lr.ph1305, label %.loopexit1295

.lr.ph1305:                                       ; preds = %bb.ck, %.lr.ph1305
  %.41303 = phi i32 [ %i.ur, %.lr.ph1305 ], [ %i.sb, %bb.ck ] ; 10 uses
  %.1410251302 = phi i32 [ %.41303, %.lr.ph1305 ], [ %i.sf, %bb.ck ]
  %i.tk = add nsw i32 %.41303, 1                  ; 4 uses
  %i.tl = add nsw i32 %.1410251302, 1
  %reass.mul1215 = mul i32 %reass.add, %i.tl
  %i.tm = add i32 %i.tk, %.0981
  %i.tn = add i32 %i.tm, %reass.mul1215
  %i.to = sext i32 %i.tn to i64
  %i.tp = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.to
  call void @dlartg_(ptr noundef %i.tp, ptr noundef nonnull %i.q, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r) #8
  %reass.mul1217 = mul i32 %reass.add, %i.tk
  %i.tq = add i32 %.41303, %.0981
  %i.tr = add i32 %i.tq, %reass.mul1217
  %i.ts = sext i32 %i.tr to i64
  %i.tt = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ts
  %i.tu = load double, ptr %i.tt, align 8, !tbaa !9
  store double %i.tu, ptr %i.j, align 8, !tbaa !9
  store i32 %i.ru, ptr %i.d, align 4, !tbaa !8
  %i.tv = load double, ptr %i.l, align 8, !tbaa !9
  %i.tw = fneg double %i.tv
  store double %i.tw, ptr %i.g, align 8, !tbaa !9
  %i.tx = mul nuw nsw i32 %.41303, %i.rj
  %i.ty = mul nsw i32 %.41303, %i.ab
  %i.tz = add i32 %i.ty, %.0981                   ; 2 uses
  %i.ua = add i32 %i.tz, %i.tx
  %i.ub = sext i32 %i.ua to i64
  %i.uc = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ub
  call void @dlarot_(ptr noundef nonnull @c_true, ptr noundef nonnull @c_true, ptr noundef nonnull @c_true, ptr noundef nonnull %i.d, ptr noundef nonnull %i.k, ptr noundef nonnull %i.g, ptr noundef %i.uc, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.q) #8
  %i.ud = sub nsw i32 %.41303, %i.rv
  %i.ue = call i32 @llvm.smax.i32(i32 %i.ud, i32 1) ; 2 uses
  store i32 %i.tk, ptr %i.d, align 4, !tbaa !8
  store i32 %i.ru, ptr %i.f, align 4, !tbaa !8
  %i.uf = call i32 @llvm.smin.i32(i32 %i.tk, i32 %i.ru)
  store i32 %i.uf, ptr %i.t, align 4, !tbaa !8
  store double 0.000000e+00, ptr %i.q, align 8, !tbaa !9
  %i.ug = sext i32 %.41303 to i64
  %i.uh = icmp slt i64 %indvars.iv1617, %i.ug
  %i.ui = zext i1 %i.uh to i32
  store i32 %i.ui, ptr %i.h, align 4, !tbaa !8
  %i.uj = load double, ptr %i.l, align 8, !tbaa !9
  %i.uk = fneg double %i.uj
  store double %i.uk, ptr %i.g, align 8, !tbaa !9
  %i.ul = mul nuw nsw i32 %.0980, %.41303
  %i.um = sub i32 %i.tz, %i.ul
  %i.un = add i32 %i.um, %i.ue
  %i.uo = sext i32 %i.un to i64
  %i.up = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.uo
  call void @dlarot_(ptr noundef nonnull @c_false, ptr noundef nonnull %i.h, ptr noundef nonnull @c_true, ptr noundef nonnull %i.t, ptr noundef nonnull %i.k, ptr noundef nonnull %i.g, ptr noundef %i.up, ptr noundef nonnull %i.i, ptr noundef nonnull %i.q, ptr noundef nonnull %i.j) #8
  %i.uq = load i32, ptr %i.c, align 4, !tbaa !8   ; 2 uses
  %i.ur = add nsw i32 %i.uq, %.41303              ; 3 uses
  %i.us = icmp slt i32 %i.uq, 0
  %i.ut = icmp sgt i32 %i.ur, 0
  %i.uu = icmp slt i32 %i.ur, 2
  %.in1118 = select i1 %i.us, i1 %i.ut, i1 %i.uu
  br i1 %.in1118, label %.lr.ph1305, label %.loopexit1295, !llvm.loop !28

._crit_edge1313.loopexit:                         ; preds = %.loopexit1295
  %.pre = load i32, ptr %i.b, align 4, !tbaa !8
  br label %._crit_edge1313

._crit_edge1313:                                  ; preds = %._crit_edge1313.loopexit, %bb.cj
  %i.uv = phi i32 [ %i.rq, %bb.cj ], [ %.pre, %._crit_edge1313.loopexit ] ; 2 uses
  %.131024.lcssa = phi i32 [ %.1210231317, %bb.cj ], [ %.141025.lcssa, %._crit_edge1313.loopexit ] ; 2 uses
  %.13.lcssa = phi i32 [ %.121318, %bb.cj ], [ %.14.lcssa, %._crit_edge1313.loopexit ] ; 2 uses
  %indvars.iv.next1618 = add nuw nsw i64 %indvars.iv1617, 1
  %i.uw = sext i32 %i.uv to i64
  %.not1109.not = icmp slt i64 %indvars.iv1617, %i.uw
  br i1 %.not1109.not, label %bb.cj, label %._crit_edge1322, !llvm.loop !29

._crit_edge1322:                                  ; preds = %._crit_edge1313, %bb.ci
  %.121023.lcssa = phi i32 [ undef, %bb.ci ], [ %.131024.lcssa, %._crit_edge1313 ] ; 2 uses
  %.12.lcssa = phi i32 [ undef, %bb.ci ], [ %.13.lcssa, %._crit_edge1313 ] ; 2 uses
  %i.ux = icmp ne i32 %.0983, %.1950
  %or.cond15 = and i1 %i.bf, %i.ux
  br i1 %or.cond15, label %bb.cl, label %.loopexit1288

bb.cl:                                            ; preds = %._crit_edge1322
  %i.uy = load i32, ptr %1, align 4, !tbaa !8     ; 8 uses
  %.not11101330 = icmp slt i32 %i.uy, 1
  br i1 %.not11101330, label %._crit_edge1334, label %.lr.ph1333

.lr.ph1333:                                       ; preds = %bb.cl
  %i.uz = load i32, ptr %i.z, align 4, !tbaa !8   ; 2 uses
  %reass.add1219 = sub i32 %i.ab, %.0980          ; 5 uses
  %i.va = add nuw i32 %i.uy, 1
  %wide.trip.count1626 = zext i32 %i.va to i64
  %17 = sext i32 %i.uz to i64
  %18 = add nsw i64 %17, 1
  %19 = zext nneg i32 %i.uy to i64
  br label %bb.cm

bb.cm:                                            ; preds = %.lr.ph1333, %._crit_edge1329
  %indvar1960 = phi i64 [ 0, %.lr.ph1333 ], [ %indvar.next1961, %._crit_edge1329 ] ; 4 uses
  %indvars.iv1620 = phi i64 [ 1, %.lr.ph1333 ], [ %indvars.iv.next1621, %._crit_edge1329 ] ; 4 uses
  %20 = add nsw i64 %18, %indvar1960
  %smin1959 = call i64 @llvm.smin.i64(i64 %20, i64 %19) ; 2 uses
  %indvars1625 = trunc i64 %indvars.iv1620 to i32 ; 5 uses
  %i.vb = mul nuw nsw i32 %.0980, %indvars1625
  %i.vc = sub nsw i32 %.0947, %i.vb               ; 2 uses
  %i.vd = add nsw i32 %i.uz, %indvars1625
  %i.ve = call i32 @llvm.smin.i32(i32 %i.uy, i32 %i.vd) ; 2 uses
  %.not11141325 = icmp slt i32 %i.ve, %indvars1625
  br i1 %.not11141325, label %._crit_edge1329, label %.lr.ph1328

.lr.ph1328:                                       ; preds = %bb.cm
  %i.vf = sub nsw i64 %smin1959, %indvar1960
  %i.vg = add i32 %.0981, %indvars1625            ; 5 uses
  %i.vh = mul nsw i32 %i.ab, %indvars1625
  %i.vi = add i32 %i.vc, %i.vh                    ; 5 uses
  %i.vj = sext i32 %i.ve to i64
  %xtraiter1962 = and i64 %i.vf, 3                ; 2 uses
  %lcmp.mod1963.not = icmp eq i64 %xtraiter1962, 0
  br i1 %lcmp.mod1963.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph1328, %.prol.preheader
  %indvars.iv1622.prol = phi i64 [ %indvars.iv.next1623.prol, %.prol.preheader ], [ %indvars.iv1620, %.lr.ph1328 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph1328 ]
  %i.vk = trunc nuw nsw i64 %indvars.iv1622.prol to i32 ; 2 uses
  %reass.mul1220.prol = mul i32 %reass.add1219, %i.vk
  %i.vl = add i32 %i.vg, %reass.mul1220.prol
  %i.vm = sext i32 %i.vl to i64
  %i.vn = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.vm
  %i.vo = load double, ptr %i.vn, align 8, !tbaa !9
  %i.vp = add i32 %i.vi, %i.vk
  %i.vq = sext i32 %i.vp to i64
  %i.vr = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.vq
  store double %i.vo, ptr %i.vr, align 8, !tbaa !9
  %indvars.iv.next1623.prol = add nuw nsw i64 %indvars.iv1622.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1962
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !30

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph1328
  %indvars.iv1622.unr = phi i64 [ %indvars.iv1620, %.lr.ph1328 ], [ %indvars.iv.next1623.prol, %.prol.preheader ]
  %i.vs = sub i64 %indvar1960, %smin1959
  %i.vt = icmp ugt i64 %i.vs, -4
  br i1 %i.vt, label %._crit_edge1329, label %.lr.ph1328.new

.lr.ph1328.new:                                   ; preds = %.prol.loopexit, %.lr.ph1328.new
  %indvars.iv1622 = phi i64 [ %indvars.iv.next1623.3, %.lr.ph1328.new ], [ %indvars.iv1622.unr, %.prol.loopexit ] ; 5 uses
  %i.vu = trunc nuw nsw i64 %indvars.iv1622 to i32 ; 2 uses
  %reass.mul1220 = mul i32 %reass.add1219, %i.vu
  %i.vv = add i32 %i.vg, %reass.mul1220
  %i.vw = sext i32 %i.vv to i64
  %i.vx = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.vw
  %i.vy = load double, ptr %i.vx, align 8, !tbaa !9
  %i.vz = add i32 %i.vi, %i.vu
  %i.wa = sext i32 %i.vz to i64
  %i.wb = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.wa
  store double %i.vy, ptr %i.wb, align 8, !tbaa !9
  %i.wc = trunc i64 %indvars.iv1622 to i32
  %i.wd = add i32 %i.wc, 1                        ; 2 uses
  %reass.mul1220.1 = mul i32 %reass.add1219, %i.wd
  %i.we = add i32 %i.vg, %reass.mul1220.1
  %i.wf = sext i32 %i.we to i64
  %i.wg = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.wf
  %i.wh = load double, ptr %i.wg, align 8, !tbaa !9
  %i.wi = add i32 %i.vi, %i.wd
  %i.wj = sext i32 %i.wi to i64
  %i.wk = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.wj
  store double %i.wh, ptr %i.wk, align 8, !tbaa !9
  %i.wl = trunc i64 %indvars.iv1622 to i32
  %i.wm = add i32 %i.wl, 2                        ; 2 uses
  %reass.mul1220.2 = mul i32 %reass.add1219, %i.wm
  %i.wn = add i32 %i.vg, %reass.mul1220.2
  %i.wo = sext i32 %i.wn to i64
  %i.wp = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.wo
  %i.wq = load double, ptr %i.wp, align 8, !tbaa !9
  %i.wr = add i32 %i.vi, %i.wm
  %i.ws = sext i32 %i.wr to i64
  %i.wt = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ws
  store double %i.wq, ptr %i.wt, align 8, !tbaa !9
  %indvars.iv.next1623.2 = add nuw nsw i64 %indvars.iv1622, 3 ; 2 uses
  %i.wu = trunc nuw nsw i64 %indvars.iv.next1623.2 to i32 ; 2 uses
  %reass.mul1220.3 = mul i32 %reass.add1219, %i.wu
  %i.wv = add i32 %i.vg, %reass.mul1220.3
  %i.ww = sext i32 %i.wv to i64
  %i.wx = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ww
  %i.wy = load double, ptr %i.wx, align 8, !tbaa !9
  %i.wz = add i32 %i.vi, %i.wu
  %i.xa = sext i32 %i.wz to i64
  %i.xb = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.xa
  store double %i.wy, ptr %i.xb, align 8, !tbaa !9
  %indvars.iv.next1623.3 = add nuw nsw i64 %indvars.iv1622, 4
  %.not1114.not.3 = icmp slt i64 %indvars.iv.next1623.2, %i.vj
  br i1 %.not1114.not.3, label %.lr.ph1328.new, label %._crit_edge1329, !llvm.loop !31

._crit_edge1329:                                  ; preds = %.prol.loopexit, %.lr.ph1328.new, %bb.cm
  %indvars.iv.next1621 = add nuw nsw i64 %indvars.iv1620, 1 ; 2 uses
  %exitcond1627.not = icmp eq i64 %indvars.iv.next1621, %wide.trip.count1626
  %indvar.next1961 = add i64 %indvar1960, 1
  br i1 %exitcond1627.not, label %._crit_edge1334, label %bb.cm, !llvm.loop !32

._crit_edge1334:                                  ; preds = %._crit_edge1329, %bb.cl
  %.15.lcssa = phi i32 [ %.12.lcssa, %bb.cl ], [ %i.vc, %._crit_edge1329 ]
  br i1 %i.az, label %bb.cn, label %.loopexit1294

bb.cn:                                            ; preds = %._crit_edge1334
  %i.xc = load i32, ptr %i.z, align 4, !tbaa !8   ; 5 uses
  %.not1111.not1343 = icmp sgt i32 %i.xc, 0
  br i1 %.not1111.not1343, label %.lr.ph1346, label %.loopexit1294

.lr.ph1346:                                       ; preds = %bb.cn
  %i.xd = sub nsw i32 %i.uy, %i.xc
  %i.xe = add nuw nsw i32 %i.xc, 1
  %i.xf = shl nsw i64 %i.ac, 3
  %scevgep = getelementptr i8, ptr %13, i64 %i.xf
  %i.xg = add i32 %i.uy, 1
  %i.xh = sub i32 %i.xg, %i.xc
  %i.xi = mul i32 %i.ab, %i.xh
  %i.xj = add i32 %i.xc, %i.xi
  %i.xk = add i32 %i.xj, 1
  %i.xl = add i32 %i.ab, -1
  br label %bb.co

.loopexit1293:                                    ; preds = %.lr.ph1341, %bb.co
  %.not1111.not = icmp slt i32 %.49691344, %i.uy
  %indvar.next1630 = add nuw nsw i64 %indvar1629, 1
  br i1 %.not1111.not, label %bb.co, label %.loopexit1294, !llvm.loop !33

bb.co:                                            ; preds = %.lr.ph1346, %.loopexit1293
  %indvar1629 = phi i64 [ 0, %.lr.ph1346 ], [ %indvar.next1630, %.loopexit1293 ] ; 3 uses
  %.49691344.in = phi i32 [ %i.xd, %.lr.ph1346 ], [ %.49691344, %.loopexit1293 ] ; 2 uses
  %.49691344 = add nsw i32 %.49691344.in, 1       ; 2 uses
  %i.xm = sub i32 %i.uy, %.49691344.in
  %i.xn = add i32 %i.xm, 1
  %.not11121338 = icmp sgt i32 %i.xn, %i.xe
  br i1 %.not11121338, label %.loopexit1293, label %.lr.ph1341

.lr.ph1341:                                       ; preds = %bb.co
  %i.xo = shl nuw nsw i64 %indvar1629, 3
  %i.xp = add nuw nsw i64 %i.xo, 8
  %indvars1636 = trunc i64 %indvar1629 to i32
  %i.xq = mul i32 %i.xl, %indvars1636
  %i.xr = add i32 %i.xk, %i.xq
  %i.xs = sext i32 %i.xr to i64
  %i.xt = shl nsw i64 %i.xs, 3
  %scevgep1628 = getelementptr i8, ptr %scevgep, i64 %i.xt
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1628, i8 0, i64 %i.xp, i1 false), !tbaa !9
  br label %.loopexit1293

.loopexit1294:                                    ; preds = %.loopexit1293, %bb.cn, %._crit_edge1334
  %.0983.1183 = select i1 %i.bc, i32 %.0983, i32 0
  br label %.loopexit1288

bb.cp:                                            ; preds = %bb.ch
  %i.xu = and i1 %i.ba, %i.bc
  %.1982 = select i1 %i.xu, i32 1, i32 %.0947     ; 9 uses
  %.2951 = select i1 %i.bc, i32 5, i32 2          ; 2 uses
  %i.xv = add i32 %i.rk, %.1982
  %i.xw = sext i32 %i.xv to i64
  %i.xx = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.xw
  call void @dcopy_(ptr noundef nonnull %i.p, ptr noundef nonnull %5, ptr noundef nonnull @c__1, ptr noundef %i.xx, ptr noundef nonnull %i.b) #8
  %i.xy = load i32, ptr %i.z, align 4, !tbaa !8   ; 3 uses
  store i32 %i.xy, ptr %i.b, align 4, !tbaa !8
  %.not11031361 = icmp slt i32 %i.xy, 1
  br i1 %.not11031361, label %._crit_edge1366, label %.lr.ph1365

.lr.ph1365:                                       ; preds = %bb.cp
  %i.xz = add i32 %.1982, 1                       ; 2 uses
  %reass.add1223 = sub i32 %i.ab, %.0980          ; 2 uses
  %i.ya = zext nneg i32 %i.rj to i64
  %i.yb = sext i32 %.1982 to i64
  %i.yc = sext i32 %i.ab to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.ad, i64 %i.yb
  br label %bb.cq

bb.cq:                                            ; preds = %.lr.ph1365, %._crit_edge1359
  %i.yd = phi i32 [ %i.xy, %.lr.ph1365 ], [ %i.aaz, %._crit_edge1359 ]
  %indvars.iv1640 = phi i64 [ 1, %.lr.ph1365 ], [ %indvars.iv.next1641, %._crit_edge1359 ] ; 8 uses
  %.1510261362 = phi i32 [ undef, %.lr.ph1365 ], [ %.161027.lcssa, %._crit_edge1359 ]
  %i.ye = load i32, ptr %1, align 4, !tbaa !8     ; 2 uses
  %i.yf = icmp sgt i32 %i.ye, 1
  br i1 %i.yf, label %.lr.ph1358, label %._crit_edge1359

.lr.ph1358:                                       ; preds = %bb.cq
  %i.yg = zext nneg i32 %i.ye to i64
  %i.yh = trunc i64 %indvars.iv1640 to i32
  %i.yi = add i32 %i.yh, 2                        ; 5 uses
  %i.yj = trunc nuw nsw i64 %indvars.iv1640 to i32
  br label %bb.cr

.loopexit1292:                                    ; preds = %.lr.ph1351, %bb.cr
  %.171028.lcssa = phi i32 [ %indvars, %bb.cr ], [ %.51349, %.lr.ph1351 ]
  %i.yk = icmp samesign ugt i64 %indvars.iv1637, 2
  br i1 %i.yk, label %bb.cr, label %._crit_edge1359.loopexit, !llvm.loop !34

bb.cr:                                            ; preds = %.lr.ph1358, %.loopexit1292
  %indvars.iv1637 = phi i64 [ %i.yg, %.lr.ph1358 ], [ %indvars.iv.next1638, %.loopexit1292 ] ; 5 uses
  %indvars.iv.next1638 = add nsw i64 %indvars.iv1637, -1 ; 5 uses
  %indvars = trunc i64 %indvars.iv.next1638 to i32 ; 4 uses
  %i.yl = load i32, ptr %1, align 4, !tbaa !8
  %i.ym = trunc nuw nsw i64 %indvars.iv1637 to i32
  %reass.sub = sub i32 %i.yl, %i.ym
  %i.yn = add i32 %reass.sub, 2                   ; 2 uses
  store i32 %i.yn, ptr %i.e, align 4, !tbaa !8
  store i32 %i.yi, ptr %i.c, align 4, !tbaa !8
  %i.yo = call i32 @llvm.smin.i32(i32 %i.yn, i32 %i.yi)
  store i32 %i.yo, ptr %i.t, align 4, !tbaa !8
  store double 0.000000e+00, ptr %i.q, align 8, !tbaa !9
  %i.yp = mul nuw nsw i64 %indvars.iv.next1638, %i.ya ; 2 uses
  %i.yq = mul nsw i64 %indvars.iv.next1638, %i.yc ; 2 uses
  %i.yr = trunc nsw i64 %i.yp to i32
  %i.ys = add i32 %i.xz, %i.yr
  %i.yt = sext i32 %i.ys to i64
  %i.yu = getelementptr [8 x i8], ptr %i.ad, i64 %i.yq
  %i.yv = getelementptr [8 x i8], ptr %i.yu, i64 %i.yt
  %i.yw = load double, ptr %i.yv, align 8, !tbaa !9
  store double %i.yw, ptr %i.j, align 8, !tbaa !9
  %i.yx = call double @dlarnd_(ptr noundef nonnull @c__1, ptr noundef nonnull %3) #8
  %i.yy = fmul double %i.yx, f0x401921FB54442D18  ; 2 uses
  %i.yz = call double @cos(double noundef %i.yy) #8
  store double %i.yz, ptr %i.k, align 8, !tbaa !9
  %i.za = call double @sin(double noundef %i.yy) #8
  %i.zb = fneg double %i.za
  store double %i.zb, ptr %i.l, align 8, !tbaa !9
  %i.zc = load i32, ptr %1, align 4, !tbaa !8
  %i.zd = sub nsw i32 %i.zc, %indvars
  %i.ze = sext i32 %i.zd to i64
  %i.zf = icmp slt i64 %indvars.iv1640, %i.ze
  %i.zg = zext i1 %i.zf to i32
  store i32 %i.zg, ptr %i.h, align 4, !tbaa !8
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.yp
  %i.zh = getelementptr [8 x i8], ptr %gep, i64 %i.yq
  call void @dlarot_(ptr noundef nonnull @c_false, ptr noundef nonnull @c_true, ptr noundef nonnull %i.h, ptr noundef nonnull %i.t, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef %i.zh, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.q) #8
  %i.zi = sub nsw i64 %indvars.iv1637, %indvars.iv1640
  %i.zj = trunc nsw i64 %i.zi to i32              ; 2 uses
  store i32 %i.zj, ptr %i.c, align 4, !tbaa !8
  %i.zk = call i32 @llvm.smax.i32(i32 %i.zj, i32 1) ; 2 uses
  %i.zl = trunc i64 %indvars.iv1637 to i32
  %i.zm = add i32 %i.zl, 1
  %i.zn = sub nsw i32 %i.zm, %i.zk
  store i32 %i.zn, ptr %i.e, align 4, !tbaa !8
  %reass.mul1224 = mul i32 %reass.add1223, %i.zk
  %i.zo = add i32 %.1982, %indvars
  %i.zp = add i32 %i.zo, %reass.mul1224
  %i.zq = sext i32 %i.zp to i64
  %i.zr = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.zq
  call void @dlarot_(ptr noundef nonnull @c_true, ptr noundef nonnull @c_false, ptr noundef nonnull @c_true, ptr noundef nonnull %i.e, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef %i.zr, ptr noundef nonnull %i.i, ptr noundef nonnull %i.r, ptr noundef nonnull %i.j) #8
  %i.zs = load i32, ptr %1, align 4, !tbaa !8     ; 2 uses
  %i.zt = add nsw i32 %i.zs, -1
  store i32 %i.zt, ptr %i.e, align 4, !tbaa !8
  store i32 %i.yj, ptr %i.c, align 4, !tbaa !8
  %i.zu = add nsw i64 %indvars.iv.next1638, %indvars.iv1640 ; 2 uses
  %i.zv = sext i32 %i.zs to i64
  %i.zw = icmp slt i64 %i.zu, %i.zv
  br i1 %i.zw, label %.lr.ph1351.preheader, label %.loopexit1292

.lr.ph1351.preheader:                             ; preds = %bb.cr
  %i.zx = trunc nsw i64 %i.zu to i32
  br label %.lr.ph1351

.lr.ph1351:                                       ; preds = %.lr.ph1351.preheader, %.lr.ph1351
  %.51349 = phi i32 [ %i.aau, %.lr.ph1351 ], [ %i.zx, %.lr.ph1351.preheader ] ; 7 uses
  %.1710281348 = phi i32 [ %.51349, %.lr.ph1351 ], [ %indvars, %.lr.ph1351.preheader ]
  %reass.mul1227 = mul i32 %reass.add1223, %.1710281348
  %i.zy = add i32 %.51349, %.1982
  %i.zz = add i32 %i.zy, %reass.mul1227
  %i.aaa = sext i32 %i.zz to i64
  %i.aab = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.aaa ; 2 uses
  call void @dlartg_(ptr noundef %i.aab, ptr noundef nonnull %i.q, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r) #8
  %i.aac = mul nuw nsw i32 %.51349, %i.rj         ; 2 uses
  %i.aad = mul nsw i32 %.51349, %i.ab             ; 2 uses
  %i.aae = add i32 %i.xz, %i.aac
  %i.aaf = add nsw i32 %i.aae, %i.aad
  %i.aag = sext i32 %i.aaf to i64
  %i.aah = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.aag
  %i.aai = load double, ptr %i.aah, align 8, !tbaa !9
  store double %i.aai, ptr %i.j, align 8, !tbaa !9
  store i32 %i.yi, ptr %i.d, align 4, !tbaa !8
  call void @dlarot_(ptr noundef nonnull @c_true, ptr noundef nonnull @c_true, ptr noundef nonnull @c_true, ptr noundef nonnull %i.d, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef %i.aab, ptr noundef nonnull %i.i, ptr noundef nonnull %i.q, ptr noundef nonnull %i.j) #8
  %i.aaj = load i32, ptr %1, align 4, !tbaa !8
  %reass.sub1579 = sub i32 %i.aaj, %.51349        ; 2 uses
  %i.aak = add i32 %reass.sub1579, 1              ; 2 uses
  store i32 %i.aak, ptr %i.d, align 4, !tbaa !8
  store i32 %i.yi, ptr %i.f, align 4, !tbaa !8
  %i.aal = call i32 @llvm.smin.i32(i32 %i.aak, i32 %i.yi)
  store i32 %i.aal, ptr %i.t, align 4, !tbaa !8
  store double 0.000000e+00, ptr %i.q, align 8, !tbaa !9
  %i.aam = sext i32 %reass.sub1579 to i64
  %i.aan = icmp slt i64 %indvars.iv1640, %i.aam
  %i.aao = zext i1 %i.aan to i32
  store i32 %i.aao, ptr %i.h, align 4, !tbaa !8
  %i.aap = add nsw i32 %i.aac, %.1982
  %i.aaq = add nsw i32 %i.aap, %i.aad
  %i.aar = sext i32 %i.aaq to i64
  %i.aas = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.aar
  call void @dlarot_(ptr noundef nonnull @c_false, ptr noundef nonnull @c_true, ptr noundef nonnull %i.h, ptr noundef nonnull %i.t, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef %i.aas, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.q) #8
  %i.aat = load i32, ptr %i.c, align 4, !tbaa !8  ; 2 uses
  %i.aau = add nsw i32 %i.aat, %.51349            ; 3 uses
end_hunk_0
begin_hunk_1_@dlatmt_:bb.a
  %indvars.iv.next1659.epil = add nuw nsw i64 %indvars.iv1658.epil, 1
  %epil.iter1970.next = add i64 %epil.iter1970, 1 ; 2 uses
  %epil.iter1970.cmp.not = icmp eq i64 %epil.iter1970.next, %xtraiter1969
  br i1 %epil.iter1970.cmp.not, label %.loopexit1291, label %bb.cy, !llvm.loop !40

.loopexit1291:                                    ; preds = %.loopexit1291.loopexit.unr-lcssa, %._crit_edge1384.epil, %bb.cw, %._crit_edge1376
  %.0983.1185 = select i1 %i.bc, i32 %.0983, i32 0
  br label %.loopexit1288

bb.cz:                                            ; preds = %bb.ay
  br i1 %.not1069, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  call void @dlagge_(ptr noundef nonnull %i.u, ptr noundef nonnull %i.s, ptr noundef nonnull %i.y, ptr noundef nonnull %i.z, ptr noundef nonnull %5, ptr noundef %13, ptr noundef nonnull %14, ptr noundef nonnull %3, ptr noundef %15, ptr noundef nonnull %i.n) #8
  br label %bb.dc

bb.db:                                            ; preds = %bb.cz
  call void @dlagsy_(ptr noundef nonnull %0, ptr noundef nonnull %i.y, ptr noundef nonnull %5, ptr noundef %13, ptr noundef nonnull %14, ptr noundef nonnull %3, ptr noundef %15, ptr noundef nonnull %i.n) #8
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.aff = load i32, ptr %i.n, align 4, !tbaa !8
  %.not1101 = icmp eq i32 %i.aff, 0
  br i1 %.not1101, label %.loopexit1288, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  store i32 3, ptr %16, align 4, !tbaa !8
  br label %.thread1200

.loopexit1288:                                    ; preds = %._crit_edge1432, %._crit_edge1485, %._crit_edge1414, %._crit_edge1467, %bb.ax, %.loopexit1291, %.loopexit1294, %._crit_edge1322, %._crit_edge1366, %bb.dc
  %.181029 = phi i32 [ undef, %bb.dc ], [ %.151026.lcssa, %._crit_edge1366 ], [ %.111022.lcssa, %._crit_edge1485 ], [ %.151026.lcssa, %.loopexit1291 ], [ %.121023.lcssa, %.loopexit1294 ], [ undef, %bb.ax ], [ %.121023.lcssa, %._crit_edge1322 ], [ %.71018.lcssa, %._crit_edge1467 ], [ %.01011.lcssa, %._crit_edge1414 ], [ %.51016.lcssa, %._crit_edge1432 ] ; 9 uses
  %.17 = phi i32 [ undef, %bb.dc ], [ undef, %._crit_edge1366 ], [ %.10.lcssa, %._crit_edge1485 ], [ %.16.lcssa, %.loopexit1291 ], [ %.15.lcssa, %.loopexit1294 ], [ undef, %bb.ax ], [ %.12.lcssa, %._crit_edge1322 ], [ %.71008.lcssa, %._crit_edge1467 ], [ %.01001.lcssa, %._crit_edge1414 ], [ %.41005.lcssa, %._crit_edge1432 ] ; 9 uses
  %.3952 = phi i32 [ 0, %bb.dc ], [ %.2951, %._crit_edge1366 ], [ %.0983., %._crit_edge1485 ], [ %.0983.1185, %.loopexit1291 ], [ %.0983.1183, %.loopexit1294 ], [ %or.cond13, %bb.ax ], [ %.1950, %._crit_edge1322 ], [ %.0983., %._crit_edge1467 ], [ %.0983., %._crit_edge1414 ], [ %.0983., %._crit_edge1432 ]
  %.not1151 = icmp eq i32 %.0983, %.3952
  br i1 %.not1151, label %.thread1200, label %bb.de

bb.de:                                            ; preds = %.loopexit1288
  br i1 %i.bg, label %bb.df, label %bb.dh

bb.df:                                            ; preds = %bb.de
  %i.afg = load i32, ptr %0, align 4, !tbaa !8    ; 8 uses
  %.not11651548 = icmp slt i32 %i.afg, 1
  br i1 %.not11651548, label %.loopexit1282, label %.lr.ph1551

.lr.ph1551:                                       ; preds = %bb.df
  %i.afh = shl nsw i64 %i.ac, 3
  %scevgep1737 = getelementptr i8, ptr %13, i64 %i.afh ; 3 uses
  %i.afi = add i32 %i.ab, 2                       ; 3 uses
  %i.afj = add i32 %i.ab, 1                       ; 3 uses
  %i.afk = add nsw i32 %i.afg, -2                 ; 3 uses
  %wide.trip.count1749 = zext nneg i32 %i.afg to i64 ; 2 uses
  %xtraiter2002 = and i64 %wide.trip.count1749, 1
  %i.afl = icmp eq i32 %i.afg, 1
  br i1 %i.afl, label %.epil.preheader2001, label %.lr.ph1551.new

.lr.ph1551.new:                                   ; preds = %.lr.ph1551
  %unroll_iter2006 = and i64 %wide.trip.count1749, 2147483646
  br label %bb.dg

.loopexit:                                        ; preds = %.lr.ph1547, %bb.dg
  %i.afm = add nuw nsw i32 %.09861549, 2          ; 2 uses
  %.not11721544.not.1 = icmp slt i32 %i.afx, %i.afg
  br i1 %.not11721544.not.1, label %.lr.ph1547.1, label %.loopexit.1

.lr.ph1547.1:                                     ; preds = %.loopexit
  %indvars.iv.next1746 = or disjoint i64 %indvars.iv1745, 1 ; 2 uses
  %i.afn = trunc i64 %indvars.iv.next1746 to i32
  %i.afo = sub i32 %i.afk, %i.afn
  %i.afp = zext i32 %i.afo to i64
  %i.afq = shl nuw nsw i64 %i.afp, 3
  %i.afr = add nuw nsw i64 %i.afq, 8
  %i.afs = trunc nuw nsw i64 %indvars.iv.next1746 to i32
  %i.aft = mul i32 %i.afj, %i.afs
  %i.afu = add i32 %i.afi, %i.aft
  %i.afv = sext i32 %i.afu to i64
  %i.afw = shl nsw i64 %i.afv, 3
  %scevgep1738.1 = getelementptr i8, ptr %scevgep1737, i64 %i.afw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1738.1, i8 0, i64 %i.afr, i1 false), !tbaa !9
  br label %.loopexit.1

.loopexit.1:                                      ; preds = %.lr.ph1547.1, %.loopexit
  %indvars.iv.next1746.1 = add nuw nsw i64 %indvars.iv1745, 2 ; 2 uses
  %niter2007.next.1 = add i64 %niter2007, 2       ; 2 uses
  %niter2007.ncmp.1 = icmp eq i64 %niter2007.next.1, %unroll_iter2006
  br i1 %niter2007.ncmp.1, label %.loopexit1282.loopexit.unr-lcssa, label %bb.dg, !llvm.loop !41

bb.dg:                                            ; preds = %.loopexit.1, %.lr.ph1551.new
  %indvars.iv1745 = phi i64 [ 0, %.lr.ph1551.new ], [ %indvars.iv.next1746.1, %.loopexit.1 ] ; 4 uses
  %.09861549 = phi i32 [ 1, %.lr.ph1551.new ], [ %i.afm, %.loopexit.1 ] ; 3 uses
  %niter2007 = phi i64 [ 0, %.lr.ph1551.new ], [ %niter2007.next.1, %.loopexit.1 ]
  %i.afx = add nuw nsw i32 %.09861549, 1
  %.not11721544.not = icmp slt i32 %.09861549, %i.afg
  br i1 %.not11721544.not, label %.lr.ph1547, label %.loopexit

.lr.ph1547:                                       ; preds = %bb.dg
  %i.afy = trunc i64 %indvars.iv1745 to i32
  %i.afz = sub i32 %i.afk, %i.afy
  %i.aga = zext i32 %i.afz to i64
  %i.agb = shl nuw nsw i64 %i.aga, 3
  %i.agc = add nuw nsw i64 %i.agb, 8
  %i.agd = trunc nuw nsw i64 %indvars.iv1745 to i32
  %i.age = mul i32 %i.afj, %i.agd
  %i.agf = add i32 %i.afi, %i.age
  %i.agg = sext i32 %i.agf to i64
  %i.agh = shl nsw i64 %i.agg, 3
  %scevgep1738 = getelementptr i8, ptr %scevgep1737, i64 %i.agh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1738, i8 0, i64 %i.agc, i1 false), !tbaa !9
  br label %.loopexit

bb.dh:                                            ; preds = %bb.de
  br i1 %i.bh, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.agi = load i32, ptr %0, align 4, !tbaa !8    ; 3 uses
  %.not11631539 = icmp slt i32 %i.agi, 2
  br i1 %.not11631539, label %.loopexit1282, label %.lr.ph1542.preheader

.lr.ph1542.preheader:                             ; preds = %bb.di
  %i.agj = shl nsw i64 %i.ac, 3
  %scevgep1725 = getelementptr i8, ptr %13, i64 %i.agj ; 5 uses
  %i.agk = shl i32 %i.ab, 1
  %i.agl = or disjoint i32 %i.agk, 1              ; 5 uses
  %i.agm = add nsw i32 %i.agi, -1
  %wide.trip.count1735 = zext nneg i32 %i.agm to i64 ; 2 uses
  %xtraiter1995 = and i64 %wide.trip.count1735, 3 ; 3 uses
  %i.agn = add nsw i32 %i.agi, -2
  %i.ago = icmp ult i32 %i.agn, 3
  br i1 %i.ago, label %.lr.ph1542.epil.preheader, label %.lr.ph1542.preheader.new

.lr.ph1542.preheader.new:                         ; preds = %.lr.ph1542.preheader
  %unroll_iter1999 = and i64 %wide.trip.count1735, 2147483644
  br label %.lr.ph1542

.lr.ph1542:                                       ; preds = %.lr.ph1542, %.lr.ph1542.preheader.new
  %indvar1727 = phi i64 [ 0, %.lr.ph1542.preheader.new ], [ %indvar.next1728.3, %.lr.ph1542 ] ; 6 uses
  %niter2000 = phi i64 [ 0, %.lr.ph1542.preheader.new ], [ %niter2000.next.3, %.lr.ph1542 ]
  %i.agp = trunc nuw nsw i64 %indvar1727 to i32
  %i.agq = mul i32 %i.ab, %i.agp
  %i.agr = add i32 %i.agl, %i.agq
  %i.ags = sext i32 %i.agr to i64
  %i.agt = shl nsw i64 %i.ags, 3
  %scevgep1726 = getelementptr i8, ptr %scevgep1725, i64 %i.agt
  %i.agu = shl nuw nsw i64 %indvar1727, 3
  %i.agv = or disjoint i64 %i.agu, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1726, i8 0, i64 %i.agv, i1 false), !tbaa !9
  %indvar.next1728 = or disjoint i64 %indvar1727, 1 ; 2 uses
  %i.agw = trunc nuw nsw i64 %indvar.next1728 to i32
  %i.agx = mul i32 %i.ab, %i.agw
  %i.agy = add i32 %i.agl, %i.agx
  %i.agz = sext i32 %i.agy to i64
  %i.aha = shl nsw i64 %i.agz, 3
  %scevgep1726.1 = getelementptr i8, ptr %scevgep1725, i64 %i.aha
  %i.ahb = shl nuw nsw i64 %indvar.next1728, 3
  %i.ahc = add nuw nsw i64 %i.ahb, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1726.1, i8 0, i64 %i.ahc, i1 false), !tbaa !9
  %indvar.next1728.1 = or disjoint i64 %indvar1727, 2 ; 2 uses
  %i.ahd = trunc nuw nsw i64 %indvar.next1728.1 to i32
  %i.ahe = mul i32 %i.ab, %i.ahd
  %i.ahf = add i32 %i.agl, %i.ahe
  %i.ahg = sext i32 %i.ahf to i64
  %i.ahh = shl nsw i64 %i.ahg, 3
  %scevgep1726.2 = getelementptr i8, ptr %scevgep1725, i64 %i.ahh
  %i.ahi = shl nuw nsw i64 %indvar.next1728.1, 3
  %i.ahj = or disjoint i64 %i.ahi, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1726.2, i8 0, i64 %i.ahj, i1 false), !tbaa !9
  %indvar.next1728.2 = or disjoint i64 %indvar1727, 3 ; 2 uses
  %i.ahk = trunc nuw nsw i64 %indvar.next1728.2 to i32
  %i.ahl = mul i32 %i.ab, %i.ahk
  %i.ahm = add i32 %i.agl, %i.ahl
  %i.ahn = sext i32 %i.ahm to i64
  %i.aho = shl nsw i64 %i.ahn, 3
  %scevgep1726.3 = getelementptr i8, ptr %scevgep1725, i64 %i.aho
  %i.ahp = shl nuw nsw i64 %indvar.next1728.2, 3
  %i.ahq = add nuw nsw i64 %i.ahp, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1726.3, i8 0, i64 %i.ahq, i1 false), !tbaa !9
  %indvar.next1728.3 = add nuw nsw i64 %indvar1727, 4 ; 2 uses
  %niter2000.next.3 = add i64 %niter2000, 4       ; 2 uses
  %niter2000.ncmp.3 = icmp eq i64 %niter2000.next.3, %unroll_iter1999
  br i1 %niter2000.ncmp.3, label %.loopexit1282.loopexit1939.unr-lcssa, label %.lr.ph1542, !llvm.loop !42

bb.dj:                                            ; preds = %bb.dh
  br i1 %i.bi, label %bb.dk, label %bb.do

bb.dk:                                            ; preds = %bb.dj
  %i.ahr = load i32, ptr %0, align 4, !tbaa !8    ; 2 uses
  %.not11601530 = icmp slt i32 %i.ahr, 1
  br i1 %.not11601530, label %.loopexit1282.thread, label %.lr.ph1535

.lr.ph1535:                                       ; preds = %bb.dk
  %i.ahs = load i32, ptr %14, align 4, !tbaa !8   ; 5 uses
  %i.aht = sext i32 %i.ab to i64
  %i.ahu = add nuw i32 %i.ahr, 1
  %wide.trip.count1723 = zext i32 %i.ahu to i64
  br label %bb.dl

bb.dl:                                            ; preds = %.lr.ph1535, %.epilog-lcssa
  %indvar1985 = phi i64 [ 0, %.lr.ph1535 ], [ %indvar.next1986, %.epilog-lcssa ] ; 3 uses
  %indvars.iv1717 = phi i64 [ 1, %.lr.ph1535 ], [ %indvars.iv.next1718, %.epilog-lcssa ] ; 2 uses
  %.181532 = phi i32 [ 0, %.lr.ph1535 ], [ %spec.select1187.lcssa, %.epilog-lcssa ] ; 2 uses
  %.1910301531 = phi i32 [ 1, %.lr.ph1535 ], [ %spec.select1186.lcssa, %.epilog-lcssa ] ; 2 uses
  %i.ahv = add nuw nsw i64 %indvar1985, 1         ; 2 uses
  %i.ahw = mul nsw i64 %indvars.iv1717, %i.aht
  %invariant.gep1854 = getelementptr [8 x i8], ptr %i.ad, i64 %i.ahw ; 5 uses
  %xtraiter1987 = and i64 %i.ahv, 3               ; 3 uses
  %i.ahx = icmp ult i64 %indvar1985, 3
  br i1 %i.ahx, label %.epil.preheader1984, label %.new1982

.new1982:                                         ; preds = %bb.dl
  %unroll_iter1993 = and i64 %i.ahv, -4
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dm, %.new1982
  %indvars.iv1707 = phi i64 [ 1, %.new1982 ], [ %indvars.iv.next1708.3, %bb.dm ] ; 5 uses
  %.191528 = phi i32 [ %.181532, %.new1982 ], [ %spec.select1187.3, %bb.dm ] ; 2 uses
  %.2010311527 = phi i32 [ %.1910301531, %.new1982 ], [ %spec.select1186.3, %bb.dm ]
  %niter1994 = phi i64 [ 0, %.new1982 ], [ %niter1994.next.3, %bb.dm ]
  %i.ahy = add nsw i32 %.191528, 1
  %.not1162 = icmp sge i32 %.191528, %i.ahs       ; 2 uses
  %i.ahz = zext i1 %.not1162 to i32
  %spec.select1186 = add nsw i32 %.2010311527, %i.ahz ; 2 uses
  %spec.select1187 = select i1 %.not1162, i32 1, i32 %i.ahy ; 3 uses
  %gep1855 = getelementptr [8 x i8], ptr %invariant.gep1854, i64 %indvars.iv1707
  %i.aia = load double, ptr %gep1855, align 8, !tbaa !9
  %i.aib = mul nsw i32 %spec.select1186, %i.ab
  %i.aic = add nsw i32 %i.aib, %spec.select1187
  %i.aid = sext i32 %i.aic to i64
  %i.aie = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.aid
  store double %i.aia, ptr %i.aie, align 8, !tbaa !9
  %i.aif = add nsw i32 %spec.select1187, 1
  %.not1162.1 = icmp sge i32 %spec.select1187, %i.ahs ; 2 uses
  %i.aig = zext i1 %.not1162.1 to i32
  %spec.select1186.1 = add nsw i32 %spec.select1186, %i.aig ; 2 uses
  %spec.select1187.1 = select i1 %.not1162.1, i32 1, i32 %i.aif ; 3 uses
  %i.aih = getelementptr [8 x i8], ptr %invariant.gep1854, i64 %indvars.iv1707
  %gep1855.1 = getelementptr i8, ptr %i.aih, i64 8
  %i.aii = load double, ptr %gep1855.1, align 8, !tbaa !9
  %i.aij = mul nsw i32 %spec.select1186.1, %i.ab
  %i.aik = add nsw i32 %i.aij, %spec.select1187.1
  %i.ail = sext i32 %i.aik to i64
  %i.aim = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ail
  store double %i.aii, ptr %i.aim, align 8, !tbaa !9
  %i.ain = add nsw i32 %spec.select1187.1, 1
  %.not1162.2 = icmp sge i32 %spec.select1187.1, %i.ahs ; 2 uses
  %i.aio = zext i1 %.not1162.2 to i32
  %spec.select1186.2 = add nsw i32 %spec.select1186.1, %i.aio ; 2 uses
  %spec.select1187.2 = select i1 %.not1162.2, i32 1, i32 %i.ain ; 3 uses
  %i.aip = getelementptr [8 x i8], ptr %invariant.gep1854, i64 %indvars.iv1707
  %gep1855.2 = getelementptr i8, ptr %i.aip, i64 16
  %i.aiq = load double, ptr %gep1855.2, align 8, !tbaa !9
  %i.air = mul nsw i32 %spec.select1186.2, %i.ab
  %i.ais = add nsw i32 %i.air, %spec.select1187.2
  %i.ait = sext i32 %i.ais to i64
  %i.aiu = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ait
  store double %i.aiq, ptr %i.aiu, align 8, !tbaa !9
  %i.aiv = add nsw i32 %spec.select1187.2, 1
  %.not1162.3 = icmp sge i32 %spec.select1187.2, %i.ahs ; 2 uses
  %i.aiw = zext i1 %.not1162.3 to i32
  %spec.select1186.3 = add nsw i32 %spec.select1186.2, %i.aiw ; 4 uses
  %spec.select1187.3 = select i1 %.not1162.3, i32 1, i32 %i.aiv ; 4 uses
  %i.aix = getelementptr [8 x i8], ptr %invariant.gep1854, i64 %indvars.iv1707
  %gep1855.3 = getelementptr i8, ptr %i.aix, i64 24
  %i.aiy = load double, ptr %gep1855.3, align 8, !tbaa !9
  %i.aiz = mul nsw i32 %spec.select1186.3, %i.ab
  %i.aja = add nsw i32 %i.aiz, %spec.select1187.3
  %i.ajb = sext i32 %i.aja to i64
  %i.ajc = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ajb
  store double %i.aiy, ptr %i.ajc, align 8, !tbaa !9
  %indvars.iv.next1708.3 = add nuw nsw i64 %indvars.iv1707, 4 ; 2 uses
  %niter1994.next.3 = add i64 %niter1994, 4       ; 2 uses
  %niter1994.ncmp.3 = icmp eq i64 %niter1994.next.3, %unroll_iter1993
  br i1 %niter1994.ncmp.3, label %.unr-lcssa1983, label %bb.dm, !llvm.loop !43

.unr-lcssa1983:                                   ; preds = %bb.dm
  %lcmp.mod1989.not = icmp eq i64 %xtraiter1987, 0
  br i1 %lcmp.mod1989.not, label %.epilog-lcssa, label %.epil.preheader1984

.epil.preheader1984:                              ; preds = %.unr-lcssa1983, %bb.dl
  %indvars.iv1707.epil.init = phi i64 [ 1, %bb.dl ], [ %indvars.iv.next1708.3, %.unr-lcssa1983 ]
  %.191528.epil.init = phi i32 [ %.181532, %bb.dl ], [ %spec.select1187.3, %.unr-lcssa1983 ]
  %.2010311527.epil.init = phi i32 [ %.1910301531, %bb.dl ], [ %spec.select1186.3, %.unr-lcssa1983 ]
  %lcmp.mod1992 = icmp ne i64 %xtraiter1987, 0
  call void @llvm.assume(i1 %lcmp.mod1992)
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dn, %.epil.preheader1984
  %indvars.iv1707.epil = phi i64 [ %indvars.iv1707.epil.init, %.epil.preheader1984 ], [ %indvars.iv.next1708.epil, %bb.dn ] ; 2 uses
  %.191528.epil = phi i32 [ %.191528.epil.init, %.epil.preheader1984 ], [ %spec.select1187.epil, %bb.dn ] ; 2 uses
  %.2010311527.epil = phi i32 [ %.2010311527.epil.init, %.epil.preheader1984 ], [ %spec.select1186.epil, %bb.dn ]
  %epil.iter1988 = phi i64 [ 0, %.epil.preheader1984 ], [ %epil.iter1988.next, %bb.dn ]
  %i.ajd = add nsw i32 %.191528.epil, 1
  %.not1162.epil = icmp sge i32 %.191528.epil, %i.ahs ; 2 uses
  %i.aje = zext i1 %.not1162.epil to i32
  %spec.select1186.epil = add nsw i32 %.2010311527.epil, %i.aje ; 3 uses
  %spec.select1187.epil = select i1 %.not1162.epil, i32 1, i32 %i.ajd ; 3 uses
  %gep1855.epil = getelementptr [8 x i8], ptr %invariant.gep1854, i64 %indvars.iv1707.epil
  %i.ajf = load double, ptr %gep1855.epil, align 8, !tbaa !9
  %i.ajg = mul nsw i32 %spec.select1186.epil, %i.ab
  %i.ajh = add nsw i32 %i.ajg, %spec.select1187.epil
  %i.aji = sext i32 %i.ajh to i64
  %i.ajj = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.aji
  store double %i.ajf, ptr %i.ajj, align 8, !tbaa !9
  %indvars.iv.next1708.epil = add nuw nsw i64 %indvars.iv1707.epil, 1
  %epil.iter1988.next = add i64 %epil.iter1988, 1 ; 2 uses
  %epil.iter1988.cmp.not = icmp eq i64 %epil.iter1988.next, %xtraiter1987
  br i1 %epil.iter1988.cmp.not, label %.epilog-lcssa, label %bb.dn, !llvm.loop !44

.epilog-lcssa:                                    ; preds = %bb.dn, %.unr-lcssa1983
  %spec.select1186.lcssa = phi i32 [ %spec.select1186.3, %.unr-lcssa1983 ], [ %spec.select1186.epil, %bb.dn ] ; 2 uses
  %spec.select1187.lcssa = phi i32 [ %spec.select1187.3, %.unr-lcssa1983 ], [ %spec.select1187.epil, %bb.dn ] ; 2 uses
  %indvars.iv.next1718 = add nuw nsw i64 %indvars.iv1717, 1 ; 2 uses
  %exitcond1724.not = icmp eq i64 %indvars.iv.next1718, %wide.trip.count1723
  %indvar.next1986 = add i64 %indvar1985, 1
  br i1 %exitcond1724.not, label %.loopexit1282, label %bb.dl, !llvm.loop !45

bb.do:                                            ; preds = %bb.dj
  br i1 %i.bj, label %bb.dp, label %bb.dr

bb.dp:                                            ; preds = %bb.do
  %i.ajk = load i32, ptr %0, align 4, !tbaa !8    ; 3 uses
  %.not11571519 = icmp slt i32 %i.ajk, 1
  br i1 %.not11571519, label %.loopexit1282.thread, label %.lr.ph1524

.lr.ph1524:                                       ; preds = %bb.dp
  %i.ajl = load i32, ptr %14, align 4, !tbaa !8   ; 5 uses
  %i.ajm = add nuw i32 %i.ajk, 1
  %i.ajn = sext i32 %i.ab to i64
  %wide.trip.count1705 = zext i32 %i.ajm to i64   ; 3 uses
  %i.ajo = zext nneg i32 %i.ajk to i64
  %i.ajp = add nsw i64 %wide.trip.count1705, -2
  br label %bb.dq

bb.dq:                                            ; preds = %.lr.ph1524, %.unr-lcssa
  %indvar1977 = phi i64 [ 0, %.lr.ph1524 ], [ %indvar.next1978, %.unr-lcssa ] ; 3 uses
  %indvars.iv1695 = phi i64 [ 1, %.lr.ph1524 ], [ %indvars.iv.next1696, %.unr-lcssa ] ; 4 uses
  %.211521 = phi i32 [ 0, %.lr.ph1524 ], [ %spec.select1189.lcssa, %.unr-lcssa ] ; 2 uses
  %.2210331520 = phi i32 [ 1, %.lr.ph1524 ], [ %spec.select1188.lcssa, %.unr-lcssa ] ; 2 uses
  %i.ajq = sub i64 %i.ajo, %indvar1977
  %i.ajr = sub i64 %i.ajp, %indvar1977
  %i.ajs = mul nsw i64 %indvars.iv1695, %i.ajn
  %invariant.gep1852 = getelementptr [8 x i8], ptr %i.ad, i64 %i.ajs ; 5 uses
  %xtraiter1979 = and i64 %i.ajq, 3               ; 2 uses
  %lcmp.mod1980.not = icmp eq i64 %xtraiter1979, 0
  br i1 %lcmp.mod1980.not, label %.prol.loopexit1976, label %.prol.preheader1975

.prol.preheader1975:                              ; preds = %bb.dq, %.prol.preheader1975
  %indvars.iv1697.prol = phi i64 [ %indvars.iv.next1698.prol, %.prol.preheader1975 ], [ %indvars.iv1695, %bb.dq ] ; 2 uses
  %.221517.prol = phi i32 [ %spec.select1189.prol, %.prol.preheader1975 ], [ %.211521, %bb.dq ] ; 2 uses
  %.2310341516.prol = phi i32 [ %spec.select1188.prol, %.prol.preheader1975 ], [ %.2210331520, %bb.dq ]
  %prol.iter1981 = phi i64 [ %prol.iter1981.next, %.prol.preheader1975 ], [ 0, %bb.dq ]
  %i.ajt = add nsw i32 %.221517.prol, 1
  %.not1159.prol = icmp sge i32 %.221517.prol, %i.ajl ; 2 uses
  %i.aju = zext i1 %.not1159.prol to i32
  %spec.select1188.prol = add nsw i32 %.2310341516.prol, %i.aju ; 4 uses
  %spec.select1189.prol = select i1 %.not1159.prol, i32 1, i32 %i.ajt ; 4 uses
  %gep1853.prol = getelementptr [8 x i8], ptr %invariant.gep1852, i64 %indvars.iv1697.prol
  %i.ajv = load double, ptr %gep1853.prol, align 8, !tbaa !9
  %i.ajw = mul nsw i32 %spec.select1188.prol, %i.ab
  %i.ajx = add nsw i32 %i.ajw, %spec.select1189.prol
  %i.ajy = sext i32 %i.ajx to i64
  %i.ajz = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ajy
  store double %i.ajv, ptr %i.ajz, align 8, !tbaa !9
  %indvars.iv.next1698.prol = add nuw nsw i64 %indvars.iv1697.prol, 1 ; 2 uses
  %prol.iter1981.next = add i64 %prol.iter1981, 1 ; 2 uses
  %prol.iter1981.cmp.not = icmp eq i64 %prol.iter1981.next, %xtraiter1979
  br i1 %prol.iter1981.cmp.not, label %.prol.loopexit1976, label %.prol.preheader1975, !llvm.loop !46

.prol.loopexit1976:                               ; preds = %.prol.preheader1975, %bb.dq
  %spec.select1188.lcssa.unr = phi i32 [ poison, %bb.dq ], [ %spec.select1188.prol, %.prol.preheader1975 ]
  %spec.select1189.lcssa.unr = phi i32 [ poison, %bb.dq ], [ %spec.select1189.prol, %.prol.preheader1975 ]
  %indvars.iv1697.unr = phi i64 [ %indvars.iv1695, %bb.dq ], [ %indvars.iv.next1698.prol, %.prol.preheader1975 ]
  %.221517.unr = phi i32 [ %.211521, %bb.dq ], [ %spec.select1189.prol, %.prol.preheader1975 ]
  %.2310341516.unr = phi i32 [ %.2210331520, %bb.dq ], [ %spec.select1188.prol, %.prol.preheader1975 ]
  %i.aka = icmp ult i64 %i.ajr, 3
  br i1 %i.aka, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit1976, %.new
  %indvars.iv1697 = phi i64 [ %indvars.iv.next1698.3, %.new ], [ %indvars.iv1697.unr, %.prol.loopexit1976 ] ; 5 uses
  %.221517 = phi i32 [ %spec.select1189.3, %.new ], [ %.221517.unr, %.prol.loopexit1976 ] ; 2 uses
  %.2310341516 = phi i32 [ %spec.select1188.3, %.new ], [ %.2310341516.unr, %.prol.loopexit1976 ]
  %i.akb = add nsw i32 %.221517, 1
  %.not1159 = icmp sge i32 %.221517, %i.ajl       ; 2 uses
  %i.akc = zext i1 %.not1159 to i32
  %spec.select1188 = add nsw i32 %.2310341516, %i.akc ; 2 uses
  %spec.select1189 = select i1 %.not1159, i32 1, i32 %i.akb ; 3 uses
  %gep1853 = getelementptr [8 x i8], ptr %invariant.gep1852, i64 %indvars.iv1697
  %i.akd = load double, ptr %gep1853, align 8, !tbaa !9
  %i.ake = mul nsw i32 %spec.select1188, %i.ab
  %i.akf = add nsw i32 %i.ake, %spec.select1189
  %i.akg = sext i32 %i.akf to i64
  %i.akh = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.akg
  store double %i.akd, ptr %i.akh, align 8, !tbaa !9
  %i.aki = add nsw i32 %spec.select1189, 1
  %.not1159.1 = icmp sge i32 %spec.select1189, %i.ajl ; 2 uses
  %i.akj = zext i1 %.not1159.1 to i32
  %spec.select1188.1 = add nsw i32 %spec.select1188, %i.akj ; 2 uses
  %spec.select1189.1 = select i1 %.not1159.1, i32 1, i32 %i.aki ; 3 uses
  %i.akk = getelementptr [8 x i8], ptr %invariant.gep1852, i64 %indvars.iv1697
  %gep1853.1 = getelementptr i8, ptr %i.akk, i64 8
  %i.akl = load double, ptr %gep1853.1, align 8, !tbaa !9
  %i.akm = mul nsw i32 %spec.select1188.1, %i.ab
  %i.akn = add nsw i32 %i.akm, %spec.select1189.1
  %i.ako = sext i32 %i.akn to i64
  %i.akp = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ako
  store double %i.akl, ptr %i.akp, align 8, !tbaa !9
  %i.akq = add nsw i32 %spec.select1189.1, 1
  %.not1159.2 = icmp sge i32 %spec.select1189.1, %i.ajl ; 2 uses
  %i.akr = zext i1 %.not1159.2 to i32
  %spec.select1188.2 = add nsw i32 %spec.select1188.1, %i.akr ; 2 uses
  %spec.select1189.2 = select i1 %.not1159.2, i32 1, i32 %i.akq ; 3 uses
  %i.aks = getelementptr [8 x i8], ptr %invariant.gep1852, i64 %indvars.iv1697
  %gep1853.2 = getelementptr i8, ptr %i.aks, i64 16
  %i.akt = load double, ptr %gep1853.2, align 8, !tbaa !9
  %i.aku = mul nsw i32 %spec.select1188.2, %i.ab
  %i.akv = add nsw i32 %i.aku, %spec.select1189.2
  %i.akw = sext i32 %i.akv to i64
  %i.akx = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.akw
  store double %i.akt, ptr %i.akx, align 8, !tbaa !9
  %i.aky = add nsw i32 %spec.select1189.2, 1
  %.not1159.3 = icmp sge i32 %spec.select1189.2, %i.ajl ; 2 uses
  %i.akz = zext i1 %.not1159.3 to i32
  %spec.select1188.3 = add nsw i32 %spec.select1188.2, %i.akz ; 3 uses
  %spec.select1189.3 = select i1 %.not1159.3, i32 1, i32 %i.aky ; 3 uses
  %i.ala = getelementptr [8 x i8], ptr %invariant.gep1852, i64 %indvars.iv1697
  %gep1853.3 = getelementptr i8, ptr %i.ala, i64 24
  %i.alb = load double, ptr %gep1853.3, align 8, !tbaa !9
  %i.alc = mul nsw i32 %spec.select1188.3, %i.ab
  %i.ald = add nsw i32 %i.alc, %spec.select1189.3
  %i.ale = sext i32 %i.ald to i64
  %i.alf = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ale
  store double %i.alb, ptr %i.alf, align 8, !tbaa !9
  %indvars.iv.next1698.3 = add nuw nsw i64 %indvars.iv1697, 4 ; 2 uses
  %exitcond1702.not.3 = icmp eq i64 %indvars.iv.next1698.3, %wide.trip.count1705
  br i1 %exitcond1702.not.3, label %.unr-lcssa, label %.new, !llvm.loop !47

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit1976
  %spec.select1188.lcssa = phi i32 [ %spec.select1188.lcssa.unr, %.prol.loopexit1976 ], [ %spec.select1188.3, %.new ] ; 2 uses
  %spec.select1189.lcssa = phi i32 [ %spec.select1189.lcssa.unr, %.prol.loopexit1976 ], [ %spec.select1189.3, %.new ] ; 2 uses
  %indvars.iv.next1696 = add nuw nsw i64 %indvars.iv1695, 1 ; 2 uses
  %exitcond1706.not = icmp eq i64 %indvars.iv.next1696, %wide.trip.count1705
  %indvar.next1978 = add i64 %indvar1977, 1
  br i1 %exitcond1706.not, label %.loopexit1282, label %bb.dq, !llvm.loop !48

bb.dr:                                            ; preds = %bb.do
  br i1 %i.bc, label %bb.ds, label %.thread1200

bb.ds:                                            ; preds = %bb.dr
  br i1 %i.az, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  store i32 0, ptr %i.z, align 4, !tbaa !8
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  br i1 %i.ba, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  store i32 0, ptr %i.y, align 4, !tbaa !8
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.alg = load i32, ptr %i.z, align 4, !tbaa !8  ; 9 uses
  %.not11521500 = icmp slt i32 %i.alg, 1
  br i1 %.not11521500, label %._crit_edge1504, label %.lr.ph1503

.lr.ph1503:                                       ; preds = %bb.dw
  %i.alh = load i32, ptr %i.y, align 4, !tbaa !8  ; 2 uses
  %i.ali = load i32, ptr %0, align 4, !tbaa !8    ; 2 uses
  %i.alj = add nuw i32 %i.alg, 1                  ; 2 uses
  %i.alk = sext i32 %i.alh to i64                 ; 3 uses
  %i.all = sext i32 %i.ali to i64                 ; 6 uses
  %i.alm = sext i32 %i.ab to i64                  ; 3 uses
  %wide.trip.count1681 = zext i32 %i.alj to i64
  %i.aln = add nsw i64 %i.alk, 1
  %i.alo = add i32 %i.alg, %i.ab
  %i.alp = add i32 %i.ab, -1
  %i.alq = shl nsw i64 %i.alm, 3
  %i.alr = add i64 %i.alq, %i.a
  %i.als = shl nsw i64 %i.ac, 3                   ; 2 uses
  %i.alt = add i64 %i.alr, %i.als
  %i.alu = shl nsw i64 %i.alm, 3
  %i.alv = add nsw i64 %i.alk, 1                  ; 2 uses
  %i.alw = add i64 %i.als, %i.a
  %i.alx = add i32 %i.alg, %i.ab
  %i.aly = add i32 %i.ab, -1
  br label %bb.dx

bb.dx:                                            ; preds = %.lr.ph1503, %._crit_edge1499
  %indvar1878 = phi i64 [ 0, %.lr.ph1503 ], [ %indvar.next1879, %._crit_edge1499 ] ; 7 uses
  %indvars.iv1677 = phi i64 [ 1, %.lr.ph1503 ], [ %indvars.iv.next1678, %._crit_edge1499 ] ; 4 uses
  %indvars.iv1672.in = phi i64 [ %i.alk, %.lr.ph1503 ], [ %indvars.iv1672, %._crit_edge1499 ]
  %i.alz = add nsw i64 %i.alv, %indvar1878        ; 2 uses
  %smin1883 = call i64 @llvm.smin.i64(i64 %i.alz, i64 %i.all)
  %i.ama = add i64 %smin1883, 1
  %smin1884 = call i64 @llvm.smin.i64(i64 %i.alz, i64 %i.all)
  %smin1885 = call i64 @llvm.smin.i64(i64 %smin1884, i64 1)
  %i.amb = sub i64 %i.ama, %smin1885              ; 7 uses
  %i.amc = mul i64 %i.alu, %indvar1878
  %i.amd = add i64 %i.alt, %i.amc
  %i.ame = add nsw i64 %i.alv, %indvar1878
  %smin1882 = call i64 @llvm.smin.i64(i64 %i.ame, i64 %i.all) ; 2 uses
  %i.amf = shl nsw i64 %smin1882, 3
  %i.amg = add i64 %i.amd, %i.amf
  %i.amh = trunc i64 %indvar1878 to i32
  %i.ami = mul i32 %i.aly, %i.amh
  %i.amj = add i32 %i.ami, %i.alx
  %i.amk = trunc i64 %smin1882 to i32
  %i.aml = add i32 %i.amj, %i.amk
  %i.amm = sext i32 %i.aml to i64
  %i.amn = shl nsw i64 %i.amm, 3
  %i.amo = add i64 %i.alw, %i.amn
  %i.amp = add nsw i64 %i.aln, %indvar1878        ; 2 uses
  %smin = call i64 @llvm.smin.i64(i64 %i.amp, i64 %i.all) ; 2 uses
  %smin1880 = call i64 @llvm.smin.i64(i64 %i.amp, i64 %i.all)
  %smin1881 = call i64 @llvm.smin.i64(i64 %smin1880, i64 1)
  %i.amq = sub i64 %smin, %smin1881               ; 2 uses
  %i.amr = trunc i64 %indvar1878 to i32
  %i.ams = mul i32 %i.alp, %i.amr
  %i.amt = add i32 %i.ams, %i.alo
  %i.amu = trunc i64 %smin to i32
  %i.amv = add i32 %i.amt, %i.amu                 ; 2 uses
  %indvars.iv1672 = add nsw i64 %indvars.iv1672.in, 1 ; 2 uses
  %i.amw = trunc i64 %indvars.iv1677 to i32
  %i.amx = add i32 %i.alh, %i.amw
  %.1190 = call i32 @llvm.smin.i32(i32 %i.amx, i32 %i.ali)
  %i.amy = icmp sgt i32 %.1190, 0
  br i1 %i.amy, label %iter.check, label %._crit_edge1499

iter.check:                                       ; preds = %bb.dx
  %smin1674 = call i64 @llvm.smin.i64(i64 %indvars.iv1672, i64 %i.all) ; 6 uses
  %i.amz = mul nsw i64 %indvars.iv1677, %i.alm    ; 2 uses
  %i.ana = trunc nuw nsw i64 %indvars.iv1677 to i32
  %i.anb = sub i32 %i.alj, %i.ana
  %i.anc = trunc nsw i64 %i.amz to i32
  %i.and = add i32 %i.anb, %i.anc                 ; 3 uses
  %invariant.gep1848 = getelementptr [8 x i8], ptr %i.ad, i64 %i.amz ; 3 uses
  %min.iters.check = icmp ult i64 %i.amb, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.ane = trunc i64 %i.amq to i32
  %i.anf = sub i32 %i.amv, %i.ane
  %i.ang = icmp sgt i32 %i.anf, %i.amv
  %i.anh = icmp ugt i64 %i.amq, 4294967295
  %i.ani = or i1 %i.ang, %i.anh
  %i.anj = sub i64 %i.amo, %i.amg
  %diff.check = icmp ugt i64 %i.anj, -128
  %or.cond1935 = select i1 %i.ani, i1 true, i1 %diff.check
  br i1 %or.cond1935, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check1886 = icmp ult i64 %i.amb, 16
  br i1 %min.iters.check1886, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ank = and i64 %i.amb, 12
  %n.vec = and i64 %i.amb, -16                    ; 4 uses
  %i.anl = sub i64 %smin1674, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.anm = sub i64 %smin1674, %index              ; 2 uses
  %i.ann = getelementptr [8 x i8], ptr %invariant.gep1848, i64 %i.anm ; 4 uses
  %i.ano = getelementptr i8, ptr %i.ann, i64 -24
  %i.anp = getelementptr i8, ptr %i.ann, i64 -56
  %i.anq = getelementptr i8, ptr %i.ann, i64 -88
  %i.anr = getelementptr i8, ptr %i.ann, i64 -120
  %wide.load = load <4 x double>, ptr %i.ano, align 8, !tbaa !9
  %wide.load1887 = load <4 x double>, ptr %i.anp, align 8, !tbaa !9
  %wide.load1888 = load <4 x double>, ptr %i.anq, align 8, !tbaa !9
  %wide.load1889 = load <4 x double>, ptr %i.anr, align 8, !tbaa !9
  %i.ans = trunc nuw nsw i64 %i.anm to i32
  %i.ant = add i32 %i.and, %i.ans
  %i.anu = sext i32 %i.ant to i64
  %i.anv = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.anu ; 4 uses
  %i.anw = getelementptr inbounds i8, ptr %i.anv, i64 -24
  %i.anx = getelementptr inbounds i8, ptr %i.anv, i64 -56
  %i.any = getelementptr inbounds i8, ptr %i.anv, i64 -88
  %i.anz = getelementptr inbounds i8, ptr %i.anv, i64 -120
  store <4 x double> %wide.load, ptr %i.anw, align 8, !tbaa !9
  store <4 x double> %wide.load1887, ptr %i.anx, align 8, !tbaa !9
  store <4 x double> %wide.load1888, ptr %i.any, align 8, !tbaa !9
  store <4 x double> %wide.load1889, ptr %i.anz, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aoa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aoa, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.amb, %n.vec
  br i1 %cmp.n, label %._crit_edge1499, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ank, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1890 = and i64 %i.amb, -4                 ; 3 uses
  %i.aob = sub i64 %smin1674, %n.vec1890
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1891 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1893, %vec.epilog.vector.body ] ; 2 uses
  %i.aoc = sub i64 %smin1674, %index1891          ; 2 uses
  %i.aod = getelementptr [8 x i8], ptr %invariant.gep1848, i64 %i.aoc
  %i.aoe = getelementptr i8, ptr %i.aod, i64 -24
  %wide.load1892 = load <4 x double>, ptr %i.aoe, align 8, !tbaa !9
  %i.aof = trunc nuw nsw i64 %i.aoc to i32
  %i.aog = add i32 %i.and, %i.aof
  %i.aoh = sext i32 %i.aog to i64
  %i.aoi = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.aoh
  %i.aoj = getelementptr inbounds i8, ptr %i.aoi, i64 -24
  store <4 x double> %wide.load1892, ptr %i.aoj, align 8, !tbaa !9
  %index.next1893 = add nuw i64 %index1891, 4     ; 2 uses
  %i.aok = icmp eq i64 %index.next1893, %n.vec1890
  br i1 %i.aok, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !53

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1894 = icmp eq i64 %i.amb, %n.vec1890
  br i1 %cmp.n1894, label %._crit_edge1499, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv1675.ph = phi i64 [ %smin1674, %vector.scevcheck ], [ %smin1674, %iter.check ], [ %i.anl, %vec.epilog.iter.check ], [ %i.aob, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv1675 = phi i64 [ %indvars.iv.next1676, %vec.epilog.scalar.ph ], [ %indvars.iv1675.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %gep1849 = getelementptr [8 x i8], ptr %invariant.gep1848, i64 %indvars.iv1675
  %i.aol = load double, ptr %gep1849, align 8, !tbaa !9
  %i.aom = trunc nuw nsw i64 %indvars.iv1675 to i32
  %i.aon = add i32 %i.and, %i.aom
  %i.aoo = sext i32 %i.aon to i64
  %i.aop = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.aoo
  store double %i.aol, ptr %i.aop, align 8, !tbaa !9
  %indvars.iv.next1676 = add nsw i64 %indvars.iv1675, -1
  %i.aoq = icmp sgt i64 %indvars.iv1675, 1
  br i1 %i.aoq, label %vec.epilog.scalar.ph, label %._crit_edge1499, !llvm.loop !54

._crit_edge1499:                                  ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.dx
  %indvars.iv.next1678 = add nuw nsw i64 %indvars.iv1677, 1 ; 2 uses
  %exitcond1682.not = icmp eq i64 %indvars.iv.next1678, %wide.trip.count1681
  %indvar.next1879 = add i64 %indvar1878, 1
  br i1 %exitcond1682.not, label %._crit_edge1504, label %bb.dx, !llvm.loop !55

._crit_edge1504:                                  ; preds = %._crit_edge1499, %bb.dw
  %i.aor = load i32, ptr %1, align 4, !tbaa !8    ; 2 uses
  %i.aos = add nsw i32 %i.alg, 2                  ; 3 uses
  %.not11531511 = icmp sgt i32 %i.aos, %i.aor
  br i1 %.not11531511, label %.loopexit1282, label %.lr.ph1514

.lr.ph1514:                                       ; preds = %._crit_edge1504
  %i.aot = load i32, ptr %i.y, align 4, !tbaa !8  ; 3 uses
  %i.aou = load i32, ptr %0, align 4, !tbaa !8    ; 3 uses
  %i.aov = add i32 %i.alg, 1
  %i.aow = sext i32 %i.aos to i64                 ; 2 uses
  %i.aox = sext i32 %i.alg to i64
  %i.aoy = sext i32 %i.ab to i64                  ; 3 uses
  %i.aoz = add i32 %i.aor, 1
  %i.apa = add i32 %i.alg, %i.aot
  %i.apb = add i32 %i.apa, 2
  %i.apc = mul i32 %i.ab, %i.aos
  %i.apd = add i32 %i.apc, 1                      ; 2 uses
  %i.ape = mul nsw i64 %i.aoy, %i.aow
  %i.apf = mul nsw i64 %i.aoy, -8
  %i.apg = add i32 %i.alg, %i.aot
  %i.aph = add i32 %i.apg, 2
  br label %bb.dy

bb.dy:                                            ; preds = %.lr.ph1514, %._crit_edge1510
  %indvar1901 = phi i64 [ 0, %.lr.ph1514 ], [ %indvar.next1902, %._crit_edge1510 ] ; 4 uses
  %indvar1897 = phi i32 [ 0, %.lr.ph1514 ], [ %indvar.next1898, %._crit_edge1510 ] ; 3 uses
  %indvars.iv1689 = phi i64 [ %i.aow, %.lr.ph1514 ], [ %indvars.iv.next1690, %._crit_edge1510 ] ; 5 uses
  %indvars.iv1683 = phi i32 [ 2, %.lr.ph1514 ], [ %indvars.iv.next1684, %._crit_edge1510 ] ; 7 uses
  %i.api = trunc i64 %indvar1901 to i32
  %i.apj = add i32 %i.aph, %i.api
  %i.apk = call i32 @llvm.smin.i32(i32 %i.aou, i32 %i.apj)
  %i.apl = sext i32 %indvars.iv1683 to i64
  %i.apm = call i32 @llvm.smax.i32(i32 %i.apk, i32 %indvars.iv1683)
  %smax1905 = sext i32 %i.apm to i64
  %i.apn = add nsw i64 %smax1905, 1
  %i.apo = sub nsw i64 %i.apn, %i.apl             ; 7 uses
  %i.app = mul i64 %i.apf, %indvar1901
  %i.apq = trunc i64 %indvar1901 to i32
  %i.apr = mul i32 %i.ab, %i.apq
  %i.aps = add i32 %i.apr, %i.apd
  %i.apt = sext i32 %i.aps to i64
  %i.apu = shl nsw i64 %i.apt, 3
  %i.apv = sext i32 %indvars.iv1683 to i64
  %i.apw = add i64 %i.app, %i.apu
  %i.apx = add i64 %i.ape, %i.apv
  %i.apy = shl i64 %i.apx, 3
  %i.apz = add i32 %i.apb, %indvar1897
  %i.aqa = call i32 @llvm.smin.i32(i32 %i.aou, i32 %i.apz)
  %i.aqb = sext i32 %indvars.iv1683 to i64
  %i.aqc = call i32 @llvm.smax.i32(i32 %i.aqa, i32 %indvars.iv1683)
  %smax = sext i32 %i.aqc to i64
  %i.aqd = sub nsw i64 %smax, %i.aqb              ; 2 uses
  %i.aqe = mul i32 %i.ab, %indvar1897
  %i.aqf = add i32 %i.apd, %i.aqe                 ; 2 uses
  %i.aqg = trunc i64 %indvars.iv1689 to i32
  %i.aqh = add i32 %i.aot, %i.aqg
  %.1191 = call i32 @llvm.smin.i32(i32 %i.aqh, i32 %i.aou)
  %i.aqi = sub nsw i64 %indvars.iv1689, %i.aox
  %i.aqj = sext i32 %.1191 to i64                 ; 2 uses
  %.not11551506 = icmp sgt i64 %i.aqi, %i.aqj
  br i1 %.not11551506, label %._crit_edge1510, label %iter.check1921

iter.check1921:                                   ; preds = %bb.dy
  %i.aqk = sext i32 %indvars.iv1683 to i64        ; 6 uses
  %i.aql = mul nsw i64 %indvars.iv1689, %i.aoy    ; 2 uses
  %i.aqm = trunc nsw i64 %indvars.iv1689 to i32
end_hunk_1
