Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_transform?download=true
inline.NumInlined: 16
inline.NumDeleted: 7
begin_hunk_0_@lv_draw_sw_transform:bb.a
  %.sroa.4.0.insert.shift.i.i = and i32 %i.pf, -16777216
  %.sroa.04.0.insert.insert.i.i = or i32 %i.qd, %.sroa.4.0.insert.shift.i.i ; 2 uses
  store i32 %.sroa.04.0.insert.insert.i.i, ptr %i.pe, align 1
  %.sroa.748.0.insert.ext.i = zext i8 %.sroa.748.0.copyload.i to i32 ; 2 uses
  %.sroa.748.0.insert.shift.i = shl nuw i32 %.sroa.748.0.insert.ext.i, 24 ; 3 uses
  %i.qe = icmp eq i8 %.sroa.748.0.copyload.i, 0   ; 2 uses
  br i1 %i.qe, label %unpremultiply.exit277.i, label %bb.bw

bb.bw:                                            ; preds = %unpremultiply.exit.i
  %.sroa.039.0.insert.ext.i = zext i24 %.sroa.039.sroa.0.0.copyload.i to i32 ; 2 uses
  %.sroa.039.0.insert.insert.i = or disjoint i32 %.sroa.748.0.insert.shift.i, %.sroa.039.0.insert.ext.i
  %.sroa.5.0.extract.shift.i267.i = lshr i32 %.sroa.039.0.insert.insert.i, 8 ; 2 uses
  %.rhs.trunc.i268.i = zext i8 %.sroa.748.0.copyload.i to i16
  %i.qf = udiv i16 -256, %.rhs.trunc.i268.i
  %.zext.i269.i = zext i16 %i.qf to i32           ; 3 uses
  %i.qg = and i32 %.sroa.5.0.extract.shift.i267.i, 255
  %i.qh = mul nuw nsw i32 %i.qg, %.zext.i269.i
  %i.qi = and i32 %.sroa.039.0.insert.ext.i, 255
  %i.qj = mul nuw nsw i32 %i.qi, %.zext.i269.i
  %i.qk = lshr i32 %i.qj, 8
  %i.ql = and i32 %.sroa.5.0.extract.shift.i267.i, 65280
  %i.qm = mul nuw i32 %i.ql, %.zext.i269.i
  %i.qn = and i32 %i.qm, 16711680
  %i.qo = and i32 %i.qh, 65280
  %i.qp = and i32 %i.qk, 255
  %i.qq = or disjoint i32 %i.qn, %i.qo
  %i.qr = or disjoint i32 %i.qq, %i.qp
  %i.qs = or disjoint i32 %i.qr, %.sroa.748.0.insert.shift.i
  br label %unpremultiply.exit277.i

unpremultiply.exit277.i:                          ; preds = %bb.bw, %unpremultiply.exit.i
  %.sroa.5.0.i270.i = phi i32 [ %i.qs, %bb.bw ], [ %.sroa.748.0.insert.shift.i, %unpremultiply.exit.i ] ; 2 uses
  %.sroa.7.0.insert.ext.i = zext i8 %.sroa.7.0.copyload.i to i32 ; 2 uses
  %i.qt = icmp eq i8 %.sroa.7.0.copyload.i, 0
  br i1 %i.qt, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %unpremultiply.exit277.i
  %i.qu = getelementptr inbounds nuw i8, ptr %i.pe, i64 3
  %i.qv = sub nuw nsw i32 255, %.0242.i
  %i.qw = mul nuw nsw i32 %.sroa.11.0.extract.shift.i.i, %i.qv
  %i.qx = lshr i32 %i.qw, 8
  %i.qy = trunc nuw i32 %i.qx to i8
  store i8 %i.qy, ptr %i.qu, align 1, !tbaa !12
  br label %bb.cc

bb.by:                                            ; preds = %unpremultiply.exit277.i
  %.sroa.7.0.insert.shift.i = shl nuw i32 %.sroa.7.0.insert.ext.i, 24 ; 2 uses
  %.sroa.017.0.insert.ext.i = zext i24 %.sroa.017.sroa.0.0.copyload.i to i32 ; 2 uses
  %.sroa.017.0.insert.insert.i = or disjoint i32 %.sroa.7.0.insert.shift.i, %.sroa.017.0.insert.ext.i
  %.sroa.5.0.extract.shift.i279.i = lshr i32 %.sroa.017.0.insert.insert.i, 8 ; 2 uses
  %.rhs.trunc.i280.i = zext i8 %.sroa.7.0.copyload.i to i16
  %i.qz = udiv i16 -256, %.rhs.trunc.i280.i
  %.zext.i281.i = zext i16 %i.qz to i32           ; 3 uses
  %i.ra = and i32 %.sroa.5.0.extract.shift.i279.i, 255
  %i.rb = mul nuw nsw i32 %i.ra, %.zext.i281.i
  %i.rc = and i32 %.sroa.017.0.insert.ext.i, 255
  %i.rd = mul nuw nsw i32 %i.rc, %.zext.i281.i
  %i.re = lshr i32 %i.rd, 8
  %i.rf = and i32 %.sroa.5.0.extract.shift.i279.i, 65280
  %i.rg = mul nuw i32 %i.rf, %.zext.i281.i
  %i.rh = and i32 %i.rg, 16711680
  %i.ri = and i32 %i.rb, 65280
  %i.rj = and i32 %i.re, 255
  %i.rk = or disjoint i32 %i.ri, %i.rh
  %i.rl = or disjoint i32 %i.rk, %i.rj            ; 2 uses
  %i.rm = or disjoint i32 %i.rl, %.sroa.7.0.insert.shift.i
  %i.rn = tail call zeroext i1 @lv_color32_eq(i32 %.sroa.04.0.insert.insert.i.i, i32 %i.rm) #4
  br i1 %i.rn, label %bb.cc, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ro = getelementptr inbounds nuw i8, ptr %i.pe, i64 3 ; 2 uses
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !12  ; 2 uses
  %.not261.i = icmp eq i8 %i.rp, 0
  br i1 %.not261.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.rq = mul nuw nsw i32 %.0242.i, %.sroa.7.0.insert.ext.i
  %i.rr = zext i8 %i.rp to i32
  %i.rs = sub nuw nsw i32 255, %.0242.i
  %i.rt = mul nuw nsw i32 %i.rs, %i.rr
  %i.ru = add nuw nsw i32 %i.rt, %i.rq
  %i.rv = lshr i32 %i.ru, 8
  %i.rw = trunc i32 %i.rv to i8
  store i8 %i.rw, ptr %i.ro, align 1, !tbaa !12
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.sroa.7.0.insert.shift33.i = shl nuw nsw i32 %.0242.i, 24
  %.sroa.017.0.insert.insert25.i = or disjoint i32 %i.rl, %.sroa.7.0.insert.shift33.i
  %i.rx = load i32, ptr %i.pe, align 1
  %i.ry = tail call i32 @lv_color_mix32(i32 %.sroa.017.0.insert.insert25.i, i32 %i.rx) #4
  store i32 %i.ry, ptr %i.pe, align 1
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.by, %bb.bx
  br i1 %i.qe, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.rz = getelementptr inbounds nuw i8, ptr %i.pe, i64 3 ; 2 uses
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !12
  %i.sb = zext i8 %i.sa to i32
  %i.sc = sub nuw nsw i32 255, %.0243.i
  %i.sd = mul nuw nsw i32 %i.sc, %i.sb
  %i.se = lshr i32 %i.sd, 8
  %i.sf = trunc nuw i32 %i.se to i8               ; 2 uses
  store i8 %i.sf, ptr %i.rz, align 1, !tbaa !12
  br label %._crit_edge320.i

bb.ce:                                            ; preds = %bb.cc
  %i.sg = load i32, ptr %i.pe, align 1
  %.sroa.039.0.insert.ext41.i = and i32 %.sroa.5.0.i270.i, 16777215
  %i.sh = tail call zeroext i1 @lv_color32_eq(i32 %i.sg, i32 %.sroa.5.0.i270.i) #4
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.pe, i64 3 ; 2 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !12 ; 3 uses
  br i1 %i.sh, label %._crit_edge320.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %.not262.i = icmp eq i8 %.pre.i, 0
  br i1 %.not262.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.si = mul nuw nsw i32 %.0243.i, %.sroa.748.0.insert.ext.i
  %i.sj = zext i8 %.pre.i to i32
  %i.sk = sub nuw nsw i32 255, %.0243.i
  %i.sl = mul nuw nsw i32 %i.sk, %i.sj
  %i.sm = add nuw nsw i32 %i.sl, %i.si
  %i.sn = lshr i32 %i.sm, 8
  %i.so = trunc i32 %i.sn to i8
  store i8 %i.so, ptr %.phi.trans.insert.i, align 1, !tbaa !12
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.sroa.748.0.insert.shift56.i = shl nuw nsw i32 %.0243.i, 24
  %.sroa.039.0.insert.insert47.i = or disjoint i32 %.sroa.039.0.insert.ext41.i, %.sroa.748.0.insert.shift56.i
  %i.sp = load i32, ptr %i.pe, align 1
  %i.sq = tail call i32 @lv_color_mix32(i32 %.sroa.039.0.insert.insert47.i, i32 %i.sp) #4 ; 2 uses
  store i32 %i.sq, ptr %i.pe, align 1
  %i.sr = lshr i32 %i.sq, 24
  %i.ss = trunc nuw i32 %i.sr to i8
  br label %._crit_edge320.i

._crit_edge320.i:                                 ; preds = %bb.ch, %bb.ce, %bb.cd
  %i.st = phi i8 [ %i.sf, %bb.cd ], [ %i.ss, %bb.ch ], [ %.pre.i, %bb.ce ]
  %i.su = getelementptr inbounds nuw i8, ptr %i.pe, i64 2 ; 2 uses
  %i.sv = load i8, ptr %i.su, align 1, !tbaa !13
  %i.sw = zext i8 %i.sv to i16
  %i.sx = zext i8 %i.st to i16                    ; 3 uses
  %i.sy = mul nuw i16 %i.sw, %i.sx
  %i.sz = lshr i16 %i.sy, 8
  %i.ta = trunc nuw i16 %i.sz to i8
  store i8 %i.ta, ptr %i.su, align 1, !tbaa !13
  %i.tb = getelementptr inbounds nuw i8, ptr %i.pe, i64 1 ; 2 uses
  %i.tc = load i8, ptr %i.tb, align 1, !tbaa !14
  %i.td = zext i8 %i.tc to i16
  %i.te = mul nuw i16 %i.td, %i.sx
  %i.tf = lshr i16 %i.te, 8
  %i.tg = trunc nuw i16 %i.tf to i8
  store i8 %i.tg, ptr %i.tb, align 1, !tbaa !14
  %i.th = load i8, ptr %i.pe, align 1, !tbaa !15
  %i.ti = zext i8 %i.th to i16
  %i.tj = mul nuw i16 %i.ti, %i.sx
  %i.tk = lshr i16 %i.tj, 8
  %i.tl = trunc nuw i16 %i.tk to i8
  store i8 %i.tl, ptr %i.pe, align 1, !tbaa !15
  br label %bb.co

bb.ci:                                            ; preds = %bb.bt, %bb.bs, %bb.br
  %i.tm = icmp eq i32 %i.oj, 0
  %or.cond3.i276 = and i1 %i.tm, %i.os
  %or.cond3.not.i277 = xor i1 %or.cond3.i276, true
  %i.tn = icmp ne i32 %i.oj, %i.eu
  %or.cond5.not.i278 = or i1 %i.tn, %i.os
  %or.cond.i279 = select i1 %or.cond3.not.i277, i1 %or.cond5.not.i278, i1 false
  br i1 %or.cond.i279, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %.sroa.11.0.extract.shift.i290.i = lshr i32 %i.pf, 24 ; 3 uses
  %i.to = icmp eq i32 %.sroa.11.0.extract.shift.i290.i, 0
  br i1 %i.to, label %unpremultiply.exit301.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %.sroa.5.0.extract.shift.i291.i = lshr i32 %i.pf, 8 ; 2 uses
  %.rhs.trunc.i292.i = trunc nuw nsw i32 %.sroa.11.0.extract.shift.i290.i to i16
  %i.tp = udiv i16 -256, %.rhs.trunc.i292.i
  %.zext.i293.i = zext i16 %i.tp to i32           ; 3 uses
  %i.tq = and i32 %.sroa.5.0.extract.shift.i291.i, 255
  %i.tr = mul nuw nsw i32 %i.tq, %.zext.i293.i
  %i.ts = and i32 %i.pf, 255
  %i.tt = mul nuw nsw i32 %i.ts, %.zext.i293.i
  %i.tu = lshr i32 %i.tt, 8
  %i.tv = and i32 %.sroa.5.0.extract.shift.i291.i, 65280
  %i.tw = mul nuw i32 %i.tv, %.zext.i293.i
  %i.tx = and i32 %i.tw, 16711680
  %i.ty = and i32 %i.tr, 65280
  %i.tz = and i32 %i.tu, 255
  %i.ua = or disjoint i32 %i.ty, %i.tx
  %i.ub = or disjoint i32 %i.ua, %i.tz
  br label %unpremultiply.exit301.i

unpremultiply.exit301.i:                          ; preds = %bb.ck, %bb.cj
  %i.uc = phi i32 [ %i.ub, %bb.ck ], [ 0, %bb.cj ] ; 3 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.pe, i64 3
  %i.ue = sub nuw nsw i32 127, %.0243.i
  %i.uf = mul nuw nsw i32 %.sroa.11.0.extract.shift.i290.i, %i.ue
  %i.ug = lshr i32 %i.uf, 7                       ; 3 uses
  %i.uh = trunc nuw i32 %i.ug to i8
  store i8 %i.uh, ptr %i.ud, align 1, !tbaa !12
  %i.ui = getelementptr inbounds nuw i8, ptr %i.pe, i64 2
  %i.uj = lshr i32 %i.uc, 16
  %i.uk = mul nuw nsw i32 %i.uj, %i.ug
  %i.ul = lshr i32 %i.uk, 8
  %i.um = trunc nuw i32 %i.ul to i8
  store i8 %i.um, ptr %i.ui, align 1, !tbaa !13
  %i.un = getelementptr inbounds nuw i8, ptr %i.pe, i64 1
  %9 = lshr i32 %i.uc, 8
  %i.uo = trunc nuw i32 %9 to i16
  %10 = and i16 %i.uo, 255
  %i.up = trunc nuw nsw i32 %i.ug to i16          ; 2 uses
  %i.uq = mul nuw i16 %10, %i.up
  %i.ur = lshr i16 %i.uq, 8
  %i.us = trunc nuw i16 %i.ur to i8
  store i8 %i.us, ptr %i.un, align 1, !tbaa !14
  %11 = trunc i32 %i.uc to i16
  %i.ut = and i16 %11, 255
  %i.uu = mul nuw i16 %i.ut, %i.up
  %i.uv = lshr i16 %i.uu, 8
  %i.uw = trunc nuw i16 %i.uv to i8
  store i8 %i.uw, ptr %i.pe, align 1, !tbaa !15
  br label %bb.co

bb.cl:                                            ; preds = %bb.ci
  %i.ux = icmp eq i32 %i.ok, 0
  %or.cond7.i280 = and i1 %i.ux, %i.ov
  %or.cond7.not.i281 = xor i1 %or.cond7.i280, true
  %i.uy = icmp ne i32 %i.ok, %i.ev
  %or.cond9.not.i282 = or i1 %i.uy, %i.ov
  %or.cond318.i = select i1 %or.cond7.not.i281, i1 %or.cond9.not.i282, i1 false
  br i1 %or.cond318.i, label %bb.co, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %.sroa.11.0.extract.shift.i302.i = lshr i32 %i.pf, 24 ; 3 uses
  %i.uz = icmp eq i32 %.sroa.11.0.extract.shift.i302.i, 0
  br i1 %i.uz, label %unpremultiply.exit313.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %.sroa.5.0.extract.shift.i303.i = lshr i32 %i.pf, 8 ; 2 uses
  %.rhs.trunc.i304.i = trunc nuw nsw i32 %.sroa.11.0.extract.shift.i302.i to i16
  %i.va = udiv i16 -256, %.rhs.trunc.i304.i
  %.zext.i305.i = zext i16 %i.va to i32           ; 3 uses
  %i.vb = and i32 %.sroa.5.0.extract.shift.i303.i, 255
  %i.vc = mul nuw nsw i32 %i.vb, %.zext.i305.i
  %i.vd = and i32 %i.pf, 255
  %i.ve = mul nuw nsw i32 %i.vd, %.zext.i305.i
  %i.vf = lshr i32 %i.ve, 8
  %i.vg = and i32 %.sroa.5.0.extract.shift.i303.i, 65280
  %i.vh = mul nuw i32 %i.vg, %.zext.i305.i
  %i.vi = and i32 %i.vh, 16711680
  %i.vj = and i32 %i.vc, 65280
  %i.vk = and i32 %i.vf, 255
  %i.vl = or disjoint i32 %i.vj, %i.vi
  %i.vm = or disjoint i32 %i.vl, %i.vk
  br label %unpremultiply.exit313.i

unpremultiply.exit313.i:                          ; preds = %bb.cn, %bb.cm
  %i.vn = phi i32 [ %i.vm, %bb.cn ], [ 0, %bb.cm ] ; 3 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.pe, i64 3
  %i.vp = sub nuw nsw i32 127, %.0242.i
  %i.vq = mul nuw nsw i32 %.sroa.11.0.extract.shift.i302.i, %i.vp
  %i.vr = lshr i32 %i.vq, 7                       ; 3 uses
  %i.vs = trunc nuw i32 %i.vr to i8
  store i8 %i.vs, ptr %i.vo, align 1, !tbaa !12
  %i.vt = getelementptr inbounds nuw i8, ptr %i.pe, i64 2
  %i.vu = lshr i32 %i.vn, 16
  %i.vv = mul nuw nsw i32 %i.vu, %i.vr
  %i.vw = lshr i32 %i.vv, 8
  %i.vx = trunc nuw i32 %i.vw to i8
  store i8 %i.vx, ptr %i.vt, align 1, !tbaa !13
  %i.vy = getelementptr inbounds nuw i8, ptr %i.pe, i64 1
  %12 = lshr i32 %i.vn, 8
  %i.vz = trunc nuw i32 %12 to i16
  %13 = and i16 %i.vz, 255
  %i.wa = trunc nuw nsw i32 %i.vr to i16          ; 2 uses
  %i.wb = mul nuw i16 %13, %i.wa
  %i.wc = lshr i16 %i.wb, 8
  %i.wd = trunc nuw i16 %i.wc to i8
  store i8 %i.wd, ptr %i.vy, align 1, !tbaa !14
  %14 = trunc i32 %i.vn to i16
  %i.we = and i16 %14, 255
  %i.wf = mul nuw i16 %i.we, %i.wa
  %i.wg = lshr i16 %i.wf, 8
  %i.wh = trunc nuw i16 %i.wg to i8
  store i8 %i.wh, ptr %i.pe, align 1, !tbaa !15
  br label %bb.co

bb.co:                                            ; preds = %unpremultiply.exit313.i, %bb.cl, %unpremultiply.exit301.i, %._crit_edge320.i, %bb.bq
  %indvars.iv.next.i274 = add nuw nsw i64 %indvars.iv.i272, 1 ; 2 uses
  %exitcond.not.i275 = icmp eq i64 %indvars.iv.next.i274, %wide.trip.count.i284
  br i1 %exitcond.not.i275, label %transform_a8.exit, label %.lr.ph.i270, !llvm.loop !19

bb.cp:                                            ; preds = %bb.y
  tail call fastcc void @transform_rgb565a8(ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %.2230, i32 noundef %.0227, i32 noundef %.4, i32 noundef %.1, i32 noundef %i.ai, ptr noundef %.0235499, ptr noundef %.1232500, i1 noundef zeroext false, i1 noundef zeroext %i.ba)
  br label %transform_a8.exit

bb.cq:                                            ; preds = %bb.y
  br i1 %i.et, label %.lr.ph.i283, label %transform_a8.exit

.lr.ph.i283:                                      ; preds = %bb.cq, %bb.dd
  %indvars.iv.i285 = phi i64 [ %indvars.iv.next.i287, %bb.dd ], [ 0, %bb.cq ] ; 8 uses
  %i.wi = trunc i64 %indvars.iv.i285 to i32       ; 2 uses
  %i.wj = mul i32 %.4, %i.wi
  %i.wk = ashr i32 %i.wj, 8
  %i.wl = add nsw i32 %i.wk, %.2230               ; 2 uses
  %i.wm = mul i32 %.1, %i.wi
  %i.wn = ashr i32 %i.wm, 8
  %i.wo = add nsw i32 %i.wn, %.0227               ; 2 uses
  %i.wp = ashr i32 %i.wl, 8                       ; 6 uses
  %i.wq = ashr i32 %i.wo, 8                       ; 6 uses
  %i.wr = icmp slt i32 %i.wp, 0
  br i1 %i.wr, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph.i283
  %i.ws = icmp slt i32 %i.wp, %2
  %i.wt = icmp sgt i32 %i.wq, -1
  %.not.i286 = icmp slt i32 %i.wq, %3
  %i.wu = and i1 %i.wt, %.not.i286
  %or.cond180.i = select i1 %i.ws, i1 %i.wu, i1 false
  br i1 %or.cond180.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %.lr.ph.i283
  %i.wv = getelementptr inbounds nuw i8, ptr %.1232500, i64 %indvars.iv.i285
  store i8 0, ptr %i.wv, align 1, !tbaa !9
  br label %bb.dd

bb.ct:                                            ; preds = %bb.cr
  %i.ww = and i32 %i.wl, 255                      ; 2 uses
  %i.wx = and i32 %i.wo, 255                      ; 2 uses
  %i.wy = icmp samesign ult i32 %i.ww, 128        ; 4 uses
  %i.wz = shl nuw nsw i32 %i.ww, 1                ; 2 uses
  %i.xa = sub nuw nsw i32 254, %i.wz
  %i.xb = add nsw i32 %i.wz, -256
  %.0156.i = select i1 %i.wy, i32 %i.xa, i32 %i.xb ; 2 uses
  %.0154.i = select i1 %i.wy, i32 -1, i32 1       ; 2 uses
  %i.xc = icmp samesign ult i32 %i.wx, 128        ; 4 uses
  %i.xd = shl nuw nsw i32 %i.wx, 1                ; 2 uses
  %i.xe = sub nuw nsw i32 254, %i.xd
  %i.xf = add nsw i32 %i.xd, -256
  %.0155.i = select i1 %i.xc, i32 %i.xe, i32 %i.xf ; 2 uses
  %.0153.i = select i1 %i.xc, i32 -1, i32 1       ; 2 uses
  %i.xg = mul nsw i32 %i.wq, %4
  %i.xh = sext i32 %i.xg to i64
  %i.xi = getelementptr inbounds i8, ptr %1, i64 %i.xh
  %i.xj = shl nuw nsw i32 %i.wp, 1
  %i.xk = zext nneg i32 %i.xj to i64
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xi, i64 %i.xk ; 3 uses
  %i.xm = load i16, ptr %i.xl, align 2, !tbaa !16
  %i.xn = tail call noundef i16 @llvm.bswap.i16(i16 %i.xm)
  %i.xo = getelementptr inbounds nuw [2 x i8], ptr %.0235499, i64 %indvars.iv.i285 ; 4 uses
  store i16 %i.xn, ptr %i.xo, align 2, !tbaa !16
  br i1 %i.ba, label %bb.cu, label %bb.cy

bb.cu:                                            ; preds = %bb.ct
  %i.xp = add nsw i32 %.0154.i, %i.wp             ; 2 uses
  %i.xq = icmp sgt i32 %i.xp, -1
  %.not174.not.i = icmp slt i32 %i.xp, %2
  %or.cond181.i = and i1 %i.xq, %.not174.not.i
  br i1 %or.cond181.i, label %bb.cv, label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  %i.xr = add nsw i32 %.0153.i, %i.wq             ; 2 uses
  %i.xs = icmp sgt i32 %i.xr, -1
  %.not175.not.i = icmp slt i32 %i.xr, %3
  %or.cond182.i = and i1 %i.xs, %.not175.not.i
  br i1 %or.cond182.i, label %bb.cw, label %bb.cy

bb.cw:                                            ; preds = %bb.cv
  %i.xt = sext i32 %.0154.i to i64
  %i.xu = getelementptr inbounds [2 x i8], ptr %i.xl, i64 %i.xt
  %i.xv = load i16, ptr %i.xu, align 2, !tbaa !16
  %i.xw = tail call noundef i16 @llvm.bswap.i16(i16 %i.xv) ; 2 uses
  %i.xx = mul nsw i32 %.0153.i, %4
  %i.xy = sext i32 %i.xx to i64
  %i.xz = getelementptr inbounds i8, ptr %i.xl, i64 %i.xy
  %i.ya = load i16, ptr %i.xz, align 2, !tbaa !16
  %i.yb = tail call noundef i16 @llvm.bswap.i16(i16 %i.ya) ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %.1232500, i64 %indvars.iv.i285
  store i8 -1, ptr %i.yc, align 1, !tbaa !9
  %i.yd = load i16, ptr %i.xo, align 2, !tbaa !16 ; 3 uses
  %.not178.i = icmp eq i16 %i.yd, %i.yb
  %.not179.i = icmp eq i16 %i.yd, %i.xw
  %or.cond183.i = and i1 %.not178.i, %.not179.i
  br i1 %or.cond183.i, label %bb.dd, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ye = trunc nuw i32 %.0155.i to i8
  %i.yf = tail call zeroext i16 @lv_color_16_16_mix(i16 noundef zeroext %i.yb, i16 noundef zeroext %i.yd, i8 noundef zeroext %i.ye) #4
  %i.yg = load i16, ptr %i.xo, align 2, !tbaa !16
  %i.yh = trunc nuw i32 %.0156.i to i8
  %i.yi = tail call zeroext i16 @lv_color_16_16_mix(i16 noundef zeroext %i.xw, i16 noundef zeroext %i.yg, i8 noundef zeroext %i.yh) #4
  %i.yj = tail call zeroext i16 @lv_color_16_16_mix(i16 noundef zeroext %i.yi, i16 noundef zeroext %i.yf, i8 noundef zeroext 127) #4
  store i16 %i.yj, ptr %i.xo, align 2, !tbaa !16
  br label %bb.dd

bb.cy:                                            ; preds = %bb.cv, %bb.cu, %bb.ct
  %i.yk = icmp eq i32 %i.wp, 0
  %or.cond4.i = and i1 %i.yk, %i.wy
  %or.cond4.not.i = xor i1 %or.cond4.i, true
  %i.yl = icmp ne i32 %i.wp, %i.eu
  %or.cond6.not.i = or i1 %i.yl, %i.wy
  %or.cond.i289 = select i1 %or.cond4.not.i, i1 %or.cond6.not.i, i1 false
  br i1 %or.cond.i289, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ym = sub nuw nsw i32 255, %.0156.i
  %i.yn = mul nuw nsw i32 %i.ym, 255
  %i.yo = lshr i32 %i.yn, 8
  %i.yp = trunc nuw i32 %i.yo to i8
  %i.yq = getelementptr inbounds nuw i8, ptr %.1232500, i64 %indvars.iv.i285
  store i8 %i.yp, ptr %i.yq, align 1, !tbaa !9
  br label %bb.dd

bb.da:                                            ; preds = %bb.cy
  %i.yr = icmp eq i32 %i.wq, 0
  %or.cond8.i = and i1 %i.yr, %i.xc
  %or.cond8.not.i = xor i1 %or.cond8.i, true
  %i.ys = icmp ne i32 %i.wq, %i.ev
  %or.cond10.not.i = or i1 %i.ys, %i.xc
  %or.cond188.i = select i1 %or.cond8.not.i, i1 %or.cond10.not.i, i1 false
  br i1 %or.cond188.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.yt = sub nuw nsw i32 255, %.0155.i
  %i.yu = mul nuw nsw i32 %i.yt, 255
  %i.yv = lshr i32 %i.yu, 8
  %i.yw = trunc nuw i32 %i.yv to i8
  %i.yx = getelementptr inbounds nuw i8, ptr %.1232500, i64 %indvars.iv.i285
  store i8 %i.yw, ptr %i.yx, align 1, !tbaa !9
  br label %bb.dd

bb.dc:                                            ; preds = %bb.da
  %i.yy = getelementptr inbounds nuw i8, ptr %.1232500, i64 %indvars.iv.i285
  store i8 -1, ptr %i.yy, align 1, !tbaa !9
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db, %bb.cz, %bb.cx, %bb.cw, %bb.cs
  %indvars.iv.next.i287 = add nuw nsw i64 %indvars.iv.i285, 1 ; 2 uses
  %exitcond.not.i288 = icmp eq i64 %indvars.iv.next.i287, %wide.trip.count.i284
  br i1 %exitcond.not.i288, label %transform_a8.exit, label %.lr.ph.i283, !llvm.loop !20

bb.de:                                            ; preds = %bb.y
  tail call fastcc void @transform_rgb565a8(ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %.2230, i32 noundef %.0227, i32 noundef %.4, i32 noundef %.1, i32 noundef %i.ai, ptr noundef %.0235499, ptr noundef %.1232500, i1 noundef zeroext true, i1 noundef zeroext %i.ba)
  br label %transform_a8.exit

bb.df:                                            ; preds = %bb.y
  tail call fastcc void @transform_al88(ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %.2230, i32 noundef %.0227, i32 noundef %.4, i32 noundef %.1, i32 noundef %i.ai, ptr noundef %.0235499, ptr noundef %.1232500, i1 noundef zeroext false, i1 noundef zeroext %i.ba)
  br label %transform_a8.exit

bb.dg:                                            ; preds = %bb.y
  tail call fastcc void @transform_al88(ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %.2230, i32 noundef %.0227, i32 noundef %.4, i32 noundef %.1, i32 noundef %i.ai, ptr noundef %.0235499, ptr noundef %.1232500, i1 noundef zeroext true, i1 noundef zeroext %i.ba)
  br label %transform_a8.exit

transform_a8.exit:                                ; preds = %bb.dd, %bb.co, %bb.bn, %bb.aq, %bb.cq, %bb.bo, %bb.ar, %bb.ab, %bb.dg, %bb.df, %bb.de, %bb.cp, %bb.aa, %bb.z
  %i.yz = getelementptr inbounds i8, ptr %.0235499, i64 %i.ew
  %.not249 = icmp eq ptr %.1232500, null
  %i.za = getelementptr inbounds i8, ptr %.1232500, i64 %i.ex
  %.2233 = select i1 %.not249, ptr null, ptr %i.za
  %i.zb = add nuw nsw i32 %.0503, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.zb, %i.aj
  br i1 %exitcond.not, label %._crit_edge, label %bb.p, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.y, %transform_a8.exit, %bb.o
  ret void
}

declare i32 @lv_trigo_sin(i16 noundef signext) local_unnamed_addr #1

declare i32 @lv_area_get_width(ptr noundef) local_unnamed_addr #1

declare i32 @lv_area_get_height(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @lv_color_format_get_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @transform_rgb888(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef range(i32 -2147483520, -2147483648) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr nofree noundef captures(none) %9, i1 noundef zeroext %10, i32 noundef range(i32 3, 5) %11) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %8, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
end_hunk_0
