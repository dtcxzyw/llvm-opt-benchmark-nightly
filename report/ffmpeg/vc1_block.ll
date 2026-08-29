Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vc1_block?download=true
inline.NumInlined: 223
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 68
loop-unroll.NumUnrolled: 68
begin_hunk_0_@vc1_decode_p_blocks:bb.a
  %i.lx = sub nsw i32 0, %i.lw
  br label %.thread396.i

.thread396.i:                                     ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.w, %bb.v, %bb.t, %bb.s, %bb.p
  %.4.i = phi i32 [ %i.lx, %bb.aj ], [ %.3277.i, %bb.ai ], [ %.3277.i, %bb.ah ], [ %i.gn, %bb.p ], [ %i.jn, %bb.t ], [ %i.jl, %bb.s ], [ %i.ko, %bb.w ], [ %i.kd, %bb.v ] ; 4 uses
  %i.ly = icmp eq i32 %.4.i, 0
  %i.lz = add nsw i32 %.4.i, -32
  %i.ma = icmp ult i32 %i.lz, -63
  %or.cond3.i = or i1 %i.ly, %i.ma
  br i1 %or.cond3.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.thread396.i
  %i.mb = load ptr, ptr %i.cn, align 8, !tbaa !113
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.mb, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %.4.i) #10
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.thread396.i, %bb.o
  %.6.i = phi i32 [ %i.gn, %bb.o ], [ 1, %bb.ak ], [ %.4.i, %.thread396.i ] ; 3 uses
  %i.mc = trunc i32 %.6.i to i8
  %i.md = load ptr, ptr %i.bq, align 8, !tbaa !114
  %i.me = sext i32 %i.gk to i64                   ; 2 uses
  %i.mf = getelementptr inbounds i8, ptr %i.md, i64 %i.me
  store i8 %i.mc, ptr %i.mf, align 1, !tbaa !98
  %i.mg = call i32 @llvm.abs.i32(i32 %.6.i, i1 true)
  %i.mh = zext nneg i32 %i.mg to i64
  %i.mi = getelementptr inbounds nuw i8, ptr @ff_wmv3_dc_scale_table, i64 %i.mh
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !98
  %i.mk = zext i8 %i.mj to i32
  store i32 %i.mk, ptr %i.cx, align 8, !tbaa !115
  %i.ml = load i32, ptr %i.be, align 8, !tbaa !77 ; 4 uses
  %i.mm = load ptr, ptr %i.bg, align 16, !tbaa !97
  %i.mn = lshr i32 %i.ml, 3
  %i.mo = zext nneg i32 %i.mn to i64
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.mo
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !98
  %i.mr = load i32, ptr %i.bj, align 16, !tbaa !99
  %i.ms = icmp slt i32 %i.ml, %i.mr
  %i.mt = zext i1 %i.ms to i32
  %spec.select.i351.i = add i32 %i.ml, %i.mt
  %i.mu = zext i8 %i.mq to i32
  %i.mv = and i32 %i.ml, 7
  %i.mw = shl nuw nsw i32 %i.mu, %i.mv
  %i.mx = lshr i32 %i.mw, 7
  store i32 %spec.select.i351.i, ptr %i.be, align 8, !tbaa !77
  %i.my = and i32 %i.mx, 1                        ; 2 uses
  %i.mz = trunc nuw nsw i32 %i.my to i8
  %i.na = load ptr, ptr %i.cv, align 8, !tbaa !102
  %i.nb = getelementptr inbounds i8, ptr %i.na, i64 %i.me
  store i8 %i.mz, ptr %i.nb, align 1, !tbaa !98
  store i32 %i.my, ptr %i.cw, align 16, !tbaa !103
  %i.nc = and i32 %.167.i336.i, 1
  %.not319.i = icmp eq i32 %i.nc, 0
  br i1 %.not319.i, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.nd = load ptr, ptr %i.bx, align 16, !tbaa !167 ; 2 uses
  %i.ne = load i32, ptr %i.be, align 8, !tbaa !77 ; 4 uses
  %i.nf = load i32, ptr %i.bj, align 16, !tbaa !99 ; 2 uses
  %i.ng = load ptr, ptr %i.bg, align 16, !tbaa !97 ; 2 uses
  %i.nh = lshr i32 %i.ne, 3
  %i.ni = zext nneg i32 %i.nh to i64
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ng, i64 %i.ni
  %i.nk = load i32, ptr %i.nj, align 1, !tbaa !98
  %i.nl = call i32 @llvm.bswap.i32(i32 %i.nk)
  %i.nm = and i32 %i.ne, 7
  %i.nn = shl i32 %i.nl, %i.nm
  %i.no = lshr i32 %i.nn, 23
  %i.np = zext nneg i32 %i.no to i64
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %i.np ; 2 uses
  %i.nr = load i16, ptr %i.nq, align 2, !tbaa !98
  %i.ns = sext i16 %i.nr to i32                   ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nq, i64 2
  %i.nu = load i16, ptr %i.nt, align 2, !tbaa !98 ; 2 uses
  %i.nv = sext i16 %i.nu to i32                   ; 2 uses
  %i.nw = icmp slt i16 %i.nu, 0
  br i1 %i.nw, label %bb.an, label %get_vlc2.exit335.i

bb.an:                                            ; preds = %bb.am
  %i.nx = add i32 %i.ne, 9
  %i.ny = call i32 @llvm.umin.i32(i32 %i.nf, i32 %i.nx) ; 3 uses
  %i.nz = lshr i32 %i.ny, 3
  %i.oa = zext nneg i32 %i.nz to i64
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ng, i64 %i.oa
  %i.oc = load i32, ptr %i.ob, align 1, !tbaa !98
  %i.od = call i32 @llvm.bswap.i32(i32 %i.oc)
  %i.oe = and i32 %i.ny, 7
  %i.of = shl i32 %i.od, %i.oe
  %i.og = add nsw i32 %i.nv, 32
  %i.oh = lshr i32 %i.of, %i.og
  %i.oi = add i32 %i.oh, %i.ns
  %i.oj = zext i32 %i.oi to i64
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %i.oj ; 2 uses
  %i.ol = load i16, ptr %i.ok, align 2, !tbaa !98
  %i.om = zext i16 %i.ol to i32
  %i.on = getelementptr inbounds nuw i8, ptr %i.ok, i64 2
  %i.oo = load i16, ptr %i.on, align 2, !tbaa !98
  %i.op = sext i16 %i.oo to i32
  br label %get_vlc2.exit335.i

get_vlc2.exit335.i:                               ; preds = %bb.an, %bb.am
  %.167.i332.i = phi i32 [ %i.ns, %bb.am ], [ %i.om, %bb.an ]
  %.165.i333.i = phi i32 [ %i.ne, %bb.am ], [ %i.ny, %bb.an ]
  %.1.i334.i = phi i32 [ %i.nv, %bb.am ], [ %i.op, %bb.an ]
  %i.oq = add i32 %.1.i334.i, %.165.i333.i
  %i.or = call i32 @llvm.umin.i32(i32 %i.nf, i32 %i.oq)
  store i32 %i.or, ptr %i.be, align 8, !tbaa !77
  %i.os = add nsw i32 %.167.i332.i, 1
  br label %bb.ao

bb.ao:                                            ; preds = %get_vlc2.exit335.i, %bb.al
  %.0278.i = phi i32 [ %i.os, %get_vlc2.exit335.i ], [ 0, %bb.al ]
  br label %bb.ap

bb.ap:                                            ; preds = %bb.aw, %bb.ao
  %indvars.iv510.i = phi i64 [ 0, %bb.ao ], [ %indvars.iv.next511.i, %bb.aw ] ; 6 uses
  %.0265464.i = phi i32 [ 0, %bb.ao ], [ %i.qs, %bb.aw ]
  store i32 0, ptr %i.cy, align 8, !tbaa !118
  store i32 0, ptr %i.cz, align 4, !tbaa !117
  %i.ot = load ptr, ptr %i.bn, align 8, !tbaa !116
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv510.i ; 3 uses
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !53
  %i.ow = sext i32 %i.ov to i64
  %i.ox = getelementptr inbounds i8, ptr %i.ot, i64 %i.ow
  store i8 1, ptr %i.ox, align 1, !tbaa !98
  %i.oy = load ptr, ptr %i.bo, align 16, !tbaa !122
  %i.oz = load i32, ptr %i.ou, align 4, !tbaa !53 ; 2 uses
  %i.pa = sext i32 %i.oz to i64
  %i.pb = getelementptr inbounds [2 x i8], ptr %i.oy, i64 %i.pa
  store i16 0, ptr %i.pb, align 2, !tbaa !95
  %i.pc = trunc i64 %indvars.iv510.i to i32       ; 5 uses
  %i.pd = sub i32 5, %i.pc
  %i.pe = lshr i32 %.0278.i, %i.pd
  %i.pf = and i32 %i.pe, 1
  %i.pg = and i32 %i.pc, 6
  %or.cond5.i = icmp eq i32 %i.pg, 2
  br i1 %or.cond5.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ph = load i32, ptr %i.y, align 4, !tbaa !61
  %.not321.i = icmp eq i32 %i.ph, 0
  br i1 %.not321.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.pi = load ptr, ptr %i.bn, align 8, !tbaa !116
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv510.i
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !53
  %i.pl = sub nsw i32 %i.oz, %i.pk
  %i.pm = sext i32 %i.pl to i64
  %i.pn = getelementptr inbounds i8, ptr %i.pi, i64 %i.pm
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !98
  %i.pp = zext i8 %i.po to i32
  store i32 %i.pp, ptr %i.cz, align 4, !tbaa !117
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.pq = and i32 %i.pc, 5
  %or.cond7.i = icmp eq i32 %i.pq, 1
  br i1 %or.cond7.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.pr = load i32, ptr %i.al, align 4, !tbaa !63
  %.not322.i = icmp eq i32 %i.pr, 0
  br i1 %.not322.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ps = load ptr, ptr %i.bn, align 8, !tbaa !116
  %i.pt = load i32, ptr %i.ou, align 4, !tbaa !53
  %i.pu = sext i32 %i.pt to i64
  %i.pv = getelementptr i8, ptr %i.ps, i64 %i.pu
  %i.pw = getelementptr i8, ptr %i.pv, i64 -1
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !98
  %i.py = zext i8 %i.px to i32
  store i32 %i.py, ptr %i.cy, align 8, !tbaa !118
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.pz = load ptr, ptr %i.cr, align 8, !tbaa !89
  %i.qa = load i32, ptr %i.cs, align 4, !tbaa !87
  %i.qb = sext i32 %i.qa to i64
  %i.qc = getelementptr inbounds [768 x i8], ptr %i.pz, i64 %i.qb
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr @block_map, i64 %indvars.iv510.i
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !53
  %i.qf = sext i32 %i.qe to i64                   ; 2 uses
  %i.qg = getelementptr inbounds [128 x i8], ptr %i.qc, i64 %i.qf
  %.not323.i = icmp samesign ult i64 %indvars.iv510.i, 4
  %.in324.v.i = select i1 %.not323.i, i64 6456, i64 6460
  %.in324.i = getelementptr inbounds nuw i8, ptr %0, i64 %.in324.v.i
  %i.qh = load i32, ptr %.in324.i, align 4, !tbaa !53
  %i.qi = call fastcc i32 @vc1_decode_intra_block(ptr noundef nonnull %0, ptr noundef %i.qg, i32 noundef %i.pc, i32 noundef %i.pf, i32 noundef %.6.i, i32 noundef %i.qh) ; 2 uses
  %i.qj = icmp slt i32 %i.qi, 0
  br i1 %i.qj, label %vc1_decode_p_mb_intfi.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.qk = load ptr, ptr %i.db, align 8, !tbaa !129
  %i.ql = load ptr, ptr %i.cr, align 8, !tbaa !89
  %i.qm = load i32, ptr %i.cs, align 4, !tbaa !87
  %i.qn = sext i32 %i.qm to i64
  %i.qo = getelementptr inbounds [768 x i8], ptr %i.ql, i64 %i.qn
  %i.qp = getelementptr inbounds [128 x i8], ptr %i.qo, i64 %i.qf
  call void %i.qk(ptr noundef %i.qp) #10, !inline_history !168
  %i.qq = shl i32 %i.pc, 2
  %i.qr = shl nuw nsw i32 15, %i.qq
  %i.qs = or i32 %i.qr, %.0265464.i               ; 2 uses
  %indvars.iv.next511.i = add nuw nsw i64 %indvars.iv510.i, 1 ; 2 uses
  %exitcond513.not.i = icmp eq i64 %indvars.iv.next511.i, 6
  br i1 %exitcond513.not.i, label %.loopexit.i, label %bb.ap, !llvm.loop !169

bb.ax:                                            ; preds = %get_vlc2.exit339.i
  store i8 0, ptr %i.ig, align 1, !tbaa !98
  store i32 0, ptr %i.bm, align 4, !tbaa !84
  %i.qt = load ptr, ptr %i.bp, align 16, !tbaa !91
  %i.qu = load i32, ptr %i.df, align 4, !tbaa !92
  %i.qv = add nsw i32 %i.qu, %i.gk
  %i.qw = sext i32 %i.qv to i64
  %i.qx = getelementptr inbounds [4 x i8], ptr %i.qt, i64 %i.qw
  store i32 8, ptr %i.qx, align 4, !tbaa !53
  %i.qy = load ptr, ptr %i.bn, align 8, !tbaa !116
  %i.qz = load i32, ptr %i.av, align 16, !tbaa !53
  %i.ra = sext i32 %i.qz to i64
  %i.rb = getelementptr inbounds i8, ptr %i.qy, i64 %i.ra
  store i8 0, ptr %i.rb, align 1, !tbaa !98
  %i.rc = load ptr, ptr %i.bn, align 8, !tbaa !116
  %i.rd = load i32, ptr %i.aw, align 4, !tbaa !53
  %i.re = sext i32 %i.rd to i64
  %i.rf = getelementptr inbounds i8, ptr %i.rc, i64 %i.re
  store i8 0, ptr %i.rf, align 1, !tbaa !98
  %i.rg = load ptr, ptr %i.bn, align 8, !tbaa !116
  %i.rh = load i32, ptr %i.ax, align 8, !tbaa !53
  %i.ri = sext i32 %i.rh to i64
  %i.rj = getelementptr inbounds i8, ptr %i.rg, i64 %i.ri
  store i8 0, ptr %i.rj, align 1, !tbaa !98
  %i.rk = load ptr, ptr %i.bn, align 8, !tbaa !116
  %i.rl = load i32, ptr %i.ay, align 4, !tbaa !53
  %i.rm = sext i32 %i.rl to i64
  %i.rn = getelementptr inbounds i8, ptr %i.rk, i64 %i.rm
  store i8 0, ptr %i.rn, align 1, !tbaa !98
  %i.ro = load ptr, ptr %i.bn, align 8, !tbaa !116
  %i.rp = load i32, ptr %i.az, align 16, !tbaa !53
  %i.rq = sext i32 %i.rp to i64
  %i.rr = getelementptr inbounds i8, ptr %i.ro, i64 %i.rq
  store i8 0, ptr %i.rr, align 1, !tbaa !98
  %i.rs = load ptr, ptr %i.bn, align 8, !tbaa !116
  %i.rt = load i32, ptr %i.ba, align 4, !tbaa !53
  %i.ru = sext i32 %i.rt to i64
  %i.rv = getelementptr inbounds i8, ptr %i.rs, i64 %i.ru
  store i8 0, ptr %i.rv, align 1, !tbaa !98
  %i.rw = icmp samesign ult i32 %.167.i336.i, 6
  br i1 %i.rw, label %bb.ay, label %bb.bl

bb.ay:                                            ; preds = %bb.ax
  %i.rx = and i32 %.167.i336.i, 1
  %.not294.i = icmp eq i32 %i.rx, 0
  br i1 %.not294.i, label %get_mvdata_interlaced.exit350.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ry = load i32, ptr %i.cc, align 16, !tbaa !170 ; 3 uses
  %.not.i340.i = icmp eq i32 %i.ry, 0             ; 3 uses
  %..i341.i = select i1 %.not.i340.i, i32 71, i32 125 ; 2 uses
  %i.rz = load i8, ptr %i.cd, align 1, !tbaa !171
  %i.sa = zext i8 %i.rz to i32                    ; 2 uses
  %i.sb = and i32 %i.sa, 1                        ; 2 uses
  %i.sc = lshr i32 %i.sa, 1
  %i.sd = and i32 %i.sc, 1                        ; 2 uses
  %i.se = load ptr, ptr %i.ce, align 16, !tbaa !172 ; 3 uses
  %i.sf = load i32, ptr %i.be, align 8, !tbaa !77 ; 4 uses
  %i.sg = load i32, ptr %i.bj, align 16, !tbaa !99 ; 7 uses
  %i.sh = load ptr, ptr %i.bg, align 16, !tbaa !97 ; 7 uses
  %i.si = lshr i32 %i.sf, 3
  %i.sj = zext nneg i32 %i.si to i64
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.sj
  %i.sl = load i32, ptr %i.sk, align 1, !tbaa !98
  %i.sm = call i32 @llvm.bswap.i32(i32 %i.sl)
  %i.sn = and i32 %i.sf, 7
  %i.so = shl i32 %i.sm, %i.sn
  %i.sp = lshr i32 %i.so, 23
  %i.sq = zext nneg i32 %i.sp to i64
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %i.sq ; 2 uses
  %i.ss = load i16, ptr %i.sr, align 2, !tbaa !98
  %i.st = sext i16 %i.ss to i32                   ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.sr, i64 2
  %i.sv = load i16, ptr %i.su, align 2, !tbaa !98 ; 2 uses
  %i.sw = sext i16 %i.sv to i32                   ; 3 uses
  %i.sx = icmp slt i16 %i.sv, 0
  br i1 %i.sx, label %bb.ba, label %get_vlc2.exit.i342.i

bb.ba:                                            ; preds = %bb.az
  %i.sy = add i32 %i.sf, 9
  %i.sz = call i32 @llvm.umin.i32(i32 %i.sg, i32 %i.sy) ; 4 uses
  %i.ta = lshr i32 %i.sz, 3
  %i.tb = zext nneg i32 %i.ta to i64
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.tb
  %i.td = load i32, ptr %i.tc, align 1, !tbaa !98
  %i.te = call i32 @llvm.bswap.i32(i32 %i.td)
  %i.tf = and i32 %i.sz, 7
  %i.tg = shl i32 %i.te, %i.tf
  %i.th = add nsw i32 %i.sw, 32
  %i.ti = lshr i32 %i.tg, %i.th
  %i.tj = add i32 %i.ti, %i.st
  %i.tk = zext i32 %i.tj to i64
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %i.tk ; 2 uses
  %i.tm = load i16, ptr %i.tl, align 2, !tbaa !98
  %i.tn = sext i16 %i.tm to i32                   ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tl, i64 2
  %i.tp = load i16, ptr %i.to, align 2, !tbaa !98 ; 2 uses
  %i.tq = sext i16 %i.tp to i32                   ; 2 uses
  %i.tr = icmp slt i16 %i.tp, 0
  br i1 %i.tr, label %bb.bb, label %get_vlc2.exit.i342.i

bb.bb:                                            ; preds = %bb.ba
  %i.ts = sub i32 %i.sz, %i.sw
  %i.tt = call i32 @llvm.umin.i32(i32 %i.sg, i32 %i.ts) ; 3 uses
  %i.tu = lshr i32 %i.tt, 3
  %i.tv = zext nneg i32 %i.tu to i64
  %i.tw = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.tv
  %i.tx = load i32, ptr %i.tw, align 1, !tbaa !98
  %i.ty = call i32 @llvm.bswap.i32(i32 %i.tx)
  %i.tz = and i32 %i.tt, 7
  %i.ua = shl i32 %i.ty, %i.tz
  %i.ub = add nsw i32 %i.tq, 32
  %i.uc = lshr i32 %i.ua, %i.ub
  %i.ud = add i32 %i.uc, %i.tn
  %i.ue = zext i32 %i.ud to i64
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %i.ue ; 2 uses
  %i.ug = load i16, ptr %i.uf, align 2, !tbaa !98
  %i.uh = sext i16 %i.ug to i32
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uf, i64 2
  %i.uj = load i16, ptr %i.ui, align 2, !tbaa !98
  %i.uk = sext i16 %i.uj to i32
  br label %get_vlc2.exit.i342.i

get_vlc2.exit.i342.i:                             ; preds = %bb.bb, %bb.ba, %bb.az
  %.167.i.i343.i = phi i32 [ %i.st, %bb.az ], [ %i.uh, %bb.bb ], [ %i.tn, %bb.ba ] ; 3 uses
  %.165.i.i344.i = phi i32 [ %i.sf, %bb.az ], [ %i.tt, %bb.bb ], [ %i.sz, %bb.ba ]
  %.1.i.i345.i = phi i32 [ %i.sw, %bb.az ], [ %i.uk, %bb.bb ], [ %i.tq, %bb.ba ]
  %i.ul = add i32 %.1.i.i345.i, %.165.i.i344.i
  %i.um = call i32 @llvm.umin.i32(i32 %i.sg, i32 %i.ul) ; 8 uses
  store i32 %i.um, ptr %i.be, align 8, !tbaa !77
  %i.un = icmp eq i32 %.167.i.i343.i, %..i341.i
  br i1 %i.un, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %get_vlc2.exit.i342.i
  %i.uo = load i32, ptr %i.cf, align 8, !tbaa !173 ; 2 uses
  %i.up = lshr i32 %i.um, 3
  %i.uq = zext nneg i32 %i.up to i64
  %i.ur = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.uq
  %i.us = load i32, ptr %i.ur, align 1, !tbaa !98
  %i.ut = call i32 @llvm.bswap.i32(i32 %i.us)
  %i.uu = and i32 %i.um, 7
  %i.uv = shl i32 %i.ut, %i.uu
  %i.uw = sub nsw i32 32, %i.uo
  %i.ux = lshr i32 %i.uv, %i.uw                   ; 2 uses
  %i.uy = add i32 %i.uo, %i.um
  %i.uz = call i32 @llvm.umin.i32(i32 %i.sg, i32 %i.uy) ; 4 uses
  store i32 %i.uz, ptr %i.be, align 8, !tbaa !77
  %i.va = load i32, ptr %i.cg, align 4, !tbaa !174 ; 2 uses
  %i.vb = lshr i32 %i.uz, 3
  %i.vc = zext nneg i32 %i.vb to i64
  %i.vd = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.vc
  %i.ve = load i32, ptr %i.vd, align 1, !tbaa !98
  %i.vf = call i32 @llvm.bswap.i32(i32 %i.ve)
  %i.vg = and i32 %i.uz, 7
  %i.vh = shl i32 %i.vf, %i.vg
  %i.vi = sub nsw i32 32, %i.va
  %i.vj = lshr i32 %i.vh, %i.vi                   ; 3 uses
  %i.vk = add i32 %i.va, %i.uz
  %i.vl = call i32 @llvm.umin.i32(i32 %i.sg, i32 %i.vk)
  store i32 %i.vl, ptr %i.be, align 8, !tbaa !77
  br i1 %.not.i340.i, label %get_mvdata_interlaced.exit350.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.vm = and i32 %i.vj, 1                        ; 2 uses
  %i.vn = add nsw i32 %i.vm, %i.vj
  %i.vo = ashr i32 %i.vn, 1
  br label %get_mvdata_interlaced.exit350.i

bb.be:                                            ; preds = %get_vlc2.exit.i342.i
  %i.vp = icmp slt i32 %.167.i.i343.i, %..i341.i
  br i1 %i.vp, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 296) #10
  call void @abort() #11
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.vq = trunc nsw i32 %.167.i.i343.i to i16
  %.lhs.trunc.i = add nsw i16 %i.vq, 1            ; 2 uses
  %i.vr = srem i16 %.lhs.trunc.i, 9               ; 3 uses
  %i.vs = sdiv i16 %.lhs.trunc.i, 9
  %.not63.i346.i = icmp eq i16 %i.vr, 0
  br i1 %.not63.i346.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.sext.i = sext i16 %i.vr to i32
  %i.vt = add nsw i32 %i.sb, %.sext.i             ; 2 uses
  %i.vu = lshr i32 %i.um, 3
  %i.vv = zext nneg i32 %i.vu to i64
  %i.vw = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.vv
  %i.vx = load i32, ptr %i.vw, align 1, !tbaa !98
  %i.vy = call i32 @llvm.bswap.i32(i32 %i.vx)
  %i.vz = and i32 %i.um, 7
end_hunk_0
begin_hunk_1_@vc1_decode_p_blocks:bb.a
  %i.bcb = shl nuw i32 1, %i.bca
  br label %bb.ex

bb.ew:                                            ; preds = %bb.en
  %i.bcc = load i8, ptr %i.cj, align 2, !tbaa !111
  %i.bcd = zext nneg i8 %i.bcc to i32
  %i.bce = shl i32 3, %i.bcd
  %i.bcf = srem i32 %i.bce, 15
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %.0374.i = phi i32 [ %i.bcb, %bb.ev ], [ %i.bcf, %bb.ew ] ; 3 uses
  %i.bcg = and i32 %.0374.i, 1
  %.not438.i = icmp eq i32 %i.bcg, 0
  br i1 %.not438.i, label %bb.ez, label %.thread542.i

.thread542.i:                                     ; preds = %bb.ex, %bb.en
  %.0374547.i = phi i32 [ %.0374.i, %bb.ex ], [ 15, %bb.en ] ; 2 uses
  %i.bch = load i32, ptr %i.al, align 4, !tbaa !63
  %.not439.i = icmp eq i32 %i.bch, 0
  br i1 %.not439.i, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %.thread542.i
  %i.bci = load i8, ptr %i.ck, align 1, !tbaa !110
  %i.bcj = zext i8 %i.bci to i32
  %i.bck = sub nsw i32 0, %i.bcj
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %.thread542.i, %bb.ex
  %.0374541.i = phi i32 [ %.0374547.i, %.thread542.i ], [ %.0374547.i, %bb.ey ], [ %.0374.i, %bb.ex ] ; 3 uses
  %.1389.i = phi i32 [ %i.arn, %.thread542.i ], [ %i.bck, %bb.ey ], [ %i.arn, %bb.ex ] ; 2 uses
  %i.bcl = and i32 %.0374541.i, 2
  %.not440.i = icmp eq i32 %i.bcl, 0
  br i1 %.not440.i, label %bb.fc, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.bcm = load i32, ptr %i.ah, align 8, !tbaa !62
  %.not441.i = icmp eq i32 %i.bcm, 0
  br i1 %.not441.i, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.bcn = load i8, ptr %i.ck, align 1, !tbaa !110
  %i.bco = zext i8 %i.bcn to i32
  %i.bcp = sub nsw i32 0, %i.bco
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa, %bb.ez
  %.2390.i = phi i32 [ %.1389.i, %bb.fa ], [ %i.bcp, %bb.fb ], [ %.1389.i, %bb.ez ] ; 2 uses
  %i.bcq = and i32 %.0374541.i, 4
  %.not442.i = icmp eq i32 %i.bcq, 0
  br i1 %.not442.i, label %bb.ff, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.bcr = load i32, ptr %i.al, align 4, !tbaa !63
  %i.bcs = load i32, ptr %i.at, align 4, !tbaa !59
  %i.bct = add nsw i32 %i.bcs, -1
  %i.bcu = icmp eq i32 %i.bcr, %i.bct
  br i1 %i.bcu, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.bcv = load i8, ptr %i.ck, align 1, !tbaa !110
  %i.bcw = zext i8 %i.bcv to i32
  %i.bcx = sub nsw i32 0, %i.bcw
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd, %bb.fc
  %.3391.i = phi i32 [ %i.bcx, %bb.fe ], [ %.2390.i, %bb.fd ], [ %.2390.i, %bb.fc ] ; 2 uses
  %i.bcy = and i32 %.0374541.i, 8
  %.not443.i = icmp eq i32 %i.bcy, 0
  br i1 %.not443.i, label %.thread558.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.bcz = load i32, ptr %i.ah, align 8, !tbaa !62
  %i.bda = load i32, ptr %i.cl, align 8, !tbaa !112
  %i.bdb = load i32, ptr %i.am, align 16, !tbaa !64
  %i.bdc = ashr i32 %i.bda, %i.bdb
  %i.bdd = add nsw i32 %i.bdc, -1
  %i.bde = icmp eq i32 %i.bcz, %i.bdd
  br i1 %i.bde, label %bb.fh, label %.thread558.i

bb.fh:                                            ; preds = %bb.fg
  %i.bdf = load i8, ptr %i.ck, align 1, !tbaa !110
  %i.bdg = zext i8 %i.bdf to i32
  %i.bdh = sub nsw i32 0, %i.bdg
  br label %.thread558.i

.thread558.i:                                     ; preds = %bb.fh, %bb.fg, %bb.ff, %bb.eu, %bb.et, %bb.er, %bb.eq, %bb.en
  %.4.i150 = phi i32 [ %i.bdh, %bb.fh ], [ %.3391.i, %bb.fg ], [ %.3391.i, %bb.ff ], [ %i.arn, %bb.en ], [ %i.bax, %bb.er ], [ %i.bav, %bb.eq ], [ %i.bby, %bb.eu ], [ %i.bbn, %bb.et ] ; 4 uses
  %i.bdi = icmp eq i32 %.4.i150, 0
  %i.bdj = add nsw i32 %.4.i150, -32
  %i.bdk = icmp ult i32 %i.bdj, -63
  %or.cond3.i151 = or i1 %i.bdi, %i.bdk
  br i1 %or.cond3.i151, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %.thread558.i
  %i.bdl = load ptr, ptr %i.cn, align 8, !tbaa !113
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bdl, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %.4.i150) #10
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %.thread558.i, %bb.em
  %.6.i152 = phi i32 [ %i.arn, %bb.em ], [ 1, %bb.fi ], [ %.4.i150, %.thread558.i ] ; 3 uses
  %i.bdm = trunc i32 %.6.i152 to i8
  %i.bdn = load ptr, ptr %i.bq, align 8, !tbaa !114
  %i.bdo = getelementptr inbounds i8, ptr %i.bdn, i64 %i.aww
  store i8 %i.bdm, ptr %i.bdo, align 1, !tbaa !98
  %i.bdp = call i32 @llvm.abs.i32(i32 %.6.i152, i1 true)
  %i.bdq = zext nneg i32 %i.bdp to i64
  %i.bdr = getelementptr inbounds nuw i8, ptr @ff_wmv3_dc_scale_table, i64 %i.bdq
  %i.bds = load i8, ptr %i.bdr, align 1, !tbaa !98
  %i.bdt = zext i8 %i.bds to i32
  store i32 %i.bdt, ptr %i.cx, align 8, !tbaa !115
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fr, %bb.fj
  %indvars.iv655.i = phi i64 [ 0, %bb.fj ], [ %indvars.iv.next656.i, %bb.fr ] ; 6 uses
  %.0376627.i = phi i32 [ 0, %bb.fj ], [ %i.bft, %bb.fr ]
  store i32 0, ptr %i.cy, align 8, !tbaa !118
  store i32 0, ptr %i.cz, align 4, !tbaa !117
  %i.bdu = load ptr, ptr %i.bn, align 8, !tbaa !116
  %i.bdv = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv655.i ; 3 uses
  %i.bdw = load i32, ptr %i.bdv, align 4, !tbaa !53
  %i.bdx = sext i32 %i.bdw to i64
  %i.bdy = getelementptr inbounds i8, ptr %i.bdu, i64 %i.bdx
  store i8 1, ptr %i.bdy, align 1, !tbaa !98
  %i.bdz = load ptr, ptr %i.bo, align 16, !tbaa !122
  %i.bea = load i32, ptr %i.bdv, align 4, !tbaa !53 ; 2 uses
  %i.beb = sext i32 %i.bea to i64
  %i.bec = getelementptr inbounds [2 x i8], ptr %i.bdz, i64 %i.beb
  store i16 0, ptr %i.bec, align 2, !tbaa !95
  %i.bed = trunc i64 %indvars.iv655.i to i32      ; 5 uses
  %i.bee = sub i32 5, %i.bed
  %i.bef = lshr i32 %.0392.i, %i.bee
  %i.beg = and i32 %i.bef, 1
  %i.beh = and i32 %i.bed, 6
  %or.cond5.i153 = icmp eq i32 %i.beh, 2
  br i1 %or.cond5.i153, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.bei = load i32, ptr %i.y, align 4, !tbaa !61
  %.not444.i = icmp eq i32 %i.bei, 0
  br i1 %.not444.i, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %i.bej = load ptr, ptr %i.bn, align 8, !tbaa !116
  %i.bek = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv655.i
  %i.bel = load i32, ptr %i.bek, align 4, !tbaa !53
  %i.bem = sub nsw i32 %i.bea, %i.bel
  %i.ben = sext i32 %i.bem to i64
  %i.beo = getelementptr inbounds i8, ptr %i.bej, i64 %i.ben
  %i.bep = load i8, ptr %i.beo, align 1, !tbaa !98
  %i.beq = zext i8 %i.bep to i32
  store i32 %i.beq, ptr %i.cz, align 4, !tbaa !117
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %i.ber = and i32 %i.bed, 5
  %or.cond7.i154 = icmp eq i32 %i.ber, 1
  br i1 %or.cond7.i154, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.bes = load i32, ptr %i.al, align 4, !tbaa !63
  %.not445.i = icmp eq i32 %i.bes, 0
  br i1 %.not445.i, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %i.bet = load ptr, ptr %i.bn, align 8, !tbaa !116
  %i.beu = load i32, ptr %i.bdv, align 4, !tbaa !53
  %i.bev = sext i32 %i.beu to i64
  %i.bew = getelementptr i8, ptr %i.bet, i64 %i.bev
  %i.bex = getelementptr i8, ptr %i.bew, i64 -1
  %i.bey = load i8, ptr %i.bex, align 1, !tbaa !98
  %i.bez = zext i8 %i.bey to i32
  store i32 %i.bez, ptr %i.cy, align 8, !tbaa !118
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %i.bfa = load ptr, ptr %i.cr, align 8, !tbaa !89
  %i.bfb = load i32, ptr %i.cs, align 4, !tbaa !87
  %i.bfc = sext i32 %i.bfb to i64
  %i.bfd = getelementptr inbounds [768 x i8], ptr %i.bfa, i64 %i.bfc
  %i.bfe = getelementptr inbounds nuw [4 x i8], ptr @block_map, i64 %indvars.iv655.i
  %i.bff = load i32, ptr %i.bfe, align 4, !tbaa !53
  %i.bfg = sext i32 %i.bff to i64                 ; 2 uses
  %i.bfh = getelementptr inbounds [128 x i8], ptr %i.bfd, i64 %i.bfg
  %.not446.i = icmp samesign ult i64 %indvars.iv655.i, 4
  %.in.v.i = select i1 %.not446.i, i64 6456, i64 6460
  %.in.i155 = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v.i
  %i.bfi = load i32, ptr %.in.i155, align 4, !tbaa !53
  %i.bfj = call fastcc i32 @vc1_decode_intra_block(ptr noundef nonnull %0, ptr noundef %i.bfh, i32 noundef %i.bed, i32 noundef %i.beg, i32 noundef %.6.i152, i32 noundef %i.bfi) ; 2 uses
  %i.bfk = icmp slt i32 %i.bfj, 0
  br i1 %i.bfk, label %vc1_decode_p_mb_intfr.exit, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.bfl = load ptr, ptr %i.db, align 8, !tbaa !129
  %i.bfm = load ptr, ptr %i.cr, align 8, !tbaa !89
  %i.bfn = load i32, ptr %i.cs, align 4, !tbaa !87
  %i.bfo = sext i32 %i.bfn to i64
  %i.bfp = getelementptr inbounds [768 x i8], ptr %i.bfm, i64 %i.bfo
  %i.bfq = getelementptr inbounds [128 x i8], ptr %i.bfp, i64 %i.bfg
  call void %i.bfl(ptr noundef %i.bfq) #10, !inline_history !188
  %i.bfr = shl i32 %i.bed, 2
  %i.bfs = shl nuw nsw i32 15, %i.bfr
  %i.bft = or i32 %i.bfs, %.0376627.i             ; 2 uses
  %indvars.iv.next656.i = add nuw nsw i64 %indvars.iv655.i, 1 ; 2 uses
  %exitcond658.not.i = icmp eq i64 %indvars.iv.next656.i, 6
  br i1 %exitcond658.not.i, label %.loopexit.i117, label %bb.fk, !llvm.loop !189

bb.fs:                                            ; preds = %bb.ej
  %i.bfu = getelementptr inbounds [60 x i8], ptr @ff_vc1_mbmode_intfrp, i64 %.pre-phi
  %i.bfv = getelementptr inbounds [4 x i8], ptr %i.bfu, i64 %i.avd
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.bfv, i64 3
  %i.bfx = load i8, ptr %i.bfw, align 1, !tbaa !98
  %.not411.i = icmp eq i8 %i.bfx, 0
  br i1 %.not411.i, label %bb.fv, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.bfy = load ptr, ptr %i.bx, align 16, !tbaa !167 ; 2 uses
  %i.bfz = load i32, ptr %i.be, align 8, !tbaa !77 ; 4 uses
  %i.bga = load i32, ptr %i.bj, align 16, !tbaa !99 ; 2 uses
  %i.bgb = load ptr, ptr %i.bg, align 16, !tbaa !97 ; 2 uses
  %i.bgc = lshr i32 %i.bfz, 3
  %i.bgd = zext nneg i32 %i.bgc to i64
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bgb, i64 %i.bgd
  %i.bgf = load i32, ptr %i.bge, align 1, !tbaa !98
  %i.bgg = call i32 @llvm.bswap.i32(i32 %i.bgf)
  %i.bgh = and i32 %i.bfz, 7
  %i.bgi = shl i32 %i.bgg, %i.bgh
  %i.bgj = lshr i32 %i.bgi, 23
  %i.bgk = zext nneg i32 %i.bgj to i64
  %i.bgl = getelementptr inbounds nuw [4 x i8], ptr %i.bfy, i64 %i.bgk ; 2 uses
  %i.bgm = load i16, ptr %i.bgl, align 2, !tbaa !98
  %i.bgn = sext i16 %i.bgm to i32                 ; 2 uses
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.bgl, i64 2
  %i.bgp = load i16, ptr %i.bgo, align 2, !tbaa !98 ; 2 uses
  %i.bgq = sext i16 %i.bgp to i32                 ; 2 uses
  %i.bgr = icmp slt i16 %i.bgp, 0
  br i1 %i.bgr, label %bb.fu, label %get_vlc2.exit457.i

bb.fu:                                            ; preds = %bb.ft
  %i.bgs = add i32 %i.bfz, 9
  %i.bgt = call i32 @llvm.umin.i32(i32 %i.bga, i32 %i.bgs) ; 3 uses
  %i.bgu = lshr i32 %i.bgt, 3
  %i.bgv = zext nneg i32 %i.bgu to i64
  %i.bgw = getelementptr inbounds nuw i8, ptr %i.bgb, i64 %i.bgv
  %i.bgx = load i32, ptr %i.bgw, align 1, !tbaa !98
  %i.bgy = call i32 @llvm.bswap.i32(i32 %i.bgx)
  %i.bgz = and i32 %i.bgt, 7
  %i.bha = shl i32 %i.bgy, %i.bgz
  %i.bhb = add nsw i32 %i.bgq, 32
  %i.bhc = lshr i32 %i.bha, %i.bhb
  %i.bhd = add i32 %i.bhc, %i.bgn
  %i.bhe = zext i32 %i.bhd to i64
  %i.bhf = getelementptr inbounds nuw [4 x i8], ptr %i.bfy, i64 %i.bhe ; 2 uses
  %i.bhg = load i16, ptr %i.bhf, align 2, !tbaa !98
  %i.bhh = sext i16 %i.bhg to i32
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bhf, i64 2
  %i.bhj = load i16, ptr %i.bhi, align 2, !tbaa !98
  %i.bhk = sext i16 %i.bhj to i32
  br label %get_vlc2.exit457.i

get_vlc2.exit457.i:                               ; preds = %bb.fu, %bb.ft
  %.167.i454.i = phi i32 [ %i.bgn, %bb.ft ], [ %i.bhh, %bb.fu ]
  %.165.i455.i = phi i32 [ %i.bfz, %bb.ft ], [ %i.bgt, %bb.fu ]
  %.1.i456.i = phi i32 [ %i.bgq, %bb.ft ], [ %i.bhk, %bb.fu ]
  %i.bhl = add i32 %.1.i456.i, %.165.i455.i
  %i.bhm = call i32 @llvm.umin.i32(i32 %i.bga, i32 %i.bhl)
  store i32 %i.bhm, ptr %i.be, align 8, !tbaa !77
  %i.bhn = add nsw i32 %.167.i454.i, 1
  br label %bb.fv

bb.fv:                                            ; preds = %get_vlc2.exit457.i, %bb.fs
  %.1393.i = phi i32 [ %i.bhn, %get_vlc2.exit457.i ], [ 0, %bb.fs ] ; 7 uses
  switch i8 %i.avy, label %bb.fy [
    i8 1, label %bb.fw
    i8 4, label %bb.fx
    i8 3, label %bb.fx
  ]

bb.fw:                                            ; preds = %bb.fv
  %i.bho = load ptr, ptr %i.ca, align 8, !tbaa !190
  %i.bhp = load i32, ptr %i.be, align 8, !tbaa !77 ; 3 uses
  %i.bhq = load i32, ptr %i.bj, align 16, !tbaa !99
  %i.bhr = load ptr, ptr %i.bg, align 16, !tbaa !97
  %i.bhs = lshr i32 %i.bhp, 3
  %i.bht = zext nneg i32 %i.bhs to i64
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bhr, i64 %i.bht
  %i.bhv = load i32, ptr %i.bhu, align 1, !tbaa !98
  %i.bhw = call i32 @llvm.bswap.i32(i32 %i.bhv)
  %i.bhx = and i32 %i.bhp, 7
  %i.bhy = shl i32 %i.bhw, %i.bhx
  %i.bhz = lshr i32 %i.bhy, 29
  %i.bia = zext nneg i32 %i.bhz to i64
  %i.bib = getelementptr inbounds nuw [4 x i8], ptr %i.bho, i64 %i.bia ; 2 uses
  %i.bic = load i16, ptr %i.bib, align 2, !tbaa !98
  %i.bid = getelementptr inbounds nuw i8, ptr %i.bib, i64 2
  %i.bie = load i16, ptr %i.bid, align 2, !tbaa !98
  %i.bif = sext i16 %i.bie to i32
  %i.big = add i32 %i.bhp, %i.bif
  %i.bih = call i32 @llvm.umin.i32(i32 %i.bhq, i32 %i.big)
  store i32 %i.bih, ptr %i.be, align 8, !tbaa !77
  %i.bii = trunc i16 %i.bic to i8
  store i8 %i.bii, ptr %i.cb, align 8, !tbaa !191
  br label %bb.fy

bb.fx:                                            ; preds = %bb.fv, %bb.fv
  %i.bij = load ptr, ptr %i.by, align 16, !tbaa !177
  %i.bik = load i32, ptr %i.be, align 8, !tbaa !77 ; 3 uses
  %i.bil = load i32, ptr %i.bj, align 16, !tbaa !99
  %i.bim = load ptr, ptr %i.bg, align 16, !tbaa !97
  %i.bin = lshr i32 %i.bik, 3
  %i.bio = zext nneg i32 %i.bin to i64
  %i.bip = getelementptr inbounds nuw i8, ptr %i.bim, i64 %i.bio
  %i.biq = load i32, ptr %i.bip, align 1, !tbaa !98
  %i.bir = call i32 @llvm.bswap.i32(i32 %i.biq)
  %i.bis = and i32 %i.bik, 7
  %i.bit = shl i32 %i.bir, %i.bis
  %i.biu = lshr i32 %i.bit, 26
  %i.biv = zext nneg i32 %i.biu to i64
  %i.biw = getelementptr inbounds nuw [4 x i8], ptr %i.bij, i64 %i.biv ; 2 uses
  %i.bix = load i16, ptr %i.biw, align 2, !tbaa !98
  %i.biy = getelementptr inbounds nuw i8, ptr %i.biw, i64 2
  %i.biz = load i16, ptr %i.biy, align 2, !tbaa !98
  %i.bja = sext i16 %i.biz to i32
  %i.bjb = add i32 %i.bik, %i.bja
  %i.bjc = call i32 @llvm.umin.i32(i32 %i.bil, i32 %i.bjb)
  store i32 %i.bjc, ptr %i.be, align 8, !tbaa !77
  %i.bjd = trunc i16 %i.bix to i8
  store i8 %i.bjd, ptr %i.bz, align 1, !tbaa !178
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw, %bb.fv
  %i.bje = load ptr, ptr %i.bl, align 16, !tbaa !166
  %i.bjf = load i32, ptr %i.al, align 4, !tbaa !63
  %i.bjg = sext i32 %i.bjf to i64
  %i.bjh = getelementptr inbounds i8, ptr %i.bje, i64 %i.bjg
  store i8 0, ptr %i.bjh, align 1, !tbaa !98
  store i32 0, ptr %i.bm, align 4, !tbaa !84
  %i.bji = load ptr, ptr %i.bn, align 8, !tbaa !116
  %i.bjj = load i32, ptr %i.av, align 16, !tbaa !53
  %i.bjk = sext i32 %i.bjj to i64
  %i.bjl = getelementptr inbounds i8, ptr %i.bji, i64 %i.bjk
  store i8 0, ptr %i.bjl, align 1, !tbaa !98
  %i.bjm = load ptr, ptr %i.bn, align 8, !tbaa !116
  %i.bjn = load i32, ptr %i.aw, align 4, !tbaa !53
  %i.bjo = sext i32 %i.bjn to i64
  %i.bjp = getelementptr inbounds i8, ptr %i.bjm, i64 %i.bjo
  store i8 0, ptr %i.bjp, align 1, !tbaa !98
  %i.bjq = load ptr, ptr %i.bn, align 8, !tbaa !116
  %i.bjr = load i32, ptr %i.ax, align 8, !tbaa !53
  %i.bjs = sext i32 %i.bjr to i64
  %i.bjt = getelementptr inbounds i8, ptr %i.bjq, i64 %i.bjs
  store i8 0, ptr %i.bjt, align 1, !tbaa !98
  %i.bju = load ptr, ptr %i.bn, align 8, !tbaa !116
  %i.bjv = load i32, ptr %i.ay, align 4, !tbaa !53
  %i.bjw = sext i32 %i.bjv to i64
  %i.bjx = getelementptr inbounds i8, ptr %i.bju, i64 %i.bjw
  store i8 0, ptr %i.bjx, align 1, !tbaa !98
  %i.bjy = load ptr, ptr %i.bn, align 8, !tbaa !116
  %i.bjz = load i32, ptr %i.az, align 16, !tbaa !53
  %i.bka = sext i32 %i.bjz to i64
  %i.bkb = getelementptr inbounds i8, ptr %i.bjy, i64 %i.bka
  store i8 0, ptr %i.bkb, align 1, !tbaa !98
  %i.bkc = load ptr, ptr %i.bn, align 8, !tbaa !116
  %i.bkd = load i32, ptr %i.ba, align 4, !tbaa !53
  %i.bke = sext i32 %i.bkd to i64
  %i.bkf = getelementptr inbounds i8, ptr %i.bkc, i64 %i.bke
  store i8 0, ptr %i.bkf, align 1, !tbaa !98
  %i.bkg = load i32, ptr %i.bv, align 4, !tbaa !186
  %i.bkh = sext i32 %i.bkg to i64
  %i.bki = getelementptr inbounds [60 x i8], ptr @ff_vc1_mbmode_intfrp, i64 %i.bkh
  %i.bkj = getelementptr inbounds [4 x i8], ptr %i.bki, i64 %i.avd
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.bkj, i64 1
  %i.bkl = load i8, ptr %i.bkk, align 1, !tbaa !98 ; 4 uses
  %i.bkm = load ptr, ptr %i.bu, align 16, !tbaa !100
  %i.bkn = sext i32 %i.gk to i64                  ; 3 uses
  %i.bko = getelementptr inbounds i8, ptr %i.bkm, i64 %i.bkn
  store i8 %i.bkl, ptr %i.bko, align 1, !tbaa !98
  br i1 %.not412.i, label %bb.gn, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.bkp = load i8, ptr %i.bz, align 1, !tbaa !178
  %i.bkq = zext i8 %i.bkp to i32
  br label %bb.ga

bb.ga:                                            ; preds = %get_mvdata_interlaced.exit502.i, %bb.fz
  %.3397619.i = phi i32 [ 0, %bb.fz ], [ %i.bqp, %get_mvdata_interlaced.exit502.i ] ; 4 uses
  %i.bkr = lshr exact i32 8, %.3397619.i
  %i.bks = and i32 %i.bkr, %i.bkq
  %.not432.i = icmp eq i32 %i.bks, 0
  br i1 %.not432.i, label %get_mvdata_interlaced.exit502.i, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.bkt = load i32, ptr %i.cc, align 16, !tbaa !170 ; 3 uses
  %.not.i492.i = icmp eq i32 %i.bkt, 0            ; 2 uses
  %..i493.i = select i1 %.not.i492.i, i32 71, i32 125 ; 2 uses
  %i.bku = load i8, ptr %i.cd, align 1, !tbaa !171
  %i.bkv = zext i8 %i.bku to i32                  ; 2 uses
  %i.bkw = and i32 %i.bkv, 1                      ; 2 uses
  %i.bkx = lshr i32 %i.bkv, 1
  %i.bky = and i32 %i.bkx, 1                      ; 2 uses
  %i.bkz = load ptr, ptr %i.ce, align 16, !tbaa !172 ; 3 uses
end_hunk_1
begin_hunk_2_@vc1_decode_p_blocks:bb.a
  %i.dnx = call i32 @llvm.umin.i32(i32 %i.dne, i32 %i.dnw) ; 3 uses
  %i.dny = lshr i32 %i.dnx, 3
  %i.dnz = zext nneg i32 %i.dny to i64
  %i.doa = getelementptr inbounds nuw i8, ptr %i.dnf, i64 %i.dnz
  %i.dob = load i32, ptr %i.doa, align 1, !tbaa !98
  %i.doc = call i32 @llvm.bswap.i32(i32 %i.dob)
  %i.dod = and i32 %i.dnx, 7
  %i.doe = shl i32 %i.doc, %i.dod
  %i.dof = add nsw i32 %i.dnu, 32
  %i.dog = lshr i32 %i.doe, %i.dof
  %i.doh = add i32 %i.dog, %i.dnr
  %i.doi = zext i32 %i.doh to i64
  %i.doj = getelementptr inbounds nuw [4 x i8], ptr %i.dnc, i64 %i.doi ; 2 uses
  %i.dok = load i16, ptr %i.doj, align 2, !tbaa !98
  %i.dol = sext i16 %i.dok to i32
  %i.dom = getelementptr inbounds nuw i8, ptr %i.doj, i64 2
  %i.don = load i16, ptr %i.dom, align 2, !tbaa !98
  %i.doo = sext i16 %i.don to i32
  br label %thread-pre-split837.thread.i

thread-pre-split837.thread.i:                     ; preds = %bb.mk, %bb.mj
  %.167.i737.i = phi i32 [ %i.dnr, %bb.mj ], [ %i.dol, %bb.mk ]
  %.165.i738.i = phi i32 [ %i.dnd, %bb.mj ], [ %i.dnx, %bb.mk ]
  %.1.i739.i = phi i32 [ %i.dnu, %bb.mj ], [ %i.doo, %bb.mk ]
  %i.dop = add i32 %.1.i739.i, %.165.i738.i
  %i.doq = call i32 @llvm.umin.i32(i32 %i.dne, i32 %i.dop)
  store i32 %i.doq, ptr %i.be, align 8, !tbaa !77
  br label %bb.ml

thread-pre-split837.i:                            ; preds = %bb.mi
  br i1 %i.dmy, label %bb.ml, label %.preheader

bb.ml:                                            ; preds = %thread-pre-split837.i, %thread-pre-split837.thread.i
  %.0609973.i = phi i32 [ %.167.i737.i, %thread-pre-split837.thread.i ], [ %i.gl, %thread-pre-split837.i ]
  call void @ff_vc1_mc_1mv(ptr noundef nonnull %0, i32 noundef 0) #10
  br label %.preheader

.preheader:                                       ; preds = %bb.ml, %thread-pre-split837.i
  %.1610909.i.ph = phi i32 [ %i.gl, %thread-pre-split837.i ], [ %.0609973.i, %bb.ml ]
  br label %bb.mm

bb.mm:                                            ; preds = %.preheader, %bb.na
  %indvars.iv936.i = phi i64 [ %indvars.iv.next937.i, %bb.na ], [ 0, %.preheader ] ; 7 uses
  %.0580913.i = phi i32 [ %.1581.i, %bb.na ], [ 0, %.preheader ] ; 3 uses
  %.0582912.i = phi i32 [ %.1583.i, %bb.na ], [ 0, %.preheader ] ; 3 uses
  %.0590911.i = phi i32 [ %i.doy, %bb.na ], [ 0, %.preheader ]
  %.0592910.i = phi i32 [ %.1593.i, %bb.na ], [ 1, %.preheader ] ; 3 uses
  %.1610909.i = phi i32 [ %.2611.i, %bb.na ], [ %.1610909.i.ph, %.preheader ] ; 5 uses
  %i.dor = load ptr, ptr %i.bo, align 16, !tbaa !122
  %i.dos = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv936.i ; 3 uses
  %i.dot = load i32, ptr %i.dos, align 4, !tbaa !53
  %i.dou = sext i32 %i.dot to i64                 ; 2 uses
  %i.dov = getelementptr inbounds [2 x i8], ptr %i.dor, i64 %i.dou
  store i16 0, ptr %i.dov, align 2, !tbaa !95
  %i.dow = trunc i64 %indvars.iv936.i to i32      ; 11 uses
  %i.dox = lshr i32 %i.dow, 2
  %i.doy = add nuw nsw i32 %.0590911.i, %i.dox    ; 2 uses
  %i.doz = sub i32 5, %i.dow
  %i.dpa = lshr i32 %.0621.i, %i.doz
  %i.dpb = and i32 %i.dpa, 1                      ; 2 uses
  %.not688.i = icmp samesign ult i64 %indvars.iv936.i, 4 ; 3 uses
  br i1 %.not688.i, label %bb.mn, label %bb.mo

bb.mn:                                            ; preds = %bb.mm
  %i.dpc = shl nuw nsw i32 %i.dow, 3
  %i.dpd = and i32 %i.dpc, 8
  %i.dpe = shl nuw nsw i32 %i.dow, 2
  %i.dpf = and i32 %i.dpe, 8
  %i.dpg = load i64, ptr %i.cq, align 16, !tbaa !72
  %i.dph = trunc i64 %i.dpg to i32
  %i.dpi = mul i32 %i.dpf, %i.dph
  %i.dpj = add i32 %i.dpi, %i.dpd
  %i.dpk = sext i32 %i.dpj to i64
  br label %bb.mo

bb.mo:                                            ; preds = %bb.mn, %bb.mm
  %i.dpl = phi i64 [ %i.dpk, %bb.mn ], [ 0, %bb.mm ]
  %i.dpm = load i32, ptr %i.bm, align 4, !tbaa !84
  %i.dpn = trunc i32 %i.dpm to i8
  %i.dpo = load ptr, ptr %i.bn, align 8, !tbaa !116
  %i.dpp = getelementptr inbounds i8, ptr %i.dpo, i64 %i.dou
  store i8 %i.dpn, ptr %i.dpp, align 1, !tbaa !98
  %i.dpq = load i32, ptr %i.bm, align 4, !tbaa !84
  %.not689.i = icmp eq i32 %i.dpq, 0
  br i1 %.not689.i, label %bb.mx, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  store i32 0, ptr %i.cy, align 8, !tbaa !118
  store i32 0, ptr %i.cz, align 4, !tbaa !117
  %i.dpr = and i32 %i.dow, 6
  %or.cond13.i = icmp eq i32 %i.dpr, 2
  br i1 %or.cond13.i, label %bb.mr, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  %i.dps = load i32, ptr %i.y, align 4, !tbaa !61
  %.not691.i = icmp eq i32 %i.dps, 0
  br i1 %.not691.i, label %bb.mr, label %bb.ms

bb.mr:                                            ; preds = %bb.mq, %bb.mp
  %i.dpt = load ptr, ptr %i.bn, align 8, !tbaa !116
  %i.dpu = load i32, ptr %i.dos, align 4, !tbaa !53
  %i.dpv = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv936.i
  %i.dpw = load i32, ptr %i.dpv, align 4, !tbaa !53
  %i.dpx = sub nsw i32 %i.dpu, %i.dpw
  %i.dpy = sext i32 %i.dpx to i64
  %i.dpz = getelementptr inbounds i8, ptr %i.dpt, i64 %i.dpy
  %i.dqa = load i8, ptr %i.dpz, align 1, !tbaa !98
  %i.dqb = zext i8 %i.dqa to i32
  store i32 %i.dqb, ptr %i.cz, align 4, !tbaa !117
  br label %bb.ms

bb.ms:                                            ; preds = %bb.mr, %bb.mq
  %i.dqc = and i32 %i.dow, 5
  %or.cond15.i171 = icmp eq i32 %i.dqc, 1
  br i1 %or.cond15.i171, label %bb.mu, label %bb.mt

bb.mt:                                            ; preds = %bb.ms
  %i.dqd = load i32, ptr %i.al, align 4, !tbaa !63
  %.not692.i = icmp eq i32 %i.dqd, 0
  br i1 %.not692.i, label %bb.mv, label %bb.mu

bb.mu:                                            ; preds = %bb.mt, %bb.ms
  %i.dqe = load ptr, ptr %i.bn, align 8, !tbaa !116
  %i.dqf = load i32, ptr %i.dos, align 4, !tbaa !53
  %i.dqg = sext i32 %i.dqf to i64
  %i.dqh = getelementptr i8, ptr %i.dqe, i64 %i.dqg
  %i.dqi = getelementptr i8, ptr %i.dqh, i64 -1
  %i.dqj = load i8, ptr %i.dqi, align 1, !tbaa !98
  %i.dqk = zext i8 %i.dqj to i32
  store i32 %i.dqk, ptr %i.cy, align 8, !tbaa !118
  br label %bb.mv

bb.mv:                                            ; preds = %bb.mu, %bb.mt
  %i.dql = load ptr, ptr %i.cr, align 8, !tbaa !89
  %i.dqm = load i32, ptr %i.cs, align 4, !tbaa !87
  %i.dqn = sext i32 %i.dqm to i64
  %i.dqo = getelementptr inbounds [768 x i8], ptr %i.dql, i64 %i.dqn
  %i.dqp = getelementptr inbounds nuw [4 x i8], ptr @block_map, i64 %indvars.iv936.i
  %i.dqq = load i32, ptr %i.dqp, align 4, !tbaa !53
  %i.dqr = sext i32 %i.dqq to i64                 ; 3 uses
  %i.dqs = getelementptr inbounds [128 x i8], ptr %i.dqo, i64 %i.dqr
  %.in693.v.i = select i1 %.not688.i, i64 6456, i64 6460
  %.in693.i = getelementptr inbounds nuw i8, ptr %0, i64 %.in693.v.i
  %i.dqt = load i32, ptr %.in693.i, align 4, !tbaa !53
  %i.dqu = call fastcc i32 @vc1_decode_intra_block(ptr noundef nonnull %0, ptr noundef %i.dqs, i32 noundef %i.dow, i32 noundef %i.dpb, i32 noundef %.13.i169, i32 noundef %i.dqt) ; 2 uses
  %i.dqv = icmp slt i32 %i.dqu, 0
  br i1 %i.dqv, label %vc1_decode_p_mb.exit, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  %i.dqw = load ptr, ptr %i.db, align 8, !tbaa !129
  %i.dqx = load ptr, ptr %i.cr, align 8, !tbaa !89
  %i.dqy = load i32, ptr %i.cs, align 4, !tbaa !87
  %i.dqz = sext i32 %i.dqy to i64
  %i.dra = getelementptr inbounds [768 x i8], ptr %i.dqx, i64 %i.dqz
  %i.drb = getelementptr inbounds [128 x i8], ptr %i.dra, i64 %i.dqr
  call void %i.dqw(ptr noundef %i.drb) #10, !inline_history !196
  %i.drc = load i8, ptr %i.du, align 16, !tbaa !140
  %.not694.i = icmp eq i8 %i.drc, 0
  br i1 %.not694.i, label %.loopexit.i173, label %vector.body

vector.body:                                      ; preds = %bb.mw
  %i.drd = load ptr, ptr %i.cr, align 8, !tbaa !89
  %i.dre = load i32, ptr %i.cs, align 4, !tbaa !87
  %i.drf = sext i32 %i.dre to i64
  %i.drg = getelementptr inbounds [768 x i8], ptr %i.drd, i64 %i.drf
  %i.drh = getelementptr inbounds [128 x i8], ptr %i.drg, i64 %i.dqr ; 9 uses
  %i.dri = getelementptr inbounds nuw i8, ptr %i.drh, i64 16 ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.drh, align 2, !tbaa !95
  %wide.load406 = load <8 x i16>, ptr %i.dri, align 2, !tbaa !95
  %i.drj = shl <8 x i16> %wide.load, splat (i16 1)
  %i.drk = shl <8 x i16> %wide.load406, splat (i16 1)
  store <8 x i16> %i.drj, ptr %i.drh, align 2, !tbaa !95
  store <8 x i16> %i.drk, ptr %i.dri, align 2, !tbaa !95
  %i.drl = getelementptr inbounds nuw i8, ptr %i.drh, i64 32 ; 2 uses
  %i.drm = getelementptr inbounds nuw i8, ptr %i.drh, i64 48 ; 2 uses
  %wide.load.1 = load <8 x i16>, ptr %i.drl, align 2, !tbaa !95
  %wide.load406.1 = load <8 x i16>, ptr %i.drm, align 2, !tbaa !95
  %i.drn = shl <8 x i16> %wide.load.1, splat (i16 1)
  %i.dro = shl <8 x i16> %wide.load406.1, splat (i16 1)
  store <8 x i16> %i.drn, ptr %i.drl, align 2, !tbaa !95
  store <8 x i16> %i.dro, ptr %i.drm, align 2, !tbaa !95
  %i.drp = getelementptr inbounds nuw i8, ptr %i.drh, i64 64 ; 2 uses
  %i.drq = getelementptr inbounds nuw i8, ptr %i.drh, i64 80 ; 2 uses
  %wide.load.2 = load <8 x i16>, ptr %i.drp, align 2, !tbaa !95
  %wide.load406.2 = load <8 x i16>, ptr %i.drq, align 2, !tbaa !95
  %i.drr = shl <8 x i16> %wide.load.2, splat (i16 1)
  %i.drs = shl <8 x i16> %wide.load406.2, splat (i16 1)
  store <8 x i16> %i.drr, ptr %i.drp, align 2, !tbaa !95
  store <8 x i16> %i.drs, ptr %i.drq, align 2, !tbaa !95
  %i.drt = getelementptr inbounds nuw i8, ptr %i.drh, i64 96 ; 2 uses
  %i.dru = getelementptr inbounds nuw i8, ptr %i.drh, i64 112 ; 2 uses
  %wide.load.3 = load <8 x i16>, ptr %i.drt, align 2, !tbaa !95
  %wide.load406.3 = load <8 x i16>, ptr %i.dru, align 2, !tbaa !95
  %i.drv = shl <8 x i16> %wide.load.3, splat (i16 1)
  %i.drw = shl <8 x i16> %wide.load406.3, splat (i16 1)
  store <8 x i16> %i.drv, ptr %i.drt, align 2, !tbaa !95
  store <8 x i16> %i.drw, ptr %i.dru, align 2, !tbaa !95
  br label %.loopexit.i173

.loopexit.i173:                                   ; preds = %vector.body, %bb.mw
  %i.drx = shl i32 %i.dow, 2
  %i.dry = shl nuw i32 15, %i.drx
  %i.drz = or i32 %i.dry, %.0582912.i
  %i.dsa = shl nuw nsw i32 1, %i.dow
  %i.dsb = or i32 %i.dsa, %.0580913.i
  br label %bb.na

bb.mx:                                            ; preds = %bb.mo
  %.not690.i = icmp eq i32 %i.dpb, 0
  br i1 %.not690.i, label %bb.na, label %bb.my

bb.my:                                            ; preds = %bb.mx
  %i.dsc = load ptr, ptr %i.cr, align 8, !tbaa !89
  %i.dsd = load i32, ptr %i.cs, align 4, !tbaa !87
  %i.dse = sext i32 %i.dsd to i64
  %i.dsf = getelementptr inbounds [768 x i8], ptr %i.dsc, i64 %i.dse
  %i.dsg = getelementptr inbounds nuw [4 x i8], ptr @block_map, i64 %indvars.iv936.i
  %i.dsh = load i32, ptr %i.dsg, align 4, !tbaa !53
  %i.dsi = sext i32 %i.dsh to i64
  %i.dsj = getelementptr inbounds [128 x i8], ptr %i.dsf, i64 %i.dsi
  %i.dsk = zext nneg i32 %i.doy to i64
  %i.dsl = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.dsk
  %i.dsm = load ptr, ptr %i.dsl, align 8, !tbaa !57
  %i.dsn = getelementptr inbounds i8, ptr %i.dsm, i64 %i.dpl
  %.in.v.i174 = select i1 %.not688.i, i64 416, i64 424
  %.in.i175 = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v.i174
  %i.dso = load i64, ptr %.in.i175, align 8, !tbaa !182
  %i.dsp = trunc i64 %i.dso to i32
  %i.dsq = call fastcc i32 @vc1_decode_p_block(ptr noundef nonnull %0, ptr noundef %i.dsj, i32 noundef %i.dow, i32 noundef %.13.i169, i32 noundef %.1610909.i, i32 noundef %.0592910.i, ptr noundef %i.dsn, i32 noundef %i.dsp, ptr noundef nonnull %i.a) ; 3 uses
  %i.dsr = icmp slt i32 %i.dsq, 0
  br i1 %i.dsr, label %vc1_decode_p_mb.exit, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  %i.dss = shl i32 %i.dow, 2
  %i.dst = shl nuw nsw i32 %i.dsq, %i.dss
  %i.dsu = or i32 %i.dst, %.0582912.i
  %i.dsv = load i8, ptr %i.co, align 4, !tbaa !180
  %i.dsw = icmp eq i8 %i.dsv, 0
  %i.dsx = icmp slt i32 %.1610909.i, 8
  %or.cond17.i = select i1 %i.dsw, i1 %i.dsx, i1 false
  %spec.store.select.i176 = select i1 %or.cond17.i, i32 -1, i32 %.1610909.i
  br label %bb.na

bb.na:                                            ; preds = %bb.mz, %bb.mx, %.loopexit.i173
  %.2611.i = phi i32 [ %.1610909.i, %.loopexit.i173 ], [ %spec.store.select.i176, %bb.mz ], [ %.1610909.i, %bb.mx ]
  %.1593.i = phi i32 [ %.0592910.i, %.loopexit.i173 ], [ 0, %bb.mz ], [ %.0592910.i, %bb.mx ]
  %.1583.i = phi i32 [ %i.drz, %.loopexit.i173 ], [ %i.dsu, %bb.mz ], [ %.0582912.i, %bb.mx ] ; 2 uses
  %.1581.i = phi i32 [ %i.dsb, %.loopexit.i173 ], [ %.0580913.i, %bb.mz ], [ %.0580913.i, %bb.mx ] ; 2 uses
  %indvars.iv.next937.i = add nuw nsw i64 %indvars.iv936.i, 1 ; 2 uses
  %exitcond939.not.i = icmp eq i64 %indvars.iv.next937.i, 6
  br i1 %exitcond939.not.i, label %.loopexit882.i, label %bb.mm, !llvm.loop !197

bb.nb:                                            ; preds = %bb.jz
  store i32 0, ptr %i.bm, align 4, !tbaa !84
  %i.dsy = load ptr, ptr %i.bn, align 8, !tbaa !116
  %i.dsz = extractelement <4 x i32> %i.fn, i64 0
  %i.dta = sext i32 %i.dsz to i64
  %i.dtb = getelementptr inbounds i8, ptr %i.dsy, i64 %i.dta
  store i8 0, ptr %i.dtb, align 1, !tbaa !98
  %i.dtc = load ptr, ptr %i.bo, align 16, !tbaa !122
  %i.dtd = load i32, ptr %i.av, align 16, !tbaa !53
  %i.dte = sext i32 %i.dtd to i64
  %i.dtf = getelementptr inbounds [2 x i8], ptr %i.dtc, i64 %i.dte
  store i16 0, ptr %i.dtf, align 2, !tbaa !95
  %i.dtg = load ptr, ptr %i.bn, align 8, !tbaa !116
  %i.dth = load i32, ptr %i.aw, align 4, !tbaa !53
  %i.dti = sext i32 %i.dth to i64
  %i.dtj = getelementptr inbounds i8, ptr %i.dtg, i64 %i.dti
  store i8 0, ptr %i.dtj, align 1, !tbaa !98
  %i.dtk = load ptr, ptr %i.bo, align 16, !tbaa !122
  %i.dtl = load i32, ptr %i.aw, align 4, !tbaa !53
  %i.dtm = sext i32 %i.dtl to i64
  %i.dtn = getelementptr inbounds [2 x i8], ptr %i.dtk, i64 %i.dtm
  store i16 0, ptr %i.dtn, align 2, !tbaa !95
  %i.dto = load ptr, ptr %i.bn, align 8, !tbaa !116
  %i.dtp = load i32, ptr %i.ax, align 8, !tbaa !53
  %i.dtq = sext i32 %i.dtp to i64
  %i.dtr = getelementptr inbounds i8, ptr %i.dto, i64 %i.dtq
  store i8 0, ptr %i.dtr, align 1, !tbaa !98
  %i.dts = load ptr, ptr %i.bo, align 16, !tbaa !122
  %i.dtt = load i32, ptr %i.ax, align 8, !tbaa !53
  %i.dtu = sext i32 %i.dtt to i64
  %i.dtv = getelementptr inbounds [2 x i8], ptr %i.dts, i64 %i.dtu
  store i16 0, ptr %i.dtv, align 2, !tbaa !95
  %i.dtw = load ptr, ptr %i.bn, align 8, !tbaa !116
  %i.dtx = load i32, ptr %i.ay, align 4, !tbaa !53
  %i.dty = sext i32 %i.dtx to i64
  %i.dtz = getelementptr inbounds i8, ptr %i.dtw, i64 %i.dty
  store i8 0, ptr %i.dtz, align 1, !tbaa !98
  %i.dua = load ptr, ptr %i.bo, align 16, !tbaa !122
  %i.dub = load i32, ptr %i.ay, align 4, !tbaa !53
  %i.duc = sext i32 %i.dub to i64
  %i.dud = getelementptr inbounds [2 x i8], ptr %i.dua, i64 %i.duc
  store i16 0, ptr %i.dud, align 2, !tbaa !95
  %i.due = load ptr, ptr %i.bn, align 8, !tbaa !116
  %i.duf = load i32, ptr %i.az, align 16, !tbaa !53
  %i.dug = sext i32 %i.duf to i64
  %i.duh = getelementptr inbounds i8, ptr %i.due, i64 %i.dug
  store i8 0, ptr %i.duh, align 1, !tbaa !98
  %i.dui = load ptr, ptr %i.bo, align 16, !tbaa !122
  %i.duj = load i32, ptr %i.az, align 16, !tbaa !53
  %i.duk = sext i32 %i.duj to i64
  %i.dul = getelementptr inbounds [2 x i8], ptr %i.dui, i64 %i.duk
  store i16 0, ptr %i.dul, align 2, !tbaa !95
  %i.dum = load ptr, ptr %i.bn, align 8, !tbaa !116
  %i.dun = load i32, ptr %i.ba, align 4, !tbaa !53
  %i.duo = sext i32 %i.dun to i64
  %i.dup = getelementptr inbounds i8, ptr %i.dum, i64 %i.duo
  store i8 0, ptr %i.dup, align 1, !tbaa !98
  %i.duq = load ptr, ptr %i.bo, align 16, !tbaa !122
  %i.dur = load i32, ptr %i.ba, align 4, !tbaa !53
  %i.dus = sext i32 %i.dur to i64
  %i.dut = getelementptr inbounds [2 x i8], ptr %i.duq, i64 %i.dus
  store i16 0, ptr %i.dut, align 2, !tbaa !95
  %i.duu = load ptr, ptr %i.bp, align 16, !tbaa !91
  %i.duv = sext i32 %i.gk to i64                  ; 2 uses
  %i.duw = getelementptr inbounds [4 x i8], ptr %i.duu, i64 %i.duv
  store i32 131072, ptr %i.duw, align 4, !tbaa !53
  %i.dux = load ptr, ptr %i.bq, align 8, !tbaa !114
  %i.duy = getelementptr inbounds i8, ptr %i.dux, i64 %i.duv
  store i8 0, ptr %i.duy, align 1, !tbaa !98
  %i.duz = load i32, ptr %i.bs, align 16, !tbaa !175
  %i.dva = load i32, ptr %i.bt, align 4, !tbaa !176
  %i.dvb = load ptr, ptr %i.bn, align 8, !tbaa !116
  call void @ff_vc1_pred_mv(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef %i.duz, i32 noundef %i.dva, ptr noundef %i.dvb, i32 noundef 0, i32 noundef 0) #10
  call void @ff_vc1_mc_1mv(ptr noundef nonnull %0, i32 noundef 0) #10
  br label %.loopexit882.i

bb.nc:                                            ; preds = %bb.jy
  br i1 %.not658.i, label %bb.nd, label %.preheader887.i

bb.nd:                                            ; preds = %bb.nc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.dvc = load ptr, ptr %i.bx, align 16, !tbaa !167 ; 2 uses
  %i.dvd = load i32, ptr %i.be, align 8, !tbaa !77 ; 4 uses
  %i.dve = load i32, ptr %i.bj, align 16, !tbaa !99 ; 2 uses
  %i.dvf = load ptr, ptr %i.bg, align 16, !tbaa !97 ; 2 uses
  %i.dvg = lshr i32 %i.dvd, 3
  %i.dvh = zext nneg i32 %i.dvg to i64
  %i.dvi = getelementptr inbounds nuw i8, ptr %i.dvf, i64 %i.dvh
  %i.dvj = load i32, ptr %i.dvi, align 1, !tbaa !98
  %i.dvk = call i32 @llvm.bswap.i32(i32 %i.dvj)
  %i.dvl = and i32 %i.dvd, 7
  %i.dvm = shl i32 %i.dvk, %i.dvl
  %i.dvn = lshr i32 %i.dvm, 23
  %i.dvo = zext nneg i32 %i.dvn to i64
  %i.dvp = getelementptr inbounds nuw [4 x i8], ptr %i.dvc, i64 %i.dvo ; 2 uses
  %i.dvq = load i16, ptr %i.dvp, align 2, !tbaa !98
  %i.dvr = sext i16 %i.dvq to i32                 ; 2 uses
  %i.dvs = getelementptr inbounds nuw i8, ptr %i.dvp, i64 2
  %i.dvt = load i16, ptr %i.dvs, align 2, !tbaa !98 ; 2 uses
  %i.dvu = sext i16 %i.dvt to i32                 ; 2 uses
  %i.dvv = icmp slt i16 %i.dvt, 0
  br i1 %i.dvv, label %bb.ne, label %get_vlc2.exit736.i

bb.ne:                                            ; preds = %bb.nd
  %i.dvw = add i32 %i.dvd, 9
  %i.dvx = call i32 @llvm.umin.i32(i32 %i.dve, i32 %i.dvw) ; 3 uses
  %i.dvy = lshr i32 %i.dvx, 3
  %i.dvz = zext nneg i32 %i.dvy to i64
  %i.dwa = getelementptr inbounds nuw i8, ptr %i.dvf, i64 %i.dvz
  %i.dwb = load i32, ptr %i.dwa, align 1, !tbaa !98
  %i.dwc = call i32 @llvm.bswap.i32(i32 %i.dwb)
  %i.dwd = and i32 %i.dvx, 7
  %i.dwe = shl i32 %i.dwc, %i.dwd
  %i.dwf = add nsw i32 %i.dvu, 32
  %i.dwg = lshr i32 %i.dwe, %i.dwf
  %i.dwh = add i32 %i.dwg, %i.dvr
  %i.dwi = zext i32 %i.dwh to i64
  %i.dwj = getelementptr inbounds nuw [4 x i8], ptr %i.dvc, i64 %i.dwi ; 2 uses
  %i.dwk = load i16, ptr %i.dwj, align 2, !tbaa !98
  %i.dwl = zext i16 %i.dwk to i32
  %i.dwm = getelementptr inbounds nuw i8, ptr %i.dwj, i64 2
  %i.dwn = load i16, ptr %i.dwm, align 2, !tbaa !98
  %i.dwo = sext i16 %i.dwn to i32
  br label %get_vlc2.exit736.i

get_vlc2.exit736.i:                               ; preds = %bb.ne, %bb.nd
  %.167.i733.i = phi i32 [ %i.dvr, %bb.nd ], [ %i.dwl, %bb.ne ]
  %.165.i734.i = phi i32 [ %i.dvd, %bb.nd ], [ %i.dvx, %bb.ne ]
  %.1.i735.i = phi i32 [ %i.dvu, %bb.nd ], [ %i.dwo, %bb.ne ]
  %i.dwp = add i32 %.1.i735.i, %.165.i734.i
  %i.dwq = call i32 @llvm.umin.i32(i32 %i.dve, i32 %i.dwp)
  store i32 %i.dwq, ptr %i.be, align 8, !tbaa !77
  br label %bb.nf

bb.nf:                                            ; preds = %bb.nt, %get_vlc2.exit736.i
  %indvars.iv.i158 = phi i64 [ 0, %get_vlc2.exit736.i ], [ %indvars.iv.next.i159, %bb.nt ] ; 9 uses
  %.0574897.i = phi i32 [ 0, %get_vlc2.exit736.i ], [ %.1.i, %bb.nt ]
  %.0575896.i = phi i32 [ 0, %get_vlc2.exit736.i ], [ %.1576842845.i, %bb.nt ] ; 4 uses
  %i.dwr = trunc i64 %indvars.iv.i158 to i32      ; 3 uses
  %i.dws = sub i32 5, %i.dwr
  %i.dwt = lshr i32 %.167.i733.i, %i.dws
  %i.dwu = and i32 %i.dwt, 1                      ; 4 uses
  %i.dwv = load ptr, ptr %i.bo, align 16, !tbaa !122
  %i.dww = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.i158 ; 2 uses
  %i.dwx = load i32, ptr %i.dww, align 4, !tbaa !53
  %i.dwy = sext i32 %i.dwx to i64
  %i.dwz = getelementptr inbounds [2 x i8], ptr %i.dwv, i64 %i.dwy
  store i16 0, ptr %i.dwz, align 2, !tbaa !95
  store i32 0, ptr %i.bm, align 4, !tbaa !84
  %i.dxa = icmp samesign ult i64 %indvars.iv.i158, 4
  br i1 %i.dxa, label %bb.ng, label %bb.nr

bb.ng:                                            ; preds = %bb.nf
  %.not718.i = icmp eq i32 %i.dwu, 0
  br i1 %.not718.i, label %bb.np, label %bb.nh

bb.nh:                                            ; preds = %bb.ng
  %i.dxb = load i32, ptr %i.di, align 4, !tbaa !194
  %i.dxc = sext i32 %i.dxb to i64
  %i.dxd = getelementptr inbounds [8 x i8], ptr @ff_vc1_mv_diff_vlc, i64 %i.dxc
  %i.dxe = load ptr, ptr %i.dxd, align 8, !tbaa !121 ; 2 uses
  %i.dxf = load i32, ptr %i.be, align 8, !tbaa !77 ; 4 uses
  %i.dxg = load i32, ptr %i.bj, align 16, !tbaa !99 ; 6 uses
  %i.dxh = load ptr, ptr %i.bg, align 16, !tbaa !97 ; 6 uses
  %i.dxi = lshr i32 %i.dxf, 3
  %i.dxj = zext nneg i32 %i.dxi to i64
  %i.dxk = getelementptr inbounds nuw i8, ptr %i.dxh, i64 %i.dxj
  %i.dxl = load i32, ptr %i.dxk, align 1, !tbaa !98
  %i.dxm = call i32 @llvm.bswap.i32(i32 %i.dxl)
  %i.dxn = and i32 %i.dxf, 7
  %i.dxo = shl i32 %i.dxm, %i.dxn
  %i.dxp = lshr i32 %i.dxo, 23
  %i.dxq = zext nneg i32 %i.dxp to i64
  %i.dxr = getelementptr inbounds nuw [4 x i8], ptr %i.dxe, i64 %i.dxq ; 2 uses
  %i.dxs = load i16, ptr %i.dxr, align 2, !tbaa !98
  %i.dxt = sext i16 %i.dxs to i32                 ; 2 uses
  %i.dxu = getelementptr inbounds nuw i8, ptr %i.dxr, i64 2
  %i.dxv = load i16, ptr %i.dxu, align 2, !tbaa !98 ; 2 uses
  %i.dxw = sext i16 %i.dxv to i32                 ; 2 uses
  %i.dxx = icmp slt i16 %i.dxv, 0
  br i1 %i.dxx, label %bb.ni, label %get_vlc2.exit732.i
end_hunk_2
begin_hunk_3_@vc1_decode_p_blocks:bb.a

bb.pe:                                            ; preds = %bb.pd
  %i.eia = sext i32 %i.eht to i64
  %i.eib = getelementptr i8, ptr %i.ehs, i64 %i.eia
  %i.eic = getelementptr i8, ptr %i.eib, i64 -1
  %i.eid = load i8, ptr %i.eic, align 1, !tbaa !98
  %.not708.2.i = icmp eq i8 %i.eid, 0
  br i1 %.not708.2.i, label %bb.pf, label %bb.ps

bb.pf:                                            ; preds = %bb.pe, %bb.pd, %bb.pb
  %i.eie = load i32, ptr %i.do, align 4, !tbaa !53
  %.not706.3.i = icmp eq i32 %i.eie, 0
  br i1 %.not706.3.i, label %bb.pi, label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %i.eif = load ptr, ptr %i.bn, align 8, !tbaa !116 ; 2 uses
  %i.eig = load i32, ptr %i.ay, align 4, !tbaa !53 ; 2 uses
  %i.eih = load i32, ptr %i.dp, align 4, !tbaa !53
  %i.eii = sub nsw i32 %i.eig, %i.eih
  %i.eij = sext i32 %i.eii to i64
  %i.eik = getelementptr inbounds i8, ptr %i.eif, i64 %i.eij
  %i.eil = load i8, ptr %i.eik, align 1, !tbaa !98
  %.not707.3.i = icmp eq i8 %i.eil, 0
  br i1 %.not707.3.i, label %bb.ph, label %bb.ps

bb.ph:                                            ; preds = %bb.pg
  %i.eim = sext i32 %i.eig to i64
  %i.ein = getelementptr i8, ptr %i.eif, i64 %i.eim
  %i.eio = getelementptr i8, ptr %i.ein, i64 -1
  %i.eip = load i8, ptr %i.eio, align 1, !tbaa !98
  %.not708.3.i = icmp eq i8 %i.eip, 0
  br i1 %.not708.3.i, label %bb.pi, label %bb.ps

bb.pi:                                            ; preds = %bb.ph, %bb.pf
  %i.eiq = load i32, ptr %i.dq, align 16, !tbaa !53
  %.not706.4.i = icmp eq i32 %i.eiq, 0
  br i1 %.not706.4.i, label %bb.pn, label %bb.pj

bb.pj:                                            ; preds = %bb.pi
  %i.eir = load i32, ptr %i.y, align 4, !tbaa !61
  %i.eis = icmp eq i32 %i.eir, 0
  br i1 %i.eis, label %bb.pk, label %bb.pl

bb.pk:                                            ; preds = %bb.pj
  %i.eit = load ptr, ptr %i.bn, align 8, !tbaa !116
  %i.eiu = load i32, ptr %i.az, align 16, !tbaa !53
  %i.eiv = load i32, ptr %i.dr, align 8, !tbaa !53
  %i.eiw = sub nsw i32 %i.eiu, %i.eiv
  %i.eix = sext i32 %i.eiw to i64
  %i.eiy = getelementptr inbounds i8, ptr %i.eit, i64 %i.eix
  %i.eiz = load i8, ptr %i.eiy, align 1, !tbaa !98
  %.not707.4.i = icmp eq i8 %i.eiz, 0
  br i1 %.not707.4.i, label %bb.pl, label %bb.ps

bb.pl:                                            ; preds = %bb.pk, %bb.pj
  %i.eja = load i32, ptr %i.al, align 4, !tbaa !63
  %.not962.i = icmp eq i32 %i.eja, 0
  br i1 %.not962.i, label %bb.pn, label %bb.pm

bb.pm:                                            ; preds = %bb.pl
  %i.ejb = load ptr, ptr %i.bn, align 8, !tbaa !116
  %i.ejc = load i32, ptr %i.az, align 16, !tbaa !53
  %i.ejd = sext i32 %i.ejc to i64
  %i.eje = getelementptr i8, ptr %i.ejb, i64 %i.ejd
  %i.ejf = getelementptr i8, ptr %i.eje, i64 -1
  %i.ejg = load i8, ptr %i.ejf, align 1, !tbaa !98
  %.not708.4.i = icmp eq i8 %i.ejg, 0
  br i1 %.not708.4.i, label %bb.pn, label %bb.ps

bb.pn:                                            ; preds = %bb.pm, %bb.pl, %bb.pi
  %i.ejh = load i32, ptr %i.ds, align 4, !tbaa !53
  %.not706.5.i = icmp eq i32 %i.ejh, 0
  br i1 %.not706.5.i, label %.critedge.i, label %bb.po

bb.po:                                            ; preds = %bb.pn
  %i.eji = load i32, ptr %i.y, align 4, !tbaa !61
  %i.ejj = icmp eq i32 %i.eji, 0
  br i1 %i.ejj, label %bb.pp, label %bb.pq

bb.pp:                                            ; preds = %bb.po
  %i.ejk = load ptr, ptr %i.bn, align 8, !tbaa !116
  %i.ejl = load i32, ptr %i.ba, align 4, !tbaa !53
  %i.ejm = load i32, ptr %i.dt, align 4, !tbaa !53
  %i.ejn = sub nsw i32 %i.ejl, %i.ejm
  %i.ejo = sext i32 %i.ejn to i64
  %i.ejp = getelementptr inbounds i8, ptr %i.ejk, i64 %i.ejo
  %i.ejq = load i8, ptr %i.ejp, align 1, !tbaa !98
  %.not707.5.i = icmp eq i8 %i.ejq, 0
  br i1 %.not707.5.i, label %bb.pq, label %bb.ps

bb.pq:                                            ; preds = %bb.pp, %bb.po
  %i.ejr = load i32, ptr %i.al, align 4, !tbaa !63
  %.not963.i = icmp eq i32 %i.ejr, 0
  br i1 %.not963.i, label %.critedge.i, label %bb.pr

bb.pr:                                            ; preds = %bb.pq
  %i.ejs = load ptr, ptr %i.bn, align 8, !tbaa !116
  %i.ejt = load i32, ptr %i.ba, align 4, !tbaa !53
  %i.eju = sext i32 %i.ejt to i64
  %i.ejv = getelementptr i8, ptr %i.ejs, i64 %i.eju
  %i.ejw = getelementptr i8, ptr %i.ejv, i64 -1
  %i.ejx = load i8, ptr %i.ejw, align 1, !tbaa !98
  %.not708.5.i = icmp eq i8 %i.ejx, 0
  br i1 %.not708.5.i, label %.critedge.i, label %bb.ps

bb.ps:                                            ; preds = %bb.pr, %bb.pp, %bb.pm, %bb.pk, %bb.ph, %bb.pg, %bb.pe, %bb.pc, %bb.pa, %bb.oz, %bb.ow, %bb.ou
  %i.ejy = load i32, ptr %i.be, align 8, !tbaa !77 ; 4 uses
  %i.ejz = load ptr, ptr %i.bg, align 16, !tbaa !97
  %i.eka = lshr i32 %i.ejy, 3
  %i.ekb = zext nneg i32 %i.eka to i64
  %i.ekc = getelementptr inbounds nuw i8, ptr %i.ejz, i64 %i.ekb
  %i.ekd = load i8, ptr %i.ekc, align 1, !tbaa !98
  %i.eke = load i32, ptr %i.bj, align 16, !tbaa !99
  %i.ekf = icmp slt i32 %i.ejy, %i.eke
  %i.ekg = zext i1 %i.ekf to i32
  %spec.select.i755.i = add i32 %i.ejy, %i.ekg
  %i.ekh = zext i8 %i.ekd to i32
  %i.eki = and i32 %i.ejy, 7
  %i.ekj = shl nuw nsw i32 %i.ekh, %i.eki
  %i.ekk = lshr i32 %i.ekj, 7
  store i32 %spec.select.i755.i, ptr %i.be, align 8, !tbaa !77
  %i.ekl = and i32 %i.ekk, 1
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.ps, %bb.pr, %bb.pq, %bb.pn
  %.sink.i = phi i32 [ %i.ekl, %bb.ps ], [ 0, %bb.pr ], [ 0, %bb.pq ], [ 0, %bb.pn ]
  store i32 %.sink.i, ptr %i.cw, align 16, !tbaa !119
  %i.ekm = load i8, ptr %i.co, align 4, !tbaa !180
  %i.ekn = icmp eq i8 %i.ekm, 0
  %or.cond33.i = select i1 %i.ekn, i1 %i.eda, i1 false
  br i1 %or.cond33.i, label %bb.pt, label %.preheader423

bb.pt:                                            ; preds = %.critedge.i
  %i.eko = load i32, ptr %i.cp, align 8, !tbaa !181
  %i.ekp = sext i32 %i.eko to i64
  %i.ekq = getelementptr inbounds [8 x i8], ptr @ff_vc1_ttmb_vlc, i64 %i.ekp
  %i.ekr = load ptr, ptr %i.ekq, align 8, !tbaa !121 ; 2 uses
  %i.eks = load i32, ptr %i.be, align 8, !tbaa !77 ; 4 uses
  %i.ekt = load i32, ptr %i.bj, align 16, !tbaa !99 ; 2 uses
  %i.eku = load ptr, ptr %i.bg, align 16, !tbaa !97 ; 2 uses
  %i.ekv = lshr i32 %i.eks, 3
  %i.ekw = zext nneg i32 %i.ekv to i64
  %i.ekx = getelementptr inbounds nuw i8, ptr %i.eku, i64 %i.ekw
  %i.eky = load i32, ptr %i.ekx, align 1, !tbaa !98
  %i.ekz = call i32 @llvm.bswap.i32(i32 %i.eky)
  %i.ela = and i32 %i.eks, 7
  %i.elb = shl i32 %i.ekz, %i.ela
  %i.elc = lshr i32 %i.elb, 23
  %i.eld = zext nneg i32 %i.elc to i64
  %i.ele = getelementptr inbounds nuw [4 x i8], ptr %i.ekr, i64 %i.eld ; 2 uses
  %i.elf = load i16, ptr %i.ele, align 2, !tbaa !98
  %i.elg = sext i16 %i.elf to i32                 ; 2 uses
  %i.elh = getelementptr inbounds nuw i8, ptr %i.ele, i64 2
  %i.eli = load i16, ptr %i.elh, align 2, !tbaa !98 ; 2 uses
  %i.elj = sext i16 %i.eli to i32                 ; 2 uses
  %i.elk = icmp slt i16 %i.eli, 0
  br i1 %i.elk, label %bb.pu, label %get_vlc2.exit.i163

bb.pu:                                            ; preds = %bb.pt
  %i.ell = add i32 %i.eks, 9
  %i.elm = call i32 @llvm.umin.i32(i32 %i.ekt, i32 %i.ell) ; 3 uses
  %i.eln = lshr i32 %i.elm, 3
  %i.elo = zext nneg i32 %i.eln to i64
  %i.elp = getelementptr inbounds nuw i8, ptr %i.eku, i64 %i.elo
  %i.elq = load i32, ptr %i.elp, align 1, !tbaa !98
  %i.elr = call i32 @llvm.bswap.i32(i32 %i.elq)
  %i.els = and i32 %i.elm, 7
  %i.elt = shl i32 %i.elr, %i.els
  %i.elu = add nsw i32 %i.elj, 32
  %i.elv = lshr i32 %i.elt, %i.elu
  %i.elw = add i32 %i.elv, %i.elg
  %i.elx = zext i32 %i.elw to i64
  %i.ely = getelementptr inbounds nuw [4 x i8], ptr %i.ekr, i64 %i.elx ; 2 uses
  %i.elz = load i16, ptr %i.ely, align 2, !tbaa !98
  %i.ema = sext i16 %i.elz to i32
  %i.emb = getelementptr inbounds nuw i8, ptr %i.ely, i64 2
  %i.emc = load i16, ptr %i.emb, align 2, !tbaa !98
  %i.emd = sext i16 %i.emc to i32
  br label %get_vlc2.exit.i163

get_vlc2.exit.i163:                               ; preds = %bb.pu, %bb.pt
  %.167.i.i164 = phi i32 [ %i.elg, %bb.pt ], [ %i.ema, %bb.pu ]
  %.165.i.i165 = phi i32 [ %i.eks, %bb.pt ], [ %i.elm, %bb.pu ]
  %.1.i.i166 = phi i32 [ %i.elj, %bb.pt ], [ %i.emd, %bb.pu ]
  %i.eme = add i32 %.1.i.i166, %.165.i.i165
  %i.emf = call i32 @llvm.umin.i32(i32 %i.ekt, i32 %i.eme)
  store i32 %i.emf, ptr %i.be, align 8, !tbaa !77
  br label %.preheader423

.preheader423:                                    ; preds = %get_vlc2.exit.i163, %.critedge.i
  %.4613901.i.ph = phi i32 [ %i.gl, %.critedge.i ], [ %.167.i.i164, %get_vlc2.exit.i163 ]
  br label %bb.pv

bb.pv:                                            ; preds = %.preheader423, %bb.qj
  %indvars.iv924.i = phi i64 [ %indvars.iv.next925.i, %bb.qj ], [ 0, %.preheader423 ] ; 11 uses
  %.2905.i = phi i32 [ %.3.i162, %bb.qj ], [ 0, %.preheader423 ] ; 3 uses
  %.2584904.i = phi i32 [ %.3585.i, %bb.qj ], [ 0, %.preheader423 ] ; 3 uses
  %.1591903.i = phi i32 [ %i.emi, %bb.qj ], [ 0, %.preheader423 ]
  %.2594902.i = phi i32 [ %.3595.i, %bb.qj ], [ 1, %.preheader423 ] ; 3 uses
  %.4613901.i = phi i32 [ %.5614.i, %bb.qj ], [ %.4613901.i.ph, %.preheader423 ] ; 5 uses
  %i.emg = trunc i64 %indvars.iv924.i to i32      ; 10 uses
  %i.emh = lshr i32 %i.emg, 2
  %i.emi = add nuw nsw i32 %.1591903.i, %i.emh    ; 2 uses
  %.not710.i = icmp samesign ult i64 %indvars.iv924.i, 4 ; 3 uses
  br i1 %.not710.i, label %bb.pw, label %bb.px

bb.pw:                                            ; preds = %bb.pv
  %i.emj = shl nuw nsw i32 %i.emg, 3
  %i.emk = and i32 %i.emj, 8
  %i.eml = shl nuw nsw i32 %i.emg, 2
  %i.emm = and i32 %i.eml, 8
  %i.emn = load i64, ptr %i.cq, align 16, !tbaa !72
  %i.emo = trunc i64 %i.emn to i32
  %i.emp = mul i32 %i.emm, %i.emo
  %i.emq = add i32 %i.emp, %i.emk
  %i.emr = sext i32 %i.emq to i64
  br label %bb.px

bb.px:                                            ; preds = %bb.pw, %bb.pv
  %i.ems = phi i64 [ %i.emr, %bb.pw ], [ 0, %bb.pv ]
  %i.emt = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv924.i
  %i.emu = load i32, ptr %i.emt, align 4, !tbaa !53 ; 2 uses
  store i32 %i.emu, ptr %i.bm, align 4, !tbaa !84
  %.not711.i = icmp eq i32 %i.emu, 0
  br i1 %.not711.i, label %bb.qg, label %bb.py

bb.py:                                            ; preds = %bb.px
  store i32 0, ptr %i.cy, align 8, !tbaa !118
  store i32 0, ptr %i.cz, align 4, !tbaa !117
  %i.emv = and i32 %i.emg, 6
  %or.cond35.i = icmp eq i32 %i.emv, 2
  br i1 %or.cond35.i, label %bb.qa, label %bb.pz

bb.pz:                                            ; preds = %bb.py
  %i.emw = load i32, ptr %i.y, align 4, !tbaa !61
  %.not714.i = icmp eq i32 %i.emw, 0
  br i1 %.not714.i, label %bb.qa, label %bb.qb

bb.qa:                                            ; preds = %bb.pz, %bb.py
  %i.emx = load ptr, ptr %i.bn, align 8, !tbaa !116
  %i.emy = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv924.i
  %i.emz = load i32, ptr %i.emy, align 4, !tbaa !53
  %i.ena = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv924.i
  %i.enb = load i32, ptr %i.ena, align 4, !tbaa !53
  %i.enc = sub nsw i32 %i.emz, %i.enb
  %i.end = sext i32 %i.enc to i64
  %i.ene = getelementptr inbounds i8, ptr %i.emx, i64 %i.end
  %i.enf = load i8, ptr %i.ene, align 1, !tbaa !98
  %i.eng = zext i8 %i.enf to i32
  store i32 %i.eng, ptr %i.cz, align 4, !tbaa !117
  br label %bb.qb

bb.qb:                                            ; preds = %bb.qa, %bb.pz
  %i.enh = and i32 %i.emg, 5
  %or.cond37.i = icmp eq i32 %i.enh, 1
  br i1 %or.cond37.i, label %bb.qd, label %bb.qc

bb.qc:                                            ; preds = %bb.qb
  %i.eni = load i32, ptr %i.al, align 4, !tbaa !63
  %.not715.i = icmp eq i32 %i.eni, 0
  br i1 %.not715.i, label %bb.qe, label %bb.qd

bb.qd:                                            ; preds = %bb.qc, %bb.qb
  %i.enj = load ptr, ptr %i.bn, align 8, !tbaa !116
  %i.enk = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv924.i
  %i.enl = load i32, ptr %i.enk, align 4, !tbaa !53
  %i.enm = sext i32 %i.enl to i64
  %i.enn = getelementptr i8, ptr %i.enj, i64 %i.enm
  %i.eno = getelementptr i8, ptr %i.enn, i64 -1
  %i.enp = load i8, ptr %i.eno, align 1, !tbaa !98
  %i.enq = zext i8 %i.enp to i32
  store i32 %i.enq, ptr %i.cy, align 8, !tbaa !118
  br label %bb.qe

bb.qe:                                            ; preds = %bb.qd, %bb.qc
  %i.enr = load ptr, ptr %i.cr, align 8, !tbaa !89
  %i.ens = load i32, ptr %i.cs, align 4, !tbaa !87
  %i.ent = sext i32 %i.ens to i64
  %i.enu = getelementptr inbounds [768 x i8], ptr %i.enr, i64 %i.ent
  %i.env = getelementptr inbounds nuw [4 x i8], ptr @block_map, i64 %indvars.iv924.i
  %i.enw = load i32, ptr %i.env, align 4, !tbaa !53
  %i.enx = sext i32 %i.enw to i64                 ; 3 uses
  %i.eny = getelementptr inbounds [128 x i8], ptr %i.enu, i64 %i.enx
  %i.enz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv924.i
  %i.eoa = load i32, ptr %i.enz, align 4, !tbaa !53
  %.in716.v.i = select i1 %.not710.i, i64 6456, i64 6460
  %.in716.i = getelementptr inbounds nuw i8, ptr %0, i64 %.in716.v.i
  %i.eob = load i32, ptr %.in716.i, align 4, !tbaa !53
  %i.eoc = call fastcc i32 @vc1_decode_intra_block(ptr noundef nonnull %0, ptr noundef %i.eny, i32 noundef %i.emg, i32 noundef %i.eoa, i32 noundef %.20.i, i32 noundef %i.eob) ; 2 uses
  %i.eod = icmp slt i32 %i.eoc, 0
  br i1 %i.eod, label %.thread877.i, label %bb.qf

bb.qf:                                            ; preds = %bb.qe
  %i.eoe = load ptr, ptr %i.db, align 8, !tbaa !129
  %i.eof = load ptr, ptr %i.cr, align 8, !tbaa !89
  %i.eog = load i32, ptr %i.cs, align 4, !tbaa !87
  %i.eoh = sext i32 %i.eog to i64
  %i.eoi = getelementptr inbounds [768 x i8], ptr %i.eof, i64 %i.eoh
  %i.eoj = getelementptr inbounds [128 x i8], ptr %i.eoi, i64 %i.enx
  call void %i.eoe(ptr noundef %i.eoj) #10, !inline_history !196
  %i.eok = load i8, ptr %i.du, align 16, !tbaa !140
  %.not717.i = icmp eq i8 %i.eok, 0
  br i1 %.not717.i, label %.loopexit885.i, label %vector.body408

vector.body408:                                   ; preds = %bb.qf
  %i.eol = load ptr, ptr %i.cr, align 8, !tbaa !89
  %i.eom = load i32, ptr %i.cs, align 4, !tbaa !87
  %i.eon = sext i32 %i.eom to i64
  %i.eoo = getelementptr inbounds [768 x i8], ptr %i.eol, i64 %i.eon
  %i.eop = getelementptr inbounds [128 x i8], ptr %i.eoo, i64 %i.enx ; 9 uses
  %i.eoq = getelementptr inbounds nuw i8, ptr %i.eop, i64 16 ; 2 uses
  %wide.load410 = load <8 x i16>, ptr %i.eop, align 2, !tbaa !95
  %wide.load411 = load <8 x i16>, ptr %i.eoq, align 2, !tbaa !95
  %i.eor = shl <8 x i16> %wide.load410, splat (i16 1)
  %i.eos = shl <8 x i16> %wide.load411, splat (i16 1)
  store <8 x i16> %i.eor, ptr %i.eop, align 2, !tbaa !95
  store <8 x i16> %i.eos, ptr %i.eoq, align 2, !tbaa !95
  %i.eot = getelementptr inbounds nuw i8, ptr %i.eop, i64 32 ; 2 uses
  %i.eou = getelementptr inbounds nuw i8, ptr %i.eop, i64 48 ; 2 uses
  %wide.load410.1 = load <8 x i16>, ptr %i.eot, align 2, !tbaa !95
  %wide.load411.1 = load <8 x i16>, ptr %i.eou, align 2, !tbaa !95
  %i.eov = shl <8 x i16> %wide.load410.1, splat (i16 1)
  %i.eow = shl <8 x i16> %wide.load411.1, splat (i16 1)
  store <8 x i16> %i.eov, ptr %i.eot, align 2, !tbaa !95
  store <8 x i16> %i.eow, ptr %i.eou, align 2, !tbaa !95
  %i.eox = getelementptr inbounds nuw i8, ptr %i.eop, i64 64 ; 2 uses
  %i.eoy = getelementptr inbounds nuw i8, ptr %i.eop, i64 80 ; 2 uses
  %wide.load410.2 = load <8 x i16>, ptr %i.eox, align 2, !tbaa !95
  %wide.load411.2 = load <8 x i16>, ptr %i.eoy, align 2, !tbaa !95
  %i.eoz = shl <8 x i16> %wide.load410.2, splat (i16 1)
  %i.epa = shl <8 x i16> %wide.load411.2, splat (i16 1)
  store <8 x i16> %i.eoz, ptr %i.eox, align 2, !tbaa !95
  store <8 x i16> %i.epa, ptr %i.eoy, align 2, !tbaa !95
  %i.epb = getelementptr inbounds nuw i8, ptr %i.eop, i64 96 ; 2 uses
  %i.epc = getelementptr inbounds nuw i8, ptr %i.eop, i64 112 ; 2 uses
  %wide.load410.3 = load <8 x i16>, ptr %i.epb, align 2, !tbaa !95
  %wide.load411.3 = load <8 x i16>, ptr %i.epc, align 2, !tbaa !95
  %i.epd = shl <8 x i16> %wide.load410.3, splat (i16 1)
  %i.epe = shl <8 x i16> %wide.load411.3, splat (i16 1)
  store <8 x i16> %i.epd, ptr %i.epb, align 2, !tbaa !95
  store <8 x i16> %i.epe, ptr %i.epc, align 2, !tbaa !95
  br label %.loopexit885.i

.loopexit885.i:                                   ; preds = %vector.body408, %bb.qf
  %i.epf = shl i32 %i.emg, 2
  %i.epg = shl nuw i32 15, %i.epf
  %i.eph = or i32 %i.epg, %.2584904.i
  %i.epi = shl nuw nsw i32 1, %i.emg
  %i.epj = or i32 %i.epi, %.2905.i
  br label %bb.qj

bb.qg:                                            ; preds = %bb.px
  %i.epk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv924.i
  %i.epl = load i32, ptr %i.epk, align 4, !tbaa !53
  %.not712.i = icmp eq i32 %i.epl, 0
  br i1 %.not712.i, label %bb.qj, label %bb.qh

bb.qh:                                            ; preds = %bb.qg
  %i.epm = load ptr, ptr %i.cr, align 8, !tbaa !89
  %i.epn = load i32, ptr %i.cs, align 4, !tbaa !87
  %i.epo = sext i32 %i.epn to i64
  %i.epp = getelementptr inbounds [768 x i8], ptr %i.epm, i64 %i.epo
  %i.epq = getelementptr inbounds nuw [4 x i8], ptr @block_map, i64 %indvars.iv924.i
  %i.epr = load i32, ptr %i.epq, align 4, !tbaa !53
  %i.eps = sext i32 %i.epr to i64
  %i.ept = getelementptr inbounds [128 x i8], ptr %i.epp, i64 %i.eps
  %i.epu = zext nneg i32 %i.emi to i64
  %i.epv = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.epu
  %i.epw = load ptr, ptr %i.epv, align 8, !tbaa !57
  %i.epx = getelementptr inbounds i8, ptr %i.epw, i64 %i.ems
  %.in713.v.i = select i1 %.not710.i, i64 416, i64 424
  %.in713.i = getelementptr inbounds nuw i8, ptr %0, i64 %.in713.v.i
  %i.epy = load i64, ptr %.in713.i, align 8, !tbaa !182
  %i.epz = trunc i64 %i.epy to i32
  %i.eqa = call fastcc i32 @vc1_decode_p_block(ptr noundef nonnull %0, ptr noundef %i.ept, i32 noundef %i.emg, i32 noundef %.20.i, i32 noundef %.4613901.i, i32 noundef %.2594902.i, ptr noundef %i.epx, i32 noundef %i.epz, ptr noundef nonnull %i.a) ; 3 uses
  %i.eqb = icmp slt i32 %i.eqa, 0
  br i1 %i.eqb, label %.thread877.i, label %bb.qi

bb.qi:                                            ; preds = %bb.qh
  %i.eqc = shl i32 %i.emg, 2
  %i.eqd = shl nuw nsw i32 %i.eqa, %i.eqc
  %i.eqe = or i32 %i.eqd, %.2584904.i
  %i.eqf = load i8, ptr %i.co, align 4, !tbaa !180
  %i.eqg = icmp eq i8 %i.eqf, 0
  %i.eqh = icmp slt i32 %.4613901.i, 8
  %or.cond39.i = select i1 %i.eqg, i1 %i.eqh, i1 false
  %spec.store.select40.i = select i1 %or.cond39.i, i32 -1, i32 %.4613901.i
  br label %bb.qj

bb.qj:                                            ; preds = %bb.qi, %bb.qg, %.loopexit885.i
  %.5614.i = phi i32 [ %.4613901.i, %.loopexit885.i ], [ %spec.store.select40.i, %bb.qi ], [ %.4613901.i, %bb.qg ]
  %.3595.i = phi i32 [ %.2594902.i, %.loopexit885.i ], [ 0, %bb.qi ], [ %.2594902.i, %bb.qg ]
  %.3585.i = phi i32 [ %i.eph, %.loopexit885.i ], [ %i.eqe, %bb.qi ], [ %.2584904.i, %bb.qg ] ; 2 uses
  %.3.i162 = phi i32 [ %i.epj, %.loopexit885.i ], [ %.2905.i, %bb.qi ], [ %.2905.i, %bb.qg ] ; 2 uses
  %indvars.iv.next925.i = add nuw nsw i64 %indvars.iv924.i, 1 ; 2 uses
  %exitcond927.not.i = icmp eq i64 %indvars.iv.next925.i, 6
  br i1 %exitcond927.not.i, label %.loopexit886.i, label %bb.pv, !llvm.loop !199

.thread877.i:                                     ; preds = %bb.qh, %bb.qe
  %.0631.ph.i = phi i32 [ %i.eqa, %bb.qh ], [ %i.eoc, %bb.qe ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %vc1_decode_p_mb.exit

.loopexit886.i:                                   ; preds = %bb.qj, %bb.nu
  %.4586.i = phi i32 [ 0, %bb.nu ], [ %.3585.i, %bb.qj ]
  %.4.i161 = phi i32 [ 0, %bb.nu ], [ %.3.i162, %bb.qj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %.loopexit882.i

.preheader887.i:                                  ; preds = %bb.nc
  store i32 0, ptr %i.bm, align 4, !tbaa !84
  %i.eqi = load ptr, ptr %i.bq, align 8, !tbaa !114
  %i.eqj = sext i32 %i.gk to i64                  ; 2 uses
  %i.eqk = getelementptr inbounds i8, ptr %i.eqi, i64 %i.eqj
  store i8 0, ptr %i.eqk, align 1, !tbaa !98
  %i.eql = load ptr, ptr %i.bn, align 8, !tbaa !116
  %i.eqm = load i32, ptr %i.av, align 16, !tbaa !53
  %i.eqn = sext i32 %i.eqm to i64
  %i.eqo = getelementptr inbounds i8, ptr %i.eql, i64 %i.eqn
  store i8 0, ptr %i.eqo, align 1, !tbaa !98
  %i.eqp = load ptr, ptr %i.bo, align 16, !tbaa !122
  %i.eqq = load i32, ptr %i.av, align 16, !tbaa !53
  %i.eqr = sext i32 %i.eqq to i64
  %i.eqs = getelementptr inbounds [2 x i8], ptr %i.eqp, i64 %i.eqr
  store i16 0, ptr %i.eqs, align 2, !tbaa !95
  %i.eqt = load ptr, ptr %i.bn, align 8, !tbaa !116
  %i.equ = load i32, ptr %i.aw, align 4, !tbaa !53
  %i.eqv = sext i32 %i.equ to i64
  %i.eqw = getelementptr inbounds i8, ptr %i.eqt, i64 %i.eqv
  store i8 0, ptr %i.eqw, align 1, !tbaa !98
  %i.eqx = load ptr, ptr %i.bo, align 16, !tbaa !122
  %i.eqy = load i32, ptr %i.aw, align 4, !tbaa !53
  %i.eqz = sext i32 %i.eqy to i64
  %i.era = getelementptr inbounds [2 x i8], ptr %i.eqx, i64 %i.eqz
  store i16 0, ptr %i.era, align 2, !tbaa !95
  %i.erb = load ptr, ptr %i.bn, align 8, !tbaa !116
  %i.erc = load i32, ptr %i.ax, align 8, !tbaa !53
  %i.erd = sext i32 %i.erc to i64
  %i.ere = getelementptr inbounds i8, ptr %i.erb, i64 %i.erd
  store i8 0, ptr %i.ere, align 1, !tbaa !98
  %i.erf = load ptr, ptr %i.bo, align 16, !tbaa !122
  %i.erg = load i32, ptr %i.ax, align 8, !tbaa !53
  %i.erh = sext i32 %i.erg to i64
  %i.eri = getelementptr inbounds [2 x i8], ptr %i.erf, i64 %i.erh
  store i16 0, ptr %i.eri, align 2, !tbaa !95
  %i.erj = load ptr, ptr %i.bn, align 8, !tbaa !116
  %i.erk = load i32, ptr %i.ay, align 4, !tbaa !53
  %i.erl = sext i32 %i.erk to i64
  %i.erm = getelementptr inbounds i8, ptr %i.erj, i64 %i.erl
  store i8 0, ptr %i.erm, align 1, !tbaa !98
  %i.ern = load ptr, ptr %i.bo, align 16, !tbaa !122
  %i.ero = load i32, ptr %i.ay, align 4, !tbaa !53
  %i.erp = sext i32 %i.ero to i64
  %i.erq = getelementptr inbounds [2 x i8], ptr %i.ern, i64 %i.erp
  store i16 0, ptr %i.erq, align 2, !tbaa !95
  %i.err = load ptr, ptr %i.bn, align 8, !tbaa !116
  %i.ers = load i32, ptr %i.az, align 16, !tbaa !53
  %i.ert = sext i32 %i.ers to i64
  %i.eru = getelementptr inbounds i8, ptr %i.err, i64 %i.ert
  store i8 0, ptr %i.eru, align 1, !tbaa !98
  %i.erv = load ptr, ptr %i.bo, align 16, !tbaa !122
  %i.erw = load i32, ptr %i.az, align 16, !tbaa !53
  %i.erx = sext i32 %i.erw to i64
  %i.ery = getelementptr inbounds [2 x i8], ptr %i.erv, i64 %i.erx
  store i16 0, ptr %i.ery, align 2, !tbaa !95
  %i.erz = load ptr, ptr %i.bn, align 8, !tbaa !116
  %i.esa = load i32, ptr %i.ba, align 4, !tbaa !53
  %i.esb = sext i32 %i.esa to i64
  %i.esc = getelementptr inbounds i8, ptr %i.erz, i64 %i.esb
  store i8 0, ptr %i.esc, align 1, !tbaa !98
  %i.esd = load ptr, ptr %i.bo, align 16, !tbaa !122
  %i.ese = load i32, ptr %i.ba, align 4, !tbaa !53
  %i.esf = sext i32 %i.ese to i64
  %i.esg = getelementptr inbounds [2 x i8], ptr %i.esd, i64 %i.esf
  store i16 0, ptr %i.esg, align 2, !tbaa !95
  %i.esh = load i32, ptr %i.bs, align 16, !tbaa !175
  %i.esi = load i32, ptr %i.bt, align 4, !tbaa !176
  %i.esj = load ptr, ptr %i.bn, align 8, !tbaa !116
  call void @ff_vc1_pred_mv(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %i.esh, i32 noundef %i.esi, ptr noundef %i.esj, i32 noundef 0, i32 noundef 0) #10
  call void @ff_vc1_mc_4mv_luma(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  %i.esk = load i32, ptr %i.bs, align 16, !tbaa !175
  %i.esl = load i32, ptr %i.bt, align 4, !tbaa !176
  %i.esm = load ptr, ptr %i.bn, align 8, !tbaa !116
  call void @ff_vc1_pred_mv(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %i.esk, i32 noundef %i.esl, ptr noundef %i.esm, i32 noundef 0, i32 noundef 0) #10
  call void @ff_vc1_mc_4mv_luma(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #10
  %i.esn = load i32, ptr %i.bs, align 16, !tbaa !175
  %i.eso = load i32, ptr %i.bt, align 4, !tbaa !176
  %i.esp = load ptr, ptr %i.bn, align 8, !tbaa !116
  call void @ff_vc1_pred_mv(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %i.esn, i32 noundef %i.eso, ptr noundef %i.esp, i32 noundef 0, i32 noundef 0) #10
  call void @ff_vc1_mc_4mv_luma(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 0, i32 noundef 0) #10
  %i.esq = load i32, ptr %i.bs, align 16, !tbaa !175
  %i.esr = load i32, ptr %i.bt, align 4, !tbaa !176
  %i.ess = load ptr, ptr %i.bn, align 8, !tbaa !116
  call void @ff_vc1_pred_mv(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %i.esq, i32 noundef %i.esr, ptr noundef %i.ess, i32 noundef 0, i32 noundef 0) #10
  call void @ff_vc1_mc_4mv_luma(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 0, i32 noundef 0) #10
  call void @ff_vc1_mc_4mv_chroma(ptr noundef nonnull %0, i32 noundef 0) #10
  %i.est = load ptr, ptr %i.bq, align 8, !tbaa !114
  %i.esu = getelementptr inbounds i8, ptr %i.est, i64 %i.eqj
  store i8 0, ptr %i.esu, align 1, !tbaa !98
  br label %.loopexit882.i

.loopexit882.i:                                   ; preds = %bb.na, %.preheader887.i, %.loopexit886.i, %bb.nb
  %.5587.i = phi i32 [ 0, %.preheader887.i ], [ 0, %bb.nb ], [ %.4586.i, %.loopexit886.i ], [ %.1583.i, %bb.na ]
  %.5.i = phi i32 [ 0, %.preheader887.i ], [ 0, %bb.nb ], [ %.4.i161, %.loopexit886.i ], [ %.1581.i, %bb.na ]
  %i.esv = load i32, ptr %i.dc, align 4, !tbaa !131
  %.not728.i = icmp eq i32 %i.esv, 0
  br i1 %.not728.i, label %bb.qm, label %bb.qk

bb.qk:                                            ; preds = %.loopexit882.i
  %i.esw = load i8, ptr %i.bi, align 8, !tbaa !46
  %i.esx = icmp ugt i8 %i.esw, 8
  br i1 %i.esx, label %bb.ql, label %bb.qm

bb.ql:                                            ; preds = %bb.qk
  call void @ff_vc1_p_overlap_filter(ptr noundef nonnull %0) #10
  br label %bb.qm

bb.qm:                                            ; preds = %bb.ql, %bb.qk, %.loopexit882.i
  call fastcc void @vc1_put_blocks_clamped(ptr noundef nonnull %0, i32 noundef 1)
  %i.esy = load ptr, ptr %i.dd, align 16, !tbaa !183
  %i.esz = load i32, ptr %i.al, align 4, !tbaa !63
  %i.eta = sext i32 %i.esz to i64
  %i.etb = getelementptr inbounds [4 x i8], ptr %i.esy, i64 %i.eta
  store i32 %.5587.i, ptr %i.etb, align 4, !tbaa !53
  %i.etc = load i32, ptr %i.a, align 4, !tbaa !53
  %i.etd = load ptr, ptr %i.de, align 16, !tbaa !184
  %i.ete = load i32, ptr %i.al, align 4, !tbaa !63
  %i.etf = sext i32 %i.ete to i64
  %i.etg = getelementptr inbounds [4 x i8], ptr %i.etd, i64 %i.etf
  store i32 %i.etc, ptr %i.etg, align 4, !tbaa !53
  %i.eth = trunc i32 %.5.i to i8
  %i.eti = load ptr, ptr %i.bl, align 16, !tbaa !166
  %i.etj = load i32, ptr %i.al, align 4, !tbaa !63
  %i.etk = sext i32 %i.etj to i64
  %i.etl = getelementptr inbounds i8, ptr %i.eti, i64 %i.etk
  store i8 %i.eth, ptr %i.etl, align 1, !tbaa !98
  br label %vc1_decode_p_mb.exit

vc1_decode_p_mb.exit:                             ; preds = %bb.mv, %bb.my, %.thread877.i, %bb.qm
  %.1632.i = phi i32 [ 0, %bb.qm ], [ %.0631.ph.i, %.thread877.i ], [ %i.dqu, %bb.mv ], [ %i.dsq, %bb.my ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br i1 %i.x, label %bb.qn, label %bb.qo

bb.qn:                                            ; preds = %vc1_decode_p_mb.exit
  call void @ff_vc1_p_loop_filter(ptr noundef nonnull %0) #10
  br label %bb.qo

bb.qo:                                            ; preds = %bb.jr, %vc1_decode_p_mb_intfr.exit, %bb.qn, %vc1_decode_p_mb.exit, %vc1_decode_p_mb_intfi.exit, %bb.dy
  %.0 = phi i32 [ %.0284.i, %bb.dy ], [ %.0284.i, %vc1_decode_p_mb_intfi.exit ], [ %.0400.i, %bb.jr ], [ %.0400.i, %vc1_decode_p_mb_intfr.exit ], [ %.1632.i, %bb.qn ], [ %.1632.i, %vc1_decode_p_mb.exit ]
  %i.etm = icmp slt i32 %.0, 0
  br i1 %i.etm, label %bb.qq, label %bb.qp

bb.qp:                                            ; preds = %bb.qo
  %.val110 = load i32, ptr %i.be, align 8, !tbaa !77 ; 2 uses
  %.val111 = load i32, ptr %i.bf, align 4, !tbaa !78
  %i.etn = icmp slt i32 %.val111, %.val110
  %i.eto = icmp slt i32 %.val110, 0
  %or.cond = or i1 %i.eto, %i.etn
  br i1 %or.cond, label %bb.qq, label %bb.qr

bb.qq:                                            ; preds = %bb.qp, %bb.qo
  %i.etp = getelementptr inbounds nuw i8, ptr %0, i64 3912
  %i.etq = load i32, ptr %i.af, align 16, !tbaa !58
  %i.etr = load i32, ptr %i.al, align 4, !tbaa !63
  %i.ets = load i32, ptr %i.ah, align 8, !tbaa !62
  call void @ff_er_add_slice(ptr noundef nonnull %i.etp, i32 noundef 0, i32 noundef %i.etq, i32 noundef %i.etr, i32 noundef %i.ets, i32 noundef 14) #10
  %i.ett = load ptr, ptr %i.cn, align 8, !tbaa !132
  %.val = load i32, ptr %i.be, align 8, !tbaa !77
  %i.etu = load i32, ptr %i.bf, align 4, !tbaa !141
  %i.etv = load i32, ptr %i.al, align 4, !tbaa !63
  %i.etw = load i32, ptr %i.ah, align 8, !tbaa !62
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ett, i32 noundef 16, ptr noundef nonnull @.str.6, i32 noundef %.val, i32 noundef %i.etu, i32 noundef %i.etv, i32 noundef %i.etw) #10
  br label %bb.qs

bb.qr:                                            ; preds = %bb.qp
  %i.etx = load i32, ptr %i.dv, align 16, !tbaa !133
  %i.ety = load <4 x i32>, ptr %i.cs, align 4, !tbaa !53
  %i.etz = add nsw <4 x i32> %i.ety, splat (i32 1) ; 2 uses
end_hunk_3
