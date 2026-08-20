inline.NumInlined: 69
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@sccp_visit_instr:bb.a
bb.wa:                                            ; preds = %bb.vz
  %i.blr = sext i32 %i.blq to i64
  %i.bls = getelementptr inbounds [16 x i8], ptr %i.bih, i64 %i.blr
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.vy, %bb.vz, %bb.wa
  %.0.i1638 = phi ptr [ %i.ble, %bb.vy ], [ %i.bls, %bb.wa ], [ null, %bb.vz ]
  store ptr %.0.i1638, ptr %i.b, align 16, !tbaa !140
  %wide.trip.count = zext nneg i32 %i.biu to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.wc
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.wc ] ; 2 uses
  %i.blt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.blu = load ptr, ptr %i.blt, align 8, !tbaa !140 ; 2 uses
  %.not1289 = icmp eq ptr %i.blu, null
  br i1 %.not1289, label %.critedge1308.sink.split, label %bb.wb

bb.wb:                                            ; preds = %.lr.ph
  %i.blv = getelementptr inbounds nuw i8, ptr %i.blu, i64 8
  %i.blw = load i8, ptr %i.blv, align 8, !tbaa !47
  switch i8 %i.blw, label %bb.wc [
    i8 -2, label %.critedge1308.sink.split
    i8 -3, label %.critedge1308.sink.split
    i8 -1, label %.critedge1308
  ]

bb.wc:                                            ; preds = %bb.wb
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge1306, label %.lr.ph, !llvm.loop !144

.critedge1306:                                    ; preds = %bb.wc, %bb.vo
  %i.blx = load ptr, ptr %0, align 8, !tbaa !145
  %i.bly = call fastcc i32 @ct_eval_func_call_ex(ptr noundef %i.blx, ptr noundef %3, ptr noundef %i.bis, i32 noundef %i.biu, ptr noundef %i.b)
  %i.blz = icmp eq i32 %i.bly, 0
  %i.bma = load i32, ptr %i.bid, align 4, !tbaa !95 ; 3 uses
  %i.bmb = icmp sgt i32 %i.bma, -1                ; 2 uses
  br i1 %i.blz, label %bb.wd, label %bb.wi

bb.wd:                                            ; preds = %.critedge1306
  br i1 %i.bmb, label %bb.we, label %bb.wf

bb.we:                                            ; preds = %bb.wd
  %.val1460 = load ptr, ptr %i.big, align 8, !tbaa !46
  call fastcc void @set_value(ptr noundef nonnull %0, ptr %.val1460, i32 noundef %i.bma, ptr noundef nonnull %3)
  br label %bb.wf

bb.wf:                                            ; preds = %bb.we, %bb.wd
  %i.bmc = getelementptr inbounds nuw i8, ptr %3, i64 9
  %i.bmd = load i8, ptr %i.bmc, align 1, !tbaa !47
  %.not.i = icmp eq i8 %i.bmd, 0
  br i1 %.not.i, label %zval_ptr_dtor_nogc.exit, label %bb.wg

bb.wg:                                            ; preds = %bb.wf
  %i.bme = load ptr, ptr %3, align 8, !tbaa !47   ; 2 uses
  %i.bmf = load i32, ptr %i.bme, align 4, !tbaa !77 ; 2 uses
  %i.bmg = icmp ne i32 %i.bmf, 0
  call void @llvm.assume(i1 %i.bmg)
  %i.bmh = add i32 %i.bmf, -1                     ; 2 uses
  store i32 %i.bmh, ptr %i.bme, align 4, !tbaa !77
  %.not3.i = icmp eq i32 %i.bmh, 0
  br i1 %.not3.i, label %bb.wh, label %zval_ptr_dtor_nogc.exit

bb.wh:                                            ; preds = %bb.wg
  %i.bmi = load ptr, ptr %3, align 8, !tbaa !47
  call void @rc_dtor_func(ptr noundef %i.bmi) #11
  br label %zval_ptr_dtor_nogc.exit

bb.wi:                                            ; preds = %.critedge1306
  br i1 %i.bmb, label %bb.wj, label %zval_ptr_dtor_nogc.exit

bb.wj:                                            ; preds = %bb.wi
  %i.bmj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val1459 = load ptr, ptr %i.big, align 8, !tbaa !46
  call fastcc void @set_value(ptr noundef nonnull %0, ptr %.val1459, i32 noundef %i.bma, ptr noundef nonnull %i.bmj)
  br label %zval_ptr_dtor_nogc.exit

zval_ptr_dtor_nogc.exit:                          ; preds = %bb.wh, %bb.wg, %bb.wf, %bb.wi, %bb.wj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %.critedge1298

bb.wk:                                            ; preds = %bb.ia
  %i.bmk = getelementptr inbounds nuw i8, ptr %.110871647, i64 20
  %i.bml = load i32, ptr %i.bmk, align 4, !tbaa !95 ; 2 uses
  %i.bmm = icmp sgt i32 %i.bml, -1
  br i1 %i.bmm, label %bb.wl, label %bb.wm

bb.wl:                                            ; preds = %bb.wk
  %i.bmn = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bmo = getelementptr i8, ptr %0, i64 104
  %.val1458 = load ptr, ptr %i.bmo, align 8, !tbaa !46
  tail call fastcc void @set_value(ptr noundef %0, ptr %.val1458, i32 noundef %i.bml, ptr noundef nonnull %i.bmn)
  br label %bb.wm

bb.wm:                                            ; preds = %bb.wk, %bb.wl
  %i.bmp = getelementptr inbounds nuw i8, ptr %.110871647, i64 12
  %i.bmq = load i32, ptr %i.bmp, align 4, !tbaa !97 ; 2 uses
  %i.bmr = icmp sgt i32 %i.bmq, -1
  br i1 %i.bmr, label %bb.wn, label %bb.wo

bb.wn:                                            ; preds = %bb.wm
  %i.bms = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bmt = getelementptr i8, ptr %0, i64 104
  %.val1457 = load ptr, ptr %i.bmt, align 8, !tbaa !46
  tail call fastcc void @set_value(ptr noundef %0, ptr %.val1457, i32 noundef %i.bmq, ptr noundef nonnull %i.bms)
  br label %bb.wo

bb.wo:                                            ; preds = %bb.wm, %bb.wn
  %i.bmu = getelementptr inbounds nuw i8, ptr %.110871647, i64 16
  %i.bmv = load i32, ptr %i.bmu, align 4, !tbaa !98 ; 2 uses
  %i.bmw = icmp sgt i32 %i.bmv, -1
  br i1 %i.bmw, label %bb.wp, label %.critedge1298

bb.wp:                                            ; preds = %bb.wo
  %i.bmx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bmy = getelementptr i8, ptr %0, i64 104
  %.val = load ptr, ptr %i.bmy, align 8, !tbaa !46
  tail call fastcc void @set_value(ptr noundef %0, ptr %.val, i32 noundef %i.bmv, ptr noundef nonnull %i.bmx)
  br label %.critedge1298

.critedge1304:                                    ; preds = %bb.vj, %bb.vi, %bb.vh, %bb.vk, %bb.vl, %bb.um, %bb.uh, %bb.uf, %._crit_edge, %bb.ug, %bb.ue
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.critedge1298

.critedge1308.sink.split:                         ; preds = %bb.wb, %bb.wb, %.lr.ph
  %i.bmz = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call fastcc void @set_value(ptr noundef %0, ptr %i.bih, i32 noundef %i.bie, ptr noundef nonnull %i.bmz)
  br label %.critedge1308

.critedge1308:                                    ; preds = %bb.wb, %.critedge1308.sink.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %.critedge1298

.critedge1298:                                    ; preds = %bb.tc, %bb.px, %bb.al, %.thread, %bb.tj, %bb.pw, %bb.pq, %bb.on, %bb.oc, %bb.ek, %bb.ec, %bb.cl, %bb.ch, %bb.ab, %get_op1_value.exit1607, %bb.ub, %bb.ua, %bb.tz, %bb.tr, %bb.tq, %bb.tp, %bb.tf, %bb.te, %bb.td, %bb.sy, %bb.sx, %bb.sw, %bb.sk, %bb.sj, %bb.si, %bb.rz, %bb.ry, %bb.rx, %bb.ro, %bb.rn, %bb.rm, %bb.re, %bb.rd, %bb.rc, %bb.qu, %bb.qt, %bb.qs, %bb.qk, %bb.qj, %bb.qi, %bb.qa, %bb.pz, %bb.py, %bb.pn, %bb.pm, %bb.pl, %bb.pe, %bb.pd, %bb.pc, %bb.ov, %bb.ou, %bb.ot, %bb.ok, %bb.oj, %bb.oi, %bb.nz, %bb.ny, %bb.nx, %bb.nm, %bb.nl, %bb.nk, %zval_ptr_dtor_nogc.exit1369, %zval_ptr_dtor_nogc.exit1393.thread, %zval_ptr_dtor_nogc.exit1414.thread, %bb.ix, %bb.iw, %bb.iv, %bb.ii, %bb.ih, %bb.ig, %bb.hc, %bb.hg, %.thread1906, %bb.hf, %bb.hb, %bb.ha, %bb.gz, %bb.gl, %bb.gk, %bb.gj, %bb.fs, %bb.fr, %bb.fq, %bb.ey, %.thread1904, %bb.ex, %bb.dt, %bb.ds, %bb.dr, %bb.db, %.thread1902, %bb.da, %bb.cq, %.thread1899, %bb.cp, %bb.bx, %bb.bw, %bb.bv, %bb.ay, %bb.ax, %bb.aw, %bb.ah, %.thread1894, %bb.ag, %zval_ptr_dtor_nogc.exit, %bb.dy, %bb.eb, %bb.ea, %bb.dz, %bb.cg, %bb.cj, %bb.ck, %.thread1897, %.thread1898, %bb.ij, %ct_eval_binary_op.exit.thread, %bb.me, %bb.md, %bb.nd, %bb.nc, %bb.nq, %bb.np, %bb.ob, %bb.oa, %bb.oe, %bb.od, %bb.om, %bb.ol, %bb.op, %bb.oo, %bb.ox, %bb.ow, %bb.pg, %bb.pf, %bb.pp, %bb.po, %bb.pt, %bb.ps, %bb.pv, %bb.pu, %bb.qc, %bb.qb, %bb.qm, %bb.ql, %bb.qw, %bb.qv, %bb.rg, %bb.rf, %bb.rq, %bb.rp, %bb.sb, %bb.sa, %bb.sm, %bb.sl, %bb.so, %bb.sn, %bb.sp, %switch.lookup, %bb.sr, %bb.sq, %bb.ta, %bb.sz, %bb.ti, %bb.th, %bb.tl, %bb.tk, %bb.tt, %bb.ts, %bb.uc, %ct_eval_binary_op.exit1627.thread, %bb.vn, %bb.vm, %bb.wp, %bb.wo, %.critedge1304, %.critedge1308, %.loopexit, %bb.tv, %bb.tu, %bb.tg, %bb.tb, %bb.ss, %bb.se, %bb.sd, %bb.rt, %bb.rs, %bb.ri, %bb.rh, %bb.qy, %bb.qx, %bb.qo, %bb.qn, %bb.qe, %bb.qd, %bb.ph, %bb.oy, %bb.nr, %bb.ne, %bb.mh, %bb.mg, %bb.in, %bb.il, %bb.ic, %bb.ib, %bb.hy, %bb.hz, %bb.hh, %bb.gp, %bb.go, %bb.gq, %bb.gt, %bb.gs, %bb.eg, %bb.ef, %bb.ei, %bb.em, %bb.el, %bb.eq, %bb.ep, %bb.ev, %bb.fe, %bb.dx, %bb.dw, %bb.dc, %bb.dd, %bb.y, %bb.x, %bb.z, %bb.ae, %bb.ba, %bb.az, %bb.m, %bb.l, %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sccp_visit_phi(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct._zval_struct, align 8       ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !147  ; 2 uses
  %i.e = icmp sgt i32 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46   ; 2 uses
  %i.h = zext nneg i32 %i.d to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i8, ptr %i.j, align 8, !tbaa !47
  %i.l = icmp eq i8 %i.k, -2
  br i1 %i.l, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !150
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !151
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [64 x i8], ptr %i.n, i64 %i.q ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !152  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %i.v = load i32, ptr %i.u, align 4, !tbaa !153  ; 2 uses
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.w
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 255, ptr %i.y, align 8, !tbaa !47
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !155 ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, -1
  br i1 %i.ab, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !156 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !157
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !85 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, -1
  tail call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !156
  %i.ao = sext i32 %i.an to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.ap = icmp slt i64 %indvars.iv.i.i, %i.ao
  tail call void @llvm.assume(i1 %i.ap)
  %3 = trunc i64 %indvars.iv.i.i to i32
  %4 = add i32 %i.v, %3
  %5 = zext i32 %4 to i64                         ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %5
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !85
  %.not.i.i = icmp eq i32 %i.ar, %i.aa
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  br i1 %.not.i.i, label %scdf_is_edge_feasible.exit, label %bb.d, !llvm.loop !158

scdf_is_edge_feasible.exit:                       ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !159
  %i.au = lshr i64 %5, 6
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !160
  %i.ax = and i64 %5, 63
  %i.ay = lshr i64 %i.aw, %i.ax
  %i.az = trunc i64 %i.ay to i1
  br i1 %i.az, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %scdf_is_edge_feasible.exit
  %i.ba = zext nneg i32 %i.ak to i64
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !62
  %i.be = getelementptr inbounds nuw [48 x i8], ptr %i.bd, i64 %i.h
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bg = load i8, ptr %i.bf, align 8
  %i.bh = and i8 %i.bg, 48
  %i.bi = icmp ne i8 %i.bh, 16
  call fastcc void @join_phi_values(ptr noundef %2, ptr noundef %i.bb, i1 noundef zeroext %i.bi)
  br label %.loopexit

bb.f:                                             ; preds = %.lr.ph, %bb.i
  %i.bj = phi i32 [ %i.ad, %.lr.ph ], [ %i.cy, %bb.i ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %i.bk = load ptr, ptr %i.af, align 8, !tbaa !157
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !85 ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, -1
  call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !85
  %i.bq = load i32, ptr %i.o, align 8, !tbaa !151
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !146 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !161
  %i.bu = sext i32 %i.bq to i64
  %i.bv = getelementptr inbounds [64 x i8], ptr %i.bt, i64 %i.bu ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !156
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 28
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !153
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !162
  %i.cc = sext i32 %i.bx to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.i.i35 = phi i64 [ %indvars.iv.next.i.i37, %bb.g ], [ 0, %bb.f ] ; 3 uses
  %i.cd = icmp slt i64 %indvars.iv.i.i35, %i.cc
  call void @llvm.assume(i1 %i.cd)
  %6 = trunc i64 %indvars.iv.i.i35 to i32
  %7 = add i32 %i.bz, %6
  %8 = zext i32 %7 to i64                         ; 3 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %8
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !85
  %.not.i.i36 = icmp eq i32 %i.cf, %i.bp
  %indvars.iv.next.i.i37 = add nuw nsw i64 %indvars.iv.i.i35, 1
  br i1 %.not.i.i36, label %scdf_is_edge_feasible.exit38, label %bb.g, !llvm.loop !158

scdf_is_edge_feasible.exit38:                     ; preds = %bb.g
  %i.cg = load ptr, ptr %i.ag, align 8, !tbaa !159
  %i.ch = lshr i64 %8, 6
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !160
  %i.ck = and i64 %8, 63
  %i.cl = lshr i64 %i.cj, %i.ck
  %i.cm = trunc i64 %i.cl to i1
  br i1 %i.cm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %scdf_is_edge_feasible.exit38
  %i.cn = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.co = zext nneg i32 %i.bm to i64
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %i.co
  %i.cq = load ptr, ptr %i.ah, align 8, !tbaa !62
  %i.cr = load i32, ptr %i.c, align 4, !tbaa !147
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [48 x i8], ptr %i.cq, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.cv = load i8, ptr %i.cu, align 8
  %i.cw = and i8 %i.cv, 48
  %i.cx = icmp ne i8 %i.cw, 16
  call fastcc void @join_phi_values(ptr noundef %2, ptr noundef %i.cp, i1 noundef zeroext %i.cx)
  %.pre = load i32, ptr %i.ac, align 8, !tbaa !156
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %scdf_is_edge_feasible.exit38
  %i.cy = phi i32 [ %.pre, %bb.h ], [ %i.bj, %scdf_is_edge_feasible.exit38 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cz = sext i32 %i.cy to i64
  %i.da = icmp slt i64 %indvars.iv.next, %i.cz
  br i1 %i.da, label %bb.f, label %.loopexit, !llvm.loop !163

.loopexit:                                        ; preds = %bb.i, %.preheader, %scdf_is_edge_feasible.exit, %bb.e
  %i.db = load i32, ptr %i.c, align 4, !tbaa !147
  %.val = load ptr, ptr %i.f, align 8, !tbaa !46
  call fastcc void @set_value(ptr noundef nonnull %0, ptr %.val, i32 noundef %i.db, ptr noundef nonnull %2)
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !47
  %.not.i = icmp eq i8 %i.dd, 0
  br i1 %.not.i, label %zval_ptr_dtor_nogc.exit, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.de = load ptr, ptr %2, align 8, !tbaa !47    ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !77 ; 2 uses
  %i.dg = icmp ne i32 %i.df, 0
  call void @llvm.assume(i1 %i.dg)
  %i.dh = add i32 %i.df, -1                       ; 2 uses
  store i32 %i.dh, ptr %i.de, align 4, !tbaa !77
  %.not3.i = icmp eq i32 %i.dh, 0
  br i1 %.not3.i, label %bb.k, label %zval_ptr_dtor_nogc.exit

bb.k:                                             ; preds = %bb.j
  %i.di = load ptr, ptr %2, align 8, !tbaa !47
  call void @rc_dtor_func(ptr noundef %i.di) #11
  br label %zval_ptr_dtor_nogc.exit

zval_ptr_dtor_nogc.exit:                          ; preds = %.loopexit, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.l

bb.l:                                             ; preds = %zval_ptr_dtor_nogc.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sccp_mark_feasible_successors(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %5 = alloca %struct._zval_struct, align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.b = load i8, ptr %i.a, align 4, !tbaa !87    ; 5 uses
  switch i8 %i.b, label %bb.c [
    i8 -105, label %bb.b
    i8 107, label %bb.b
    i8 78, label %bb.b
    i8 126, label %bb.b
    i8 -53, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !164
  %i.d = load i32, ptr %i.c, align 4, !tbaa !85
  tail call void @scdf_mark_edge_feasible(ptr noundef %0, i32 noundef %1, i32 noundef %i.d) #11
  %i.e = load ptr, ptr %2, align 8, !tbaa !164
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !85
  tail call void @scdf_mark_edge_feasible(ptr noundef %0, i32 noundef %1, i32 noundef %i.g) #11
  br label %.critedge117

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 29
  %i.i = load i8, ptr %i.h, align 1, !tbaa !100
  %i.j = icmp eq i8 %i.i, 1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !76
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !101
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !47
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.p
  br label %get_op1_value.exit

bb.e:                                             ; preds = %bb.c
  %i.r = load i32, ptr %4, align 4, !tbaa !82     ; 2 uses
  %.not.i = icmp ne i32 %i.r, -1
  tail call void @llvm.assume(i1 %.not.i)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !46
  %i.u = sext i32 %i.r to i64
  %i.v = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.u
  br label %get_op1_value.exit

get_op1_value.exit:                               ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.q, %bb.d ], [ %i.v, %bb.e ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.x = load i8, ptr %i.w, align 8, !tbaa !47    ; 2 uses
  %i.y = icmp eq i8 %i.x, -2
  br i1 %i.y, label %bb.f, label %.thread

bb.f:                                             ; preds = %get_op1_value.exit
  %i.z = load i32, ptr %4, align 4, !tbaa !82     ; 2 uses
  %i.aa = icmp sgt i32 %i.z, -1
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = call fastcc ptr @value_from_type_and_range(ptr noundef nonnull %0, i32 noundef %i.z, ptr noundef %5) ; 3 uses
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %bb.g, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !47
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %get_op1_value.exit
  %i.ac = phi i8 [ %.pre, %..thread_crit_edge ], [ %i.x, %get_op1_value.exit ] ; 6 uses
  %.0120 = phi ptr [ %i.ab, %..thread_crit_edge ], [ %.0.i, %get_op1_value.exit ] ; 5 uses
  switch i8 %i.ac, label %bb.h [
    i8 -2, label %bb.g
    i8 -1, label %.critedge117
  ]

bb.g:                                             ; preds = %.thread, %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !165
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph125, label %.critedge117

.lr.ph125:                                        ; preds = %bb.g, %.lr.ph125
  %indvars.iv128 = phi i64 [ %indvars.iv.next129, %.lr.ph125 ], [ 0, %bb.g ] ; 2 uses
  %i.ag = load ptr, ptr %2, align 8, !tbaa !164
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv128
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !85
  call void @scdf_mark_edge_feasible(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.ai) #11
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %i.aj = load i32, ptr %i.ad, align 4, !tbaa !165
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp slt i64 %indvars.iv.next129, %i.ak
  br i1 %i.al, label %.lr.ph125, label %.critedge117, !llvm.loop !166

bb.h:                                             ; preds = %.thread
  switch i8 %i.b, label %.preheader [
    i8 43, label %bb.i
    i8 46, label %bb.i
    i8 44, label %bb.l
    i8 47, label %bb.l
    i8 -104, label %bb.l
    i8 -87, label %bb.o
    i8 -58, label %bb.p
    i8 77, label %bb.q
    i8 125, label %bb.q
    i8 -69, label %bb.t
    i8 -68, label %bb.t
    i8 -61, label %bb.t
  ]

.preheader:                                       ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !165
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph, label %.critedge117

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.ap = call fastcc i32 @ct_eval_bool_cast(ptr noundef %5, ptr noundef nonnull %.0120)
  %i.aq = icmp eq i32 %i.ap, -1
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr %2, align 8, !tbaa !164
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !85
  call void @scdf_mark_edge_feasible(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.as) #11
  %i.at = load ptr, ptr %2, align 8, !tbaa !164
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !85
  call void @scdf_mark_edge_feasible(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.av) #11
  br label %.critedge117

bb.k:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !47
  %i.ay = icmp eq i8 %i.ax, 3
  %i.az = zext i1 %i.ay to i32
  br label %bb.af

end_hunk_0
