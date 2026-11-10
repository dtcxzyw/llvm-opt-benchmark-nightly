Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_stdlib-cfdc29a4da2325f3.ruff_python_stdlib.34f812003aced937-cgu.02?download=true
inline.NumInlined: 13
inline.NumDeleted: 9
begin_hunk_0_@_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins12is_exception:bb.a
  %i.pm = load i16, ptr %i.pl, align 1
  %i.pn = zext i16 %i.pm to i64
  %i.po = xor i64 %i.pn, 29295
  %i.pp = or i64 %i.pk, %i.po
  %i.pq = icmp ne i64 %i.pp, 0
  %i.pr = zext i1 %i.pq to i32
  %i.ps = icmp eq i32 %i.pr, 0
  br i1 %i.ps, label %.thread140, label %.thread

bb.ay:                                            ; preds = %bb.an
  %i.pt = load i64, ptr %0, align 1
  %i.pu = xor i64 %i.pt, 5000513390836805205
  %i.pv = getelementptr i8, ptr %0, i64 8
  %i.pw = load i32, ptr %i.pv, align 1
  %i.px = zext i32 %i.pw to i64
  %i.py = xor i64 %i.px, 1919906418
  %i.pz = or i64 %i.pu, %i.py
  %i.qa = icmp ne i64 %i.pz, 0
  %i.qb = zext i1 %i.qa to i32
  %i.qc = icmp eq i32 %i.qb, 0
  br i1 %i.qc, label %.thread140, label %bb.bd

bb.az:                                            ; preds = %bb.aq
  %i.qd = load i128, ptr %0, align 1
  %i.qe = xor i128 %i.qd, 152125320880743606897086972808978329173
  %i.qf = getelementptr i8, ptr %0, i64 16
  %i.qg = load i16, ptr %i.qf, align 1
  %i.qh = zext i16 %i.qg to i128
  %i.qi = xor i128 %i.qh, 29295
  %i.qj = or i128 %i.qe, %i.qi
  %i.qk = icmp ne i128 %i.qj, 0
  %i.ql = zext i1 %i.qk to i32
  %i.qm = icmp eq i32 %i.ql, 0
  br i1 %i.qm, label %.thread140, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.qn = load i128, ptr %0, align 1
  %i.qo = xor i128 %i.qn, 152125320880743607063179727066402221653
  %i.qp = getelementptr i8, ptr %0, i64 16
  %i.qq = load i16, ptr %i.qp, align 1
  %i.qr = zext i16 %i.qq to i128
  %i.qs = xor i128 %i.qr, 29295
  %i.qt = or i128 %i.qo, %i.qs
  %i.qu = icmp ne i128 %i.qt, 0
  %i.qv = zext i1 %i.qu to i32
  %i.qw = icmp eq i32 %i.qv, 0
  br i1 %i.qw, label %.thread140, label %bb.be

bb.bb:                                            ; preds = %bb.a
  %i.qx = load i128, ptr %0, align 1
  %i.qy = xor i128 %i.qx, 134856309995963867068944965821073550933
  %i.qz = getelementptr i8, ptr %0, i64 5
  %i.ra = load i128, ptr %i.qz, align 1
  %i.rb = xor i128 %i.ra, 152110657718960235071478492075713127780
  %i.rc = or i128 %i.qy, %i.rb
  %i.rd = icmp ne i128 %i.rc, 0
  %i.re = zext i1 %i.rd to i32
  %i.rf = icmp eq i32 %i.re, 0
  br i1 %i.rf, label %.thread140, label %.thread

bb.bc:                                            ; preds = %bb.w
  %i.rg = load i32, ptr %0, align 1
  %i.rh = xor i32 %i.rg, 1852989783
  %i.ri = getelementptr i8, ptr %0, i64 3
  %i.rj = load i32, ptr %i.ri, align 1
  %i.rk = xor i32 %i.rj, 1735289198
  %i.rl = or i32 %i.rh, %i.rk
  %i.rm = icmp ne i32 %i.rl, 0
  %i.rn = zext i1 %i.rm to i32
  %i.ro = icmp eq i32 %i.rn, 0
  br i1 %i.ro, label %.thread140, label %.thread

bb.bd:                                            ; preds = %bb.ay
  %i.rp = load i64, ptr %0, align 1
  %i.rq = xor i64 %i.rp, 8241964946199705922
  %i.rr = getelementptr i8, ptr %0, i64 8
  %i.rs = load i32, ptr %i.rr, align 1
  %i.rt = zext i32 %i.rs to i64
  %i.ru = xor i64 %i.rt, 1735289198
  %i.rv = or i64 %i.rq, %i.ru
  %i.rw = icmp ne i64 %i.rv, 0
  %i.rx = zext i1 %i.rw to i32
  %i.ry = icmp eq i32 %i.rx, 0
  br i1 %i.ry, label %.thread140, label %.thread

bb.be:                                            ; preds = %bb.ba
  %i.rz = load i128, ptr %0, align 1
  %i.sa = xor i128 %i.rz, 140142412118740281690695622212958840132
  %i.sb = getelementptr i8, ptr %0, i64 16
  %i.sc = load i16, ptr %i.sb, align 1
  %i.sd = zext i16 %i.sc to i128
  %i.se = xor i128 %i.sd, 26478
  %i.sf = or i128 %i.sa, %i.se
  %i.sg = icmp ne i128 %i.sf, 0
  %i.sh = zext i1 %i.sg to i32
  %i.si = icmp eq i32 %i.sh, 0
  br i1 %i.si, label %.thread140, label %.thread

bb.bf:                                            ; preds = %bb.ar
  %i.sj = load i64, ptr %0, align 1
  %i.sk = xor i64 %i.sj, 7014186486924080454
  %i.sl = getelementptr i8, ptr %0, i64 5
  %i.sm = load i64, ptr %i.sl, align 1
  %i.sn = xor i64 %i.sm, 7453010356431050597
  %i.so = or i64 %i.sk, %i.sn
  %i.sp = icmp ne i64 %i.so, 0
  %i.sq = zext i1 %i.sp to i32
  %i.sr = icmp eq i32 %i.sq, 0
  br i1 %i.sr, label %.thread140, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ss = load i64, ptr %0, align 1
  %i.st = xor i64 %i.ss, 7014202979497569609
  %i.su = getelementptr i8, ptr %0, i64 5
  %i.sv = load i64, ptr %i.su, align 1
  %i.sw = xor i64 %i.sv, 7453010356431050612
  %i.sx = or i64 %i.st, %i.sw
  %i.sy = icmp ne i64 %i.sx, 0
  %i.sz = zext i1 %i.sy to i32
  %i.ta = icmp eq i32 %i.sz, 0
  br i1 %i.ta, label %.thread140, label %bb.bk

bb.bh:                                            ; preds = %bb.a
  %i.tb = load i128, ptr %0, align 1
  %i.tc = xor i128 %i.tb, 140173221261722184092498005776015451472
  %i.td = getelementptr i8, ptr %0, i64 9
  %i.te = load i128, ptr %i.td, align 1
  %i.tf = xor i128 %i.te, 137483774623790395749892021960457941616
  %i.tg = or i128 %i.tc, %i.tf
  %i.th = icmp ne i128 %i.tg, 0
  %i.ti = zext i1 %i.th to i32
  %i.tj = icmp eq i32 %i.ti, 0
  br i1 %i.tj, label %.thread140, label %.thread

bb.bi:                                            ; preds = %bb.aj
  %i.tk = load i64, ptr %0, align 1
  %i.tl = xor i64 %i.tk, 7305808869231650130
  %i.tm = getelementptr i8, ptr %0, i64 7
  %i.tn = load i64, ptr %i.tm, align 1
  %i.to = xor i64 %i.tn, 7453010356431050597
  %i.tp = or i64 %i.tl, %i.to
  %i.tq = icmp ne i64 %i.tp, 0
  %i.tr = zext i1 %i.tq to i32
  %i.ts = icmp eq i32 %i.tr, 0
  br i1 %i.ts, label %.thread140, label %bb.bn

bb.bj:                                            ; preds = %bb.ap
  %i.tt = load i64, ptr %0, align 1
  %i.tu = xor i64 %i.tt, 6297559953639896402
  %i.tv = getelementptr i8, ptr %0, i64 6
  %i.tw = load i64, ptr %i.tv, align 1
  %i.tx = xor i64 %i.tw, 7453010356431050597
  %i.ty = or i64 %i.tu, %i.tx
  %i.tz = icmp ne i64 %i.ty, 0
  %i.ua = zext i1 %i.tz to i32
  %i.ub = icmp eq i32 %i.ua, 0
  br i1 %i.ub, label %.thread140, label %bb.bl

bb.bk:                                            ; preds = %bb.bg
  %i.uc = load i64, ptr %0, align 1
  %i.ud = xor i64 %i.uc, 7014207304613394771
  %i.ue = getelementptr i8, ptr %0, i64 5
  %i.uf = load i64, ptr %i.ue, align 1
  %i.ug = xor i64 %i.uf, 7453010356431050616
  %i.uh = or i64 %i.ud, %i.ug
  %i.ui = icmp ne i64 %i.uh, 0
  %i.uj = zext i1 %i.ui to i32
  %i.uk = icmp eq i32 %i.uj, 0
  br i1 %i.uk, label %.thread140, label %.thread

bb.bl:                                            ; preds = %bb.bj
  %i.ul = load i64, ptr %0, align 1
  %i.um = xor i64 %i.ul, 6297550083519508053
  %i.un = getelementptr i8, ptr %0, i64 6
  %i.uo = load i64, ptr %i.un, align 1
  %i.up = xor i64 %i.uo, 7453010356431050597
  %i.uq = or i64 %i.um, %i.up
  %i.ur = icmp ne i64 %i.uq, 0
  %i.us = zext i1 %i.ur to i32
  %i.ut = icmp eq i32 %i.us, 0
  br i1 %i.ut, label %.thread140, label %.thread

bb.bm:                                            ; preds = %bb.av
  %i.uu = load i64, ptr %0, align 1
  %i.uv = xor i64 %i.uu, 7958530519726388053
  %i.uw = getelementptr i8, ptr %0, i64 3
  %i.ux = load i64, ptr %i.uw, align 1
  %i.uy = xor i64 %i.ux, 7453010356431050610
  %i.uz = or i64 %i.uv, %i.uy
  %i.va = icmp ne i64 %i.uz, 0
  %i.vb = zext i1 %i.va to i32
  %i.vc = icmp eq i32 %i.vb, 0
  br i1 %i.vc, label %.thread140, label %.thread

bb.bn:                                            ; preds = %bb.bi, %bb.a
  %i.vd = icmp ugt i8 %2, 9
  %i.ve = icmp eq i64 %1, 15
  %or.cond = and i1 %i.ve, %i.vd
  br i1 %or.cond, label %bb.bo, label %.thread

.thread:                                          ; preds = %bb.bm, %bb.ac, %bb.ad, %bb.ah, %bb.ao, %bb.at, %bb.au, %bb.aw, %bb.ax, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bh, %bb.bk, %bb.bl, %bb.bo, %bb.bn
  %i.vf = icmp ugt i8 %2, 10
  br i1 %i.vf, label %bb.bq, label %.thread140

bb.bo:                                            ; preds = %bb.bn
  %i.vg = load i64, ptr %0, align 1
  %i.vh = xor i64 %i.vg, 7453010313431182917
  %i.vi = getelementptr i8, ptr %0, i64 7
  %i.vj = load i64, ptr %i.vi, align 1
  %i.vk = xor i64 %i.vj, 7453010356431050599
  %i.vl = or i64 %i.vh, %i.vk
  %i.vm = icmp ne i64 %i.vl, 0
  %i.vn = zext i1 %i.vm to i32
  %i.vo = icmp eq i32 %i.vn, 0
  br i1 %i.vo, label %.thread140, label %.thread

bb.bp:                                            ; preds = %bb.br, %bb.bq, %bb.bs
  %i.vp = icmp ugt i8 %2, 12
  br i1 %i.vp, label %bb.bt, label %.thread140

bb.bq:                                            ; preds = %.thread
  switch i64 %1, label %bb.bp [
    i64 18, label %bb.br
    i64 14, label %bb.bs
  ]

bb.br:                                            ; preds = %bb.bq
  %i.vq = load i128, ptr %0, align 1
  %i.vr = xor i128 %i.vq, 148137678174658691248734298903409811778
  %i.vs = getelementptr i8, ptr %0, i64 16
  %i.vt = load i16, ptr %i.vs, align 1
  %i.vu = zext i16 %i.vt to i128
  %i.vv = xor i128 %i.vu, 28789
  %i.vw = or i128 %i.vr, %i.vv
  %i.vx = icmp ne i128 %i.vw, 0
  %i.vy = zext i1 %i.vx to i32
  %i.vz = icmp eq i32 %i.vy, 0
  br i1 %i.vz, label %.thread140, label %bb.bp

bb.bs:                                            ; preds = %bb.bq
  %i.wa = load i64, ptr %0, align 1
  %i.wb = xor i64 %i.wa, 8028075836850796613
  %i.wc = getelementptr i8, ptr %0, i64 6
  %i.wd = load i64, ptr %i.wc, align 1
  %i.we = xor i64 %i.wd, 8103505641138450281
  %i.wf = or i64 %i.wb, %i.we
  %i.wg = icmp ne i64 %i.wf, 0
  %i.wh = zext i1 %i.wg to i32
  %i.wi = icmp eq i32 %i.wh, 0
  br i1 %i.wi, label %.thread140, label %bb.bp

bb.bt:                                            ; preds = %bb.bp
  switch i64 %1, label %.thread140 [
    i64 23, label %bb.bu
    i64 16, label %bb.bv
  ]

.thread140:                                       ; preds = %.thread, %bb.bu, %bb.bv, %bb.bt, %bb.bp, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bo, %bb.br, %bb.bs
  %.sroa.0.0 = phi i1 [ true, %bb.b ], [ false, %bb.bp ], [ %i.wr, %bb.bu ], [ true, %bb.bs ], [ true, %bb.br ], [ true, %bb.bo ], [ true, %bb.bm ], [ true, %bb.bl ], [ true, %bb.bk ], [ true, %bb.bj ], [ true, %bb.bi ], [ true, %bb.bh ], [ true, %bb.bg ], [ true, %bb.bf ], [ true, %bb.be ], [ true, %bb.bd ], [ true, %bb.bc ], [ true, %bb.bb ], [ true, %bb.ba ], [ true, %bb.az ], [ true, %bb.ay ], [ true, %bb.ax ], [ true, %bb.aw ], [ true, %bb.av ], [ true, %bb.au ], [ true, %bb.at ], [ true, %bb.as ], [ true, %bb.ar ], [ true, %bb.aq ], [ true, %bb.ap ], [ true, %bb.ao ], [ true, %bb.an ], [ true, %bb.am ], [ true, %bb.al ], [ true, %bb.ak ], [ true, %bb.aj ], [ true, %bb.ai ], [ true, %bb.ah ], [ true, %bb.ag ], [ true, %bb.af ], [ true, %bb.ae ], [ true, %bb.ad ], [ true, %bb.ac ], [ true, %bb.ab ], [ true, %bb.aa ], [ true, %bb.z ], [ true, %bb.y ], [ true, %bb.x ], [ true, %bb.w ], [ true, %bb.v ], [ true, %bb.u ], [ true, %bb.t ], [ true, %bb.s ], [ true, %bb.r ], [ true, %bb.q ], [ true, %bb.p ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.m ], [ true, %bb.l ], [ true, %bb.k ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ], [ true, %bb.g ], [ true, %bb.f ], [ true, %bb.e ], [ true, %bb.d ], [ true, %bb.c ], [ %i.wv, %bb.bv ], [ false, %bb.bt ], [ false, %.thread ]
  ret i1 %.sroa.0.0

bb.bu:                                            ; preds = %bb.bt
  %i.wj = load i128, ptr %0, align 1
  %i.wk = xor i128 %i.wj, 140173223085200537738125758877094148432
  %i.wl = getelementptr i8, ptr %0, i64 7
  %i.wm = load i128, ptr %i.wl, align 1
  %i.wn = xor i128 %i.wm, 152110657718971091940167969410857922153
  %i.wo = or i128 %i.wk, %i.wn
  %i.wp = icmp ne i128 %i.wo, 0
  %i.wq = zext i1 %i.wp to i32
  %i.wr = icmp eq i32 %i.wq, 0
  br label %.thread140

bb.bv:                                            ; preds = %bb.bt
  %i.ws = load i128, ptr %0, align 1
  %i.wt = icmp ne i128 %i.ws, 152110657718960197330363361859617189193
  %i.wu = zext i1 %i.wt to i32
  %i.wv = icmp eq i32 %i.wu, 0
  br label %.thread140
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins15python_builtins(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) initializes((0, 128), (136, 144), (152, 168)) %0, i8 noundef %1, i1 noundef zeroext %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !5 {
bb.a:
  %i.a = icmp ugt i8 %1, 9
  %. = select i1 %i.a, ptr @166, ptr null
  %i.b = icmp ugt i8 %1, 10
  %.sroa.01.0 = select i1 %i.b, ptr @167, ptr null
  %i.c = icmp ugt i8 %1, 12
  %.sroa.03.0 = select i1 %i.c, ptr @168, ptr null
  %i.d = icmp ugt i8 %1, 14
  %.sroa.05.0 = select i1 %i.d, ptr @169, ptr null
  %.sroa.07.0 = select i1 %2, ptr @72, ptr null
  store i64 1, ptr %0, align 8
  %.sroa.0.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.07.0, ptr %.sroa.0.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 3, ptr %.sroa.0.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.0.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.05.0, ptr %.sroa.0.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 4, ptr %.sroa.0.sroa.0.sroa.8.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 1, ptr %.sroa.0.sroa.0.sroa.9.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.03.0, ptr %.sroa.0.sroa.0.sroa.10.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 1, ptr %.sroa.0.sroa.0.sroa.11.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 1, ptr %.sroa.0.sroa.0.sroa.12.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %., ptr %.sroa.0.sroa.0.sroa.13.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 3, ptr %.sroa.0.sroa.0.sroa.14.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 1, ptr %.sroa.0.sroa.0.sroa.15.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.01.0, ptr %.sroa.0.sroa.0.sroa.16.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 2, ptr %.sroa.0.sroa.0.sroa.17.0..sroa_idx, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr null, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr null, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr @179, ptr %.sroa.4.0..sroa_idx16, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr getelementptr inbounds nuw (i8, ptr @179, i64 2432), ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins17is_python_builtin(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i8 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 !guid !6 {
bb.a:
  br i1 %3, label %bb.b, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread326

_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread326: ; preds = %bb.a
  switch i64 %1, label %bb.ex [
    i64 15, label %bb.d
    i64 14, label %bb.e
    i64 13, label %bb.g
    i64 11, label %.thread330.a
    i64 12, label %bb.j
    i64 17, label %bb.k
    i64 22, label %bb.l
    i64 20, label %bb.o
    i64 18, label %bb.p
    i64 8, label %bb.q
    i64 16, label %bb.s
    i64 9, label %bb.t
    i64 5, label %bb.u
    i64 7, label %.thread331.a
    i64 10, label %bb.ad
    i64 19, label %bb.ak
    i64 4, label %bb.am
    i64 25, label %bb.as
    i64 21, label %bb.bo
    i64 3, label %bb.cc
    i64 6, label %bb.cv
    i64 2, label %bb.dk
  ]

bb.b:                                             ; preds = %bb.a
  switch i64 %1, label %bb.ex [
    i64 11, label %bb.c
    i64 7, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit
    i64 15, label %bb.d
    i64 14, label %bb.e
    i64 13, label %bb.g
    i64 12, label %bb.j
    i64 17, label %bb.k
    i64 22, label %bb.l
    i64 20, label %bb.o
    i64 18, label %bb.p
    i64 8, label %bb.q
    i64 16, label %bb.s
    i64 9, label %bb.t
    i64 5, label %bb.u
    i64 10, label %bb.ad
    i64 19, label %bb.ak
    i64 4, label %bb.am
    i64 25, label %bb.as
    i64 21, label %bb.bo
    i64 3, label %bb.cc
    i64 6, label %bb.cv
    i64 2, label %bb.dk
  ]

bb.c:                                             ; preds = %bb.b
  %i.a = load i64, ptr %0, align 1
  %i.b = xor i64 %i.a, 5712908869895282527
  %i.c = getelementptr i8, ptr %0, i64 3
  %i.d = load i64, ptr %i.c, align 1
  %i.e = xor i64 %i.d, 6872297658813536592
  %i.f = or i64 %i.b, %i.e
  %i.g = icmp ne i64 %i.f, 0
  %i.h = zext i1 %i.g to i32
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %.split

.split:                                           ; preds = %bb.c
  %i.j = load i64, ptr %0, align 1
  %i.k = xor i64 %i.j, 8392862978456970599
  %i.l = getelementptr i8, ptr %0, i64 3
  %i.m = load i64, ptr %i.l, align 1
  %i.n = xor i64 %i.m, 7957693916049860959
  %i.o = or i64 %i.k, %i.n
  %i.p = icmp ne i64 %i.o, 0
  %i.q = zext i1 %i.p to i32
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %.thread330.a

_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit: ; preds = %bb.b
  %i.s = load i32, ptr %0, align 1
  %i.t = xor i32 %i.s, 1886611812
  %i.u = getelementptr i8, ptr %0, i64 3
  %i.v = load i32, ptr %i.u, align 1
  %i.w = xor i32 %i.v, 2036427888
  %i.x = or i32 %i.t, %i.w
  %i.y = icmp ne i32 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %.thread331.a

bb.d:                                             ; preds = %bb.b, %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread326
  %i.ab = load i64, ptr %0, align 1
  %i.ac = xor i64 %i.ab, 8387230176444510785
  %i.ad = getelementptr i8, ptr %0, i64 7
  %i.ae = load i64, ptr %i.ad, align 1
  %i.af = xor i64 %i.ae, 8245935277854648692
  %i.ag = or i64 %i.ac, %i.af
  %i.ah = icmp ne i64 %i.ag, 0
  %i.ai = zext i1 %i.ah to i32
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.h

bb.e:                                             ; preds = %bb.b, %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread326
  %bcmp = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @9, i64 %1)
  %i.ak = icmp eq i32 %bcmp, 0
  br i1 %i.ak, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = load i64, ptr %0, align 1
  %i.am = xor i64 %i.al, 8391721685706110017
  %i.an = getelementptr i8, ptr %0, i64 6
  %i.ao = load i64, ptr %i.an, align 1
  %i.ap = xor i64 %i.ao, 8245935277854782581
  %i.aq = or i64 %i.am, %i.ap
  %i.ar = icmp ne i64 %i.aq, 0
  %i.as = zext i1 %i.ar to i32
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.ao

bb.g:                                             ; preds = %bb.b, %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread326
  %bcmp164 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @0, i64 %1)
  %i.au = icmp eq i32 %bcmp164, 0
  br i1 %i.au, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.y

bb.h:                                             ; preds = %bb.d
  %bcmp167 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @22, i64 %1)
  %i.av = icmp eq i32 %bcmp167, 0
  br i1 %i.av, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = load i64, ptr %0, align 1
  %i.ax = xor i64 %i.aw, 7588686753992503874
  %i.ay = getelementptr i8, ptr %0, i64 7
  %i.az = load i64, ptr %i.ay, align 1
  %i.ba = xor i64 %i.az, 8245935277854781545
  %i.bb = or i64 %i.ax, %i.ba
  %i.bc = icmp ne i64 %i.bb, 0
  %i.bd = zext i1 %i.bc to i32
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.m

.thread330.a:                                     ; preds = %.split, %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread326
  %bcmp168 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @11, i64 %1)
  %i.bf = icmp eq i32 %bcmp168, 0
  br i1 %i.bf, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.aa

bb.j:                                             ; preds = %bb.b, %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread326
  %bcmp169 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @54, i64 %1)
  %i.bg = icmp eq i32 %bcmp169, 0
  br i1 %i.bg, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.ay

bb.k:                                             ; preds = %bb.b, %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread326
  %bcmp170 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @23, i64 %1)
  %i.bh = icmp eq i32 %bcmp170, 0
  br i1 %i.bh, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.w

bb.l:                                             ; preds = %bb.b, %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread326
  %bcmp171 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @26, i64 %1)
  %i.bi = icmp eq i32 %bcmp171, 0
  br i1 %i.bi, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.n

bb.m:                                             ; preds = %bb.i
  %bcmp173 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @24, i64 %1)
  %i.bj = icmp eq i32 %bcmp173, 0
  br i1 %i.bj, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.v

bb.n:                                             ; preds = %bb.l
  %bcmp174 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @27, i64 %1)
  %i.bk = icmp eq i32 %bcmp174, 0
  br i1 %i.bk, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.ex

bb.o:                                             ; preds = %bb.b, %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread326
  %bcmp175 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @28, i64 %1)
  %i.bl = icmp eq i32 %bcmp175, 0
  br i1 %i.bl, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.ex

bb.p:                                             ; preds = %bb.b, %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread326
  %bcmp176 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @55, i64 %1)
  %i.bm = icmp eq i32 %bcmp176, 0
  br i1 %i.bm, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.x

bb.q:                                             ; preds = %bb.b, %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread326
  %bcmp177 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @12, i64 %1)
  %i.bn = icmp eq i32 %bcmp177, 0
  br i1 %i.bn, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = load i64, ptr %0, align 1
  %i.bp = icmp ne i64 %i.bo, 8316305113558576197
  %i.bq = zext i1 %i.bp to i32
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.ag

bb.s:                                             ; preds = %bb.b, %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread326
  %bcmp178 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @74, i64 %1)
  %i.bs = icmp eq i32 %bcmp178, 0
  br i1 %i.bs, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.ac

bb.t:                                             ; preds = %bb.b, %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread326
  %bcmp179 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @4, i64 %1)
  %i.bt = icmp eq i32 %bcmp179, 0
  br i1 %i.bt, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.al

bb.u:                                             ; preds = %bb.b, %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread326
  %bcmp180 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @75, i64 %1)
  %i.bu = icmp eq i32 %bcmp180, 0
  br i1 %i.bu, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.cf

bb.v:                                             ; preds = %bb.m
  %bcmp181 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @29, i64 %1)
  %i.bv = icmp eq i32 %bcmp181, 0
  br i1 %i.bv, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.at

bb.w:                                             ; preds = %bb.k
  %bcmp182 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @30, i64 %1)
  %i.bw = icmp eq i32 %bcmp182, 0
  br i1 %i.bw, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.af

bb.x:                                             ; preds = %bb.p
  %bcmp183 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @6, i64 %1)
  %i.bx = icmp eq i32 %bcmp183, 0
  br i1 %i.bx, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.an

bb.y:                                             ; preds = %bb.g
  %bcmp184 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @56, i64 %1)
  %i.by = icmp eq i32 %bcmp184, 0
  br i1 %i.by, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bz = load i64, ptr %0, align 1
  %i.ca = xor i64 %i.bz, 8031151179464336711
  %i.cb = getelementptr i8, ptr %0, i64 5
  %i.cc = load i64, ptr %i.cb, align 1
  %i.cd = xor i64 %i.cc, 8388368020622242913
  %i.ce = or i64 %i.ca, %i.cd
  %i.cf = icmp ne i64 %i.ce, 0
  %i.cg = zext i1 %i.cf to i32
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.ab

.thread331.a:                                     ; preds = %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit, %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread326
  %bcmp185 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @76, i64 %1)
  %i.ci = icmp eq i32 %bcmp185, 0
  br i1 %i.ci, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.aq

bb.aa:                                            ; preds = %.thread330.a
  %bcmp186 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @13, i64 %1)
  %i.cj = icmp eq i32 %bcmp186, 0
  br i1 %i.cj, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.ai

bb.ab:                                            ; preds = %bb.z
  %bcmp188 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @57, i64 %1)
  %i.ck = icmp eq i32 %bcmp188, 0
  br i1 %i.ck, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.ar

bb.ac:                                            ; preds = %bb.s
  %bcmp189 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @44, i64 %1)
  %i.cl = icmp eq i32 %bcmp189, 0
  br i1 %i.cl, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.ae

bb.ad:                                            ; preds = %bb.b, %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread326
  %bcmp190 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @16, i64 %1)
  %i.cm = icmp eq i32 %bcmp190, 0
  br i1 %i.cm, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.bf

bb.ae:                                            ; preds = %bb.ac
  %bcmp191 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @31, i64 %1)
  %i.cn = icmp eq i32 %bcmp191, 0
  br i1 %i.cn, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.ex

bb.af:                                            ; preds = %bb.w
  %bcmp192 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @32, i64 %1)
  %i.co = icmp eq i32 %bcmp192, 0
  br i1 %i.co, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.ah

bb.ag:                                            ; preds = %bb.r
  %bcmp194 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @17, i64 %1)
  %i.cp = icmp eq i32 %bcmp194, 0
  br i1 %i.cp, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.bg

bb.ah:                                            ; preds = %bb.af
  %bcmp195 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @2, i64 %1)
  %i.cq = icmp eq i32 %bcmp195, 0
  br i1 %i.cq, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.bk

bb.ai:                                            ; preds = %bb.aa
  %bcmp196 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @15, i64 %1)
  %i.cr = icmp eq i32 %bcmp196, 0
  br i1 %i.cr, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cs = load i64, ptr %0, align 1
  %i.ct = xor i64 %i.cs, 8234121026119492941
  %i.cu = getelementptr i8, ptr %0, i64 3
  %i.cv = load i64, ptr %i.cu, align 1
  %i.cw = xor i64 %i.cv, 8245935277856092783
  %i.cx = or i64 %i.ct, %i.cw
  %i.cy = icmp ne i64 %i.cx, 0
  %i.cz = zext i1 %i.cy to i32
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.bc

bb.ak:                                            ; preds = %bb.b, %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread326
  %bcmp197 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @14, i64 %1)
  %i.db = icmp eq i32 %bcmp197, 0
  br i1 %i.db, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.ap

bb.al:                                            ; preds = %bb.t
  %bcmp198 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @19, i64 %1)
  %i.dc = icmp eq i32 %bcmp198, 0
  br i1 %i.dc, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.bj

bb.am:                                            ; preds = %bb.b, %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread326
  %bcmp199 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @77, i64 %1)
  %i.dd = icmp eq i32 %bcmp199, 0
  br i1 %i.dd, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.bi

bb.an:                                            ; preds = %bb.x
  %bcmp200 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @33, i64 %1)
  %i.de = icmp eq i32 %bcmp200, 0
  br i1 %i.de, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.au

bb.ao:                                            ; preds = %bb.f
  %bcmp201 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @78, i64 %1)
  %i.df = icmp eq i32 %bcmp201, 0
  br i1 %i.df, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.av

bb.ap:                                            ; preds = %bb.ak
  %bcmp202 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @39, i64 %1)
  %i.dg = icmp eq i32 %bcmp202, 0
  br i1 %i.dg, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.ex

bb.aq:                                            ; preds = %.thread331.a
  %bcmp203 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @21, i64 %1)
  %i.dh = icmp eq i32 %bcmp203, 0
  br i1 %i.dh, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.bs

bb.ar:                                            ; preds = %bb.ab
  %bcmp204 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @7, i64 %1)
  %i.di = icmp eq i32 %bcmp204, 0
  br i1 %i.di, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.bb

bb.as:                                            ; preds = %bb.b, %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread326
  %bcmp205 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @58, i64 %1)
  %i.dj = icmp eq i32 %bcmp205, 0
  br i1 %i.dj, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.ex

bb.at:                                            ; preds = %bb.v
  %bcmp206 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @34, i64 %1)
  %i.dk = icmp eq i32 %bcmp206, 0
  br i1 %i.dk, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.ax

bb.au:                                            ; preds = %bb.an
  %bcmp207 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @35, i64 %1)
  %i.dl = icmp eq i32 %bcmp207, 0
  br i1 %i.dl, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.ba

bb.av:                                            ; preds = %bb.ao
  %bcmp208 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @40, i64 %1)
  %i.dm = icmp eq i32 %bcmp208, 0
  br i1 %i.dm, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dn = load i64, ptr %0, align 1
  %i.do = xor i64 %i.dn, 7164775599194924370
  %i.dp = getelementptr i8, ptr %0, i64 6
  %i.dq = load i64, ptr %i.dp, align 1
  %i.dr = xor i64 %i.dq, 8245935277854778222
  %i.ds = or i64 %i.do, %i.dr
  %i.dt = icmp ne i64 %i.ds, 0
  %i.du = zext i1 %i.dt to i32
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.az

bb.ax:                                            ; preds = %bb.at
  %bcmp209 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @59, i64 %1)
  %i.dw = icmp eq i32 %bcmp209, 0
  br i1 %i.dw, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.bu

bb.ay:                                            ; preds = %bb.j
  %bcmp210 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @38, i64 %1)
  %i.dx = icmp eq i32 %bcmp210, 0
  br i1 %i.dx, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.bh

bb.az:                                            ; preds = %bb.aw
  %bcmp212 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @60, i64 %1)
  %i.dy = icmp eq i32 %bcmp212, 0
  br i1 %i.dy, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.bp

bb.ba:                                            ; preds = %bb.au
  %bcmp213 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @41, i64 %1)
  %i.dz = icmp eq i32 %bcmp213, 0
  br i1 %i.dz, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.bl

bb.bb:                                            ; preds = %bb.ar
  %bcmp214 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @42, i64 %1)
  %i.ea = icmp eq i32 %bcmp214, 0
  br i1 %i.ea, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.bd

bb.bc:                                            ; preds = %bb.aj
  %bcmp216 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @43, i64 %1)
  %i.eb = icmp eq i32 %bcmp216, 0
  br i1 %i.eb, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %bcmp217 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @61, i64 %1)
  %i.ec = icmp eq i32 %bcmp217, 0
  br i1 %i.ec, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.ex

bb.be:                                            ; preds = %bb.bc
  %bcmp218 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @46, i64 %1)
  %i.ed = icmp eq i32 %bcmp218, 0
  br i1 %i.ed, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.bq

bb.bf:                                            ; preds = %bb.ad
  %bcmp219 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @3, i64 %1)
  %i.ee = icmp eq i32 %bcmp219, 0
  br i1 %i.ee, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.br

bb.bg:                                            ; preds = %bb.ag
  %bcmp220 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @45, i64 %1)
  %i.ef = icmp eq i32 %bcmp220, 0
  br i1 %i.ef, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.bz

bb.bh:                                            ; preds = %bb.ay
  %bcmp221 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @36, i64 %1)
  %i.eg = icmp eq i32 %bcmp221, 0
  br i1 %i.eg, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.bn

bb.bi:                                            ; preds = %bb.am
  %bcmp222 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @79, i64 %1)
  %i.eh = icmp eq i32 %bcmp222, 0
  br i1 %i.eh, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.ch

bb.bj:                                            ; preds = %bb.al
  %bcmp223 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @47, i64 %1)
  %i.ei = icmp eq i32 %bcmp223, 0
  br i1 %i.ei, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.bv

bb.bk:                                            ; preds = %bb.ah
  %bcmp224 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @20, i64 %1)
end_hunk_0
begin_hunk_1_@_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins17is_python_builtin:bb.a

bb.cs:                                            ; preds = %bb.cr
  %i.hj = load i32, ptr %0, align 1
  %i.hk = xor i32 %i.hj, 1634493796
  %i.hl = getelementptr i8, ptr %0, i64 3
  %i.hm = load i32, ptr %i.hl, align 1
  %i.hn = xor i32 %i.hm, 1920234593
  %i.ho = or i32 %i.hk, %i.hn
  %i.hp = icmp ne i32 %i.ho, 0
  %i.hq = zext i1 %i.hp to i32
  %i.hr = icmp eq i32 %i.hq, 0
  br i1 %i.hr, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.de

bb.ct:                                            ; preds = %bb.ch
  %bcmp257 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @105, i64 %1)
  %i.hs = icmp eq i32 %bcmp257, 0
  br i1 %i.hs, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.cx

bb.cu:                                            ; preds = %bb.cm
  %bcmp258 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @106, i64 %1)
  %i.ht = icmp eq i32 %bcmp258, 0
  br i1 %i.ht, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.dj

bb.cv:                                            ; preds = %bb.b, %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread326
  %bcmp259 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @107, i64 %1)
  %i.hu = icmp eq i32 %bcmp259, 0
  br i1 %i.hu, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.da

bb.cw:                                            ; preds = %bb.cq
  %bcmp260 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @108, i64 %1)
  %i.hv = icmp eq i32 %bcmp260, 0
  br i1 %i.hv, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.dd

bb.cx:                                            ; preds = %bb.ct
  %bcmp261 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @109, i64 %1)
  %i.hw = icmp eq i32 %bcmp261, 0
  br i1 %i.hw, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.hx = load i32, ptr %0, align 1
  %i.hy = icmp ne i32 %i.hx, 1667594341
  %i.hz = zext i1 %i.hy to i32
  %i.ia = icmp eq i32 %i.hz, 0
  br i1 %i.ia, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ib = load i32, ptr %0, align 1
  %i.ic = icmp ne i32 %i.ib, 1953069157
  %i.id = zext i1 %i.ic to i32
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.dh

bb.da:                                            ; preds = %bb.cv
  %bcmp262 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @112, i64 %1)
  %i.if = icmp eq i32 %bcmp262, 0
  br i1 %i.if, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.dc

bb.db:                                            ; preds = %bb.ck
  %bcmp263 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @113, i64 %1)
  %i.ig = icmp eq i32 %bcmp263, 0
  br i1 %i.ig, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.dl

bb.dc:                                            ; preds = %bb.da
  %bcmp264 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @114, i64 %1)
  %i.ih = icmp eq i32 %bcmp264, 0
  br i1 %i.ih, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.dt

bb.dd:                                            ; preds = %bb.cw
  %bcmp265 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @115, i64 %1)
  %i.ii = icmp eq i32 %bcmp265, 0
  br i1 %i.ii, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.ex

bb.de:                                            ; preds = %bb.cs
  %bcmp269 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @116, i64 %1)
  %i.ij = icmp eq i32 %bcmp269, 0
  br i1 %i.ij, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ik = load i32, ptr %0, align 1
  %i.il = xor i32 %i.ik, 1651469415
  %i.im = getelementptr i8, ptr %0, i64 3
  %i.in = load i32, ptr %i.im, align 1
  %i.io = xor i32 %i.in, 1936482658
  %i.ip = or i32 %i.il, %i.io
  %i.iq = icmp ne i32 %i.ip, 0
  %i.ir = zext i1 %i.iq to i32
  %i.is = icmp eq i32 %i.ir, 0
  br i1 %i.is, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.it = load i32, ptr %0, align 1
  %i.iu = xor i32 %i.it, 1634951528
  %i.iv = getelementptr i8, ptr %0, i64 3
  %i.iw = load i32, ptr %i.iv, align 1
  %i.ix = xor i32 %i.iw, 1920234593
  %i.iy = or i32 %i.iu, %i.ix
  %i.iz = icmp ne i32 %i.iy, 0
  %i.ja = zext i1 %i.iz to i32
  %i.jb = icmp eq i32 %i.ja, 0
  br i1 %i.jb, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.dr

bb.dh:                                            ; preds = %bb.cz
  %bcmp270 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @119, i64 %1)
  %i.jc = icmp eq i32 %bcmp270, 0
  br i1 %i.jc, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.jd = load i32, ptr %0, align 1
  %i.je = icmp ne i32 %i.jd, 1886152040
  %i.jf = zext i1 %i.je to i32
  %i.jg = icmp eq i32 %i.jf, 0
  br i1 %i.jg, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.dp

bb.dj:                                            ; preds = %bb.cu
  %bcmp271 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @121, i64 %1)
  %i.jh = icmp eq i32 %bcmp271, 0
  br i1 %i.jh, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.dm

bb.dk:                                            ; preds = %bb.b, %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread326
  %bcmp272 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @122, i64 %1)
  %i.ji = icmp eq i32 %bcmp272, 0
  br i1 %i.ji, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.ex

bb.dl:                                            ; preds = %bb.db
  %bcmp273 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @123, i64 %1)
  %i.jj = icmp eq i32 %bcmp273, 0
  br i1 %i.jj, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.ee

bb.dm:                                            ; preds = %bb.dj
  %bcmp274 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @124, i64 %1)
  %i.jk = icmp eq i32 %bcmp274, 0
  br i1 %i.jk, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.dq

bb.dn:                                            ; preds = %bb.ci
  %bcmp275 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @125, i64 %1)
  %i.jl = icmp eq i32 %bcmp275, 0
  br i1 %i.jl, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.jm = load i64, ptr %0, align 1
  %i.jn = xor i64 %i.jm, 7020095193692205929
  %i.jo = getelementptr i8, ptr %0, i64 8
  %i.jp = load i16, ptr %i.jo, align 1
  %i.jq = zext i16 %i.jp to i64
  %i.jr = xor i64 %i.jq, 29555
  %i.js = or i64 %i.jn, %i.jr
  %i.jt = icmp ne i64 %i.js, 0
  %i.ju = zext i1 %i.jt to i32
  %i.jv = icmp eq i32 %i.ju, 0
  br i1 %i.jv, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.dw

bb.dp:                                            ; preds = %bb.di
  %bcmp278 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @127, i64 %1)
  %i.jw = icmp eq i32 %bcmp278, 0
  br i1 %i.jw, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.ds

bb.dq:                                            ; preds = %bb.dm
  %bcmp279 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @128, i64 %1)
  %i.jx = icmp eq i32 %bcmp279, 0
  br i1 %i.jx, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.du

bb.dr:                                            ; preds = %bb.dg
  %bcmp282 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @129, i64 %1)
  %i.jy = icmp eq i32 %bcmp282, 0
  br i1 %i.jy, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.em

bb.ds:                                            ; preds = %bb.dp
  %bcmp283 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @130, i64 %1)
  %i.jz = icmp eq i32 %bcmp283, 0
  br i1 %i.jz, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.dy

bb.dt:                                            ; preds = %bb.dc
  %bcmp284 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @131, i64 %1)
  %i.ka = icmp eq i32 %bcmp284, 0
  br i1 %i.ka, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.dz

bb.du:                                            ; preds = %bb.dq
  %bcmp285 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @132, i64 %1)
  %i.kb = icmp eq i32 %bcmp285, 0
  br i1 %i.kb, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.kc = load i16, ptr %0, align 1
  %i.kd = xor i16 %i.kc, 24941
  %i.ke = getelementptr i8, ptr %0, i64 2
  %i.kf = load i8, ptr %i.ke, align 1
  %i.kg = zext i8 %i.kf to i16
  %i.kh = xor i16 %i.kg, 120
  %i.ki = or i16 %i.kd, %i.kh
  %i.kj = icmp ne i16 %i.ki, 0
  %i.kk = zext i1 %i.kj to i32
  %i.kl = icmp eq i32 %i.kk, 0
  br i1 %i.kl, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.dx

bb.dw:                                            ; preds = %bb.do
  %bcmp286 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @134, i64 %1)
  %i.km = icmp eq i32 %bcmp286, 0
  br i1 %i.km, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.ex

bb.dx:                                            ; preds = %bb.dv
  %bcmp288 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @135, i64 %1)
  %i.kn = icmp eq i32 %bcmp288, 0
  br i1 %i.kn, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.ea

bb.dy:                                            ; preds = %bb.ds
  %bcmp289 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @136, i64 %1)
  %i.ko = icmp eq i32 %bcmp289, 0
  br i1 %i.ko, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.eb

bb.dz:                                            ; preds = %bb.dt
  %bcmp290 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @137, i64 %1)
  %i.kp = icmp eq i32 %bcmp290, 0
  br i1 %i.kp, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.eo

bb.ea:                                            ; preds = %bb.dx
  %bcmp291 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @138, i64 %1)
  %i.kq = icmp eq i32 %bcmp291, 0
  br i1 %i.kq, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.ec

bb.eb:                                            ; preds = %bb.dy
  %bcmp292 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @139, i64 %1)
  %i.kr = icmp eq i32 %bcmp292, 0
  br i1 %i.kr, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.eg

bb.ec:                                            ; preds = %bb.ea
  %bcmp293 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @140, i64 %1)
  %i.ks = icmp eq i32 %bcmp293, 0
  br i1 %i.ks, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.kt = load i16, ptr %0, align 1
  %i.ku = xor i16 %i.kt, 28528
  %i.kv = getelementptr i8, ptr %0, i64 2
  %i.kw = load i8, ptr %i.kv, align 1
  %i.kx = zext i8 %i.kw to i16
  %i.ky = xor i16 %i.kx, 119
  %i.kz = or i16 %i.ku, %i.ky
  %i.la = icmp ne i16 %i.kz, 0
  %i.lb = zext i1 %i.la to i32
  %i.lc = icmp eq i32 %i.lb, 0
  br i1 %i.lc, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.el

bb.ee:                                            ; preds = %bb.dl
  %bcmp294 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @142, i64 %1)
  %i.ld = icmp eq i32 %bcmp294, 0
  br i1 %i.ld, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.eh

bb.ef:                                            ; preds = %bb.cl
  %bcmp295 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @143, i64 %1)
  %i.le = icmp eq i32 %bcmp295, 0
  br i1 %i.le, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.ej

bb.eg:                                            ; preds = %bb.eb
  %bcmp296 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @144, i64 %1)
  %i.lf = icmp eq i32 %bcmp296, 0
  br i1 %i.lf, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.ei

bb.eh:                                            ; preds = %bb.ee
  %bcmp297 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @145, i64 %1)
  %i.lg = icmp eq i32 %bcmp297, 0
  br i1 %i.lg, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.ek

bb.ei:                                            ; preds = %bb.eg
  %bcmp298 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @146, i64 %1)
  %i.lh = icmp eq i32 %bcmp298, 0
  br i1 %i.lh, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.eu

bb.ej:                                            ; preds = %bb.ef
  %bcmp299 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @147, i64 %1)
  %i.li = icmp eq i32 %bcmp299, 0
  br i1 %i.li, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.ex

bb.ek:                                            ; preds = %bb.eh
  %bcmp300 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @148, i64 %1)
  %i.lj = icmp eq i32 %bcmp300, 0
  br i1 %i.lj, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.en

bb.el:                                            ; preds = %bb.ed
  %bcmp302 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @149, i64 %1)
  %i.lk = icmp eq i32 %bcmp302, 0
  br i1 %i.lk, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.eq

bb.em:                                            ; preds = %bb.dr
  %bcmp303 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @150, i64 %1)
  %i.ll = icmp eq i32 %bcmp303, 0
  br i1 %i.ll, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.ex

bb.en:                                            ; preds = %bb.ek
  %bcmp304 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @151, i64 %1)
  %i.lm = icmp eq i32 %bcmp304, 0
  br i1 %i.lm, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.es

bb.eo:                                            ; preds = %bb.dz
  %bcmp305 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @152, i64 %1)
  %i.ln = icmp eq i32 %bcmp305, 0
  br i1 %i.ln, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.ex

bb.ep:                                            ; preds = %bb.bn
  %bcmp306 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @153, i64 %1)
  %i.lo = icmp eq i32 %bcmp306, 0
  br i1 %i.lo, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.ex

bb.eq:                                            ; preds = %bb.el
  %bcmp307 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @154, i64 %1)
  %i.lp = icmp eq i32 %bcmp307, 0
  br i1 %i.lp, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.lq = load i16, ptr %0, align 1
  %i.lr = xor i16 %i.lq, 30067
  %i.ls = getelementptr i8, ptr %0, i64 2
  %i.lt = load i8, ptr %i.ls, align 1
  %i.lu = zext i8 %i.lt to i16
  %i.lv = xor i16 %i.lu, 109
  %i.lw = or i16 %i.lr, %i.lv
  %i.lx = icmp ne i16 %i.lw, 0
  %i.ly = zext i1 %i.lx to i32
  %i.lz = icmp eq i32 %i.ly, 0
  br i1 %i.lz, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.ew

bb.es:                                            ; preds = %bb.en
  %bcmp308 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @156, i64 %1)
  %i.ma = icmp eq i32 %bcmp308, 0
  br i1 %i.ma, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.mb = load i32, ptr %0, align 1
  %i.mc = xor i32 %i.mb, 1819309428
  %i.md = getelementptr i8, ptr %0, i64 4
  %i.me = load i8, ptr %i.md, align 1
  %i.mf = zext i8 %i.me to i32
  %i.mg = xor i32 %i.mf, 101
  %i.mh = or i32 %i.mc, %i.mg
  %i.mi = icmp ne i32 %i.mh, 0
  %i.mj = zext i1 %i.mi to i32
  %i.mk = icmp eq i32 %i.mj, 0
  br i1 %i.mk, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.ex

bb.eu:                                            ; preds = %bb.ei
  %bcmp309 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @158, i64 %1)
  %i.ml = icmp eq i32 %bcmp309, 0
  br i1 %i.ml, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.mm = load i32, ptr %0, align 1
  %i.mn = icmp ne i32 %i.mm, 1936875894
  %i.mo = zext i1 %i.mn to i32
  %i.mp = icmp eq i32 %i.mo, 0
  br i1 %i.mp, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.ex

bb.ew:                                            ; preds = %bb.er
  %bcmp313 = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull @160, i64 %1)
  %i.mq = icmp eq i32 %bcmp313, 0
  br i1 %i.mq, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.ex

bb.ex:                                            ; preds = %bb.b, %bb.ep, %bb.eo, %bb.em, %bb.ej, %bb.dw, %bb.dk, %bb.dd, %bb.cn, %bb.bu, %bb.bt, %bb.bp, %bb.bo, %bb.bd, %bb.as, %bb.ap, %bb.ae, %bb.o, %bb.n, %bb.ev, %bb.et, %bb.bm, %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread326, %bb.ew
  %i.mr = icmp ugt i8 %2, 9
  br i1 %i.mr, label %bb.ez, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread

bb.ey:                                            ; preds = %bb.fa, %bb.ez, %bb.fc
  %.not = icmp eq i8 %2, 10
  br i1 %.not, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.fe

bb.ez:                                            ; preds = %bb.ex
  switch i64 %1, label %bb.ey [
    i64 15, label %bb.fa
    i64 5, label %bb.fb
  ]

bb.fa:                                            ; preds = %bb.ez
  %i.ms = load i64, ptr %0, align 1
  %i.mt = xor i64 %i.ms, 7453010313431182917
  %i.mu = getelementptr i8, ptr %0, i64 7
  %i.mv = load i64, ptr %i.mu, align 1
  %i.mw = xor i64 %i.mv, 7453010356431050599
  %i.mx = or i64 %i.mt, %i.mw
  %i.my = icmp ne i64 %i.mx, 0
  %i.mz = zext i1 %i.my to i32
  %i.na = icmp eq i32 %i.mz, 0
  br i1 %i.na, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.ey

bb.fb:                                            ; preds = %bb.ez
  %i.nb = load i32, ptr %0, align 1
  %i.nc = xor i32 %i.nb, 1702127969
  %i.nd = getelementptr i8, ptr %0, i64 4
  %i.ne = load i8, ptr %i.nd, align 1
  %i.nf = zext i8 %i.ne to i32
  %i.ng = xor i32 %i.nf, 114
  %i.nh = or i32 %i.nc, %i.ng
  %i.ni = icmp ne i32 %i.nh, 0
  %i.nj = zext i1 %i.ni to i32
  %i.nk = icmp eq i32 %i.nj, 0
  br i1 %i.nk, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.nl = load i32, ptr %0, align 1
  %i.nm = xor i32 %i.nl, 2019913313
  %i.nn = getelementptr i8, ptr %0, i64 4
  %i.no = load i8, ptr %i.nn, align 1
  %i.np = zext i8 %i.no to i32
  %i.nq = xor i32 %i.np, 116
  %i.nr = or i32 %i.nm, %i.nq
  %i.ns = icmp ne i32 %i.nr, 0
  %i.nt = zext i1 %i.ns to i32
  %i.nu = icmp eq i32 %i.nt, 0
  br i1 %i.nu, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %bb.ey

bb.fd:                                            ; preds = %bb.fe
  %i.nv = icmp ugt i8 %2, 12
  %i.nw = icmp eq i64 %1, 23
  %or.cond = and i1 %i.nw, %i.nv
  br i1 %or.cond, label %bb.fh, label %.thread328

bb.fe:                                            ; preds = %bb.ey
  switch i64 %1, label %bb.fd [
    i64 18, label %bb.ff
    i64 14, label %bb.fg
  ]

bb.ff:                                            ; preds = %bb.fe
  %i.nx = load i128, ptr %0, align 1
  %i.ny = xor i128 %i.nx, 148137678174658691248734298903409811778
  %i.nz = getelementptr i8, ptr %0, i64 16
  %i.oa = load i16, ptr %i.nz, align 1
  %i.ob = zext i16 %i.oa to i128
  %i.oc = xor i128 %i.ob, 28789
  %i.od = or i128 %i.ny, %i.oc
  %i.oe = icmp ne i128 %i.od, 0
  %i.of = zext i1 %i.oe to i32
  %i.og = icmp eq i32 %i.of, 0
  br i1 %i.og, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %.thread328

bb.fg:                                            ; preds = %bb.fe
  %i.oh = load i64, ptr %0, align 1
  %i.oi = xor i64 %i.oh, 8028075836850796613
  %i.oj = getelementptr i8, ptr %0, i64 6
  %i.ok = load i64, ptr %i.oj, align 1
  %i.ol = xor i64 %i.ok, 8103505641138450281
  %i.om = or i64 %i.oi, %i.ol
  %i.on = icmp ne i64 %i.om, 0
  %i.oo = zext i1 %i.on to i32
  %i.op = icmp eq i32 %i.oo, 0
  br i1 %i.op, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %.thread328

.thread328:                                       ; preds = %bb.fg, %bb.ff, %bb.fh, %bb.fd
  %i.oq = icmp ugt i8 %2, 14
  br i1 %i.oq, label %bb.fi, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread

bb.fh:                                            ; preds = %bb.fd
  %i.or = load i128, ptr %0, align 1
  %i.os = xor i128 %i.or, 140173223085200537738125758877094148432
  %i.ot = getelementptr i8, ptr %0, i64 7
  %i.ou = load i128, ptr %i.ot, align 1
  %i.ov = xor i128 %i.ou, 152110657718971091940167969410857922153
  %i.ow = or i128 %i.os, %i.ov
  %i.ox = icmp ne i128 %i.ow, 0
  %i.oy = zext i1 %i.ox to i32
  %i.oz = icmp eq i32 %i.oy, 0
  br i1 %i.oz, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread, label %.thread328

bb.fi:                                            ; preds = %.thread328
  switch i64 %1, label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread [
    i64 10, label %bb.fj
    i64 8, label %bb.fk
    i64 15, label %bb.fl
    i64 16, label %bb.fm
  ]

_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread: ; preds = %bb.fl, %bb.fk, %bb.ey, %bb.ex, %bb.c, %.split, %bb.fj, %bb.fm, %bb.fi, %.thread328, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %.thread330.a, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %.thread331.a, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.bu, %bb.bv, %bb.bw, %bb.bx, %bb.by, %bb.bz, %bb.ca, %bb.cb, %bb.cc, %bb.cd, %bb.ce, %bb.cf, %bb.cg, %bb.ch, %bb.ci, %bb.cj, %bb.ck, %bb.cl, %bb.cm, %bb.cn, %bb.co, %bb.cp, %bb.cq, %bb.cr, %bb.cs, %bb.ct, %bb.cu, %bb.cv, %bb.cw, %bb.cx, %bb.cy, %bb.cz, %bb.da, %bb.db, %bb.dc, %bb.dd, %bb.de, %bb.df, %bb.dg, %bb.dh, %bb.di, %bb.dj, %bb.dk, %bb.dl, %bb.dm, %bb.dn, %bb.do, %bb.dp, %bb.dq, %bb.dr, %bb.ds, %bb.dt, %bb.du, %bb.dv, %bb.dw, %bb.dx, %bb.dy, %bb.dz, %bb.ea, %bb.eb, %bb.ec, %bb.ed, %bb.ee, %bb.ef, %bb.eg, %bb.eh, %bb.ei, %bb.ej, %bb.ek, %bb.el, %bb.em, %bb.en, %bb.eo, %bb.ep, %bb.eq, %bb.er, %bb.es, %bb.et, %bb.eu, %bb.ev, %bb.ew, %bb.fa, %bb.fb, %bb.fc, %bb.ff, %bb.fg, %bb.fh, %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit
  %.sroa.0.0 = phi i1 [ true, %bb.d ], [ true, %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit ], [ false, %.thread328 ], [ false, %bb.ex ], [ %i.pw, %bb.fl ], [ %i.pj, %bb.fj ], [ true, %bb.fh ], [ true, %bb.fg ], [ true, %bb.ff ], [ true, %bb.fc ], [ true, %bb.fb ], [ true, %bb.fa ], [ true, %bb.ew ], [ true, %bb.ev ], [ true, %bb.eu ], [ true, %bb.et ], [ true, %bb.es ], [ true, %bb.er ], [ true, %bb.eq ], [ true, %bb.ep ], [ true, %bb.eo ], [ true, %bb.en ], [ true, %bb.em ], [ true, %bb.el ], [ true, %bb.ek ], [ true, %bb.ej ], [ true, %bb.ei ], [ true, %bb.eh ], [ true, %bb.eg ], [ true, %bb.ef ], [ true, %bb.ee ], [ true, %bb.ed ], [ true, %bb.ec ], [ true, %bb.eb ], [ true, %bb.ea ], [ true, %bb.dz ], [ true, %bb.dy ], [ true, %bb.dx ], [ true, %bb.dw ], [ true, %bb.dv ], [ true, %bb.du ], [ true, %bb.dt ], [ true, %bb.ds ], [ true, %bb.dr ], [ true, %bb.dq ], [ true, %bb.dp ], [ true, %bb.do ], [ true, %bb.dn ], [ true, %bb.dm ], [ true, %bb.dl ], [ true, %bb.dk ], [ true, %bb.dj ], [ true, %bb.di ], [ true, %bb.dh ], [ true, %bb.dg ], [ true, %bb.df ], [ true, %bb.de ], [ true, %bb.dd ], [ true, %bb.dc ], [ true, %bb.db ], [ true, %bb.da ], [ true, %bb.cz ], [ true, %bb.cy ], [ true, %bb.cx ], [ true, %bb.cw ], [ true, %bb.cv ], [ true, %bb.cu ], [ true, %bb.ct ], [ true, %bb.cs ], [ true, %bb.cr ], [ true, %bb.cq ], [ true, %bb.cp ], [ true, %bb.co ], [ true, %bb.cn ], [ true, %bb.cm ], [ true, %bb.cl ], [ true, %bb.ck ], [ true, %bb.cj ], [ true, %bb.ci ], [ true, %bb.ch ], [ true, %bb.cg ], [ true, %bb.cf ], [ true, %bb.ce ], [ true, %bb.cd ], [ true, %bb.cc ], [ true, %bb.cb ], [ true, %bb.ca ], [ true, %bb.bz ], [ true, %bb.by ], [ true, %bb.bx ], [ true, %bb.bw ], [ true, %bb.bv ], [ true, %bb.bu ], [ true, %bb.bt ], [ true, %bb.bs ], [ true, %bb.br ], [ true, %bb.bq ], [ true, %bb.bp ], [ true, %bb.bo ], [ true, %bb.bn ], [ true, %bb.bm ], [ true, %bb.bl ], [ true, %bb.bk ], [ true, %bb.bj ], [ true, %bb.bi ], [ true, %bb.bh ], [ true, %bb.bg ], [ true, %bb.bf ], [ true, %bb.be ], [ true, %bb.bd ], [ true, %bb.bc ], [ true, %bb.bb ], [ true, %bb.ba ], [ true, %bb.az ], [ true, %bb.ay ], [ true, %bb.ax ], [ true, %bb.aw ], [ true, %bb.av ], [ true, %bb.au ], [ true, %bb.at ], [ true, %bb.as ], [ true, %bb.ar ], [ true, %bb.aq ], [ true, %bb.ap ], [ true, %bb.ao ], [ true, %bb.an ], [ true, %bb.am ], [ true, %bb.al ], [ true, %bb.ak ], [ true, %bb.aj ], [ true, %bb.ai ], [ true, %bb.ah ], [ true, %bb.ag ], [ true, %bb.af ], [ true, %bb.ae ], [ true, %bb.ad ], [ true, %bb.ac ], [ true, %bb.ab ], [ true, %bb.aa ], [ true, %.thread331.a ], [ true, %bb.z ], [ true, %bb.y ], [ true, %bb.x ], [ true, %bb.w ], [ true, %bb.v ], [ true, %bb.u ], [ true, %bb.t ], [ true, %bb.s ], [ true, %bb.r ], [ true, %bb.q ], [ true, %bb.p ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.m ], [ true, %bb.l ], [ true, %bb.k ], [ true, %bb.j ], [ true, %.thread330.a ], [ true, %bb.i ], [ true, %bb.h ], [ true, %bb.g ], [ true, %bb.f ], [ true, %bb.e ], [ %i.qa, %bb.fm ], [ false, %bb.ey ], [ false, %bb.fi ], [ %i.pn, %bb.fk ], [ true, %.split ], [ true, %bb.c ]
  ret i1 %.sroa.0.0

bb.fj:                                            ; preds = %bb.fi
  %i.pa = load i64, ptr %0, align 1
  %i.pb = xor i64 %i.pa, 7594316253778375270
  %i.pc = getelementptr i8, ptr %0, i64 8
  %i.pd = load i16, ptr %i.pc, align 1
  %i.pe = zext i16 %i.pd to i64
  %i.pf = xor i64 %i.pe, 29795
  %i.pg = or i64 %i.pb, %i.pf
  %i.ph = icmp ne i64 %i.pg, 0
  %i.pi = zext i1 %i.ph to i32
  %i.pj = icmp eq i32 %i.pi, 0
  br label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread

bb.fk:                                            ; preds = %bb.fi
  %i.pk = load i64, ptr %0, align 1
  %i.pl = icmp ne i64 %i.pk, 7810770527948006771
  %i.pm = zext i1 %i.pl to i32
  %i.pn = icmp eq i32 %i.pm, 0
  br label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread

bb.fl:                                            ; preds = %bb.fi
  %i.po = load i64, ptr %0, align 1
  %i.pp = xor i64 %i.po, 7592921063297408863
  %i.pq = getelementptr i8, ptr %0, i64 7
  %i.pr = load i64, ptr %i.pq, align 1
  %i.ps = xor i64 %i.pr, 6872339591235399017
  %i.pt = or i64 %i.pp, %i.ps
  %i.pu = icmp ne i64 %i.pt, 0
  %i.pv = zext i1 %i.pu to i32
  %i.pw = icmp eq i32 %i.pv, 0
  br label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread

bb.fm:                                            ; preds = %bb.fi
  %i.px = load i128, ptr %0, align 1
  %i.py = icmp ne i128 %i.px, 152110657718960197330363361859617189193
  %i.pz = zext i1 %i.py to i32
  %i.qa = icmp eq i32 %i.pz, 0
  br label %_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins18is_ipython_builtin.exit.thread
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins20python_magic_globals(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 32), (40, 48), (56, 72)) %0, i8 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !7 {
bb.a:
  %i.a = icmp ugt i8 %1, 13
  %. = select i1 %i.a, ptr @178, ptr null
  store i64 1, ptr %0, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %., ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %.sroa.0.sroa.8.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @176, ptr %.sroa.4.0..sroa_idx8, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr getelementptr inbounds nuw (i8, ptr @176, i64 96), ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i1, i8 } @_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib8builtins25version_builtin_was_added(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #2 !guid !8 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.b, align 8
  %i.c = call noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB5_13SliceContains14slice_containsCs4xX4QTdRF9r_18ruff_python_stdlib(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @166, i64 noundef 3)
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB5_13SliceContains14slice_containsCs4xX4QTdRF9r_18ruff_python_stdlib(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @167, i64 noundef 2)
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB5_13SliceContains14slice_containsCs4xX4QTdRF9r_18ruff_python_stdlib(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @168, i64 noundef 1)
  br i1 %i.e, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = call noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB5_13SliceContains14slice_containsCs4xX4QTdRF9r_18ruff_python_stdlib(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @169, i64 noundef 4)
  br i1 %i.f, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
end_hunk_1
