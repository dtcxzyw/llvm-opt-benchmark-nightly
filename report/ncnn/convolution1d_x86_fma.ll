Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution1d_x86_fma?download=true
inline.NumInlined: 21
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN4ncnn21Convolution1D_x86_fma15create_pipelineERKNS_6OptionE:bb.a
  %i.ok = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 116
  store float %i.oj, ptr %i.ok, align 4, !tbaa !45
  %i.ol = load float, ptr %i.nx, align 4, !tbaa !45
  %i.om = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 120
  store float %i.ol, ptr %i.om, align 4, !tbaa !45
  %i.on = load float, ptr %i.ny, align 4, !tbaa !45
  %i.oo = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 124
  store float %i.on, ptr %i.oo, align 4, !tbaa !45
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %i.fz ; 2 uses
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %i.fz ; 2 uses
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.nt, i64 %i.fz ; 2 uses
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %i.fz ; 2 uses
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %i.fz ; 2 uses
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.nw, i64 %i.fz ; 2 uses
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %i.fz ; 2 uses
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %i.fz ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 128
  %i.oy = load float, ptr %i.op, align 4, !tbaa !45
  store float %i.oy, ptr %i.ox, align 4, !tbaa !45
  %i.oz = load float, ptr %i.oq, align 4, !tbaa !45
  %i.pa = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 132
  store float %i.oz, ptr %i.pa, align 4, !tbaa !45
  %i.pb = load float, ptr %i.or, align 4, !tbaa !45
  %i.pc = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 136
  store float %i.pb, ptr %i.pc, align 4, !tbaa !45
  %i.pd = load float, ptr %i.os, align 4, !tbaa !45
  %i.pe = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 140
  store float %i.pd, ptr %i.pe, align 4, !tbaa !45
  %i.pf = load float, ptr %i.ot, align 4, !tbaa !45
  %i.pg = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 144
  store float %i.pf, ptr %i.pg, align 4, !tbaa !45
  %i.ph = load float, ptr %i.ou, align 4, !tbaa !45
  %i.pi = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 148
  store float %i.ph, ptr %i.pi, align 4, !tbaa !45
  %i.pj = load float, ptr %i.ov, align 4, !tbaa !45
  %i.pk = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 152
  store float %i.pj, ptr %i.pk, align 4, !tbaa !45
  %i.pl = load float, ptr %i.ow, align 4, !tbaa !45
  %i.pm = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 156
  store float %i.pl, ptr %i.pm, align 4, !tbaa !45
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %i.fz ; 2 uses
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %i.fz ; 2 uses
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %i.fz ; 2 uses
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %i.fz ; 2 uses
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %i.fz ; 2 uses
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %i.fz ; 2 uses
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.ov, i64 %i.fz ; 2 uses
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.ow, i64 %i.fz ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 160
  %i.pw = load float, ptr %i.pn, align 4, !tbaa !45
  store float %i.pw, ptr %i.pv, align 4, !tbaa !45
  %i.px = load float, ptr %i.po, align 4, !tbaa !45
  %i.py = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 164
  store float %i.px, ptr %i.py, align 4, !tbaa !45
  %i.pz = load float, ptr %i.pp, align 4, !tbaa !45
  %i.qa = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 168
  store float %i.pz, ptr %i.qa, align 4, !tbaa !45
  %i.qb = load float, ptr %i.pq, align 4, !tbaa !45
  %i.qc = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 172
  store float %i.qb, ptr %i.qc, align 4, !tbaa !45
  %i.qd = load float, ptr %i.pr, align 4, !tbaa !45
  %i.qe = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 176
  store float %i.qd, ptr %i.qe, align 4, !tbaa !45
  %i.qf = load float, ptr %i.ps, align 4, !tbaa !45
  %i.qg = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 180
  store float %i.qf, ptr %i.qg, align 4, !tbaa !45
  %i.qh = load float, ptr %i.pt, align 4, !tbaa !45
  %i.qi = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 184
  store float %i.qh, ptr %i.qi, align 4, !tbaa !45
  %i.qj = load float, ptr %i.pu, align 4, !tbaa !45
  %i.qk = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 188
  store float %i.qj, ptr %i.qk, align 4, !tbaa !45
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %i.fz ; 2 uses
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %i.fz ; 2 uses
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %i.fz ; 2 uses
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %i.fz ; 2 uses
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %i.fz ; 2 uses
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.ps, i64 %i.fz ; 2 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %i.fz ; 2 uses
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.pu, i64 %i.fz ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 192
  %i.qu = load float, ptr %i.ql, align 4, !tbaa !45
  store float %i.qu, ptr %i.qt, align 4, !tbaa !45
  %i.qv = load float, ptr %i.qm, align 4, !tbaa !45
  %i.qw = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 196
  store float %i.qv, ptr %i.qw, align 4, !tbaa !45
  %i.qx = load float, ptr %i.qn, align 4, !tbaa !45
  %i.qy = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 200
  store float %i.qx, ptr %i.qy, align 4, !tbaa !45
  %i.qz = load float, ptr %i.qo, align 4, !tbaa !45
  %i.ra = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 204
  store float %i.qz, ptr %i.ra, align 4, !tbaa !45
  %i.rb = load float, ptr %i.qp, align 4, !tbaa !45
  %i.rc = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 208
  store float %i.rb, ptr %i.rc, align 4, !tbaa !45
  %i.rd = load float, ptr %i.qq, align 4, !tbaa !45
  %i.re = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 212
  store float %i.rd, ptr %i.re, align 4, !tbaa !45
  %i.rf = load float, ptr %i.qr, align 4, !tbaa !45
  %i.rg = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 216
  store float %i.rf, ptr %i.rg, align 4, !tbaa !45
  %i.rh = load float, ptr %i.qs, align 4, !tbaa !45
  %i.ri = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 220
  store float %i.rh, ptr %i.ri, align 4, !tbaa !45
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.ql, i64 %i.fz
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %i.fz
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %i.fz
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.qo, i64 %i.fz
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.qp, i64 %i.fz
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %i.fz
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %i.fz
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.qs, i64 %i.fz
  %i.rr = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 224
  %i.rs = load float, ptr %i.rj, align 4, !tbaa !45
  store float %i.rs, ptr %i.rr, align 4, !tbaa !45
  %i.rt = load float, ptr %i.rk, align 4, !tbaa !45
  %i.ru = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 228
  store float %i.rt, ptr %i.ru, align 4, !tbaa !45
  %i.rv = load float, ptr %i.rl, align 4, !tbaa !45
  %i.rw = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 232
  store float %i.rv, ptr %i.rw, align 4, !tbaa !45
  %i.rx = load float, ptr %i.rm, align 4, !tbaa !45
  %i.ry = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 236
  store float %i.rx, ptr %i.ry, align 4, !tbaa !45
  %i.rz = load float, ptr %i.rn, align 4, !tbaa !45
  %i.sa = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 240
  store float %i.rz, ptr %i.sa, align 4, !tbaa !45
  %i.sb = load float, ptr %i.ro, align 4, !tbaa !45
  %i.sc = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 244
  store float %i.sb, ptr %i.sc, align 4, !tbaa !45
  %i.sd = load float, ptr %i.rp, align 4, !tbaa !45
  %i.se = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 248
  store float %i.sd, ptr %i.se, align 4, !tbaa !45
  %i.sf = load float, ptr %i.rq, align 4, !tbaa !45
  %i.sg = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 252
  store float %i.sf, ptr %i.sg, align 4, !tbaa !45
  %i.sh = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 256 ; 3 uses
  %indvars.iv.next1648.i = add nuw nsw i64 %indvars.iv1647.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next1648.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.ai, !llvm.loop !75

._crit_edge.us.i:                                 ; preds = %bb.ai
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %.08371132.us.i, i64 %i.gb ; 2 uses
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %.08401131.us.i, i64 %i.gb ; 2 uses
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %.08481130.us.i, i64 %i.gb ; 2 uses
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %.08511129.us.i, i64 %i.gb ; 2 uses
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %.08551128.us.i, i64 %i.gb ; 2 uses
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %.08581127.us.i, i64 %i.gb ; 2 uses
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %.08811126.us.i, i64 %i.gb ; 2 uses
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %.08841125.us.i, i64 %i.gb ; 2 uses
  %i.sq = add nuw nsw i32 %.08981123.us.i, 8      ; 2 uses
  %i.sr = or disjoint i32 %i.sq, 7
  %i.ss = icmp slt i32 %i.sr, %i.n
  br i1 %i.ss, label %.preheader1107.us.i, label %.preheader1110.i, !llvm.loop !76

.preheader1110.i:                                 ; preds = %._crit_edge.us.i, %_ZN4ncnn3MatD2Ev.exit1005.i
  %.0898.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.gu, %._crit_edge.us.i ] ; 4 uses
  %.0887.lcssa.i = phi ptr [ %i.kx, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.sh, %._crit_edge.us.i ] ; 3 uses
  %.0884.lcssa.i = phi ptr [ %i.kv, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.sp, %._crit_edge.us.i ] ; 3 uses
  %.0881.lcssa.i = phi ptr [ %i.kr, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.so, %._crit_edge.us.i ] ; 3 uses
  %.0858.lcssa.i = phi ptr [ %i.kn, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.sn, %._crit_edge.us.i ] ; 3 uses
  %.0855.lcssa.i = phi ptr [ %i.kj, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.sm, %._crit_edge.us.i ] ; 3 uses
  %.0851.lcssa.i = phi ptr [ %i.kf, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.sl, %._crit_edge.us.i ] ; 3 uses
  %.0848.lcssa.i = phi ptr [ %i.kb, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.sk, %._crit_edge.us.i ] ; 3 uses
  %.0840.lcssa.i = phi ptr [ %i.jx, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.sj, %._crit_edge.us.i ] ; 3 uses
  %.0837.lcssa.i = phi ptr [ %i.jt, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.si, %._crit_edge.us.i ] ; 3 uses
  %i.st = or disjoint i32 %.0898.lcssa.i, 3
  %i.su = icmp slt i32 %i.st, %i.n
  br i1 %i.su, label %.preheader1106.lr.ph.i, label %.preheader1109.i

.preheader1110.thread.i:                          ; preds = %.preheader1107.lr.ph.i
  br i1 %i.gy, label %.preheader1106.preheader.i, label %.preheader1109.i

.preheader1106.lr.ph.i:                           ; preds = %.preheader1110.i
  br i1 %i.fy, label %.preheader1106.us.i, label %.preheader1106.preheader.i

.preheader1106.preheader.i:                       ; preds = %.preheader1106.lr.ph.i, %.preheader1110.thread.i
  %.0898.lcssa18471876.i = phi i32 [ %.0898.lcssa.i, %.preheader1106.lr.ph.i ], [ %i.gu, %.preheader1110.thread.i ] ; 2 uses
  %.0887.lcssa18481875.i = phi ptr [ %.0887.lcssa.i, %.preheader1106.lr.ph.i ], [ %i.kx, %.preheader1110.thread.i ]
  %.0884.lcssa18491874.i = phi ptr [ %.0884.lcssa.i, %.preheader1106.lr.ph.i ], [ %scevgep1646.i, %.preheader1110.thread.i ]
  %.0881.lcssa18501873.i = phi ptr [ %.0881.lcssa.i, %.preheader1106.lr.ph.i ], [ %scevgep1642.i, %.preheader1110.thread.i ]
  %.0858.lcssa18511872.i = phi ptr [ %.0858.lcssa.i, %.preheader1106.lr.ph.i ], [ %scevgep1638.i, %.preheader1110.thread.i ]
  %.0855.lcssa18521871.i = phi ptr [ %.0855.lcssa.i, %.preheader1106.lr.ph.i ], [ %scevgep1634.i, %.preheader1110.thread.i ]
  %.0851.lcssa18531870.i = phi ptr [ %.0851.lcssa.i, %.preheader1106.lr.ph.i ], [ %scevgep1630.i, %.preheader1110.thread.i ]
  %.0848.lcssa18541869.i = phi ptr [ %.0848.lcssa.i, %.preheader1106.lr.ph.i ], [ %scevgep1626.i, %.preheader1110.thread.i ]
  %.0840.lcssa18551868.i = phi ptr [ %.0840.lcssa.i, %.preheader1106.lr.ph.i ], [ %scevgep1622.i, %.preheader1110.thread.i ]
  %.0837.lcssa18561867.i = phi ptr [ %.0837.lcssa.i, %.preheader1106.lr.ph.i ], [ %scevgep1618.i, %.preheader1110.thread.i ]
  %i.sv = sub i32 %i.gv, %.0898.lcssa18471876.i
  %i.sw = and i32 %i.sv, -4                       ; 2 uses
  %i.sx = zext i32 %i.sw to i64
  %i.sy = add nuw nsw i64 %i.sx, 4
  %i.sz = mul nsw i64 %i.sy, %i.gd                ; 8 uses
  %scevgep1650.i = getelementptr i8, ptr %.0837.lcssa18561867.i, i64 %i.sz
  %scevgep1651.i = getelementptr i8, ptr %.0840.lcssa18551868.i, i64 %i.sz
  %scevgep1652.i = getelementptr i8, ptr %.0848.lcssa18541869.i, i64 %i.sz
  %scevgep1653.i = getelementptr i8, ptr %.0851.lcssa18531870.i, i64 %i.sz
  %scevgep1654.i = getelementptr i8, ptr %.0855.lcssa18521871.i, i64 %i.sz
  %scevgep1655.i = getelementptr i8, ptr %.0858.lcssa18511872.i, i64 %i.sz
  %scevgep1656.i = getelementptr i8, ptr %.0881.lcssa18501873.i, i64 %i.sz
  %scevgep1657.i = getelementptr i8, ptr %.0884.lcssa18491874.i, i64 %i.sz
  %i.ta = add i32 %.0898.lcssa18471876.i, 4
  %i.tb = add i32 %i.ta, %i.sw
  br label %.preheader1109.i

.preheader1106.us.i:                              ; preds = %.preheader1106.lr.ph.i, %._crit_edge.us1184.i
  %.18381173.us.i = phi ptr [ %i.wu, %._crit_edge.us1184.i ], [ %.0837.lcssa.i, %.preheader1106.lr.ph.i ] ; 2 uses
  %.18411172.us.i = phi ptr [ %i.wv, %._crit_edge.us1184.i ], [ %.0840.lcssa.i, %.preheader1106.lr.ph.i ] ; 2 uses
  %.18491171.us.i = phi ptr [ %i.ww, %._crit_edge.us1184.i ], [ %.0848.lcssa.i, %.preheader1106.lr.ph.i ] ; 2 uses
  %.18521170.us.i = phi ptr [ %i.wx, %._crit_edge.us1184.i ], [ %.0851.lcssa.i, %.preheader1106.lr.ph.i ] ; 2 uses
  %.18561169.us.i = phi ptr [ %i.wy, %._crit_edge.us1184.i ], [ %.0855.lcssa.i, %.preheader1106.lr.ph.i ] ; 2 uses
  %.18591168.us.i = phi ptr [ %i.wz, %._crit_edge.us1184.i ], [ %.0858.lcssa.i, %.preheader1106.lr.ph.i ] ; 2 uses
  %.18821167.us.i = phi ptr [ %i.xa, %._crit_edge.us1184.i ], [ %.0881.lcssa.i, %.preheader1106.lr.ph.i ] ; 2 uses
  %.18851166.us.i = phi ptr [ %i.xb, %._crit_edge.us1184.i ], [ %.0884.lcssa.i, %.preheader1106.lr.ph.i ] ; 2 uses
  %.38901165.us.i = phi ptr [ %i.wt, %._crit_edge.us1184.i ], [ %.0887.lcssa.i, %.preheader1106.lr.ph.i ]
  %.18991164.us.i = phi i32 [ %i.xc, %._crit_edge.us1184.i ], [ %.0898.lcssa.i, %.preheader1106.lr.ph.i ]
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.preheader1106.us.i
  %indvars.iv1659.i = phi i64 [ 0, %.preheader1106.us.i ], [ %indvars.iv.next1660.i, %bb.aj ] ; 9 uses
  %.48911163.us.i = phi ptr [ %.38901165.us.i, %.preheader1106.us.i ], [ %i.wt, %bb.aj ] ; 33 uses
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %.18381173.us.i, i64 %indvars.iv1659.i ; 2 uses
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %.18411172.us.i, i64 %indvars.iv1659.i ; 2 uses
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %.18491171.us.i, i64 %indvars.iv1659.i ; 2 uses
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %.18521170.us.i, i64 %indvars.iv1659.i ; 2 uses
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %.18561169.us.i, i64 %indvars.iv1659.i ; 2 uses
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %.18591168.us.i, i64 %indvars.iv1659.i ; 2 uses
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %.18821167.us.i, i64 %indvars.iv1659.i ; 2 uses
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %.18851166.us.i, i64 %indvars.iv1659.i ; 2 uses
  %i.tk = load float, ptr %i.tc, align 4, !tbaa !45
  store float %i.tk, ptr %.48911163.us.i, align 4, !tbaa !45
  %i.tl = load float, ptr %i.td, align 4, !tbaa !45
  %i.tm = getelementptr inbounds nuw i8, ptr %.48911163.us.i, i64 4
  store float %i.tl, ptr %i.tm, align 4, !tbaa !45
  %i.tn = load float, ptr %i.te, align 4, !tbaa !45
  %i.to = getelementptr inbounds nuw i8, ptr %.48911163.us.i, i64 8
  store float %i.tn, ptr %i.to, align 4, !tbaa !45
  %i.tp = load float, ptr %i.tf, align 4, !tbaa !45
  %i.tq = getelementptr inbounds nuw i8, ptr %.48911163.us.i, i64 12
  store float %i.tp, ptr %i.tq, align 4, !tbaa !45
  %i.tr = load float, ptr %i.tg, align 4, !tbaa !45
  %i.ts = getelementptr inbounds nuw i8, ptr %.48911163.us.i, i64 16
  store float %i.tr, ptr %i.ts, align 4, !tbaa !45
  %i.tt = load float, ptr %i.th, align 4, !tbaa !45
  %i.tu = getelementptr inbounds nuw i8, ptr %.48911163.us.i, i64 20
  store float %i.tt, ptr %i.tu, align 4, !tbaa !45
  %i.tv = load float, ptr %i.ti, align 4, !tbaa !45
  %i.tw = getelementptr inbounds nuw i8, ptr %.48911163.us.i, i64 24
  store float %i.tv, ptr %i.tw, align 4, !tbaa !45
  %i.tx = load float, ptr %i.tj, align 4, !tbaa !45
  %i.ty = getelementptr inbounds nuw i8, ptr %.48911163.us.i, i64 28
  store float %i.tx, ptr %i.ty, align 4, !tbaa !45
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %i.fz ; 2 uses
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.td, i64 %i.fz ; 2 uses
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %i.fz ; 2 uses
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.tf, i64 %i.fz ; 2 uses
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %i.fz ; 2 uses
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %i.fz ; 2 uses
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %i.fz ; 2 uses
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.tj, i64 %i.fz ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %.48911163.us.i, i64 32
  %i.ui = load float, ptr %i.tz, align 4, !tbaa !45
  store float %i.ui, ptr %i.uh, align 4, !tbaa !45
  %i.uj = load float, ptr %i.ua, align 4, !tbaa !45
  %i.uk = getelementptr inbounds nuw i8, ptr %.48911163.us.i, i64 36
  store float %i.uj, ptr %i.uk, align 4, !tbaa !45
  %i.ul = load float, ptr %i.ub, align 4, !tbaa !45
  %i.um = getelementptr inbounds nuw i8, ptr %.48911163.us.i, i64 40
  store float %i.ul, ptr %i.um, align 4, !tbaa !45
  %i.un = load float, ptr %i.uc, align 4, !tbaa !45
  %i.uo = getelementptr inbounds nuw i8, ptr %.48911163.us.i, i64 44
  store float %i.un, ptr %i.uo, align 4, !tbaa !45
  %i.up = load float, ptr %i.ud, align 4, !tbaa !45
  %i.uq = getelementptr inbounds nuw i8, ptr %.48911163.us.i, i64 48
  store float %i.up, ptr %i.uq, align 4, !tbaa !45
  %i.ur = load float, ptr %i.ue, align 4, !tbaa !45
  %i.us = getelementptr inbounds nuw i8, ptr %.48911163.us.i, i64 52
  store float %i.ur, ptr %i.us, align 4, !tbaa !45
  %i.ut = load float, ptr %i.uf, align 4, !tbaa !45
  %i.uu = getelementptr inbounds nuw i8, ptr %.48911163.us.i, i64 56
  store float %i.ut, ptr %i.uu, align 4, !tbaa !45
  %i.uv = load float, ptr %i.ug, align 4, !tbaa !45
  %i.uw = getelementptr inbounds nuw i8, ptr %.48911163.us.i, i64 60
  store float %i.uv, ptr %i.uw, align 4, !tbaa !45
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.tz, i64 %i.fz ; 2 uses
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.ua, i64 %i.fz ; 2 uses
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %i.fz ; 2 uses
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %i.fz ; 2 uses
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.ud, i64 %i.fz ; 2 uses
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.ue, i64 %i.fz ; 2 uses
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.uf, i64 %i.fz ; 2 uses
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %i.ug, i64 %i.fz ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %.48911163.us.i, i64 64
  %i.vg = load float, ptr %i.ux, align 4, !tbaa !45
  store float %i.vg, ptr %i.vf, align 4, !tbaa !45
  %i.vh = load float, ptr %i.uy, align 4, !tbaa !45
  %i.vi = getelementptr inbounds nuw i8, ptr %.48911163.us.i, i64 68
  store float %i.vh, ptr %i.vi, align 4, !tbaa !45
  %i.vj = load float, ptr %i.uz, align 4, !tbaa !45
  %i.vk = getelementptr inbounds nuw i8, ptr %.48911163.us.i, i64 72
  store float %i.vj, ptr %i.vk, align 4, !tbaa !45
  %i.vl = load float, ptr %i.va, align 4, !tbaa !45
  %i.vm = getelementptr inbounds nuw i8, ptr %.48911163.us.i, i64 76
  store float %i.vl, ptr %i.vm, align 4, !tbaa !45
  %i.vn = load float, ptr %i.vb, align 4, !tbaa !45
  %i.vo = getelementptr inbounds nuw i8, ptr %.48911163.us.i, i64 80
  store float %i.vn, ptr %i.vo, align 4, !tbaa !45
  %i.vp = load float, ptr %i.vc, align 4, !tbaa !45
  %i.vq = getelementptr inbounds nuw i8, ptr %.48911163.us.i, i64 84
  store float %i.vp, ptr %i.vq, align 4, !tbaa !45
  %i.vr = load float, ptr %i.vd, align 4, !tbaa !45
  %i.vs = getelementptr inbounds nuw i8, ptr %.48911163.us.i, i64 88
  store float %i.vr, ptr %i.vs, align 4, !tbaa !45
  %i.vt = load float, ptr %i.ve, align 4, !tbaa !45
  %i.vu = getelementptr inbounds nuw i8, ptr %.48911163.us.i, i64 92
  store float %i.vt, ptr %i.vu, align 4, !tbaa !45
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %i.ux, i64 %i.fz
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %i.fz
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %i.uz, i64 %i.fz
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.va, i64 %i.fz
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %i.fz
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.vc, i64 %i.fz
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.vd, i64 %i.fz
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.ve, i64 %i.fz
  %i.wd = getelementptr inbounds nuw i8, ptr %.48911163.us.i, i64 96
  %i.we = load float, ptr %i.vv, align 4, !tbaa !45
  store float %i.we, ptr %i.wd, align 4, !tbaa !45
  %i.wf = load float, ptr %i.vw, align 4, !tbaa !45
  %i.wg = getelementptr inbounds nuw i8, ptr %.48911163.us.i, i64 100
  store float %i.wf, ptr %i.wg, align 4, !tbaa !45
  %i.wh = load float, ptr %i.vx, align 4, !tbaa !45
  %i.wi = getelementptr inbounds nuw i8, ptr %.48911163.us.i, i64 104
  store float %i.wh, ptr %i.wi, align 4, !tbaa !45
  %i.wj = load float, ptr %i.vy, align 4, !tbaa !45
  %i.wk = getelementptr inbounds nuw i8, ptr %.48911163.us.i, i64 108
  store float %i.wj, ptr %i.wk, align 4, !tbaa !45
  %i.wl = load float, ptr %i.vz, align 4, !tbaa !45
  %i.wm = getelementptr inbounds nuw i8, ptr %.48911163.us.i, i64 112
  store float %i.wl, ptr %i.wm, align 4, !tbaa !45
  %i.wn = load float, ptr %i.wa, align 4, !tbaa !45
  %i.wo = getelementptr inbounds nuw i8, ptr %.48911163.us.i, i64 116
  store float %i.wn, ptr %i.wo, align 4, !tbaa !45
  %i.wp = load float, ptr %i.wb, align 4, !tbaa !45
  %i.wq = getelementptr inbounds nuw i8, ptr %.48911163.us.i, i64 120
  store float %i.wp, ptr %i.wq, align 4, !tbaa !45
  %i.wr = load float, ptr %i.wc, align 4, !tbaa !45
  %i.ws = getelementptr inbounds nuw i8, ptr %.48911163.us.i, i64 124
  store float %i.wr, ptr %i.ws, align 4, !tbaa !45
  %i.wt = getelementptr inbounds nuw i8, ptr %.48911163.us.i, i64 128 ; 3 uses
  %indvars.iv.next1660.i = add nuw nsw i64 %indvars.iv1659.i, 1 ; 2 uses
  %exitcond1663.not.i = icmp eq i64 %indvars.iv.next1660.i, %wide.trip.count.i
  br i1 %exitcond1663.not.i, label %._crit_edge.us1184.i, label %bb.aj, !llvm.loop !77

._crit_edge.us1184.i:                             ; preds = %bb.aj
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %.18381173.us.i, i64 %i.gd ; 2 uses
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %.18411172.us.i, i64 %i.gd ; 2 uses
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %.18491171.us.i, i64 %i.gd ; 2 uses
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %.18521170.us.i, i64 %i.gd ; 2 uses
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %.18561169.us.i, i64 %i.gd ; 2 uses
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %.18591168.us.i, i64 %i.gd ; 2 uses
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %.18821167.us.i, i64 %i.gd ; 2 uses
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %.18851166.us.i, i64 %i.gd ; 2 uses
  %i.xc = add nuw nsw i32 %.18991164.us.i, 4      ; 3 uses
  %i.xd = or disjoint i32 %i.xc, 3
  %i.xe = icmp slt i32 %i.xd, %i.n
  br i1 %i.xe, label %.preheader1106.us.i, label %.preheader1109.i, !llvm.loop !78

.preheader1109.i:                                 ; preds = %._crit_edge.us1184.i, %.preheader1106.preheader.i, %.preheader1110.thread.i, %.preheader1110.i
  %.1899.lcssa.i = phi i32 [ %.0898.lcssa.i, %.preheader1110.i ], [ %i.gu, %.preheader1110.thread.i ], [ %i.tb, %.preheader1106.preheader.i ], [ %i.xc, %._crit_edge.us1184.i ] ; 3 uses
  %.3890.lcssa.i = phi ptr [ %.0887.lcssa.i, %.preheader1110.i ], [ %i.kx, %.preheader1110.thread.i ], [ %.0887.lcssa18481875.i, %.preheader1106.preheader.i ], [ %i.wt, %._crit_edge.us1184.i ] ; 2 uses
  %.1885.lcssa.i = phi ptr [ %.0884.lcssa.i, %.preheader1110.i ], [ %scevgep1646.i, %.preheader1110.thread.i ], [ %scevgep1657.i, %.preheader1106.preheader.i ], [ %i.xb, %._crit_edge.us1184.i ] ; 2 uses
  %.1882.lcssa.i = phi ptr [ %.0881.lcssa.i, %.preheader1110.i ], [ %scevgep1642.i, %.preheader1110.thread.i ], [ %scevgep1656.i, %.preheader1106.preheader.i ], [ %i.xa, %._crit_edge.us1184.i ] ; 2 uses
  %.1859.lcssa.i = phi ptr [ %.0858.lcssa.i, %.preheader1110.i ], [ %scevgep1638.i, %.preheader1110.thread.i ], [ %scevgep1655.i, %.preheader1106.preheader.i ], [ %i.wz, %._crit_edge.us1184.i ] ; 2 uses
  %.1856.lcssa.i = phi ptr [ %.0855.lcssa.i, %.preheader1110.i ], [ %scevgep1634.i, %.preheader1110.thread.i ], [ %scevgep1654.i, %.preheader1106.preheader.i ], [ %i.wy, %._crit_edge.us1184.i ] ; 2 uses
  %.1852.lcssa.i = phi ptr [ %.0851.lcssa.i, %.preheader1110.i ], [ %scevgep1630.i, %.preheader1110.thread.i ], [ %scevgep1653.i, %.preheader1106.preheader.i ], [ %i.wx, %._crit_edge.us1184.i ] ; 2 uses
  %.1849.lcssa.i = phi ptr [ %.0848.lcssa.i, %.preheader1110.i ], [ %scevgep1626.i, %.preheader1110.thread.i ], [ %scevgep1652.i, %.preheader1106.preheader.i ], [ %i.ww, %._crit_edge.us1184.i ] ; 2 uses
  %.1841.lcssa.i = phi ptr [ %.0840.lcssa.i, %.preheader1110.i ], [ %scevgep1622.i, %.preheader1110.thread.i ], [ %scevgep1651.i, %.preheader1106.preheader.i ], [ %i.wv, %._crit_edge.us1184.i ] ; 2 uses
  %.1838.lcssa.i = phi ptr [ %.0837.lcssa.i, %.preheader1110.i ], [ %scevgep1618.i, %.preheader1110.thread.i ], [ %scevgep1650.i, %.preheader1106.preheader.i ], [ %i.wu, %._crit_edge.us1184.i ] ; 2 uses
  %i.xf = or disjoint i32 %.1899.lcssa.i, 1
  %i.xg = icmp slt i32 %i.xf, %i.n
  br i1 %i.xg, label %.preheader1105.lr.ph.i, label %.preheader1108.i

.preheader1105.lr.ph.i:                           ; preds = %.preheader1109.i
  br i1 %i.fy, label %.preheader1105.us.i, label %._crit_edge1244.split.i

.preheader1105.us.i:                              ; preds = %.preheader1105.lr.ph.i, %._crit_edge.us1228.i
  %.28391217.us.i = phi ptr [ %i.zd, %._crit_edge.us1228.i ], [ %.1838.lcssa.i, %.preheader1105.lr.ph.i ] ; 2 uses
  %.28421216.us.i = phi ptr [ %i.ze, %._crit_edge.us1228.i ], [ %.1841.lcssa.i, %.preheader1105.lr.ph.i ] ; 2 uses
  %.28501215.us.i = phi ptr [ %i.zf, %._crit_edge.us1228.i ], [ %.1849.lcssa.i, %.preheader1105.lr.ph.i ] ; 2 uses
  %.28531214.us.i = phi ptr [ %i.zg, %._crit_edge.us1228.i ], [ %.1852.lcssa.i, %.preheader1105.lr.ph.i ] ; 2 uses
  %.28571213.us.i = phi ptr [ %i.zh, %._crit_edge.us1228.i ], [ %.1856.lcssa.i, %.preheader1105.lr.ph.i ] ; 2 uses
  %.28601212.us.i = phi ptr [ %i.zi, %._crit_edge.us1228.i ], [ %.1859.lcssa.i, %.preheader1105.lr.ph.i ] ; 2 uses
  %.28831211.us.i = phi ptr [ %i.zj, %._crit_edge.us1228.i ], [ %.1882.lcssa.i, %.preheader1105.lr.ph.i ] ; 2 uses
  %.28861210.us.i = phi ptr [ %i.zk, %._crit_edge.us1228.i ], [ %.1885.lcssa.i, %.preheader1105.lr.ph.i ] ; 2 uses
  %.68931209.us.i = phi ptr [ %i.zc, %._crit_edge.us1228.i ], [ %.3890.lcssa.i, %.preheader1105.lr.ph.i ]
  %.29001208.us.i = phi i32 [ %i.zl, %._crit_edge.us1228.i ], [ %.1899.lcssa.i, %.preheader1105.lr.ph.i ]
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.preheader1105.us.i
  %indvars.iv1672.i = phi i64 [ 0, %.preheader1105.us.i ], [ %indvars.iv.next1673.i, %bb.ak ] ; 9 uses
  %.78941207.us.i = phi ptr [ %.68931209.us.i, %.preheader1105.us.i ], [ %i.zc, %bb.ak ] ; 17 uses
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %.28391217.us.i, i64 %indvars.iv1672.i ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnn21Convolution1D_x86_fma15create_pipelineERKNS_6OptionE:bb.a
  %i.afp = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.afo ; 2 uses
  %i.afq = lshr i32 %i.afb, 3
  %i.afr = lshr i32 %i.afb, 2
  %i.afs = and i32 %i.afr, 1
  %i.aft = add nuw nsw i32 %i.afs, %i.afq
  %i.afu = zext nneg i32 %i.aft to i64
  %.reass1341.i = mul i64 %factor.op.mul1340.i, %i.afu
  %i.afv = getelementptr inbounds nuw i8, ptr %i.hh, i64 %.reass1341.i ; 4 uses
  br i1 %i.hm, label %.preheader1099.lr.ph.i, label %.preheader1102.i

.preheader1099.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1004.i
  br i1 %i.hn, label %.preheader1099.us.i, label %.preheader1102.thread.i

.preheader1099.us.i:                              ; preds = %.preheader1099.lr.ph.i, %._crit_edge1255.us.i
  %.09211262.us.i = phi i32 [ %i.ajs, %._crit_edge1255.us.i ], [ 0, %.preheader1099.lr.ph.i ]
  %.09251261.us.i = phi ptr [ %i.ajn, %._crit_edge1255.us.i ], [ %i.afv, %.preheader1099.lr.ph.i ]
  %.09361260.us.i = phi ptr [ %i.ajr, %._crit_edge1255.us.i ], [ %i.afp, %.preheader1099.lr.ph.i ] ; 2 uses
  %.09391259.us.i = phi ptr [ %i.ajq, %._crit_edge1255.us.i ], [ %i.afm, %.preheader1099.lr.ph.i ] ; 2 uses
  %.09421258.us.i = phi ptr [ %i.ajp, %._crit_edge1255.us.i ], [ %i.afi, %.preheader1099.lr.ph.i ] ; 2 uses
  %.09451257.us.i = phi ptr [ %i.ajo, %._crit_edge1255.us.i ], [ %i.afe, %.preheader1099.lr.ph.i ] ; 2 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.preheader1099.us.i
  %indvars.iv1703.i = phi i64 [ 0, %.preheader1099.us.i ], [ %indvars.iv.next1704.i, %bb.al ] ; 5 uses
  %.19261253.us.i = phi ptr [ %.09251261.us.i, %.preheader1099.us.i ], [ %i.ajn, %bb.al ] ; 33 uses
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %.09451257.us.i, i64 %indvars.iv1703.i ; 2 uses
  %i.afx = getelementptr inbounds nuw [4 x i8], ptr %.09421258.us.i, i64 %indvars.iv1703.i ; 2 uses
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %.09391259.us.i, i64 %indvars.iv1703.i ; 2 uses
  %i.afz = getelementptr inbounds nuw [4 x i8], ptr %.09361260.us.i, i64 %indvars.iv1703.i ; 2 uses
  %i.aga = load float, ptr %i.afw, align 4, !tbaa !45
  store float %i.aga, ptr %.19261253.us.i, align 4, !tbaa !45
  %i.agb = load float, ptr %i.afx, align 4, !tbaa !45
  %i.agc = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 4
  store float %i.agb, ptr %i.agc, align 4, !tbaa !45
  %i.agd = load float, ptr %i.afy, align 4, !tbaa !45
  %i.age = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 8
  store float %i.agd, ptr %i.age, align 4, !tbaa !45
  %i.agf = load float, ptr %i.afz, align 4, !tbaa !45
  %i.agg = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 12
  store float %i.agf, ptr %i.agg, align 4, !tbaa !45
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %i.afw, i64 %i.ho ; 2 uses
  %i.agi = getelementptr inbounds nuw [4 x i8], ptr %i.afx, i64 %i.ho ; 2 uses
  %i.agj = getelementptr inbounds nuw [4 x i8], ptr %i.afy, i64 %i.ho ; 2 uses
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %i.afz, i64 %i.ho ; 2 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 16
  %i.agm = load float, ptr %i.agh, align 4, !tbaa !45
  store float %i.agm, ptr %i.agl, align 4, !tbaa !45
  %i.agn = load float, ptr %i.agi, align 4, !tbaa !45
  %i.ago = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 20
  store float %i.agn, ptr %i.ago, align 4, !tbaa !45
  %i.agp = load float, ptr %i.agj, align 4, !tbaa !45
  %i.agq = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 24
  store float %i.agp, ptr %i.agq, align 4, !tbaa !45
  %i.agr = load float, ptr %i.agk, align 4, !tbaa !45
  %i.ags = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 28
  store float %i.agr, ptr %i.ags, align 4, !tbaa !45
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %i.agh, i64 %i.ho ; 2 uses
  %i.agu = getelementptr inbounds nuw [4 x i8], ptr %i.agi, i64 %i.ho ; 2 uses
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %i.agj, i64 %i.ho ; 2 uses
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %i.agk, i64 %i.ho ; 2 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 32
  %i.agy = load float, ptr %i.agt, align 4, !tbaa !45
  store float %i.agy, ptr %i.agx, align 4, !tbaa !45
  %i.agz = load float, ptr %i.agu, align 4, !tbaa !45
  %i.aha = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 36
  store float %i.agz, ptr %i.aha, align 4, !tbaa !45
  %i.ahb = load float, ptr %i.agv, align 4, !tbaa !45
  %i.ahc = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 40
  store float %i.ahb, ptr %i.ahc, align 4, !tbaa !45
  %i.ahd = load float, ptr %i.agw, align 4, !tbaa !45
  %i.ahe = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 44
  store float %i.ahd, ptr %i.ahe, align 4, !tbaa !45
  %i.ahf = getelementptr inbounds nuw [4 x i8], ptr %i.agt, i64 %i.ho ; 2 uses
  %i.ahg = getelementptr inbounds nuw [4 x i8], ptr %i.agu, i64 %i.ho ; 2 uses
  %i.ahh = getelementptr inbounds nuw [4 x i8], ptr %i.agv, i64 %i.ho ; 2 uses
  %i.ahi = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %i.ho ; 2 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 48
  %i.ahk = load float, ptr %i.ahf, align 4, !tbaa !45
  store float %i.ahk, ptr %i.ahj, align 4, !tbaa !45
  %i.ahl = load float, ptr %i.ahg, align 4, !tbaa !45
  %i.ahm = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 52
  store float %i.ahl, ptr %i.ahm, align 4, !tbaa !45
  %i.ahn = load float, ptr %i.ahh, align 4, !tbaa !45
  %i.aho = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 56
  store float %i.ahn, ptr %i.aho, align 4, !tbaa !45
  %i.ahp = load float, ptr %i.ahi, align 4, !tbaa !45
  %i.ahq = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 60
  store float %i.ahp, ptr %i.ahq, align 4, !tbaa !45
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %i.ahf, i64 %i.ho ; 2 uses
  %i.ahs = getelementptr inbounds nuw [4 x i8], ptr %i.ahg, i64 %i.ho ; 2 uses
  %i.aht = getelementptr inbounds nuw [4 x i8], ptr %i.ahh, i64 %i.ho ; 2 uses
  %i.ahu = getelementptr inbounds nuw [4 x i8], ptr %i.ahi, i64 %i.ho ; 2 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 64
  %i.ahw = load float, ptr %i.ahr, align 4, !tbaa !45
  store float %i.ahw, ptr %i.ahv, align 4, !tbaa !45
  %i.ahx = load float, ptr %i.ahs, align 4, !tbaa !45
  %i.ahy = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 68
  store float %i.ahx, ptr %i.ahy, align 4, !tbaa !45
  %i.ahz = load float, ptr %i.aht, align 4, !tbaa !45
  %i.aia = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 72
  store float %i.ahz, ptr %i.aia, align 4, !tbaa !45
  %i.aib = load float, ptr %i.ahu, align 4, !tbaa !45
  %i.aic = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 76
  store float %i.aib, ptr %i.aic, align 4, !tbaa !45
  %i.aid = getelementptr inbounds nuw [4 x i8], ptr %i.ahr, i64 %i.ho ; 2 uses
  %i.aie = getelementptr inbounds nuw [4 x i8], ptr %i.ahs, i64 %i.ho ; 2 uses
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %i.aht, i64 %i.ho ; 2 uses
  %i.aig = getelementptr inbounds nuw [4 x i8], ptr %i.ahu, i64 %i.ho ; 2 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 80
  %i.aii = load float, ptr %i.aid, align 4, !tbaa !45
  store float %i.aii, ptr %i.aih, align 4, !tbaa !45
  %i.aij = load float, ptr %i.aie, align 4, !tbaa !45
  %i.aik = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 84
  store float %i.aij, ptr %i.aik, align 4, !tbaa !45
  %i.ail = load float, ptr %i.aif, align 4, !tbaa !45
  %i.aim = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 88
  store float %i.ail, ptr %i.aim, align 4, !tbaa !45
  %i.ain = load float, ptr %i.aig, align 4, !tbaa !45
  %i.aio = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 92
  store float %i.ain, ptr %i.aio, align 4, !tbaa !45
  %i.aip = getelementptr inbounds nuw [4 x i8], ptr %i.aid, i64 %i.ho ; 2 uses
  %i.aiq = getelementptr inbounds nuw [4 x i8], ptr %i.aie, i64 %i.ho ; 2 uses
  %i.air = getelementptr inbounds nuw [4 x i8], ptr %i.aif, i64 %i.ho ; 2 uses
  %i.ais = getelementptr inbounds nuw [4 x i8], ptr %i.aig, i64 %i.ho ; 2 uses
  %i.ait = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 96
  %i.aiu = load float, ptr %i.aip, align 4, !tbaa !45
  store float %i.aiu, ptr %i.ait, align 4, !tbaa !45
  %i.aiv = load float, ptr %i.aiq, align 4, !tbaa !45
  %i.aiw = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 100
  store float %i.aiv, ptr %i.aiw, align 4, !tbaa !45
  %i.aix = load float, ptr %i.air, align 4, !tbaa !45
  %i.aiy = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 104
  store float %i.aix, ptr %i.aiy, align 4, !tbaa !45
  %i.aiz = load float, ptr %i.ais, align 4, !tbaa !45
  %i.aja = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 108
  store float %i.aiz, ptr %i.aja, align 4, !tbaa !45
  %i.ajb = getelementptr inbounds nuw [4 x i8], ptr %i.aip, i64 %i.ho
  %i.ajc = getelementptr inbounds nuw [4 x i8], ptr %i.aiq, i64 %i.ho
  %i.ajd = getelementptr inbounds nuw [4 x i8], ptr %i.air, i64 %i.ho
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr %i.ais, i64 %i.ho
  %i.ajf = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 112
  %i.ajg = load float, ptr %i.ajb, align 4, !tbaa !45
  store float %i.ajg, ptr %i.ajf, align 4, !tbaa !45
  %i.ajh = load float, ptr %i.ajc, align 4, !tbaa !45
  %i.aji = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 116
  store float %i.ajh, ptr %i.aji, align 4, !tbaa !45
  %i.ajj = load float, ptr %i.ajd, align 4, !tbaa !45
  %i.ajk = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 120
  store float %i.ajj, ptr %i.ajk, align 4, !tbaa !45
  %i.ajl = load float, ptr %i.aje, align 4, !tbaa !45
  %i.ajm = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 124
  store float %i.ajl, ptr %i.ajm, align 4, !tbaa !45
  %i.ajn = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 128 ; 3 uses
  %indvars.iv.next1704.i = add nuw nsw i64 %indvars.iv1703.i, 1 ; 2 uses
  %exitcond1707.not.i = icmp eq i64 %indvars.iv.next1704.i, %wide.trip.count1706.i
  br i1 %exitcond1707.not.i, label %._crit_edge1255.us.i, label %bb.al, !llvm.loop !97

._crit_edge1255.us.i:                             ; preds = %bb.al
  %i.ajo = getelementptr inbounds nuw [4 x i8], ptr %.09451257.us.i, i64 %i.hq ; 2 uses
  %i.ajp = getelementptr inbounds nuw [4 x i8], ptr %.09421258.us.i, i64 %i.hq ; 2 uses
  %i.ajq = getelementptr inbounds nuw [4 x i8], ptr %.09391259.us.i, i64 %i.hq ; 2 uses
  %i.ajr = getelementptr inbounds nuw [4 x i8], ptr %.09361260.us.i, i64 %i.hq ; 2 uses
  %i.ajs = add nuw nsw i32 %.09211262.us.i, 8     ; 2 uses
  %i.ajt = or disjoint i32 %i.ajs, 7
  %i.aju = icmp slt i32 %i.ajt, %i.n
  br i1 %i.aju, label %.preheader1099.us.i, label %.preheader1102.i, !llvm.loop !98

.preheader1102.i:                                 ; preds = %._crit_edge1255.us.i, %_ZN4ncnn3MatD2Ev.exit1004.i
  %.0945.lcssa.i = phi ptr [ %i.afe, %_ZN4ncnn3MatD2Ev.exit1004.i ], [ %i.ajo, %._crit_edge1255.us.i ] ; 3 uses
  %.0942.lcssa.i = phi ptr [ %i.afi, %_ZN4ncnn3MatD2Ev.exit1004.i ], [ %i.ajp, %._crit_edge1255.us.i ] ; 3 uses
  %.0939.lcssa.i = phi ptr [ %i.afm, %_ZN4ncnn3MatD2Ev.exit1004.i ], [ %i.ajq, %._crit_edge1255.us.i ] ; 3 uses
  %.0936.lcssa.i = phi ptr [ %i.afp, %_ZN4ncnn3MatD2Ev.exit1004.i ], [ %i.ajr, %._crit_edge1255.us.i ] ; 3 uses
  %.0925.lcssa.i = phi ptr [ %i.afv, %_ZN4ncnn3MatD2Ev.exit1004.i ], [ %i.ajn, %._crit_edge1255.us.i ] ; 3 uses
  %.0921.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1004.i ], [ %i.ij, %._crit_edge1255.us.i ] ; 4 uses
  %i.ajv = or disjoint i32 %.0921.lcssa.i, 3
  %i.ajw = icmp slt i32 %i.ajv, %i.n
  br i1 %i.ajw, label %.preheader1098.lr.ph.i, label %.preheader1101.i

.preheader1102.thread.i:                          ; preds = %.preheader1099.lr.ph.i
  br i1 %i.ip, label %.preheader1098.preheader.i, label %.preheader1101.i

.preheader1098.lr.ph.i:                           ; preds = %.preheader1102.i
  br i1 %i.hn, label %.preheader1098.us.i, label %.preheader1098.preheader.i

.preheader1098.preheader.i:                       ; preds = %.preheader1098.lr.ph.i, %.preheader1102.thread.i
  %.0945.lcssa18941911.i = phi ptr [ %.0945.lcssa.i, %.preheader1098.lr.ph.i ], [ %scevgep1689.i, %.preheader1102.thread.i ]
  %.0942.lcssa18951910.i = phi ptr [ %.0942.lcssa.i, %.preheader1098.lr.ph.i ], [ %scevgep1693.i, %.preheader1102.thread.i ]
  %.0939.lcssa18961909.i = phi ptr [ %.0939.lcssa.i, %.preheader1098.lr.ph.i ], [ %scevgep1697.i, %.preheader1102.thread.i ]
  %.0936.lcssa18971908.i = phi ptr [ %.0936.lcssa.i, %.preheader1098.lr.ph.i ], [ %scevgep1701.i, %.preheader1102.thread.i ]
  %.0925.lcssa18981907.i = phi ptr [ %.0925.lcssa.i, %.preheader1098.lr.ph.i ], [ %i.afv, %.preheader1102.thread.i ]
  %.0921.lcssa18991906.i = phi i32 [ %.0921.lcssa.i, %.preheader1098.lr.ph.i ], [ %i.ij, %.preheader1102.thread.i ] ; 2 uses
  %i.ajx = sub i32 %i.ik, %.0921.lcssa18991906.i
  %i.ajy = and i32 %i.ajx, -4                     ; 2 uses
  %i.ajz = zext i32 %i.ajy to i64
  %i.aka = add nuw nsw i64 %i.ajz, 4
  %i.akb = mul nsw i64 %i.aka, %i.hs              ; 4 uses
  %scevgep1708.i = getelementptr i8, ptr %.0945.lcssa18941911.i, i64 %i.akb
  %scevgep1709.i = getelementptr i8, ptr %.0942.lcssa18951910.i, i64 %i.akb
  %scevgep1710.i = getelementptr i8, ptr %.0939.lcssa18961909.i, i64 %i.akb
  %scevgep1711.i = getelementptr i8, ptr %.0936.lcssa18971908.i, i64 %i.akb
  %i.akc = add i32 %.0921.lcssa18991906.i, 4
  %i.akd = add i32 %i.akc, %i.ajy
  br label %.preheader1101.i

.preheader1098.us.i:                              ; preds = %.preheader1098.lr.ph.i, %._crit_edge1283.us.i
  %.19221290.us.i = phi i32 [ %i.ame, %._crit_edge1283.us.i ], [ %.0921.lcssa.i, %.preheader1098.lr.ph.i ]
  %.39281289.us.i = phi ptr [ %i.alz, %._crit_edge1283.us.i ], [ %.0925.lcssa.i, %.preheader1098.lr.ph.i ]
  %.19371288.us.i = phi ptr [ %i.amd, %._crit_edge1283.us.i ], [ %.0936.lcssa.i, %.preheader1098.lr.ph.i ] ; 2 uses
  %.19401287.us.i = phi ptr [ %i.amc, %._crit_edge1283.us.i ], [ %.0939.lcssa.i, %.preheader1098.lr.ph.i ] ; 2 uses
  %.19431286.us.i = phi ptr [ %i.amb, %._crit_edge1283.us.i ], [ %.0942.lcssa.i, %.preheader1098.lr.ph.i ] ; 2 uses
  %.19461285.us.i = phi ptr [ %i.ama, %._crit_edge1283.us.i ], [ %.0945.lcssa.i, %.preheader1098.lr.ph.i ] ; 2 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.preheader1098.us.i
  %indvars.iv1713.i = phi i64 [ 0, %.preheader1098.us.i ], [ %indvars.iv.next1714.i, %bb.am ] ; 5 uses
  %.49291281.us.i = phi ptr [ %.39281289.us.i, %.preheader1098.us.i ], [ %i.alz, %bb.am ] ; 17 uses
  %i.ake = getelementptr inbounds nuw [4 x i8], ptr %.19461285.us.i, i64 %indvars.iv1713.i ; 2 uses
  %i.akf = getelementptr inbounds nuw [4 x i8], ptr %.19431286.us.i, i64 %indvars.iv1713.i ; 2 uses
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr %.19401287.us.i, i64 %indvars.iv1713.i ; 2 uses
  %i.akh = getelementptr inbounds nuw [4 x i8], ptr %.19371288.us.i, i64 %indvars.iv1713.i ; 2 uses
  %i.aki = load float, ptr %i.ake, align 4, !tbaa !45
  store float %i.aki, ptr %.49291281.us.i, align 4, !tbaa !45
  %i.akj = load float, ptr %i.akf, align 4, !tbaa !45
  %i.akk = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 4
  store float %i.akj, ptr %i.akk, align 4, !tbaa !45
  %i.akl = load float, ptr %i.akg, align 4, !tbaa !45
  %i.akm = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 8
  store float %i.akl, ptr %i.akm, align 4, !tbaa !45
  %i.akn = load float, ptr %i.akh, align 4, !tbaa !45
  %i.ako = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 12
  store float %i.akn, ptr %i.ako, align 4, !tbaa !45
  %i.akp = getelementptr inbounds nuw [4 x i8], ptr %i.ake, i64 %i.ho ; 2 uses
  %i.akq = getelementptr inbounds nuw [4 x i8], ptr %i.akf, i64 %i.ho ; 2 uses
  %i.akr = getelementptr inbounds nuw [4 x i8], ptr %i.akg, i64 %i.ho ; 2 uses
  %i.aks = getelementptr inbounds nuw [4 x i8], ptr %i.akh, i64 %i.ho ; 2 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 16
  %i.aku = load float, ptr %i.akp, align 4, !tbaa !45
  store float %i.aku, ptr %i.akt, align 4, !tbaa !45
  %i.akv = load float, ptr %i.akq, align 4, !tbaa !45
  %i.akw = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 20
  store float %i.akv, ptr %i.akw, align 4, !tbaa !45
  %i.akx = load float, ptr %i.akr, align 4, !tbaa !45
  %i.aky = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 24
  store float %i.akx, ptr %i.aky, align 4, !tbaa !45
  %i.akz = load float, ptr %i.aks, align 4, !tbaa !45
  %i.ala = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 28
  store float %i.akz, ptr %i.ala, align 4, !tbaa !45
  %i.alb = getelementptr inbounds nuw [4 x i8], ptr %i.akp, i64 %i.ho ; 2 uses
  %i.alc = getelementptr inbounds nuw [4 x i8], ptr %i.akq, i64 %i.ho ; 2 uses
  %i.ald = getelementptr inbounds nuw [4 x i8], ptr %i.akr, i64 %i.ho ; 2 uses
  %i.ale = getelementptr inbounds nuw [4 x i8], ptr %i.aks, i64 %i.ho ; 2 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 32
  %i.alg = load float, ptr %i.alb, align 4, !tbaa !45
  store float %i.alg, ptr %i.alf, align 4, !tbaa !45
  %i.alh = load float, ptr %i.alc, align 4, !tbaa !45
  %i.ali = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 36
  store float %i.alh, ptr %i.ali, align 4, !tbaa !45
  %i.alj = load float, ptr %i.ald, align 4, !tbaa !45
  %i.alk = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 40
  store float %i.alj, ptr %i.alk, align 4, !tbaa !45
  %i.all = load float, ptr %i.ale, align 4, !tbaa !45
  %i.alm = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 44
  store float %i.all, ptr %i.alm, align 4, !tbaa !45
  %i.aln = getelementptr inbounds nuw [4 x i8], ptr %i.alb, i64 %i.ho
  %i.alo = getelementptr inbounds nuw [4 x i8], ptr %i.alc, i64 %i.ho
  %i.alp = getelementptr inbounds nuw [4 x i8], ptr %i.ald, i64 %i.ho
  %i.alq = getelementptr inbounds nuw [4 x i8], ptr %i.ale, i64 %i.ho
  %i.alr = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 48
  %i.als = load float, ptr %i.aln, align 4, !tbaa !45
  store float %i.als, ptr %i.alr, align 4, !tbaa !45
  %i.alt = load float, ptr %i.alo, align 4, !tbaa !45
  %i.alu = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 52
  store float %i.alt, ptr %i.alu, align 4, !tbaa !45
  %i.alv = load float, ptr %i.alp, align 4, !tbaa !45
  %i.alw = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 56
  store float %i.alv, ptr %i.alw, align 4, !tbaa !45
  %i.alx = load float, ptr %i.alq, align 4, !tbaa !45
  %i.aly = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 60
  store float %i.alx, ptr %i.aly, align 4, !tbaa !45
  %i.alz = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 64 ; 3 uses
  %indvars.iv.next1714.i = add nuw nsw i64 %indvars.iv1713.i, 1 ; 2 uses
  %exitcond1717.not.i = icmp eq i64 %indvars.iv.next1714.i, %wide.trip.count1706.i
  br i1 %exitcond1717.not.i, label %._crit_edge1283.us.i, label %bb.am, !llvm.loop !99

._crit_edge1283.us.i:                             ; preds = %bb.am
  %i.ama = getelementptr inbounds nuw [4 x i8], ptr %.19461285.us.i, i64 %i.hs ; 2 uses
  %i.amb = getelementptr inbounds nuw [4 x i8], ptr %.19431286.us.i, i64 %i.hs ; 2 uses
  %i.amc = getelementptr inbounds nuw [4 x i8], ptr %.19401287.us.i, i64 %i.hs ; 2 uses
  %i.amd = getelementptr inbounds nuw [4 x i8], ptr %.19371288.us.i, i64 %i.hs ; 2 uses
  %i.ame = add nuw nsw i32 %.19221290.us.i, 4     ; 3 uses
  %i.amf = or disjoint i32 %i.ame, 3
  %i.amg = icmp slt i32 %i.amf, %i.n
  br i1 %i.amg, label %.preheader1098.us.i, label %.preheader1101.i, !llvm.loop !100

.preheader1101.i:                                 ; preds = %._crit_edge1283.us.i, %.preheader1098.preheader.i, %.preheader1102.thread.i, %.preheader1102.i
  %.1946.lcssa.i = phi ptr [ %.0945.lcssa.i, %.preheader1102.i ], [ %scevgep1689.i, %.preheader1102.thread.i ], [ %scevgep1708.i, %.preheader1098.preheader.i ], [ %i.ama, %._crit_edge1283.us.i ] ; 6 uses
  %.1943.lcssa.i = phi ptr [ %.0942.lcssa.i, %.preheader1102.i ], [ %scevgep1693.i, %.preheader1102.thread.i ], [ %scevgep1709.i, %.preheader1098.preheader.i ], [ %i.amb, %._crit_edge1283.us.i ] ; 6 uses
  %.1940.lcssa.i = phi ptr [ %.0939.lcssa.i, %.preheader1102.i ], [ %scevgep1697.i, %.preheader1102.thread.i ], [ %scevgep1710.i, %.preheader1098.preheader.i ], [ %i.amc, %._crit_edge1283.us.i ] ; 6 uses
  %.1937.lcssa.i = phi ptr [ %.0936.lcssa.i, %.preheader1102.i ], [ %scevgep1701.i, %.preheader1102.thread.i ], [ %scevgep1711.i, %.preheader1098.preheader.i ], [ %i.amd, %._crit_edge1283.us.i ] ; 6 uses
  %.3928.lcssa.i = phi ptr [ %.0925.lcssa.i, %.preheader1102.i ], [ %i.afv, %.preheader1102.thread.i ], [ %.0925.lcssa18981907.i, %.preheader1098.preheader.i ], [ %i.alz, %._crit_edge1283.us.i ] ; 2 uses
  %.1922.lcssa.i = phi i32 [ %.0921.lcssa.i, %.preheader1102.i ], [ %i.ij, %.preheader1102.thread.i ], [ %i.akd, %.preheader1098.preheader.i ], [ %i.ame, %._crit_edge1283.us.i ] ; 4 uses
  %i.amh = or disjoint i32 %.1922.lcssa.i, 1
  %i.ami = icmp slt i32 %i.amh, %i.n
  br i1 %i.ami, label %.preheader1097.lr.ph.i, label %.preheader1100.i

.preheader1097.lr.ph.i:                           ; preds = %.preheader1101.i
  br i1 %i.hn, label %.preheader1097.us.i.preheader, label %._crit_edge1337.split.i

.preheader1097.us.i.preheader:                    ; preds = %.preheader1097.lr.ph.i
  %scevgep375 = getelementptr i8, ptr %.1937.lcssa.i, i64 %i.it
  %scevgep376 = getelementptr i8, ptr %.1937.lcssa.i, i64 %i.iu
  %i.amj = sub i32 %i.iw, %.1922.lcssa.i
  %i.amk = lshr i32 %i.amj, 1
  %i.aml = zext nneg i32 %i.amk to i64
  %i.amm = mul i64 %i.iv, %i.aml                  ; 8 uses
  %scevgep377 = getelementptr i8, ptr %scevgep376, i64 %i.amm
  %scevgep378 = getelementptr i8, ptr %.1940.lcssa.i, i64 %i.it
  %scevgep379 = getelementptr i8, ptr %.1940.lcssa.i, i64 %i.iu
  %scevgep380 = getelementptr i8, ptr %scevgep379, i64 %i.amm
  %scevgep381 = getelementptr i8, ptr %.1943.lcssa.i, i64 %i.it
  %scevgep382 = getelementptr i8, ptr %.1943.lcssa.i, i64 %i.iu
  %scevgep383 = getelementptr i8, ptr %scevgep382, i64 %i.amm
  %scevgep384 = getelementptr i8, ptr %.1946.lcssa.i, i64 %i.it
  %scevgep385 = getelementptr i8, ptr %.1946.lcssa.i, i64 %i.iu
  %scevgep386 = getelementptr i8, ptr %scevgep385, i64 %i.amm
  %scevgep387 = getelementptr i8, ptr %.1937.lcssa.i, i64 %i.ir
  %scevgep388 = getelementptr i8, ptr %scevgep387, i64 %i.amm
  %scevgep389 = getelementptr i8, ptr %.1940.lcssa.i, i64 %i.ir
  %scevgep390 = getelementptr i8, ptr %scevgep389, i64 %i.amm
  %scevgep391 = getelementptr i8, ptr %.1943.lcssa.i, i64 %i.ir
  %scevgep392 = getelementptr i8, ptr %scevgep391, i64 %i.amm
  %scevgep393 = getelementptr i8, ptr %.1946.lcssa.i, i64 %i.ir
  %scevgep394 = getelementptr i8, ptr %scevgep393, i64 %i.amm
  %i.amn = insertelement <8 x ptr> poison, ptr %scevgep380, i64 0
  %i.amo = insertelement <8 x ptr> %i.amn, ptr %scevgep377, i64 1
  %i.amp = insertelement <8 x ptr> %i.amo, ptr %scevgep383, i64 2
  %i.amq = insertelement <8 x ptr> %i.amp, ptr %scevgep386, i64 3
  %i.amr = insertelement <8 x ptr> %i.amq, ptr %scevgep388, i64 4
  %i.ams = insertelement <8 x ptr> %i.amr, ptr %scevgep390, i64 5
  %i.amt = insertelement <8 x ptr> %i.ams, ptr %scevgep392, i64 6
  %i.amu = insertelement <8 x ptr> %i.amt, ptr %scevgep394, i64 7
  %i.amv = insertelement <8 x ptr> poison, ptr %scevgep378, i64 0
  %i.amw = insertelement <8 x ptr> %i.amv, ptr %scevgep375, i64 1
  %i.amx = insertelement <8 x ptr> %i.amw, ptr %scevgep381, i64 2
  %i.amy = insertelement <8 x ptr> %i.amx, ptr %scevgep384, i64 3
  %i.amz = insertelement <8 x ptr> %i.amy, ptr %.1937.lcssa.i, i64 4
  %i.ana = insertelement <8 x ptr> %i.amz, ptr %.1940.lcssa.i, i64 5
  %i.anb = insertelement <8 x ptr> %i.ana, ptr %.1943.lcssa.i, i64 6
  %i.anc = insertelement <8 x ptr> %i.anb, ptr %.1946.lcssa.i, i64 7
  br label %.preheader1097.us.i

.preheader1097.us.i:                              ; preds = %.preheader1097.us.i.preheader, %._crit_edge1311.us.i
  %.29231318.us.i = phi i32 [ %i.apf, %._crit_edge1311.us.i ], [ %.1922.lcssa.i, %.preheader1097.us.i.preheader ]
  %.69311317.us.i = phi ptr [ %.lcssa255, %._crit_edge1311.us.i ], [ %.3928.lcssa.i, %.preheader1097.us.i.preheader ] ; 6 uses
  %.29381316.us.i = phi ptr [ %i.ape, %._crit_edge1311.us.i ], [ %.1937.lcssa.i, %.preheader1097.us.i.preheader ] ; 3 uses
  %.29411315.us.i = phi ptr [ %i.apd, %._crit_edge1311.us.i ], [ %.1940.lcssa.i, %.preheader1097.us.i.preheader ] ; 3 uses
  %.29441314.us.i = phi ptr [ %i.apc, %._crit_edge1311.us.i ], [ %.1943.lcssa.i, %.preheader1097.us.i.preheader ] ; 3 uses
  %.29471313.us.i = phi ptr [ %i.apb, %._crit_edge1311.us.i ], [ %.1946.lcssa.i, %.preheader1097.us.i.preheader ] ; 3 uses
  br i1 %min.iters.check434, label %scalar.ph433.preheader, label %vector.memcheck373

vector.memcheck373:                               ; preds = %.preheader1097.us.i
  %scevgep374 = getelementptr i8, ptr %.69311317.us.i, i64 %i.is
  %i.and = insertelement <8 x ptr> poison, ptr %.69311317.us.i, i64 0
  %i.ane = shufflevector <8 x ptr> %i.and, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.anf = icmp ult <8 x ptr> %i.ane, %i.amu
  %i.ang = insertelement <8 x ptr> poison, ptr %scevgep374, i64 0
  %i.anh = shufflevector <8 x ptr> %i.ang, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.ani = icmp ult <8 x ptr> %i.anc, %i.anh
  %i.anj = and <8 x i1> %i.anf, %i.ani
  %i.ank = bitcast <8 x i1> %i.anj to i8
  %i.anl = icmp ne i8 %i.ank, 0
  %op.rdx820 = or i1 %i.anl, %stride.check401
  br i1 %op.rdx820, label %scalar.ph433.preheader, label %vector.ph435

vector.ph435:                                     ; preds = %vector.memcheck373
  %i.anm = getelementptr i8, ptr %.69311317.us.i, i64 %i.ix ; 2 uses
  br label %vector.body437

vector.body437:                                   ; preds = %vector.body437, %vector.ph435
  %index438 = phi i64 [ 0, %vector.ph435 ], [ %index.next449, %vector.body437 ] ; 6 uses
  %i.ann = shl i64 %index438, 5
  %next.gep439 = getelementptr i8, ptr %.69311317.us.i, i64 %i.ann
  %i.ano = getelementptr inbounds nuw [4 x i8], ptr %.29471313.us.i, i64 %index438 ; 2 uses
  %i.anp = getelementptr inbounds nuw [4 x i8], ptr %.29441314.us.i, i64 %index438 ; 2 uses
  %i.anq = getelementptr inbounds nuw [4 x i8], ptr %.29411315.us.i, i64 %index438 ; 2 uses
  %i.anr = getelementptr inbounds nuw [4 x i8], ptr %.29381316.us.i, i64 %index438 ; 2 uses
  %wide.load440 = load <8 x float>, ptr %i.ano, align 4, !tbaa !45, !alias.scope !209
  %wide.load441 = load <8 x float>, ptr %i.anp, align 4, !tbaa !45, !alias.scope !210
  %wide.load442 = load <8 x float>, ptr %i.anq, align 4, !tbaa !45, !alias.scope !211
  %wide.load443 = load <8 x float>, ptr %i.anr, align 4, !tbaa !45, !alias.scope !212
  %i.ans = getelementptr inbounds nuw [4 x i8], ptr %i.ano, i64 %i.ho
  %i.ant = getelementptr inbounds nuw [4 x i8], ptr %i.anp, i64 %i.ho
  %i.anu = getelementptr inbounds nuw [4 x i8], ptr %i.anq, i64 %i.ho
  %i.anv = getelementptr inbounds nuw [4 x i8], ptr %i.anr, i64 %i.ho
  %wide.load444 = load <8 x float>, ptr %i.ans, align 4, !tbaa !45, !alias.scope !213
  %wide.load445 = load <8 x float>, ptr %i.ant, align 4, !tbaa !45, !alias.scope !214
  %wide.load446 = load <8 x float>, ptr %i.anu, align 4, !tbaa !45, !alias.scope !215
  %wide.load447 = load <8 x float>, ptr %i.anv, align 4, !tbaa !45, !alias.scope !216
  %i.anw = shufflevector <8 x float> %wide.load440, <8 x float> %wide.load441, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.anx = shufflevector <8 x float> %wide.load442, <8 x float> %wide.load443, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.any = shufflevector <8 x float> %wide.load444, <8 x float> %wide.load445, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
end_hunk_1
begin_hunk_2_@_ZN4ncnn21Convolution1D_x86_fma15create_pipelineERKNS_6OptionE:bb.a
  %cmp.n633 = icmp eq i64 %n.vec623, %wide.trip.count1784.i
  %min.epilog.iters.check = icmp eq i64 %i.auf, 0
  %n.vec635 = and i64 %wide.trip.count1784.i, 2147483640 ; 4 uses
  %i.auh = shl nuw nsw i64 %n.vec635, 2
  %cmp.n640 = icmp eq i64 %n.vec635, %wide.trip.count1784.i
  %xtraiter901 = and i64 %wide.trip.count1784.i, 7 ; 2 uses
  %lcmp.mod902.not = icmp eq i64 %xtraiter901, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i

_ZN4ncnn3MatD2Ev.exit1003.i:                      ; preds = %._crit_edge1400.split.i, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i
  %indvars.iv1773.i = phi i64 [ %i.adu, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i ], [ %indvars.iv.next1774.i, %._crit_edge1400.split.i ] ; 2 uses
  %indvars.iv1745.i = phi i32 [ %i.adq, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i ], [ %indvars.iv.next1746.i, %._crit_edge1400.split.i ] ; 2 uses
  %indvars.iv1741.i = phi i32 [ %i.ado, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i ], [ %indvars.iv.next1742.i, %._crit_edge1400.split.i ] ; 2 uses
  %i.aui = phi i32 [ %i.acg, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i ], [ %i.bei, %._crit_edge1400.split.i ]
  %i.auj = sext i32 %indvars.iv1741.i to i64
  %i.auk = shl nsw i64 %i.auj, 2
  %scevgep1743.i = getelementptr i8, ptr %scevgep1740.i, i64 %i.auk ; 2 uses
  %i.aul = sext i32 %indvars.iv1745.i to i64
  %i.aum = shl nsw i64 %i.aul, 2
  %scevgep1747.i = getelementptr i8, ptr %scevgep1740.i, i64 %i.aum ; 2 uses
  %i.aun = trunc i64 %indvars.iv1773.i to i32     ; 4 uses
  %i.auo = mul i32 %i.acj, %i.aun
  %i.aup = sext i32 %i.auo to i64
  %i.auq = getelementptr inbounds [4 x i8], ptr %i.aci, i64 %i.aup ; 2 uses
  %i.aur = mul i32 %i.aui, %i.acj
  %i.aus = sext i32 %i.aur to i64
  %i.aut = getelementptr inbounds [4 x i8], ptr %i.aci, i64 %i.aus ; 2 uses
  %i.auu = lshr i32 %i.aun, 3
  %i.auv = lshr i32 %i.aun, 2
  %i.auw = and i32 %i.auv, 1
  %i.aux = add nuw nsw i32 %i.auw, %i.auu
  %i.auy = lshr i32 %i.aun, 1
  %i.auz = and i32 %i.auy, 1
  %i.ava = add nuw nsw i32 %i.aux, %i.auz
  %i.avb = zext nneg i32 %i.ava to i64
  %.reass1404.i = mul i64 %factor.op.mul1403.i, %i.avb
  %i.avc = getelementptr inbounds nuw i8, ptr %i.ack, i64 %.reass1404.i ; 4 uses
  br i1 %i.acp, label %.preheader1091.lr.ph.i, label %.preheader1094.i

.preheader1091.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1003.i
  br i1 %i.acq, label %.preheader1091.us.i, label %.preheader1094.thread.i

.preheader1091.us.i:                              ; preds = %.preheader1091.lr.ph.i, %._crit_edge1344.us.i
  %.08621349.us.i = phi i32 [ %i.axb, %._crit_edge1344.us.i ], [ 0, %.preheader1091.lr.ph.i ]
  %.08661348.us.i = phi ptr [ %i.awy, %._crit_edge1344.us.i ], [ %i.avc, %.preheader1091.lr.ph.i ]
  %.08751347.us.i = phi ptr [ %i.axa, %._crit_edge1344.us.i ], [ %i.aut, %.preheader1091.lr.ph.i ] ; 2 uses
  %.08781346.us.i = phi ptr [ %i.awz, %._crit_edge1344.us.i ], [ %i.auq, %.preheader1091.lr.ph.i ] ; 2 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.preheader1091.us.i
  %indvars.iv1748.i = phi i64 [ 0, %.preheader1091.us.i ], [ %indvars.iv.next1749.i, %bb.an ] ; 3 uses
  %.18671342.us.i = phi ptr [ %.08661348.us.i, %.preheader1091.us.i ], [ %i.awy, %bb.an ] ; 17 uses
  %i.avd = getelementptr inbounds nuw [4 x i8], ptr %.08781346.us.i, i64 %indvars.iv1748.i ; 8 uses
  %i.ave = getelementptr inbounds nuw [4 x i8], ptr %.08751347.us.i, i64 %indvars.iv1748.i ; 8 uses
  %i.avf = load float, ptr %i.avd, align 4, !tbaa !45
  store float %i.avf, ptr %.18671342.us.i, align 4, !tbaa !45
  %i.avg = getelementptr inbounds nuw [4 x i8], ptr %i.avd, i64 %i.acr
  %i.avh = load float, ptr %i.avg, align 4, !tbaa !45
  %i.avi = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 4
  store float %i.avh, ptr %i.avi, align 4, !tbaa !45
  %i.avj = getelementptr inbounds nuw [4 x i8], ptr %i.avd, i64 %i.act
  %i.avk = load float, ptr %i.avj, align 4, !tbaa !45
  %i.avl = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 8
  store float %i.avk, ptr %i.avl, align 4, !tbaa !45
  %i.avm = getelementptr inbounds nuw [4 x i8], ptr %i.avd, i64 %i.acv
  %i.avn = load float, ptr %i.avm, align 4, !tbaa !45
  %i.avo = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 12
  store float %i.avn, ptr %i.avo, align 4, !tbaa !45
  %i.avp = getelementptr inbounds nuw [4 x i8], ptr %i.avd, i64 %i.acx
  %i.avq = load float, ptr %i.avp, align 4, !tbaa !45
  %i.avr = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 16
  store float %i.avq, ptr %i.avr, align 4, !tbaa !45
  %i.avs = getelementptr inbounds nuw [4 x i8], ptr %i.avd, i64 %i.acz
  %i.avt = load float, ptr %i.avs, align 4, !tbaa !45
  %i.avu = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 20
  store float %i.avt, ptr %i.avu, align 4, !tbaa !45
  %i.avv = getelementptr inbounds nuw [4 x i8], ptr %i.avd, i64 %i.adb
  %i.avw = load float, ptr %i.avv, align 4, !tbaa !45
  %i.avx = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 24
  store float %i.avw, ptr %i.avx, align 4, !tbaa !45
  %i.avy = getelementptr inbounds nuw [4 x i8], ptr %i.avd, i64 %i.add
  %i.avz = load float, ptr %i.avy, align 4, !tbaa !45
  %i.awa = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 28
  store float %i.avz, ptr %i.awa, align 4, !tbaa !45
  %i.awb = load float, ptr %i.ave, align 4, !tbaa !45
  %i.awc = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 32
  store float %i.awb, ptr %i.awc, align 4, !tbaa !45
  %i.awd = getelementptr inbounds nuw [4 x i8], ptr %i.ave, i64 %i.acr
  %i.awe = load float, ptr %i.awd, align 4, !tbaa !45
  %i.awf = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 36
  store float %i.awe, ptr %i.awf, align 4, !tbaa !45
  %i.awg = getelementptr inbounds nuw [4 x i8], ptr %i.ave, i64 %i.act
  %i.awh = load float, ptr %i.awg, align 4, !tbaa !45
  %i.awi = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 40
  store float %i.awh, ptr %i.awi, align 4, !tbaa !45
  %i.awj = getelementptr inbounds nuw [4 x i8], ptr %i.ave, i64 %i.acv
  %i.awk = load float, ptr %i.awj, align 4, !tbaa !45
  %i.awl = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 44
  store float %i.awk, ptr %i.awl, align 4, !tbaa !45
  %i.awm = getelementptr inbounds nuw [4 x i8], ptr %i.ave, i64 %i.acx
  %i.awn = load float, ptr %i.awm, align 4, !tbaa !45
  %i.awo = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 48
  store float %i.awn, ptr %i.awo, align 4, !tbaa !45
  %i.awp = getelementptr inbounds nuw [4 x i8], ptr %i.ave, i64 %i.acz
  %i.awq = load float, ptr %i.awp, align 4, !tbaa !45
  %i.awr = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 52
  store float %i.awq, ptr %i.awr, align 4, !tbaa !45
  %i.aws = getelementptr inbounds nuw [4 x i8], ptr %i.ave, i64 %i.adb
  %i.awt = load float, ptr %i.aws, align 4, !tbaa !45
  %i.awu = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 56
  store float %i.awt, ptr %i.awu, align 4, !tbaa !45
  %i.awv = getelementptr inbounds nuw [4 x i8], ptr %i.ave, i64 %i.add
  %i.aww = load float, ptr %i.awv, align 4, !tbaa !45
  %i.awx = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 60
  store float %i.aww, ptr %i.awx, align 4, !tbaa !45
  %i.awy = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 64 ; 3 uses
  %indvars.iv.next1749.i = add nuw nsw i64 %indvars.iv1748.i, 1 ; 2 uses
  %exitcond1752.not.i = icmp eq i64 %indvars.iv.next1749.i, %wide.trip.count1751.i
  br i1 %exitcond1752.not.i, label %._crit_edge1344.us.i, label %bb.an, !llvm.loop !126

._crit_edge1344.us.i:                             ; preds = %bb.an
  %i.awz = getelementptr inbounds nuw [4 x i8], ptr %.08781346.us.i, i64 %i.adf ; 2 uses
  %i.axa = getelementptr inbounds nuw [4 x i8], ptr %.08751347.us.i, i64 %i.adf ; 2 uses
  %i.axb = add nuw nsw i32 %.08621349.us.i, 8     ; 2 uses
  %i.axc = or disjoint i32 %i.axb, 7
  %i.axd = icmp slt i32 %i.axc, %i.n
  br i1 %i.axd, label %.preheader1091.us.i, label %.preheader1094.i, !llvm.loop !127

.preheader1094.i:                                 ; preds = %._crit_edge1344.us.i, %_ZN4ncnn3MatD2Ev.exit1003.i
  %.0878.lcssa.i = phi ptr [ %i.auq, %_ZN4ncnn3MatD2Ev.exit1003.i ], [ %i.awz, %._crit_edge1344.us.i ] ; 11 uses
  %.0875.lcssa.i = phi ptr [ %i.aut, %_ZN4ncnn3MatD2Ev.exit1003.i ], [ %i.axa, %._crit_edge1344.us.i ] ; 11 uses
  %.0866.lcssa.i = phi ptr [ %i.avc, %_ZN4ncnn3MatD2Ev.exit1003.i ], [ %i.awy, %._crit_edge1344.us.i ] ; 3 uses
  %.0862.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1003.i ], [ %i.ads, %._crit_edge1344.us.i ] ; 5 uses
  %i.axe = or disjoint i32 %.0862.lcssa.i, 3
  %i.axf = icmp slt i32 %i.axe, %i.n
  br i1 %i.axf, label %.preheader1090.lr.ph.i, label %.preheader1093.i

.preheader1094.thread.i:                          ; preds = %.preheader1091.lr.ph.i
  br i1 %i.adx, label %.preheader1090.preheader.i, label %.preheader1093.i

.preheader1090.lr.ph.i:                           ; preds = %.preheader1094.i
  br i1 %i.acq, label %.preheader1090.us.i.preheader, label %.preheader1090.preheader.i

.preheader1090.us.i.preheader:                    ; preds = %.preheader1090.lr.ph.i
  %scevgep534 = getelementptr i8, ptr %.0875.lcssa.i, i64 %i.aeg
  %scevgep535 = getelementptr i8, ptr %.0875.lcssa.i, i64 %i.aei
  %i.axg = sub i32 %i.aek, %.0862.lcssa.i
  %i.axh = lshr i32 %i.axg, 2
  %i.axi = zext nneg i32 %i.axh to i64
  %i.axj = mul nsw i64 %i.aej, %i.axi             ; 8 uses
  %scevgep536 = getelementptr i8, ptr %scevgep535, i64 %i.axj
  %scevgep537 = getelementptr i8, ptr %.0875.lcssa.i, i64 %i.ael
  %scevgep538 = getelementptr i8, ptr %.0875.lcssa.i, i64 %i.aem
  %scevgep539 = getelementptr i8, ptr %scevgep538, i64 %i.axj
  %scevgep540 = getelementptr i8, ptr %.0875.lcssa.i, i64 %i.aen
  %scevgep541 = getelementptr i8, ptr %.0875.lcssa.i, i64 %i.aeo
  %scevgep542 = getelementptr i8, ptr %scevgep541, i64 %i.axj
  %scevgep543 = getelementptr i8, ptr %.0875.lcssa.i, i64 %i.aeh
  %scevgep544 = getelementptr i8, ptr %scevgep543, i64 %i.axj
  %scevgep545 = getelementptr i8, ptr %.0878.lcssa.i, i64 %i.aeg
  %scevgep546 = getelementptr i8, ptr %.0878.lcssa.i, i64 %i.aei
  %scevgep547 = getelementptr i8, ptr %scevgep546, i64 %i.axj
  %scevgep548 = getelementptr i8, ptr %.0878.lcssa.i, i64 %i.ael
  %scevgep549 = getelementptr i8, ptr %.0878.lcssa.i, i64 %i.aem
  %scevgep550 = getelementptr i8, ptr %scevgep549, i64 %i.axj
  %scevgep551 = getelementptr i8, ptr %.0878.lcssa.i, i64 %i.aen
  %scevgep552 = getelementptr i8, ptr %.0878.lcssa.i, i64 %i.aeo
  %scevgep553 = getelementptr i8, ptr %scevgep552, i64 %i.axj
  %scevgep554 = getelementptr i8, ptr %.0878.lcssa.i, i64 %i.aeh
  %scevgep555 = getelementptr i8, ptr %scevgep554, i64 %i.axj
  %i.axk = insertelement <8 x ptr> poison, ptr %scevgep539, i64 0
  %i.axl = insertelement <8 x ptr> %i.axk, ptr %scevgep536, i64 1
  %i.axm = insertelement <8 x ptr> %i.axl, ptr %scevgep542, i64 2
  %i.axn = insertelement <8 x ptr> %i.axm, ptr %scevgep544, i64 3
  %i.axo = insertelement <8 x ptr> %i.axn, ptr %scevgep547, i64 4
  %i.axp = insertelement <8 x ptr> %i.axo, ptr %scevgep550, i64 5
  %i.axq = insertelement <8 x ptr> %i.axp, ptr %scevgep553, i64 6
  %i.axr = insertelement <8 x ptr> %i.axq, ptr %scevgep555, i64 7
  %i.axs = insertelement <8 x ptr> poison, ptr %scevgep537, i64 0
  %i.axt = insertelement <8 x ptr> %i.axs, ptr %scevgep534, i64 1
  %i.axu = insertelement <8 x ptr> %i.axt, ptr %scevgep540, i64 2
  %i.axv = insertelement <8 x ptr> %i.axu, ptr %.0875.lcssa.i, i64 3
  %i.axw = insertelement <8 x ptr> %i.axv, ptr %scevgep545, i64 4
  %i.axx = insertelement <8 x ptr> %i.axw, ptr %scevgep548, i64 5
  %i.axy = insertelement <8 x ptr> %i.axx, ptr %scevgep551, i64 6
  %i.axz = insertelement <8 x ptr> %i.axy, ptr %.0878.lcssa.i, i64 7
  br label %.preheader1090.us.i

.preheader1090.preheader.i:                       ; preds = %.preheader1090.lr.ph.i, %.preheader1094.thread.i
  %.0878.lcssa19231934.i = phi ptr [ %.0878.lcssa.i, %.preheader1090.lr.ph.i ], [ %scevgep1743.i, %.preheader1094.thread.i ]
  %.0875.lcssa19241933.i = phi ptr [ %.0875.lcssa.i, %.preheader1090.lr.ph.i ], [ %scevgep1747.i, %.preheader1094.thread.i ]
  %.0866.lcssa19251932.i = phi ptr [ %.0866.lcssa.i, %.preheader1090.lr.ph.i ], [ %i.avc, %.preheader1094.thread.i ]
  %.0862.lcssa19261931.i = phi i32 [ %.0862.lcssa.i, %.preheader1090.lr.ph.i ], [ %i.ads, %.preheader1094.thread.i ] ; 2 uses
  %i.aya = sub i32 %i.adt, %.0862.lcssa19261931.i
  %i.ayb = and i32 %i.aya, -4                     ; 2 uses
  %i.ayc = zext i32 %i.ayb to i64
  %i.ayd = add nuw nsw i64 %i.ayc, 4
  %i.aye = mul nsw i64 %i.ayd, %i.adg             ; 2 uses
  %scevgep1753.i = getelementptr i8, ptr %.0878.lcssa19231934.i, i64 %i.aye
  %scevgep1754.i = getelementptr i8, ptr %.0875.lcssa19241933.i, i64 %i.aye
  %i.ayf = add i32 %.0862.lcssa19261931.i, 4
  %i.ayg = add i32 %i.ayf, %i.ayb
  br label %.preheader1093.i

.preheader1090.us.i:                              ; preds = %.preheader1090.us.i.preheader, %._crit_edge1360.us.i
  %.18631365.us.i = phi i32 [ %i.bah, %._crit_edge1360.us.i ], [ %.0862.lcssa.i, %.preheader1090.us.i.preheader ]
  %.28681364.us.i = phi ptr [ %.lcssa235, %._crit_edge1360.us.i ], [ %.0866.lcssa.i, %.preheader1090.us.i.preheader ] ; 6 uses
  %.18761363.us.i = phi ptr [ %i.bag, %._crit_edge1360.us.i ], [ %.0875.lcssa.i, %.preheader1090.us.i.preheader ] ; 3 uses
  %.18791362.us.i = phi ptr [ %i.baf, %._crit_edge1360.us.i ], [ %.0878.lcssa.i, %.preheader1090.us.i.preheader ] ; 3 uses
  br i1 %min.iters.check596, label %scalar.ph595.preheader, label %vector.memcheck532

vector.memcheck532:                               ; preds = %.preheader1090.us.i
  %scevgep533 = getelementptr i8, ptr %.28681364.us.i, i64 %i.aef
  %i.ayh = insertelement <8 x ptr> poison, ptr %.28681364.us.i, i64 0
  %i.ayi = shufflevector <8 x ptr> %i.ayh, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.ayj = icmp ult <8 x ptr> %i.ayi, %i.axr
  %i.ayk = insertelement <8 x ptr> poison, ptr %scevgep533, i64 0
  %i.ayl = shufflevector <8 x ptr> %i.ayk, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.aym = icmp ult <8 x ptr> %i.axz, %i.ayl
  %i.ayn = and <8 x i1> %i.ayj, %i.aym
  %i.ayo = bitcast <8 x i1> %i.ayn to i8
  %i.ayp = icmp ne i8 %i.ayo, 0
  %op.rdx819 = or i1 %i.ayp, %stride.check563
  br i1 %op.rdx819, label %scalar.ph595.preheader, label %vector.ph597

vector.ph597:                                     ; preds = %vector.memcheck532
  %i.ayq = getelementptr i8, ptr %.28681364.us.i, i64 %i.aep ; 2 uses
  br label %vector.body599

vector.body599:                                   ; preds = %vector.body599, %vector.ph597
  %index600 = phi i64 [ 0, %vector.ph597 ], [ %index.next611, %vector.body599 ] ; 4 uses
  %i.ayr = shl i64 %index600, 5
  %next.gep601 = getelementptr i8, ptr %.28681364.us.i, i64 %i.ayr
  %i.ays = getelementptr inbounds nuw [4 x i8], ptr %.18791362.us.i, i64 %index600 ; 4 uses
  %i.ayt = getelementptr inbounds nuw [4 x i8], ptr %.18761363.us.i, i64 %index600 ; 4 uses
  %wide.load602 = load <8 x float>, ptr %i.ays, align 4, !tbaa !45, !alias.scope !226
  %i.ayu = getelementptr inbounds nuw [4 x i8], ptr %i.ays, i64 %i.acr
  %wide.load603 = load <8 x float>, ptr %i.ayu, align 4, !tbaa !45, !alias.scope !227
  %i.ayv = getelementptr inbounds nuw [4 x i8], ptr %i.ays, i64 %i.act
  %wide.load604 = load <8 x float>, ptr %i.ayv, align 4, !tbaa !45, !alias.scope !228
  %i.ayw = getelementptr inbounds nuw [4 x i8], ptr %i.ays, i64 %i.acv
  %wide.load605 = load <8 x float>, ptr %i.ayw, align 4, !tbaa !45, !alias.scope !229
  %wide.load606 = load <8 x float>, ptr %i.ayt, align 4, !tbaa !45, !alias.scope !230
  %i.ayx = getelementptr inbounds nuw [4 x i8], ptr %i.ayt, i64 %i.acr
  %wide.load607 = load <8 x float>, ptr %i.ayx, align 4, !tbaa !45, !alias.scope !231
  %i.ayy = getelementptr inbounds nuw [4 x i8], ptr %i.ayt, i64 %i.act
  %wide.load608 = load <8 x float>, ptr %i.ayy, align 4, !tbaa !45, !alias.scope !232
  %i.ayz = getelementptr inbounds nuw [4 x i8], ptr %i.ayt, i64 %i.acv
  %wide.load609 = load <8 x float>, ptr %i.ayz, align 4, !tbaa !45, !alias.scope !233
  %i.aza = shufflevector <8 x float> %wide.load602, <8 x float> %wide.load603, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.azb = shufflevector <8 x float> %wide.load604, <8 x float> %wide.load605, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.azc = shufflevector <8 x float> %wide.load606, <8 x float> %wide.load607, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.azd = shufflevector <8 x float> %wide.load608, <8 x float> %wide.load609, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aze = shufflevector <16 x float> %i.aza, <16 x float> %i.azb, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.azf = shufflevector <16 x float> %i.azc, <16 x float> %i.azd, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec610 = shufflevector <32 x float> %i.aze, <32 x float> %i.azf, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x float> %interleaved.vec610, ptr %next.gep601, align 4, !tbaa !45, !alias.scope !234, !noalias !235
  %index.next611 = add nuw i64 %index600, 8       ; 2 uses
  %i.azg = icmp eq i64 %index.next611, %n.vec598
  br i1 %i.azg, label %middle.block612, label %vector.body599, !llvm.loop !138

middle.block612:                                  ; preds = %vector.body599
  br i1 %cmp.n613, label %._crit_edge1360.us.i, label %scalar.ph595.preheader

scalar.ph595.preheader:                           ; preds = %vector.memcheck532, %.preheader1090.us.i, %middle.block612
  %indvars.iv1755.i.ph = phi i64 [ 0, %vector.memcheck532 ], [ 0, %.preheader1090.us.i ], [ %n.vec598, %middle.block612 ]
  %.38691358.us.i.ph = phi ptr [ %.28681364.us.i, %vector.memcheck532 ], [ %.28681364.us.i, %.preheader1090.us.i ], [ %i.ayq, %middle.block612 ]
  br label %scalar.ph595

scalar.ph595:                                     ; preds = %scalar.ph595.preheader, %scalar.ph595
  %indvars.iv1755.i = phi i64 [ %indvars.iv.next1756.i, %scalar.ph595 ], [ %indvars.iv1755.i.ph, %scalar.ph595.preheader ] ; 3 uses
  %.38691358.us.i = phi ptr [ %i.bae, %scalar.ph595 ], [ %.38691358.us.i.ph, %scalar.ph595.preheader ] ; 9 uses
  %i.azh = getelementptr inbounds nuw [4 x i8], ptr %.18791362.us.i, i64 %indvars.iv1755.i ; 4 uses
  %i.azi = getelementptr inbounds nuw [4 x i8], ptr %.18761363.us.i, i64 %indvars.iv1755.i ; 4 uses
  %i.azj = load float, ptr %i.azh, align 4, !tbaa !45
  store float %i.azj, ptr %.38691358.us.i, align 4, !tbaa !45
  %i.azk = getelementptr inbounds nuw [4 x i8], ptr %i.azh, i64 %i.acr
  %i.azl = load float, ptr %i.azk, align 4, !tbaa !45
  %i.azm = getelementptr inbounds nuw i8, ptr %.38691358.us.i, i64 4
  store float %i.azl, ptr %i.azm, align 4, !tbaa !45
  %i.azn = getelementptr inbounds nuw [4 x i8], ptr %i.azh, i64 %i.act
  %i.azo = load float, ptr %i.azn, align 4, !tbaa !45
  %i.azp = getelementptr inbounds nuw i8, ptr %.38691358.us.i, i64 8
  store float %i.azo, ptr %i.azp, align 4, !tbaa !45
  %i.azq = getelementptr inbounds nuw [4 x i8], ptr %i.azh, i64 %i.acv
  %i.azr = load float, ptr %i.azq, align 4, !tbaa !45
  %i.azs = getelementptr inbounds nuw i8, ptr %.38691358.us.i, i64 12
  store float %i.azr, ptr %i.azs, align 4, !tbaa !45
  %i.azt = load float, ptr %i.azi, align 4, !tbaa !45
  %i.azu = getelementptr inbounds nuw i8, ptr %.38691358.us.i, i64 16
  store float %i.azt, ptr %i.azu, align 4, !tbaa !45
  %i.azv = getelementptr inbounds nuw [4 x i8], ptr %i.azi, i64 %i.acr
  %i.azw = load float, ptr %i.azv, align 4, !tbaa !45
  %i.azx = getelementptr inbounds nuw i8, ptr %.38691358.us.i, i64 20
  store float %i.azw, ptr %i.azx, align 4, !tbaa !45
  %i.azy = getelementptr inbounds nuw [4 x i8], ptr %i.azi, i64 %i.act
  %i.azz = load float, ptr %i.azy, align 4, !tbaa !45
  %i.baa = getelementptr inbounds nuw i8, ptr %.38691358.us.i, i64 24
  store float %i.azz, ptr %i.baa, align 4, !tbaa !45
  %i.bab = getelementptr inbounds nuw [4 x i8], ptr %i.azi, i64 %i.acv
  %i.bac = load float, ptr %i.bab, align 4, !tbaa !45
  %i.bad = getelementptr inbounds nuw i8, ptr %.38691358.us.i, i64 28
  store float %i.bac, ptr %i.bad, align 4, !tbaa !45
  %i.bae = getelementptr inbounds nuw i8, ptr %.38691358.us.i, i64 32 ; 2 uses
  %indvars.iv.next1756.i = add nuw nsw i64 %indvars.iv1755.i, 1 ; 2 uses
  %exitcond1759.not.i = icmp eq i64 %indvars.iv.next1756.i, %wide.trip.count1751.i
  br i1 %exitcond1759.not.i, label %._crit_edge1360.us.i, label %scalar.ph595, !llvm.loop !139

._crit_edge1360.us.i:                             ; preds = %scalar.ph595, %middle.block612
  %.lcssa235 = phi ptr [ %i.ayq, %middle.block612 ], [ %i.bae, %scalar.ph595 ] ; 2 uses
  %i.baf = getelementptr inbounds nuw [4 x i8], ptr %.18791362.us.i, i64 %i.adg ; 2 uses
  %i.bag = getelementptr inbounds nuw [4 x i8], ptr %.18761363.us.i, i64 %i.adg ; 2 uses
  %i.bah = add nuw nsw i32 %.18631365.us.i, 4     ; 3 uses
  %i.bai = or disjoint i32 %i.bah, 3
  %i.baj = icmp slt i32 %i.bai, %i.n
  br i1 %i.baj, label %.preheader1090.us.i, label %.preheader1093.i, !llvm.loop !140

.preheader1093.i:                                 ; preds = %._crit_edge1360.us.i, %.preheader1090.preheader.i, %.preheader1094.thread.i, %.preheader1094.i
  %.1879.lcssa.i = phi ptr [ %.0878.lcssa.i, %.preheader1094.i ], [ %scevgep1743.i, %.preheader1094.thread.i ], [ %scevgep1753.i, %.preheader1090.preheader.i ], [ %i.baf, %._crit_edge1360.us.i ] ; 6 uses
  %.1876.lcssa.i = phi ptr [ %.0875.lcssa.i, %.preheader1094.i ], [ %scevgep1747.i, %.preheader1094.thread.i ], [ %scevgep1754.i, %.preheader1090.preheader.i ], [ %i.bag, %._crit_edge1360.us.i ] ; 6 uses
  %.2868.lcssa.i = phi ptr [ %.0866.lcssa.i, %.preheader1094.i ], [ %i.avc, %.preheader1094.thread.i ], [ %.0866.lcssa19251932.i, %.preheader1090.preheader.i ], [ %.lcssa235, %._crit_edge1360.us.i ] ; 2 uses
  %.1863.lcssa.i = phi i32 [ %.0862.lcssa.i, %.preheader1094.i ], [ %i.ads, %.preheader1094.thread.i ], [ %i.ayg, %.preheader1090.preheader.i ], [ %i.bah, %._crit_edge1360.us.i ] ; 4 uses
  %i.bak = or disjoint i32 %.1863.lcssa.i, 1
  %i.bal = icmp slt i32 %i.bak, %i.n
  br i1 %i.bal, label %.preheader1089.lr.ph.i, label %.preheader1092.i

.preheader1089.lr.ph.i:                           ; preds = %.preheader1093.i
  br i1 %i.acq, label %.preheader1089.us.i.preheader, label %._crit_edge1400.split.i

.preheader1089.us.i.preheader:                    ; preds = %.preheader1089.lr.ph.i
  %scevgep486 = getelementptr i8, ptr %.1876.lcssa.i, i64 %i.aeb
  %scevgep487 = getelementptr i8, ptr %.1876.lcssa.i, i64 %i.aec
  %i.bam = sub i32 %i.aee, %.1863.lcssa.i
  %i.ban = lshr i32 %i.bam, 1
  %i.bao = zext nneg i32 %i.ban to i64
  %i.bap = mul i64 %i.aed, %i.bao                 ; 4 uses
  %scevgep488 = getelementptr i8, ptr %scevgep487, i64 %i.bap
  %scevgep489 = getelementptr i8, ptr %.1879.lcssa.i, i64 %i.aeb
  %scevgep490 = getelementptr i8, ptr %.1879.lcssa.i, i64 %i.aec
  %scevgep491 = getelementptr i8, ptr %scevgep490, i64 %i.bap
  %scevgep492 = getelementptr i8, ptr %.1876.lcssa.i, i64 %i.adz
  %scevgep493 = getelementptr i8, ptr %scevgep492, i64 %i.bap
  %scevgep494 = getelementptr i8, ptr %.1879.lcssa.i, i64 %i.adz
  %scevgep495 = getelementptr i8, ptr %scevgep494, i64 %i.bap
  br label %.preheader1089.us.i

.preheader1089.us.i:                              ; preds = %.preheader1089.us.i.preheader, %._crit_edge1380.us.i
  %.28641385.us.i = phi i32 [ %i.bcn, %._crit_edge1380.us.i ], [ %.1863.lcssa.i, %.preheader1089.us.i.preheader ]
  %.48701384.us.i = phi ptr [ %.lcssa239, %._crit_edge1380.us.i ], [ %.2868.lcssa.i, %.preheader1089.us.i.preheader ] ; 9 uses
  %.28771383.us.i = phi ptr [ %i.bcm, %._crit_edge1380.us.i ], [ %.1876.lcssa.i, %.preheader1089.us.i.preheader ] ; 5 uses
  %.28801382.us.i = phi ptr [ %i.bcl, %._crit_edge1380.us.i ], [ %.1879.lcssa.i, %.preheader1089.us.i.preheader ] ; 5 uses
  br i1 %min.iters.check516, label %scalar.ph515.preheader, label %vector.memcheck484

vector.memcheck484:                               ; preds = %.preheader1089.us.i
  %scevgep485 = getelementptr i8, ptr %.48701384.us.i, i64 %i.aea ; 4 uses
  %bound0496 = icmp ult ptr %.48701384.us.i, %scevgep488
  %bound1497 = icmp ult ptr %scevgep486, %scevgep485
  %found.conflict498 = and i1 %bound0496, %bound1497
  %bound0500 = icmp ult ptr %.48701384.us.i, %scevgep491
  %bound1501 = icmp ult ptr %scevgep489, %scevgep485
  %found.conflict502 = and i1 %bound0500, %bound1501
  %i.baq = or i1 %found.conflict502, %stride.check503
  %conflict.rdx504 = or i1 %found.conflict498, %i.baq
  %bound0505 = icmp ult ptr %.48701384.us.i, %scevgep493
  %bound1506 = icmp ult ptr %.1876.lcssa.i, %scevgep485
  %found.conflict507 = and i1 %bound0505, %bound1506
  %conflict.rdx509 = or i1 %found.conflict507, %conflict.rdx504
  %bound0510 = icmp ult ptr %.48701384.us.i, %scevgep495
  %bound1511 = icmp ult ptr %.1879.lcssa.i, %scevgep485
  %found.conflict512 = and i1 %bound0510, %bound1511
  %conflict.rdx514 = or i1 %found.conflict512, %conflict.rdx509
  br i1 %conflict.rdx514, label %scalar.ph515.preheader, label %vector.ph517

vector.ph517:                                     ; preds = %vector.memcheck484
  %i.bar = getelementptr i8, ptr %.48701384.us.i, i64 %i.aeq ; 2 uses
  br label %vector.body519

vector.body519:                                   ; preds = %vector.body519, %vector.ph517
  %index520 = phi i64 [ 0, %vector.ph517 ], [ %index.next527, %vector.body519 ] ; 4 uses
  %i.bas = shl i64 %index520, 4
  %next.gep521 = getelementptr i8, ptr %.48701384.us.i, i64 %i.bas
  %i.bat = getelementptr inbounds nuw [4 x i8], ptr %.28801382.us.i, i64 %index520 ; 2 uses
  %i.bau = getelementptr inbounds nuw [4 x i8], ptr %.28771383.us.i, i64 %index520 ; 2 uses
  %wide.load522 = load <8 x float>, ptr %i.bat, align 4, !tbaa !45, !alias.scope !236
  %wide.load523 = load <8 x float>, ptr %i.bau, align 4, !tbaa !45, !alias.scope !237
  %i.bav = getelementptr inbounds nuw [4 x i8], ptr %i.bat, i64 %i.acr
  %i.baw = getelementptr inbounds nuw [4 x i8], ptr %i.bau, i64 %i.acr
  %wide.load524 = load <8 x float>, ptr %i.bav, align 4, !tbaa !45, !alias.scope !238
  %wide.load525 = load <8 x float>, ptr %i.baw, align 4, !tbaa !45, !alias.scope !239
  %i.bax = shufflevector <8 x float> %wide.load522, <8 x float> %wide.load523, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bay = shufflevector <8 x float> %wide.load524, <8 x float> %wide.load525, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec526 = shufflevector <16 x float> %i.bax, <16 x float> %i.bay, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec526, ptr %next.gep521, align 4, !tbaa !45, !alias.scope !240, !noalias !241
  %index.next527 = add nuw i64 %index520, 8       ; 2 uses
  %i.baz = icmp eq i64 %index.next527, %n.vec518
  br i1 %i.baz, label %middle.block528, label %vector.body519, !llvm.loop !147

middle.block528:                                  ; preds = %vector.body519
  br i1 %cmp.n529, label %._crit_edge1380.us.i, label %scalar.ph515.preheader

scalar.ph515.preheader:                           ; preds = %vector.memcheck484, %.preheader1089.us.i, %middle.block528
end_hunk_2
begin_hunk_3_@_ZN4ncnn21Convolution1D_x86_fma15create_pipelineERKNS_6OptionE:bb.a
  %scevgep758 = getelementptr i8, ptr %scevgep757, i64 %i.bem
  %i.ben = sext i32 %indvars.iv1777.i to i64
  %i.beo = shl nsw i64 %i.ben, 2
  %scevgep1779.i = getelementptr i8, ptr %scevgep1776.i, i64 %i.beo ; 2 uses
  %i.bep = trunc i64 %indvars.iv1805.i to i32     ; 5 uses
  %i.beq = mul i32 %i.ari, %i.bep
  %i.ber = sext i32 %i.beq to i64
  %i.bes = getelementptr [4 x i8], ptr %i.arh, i64 %i.ber ; 3 uses
  %i.bet = lshr i32 %i.bep, 3
  %i.beu = lshr i32 %i.bep, 2
  %i.bev = and i32 %i.beu, 1
  %i.bew = lshr i32 %i.bep, 1
  %i.bex = and i32 %i.bew, 1
  %i.bey = and i32 %i.bep, 1
  %i.bez = add nuw nsw i32 %i.bey, %i.bet
  %i.bfa = add nuw nsw i32 %i.bez, %i.bev
  %i.bfb = add nuw nsw i32 %i.bfa, %i.bex
  %i.bfc = zext nneg i32 %i.bfb to i64
  %.reass1463.i = mul i64 %factor.op.mul1462.i, %i.bfc
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.arj, i64 %.reass1463.i ; 4 uses
  br i1 %i.aro, label %.preheader1083.lr.ph.i, label %.preheader1086.i

.preheader1083.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit.i
  br i1 %i.arp, label %.preheader1083.us.i.preheader, label %.preheader1086.thread.i

.preheader1083.us.i.preheader:                    ; preds = %.preheader1083.lr.ph.i
  %i.bfe = insertelement <8 x ptr> poison, ptr %scevgep736, i64 0
  %i.bff = insertelement <8 x ptr> %i.bfe, ptr %scevgep732, i64 1
  %i.bfg = insertelement <8 x ptr> %i.bff, ptr %scevgep740, i64 2
  %i.bfh = insertelement <8 x ptr> %i.bfg, ptr %scevgep744, i64 3
  %i.bfi = insertelement <8 x ptr> %i.bfh, ptr %scevgep748, i64 4
  %i.bfj = insertelement <8 x ptr> %i.bfi, ptr %scevgep752, i64 5
  %i.bfk = insertelement <8 x ptr> %i.bfj, ptr %scevgep756, i64 6
  %i.bfl = insertelement <8 x ptr> %i.bfk, ptr %scevgep758, i64 7
  %i.bfm = insertelement <8 x ptr> poison, ptr %scevgep734, i64 0
  %i.bfn = insertelement <8 x ptr> %i.bfm, ptr %scevgep730, i64 1
  %i.bfo = insertelement <8 x ptr> %i.bfn, ptr %scevgep738, i64 2
  %i.bfp = insertelement <8 x ptr> %i.bfo, ptr %scevgep742, i64 3
  %i.bfq = insertelement <8 x ptr> %i.bfp, ptr %scevgep746, i64 4
  %i.bfr = insertelement <8 x ptr> %i.bfq, ptr %scevgep750, i64 5
  %i.bfs = insertelement <8 x ptr> %i.bfr, ptr %scevgep754, i64 6
  %i.bft = insertelement <8 x ptr> %i.bfs, ptr %i.bes, i64 7
  br label %.preheader1083.us.i

.preheader1083.us.i:                              ; preds = %.preheader1083.us.i.preheader, %._crit_edge1410.us.i
  %.08261414.us.i = phi i32 [ %i.bht, %._crit_edge1410.us.i ], [ 0, %.preheader1083.us.i.preheader ]
  %.08301413.us.i = phi ptr [ %.lcssa, %._crit_edge1410.us.i ], [ %i.bfd, %.preheader1083.us.i.preheader ] ; 6 uses
  %.08341412.us.i = phi ptr [ %i.bhs, %._crit_edge1410.us.i ], [ %i.bes, %.preheader1083.us.i.preheader ] ; 3 uses
  br i1 %min.iters.check799, label %scalar.ph798.preheader, label %vector.memcheck727

vector.memcheck727:                               ; preds = %.preheader1083.us.i
  %scevgep728 = getelementptr i8, ptr %.08301413.us.i, i64 %i.asw
  %i.bfu = insertelement <8 x ptr> poison, ptr %.08301413.us.i, i64 0
  %i.bfv = shufflevector <8 x ptr> %i.bfu, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bfw = icmp ult <8 x ptr> %i.bfv, %i.bfl
  %i.bfx = insertelement <8 x ptr> poison, ptr %scevgep728, i64 0
  %i.bfy = shufflevector <8 x ptr> %i.bfx, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bfz = icmp ult <8 x ptr> %i.bft, %i.bfy
  %i.bga = and <8 x i1> %i.bfw, %i.bfz
  %i.bgb = bitcast <8 x i1> %i.bga to i8
  %i.bgc = icmp ne i8 %i.bgb, 0
  %op.rdx = or i1 %i.bgc, %stride.check766
  br i1 %op.rdx, label %scalar.ph798.preheader, label %vector.ph800

vector.ph800:                                     ; preds = %vector.memcheck727
  %i.bgd = getelementptr i8, ptr %.08301413.us.i, i64 %i.aub ; 2 uses
  br label %vector.body802

vector.body802:                                   ; preds = %vector.body802, %vector.ph800
  %index803 = phi i64 [ 0, %vector.ph800 ], [ %index.next814, %vector.body802 ] ; 3 uses
  %i.bge = shl i64 %index803, 5
  %next.gep804 = getelementptr i8, ptr %.08301413.us.i, i64 %i.bge
  %i.bgf = getelementptr inbounds nuw [4 x i8], ptr %.08341412.us.i, i64 %index803 ; 2 uses
  %wide.load805 = load <8 x float>, ptr %i.bgf, align 4, !tbaa !45, !alias.scope !246
  %i.bgg = getelementptr inbounds nuw [4 x i8], ptr %i.bgf, i64 %i.arq ; 2 uses
  %wide.load806 = load <8 x float>, ptr %i.bgg, align 4, !tbaa !45, !alias.scope !247
  %i.bgh = getelementptr inbounds nuw [4 x i8], ptr %i.bgg, i64 %i.arq ; 2 uses
  %wide.load807 = load <8 x float>, ptr %i.bgh, align 4, !tbaa !45, !alias.scope !248
  %i.bgi = getelementptr inbounds nuw [4 x i8], ptr %i.bgh, i64 %i.arq ; 2 uses
  %wide.load808 = load <8 x float>, ptr %i.bgi, align 4, !tbaa !45, !alias.scope !249
  %i.bgj = getelementptr inbounds nuw [4 x i8], ptr %i.bgi, i64 %i.arq ; 2 uses
  %wide.load809 = load <8 x float>, ptr %i.bgj, align 4, !tbaa !45, !alias.scope !250
  %i.bgk = getelementptr inbounds nuw [4 x i8], ptr %i.bgj, i64 %i.arq ; 2 uses
  %wide.load810 = load <8 x float>, ptr %i.bgk, align 4, !tbaa !45, !alias.scope !251
  %i.bgl = getelementptr inbounds nuw [4 x i8], ptr %i.bgk, i64 %i.arq ; 2 uses
  %wide.load811 = load <8 x float>, ptr %i.bgl, align 4, !tbaa !45, !alias.scope !252
  %i.bgm = getelementptr inbounds nuw [4 x i8], ptr %i.bgl, i64 %i.arq
  %wide.load812 = load <8 x float>, ptr %i.bgm, align 4, !tbaa !45, !alias.scope !253
  %i.bgn = shufflevector <8 x float> %wide.load805, <8 x float> %wide.load806, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bgo = shufflevector <8 x float> %wide.load807, <8 x float> %wide.load808, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bgp = shufflevector <8 x float> %wide.load809, <8 x float> %wide.load810, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bgq = shufflevector <8 x float> %wide.load811, <8 x float> %wide.load812, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bgr = shufflevector <16 x float> %i.bgn, <16 x float> %i.bgo, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bgs = shufflevector <16 x float> %i.bgp, <16 x float> %i.bgq, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec813 = shufflevector <32 x float> %i.bgr, <32 x float> %i.bgs, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x float> %interleaved.vec813, ptr %next.gep804, align 4, !tbaa !45, !alias.scope !254, !noalias !255
  %index.next814 = add nuw i64 %index803, 8       ; 2 uses
  %i.bgt = icmp eq i64 %index.next814, %n.vec801
  br i1 %i.bgt, label %middle.block815, label %vector.body802, !llvm.loop !169

middle.block815:                                  ; preds = %vector.body802
  br i1 %cmp.n816, label %._crit_edge1410.us.i, label %scalar.ph798.preheader

scalar.ph798.preheader:                           ; preds = %vector.memcheck727, %.preheader1083.us.i, %middle.block815
  %indvars.iv1781.i.ph = phi i64 [ 0, %vector.memcheck727 ], [ 0, %.preheader1083.us.i ], [ %n.vec801, %middle.block815 ]
  %.18311408.us.i.ph = phi ptr [ %.08301413.us.i, %vector.memcheck727 ], [ %.08301413.us.i, %.preheader1083.us.i ], [ %i.bgd, %middle.block815 ]
  br label %scalar.ph798

scalar.ph798:                                     ; preds = %scalar.ph798.preheader, %scalar.ph798
  %indvars.iv1781.i = phi i64 [ %indvars.iv.next1782.i, %scalar.ph798 ], [ %indvars.iv1781.i.ph, %scalar.ph798.preheader ] ; 2 uses
  %.18311408.us.i = phi ptr [ %i.bhr, %scalar.ph798 ], [ %.18311408.us.i.ph, %scalar.ph798.preheader ] ; 9 uses
  %i.bgu = getelementptr inbounds nuw [4 x i8], ptr %.08341412.us.i, i64 %indvars.iv1781.i ; 2 uses
  %i.bgv = load float, ptr %i.bgu, align 4, !tbaa !45
  store float %i.bgv, ptr %.18311408.us.i, align 4, !tbaa !45
  %i.bgw = getelementptr inbounds nuw [4 x i8], ptr %i.bgu, i64 %i.arq ; 2 uses
  %i.bgx = getelementptr inbounds nuw i8, ptr %.18311408.us.i, i64 4
  %i.bgy = load float, ptr %i.bgw, align 4, !tbaa !45
  store float %i.bgy, ptr %i.bgx, align 4, !tbaa !45
  %i.bgz = getelementptr inbounds nuw [4 x i8], ptr %i.bgw, i64 %i.arq ; 2 uses
  %i.bha = getelementptr inbounds nuw i8, ptr %.18311408.us.i, i64 8
  %i.bhb = load float, ptr %i.bgz, align 4, !tbaa !45
  store float %i.bhb, ptr %i.bha, align 4, !tbaa !45
  %i.bhc = getelementptr inbounds nuw [4 x i8], ptr %i.bgz, i64 %i.arq ; 2 uses
  %i.bhd = getelementptr inbounds nuw i8, ptr %.18311408.us.i, i64 12
  %i.bhe = load float, ptr %i.bhc, align 4, !tbaa !45
  store float %i.bhe, ptr %i.bhd, align 4, !tbaa !45
  %i.bhf = getelementptr inbounds nuw [4 x i8], ptr %i.bhc, i64 %i.arq ; 2 uses
  %i.bhg = getelementptr inbounds nuw i8, ptr %.18311408.us.i, i64 16
  %i.bhh = load float, ptr %i.bhf, align 4, !tbaa !45
  store float %i.bhh, ptr %i.bhg, align 4, !tbaa !45
  %i.bhi = getelementptr inbounds nuw [4 x i8], ptr %i.bhf, i64 %i.arq ; 2 uses
  %i.bhj = getelementptr inbounds nuw i8, ptr %.18311408.us.i, i64 20
  %i.bhk = load float, ptr %i.bhi, align 4, !tbaa !45
  store float %i.bhk, ptr %i.bhj, align 4, !tbaa !45
  %i.bhl = getelementptr inbounds nuw [4 x i8], ptr %i.bhi, i64 %i.arq ; 2 uses
  %i.bhm = getelementptr inbounds nuw i8, ptr %.18311408.us.i, i64 24
  %i.bhn = load float, ptr %i.bhl, align 4, !tbaa !45
  store float %i.bhn, ptr %i.bhm, align 4, !tbaa !45
  %i.bho = getelementptr inbounds nuw [4 x i8], ptr %i.bhl, i64 %i.arq
  %i.bhp = getelementptr inbounds nuw i8, ptr %.18311408.us.i, i64 28
  %i.bhq = load float, ptr %i.bho, align 4, !tbaa !45
  store float %i.bhq, ptr %i.bhp, align 4, !tbaa !45
  %i.bhr = getelementptr inbounds nuw i8, ptr %.18311408.us.i, i64 32 ; 2 uses
  %indvars.iv.next1782.i = add nuw nsw i64 %indvars.iv1781.i, 1 ; 2 uses
  %exitcond1785.not.i = icmp eq i64 %indvars.iv.next1782.i, %wide.trip.count1784.i
  br i1 %exitcond1785.not.i, label %._crit_edge1410.us.i, label %scalar.ph798, !llvm.loop !170

._crit_edge1410.us.i:                             ; preds = %scalar.ph798, %middle.block815
  %.lcssa = phi ptr [ %i.bgd, %middle.block815 ], [ %i.bhr, %scalar.ph798 ] ; 2 uses
  %i.bhs = getelementptr inbounds nuw [4 x i8], ptr %.08341412.us.i, i64 %i.ars ; 2 uses
  %i.bht = add nuw nsw i32 %.08261414.us.i, 8     ; 2 uses
  %i.bhu = or disjoint i32 %i.bht, 7
  %i.bhv = icmp slt i32 %i.bhu, %i.n
  br i1 %i.bhv, label %.preheader1083.us.i, label %.preheader1086.i, !llvm.loop !171

.preheader1086.i:                                 ; preds = %._crit_edge1410.us.i, %_ZN4ncnn3MatD2Ev.exit.i
  %.0834.lcssa.i = phi ptr [ %i.bes, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.bhs, %._crit_edge1410.us.i ] ; 11 uses
  %.0830.lcssa.i = phi ptr [ %i.bfd, %_ZN4ncnn3MatD2Ev.exit.i ], [ %.lcssa, %._crit_edge1410.us.i ] ; 3 uses
  %.0826.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.asf, %._crit_edge1410.us.i ] ; 5 uses
  %i.bhw = or disjoint i32 %.0826.lcssa.i, 3
  %i.bhx = icmp slt i32 %i.bhw, %i.n
  br i1 %i.bhx, label %.preheader1082.lr.ph.i, label %.preheader1085.i

.preheader1086.thread.i:                          ; preds = %.preheader1083.lr.ph.i
  br i1 %i.asj, label %.preheader1082.preheader.i, label %.preheader1085.i

.preheader1082.lr.ph.i:                           ; preds = %.preheader1086.i
  br i1 %i.arp, label %.preheader1082.us.i.preheader, label %.preheader1082.preheader.i

.preheader1082.us.i.preheader:                    ; preds = %.preheader1082.lr.ph.i
  %scevgep680 = getelementptr i8, ptr %.0834.lcssa.i, i64 %i.asq
  %i.bhy = getelementptr i8, ptr %.0834.lcssa.i, i64 %i.asq
  %scevgep681 = getelementptr i8, ptr %i.bhy, i64 %i.asr
  %i.bhz = sub i32 %i.ast, %.0826.lcssa.i
  %i.bia = lshr i32 %i.bhz, 2
  %i.bib = zext nneg i32 %i.bia to i64
  %i.bic = mul nsw i64 %i.ass, %i.bib             ; 4 uses
  %scevgep682 = getelementptr i8, ptr %scevgep681, i64 %i.bic
  %scevgep683 = getelementptr i8, ptr %.0834.lcssa.i, i64 %i.asu
  %i.bid = getelementptr i8, ptr %.0834.lcssa.i, i64 %i.asu
  %scevgep684 = getelementptr i8, ptr %i.bid, i64 %i.asr
  %scevgep685 = getelementptr i8, ptr %scevgep684, i64 %i.bic
  %scevgep686 = getelementptr i8, ptr %.0834.lcssa.i, i64 %i.asv
  %i.bie = getelementptr i8, ptr %.0834.lcssa.i, i64 %i.asv
  %scevgep687 = getelementptr i8, ptr %i.bie, i64 %i.asr
  %scevgep688 = getelementptr i8, ptr %scevgep687, i64 %i.bic
  %scevgep689 = getelementptr i8, ptr %.0834.lcssa.i, i64 %i.asr
  %scevgep690 = getelementptr i8, ptr %scevgep689, i64 %i.bic
  br label %.preheader1082.us.i

.preheader1082.preheader.i:                       ; preds = %.preheader1082.lr.ph.i, %.preheader1086.thread.i
  %.0834.lcssa19431951.i = phi ptr [ %.0834.lcssa.i, %.preheader1082.lr.ph.i ], [ %scevgep1779.i, %.preheader1086.thread.i ]
  %.0830.lcssa19441950.i = phi ptr [ %.0830.lcssa.i, %.preheader1082.lr.ph.i ], [ %i.bfd, %.preheader1086.thread.i ]
  %.0826.lcssa19451949.i = phi i32 [ %.0826.lcssa.i, %.preheader1082.lr.ph.i ], [ %i.asf, %.preheader1086.thread.i ] ; 2 uses
  %i.bif = sub i32 %i.asg, %.0826.lcssa19451949.i
  %i.big = and i32 %i.bif, -4                     ; 2 uses
  %i.bih = zext i32 %i.big to i64
  %i.bii = add nuw nsw i64 %i.bih, 4
  %i.bij = mul nsw i64 %i.bii, %i.aru
  %scevgep1786.i = getelementptr i8, ptr %.0834.lcssa19431951.i, i64 %i.bij
  %i.bik = add i32 %.0826.lcssa19451949.i, 4
  %i.bil = add i32 %i.bik, %i.big
  br label %.preheader1085.i

.preheader1082.us.i:                              ; preds = %.preheader1082.us.i.preheader, %._crit_edge1426.us.i
  %.18271430.us.i = phi i32 [ %i.bkj, %._crit_edge1426.us.i ], [ %.0826.lcssa.i, %.preheader1082.us.i.preheader ]
  %.38331429.us.i = phi ptr [ %.lcssa225, %._crit_edge1426.us.i ], [ %.0830.lcssa.i, %.preheader1082.us.i.preheader ] ; 9 uses
  %.18351428.us.i = phi ptr [ %i.bki, %._crit_edge1426.us.i ], [ %.0834.lcssa.i, %.preheader1082.us.i.preheader ] ; 5 uses
  br i1 %min.iters.check711, label %scalar.ph710.preheader, label %vector.memcheck678

vector.memcheck678:                               ; preds = %.preheader1082.us.i
  %scevgep679 = getelementptr i8, ptr %.38331429.us.i, i64 %i.asp ; 4 uses
  %bound0691 = icmp ult ptr %.38331429.us.i, %scevgep682
  %bound1692 = icmp ult ptr %scevgep680, %scevgep679
  %found.conflict693 = and i1 %bound0691, %bound1692
  %bound0695 = icmp ult ptr %.38331429.us.i, %scevgep685
  %bound1696 = icmp ult ptr %scevgep683, %scevgep679
  %found.conflict697 = and i1 %bound0695, %bound1696
  %i.bim = or i1 %found.conflict697, %stride.check698
  %conflict.rdx699 = or i1 %found.conflict693, %i.bim
  %bound0700 = icmp ult ptr %.38331429.us.i, %scevgep688
  %bound1701 = icmp ult ptr %scevgep686, %scevgep679
  %found.conflict702 = and i1 %bound0700, %bound1701
  %conflict.rdx704 = or i1 %found.conflict702, %conflict.rdx699
  %bound0705 = icmp ult ptr %.38331429.us.i, %scevgep690
  %bound1706 = icmp ult ptr %.0834.lcssa.i, %scevgep679
  %found.conflict707 = and i1 %bound0705, %bound1706
  %conflict.rdx709 = or i1 %found.conflict707, %conflict.rdx704
  br i1 %conflict.rdx709, label %scalar.ph710.preheader, label %vector.ph712

vector.ph712:                                     ; preds = %vector.memcheck678
  %i.bin = getelementptr i8, ptr %.38331429.us.i, i64 %i.auc ; 2 uses
  br label %vector.body714

vector.body714:                                   ; preds = %vector.body714, %vector.ph712
  %index715 = phi i64 [ 0, %vector.ph712 ], [ %index.next722, %vector.body714 ] ; 3 uses
  %i.bio = shl i64 %index715, 4
  %next.gep716 = getelementptr i8, ptr %.38331429.us.i, i64 %i.bio
  %i.bip = getelementptr inbounds nuw [4 x i8], ptr %.18351428.us.i, i64 %index715 ; 2 uses
  %wide.load717 = load <8 x float>, ptr %i.bip, align 4, !tbaa !45, !alias.scope !256
  %i.biq = getelementptr inbounds nuw [4 x i8], ptr %i.bip, i64 %i.arq ; 2 uses
  %wide.load718 = load <8 x float>, ptr %i.biq, align 4, !tbaa !45, !alias.scope !257
  %i.bir = getelementptr inbounds nuw [4 x i8], ptr %i.biq, i64 %i.arq ; 2 uses
  %wide.load719 = load <8 x float>, ptr %i.bir, align 4, !tbaa !45, !alias.scope !258
  %i.bis = getelementptr inbounds nuw [4 x i8], ptr %i.bir, i64 %i.arq
  %wide.load720 = load <8 x float>, ptr %i.bis, align 4, !tbaa !45, !alias.scope !259
  %i.bit = shufflevector <8 x float> %wide.load717, <8 x float> %wide.load718, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.biu = shufflevector <8 x float> %wide.load719, <8 x float> %wide.load720, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec721 = shufflevector <16 x float> %i.bit, <16 x float> %i.biu, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec721, ptr %next.gep716, align 4, !tbaa !45, !alias.scope !260, !noalias !261
  %index.next722 = add nuw i64 %index715, 8       ; 2 uses
  %i.biv = icmp eq i64 %index.next722, %n.vec713
  br i1 %i.biv, label %middle.block723, label %vector.body714, !llvm.loop !178

middle.block723:                                  ; preds = %vector.body714
  br i1 %cmp.n724, label %._crit_edge1426.us.i, label %scalar.ph710.preheader

scalar.ph710.preheader:                           ; preds = %vector.memcheck678, %.preheader1082.us.i, %middle.block723
  %indvars.iv1788.i.ph = phi i64 [ 0, %vector.memcheck678 ], [ 0, %.preheader1082.us.i ], [ %n.vec713, %middle.block723 ] ; 4 uses
  %.41424.us.i.ph = phi ptr [ %.38331429.us.i, %vector.memcheck678 ], [ %.38331429.us.i, %.preheader1082.us.i ], [ %i.bin, %middle.block723 ] ; 6 uses
  br i1 %lcmp.mod896.not, label %scalar.ph710.prol.loopexit, label %scalar.ph710.prol

scalar.ph710.prol:                                ; preds = %scalar.ph710.preheader
  %i.biw = getelementptr inbounds nuw [4 x i8], ptr %.18351428.us.i, i64 %indvars.iv1788.i.ph ; 2 uses
  %i.bix = load float, ptr %i.biw, align 4, !tbaa !45
  store float %i.bix, ptr %.41424.us.i.ph, align 4, !tbaa !45
  %i.biy = getelementptr inbounds nuw [4 x i8], ptr %i.biw, i64 %i.arq ; 2 uses
  %i.biz = getelementptr inbounds nuw i8, ptr %.41424.us.i.ph, i64 4
  %i.bja = load float, ptr %i.biy, align 4, !tbaa !45
  store float %i.bja, ptr %i.biz, align 4, !tbaa !45
  %i.bjb = getelementptr inbounds nuw [4 x i8], ptr %i.biy, i64 %i.arq ; 2 uses
  %i.bjc = getelementptr inbounds nuw i8, ptr %.41424.us.i.ph, i64 8
  %i.bjd = load float, ptr %i.bjb, align 4, !tbaa !45
  store float %i.bjd, ptr %i.bjc, align 4, !tbaa !45
  %i.bje = getelementptr inbounds nuw [4 x i8], ptr %i.bjb, i64 %i.arq
  %i.bjf = getelementptr inbounds nuw i8, ptr %.41424.us.i.ph, i64 12
  %i.bjg = load float, ptr %i.bje, align 4, !tbaa !45
  store float %i.bjg, ptr %i.bjf, align 4, !tbaa !45
  %i.bjh = getelementptr inbounds nuw i8, ptr %.41424.us.i.ph, i64 16 ; 2 uses
  %indvars.iv.next1789.i.prol = or disjoint i64 %indvars.iv1788.i.ph, 1
  br label %scalar.ph710.prol.loopexit

scalar.ph710.prol.loopexit:                       ; preds = %scalar.ph710.prol, %scalar.ph710.preheader
  %.lcssa824.unr = phi ptr [ poison, %scalar.ph710.preheader ], [ %i.bjh, %scalar.ph710.prol ]
  %indvars.iv1788.i.unr = phi i64 [ %indvars.iv1788.i.ph, %scalar.ph710.preheader ], [ %indvars.iv.next1789.i.prol, %scalar.ph710.prol ]
  %.41424.us.i.unr = phi ptr [ %.41424.us.i.ph, %scalar.ph710.preheader ], [ %i.bjh, %scalar.ph710.prol ]
  %i.bji = icmp eq i64 %indvars.iv1788.i.ph, %i.aud
  br i1 %i.bji, label %._crit_edge1426.us.i, label %scalar.ph710

scalar.ph710:                                     ; preds = %scalar.ph710.prol.loopexit, %scalar.ph710
  %indvars.iv1788.i = phi i64 [ %indvars.iv.next1789.i.1, %scalar.ph710 ], [ %indvars.iv1788.i.unr, %scalar.ph710.prol.loopexit ] ; 3 uses
  %.41424.us.i = phi ptr [ %i.bkh, %scalar.ph710 ], [ %.41424.us.i.unr, %scalar.ph710.prol.loopexit ] ; 9 uses
  %i.bjj = getelementptr inbounds nuw [4 x i8], ptr %.18351428.us.i, i64 %indvars.iv1788.i ; 2 uses
  %i.bjk = load float, ptr %i.bjj, align 4, !tbaa !45
  store float %i.bjk, ptr %.41424.us.i, align 4, !tbaa !45
  %i.bjl = getelementptr inbounds nuw [4 x i8], ptr %i.bjj, i64 %i.arq ; 2 uses
  %i.bjm = getelementptr inbounds nuw i8, ptr %.41424.us.i, i64 4
  %i.bjn = load float, ptr %i.bjl, align 4, !tbaa !45
  store float %i.bjn, ptr %i.bjm, align 4, !tbaa !45
  %i.bjo = getelementptr inbounds nuw [4 x i8], ptr %i.bjl, i64 %i.arq ; 2 uses
  %i.bjp = getelementptr inbounds nuw i8, ptr %.41424.us.i, i64 8
  %i.bjq = load float, ptr %i.bjo, align 4, !tbaa !45
  store float %i.bjq, ptr %i.bjp, align 4, !tbaa !45
  %i.bjr = getelementptr inbounds nuw [4 x i8], ptr %i.bjo, i64 %i.arq
  %i.bjs = getelementptr inbounds nuw i8, ptr %.41424.us.i, i64 12
  %i.bjt = load float, ptr %i.bjr, align 4, !tbaa !45
  store float %i.bjt, ptr %i.bjs, align 4, !tbaa !45
  %i.bju = getelementptr inbounds nuw i8, ptr %.41424.us.i, i64 16
  %i.bjv = getelementptr inbounds nuw [4 x i8], ptr %.18351428.us.i, i64 %indvars.iv1788.i
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bjv, i64 4 ; 2 uses
  %i.bjx = load float, ptr %i.bjw, align 4, !tbaa !45
  store float %i.bjx, ptr %i.bju, align 4, !tbaa !45
  %i.bjy = getelementptr inbounds nuw [4 x i8], ptr %i.bjw, i64 %i.arq ; 2 uses
  %i.bjz = getelementptr inbounds nuw i8, ptr %.41424.us.i, i64 20
  %i.bka = load float, ptr %i.bjy, align 4, !tbaa !45
  store float %i.bka, ptr %i.bjz, align 4, !tbaa !45
  %i.bkb = getelementptr inbounds nuw [4 x i8], ptr %i.bjy, i64 %i.arq ; 2 uses
  %i.bkc = getelementptr inbounds nuw i8, ptr %.41424.us.i, i64 24
  %i.bkd = load float, ptr %i.bkb, align 4, !tbaa !45
  store float %i.bkd, ptr %i.bkc, align 4, !tbaa !45
  %i.bke = getelementptr inbounds nuw [4 x i8], ptr %i.bkb, i64 %i.arq
  %i.bkf = getelementptr inbounds nuw i8, ptr %.41424.us.i, i64 28
  %i.bkg = load float, ptr %i.bke, align 4, !tbaa !45
  store float %i.bkg, ptr %i.bkf, align 4, !tbaa !45
  %i.bkh = getelementptr inbounds nuw i8, ptr %.41424.us.i, i64 32 ; 2 uses
  %indvars.iv.next1789.i.1 = add nuw nsw i64 %indvars.iv1788.i, 2 ; 2 uses
  %exitcond1792.not.i.1 = icmp eq i64 %indvars.iv.next1789.i.1, %wide.trip.count1784.i
  br i1 %exitcond1792.not.i.1, label %._crit_edge1426.us.i, label %scalar.ph710, !llvm.loop !179

._crit_edge1426.us.i:                             ; preds = %scalar.ph710.prol.loopexit, %scalar.ph710, %middle.block723
  %.lcssa225 = phi ptr [ %i.bin, %middle.block723 ], [ %.lcssa824.unr, %scalar.ph710.prol.loopexit ], [ %i.bkh, %scalar.ph710 ] ; 2 uses
  %i.bki = getelementptr inbounds nuw [4 x i8], ptr %.18351428.us.i, i64 %i.aru ; 2 uses
  %i.bkj = add nuw nsw i32 %.18271430.us.i, 4     ; 3 uses
  %i.bkk = or disjoint i32 %i.bkj, 3
  %i.bkl = icmp slt i32 %i.bkk, %i.n
  br i1 %i.bkl, label %.preheader1082.us.i, label %.preheader1085.i, !llvm.loop !180

.preheader1085.i:                                 ; preds = %._crit_edge1426.us.i, %.preheader1082.preheader.i, %.preheader1086.thread.i, %.preheader1086.i
  %.1835.lcssa.i = phi ptr [ %.0834.lcssa.i, %.preheader1086.i ], [ %scevgep1779.i, %.preheader1086.thread.i ], [ %scevgep1786.i, %.preheader1082.preheader.i ], [ %i.bki, %._crit_edge1426.us.i ] ; 6 uses
  %.3833.lcssa.i = phi ptr [ %.0830.lcssa.i, %.preheader1086.i ], [ %i.bfd, %.preheader1086.thread.i ], [ %.0830.lcssa19441950.i, %.preheader1082.preheader.i ], [ %.lcssa225, %._crit_edge1426.us.i ] ; 2 uses
  %.1827.lcssa.i = phi i32 [ %.0826.lcssa.i, %.preheader1086.i ], [ %i.asf, %.preheader1086.thread.i ], [ %i.bil, %.preheader1082.preheader.i ], [ %i.bkj, %._crit_edge1426.us.i ] ; 4 uses
  %i.bkm = or disjoint i32 %.1827.lcssa.i, 1
  %i.bkn = icmp slt i32 %i.bkm, %i.n
  br i1 %i.bkn, label %.preheader1081.lr.ph.i, label %.preheader1084.i

.preheader1081.lr.ph.i:                           ; preds = %.preheader1085.i
  br i1 %i.arp, label %.preheader1081.us.i.preheader, label %._crit_edge1459.split.i

.preheader1081.us.i.preheader:                    ; preds = %.preheader1081.lr.ph.i
  %scevgep645 = getelementptr i8, ptr %.1835.lcssa.i, i64 %i.asl
  %i.bko = getelementptr i8, ptr %.1835.lcssa.i, i64 %i.asl
  %scevgep646 = getelementptr i8, ptr %i.bko, i64 %i.asm
  %i.bkp = sub i32 %i.aso, %.1827.lcssa.i
  %i.bkq = lshr i32 %i.bkp, 1
  %i.bkr = zext nneg i32 %i.bkq to i64
  %i.bks = mul i64 %i.asn, %i.bkr                 ; 2 uses
  %scevgep647 = getelementptr i8, ptr %scevgep646, i64 %i.bks
  %scevgep648 = getelementptr i8, ptr %.1835.lcssa.i, i64 %i.asm
  %scevgep649 = getelementptr i8, ptr %scevgep648, i64 %i.bks
  br label %.preheader1081.us.i

.preheader1081.us.i:                              ; preds = %.preheader1081.us.i.preheader, %._crit_edge1442.us.i
  %.28281446.us.i = phi i32 [ %i.bmm, %._crit_edge1442.us.i ], [ %.1827.lcssa.i, %.preheader1081.us.i.preheader ]
  %.61445.us.i = phi ptr [ %.lcssa228, %._crit_edge1442.us.i ], [ %.3833.lcssa.i, %.preheader1081.us.i.preheader ] ; 8 uses
  %.28361444.us.i = phi ptr [ %i.bml, %._crit_edge1442.us.i ], [ %.1835.lcssa.i, %.preheader1081.us.i.preheader ] ; 7 uses
  br i1 %min.iters.check660, label %scalar.ph659.preheader, label %vector.memcheck643

vector.memcheck643:                               ; preds = %.preheader1081.us.i
  %scevgep644 = getelementptr i8, ptr %.61445.us.i, i64 %i.ask ; 2 uses
  %bound0650 = icmp ult ptr %.61445.us.i, %scevgep647
  %bound1651 = icmp ult ptr %scevgep645, %scevgep644
  %found.conflict652 = and i1 %bound0650, %bound1651
  %bound0654 = icmp ult ptr %.61445.us.i, %scevgep649
  %bound1655 = icmp ult ptr %.1835.lcssa.i, %scevgep644
  %found.conflict656 = and i1 %bound0654, %bound1655
  %i.bkt = or i1 %found.conflict656, %stride.check657
  %conflict.rdx658 = or i1 %found.conflict652, %i.bkt
  br i1 %conflict.rdx658, label %scalar.ph659.preheader, label %vector.ph661

vector.ph661:                                     ; preds = %vector.memcheck643
  %i.bku = getelementptr i8, ptr %.61445.us.i, i64 %i.aue ; 2 uses
  br label %vector.body663

vector.body663:                                   ; preds = %vector.body663, %vector.ph661
  %index664 = phi i64 [ 0, %vector.ph661 ], [ %index.next673, %vector.body663 ] ; 3 uses
  %i.bkv = shl i64 %index664, 3                   ; 2 uses
  %next.gep665 = getelementptr i8, ptr %.61445.us.i, i64 %i.bkv
  %i.bkw = getelementptr i8, ptr %.61445.us.i, i64 %i.bkv
  %next.gep666 = getelementptr i8, ptr %i.bkw, i64 16
  %i.bkx = getelementptr inbounds nuw [4 x i8], ptr %.28361444.us.i, i64 %index664 ; 3 uses
  %i.bky = getelementptr inbounds nuw i8, ptr %i.bkx, i64 8
  %wide.load667 = load <2 x float>, ptr %i.bkx, align 4, !tbaa !45, !alias.scope !262
  %wide.load668 = load <2 x float>, ptr %i.bky, align 4, !tbaa !45, !alias.scope !262
  %i.bkz = getelementptr inbounds nuw [4 x i8], ptr %i.bkx, i64 %i.arq ; 2 uses
  %i.bla = getelementptr inbounds nuw i8, ptr %i.bkz, i64 8
  %wide.load669 = load <2 x float>, ptr %i.bkz, align 4, !tbaa !45, !alias.scope !263
  %wide.load670 = load <2 x float>, ptr %i.bla, align 4, !tbaa !45, !alias.scope !263
  %interleaved.vec671 = shufflevector <2 x float> %wide.load667, <2 x float> %wide.load669, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec671, ptr %next.gep665, align 4, !tbaa !45, !alias.scope !264, !noalias !265
  %interleaved.vec672 = shufflevector <2 x float> %wide.load668, <2 x float> %wide.load670, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec672, ptr %next.gep666, align 4, !tbaa !45, !alias.scope !264, !noalias !265
end_hunk_3
begin_hunk_4_@_ZNK4ncnn21Convolution1D_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %.reass.i ; 3 uses
  br i1 %i.fs, label %bb.m, label %.loopexit1092.i

bb.m:                                             ; preds = %.loopexit1094.i
  br i1 %i.gz, label %.lr.ph1119.preheader.i, label %.loopexit1091.i

.lr.ph1119.preheader.i:                           ; preds = %bb.m
  %i.lg = getelementptr inbounds [4 x i8], ptr %gep.i, i64 %i.he
  br label %.lr.ph1119.i

.lr.ph1119.i:                                     ; preds = %.lr.ph1119.i, %.lr.ph1119.preheader.i
  %.05291118.i = phi i32 [ %i.nl, %.lr.ph1119.i ], [ 0, %.lr.ph1119.preheader.i ]
  %.05301117.i = phi ptr [ %i.nj, %.lr.ph1119.i ], [ %i.lg, %.lr.ph1119.preheader.i ] ; 5 uses
  %.25341116.i = phi ptr [ %i.ni, %.lr.ph1119.i ], [ %gep.i, %.lr.ph1119.preheader.i ] ; 5 uses
  %.35441115.i = phi ptr [ %i.nk, %.lr.ph1119.i ], [ %.05411143.i, %.lr.ph1119.preheader.i ] ; 9 uses
  %.49501114.i = phi <4 x float> [ %i.ms, %.lr.ph1119.i ], [ %.19471142.i, %.lr.ph1119.preheader.i ]
  %.39701113.i = phi <4 x float> [ %i.mx, %.lr.ph1119.i ], [ %.09671141.i, %.lr.ph1119.preheader.i ]
  %.39841112.i = phi <4 x float> [ %i.nc, %.lr.ph1119.i ], [ %.09811140.i, %.lr.ph1119.preheader.i ]
  %.39961111.i = phi <4 x float> [ %i.nh, %.lr.ph1119.i ], [ %.09931139.i, %.lr.ph1119.preheader.i ]
  %i.lh = load <4 x float>, ptr %.35441115.i, align 16, !tbaa !65
  %i.li = getelementptr inbounds nuw i8, ptr %.35441115.i, i64 16
  %i.lj = load <4 x float>, ptr %i.li, align 16, !tbaa !65
  %i.lk = getelementptr inbounds nuw i8, ptr %.35441115.i, i64 32
  %i.ll = load <4 x float>, ptr %i.lk, align 16, !tbaa !65
  %i.lm = getelementptr inbounds nuw i8, ptr %.35441115.i, i64 48
  %i.ln = load <4 x float>, ptr %i.lm, align 16, !tbaa !65
  %i.lo = getelementptr inbounds nuw i8, ptr %.35441115.i, i64 64
  %i.lp = load <4 x float>, ptr %i.lo, align 16, !tbaa !65
  %i.lq = getelementptr inbounds nuw i8, ptr %.35441115.i, i64 80
  %i.lr = load <4 x float>, ptr %i.lq, align 16, !tbaa !65
  %i.ls = getelementptr inbounds nuw i8, ptr %.35441115.i, i64 96
  %i.lt = load <4 x float>, ptr %i.ls, align 16, !tbaa !65
  %i.lu = getelementptr inbounds nuw i8, ptr %.35441115.i, i64 112
  %i.lv = load <4 x float>, ptr %i.lu, align 16, !tbaa !65
  %i.lw = load float, ptr %.25341116.i, align 4, !tbaa !45
  %i.lx = insertelement <4 x float> poison, float %i.lw, i64 0
  %i.ly = shufflevector <4 x float> %i.lx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lh, <4 x float> nofpclass(nan inf) %i.ly, <4 x float> nofpclass(nan inf) %.49501114.i)
  %i.ma = getelementptr inbounds nuw i8, ptr %.25341116.i, i64 4
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !45
  %i.mc = insertelement <4 x float> poison, float %i.mb, i64 0
  %i.md = shufflevector <4 x float> %i.mc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.me = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lj, <4 x float> nofpclass(nan inf) %i.md, <4 x float> nofpclass(nan inf) %.39701113.i)
  %i.mf = getelementptr inbounds nuw i8, ptr %.25341116.i, i64 8
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !45
  %i.mh = insertelement <4 x float> poison, float %i.mg, i64 0
  %i.mi = shufflevector <4 x float> %i.mh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ll, <4 x float> nofpclass(nan inf) %i.mi, <4 x float> nofpclass(nan inf) %.39841112.i)
  %i.mk = getelementptr inbounds nuw i8, ptr %.25341116.i, i64 12
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !45
  %i.mm = insertelement <4 x float> poison, float %i.ml, i64 0
  %i.mn = shufflevector <4 x float> %i.mm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ln, <4 x float> nofpclass(nan inf) %i.mn, <4 x float> nofpclass(nan inf) %.39961111.i)
  %i.mp = load float, ptr %.05301117.i, align 4, !tbaa !45
  %i.mq = insertelement <4 x float> poison, float %i.mp, i64 0
  %i.mr = shufflevector <4 x float> %i.mq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ms = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lp, <4 x float> nofpclass(nan inf) %i.mr, <4 x float> nofpclass(nan inf) %i.lz) ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.05301117.i, i64 4
  %i.mu = load float, ptr %i.mt, align 4, !tbaa !45
  %i.mv = insertelement <4 x float> poison, float %i.mu, i64 0
  %i.mw = shufflevector <4 x float> %i.mv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lr, <4 x float> nofpclass(nan inf) %i.mw, <4 x float> nofpclass(nan inf) %i.me) ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %.05301117.i, i64 8
  %i.mz = load float, ptr %i.my, align 4, !tbaa !45
  %i.na = insertelement <4 x float> poison, float %i.mz, i64 0
  %i.nb = shufflevector <4 x float> %i.na, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lt, <4 x float> nofpclass(nan inf) %i.nb, <4 x float> nofpclass(nan inf) %i.mj) ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %.05301117.i, i64 12
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !45
  %i.nf = insertelement <4 x float> poison, float %i.ne, i64 0
  %i.ng = shufflevector <4 x float> %i.nf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lv, <4 x float> nofpclass(nan inf) %i.ng, <4 x float> nofpclass(nan inf) %i.mo) ; 2 uses
  %i.ni = getelementptr inbounds [4 x i8], ptr %.25341116.i, i64 %i.hg
  %i.nj = getelementptr inbounds [4 x i8], ptr %.05301117.i, i64 %i.hg
  %i.nk = getelementptr inbounds nuw i8, ptr %.35441115.i, i64 128
  %i.nl = add nuw nsw i32 %.05291118.i, 1         ; 2 uses
  %exitcond1641.not.i = icmp eq i32 %i.nl, %i.gy
  br i1 %exitcond1641.not.i, label %.loopexit1092.loopexit.i, label %.lr.ph1119.i, !llvm.loop !281

.loopexit1092.loopexit.i:                         ; preds = %.lr.ph1119.i
  %scevgep1639.i = getelementptr i8, ptr %.05411143.i, i64 128
  %scevgep1640.i = getelementptr i8, ptr %scevgep1639.i, i64 %i.hw
  br label %.loopexit1091.i

.loopexit1092.i:                                  ; preds = %.loopexit1094.i
  br i1 %i.ft, label %.preheader1090.i, label %.loopexit1091.i

.preheader1090.i:                                 ; preds = %.loopexit1092.i
  br i1 %i.gz, label %.lr.ph1133.i, label %.loopexit1091.i

.lr.ph1133.i:                                     ; preds = %.preheader1090.i, %.lr.ph1133.i
  %.05281132.i = phi i32 [ %i.pq, %.lr.ph1133.i ], [ 0, %.preheader1090.i ]
  %.45361131.i = phi ptr [ %i.po, %.lr.ph1133.i ], [ %gep.i, %.preheader1090.i ] ; 9 uses
  %.55461130.i = phi ptr [ %i.pp, %.lr.ph1133.i ], [ %.05411143.i, %.preheader1090.i ] ; 9 uses
  %.69521129.i = phi <4 x float> [ %i.oy, %.lr.ph1133.i ], [ %.19471142.i, %.preheader1090.i ]
  %.59721128.i = phi <4 x float> [ %i.pd, %.lr.ph1133.i ], [ %.09671141.i, %.preheader1090.i ]
  %.59861127.i = phi <4 x float> [ %i.pi, %.lr.ph1133.i ], [ %.09811140.i, %.preheader1090.i ]
  %.59981126.i = phi <4 x float> [ %i.pn, %.lr.ph1133.i ], [ %.09931139.i, %.preheader1090.i ]
  %i.nm = load <4 x float>, ptr %.55461130.i, align 16, !tbaa !65
  %i.nn = getelementptr inbounds nuw i8, ptr %.55461130.i, i64 16
  %i.no = load <4 x float>, ptr %i.nn, align 16, !tbaa !65
  %i.np = getelementptr inbounds nuw i8, ptr %.55461130.i, i64 32
  %i.nq = load <4 x float>, ptr %i.np, align 16, !tbaa !65
  %i.nr = getelementptr inbounds nuw i8, ptr %.55461130.i, i64 48
  %i.ns = load <4 x float>, ptr %i.nr, align 16, !tbaa !65
  %i.nt = getelementptr inbounds nuw i8, ptr %.55461130.i, i64 64
  %i.nu = load <4 x float>, ptr %i.nt, align 16, !tbaa !65
  %i.nv = getelementptr inbounds nuw i8, ptr %.55461130.i, i64 80
  %i.nw = load <4 x float>, ptr %i.nv, align 16, !tbaa !65
  %i.nx = getelementptr inbounds nuw i8, ptr %.55461130.i, i64 96
  %i.ny = load <4 x float>, ptr %i.nx, align 16, !tbaa !65
  %i.nz = getelementptr inbounds nuw i8, ptr %.55461130.i, i64 112
  %i.oa = load <4 x float>, ptr %i.nz, align 16, !tbaa !65
  %i.ob = load float, ptr %.45361131.i, align 4, !tbaa !45
  %i.oc = insertelement <4 x float> poison, float %i.ob, i64 0
  %i.od = shufflevector <4 x float> %i.oc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oe = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nm, <4 x float> nofpclass(nan inf) %i.od, <4 x float> nofpclass(nan inf) %.69521129.i)
  %i.of = getelementptr inbounds [4 x i8], ptr %.45361131.i, i64 %i.he
  %i.og = load float, ptr %i.of, align 4, !tbaa !45
  %i.oh = insertelement <4 x float> poison, float %i.og, i64 0
  %i.oi = shufflevector <4 x float> %i.oh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.no, <4 x float> nofpclass(nan inf) %i.oi, <4 x float> nofpclass(nan inf) %.59721128.i)
  %i.ok = getelementptr inbounds [4 x i8], ptr %.45361131.i, i64 %i.hi
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !45
  %i.om = insertelement <4 x float> poison, float %i.ol, i64 0
  %i.on = shufflevector <4 x float> %i.om, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nq, <4 x float> nofpclass(nan inf) %i.on, <4 x float> nofpclass(nan inf) %.59861127.i)
  %i.op = getelementptr inbounds [4 x i8], ptr %.45361131.i, i64 %i.hk
  %i.oq = load float, ptr %i.op, align 4, !tbaa !45
  %i.or = insertelement <4 x float> poison, float %i.oq, i64 0
  %i.os = shufflevector <4 x float> %i.or, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ot = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ns, <4 x float> nofpclass(nan inf) %i.os, <4 x float> nofpclass(nan inf) %.59981126.i)
  %i.ou = getelementptr inbounds [4 x i8], ptr %.45361131.i, i64 %i.hm
  %i.ov = load float, ptr %i.ou, align 4, !tbaa !45
  %i.ow = insertelement <4 x float> poison, float %i.ov, i64 0
  %i.ox = shufflevector <4 x float> %i.ow, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nu, <4 x float> nofpclass(nan inf) %i.ox, <4 x float> nofpclass(nan inf) %i.oe) ; 2 uses
  %i.oz = getelementptr inbounds [4 x i8], ptr %.45361131.i, i64 %i.ho
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !45
  %i.pb = insertelement <4 x float> poison, float %i.pa, i64 0
  %i.pc = shufflevector <4 x float> %i.pb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nw, <4 x float> nofpclass(nan inf) %i.pc, <4 x float> nofpclass(nan inf) %i.oj) ; 2 uses
  %i.pe = getelementptr inbounds [4 x i8], ptr %.45361131.i, i64 %i.hq
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !45
  %i.pg = insertelement <4 x float> poison, float %i.pf, i64 0
  %i.ph = shufflevector <4 x float> %i.pg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ny, <4 x float> nofpclass(nan inf) %i.ph, <4 x float> nofpclass(nan inf) %i.oo) ; 2 uses
  %i.pj = getelementptr inbounds [4 x i8], ptr %.45361131.i, i64 %i.hs
  %i.pk = load float, ptr %i.pj, align 4, !tbaa !45
  %i.pl = insertelement <4 x float> poison, float %i.pk, i64 0
  %i.pm = shufflevector <4 x float> %i.pl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.oa, <4 x float> nofpclass(nan inf) %i.pm, <4 x float> nofpclass(nan inf) %i.ot) ; 2 uses
  %i.po = getelementptr inbounds [4 x i8], ptr %.45361131.i, i64 %i.ht
  %i.pp = getelementptr inbounds nuw i8, ptr %.55461130.i, i64 128
  %i.pq = add nuw nsw i32 %.05281132.i, 1         ; 2 uses
  %exitcond1644.not.i = icmp eq i32 %i.pq, %i.gy
  br i1 %exitcond1644.not.i, label %.loopexit1091.loopexit.i, label %.lr.ph1133.i, !llvm.loop !282

.loopexit1091.loopexit.i:                         ; preds = %.lr.ph1133.i
  %scevgep1642.i = getelementptr i8, ptr %.05411143.i, i64 128
  %scevgep1643.i = getelementptr i8, ptr %scevgep1642.i, i64 %i.hw
  br label %.loopexit1091.i

.loopexit1091.i:                                  ; preds = %.loopexit1091.loopexit.i, %.preheader1090.i, %.loopexit1092.i, %.loopexit1092.loopexit.i, %bb.m
  %.6999.i = phi nsz <4 x float> [ %.09931139.i, %.loopexit1092.i ], [ %.09931139.i, %.preheader1090.i ], [ %i.pn, %.loopexit1091.loopexit.i ], [ %.09931139.i, %bb.m ], [ %i.nh, %.loopexit1092.loopexit.i ] ; 2 uses
  %.6987.i = phi nsz <4 x float> [ %.09811140.i, %.loopexit1092.i ], [ %.09811140.i, %.preheader1090.i ], [ %i.pi, %.loopexit1091.loopexit.i ], [ %.09811140.i, %bb.m ], [ %i.nc, %.loopexit1092.loopexit.i ] ; 2 uses
  %.6973.i = phi nsz <4 x float> [ %.09671141.i, %.loopexit1092.i ], [ %.09671141.i, %.preheader1090.i ], [ %i.pd, %.loopexit1091.loopexit.i ], [ %.09671141.i, %bb.m ], [ %i.mx, %.loopexit1092.loopexit.i ] ; 2 uses
  %.7953.i = phi nsz <4 x float> [ %.19471142.i, %.loopexit1092.i ], [ %.19471142.i, %.preheader1090.i ], [ %i.oy, %.loopexit1091.loopexit.i ], [ %.19471142.i, %bb.m ], [ %i.ms, %.loopexit1092.loopexit.i ] ; 2 uses
  %.6547.i = phi ptr [ %.05411143.i, %.loopexit1092.i ], [ %.05411143.i, %.preheader1090.i ], [ %scevgep1643.i, %.loopexit1091.loopexit.i ], [ %.05411143.i, %bb.m ], [ %scevgep1640.i, %.loopexit1092.loopexit.i ] ; 2 uses
  %i.pr = add nuw nsw i32 %.05371144.i, 8         ; 2 uses
  %i.ps = or disjoint i32 %i.pr, 7
  %i.pt = icmp slt i32 %i.ps, %i.ev
  br i1 %i.pt, label %.loopexit1094.i, label %.preheader1097.i, !llvm.loop !280

.preheader1096.i:                                 ; preds = %.loopexit1087.i, %.preheader1097.i
  %.71000.lcssa.i = phi <4 x float> [ %.0993.lcssa.i, %.preheader1097.i ], [ %.111004.i, %.loopexit1087.i ]
  %.7988.lcssa.i = phi <4 x float> [ %.0981.lcssa.i, %.preheader1097.i ], [ %.11992.i, %.loopexit1087.i ]
  %.7974.lcssa.i = phi <4 x float> [ %.0967.lcssa.i, %.preheader1097.i ], [ %.11978.i, %.loopexit1087.i ] ; 3 uses
  %.8954.lcssa.i = phi <4 x float> [ %.1947.lcssa.i, %.preheader1097.i ], [ %.12958.i, %.loopexit1087.i ] ; 3 uses
  %.7548.lcssa.i = phi ptr [ %.0541.lcssa.i, %.preheader1097.i ], [ %.11552.i, %.loopexit1087.i ] ; 3 uses
  %.1538.lcssa.i = phi i32 [ %.0537.lcssa.i, %.preheader1097.i ], [ %i.uj, %.loopexit1087.i ] ; 5 uses
  %i.pu = or disjoint i32 %.1538.lcssa.i, 1
  %i.pv = icmp slt i32 %i.pu, %i.ev
  br i1 %i.pv, label %.lr.ph1209.i, label %.preheader1095.i

.lr.ph1209.i:                                     ; preds = %.preheader1096.i
  %i.pw = load ptr, ptr %4, align 8, !tbaa !19
  %i.px = load i32, ptr %i.ah, align 4, !tbaa !51
  %i.py = sext i32 %i.px to i64
  %i.pz = load i64, ptr %i.ae, align 8, !tbaa !44
  %factor.op.mul1214.i = mul i64 %i.pz, %i.py
  %i.qa = mul nsw i64 %indvars.iv1661.i, %i.gi
  %invariant.gep1216.i = getelementptr [4 x i8], ptr %i.pw, i64 %i.qa
  %i.qb = load i32, ptr %i.e, align 4
  %i.qc = sext i32 %i.qb to i64                   ; 3 uses
  %i.qd = load i32, ptr %i.b, align 4
  %i.qe = sext i32 %i.qd to i64                   ; 2 uses
  br i1 %i.fv, label %.lr.ph1201.us.preheader.i, label %.lr.ph1209.split.preheader.i

.lr.ph1209.split.preheader.i:                     ; preds = %.lr.ph1209.i
  %i.qf = add i32 %.1538.lcssa.i, 2
  %i.qg = sub i32 %i.gd, %.1538.lcssa.i
  %i.qh = and i32 %i.qg, -2
  %i.qi = add i32 %i.qf, %i.qh
  br label %.preheader1095.i

.lr.ph1201.us.preheader.i:                        ; preds = %.lr.ph1209.i
  %i.qj = zext i32 %.1538.lcssa.i to i64
  br label %.lr.ph1201.us.i

.lr.ph1201.us.i:                                  ; preds = %._crit_edge.us.i, %.lr.ph1201.us.preheader.i
  %indvars.iv.i = phi i64 [ %i.qj, %.lr.ph1201.us.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.us.i ] ; 2 uses
  %.125531207.us.i = phi ptr [ %.7548.lcssa.i, %.lr.ph1201.us.preheader.i ], [ %scevgep1652.i, %._crit_edge.us.i ] ; 3 uses
  %.139591206.us.i = phi <4 x float> [ %.8954.lcssa.i, %.lr.ph1201.us.preheader.i ], [ %.lcssa379, %._crit_edge.us.i ] ; 2 uses
  %.129791205.us.i = phi <4 x float> [ %.7974.lcssa.i, %.lr.ph1201.us.preheader.i ], [ %.lcssa378, %._crit_edge.us.i ] ; 2 uses
  %.reass1215.us.i = mul i64 %factor.op.mul1214.i, %indvars.iv.i
  %gep1217.us.i = getelementptr i8, ptr %invariant.gep1216.i, i64 %.reass1215.us.i ; 2 uses
  br i1 %i.gj, label %.epil.preheader, label %.lr.ph1201.us.i.new

.lr.ph1201.us.i.new:                              ; preds = %.lr.ph1201.us.i, %.lr.ph1201.us.i.new
  %.05221199.us.i = phi ptr [ %i.rk, %.lr.ph1201.us.i.new ], [ %gep1217.us.i, %.lr.ph1201.us.i ] ; 3 uses
  %.135541198.us.i = phi ptr [ %i.rl, %.lr.ph1201.us.i.new ], [ %.125531207.us.i, %.lr.ph1201.us.i ] ; 5 uses
  %.149601197.us.i = phi <4 x float> [ %i.re, %.lr.ph1201.us.i.new ], [ %.139591206.us.i, %.lr.ph1201.us.i ]
  %.139801196.us.i = phi <4 x float> [ %i.rj, %.lr.ph1201.us.i.new ], [ %.129791205.us.i, %.lr.ph1201.us.i ]
  %niter = phi i32 [ %niter.next.1, %.lr.ph1201.us.i.new ], [ 0, %.lr.ph1201.us.i ]
  %i.qk = load <4 x float>, ptr %.135541198.us.i, align 16, !tbaa !65
  %i.ql = getelementptr inbounds nuw i8, ptr %.135541198.us.i, i64 16
  %i.qm = load <4 x float>, ptr %i.ql, align 16, !tbaa !65
  %i.qn = load float, ptr %.05221199.us.i, align 4, !tbaa !45
  %i.qo = insertelement <4 x float> poison, float %i.qn, i64 0
  %i.qp = shufflevector <4 x float> %i.qo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qk, <4 x float> nofpclass(nan inf) %i.qp, <4 x float> nofpclass(nan inf) %.149601197.us.i)
  %i.qr = getelementptr inbounds [4 x i8], ptr %.05221199.us.i, i64 %i.qc
  %i.qs = load float, ptr %i.qr, align 4, !tbaa !45
  %i.qt = insertelement <4 x float> poison, float %i.qs, i64 0
  %i.qu = shufflevector <4 x float> %i.qt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qm, <4 x float> nofpclass(nan inf) %i.qu, <4 x float> nofpclass(nan inf) %.139801196.us.i)
  %i.qw = getelementptr inbounds [4 x i8], ptr %.05221199.us.i, i64 %i.qe ; 3 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %.135541198.us.i, i64 32
  %i.qy = load <4 x float>, ptr %i.qx, align 16, !tbaa !65
  %i.qz = getelementptr inbounds nuw i8, ptr %.135541198.us.i, i64 48
  %i.ra = load <4 x float>, ptr %i.qz, align 16, !tbaa !65
  %i.rb = load float, ptr %i.qw, align 4, !tbaa !45
  %i.rc = insertelement <4 x float> poison, float %i.rb, i64 0
  %i.rd = shufflevector <4 x float> %i.rc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.re = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qy, <4 x float> nofpclass(nan inf) %i.rd, <4 x float> nofpclass(nan inf) %i.qq) ; 3 uses
  %i.rf = getelementptr inbounds [4 x i8], ptr %i.qw, i64 %i.qc
  %i.rg = load float, ptr %i.rf, align 4, !tbaa !45
  %i.rh = insertelement <4 x float> poison, float %i.rg, i64 0
  %i.ri = shufflevector <4 x float> %i.rh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ra, <4 x float> nofpclass(nan inf) %i.ri, <4 x float> nofpclass(nan inf) %i.qv) ; 3 uses
  %i.rk = getelementptr inbounds [4 x i8], ptr %i.qw, i64 %i.qe ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %.135541198.us.i, i64 64 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.lr.ph1201.us.i.new, !llvm.loop !283

._crit_edge.us.i.unr-lcssa:                       ; preds = %.lr.ph1201.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph1201.us.i
  %.05221199.us.i.epil.init = phi ptr [ %gep1217.us.i, %.lr.ph1201.us.i ], [ %i.rk, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  %.135541198.us.i.epil.init = phi ptr [ %.125531207.us.i, %.lr.ph1201.us.i ], [ %i.rl, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  %.149601197.us.i.epil.init = phi <4 x float> [ %.139591206.us.i, %.lr.ph1201.us.i ], [ %i.re, %._crit_edge.us.i.unr-lcssa ]
  %.139801196.us.i.epil.init = phi <4 x float> [ %.129791205.us.i, %.lr.ph1201.us.i ], [ %i.rj, %._crit_edge.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod384)
  %i.rm = load <4 x float>, ptr %.135541198.us.i.epil.init, align 16, !tbaa !65
  %i.rn = getelementptr inbounds nuw i8, ptr %.135541198.us.i.epil.init, i64 16
  %i.ro = load <4 x float>, ptr %i.rn, align 16, !tbaa !65
  %i.rp = load float, ptr %.05221199.us.i.epil.init, align 4, !tbaa !45
  %i.rq = insertelement <4 x float> poison, float %i.rp, i64 0
  %i.rr = shufflevector <4 x float> %i.rq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rm, <4 x float> nofpclass(nan inf) %i.rr, <4 x float> nofpclass(nan inf) %.149601197.us.i.epil.init)
  %i.rt = getelementptr inbounds [4 x i8], ptr %.05221199.us.i.epil.init, i64 %i.qc
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !45
  %i.rv = insertelement <4 x float> poison, float %i.ru, i64 0
  %i.rw = shufflevector <4 x float> %i.rv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ro, <4 x float> nofpclass(nan inf) %i.rw, <4 x float> nofpclass(nan inf) %.139801196.us.i.epil.init)
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader
  %.lcssa379 = phi <4 x float> [ %i.re, %._crit_edge.us.i.unr-lcssa ], [ %i.rs, %.epil.preheader ] ; 2 uses
  %.lcssa378 = phi <4 x float> [ %i.rj, %._crit_edge.us.i.unr-lcssa ], [ %i.rx, %.epil.preheader ] ; 2 uses
  %scevgep1651.i = getelementptr i8, ptr %.125531207.us.i, i64 32
  %scevgep1652.i = getelementptr i8, ptr %scevgep1651.i, i64 %i.gg ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.ry = trunc i64 %indvars.iv.next.i to i32     ; 2 uses
  %i.rz = or i32 %i.ry, 1
  %i.sa = icmp slt i32 %i.rz, %i.ev
  br i1 %i.sa, label %.lr.ph1201.us.i, label %.preheader1095.i, !llvm.loop !284

bb.n:                                             ; preds = %.loopexit1087.i, %.lr.ph1185.i
  %.15381184.i = phi i32 [ %.0537.lcssa.i, %.lr.ph1185.i ], [ %i.uj, %.loopexit1087.i ] ; 2 uses
  %.75481183.i = phi ptr [ %.0541.lcssa.i, %.lr.ph1185.i ], [ %.11552.i, %.loopexit1087.i ] ; 7 uses
  %.89541182.i = phi <4 x float> [ %.1947.lcssa.i, %.lr.ph1185.i ], [ %.12958.i, %.loopexit1087.i ] ; 5 uses
  %.79741181.i = phi <4 x float> [ %.0967.lcssa.i, %.lr.ph1185.i ], [ %.11978.i, %.loopexit1087.i ] ; 5 uses
  %.79881180.i = phi <4 x float> [ %.0981.lcssa.i, %.lr.ph1185.i ], [ %.11992.i, %.loopexit1087.i ] ; 5 uses
  %.710001179.i = phi <4 x float> [ %.0993.lcssa.i, %.lr.ph1185.i ], [ %.111004.i, %.loopexit1087.i ] ; 5 uses
  %i.sb = sdiv i32 %.15381184.i, %i.et
  %i.sc = sext i32 %i.sb to i64
  %.reass1193.i = mul i64 %factor.op.mul1192.i, %i.sc
  %gep1195.i = getelementptr i8, ptr %invariant.gep1194.i, i64 %.reass1193.i ; 2 uses
  br i1 %i.fs, label %.preheader1088.i, label %.loopexit1089.i

.preheader1088.i:                                 ; preds = %bb.n
  br i1 %i.kq, label %.lr.ph1159.i, label %.loopexit1087.i

.lr.ph1159.i:                                     ; preds = %.preheader1088.i, %.lr.ph1159.i
  %.05241158.i = phi i32 [ %i.tf, %.lr.ph1159.i ], [ 0, %.preheader1088.i ]
  %.05251157.i = phi ptr [ %i.td, %.lr.ph1159.i ], [ %gep1195.i, %.preheader1088.i ] ; 5 uses
  %.85491156.i = phi ptr [ %i.te, %.lr.ph1159.i ], [ %.75481183.i, %.preheader1088.i ] ; 5 uses
  %.99551155.i = phi <4 x float> [ %i.sn, %.lr.ph1159.i ], [ %.89541182.i, %.preheader1088.i ]
  %.89751154.i = phi <4 x float> [ %i.ss, %.lr.ph1159.i ], [ %.79741181.i, %.preheader1088.i ]
  %.89891153.i = phi <4 x float> [ %i.sx, %.lr.ph1159.i ], [ %.79881180.i, %.preheader1088.i ]
  %.810011152.i = phi <4 x float> [ %i.tc, %.lr.ph1159.i ], [ %.710001179.i, %.preheader1088.i ]
  %i.sd = load <4 x float>, ptr %.85491156.i, align 16, !tbaa !65
  %i.se = getelementptr inbounds nuw i8, ptr %.85491156.i, i64 16
  %i.sf = load <4 x float>, ptr %i.se, align 16, !tbaa !65
  %i.sg = getelementptr inbounds nuw i8, ptr %.85491156.i, i64 32
  %i.sh = load <4 x float>, ptr %i.sg, align 16, !tbaa !65
  %i.si = getelementptr inbounds nuw i8, ptr %.85491156.i, i64 48
  %i.sj = load <4 x float>, ptr %i.si, align 16, !tbaa !65
  %i.sk = load float, ptr %.05251157.i, align 4, !tbaa !45
  %i.sl = insertelement <4 x float> poison, float %i.sk, i64 0
  %i.sm = shufflevector <4 x float> %i.sl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sd, <4 x float> nofpclass(nan inf) %i.sm, <4 x float> nofpclass(nan inf) %.99551155.i) ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %.05251157.i, i64 4
  %i.sp = load float, ptr %i.so, align 4, !tbaa !45
  %i.sq = insertelement <4 x float> poison, float %i.sp, i64 0
  %i.sr = shufflevector <4 x float> %i.sq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ss = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sf, <4 x float> nofpclass(nan inf) %i.sr, <4 x float> nofpclass(nan inf) %.89751154.i) ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %.05251157.i, i64 8
  %i.su = load float, ptr %i.st, align 4, !tbaa !45
  %i.sv = insertelement <4 x float> poison, float %i.su, i64 0
  %i.sw = shufflevector <4 x float> %i.sv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sh, <4 x float> nofpclass(nan inf) %i.sw, <4 x float> nofpclass(nan inf) %.89891153.i) ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %.05251157.i, i64 12
  %i.sz = load float, ptr %i.sy, align 4, !tbaa !45
  %i.ta = insertelement <4 x float> poison, float %i.sz, i64 0
  %i.tb = shufflevector <4 x float> %i.ta, <4 x float> poison, <4 x i32> zeroinitializer
  %i.tc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sj, <4 x float> nofpclass(nan inf) %i.tb, <4 x float> nofpclass(nan inf) %.810011152.i) ; 2 uses
  %i.td = getelementptr inbounds [4 x i8], ptr %.05251157.i, i64 %i.kt
  %i.te = getelementptr inbounds nuw i8, ptr %.85491156.i, i64 64
  %i.tf = add nuw nsw i32 %.05241158.i, 1         ; 2 uses
  %exitcond1647.not.i = icmp eq i32 %i.tf, %i.kp
  br i1 %exitcond1647.not.i, label %.loopexit1089.loopexit.i, label %.lr.ph1159.i, !llvm.loop !285

.loopexit1089.loopexit.i:                         ; preds = %.lr.ph1159.i
  %scevgep1645.i = getelementptr i8, ptr %.75481183.i, i64 64
  %scevgep1646.i = getelementptr i8, ptr %scevgep1645.i, i64 %i.ld
  br label %.loopexit1087.i

.loopexit1089.i:                                  ; preds = %bb.n
  br i1 %i.ft, label %.preheader1086.i, label %.loopexit1087.i

.preheader1086.i:                                 ; preds = %.loopexit1089.i
  br i1 %i.kq, label %.lr.ph1173.i, label %.loopexit1087.i

.lr.ph1173.i:                                     ; preds = %.preheader1086.i, %.lr.ph1173.i
  %.05231172.i = phi i32 [ %i.ui, %.lr.ph1173.i ], [ 0, %.preheader1086.i ]
  %.25271171.i = phi ptr [ %i.ug, %.lr.ph1173.i ], [ %gep1195.i, %.preheader1086.i ] ; 5 uses
  %.105511170.i = phi ptr [ %i.uh, %.lr.ph1173.i ], [ %.75481183.i, %.preheader1086.i ] ; 5 uses
  %.119571169.i = phi <4 x float> [ %i.tq, %.lr.ph1173.i ], [ %.89541182.i, %.preheader1086.i ]
  %.109771168.i = phi <4 x float> [ %i.tv, %.lr.ph1173.i ], [ %.79741181.i, %.preheader1086.i ]
  %.109911167.i = phi <4 x float> [ %i.ua, %.lr.ph1173.i ], [ %.79881180.i, %.preheader1086.i ]
  %.1010031166.i = phi <4 x float> [ %i.uf, %.lr.ph1173.i ], [ %.710001179.i, %.preheader1086.i ]
  %i.tg = load <4 x float>, ptr %.105511170.i, align 16, !tbaa !65
  %i.th = getelementptr inbounds nuw i8, ptr %.105511170.i, i64 16
  %i.ti = load <4 x float>, ptr %i.th, align 16, !tbaa !65
  %i.tj = getelementptr inbounds nuw i8, ptr %.105511170.i, i64 32
  %i.tk = load <4 x float>, ptr %i.tj, align 16, !tbaa !65
  %i.tl = getelementptr inbounds nuw i8, ptr %.105511170.i, i64 48
  %i.tm = load <4 x float>, ptr %i.tl, align 16, !tbaa !65
  %i.tn = load float, ptr %.25271171.i, align 4, !tbaa !45
  %i.to = insertelement <4 x float> poison, float %i.tn, i64 0
  %i.tp = shufflevector <4 x float> %i.to, <4 x float> poison, <4 x i32> zeroinitializer
  %i.tq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.tg, <4 x float> nofpclass(nan inf) %i.tp, <4 x float> nofpclass(nan inf) %.119571169.i) ; 2 uses
  %i.tr = getelementptr inbounds [4 x i8], ptr %.25271171.i, i64 %i.kv
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !45
  %i.tt = insertelement <4 x float> poison, float %i.ts, i64 0
  %i.tu = shufflevector <4 x float> %i.tt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.tv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ti, <4 x float> nofpclass(nan inf) %i.tu, <4 x float> nofpclass(nan inf) %.109771168.i) ; 2 uses
  %i.tw = getelementptr inbounds [4 x i8], ptr %.25271171.i, i64 %i.kx
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !45
  %i.ty = insertelement <4 x float> poison, float %i.tx, i64 0
  %i.tz = shufflevector <4 x float> %i.ty, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ua = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.tk, <4 x float> nofpclass(nan inf) %i.tz, <4 x float> nofpclass(nan inf) %.109911167.i) ; 2 uses
  %i.ub = getelementptr inbounds [4 x i8], ptr %.25271171.i, i64 %i.kz
  %i.uc = load float, ptr %i.ub, align 4, !tbaa !45
  %i.ud = insertelement <4 x float> poison, float %i.uc, i64 0
  %i.ue = shufflevector <4 x float> %i.ud, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.tm, <4 x float> nofpclass(nan inf) %i.ue, <4 x float> nofpclass(nan inf) %.1010031166.i) ; 2 uses
  %i.ug = getelementptr inbounds [4 x i8], ptr %.25271171.i, i64 %i.la
  %i.uh = getelementptr inbounds nuw i8, ptr %.105511170.i, i64 64
  %i.ui = add nuw nsw i32 %.05231172.i, 1         ; 2 uses
  %exitcond1650.not.i = icmp eq i32 %i.ui, %i.kp
  br i1 %exitcond1650.not.i, label %.loopexit1087.loopexit.i, label %.lr.ph1173.i, !llvm.loop !286

.loopexit1087.loopexit.i:                         ; preds = %.lr.ph1173.i
  %scevgep1648.i = getelementptr i8, ptr %.75481183.i, i64 64
  %scevgep1649.i = getelementptr i8, ptr %scevgep1648.i, i64 %i.ld
end_hunk_4
begin_hunk_5_@_ZN4ncnn21Convolution1D_x86_fma21create_pipeline_bf16sERKNS_6OptionE:bb.a
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.ft ; 2 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %i.ft ; 2 uses
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %i.ft ; 2 uses
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %i.ft ; 2 uses
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %i.ft ; 2 uses
  %i.nf = load i32, ptr %i.mx, align 4, !tbaa !45
  %i.ng = load i32, ptr %i.my, align 4, !tbaa !45
  %i.nh = load i32, ptr %i.mz, align 4, !tbaa !45
  %i.ni = load i32, ptr %i.na, align 4, !tbaa !45
  %i.nj = load i32, ptr %i.nb, align 4, !tbaa !45
  %i.nk = load i32, ptr %i.nc, align 4, !tbaa !45
  %i.nl = load i32, ptr %i.nd, align 4, !tbaa !45
  %i.nm = load i32, ptr %i.ne, align 4, !tbaa !45
  %i.nn = insertelement <16 x i32> poison, i32 %i.mp, i64 0
  %i.no = insertelement <16 x i32> %i.nn, i32 %i.mq, i64 1
  %i.np = insertelement <16 x i32> %i.no, i32 %i.mr, i64 2
  %i.nq = insertelement <16 x i32> %i.np, i32 %i.ms, i64 3
  %i.nr = insertelement <16 x i32> %i.nq, i32 %i.mt, i64 4
  %i.ns = insertelement <16 x i32> %i.nr, i32 %i.mu, i64 5
  %i.nt = insertelement <16 x i32> %i.ns, i32 %i.mv, i64 6
  %i.nu = insertelement <16 x i32> %i.nt, i32 %i.mw, i64 7
  %i.nv = insertelement <16 x i32> %i.nu, i32 %i.nf, i64 8
  %i.nw = insertelement <16 x i32> %i.nv, i32 %i.ng, i64 9
  %i.nx = insertelement <16 x i32> %i.nw, i32 %i.nh, i64 10
  %i.ny = insertelement <16 x i32> %i.nx, i32 %i.ni, i64 11
  %i.nz = insertelement <16 x i32> %i.ny, i32 %i.nj, i64 12
  %i.oa = insertelement <16 x i32> %i.nz, i32 %i.nk, i64 13
  %i.ob = insertelement <16 x i32> %i.oa, i32 %i.nl, i64 14
  %i.oc = insertelement <16 x i32> %i.ob, i32 %i.nm, i64 15
  %i.od = lshr <16 x i32> %i.oc, splat (i32 16)
  %i.oe = trunc nuw <16 x i32> %i.od to <16 x i16>
  store <16 x i16> %i.oe, ptr %i.mo, align 2, !tbaa !67
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %i.ft ; 2 uses
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %i.ft ; 2 uses
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %i.ft ; 2 uses
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %i.ft ; 2 uses
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %i.ft ; 2 uses
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %i.ft ; 2 uses
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %i.ft ; 2 uses
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %i.ft ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 64
  %i.oo = load i32, ptr %i.of, align 4, !tbaa !45
  %i.op = load i32, ptr %i.og, align 4, !tbaa !45
  %i.oq = load i32, ptr %i.oh, align 4, !tbaa !45
  %i.or = load i32, ptr %i.oi, align 4, !tbaa !45
  %i.os = load i32, ptr %i.oj, align 4, !tbaa !45
  %i.ot = load i32, ptr %i.ok, align 4, !tbaa !45
  %i.ou = load i32, ptr %i.ol, align 4, !tbaa !45
  %i.ov = load i32, ptr %i.om, align 4, !tbaa !45
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.ft ; 2 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.ft ; 2 uses
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %i.ft ; 2 uses
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %i.ft ; 2 uses
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %i.ft ; 2 uses
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %i.ft ; 2 uses
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %i.ft ; 2 uses
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.om, i64 %i.ft ; 2 uses
  %i.pe = load i32, ptr %i.ow, align 4, !tbaa !45
  %i.pf = load i32, ptr %i.ox, align 4, !tbaa !45
  %i.pg = load i32, ptr %i.oy, align 4, !tbaa !45
  %i.ph = load i32, ptr %i.oz, align 4, !tbaa !45
  %i.pi = load i32, ptr %i.pa, align 4, !tbaa !45
  %i.pj = load i32, ptr %i.pb, align 4, !tbaa !45
  %i.pk = load i32, ptr %i.pc, align 4, !tbaa !45
  %i.pl = load i32, ptr %i.pd, align 4, !tbaa !45
  %i.pm = insertelement <16 x i32> poison, i32 %i.oo, i64 0
  %i.pn = insertelement <16 x i32> %i.pm, i32 %i.op, i64 1
  %i.po = insertelement <16 x i32> %i.pn, i32 %i.oq, i64 2
  %i.pp = insertelement <16 x i32> %i.po, i32 %i.or, i64 3
  %i.pq = insertelement <16 x i32> %i.pp, i32 %i.os, i64 4
  %i.pr = insertelement <16 x i32> %i.pq, i32 %i.ot, i64 5
  %i.ps = insertelement <16 x i32> %i.pr, i32 %i.ou, i64 6
  %i.pt = insertelement <16 x i32> %i.ps, i32 %i.ov, i64 7
  %i.pu = insertelement <16 x i32> %i.pt, i32 %i.pe, i64 8
  %i.pv = insertelement <16 x i32> %i.pu, i32 %i.pf, i64 9
  %i.pw = insertelement <16 x i32> %i.pv, i32 %i.pg, i64 10
  %i.px = insertelement <16 x i32> %i.pw, i32 %i.ph, i64 11
  %i.py = insertelement <16 x i32> %i.px, i32 %i.pi, i64 12
  %i.pz = insertelement <16 x i32> %i.py, i32 %i.pj, i64 13
  %i.qa = insertelement <16 x i32> %i.pz, i32 %i.pk, i64 14
  %i.qb = insertelement <16 x i32> %i.qa, i32 %i.pl, i64 15
  %i.qc = lshr <16 x i32> %i.qb, splat (i32 16)
  %i.qd = trunc nuw <16 x i32> %i.qc to <16 x i16>
  store <16 x i16> %i.qd, ptr %i.on, align 2, !tbaa !67
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.ow, i64 %i.ft ; 2 uses
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %i.ft ; 2 uses
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %i.ft ; 2 uses
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %i.ft ; 2 uses
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.pa, i64 %i.ft ; 2 uses
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %i.ft ; 2 uses
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.pc, i64 %i.ft ; 2 uses
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %i.ft ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 96
  %i.qn = load i32, ptr %i.qe, align 4, !tbaa !45
  %i.qo = load i32, ptr %i.qf, align 4, !tbaa !45
  %i.qp = load i32, ptr %i.qg, align 4, !tbaa !45
  %i.qq = load i32, ptr %i.qh, align 4, !tbaa !45
  %i.qr = load i32, ptr %i.qi, align 4, !tbaa !45
  %i.qs = load i32, ptr %i.qj, align 4, !tbaa !45
  %i.qt = load i32, ptr %i.qk, align 4, !tbaa !45
  %i.qu = load i32, ptr %i.ql, align 4, !tbaa !45
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.qe, i64 %i.ft
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.qf, i64 %i.ft
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.qg, i64 %i.ft
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.qh, i64 %i.ft
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.qi, i64 %i.ft
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.qj, i64 %i.ft
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.qk, i64 %i.ft
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.ql, i64 %i.ft
  %i.rd = load i32, ptr %i.qv, align 4, !tbaa !45
  %i.re = load i32, ptr %i.qw, align 4, !tbaa !45
  %i.rf = load i32, ptr %i.qx, align 4, !tbaa !45
  %i.rg = load i32, ptr %i.qy, align 4, !tbaa !45
  %i.rh = load i32, ptr %i.qz, align 4, !tbaa !45
  %i.ri = load i32, ptr %i.ra, align 4, !tbaa !45
  %i.rj = load i32, ptr %i.rb, align 4, !tbaa !45
  %i.rk = load i32, ptr %i.rc, align 4, !tbaa !45
  %i.rl = insertelement <16 x i32> poison, i32 %i.qn, i64 0
  %i.rm = insertelement <16 x i32> %i.rl, i32 %i.qo, i64 1
  %i.rn = insertelement <16 x i32> %i.rm, i32 %i.qp, i64 2
  %i.ro = insertelement <16 x i32> %i.rn, i32 %i.qq, i64 3
  %i.rp = insertelement <16 x i32> %i.ro, i32 %i.qr, i64 4
  %i.rq = insertelement <16 x i32> %i.rp, i32 %i.qs, i64 5
  %i.rr = insertelement <16 x i32> %i.rq, i32 %i.qt, i64 6
  %i.rs = insertelement <16 x i32> %i.rr, i32 %i.qu, i64 7
  %i.rt = insertelement <16 x i32> %i.rs, i32 %i.rd, i64 8
  %i.ru = insertelement <16 x i32> %i.rt, i32 %i.re, i64 9
  %i.rv = insertelement <16 x i32> %i.ru, i32 %i.rf, i64 10
  %i.rw = insertelement <16 x i32> %i.rv, i32 %i.rg, i64 11
  %i.rx = insertelement <16 x i32> %i.rw, i32 %i.rh, i64 12
  %i.ry = insertelement <16 x i32> %i.rx, i32 %i.ri, i64 13
  %i.rz = insertelement <16 x i32> %i.ry, i32 %i.rj, i64 14
  %i.sa = insertelement <16 x i32> %i.rz, i32 %i.rk, i64 15
  %i.sb = lshr <16 x i32> %i.sa, splat (i32 16)
  %i.sc = trunc nuw <16 x i32> %i.sb to <16 x i16>
  store <16 x i16> %i.sc, ptr %i.qm, align 2, !tbaa !67
  %i.sd = getelementptr inbounds nuw i8, ptr %.18881122.us.i, i64 128 ; 3 uses
  %indvars.iv.next1648.i = add nuw nsw i64 %indvars.iv1647.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next1648.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.af, !llvm.loop !336

._crit_edge.us.i:                                 ; preds = %bb.af
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %.08371132.us.i, i64 %i.fv ; 2 uses
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %.08401131.us.i, i64 %i.fv ; 2 uses
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %.08481130.us.i, i64 %i.fv ; 2 uses
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %.08511129.us.i, i64 %i.fv ; 2 uses
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %.08551128.us.i, i64 %i.fv ; 2 uses
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %.08581127.us.i, i64 %i.fv ; 2 uses
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %.08811126.us.i, i64 %i.fv ; 2 uses
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %.08841125.us.i, i64 %i.fv ; 2 uses
  %i.sm = add nuw nsw i32 %.08981123.us.i, 8      ; 2 uses
  %i.sn = or disjoint i32 %i.sm, 7
  %i.so = icmp slt i32 %i.sn, %i.h
  br i1 %i.so, label %.preheader1107.us.i, label %.preheader1110.i, !llvm.loop !337

.preheader1110.i:                                 ; preds = %._crit_edge.us.i, %_ZN4ncnn3MatD2Ev.exit1005.i
  %.0898.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.go, %._crit_edge.us.i ] ; 4 uses
  %.0887.lcssa.i = phi ptr [ %i.kh, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.sd, %._crit_edge.us.i ] ; 3 uses
  %.0884.lcssa.i = phi ptr [ %i.kf, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.sl, %._crit_edge.us.i ] ; 3 uses
  %.0881.lcssa.i = phi ptr [ %i.kb, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.sk, %._crit_edge.us.i ] ; 3 uses
  %.0858.lcssa.i = phi ptr [ %i.jx, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.sj, %._crit_edge.us.i ] ; 3 uses
  %.0855.lcssa.i = phi ptr [ %i.jt, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.si, %._crit_edge.us.i ] ; 3 uses
  %.0851.lcssa.i = phi ptr [ %i.jp, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.sh, %._crit_edge.us.i ] ; 3 uses
  %.0848.lcssa.i = phi ptr [ %i.jl, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.sg, %._crit_edge.us.i ] ; 3 uses
  %.0840.lcssa.i = phi ptr [ %i.jh, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.sf, %._crit_edge.us.i ] ; 3 uses
  %.0837.lcssa.i = phi ptr [ %i.jd, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.se, %._crit_edge.us.i ] ; 3 uses
  %i.sp = or disjoint i32 %.0898.lcssa.i, 3
  %i.sq = icmp slt i32 %i.sp, %i.h
  br i1 %i.sq, label %.preheader1106.lr.ph.i, label %.preheader1109.i

.preheader1110.thread.i:                          ; preds = %.preheader1107.lr.ph.i
  br i1 %i.gs, label %.preheader1106.preheader.i, label %.preheader1109.i

.preheader1106.lr.ph.i:                           ; preds = %.preheader1110.i
  br i1 %i.fs, label %.preheader1106.us.i, label %.preheader1106.preheader.i

.preheader1106.preheader.i:                       ; preds = %.preheader1106.lr.ph.i, %.preheader1110.thread.i
  %.0898.lcssa18471876.i = phi i32 [ %.0898.lcssa.i, %.preheader1106.lr.ph.i ], [ %i.go, %.preheader1110.thread.i ] ; 2 uses
  %.0887.lcssa18481875.i = phi ptr [ %.0887.lcssa.i, %.preheader1106.lr.ph.i ], [ %i.kh, %.preheader1110.thread.i ]
  %.0884.lcssa18491874.i = phi ptr [ %.0884.lcssa.i, %.preheader1106.lr.ph.i ], [ %scevgep1646.i, %.preheader1110.thread.i ]
  %.0881.lcssa18501873.i = phi ptr [ %.0881.lcssa.i, %.preheader1106.lr.ph.i ], [ %scevgep1642.i, %.preheader1110.thread.i ]
  %.0858.lcssa18511872.i = phi ptr [ %.0858.lcssa.i, %.preheader1106.lr.ph.i ], [ %scevgep1638.i, %.preheader1110.thread.i ]
  %.0855.lcssa18521871.i = phi ptr [ %.0855.lcssa.i, %.preheader1106.lr.ph.i ], [ %scevgep1634.i, %.preheader1110.thread.i ]
  %.0851.lcssa18531870.i = phi ptr [ %.0851.lcssa.i, %.preheader1106.lr.ph.i ], [ %scevgep1630.i, %.preheader1110.thread.i ]
  %.0848.lcssa18541869.i = phi ptr [ %.0848.lcssa.i, %.preheader1106.lr.ph.i ], [ %scevgep1626.i, %.preheader1110.thread.i ]
  %.0840.lcssa18551868.i = phi ptr [ %.0840.lcssa.i, %.preheader1106.lr.ph.i ], [ %scevgep1622.i, %.preheader1110.thread.i ]
  %.0837.lcssa18561867.i = phi ptr [ %.0837.lcssa.i, %.preheader1106.lr.ph.i ], [ %scevgep1618.i, %.preheader1110.thread.i ]
  %i.sr = sub i32 %i.gp, %.0898.lcssa18471876.i
  %i.ss = and i32 %i.sr, -4                       ; 2 uses
  %i.st = zext i32 %i.ss to i64
  %i.su = add nuw nsw i64 %i.st, 4
  %i.sv = mul nsw i64 %i.su, %i.fx                ; 8 uses
  %scevgep1650.i = getelementptr i8, ptr %.0837.lcssa18561867.i, i64 %i.sv
  %scevgep1651.i = getelementptr i8, ptr %.0840.lcssa18551868.i, i64 %i.sv
  %scevgep1652.i = getelementptr i8, ptr %.0848.lcssa18541869.i, i64 %i.sv
  %scevgep1653.i = getelementptr i8, ptr %.0851.lcssa18531870.i, i64 %i.sv
  %scevgep1654.i = getelementptr i8, ptr %.0855.lcssa18521871.i, i64 %i.sv
  %scevgep1655.i = getelementptr i8, ptr %.0858.lcssa18511872.i, i64 %i.sv
  %scevgep1656.i = getelementptr i8, ptr %.0881.lcssa18501873.i, i64 %i.sv
  %scevgep1657.i = getelementptr i8, ptr %.0884.lcssa18491874.i, i64 %i.sv
  %i.sw = add i32 %.0898.lcssa18471876.i, 4
  %i.sx = add i32 %i.sw, %i.ss
  br label %.preheader1109.i

.preheader1106.us.i:                              ; preds = %.preheader1106.lr.ph.i, %._crit_edge.us1184.i
  %.18381173.us.i = phi ptr [ %i.ww, %._crit_edge.us1184.i ], [ %.0837.lcssa.i, %.preheader1106.lr.ph.i ] ; 2 uses
  %.18411172.us.i = phi ptr [ %i.wx, %._crit_edge.us1184.i ], [ %.0840.lcssa.i, %.preheader1106.lr.ph.i ] ; 2 uses
  %.18491171.us.i = phi ptr [ %i.wy, %._crit_edge.us1184.i ], [ %.0848.lcssa.i, %.preheader1106.lr.ph.i ] ; 2 uses
  %.18521170.us.i = phi ptr [ %i.wz, %._crit_edge.us1184.i ], [ %.0851.lcssa.i, %.preheader1106.lr.ph.i ] ; 2 uses
  %.18561169.us.i = phi ptr [ %i.xa, %._crit_edge.us1184.i ], [ %.0855.lcssa.i, %.preheader1106.lr.ph.i ] ; 2 uses
  %.18591168.us.i = phi ptr [ %i.xb, %._crit_edge.us1184.i ], [ %.0858.lcssa.i, %.preheader1106.lr.ph.i ] ; 2 uses
  %.18821167.us.i = phi ptr [ %i.xc, %._crit_edge.us1184.i ], [ %.0881.lcssa.i, %.preheader1106.lr.ph.i ] ; 2 uses
  %.18851166.us.i = phi ptr [ %i.xd, %._crit_edge.us1184.i ], [ %.0884.lcssa.i, %.preheader1106.lr.ph.i ] ; 2 uses
  %.38901165.us.i = phi ptr [ %i.wv, %._crit_edge.us1184.i ], [ %.0887.lcssa.i, %.preheader1106.lr.ph.i ]
  %.18991164.us.i = phi i32 [ %i.xe, %._crit_edge.us1184.i ], [ %.0898.lcssa.i, %.preheader1106.lr.ph.i ]
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.preheader1106.us.i
  %indvars.iv1659.i = phi i64 [ 0, %.preheader1106.us.i ], [ %indvars.iv.next1660.i, %bb.ag ] ; 9 uses
  %.48911163.us.i = phi ptr [ %.38901165.us.i, %.preheader1106.us.i ], [ %i.wv, %bb.ag ] ; 3 uses
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %.18381173.us.i, i64 %indvars.iv1659.i ; 2 uses
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %.18411172.us.i, i64 %indvars.iv1659.i ; 2 uses
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %.18491171.us.i, i64 %indvars.iv1659.i ; 2 uses
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %.18521170.us.i, i64 %indvars.iv1659.i ; 2 uses
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %.18561169.us.i, i64 %indvars.iv1659.i ; 2 uses
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %.18591168.us.i, i64 %indvars.iv1659.i ; 2 uses
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %.18821167.us.i, i64 %indvars.iv1659.i ; 2 uses
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %.18851166.us.i, i64 %indvars.iv1659.i ; 2 uses
  %i.tg = load i32, ptr %i.sy, align 4, !tbaa !45
  %i.th = load i32, ptr %i.sz, align 4, !tbaa !45
  %i.ti = load i32, ptr %i.ta, align 4, !tbaa !45
  %i.tj = load i32, ptr %i.tb, align 4, !tbaa !45
  %i.tk = load i32, ptr %i.tc, align 4, !tbaa !45
  %i.tl = load i32, ptr %i.td, align 4, !tbaa !45
  %i.tm = load i32, ptr %i.te, align 4, !tbaa !45
  %i.tn = load i32, ptr %i.tf, align 4, !tbaa !45
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.sy, i64 %i.ft ; 2 uses
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.sz, i64 %i.ft ; 2 uses
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.ta, i64 %i.ft ; 2 uses
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.tb, i64 %i.ft ; 2 uses
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %i.ft ; 2 uses
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.td, i64 %i.ft ; 2 uses
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %i.ft ; 2 uses
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.tf, i64 %i.ft ; 2 uses
  %i.tw = load i32, ptr %i.to, align 4, !tbaa !45
  %i.tx = load i32, ptr %i.tp, align 4, !tbaa !45
  %i.ty = load i32, ptr %i.tq, align 4, !tbaa !45
  %i.tz = load i32, ptr %i.tr, align 4, !tbaa !45
  %i.ua = load i32, ptr %i.ts, align 4, !tbaa !45
  %i.ub = load i32, ptr %i.tt, align 4, !tbaa !45
  %i.uc = load i32, ptr %i.tu, align 4, !tbaa !45
  %i.ud = load i32, ptr %i.tv, align 4, !tbaa !45
  %i.ue = insertelement <16 x i32> poison, i32 %i.tg, i64 0
  %i.uf = insertelement <16 x i32> %i.ue, i32 %i.th, i64 1
  %i.ug = insertelement <16 x i32> %i.uf, i32 %i.ti, i64 2
  %i.uh = insertelement <16 x i32> %i.ug, i32 %i.tj, i64 3
  %i.ui = insertelement <16 x i32> %i.uh, i32 %i.tk, i64 4
  %i.uj = insertelement <16 x i32> %i.ui, i32 %i.tl, i64 5
  %i.uk = insertelement <16 x i32> %i.uj, i32 %i.tm, i64 6
  %i.ul = insertelement <16 x i32> %i.uk, i32 %i.tn, i64 7
  %i.um = insertelement <16 x i32> %i.ul, i32 %i.tw, i64 8
  %i.un = insertelement <16 x i32> %i.um, i32 %i.tx, i64 9
  %i.uo = insertelement <16 x i32> %i.un, i32 %i.ty, i64 10
  %i.up = insertelement <16 x i32> %i.uo, i32 %i.tz, i64 11
  %i.uq = insertelement <16 x i32> %i.up, i32 %i.ua, i64 12
  %i.ur = insertelement <16 x i32> %i.uq, i32 %i.ub, i64 13
  %i.us = insertelement <16 x i32> %i.ur, i32 %i.uc, i64 14
  %i.ut = insertelement <16 x i32> %i.us, i32 %i.ud, i64 15
  %i.uu = lshr <16 x i32> %i.ut, splat (i32 16)
  %i.uv = trunc nuw <16 x i32> %i.uu to <16 x i16>
  store <16 x i16> %i.uv, ptr %.48911163.us.i, align 2, !tbaa !67
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.to, i64 %i.ft ; 2 uses
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.tp, i64 %i.ft ; 2 uses
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.tq, i64 %i.ft ; 2 uses
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %i.ft ; 2 uses
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.ts, i64 %i.ft ; 2 uses
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.tt, i64 %i.ft ; 2 uses
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %i.ft ; 2 uses
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.tv, i64 %i.ft ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %.48911163.us.i, i64 32
  %i.vf = load i32, ptr %i.uw, align 4, !tbaa !45
  %i.vg = load i32, ptr %i.ux, align 4, !tbaa !45
  %i.vh = load i32, ptr %i.uy, align 4, !tbaa !45
  %i.vi = load i32, ptr %i.uz, align 4, !tbaa !45
  %i.vj = load i32, ptr %i.va, align 4, !tbaa !45
  %i.vk = load i32, ptr %i.vb, align 4, !tbaa !45
  %i.vl = load i32, ptr %i.vc, align 4, !tbaa !45
  %i.vm = load i32, ptr %i.vd, align 4, !tbaa !45
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %i.ft
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.ux, i64 %i.ft
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %i.ft
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.uz, i64 %i.ft
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.va, i64 %i.ft
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %i.ft
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.vc, i64 %i.ft
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.vd, i64 %i.ft
  %i.vv = load i32, ptr %i.vn, align 4, !tbaa !45
  %i.vw = load i32, ptr %i.vo, align 4, !tbaa !45
  %i.vx = load i32, ptr %i.vp, align 4, !tbaa !45
  %i.vy = load i32, ptr %i.vq, align 4, !tbaa !45
  %i.vz = load i32, ptr %i.vr, align 4, !tbaa !45
  %i.wa = load i32, ptr %i.vs, align 4, !tbaa !45
  %i.wb = load i32, ptr %i.vt, align 4, !tbaa !45
  %i.wc = load i32, ptr %i.vu, align 4, !tbaa !45
  %i.wd = insertelement <16 x i32> poison, i32 %i.vf, i64 0
  %i.we = insertelement <16 x i32> %i.wd, i32 %i.vg, i64 1
  %i.wf = insertelement <16 x i32> %i.we, i32 %i.vh, i64 2
  %i.wg = insertelement <16 x i32> %i.wf, i32 %i.vi, i64 3
  %i.wh = insertelement <16 x i32> %i.wg, i32 %i.vj, i64 4
  %i.wi = insertelement <16 x i32> %i.wh, i32 %i.vk, i64 5
  %i.wj = insertelement <16 x i32> %i.wi, i32 %i.vl, i64 6
  %i.wk = insertelement <16 x i32> %i.wj, i32 %i.vm, i64 7
  %i.wl = insertelement <16 x i32> %i.wk, i32 %i.vv, i64 8
  %i.wm = insertelement <16 x i32> %i.wl, i32 %i.vw, i64 9
  %i.wn = insertelement <16 x i32> %i.wm, i32 %i.vx, i64 10
  %i.wo = insertelement <16 x i32> %i.wn, i32 %i.vy, i64 11
  %i.wp = insertelement <16 x i32> %i.wo, i32 %i.vz, i64 12
  %i.wq = insertelement <16 x i32> %i.wp, i32 %i.wa, i64 13
  %i.wr = insertelement <16 x i32> %i.wq, i32 %i.wb, i64 14
  %i.ws = insertelement <16 x i32> %i.wr, i32 %i.wc, i64 15
  %i.wt = lshr <16 x i32> %i.ws, splat (i32 16)
  %i.wu = trunc nuw <16 x i32> %i.wt to <16 x i16>
  store <16 x i16> %i.wu, ptr %i.ve, align 2, !tbaa !67
  %i.wv = getelementptr inbounds nuw i8, ptr %.48911163.us.i, i64 64 ; 3 uses
  %indvars.iv.next1660.i = add nuw nsw i64 %indvars.iv1659.i, 1 ; 2 uses
  %exitcond1663.not.i = icmp eq i64 %indvars.iv.next1660.i, %wide.trip.count.i
  br i1 %exitcond1663.not.i, label %._crit_edge.us1184.i, label %bb.ag, !llvm.loop !338

._crit_edge.us1184.i:                             ; preds = %bb.ag
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %.18381173.us.i, i64 %i.fx ; 2 uses
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %.18411172.us.i, i64 %i.fx ; 2 uses
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %.18491171.us.i, i64 %i.fx ; 2 uses
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %.18521170.us.i, i64 %i.fx ; 2 uses
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %.18561169.us.i, i64 %i.fx ; 2 uses
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %.18591168.us.i, i64 %i.fx ; 2 uses
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %.18821167.us.i, i64 %i.fx ; 2 uses
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %.18851166.us.i, i64 %i.fx ; 2 uses
  %i.xe = add nuw nsw i32 %.18991164.us.i, 4      ; 3 uses
  %i.xf = or disjoint i32 %i.xe, 3
  %i.xg = icmp slt i32 %i.xf, %i.h
  br i1 %i.xg, label %.preheader1106.us.i, label %.preheader1109.i, !llvm.loop !339

.preheader1109.i:                                 ; preds = %._crit_edge.us1184.i, %.preheader1106.preheader.i, %.preheader1110.thread.i, %.preheader1110.i
  %.1899.lcssa.i = phi i32 [ %.0898.lcssa.i, %.preheader1110.i ], [ %i.go, %.preheader1110.thread.i ], [ %i.sx, %.preheader1106.preheader.i ], [ %i.xe, %._crit_edge.us1184.i ] ; 3 uses
  %.3890.lcssa.i = phi ptr [ %.0887.lcssa.i, %.preheader1110.i ], [ %i.kh, %.preheader1110.thread.i ], [ %.0887.lcssa18481875.i, %.preheader1106.preheader.i ], [ %i.wv, %._crit_edge.us1184.i ] ; 2 uses
  %.1885.lcssa.i = phi ptr [ %.0884.lcssa.i, %.preheader1110.i ], [ %scevgep1646.i, %.preheader1110.thread.i ], [ %scevgep1657.i, %.preheader1106.preheader.i ], [ %i.xd, %._crit_edge.us1184.i ] ; 2 uses
  %.1882.lcssa.i = phi ptr [ %.0881.lcssa.i, %.preheader1110.i ], [ %scevgep1642.i, %.preheader1110.thread.i ], [ %scevgep1656.i, %.preheader1106.preheader.i ], [ %i.xc, %._crit_edge.us1184.i ] ; 2 uses
  %.1859.lcssa.i = phi ptr [ %.0858.lcssa.i, %.preheader1110.i ], [ %scevgep1638.i, %.preheader1110.thread.i ], [ %scevgep1655.i, %.preheader1106.preheader.i ], [ %i.xb, %._crit_edge.us1184.i ] ; 2 uses
  %.1856.lcssa.i = phi ptr [ %.0855.lcssa.i, %.preheader1110.i ], [ %scevgep1634.i, %.preheader1110.thread.i ], [ %scevgep1654.i, %.preheader1106.preheader.i ], [ %i.xa, %._crit_edge.us1184.i ] ; 2 uses
  %.1852.lcssa.i = phi ptr [ %.0851.lcssa.i, %.preheader1110.i ], [ %scevgep1630.i, %.preheader1110.thread.i ], [ %scevgep1653.i, %.preheader1106.preheader.i ], [ %i.wz, %._crit_edge.us1184.i ] ; 2 uses
  %.1849.lcssa.i = phi ptr [ %.0848.lcssa.i, %.preheader1110.i ], [ %scevgep1626.i, %.preheader1110.thread.i ], [ %scevgep1652.i, %.preheader1106.preheader.i ], [ %i.wy, %._crit_edge.us1184.i ] ; 2 uses
  %.1841.lcssa.i = phi ptr [ %.0840.lcssa.i, %.preheader1110.i ], [ %scevgep1622.i, %.preheader1110.thread.i ], [ %scevgep1651.i, %.preheader1106.preheader.i ], [ %i.wx, %._crit_edge.us1184.i ] ; 2 uses
  %.1838.lcssa.i = phi ptr [ %.0837.lcssa.i, %.preheader1110.i ], [ %scevgep1618.i, %.preheader1110.thread.i ], [ %scevgep1650.i, %.preheader1106.preheader.i ], [ %i.ww, %._crit_edge.us1184.i ] ; 2 uses
  %i.xh = or disjoint i32 %.1899.lcssa.i, 1
  %i.xi = icmp slt i32 %i.xh, %i.h
  br i1 %i.xi, label %.preheader1105.lr.ph.i, label %.preheader1108.i

.preheader1105.lr.ph.i:                           ; preds = %.preheader1109.i
  br i1 %i.fs, label %.preheader1105.us.i, label %._crit_edge1244.split.i

.preheader1105.us.i:                              ; preds = %.preheader1105.lr.ph.i, %._crit_edge.us1228.i
  %.28391217.us.i = phi ptr [ %i.zi, %._crit_edge.us1228.i ], [ %.1838.lcssa.i, %.preheader1105.lr.ph.i ] ; 2 uses
  %.28421216.us.i = phi ptr [ %i.zj, %._crit_edge.us1228.i ], [ %.1841.lcssa.i, %.preheader1105.lr.ph.i ] ; 2 uses
  %.28501215.us.i = phi ptr [ %i.zk, %._crit_edge.us1228.i ], [ %.1849.lcssa.i, %.preheader1105.lr.ph.i ] ; 2 uses
  %.28531214.us.i = phi ptr [ %i.zl, %._crit_edge.us1228.i ], [ %.1852.lcssa.i, %.preheader1105.lr.ph.i ] ; 2 uses
  %.28571213.us.i = phi ptr [ %i.zm, %._crit_edge.us1228.i ], [ %.1856.lcssa.i, %.preheader1105.lr.ph.i ] ; 2 uses
  %.28601212.us.i = phi ptr [ %i.zn, %._crit_edge.us1228.i ], [ %.1859.lcssa.i, %.preheader1105.lr.ph.i ] ; 2 uses
  %.28831211.us.i = phi ptr [ %i.zo, %._crit_edge.us1228.i ], [ %.1882.lcssa.i, %.preheader1105.lr.ph.i ] ; 2 uses
  %.28861210.us.i = phi ptr [ %i.zp, %._crit_edge.us1228.i ], [ %.1885.lcssa.i, %.preheader1105.lr.ph.i ] ; 2 uses
  %.68931209.us.i = phi ptr [ %i.zh, %._crit_edge.us1228.i ], [ %.3890.lcssa.i, %.preheader1105.lr.ph.i ]
  %.29001208.us.i = phi i32 [ %i.zq, %._crit_edge.us1228.i ], [ %.1899.lcssa.i, %.preheader1105.lr.ph.i ]
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.preheader1105.us.i
  %indvars.iv1672.i = phi i64 [ 0, %.preheader1105.us.i ], [ %indvars.iv.next1673.i, %bb.ah ] ; 9 uses
  %.78941207.us.i = phi ptr [ %.68931209.us.i, %.preheader1105.us.i ], [ %i.zh, %bb.ah ] ; 2 uses
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %.28391217.us.i, i64 %indvars.iv1672.i ; 2 uses
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %.28421216.us.i, i64 %indvars.iv1672.i ; 2 uses
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %.28501215.us.i, i64 %indvars.iv1672.i ; 2 uses
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %.28531214.us.i, i64 %indvars.iv1672.i ; 2 uses
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %.28571213.us.i, i64 %indvars.iv1672.i ; 2 uses
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %.28601212.us.i, i64 %indvars.iv1672.i ; 2 uses
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %.28831211.us.i, i64 %indvars.iv1672.i ; 2 uses
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %.28861210.us.i, i64 %indvars.iv1672.i ; 2 uses
  %i.xr = load i32, ptr %i.xj, align 4, !tbaa !45
  %i.xs = load i32, ptr %i.xk, align 4, !tbaa !45
  %i.xt = load i32, ptr %i.xl, align 4, !tbaa !45
  %i.xu = load i32, ptr %i.xm, align 4, !tbaa !45
  %i.xv = load i32, ptr %i.xn, align 4, !tbaa !45
  %i.xw = load i32, ptr %i.xo, align 4, !tbaa !45
  %i.xx = load i32, ptr %i.xp, align 4, !tbaa !45
  %i.xy = load i32, ptr %i.xq, align 4, !tbaa !45
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %i.xj, i64 %i.ft
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.xk, i64 %i.ft
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.xl, i64 %i.ft
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.xm, i64 %i.ft
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.xn, i64 %i.ft
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %i.ft
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.xp, i64 %i.ft
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.xq, i64 %i.ft
  %i.yh = load i32, ptr %i.xz, align 4, !tbaa !45
end_hunk_5
begin_hunk_6_@_ZN4ncnn21Convolution1D_x86_fma21create_pipeline_bf16sERKNS_6OptionE:bb.a
  %i.ags = trunc nuw i32 %i.agr to i16
  %i.agt = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 12
  store i16 %i.ags, ptr %i.agt, align 2, !tbaa !67
  %i.agu = load i32, ptr %i.agh, align 4, !tbaa !45
  %i.agv = lshr i32 %i.agu, 16
  %i.agw = trunc nuw i32 %i.agv to i16
  %i.agx = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 14
  store i16 %i.agw, ptr %i.agx, align 2, !tbaa !67
  %i.agy = getelementptr inbounds nuw [4 x i8], ptr %i.age, i64 %i.hg ; 2 uses
  %i.agz = getelementptr inbounds nuw [4 x i8], ptr %i.agf, i64 %i.hg ; 2 uses
  %i.aha = getelementptr inbounds nuw [4 x i8], ptr %i.agg, i64 %i.hg ; 2 uses
  %i.ahb = getelementptr inbounds nuw [4 x i8], ptr %i.agh, i64 %i.hg ; 2 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 16
  %i.ahd = load i32, ptr %i.agy, align 4, !tbaa !45
  %i.ahe = lshr i32 %i.ahd, 16
  %i.ahf = trunc nuw i32 %i.ahe to i16
  store i16 %i.ahf, ptr %i.ahc, align 2, !tbaa !67
  %i.ahg = load i32, ptr %i.agz, align 4, !tbaa !45
  %i.ahh = lshr i32 %i.ahg, 16
  %i.ahi = trunc nuw i32 %i.ahh to i16
  %i.ahj = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 18
  store i16 %i.ahi, ptr %i.ahj, align 2, !tbaa !67
  %i.ahk = load i32, ptr %i.aha, align 4, !tbaa !45
  %i.ahl = lshr i32 %i.ahk, 16
  %i.ahm = trunc nuw i32 %i.ahl to i16
  %i.ahn = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 20
  store i16 %i.ahm, ptr %i.ahn, align 2, !tbaa !67
  %i.aho = load i32, ptr %i.ahb, align 4, !tbaa !45
  %i.ahp = lshr i32 %i.aho, 16
  %i.ahq = trunc nuw i32 %i.ahp to i16
  %i.ahr = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 22
  store i16 %i.ahq, ptr %i.ahr, align 2, !tbaa !67
  %i.ahs = getelementptr inbounds nuw [4 x i8], ptr %i.agy, i64 %i.hg ; 2 uses
  %i.aht = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %i.hg ; 2 uses
  %i.ahu = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %i.hg ; 2 uses
  %i.ahv = getelementptr inbounds nuw [4 x i8], ptr %i.ahb, i64 %i.hg ; 2 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 24
  %i.ahx = load i32, ptr %i.ahs, align 4, !tbaa !45
  %i.ahy = lshr i32 %i.ahx, 16
  %i.ahz = trunc nuw i32 %i.ahy to i16
  store i16 %i.ahz, ptr %i.ahw, align 2, !tbaa !67
  %i.aia = load i32, ptr %i.aht, align 4, !tbaa !45
  %i.aib = lshr i32 %i.aia, 16
  %i.aic = trunc nuw i32 %i.aib to i16
  %i.aid = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 26
  store i16 %i.aic, ptr %i.aid, align 2, !tbaa !67
  %i.aie = load i32, ptr %i.ahu, align 4, !tbaa !45
  %i.aif = lshr i32 %i.aie, 16
  %i.aig = trunc nuw i32 %i.aif to i16
  %i.aih = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 28
  store i16 %i.aig, ptr %i.aih, align 2, !tbaa !67
  %i.aii = load i32, ptr %i.ahv, align 4, !tbaa !45
  %i.aij = lshr i32 %i.aii, 16
  %i.aik = trunc nuw i32 %i.aij to i16
  %i.ail = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 30
  store i16 %i.aik, ptr %i.ail, align 2, !tbaa !67
  %i.aim = getelementptr inbounds nuw [4 x i8], ptr %i.ahs, i64 %i.hg ; 2 uses
  %i.ain = getelementptr inbounds nuw [4 x i8], ptr %i.aht, i64 %i.hg ; 2 uses
  %i.aio = getelementptr inbounds nuw [4 x i8], ptr %i.ahu, i64 %i.hg ; 2 uses
  %i.aip = getelementptr inbounds nuw [4 x i8], ptr %i.ahv, i64 %i.hg ; 2 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 32
  %i.air = load i32, ptr %i.aim, align 4, !tbaa !45
  %i.ais = lshr i32 %i.air, 16
  %i.ait = trunc nuw i32 %i.ais to i16
  store i16 %i.ait, ptr %i.aiq, align 2, !tbaa !67
  %i.aiu = load i32, ptr %i.ain, align 4, !tbaa !45
  %i.aiv = lshr i32 %i.aiu, 16
  %i.aiw = trunc nuw i32 %i.aiv to i16
  %i.aix = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 34
  store i16 %i.aiw, ptr %i.aix, align 2, !tbaa !67
  %i.aiy = load i32, ptr %i.aio, align 4, !tbaa !45
  %i.aiz = lshr i32 %i.aiy, 16
  %i.aja = trunc nuw i32 %i.aiz to i16
  %i.ajb = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 36
  store i16 %i.aja, ptr %i.ajb, align 2, !tbaa !67
  %i.ajc = load i32, ptr %i.aip, align 4, !tbaa !45
  %i.ajd = lshr i32 %i.ajc, 16
  %i.aje = trunc nuw i32 %i.ajd to i16
  %i.ajf = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 38
  store i16 %i.aje, ptr %i.ajf, align 2, !tbaa !67
  %i.ajg = getelementptr inbounds nuw [4 x i8], ptr %i.aim, i64 %i.hg ; 2 uses
  %i.ajh = getelementptr inbounds nuw [4 x i8], ptr %i.ain, i64 %i.hg ; 2 uses
  %i.aji = getelementptr inbounds nuw [4 x i8], ptr %i.aio, i64 %i.hg ; 2 uses
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %i.aip, i64 %i.hg ; 2 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 40
  %i.ajl = load i32, ptr %i.ajg, align 4, !tbaa !45
  %i.ajm = lshr i32 %i.ajl, 16
  %i.ajn = trunc nuw i32 %i.ajm to i16
  store i16 %i.ajn, ptr %i.ajk, align 2, !tbaa !67
  %i.ajo = load i32, ptr %i.ajh, align 4, !tbaa !45
  %i.ajp = lshr i32 %i.ajo, 16
  %i.ajq = trunc nuw i32 %i.ajp to i16
  %i.ajr = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 42
  store i16 %i.ajq, ptr %i.ajr, align 2, !tbaa !67
  %i.ajs = load i32, ptr %i.aji, align 4, !tbaa !45
  %i.ajt = lshr i32 %i.ajs, 16
  %i.aju = trunc nuw i32 %i.ajt to i16
  %i.ajv = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 44
  store i16 %i.aju, ptr %i.ajv, align 2, !tbaa !67
  %i.ajw = load i32, ptr %i.ajj, align 4, !tbaa !45
  %i.ajx = lshr i32 %i.ajw, 16
  %i.ajy = trunc nuw i32 %i.ajx to i16
  %i.ajz = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 46
  store i16 %i.ajy, ptr %i.ajz, align 2, !tbaa !67
  %i.aka = getelementptr inbounds nuw [4 x i8], ptr %i.ajg, i64 %i.hg ; 2 uses
  %i.akb = getelementptr inbounds nuw [4 x i8], ptr %i.ajh, i64 %i.hg ; 2 uses
  %i.akc = getelementptr inbounds nuw [4 x i8], ptr %i.aji, i64 %i.hg ; 2 uses
  %i.akd = getelementptr inbounds nuw [4 x i8], ptr %i.ajj, i64 %i.hg ; 2 uses
  %i.ake = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 48
  %i.akf = load i32, ptr %i.aka, align 4, !tbaa !45
  %i.akg = lshr i32 %i.akf, 16
  %i.akh = trunc nuw i32 %i.akg to i16
  store i16 %i.akh, ptr %i.ake, align 2, !tbaa !67
  %i.aki = load i32, ptr %i.akb, align 4, !tbaa !45
  %i.akj = lshr i32 %i.aki, 16
  %i.akk = trunc nuw i32 %i.akj to i16
  %i.akl = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 50
  store i16 %i.akk, ptr %i.akl, align 2, !tbaa !67
  %i.akm = load i32, ptr %i.akc, align 4, !tbaa !45
  %i.akn = lshr i32 %i.akm, 16
  %i.ako = trunc nuw i32 %i.akn to i16
  %i.akp = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 52
  store i16 %i.ako, ptr %i.akp, align 2, !tbaa !67
  %i.akq = load i32, ptr %i.akd, align 4, !tbaa !45
  %i.akr = lshr i32 %i.akq, 16
  %i.aks = trunc nuw i32 %i.akr to i16
  %i.akt = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 54
  store i16 %i.aks, ptr %i.akt, align 2, !tbaa !67
  %i.aku = getelementptr inbounds nuw [4 x i8], ptr %i.aka, i64 %i.hg
  %i.akv = getelementptr inbounds nuw [4 x i8], ptr %i.akb, i64 %i.hg
  %i.akw = getelementptr inbounds nuw [4 x i8], ptr %i.akc, i64 %i.hg
  %i.akx = getelementptr inbounds nuw [4 x i8], ptr %i.akd, i64 %i.hg
  %i.aky = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 56
  %i.akz = load i32, ptr %i.aku, align 4, !tbaa !45
  %i.ala = lshr i32 %i.akz, 16
  %i.alb = trunc nuw i32 %i.ala to i16
  store i16 %i.alb, ptr %i.aky, align 2, !tbaa !67
  %i.alc = load i32, ptr %i.akv, align 4, !tbaa !45
  %i.ald = lshr i32 %i.alc, 16
  %i.ale = trunc nuw i32 %i.ald to i16
  %i.alf = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 58
  store i16 %i.ale, ptr %i.alf, align 2, !tbaa !67
  %i.alg = load i32, ptr %i.akw, align 4, !tbaa !45
  %i.alh = lshr i32 %i.alg, 16
  %i.ali = trunc nuw i32 %i.alh to i16
  %i.alj = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 60
  store i16 %i.ali, ptr %i.alj, align 2, !tbaa !67
  %i.alk = load i32, ptr %i.akx, align 4, !tbaa !45
  %i.all = lshr i32 %i.alk, 16
  %i.alm = trunc nuw i32 %i.all to i16
  %i.aln = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 62
  store i16 %i.alm, ptr %i.aln, align 2, !tbaa !67
  %i.alo = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 64 ; 3 uses
  %indvars.iv.next1704.i = add nuw nsw i64 %indvars.iv1703.i, 1 ; 2 uses
  %exitcond1707.not.i = icmp eq i64 %indvars.iv.next1704.i, %wide.trip.count1706.i
  br i1 %exitcond1707.not.i, label %._crit_edge1255.us.i, label %bb.ai, !llvm.loop !348

._crit_edge1255.us.i:                             ; preds = %bb.ai
  %i.alp = getelementptr inbounds nuw [4 x i8], ptr %.09451257.us.i, i64 %i.hi ; 2 uses
  %i.alq = getelementptr inbounds nuw [4 x i8], ptr %.09421258.us.i, i64 %i.hi ; 2 uses
  %i.alr = getelementptr inbounds nuw [4 x i8], ptr %.09391259.us.i, i64 %i.hi ; 2 uses
  %i.als = getelementptr inbounds nuw [4 x i8], ptr %.09361260.us.i, i64 %i.hi ; 2 uses
  %i.alt = add nuw nsw i32 %.09211262.us.i, 8     ; 2 uses
  %i.alu = or disjoint i32 %i.alt, 7
  %i.alv = icmp slt i32 %i.alu, %i.h
  br i1 %i.alv, label %.preheader1099.us.i, label %.preheader1102.i, !llvm.loop !349

.preheader1102.i:                                 ; preds = %._crit_edge1255.us.i, %_ZN4ncnn3MatD2Ev.exit1004.i
  %.0945.lcssa.i = phi ptr [ %i.aet, %_ZN4ncnn3MatD2Ev.exit1004.i ], [ %i.alp, %._crit_edge1255.us.i ] ; 3 uses
  %.0942.lcssa.i = phi ptr [ %i.aex, %_ZN4ncnn3MatD2Ev.exit1004.i ], [ %i.alq, %._crit_edge1255.us.i ] ; 3 uses
  %.0939.lcssa.i = phi ptr [ %i.afb, %_ZN4ncnn3MatD2Ev.exit1004.i ], [ %i.alr, %._crit_edge1255.us.i ] ; 3 uses
  %.0936.lcssa.i = phi ptr [ %i.afe, %_ZN4ncnn3MatD2Ev.exit1004.i ], [ %i.als, %._crit_edge1255.us.i ] ; 3 uses
  %.0925.lcssa.i = phi ptr [ %i.afk, %_ZN4ncnn3MatD2Ev.exit1004.i ], [ %i.alo, %._crit_edge1255.us.i ] ; 3 uses
  %.0921.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1004.i ], [ %i.ib, %._crit_edge1255.us.i ] ; 4 uses
  %i.alw = or disjoint i32 %.0921.lcssa.i, 3
  %i.alx = icmp slt i32 %i.alw, %i.h
  br i1 %i.alx, label %.preheader1098.lr.ph.i, label %.preheader1101.i

.preheader1102.thread.i:                          ; preds = %.preheader1099.lr.ph.i
  br i1 %i.ih, label %.preheader1098.preheader.i, label %.preheader1101.i

.preheader1098.lr.ph.i:                           ; preds = %.preheader1102.i
  br i1 %i.hf, label %.preheader1098.us.i, label %.preheader1098.preheader.i

.preheader1098.preheader.i:                       ; preds = %.preheader1098.lr.ph.i, %.preheader1102.thread.i
  %.0945.lcssa18941911.i = phi ptr [ %.0945.lcssa.i, %.preheader1098.lr.ph.i ], [ %scevgep1689.i, %.preheader1102.thread.i ]
  %.0942.lcssa18951910.i = phi ptr [ %.0942.lcssa.i, %.preheader1098.lr.ph.i ], [ %scevgep1693.i, %.preheader1102.thread.i ]
  %.0939.lcssa18961909.i = phi ptr [ %.0939.lcssa.i, %.preheader1098.lr.ph.i ], [ %scevgep1697.i, %.preheader1102.thread.i ]
  %.0936.lcssa18971908.i = phi ptr [ %.0936.lcssa.i, %.preheader1098.lr.ph.i ], [ %scevgep1701.i, %.preheader1102.thread.i ]
  %.0925.lcssa18981907.i = phi ptr [ %.0925.lcssa.i, %.preheader1098.lr.ph.i ], [ %i.afk, %.preheader1102.thread.i ]
  %.0921.lcssa18991906.i = phi i32 [ %.0921.lcssa.i, %.preheader1098.lr.ph.i ], [ %i.ib, %.preheader1102.thread.i ] ; 2 uses
  %i.aly = sub i32 %i.ic, %.0921.lcssa18991906.i
  %i.alz = and i32 %i.aly, -4                     ; 2 uses
  %i.ama = zext i32 %i.alz to i64
  %i.amb = add nuw nsw i64 %i.ama, 4
  %i.amc = mul nsw i64 %i.amb, %i.hk              ; 4 uses
  %scevgep1708.i = getelementptr i8, ptr %.0945.lcssa18941911.i, i64 %i.amc
  %scevgep1709.i = getelementptr i8, ptr %.0942.lcssa18951910.i, i64 %i.amc
  %scevgep1710.i = getelementptr i8, ptr %.0939.lcssa18961909.i, i64 %i.amc
  %scevgep1711.i = getelementptr i8, ptr %.0936.lcssa18971908.i, i64 %i.amc
  %i.amd = add i32 %.0921.lcssa18991906.i, 4
  %i.ame = add i32 %i.amd, %i.alz
  br label %.preheader1101.i

.preheader1098.us.i:                              ; preds = %.preheader1098.lr.ph.i, %._crit_edge1283.us.i
  %.19221290.us.i = phi i32 [ %i.apl, %._crit_edge1283.us.i ], [ %.0921.lcssa.i, %.preheader1098.lr.ph.i ]
  %.39281289.us.i = phi ptr [ %i.apg, %._crit_edge1283.us.i ], [ %.0925.lcssa.i, %.preheader1098.lr.ph.i ]
  %.19371288.us.i = phi ptr [ %i.apk, %._crit_edge1283.us.i ], [ %.0936.lcssa.i, %.preheader1098.lr.ph.i ] ; 2 uses
  %.19401287.us.i = phi ptr [ %i.apj, %._crit_edge1283.us.i ], [ %.0939.lcssa.i, %.preheader1098.lr.ph.i ] ; 2 uses
  %.19431286.us.i = phi ptr [ %i.api, %._crit_edge1283.us.i ], [ %.0942.lcssa.i, %.preheader1098.lr.ph.i ] ; 2 uses
  %.19461285.us.i = phi ptr [ %i.aph, %._crit_edge1283.us.i ], [ %.0945.lcssa.i, %.preheader1098.lr.ph.i ] ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.preheader1098.us.i
  %indvars.iv1713.i = phi i64 [ 0, %.preheader1098.us.i ], [ %indvars.iv.next1714.i, %bb.aj ] ; 5 uses
  %.49291281.us.i = phi ptr [ %.39281289.us.i, %.preheader1098.us.i ], [ %i.apg, %bb.aj ] ; 17 uses
  %i.amf = getelementptr inbounds nuw [4 x i8], ptr %.19461285.us.i, i64 %indvars.iv1713.i ; 2 uses
  %i.amg = getelementptr inbounds nuw [4 x i8], ptr %.19431286.us.i, i64 %indvars.iv1713.i ; 2 uses
  %i.amh = getelementptr inbounds nuw [4 x i8], ptr %.19401287.us.i, i64 %indvars.iv1713.i ; 2 uses
  %i.ami = getelementptr inbounds nuw [4 x i8], ptr %.19371288.us.i, i64 %indvars.iv1713.i ; 2 uses
  %i.amj = load i32, ptr %i.amf, align 4, !tbaa !45
  %i.amk = lshr i32 %i.amj, 16
  %i.aml = trunc nuw i32 %i.amk to i16
  store i16 %i.aml, ptr %.49291281.us.i, align 2, !tbaa !67
  %i.amm = load i32, ptr %i.amg, align 4, !tbaa !45
  %i.amn = lshr i32 %i.amm, 16
  %i.amo = trunc nuw i32 %i.amn to i16
  %i.amp = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 2
  store i16 %i.amo, ptr %i.amp, align 2, !tbaa !67
  %i.amq = load i32, ptr %i.amh, align 4, !tbaa !45
  %i.amr = lshr i32 %i.amq, 16
  %i.ams = trunc nuw i32 %i.amr to i16
  %i.amt = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 4
  store i16 %i.ams, ptr %i.amt, align 2, !tbaa !67
  %i.amu = load i32, ptr %i.ami, align 4, !tbaa !45
  %i.amv = lshr i32 %i.amu, 16
  %i.amw = trunc nuw i32 %i.amv to i16
  %i.amx = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 6
  store i16 %i.amw, ptr %i.amx, align 2, !tbaa !67
  %i.amy = getelementptr inbounds nuw [4 x i8], ptr %i.amf, i64 %i.hg ; 2 uses
  %i.amz = getelementptr inbounds nuw [4 x i8], ptr %i.amg, i64 %i.hg ; 2 uses
  %i.ana = getelementptr inbounds nuw [4 x i8], ptr %i.amh, i64 %i.hg ; 2 uses
  %i.anb = getelementptr inbounds nuw [4 x i8], ptr %i.ami, i64 %i.hg ; 2 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 8
  %i.and = load i32, ptr %i.amy, align 4, !tbaa !45
  %i.ane = lshr i32 %i.and, 16
  %i.anf = trunc nuw i32 %i.ane to i16
  store i16 %i.anf, ptr %i.anc, align 2, !tbaa !67
  %i.ang = load i32, ptr %i.amz, align 4, !tbaa !45
  %i.anh = lshr i32 %i.ang, 16
  %i.ani = trunc nuw i32 %i.anh to i16
  %i.anj = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 10
  store i16 %i.ani, ptr %i.anj, align 2, !tbaa !67
  %i.ank = load i32, ptr %i.ana, align 4, !tbaa !45
  %i.anl = lshr i32 %i.ank, 16
  %i.anm = trunc nuw i32 %i.anl to i16
  %i.ann = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 12
  store i16 %i.anm, ptr %i.ann, align 2, !tbaa !67
  %i.ano = load i32, ptr %i.anb, align 4, !tbaa !45
  %i.anp = lshr i32 %i.ano, 16
  %i.anq = trunc nuw i32 %i.anp to i16
  %i.anr = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 14
  store i16 %i.anq, ptr %i.anr, align 2, !tbaa !67
  %i.ans = getelementptr inbounds nuw [4 x i8], ptr %i.amy, i64 %i.hg ; 2 uses
  %i.ant = getelementptr inbounds nuw [4 x i8], ptr %i.amz, i64 %i.hg ; 2 uses
  %i.anu = getelementptr inbounds nuw [4 x i8], ptr %i.ana, i64 %i.hg ; 2 uses
  %i.anv = getelementptr inbounds nuw [4 x i8], ptr %i.anb, i64 %i.hg ; 2 uses
  %i.anw = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 16
  %i.anx = load i32, ptr %i.ans, align 4, !tbaa !45
  %i.any = lshr i32 %i.anx, 16
  %i.anz = trunc nuw i32 %i.any to i16
  store i16 %i.anz, ptr %i.anw, align 2, !tbaa !67
  %i.aoa = load i32, ptr %i.ant, align 4, !tbaa !45
  %i.aob = lshr i32 %i.aoa, 16
  %i.aoc = trunc nuw i32 %i.aob to i16
  %i.aod = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 18
  store i16 %i.aoc, ptr %i.aod, align 2, !tbaa !67
  %i.aoe = load i32, ptr %i.anu, align 4, !tbaa !45
  %i.aof = lshr i32 %i.aoe, 16
  %i.aog = trunc nuw i32 %i.aof to i16
  %i.aoh = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 20
  store i16 %i.aog, ptr %i.aoh, align 2, !tbaa !67
  %i.aoi = load i32, ptr %i.anv, align 4, !tbaa !45
  %i.aoj = lshr i32 %i.aoi, 16
  %i.aok = trunc nuw i32 %i.aoj to i16
  %i.aol = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 22
  store i16 %i.aok, ptr %i.aol, align 2, !tbaa !67
  %i.aom = getelementptr inbounds nuw [4 x i8], ptr %i.ans, i64 %i.hg
  %i.aon = getelementptr inbounds nuw [4 x i8], ptr %i.ant, i64 %i.hg
  %i.aoo = getelementptr inbounds nuw [4 x i8], ptr %i.anu, i64 %i.hg
  %i.aop = getelementptr inbounds nuw [4 x i8], ptr %i.anv, i64 %i.hg
  %i.aoq = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 24
  %i.aor = load i32, ptr %i.aom, align 4, !tbaa !45
  %i.aos = lshr i32 %i.aor, 16
  %i.aot = trunc nuw i32 %i.aos to i16
  store i16 %i.aot, ptr %i.aoq, align 2, !tbaa !67
  %i.aou = load i32, ptr %i.aon, align 4, !tbaa !45
  %i.aov = lshr i32 %i.aou, 16
  %i.aow = trunc nuw i32 %i.aov to i16
  %i.aox = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 26
  store i16 %i.aow, ptr %i.aox, align 2, !tbaa !67
  %i.aoy = load i32, ptr %i.aoo, align 4, !tbaa !45
  %i.aoz = lshr i32 %i.aoy, 16
  %i.apa = trunc nuw i32 %i.aoz to i16
  %i.apb = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 28
  store i16 %i.apa, ptr %i.apb, align 2, !tbaa !67
  %i.apc = load i32, ptr %i.aop, align 4, !tbaa !45
  %i.apd = lshr i32 %i.apc, 16
  %i.ape = trunc nuw i32 %i.apd to i16
  %i.apf = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 30
  store i16 %i.ape, ptr %i.apf, align 2, !tbaa !67
  %i.apg = getelementptr inbounds nuw i8, ptr %.49291281.us.i, i64 32 ; 3 uses
  %indvars.iv.next1714.i = add nuw nsw i64 %indvars.iv1713.i, 1 ; 2 uses
  %exitcond1717.not.i = icmp eq i64 %indvars.iv.next1714.i, %wide.trip.count1706.i
  br i1 %exitcond1717.not.i, label %._crit_edge1283.us.i, label %bb.aj, !llvm.loop !350

._crit_edge1283.us.i:                             ; preds = %bb.aj
  %i.aph = getelementptr inbounds nuw [4 x i8], ptr %.19461285.us.i, i64 %i.hk ; 2 uses
  %i.api = getelementptr inbounds nuw [4 x i8], ptr %.19431286.us.i, i64 %i.hk ; 2 uses
  %i.apj = getelementptr inbounds nuw [4 x i8], ptr %.19401287.us.i, i64 %i.hk ; 2 uses
  %i.apk = getelementptr inbounds nuw [4 x i8], ptr %.19371288.us.i, i64 %i.hk ; 2 uses
  %i.apl = add nuw nsw i32 %.19221290.us.i, 4     ; 3 uses
  %i.apm = or disjoint i32 %i.apl, 3
  %i.apn = icmp slt i32 %i.apm, %i.h
  br i1 %i.apn, label %.preheader1098.us.i, label %.preheader1101.i, !llvm.loop !351

.preheader1101.i:                                 ; preds = %._crit_edge1283.us.i, %.preheader1098.preheader.i, %.preheader1102.thread.i, %.preheader1102.i
  %.1946.lcssa.i = phi ptr [ %.0945.lcssa.i, %.preheader1102.i ], [ %scevgep1689.i, %.preheader1102.thread.i ], [ %scevgep1708.i, %.preheader1098.preheader.i ], [ %i.aph, %._crit_edge1283.us.i ] ; 2 uses
  %.1943.lcssa.i = phi ptr [ %.0942.lcssa.i, %.preheader1102.i ], [ %scevgep1693.i, %.preheader1102.thread.i ], [ %scevgep1709.i, %.preheader1098.preheader.i ], [ %i.api, %._crit_edge1283.us.i ] ; 2 uses
  %.1940.lcssa.i = phi ptr [ %.0939.lcssa.i, %.preheader1102.i ], [ %scevgep1697.i, %.preheader1102.thread.i ], [ %scevgep1710.i, %.preheader1098.preheader.i ], [ %i.apj, %._crit_edge1283.us.i ] ; 2 uses
  %.1937.lcssa.i = phi ptr [ %.0936.lcssa.i, %.preheader1102.i ], [ %scevgep1701.i, %.preheader1102.thread.i ], [ %scevgep1711.i, %.preheader1098.preheader.i ], [ %i.apk, %._crit_edge1283.us.i ] ; 2 uses
  %.3928.lcssa.i = phi ptr [ %.0925.lcssa.i, %.preheader1102.i ], [ %i.afk, %.preheader1102.thread.i ], [ %.0925.lcssa18981907.i, %.preheader1098.preheader.i ], [ %i.apg, %._crit_edge1283.us.i ] ; 2 uses
  %.1922.lcssa.i = phi i32 [ %.0921.lcssa.i, %.preheader1102.i ], [ %i.ib, %.preheader1102.thread.i ], [ %i.ame, %.preheader1098.preheader.i ], [ %i.apl, %._crit_edge1283.us.i ] ; 3 uses
  %i.apo = or disjoint i32 %.1922.lcssa.i, 1
  %i.app = icmp slt i32 %i.apo, %i.h
  br i1 %i.app, label %.preheader1097.lr.ph.i, label %.preheader1100.i

.preheader1097.lr.ph.i:                           ; preds = %.preheader1101.i
  br i1 %i.hf, label %.preheader1097.us.i, label %._crit_edge1337.split.i

.preheader1097.us.i:                              ; preds = %.preheader1097.lr.ph.i, %._crit_edge1311.us.i
  %.29231318.us.i = phi i32 [ %i.asj, %._crit_edge1311.us.i ], [ %.1922.lcssa.i, %.preheader1097.lr.ph.i ]
  %.69311317.us.i = phi ptr [ %.lcssa252, %._crit_edge1311.us.i ], [ %.3928.lcssa.i, %.preheader1097.lr.ph.i ] ; 3 uses
  %.29381316.us.i = phi ptr [ %i.asi, %._crit_edge1311.us.i ], [ %.1937.lcssa.i, %.preheader1097.lr.ph.i ] ; 3 uses
  %.29411315.us.i = phi ptr [ %i.ash, %._crit_edge1311.us.i ], [ %.1940.lcssa.i, %.preheader1097.lr.ph.i ] ; 3 uses
  %.29441314.us.i = phi ptr [ %i.asg, %._crit_edge1311.us.i ], [ %.1943.lcssa.i, %.preheader1097.lr.ph.i ] ; 3 uses
  %.29471313.us.i = phi ptr [ %i.asf, %._crit_edge1311.us.i ], [ %.1946.lcssa.i, %.preheader1097.lr.ph.i ] ; 3 uses
  br i1 %min.iters.check315, label %scalar.ph314.preheader, label %vector.ph316

vector.ph316:                                     ; preds = %.preheader1097.us.i
  %i.apq = getelementptr i8, ptr %.69311317.us.i, i64 %i.ii ; 2 uses
  br label %vector.body318

vector.body318:                                   ; preds = %vector.body318, %vector.ph316
  %index319 = phi i64 [ 0, %vector.ph316 ], [ %index.next330, %vector.body318 ] ; 6 uses
  %i.apr = shl i64 %index319, 4
  %next.gep320 = getelementptr i8, ptr %.69311317.us.i, i64 %i.apr
  %i.aps = getelementptr inbounds nuw [4 x i8], ptr %.29471313.us.i, i64 %index319 ; 2 uses
  %i.apt = getelementptr inbounds nuw [4 x i8], ptr %.29441314.us.i, i64 %index319 ; 2 uses
  %i.apu = getelementptr inbounds nuw [4 x i8], ptr %.29411315.us.i, i64 %index319 ; 2 uses
  %i.apv = getelementptr inbounds nuw [4 x i8], ptr %.29381316.us.i, i64 %index319 ; 2 uses
  %wide.load321 = load <4 x i32>, ptr %i.aps, align 4, !tbaa !45
  %i.apw = lshr <4 x i32> %wide.load321, splat (i32 16)
  %wide.load322 = load <4 x i32>, ptr %i.apt, align 4, !tbaa !45
  %i.apx = lshr <4 x i32> %wide.load322, splat (i32 16)
  %wide.load323 = load <4 x i32>, ptr %i.apu, align 4, !tbaa !45
  %i.apy = lshr <4 x i32> %wide.load323, splat (i32 16)
  %wide.load324 = load <4 x i32>, ptr %i.apv, align 4, !tbaa !45
  %i.apz = lshr <4 x i32> %wide.load324, splat (i32 16)
  %i.aqa = getelementptr inbounds nuw [4 x i8], ptr %i.aps, i64 %i.hg
  %i.aqb = getelementptr inbounds nuw [4 x i8], ptr %i.apt, i64 %i.hg
  %i.aqc = getelementptr inbounds nuw [4 x i8], ptr %i.apu, i64 %i.hg
  %i.aqd = getelementptr inbounds nuw [4 x i8], ptr %i.apv, i64 %i.hg
  %wide.load325 = load <4 x i32>, ptr %i.aqa, align 4, !tbaa !45
  %i.aqe = lshr <4 x i32> %wide.load325, splat (i32 16)
  %wide.load326 = load <4 x i32>, ptr %i.aqb, align 4, !tbaa !45
  %i.aqf = lshr <4 x i32> %wide.load326, splat (i32 16)
  %wide.load327 = load <4 x i32>, ptr %i.aqc, align 4, !tbaa !45
  %i.aqg = lshr <4 x i32> %wide.load327, splat (i32 16)
  %wide.load328 = load <4 x i32>, ptr %i.aqd, align 4, !tbaa !45
  %i.aqh = lshr <4 x i32> %wide.load328, splat (i32 16)
  %i.aqi = shufflevector <4 x i32> %i.apw, <4 x i32> %i.apx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aqj = shufflevector <4 x i32> %i.apy, <4 x i32> %i.apz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aqk = shufflevector <4 x i32> %i.aqe, <4 x i32> %i.aqf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aql = shufflevector <4 x i32> %i.aqg, <4 x i32> %i.aqh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aqm = shufflevector <8 x i32> %i.aqi, <8 x i32> %i.aqj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aqn = trunc nuw <16 x i32> %i.aqm to <16 x i16>
  %i.aqo = shufflevector <8 x i32> %i.aqk, <8 x i32> %i.aql, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aqp = trunc nuw <16 x i32> %i.aqo to <16 x i16>
  %interleaved.vec329 = shufflevector <16 x i16> %i.aqn, <16 x i16> %i.aqp, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x i16> %interleaved.vec329, ptr %next.gep320, align 2, !tbaa !67
  %index.next330 = add nuw i64 %index319, 4       ; 2 uses
  %i.aqq = icmp eq i64 %index.next330, %n.vec317
  br i1 %i.aqq, label %middle.block331, label %vector.body318, !llvm.loop !352

middle.block331:                                  ; preds = %vector.body318
  br i1 %cmp.n332, label %._crit_edge1311.us.i, label %scalar.ph314.preheader

scalar.ph314.preheader:                           ; preds = %.preheader1097.us.i, %middle.block331
  %indvars.iv1722.i.ph = phi i64 [ 0, %.preheader1097.us.i ], [ %n.vec317, %middle.block331 ]
  %.79321309.us.i.ph = phi ptr [ %.69311317.us.i, %.preheader1097.us.i ], [ %i.apq, %middle.block331 ]
end_hunk_6
begin_hunk_7_@_ZN4ncnn21Convolution1D_x86_fma21create_pipeline_bf16sERKNS_6OptionE:bb.a
  br label %.preheader1087.i

.preheader1087.i:                                 ; preds = %.preheader1087.loopexit.i, %.preheader1095.i
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %.preheader1095.i ], [ %i.atx, %.preheader1087.loopexit.i ] ; 3 uses
  %i.aty = icmp slt i32 %.2.lcssa.i, %i.g
  br i1 %i.aty, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i, label %_ZN4ncnnL43convolution1d_transform_kernel_packed_bf16sERKNS_3MatERS0_iii.exit

_ZN4ncnn3MatD2Ev.exit.lr.ph.i:                    ; preds = %.preheader1087.i
  %i.atz = load ptr, ptr %i.i, align 8, !tbaa !19 ; 2 uses
  %i.aua = mul i32 %i.h, %i.d                     ; 3 uses
  %i.aub = load ptr, ptr %i.j, align 8, !tbaa !19, !noalias !390
  %i.auc = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.aud = load i64, ptr %i.auc, align 8, !tbaa !20, !noalias !390
  %i.aue = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.auf = load i64, ptr %i.aue, align 8, !tbaa !44, !noalias !390
  %factor.op.mul1462.i = mul i64 %i.auf, %i.aud
  %i.aug = icmp sgt i32 %i.h, 7
  %i.auh = icmp sgt i32 %i.d, 0                   ; 3 uses
  %i.aui = sext i32 %i.d to i64                   ; 22 uses
  %i.auj = shl i32 %i.d, 3
  %i.auk = sext i32 %i.auj to i64                 ; 2 uses
  %i.aul = shl i32 %i.d, 2
  %i.aum = sext i32 %i.aul to i64                 ; 2 uses
  %i.aun = shl i32 %i.d, 1
  %i.auo = sext i32 %i.aun to i64
  %i.aup = icmp slt i32 %i.d, 1
  %i.auq = add i32 %i.h, -8                       ; 2 uses
  %i.aur = lshr i32 %i.auq, 1
  %i.aus = and i32 %i.aur, 2147483644
  %narrow1836.i = add nuw i32 %i.aus, 4
  %i.aut = zext i32 %narrow1836.i to i64
  %i.auu = mul nsw i64 %i.aut, %i.auk
  %scevgep1776.i = getelementptr i8, ptr %i.atz, i64 %i.auu
  %i.auv = mul i32 %i.aua, %.2.lcssa.i
  %i.auw = and i32 %i.auq, -8
  %i.aux = add nuw i32 %i.auw, 8                  ; 4 uses
  %i.auy = add i32 %i.h, -4
  %i.auz = sext i32 %.2.lcssa.i to i64
  %wide.trip.count1808.i = sext i32 %i.g to i64
  %i.ava = or disjoint i32 %i.aux, 3
  %i.avb = icmp slt i32 %i.ava, %i.h
  %wide.trip.count1784.i = zext i32 %i.d to i64   ; 15 uses
  %min.iters.check449 = icmp ult i32 %i.d, 4
  %n.vec451 = and i64 %wide.trip.count1784.i, 2147483644 ; 4 uses
  %i.avc = shl nuw nsw i64 %n.vec451, 4
  %cmp.n466 = icmp eq i64 %n.vec451, %wide.trip.count1784.i
  %min.iters.check432 = icmp ult i32 %i.d, 4
  %n.vec434 = and i64 %wide.trip.count1784.i, 2147483644 ; 4 uses
  %i.avd = shl nuw nsw i64 %n.vec434, 3
  %cmp.n445 = icmp eq i64 %n.vec434, %wide.trip.count1784.i
  %min.iters.check413 = icmp ult i32 %i.d, 8
  %n.vec415 = and i64 %wide.trip.count1784.i, 2147483640 ; 4 uses
  %i.ave = shl nuw nsw i64 %n.vec415, 2
  %cmp.n428 = icmp eq i64 %n.vec415, %wide.trip.count1784.i
  %min.iters.check389 = icmp ult i32 %i.d, 4
  %min.iters.check390 = icmp ult i32 %i.d, 32
  %i.avf = and i64 %wide.trip.count1784.i, 28
  %n.vec392 = and i64 %wide.trip.count1784.i, 2147483616 ; 5 uses
  %i.avg = shl nuw nsw i64 %n.vec392, 1
  %cmp.n402 = icmp eq i64 %n.vec392, %wide.trip.count1784.i
  %min.epilog.iters.check = icmp eq i64 %i.avf, 0
  %n.vec404 = and i64 %wide.trip.count1784.i, 2147483644 ; 4 uses
  %i.avh = shl nuw nsw i64 %n.vec404, 1
  %cmp.n409 = icmp eq i64 %n.vec404, %wide.trip.count1784.i
  br label %_ZN4ncnn3MatD2Ev.exit.i

_ZN4ncnn3MatD2Ev.exit1003.i:                      ; preds = %._crit_edge1400.split.i, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i
  %indvars.iv1773.i = phi i64 [ %i.aeb, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i ], [ %indvars.iv.next1774.i, %._crit_edge1400.split.i ] ; 2 uses
  %indvars.iv1745.i = phi i32 [ %i.adx, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i ], [ %indvars.iv.next1746.i, %._crit_edge1400.split.i ] ; 2 uses
  %indvars.iv1741.i = phi i32 [ %i.adv, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i ], [ %indvars.iv.next1742.i, %._crit_edge1400.split.i ] ; 2 uses
  %i.avi = phi i32 [ %i.acn, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i ], [ %i.bdv, %._crit_edge1400.split.i ]
  %i.avj = sext i32 %indvars.iv1741.i to i64
  %i.avk = shl nsw i64 %i.avj, 2
  %scevgep1743.i = getelementptr i8, ptr %scevgep1740.i, i64 %i.avk ; 2 uses
  %i.avl = sext i32 %indvars.iv1745.i to i64
  %i.avm = shl nsw i64 %i.avl, 2
  %scevgep1747.i = getelementptr i8, ptr %scevgep1740.i, i64 %i.avm ; 2 uses
  %i.avn = trunc i64 %indvars.iv1773.i to i32     ; 4 uses
  %i.avo = mul i32 %i.acq, %i.avn
  %i.avp = sext i32 %i.avo to i64
  %i.avq = getelementptr inbounds [4 x i8], ptr %i.acp, i64 %i.avp ; 2 uses
  %i.avr = mul i32 %i.avi, %i.acq
  %i.avs = sext i32 %i.avr to i64
  %i.avt = getelementptr inbounds [4 x i8], ptr %i.acp, i64 %i.avs ; 2 uses
  %i.avu = lshr i32 %i.avn, 3
  %i.avv = lshr i32 %i.avn, 2
  %i.avw = and i32 %i.avv, 1
  %i.avx = add nuw nsw i32 %i.avw, %i.avu
  %i.avy = lshr i32 %i.avn, 1
  %i.avz = and i32 %i.avy, 1
  %i.awa = add nuw nsw i32 %i.avx, %i.avz
  %i.awb = zext nneg i32 %i.awa to i64
  %.reass1404.i = mul i64 %factor.op.mul1403.i, %i.awb
  %i.awc = getelementptr inbounds nuw i8, ptr %i.acr, i64 %.reass1404.i ; 4 uses
  br i1 %i.acw, label %.preheader1091.lr.ph.i, label %.preheader1094.i

.preheader1091.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1003.i
  br i1 %i.acx, label %.preheader1091.us.i, label %.preheader1094.thread.i

.preheader1091.us.i:                              ; preds = %.preheader1091.lr.ph.i, %._crit_edge1344.us.i
  %.08621349.us.i = phi i32 [ %i.aye, %._crit_edge1344.us.i ], [ 0, %.preheader1091.lr.ph.i ]
  %.08661348.us.i = phi ptr [ %i.ayb, %._crit_edge1344.us.i ], [ %i.awc, %.preheader1091.lr.ph.i ]
  %.08751347.us.i = phi ptr [ %i.ayd, %._crit_edge1344.us.i ], [ %i.avt, %.preheader1091.lr.ph.i ] ; 2 uses
  %.08781346.us.i = phi ptr [ %i.ayc, %._crit_edge1344.us.i ], [ %i.avq, %.preheader1091.lr.ph.i ] ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.preheader1091.us.i
  %indvars.iv1748.i = phi i64 [ 0, %.preheader1091.us.i ], [ %indvars.iv.next1749.i, %bb.ak ] ; 3 uses
  %.18671342.us.i = phi ptr [ %.08661348.us.i, %.preheader1091.us.i ], [ %i.ayb, %bb.ak ] ; 2 uses
  %i.awd = getelementptr inbounds nuw [4 x i8], ptr %.08781346.us.i, i64 %indvars.iv1748.i ; 8 uses
  %i.awe = getelementptr inbounds nuw [4 x i8], ptr %.08751347.us.i, i64 %indvars.iv1748.i ; 8 uses
  %i.awf = load i32, ptr %i.awd, align 4, !tbaa !45
  %i.awg = getelementptr inbounds nuw [4 x i8], ptr %i.awd, i64 %i.acy
  %i.awh = load i32, ptr %i.awg, align 4, !tbaa !45
  %i.awi = getelementptr inbounds nuw [4 x i8], ptr %i.awd, i64 %i.ada
  %i.awj = load i32, ptr %i.awi, align 4, !tbaa !45
  %i.awk = getelementptr inbounds nuw [4 x i8], ptr %i.awd, i64 %i.adc
  %i.awl = load i32, ptr %i.awk, align 4, !tbaa !45
  %i.awm = getelementptr inbounds nuw [4 x i8], ptr %i.awd, i64 %i.ade
  %i.awn = load i32, ptr %i.awm, align 4, !tbaa !45
  %i.awo = getelementptr inbounds nuw [4 x i8], ptr %i.awd, i64 %i.adg
  %i.awp = load i32, ptr %i.awo, align 4, !tbaa !45
  %i.awq = getelementptr inbounds nuw [4 x i8], ptr %i.awd, i64 %i.adi
  %i.awr = load i32, ptr %i.awq, align 4, !tbaa !45
  %i.aws = getelementptr inbounds nuw [4 x i8], ptr %i.awd, i64 %i.adk
  %i.awt = load i32, ptr %i.aws, align 4, !tbaa !45
  %i.awu = load i32, ptr %i.awe, align 4, !tbaa !45
  %i.awv = getelementptr inbounds nuw [4 x i8], ptr %i.awe, i64 %i.acy
  %i.aww = load i32, ptr %i.awv, align 4, !tbaa !45
  %i.awx = getelementptr inbounds nuw [4 x i8], ptr %i.awe, i64 %i.ada
  %i.awy = load i32, ptr %i.awx, align 4, !tbaa !45
  %i.awz = getelementptr inbounds nuw [4 x i8], ptr %i.awe, i64 %i.adc
  %i.axa = load i32, ptr %i.awz, align 4, !tbaa !45
  %i.axb = getelementptr inbounds nuw [4 x i8], ptr %i.awe, i64 %i.ade
  %i.axc = load i32, ptr %i.axb, align 4, !tbaa !45
  %i.axd = getelementptr inbounds nuw [4 x i8], ptr %i.awe, i64 %i.adg
  %i.axe = load i32, ptr %i.axd, align 4, !tbaa !45
  %i.axf = getelementptr inbounds nuw [4 x i8], ptr %i.awe, i64 %i.adi
  %i.axg = load i32, ptr %i.axf, align 4, !tbaa !45
  %i.axh = getelementptr inbounds nuw [4 x i8], ptr %i.awe, i64 %i.adk
  %i.axi = load i32, ptr %i.axh, align 4, !tbaa !45
  %i.axj = insertelement <16 x i32> poison, i32 %i.awf, i64 0
  %i.axk = insertelement <16 x i32> %i.axj, i32 %i.awh, i64 1
  %i.axl = insertelement <16 x i32> %i.axk, i32 %i.awj, i64 2
  %i.axm = insertelement <16 x i32> %i.axl, i32 %i.awl, i64 3
  %i.axn = insertelement <16 x i32> %i.axm, i32 %i.awn, i64 4
  %i.axo = insertelement <16 x i32> %i.axn, i32 %i.awp, i64 5
  %i.axp = insertelement <16 x i32> %i.axo, i32 %i.awr, i64 6
  %i.axq = insertelement <16 x i32> %i.axp, i32 %i.awt, i64 7
  %i.axr = insertelement <16 x i32> %i.axq, i32 %i.awu, i64 8
  %i.axs = insertelement <16 x i32> %i.axr, i32 %i.aww, i64 9
  %i.axt = insertelement <16 x i32> %i.axs, i32 %i.awy, i64 10
  %i.axu = insertelement <16 x i32> %i.axt, i32 %i.axa, i64 11
  %i.axv = insertelement <16 x i32> %i.axu, i32 %i.axc, i64 12
  %i.axw = insertelement <16 x i32> %i.axv, i32 %i.axe, i64 13
  %i.axx = insertelement <16 x i32> %i.axw, i32 %i.axg, i64 14
  %i.axy = insertelement <16 x i32> %i.axx, i32 %i.axi, i64 15
  %i.axz = lshr <16 x i32> %i.axy, splat (i32 16)
  %i.aya = trunc nuw <16 x i32> %i.axz to <16 x i16>
  store <16 x i16> %i.aya, ptr %.18671342.us.i, align 2, !tbaa !67
  %i.ayb = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 32 ; 3 uses
  %indvars.iv.next1749.i = add nuw nsw i64 %indvars.iv1748.i, 1 ; 2 uses
  %exitcond1752.not.i = icmp eq i64 %indvars.iv.next1749.i, %wide.trip.count1751.i
  br i1 %exitcond1752.not.i, label %._crit_edge1344.us.i, label %bb.ak, !llvm.loop !361

._crit_edge1344.us.i:                             ; preds = %bb.ak
  %i.ayc = getelementptr inbounds nuw [4 x i8], ptr %.08781346.us.i, i64 %i.adm ; 2 uses
  %i.ayd = getelementptr inbounds nuw [4 x i8], ptr %.08751347.us.i, i64 %i.adm ; 2 uses
  %i.aye = add nuw nsw i32 %.08621349.us.i, 8     ; 2 uses
  %i.ayf = or disjoint i32 %i.aye, 7
  %i.ayg = icmp slt i32 %i.ayf, %i.h
  br i1 %i.ayg, label %.preheader1091.us.i, label %.preheader1094.i, !llvm.loop !362

.preheader1094.i:                                 ; preds = %._crit_edge1344.us.i, %_ZN4ncnn3MatD2Ev.exit1003.i
  %.0878.lcssa.i = phi ptr [ %i.avq, %_ZN4ncnn3MatD2Ev.exit1003.i ], [ %i.ayc, %._crit_edge1344.us.i ] ; 3 uses
  %.0875.lcssa.i = phi ptr [ %i.avt, %_ZN4ncnn3MatD2Ev.exit1003.i ], [ %i.ayd, %._crit_edge1344.us.i ] ; 3 uses
  %.0866.lcssa.i = phi ptr [ %i.awc, %_ZN4ncnn3MatD2Ev.exit1003.i ], [ %i.ayb, %._crit_edge1344.us.i ] ; 3 uses
  %.0862.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1003.i ], [ %i.adz, %._crit_edge1344.us.i ] ; 4 uses
  %i.ayh = or disjoint i32 %.0862.lcssa.i, 3
  %i.ayi = icmp slt i32 %i.ayh, %i.h
  br i1 %i.ayi, label %.preheader1090.lr.ph.i, label %.preheader1093.i

.preheader1094.thread.i:                          ; preds = %.preheader1091.lr.ph.i
  br i1 %i.aee, label %.preheader1090.preheader.i, label %.preheader1093.i

.preheader1090.lr.ph.i:                           ; preds = %.preheader1094.i
  br i1 %i.acx, label %.preheader1090.us.i, label %.preheader1090.preheader.i

.preheader1090.preheader.i:                       ; preds = %.preheader1090.lr.ph.i, %.preheader1094.thread.i
  %.0878.lcssa19231934.i = phi ptr [ %.0878.lcssa.i, %.preheader1090.lr.ph.i ], [ %scevgep1743.i, %.preheader1094.thread.i ]
  %.0875.lcssa19241933.i = phi ptr [ %.0875.lcssa.i, %.preheader1090.lr.ph.i ], [ %scevgep1747.i, %.preheader1094.thread.i ]
  %.0866.lcssa19251932.i = phi ptr [ %.0866.lcssa.i, %.preheader1090.lr.ph.i ], [ %i.awc, %.preheader1094.thread.i ]
  %.0862.lcssa19261931.i = phi i32 [ %.0862.lcssa.i, %.preheader1090.lr.ph.i ], [ %i.adz, %.preheader1094.thread.i ] ; 2 uses
  %i.ayj = sub i32 %i.aea, %.0862.lcssa19261931.i
  %i.ayk = and i32 %i.ayj, -4                     ; 2 uses
  %i.ayl = zext i32 %i.ayk to i64
  %i.aym = add nuw nsw i64 %i.ayl, 4
  %i.ayn = mul nsw i64 %i.aym, %i.adn             ; 2 uses
  %scevgep1753.i = getelementptr i8, ptr %.0878.lcssa19231934.i, i64 %i.ayn
  %scevgep1754.i = getelementptr i8, ptr %.0875.lcssa19241933.i, i64 %i.ayn
  %i.ayo = add i32 %.0862.lcssa19261931.i, 4
  %i.ayp = add i32 %i.ayo, %i.ayk
  br label %.preheader1093.i

.preheader1090.us.i:                              ; preds = %.preheader1090.lr.ph.i, %._crit_edge1360.us.i
  %.18631365.us.i = phi i32 [ %i.bbh, %._crit_edge1360.us.i ], [ %.0862.lcssa.i, %.preheader1090.lr.ph.i ]
  %.28681364.us.i = phi ptr [ %.lcssa232, %._crit_edge1360.us.i ], [ %.0866.lcssa.i, %.preheader1090.lr.ph.i ] ; 3 uses
  %.18761363.us.i = phi ptr [ %i.bbg, %._crit_edge1360.us.i ], [ %.0875.lcssa.i, %.preheader1090.lr.ph.i ] ; 3 uses
  %.18791362.us.i = phi ptr [ %i.bbf, %._crit_edge1360.us.i ], [ %.0878.lcssa.i, %.preheader1090.lr.ph.i ] ; 3 uses
  br i1 %min.iters.check368, label %scalar.ph367.preheader, label %vector.ph369

vector.ph369:                                     ; preds = %.preheader1090.us.i
  %i.ayq = getelementptr i8, ptr %.28681364.us.i, i64 %i.aef ; 2 uses
  br label %vector.body371

vector.body371:                                   ; preds = %vector.body371, %vector.ph369
  %index372 = phi i64 [ 0, %vector.ph369 ], [ %index.next383, %vector.body371 ] ; 4 uses
  %i.ayr = shl i64 %index372, 4
  %next.gep373 = getelementptr i8, ptr %.28681364.us.i, i64 %i.ayr
  %i.ays = getelementptr inbounds nuw [4 x i8], ptr %.18791362.us.i, i64 %index372 ; 4 uses
  %i.ayt = getelementptr inbounds nuw [4 x i8], ptr %.18761363.us.i, i64 %index372 ; 4 uses
  %wide.load374 = load <4 x i32>, ptr %i.ays, align 4, !tbaa !45
  %i.ayu = lshr <4 x i32> %wide.load374, splat (i32 16)
  %i.ayv = getelementptr inbounds nuw [4 x i8], ptr %i.ays, i64 %i.acy
  %wide.load375 = load <4 x i32>, ptr %i.ayv, align 4, !tbaa !45
  %i.ayw = lshr <4 x i32> %wide.load375, splat (i32 16)
  %i.ayx = getelementptr inbounds nuw [4 x i8], ptr %i.ays, i64 %i.ada
  %wide.load376 = load <4 x i32>, ptr %i.ayx, align 4, !tbaa !45
  %i.ayy = lshr <4 x i32> %wide.load376, splat (i32 16)
  %i.ayz = getelementptr inbounds nuw [4 x i8], ptr %i.ays, i64 %i.adc
  %wide.load377 = load <4 x i32>, ptr %i.ayz, align 4, !tbaa !45
  %i.aza = lshr <4 x i32> %wide.load377, splat (i32 16)
  %wide.load378 = load <4 x i32>, ptr %i.ayt, align 4, !tbaa !45
  %i.azb = lshr <4 x i32> %wide.load378, splat (i32 16)
  %i.azc = getelementptr inbounds nuw [4 x i8], ptr %i.ayt, i64 %i.acy
  %wide.load379 = load <4 x i32>, ptr %i.azc, align 4, !tbaa !45
  %i.azd = lshr <4 x i32> %wide.load379, splat (i32 16)
  %i.aze = getelementptr inbounds nuw [4 x i8], ptr %i.ayt, i64 %i.ada
  %wide.load380 = load <4 x i32>, ptr %i.aze, align 4, !tbaa !45
  %i.azf = lshr <4 x i32> %wide.load380, splat (i32 16)
  %i.azg = getelementptr inbounds nuw [4 x i8], ptr %i.ayt, i64 %i.adc
  %wide.load381 = load <4 x i32>, ptr %i.azg, align 4, !tbaa !45
  %i.azh = lshr <4 x i32> %wide.load381, splat (i32 16)
  %i.azi = shufflevector <4 x i32> %i.ayu, <4 x i32> %i.ayw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.azj = shufflevector <4 x i32> %i.ayy, <4 x i32> %i.aza, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.azk = shufflevector <4 x i32> %i.azb, <4 x i32> %i.azd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.azl = shufflevector <4 x i32> %i.azf, <4 x i32> %i.azh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.azm = shufflevector <8 x i32> %i.azi, <8 x i32> %i.azj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.azn = trunc nuw <16 x i32> %i.azm to <16 x i16>
  %i.azo = shufflevector <8 x i32> %i.azk, <8 x i32> %i.azl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.azp = trunc nuw <16 x i32> %i.azo to <16 x i16>
  %interleaved.vec382 = shufflevector <16 x i16> %i.azn, <16 x i16> %i.azp, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x i16> %interleaved.vec382, ptr %next.gep373, align 2, !tbaa !67
  %index.next383 = add nuw i64 %index372, 4       ; 2 uses
  %i.azq = icmp eq i64 %index.next383, %n.vec370
  br i1 %i.azq, label %middle.block384, label %vector.body371, !llvm.loop !363

middle.block384:                                  ; preds = %vector.body371
  br i1 %cmp.n385, label %._crit_edge1360.us.i, label %scalar.ph367.preheader

scalar.ph367.preheader:                           ; preds = %.preheader1090.us.i, %middle.block384
  %indvars.iv1755.i.ph = phi i64 [ 0, %.preheader1090.us.i ], [ %n.vec370, %middle.block384 ]
  %.38691358.us.i.ph = phi ptr [ %.28681364.us.i, %.preheader1090.us.i ], [ %i.ayq, %middle.block384 ]
  br label %scalar.ph367

scalar.ph367:                                     ; preds = %scalar.ph367.preheader, %scalar.ph367
  %indvars.iv1755.i = phi i64 [ %indvars.iv.next1756.i, %scalar.ph367 ], [ %indvars.iv1755.i.ph, %scalar.ph367.preheader ] ; 3 uses
  %.38691358.us.i = phi ptr [ %i.bbe, %scalar.ph367 ], [ %.38691358.us.i.ph, %scalar.ph367.preheader ] ; 9 uses
  %i.azr = getelementptr inbounds nuw [4 x i8], ptr %.18791362.us.i, i64 %indvars.iv1755.i ; 4 uses
  %i.azs = getelementptr inbounds nuw [4 x i8], ptr %.18761363.us.i, i64 %indvars.iv1755.i ; 4 uses
  %i.azt = load i32, ptr %i.azr, align 4, !tbaa !45
  %i.azu = lshr i32 %i.azt, 16
  %i.azv = trunc nuw i32 %i.azu to i16
  store i16 %i.azv, ptr %.38691358.us.i, align 2, !tbaa !67
  %i.azw = getelementptr inbounds nuw [4 x i8], ptr %i.azr, i64 %i.acy
  %i.azx = load i32, ptr %i.azw, align 4, !tbaa !45
  %i.azy = lshr i32 %i.azx, 16
  %i.azz = trunc nuw i32 %i.azy to i16
  %i.baa = getelementptr inbounds nuw i8, ptr %.38691358.us.i, i64 2
  store i16 %i.azz, ptr %i.baa, align 2, !tbaa !67
  %i.bab = getelementptr inbounds nuw [4 x i8], ptr %i.azr, i64 %i.ada
  %i.bac = load i32, ptr %i.bab, align 4, !tbaa !45
  %i.bad = lshr i32 %i.bac, 16
  %i.bae = trunc nuw i32 %i.bad to i16
  %i.baf = getelementptr inbounds nuw i8, ptr %.38691358.us.i, i64 4
  store i16 %i.bae, ptr %i.baf, align 2, !tbaa !67
  %i.bag = getelementptr inbounds nuw [4 x i8], ptr %i.azr, i64 %i.adc
  %i.bah = load i32, ptr %i.bag, align 4, !tbaa !45
  %i.bai = lshr i32 %i.bah, 16
  %i.baj = trunc nuw i32 %i.bai to i16
  %i.bak = getelementptr inbounds nuw i8, ptr %.38691358.us.i, i64 6
  store i16 %i.baj, ptr %i.bak, align 2, !tbaa !67
  %i.bal = load i32, ptr %i.azs, align 4, !tbaa !45
  %i.bam = lshr i32 %i.bal, 16
  %i.ban = trunc nuw i32 %i.bam to i16
  %i.bao = getelementptr inbounds nuw i8, ptr %.38691358.us.i, i64 8
  store i16 %i.ban, ptr %i.bao, align 2, !tbaa !67
  %i.bap = getelementptr inbounds nuw [4 x i8], ptr %i.azs, i64 %i.acy
  %i.baq = load i32, ptr %i.bap, align 4, !tbaa !45
  %i.bar = lshr i32 %i.baq, 16
  %i.bas = trunc nuw i32 %i.bar to i16
  %i.bat = getelementptr inbounds nuw i8, ptr %.38691358.us.i, i64 10
  store i16 %i.bas, ptr %i.bat, align 2, !tbaa !67
  %i.bau = getelementptr inbounds nuw [4 x i8], ptr %i.azs, i64 %i.ada
  %i.bav = load i32, ptr %i.bau, align 4, !tbaa !45
  %i.baw = lshr i32 %i.bav, 16
  %i.bax = trunc nuw i32 %i.baw to i16
  %i.bay = getelementptr inbounds nuw i8, ptr %.38691358.us.i, i64 12
  store i16 %i.bax, ptr %i.bay, align 2, !tbaa !67
  %i.baz = getelementptr inbounds nuw [4 x i8], ptr %i.azs, i64 %i.adc
  %i.bba = load i32, ptr %i.baz, align 4, !tbaa !45
  %i.bbb = lshr i32 %i.bba, 16
  %i.bbc = trunc nuw i32 %i.bbb to i16
  %i.bbd = getelementptr inbounds nuw i8, ptr %.38691358.us.i, i64 14
  store i16 %i.bbc, ptr %i.bbd, align 2, !tbaa !67
  %i.bbe = getelementptr inbounds nuw i8, ptr %.38691358.us.i, i64 16 ; 2 uses
  %indvars.iv.next1756.i = add nuw nsw i64 %indvars.iv1755.i, 1 ; 2 uses
  %exitcond1759.not.i = icmp eq i64 %indvars.iv.next1756.i, %wide.trip.count1751.i
  br i1 %exitcond1759.not.i, label %._crit_edge1360.us.i, label %scalar.ph367, !llvm.loop !364

._crit_edge1360.us.i:                             ; preds = %scalar.ph367, %middle.block384
  %.lcssa232 = phi ptr [ %i.ayq, %middle.block384 ], [ %i.bbe, %scalar.ph367 ] ; 2 uses
  %i.bbf = getelementptr inbounds nuw [4 x i8], ptr %.18791362.us.i, i64 %i.adn ; 2 uses
  %i.bbg = getelementptr inbounds nuw [4 x i8], ptr %.18761363.us.i, i64 %i.adn ; 2 uses
  %i.bbh = add nuw nsw i32 %.18631365.us.i, 4     ; 3 uses
  %i.bbi = or disjoint i32 %i.bbh, 3
  %i.bbj = icmp slt i32 %i.bbi, %i.h
  br i1 %i.bbj, label %.preheader1090.us.i, label %.preheader1093.i, !llvm.loop !365

.preheader1093.i:                                 ; preds = %._crit_edge1360.us.i, %.preheader1090.preheader.i, %.preheader1094.thread.i, %.preheader1094.i
  %.1879.lcssa.i = phi ptr [ %.0878.lcssa.i, %.preheader1094.i ], [ %scevgep1743.i, %.preheader1094.thread.i ], [ %scevgep1753.i, %.preheader1090.preheader.i ], [ %i.bbf, %._crit_edge1360.us.i ] ; 2 uses
  %.1876.lcssa.i = phi ptr [ %.0875.lcssa.i, %.preheader1094.i ], [ %scevgep1747.i, %.preheader1094.thread.i ], [ %scevgep1754.i, %.preheader1090.preheader.i ], [ %i.bbg, %._crit_edge1360.us.i ] ; 2 uses
  %.2868.lcssa.i = phi ptr [ %.0866.lcssa.i, %.preheader1094.i ], [ %i.awc, %.preheader1094.thread.i ], [ %.0866.lcssa19251932.i, %.preheader1090.preheader.i ], [ %.lcssa232, %._crit_edge1360.us.i ] ; 2 uses
  %.1863.lcssa.i = phi i32 [ %.0862.lcssa.i, %.preheader1094.i ], [ %i.adz, %.preheader1094.thread.i ], [ %i.ayp, %.preheader1090.preheader.i ], [ %i.bbh, %._crit_edge1360.us.i ] ; 3 uses
  %i.bbk = or disjoint i32 %.1863.lcssa.i, 1
  %i.bbl = icmp slt i32 %i.bbk, %i.h
  br i1 %i.bbl, label %.preheader1089.lr.ph.i, label %.preheader1092.i

.preheader1089.lr.ph.i:                           ; preds = %.preheader1093.i
  br i1 %i.acx, label %.preheader1089.us.i, label %._crit_edge1400.split.i

.preheader1089.us.i:                              ; preds = %.preheader1089.lr.ph.i, %._crit_edge1380.us.i
  %.28641385.us.i = phi i32 [ %i.bcw, %._crit_edge1380.us.i ], [ %.1863.lcssa.i, %.preheader1089.lr.ph.i ]
  %.48701384.us.i = phi ptr [ %.lcssa236, %._crit_edge1380.us.i ], [ %.2868.lcssa.i, %.preheader1089.lr.ph.i ] ; 3 uses
  %.28771383.us.i = phi ptr [ %i.bcv, %._crit_edge1380.us.i ], [ %.1876.lcssa.i, %.preheader1089.lr.ph.i ] ; 3 uses
  %.28801382.us.i = phi ptr [ %i.bcu, %._crit_edge1380.us.i ], [ %.1879.lcssa.i, %.preheader1089.lr.ph.i ] ; 3 uses
  br i1 %min.iters.check351, label %scalar.ph350.preheader, label %vector.ph352

vector.ph352:                                     ; preds = %.preheader1089.us.i
  %i.bbm = getelementptr i8, ptr %.48701384.us.i, i64 %i.aeg ; 2 uses
  br label %vector.body354

vector.body354:                                   ; preds = %vector.body354, %vector.ph352
  %index355 = phi i64 [ 0, %vector.ph352 ], [ %index.next362, %vector.body354 ] ; 4 uses
  %i.bbn = shl i64 %index355, 3
  %next.gep356 = getelementptr i8, ptr %.48701384.us.i, i64 %i.bbn
  %i.bbo = getelementptr inbounds nuw [4 x i8], ptr %.28801382.us.i, i64 %index355 ; 2 uses
  %i.bbp = getelementptr inbounds nuw [4 x i8], ptr %.28771383.us.i, i64 %index355 ; 2 uses
  %wide.load357 = load <4 x i32>, ptr %i.bbo, align 4, !tbaa !45
  %i.bbq = lshr <4 x i32> %wide.load357, splat (i32 16)
  %wide.load358 = load <4 x i32>, ptr %i.bbp, align 4, !tbaa !45
  %i.bbr = lshr <4 x i32> %wide.load358, splat (i32 16)
  %i.bbs = getelementptr inbounds nuw [4 x i8], ptr %i.bbo, i64 %i.acy
  %i.bbt = getelementptr inbounds nuw [4 x i8], ptr %i.bbp, i64 %i.acy
  %wide.load359 = load <4 x i32>, ptr %i.bbs, align 4, !tbaa !45
  %i.bbu = lshr <4 x i32> %wide.load359, splat (i32 16)
  %wide.load360 = load <4 x i32>, ptr %i.bbt, align 4, !tbaa !45
  %i.bbv = lshr <4 x i32> %wide.load360, splat (i32 16)
  %i.bbw = shufflevector <4 x i32> %i.bbq, <4 x i32> %i.bbr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bbx = shufflevector <4 x i32> %i.bbu, <4 x i32> %i.bbv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bby = shufflevector <8 x i32> %i.bbw, <8 x i32> %i.bbx, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %interleaved.vec361 = trunc nuw <16 x i32> %i.bby to <16 x i16>
  store <16 x i16> %interleaved.vec361, ptr %next.gep356, align 2, !tbaa !67
  %index.next362 = add nuw i64 %index355, 4       ; 2 uses
  %i.bbz = icmp eq i64 %index.next362, %n.vec353
  br i1 %i.bbz, label %middle.block363, label %vector.body354, !llvm.loop !366

middle.block363:                                  ; preds = %vector.body354
  br i1 %cmp.n364, label %._crit_edge1380.us.i, label %scalar.ph350.preheader

scalar.ph350.preheader:                           ; preds = %.preheader1089.us.i, %middle.block363
  %indvars.iv1762.i.ph = phi i64 [ 0, %.preheader1089.us.i ], [ %n.vec353, %middle.block363 ]
  %.58711378.us.i.ph = phi ptr [ %.48701384.us.i, %.preheader1089.us.i ], [ %i.bbm, %middle.block363 ]
  br label %scalar.ph350

scalar.ph350:                                     ; preds = %scalar.ph350.preheader, %scalar.ph350
  %indvars.iv1762.i = phi i64 [ %indvars.iv.next1763.i, %scalar.ph350 ], [ %indvars.iv1762.i.ph, %scalar.ph350.preheader ] ; 3 uses
  %.58711378.us.i = phi ptr [ %i.bct, %scalar.ph350 ], [ %.58711378.us.i.ph, %scalar.ph350.preheader ] ; 5 uses
  %i.bca = getelementptr inbounds nuw [4 x i8], ptr %.28801382.us.i, i64 %indvars.iv1762.i ; 2 uses
  %i.bcb = getelementptr inbounds nuw [4 x i8], ptr %.28771383.us.i, i64 %indvars.iv1762.i ; 2 uses
  %i.bcc = load i32, ptr %i.bca, align 4, !tbaa !45
  %i.bcd = lshr i32 %i.bcc, 16
  %i.bce = trunc nuw i32 %i.bcd to i16
  store i16 %i.bce, ptr %.58711378.us.i, align 2, !tbaa !67
  %i.bcf = load i32, ptr %i.bcb, align 4, !tbaa !45
  %i.bcg = lshr i32 %i.bcf, 16
  %i.bch = trunc nuw i32 %i.bcg to i16
  %i.bci = getelementptr inbounds nuw i8, ptr %.58711378.us.i, i64 2
  store i16 %i.bch, ptr %i.bci, align 2, !tbaa !67
  %i.bcj = getelementptr inbounds nuw [4 x i8], ptr %i.bca, i64 %i.acy
  %i.bck = getelementptr inbounds nuw [4 x i8], ptr %i.bcb, i64 %i.acy
end_hunk_7
begin_hunk_8_@_ZN4ncnn21Convolution1D_x86_fma21create_pipeline_bf16sERKNS_6OptionE:bb.a
  %.88741394.i = phi ptr [ %i.bds, %scalar.ph335 ], [ %.88741394.i.ph, %scalar.ph335.preheader ] ; 3 uses
  %i.bdj = getelementptr inbounds nuw [4 x i8], ptr %.2880.lcssa.i, i64 %indvars.iv1767.i
  %i.bdk = getelementptr inbounds nuw [4 x i8], ptr %.2877.lcssa.i, i64 %indvars.iv1767.i
  %i.bdl = load i32, ptr %i.bdj, align 4, !tbaa !45
  %i.bdm = lshr i32 %i.bdl, 16
  %i.bdn = trunc nuw i32 %i.bdm to i16
  store i16 %i.bdn, ptr %.88741394.i, align 2, !tbaa !67
  %i.bdo = load i32, ptr %i.bdk, align 4, !tbaa !45
  %i.bdp = lshr i32 %i.bdo, 16
  %i.bdq = trunc nuw i32 %i.bdp to i16
  %i.bdr = getelementptr inbounds nuw i8, ptr %.88741394.i, i64 2
  store i16 %i.bdq, ptr %i.bdr, align 2, !tbaa !67
  %i.bds = getelementptr inbounds nuw i8, ptr %.88741394.i, i64 4 ; 2 uses
  %indvars.iv.next1768.i = add nuw nsw i64 %indvars.iv1767.i, 1 ; 2 uses
  %exitcond1771.not.i = icmp eq i64 %indvars.iv.next1768.i, %wide.trip.count1751.i
  br i1 %exitcond1771.not.i, label %._crit_edge1396.i, label %scalar.ph335, !llvm.loop !371

._crit_edge1400.split.i:                          ; preds = %._crit_edge1396.i, %.preheader1092.i, %.preheader1089.lr.ph.i
  %indvars.iv.next1774.i = add nuw nsw i64 %indvars.iv1773.i, 2 ; 3 uses
  %i.bdt = or disjoint i64 %indvars.iv.next1774.i, 1 ; 2 uses
  %i.bdu = icmp slt i64 %i.bdt, %i.aec
  %indvars.iv.next1742.i = add i32 %indvars.iv1741.i, %i.adw
  %indvars.iv.next1746.i = add i32 %indvars.iv1745.i, %i.adw
  %i.bdv = trunc nsw i64 %i.bdt to i32
  br i1 %i.bdu, label %_ZN4ncnn3MatD2Ev.exit1003.i, label %.preheader1087.loopexit.i, !llvm.loop !372

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %._crit_edge1459.split.i, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i
  %indvars.iv1805.i = phi i64 [ %i.auz, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i ], [ %indvars.iv.next1806.i, %._crit_edge1459.split.i ] ; 2 uses
  %indvars.iv1777.i = phi i32 [ %i.auv, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i ], [ %indvars.iv.next1778.i, %._crit_edge1459.split.i ] ; 2 uses
  %i.bdw = sext i32 %indvars.iv1777.i to i64
  %i.bdx = shl nsw i64 %i.bdw, 2
  %scevgep1779.i = getelementptr i8, ptr %scevgep1776.i, i64 %i.bdx ; 2 uses
  %i.bdy = trunc nsw i64 %indvars.iv1805.i to i32 ; 5 uses
  %i.bdz = mul i32 %i.aua, %i.bdy
  %i.bea = sext i32 %i.bdz to i64
  %i.beb = getelementptr inbounds [4 x i8], ptr %i.atz, i64 %i.bea ; 2 uses
  %i.bec = lshr i32 %i.bdy, 3
  %i.bed = lshr i32 %i.bdy, 2
  %i.bee = and i32 %i.bed, 1
  %i.bef = lshr i32 %i.bdy, 1
  %i.beg = and i32 %i.bef, 1
  %i.beh = and i32 %i.bdy, 1
  %i.bei = add nuw nsw i32 %i.beh, %i.bec
  %i.bej = add nuw nsw i32 %i.bei, %i.bee
  %i.bek = add nuw nsw i32 %i.bej, %i.beg
  %i.bel = zext nneg i32 %i.bek to i64
  %.reass1463.i = mul i64 %factor.op.mul1462.i, %i.bel
  %i.bem = getelementptr inbounds nuw i8, ptr %i.aub, i64 %.reass1463.i ; 4 uses
  br i1 %i.aug, label %.preheader1083.lr.ph.i, label %.preheader1086.i

.preheader1083.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit.i
  br i1 %i.auh, label %.preheader1083.us.i, label %.preheader1086.thread.i

.preheader1083.us.i:                              ; preds = %.preheader1083.lr.ph.i, %._crit_edge1410.us.i
  %.08261414.us.i = phi i32 [ %i.bhd, %._crit_edge1410.us.i ], [ 0, %.preheader1083.lr.ph.i ]
  %.08301413.us.i = phi ptr [ %.lcssa, %._crit_edge1410.us.i ], [ %i.bem, %.preheader1083.lr.ph.i ] ; 3 uses
  %.08341412.us.i = phi ptr [ %i.bhc, %._crit_edge1410.us.i ], [ %i.beb, %.preheader1083.lr.ph.i ] ; 3 uses
  br i1 %min.iters.check449, label %scalar.ph448.preheader, label %vector.ph450

vector.ph450:                                     ; preds = %.preheader1083.us.i
  %i.ben = getelementptr i8, ptr %.08301413.us.i, i64 %i.avc ; 2 uses
  br label %vector.body452

vector.body452:                                   ; preds = %vector.body452, %vector.ph450
  %index453 = phi i64 [ 0, %vector.ph450 ], [ %index.next464, %vector.body452 ] ; 3 uses
  %i.beo = shl i64 %index453, 4
  %next.gep454 = getelementptr i8, ptr %.08301413.us.i, i64 %i.beo
  %i.bep = getelementptr inbounds nuw [4 x i8], ptr %.08341412.us.i, i64 %index453 ; 2 uses
  %wide.load455 = load <4 x i32>, ptr %i.bep, align 4, !tbaa !45
  %i.beq = lshr <4 x i32> %wide.load455, splat (i32 16)
  %i.ber = getelementptr inbounds nuw [4 x i8], ptr %i.bep, i64 %i.aui ; 2 uses
  %wide.load456 = load <4 x i32>, ptr %i.ber, align 4, !tbaa !45
  %i.bes = lshr <4 x i32> %wide.load456, splat (i32 16)
  %i.bet = getelementptr inbounds nuw [4 x i8], ptr %i.ber, i64 %i.aui ; 2 uses
  %wide.load457 = load <4 x i32>, ptr %i.bet, align 4, !tbaa !45
  %i.beu = lshr <4 x i32> %wide.load457, splat (i32 16)
  %i.bev = getelementptr inbounds nuw [4 x i8], ptr %i.bet, i64 %i.aui ; 2 uses
  %wide.load458 = load <4 x i32>, ptr %i.bev, align 4, !tbaa !45
  %i.bew = lshr <4 x i32> %wide.load458, splat (i32 16)
  %i.bex = getelementptr inbounds nuw [4 x i8], ptr %i.bev, i64 %i.aui ; 2 uses
  %wide.load459 = load <4 x i32>, ptr %i.bex, align 4, !tbaa !45
  %i.bey = lshr <4 x i32> %wide.load459, splat (i32 16)
  %i.bez = getelementptr inbounds nuw [4 x i8], ptr %i.bex, i64 %i.aui ; 2 uses
  %wide.load460 = load <4 x i32>, ptr %i.bez, align 4, !tbaa !45
  %i.bfa = lshr <4 x i32> %wide.load460, splat (i32 16)
  %i.bfb = getelementptr inbounds nuw [4 x i8], ptr %i.bez, i64 %i.aui ; 2 uses
  %wide.load461 = load <4 x i32>, ptr %i.bfb, align 4, !tbaa !45
  %i.bfc = lshr <4 x i32> %wide.load461, splat (i32 16)
  %i.bfd = getelementptr inbounds nuw [4 x i8], ptr %i.bfb, i64 %i.aui
  %wide.load462 = load <4 x i32>, ptr %i.bfd, align 4, !tbaa !45
  %i.bfe = lshr <4 x i32> %wide.load462, splat (i32 16)
  %i.bff = shufflevector <4 x i32> %i.beq, <4 x i32> %i.bes, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bfg = shufflevector <4 x i32> %i.beu, <4 x i32> %i.bew, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bfh = shufflevector <4 x i32> %i.bey, <4 x i32> %i.bfa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bfi = shufflevector <4 x i32> %i.bfc, <4 x i32> %i.bfe, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bfj = shufflevector <8 x i32> %i.bff, <8 x i32> %i.bfg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bfk = trunc nuw <16 x i32> %i.bfj to <16 x i16>
  %i.bfl = shufflevector <8 x i32> %i.bfh, <8 x i32> %i.bfi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bfm = trunc nuw <16 x i32> %i.bfl to <16 x i16>
  %interleaved.vec463 = shufflevector <16 x i16> %i.bfk, <16 x i16> %i.bfm, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x i16> %interleaved.vec463, ptr %next.gep454, align 2, !tbaa !67
  %index.next464 = add nuw i64 %index453, 4       ; 2 uses
  %i.bfn = icmp eq i64 %index.next464, %n.vec451
  br i1 %i.bfn, label %middle.block465, label %vector.body452, !llvm.loop !373

middle.block465:                                  ; preds = %vector.body452
  br i1 %cmp.n466, label %._crit_edge1410.us.i, label %scalar.ph448.preheader

scalar.ph448.preheader:                           ; preds = %.preheader1083.us.i, %middle.block465
  %indvars.iv1781.i.ph = phi i64 [ 0, %.preheader1083.us.i ], [ %n.vec451, %middle.block465 ]
  %.18311408.us.i.ph = phi ptr [ %.08301413.us.i, %.preheader1083.us.i ], [ %i.ben, %middle.block465 ]
  br label %scalar.ph448

scalar.ph448:                                     ; preds = %scalar.ph448.preheader, %scalar.ph448
  %indvars.iv1781.i = phi i64 [ %indvars.iv.next1782.i, %scalar.ph448 ], [ %indvars.iv1781.i.ph, %scalar.ph448.preheader ] ; 2 uses
  %.18311408.us.i = phi ptr [ %i.bhb, %scalar.ph448 ], [ %.18311408.us.i.ph, %scalar.ph448.preheader ] ; 9 uses
  %i.bfo = getelementptr inbounds nuw [4 x i8], ptr %.08341412.us.i, i64 %indvars.iv1781.i ; 2 uses
  %i.bfp = load i32, ptr %i.bfo, align 4, !tbaa !45
  %i.bfq = lshr i32 %i.bfp, 16
  %i.bfr = trunc nuw i32 %i.bfq to i16
  store i16 %i.bfr, ptr %.18311408.us.i, align 2, !tbaa !67
  %i.bfs = getelementptr inbounds nuw [4 x i8], ptr %i.bfo, i64 %i.aui ; 2 uses
  %i.bft = getelementptr inbounds nuw i8, ptr %.18311408.us.i, i64 2
  %i.bfu = load i32, ptr %i.bfs, align 4, !tbaa !45
  %i.bfv = lshr i32 %i.bfu, 16
  %i.bfw = trunc nuw i32 %i.bfv to i16
  store i16 %i.bfw, ptr %i.bft, align 2, !tbaa !67
  %i.bfx = getelementptr inbounds nuw [4 x i8], ptr %i.bfs, i64 %i.aui ; 2 uses
  %i.bfy = getelementptr inbounds nuw i8, ptr %.18311408.us.i, i64 4
  %i.bfz = load i32, ptr %i.bfx, align 4, !tbaa !45
  %i.bga = lshr i32 %i.bfz, 16
  %i.bgb = trunc nuw i32 %i.bga to i16
  store i16 %i.bgb, ptr %i.bfy, align 2, !tbaa !67
  %i.bgc = getelementptr inbounds nuw [4 x i8], ptr %i.bfx, i64 %i.aui ; 2 uses
  %i.bgd = getelementptr inbounds nuw i8, ptr %.18311408.us.i, i64 6
  %i.bge = load i32, ptr %i.bgc, align 4, !tbaa !45
  %i.bgf = lshr i32 %i.bge, 16
  %i.bgg = trunc nuw i32 %i.bgf to i16
  store i16 %i.bgg, ptr %i.bgd, align 2, !tbaa !67
  %i.bgh = getelementptr inbounds nuw [4 x i8], ptr %i.bgc, i64 %i.aui ; 2 uses
  %i.bgi = getelementptr inbounds nuw i8, ptr %.18311408.us.i, i64 8
  %i.bgj = load i32, ptr %i.bgh, align 4, !tbaa !45
  %i.bgk = lshr i32 %i.bgj, 16
  %i.bgl = trunc nuw i32 %i.bgk to i16
  store i16 %i.bgl, ptr %i.bgi, align 2, !tbaa !67
  %i.bgm = getelementptr inbounds nuw [4 x i8], ptr %i.bgh, i64 %i.aui ; 2 uses
  %i.bgn = getelementptr inbounds nuw i8, ptr %.18311408.us.i, i64 10
  %i.bgo = load i32, ptr %i.bgm, align 4, !tbaa !45
  %i.bgp = lshr i32 %i.bgo, 16
  %i.bgq = trunc nuw i32 %i.bgp to i16
  store i16 %i.bgq, ptr %i.bgn, align 2, !tbaa !67
  %i.bgr = getelementptr inbounds nuw [4 x i8], ptr %i.bgm, i64 %i.aui ; 2 uses
  %i.bgs = getelementptr inbounds nuw i8, ptr %.18311408.us.i, i64 12
  %i.bgt = load i32, ptr %i.bgr, align 4, !tbaa !45
  %i.bgu = lshr i32 %i.bgt, 16
  %i.bgv = trunc nuw i32 %i.bgu to i16
  store i16 %i.bgv, ptr %i.bgs, align 2, !tbaa !67
  %i.bgw = getelementptr inbounds nuw [4 x i8], ptr %i.bgr, i64 %i.aui
  %i.bgx = getelementptr inbounds nuw i8, ptr %.18311408.us.i, i64 14
  %i.bgy = load i32, ptr %i.bgw, align 4, !tbaa !45
  %i.bgz = lshr i32 %i.bgy, 16
  %i.bha = trunc nuw i32 %i.bgz to i16
  store i16 %i.bha, ptr %i.bgx, align 2, !tbaa !67
  %i.bhb = getelementptr inbounds nuw i8, ptr %.18311408.us.i, i64 16 ; 2 uses
  %indvars.iv.next1782.i = add nuw nsw i64 %indvars.iv1781.i, 1 ; 2 uses
  %exitcond1785.not.i = icmp eq i64 %indvars.iv.next1782.i, %wide.trip.count1784.i
  br i1 %exitcond1785.not.i, label %._crit_edge1410.us.i, label %scalar.ph448, !llvm.loop !374

._crit_edge1410.us.i:                             ; preds = %scalar.ph448, %middle.block465
  %.lcssa = phi ptr [ %i.ben, %middle.block465 ], [ %i.bhb, %scalar.ph448 ] ; 2 uses
  %i.bhc = getelementptr inbounds nuw [4 x i8], ptr %.08341412.us.i, i64 %i.auk ; 2 uses
  %i.bhd = add nuw nsw i32 %.08261414.us.i, 8     ; 2 uses
  %i.bhe = or disjoint i32 %i.bhd, 7
  %i.bhf = icmp slt i32 %i.bhe, %i.h
  br i1 %i.bhf, label %.preheader1083.us.i, label %.preheader1086.i, !llvm.loop !375

.preheader1086.i:                                 ; preds = %._crit_edge1410.us.i, %_ZN4ncnn3MatD2Ev.exit.i
  %.0834.lcssa.i = phi ptr [ %i.beb, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.bhc, %._crit_edge1410.us.i ] ; 3 uses
  %.0830.lcssa.i = phi ptr [ %i.bem, %_ZN4ncnn3MatD2Ev.exit.i ], [ %.lcssa, %._crit_edge1410.us.i ] ; 3 uses
  %.0826.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.aux, %._crit_edge1410.us.i ] ; 4 uses
  %i.bhg = or disjoint i32 %.0826.lcssa.i, 3
  %i.bhh = icmp slt i32 %i.bhg, %i.h
  br i1 %i.bhh, label %.preheader1082.lr.ph.i, label %.preheader1085.i

.preheader1086.thread.i:                          ; preds = %.preheader1083.lr.ph.i
  br i1 %i.avb, label %.preheader1082.preheader.i, label %.preheader1085.i

.preheader1082.lr.ph.i:                           ; preds = %.preheader1086.i
  br i1 %i.auh, label %.preheader1082.us.i, label %.preheader1082.preheader.i

.preheader1082.preheader.i:                       ; preds = %.preheader1082.lr.ph.i, %.preheader1086.thread.i
  %.0834.lcssa19431951.i = phi ptr [ %.0834.lcssa.i, %.preheader1082.lr.ph.i ], [ %scevgep1779.i, %.preheader1086.thread.i ]
  %.0830.lcssa19441950.i = phi ptr [ %.0830.lcssa.i, %.preheader1082.lr.ph.i ], [ %i.bem, %.preheader1086.thread.i ]
  %.0826.lcssa19451949.i = phi i32 [ %.0826.lcssa.i, %.preheader1082.lr.ph.i ], [ %i.aux, %.preheader1086.thread.i ] ; 2 uses
  %i.bhi = sub i32 %i.auy, %.0826.lcssa19451949.i
  %i.bhj = and i32 %i.bhi, -4                     ; 2 uses
  %i.bhk = zext i32 %i.bhj to i64
  %i.bhl = add nuw nsw i64 %i.bhk, 4
  %i.bhm = mul nsw i64 %i.bhl, %i.aum
  %scevgep1786.i = getelementptr i8, ptr %.0834.lcssa19431951.i, i64 %i.bhm
  %i.bhn = add i32 %.0826.lcssa19451949.i, 4
  %i.bho = add i32 %i.bhn, %i.bhj
  br label %.preheader1085.i

.preheader1082.us.i:                              ; preds = %.preheader1082.lr.ph.i, %._crit_edge1426.us.i
  %.18271430.us.i = phi i32 [ %i.biy, %._crit_edge1426.us.i ], [ %.0826.lcssa.i, %.preheader1082.lr.ph.i ]
  %.38331429.us.i = phi ptr [ %.lcssa222, %._crit_edge1426.us.i ], [ %.0830.lcssa.i, %.preheader1082.lr.ph.i ] ; 3 uses
  %.18351428.us.i = phi ptr [ %i.bix, %._crit_edge1426.us.i ], [ %.0834.lcssa.i, %.preheader1082.lr.ph.i ] ; 3 uses
  br i1 %min.iters.check432, label %scalar.ph431.preheader, label %vector.ph433

vector.ph433:                                     ; preds = %.preheader1082.us.i
  %i.bhp = getelementptr i8, ptr %.38331429.us.i, i64 %i.avd ; 2 uses
  br label %vector.body435

vector.body435:                                   ; preds = %vector.body435, %vector.ph433
  %index436 = phi i64 [ 0, %vector.ph433 ], [ %index.next443, %vector.body435 ] ; 3 uses
  %i.bhq = shl i64 %index436, 3
  %next.gep437 = getelementptr i8, ptr %.38331429.us.i, i64 %i.bhq
  %i.bhr = getelementptr inbounds nuw [4 x i8], ptr %.18351428.us.i, i64 %index436 ; 2 uses
  %wide.load438 = load <4 x i32>, ptr %i.bhr, align 4, !tbaa !45
  %i.bhs = lshr <4 x i32> %wide.load438, splat (i32 16)
  %i.bht = getelementptr inbounds nuw [4 x i8], ptr %i.bhr, i64 %i.aui ; 2 uses
  %wide.load439 = load <4 x i32>, ptr %i.bht, align 4, !tbaa !45
  %i.bhu = lshr <4 x i32> %wide.load439, splat (i32 16)
  %i.bhv = getelementptr inbounds nuw [4 x i8], ptr %i.bht, i64 %i.aui ; 2 uses
  %wide.load440 = load <4 x i32>, ptr %i.bhv, align 4, !tbaa !45
  %i.bhw = lshr <4 x i32> %wide.load440, splat (i32 16)
  %i.bhx = getelementptr inbounds nuw [4 x i8], ptr %i.bhv, i64 %i.aui
  %wide.load441 = load <4 x i32>, ptr %i.bhx, align 4, !tbaa !45
  %i.bhy = lshr <4 x i32> %wide.load441, splat (i32 16)
  %i.bhz = shufflevector <4 x i32> %i.bhs, <4 x i32> %i.bhu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bia = shufflevector <4 x i32> %i.bhw, <4 x i32> %i.bhy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bib = shufflevector <8 x i32> %i.bhz, <8 x i32> %i.bia, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %interleaved.vec442 = trunc nuw <16 x i32> %i.bib to <16 x i16>
  store <16 x i16> %interleaved.vec442, ptr %next.gep437, align 2, !tbaa !67
  %index.next443 = add nuw i64 %index436, 4       ; 2 uses
  %i.bic = icmp eq i64 %index.next443, %n.vec434
  br i1 %i.bic, label %middle.block444, label %vector.body435, !llvm.loop !376

middle.block444:                                  ; preds = %vector.body435
  br i1 %cmp.n445, label %._crit_edge1426.us.i, label %scalar.ph431.preheader

scalar.ph431.preheader:                           ; preds = %.preheader1082.us.i, %middle.block444
  %indvars.iv1788.i.ph = phi i64 [ 0, %.preheader1082.us.i ], [ %n.vec434, %middle.block444 ]
  %.41424.us.i.ph = phi ptr [ %.38331429.us.i, %.preheader1082.us.i ], [ %i.bhp, %middle.block444 ]
  br label %scalar.ph431

scalar.ph431:                                     ; preds = %scalar.ph431.preheader, %scalar.ph431
  %indvars.iv1788.i = phi i64 [ %indvars.iv.next1789.i, %scalar.ph431 ], [ %indvars.iv1788.i.ph, %scalar.ph431.preheader ] ; 2 uses
  %.41424.us.i = phi ptr [ %i.biw, %scalar.ph431 ], [ %.41424.us.i.ph, %scalar.ph431.preheader ] ; 5 uses
  %i.bid = getelementptr inbounds nuw [4 x i8], ptr %.18351428.us.i, i64 %indvars.iv1788.i ; 2 uses
  %i.bie = load i32, ptr %i.bid, align 4, !tbaa !45
  %i.bif = lshr i32 %i.bie, 16
  %i.big = trunc nuw i32 %i.bif to i16
  store i16 %i.big, ptr %.41424.us.i, align 2, !tbaa !67
  %i.bih = getelementptr inbounds nuw [4 x i8], ptr %i.bid, i64 %i.aui ; 2 uses
  %i.bii = getelementptr inbounds nuw i8, ptr %.41424.us.i, i64 2
  %i.bij = load i32, ptr %i.bih, align 4, !tbaa !45
  %i.bik = lshr i32 %i.bij, 16
  %i.bil = trunc nuw i32 %i.bik to i16
  store i16 %i.bil, ptr %i.bii, align 2, !tbaa !67
  %i.bim = getelementptr inbounds nuw [4 x i8], ptr %i.bih, i64 %i.aui ; 2 uses
  %i.bin = getelementptr inbounds nuw i8, ptr %.41424.us.i, i64 4
  %i.bio = load i32, ptr %i.bim, align 4, !tbaa !45
  %i.bip = lshr i32 %i.bio, 16
  %i.biq = trunc nuw i32 %i.bip to i16
  store i16 %i.biq, ptr %i.bin, align 2, !tbaa !67
  %i.bir = getelementptr inbounds nuw [4 x i8], ptr %i.bim, i64 %i.aui
  %i.bis = getelementptr inbounds nuw i8, ptr %.41424.us.i, i64 6
  %i.bit = load i32, ptr %i.bir, align 4, !tbaa !45
  %i.biu = lshr i32 %i.bit, 16
  %i.biv = trunc nuw i32 %i.biu to i16
  store i16 %i.biv, ptr %i.bis, align 2, !tbaa !67
  %i.biw = getelementptr inbounds nuw i8, ptr %.41424.us.i, i64 8 ; 2 uses
  %indvars.iv.next1789.i = add nuw nsw i64 %indvars.iv1788.i, 1 ; 2 uses
  %exitcond1792.not.i = icmp eq i64 %indvars.iv.next1789.i, %wide.trip.count1784.i
  br i1 %exitcond1792.not.i, label %._crit_edge1426.us.i, label %scalar.ph431, !llvm.loop !377

._crit_edge1426.us.i:                             ; preds = %scalar.ph431, %middle.block444
  %.lcssa222 = phi ptr [ %i.bhp, %middle.block444 ], [ %i.biw, %scalar.ph431 ] ; 2 uses
  %i.bix = getelementptr inbounds nuw [4 x i8], ptr %.18351428.us.i, i64 %i.aum ; 2 uses
  %i.biy = add nuw nsw i32 %.18271430.us.i, 4     ; 3 uses
  %i.biz = or disjoint i32 %i.biy, 3
  %i.bja = icmp slt i32 %i.biz, %i.h
  br i1 %i.bja, label %.preheader1082.us.i, label %.preheader1085.i, !llvm.loop !378

.preheader1085.i:                                 ; preds = %._crit_edge1426.us.i, %.preheader1082.preheader.i, %.preheader1086.thread.i, %.preheader1086.i
  %.1835.lcssa.i = phi ptr [ %.0834.lcssa.i, %.preheader1086.i ], [ %scevgep1779.i, %.preheader1086.thread.i ], [ %scevgep1786.i, %.preheader1082.preheader.i ], [ %i.bix, %._crit_edge1426.us.i ] ; 2 uses
  %.3833.lcssa.i = phi ptr [ %.0830.lcssa.i, %.preheader1086.i ], [ %i.bem, %.preheader1086.thread.i ], [ %.0830.lcssa19441950.i, %.preheader1082.preheader.i ], [ %.lcssa222, %._crit_edge1426.us.i ] ; 2 uses
  %.1827.lcssa.i = phi i32 [ %.0826.lcssa.i, %.preheader1086.i ], [ %i.aux, %.preheader1086.thread.i ], [ %i.bho, %.preheader1082.preheader.i ], [ %i.biy, %._crit_edge1426.us.i ] ; 3 uses
  %i.bjb = or disjoint i32 %.1827.lcssa.i, 1
  %i.bjc = icmp slt i32 %i.bjb, %i.h
  br i1 %i.bjc, label %.preheader1081.lr.ph.i, label %.preheader1084.i

.preheader1081.lr.ph.i:                           ; preds = %.preheader1085.i
  br i1 %i.auh, label %.preheader1081.us.i, label %._crit_edge1459.split.i

.preheader1081.us.i:                              ; preds = %.preheader1081.lr.ph.i, %._crit_edge1442.us.i
  %.28281446.us.i = phi i32 [ %i.bkc, %._crit_edge1442.us.i ], [ %.1827.lcssa.i, %.preheader1081.lr.ph.i ]
  %.61445.us.i = phi ptr [ %.lcssa225, %._crit_edge1442.us.i ], [ %.3833.lcssa.i, %.preheader1081.lr.ph.i ] ; 4 uses
  %.28361444.us.i = phi ptr [ %i.bkb, %._crit_edge1442.us.i ], [ %.1835.lcssa.i, %.preheader1081.lr.ph.i ] ; 3 uses
  br i1 %min.iters.check413, label %scalar.ph412.preheader, label %vector.ph414

vector.ph414:                                     ; preds = %.preheader1081.us.i
  %i.bjd = getelementptr i8, ptr %.61445.us.i, i64 %i.ave ; 2 uses
  br label %vector.body416

vector.body416:                                   ; preds = %vector.body416, %vector.ph414
  %index417 = phi i64 [ 0, %vector.ph414 ], [ %index.next426, %vector.body416 ] ; 3 uses
  %i.bje = shl i64 %index417, 2                   ; 2 uses
  %next.gep418 = getelementptr i8, ptr %.61445.us.i, i64 %i.bje
  %i.bjf = getelementptr i8, ptr %.61445.us.i, i64 %i.bje
  %next.gep419 = getelementptr i8, ptr %i.bjf, i64 16
  %i.bjg = getelementptr inbounds nuw [4 x i8], ptr %.28361444.us.i, i64 %index417 ; 3 uses
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.bjg, i64 16
  %wide.load420 = load <4 x i32>, ptr %i.bjg, align 4, !tbaa !45
  %wide.load421 = load <4 x i32>, ptr %i.bjh, align 4, !tbaa !45
  %i.bji = lshr <4 x i32> %wide.load420, splat (i32 16)
  %i.bjj = lshr <4 x i32> %wide.load421, splat (i32 16)
  %i.bjk = getelementptr inbounds nuw [4 x i8], ptr %i.bjg, i64 %i.aui ; 2 uses
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bjk, i64 16
  %wide.load422 = load <4 x i32>, ptr %i.bjk, align 4, !tbaa !45
  %wide.load423 = load <4 x i32>, ptr %i.bjl, align 4, !tbaa !45
  %i.bjm = lshr <4 x i32> %wide.load422, splat (i32 16)
  %i.bjn = lshr <4 x i32> %wide.load423, splat (i32 16)
  %i.bjo = shufflevector <4 x i32> %i.bji, <4 x i32> %i.bjm, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec424 = trunc nuw <8 x i32> %i.bjo to <8 x i16>
  store <8 x i16> %interleaved.vec424, ptr %next.gep418, align 2, !tbaa !67
  %i.bjp = shufflevector <4 x i32> %i.bjj, <4 x i32> %i.bjn, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec425 = trunc nuw <8 x i32> %i.bjp to <8 x i16>
  store <8 x i16> %interleaved.vec425, ptr %next.gep419, align 2, !tbaa !67
  %index.next426 = add nuw i64 %index417, 8       ; 2 uses
  %i.bjq = icmp eq i64 %index.next426, %n.vec415
  br i1 %i.bjq, label %middle.block427, label %vector.body416, !llvm.loop !379

middle.block427:                                  ; preds = %vector.body416
  br i1 %cmp.n428, label %._crit_edge1442.us.i, label %scalar.ph412.preheader

scalar.ph412.preheader:                           ; preds = %.preheader1081.us.i, %middle.block427
  %indvars.iv1794.i.ph = phi i64 [ 0, %.preheader1081.us.i ], [ %n.vec415, %middle.block427 ]
  %.71440.us.i.ph = phi ptr [ %.61445.us.i, %.preheader1081.us.i ], [ %i.bjd, %middle.block427 ]
  br label %scalar.ph412

scalar.ph412:                                     ; preds = %scalar.ph412.preheader, %scalar.ph412
  %indvars.iv1794.i = phi i64 [ %indvars.iv.next1795.i, %scalar.ph412 ], [ %indvars.iv1794.i.ph, %scalar.ph412.preheader ] ; 2 uses
  %.71440.us.i = phi ptr [ %i.bka, %scalar.ph412 ], [ %.71440.us.i.ph, %scalar.ph412.preheader ] ; 3 uses
  %i.bjr = getelementptr inbounds nuw [4 x i8], ptr %.28361444.us.i, i64 %indvars.iv1794.i ; 2 uses
  %i.bjs = load i32, ptr %i.bjr, align 4, !tbaa !45
  %i.bjt = lshr i32 %i.bjs, 16
  %i.bju = trunc nuw i32 %i.bjt to i16
  store i16 %i.bju, ptr %.71440.us.i, align 2, !tbaa !67
  %i.bjv = getelementptr inbounds nuw [4 x i8], ptr %i.bjr, i64 %i.aui
  %i.bjw = getelementptr inbounds nuw i8, ptr %.71440.us.i, i64 2
  %i.bjx = load i32, ptr %i.bjv, align 4, !tbaa !45
  %i.bjy = lshr i32 %i.bjx, 16
  %i.bjz = trunc nuw i32 %i.bjy to i16
  store i16 %i.bjz, ptr %i.bjw, align 2, !tbaa !67
  %i.bka = getelementptr inbounds nuw i8, ptr %.71440.us.i, i64 4 ; 2 uses
  %indvars.iv.next1795.i = add nuw nsw i64 %indvars.iv1794.i, 1 ; 2 uses
  %exitcond1798.not.i = icmp eq i64 %indvars.iv.next1795.i, %wide.trip.count1784.i
  br i1 %exitcond1798.not.i, label %._crit_edge1442.us.i, label %scalar.ph412, !llvm.loop !380

._crit_edge1442.us.i:                             ; preds = %scalar.ph412, %middle.block427
  %.lcssa225 = phi ptr [ %i.bjd, %middle.block427 ], [ %i.bka, %scalar.ph412 ] ; 2 uses
  %i.bkb = getelementptr inbounds nuw [4 x i8], ptr %.28361444.us.i, i64 %i.auo ; 2 uses
  %i.bkc = add nuw nsw i32 %.28281446.us.i, 2     ; 3 uses
  %i.bkd = or disjoint i32 %i.bkc, 1
  %i.bke = icmp slt i32 %i.bkd, %i.h
  br i1 %i.bke, label %.preheader1081.us.i, label %.preheader1084.i, !llvm.loop !381

.preheader1084.i:                                 ; preds = %._crit_edge1442.us.i, %.preheader1085.i
  %.2836.lcssa.i = phi ptr [ %.1835.lcssa.i, %.preheader1085.i ], [ %i.bkb, %._crit_edge1442.us.i ] ; 3 uses
  %.6.lcssa.i = phi ptr [ %.3833.lcssa.i, %.preheader1085.i ], [ %.lcssa225, %._crit_edge1442.us.i ]
  %.2828.lcssa.i = phi i32 [ %.1827.lcssa.i, %.preheader1085.i ], [ %i.bkc, %._crit_edge1442.us.i ] ; 2 uses
  %i.bkf = icmp sge i32 %.2828.lcssa.i, %i.h
  %brmerge1473.i = or i1 %i.aup, %i.bkf
  br i1 %brmerge1473.i, label %._crit_edge1459.split.i, label %iter.check

iter.check:                                       ; preds = %.preheader1084.i, %._crit_edge1455.i
  %.38291458.i = phi i32 [ %i.ble, %._crit_edge1455.i ], [ %.2828.lcssa.i, %.preheader1084.i ]
  %.91457.i = phi ptr [ %.lcssa228, %._crit_edge1455.i ], [ %.6.lcssa.i, %.preheader1084.i ] ; 5 uses
  br i1 %min.iters.check389, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check390, label %vec.epilog.ph, label %vector.ph391

vector.ph391:                                     ; preds = %vector.main.loop.iter.check
  %i.bkg = getelementptr i8, ptr %.91457.i, i64 %i.avg ; 2 uses
  br label %vector.body393

vector.body393:                                   ; preds = %vector.body393, %vector.ph391
  %index394 = phi i64 [ 0, %vector.ph391 ], [ %index.next400, %vector.body393 ] ; 3 uses
  %i.bkh = shl i64 %index394, 1
  %next.gep395 = getelementptr i8, ptr %.91457.i, i64 %i.bkh ; 4 uses
  %i.bki = getelementptr inbounds nuw [4 x i8], ptr %.2836.lcssa.i, i64 %index394 ; 4 uses
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.bki, i64 32
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.bki, i64 64
  %i.bkl = getelementptr inbounds nuw i8, ptr %i.bki, i64 96
  %wide.load396 = load <8 x i32>, ptr %i.bki, align 4, !tbaa !45
  %wide.load397 = load <8 x i32>, ptr %i.bkj, align 4, !tbaa !45
  %wide.load398 = load <8 x i32>, ptr %i.bkk, align 4, !tbaa !45
end_hunk_8
begin_hunk_9_@_ZNK4ncnn21Convolution1D_x86_fma13forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.qj = getelementptr inbounds nuw i8, ptr %.05301187.i, i64 4
  %i.qk = load i16, ptr %i.qj, align 2, !tbaa !67
  %i.ql = zext i16 %i.qk to i32
  %i.qm = shl nuw i32 %i.ql, 16
  %i.qn = insertelement <4 x i32> poison, i32 %i.qm, i64 0
  %i.qo = bitcast <4 x i32> %i.qn to <4 x float>
  %i.qp = shufflevector <4 x float> %i.qo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.oi, <4 x float> nofpclass(nan inf) %i.qp, <4 x float> nofpclass(nan inf) %i.pl) ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %.05301187.i, i64 6
  %i.qs = load i16, ptr %i.qr, align 2, !tbaa !67
  %i.qt = zext i16 %i.qs to i32
  %i.qu = shl nuw i32 %i.qt, 16
  %i.qv = insertelement <4 x i32> poison, i32 %i.qu, i64 0
  %i.qw = bitcast <4 x i32> %i.qv to <4 x float>
  %i.qx = shufflevector <4 x float> %i.qw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.oo, <4 x float> nofpclass(nan inf) %i.qx, <4 x float> nofpclass(nan inf) %i.pt) ; 2 uses
  %i.qz = getelementptr inbounds [2 x i8], ptr %.25341186.i, i64 %i.gp
  %i.ra = getelementptr inbounds [2 x i8], ptr %.05301187.i, i64 %i.gp
  %i.rb = getelementptr inbounds nuw i8, ptr %.35441185.i, i64 64
  %i.rc = add nuw nsw i32 %.05291188.i, 1         ; 2 uses
  %exitcond1711.not.i = icmp eq i32 %i.rc, %i.gh
  br i1 %exitcond1711.not.i, label %.loopexit1162.loopexit.i, label %.lr.ph1189.i, !llvm.loop !399

.loopexit1162.loopexit.i:                         ; preds = %.lr.ph1189.i
  %scevgep1709.i = getelementptr i8, ptr %.05411213.i, i64 64
  %scevgep1710.i = getelementptr i8, ptr %scevgep1709.i, i64 %i.hf
  br label %.loopexit1161.i

.loopexit1162.i:                                  ; preds = %.loopexit1164.i
  br i1 %i.fb, label %.preheader1160.i, label %.loopexit1161.i

.preheader1160.i:                                 ; preds = %.loopexit1162.i
  br i1 %i.gi, label %.lr.ph1203.i, label %.loopexit1161.i

.lr.ph1203.i:                                     ; preds = %.preheader1160.i, %.lr.ph1203.i
  %.05281202.i = phi i32 [ %i.vl, %.lr.ph1203.i ], [ 0, %.preheader1160.i ]
  %.45361201.i = phi ptr [ %i.vj, %.lr.ph1203.i ], [ %gep.i, %.preheader1160.i ] ; 9 uses
  %.55461200.i = phi ptr [ %i.vk, %.lr.ph1203.i ], [ %.05411213.i, %.preheader1160.i ] ; 9 uses
  %.610221199.i = phi <4 x float> [ %i.uk, %.lr.ph1203.i ], [ %.110171212.i, %.preheader1160.i ]
  %.510371198.i = phi <4 x float> [ %i.us, %.lr.ph1203.i ], [ %.010321211.i, %.preheader1160.i ]
  %.510511197.i = phi <4 x float> [ %i.va, %.lr.ph1203.i ], [ %.010461210.i, %.preheader1160.i ]
  %.510631196.i = phi <4 x float> [ %i.vi, %.lr.ph1203.i ], [ %.010581209.i, %.preheader1160.i ]
  %i.rd = load i64, ptr %.55461200.i, align 1, !tbaa !65
  %i.re = insertelement <2 x i64> poison, i64 %i.rd, i64 0
  %i.rf = bitcast <2 x i64> %i.re to <8 x i16>
  %i.rg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rh = bitcast <8 x i16> %i.rg to <4 x float>
  %i.ri = getelementptr inbounds nuw i8, ptr %.55461200.i, i64 8
  %i.rj = load i64, ptr %i.ri, align 1, !tbaa !65
  %i.rk = insertelement <2 x i64> poison, i64 %i.rj, i64 0
  %i.rl = bitcast <2 x i64> %i.rk to <8 x i16>
  %i.rm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rn = bitcast <8 x i16> %i.rm to <4 x float>
  %i.ro = getelementptr inbounds nuw i8, ptr %.55461200.i, i64 16
  %i.rp = load i64, ptr %i.ro, align 1, !tbaa !65
  %i.rq = insertelement <2 x i64> poison, i64 %i.rp, i64 0
  %i.rr = bitcast <2 x i64> %i.rq to <8 x i16>
  %i.rs = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rt = bitcast <8 x i16> %i.rs to <4 x float>
  %i.ru = getelementptr inbounds nuw i8, ptr %.55461200.i, i64 24
  %i.rv = load i64, ptr %i.ru, align 1, !tbaa !65
  %i.rw = insertelement <2 x i64> poison, i64 %i.rv, i64 0
  %i.rx = bitcast <2 x i64> %i.rw to <8 x i16>
  %i.ry = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rz = bitcast <8 x i16> %i.ry to <4 x float>
  %i.sa = getelementptr inbounds nuw i8, ptr %.55461200.i, i64 32
  %i.sb = load i64, ptr %i.sa, align 1, !tbaa !65
  %i.sc = insertelement <2 x i64> poison, i64 %i.sb, i64 0
  %i.sd = bitcast <2 x i64> %i.sc to <8 x i16>
  %i.se = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sf = bitcast <8 x i16> %i.se to <4 x float>
  %i.sg = getelementptr inbounds nuw i8, ptr %.55461200.i, i64 40
  %i.sh = load i64, ptr %i.sg, align 1, !tbaa !65
  %i.si = insertelement <2 x i64> poison, i64 %i.sh, i64 0
  %i.sj = bitcast <2 x i64> %i.si to <8 x i16>
  %i.sk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sl = bitcast <8 x i16> %i.sk to <4 x float>
  %i.sm = getelementptr inbounds nuw i8, ptr %.55461200.i, i64 48
  %i.sn = load i64, ptr %i.sm, align 1, !tbaa !65
  %i.so = insertelement <2 x i64> poison, i64 %i.sn, i64 0
  %i.sp = bitcast <2 x i64> %i.so to <8 x i16>
  %i.sq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sr = bitcast <8 x i16> %i.sq to <4 x float>
  %i.ss = getelementptr inbounds nuw i8, ptr %.55461200.i, i64 56
  %i.st = load i64, ptr %i.ss, align 1, !tbaa !65
  %i.su = insertelement <2 x i64> poison, i64 %i.st, i64 0
  %i.sv = bitcast <2 x i64> %i.su to <8 x i16>
  %i.sw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sx = bitcast <8 x i16> %i.sw to <4 x float>
  %i.sy = load i16, ptr %.45361201.i, align 2, !tbaa !67
  %i.sz = zext i16 %i.sy to i32
  %i.ta = shl nuw i32 %i.sz, 16
  %i.tb = insertelement <4 x i32> poison, i32 %i.ta, i64 0
  %i.tc = bitcast <4 x i32> %i.tb to <4 x float>
  %i.td = shufflevector <4 x float> %i.tc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.te = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rh, <4 x float> nofpclass(nan inf) %i.td, <4 x float> nofpclass(nan inf) %.610221199.i)
  %i.tf = getelementptr inbounds [2 x i8], ptr %.45361201.i, i64 %i.gn
  %i.tg = load i16, ptr %i.tf, align 2, !tbaa !67
  %i.th = zext i16 %i.tg to i32
  %i.ti = shl nuw i32 %i.th, 16
  %i.tj = insertelement <4 x i32> poison, i32 %i.ti, i64 0
  %i.tk = bitcast <4 x i32> %i.tj to <4 x float>
  %i.tl = shufflevector <4 x float> %i.tk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.tm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rn, <4 x float> nofpclass(nan inf) %i.tl, <4 x float> nofpclass(nan inf) %.510371198.i)
  %i.tn = getelementptr inbounds [2 x i8], ptr %.45361201.i, i64 %i.gr
  %i.to = load i16, ptr %i.tn, align 2, !tbaa !67
  %i.tp = zext i16 %i.to to i32
  %i.tq = shl nuw i32 %i.tp, 16
  %i.tr = insertelement <4 x i32> poison, i32 %i.tq, i64 0
  %i.ts = bitcast <4 x i32> %i.tr to <4 x float>
  %i.tt = shufflevector <4 x float> %i.ts, <4 x float> poison, <4 x i32> zeroinitializer
  %i.tu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rt, <4 x float> nofpclass(nan inf) %i.tt, <4 x float> nofpclass(nan inf) %.510511197.i)
  %i.tv = getelementptr inbounds [2 x i8], ptr %.45361201.i, i64 %i.gt
  %i.tw = load i16, ptr %i.tv, align 2, !tbaa !67
  %i.tx = zext i16 %i.tw to i32
  %i.ty = shl nuw i32 %i.tx, 16
  %i.tz = insertelement <4 x i32> poison, i32 %i.ty, i64 0
  %i.ua = bitcast <4 x i32> %i.tz to <4 x float>
  %i.ub = shufflevector <4 x float> %i.ua, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rz, <4 x float> nofpclass(nan inf) %i.ub, <4 x float> nofpclass(nan inf) %.510631196.i)
  %i.ud = getelementptr inbounds [2 x i8], ptr %.45361201.i, i64 %i.gv
  %i.ue = load i16, ptr %i.ud, align 2, !tbaa !67
  %i.uf = zext i16 %i.ue to i32
  %i.ug = shl nuw i32 %i.uf, 16
  %i.uh = insertelement <4 x i32> poison, i32 %i.ug, i64 0
  %i.ui = bitcast <4 x i32> %i.uh to <4 x float>
  %i.uj = shufflevector <4 x float> %i.ui, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sf, <4 x float> nofpclass(nan inf) %i.uj, <4 x float> nofpclass(nan inf) %i.te) ; 2 uses
  %i.ul = getelementptr inbounds [2 x i8], ptr %.45361201.i, i64 %i.gx
  %i.um = load i16, ptr %i.ul, align 2, !tbaa !67
  %i.un = zext i16 %i.um to i32
  %i.uo = shl nuw i32 %i.un, 16
  %i.up = insertelement <4 x i32> poison, i32 %i.uo, i64 0
  %i.uq = bitcast <4 x i32> %i.up to <4 x float>
  %i.ur = shufflevector <4 x float> %i.uq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.us = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sl, <4 x float> nofpclass(nan inf) %i.ur, <4 x float> nofpclass(nan inf) %i.tm) ; 2 uses
  %i.ut = getelementptr inbounds [2 x i8], ptr %.45361201.i, i64 %i.gz
  %i.uu = load i16, ptr %i.ut, align 2, !tbaa !67
  %i.uv = zext i16 %i.uu to i32
  %i.uw = shl nuw i32 %i.uv, 16
  %i.ux = insertelement <4 x i32> poison, i32 %i.uw, i64 0
  %i.uy = bitcast <4 x i32> %i.ux to <4 x float>
  %i.uz = shufflevector <4 x float> %i.uy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.va = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sr, <4 x float> nofpclass(nan inf) %i.uz, <4 x float> nofpclass(nan inf) %i.tu) ; 2 uses
  %i.vb = getelementptr inbounds [2 x i8], ptr %.45361201.i, i64 %i.hb
  %i.vc = load i16, ptr %i.vb, align 2, !tbaa !67
  %i.vd = zext i16 %i.vc to i32
  %i.ve = shl nuw i32 %i.vd, 16
  %i.vf = insertelement <4 x i32> poison, i32 %i.ve, i64 0
  %i.vg = bitcast <4 x i32> %i.vf to <4 x float>
  %i.vh = shufflevector <4 x float> %i.vg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sx, <4 x float> nofpclass(nan inf) %i.vh, <4 x float> nofpclass(nan inf) %i.uc) ; 2 uses
  %i.vj = getelementptr inbounds [2 x i8], ptr %.45361201.i, i64 %i.hc
  %i.vk = getelementptr inbounds nuw i8, ptr %.55461200.i, i64 64
  %i.vl = add nuw nsw i32 %.05281202.i, 1         ; 2 uses
  %exitcond1714.not.i = icmp eq i32 %i.vl, %i.gh
  br i1 %exitcond1714.not.i, label %.loopexit1161.loopexit.i, label %.lr.ph1203.i, !llvm.loop !400

.loopexit1161.loopexit.i:                         ; preds = %.lr.ph1203.i
  %scevgep1712.i = getelementptr i8, ptr %.05411213.i, i64 64
  %scevgep1713.i = getelementptr i8, ptr %scevgep1712.i, i64 %i.hf
  br label %.loopexit1161.i

.loopexit1161.i:                                  ; preds = %.loopexit1161.loopexit.i, %.preheader1160.i, %.loopexit1162.i, %.loopexit1162.loopexit.i, %bb.k
  %.61064.i = phi nsz <4 x float> [ %.010581209.i, %.loopexit1162.i ], [ %.010581209.i, %.preheader1160.i ], [ %i.vi, %.loopexit1161.loopexit.i ], [ %.010581209.i, %bb.k ], [ %i.qy, %.loopexit1162.loopexit.i ] ; 2 uses
  %.61052.i = phi nsz <4 x float> [ %.010461210.i, %.loopexit1162.i ], [ %.010461210.i, %.preheader1160.i ], [ %i.va, %.loopexit1161.loopexit.i ], [ %.010461210.i, %bb.k ], [ %i.qq, %.loopexit1162.loopexit.i ] ; 2 uses
  %.61038.i = phi nsz <4 x float> [ %.010321211.i, %.loopexit1162.i ], [ %.010321211.i, %.preheader1160.i ], [ %i.us, %.loopexit1161.loopexit.i ], [ %.010321211.i, %bb.k ], [ %i.qi, %.loopexit1162.loopexit.i ] ; 2 uses
  %.71023.i = phi nsz <4 x float> [ %.110171212.i, %.loopexit1162.i ], [ %.110171212.i, %.preheader1160.i ], [ %i.uk, %.loopexit1161.loopexit.i ], [ %.110171212.i, %bb.k ], [ %i.qa, %.loopexit1162.loopexit.i ] ; 2 uses
  %.6547.i = phi ptr [ %.05411213.i, %.loopexit1162.i ], [ %.05411213.i, %.preheader1160.i ], [ %scevgep1713.i, %.loopexit1161.loopexit.i ], [ %.05411213.i, %bb.k ], [ %scevgep1710.i, %.loopexit1162.loopexit.i ] ; 2 uses
  %i.vm = add nuw nsw i32 %.05371214.i, 8         ; 2 uses
  %i.vn = or disjoint i32 %i.vm, 7
  %i.vo = icmp slt i32 %i.vn, %i.ee
  br i1 %i.vo, label %.loopexit1164.i, label %.preheader1167.i, !llvm.loop !398

.preheader1166.i:                                 ; preds = %.loopexit1157.i, %.preheader1167.i
  %.71065.lcssa.i = phi <4 x float> [ %.01058.lcssa.i, %.preheader1167.i ], [ %.111069.i, %.loopexit1157.i ]
  %.71053.lcssa.i = phi <4 x float> [ %.01046.lcssa.i, %.preheader1167.i ], [ %.111057.i, %.loopexit1157.i ]
  %.71039.lcssa.i = phi <4 x float> [ %.01032.lcssa.i, %.preheader1167.i ], [ %.111043.i, %.loopexit1157.i ] ; 3 uses
  %.81024.lcssa.i = phi <4 x float> [ %.11017.lcssa.i, %.preheader1167.i ], [ %.121028.i, %.loopexit1157.i ] ; 3 uses
  %.7548.lcssa.i = phi ptr [ %.0541.lcssa.i, %.preheader1167.i ], [ %.11552.i, %.loopexit1157.i ] ; 3 uses
  %.1538.lcssa.i = phi i32 [ %.0537.lcssa.i, %.preheader1167.i ], [ %i.abh, %.loopexit1157.i ] ; 5 uses
  %i.vp = or disjoint i32 %.1538.lcssa.i, 1
  %i.vq = icmp slt i32 %i.vp, %i.ee
  br i1 %i.vq, label %.lr.ph1279.i, label %.preheader1165.i

.lr.ph1279.i:                                     ; preds = %.preheader1166.i
  %i.vr = load ptr, ptr %4, align 8, !tbaa !19
  %i.vs = load i32, ptr %i.t, align 4, !tbaa !51
  %i.vt = sext i32 %i.vs to i64
  %i.vu = load i64, ptr %i.q, align 8, !tbaa !44
  %factor.op.mul1284.i = mul i64 %i.vu, %i.vt
  %i.vv = mul nsw i64 %indvars.iv1731.i, %i.fq
  %invariant.gep1286.i = getelementptr [2 x i8], ptr %i.vr, i64 %i.vv
  %i.vw = load i32, ptr %i.e, align 4
  %i.vx = sext i32 %i.vw to i64
  %i.vy = load i32, ptr %i.b, align 4
  %i.vz = sext i32 %i.vy to i64
  br i1 %i.fd, label %.lr.ph1271.us.preheader.i, label %.lr.ph1279.split.preheader.i

.lr.ph1279.split.preheader.i:                     ; preds = %.lr.ph1279.i
  %i.wa = add i32 %.1538.lcssa.i, 2
  %i.wb = sub i32 %i.fl, %.1538.lcssa.i
  %i.wc = and i32 %i.wb, -2
  %i.wd = add i32 %i.wa, %i.wc
  br label %.preheader1165.i

.lr.ph1271.us.preheader.i:                        ; preds = %.lr.ph1279.i
  %i.we = zext i32 %.1538.lcssa.i to i64
  br label %.lr.ph1271.us.i

.lr.ph1271.us.i:                                  ; preds = %._crit_edge.us.i, %.lr.ph1271.us.preheader.i
  %indvars.iv.i = phi i64 [ %i.we, %.lr.ph1271.us.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.us.i ] ; 2 uses
  %.125531277.us.i = phi ptr [ %.7548.lcssa.i, %.lr.ph1271.us.preheader.i ], [ %scevgep1722.i, %._crit_edge.us.i ] ; 2 uses
  %.1310291276.us.i = phi <4 x float> [ %.81024.lcssa.i, %.lr.ph1271.us.preheader.i ], [ %i.ww, %._crit_edge.us.i ]
  %.1210441275.us.i = phi <4 x float> [ %.71039.lcssa.i, %.lr.ph1271.us.preheader.i ], [ %i.xe, %._crit_edge.us.i ]
  %.reass1285.us.i = mul i64 %factor.op.mul1284.i, %indvars.iv.i
  %gep1287.us.i = getelementptr i8, ptr %invariant.gep1286.i, i64 %.reass1285.us.i
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph1271.us.i
  %.05211270.us.i = phi i32 [ 0, %.lr.ph1271.us.i ], [ %i.xh, %bb.l ]
  %.05221269.us.i = phi ptr [ %gep1287.us.i, %.lr.ph1271.us.i ], [ %i.xf, %bb.l ] ; 3 uses
  %.135541268.us.i = phi ptr [ %.125531277.us.i, %.lr.ph1271.us.i ], [ %i.xg, %bb.l ] ; 3 uses
  %.1410301267.us.i = phi <4 x float> [ %.1310291276.us.i, %.lr.ph1271.us.i ], [ %i.ww, %bb.l ]
  %.1310451266.us.i = phi <4 x float> [ %.1210441275.us.i, %.lr.ph1271.us.i ], [ %i.xe, %bb.l ]
  %i.wf = load i64, ptr %.135541268.us.i, align 1, !tbaa !65
  %i.wg = insertelement <2 x i64> poison, i64 %i.wf, i64 0
  %i.wh = bitcast <2 x i64> %i.wg to <8 x i16>
  %i.wi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.wh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.wj = bitcast <8 x i16> %i.wi to <4 x float>
  %i.wk = getelementptr inbounds nuw i8, ptr %.135541268.us.i, i64 8
  %i.wl = load i64, ptr %i.wk, align 1, !tbaa !65
  %i.wm = insertelement <2 x i64> poison, i64 %i.wl, i64 0
  %i.wn = bitcast <2 x i64> %i.wm to <8 x i16>
  %i.wo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.wn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.wp = bitcast <8 x i16> %i.wo to <4 x float>
  %i.wq = load i16, ptr %.05221269.us.i, align 2, !tbaa !67
  %i.wr = zext i16 %i.wq to i32
  %i.ws = shl nuw i32 %i.wr, 16
  %i.wt = insertelement <4 x i32> poison, i32 %i.ws, i64 0
  %i.wu = bitcast <4 x i32> %i.wt to <4 x float>
  %i.wv = shufflevector <4 x float> %i.wu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ww = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.wj, <4 x float> nofpclass(nan inf) %i.wv, <4 x float> nofpclass(nan inf) %.1410301267.us.i) ; 3 uses
  %i.wx = getelementptr inbounds [2 x i8], ptr %.05221269.us.i, i64 %i.vx
  %i.wy = load i16, ptr %i.wx, align 2, !tbaa !67
  %i.wz = zext i16 %i.wy to i32
  %i.xa = shl nuw i32 %i.wz, 16
  %i.xb = insertelement <4 x i32> poison, i32 %i.xa, i64 0
  %i.xc = bitcast <4 x i32> %i.xb to <4 x float>
  %i.xd = shufflevector <4 x float> %i.xc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xe = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.wp, <4 x float> nofpclass(nan inf) %i.xd, <4 x float> nofpclass(nan inf) %.1310451266.us.i) ; 3 uses
  %i.xf = getelementptr inbounds [2 x i8], ptr %.05221269.us.i, i64 %i.vz
  %i.xg = getelementptr inbounds nuw i8, ptr %.135541268.us.i, i64 16
  %i.xh = add nuw nsw i32 %.05211270.us.i, 1      ; 2 uses
  %exitcond1723.not.i = icmp eq i32 %i.xh, %i.fc
  br i1 %exitcond1723.not.i, label %._crit_edge.us.i, label %bb.l, !llvm.loop !401

._crit_edge.us.i:                                 ; preds = %bb.l
  %scevgep1721.i = getelementptr i8, ptr %.125531277.us.i, i64 16
  %scevgep1722.i = getelementptr i8, ptr %scevgep1721.i, i64 %i.fo ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.xi = trunc i64 %indvars.iv.next.i to i32     ; 2 uses
  %i.xj = or i32 %i.xi, 1
  %i.xk = icmp slt i32 %i.xj, %i.ee
  br i1 %i.xk, label %.lr.ph1271.us.i, label %.preheader1165.i, !llvm.loop !402

bb.m:                                             ; preds = %.loopexit1157.i, %.lr.ph1255.i
  %.15381254.i = phi i32 [ %.0537.lcssa.i, %.lr.ph1255.i ], [ %i.abh, %.loopexit1157.i ] ; 2 uses
  %.75481253.i = phi ptr [ %.0541.lcssa.i, %.lr.ph1255.i ], [ %.11552.i, %.loopexit1157.i ] ; 7 uses
  %.810241252.i = phi <4 x float> [ %.11017.lcssa.i, %.lr.ph1255.i ], [ %.121028.i, %.loopexit1157.i ] ; 5 uses
  %.710391251.i = phi <4 x float> [ %.01032.lcssa.i, %.lr.ph1255.i ], [ %.111043.i, %.loopexit1157.i ] ; 5 uses
  %.710531250.i = phi <4 x float> [ %.01046.lcssa.i, %.lr.ph1255.i ], [ %.111057.i, %.loopexit1157.i ] ; 5 uses
  %.710651249.i = phi <4 x float> [ %.01058.lcssa.i, %.lr.ph1255.i ], [ %.111069.i, %.loopexit1157.i ] ; 5 uses
  %i.xl = sdiv i32 %.15381254.i, %i.ec
  %i.xm = sext i32 %i.xl to i64
  %.reass1263.i = mul i64 %factor.op.mul1262.i, %i.xm
  %gep1265.i = getelementptr i8, ptr %invariant.gep1264.i, i64 %.reass1263.i ; 2 uses
  br i1 %i.fa, label %.preheader1158.i, label %.loopexit1159.i

.preheader1158.i:                                 ; preds = %bb.m
  br i1 %i.md, label %.lr.ph1229.i, label %.loopexit1157.i

.lr.ph1229.i:                                     ; preds = %.preheader1158.i, %.lr.ph1229.i
  %.05241228.i = phi i32 [ %i.zb, %.lr.ph1229.i ], [ 0, %.preheader1158.i ]
  %.05251227.i = phi ptr [ %i.yz, %.lr.ph1229.i ], [ %gep1265.i, %.preheader1158.i ] ; 2 uses
  %.85491226.i = phi ptr [ %i.za, %.lr.ph1229.i ], [ %.75481253.i, %.preheader1158.i ] ; 5 uses
  %.910251225.i = phi <4 x float> [ %i.yp, %.lr.ph1229.i ], [ %.810241252.i, %.preheader1158.i ]
  %.810401224.i = phi <4 x float> [ %i.ys, %.lr.ph1229.i ], [ %.710391251.i, %.preheader1158.i ]
  %.810541223.i = phi <4 x float> [ %i.yv, %.lr.ph1229.i ], [ %.710531250.i, %.preheader1158.i ]
  %.810661222.i = phi <4 x float> [ %i.yy, %.lr.ph1229.i ], [ %.710651249.i, %.preheader1158.i ]
  %i.xn = load i64, ptr %.85491226.i, align 1, !tbaa !65
  %i.xo = insertelement <2 x i64> poison, i64 %i.xn, i64 0
  %i.xp = bitcast <2 x i64> %i.xo to <8 x i16>
  %i.xq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.xp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.xr = bitcast <8 x i16> %i.xq to <4 x float>
  %i.xs = getelementptr inbounds nuw i8, ptr %.85491226.i, i64 8
  %i.xt = load i64, ptr %i.xs, align 1, !tbaa !65
  %i.xu = insertelement <2 x i64> poison, i64 %i.xt, i64 0
  %i.xv = bitcast <2 x i64> %i.xu to <8 x i16>
  %i.xw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.xv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.xx = bitcast <8 x i16> %i.xw to <4 x float>
  %i.xy = getelementptr inbounds nuw i8, ptr %.85491226.i, i64 16
  %i.xz = load i64, ptr %i.xy, align 1, !tbaa !65
  %i.ya = insertelement <2 x i64> poison, i64 %i.xz, i64 0
  %i.yb = bitcast <2 x i64> %i.ya to <8 x i16>
  %i.yc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.yb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.yd = bitcast <8 x i16> %i.yc to <4 x float>
  %i.ye = getelementptr inbounds nuw i8, ptr %.85491226.i, i64 24
  %i.yf = load i64, ptr %i.ye, align 1, !tbaa !65
  %i.yg = insertelement <2 x i64> poison, i64 %i.yf, i64 0
  %i.yh = bitcast <2 x i64> %i.yg to <8 x i16>
  %i.yi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.yh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.yj = bitcast <8 x i16> %i.yi to <4 x float>
  %i.yk = load <4 x i16>, ptr %.05251227.i, align 2, !tbaa !67
  %i.yl = zext <4 x i16> %i.yk to <4 x i32>
  %i.ym = shl nuw <4 x i32> %i.yl, splat (i32 16) ; 4 uses
  %i.yn = bitcast <4 x i32> %i.ym to <4 x float>
  %i.yo = shufflevector <4 x float> %i.yn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.xr, <4 x float> nofpclass(nan inf) %i.yo, <4 x float> nofpclass(nan inf) %.910251225.i) ; 2 uses
  %i.yq = bitcast <4 x i32> %i.ym to <4 x float>
  %i.yr = shufflevector <4 x float> %i.yq, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ys = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.xx, <4 x float> nofpclass(nan inf) %i.yr, <4 x float> nofpclass(nan inf) %.810401224.i) ; 2 uses
  %i.yt = bitcast <4 x i32> %i.ym to <4 x float>
  %i.yu = shufflevector <4 x float> %i.yt, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.yv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.yd, <4 x float> nofpclass(nan inf) %i.yu, <4 x float> nofpclass(nan inf) %.810541223.i) ; 2 uses
  %i.yw = bitcast <4 x i32> %i.ym to <4 x float>
  %i.yx = shufflevector <4 x float> %i.yw, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.yy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.yj, <4 x float> nofpclass(nan inf) %i.yx, <4 x float> nofpclass(nan inf) %.810661222.i) ; 2 uses
  %i.yz = getelementptr inbounds [2 x i8], ptr %.05251227.i, i64 %i.mg
  %i.za = getelementptr inbounds nuw i8, ptr %.85491226.i, i64 32
  %i.zb = add nuw nsw i32 %.05241228.i, 1         ; 2 uses
  %exitcond1717.not.i = icmp eq i32 %i.zb, %i.mc
  br i1 %exitcond1717.not.i, label %.loopexit1159.loopexit.i, label %.lr.ph1229.i, !llvm.loop !403

.loopexit1159.loopexit.i:                         ; preds = %.lr.ph1229.i
  %scevgep1715.i = getelementptr i8, ptr %.75481253.i, i64 32
  %scevgep1716.i = getelementptr i8, ptr %scevgep1715.i, i64 %i.mq
  br label %.loopexit1157.i

.loopexit1159.i:                                  ; preds = %bb.m
  br i1 %i.fb, label %.preheader1156.i, label %.loopexit1157.i

.preheader1156.i:                                 ; preds = %.loopexit1159.i
  br i1 %i.md, label %.lr.ph1243.i, label %.loopexit1157.i

.lr.ph1243.i:                                     ; preds = %.preheader1156.i, %.lr.ph1243.i
  %.05231242.i = phi i32 [ %i.abg, %.lr.ph1243.i ], [ 0, %.preheader1156.i ]
  %.25271241.i = phi ptr [ %i.abe, %.lr.ph1243.i ], [ %gep1265.i, %.preheader1156.i ] ; 5 uses
  %.105511240.i = phi ptr [ %i.abf, %.lr.ph1243.i ], [ %.75481253.i, %.preheader1156.i ] ; 5 uses
  %.1110271239.i = phi <4 x float> [ %i.aaf, %.lr.ph1243.i ], [ %.810241252.i, %.preheader1156.i ]
  %.1010421238.i = phi <4 x float> [ %i.aan, %.lr.ph1243.i ], [ %.710391251.i, %.preheader1156.i ]
  %.1010561237.i = phi <4 x float> [ %i.aav, %.lr.ph1243.i ], [ %.710531250.i, %.preheader1156.i ]
  %.1010681236.i = phi <4 x float> [ %i.abd, %.lr.ph1243.i ], [ %.710651249.i, %.preheader1156.i ]
  %i.zc = load i64, ptr %.105511240.i, align 1, !tbaa !65
  %i.zd = insertelement <2 x i64> poison, i64 %i.zc, i64 0
  %i.ze = bitcast <2 x i64> %i.zd to <8 x i16>
  %i.zf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ze, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.zg = bitcast <8 x i16> %i.zf to <4 x float>
  %i.zh = getelementptr inbounds nuw i8, ptr %.105511240.i, i64 8
  %i.zi = load i64, ptr %i.zh, align 1, !tbaa !65
  %i.zj = insertelement <2 x i64> poison, i64 %i.zi, i64 0
  %i.zk = bitcast <2 x i64> %i.zj to <8 x i16>
  %i.zl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.zk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.zm = bitcast <8 x i16> %i.zl to <4 x float>
  %i.zn = getelementptr inbounds nuw i8, ptr %.105511240.i, i64 16
  %i.zo = load i64, ptr %i.zn, align 1, !tbaa !65
  %i.zp = insertelement <2 x i64> poison, i64 %i.zo, i64 0
  %i.zq = bitcast <2 x i64> %i.zp to <8 x i16>
  %i.zr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.zq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.zs = bitcast <8 x i16> %i.zr to <4 x float>
  %i.zt = getelementptr inbounds nuw i8, ptr %.105511240.i, i64 24
  %i.zu = load i64, ptr %i.zt, align 1, !tbaa !65
  %i.zv = insertelement <2 x i64> poison, i64 %i.zu, i64 0
  %i.zw = bitcast <2 x i64> %i.zv to <8 x i16>
  %i.zx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.zw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.zy = bitcast <8 x i16> %i.zx to <4 x float>
  %i.zz = load i16, ptr %.25271241.i, align 2, !tbaa !67
  %i.aaa = zext i16 %i.zz to i32
  %i.aab = shl nuw i32 %i.aaa, 16
  %i.aac = insertelement <4 x i32> poison, i32 %i.aab, i64 0
  %i.aad = bitcast <4 x i32> %i.aac to <4 x float>
  %i.aae = shufflevector <4 x float> %i.aad, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aaf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.zg, <4 x float> nofpclass(nan inf) %i.aae, <4 x float> nofpclass(nan inf) %.1110271239.i) ; 2 uses
  %i.aag = getelementptr inbounds [2 x i8], ptr %.25271241.i, i64 %i.mi
  %i.aah = load i16, ptr %i.aag, align 2, !tbaa !67
  %i.aai = zext i16 %i.aah to i32
  %i.aaj = shl nuw i32 %i.aai, 16
  %i.aak = insertelement <4 x i32> poison, i32 %i.aaj, i64 0
  %i.aal = bitcast <4 x i32> %i.aak to <4 x float>
  %i.aam = shufflevector <4 x float> %i.aal, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aan = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.zm, <4 x float> nofpclass(nan inf) %i.aam, <4 x float> nofpclass(nan inf) %.1010421238.i) ; 2 uses
  %i.aao = getelementptr inbounds [2 x i8], ptr %.25271241.i, i64 %i.mk
  %i.aap = load i16, ptr %i.aao, align 2, !tbaa !67
  %i.aaq = zext i16 %i.aap to i32
  %i.aar = shl nuw i32 %i.aaq, 16
  %i.aas = insertelement <4 x i32> poison, i32 %i.aar, i64 0
  %i.aat = bitcast <4 x i32> %i.aas to <4 x float>
  %i.aau = shufflevector <4 x float> %i.aat, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aav = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.zs, <4 x float> nofpclass(nan inf) %i.aau, <4 x float> nofpclass(nan inf) %.1010561237.i) ; 2 uses
  %i.aaw = getelementptr inbounds [2 x i8], ptr %.25271241.i, i64 %i.mm
  %i.aax = load i16, ptr %i.aaw, align 2, !tbaa !67
end_hunk_9
begin_hunk_10_@_ZN4ncnnL20convolution1d_packedERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.fd = load <8 x float>, ptr %i.fc, align 32, !tbaa !65
  %i.fe = getelementptr inbounds nuw i8, ptr %.3208575, i64 160
  %i.ff = load <8 x float>, ptr %i.fe, align 32, !tbaa !65
  %i.fg = getelementptr inbounds nuw i8, ptr %.3208575, i64 192
  %i.fh = load <8 x float>, ptr %i.fg, align 32, !tbaa !65
  %i.fi = getelementptr inbounds nuw i8, ptr %.3208575, i64 224
  %i.fj = load <8 x float>, ptr %i.fi, align 32, !tbaa !65
  %i.fk = load float, ptr %.2200576, align 4, !tbaa !45
  %i.fl = insertelement <8 x float> poison, float %i.fk, i64 0
  %i.fm = shufflevector <8 x float> %i.fl, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ev, <8 x float> nofpclass(nan inf) %i.fm, <8 x float> nofpclass(nan inf) %.4534571)
  %i.fo = getelementptr inbounds nuw i8, ptr %.2200576, i64 4
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !45
  %i.fq = insertelement <8 x float> poison, float %i.fp, i64 0
  %i.fr = shufflevector <8 x float> %i.fq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ex, <8 x float> nofpclass(nan inf) %i.fr, <8 x float> nofpclass(nan inf) %.3519572)
  %i.ft = getelementptr inbounds nuw i8, ptr %.2200576, i64 8
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !45
  %i.fv = insertelement <8 x float> poison, float %i.fu, i64 0
  %i.fw = shufflevector <8 x float> %i.fv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ez, <8 x float> nofpclass(nan inf) %i.fw, <8 x float> nofpclass(nan inf) %.3507573)
  %i.fy = getelementptr inbounds nuw i8, ptr %.2200576, i64 12
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !45
  %i.ga = insertelement <8 x float> poison, float %i.fz, i64 0
  %i.gb = shufflevector <8 x float> %i.ga, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fb, <8 x float> nofpclass(nan inf) %i.gb, <8 x float> nofpclass(nan inf) %.3495574)
  %i.gd = load float, ptr %.0196577, align 4, !tbaa !45
  %i.ge = insertelement <8 x float> poison, float %i.gd, i64 0
  %i.gf = shufflevector <8 x float> %i.ge, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fd, <8 x float> nofpclass(nan inf) %i.gf, <8 x float> nofpclass(nan inf) %i.fn) ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.0196577, i64 4
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !45
  %i.gj = insertelement <8 x float> poison, float %i.gi, i64 0
  %i.gk = shufflevector <8 x float> %i.gj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ff, <8 x float> nofpclass(nan inf) %i.gk, <8 x float> nofpclass(nan inf) %i.fs) ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.0196577, i64 8
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !45
  %i.go = insertelement <8 x float> poison, float %i.gn, i64 0
  %i.gp = shufflevector <8 x float> %i.go, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fh, <8 x float> nofpclass(nan inf) %i.gp, <8 x float> nofpclass(nan inf) %i.fx) ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.0196577, i64 12
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !45
  %i.gt = insertelement <8 x float> poison, float %i.gs, i64 0
  %i.gu = shufflevector <8 x float> %i.gt, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fj, <8 x float> nofpclass(nan inf) %i.gu, <8 x float> nofpclass(nan inf) %i.gc) ; 2 uses
  %i.gw = getelementptr inbounds [4 x i8], ptr %.2200576, i64 %i.eu
  %i.gx = getelementptr inbounds [4 x i8], ptr %.0196577, i64 %i.eu
  %i.gy = getelementptr inbounds nuw i8, ptr %.3208575, i64 256
  %i.gz = add nuw nsw i32 %.0195578, 1            ; 2 uses
  %exitcond750.not = icmp eq i32 %i.gz, %i.en
  br i1 %exitcond750.not, label %.loopexit553.loopexit, label %bb.h, !llvm.loop !444

.loopexit553.loopexit:                            ; preds = %bb.h
  %scevgep748 = getelementptr i8, ptr %.0205603, i64 256
  %i.ha = add nsw i32 %i.en, -1
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = shl nuw nsw i64 %i.hb, 8
  %scevgep749 = getelementptr i8, ptr %scevgep748, i64 %i.hc
  br label %.loopexit552

.loopexit553:                                     ; preds = %.loopexit555
  br i1 %i.au, label %.preheader551, label %.loopexit552

.preheader551:                                    ; preds = %.loopexit553
  %i.hd = load i32, ptr %9, align 4, !tbaa !54    ; 3 uses
  %i.he = icmp sgt i32 %i.hd, 0
  br i1 %i.he, label %.lr.ph593, label %.loopexit552

.lr.ph593:                                        ; preds = %.preheader551
  %i.hf = load i32, ptr %11, align 4, !tbaa !54   ; 7 uses
  %i.hg = sext i32 %i.hf to i64
  %i.hh = shl nsw i32 %i.hf, 1
  %i.hi = sext i32 %i.hh to i64
  %i.hj = mul nsw i32 %i.hf, 3
  %i.hk = sext i32 %i.hj to i64
  %i.hl = shl nsw i32 %i.hf, 2
  %i.hm = sext i32 %i.hl to i64
  %i.hn = mul nsw i32 %i.hf, 5
  %i.ho = sext i32 %i.hn to i64
  %i.hp = mul nsw i32 %i.hf, 6
  %i.hq = sext i32 %i.hp to i64
  %i.hr = mul nsw i32 %i.hf, 7
  %i.hs = sext i32 %i.hr to i64
  %i.ht = load i32, ptr %10, align 4, !tbaa !54
  %i.hu = sext i32 %i.ht to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph593, %bb.i
  %.0194592 = phi i32 [ 0, %.lr.ph593 ], [ %i.jz, %bb.i ]
  %.4591 = phi ptr [ %gep, %.lr.ph593 ], [ %i.jx, %bb.i ] ; 9 uses
  %.5590 = phi ptr [ %.0205603, %.lr.ph593 ], [ %i.jy, %bb.i ] ; 9 uses
  %.5497589 = phi <8 x float> [ %.0492602, %.lr.ph593 ], [ %i.jw, %bb.i ]
  %.5509588 = phi <8 x float> [ %.0504601, %.lr.ph593 ], [ %i.jr, %bb.i ]
  %.5521587 = phi <8 x float> [ %.0516600, %.lr.ph593 ], [ %i.jm, %bb.i ]
  %.6536586 = phi <8 x float> [ %.1531599, %.lr.ph593 ], [ %i.jh, %bb.i ]
  %i.hv = load <8 x float>, ptr %.5590, align 32, !tbaa !65
  %i.hw = getelementptr inbounds nuw i8, ptr %.5590, i64 32
  %i.hx = load <8 x float>, ptr %i.hw, align 32, !tbaa !65
  %i.hy = getelementptr inbounds nuw i8, ptr %.5590, i64 64
  %i.hz = load <8 x float>, ptr %i.hy, align 32, !tbaa !65
  %i.ia = getelementptr inbounds nuw i8, ptr %.5590, i64 96
  %i.ib = load <8 x float>, ptr %i.ia, align 32, !tbaa !65
  %i.ic = getelementptr inbounds nuw i8, ptr %.5590, i64 128
  %i.id = load <8 x float>, ptr %i.ic, align 32, !tbaa !65
  %i.ie = getelementptr inbounds nuw i8, ptr %.5590, i64 160
  %i.if = load <8 x float>, ptr %i.ie, align 32, !tbaa !65
  %i.ig = getelementptr inbounds nuw i8, ptr %.5590, i64 192
  %i.ih = load <8 x float>, ptr %i.ig, align 32, !tbaa !65
  %i.ii = getelementptr inbounds nuw i8, ptr %.5590, i64 224
  %i.ij = load <8 x float>, ptr %i.ii, align 32, !tbaa !65
  %i.ik = load float, ptr %.4591, align 4, !tbaa !45
  %i.il = insertelement <8 x float> poison, float %i.ik, i64 0
  %i.im = shufflevector <8 x float> %i.il, <8 x float> poison, <8 x i32> zeroinitializer
  %i.in = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hv, <8 x float> nofpclass(nan inf) %i.im, <8 x float> nofpclass(nan inf) %.6536586)
  %i.io = getelementptr inbounds [4 x i8], ptr %.4591, i64 %i.hg
  %i.ip = load float, ptr %i.io, align 4, !tbaa !45
  %i.iq = insertelement <8 x float> poison, float %i.ip, i64 0
  %i.ir = shufflevector <8 x float> %i.iq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.is = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hx, <8 x float> nofpclass(nan inf) %i.ir, <8 x float> nofpclass(nan inf) %.5521587)
  %i.it = getelementptr inbounds [4 x i8], ptr %.4591, i64 %i.hi
  %i.iu = load float, ptr %i.it, align 4, !tbaa !45
  %i.iv = insertelement <8 x float> poison, float %i.iu, i64 0
  %i.iw = shufflevector <8 x float> %i.iv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ix = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hz, <8 x float> nofpclass(nan inf) %i.iw, <8 x float> nofpclass(nan inf) %.5509588)
  %i.iy = getelementptr inbounds [4 x i8], ptr %.4591, i64 %i.hk
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !45
  %i.ja = insertelement <8 x float> poison, float %i.iz, i64 0
  %i.jb = shufflevector <8 x float> %i.ja, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ib, <8 x float> nofpclass(nan inf) %i.jb, <8 x float> nofpclass(nan inf) %.5497589)
  %i.jd = getelementptr inbounds [4 x i8], ptr %.4591, i64 %i.hm
  %i.je = load float, ptr %i.jd, align 4, !tbaa !45
  %i.jf = insertelement <8 x float> poison, float %i.je, i64 0
  %i.jg = shufflevector <8 x float> %i.jf, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.id, <8 x float> nofpclass(nan inf) %i.jg, <8 x float> nofpclass(nan inf) %i.in) ; 2 uses
  %i.ji = getelementptr inbounds [4 x i8], ptr %.4591, i64 %i.ho
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !45
  %i.jk = insertelement <8 x float> poison, float %i.jj, i64 0
  %i.jl = shufflevector <8 x float> %i.jk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.if, <8 x float> nofpclass(nan inf) %i.jl, <8 x float> nofpclass(nan inf) %i.is) ; 2 uses
  %i.jn = getelementptr inbounds [4 x i8], ptr %.4591, i64 %i.hq
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !45
  %i.jp = insertelement <8 x float> poison, float %i.jo, i64 0
  %i.jq = shufflevector <8 x float> %i.jp, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ih, <8 x float> nofpclass(nan inf) %i.jq, <8 x float> nofpclass(nan inf) %i.ix) ; 2 uses
  %i.js = getelementptr inbounds [4 x i8], ptr %.4591, i64 %i.hs
  %i.jt = load float, ptr %i.js, align 4, !tbaa !45
  %i.ju = insertelement <8 x float> poison, float %i.jt, i64 0
  %i.jv = shufflevector <8 x float> %i.ju, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ij, <8 x float> nofpclass(nan inf) %i.jv, <8 x float> nofpclass(nan inf) %i.jc) ; 2 uses
  %i.jx = getelementptr inbounds [4 x i8], ptr %.4591, i64 %i.hu
  %i.jy = getelementptr inbounds nuw i8, ptr %.5590, i64 256
  %i.jz = add nuw nsw i32 %.0194592, 1            ; 2 uses
  %exitcond753.not = icmp eq i32 %i.jz, %i.hd
  br i1 %exitcond753.not, label %.loopexit552.loopexit, label %bb.i, !llvm.loop !445

.loopexit552.loopexit:                            ; preds = %bb.i
  %scevgep751 = getelementptr i8, ptr %.0205603, i64 256
  %i.ka = add nsw i32 %i.hd, -1
  %i.kb = zext nneg i32 %i.ka to i64
  %i.kc = shl nuw nsw i64 %i.kb, 8
  %scevgep752 = getelementptr i8, ptr %scevgep751, i64 %i.kc
  br label %.loopexit552

.loopexit552:                                     ; preds = %.preheader554, %.loopexit555.loopexit, %bb.g, %.loopexit553.loopexit, %.loopexit552.loopexit, %.preheader551, %.loopexit553
  %.7537 = phi nsz <8 x float> [ %.1531599, %.loopexit553 ], [ %.1531599, %.preheader551 ], [ %i.jh, %.loopexit552.loopexit ], [ %.1531599, %bb.g ], [ %i.gg, %.loopexit553.loopexit ], [ %i.dr, %.loopexit555.loopexit ], [ %.1531599, %.preheader554 ] ; 2 uses
  %.6522 = phi nsz <8 x float> [ %.0516600, %.loopexit553 ], [ %.0516600, %.preheader551 ], [ %i.jm, %.loopexit552.loopexit ], [ %.0516600, %bb.g ], [ %i.gl, %.loopexit553.loopexit ], [ %i.dw, %.loopexit555.loopexit ], [ %.0516600, %.preheader554 ] ; 2 uses
  %.6510 = phi nsz <8 x float> [ %.0504601, %.loopexit553 ], [ %.0504601, %.preheader551 ], [ %i.jr, %.loopexit552.loopexit ], [ %.0504601, %bb.g ], [ %i.gq, %.loopexit553.loopexit ], [ %i.eb, %.loopexit555.loopexit ], [ %.0504601, %.preheader554 ] ; 2 uses
  %.6498 = phi nsz <8 x float> [ %.0492602, %.loopexit553 ], [ %.0492602, %.preheader551 ], [ %i.jw, %.loopexit552.loopexit ], [ %.0492602, %bb.g ], [ %i.gv, %.loopexit553.loopexit ], [ %i.eg, %.loopexit555.loopexit ], [ %.0492602, %.preheader554 ] ; 2 uses
  %.6 = phi ptr [ %.0205603, %.loopexit553 ], [ %.0205603, %.preheader551 ], [ %scevgep752, %.loopexit552.loopexit ], [ %.0205603, %bb.g ], [ %scevgep749, %.loopexit553.loopexit ], [ %scevgep747, %.loopexit555.loopexit ], [ %.0205603, %.preheader554 ] ; 2 uses
  %i.kd = add nuw nsw i32 %.0201604, 8            ; 2 uses
  %i.ke = or disjoint i32 %i.kd, 7
  %i.kf = icmp slt i32 %i.ke, %i.aa
  br i1 %i.kf, label %bb.e, label %.preheader558, !llvm.loop !446

.preheader557:                                    ; preds = %.loopexit, %.preheader558
  %.8538.lcssa = phi <8 x float> [ %.1531.lcssa, %.preheader558 ], [ %.12542, %.loopexit ] ; 3 uses
  %.7523.lcssa = phi <8 x float> [ %.0516.lcssa, %.preheader558 ], [ %.11527, %.loopexit ] ; 3 uses
  %.7511.lcssa = phi <8 x float> [ %.0504.lcssa, %.preheader558 ], [ %.11515, %.loopexit ]
  %.7499.lcssa = phi <8 x float> [ %.0492.lcssa, %.preheader558 ], [ %.11503, %.loopexit ]
  %.7.lcssa = phi ptr [ %.0205.lcssa, %.preheader558 ], [ %.11, %.loopexit ] ; 3 uses
  %.1202.lcssa = phi i32 [ %.0201.lcssa, %.preheader558 ], [ %i.py, %.loopexit ] ; 5 uses
  %i.kg = or disjoint i32 %.1202.lcssa, 1
  %i.kh = icmp slt i32 %i.kg, %i.aa
  br i1 %i.kh, label %.lr.ph669, label %.preheader556

.lr.ph669:                                        ; preds = %.preheader557
  %i.ki = load ptr, ptr %4, align 8, !tbaa !19
  %i.kj = load i32, ptr %i.s, align 4, !tbaa !51
  %i.kk = sext i32 %i.kj to i64
  %i.kl = load i64, ptr %i.t, align 8, !tbaa !44
  %factor.op.mul674 = mul i64 %i.kl, %i.kk
  %i.km = load i32, ptr %8, align 4, !tbaa !54
  %i.kn = mul nsw i32 %i.km, %.0210701
  %i.ko = sext i32 %i.kn to i64
  %invariant.gep676 = getelementptr [4 x i8], ptr %i.ki, i64 %i.ko
  %i.kp = load i32, ptr %9, align 4, !tbaa !54    ; 6 uses
  %i.kq = icmp sgt i32 %i.kp, 0
  br i1 %i.kq, label %.lr.ph669.split.us, label %.lr.ph669.split.preheader

.lr.ph669.split.preheader:                        ; preds = %.lr.ph669
  %i.kr = add i32 %.1202.lcssa, 2
  %i.ks = sub i32 %i.aw, %.1202.lcssa
  %i.kt = and i32 %i.ks, -2
  %i.ku = add i32 %i.kr, %i.kt
  br label %.preheader556

.lr.ph669.split.us:                               ; preds = %.lr.ph669
  %i.kv = load i32, ptr %11, align 4, !tbaa !54
  %i.kw = sext i32 %i.kv to i64                   ; 3 uses
  %i.kx = load i32, ptr %10, align 4, !tbaa !54
  %i.ky = sext i32 %i.kx to i64                   ; 2 uses
  %i.kz = add nsw i32 %i.kp, -1
  %i.la = zext nneg i32 %i.kz to i64
  %i.lb = shl nuw nsw i64 %i.la, 6
  %i.lc = zext i32 %.1202.lcssa to i64
  %xtraiter = and i32 %i.kp, 1
  %i.ld = icmp eq i32 %i.kp, 1
  %unroll_iter = and i32 %i.kp, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod877 = trunc i32 %i.kp to i1
  br label %.lr.ph661.us

.lr.ph661.us:                                     ; preds = %._crit_edge.us, %.lr.ph669.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.us ], [ %i.lc, %.lr.ph669.split.us ] ; 2 uses
  %.12667.us = phi ptr [ %scevgep761, %._crit_edge.us ], [ %.7.lcssa, %.lr.ph669.split.us ] ; 3 uses
  %.12528666.us = phi <8 x float> [ %.lcssa872, %._crit_edge.us ], [ %.7523.lcssa, %.lr.ph669.split.us ] ; 2 uses
  %.13543665.us = phi <8 x float> [ %.lcssa873, %._crit_edge.us ], [ %.8538.lcssa, %.lr.ph669.split.us ] ; 2 uses
  %.reass675.us = mul i64 %factor.op.mul674, %indvars.iv
  %gep677.us = getelementptr i8, ptr %invariant.gep676, i64 %.reass675.us ; 2 uses
  br i1 %i.ld, label %.epil.preheader, label %.lr.ph661.us.new

.lr.ph661.us.new:                                 ; preds = %.lr.ph661.us, %.lr.ph661.us.new
  %.0190659.us = phi ptr [ %i.me, %.lr.ph661.us.new ], [ %gep677.us, %.lr.ph661.us ] ; 3 uses
  %.13658.us = phi ptr [ %i.mf, %.lr.ph661.us.new ], [ %.12667.us, %.lr.ph661.us ] ; 5 uses
  %.13529657.us = phi <8 x float> [ %i.md, %.lr.ph661.us.new ], [ %.12528666.us, %.lr.ph661.us ]
  %.14544656.us = phi <8 x float> [ %i.ly, %.lr.ph661.us.new ], [ %.13543665.us, %.lr.ph661.us ]
  %niter = phi i32 [ %niter.next.1, %.lr.ph661.us.new ], [ 0, %.lr.ph661.us ]
  %i.le = load <8 x float>, ptr %.13658.us, align 32, !tbaa !65
  %i.lf = getelementptr inbounds nuw i8, ptr %.13658.us, i64 32
  %i.lg = load <8 x float>, ptr %i.lf, align 32, !tbaa !65
  %i.lh = load float, ptr %.0190659.us, align 4, !tbaa !45
  %i.li = insertelement <8 x float> poison, float %i.lh, i64 0
  %i.lj = shufflevector <8 x float> %i.li, <8 x float> poison, <8 x i32> zeroinitializer
  %i.lk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.le, <8 x float> nofpclass(nan inf) %i.lj, <8 x float> nofpclass(nan inf) %.14544656.us)
  %i.ll = getelementptr inbounds [4 x i8], ptr %.0190659.us, i64 %i.kw
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !45
  %i.ln = insertelement <8 x float> poison, float %i.lm, i64 0
  %i.lo = shufflevector <8 x float> %i.ln, <8 x float> poison, <8 x i32> zeroinitializer
  %i.lp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lg, <8 x float> nofpclass(nan inf) %i.lo, <8 x float> nofpclass(nan inf) %.13529657.us)
  %i.lq = getelementptr inbounds [4 x i8], ptr %.0190659.us, i64 %i.ky ; 3 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.13658.us, i64 64
  %i.ls = load <8 x float>, ptr %i.lr, align 32, !tbaa !65
  %i.lt = getelementptr inbounds nuw i8, ptr %.13658.us, i64 96
  %i.lu = load <8 x float>, ptr %i.lt, align 32, !tbaa !65
  %i.lv = load float, ptr %i.lq, align 4, !tbaa !45
  %i.lw = insertelement <8 x float> poison, float %i.lv, i64 0
  %i.lx = shufflevector <8 x float> %i.lw, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ly = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ls, <8 x float> nofpclass(nan inf) %i.lx, <8 x float> nofpclass(nan inf) %i.lk) ; 3 uses
  %i.lz = getelementptr inbounds [4 x i8], ptr %i.lq, i64 %i.kw
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !45
  %i.mb = insertelement <8 x float> poison, float %i.ma, i64 0
  %i.mc = shufflevector <8 x float> %i.mb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.md = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lu, <8 x float> nofpclass(nan inf) %i.mc, <8 x float> nofpclass(nan inf) %i.lp) ; 3 uses
  %i.me = getelementptr inbounds [4 x i8], ptr %i.lq, i64 %i.ky ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.13658.us, i64 128 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.lr.ph661.us.new, !llvm.loop !447

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph661.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph661.us
  %.0190659.us.epil.init = phi ptr [ %gep677.us, %.lr.ph661.us ], [ %i.me, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.13658.us.epil.init = phi ptr [ %.12667.us, %.lr.ph661.us ], [ %i.mf, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.13529657.us.epil.init = phi <8 x float> [ %.12528666.us, %.lr.ph661.us ], [ %i.md, %._crit_edge.us.unr-lcssa ]
  %.14544656.us.epil.init = phi <8 x float> [ %.13543665.us, %.lr.ph661.us ], [ %i.ly, %._crit_edge.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod877)
  %i.mg = load <8 x float>, ptr %.13658.us.epil.init, align 32, !tbaa !65
  %i.mh = getelementptr inbounds nuw i8, ptr %.13658.us.epil.init, i64 32
  %i.mi = load <8 x float>, ptr %i.mh, align 32, !tbaa !65
  %i.mj = load float, ptr %.0190659.us.epil.init, align 4, !tbaa !45
  %i.mk = insertelement <8 x float> poison, float %i.mj, i64 0
  %i.ml = shufflevector <8 x float> %i.mk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.mm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mg, <8 x float> nofpclass(nan inf) %i.ml, <8 x float> nofpclass(nan inf) %.14544656.us.epil.init)
  %i.mn = getelementptr inbounds [4 x i8], ptr %.0190659.us.epil.init, i64 %i.kw
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !45
  %i.mp = insertelement <8 x float> poison, float %i.mo, i64 0
  %i.mq = shufflevector <8 x float> %i.mp, <8 x float> poison, <8 x i32> zeroinitializer
  %i.mr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mi, <8 x float> nofpclass(nan inf) %i.mq, <8 x float> nofpclass(nan inf) %.13529657.us.epil.init)
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.lcssa873 = phi <8 x float> [ %i.ly, %._crit_edge.us.unr-lcssa ], [ %i.mm, %.epil.preheader ] ; 2 uses
  %.lcssa872 = phi <8 x float> [ %i.md, %._crit_edge.us.unr-lcssa ], [ %i.mr, %.epil.preheader ] ; 2 uses
  %scevgep760 = getelementptr i8, ptr %.12667.us, i64 64
  %scevgep761 = getelementptr i8, ptr %scevgep760, i64 %i.lb ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ms = trunc i64 %indvars.iv.next to i32
  %i.mt = or i32 %i.ms, 1
  %i.mu = icmp slt i32 %i.mt, %i.aa
  br i1 %i.mu, label %.lr.ph661.us, label %.preheader556.loopexit, !llvm.loop !448

bb.j:                                             ; preds = %.lr.ph645, %.loopexit
  %.1202644 = phi i32 [ %.0201.lcssa, %.lr.ph645 ], [ %i.py, %.loopexit ] ; 2 uses
  %.7643 = phi ptr [ %.0205.lcssa, %.lr.ph645 ], [ %.11, %.loopexit ] ; 7 uses
  %.7499642 = phi <8 x float> [ %.0492.lcssa, %.lr.ph645 ], [ %.11503, %.loopexit ] ; 5 uses
  %.7511641 = phi <8 x float> [ %.0504.lcssa, %.lr.ph645 ], [ %.11515, %.loopexit ] ; 5 uses
  %.7523640 = phi <8 x float> [ %.0516.lcssa, %.lr.ph645 ], [ %.11527, %.loopexit ] ; 5 uses
  %.8538639 = phi <8 x float> [ %.1531.lcssa, %.lr.ph645 ], [ %.12542, %.loopexit ] ; 5 uses
  %i.mv = sdiv i32 %.1202644, %i.y
  %i.mw = sext i32 %i.mv to i64
  %.reass653 = mul i64 %factor.op.mul652, %i.mw
  %gep655 = getelementptr i8, ptr %invariant.gep654, i64 %.reass653 ; 2 uses
  br i1 %i.at, label %.preheader549, label %.loopexit550

.preheader549:                                    ; preds = %bb.j
  %i.mx = load i32, ptr %9, align 4, !tbaa !54    ; 3 uses
  %i.my = icmp sgt i32 %i.mx, 0
  br i1 %i.my, label %.lr.ph619, label %.loopexit

.lr.ph619:                                        ; preds = %.preheader549
  %i.mz = load i32, ptr %10, align 4, !tbaa !54
  %i.na = shl nsw i32 %i.mz, 2
  %i.nb = sext i32 %i.na to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph619, %bb.k
  %.0192618 = phi i32 [ 0, %.lr.ph619 ], [ %i.oe, %bb.k ]
  %.0193617 = phi ptr [ %gep655, %.lr.ph619 ], [ %i.oc, %bb.k ] ; 5 uses
  %.8616 = phi ptr [ %.7643, %.lr.ph619 ], [ %i.od, %bb.k ] ; 5 uses
  %.8500615 = phi <8 x float> [ %.7499642, %.lr.ph619 ], [ %i.ob, %bb.k ]
  %.8512614 = phi <8 x float> [ %.7511641, %.lr.ph619 ], [ %i.nw, %bb.k ]
  %.8524613 = phi <8 x float> [ %.7523640, %.lr.ph619 ], [ %i.nr, %bb.k ]
  %.9539612 = phi <8 x float> [ %.8538639, %.lr.ph619 ], [ %i.nm, %bb.k ]
  %i.nc = load <8 x float>, ptr %.8616, align 32, !tbaa !65
  %i.nd = getelementptr inbounds nuw i8, ptr %.8616, i64 32
  %i.ne = load <8 x float>, ptr %i.nd, align 32, !tbaa !65
  %i.nf = getelementptr inbounds nuw i8, ptr %.8616, i64 64
  %i.ng = load <8 x float>, ptr %i.nf, align 32, !tbaa !65
  %i.nh = getelementptr inbounds nuw i8, ptr %.8616, i64 96
  %i.ni = load <8 x float>, ptr %i.nh, align 32, !tbaa !65
  %i.nj = load float, ptr %.0193617, align 4, !tbaa !45
  %i.nk = insertelement <8 x float> poison, float %i.nj, i64 0
  %i.nl = shufflevector <8 x float> %i.nk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nc, <8 x float> nofpclass(nan inf) %i.nl, <8 x float> nofpclass(nan inf) %.9539612) ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.0193617, i64 4
  %i.no = load float, ptr %i.nn, align 4, !tbaa !45
  %i.np = insertelement <8 x float> poison, float %i.no, i64 0
  %i.nq = shufflevector <8 x float> %i.np, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ne, <8 x float> nofpclass(nan inf) %i.nq, <8 x float> nofpclass(nan inf) %.8524613) ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.0193617, i64 8
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !45
  %i.nu = insertelement <8 x float> poison, float %i.nt, i64 0
  %i.nv = shufflevector <8 x float> %i.nu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ng, <8 x float> nofpclass(nan inf) %i.nv, <8 x float> nofpclass(nan inf) %.8512614) ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.0193617, i64 12
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !45
  %i.nz = insertelement <8 x float> poison, float %i.ny, i64 0
  %i.oa = shufflevector <8 x float> %i.nz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ob = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ni, <8 x float> nofpclass(nan inf) %i.oa, <8 x float> nofpclass(nan inf) %.8500615) ; 2 uses
  %i.oc = getelementptr inbounds [4 x i8], ptr %.0193617, i64 %i.nb
  %i.od = getelementptr inbounds nuw i8, ptr %.8616, i64 128
  %i.oe = add nuw nsw i32 %.0192618, 1            ; 2 uses
  %exitcond756.not = icmp eq i32 %i.oe, %i.mx
  br i1 %exitcond756.not, label %.loopexit550.loopexit, label %bb.k, !llvm.loop !449

.loopexit550.loopexit:                            ; preds = %bb.k
  %scevgep754 = getelementptr i8, ptr %.7643, i64 128
  %i.of = add nsw i32 %i.mx, -1
  %i.og = zext nneg i32 %i.of to i64
  %i.oh = shl nuw nsw i64 %i.og, 7
  %scevgep755 = getelementptr i8, ptr %scevgep754, i64 %i.oh
  br label %.loopexit

.loopexit550:                                     ; preds = %bb.j
  br i1 %i.au, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.loopexit550
  %i.oi = load i32, ptr %9, align 4, !tbaa !54    ; 3 uses
  %i.oj = icmp sgt i32 %i.oi, 0
  br i1 %i.oj, label %.lr.ph633, label %.loopexit

.lr.ph633:                                        ; preds = %.preheader
  %i.ok = load i32, ptr %11, align 4, !tbaa !54   ; 3 uses
  %i.ol = sext i32 %i.ok to i64
  %i.om = shl nsw i32 %i.ok, 1
  %i.on = sext i32 %i.om to i64
  %i.oo = mul nsw i32 %i.ok, 3
  %i.op = sext i32 %i.oo to i64
  %i.oq = load i32, ptr %10, align 4, !tbaa !54
  %i.or = sext i32 %i.oq to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph633, %bb.l
  %.0191632 = phi i32 [ 0, %.lr.ph633 ], [ %i.pu, %bb.l ]
  %.2631 = phi ptr [ %gep655, %.lr.ph633 ], [ %i.ps, %bb.l ] ; 5 uses
  %.10630 = phi ptr [ %.7643, %.lr.ph633 ], [ %i.pt, %bb.l ] ; 5 uses
  %.10502629 = phi <8 x float> [ %.7499642, %.lr.ph633 ], [ %i.pr, %bb.l ]
  %.10514628 = phi <8 x float> [ %.7511641, %.lr.ph633 ], [ %i.pm, %bb.l ]
  %.10526627 = phi <8 x float> [ %.7523640, %.lr.ph633 ], [ %i.ph, %bb.l ]
end_hunk_10
begin_hunk_11_@_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.lk = shl nuw nsw i64 %i.lj, 7
  %scevgep827 = getelementptr i8, ptr %scevgep826, i64 %i.lk
  br label %.loopexit630

.loopexit631:                                     ; preds = %.loopexit633
  br i1 %i.au, label %.preheader629, label %.loopexit630

.preheader629:                                    ; preds = %.loopexit631
  %i.ll = load i32, ptr %9, align 4, !tbaa !54    ; 3 uses
  %i.lm = icmp sgt i32 %i.ll, 0
  br i1 %i.lm, label %.lr.ph671, label %.loopexit630

.lr.ph671:                                        ; preds = %.preheader629
  %i.ln = load i32, ptr %11, align 4, !tbaa !54   ; 7 uses
  %i.lo = sext i32 %i.ln to i64
  %i.lp = shl nsw i32 %i.ln, 1
  %i.lq = sext i32 %i.lp to i64
  %i.lr = mul nsw i32 %i.ln, 3
  %i.ls = sext i32 %i.lr to i64
  %i.lt = shl nsw i32 %i.ln, 2
  %i.lu = sext i32 %i.lt to i64
  %i.lv = mul nsw i32 %i.ln, 5
  %i.lw = sext i32 %i.lv to i64
  %i.lx = mul nsw i32 %i.ln, 6
  %i.ly = sext i32 %i.lx to i64
  %i.lz = mul nsw i32 %i.ln, 7
  %i.ma = sext i32 %i.lz to i64
  %i.mb = load i32, ptr %10, align 4, !tbaa !54
  %i.mc = sext i32 %i.mb to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph671, %bb.i
  %.0194670 = phi i32 [ 0, %.lr.ph671 ], [ %i.ql, %bb.i ]
  %.4669 = phi ptr [ %gep, %.lr.ph671 ], [ %i.qj, %bb.i ] ; 9 uses
  %.5668 = phi ptr [ %.0205681, %.lr.ph671 ], [ %i.qk, %bb.i ] ; 9 uses
  %.5575667 = phi <8 x float> [ %.0570680, %.lr.ph671 ], [ %i.qi, %bb.i ]
  %.5587666 = phi <8 x float> [ %.0582679, %.lr.ph671 ], [ %i.qa, %bb.i ]
  %.5599665 = phi <8 x float> [ %.0594678, %.lr.ph671 ], [ %i.ps, %bb.i ]
  %.6614664 = phi <8 x float> [ %.1609677, %.lr.ph671 ], [ %i.pk, %bb.i ]
  %i.md = load <8 x i16>, ptr %.5668, align 16, !tbaa !65 ; 2 uses
  %i.me = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.md, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mf = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.md, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.mg = shufflevector <8 x i16> %i.me, <8 x i16> %i.mf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mh = bitcast <16 x i16> %i.mg to <8 x float>
  %i.mi = getelementptr inbounds nuw i8, ptr %.5668, i64 16
  %i.mj = load <8 x i16>, ptr %i.mi, align 16, !tbaa !65 ; 2 uses
  %i.mk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ml = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.mj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.mm = shufflevector <8 x i16> %i.mk, <8 x i16> %i.ml, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mn = bitcast <16 x i16> %i.mm to <8 x float>
  %i.mo = getelementptr inbounds nuw i8, ptr %.5668, i64 32
  %i.mp = load <8 x i16>, ptr %i.mo, align 16, !tbaa !65 ; 2 uses
  %i.mq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mr = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.mp, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ms = shufflevector <8 x i16> %i.mq, <8 x i16> %i.mr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mt = bitcast <16 x i16> %i.ms to <8 x float>
  %i.mu = getelementptr inbounds nuw i8, ptr %.5668, i64 48
  %i.mv = load <8 x i16>, ptr %i.mu, align 16, !tbaa !65 ; 2 uses
  %i.mw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mx = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.mv, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.my = shufflevector <8 x i16> %i.mw, <8 x i16> %i.mx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mz = bitcast <16 x i16> %i.my to <8 x float>
  %i.na = getelementptr inbounds nuw i8, ptr %.5668, i64 64
  %i.nb = load <8 x i16>, ptr %i.na, align 16, !tbaa !65 ; 2 uses
  %i.nc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.nb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.nd = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.nb, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ne = shufflevector <8 x i16> %i.nc, <8 x i16> %i.nd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.nf = bitcast <16 x i16> %i.ne to <8 x float>
  %i.ng = getelementptr inbounds nuw i8, ptr %.5668, i64 80
  %i.nh = load <8 x i16>, ptr %i.ng, align 16, !tbaa !65 ; 2 uses
  %i.ni = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.nh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.nj = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.nh, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.nk = shufflevector <8 x i16> %i.ni, <8 x i16> %i.nj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.nl = bitcast <16 x i16> %i.nk to <8 x float>
  %i.nm = getelementptr inbounds nuw i8, ptr %.5668, i64 96
  %i.nn = load <8 x i16>, ptr %i.nm, align 16, !tbaa !65 ; 2 uses
  %i.no = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.nn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.np = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.nn, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.nq = shufflevector <8 x i16> %i.no, <8 x i16> %i.np, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.nr = bitcast <16 x i16> %i.nq to <8 x float>
  %i.ns = getelementptr inbounds nuw i8, ptr %.5668, i64 112
  %i.nt = load <8 x i16>, ptr %i.ns, align 16, !tbaa !65 ; 2 uses
  %i.nu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.nt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.nv = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.nt, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.nw = shufflevector <8 x i16> %i.nu, <8 x i16> %i.nv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.nx = bitcast <16 x i16> %i.nw to <8 x float>
  %i.ny = load i16, ptr %.4669, align 2, !tbaa !67
  %i.nz = zext i16 %i.ny to i32
  %i.oa = shl nuw i32 %i.nz, 16
  %i.ob = insertelement <8 x i32> poison, i32 %i.oa, i64 0
  %i.oc = bitcast <8 x i32> %i.ob to <8 x float>
  %i.od = shufflevector <8 x float> %i.oc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.oe = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mh, <8 x float> nofpclass(nan inf) %i.od, <8 x float> nofpclass(nan inf) %.6614664)
  %i.of = getelementptr inbounds [2 x i8], ptr %.4669, i64 %i.lo
  %i.og = load i16, ptr %i.of, align 2, !tbaa !67
  %i.oh = zext i16 %i.og to i32
  %i.oi = shl nuw i32 %i.oh, 16
  %i.oj = insertelement <8 x i32> poison, i32 %i.oi, i64 0
  %i.ok = bitcast <8 x i32> %i.oj to <8 x float>
  %i.ol = shufflevector <8 x float> %i.ok, <8 x float> poison, <8 x i32> zeroinitializer
  %i.om = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mn, <8 x float> nofpclass(nan inf) %i.ol, <8 x float> nofpclass(nan inf) %.5599665)
  %i.on = getelementptr inbounds [2 x i8], ptr %.4669, i64 %i.lq
  %i.oo = load i16, ptr %i.on, align 2, !tbaa !67
  %i.op = zext i16 %i.oo to i32
  %i.oq = shl nuw i32 %i.op, 16
  %i.or = insertelement <8 x i32> poison, i32 %i.oq, i64 0
  %i.os = bitcast <8 x i32> %i.or to <8 x float>
  %i.ot = shufflevector <8 x float> %i.os, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ou = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mt, <8 x float> nofpclass(nan inf) %i.ot, <8 x float> nofpclass(nan inf) %.5587666)
  %i.ov = getelementptr inbounds [2 x i8], ptr %.4669, i64 %i.ls
  %i.ow = load i16, ptr %i.ov, align 2, !tbaa !67
  %i.ox = zext i16 %i.ow to i32
  %i.oy = shl nuw i32 %i.ox, 16
  %i.oz = insertelement <8 x i32> poison, i32 %i.oy, i64 0
  %i.pa = bitcast <8 x i32> %i.oz to <8 x float>
  %i.pb = shufflevector <8 x float> %i.pa, <8 x float> poison, <8 x i32> zeroinitializer
  %i.pc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mz, <8 x float> nofpclass(nan inf) %i.pb, <8 x float> nofpclass(nan inf) %.5575667)
  %i.pd = getelementptr inbounds [2 x i8], ptr %.4669, i64 %i.lu
  %i.pe = load i16, ptr %i.pd, align 2, !tbaa !67
  %i.pf = zext i16 %i.pe to i32
  %i.pg = shl nuw i32 %i.pf, 16
  %i.ph = insertelement <8 x i32> poison, i32 %i.pg, i64 0
  %i.pi = bitcast <8 x i32> %i.ph to <8 x float>
  %i.pj = shufflevector <8 x float> %i.pi, <8 x float> poison, <8 x i32> zeroinitializer
  %i.pk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nf, <8 x float> nofpclass(nan inf) %i.pj, <8 x float> nofpclass(nan inf) %i.oe) ; 2 uses
  %i.pl = getelementptr inbounds [2 x i8], ptr %.4669, i64 %i.lw
  %i.pm = load i16, ptr %i.pl, align 2, !tbaa !67
  %i.pn = zext i16 %i.pm to i32
  %i.po = shl nuw i32 %i.pn, 16
  %i.pp = insertelement <8 x i32> poison, i32 %i.po, i64 0
  %i.pq = bitcast <8 x i32> %i.pp to <8 x float>
  %i.pr = shufflevector <8 x float> %i.pq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ps = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nl, <8 x float> nofpclass(nan inf) %i.pr, <8 x float> nofpclass(nan inf) %i.om) ; 2 uses
  %i.pt = getelementptr inbounds [2 x i8], ptr %.4669, i64 %i.ly
  %i.pu = load i16, ptr %i.pt, align 2, !tbaa !67
  %i.pv = zext i16 %i.pu to i32
  %i.pw = shl nuw i32 %i.pv, 16
  %i.px = insertelement <8 x i32> poison, i32 %i.pw, i64 0
  %i.py = bitcast <8 x i32> %i.px to <8 x float>
  %i.pz = shufflevector <8 x float> %i.py, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qa = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nr, <8 x float> nofpclass(nan inf) %i.pz, <8 x float> nofpclass(nan inf) %i.ou) ; 2 uses
  %i.qb = getelementptr inbounds [2 x i8], ptr %.4669, i64 %i.ma
  %i.qc = load i16, ptr %i.qb, align 2, !tbaa !67
  %i.qd = zext i16 %i.qc to i32
  %i.qe = shl nuw i32 %i.qd, 16
  %i.qf = insertelement <8 x i32> poison, i32 %i.qe, i64 0
  %i.qg = bitcast <8 x i32> %i.qf to <8 x float>
  %i.qh = shufflevector <8 x float> %i.qg, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nx, <8 x float> nofpclass(nan inf) %i.qh, <8 x float> nofpclass(nan inf) %i.pc) ; 2 uses
  %i.qj = getelementptr inbounds [2 x i8], ptr %.4669, i64 %i.mc
  %i.qk = getelementptr inbounds nuw i8, ptr %.5668, i64 128
  %i.ql = add nuw nsw i32 %.0194670, 1            ; 2 uses
  %exitcond831.not = icmp eq i32 %i.ql, %i.ll
  br i1 %exitcond831.not, label %.loopexit630.loopexit, label %bb.i, !llvm.loop !462

.loopexit630.loopexit:                            ; preds = %bb.i
  %scevgep829 = getelementptr i8, ptr %.0205681, i64 128
  %i.qm = add nsw i32 %i.ll, -1
  %i.qn = zext nneg i32 %i.qm to i64
  %i.qo = shl nuw nsw i64 %i.qn, 7
  %scevgep830 = getelementptr i8, ptr %scevgep829, i64 %i.qo
  br label %.loopexit630

.loopexit630:                                     ; preds = %.preheader632, %.loopexit633.loopexit, %bb.g, %.loopexit631.loopexit, %.loopexit630.loopexit, %.preheader629, %.loopexit631
  %.7615 = phi nsz <8 x float> [ %.1609677, %.loopexit631 ], [ %.1609677, %.preheader629 ], [ %i.pk, %.loopexit630.loopexit ], [ %.1609677, %bb.g ], [ %i.kf, %.loopexit631.loopexit ], [ %i.fm, %.loopexit633.loopexit ], [ %.1609677, %.preheader632 ] ; 2 uses
  %.6600 = phi nsz <8 x float> [ %.0594678, %.loopexit631 ], [ %.0594678, %.preheader629 ], [ %i.ps, %.loopexit630.loopexit ], [ %.0594678, %bb.g ], [ %i.kn, %.loopexit631.loopexit ], [ %i.fu, %.loopexit633.loopexit ], [ %.0594678, %.preheader632 ] ; 2 uses
  %.6588 = phi nsz <8 x float> [ %.0582679, %.loopexit631 ], [ %.0582679, %.preheader629 ], [ %i.qa, %.loopexit630.loopexit ], [ %.0582679, %bb.g ], [ %i.kv, %.loopexit631.loopexit ], [ %i.gc, %.loopexit633.loopexit ], [ %.0582679, %.preheader632 ] ; 2 uses
  %.6576 = phi nsz <8 x float> [ %.0570680, %.loopexit631 ], [ %.0570680, %.preheader629 ], [ %i.qi, %.loopexit630.loopexit ], [ %.0570680, %bb.g ], [ %i.ld, %.loopexit631.loopexit ], [ %i.gk, %.loopexit633.loopexit ], [ %.0570680, %.preheader632 ] ; 2 uses
  %.6 = phi ptr [ %.0205681, %.loopexit631 ], [ %.0205681, %.preheader629 ], [ %scevgep830, %.loopexit630.loopexit ], [ %.0205681, %bb.g ], [ %scevgep827, %.loopexit631.loopexit ], [ %scevgep825, %.loopexit633.loopexit ], [ %.0205681, %.preheader632 ] ; 2 uses
  %i.qp = add nuw nsw i32 %.0201682, 8            ; 2 uses
  %i.qq = or disjoint i32 %i.qp, 7
  %i.qr = icmp slt i32 %i.qq, %i.aa
  br i1 %i.qr, label %bb.e, label %.preheader636, !llvm.loop !463

.preheader635:                                    ; preds = %.loopexit, %.preheader636
  %.8616.lcssa = phi <8 x float> [ %.1609.lcssa, %.preheader636 ], [ %.12620, %.loopexit ] ; 3 uses
  %.7601.lcssa = phi <8 x float> [ %.0594.lcssa, %.preheader636 ], [ %.11605, %.loopexit ] ; 3 uses
  %.7589.lcssa = phi <8 x float> [ %.0582.lcssa, %.preheader636 ], [ %.11593, %.loopexit ]
  %.7577.lcssa = phi <8 x float> [ %.0570.lcssa, %.preheader636 ], [ %.11581, %.loopexit ]
  %.7.lcssa = phi ptr [ %.0205.lcssa, %.preheader636 ], [ %.11, %.loopexit ] ; 3 uses
  %.1202.lcssa = phi i32 [ %.0201.lcssa, %.preheader636 ], [ %i.xm, %.loopexit ] ; 5 uses
  %i.qs = or disjoint i32 %.1202.lcssa, 1
  %i.qt = icmp slt i32 %i.qs, %i.aa
  br i1 %i.qt, label %.lr.ph747, label %.preheader634

.lr.ph747:                                        ; preds = %.preheader635
  %i.qu = load ptr, ptr %4, align 8, !tbaa !19
  %i.qv = load i32, ptr %i.s, align 4, !tbaa !51
  %i.qw = sext i32 %i.qv to i64
  %i.qx = load i64, ptr %i.t, align 8, !tbaa !44
  %factor.op.mul752 = mul i64 %i.qx, %i.qw
  %i.qy = load i32, ptr %8, align 4, !tbaa !54
  %i.qz = mul nsw i32 %i.qy, %.0210779
  %i.ra = sext i32 %i.qz to i64
  %invariant.gep754 = getelementptr [2 x i8], ptr %i.qu, i64 %i.ra
  %i.rb = load i32, ptr %9, align 4, !tbaa !54    ; 3 uses
  %i.rc = icmp sgt i32 %i.rb, 0
  br i1 %i.rc, label %.lr.ph747.split.us, label %.lr.ph747.split.preheader

.lr.ph747.split.preheader:                        ; preds = %.lr.ph747
  %i.rd = add i32 %.1202.lcssa, 2
  %i.re = sub i32 %i.aw, %.1202.lcssa
  %i.rf = and i32 %i.re, -2
  %i.rg = add i32 %i.rd, %i.rf
  br label %.preheader634

.lr.ph747.split.us:                               ; preds = %.lr.ph747
  %i.rh = load i32, ptr %11, align 4, !tbaa !54
  %i.ri = sext i32 %i.rh to i64
  %i.rj = load i32, ptr %10, align 4, !tbaa !54
  %i.rk = sext i32 %i.rj to i64
  %i.rl = add nsw i32 %i.rb, -1
  %i.rm = zext nneg i32 %i.rl to i64
  %i.rn = shl nuw nsw i64 %i.rm, 5
  %i.ro = zext i32 %.1202.lcssa to i64
  br label %.lr.ph739.us

.lr.ph739.us:                                     ; preds = %._crit_edge.us, %.lr.ph747.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.us ], [ %i.ro, %.lr.ph747.split.us ] ; 2 uses
  %.12745.us = phi ptr [ %scevgep839, %._crit_edge.us ], [ %.7.lcssa, %.lr.ph747.split.us ] ; 2 uses
  %.12606744.us = phi <8 x float> [ %i.so, %._crit_edge.us ], [ %.7601.lcssa, %.lr.ph747.split.us ]
  %.13621743.us = phi <8 x float> [ %i.sg, %._crit_edge.us ], [ %.8616.lcssa, %.lr.ph747.split.us ]
  %.reass753.us = mul i64 %factor.op.mul752, %indvars.iv
  %gep755.us = getelementptr i8, ptr %invariant.gep754, i64 %.reass753.us
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph739.us, %bb.j
  %.0189738.us = phi i32 [ 0, %.lr.ph739.us ], [ %i.sr, %bb.j ]
  %.0190737.us = phi ptr [ %gep755.us, %.lr.ph739.us ], [ %i.sp, %bb.j ] ; 3 uses
  %.13736.us = phi ptr [ %.12745.us, %.lr.ph739.us ], [ %i.sq, %bb.j ] ; 3 uses
  %.13607735.us = phi <8 x float> [ %.12606744.us, %.lr.ph739.us ], [ %i.so, %bb.j ]
  %.14622734.us = phi <8 x float> [ %.13621743.us, %.lr.ph739.us ], [ %i.sg, %bb.j ]
  %i.rp = load <8 x i16>, ptr %.13736.us, align 16, !tbaa !65 ; 2 uses
  %i.rq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rr = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.rp, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.rs = shufflevector <8 x i16> %i.rq, <8 x i16> %i.rr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rt = bitcast <16 x i16> %i.rs to <8 x float>
  %i.ru = getelementptr inbounds nuw i8, ptr %.13736.us, i64 16
  %i.rv = load <8 x i16>, ptr %i.ru, align 16, !tbaa !65 ; 2 uses
  %i.rw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rx = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.rv, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ry = shufflevector <8 x i16> %i.rw, <8 x i16> %i.rx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rz = bitcast <16 x i16> %i.ry to <8 x float>
  %i.sa = load i16, ptr %.0190737.us, align 2, !tbaa !67
  %i.sb = zext i16 %i.sa to i32
  %i.sc = shl nuw i32 %i.sb, 16
  %i.sd = insertelement <8 x i32> poison, i32 %i.sc, i64 0
  %i.se = bitcast <8 x i32> %i.sd to <8 x float>
  %i.sf = shufflevector <8 x float> %i.se, <8 x float> poison, <8 x i32> zeroinitializer
  %i.sg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rt, <8 x float> nofpclass(nan inf) %i.sf, <8 x float> nofpclass(nan inf) %.14622734.us) ; 3 uses
  %i.sh = getelementptr inbounds [2 x i8], ptr %.0190737.us, i64 %i.ri
  %i.si = load i16, ptr %i.sh, align 2, !tbaa !67
  %i.sj = zext i16 %i.si to i32
  %i.sk = shl nuw i32 %i.sj, 16
  %i.sl = insertelement <8 x i32> poison, i32 %i.sk, i64 0
  %i.sm = bitcast <8 x i32> %i.sl to <8 x float>
  %i.sn = shufflevector <8 x float> %i.sm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.so = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rz, <8 x float> nofpclass(nan inf) %i.sn, <8 x float> nofpclass(nan inf) %.13607735.us) ; 3 uses
  %i.sp = getelementptr inbounds [2 x i8], ptr %.0190737.us, i64 %i.rk
  %i.sq = getelementptr inbounds nuw i8, ptr %.13736.us, i64 32
  %i.sr = add nuw nsw i32 %.0189738.us, 1         ; 2 uses
  %exitcond840.not = icmp eq i32 %i.sr, %i.rb
  br i1 %exitcond840.not, label %._crit_edge.us, label %bb.j, !llvm.loop !464

._crit_edge.us:                                   ; preds = %bb.j
  %scevgep838 = getelementptr i8, ptr %.12745.us, i64 32
  %scevgep839 = getelementptr i8, ptr %scevgep838, i64 %i.rn ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ss = trunc i64 %indvars.iv.next to i32
  %i.st = or i32 %i.ss, 1
  %i.su = icmp slt i32 %i.st, %i.aa
  br i1 %i.su, label %.lr.ph739.us, label %.preheader634.loopexit, !llvm.loop !465

bb.k:                                             ; preds = %.lr.ph723, %.loopexit
  %.1202722 = phi i32 [ %.0201.lcssa, %.lr.ph723 ], [ %i.xm, %.loopexit ] ; 2 uses
  %.7721 = phi ptr [ %.0205.lcssa, %.lr.ph723 ], [ %.11, %.loopexit ] ; 7 uses
  %.7577720 = phi <8 x float> [ %.0570.lcssa, %.lr.ph723 ], [ %.11581, %.loopexit ] ; 5 uses
  %.7589719 = phi <8 x float> [ %.0582.lcssa, %.lr.ph723 ], [ %.11593, %.loopexit ] ; 5 uses
  %.7601718 = phi <8 x float> [ %.0594.lcssa, %.lr.ph723 ], [ %.11605, %.loopexit ] ; 5 uses
  %.8616717 = phi <8 x float> [ %.1609.lcssa, %.lr.ph723 ], [ %.12620, %.loopexit ] ; 5 uses
  %i.sv = sdiv i32 %.1202722, %i.y
  %i.sw = sext i32 %i.sv to i64
  %.reass731 = mul i64 %factor.op.mul730, %i.sw
  %gep733 = getelementptr i8, ptr %invariant.gep732, i64 %.reass731 ; 2 uses
  br i1 %i.at, label %.preheader627, label %.loopexit628

.preheader627:                                    ; preds = %bb.k
  %i.sx = load i32, ptr %9, align 4, !tbaa !54    ; 3 uses
  %i.sy = icmp sgt i32 %i.sx, 0
  br i1 %i.sy, label %.lr.ph697, label %.loopexit

.lr.ph697:                                        ; preds = %.preheader627
  %i.sz = load i32, ptr %10, align 4, !tbaa !54
  %i.ta = shl nsw i32 %i.sz, 2
  %i.tb = sext i32 %i.ta to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph697, %bb.l
  %.0192696 = phi i32 [ 0, %.lr.ph697 ], [ %i.uq, %bb.l ]
  %.0193695 = phi ptr [ %gep733, %.lr.ph697 ], [ %i.uo, %bb.l ] ; 2 uses
  %.8694 = phi ptr [ %.7721, %.lr.ph697 ], [ %i.up, %bb.l ] ; 5 uses
  %.8578693 = phi <8 x float> [ %.7577720, %.lr.ph697 ], [ %i.un, %bb.l ]
  %.8590692 = phi <8 x float> [ %.7589719, %.lr.ph697 ], [ %i.uk, %bb.l ]
  %.8602691 = phi <8 x float> [ %.7601718, %.lr.ph697 ], [ %i.uh, %bb.l ]
  %.9617690 = phi <8 x float> [ %.8616717, %.lr.ph697 ], [ %i.ue, %bb.l ]
  %i.tc = load <8 x i16>, ptr %.8694, align 16, !tbaa !65 ; 2 uses
  %i.td = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.tc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.te = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.tc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.tf = shufflevector <8 x i16> %i.td, <8 x i16> %i.te, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.tg = bitcast <16 x i16> %i.tf to <8 x float>
  %i.th = getelementptr inbounds nuw i8, ptr %.8694, i64 16
  %i.ti = load <8 x i16>, ptr %i.th, align 16, !tbaa !65 ; 2 uses
  %i.tj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ti, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.tk = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ti, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.tl = shufflevector <8 x i16> %i.tj, <8 x i16> %i.tk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.tm = bitcast <16 x i16> %i.tl to <8 x float>
  %i.tn = getelementptr inbounds nuw i8, ptr %.8694, i64 32
  %i.to = load <8 x i16>, ptr %i.tn, align 16, !tbaa !65 ; 2 uses
  %i.tp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.to, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.tq = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.to, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.tr = shufflevector <8 x i16> %i.tp, <8 x i16> %i.tq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ts = bitcast <16 x i16> %i.tr to <8 x float>
  %i.tt = getelementptr inbounds nuw i8, ptr %.8694, i64 48
  %i.tu = load <8 x i16>, ptr %i.tt, align 16, !tbaa !65 ; 2 uses
  %i.tv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.tu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.tw = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.tu, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.tx = shufflevector <8 x i16> %i.tv, <8 x i16> %i.tw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ty = bitcast <16 x i16> %i.tx to <8 x float>
  %i.tz = load <4 x i16>, ptr %.0193695, align 2, !tbaa !67
  %i.ua = zext <4 x i16> %i.tz to <4 x i32>
  %i.ub = shl nuw <4 x i32> %i.ua, splat (i32 16) ; 4 uses
  %i.uc = bitcast <4 x i32> %i.ub to <4 x float>
  %i.ud = shufflevector <4 x float> %i.uc, <4 x float> poison, <8 x i32> zeroinitializer
  %i.ue = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.tg, <8 x float> nofpclass(nan inf) %i.ud, <8 x float> nofpclass(nan inf) %.9617690) ; 2 uses
  %i.uf = bitcast <4 x i32> %i.ub to <4 x float>
  %i.ug = shufflevector <4 x float> %i.uf, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.uh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.tm, <8 x float> nofpclass(nan inf) %i.ug, <8 x float> nofpclass(nan inf) %.8602691) ; 2 uses
  %i.ui = bitcast <4 x i32> %i.ub to <4 x float>
  %i.uj = shufflevector <4 x float> %i.ui, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.uk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ts, <8 x float> nofpclass(nan inf) %i.uj, <8 x float> nofpclass(nan inf) %.8590692) ; 2 uses
  %i.ul = bitcast <4 x i32> %i.ub to <4 x float>
  %i.um = shufflevector <4 x float> %i.ul, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.un = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ty, <8 x float> nofpclass(nan inf) %i.um, <8 x float> nofpclass(nan inf) %.8578693) ; 2 uses
  %i.uo = getelementptr inbounds [2 x i8], ptr %.0193695, i64 %i.tb
  %i.up = getelementptr inbounds nuw i8, ptr %.8694, i64 64
  %i.uq = add nuw nsw i32 %.0192696, 1            ; 2 uses
  %exitcond834.not = icmp eq i32 %i.uq, %i.sx
  br i1 %exitcond834.not, label %.loopexit628.loopexit, label %bb.l, !llvm.loop !466

.loopexit628.loopexit:                            ; preds = %bb.l
  %scevgep832 = getelementptr i8, ptr %.7721, i64 64
  %i.ur = add nsw i32 %i.sx, -1
  %i.us = zext nneg i32 %i.ur to i64
  %i.ut = shl nuw nsw i64 %i.us, 6
  %scevgep833 = getelementptr i8, ptr %scevgep832, i64 %i.ut
  br label %.loopexit

.loopexit628:                                     ; preds = %bb.k
  br i1 %i.au, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.loopexit628
  %i.uu = load i32, ptr %9, align 4, !tbaa !54    ; 3 uses
  %i.uv = icmp sgt i32 %i.uu, 0
  br i1 %i.uv, label %.lr.ph711, label %.loopexit

.lr.ph711:                                        ; preds = %.preheader
  %i.uw = load i32, ptr %11, align 4, !tbaa !54   ; 3 uses
  %i.ux = sext i32 %i.uw to i64
  %i.uy = shl nsw i32 %i.uw, 1
  %i.uz = sext i32 %i.uy to i64
  %i.va = mul nsw i32 %i.uw, 3
  %i.vb = sext i32 %i.va to i64
  %i.vc = load i32, ptr %10, align 4, !tbaa !54
  %i.vd = sext i32 %i.vc to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph711, %bb.m
  %.0191710 = phi i32 [ 0, %.lr.ph711 ], [ %i.xi, %bb.m ]
  %.2709 = phi ptr [ %gep733, %.lr.ph711 ], [ %i.xg, %bb.m ] ; 5 uses
  %.10708 = phi ptr [ %.7721, %.lr.ph711 ], [ %i.xh, %bb.m ] ; 5 uses
  %.10580707 = phi <8 x float> [ %.7577720, %.lr.ph711 ], [ %i.xf, %bb.m ]
  %.10592706 = phi <8 x float> [ %.7589719, %.lr.ph711 ], [ %i.wx, %bb.m ]
  %.10604705 = phi <8 x float> [ %.7601718, %.lr.ph711 ], [ %i.wp, %bb.m ]
  %.11619704 = phi <8 x float> [ %.8616717, %.lr.ph711 ], [ %i.wh, %bb.m ]
  %i.ve = load <8 x i16>, ptr %.10708, align 16, !tbaa !65 ; 2 uses
  %i.vf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ve, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.vg = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ve, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.vh = shufflevector <8 x i16> %i.vf, <8 x i16> %i.vg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.vi = bitcast <16 x i16> %i.vh to <8 x float>
  %i.vj = getelementptr inbounds nuw i8, ptr %.10708, i64 16
  %i.vk = load <8 x i16>, ptr %i.vj, align 16, !tbaa !65 ; 2 uses
  %i.vl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.vk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.vm = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.vk, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.vn = shufflevector <8 x i16> %i.vl, <8 x i16> %i.vm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.vo = bitcast <16 x i16> %i.vn to <8 x float>
  %i.vp = getelementptr inbounds nuw i8, ptr %.10708, i64 32
  %i.vq = load <8 x i16>, ptr %i.vp, align 16, !tbaa !65 ; 2 uses
  %i.vr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.vq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.vs = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.vq, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.vt = shufflevector <8 x i16> %i.vr, <8 x i16> %i.vs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.vu = bitcast <16 x i16> %i.vt to <8 x float>
end_hunk_11
