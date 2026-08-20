inline.NumInlined: 223
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 68
loop-unroll.NumUnrolled: 68
begin_hunk_0_@vc1_decode_i_blocks_adv:bb.a
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !121 ; 3 uses
  %i.qc = load i32, ptr %i.e, align 8, !tbaa !77  ; 4 uses
  %i.qd = load i32, ptr %i.bn, align 16, !tbaa !99 ; 6 uses
  %i.qe = load ptr, ptr %i.d, align 16, !tbaa !97 ; 6 uses
  %i.qf = lshr i32 %i.qc, 3
  %i.qg = zext nneg i32 %i.qf to i64
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qe, i64 %i.qg
  %i.qi = load i32, ptr %i.qh, align 1, !tbaa !98
  %i.qj = tail call i32 @llvm.bswap.i32(i32 %i.qi)
  %i.qk = and i32 %i.qc, 7
  %i.ql = shl i32 %i.qj, %i.qk
  %i.qm = lshr i32 %i.ql, 23
  %i.qn = zext nneg i32 %i.qm to i64
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.qb, i64 %i.qn ; 2 uses
  %i.qp = load i16, ptr %i.qo, align 2, !tbaa !98
  %i.qq = sext i16 %i.qp to i32                   ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qo, i64 2
  %i.qs = load i16, ptr %i.qr, align 2, !tbaa !98 ; 2 uses
  %i.qt = sext i16 %i.qs to i32                   ; 3 uses
  %i.qu = icmp slt i16 %i.qs, 0
  br i1 %i.qu, label %bb.az, label %get_vlc2.exit.i

bb.az:                                            ; preds = %bb.ay
  %i.qv = add i32 %i.qc, 9
  %i.qw = tail call i32 @llvm.umin.i32(i32 %i.qd, i32 %i.qv) ; 4 uses
  %i.qx = lshr i32 %i.qw, 3
  %i.qy = zext nneg i32 %i.qx to i64
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qe, i64 %i.qy
  %i.ra = load i32, ptr %i.qz, align 1, !tbaa !98
  %i.rb = tail call i32 @llvm.bswap.i32(i32 %i.ra)
  %i.rc = and i32 %i.qw, 7
  %i.rd = shl i32 %i.rb, %i.rc
  %i.re = add nsw i32 %i.qt, 32
  %i.rf = lshr i32 %i.rd, %i.re
  %i.rg = add i32 %i.rf, %i.qq
  %i.rh = zext i32 %i.rg to i64
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.qb, i64 %i.rh ; 2 uses
  %i.rj = load i16, ptr %i.ri, align 2, !tbaa !98
  %i.rk = sext i16 %i.rj to i32                   ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ri, i64 2
  %i.rm = load i16, ptr %i.rl, align 2, !tbaa !98 ; 2 uses
  %i.rn = sext i16 %i.rm to i32                   ; 2 uses
  %i.ro = icmp slt i16 %i.rm, 0
  br i1 %i.ro, label %bb.ba, label %get_vlc2.exit.i

bb.ba:                                            ; preds = %bb.az
  %i.rp = sub i32 %i.qw, %i.qt
  %i.rq = tail call i32 @llvm.umin.i32(i32 %i.qd, i32 %i.rp) ; 3 uses
  %i.rr = lshr i32 %i.rq, 3
  %i.rs = zext nneg i32 %i.rr to i64
  %i.rt = getelementptr inbounds nuw i8, ptr %i.qe, i64 %i.rs
  %i.ru = load i32, ptr %i.rt, align 1, !tbaa !98
  %i.rv = tail call i32 @llvm.bswap.i32(i32 %i.ru)
  %i.rw = and i32 %i.rq, 7
  %i.rx = shl i32 %i.rv, %i.rw
  %i.ry = add nsw i32 %i.rn, 32
  %i.rz = lshr i32 %i.rx, %i.ry
  %i.sa = add i32 %i.rz, %i.rk
  %i.sb = zext i32 %i.sa to i64
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.qb, i64 %i.sb ; 2 uses
  %i.sd = load i16, ptr %i.sc, align 2, !tbaa !98
  %i.se = sext i16 %i.sd to i32
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sc, i64 2
  %i.sg = load i16, ptr %i.sf, align 2, !tbaa !98
  %i.sh = sext i16 %i.sg to i32
  br label %get_vlc2.exit.i

get_vlc2.exit.i:                                  ; preds = %bb.ba, %bb.az, %bb.ay
  %.167.i.i = phi i32 [ %i.qq, %bb.ay ], [ %i.se, %bb.ba ], [ %i.rk, %bb.az ] ; 4 uses
  %.165.i.i = phi i32 [ %i.qc, %bb.ay ], [ %i.rq, %bb.ba ], [ %i.qw, %bb.az ]
  %.1.i.i = phi i32 [ %i.qt, %bb.ay ], [ %i.sh, %bb.ba ], [ %i.rn, %bb.az ]
  %i.si = add i32 %.1.i.i, %.165.i.i
  %i.sj = tail call i32 @llvm.umin.i32(i32 %i.qd, i32 %i.si) ; 8 uses
  store i32 %i.sj, ptr %i.e, align 8, !tbaa !77
  switch i32 %.167.i.i, label %bb.bc [
    i32 0, label %bb.bf
    i32 119, label %bb.bb
  ]

bb.bb:                                            ; preds = %get_vlc2.exit.i
  %i.sk = lshr i32 %i.sj, 3
  %i.sl = zext nneg i32 %i.sk to i64
  %i.sm = getelementptr inbounds nuw i8, ptr %i.qe, i64 %i.sl
  %i.sn = load i32, ptr %i.sm, align 1, !tbaa !98
  %i.so = tail call i32 @llvm.bswap.i32(i32 %i.sn)
  %i.sp = and i32 %i.sj, 7
  %i.sq = shl i32 %i.so, %i.sp
  %i.sr = lshr i32 %i.sq, %i.nq
  %i.ss = add i32 %i.np, %i.sj
  %i.st = tail call i32 @llvm.umin.i32(i32 %i.qd, i32 %i.ss) ; 2 uses
  store i32 %i.st, ptr %i.e, align 8, !tbaa !77
  br label %bb.be

bb.bc:                                            ; preds = %get_vlc2.exit.i
  br i1 %.not261.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.su = lshr i32 %i.sj, 3
  %i.sv = zext nneg i32 %i.su to i64
  %i.sw = getelementptr inbounds nuw i8, ptr %i.qe, i64 %i.sv
  %i.sx = load i32, ptr %i.sw, align 1, !tbaa !98
  %i.sy = tail call i32 @llvm.bswap.i32(i32 %i.sx)
  %i.sz = and i32 %i.sj, 7
  %i.ta = shl i32 %i.sy, %i.sz
  %i.tb = add i32 %i.sj, %i.no
  %i.tc = tail call i32 @llvm.umin.i32(i32 %i.qd, i32 %i.tb) ; 2 uses
  store i32 %i.tc, ptr %i.e, align 8, !tbaa !77
  %i.td = tail call i32 @llvm.fshl.i32(i32 %.167.i.i, i32 %i.ta, i32 %i.no)
  %i.te = add i32 %.neg.i, %i.td
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.tf = phi i32 [ %i.st, %bb.bb ], [ %i.tc, %bb.bd ], [ %i.sj, %bb.bc ] ; 4 uses
  %.0234.i = phi i32 [ %i.sr, %bb.bb ], [ %i.te, %bb.bd ], [ %.167.i.i, %bb.bc ] ; 2 uses
  %i.tg = lshr i32 %i.tf, 3
  %i.th = zext nneg i32 %i.tg to i64
  %i.ti = getelementptr inbounds nuw i8, ptr %i.qe, i64 %i.th
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !98
  %i.tk = icmp slt i32 %i.tf, %i.qd
  %i.tl = zext i1 %i.tk to i32
  %spec.select.i.i = add i32 %i.tf, %i.tl
  %i.tm = zext i8 %i.tj to i32
  %i.tn = and i32 %i.tf, 7
  store i32 %spec.select.i.i, ptr %i.e, align 8, !tbaa !77
  %i.to = lshr exact i32 128, %i.tn
  %i.tp = and i32 %i.to, %i.tm
  %.not262.i = icmp eq i32 %i.tp, 0
  %i.tq = sub nsw i32 0, %.0234.i
  %spec.select.i237 = select i1 %.not262.i, i32 %.0234.i, i32 %i.tq
  br label %bb.bf

bb.bf:                                            ; preds = %get_vlc2.exit.i, %bb.be
  %.2236.i = phi i32 [ %spec.select.i237, %bb.be ], [ %.167.i.i, %get_vlc2.exit.i ]
  %i.tr = load ptr, ptr %i.cc, align 8, !tbaa !114 ; 4 uses
  %i.ts = sext i32 %i.pu to i64
  %i.tt = getelementptr inbounds i8, ptr %i.tr, i64 %i.ts ; 5 uses
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !98
  %i.tv = tail call i8 @llvm.abs.i8(i8 %i.tu, i1 false) ; 4 uses
  %i.tw = zext i8 %i.tv to i64
  %i.tx = getelementptr inbounds nuw i8, ptr @ff_wmv3_dc_scale_table, i64 %i.tw
  %i.ty = load i8, ptr %i.tx, align 1, !tbaa !98  ; 2 uses
  %i.tz = zext i8 %i.ty to i32
  %i.ua = add nsw i32 %i.tz, -1                   ; 3 uses
  %i.ub = icmp ne i8 %i.ty, 0
  tail call void @llvm.assume(i1 %i.ub)
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !53 ; 3 uses
  %i.ue = load ptr, ptr %i.cj, align 16, !tbaa !122
  %i.uf = load i32, ptr %i.nt, align 4, !tbaa !53
  %i.ug = sext i32 %i.uf to i64                   ; 2 uses
  %i.uh = getelementptr inbounds [2 x i8], ptr %i.ue, i64 %i.ug ; 4 uses
  %i.ui = getelementptr inbounds i8, ptr %i.uh, i64 -2
  %i.uj = load i16, ptr %i.ui, align 2, !tbaa !95
  %i.uk = sext i16 %i.uj to i32                   ; 5 uses
  %i.ul = xor i32 %i.ud, -1
  %i.um = sext i32 %i.ul to i64
  %i.un = getelementptr inbounds [2 x i8], ptr %i.uh, i64 %i.um
  %i.uo = load i16, ptr %i.un, align 2, !tbaa !95
  %i.up = sext i16 %i.uo to i32                   ; 3 uses
  %i.uq = sub nsw i32 0, %i.ud
  %i.ur = sext i32 %i.uq to i64
  %i.us = getelementptr inbounds [2 x i8], ptr %i.uh, i64 %i.ur
  %i.ut = load i16, ptr %i.us, align 2, !tbaa !95
  %i.uu = sext i16 %i.ut to i32                   ; 3 uses
  %.not135.i = icmp ne i64 %indvars.iv, 1
  %i.uv = icmp ne i64 %indvars.iv, 3
  br i1 %narrow274, label %switch.early.test.i, label %bb.bi

switch.early.test.i:                              ; preds = %bb.bf
  switch i32 %i.oz, label %bb.bg [
    i32 3, label %bb.bi
    i32 1, label %bb.bi
  ]

bb.bg:                                            ; preds = %switch.early.test.i
  %i.uw = getelementptr i8, ptr %i.tt, i64 -1
  %i.ux = load i8, ptr %i.uw, align 1, !tbaa !98  ; 2 uses
  %i.uy = tail call i8 @llvm.abs.i8(i8 %i.ux, i1 false) ; 2 uses
  %.not.i242 = icmp eq i8 %i.ux, 0
  %.not119.i = icmp eq i8 %i.uy, %i.tv
  %or.cond.i243 = or i1 %.not.i242, %.not119.i
  br i1 %or.cond.i243, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.uz = zext i8 %i.uy to i64
  %i.va = getelementptr inbounds nuw i8, ptr @ff_wmv3_dc_scale_table, i64 %i.uz
  %i.vb = load i8, ptr %i.va, align 1, !tbaa !98
  %i.vc = zext i8 %i.vb to i32
  %i.vd = mul nsw i32 %i.vc, %i.uk
  %i.ve = zext nneg i32 %i.ua to i64
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr @ff_vc1_dqscale, i64 %i.ve
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !53
  %i.vh = mul i32 %i.vd, %i.vg
  %i.vi = add i32 %i.vh, 131072
  %i.vj = ashr i32 %i.vi, 18
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %switch.early.test.i, %switch.early.test.i, %bb.bf
  %.0102.i = phi i32 [ %i.vj, %bb.bh ], [ %i.uk, %switch.early.test.i ], [ %i.uk, %bb.bg ], [ %i.uk, %switch.early.test.i ], [ %i.uk, %bb.bf ] ; 3 uses
  %.not120.i = icmp eq i64 %indvars.iv, 2
  %i.vk = icmp samesign ult i64 %indvars.iv, 2
  %or.cond7.i = and i1 %i.vk, %narrow
  br i1 %or.cond7.i, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.vl = sub nsw i32 %i.pu, %i.ps
  %i.vm = sext i32 %i.vl to i64
  %i.vn = getelementptr inbounds i8, ptr %i.tr, i64 %i.vm
  %i.vo = load i8, ptr %i.vn, align 1, !tbaa !98  ; 2 uses
  %i.vp = tail call i8 @llvm.abs.i8(i8 %i.vo, i1 false) ; 2 uses
  %.not121.i = icmp eq i8 %i.vo, 0
  %.not122.i = icmp eq i8 %i.vp, %i.tv
  %or.cond126.i = or i1 %.not121.i, %.not122.i
  br i1 %or.cond126.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.vq = zext i8 %i.vp to i64
  %i.vr = getelementptr inbounds nuw i8, ptr @ff_wmv3_dc_scale_table, i64 %i.vq
  %i.vs = load i8, ptr %i.vr, align 1, !tbaa !98
  %i.vt = zext i8 %i.vs to i32
  %i.vu = mul nsw i32 %i.vt, %i.uu
  %i.vv = zext nneg i32 %i.ua to i64
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr @ff_vc1_dqscale, i64 %i.vv
  %i.vx = load i32, ptr %i.vw, align 4, !tbaa !53
  %i.vy = mul i32 %i.vu, %i.vx
  %i.vz = add i32 %i.vy, 131072
  %i.wa = ashr i32 %i.vz, 18
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi
  %.0105.i = phi i32 [ %i.wa, %bb.bk ], [ %i.uu, %bb.bi ], [ %i.uu, %bb.bj ] ; 2 uses
  %i.wb = and i1 %i.uv, %narrow274
  %or.cond11.i = and i1 %narrow, %i.wb
  br i1 %or.cond11.i, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %i.wc = sext i1 %.not135.i to i32
  %i.wd = select i1 %.not120.i, i32 0, i32 %i.ps
  %spec.select.i241 = sub i32 %i.wc, %i.wd
  %spec.select134.i = add i32 %spec.select.i241, %i.pu
  %i.we = sext i32 %spec.select134.i to i64
  %i.wf = getelementptr inbounds i8, ptr %i.tr, i64 %i.we
  %i.wg = load i8, ptr %i.wf, align 1, !tbaa !98  ; 2 uses
  %i.wh = tail call i8 @llvm.abs.i8(i8 %i.wg, i1 false) ; 2 uses
  %.not123.i = icmp eq i8 %i.wg, 0
  %.not124.i = icmp eq i8 %i.wh, %i.tv
  %or.cond127.i = or i1 %.not123.i, %.not124.i
  br i1 %or.cond127.i, label %.thread130.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.wi = zext i8 %i.wh to i64
  %i.wj = getelementptr inbounds nuw i8, ptr @ff_wmv3_dc_scale_table, i64 %i.wi
  %i.wk = load i8, ptr %i.wj, align 1, !tbaa !98
  %i.wl = zext i8 %i.wk to i32
  %i.wm = mul nsw i32 %i.wl, %i.up
  %i.wn = zext nneg i32 %i.ua to i64
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr @ff_vc1_dqscale, i64 %i.wn
  %i.wp = load i32, ptr %i.wo, align 4, !tbaa !53
  %i.wq = mul i32 %i.wm, %i.wp
  %i.wr = add i32 %i.wq, 131072
  %i.ws = ashr i32 %i.wr, 18
  br label %.thread130.i

bb.bo:                                            ; preds = %bb.bl
  br i1 %narrow274, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  br i1 %narrow, label %.thread130.i, label %ff_vc1_pred_dc.exit

.thread130.i:                                     ; preds = %bb.bp, %bb.bn, %bb.bm
  %.1104129132.i = phi i32 [ %i.up, %bb.bp ], [ %i.up, %bb.bm ], [ %i.ws, %bb.bn ] ; 2 uses
  %i.wt = sub nsw i32 %.0105.i, %.1104129132.i
  %i.wu = tail call i32 @llvm.abs.i32(i32 %i.wt, i1 true)
  %i.wv = sub nsw i32 %.1104129132.i, %.0102.i
  %i.ww = tail call i32 @llvm.abs.i32(i32 %i.wv, i1 true)
  %.not125.i = icmp samesign ugt i32 %i.wu, %i.ww
  br i1 %.not125.i, label %.thread133.i, label %ff_vc1_pred_dc.exit

bb.bq:                                            ; preds = %bb.bo
  br i1 %narrow, label %.thread133.i, label %ff_vc1_pred_dc.exit

.thread133.i:                                     ; preds = %bb.bq, %.thread130.i
  br label %ff_vc1_pred_dc.exit

ff_vc1_pred_dc.exit:                              ; preds = %bb.bp, %.thread130.i, %bb.bq, %.thread133.i
  %.not263.i = phi i1 [ false, %bb.bq ], [ true, %.thread133.i ], [ false, %bb.bp ], [ false, %.thread130.i ] ; 6 uses
  %.0106.i = phi i32 [ 0, %bb.bq ], [ %.0105.i, %.thread133.i ], [ %.0102.i, %bb.bp ], [ %.0102.i, %.thread130.i ]
  %i.wx = add nsw i32 %.0106.i, %.2236.i          ; 2 uses
  %i.wy = trunc i32 %i.wx to i16
  store i16 %i.wy, ptr %i.uh, align 2, !tbaa !95
  %i.wz = load i32, ptr %i.cd, align 8, !tbaa !115
  %i.xa = mul nsw i32 %i.wz, %i.wx
  %i.xb = trunc i32 %i.xa to i16
  store i16 %i.xb, ptr %i.po, align 2, !tbaa !95
  %or.cond8.i = select i1 %narrow, i1 true, i1 %narrow274
  %spec.select286.i = select i1 %or.cond8.i, i32 %i.pq, i32 0 ; 3 uses
  br i1 %i.nl, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %ff_vc1_pred_dc.exit
  %i.xc = load i8, ptr %i.co, align 4, !tbaa !47
  %i.xd = zext i8 %i.xc to i32
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %ff_vc1_pred_dc.exit
  %i.xe = phi i32 [ %i.xd, %bb.br ], [ 0, %ff_vc1_pred_dc.exit ]
  %i.xf = add nuw nsw i32 %i.xe, %i.nk            ; 2 uses
  %i.xg = load ptr, ptr %i.ck, align 8, !tbaa !123
  %i.xh = getelementptr inbounds [32 x i8], ptr %i.xg, i64 %i.ug ; 18 uses
  br i1 %.not263.i, label %bb.bt, label %.thread.i

bb.bt:                                            ; preds = %bb.bs
  %i.xi = shl nsw i32 %i.ud, 4
  %i.xj = sext i32 %i.xi to i64
  %i.xk = sub nsw i64 0, %i.xj
  %i.xl = getelementptr inbounds [2 x i8], ptr %i.xh, i64 %i.xk ; 4 uses
  %i.xm = load i8, ptr %i.tt, align 1, !tbaa !98  ; 5 uses
  %i.xn = sext i8 %i.xm to i32                    ; 6 uses
  %i.xo = icmp eq i64 %indvars.iv, 3
  br i1 %i.xo, label %bb.bz, label %bb.bw

.thread.i:                                        ; preds = %bb.bs
  %i.xp = getelementptr inbounds i8, ptr %i.xh, i64 -32 ; 4 uses
  %i.xq = load i8, ptr %i.tt, align 1, !tbaa !98  ; 5 uses
  %i.xr = sext i8 %i.xq to i32                    ; 6 uses
  switch i32 %i.oz, label %bb.bu [
    i32 3, label %bb.bz
    i32 1, label %bb.bz
  ]

bb.bu:                                            ; preds = %.thread.i
  %i.xs = icmp ne i32 %i.pu, 0
  %or.cond10.i = select i1 %narrow274, i1 %i.xs, i1 false
  br i1 %or.cond10.i, label %bb.bv, label %bb.bz

bb.bv:                                            ; preds = %bb.bu
  %i.xt = getelementptr i8, ptr %i.tt, i64 -1
  %i.xu = load i8, ptr %i.xt, align 1, !tbaa !98
  %i.xv = sext i8 %i.xu to i32
  br label %bb.bz

bb.bw:                                            ; preds = %bb.bt
  %i.xw = icmp ne i64 %indvars.iv, 2              ; 2 uses
  %brmerge.not.i = select i1 %i.xw, i1 %narrow, i1 false
  %.mux.i = select i1 %i.xw, i32 0, i32 %i.xn
  br i1 %brmerge.not.i, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  %.not265.i = icmp slt i32 %i.pu, %i.ps
  br i1 %.not265.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.xx = sub nsw i32 %i.pu, %i.ps
  %i.xy = zext nneg i32 %i.xx to i64
  %i.xz = getelementptr inbounds nuw i8, ptr %i.tr, i64 %i.xy
  %i.ya = load i8, ptr %i.xz, align 1, !tbaa !98
  %i.yb = sext i8 %i.ya to i32
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %.thread.i, %.thread.i, %bb.bt
  %i.yc = phi i32 [ %i.xn, %bb.bw ], [ %i.xn, %bb.bt ], [ %i.xr, %bb.bv ], [ %i.xr, %bb.bu ], [ %i.xr, %.thread.i ], [ %i.xn, %bb.by ], [ %i.xn, %bb.bx ], [ %i.xr, %.thread.i ] ; 2 uses
  %i.yd = phi i8 [ %i.xm, %bb.bw ], [ %i.xm, %bb.bt ], [ %i.xq, %bb.bv ], [ %i.xq, %bb.bu ], [ %i.xq, %.thread.i ], [ %i.xm, %bb.by ], [ %i.xm, %bb.bx ], [ %i.xq, %.thread.i ] ; 2 uses
  %.0238294.i = phi ptr [ %i.xl, %bb.bw ], [ %i.xl, %bb.bt ], [ %i.xp, %bb.bv ], [ %i.xp, %bb.bu ], [ %i.xp, %.thread.i ], [ %i.xl, %bb.by ], [ %i.xl, %bb.bx ], [ %i.xp, %.thread.i ] ; 2 uses
  %.0230.i = phi i32 [ %.mux.i, %bb.bw ], [ %i.xn, %bb.bt ], [ %i.xv, %bb.bv ], [ 0, %bb.bu ], [ %i.xr, %.thread.i ], [ %i.yb, %bb.by ], [ 0, %bb.bx ], [ %i.xr, %.thread.i ] ; 6 uses
  %.not266.i = icmp eq i32 %.0195, 0
  br i1 %.not266.i, label %bb.ct, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %.not274.i = icmp eq i32 %i.pq, 0
  br i1 %.not274.i, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.not276.i = icmp eq i32 %spec.select286.i, 0
  br i1 %.not276.i, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.ye = load i32, ptr %i.cp, align 4, !tbaa !124
  %i.yf = icmp eq i32 %i.ye, 1
  br i1 %i.yf, label %.lr.ph.preheader.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %..i = select i1 %.not263.i, i64 6250, i64 6314
  br label %.lr.ph.preheader.i

bb.ce:                                            ; preds = %bb.ca
  %i.yg = load i32, ptr %i.cp, align 4, !tbaa !124
  %.not275.i = icmp eq i32 %i.yg, 1
  %.381.i = select i1 %.not275.i, i64 9820, i64 6186
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.ce, %bb.cd, %bb.cc
  %.sink.i = phi i64 [ %..i, %bb.cd ], [ 9820, %bb.cc ], [ %.381.i, %bb.ce ]
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.cg, %.lr.ph.preheader.i
  %.0223329.i = phi i32 [ %i.yu, %bb.cg ], [ 1, %.lr.ph.preheader.i ]
  %i.yi = call fastcc i32 @vc1_decode_ac_coeff(ptr noundef nonnull %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, i32 noundef %i.pp)
end_hunk_0
begin_hunk_1_@vc1_decode_i_blocks:bb.a
  store i8 %i.hs, ptr %i.hu, align 1, !tbaa !98
  br label %bb.o

bb.o:                                             ; preds = %vc1_coded_block_pred.exit, %bb.l
  %.in.v = phi i64 [ 6456, %vc1_coded_block_pred.exit ], [ 6460, %bb.l ]
  %.0128 = phi i32 [ %i.hr, %vc1_coded_block_pred.exit ], [ %i.gz, %bb.l ] ; 2 uses
  %i.hv = shl nuw nsw i32 %.0128, %i.gx
  %i.hw = or i32 %i.hv, %.0129148
  %i.hx = load ptr, ptr %i.at, align 8, !tbaa !89
  %i.hy = load i32, ptr %i.au, align 4, !tbaa !87
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds [768 x i8], ptr %i.hx, i64 %i.hz
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr @block_map, i64 %indvars.iv
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !53
  %i.id = sext i32 %i.ic to i64                   ; 2 uses
  %i.ie = getelementptr inbounds [128 x i8], ptr %i.ia, i64 %i.id ; 37 uses
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.if = load i32, ptr %.in, align 4, !tbaa !53
  %i.ig = load i32, ptr %i.be, align 4, !tbaa !120
  %i.ih = sext i32 %i.ig to i64
  %i.ii = getelementptr inbounds [16 x i8], ptr @ff_msmp4_dc_vlc, i64 %i.ih
  %i.ij = icmp samesign ugt i64 %indvars.iv, 3
  %i.ik = zext i1 %i.ij to i64
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.ik
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !121 ; 3 uses
  %i.in = load i32, ptr %i.ba, align 8, !tbaa !77 ; 4 uses
  %i.io = load i32, ptr %i.bb, align 16, !tbaa !99 ; 6 uses
  %i.ip = load ptr, ptr %i.az, align 16, !tbaa !97 ; 6 uses
  %i.iq = lshr i32 %i.in, 3
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.ir
  %i.it = load i32, ptr %i.is, align 1, !tbaa !98
  %i.iu = tail call i32 @llvm.bswap.i32(i32 %i.it)
  %i.iv = and i32 %i.in, 7
  %i.iw = shl i32 %i.iu, %i.iv
  %i.ix = lshr i32 %i.iw, 23
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.iy ; 2 uses
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !98
  %i.jb = sext i16 %i.ja to i32                   ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 2
  %i.jd = load i16, ptr %i.jc, align 2, !tbaa !98 ; 2 uses
  %i.je = sext i16 %i.jd to i32                   ; 3 uses
  %i.jf = icmp slt i16 %i.jd, 0
  br i1 %i.jf, label %bb.p, label %get_vlc2.exit.i

bb.p:                                             ; preds = %bb.o
  %i.jg = add i32 %i.in, 9
  %i.jh = tail call i32 @llvm.umin.i32(i32 %i.io, i32 %i.jg) ; 4 uses
  %i.ji = lshr i32 %i.jh, 3
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.jj
  %i.jl = load i32, ptr %i.jk, align 1, !tbaa !98
  %i.jm = tail call i32 @llvm.bswap.i32(i32 %i.jl)
  %i.jn = and i32 %i.jh, 7
  %i.jo = shl i32 %i.jm, %i.jn
  %i.jp = add nsw i32 %i.je, 32
  %i.jq = lshr i32 %i.jo, %i.jp
  %i.jr = add i32 %i.jq, %i.jb
  %i.js = zext i32 %i.jr to i64
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.js ; 2 uses
  %i.ju = load i16, ptr %i.jt, align 2, !tbaa !98
  %i.jv = sext i16 %i.ju to i32                   ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 2
  %i.jx = load i16, ptr %i.jw, align 2, !tbaa !98 ; 2 uses
  %i.jy = sext i16 %i.jx to i32                   ; 2 uses
  %i.jz = icmp slt i16 %i.jx, 0
  br i1 %i.jz, label %bb.q, label %get_vlc2.exit.i

bb.q:                                             ; preds = %bb.p
  %i.ka = sub i32 %i.jh, %i.je
  %i.kb = tail call i32 @llvm.umin.i32(i32 %i.io, i32 %i.ka) ; 3 uses
  %i.kc = lshr i32 %i.kb, 3
  %i.kd = zext nneg i32 %i.kc to i64
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.kd
  %i.kf = load i32, ptr %i.ke, align 1, !tbaa !98
  %i.kg = tail call i32 @llvm.bswap.i32(i32 %i.kf)
  %i.kh = and i32 %i.kb, 7
  %i.ki = shl i32 %i.kg, %i.kh
  %i.kj = add nsw i32 %i.jy, 32
  %i.kk = lshr i32 %i.ki, %i.kj
  %i.kl = add i32 %i.kk, %i.jv
  %i.km = zext i32 %i.kl to i64
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.km ; 2 uses
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !98
  %i.kp = sext i16 %i.ko to i32
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 2
  %i.kr = load i16, ptr %i.kq, align 2, !tbaa !98
  %i.ks = sext i16 %i.kr to i32
  br label %get_vlc2.exit.i

get_vlc2.exit.i:                                  ; preds = %bb.q, %bb.p, %bb.o
  %.167.i.i = phi i32 [ %i.jb, %bb.o ], [ %i.kp, %bb.q ], [ %i.jv, %bb.p ] ; 5 uses
  %.165.i.i = phi i32 [ %i.in, %bb.o ], [ %i.kb, %bb.q ], [ %i.jh, %bb.p ]
  %.1.i.i = phi i32 [ %i.je, %bb.o ], [ %i.ks, %bb.q ], [ %i.jy, %bb.p ]
  %i.kt = add i32 %.1.i.i, %.165.i.i
  %i.ku = tail call i32 @llvm.umin.i32(i32 %i.io, i32 %i.kt) ; 8 uses
  store i32 %i.ku, ptr %i.ba, align 8, !tbaa !77
  %.not.i138 = icmp eq i32 %.167.i.i, 0
  %.pre.i = load i8, ptr %i.r, align 8, !tbaa !46 ; 4 uses
  br i1 %.not.i138, label %get_vlc2.exit._crit_edge.i, label %bb.r

bb.r:                                             ; preds = %get_vlc2.exit.i
  %.off.i = add i8 %.pre.i, -1
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %bb.s, label %.thread.i

bb.s:                                             ; preds = %bb.r
  %narrow.i = sub nuw nsw i8 3, %.pre.i
  %i.kv = zext nneg i8 %narrow.i to i32           ; 4 uses
  %i.kw = icmp eq i32 %.167.i.i, 119
  br i1 %i.kw, label %bb.t, label %bb.u

.thread.i:                                        ; preds = %bb.r
  %i.kx = icmp eq i32 %.167.i.i, 119
  br i1 %i.kx, label %bb.t, label %.thread171.i

bb.t:                                             ; preds = %.thread.i, %bb.s
  %i.ky = phi i32 [ 0, %.thread.i ], [ %i.kv, %bb.s ] ; 2 uses
  %i.kz = lshr i32 %i.ku, 3
  %i.la = zext nneg i32 %i.kz to i64
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.la
  %i.lc = load i32, ptr %i.lb, align 1, !tbaa !98
  %i.ld = tail call i32 @llvm.bswap.i32(i32 %i.lc)
  %i.le = and i32 %i.ku, 7
  %i.lf = shl i32 %i.ld, %i.le
  %i.lg = sub nuw nsw i32 24, %i.ky
  %i.lh = lshr i32 %i.lf, %i.lg
  %i.li = add i32 %i.ku, 8
  %i.lj = add i32 %i.li, %i.ky
  %i.lk = tail call i32 @llvm.umin.i32(i32 %i.io, i32 %i.lj) ; 2 uses
  store i32 %i.lk, ptr %i.ba, align 8, !tbaa !77
  br label %.thread171.i

bb.u:                                             ; preds = %bb.s
  %i.ll = lshr i32 %i.ku, 3
  %i.lm = zext nneg i32 %i.ll to i64
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.lm
  %i.lo = load i32, ptr %i.ln, align 1, !tbaa !98
  %i.lp = tail call i32 @llvm.bswap.i32(i32 %i.lo)
  %i.lq = and i32 %i.ku, 7
  %i.lr = shl i32 %i.lp, %i.lq
  %i.ls = add i32 %i.ku, %i.kv
  %i.lt = tail call i32 @llvm.umin.i32(i32 %i.io, i32 %i.ls) ; 2 uses
  store i32 %i.lt, ptr %i.ba, align 8, !tbaa !77
  %i.lu = tail call i32 @llvm.fshl.i32(i32 %.167.i.i, i32 %i.lr, i32 %i.kv)
  %notmask.i = shl nsw i32 -1, %i.kv
  %.neg.i = add nuw nsw i32 %notmask.i, 1
  %i.lv = add nsw i32 %.neg.i, %i.lu
  br label %.thread171.i

.thread171.i:                                     ; preds = %bb.u, %bb.t, %.thread.i
  %i.lw = phi i32 [ %i.lk, %bb.t ], [ %i.lt, %bb.u ], [ %i.ku, %.thread.i ] ; 4 uses
  %.0133.i = phi i32 [ %i.lh, %bb.t ], [ %i.lv, %bb.u ], [ %.167.i.i, %.thread.i ] ; 2 uses
  %i.lx = lshr i32 %i.lw, 3
  %i.ly = zext nneg i32 %i.lx to i64
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.ly
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !98
  %i.mb = icmp slt i32 %i.lw, %i.io
  %i.mc = zext i1 %i.mb to i32
  %spec.select.i.i = add i32 %i.lw, %i.mc
  %i.md = zext i8 %i.ma to i32
  %i.me = and i32 %i.lw, 7
  store i32 %spec.select.i.i, ptr %i.ba, align 8, !tbaa !77
  %i.mf = lshr exact i32 128, %i.me
  %i.mg = and i32 %i.mf, %i.md
  %.not153.i = icmp eq i32 %i.mg, 0
  %i.mh = sub nsw i32 0, %.0133.i
  %spec.select.i139 = select i1 %.not153.i, i32 %.0133.i, i32 %i.mh
  br label %get_vlc2.exit._crit_edge.i

get_vlc2.exit._crit_edge.i:                       ; preds = %.thread171.i, %get_vlc2.exit.i
  %.2135.i = phi i32 [ %spec.select.i139, %.thread171.i ], [ 0, %get_vlc2.exit.i ]
  %i.mi = load i32, ptr %i.bf, align 4, !tbaa !131
  %i.mj = zext i8 %.pre.i to i32
  %i.mk = load i32, ptr %i.x, align 8, !tbaa !115 ; 3 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !53 ; 3 uses
  %i.mn = load ptr, ptr %i.bh, align 16, !tbaa !122
  %i.mo = load i32, ptr %i.gs, align 4, !tbaa !53
  %i.mp = sext i32 %i.mo to i64                   ; 2 uses
  %i.mq = getelementptr inbounds [2 x i8], ptr %i.mn, i64 %i.mp ; 4 uses
  %i.mr = getelementptr inbounds i8, ptr %i.mq, i64 -2
  %i.ms = load i16, ptr %i.mr, align 2, !tbaa !95
  %i.mt = sext i16 %i.ms to i32                   ; 2 uses
  %i.mu = xor i32 %i.mm, -1
  %i.mv = sext i32 %i.mu to i64
  %i.mw = getelementptr inbounds [2 x i8], ptr %i.mq, i64 %i.mv
  %i.mx = load i16, ptr %i.mw, align 2, !tbaa !95
  %i.my = sext i16 %i.mx to i32                   ; 2 uses
  %i.mz = sub nsw i32 0, %i.mm
  %i.na = sext i32 %i.mz to i64
  %i.nb = getelementptr inbounds [2 x i8], ptr %i.mq, i64 %i.na
  %i.nc = load i16, ptr %i.nb, align 2, !tbaa !95
  %i.nd = sext i16 %i.nc to i32                   ; 2 uses
  %i.ne = icmp ugt i8 %.pre.i, 8
  %i.nf = icmp ne i32 %i.mi, 0
  %or.cond.i.i = and i1 %i.ne, %i.nf
  %i.ng = load i32, ptr %i.ab, align 4, !tbaa !61
  %i.nh = icmp ne i32 %i.ng, 0
  %i.ni = icmp samesign ult i64 %indvars.iv, 2
  %or.cond13.i.i = and i1 %i.ni, %i.nh            ; 3 uses
  br i1 %or.cond.i.i, label %bb.z, label %bb.v

bb.v:                                             ; preds = %get_vlc2.exit._crit_edge.i
  br i1 %or.cond13.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.nj = sext i32 %i.mk to i64
  %i.nk = getelementptr inbounds [2 x i8], ptr @vc1_i_pred_dc.dcpred, i64 %i.nj
  %i.nl = load i16, ptr %i.nk, align 2, !tbaa !95
  %i.nm = zext i16 %i.nl to i32                   ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.056.i.i = phi i32 [ %i.nm, %bb.w ], [ %i.nd, %bb.v ] ; 2 uses
  %.055.i.i = phi i32 [ %i.nm, %bb.w ], [ %i.my, %bb.v ]
  %i.nn = load i32, ptr %i.z, align 4, !tbaa !63
  %i.no = icmp eq i32 %i.nn, 0
  %i.np = and i64 %indvars.iv, 5
  %i.nq = icmp ne i64 %i.np, 1
  %or.cond9.i.i = and i1 %i.nq, %i.no
  br i1 %or.cond9.i.i, label %bb.y, label %vc1_i_pred_dc.exit.i

bb.y:                                             ; preds = %bb.x
  %i.nr = sext i32 %i.mk to i64
  %i.ns = getelementptr inbounds [2 x i8], ptr @vc1_i_pred_dc.dcpred, i64 %i.nr
  %i.nt = load i16, ptr %i.ns, align 2, !tbaa !95
  %i.nu = zext i16 %i.nt to i32                   ; 2 uses
  br label %vc1_i_pred_dc.exit.i

bb.z:                                             ; preds = %get_vlc2.exit._crit_edge.i
  %spec.select.i167.i = select i1 %or.cond13.i.i, i32 0, i32 %i.nd
  %i.nv = load i32, ptr %i.z, align 4, !tbaa !63
  %i.nw = icmp eq i32 %i.nv, 0
  %i.nx = and i64 %indvars.iv, 5
  %i.ny = icmp ne i64 %i.nx, 1
  %or.cond17.i.i = and i1 %i.ny, %i.nw            ; 2 uses
  %i.nz = select i1 %or.cond17.i.i, i1 true, i1 %or.cond13.i.i
  %spec.select60.i.i = select i1 %i.nz, i32 0, i32 %i.my
  %spec.select61.i.i = select i1 %or.cond17.i.i, i32 0, i32 %i.mt
  br label %vc1_i_pred_dc.exit.i

vc1_i_pred_dc.exit.i:                             ; preds = %bb.z, %bb.y, %bb.x
  %.258.i.i = phi i32 [ %.056.i.i, %bb.x ], [ %spec.select.i167.i, %bb.z ], [ %.056.i.i, %bb.y ] ; 2 uses
  %.2.i.i = phi i32 [ %.055.i.i, %bb.x ], [ %spec.select60.i.i, %bb.z ], [ %i.nu, %bb.y ] ; 2 uses
  %.054.i.i = phi i32 [ %i.mt, %bb.x ], [ %spec.select61.i.i, %bb.z ], [ %i.nu, %bb.y ] ; 2 uses
  %i.oa = sub nsw i32 %.258.i.i, %.2.i.i
  %i.ob = tail call i32 @llvm.abs.i32(i32 %i.oa, i1 true)
  %i.oc = sub nsw i32 %.2.i.i, %.054.i.i
  %i.od = tail call i32 @llvm.abs.i32(i32 %i.oc, i1 true)
  %.not.i.not.i = icmp samesign ugt i32 %i.ob, %i.od ; 7 uses
  %.258..054.i.i = select i1 %.not.i.not.i, i32 %.258.i.i, i32 %.054.i.i
  %i.oe = add nsw i32 %.258..054.i.i, %.2135.i    ; 2 uses
  %i.of = trunc i32 %i.oe to i16
  store i16 %i.of, ptr %i.mq, align 2, !tbaa !95
  %i.og = mul nsw i32 %i.oe, %i.mk
  %i.oh = trunc i32 %i.og to i16
  store i16 %i.oh, ptr %i.ie, align 2, !tbaa !95
  %i.oi = load ptr, ptr %i.bi, align 8, !tbaa !123
  %i.oj = getelementptr inbounds [32 x i8], ptr %i.oi, i64 %i.mp ; 18 uses
  %i.ok = getelementptr inbounds i8, ptr %i.oj, i64 -32
  %i.ol = shl nsw i32 %i.mm, 4
  %i.om = sext i32 %i.ol to i64
  %i.on = sub nsw i64 0, %i.om
  %i.oo = getelementptr inbounds [2 x i8], ptr %i.oj, i64 %i.on
  %.0137.i = select i1 %.not.i.not.i, ptr %i.oo, ptr %i.ok ; 2 uses
  %i.op = shl nuw nsw i32 %i.mj, 1
  %i.oq = load i8, ptr %i.bj, align 4, !tbaa !47
  %i.or = zext i8 %i.oq to i32
  %i.os = add nuw nsw i32 %i.op, %i.or            ; 2 uses
  %.not155.i = icmp eq i32 %.0128, 0
  br i1 %.not155.i, label %bb.ah, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %vc1_i_pred_dc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.ot = load i32, ptr %i.bc, align 16, !tbaa !103
  %.not160.i = icmp eq i32 %i.ot, 0
  %..i = select i1 %.not.i.not.i, i64 6250, i64 6314
  %.sink.i = select i1 %.not160.i, i64 6186, i64 %..i
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ab, %.lr.ph.preheader.i
  %.0127189.i = phi i32 [ %i.ph, %bb.ab ], [ 1, %.lr.ph.preheader.i ]
  %i.ov = call fastcc i32 @vc1_decode_ac_coeff(ptr noundef nonnull %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, i32 noundef %i.if)
  %i.ow = icmp slt i32 %i.ov, 0
  br i1 %i.ow, label %.critedge.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i
  %i.ox = load i32, ptr %i.b, align 4, !tbaa !53
  %i.oy = add nsw i32 %i.ox, %.0127189.i          ; 3 uses
  %i.oz = icmp sgt i32 %i.oy, 63
  br i1 %i.oz, label %.thread178.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.pa = load i32, ptr %i.c, align 4, !tbaa !53
  %i.pb = trunc i32 %i.pa to i16
  %i.pc = sext i32 %i.oy to i64
  %i.pd = getelementptr inbounds i8, ptr %i.ou, i64 %i.pc
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !98
  %i.pf = zext i8 %i.pe to i64
  %i.pg = getelementptr inbounds nuw [2 x i8], ptr %i.ie, i64 %i.pf
  store i16 %i.pb, ptr %i.pg, align 2, !tbaa !95
  %i.ph = add nsw i32 %i.oy, 1
  %i.pi = load i32, ptr %i.a, align 4, !tbaa !53
  %.not162.i = icmp eq i32 %i.pi, 0
  br i1 %.not162.i, label %.lr.ph.i, label %.thread178.i, !llvm.loop !137

.thread178.i:                                     ; preds = %bb.ab, %bb.aa
  %.pre208.i = load i32, ptr %i.bc, align 16, !tbaa !119
  %.not163.i = icmp eq i32 %.pre208.i, 0
  br i1 %.not163.i, label %.loopexit187.i, label %.loopexit187.loopexit.i

.loopexit187.loopexit.i:                          ; preds = %.thread178.i
  %.1138.idx.i = select i1 %.not.i.not.i, i64 16, i64 0
  %.1138.i = getelementptr inbounds nuw i8, ptr %.0137.i, i64 %.1138.idx.i ; 7 uses
  %.0125.in.v.i = select i1 %.not.i.not.i, i64 6384, i64 6380
  %.0125.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.0125.in.v.i
  %.0125.i = load i32, ptr %.0125.in.i, align 4, !tbaa !53 ; 7 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %.1138.i, i64 2
  %i.pk = load i16, ptr %i.pj, align 2, !tbaa !95
  %i.pl = shl nuw i32 1, %.0125.i
  %i.pm = sext i32 %i.pl to i64
  %i.pn = getelementptr inbounds [2 x i8], ptr %i.ie, i64 %i.pm ; 2 uses
  %i.po = load i16, ptr %i.pn, align 2, !tbaa !95
  %i.pp = add i16 %i.po, %i.pk
  store i16 %i.pp, ptr %i.pn, align 2, !tbaa !95
  %i.pq = getelementptr inbounds nuw i8, ptr %.1138.i, i64 4
  %i.pr = load i16, ptr %i.pq, align 2, !tbaa !95
  %i.ps = shl i32 2, %.0125.i
  %i.pt = sext i32 %i.ps to i64
  %i.pu = getelementptr inbounds [2 x i8], ptr %i.ie, i64 %i.pt ; 2 uses
  %i.pv = load i16, ptr %i.pu, align 2, !tbaa !95
  %i.pw = add i16 %i.pv, %i.pr
  store i16 %i.pw, ptr %i.pu, align 2, !tbaa !95
  %i.px = getelementptr inbounds nuw i8, ptr %.1138.i, i64 6
  %i.py = load i16, ptr %i.px, align 2, !tbaa !95
  %i.pz = shl i32 3, %.0125.i
  %i.qa = sext i32 %i.pz to i64
  %i.qb = getelementptr inbounds [2 x i8], ptr %i.ie, i64 %i.qa ; 2 uses
  %i.qc = load i16, ptr %i.qb, align 2, !tbaa !95
  %i.qd = add i16 %i.qc, %i.py
  store i16 %i.qd, ptr %i.qb, align 2, !tbaa !95
  %i.qe = getelementptr inbounds nuw i8, ptr %.1138.i, i64 8
  %i.qf = load i16, ptr %i.qe, align 2, !tbaa !95
  %i.qg = shl i32 4, %.0125.i
  %i.qh = sext i32 %i.qg to i64
  %i.qi = getelementptr inbounds [2 x i8], ptr %i.ie, i64 %i.qh ; 2 uses
  %i.qj = load i16, ptr %i.qi, align 2, !tbaa !95
  %i.qk = add i16 %i.qj, %i.qf
  store i16 %i.qk, ptr %i.qi, align 2, !tbaa !95
  %i.ql = getelementptr inbounds nuw i8, ptr %.1138.i, i64 10
  %i.qm = load i16, ptr %i.ql, align 2, !tbaa !95
  %i.qn = shl i32 5, %.0125.i
  %i.qo = sext i32 %i.qn to i64
  %i.qp = getelementptr inbounds [2 x i8], ptr %i.ie, i64 %i.qo ; 2 uses
  %i.qq = load i16, ptr %i.qp, align 2, !tbaa !95
  %i.qr = add i16 %i.qq, %i.qm
  store i16 %i.qr, ptr %i.qp, align 2, !tbaa !95
  %i.qs = getelementptr inbounds nuw i8, ptr %.1138.i, i64 12
  %i.qt = load i16, ptr %i.qs, align 2, !tbaa !95
  %i.qu = shl i32 6, %.0125.i
  %i.qv = sext i32 %i.qu to i64
  %i.qw = getelementptr inbounds [2 x i8], ptr %i.ie, i64 %i.qv ; 2 uses
  %i.qx = load i16, ptr %i.qw, align 2, !tbaa !95
  %i.qy = add i16 %i.qx, %i.qt
  store i16 %i.qy, ptr %i.qw, align 2, !tbaa !95
  %i.qz = getelementptr inbounds nuw i8, ptr %.1138.i, i64 14
  %i.ra = load i16, ptr %i.qz, align 2, !tbaa !95
  %i.rb = shl i32 7, %.0125.i
  %i.rc = sext i32 %i.rb to i64
  %i.rd = getelementptr inbounds [2 x i8], ptr %i.ie, i64 %i.rc ; 2 uses
  %i.re = load i16, ptr %i.rd, align 2, !tbaa !95
  %i.rf = add i16 %i.re, %i.ra
  store i16 %i.rf, ptr %i.rd, align 2, !tbaa !95
  br label %.loopexit187.i

.loopexit187.i:                                   ; preds = %.loopexit187.loopexit.i, %.thread178.i
  %i.rg = load i32, ptr %i.bn, align 4, !tbaa !126 ; 7 uses
  %i.rh = load i32, ptr %i.bo, align 16, !tbaa !127 ; 7 uses
  %i.ri = shl nuw i32 1, %i.rg
  %i.rj = sext i32 %i.ri to i64
  %i.rk = getelementptr inbounds [2 x i8], ptr %i.ie, i64 %i.rj
  %i.rl = load i16, ptr %i.rk, align 2, !tbaa !95
  %i.rm = getelementptr inbounds nuw i8, ptr %i.oj, i64 2
  store i16 %i.rl, ptr %i.rm, align 2, !tbaa !95
  %i.rn = shl nuw i32 1, %i.rh
  %i.ro = sext i32 %i.rn to i64
  %i.rp = getelementptr inbounds [2 x i8], ptr %i.ie, i64 %i.ro
  %i.rq = load i16, ptr %i.rp, align 2, !tbaa !95
  %i.rr = getelementptr inbounds nuw i8, ptr %i.oj, i64 18
  store i16 %i.rq, ptr %i.rr, align 2, !tbaa !95
  %i.rs = shl i32 2, %i.rg
  %i.rt = sext i32 %i.rs to i64
  %i.ru = getelementptr inbounds [2 x i8], ptr %i.ie, i64 %i.rt
  %i.rv = load i16, ptr %i.ru, align 2, !tbaa !95
  %i.rw = getelementptr inbounds nuw i8, ptr %i.oj, i64 4
end_hunk_1
