Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/vwr?download=true
inline.NumInlined: 174
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@vwr_process_rec_data:bb.a
  %i.lh = or disjoint i16 %spec.select265.i, 4
  %spec.select266.i = select i1 %.not261.i, i16 %spec.select265.i, i16 %i.lh
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %find_signature.exit.i
  %.3.i = phi i16 [ %spec.select266.i, %bb.ad ], [ %.1.i, %find_signature.exit.i ] ; 4 uses
  %i.li = getelementptr i8, ptr %i.g, i64 180
  %i.lj = load i32, ptr %i.li, align 4
  %i.lk = and i32 %i.lj, %i.bo
  %.not262.i = icmp eq i32 %i.lk, 0
  br i1 %.not262.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ll = or i16 %.3.i, 32
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ae
  %i.lm = getelementptr i8, ptr %i.g, i64 184
  %i.ln = load i32, ptr %i.lm, align 4
  %i.lo = and i32 %i.ln, %i.bo
  %.not263.i = icmp eq i32 %i.lo, 0
  br i1 %.not263.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.lp = or i16 %.3.i, 64
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.lq = getelementptr i8, ptr %i.g, i64 188
  %i.lr = load i32, ptr %i.lq, align 4
  %i.ls = and i32 %i.lr, %i.bo
  %.not264.i = icmp eq i32 %i.ls, 0
  %i.lt = or i16 %.3.i, 96
  %spec.select267.i = select i1 %.not264.i, i16 %.3.i, i16 %i.lt
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.af
  %.4.i = phi i16 [ %i.ll, %bb.af ], [ %i.lp, %bb.ah ], [ %spec.select267.i, %bb.ai ]
  %i.lu = getelementptr i8, ptr %i.it, i64 58
  store i16 %.4.i, ptr %i.lu, align 1
  %i.lv = getelementptr i8, ptr %i.it, i64 60
  store i16 0, ptr %i.lv, align 1
  %i.lw = getelementptr i8, ptr %i.it, i64 62
  store i16 %i.bn, ptr %i.lw, align 1
  %i.lx = getelementptr i8, ptr %i.it, i64 64
  store i32 %i.bh, ptr %i.lx, align 1
  %i.ly = getelementptr i8, ptr %3, i64 288       ; 2 uses
  %i.lz = load i64, ptr %i.ly, align 8
  %i.ma = add i64 %i.lz, 68
  store i64 %i.ma, ptr %i.ly, align 8
  %i.mb = zext i16 %.0245.i to i64
  tail call void @ws_buffer_append(ptr noundef %i.iq, ptr noundef %i.ct, i64 noundef %i.mb)
  br label %vwr_read_s1_W_rec.exit

bb.ak:                                            ; preds = %bb.b
  %i.mc = load ptr, ptr %i.a, align 8             ; 7 uses
  %i.md = getelementptr i8, ptr %i.mc, i64 216    ; 2 uses
  %i.me = load i32, ptr %i.md, align 4
  %i.mf = add i32 %i.me, 48                       ; 3 uses
  %i.mg = icmp ult i32 %2, %i.mf
  br i1 %i.mg, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.mh = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef %2, i32 noundef %i.mf)
  store ptr %i.mh, ptr %7, align 8
  store i32 -13, ptr %6, align 4
  br label %vwr_read_s1_W_rec.exit

bb.am:                                            ; preds = %bb.ak
  %i.mi = add i32 %2, -48                         ; 2 uses
  %i.mj = sext i32 %i.mi to i64
  %i.mk = getelementptr i8, ptr %i.c, i64 %i.mj   ; 32 uses
  %i.ml = load i8, ptr %i.c, align 1              ; 11 uses
  %i.mm = getelementptr i8, ptr %i.c, i64 1
  %i.mn = load i8, ptr %i.mm, align 1             ; 2 uses
  %i.mo = and i8 %i.mn, 3                         ; 3 uses
  %i.mp = getelementptr i8, ptr %i.c, i64 4
  %i.mq = load i8, ptr %i.mp, align 1
  %i.mr = and i8 %i.mq, 31
  %i.ms = zext nneg i8 %i.mr to i32
  %i.mt = shl nuw nsw i32 %i.ms, 8
  %i.mu = getelementptr i8, ptr %i.c, i64 3
  %i.mv = load i8, ptr %i.mu, align 1
  %i.mw = zext i8 %i.mv to i32
  %i.mx = or disjoint i32 %i.mt, %i.mw            ; 7 uses
  %i.my = getelementptr i8, ptr %i.c, i64 6
  %.val333.i.a = load i8, ptr %i.my, align 1
  %i.mz = getelementptr i8, ptr %i.c, i64 7
  %.val334.i = load i8, ptr %i.mz, align 1
  %i.na = zext i8 %.val333.i.a to i16
  %i.nb = shl nuw i16 %i.na, 8
  %i.nc = zext i8 %.val334.i to i16
  %i.nd = or disjoint i16 %i.nb, %i.nc
  %.not.i = icmp eq i32 %4, 0                     ; 5 uses
  %i.ne = getelementptr i8, ptr %i.c, i64 2
  %i.nf = load i8, ptr %i.ne, align 1             ; 3 uses
  %i.ng = and i8 %i.nf, 127
  %i.nh = sub nsw i8 0, %i.ng
  %.not313358.i = icmp sgt i8 %i.nf, -1
  %i.ni = select i1 %.not.i, i1 true, i1 %.not313358.i
  %.sroa.0.0.i = select i1 %i.ni, i8 %i.nf, i8 %i.nh
  %i.nj = getelementptr i8, ptr %i.c, i64 8
  %i.nk = sub nuw i32 %2, %i.mf
  %i.nl = icmp ugt i32 %i.mx, %i.nk
  br i1 %i.nl, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.nm = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef %i.mx)
  store ptr %i.nm, ptr %7, align 8
  store i32 -13, ptr %6, align 4
  br label %vwr_read_s1_W_rec.exit

bb.ao:                                            ; preds = %bb.am
  %i.nn = getelementptr i8, ptr %i.mk, i64 32
  %i.no = load i8, ptr %i.nn, align 1             ; 3 uses
  %i.np = getelementptr i8, ptr %i.mk, i64 33
  %i.nq = load i8, ptr %i.np, align 1
  %i.nr = zext i8 %i.nq to i32
  %i.ns = shl nuw nsw i32 %i.nr, 16
  %i.nt = getelementptr i8, ptr %i.mk, i64 34
  %i.nu = load i8, ptr %i.nt, align 1
  %i.nv = zext i8 %i.nu to i32
  %i.nw = shl nuw nsw i32 %i.nv, 8
  %i.nx = or disjoint i32 %i.nw, %i.ns
  %i.ny = getelementptr i8, ptr %i.mk, i64 35
  %i.nz = load i8, ptr %i.ny, align 1
  %i.oa = zext i8 %i.nz to i32
  %i.ob = or disjoint i32 %i.nx, %i.oa            ; 3 uses
  %i.oc = getelementptr i8, ptr %i.mk, i64 36
  %i.od = getelementptr i8, ptr %i.mk, i64 42
  %i.oe = load i8, ptr %i.od, align 1
  %i.of = zext i8 %i.oe to i64
  %i.og = shl nuw nsw i64 %i.of, 40
  %i.oh = getelementptr i8, ptr %i.mk, i64 43
  %i.oi = load i8, ptr %i.oh, align 1
  %i.oj = zext i8 %i.oi to i64
  %i.ok = shl nuw nsw i64 %i.oj, 32
  %i.ol = or disjoint i64 %i.ok, %i.og
  %i.om = load i8, ptr %i.oc, align 1
  %i.on = zext i8 %i.om to i64
  %i.oo = shl nuw nsw i64 %i.on, 24
  %i.op = or disjoint i64 %i.ol, %i.oo
  %i.oq = getelementptr i8, ptr %i.mk, i64 37
  %i.or = load i8, ptr %i.oq, align 1
  %i.os = zext i8 %i.or to i64
  %i.ot = shl nuw nsw i64 %i.os, 16
  %i.ou = or disjoint i64 %i.op, %i.ot
  %i.ov = getelementptr i8, ptr %i.mk, i64 38
  %i.ow = load i8, ptr %i.ov, align 1
  %i.ox = zext i8 %i.ow to i64
  %i.oy = shl nuw nsw i64 %i.ox, 8
  %i.oz = or disjoint i64 %i.ou, %i.oy
  %i.pa = getelementptr i8, ptr %i.mk, i64 39
  %i.pb = load i8, ptr %i.pa, align 1
  %i.pc = zext i8 %i.pb to i64
  %i.pd = or disjoint i64 %i.oz, %i.pc            ; 3 uses
  %i.pe = getelementptr i8, ptr %i.mk, i64 16
  %i.pf = load i8, ptr %i.pe, align 1
  %i.pg = zext i8 %i.pf to i32
  %i.ph = shl nuw i32 %i.pg, 24
  %i.pi = getelementptr i8, ptr %i.mk, i64 17
  %i.pj = load i8, ptr %i.pi, align 1
  %i.pk = zext i8 %i.pj to i32
  %i.pl = shl nuw nsw i32 %i.pk, 16
  %i.pm = or disjoint i32 %i.pl, %i.ph
  %i.pn = getelementptr i8, ptr %i.mk, i64 18
  %i.po = load i8, ptr %i.pn, align 1
  %i.pp = zext i8 %i.po to i32
  %i.pq = shl nuw nsw i32 %i.pp, 8
  %i.pr = or disjoint i32 %i.pm, %i.pq
  %i.ps = getelementptr i8, ptr %i.mk, i64 19
  %i.pt = load i8, ptr %i.ps, align 1
  %i.pu = zext i8 %i.pt to i32                    ; 2 uses
  %i.pv = or disjoint i32 %i.pr, %i.pu            ; 3 uses
  %i.pw = getelementptr i8, ptr %i.mk, i64 22
  %.val.i40 = load i8, ptr %i.pw, align 1         ; 2 uses
  %i.px = getelementptr i8, ptr %i.mk, i64 23
  %.val332.i = load i8, ptr %i.px, align 1
  %i.py = zext i8 %.val.i40 to i16
  %i.pz = shl nuw i16 %i.py, 8
  %i.qa = zext i8 %.val332.i to i16               ; 2 uses
  %i.qb = or disjoint i16 %i.pz, %i.qa            ; 2 uses
  %i.qc = zext i16 %i.qb to i32                   ; 3 uses
  %.not314.i = icmp ult i8 %.val.i40, 4
  br i1 %.not314.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.qd = getelementptr i8, ptr %i.mc, i64 76
  %i.qe = load i32, ptr %i.qd, align 4
  %i.qf = zext i32 %i.qe to i64
  %i.qg = getelementptr i8, ptr %i.c, i64 %i.qf
  %.val337.i.a = load i16, ptr %i.qg, align 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.0295.i = phi i16 [ %.val337.i.a, %bb.ap ], [ 0, %bb.ao ]
  switch i8 %i.mo, label %default.unreachable [
    i8 0, label %bb.ar
    i8 1, label %bb.at
    i8 2, label %bb.au
    i8 3, label %bb.av
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.qh = and i8 %i.ml, 63                        ; 5 uses
  %i.qi = icmp samesign ult i8 %i.qh, 4
  %..i = select i1 %i.qi, i16 32, i16 64          ; 2 uses
  %i.qj = icmp samesign ult i8 %i.qh, 12
  br i1 %i.qj, label %bb.as, label %get_legacy_rate.exit.i

bb.as:                                            ; preds = %bb.ar
  %i.qk = zext nneg i8 %i.qh to i64
  %i.ql = getelementptr [4 x i8], ptr @get_legacy_rate.canonical_rate_legacy, i64 %i.qk
  %i.qm = load float, ptr %i.ql, align 4
  br label %get_legacy_rate.exit.i

bb.at:                                            ; preds = %bb.aq
  %i.qn = and i8 %i.ml, 63                        ; 3 uses
  %i.qo = getelementptr i8, ptr %i.c, i64 11
  %i.qp = load i8, ptr %i.qo, align 1
  %.not318.i = icmp sgt i8 %i.qp, -1              ; 2 uses
  %i.qq = select i1 %.not318.i, i16 64, i16 576
  %i.qr = and i8 %i.ml, 64
  %.not319.not.i = icmp eq i8 %i.qr, 0            ; 2 uses
  %i.qs = select i1 %.not319.not.i, i16 256, i16 0
  %i.qt = or disjoint i16 %i.qq, %i.qs
  %i.qu = zext nneg i8 %i.qn to i64
  %i.qv = getelementptr [4 x i8], ptr @nss_for_mcs, i64 %i.qu
  %i.qw = load i32, ptr %i.qv, align 4
  %i.qx = trunc i32 %i.qw to i8
  %..i.i61 = select i1 %.not319.not.i, float 3.600000e+00, float 4.000000e+00
  %i.qy = and i8 %i.ml, 7
  %i.qz = zext nneg i8 %i.qy to i64
  %.0.in.v.i.i = select i1 %.not318.i, ptr @get_ht_rate.canonical_ndbps_20_ht, ptr @get_ht_rate.canonical_ndbps_40_ht
  %.0.in.i.i = getelementptr [4 x i8], ptr %.0.in.v.i.i, i64 %i.qz
  %.0.i339.i = load i32, ptr %.0.in.i.i, align 4
  %i.ra = lshr i8 %i.qn, 3
  %narrow.i.i = add nuw nsw i8 %i.ra, 1
  %i.rb = zext nneg i8 %narrow.i.i to i32
  %i.rc = mul i32 %.0.i339.i, %i.rb
  %i.rd = sitofp i32 %i.rc to float
  %i.re = fdiv nnan float %i.rd, %..i.i61
  br label %get_legacy_rate.exit.i

bb.au:                                            ; preds = %bb.aq
  %i.rf = and i8 %i.ml, 63                        ; 3 uses
  %i.rg = load i8, ptr %i.nj, align 1
  %.not316.i = icmp sgt i8 %i.rg, -1              ; 2 uses
  %i.rh = select i1 %.not316.i, i16 64, i16 576
  %i.ri = and i8 %i.ml, 64
  %.not317.not.i = icmp eq i8 %i.ri, 0            ; 2 uses
  %i.rj = select i1 %.not317.not.i, i16 256, i16 0
  %i.rk = or disjoint i16 %i.rh, %i.rj
  %i.rl = zext nneg i8 %i.rf to i64
  %i.rm = getelementptr [4 x i8], ptr @nss_for_mcs, i64 %i.rl
  %i.rn = load i32, ptr %i.rm, align 4
  %i.ro = trunc i32 %i.rn to i8
  %..i341.i = select i1 %.not317.not.i, float 3.600000e+00, float 4.000000e+00
  %i.rp = and i8 %i.ml, 7
  %i.rq = zext nneg i8 %i.rp to i64
  %.0.in.v.i343.i = select i1 %.not316.i, ptr @get_ht_rate.canonical_ndbps_20_ht, ptr @get_ht_rate.canonical_ndbps_40_ht
  %.0.in.i344.i = getelementptr [4 x i8], ptr %.0.in.v.i343.i, i64 %i.rq
  %.0.i345.i = load i32, ptr %.0.in.i344.i, align 4
  %i.rr = lshr i8 %i.rf, 3
  %narrow.i346.i = add nuw nsw i8 %i.rr, 1
  %i.rs = zext nneg i8 %narrow.i346.i to i32
  %i.rt = mul i32 %.0.i345.i, %i.rs
  %i.ru = sitofp i32 %i.rt to float
  %i.rv = fdiv nnan float %i.ru, %..i341.i
  br label %get_legacy_rate.exit.i

bb.av:                                            ; preds = %bb.aq
  %8 = lshr i8 %i.mn, 4                           ; 2 uses
  %9 = and i8 %i.ml, 15                           ; 9 uses
  %.tr.i = zext i8 %i.ml to i16
  %10 = shl nuw nsw i16 %.tr.i, 2
  %11 = and i16 %10, 256
  %12 = icmp eq i8 %8, 3
  %13 = icmp eq i8 %8, 4
  %spec.select.v.i = select i1 %13, i16 1408, i16 384
  %.0288.v.i = select i1 %12, i16 896, i16 %spec.select.v.i ; 2 uses
  %.0288.i = xor i16 %.0288.v.i, %11              ; 8 uses
  %i.rw = lshr i8 %i.ml, 4
  %narrow.i = add nuw nsw i8 %i.rw, 1             ; 9 uses
  %i.rx = zext nneg i16 %.0288.i to i32           ; 2 uses
  %i.ry = and i32 %i.rx, 256
  %.not.i347.i = icmp eq i32 %i.ry, 0
  %..i348.i = select i1 %.not.i347.i, float 4.000000e+00, float 3.600000e+00 ; 5 uses
  %i.rz = icmp samesign ugt i8 %9, 9
  br i1 %i.rz, label %get_legacy_rate.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.sa = and i32 %i.rx, 512
  %.not23.i.i = icmp eq i32 %i.sa, 0
  br i1 %.not23.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.sb = zext nneg i8 %9 to i64
  %i.sc = getelementptr [4 x i8], ptr @get_vht_rate.canonical_ndbps_40_vht, i64 %i.sb
  %i.sd = load i32, ptr %i.sc, align 4
  %i.se = zext nneg i8 %narrow.i to i32
  %i.sf = mul i32 %i.sd, %i.se
  %i.sg = sitofp i32 %i.sf to float
  %i.sh = fdiv nnan float %i.sg, %..i348.i
  br label %get_legacy_rate.exit.i

bb.ay:                                            ; preds = %bb.aw
  %.not24.i.i = icmp samesign ult i16 %.0288.v.i, 1024
  br i1 %.not24.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.si = zext nneg i8 %9 to i64
  %i.sj = getelementptr [4 x i8], ptr @get_vht_rate.canonical_ndbps_80_vht, i64 %i.si
  %i.sk = load i32, ptr %i.sj, align 4
  %i.sl = zext nneg i8 %narrow.i to i32
  %i.sm = mul i32 %i.sk, %i.sl
  %i.sn = sitofp i32 %i.sm to float
  %i.so = fdiv nnan float %i.sn, %..i348.i
  br label %get_legacy_rate.exit.i

bb.ba:                                            ; preds = %bb.ay
  %i.sp = icmp eq i8 %9, 9
  br i1 %i.sp, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %bb.ba
  switch i8 %narrow.i, label %get_legacy_rate.exit.i [
    i8 3, label %bb.bc
    i8 6, label %bb.bd
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.sq = fdiv nnan float 1.040000e+03, %..i348.i
  br label %get_legacy_rate.exit.i

bb.bd:                                            ; preds = %bb.bb
  %i.sr = fdiv nnan float 2.080000e+03, %..i348.i
  br label %get_legacy_rate.exit.i

bb.be:                                            ; preds = %bb.ba
  %i.ss = zext nneg i8 %9 to i64
  %i.st = getelementptr [4 x i8], ptr @get_vht_rate.canonical_ndbps_20_vht, i64 %i.ss
  %i.su = load i32, ptr %i.st, align 4
  %i.sv = zext nneg i8 %narrow.i to i32
  %i.sw = mul i32 %i.su, %i.sv
  %i.sx = sitofp i32 %i.sw to float
  %i.sy = fdiv nnan float %i.sx, %..i348.i
  br label %get_legacy_rate.exit.i

default.unreachable:                              ; preds = %bb.aq
  unreachable

get_legacy_rate.exit.i:                           ; preds = %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.az, %bb.ax, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar
  %.0298.i = phi i8 [ %i.qh, %bb.as ], [ %i.rf, %bb.au ], [ %i.qn, %bb.at ], [ %i.qh, %bb.ar ], [ %9, %bb.av ], [ %9, %bb.ax ], [ %9, %bb.az ], [ 9, %bb.bb ], [ 9, %bb.bc ], [ 9, %bb.bd ], [ %9, %bb.be ]
  %.0297.i = phi i8 [ 0, %bb.as ], [ %i.ro, %bb.au ], [ %i.qx, %bb.at ], [ 0, %bb.ar ], [ %narrow.i, %bb.av ], [ %narrow.i, %bb.ax ], [ %narrow.i, %bb.az ], [ %narrow.i, %bb.bb ], [ 3, %bb.bc ], [ 6, %bb.bd ], [ %narrow.i, %bb.be ]
  %.1293.i = phi i16 [ %..i, %bb.as ], [ 64, %bb.au ], [ 64, %bb.at ], [ %..i, %bb.ar ], [ 64, %bb.av ], [ 64, %bb.ax ], [ 64, %bb.az ], [ 64, %bb.bb ], [ 64, %bb.bc ], [ 64, %bb.bd ], [ 64, %bb.be ]
  %.1289.i = phi i16 [ 0, %bb.as ], [ %i.rk, %bb.au ], [ %i.qt, %bb.at ], [ 0, %bb.ar ], [ %.0288.i, %bb.av ], [ %.0288.i, %bb.ax ], [ %.0288.i, %bb.az ], [ %.0288.i, %bb.bb ], [ %.0288.i, %bb.bc ], [ %.0288.i, %bb.bd ], [ %.0288.i, %bb.be ]
  %.0287.i = phi float [ %i.qm, %bb.as ], [ %i.rv, %bb.au ], [ %i.re, %bb.at ], [ 0.000000e+00, %bb.ar ], [ 0.000000e+00, %bb.av ], [ %i.sh, %bb.ax ], [ %i.so, %bb.az ], [ 0.000000e+00, %bb.bb ], [ %i.sq, %bb.bc ], [ %i.sr, %bb.bd ], [ %i.sy, %bb.be ]
  %i.sz = icmp samesign ult i32 %i.mx, 4
  br i1 %i.sz, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %get_legacy_rate.exit.i
  %.not320.i = icmp eq i32 %i.mx, 0
  br i1 %.not320.i, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ta = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef %i.mx)
  store ptr %i.ta, ptr %7, align 8
  store i32 -13, ptr %6, align 4
  br label %vwr_read_s1_W_rec.exit

bb.bh:                                            ; preds = %get_legacy_rate.exit.i
  %i.tb = add nsw i32 %i.mx, -4
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bf
  %.0299.i = phi i32 [ 0, %bb.bf ], [ %i.tb, %bb.bh ] ; 2 uses
  %i.tc = getelementptr i8, ptr %i.mk, i64 4
  %i.td = load i8, ptr %i.tc, align 1
  %i.te = zext i8 %i.td to i64
  %i.tf = shl nuw i64 %i.te, 56
  %i.tg = getelementptr i8, ptr %i.mk, i64 5
  %i.th = load i8, ptr %i.tg, align 1
  %i.ti = zext i8 %i.th to i64
  %i.tj = shl nuw nsw i64 %i.ti, 48
  %i.tk = or disjoint i64 %i.tj, %i.tf
  %i.tl = getelementptr i8, ptr %i.mk, i64 6
  %i.tm = load i8, ptr %i.tl, align 1
  %i.tn = zext i8 %i.tm to i64
  %i.to = shl nuw nsw i64 %i.tn, 40
  %i.tp = or disjoint i64 %i.tk, %i.to
  %i.tq = getelementptr i8, ptr %i.mk, i64 7
  %i.tr = load i8, ptr %i.tq, align 1
  %i.ts = zext i8 %i.tr to i64
  %i.tt = shl nuw nsw i64 %i.ts, 32
  %i.tu = or disjoint i64 %i.tp, %i.tt
  %i.tv = load i8, ptr %i.mk, align 1
  %i.tw = zext i8 %i.tv to i64
  %i.tx = shl nuw nsw i64 %i.tw, 24
  %i.ty = or disjoint i64 %i.tu, %i.tx
  %i.tz = getelementptr i8, ptr %i.mk, i64 1
  %i.ua = load i8, ptr %i.tz, align 1
  %i.ub = zext i8 %i.ua to i64
  %i.uc = shl nuw nsw i64 %i.ub, 16
  %i.ud = or disjoint i64 %i.ty, %i.uc
  %i.ue = getelementptr i8, ptr %i.mk, i64 2
  %i.uf = load i8, ptr %i.ue, align 1
  %i.ug = zext i8 %i.uf to i64
  %i.uh = shl nuw nsw i64 %i.ug, 8
  %i.ui = or i64 %i.ud, %i.uh                     ; 2 uses
  %i.uj = getelementptr i8, ptr %i.mk, i64 3
  %i.uk = load i8, ptr %i.uj, align 1
  %i.ul = zext i8 %i.uk to i64
  %i.um = or i64 %i.ui, %i.ul                     ; 5 uses
  %i.un = getelementptr i8, ptr %i.mk, i64 8
  %i.uo = getelementptr i8, ptr %i.mk, i64 12
  %i.up = load i8, ptr %i.uo, align 1
  %i.uq = zext i8 %i.up to i64
  %i.ur = shl nuw i64 %i.uq, 56
  %i.us = getelementptr i8, ptr %i.mk, i64 13
  %i.ut = load i8, ptr %i.us, align 1
  %i.uu = zext i8 %i.ut to i64
  %i.uv = shl nuw nsw i64 %i.uu, 48
  %i.uw = or disjoint i64 %i.uv, %i.ur
  %i.ux = getelementptr i8, ptr %i.mk, i64 14
  %i.uy = load i8, ptr %i.ux, align 1
  %i.uz = zext i8 %i.uy to i64
  %i.va = shl nuw nsw i64 %i.uz, 40
  %i.vb = or disjoint i64 %i.uw, %i.va
  %i.vc = getelementptr i8, ptr %i.mk, i64 15
  %i.vd = load i8, ptr %i.vc, align 1
  %i.ve = zext i8 %i.vd to i64
  %i.vf = shl nuw nsw i64 %i.ve, 32
  %i.vg = or disjoint i64 %i.vb, %i.vf
  %i.vh = load i8, ptr %i.un, align 1
  %i.vi = zext i8 %i.vh to i64
  %i.vj = shl nuw nsw i64 %i.vi, 24
  %i.vk = or disjoint i64 %i.vg, %i.vj
  %i.vl = getelementptr i8, ptr %i.mk, i64 9
  %i.vm = load i8, ptr %i.vl, align 1
  %i.vn = zext i8 %i.vm to i64
  %i.vo = shl nuw nsw i64 %i.vn, 16
  %i.vp = or disjoint i64 %i.vk, %i.vo
  %i.vq = getelementptr i8, ptr %i.mk, i64 10
  %i.vr = load i8, ptr %i.vq, align 1
  %i.vs = zext i8 %i.vr to i64
  %i.vt = shl nuw nsw i64 %i.vs, 8
  %i.vu = or i64 %i.vp, %i.vt
  %i.vv = getelementptr i8, ptr %i.mk, i64 11
  %i.vw = load i8, ptr %i.vv, align 1
  %i.vx = zext i8 %i.vw to i64
  %i.vy = or i64 %i.vu, %i.vx                     ; 2 uses
  %i.vz = sub i64 %i.vy, %i.um
  %i.wa = udiv i64 %i.vz, 1000
  %i.wb = trunc i64 %i.wa to i32
  %i.wc = udiv i64 %i.um, 1000                    ; 5 uses
  %i.wd = udiv i64 %i.ui, 1000000000              ; 2 uses
  %.neg.i41 = mul i64 %i.wd, 4293967296
  %i.we = add i64 %.neg.i41, %i.wc
  %i.wf = udiv i64 %i.vy, 1000                    ; 4 uses
  %i.wg = getelementptr i8, ptr %i.c, i64 20      ; 7 uses
  %i.wh = add i32 %2, -20                         ; 4 uses
  %.not.i349.i = icmp sgt i32 %i.wh, 42
  br i1 %.not.i349.i, label %bb.bj, label %find_signature.exit.i42

bb.bj:                                            ; preds = %bb.bi
  %i.wi = getelementptr i8, ptr %i.c, i64 62
  %i.wj = load i8, ptr %i.wi, align 1
  %i.wk = icmp eq i8 %i.wj, -35
  br i1 %i.wk, label %.loopexit.i57, label %.lr.ph.preheader.i.i48

.lr.ph.preheader.i.i48:                           ; preds = %bb.bj
  %wide.trip.count.i.i49 = zext nneg i32 %i.wh to i64
  br label %.lr.ph.i.i50

.lr.ph.i.i50:                                     ; preds = %bb.br, %.lr.ph.preheader.i.i48
  %indvars.iv.i.i51 = phi i64 [ 42, %.lr.ph.preheader.i.i48 ], [ %indvars.iv.next.i.i52, %bb.br ] ; 5 uses
  %i.wl = getelementptr i8, ptr %i.wg, i64 %indvars.iv.i.i51 ; 3 uses
  %i.wm = load i8, ptr %i.wl, align 1
  %i.wn = icmp eq i8 %i.wm, -35
  br i1 %i.wn, label %bb.bk, label %bb.br

bb.bk:                                            ; preds = %.lr.ph.i.i50
  %i.wo = trunc i64 %indvars.iv.i.i51 to i32      ; 4 uses
  %i.wp = add i32 %i.wo, 15                       ; 2 uses
  %i.wq = icmp slt i32 %i.wp, %i.wh
  br i1 %i.wq, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %i.wr = sext i32 %i.wp to i64
  %i.ws = getelementptr i8, ptr %i.wg, i64 %i.wr
  %i.wt = load i8, ptr %i.ws, align 1
  %i.wu = icmp eq i8 %i.wt, -30
  br i1 %i.wu, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %i.wv = shl nuw nsw i64 %indvars.iv.i.i51, 32
  %sext54.i.i58 = add nuw i64 %i.wv, 17179869184
  %i.ww = ashr exact i64 %sext54.i.i58, 32
  %i.wx = getelementptr i8, ptr %i.wg, i64 %i.ww
  %i.wy = load i8, ptr %i.wx, align 1
  %.not43.i.i59 = icmp eq i8 %i.wy, %i.no
  br i1 %.not43.i.i59, label %bb.bn, label %bb.br

bb.bn:                                            ; preds = %bb.bm
  %i.wz = getelementptr i8, ptr %i.wl, i64 1
  %i.xa = getelementptr i8, ptr %i.wl, i64 2
  %i.xb = load i16, ptr %i.xa, align 1
  %i.xc = zext i16 %i.xb to i32
  %i.xd = shl nuw nsw i32 %i.xc, 8
  %i.xe = load i8, ptr %i.wz, align 1
  %i.xf = zext i8 %i.xe to i32
  %i.xg = or disjoint i32 %i.xd, %i.xf
  %.not44.i.i60 = icmp eq i32 %i.xg, %i.ob
  br i1 %.not44.i.i60, label %.loopexit.i57, label %bb.br

bb.bo:                                            ; preds = %bb.bl, %bb.bk
  %i.xh = add i32 %i.wo, 7                        ; 2 uses
  %i.xi = icmp slt i32 %i.xh, %i.wh
  br i1 %i.xi, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.xj = sext i32 %i.xh to i64
  %i.xk = getelementptr i8, ptr %i.wg, i64 %i.xj
  %i.xl = load i8, ptr %i.xk, align 1
  %.not41.i.i54 = icmp eq i8 %i.xl, %i.no
  br i1 %.not41.i.i54, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.xm = shl nuw nsw i64 %indvars.iv.i.i51, 32
  %sext.i.i55 = add nuw i64 %i.xm, 17179869184
  %i.xn = ashr exact i64 %sext.i.i55, 32
  %i.xo = getelementptr i8, ptr %i.wg, i64 %i.xn  ; 2 uses
  %i.xp = getelementptr i8, ptr %i.xo, i64 1
  %i.xq = load i16, ptr %i.xp, align 1
  %i.xr = zext i16 %i.xq to i32
  %i.xs = shl nuw nsw i32 %i.xr, 8
  %i.xt = load i8, ptr %i.xo, align 1
  %i.xu = zext i8 %i.xt to i32
  %i.xv = or disjoint i32 %i.xs, %i.xu
  %.not42.i.i56 = icmp eq i32 %i.xv, %i.ob
  br i1 %.not42.i.i56, label %.loopexit.i57, label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %.lr.ph.i.i50
  %indvars.iv.next.i.i52 = add nuw nsw i64 %indvars.iv.i.i51, 1 ; 2 uses
  %exitcond.not.i.i53 = icmp eq i64 %indvars.iv.next.i.i52, %wide.trip.count.i.i49
  br i1 %exitcond.not.i.i53, label %find_signature.exit.i42, label %.lr.ph.i.i50, !llvm.loop !12

.loopexit.i57:                                    ; preds = %bb.bq, %bb.bn, %bb.bj
  %.0352.ph.i = phi i32 [ 42, %bb.bj ], [ %i.wo, %bb.bn ], [ %i.wo, %bb.bq ] ; 2 uses
  %i.xw = add i32 %.0352.ph.i, 15                 ; 2 uses
  %.not.i350.i = icmp slt i32 %i.xw, %i.mi
  br i1 %.not.i350.i, label %bb.bs, label %find_signature.exit.i42

end_hunk_0
