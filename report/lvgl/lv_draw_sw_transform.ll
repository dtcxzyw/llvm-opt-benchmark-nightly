Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_transform?download=true
inline.NumInlined: 16
inline.NumDeleted: 7
begin_hunk_0_@lv_draw_sw_transform:bb.a
  %i.pc = zext nneg i32 %i.pb to i64
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pa, i64 %i.pc ; 3 uses
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %.0235499, i64 %indvars.iv.i272 ; 23 uses
  %i.pf = load i32, ptr %i.pd, align 1            ; 11 uses
  store i32 %i.pf, ptr %i.pe, align 1
  br i1 %i.ba, label %bb.bs, label %bb.ci

bb.bs:                                            ; preds = %bb.br
  %i.pg = add nsw i32 %.0241.i, %i.oj             ; 2 uses
  %i.ph = icmp sgt i32 %i.pg, -1
  %.not257.not.i = icmp slt i32 %i.pg, %2
  %or.cond264.i = and i1 %i.ph, %.not257.not.i
  br i1 %or.cond264.i, label %bb.bt, label %bb.ci

bb.bt:                                            ; preds = %bb.bs
  %i.pi = add nsw i32 %.0240.i, %i.ok             ; 2 uses
  %i.pj = icmp sgt i32 %i.pi, -1
  %.not258.not.i = icmp slt i32 %i.pi, %3
  %or.cond265.i = and i1 %i.pj, %.not258.not.i
  br i1 %or.cond265.i, label %bb.bu, label %bb.ci

bb.bu:                                            ; preds = %bb.bt
  %i.pk = sext i32 %.0241.i to i64
  %i.pl = getelementptr inbounds [4 x i8], ptr %i.pd, i64 %i.pk ; 2 uses
  %.sroa.039.sroa.0.0.copyload.i = load i24, ptr %i.pl, align 1
  %.sroa.748.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.pl, i64 3
  %.sroa.748.0.copyload.i = load i8, ptr %.sroa.748.0..sroa_idx.i, align 1, !tbaa !9 ; 3 uses
  %i.pm = mul nsw i32 %.0240.i, %4
  %i.pn = sext i32 %i.pm to i64
  %i.po = getelementptr inbounds i8, ptr %i.pd, i64 %i.pn ; 2 uses
  %.sroa.017.sroa.0.0.copyload.i = load i24, ptr %i.po, align 1
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.po, i64 3
  %.sroa.7.0.copyload.i = load i8, ptr %.sroa.7.0..sroa_idx.i, align 1, !tbaa !9 ; 3 uses
  %.sroa.11.0.extract.shift.i.i = lshr i32 %i.pf, 24 ; 3 uses
  %i.pp = icmp eq i32 %.sroa.11.0.extract.shift.i.i, 0
  br i1 %i.pp, label %unpremultiply.exit.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %.sroa.5.0.extract.shift.i.i = lshr i32 %i.pf, 8 ; 2 uses
  %.rhs.trunc.i.i = trunc nuw nsw i32 %.sroa.11.0.extract.shift.i.i to i16
  %i.pq = udiv i16 -256, %.rhs.trunc.i.i
  %.zext.i.i = zext i16 %i.pq to i32              ; 3 uses
  %i.pr = and i32 %.sroa.5.0.extract.shift.i.i, 255
  %i.ps = mul nuw nsw i32 %i.pr, %.zext.i.i
  %i.pt = and i32 %i.pf, 255
  %i.pu = mul nuw nsw i32 %i.pt, %.zext.i.i
  %i.pv = lshr i32 %i.pu, 8
  %i.pw = and i32 %.sroa.5.0.extract.shift.i.i, 65280
  %i.px = mul nuw i32 %i.pw, %.zext.i.i
  %i.py = and i32 %i.px, 16711680
  %i.pz = and i32 %i.ps, 65280
  %i.qa = and i32 %i.pv, 255
  %i.qb = or disjoint i32 %i.pz, %i.py
  %i.qc = or disjoint i32 %i.qb, %i.qa
  br label %unpremultiply.exit.i

unpremultiply.exit.i:                             ; preds = %bb.bv, %bb.bu
  %i.qd = phi i32 [ %i.qc, %bb.bv ], [ 0, %bb.bu ]
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
  %9 = zext i8 %i.sv to i16
  %10 = zext i8 %i.st to i16                      ; 3 uses
  %11 = mul nuw i16 %9, %10
  %12 = lshr i16 %11, 8
  %13 = trunc nuw i16 %12 to i8
  store i8 %13, ptr %i.su, align 1, !tbaa !13
  %i.sw = getelementptr inbounds nuw i8, ptr %i.pe, i64 1 ; 2 uses
  %i.sx = load i8, ptr %i.sw, align 1, !tbaa !14
  %14 = zext i8 %i.sx to i16
  %15 = mul nuw i16 %14, %10
  %16 = lshr i16 %15, 8
  %17 = trunc nuw i16 %16 to i8
  store i8 %17, ptr %i.sw, align 1, !tbaa !14
  %i.sy = load i8, ptr %i.pe, align 1, !tbaa !15
  %18 = zext i8 %i.sy to i16
  %19 = mul nuw i16 %18, %10
  %20 = lshr i16 %19, 8
  %21 = trunc nuw i16 %20 to i8
  store i8 %21, ptr %i.pe, align 1, !tbaa !15
  br label %bb.co

bb.ci:                                            ; preds = %bb.bt, %bb.bs, %bb.br
  %i.sz = icmp eq i32 %i.oj, 0
  %or.cond3.i276 = and i1 %i.sz, %i.os
  %or.cond3.not.i277 = xor i1 %or.cond3.i276, true
  %i.ta = icmp ne i32 %i.oj, %i.eu
  %or.cond5.not.i278 = or i1 %i.ta, %i.os
  %or.cond.i279 = select i1 %or.cond3.not.i277, i1 %or.cond5.not.i278, i1 false
  br i1 %or.cond.i279, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %.sroa.11.0.extract.shift.i290.i = lshr i32 %i.pf, 24 ; 3 uses
  %i.tb = icmp eq i32 %.sroa.11.0.extract.shift.i290.i, 0
  br i1 %i.tb, label %unpremultiply.exit301.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %.sroa.5.0.extract.shift.i291.i = lshr i32 %i.pf, 8 ; 2 uses
  %.rhs.trunc.i292.i = trunc nuw nsw i32 %.sroa.11.0.extract.shift.i290.i to i16
  %i.tc = udiv i16 -256, %.rhs.trunc.i292.i
  %.zext.i293.i = zext i16 %i.tc to i32           ; 3 uses
  %i.td = and i32 %.sroa.5.0.extract.shift.i291.i, 255
  %i.te = mul nuw nsw i32 %i.td, %.zext.i293.i
  %i.tf = and i32 %i.pf, 255
  %i.tg = mul nuw nsw i32 %i.tf, %.zext.i293.i
  %i.th = lshr i32 %i.tg, 8
  %i.ti = and i32 %.sroa.5.0.extract.shift.i291.i, 65280
  %i.tj = mul nuw i32 %i.ti, %.zext.i293.i
  %i.tk = and i32 %i.tj, 16711680
  %i.tl = and i32 %i.te, 65280
  %i.tm = and i32 %i.th, 255
  %i.tn = or disjoint i32 %i.tl, %i.tk
  %i.to = or disjoint i32 %i.tn, %i.tm
  br label %unpremultiply.exit301.i

unpremultiply.exit301.i:                          ; preds = %bb.ck, %bb.cj
  %i.tp = phi i32 [ %i.to, %bb.ck ], [ 0, %bb.cj ] ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.pe, i64 3
  %i.tr = sub nuw nsw i32 127, %.0243.i
  %i.ts = mul nuw nsw i32 %.sroa.11.0.extract.shift.i290.i, %i.tr
  %i.tt = lshr i32 %i.ts, 7                       ; 3 uses
  %i.tu = trunc nuw i32 %i.tt to i8
  store i8 %i.tu, ptr %i.tq, align 1, !tbaa !12
  %i.tv = getelementptr inbounds nuw i8, ptr %i.pe, i64 2
  %i.tw = lshr i32 %i.tp, 16
  %i.tx = mul nuw nsw i32 %i.tw, %i.tt
  %i.ty = lshr i32 %i.tx, 8
  %i.tz = trunc nuw i32 %i.ty to i8
  store i8 %i.tz, ptr %i.tv, align 1, !tbaa !13
  %i.ua = getelementptr inbounds nuw i8, ptr %i.pe, i64 1
  %22 = trunc i32 %i.tp to i16                    ; 2 uses
  %23 = lshr i16 %22, 8
  %24 = trunc nuw nsw i32 %i.tt to i16            ; 2 uses
  %25 = mul nuw i16 %23, %24
  %26 = lshr i16 %25, 8
  %i.ub = trunc nuw i16 %26 to i8
  store i8 %i.ub, ptr %i.ua, align 1, !tbaa !14
  %27 = and i16 %22, 255
  %28 = mul nuw i16 %27, %24
  %29 = lshr i16 %28, 8
  %30 = trunc nuw i16 %29 to i8
  store i8 %30, ptr %i.pe, align 1, !tbaa !15
  br label %bb.co

bb.cl:                                            ; preds = %bb.ci
  %i.uc = icmp eq i32 %i.ok, 0
  %or.cond7.i280 = and i1 %i.uc, %i.ov
  %or.cond7.not.i281 = xor i1 %or.cond7.i280, true
  %i.ud = icmp ne i32 %i.ok, %i.ev
  %or.cond9.not.i282 = or i1 %i.ud, %i.ov
  %or.cond318.i = select i1 %or.cond7.not.i281, i1 %or.cond9.not.i282, i1 false
  br i1 %or.cond318.i, label %bb.co, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %.sroa.11.0.extract.shift.i302.i = lshr i32 %i.pf, 24 ; 3 uses
  %i.ue = icmp eq i32 %.sroa.11.0.extract.shift.i302.i, 0
  br i1 %i.ue, label %unpremultiply.exit313.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %.sroa.5.0.extract.shift.i303.i = lshr i32 %i.pf, 8 ; 2 uses
  %.rhs.trunc.i304.i = trunc nuw nsw i32 %.sroa.11.0.extract.shift.i302.i to i16
  %i.uf = udiv i16 -256, %.rhs.trunc.i304.i
  %.zext.i305.i = zext i16 %i.uf to i32           ; 3 uses
  %i.ug = and i32 %.sroa.5.0.extract.shift.i303.i, 255
  %i.uh = mul nuw nsw i32 %i.ug, %.zext.i305.i
  %i.ui = and i32 %i.pf, 255
  %i.uj = mul nuw nsw i32 %i.ui, %.zext.i305.i
  %i.uk = lshr i32 %i.uj, 8
  %i.ul = and i32 %.sroa.5.0.extract.shift.i303.i, 65280
  %i.um = mul nuw i32 %i.ul, %.zext.i305.i
  %i.un = and i32 %i.um, 16711680
  %i.uo = and i32 %i.uh, 65280
  %i.up = and i32 %i.uk, 255
  %i.uq = or disjoint i32 %i.uo, %i.un
  %i.ur = or disjoint i32 %i.uq, %i.up
  br label %unpremultiply.exit313.i

unpremultiply.exit313.i:                          ; preds = %bb.cn, %bb.cm
  %i.us = phi i32 [ %i.ur, %bb.cn ], [ 0, %bb.cm ] ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.pe, i64 3
  %i.uu = sub nuw nsw i32 127, %.0242.i
  %i.uv = mul nuw nsw i32 %.sroa.11.0.extract.shift.i302.i, %i.uu
  %i.uw = lshr i32 %i.uv, 7                       ; 3 uses
  %i.ux = trunc nuw i32 %i.uw to i8
  store i8 %i.ux, ptr %i.ut, align 1, !tbaa !12
  %i.uy = getelementptr inbounds nuw i8, ptr %i.pe, i64 2
  %i.uz = lshr i32 %i.us, 16
  %i.va = mul nuw nsw i32 %i.uz, %i.uw
  %i.vb = lshr i32 %i.va, 8
  %i.vc = trunc nuw i32 %i.vb to i8
  store i8 %i.vc, ptr %i.uy, align 1, !tbaa !13
  %i.vd = getelementptr inbounds nuw i8, ptr %i.pe, i64 1
  %31 = trunc i32 %i.us to i16                    ; 2 uses
  %32 = lshr i16 %31, 8
  %33 = trunc nuw nsw i32 %i.uw to i16            ; 2 uses
  %34 = mul nuw i16 %32, %33
  %35 = lshr i16 %34, 8
  %i.ve = trunc nuw i16 %35 to i8
  store i8 %i.ve, ptr %i.vd, align 1, !tbaa !14
  %36 = and i16 %31, 255
  %37 = mul nuw i16 %36, %33
  %38 = lshr i16 %37, 8
  %39 = trunc nuw i16 %38 to i8
  store i8 %39, ptr %i.pe, align 1, !tbaa !15
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
  %i.vf = trunc i64 %indvars.iv.i285 to i32       ; 2 uses
  %i.vg = mul i32 %.4, %i.vf
  %i.vh = ashr i32 %i.vg, 8
  %i.vi = add nsw i32 %i.vh, %.2230               ; 2 uses
  %i.vj = mul i32 %.1, %i.vf
  %i.vk = ashr i32 %i.vj, 8
  %i.vl = add nsw i32 %i.vk, %.0227               ; 2 uses
  %i.vm = ashr i32 %i.vi, 8                       ; 6 uses
  %i.vn = ashr i32 %i.vl, 8                       ; 6 uses
  %i.vo = icmp slt i32 %i.vm, 0
  br i1 %i.vo, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph.i283
  %i.vp = icmp slt i32 %i.vm, %2
  %i.vq = icmp sgt i32 %i.vn, -1
  %.not.i286 = icmp slt i32 %i.vn, %3
  %i.vr = and i1 %i.vq, %.not.i286
  %or.cond180.i = select i1 %i.vp, i1 %i.vr, i1 false
  br i1 %or.cond180.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %.lr.ph.i283
  %i.vs = getelementptr inbounds nuw i8, ptr %.1232500, i64 %indvars.iv.i285
  store i8 0, ptr %i.vs, align 1, !tbaa !9
  br label %bb.dd

bb.ct:                                            ; preds = %bb.cr
  %i.vt = and i32 %i.vi, 255                      ; 2 uses
  %i.vu = and i32 %i.vl, 255                      ; 2 uses
  %i.vv = icmp samesign ult i32 %i.vt, 128        ; 4 uses
  %i.vw = shl nuw nsw i32 %i.vt, 1                ; 2 uses
  %i.vx = sub nuw nsw i32 254, %i.vw
  %i.vy = add nsw i32 %i.vw, -256
  %.0156.i = select i1 %i.vv, i32 %i.vx, i32 %i.vy ; 2 uses
  %.0154.i = select i1 %i.vv, i32 -1, i32 1       ; 2 uses
  %i.vz = icmp samesign ult i32 %i.vu, 128        ; 4 uses
  %i.wa = shl nuw nsw i32 %i.vu, 1                ; 2 uses
  %i.wb = sub nuw nsw i32 254, %i.wa
  %i.wc = add nsw i32 %i.wa, -256
  %.0155.i = select i1 %i.vz, i32 %i.wb, i32 %i.wc ; 2 uses
  %.0153.i = select i1 %i.vz, i32 -1, i32 1       ; 2 uses
  %i.wd = mul nsw i32 %i.vn, %4
  %i.we = sext i32 %i.wd to i64
  %i.wf = getelementptr inbounds i8, ptr %1, i64 %i.we
  %i.wg = shl nuw nsw i32 %i.vm, 1
  %i.wh = zext nneg i32 %i.wg to i64
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wf, i64 %i.wh ; 3 uses
  %i.wj = load i16, ptr %i.wi, align 2, !tbaa !16
  %i.wk = tail call noundef i16 @llvm.bswap.i16(i16 %i.wj)
  %i.wl = getelementptr inbounds nuw [2 x i8], ptr %.0235499, i64 %indvars.iv.i285 ; 4 uses
  store i16 %i.wk, ptr %i.wl, align 2, !tbaa !16
  br i1 %i.ba, label %bb.cu, label %bb.cy

bb.cu:                                            ; preds = %bb.ct
  %i.wm = add nsw i32 %.0154.i, %i.vm             ; 2 uses
  %i.wn = icmp sgt i32 %i.wm, -1
  %.not174.not.i = icmp slt i32 %i.wm, %2
  %or.cond181.i = and i1 %i.wn, %.not174.not.i
  br i1 %or.cond181.i, label %bb.cv, label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  %i.wo = add nsw i32 %.0153.i, %i.vn             ; 2 uses
  %i.wp = icmp sgt i32 %i.wo, -1
  %.not175.not.i = icmp slt i32 %i.wo, %3
  %or.cond182.i = and i1 %i.wp, %.not175.not.i
  br i1 %or.cond182.i, label %bb.cw, label %bb.cy

bb.cw:                                            ; preds = %bb.cv
  %i.wq = sext i32 %.0154.i to i64
  %i.wr = getelementptr inbounds [2 x i8], ptr %i.wi, i64 %i.wq
  %i.ws = load i16, ptr %i.wr, align 2, !tbaa !16
  %i.wt = tail call noundef i16 @llvm.bswap.i16(i16 %i.ws) ; 2 uses
  %i.wu = mul nsw i32 %.0153.i, %4
  %i.wv = sext i32 %i.wu to i64
  %i.ww = getelementptr inbounds i8, ptr %i.wi, i64 %i.wv
  %i.wx = load i16, ptr %i.ww, align 2, !tbaa !16
  %i.wy = tail call noundef i16 @llvm.bswap.i16(i16 %i.wx) ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %.1232500, i64 %indvars.iv.i285
  store i8 -1, ptr %i.wz, align 1, !tbaa !9
  %i.xa = load i16, ptr %i.wl, align 2, !tbaa !16 ; 3 uses
  %.not178.i = icmp eq i16 %i.xa, %i.wy
  %.not179.i = icmp eq i16 %i.xa, %i.wt
  %or.cond183.i = and i1 %.not178.i, %.not179.i
  br i1 %or.cond183.i, label %bb.dd, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.xb = trunc nuw i32 %.0155.i to i8
  %i.xc = tail call zeroext i16 @lv_color_16_16_mix(i16 noundef zeroext %i.wy, i16 noundef zeroext %i.xa, i8 noundef zeroext %i.xb) #4
  %i.xd = load i16, ptr %i.wl, align 2, !tbaa !16
  %i.xe = trunc nuw i32 %.0156.i to i8
  %i.xf = tail call zeroext i16 @lv_color_16_16_mix(i16 noundef zeroext %i.wt, i16 noundef zeroext %i.xd, i8 noundef zeroext %i.xe) #4
  %i.xg = tail call zeroext i16 @lv_color_16_16_mix(i16 noundef zeroext %i.xf, i16 noundef zeroext %i.xc, i8 noundef zeroext 127) #4
  store i16 %i.xg, ptr %i.wl, align 2, !tbaa !16
  br label %bb.dd

bb.cy:                                            ; preds = %bb.cv, %bb.cu, %bb.ct
  %i.xh = icmp eq i32 %i.vm, 0
  %or.cond4.i = and i1 %i.xh, %i.vv
  %or.cond4.not.i = xor i1 %or.cond4.i, true
  %i.xi = icmp ne i32 %i.vm, %i.eu
  %or.cond6.not.i = or i1 %i.xi, %i.vv
  %or.cond.i289 = select i1 %or.cond4.not.i, i1 %or.cond6.not.i, i1 false
  br i1 %or.cond.i289, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.xj = sub nuw nsw i32 255, %.0156.i
  %i.xk = mul nuw nsw i32 %i.xj, 255
  %i.xl = lshr i32 %i.xk, 8
  %i.xm = trunc nuw i32 %i.xl to i8
  %i.xn = getelementptr inbounds nuw i8, ptr %.1232500, i64 %indvars.iv.i285
  store i8 %i.xm, ptr %i.xn, align 1, !tbaa !9
  br label %bb.dd

bb.da:                                            ; preds = %bb.cy
  %i.xo = icmp eq i32 %i.vn, 0
  %or.cond8.i = and i1 %i.xo, %i.vz
  %or.cond8.not.i = xor i1 %or.cond8.i, true
  %i.xp = icmp ne i32 %i.vn, %i.ev
  %or.cond10.not.i = or i1 %i.xp, %i.vz
  %or.cond188.i = select i1 %or.cond8.not.i, i1 %or.cond10.not.i, i1 false
  br i1 %or.cond188.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.xq = sub nuw nsw i32 255, %.0155.i
  %i.xr = mul nuw nsw i32 %i.xq, 255
  %i.xs = lshr i32 %i.xr, 8
  %i.xt = trunc nuw i32 %i.xs to i8
  %i.xu = getelementptr inbounds nuw i8, ptr %.1232500, i64 %indvars.iv.i285
  store i8 %i.xt, ptr %i.xu, align 1, !tbaa !9
  br label %bb.dd

bb.dc:                                            ; preds = %bb.da
  %i.xv = getelementptr inbounds nuw i8, ptr %.1232500, i64 %indvars.iv.i285
  store i8 -1, ptr %i.xv, align 1, !tbaa !9
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
  %i.xw = getelementptr inbounds i8, ptr %.0235499, i64 %i.ew
  %.not249 = icmp eq ptr %.1232500, null
  %i.xx = getelementptr inbounds i8, ptr %.1232500, i64 %i.ex
  %.2233 = select i1 %.not249, ptr null, ptr %i.xx
  %i.xy = add nuw nsw i32 %.0503, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.xy, %i.aj
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
  %i.b = add nsw i32 %1, -1
  %i.c = add nsw i32 %2, -1
  %wide.trip.count = zext nneg i32 %8 to i64
  br label %bb.b
end_hunk_0
begin_hunk_1_@transform_al88:bb.a
  %i.cq = mul nuw nsw i32 %.0205.us, %i.cp
  %i.cr = sub nuw nsw i32 256, %.0205.us
  %i.cs = mul nuw nsw i32 %i.cr, %i.co
  %i.ct = add nuw nsw i32 %i.cs, %i.cq
  %i.cu = lshr i32 %i.ct, 8
  %i.cv = trunc i32 %i.cu to i8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0198.us = phi i8 [ %i.cv, %bb.q ], [ %.sroa.438.0.copyload.us, %bb.p ]
  %i.cw = zext i8 %.0199.us to i16
  %i.cx = zext i8 %.0198.us to i16
  %i.cy = add nuw nsw i16 %i.cx, %i.cw
  %i.cz = lshr i16 %i.cy, 1
  %i.da = trunc nuw i16 %i.cz to i8
  store i8 %i.da, ptr %i.al, align 1, !tbaa !9
  br label %bb.t

bb.s:                                             ; preds = %bb.b, %.lr.ph.split.us
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 %indvars.iv258
  store i8 0, ptr %i.db, align 1, !tbaa !9
  %i.dc = getelementptr inbounds nuw i8, ptr %10, i64 %indvars.iv258
  store i8 0, ptr %i.dc, align 1, !tbaa !9
  br label %bb.t

bb.t:                                             ; preds = %bb.g, %bb.s, %bb.r, %bb.i, %bb.h
  %indvars.iv.next259 = add nuw nsw i64 %indvars.iv258, 1 ; 2 uses
  %exitcond262.not = icmp eq i64 %indvars.iv.next259, %wide.trip.count261
  br i1 %exitcond262.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !40

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.ai
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ai ], [ 0, %.lr.ph ] ; 7 uses
  %i.dd = trunc i64 %indvars.iv to i32
  %i.de = mul i32 %6, %i.dd
  %i.df = ashr i32 %i.de, 8
  %i.dg = add nsw i32 %i.df, %4                   ; 2 uses
  %i.dh = trunc i64 %indvars.iv to i32
  %i.di = mul i32 %7, %i.dh
  %i.dj = ashr i32 %i.di, 8
  %i.dk = add nsw i32 %i.dj, %5                   ; 2 uses
  %i.dl = ashr i32 %i.dg, 8                       ; 6 uses
  %i.dm = ashr i32 %i.dk, 8                       ; 6 uses
  %i.dn = icmp slt i32 %i.dl, 0
  br i1 %i.dn, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.split
  %i.do = icmp slt i32 %i.dl, %1
  %i.dp = icmp sgt i32 %i.dm, -1
  %.not = icmp slt i32 %i.dm, %2
  %i.dq = and i1 %i.dp, %.not
  %or.cond244 = select i1 %i.do, i1 %i.dq, i1 false
  br i1 %or.cond244, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.split
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 %indvars.iv
  store i8 0, ptr %i.dr, align 1, !tbaa !9
  %i.ds = getelementptr inbounds nuw i8, ptr %10, i64 %indvars.iv
  store i8 0, ptr %i.ds, align 1, !tbaa !9
  br label %bb.ai

bb.w:                                             ; preds = %bb.u
  %i.dt = and i32 %i.dg, 255                      ; 2 uses
  %i.du = and i32 %i.dk, 255                      ; 2 uses
  %i.dv = icmp samesign ult i32 %i.dt, 128        ; 4 uses
  %i.dw = shl nuw nsw i32 %i.dt, 1                ; 2 uses
  %i.dx = sub nuw nsw i32 254, %i.dw
  %i.dy = add nsw i32 %i.dw, -256
  %.0205 = select i1 %i.dv, i32 %i.dx, i32 %i.dy  ; 3 uses
  %.0203 = select i1 %i.dv, i32 -1, i32 1         ; 2 uses
  %i.dz = icmp samesign ult i32 %i.du, 128        ; 4 uses
  %i.ea = shl nuw nsw i32 %i.du, 1                ; 2 uses
  %i.eb = sub nuw nsw i32 254, %i.ea
  %i.ec = add nsw i32 %i.ea, -256
  %.0204 = select i1 %i.dz, i32 %i.eb, i32 %i.ec  ; 3 uses
  %.0202 = select i1 %i.dz, i32 -1, i32 1         ; 2 uses
  %i.ed = mul nsw i32 %i.dm, %3
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds i8, ptr %0, i64 %i.ee
  %i.eg = zext nneg i32 %i.dl to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.eg ; 3 uses
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !9
  %i.ej = getelementptr inbounds nuw i8, ptr %9, i64 %indvars.iv ; 3 uses
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !9
  %i.ek = getelementptr inbounds nuw i8, ptr %10, i64 %indvars.iv ; 3 uses
  store i8 -1, ptr %i.ek, align 1, !tbaa !9
  br i1 %12, label %bb.x, label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.el = add nsw i32 %.0203, %i.dl               ; 2 uses
  %i.em = icmp sgt i32 %i.el, -1
  %.not230.not = icmp slt i32 %i.el, %1
  %or.cond247 = and i1 %i.em, %.not230.not
  br i1 %or.cond247, label %bb.y, label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.en = add nsw i32 %.0202, %i.dm               ; 2 uses
  %i.eo = icmp sgt i32 %i.en, -1
  %.not231.not = icmp slt i32 %i.en, %2
  %or.cond248 = and i1 %i.eo, %.not231.not
  br i1 %or.cond248, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.ep = mul nsw i32 %.0202, %3
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds i8, ptr %i.eh, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !9   ; 3 uses
  %i.et = sext i32 %.0203 to i64
  %i.eu = getelementptr inbounds i8, ptr %i.eh, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !9   ; 3 uses
  %i.ew = load i8, ptr %i.ej, align 1, !tbaa !9   ; 4 uses
  %.not234 = icmp eq i8 %i.es, %i.ew
  br i1 %.not234, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ex = zext i8 %i.ew to i32
  %i.ey = zext i8 %i.es to i32
  %i.ez = mul nuw nsw i32 %.0204, %i.ey
  %i.fa = sub nuw nsw i32 256, %.0204
  %i.fb = mul nuw nsw i32 %i.fa, %i.ex
  %i.fc = add nuw nsw i32 %i.fb, %i.ez
  %i.fd = lshr i32 %i.fc, 8
  %i.fe = trunc i32 %i.fd to i8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0197 = phi i8 [ %i.fe, %bb.aa ], [ %i.es, %bb.z ]
  %.not235 = icmp eq i8 %i.ev, %i.ew
  br i1 %.not235, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ff = zext i8 %i.ew to i32
  %i.fg = zext i8 %i.ev to i32
  %i.fh = mul nuw nsw i32 %.0205, %i.fg
  %i.fi = sub nuw nsw i32 256, %.0205
  %i.fj = mul nuw nsw i32 %i.fi, %i.ff
  %i.fk = add nuw nsw i32 %i.fj, %i.fh
  %i.fl = lshr i32 %i.fk, 8
  %i.fm = trunc i32 %i.fl to i8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.0 = phi i8 [ %i.fm, %bb.ac ], [ %i.ev, %bb.ab ]
  %i.fn = zext i8 %.0197 to i16
  %i.fo = zext i8 %.0 to i16
  %i.fp = add nuw nsw i16 %i.fo, %i.fn
  %i.fq = lshr i16 %i.fp, 1
  %i.fr = trunc nuw i16 %i.fq to i8
  store i8 %i.fr, ptr %i.ej, align 1, !tbaa !9
  br label %bb.ai

bb.ae:                                            ; preds = %bb.y, %bb.x, %bb.w
  %i.fs = icmp eq i32 %i.dl, 0
  %or.cond11 = and i1 %i.fs, %i.dv
  %or.cond11.not = xor i1 %or.cond11, true
  %i.ft = icmp ne i32 %i.dl, %i.b
  %or.cond13.not = or i1 %i.ft, %i.dv
  %or.cond254 = select i1 %or.cond11.not, i1 %or.cond13.not, i1 false
  br i1 %or.cond254, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fu = sub nuw nsw i32 255, %.0205
  %i.fv = mul nuw nsw i32 %i.fu, 255
  %i.fw = lshr i32 %i.fv, 8
  %i.fx = trunc nuw i32 %i.fw to i8
  store i8 %i.fx, ptr %i.ek, align 1, !tbaa !9
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %i.fy = icmp eq i32 %i.dm, 0
  %or.cond15 = and i1 %i.fy, %i.dz
  %or.cond15.not = xor i1 %or.cond15, true
  %i.fz = icmp ne i32 %i.dm, %i.c
  %or.cond17.not = or i1 %i.fz, %i.dz
  %or.cond255 = select i1 %or.cond15.not, i1 %or.cond17.not, i1 false
  br i1 %or.cond255, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ga = sub nuw nsw i32 255, %.0204
  %i.gb = mul nuw nsw i32 %i.ga, 255
  %i.gc = lshr i32 %i.gb, 8
  %i.gd = trunc nuw i32 %i.gc to i8
  store i8 %i.gd, ptr %i.ek, align 1, !tbaa !9
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.af, %bb.ah, %bb.ad, %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count261
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !40

._crit_edge:                                      ; preds = %bb.ai, %bb.t, %bb.a
  ret void
}

declare zeroext i1 @lv_color32_eq(i32, i32) local_unnamed_addr #1

declare i32 @lv_color_mix32(i32, i32) local_unnamed_addr #1

declare zeroext i16 @lv_color_16_16_mix(i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"short", !4, i64 0}
!9 = !{!4, !4, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3}
!12 = !{!11, !4, i64 3}
!13 = !{!11, !4, i64 2}
!14 = !{!11, !4, i64 1}
!15 = !{!11, !4, i64 0}
!16 = !{!8, !8, i64 0}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = !{!"any pointer", !4, i64 0}
!23 = !{!"p1 _ZTS9_lv_obj_t", !22, i64 0}
!24 = !{!"p1 _ZTS11_lv_layer_t", !22, i64 0}
!25 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2}
!26 = !{!"long", !4, i64 0}
!27 = !{!"", !23, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !24, i64 24, !8, i64 32, !8, i64 34, !25, i64 36, !4, i64 39, !5, i64 40, !5, i64 42, !26, i64 48, !22, i64 56}
!28 = !{!"", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 4, !5, i64 6, !5, i64 8, !5, i64 10}
!29 = !{!"", !5, i64 0, !5, i64 4}
!30 = !{!"p1 _ZTS20_lv_draw_image_sup_t", !22, i64 0}
!31 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!32 = !{!"_lv_draw_image_dsc_t", !27, i64 0, !22, i64 64, !28, i64 72, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !29, i64 108, !25, i64 116, !4, i64 119, !4, i64 120, !5, i64 121, !8, i64 121, !8, i64 121, !22, i64 128, !30, i64 136, !31, i64 144, !22, i64 160}
!33 = !{!32, !5, i64 88}
!34 = !{!5, !5, i64 0}
!35 = !{!31, !5, i64 0}
!36 = !{!31, !5, i64 4}
!37 = !{!31, !5, i64 8}
!38 = distinct !{!38, !10}
!39 = distinct !{!39, !10}
!40 = distinct !{!40, !10}
!41 = !{!"", !4, i64 0, !4, i64 1}
!42 = !{!41, !4, i64 0}
!43 = !{!41, !4, i64 1}
end_hunk_1
