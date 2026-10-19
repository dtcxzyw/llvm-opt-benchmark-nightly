Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgghd3?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dgghd3_:bb.a
  br i1 %.not10111099, label %bb.as, label %.lr.ph1102

.lr.ph1102:                                       ; preds = %bb.ar
  %i.pm = mul nsw i64 %indvars.iv1323, %i.dq      ; 2 uses
  %invariant.gep1520 = getelementptr [8 x i8], ptr %i.ad, i64 %i.pm ; 4 uses
  %invariant.gep1522 = getelementptr [8 x i8], ptr %i.ad, i64 %i.pm ; 3 uses
  %i.pn = shl i64 %i.pl, 3
  %scevgep1998 = getelementptr i8, ptr %invariant.gep1520, i64 %i.pn
  %load_initial = load double, ptr %scevgep1998, align 8 ; 4 uses
  %reass.sub2044 = sub i64 %i.pl, %i.hd
  %i.po = sub i64 %i.pe, %i.pl
  %i.pp = and i64 %i.po, 1
  %lcmp.mod.not.not = icmp eq i64 %i.pp, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph1102
  %gep1517.prol = getelementptr [8 x i8], ptr %invariant.gep1516, i64 %i.pl
  %i.pq = load double, ptr %gep1517.prol, align 8, !tbaa !75 ; 3 uses
  %gep1519.prol = getelementptr [8 x i8], ptr %invariant.gep1518, i64 %i.pl
  %i.pr = load double, ptr %gep1519.prol, align 8, !tbaa !75 ; 3 uses
  %gep1521.prol = getelementptr [8 x i8], ptr %invariant.gep1520, i64 %i.pl
  %indvars.iv.next1321.prol = add nsw i64 %i.pl, -1 ; 2 uses
  %gep1523.prol = getelementptr [8 x i8], ptr %invariant.gep1522, i64 %indvars.iv.next1321.prol ; 2 uses
  %i.ps = load double, ptr %gep1523.prol, align 8, !tbaa !75 ; 2 uses
  %i.pt = fneg double %i.ps
  %i.pu = fmul double %i.pr, %i.pt
  %i.pv = call double @llvm.fmuladd.f64(double %i.pq, double %load_initial, double %i.pu)
  store double %i.pv, ptr %gep1521.prol, align 8, !tbaa !75
  %i.pw = fmul double %i.pq, %i.ps
  %i.px = call double @llvm.fmuladd.f64(double %i.pr, double %load_initial, double %i.pw) ; 2 uses
  store double %i.px, ptr %gep1523.prol, align 8, !tbaa !75
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph1102
  %store_forwarded.unr = phi double [ %load_initial, %.lr.ph1102 ], [ %i.px, %.prol.loopexit.unr-lcssa ]
  %indvars.iv1320.unr = phi i64 [ %i.pl, %.lr.ph1102 ], [ %indvars.iv.next1321.prol, %.prol.loopexit.unr-lcssa ]
  %.lcssa2025.unr = phi double [ poison, %.lr.ph1102 ], [ %i.pq, %.prol.loopexit.unr-lcssa ]
  %.lcssa2024.unr = phi double [ poison, %.lr.ph1102 ], [ %i.pr, %.prol.loopexit.unr-lcssa ]
  %i.py = icmp eq i64 %reass.sub2044, 2
  br i1 %i.py, label %._crit_edge1103, label %.lr.ph1102.new

.lr.ph1102.new:                                   ; preds = %.prol.loopexit, %.lr.ph1102.new
  %store_forwarded = phi double [ %i.qo, %.lr.ph1102.new ], [ %store_forwarded.unr, %.prol.loopexit ] ; 2 uses
  %indvars.iv1320 = phi i64 [ %indvars.iv.next1321.1, %.lr.ph1102.new ], [ %indvars.iv1320.unr, %.prol.loopexit ] ; 5 uses
  %gep1517 = getelementptr [8 x i8], ptr %invariant.gep1516, i64 %indvars.iv1320
  %i.pz = load double, ptr %gep1517, align 8, !tbaa !75 ; 2 uses
  %gep1519 = getelementptr [8 x i8], ptr %invariant.gep1518, i64 %indvars.iv1320
  %i.qa = load double, ptr %gep1519, align 8, !tbaa !75 ; 2 uses
  %gep1521 = getelementptr [8 x i8], ptr %invariant.gep1520, i64 %indvars.iv1320
  %indvars.iv.next1321 = add nsw i64 %indvars.iv1320, -1 ; 5 uses
  %gep1523 = getelementptr [8 x i8], ptr %invariant.gep1522, i64 %indvars.iv.next1321 ; 2 uses
  %i.qb = load double, ptr %gep1523, align 8, !tbaa !75 ; 2 uses
  %i.qc = fneg double %i.qb
  %i.qd = fmul double %i.qa, %i.qc
  %i.qe = call double @llvm.fmuladd.f64(double %i.pz, double %store_forwarded, double %i.qd)
  store double %i.qe, ptr %gep1521, align 8, !tbaa !75
  %i.qf = fmul double %i.pz, %i.qb
  %i.qg = call double @llvm.fmuladd.f64(double %i.qa, double %store_forwarded, double %i.qf) ; 4 uses
  store double %i.qg, ptr %gep1523, align 8, !tbaa !75
  %gep1517.1 = getelementptr [8 x i8], ptr %invariant.gep1516, i64 %indvars.iv.next1321
  %i.qh = load double, ptr %gep1517.1, align 8, !tbaa !75 ; 3 uses
  %gep1519.1 = getelementptr [8 x i8], ptr %invariant.gep1518, i64 %indvars.iv.next1321
  %i.qi = load double, ptr %gep1519.1, align 8, !tbaa !75 ; 3 uses
  %gep1521.1 = getelementptr [8 x i8], ptr %invariant.gep1520, i64 %indvars.iv.next1321
  %indvars.iv.next1321.1 = add nsw i64 %indvars.iv1320, -2 ; 2 uses
  %gep1523.1 = getelementptr [8 x i8], ptr %invariant.gep1522, i64 %indvars.iv.next1321.1 ; 2 uses
  %i.qj = load double, ptr %gep1523.1, align 8, !tbaa !75 ; 2 uses
  %i.qk = fneg double %i.qj
  %i.ql = fmul double %i.qi, %i.qk
  %i.qm = call double @llvm.fmuladd.f64(double %i.qh, double %i.qg, double %i.ql)
  store double %i.qm, ptr %gep1521.1, align 8, !tbaa !75
  %i.qn = fmul double %i.qh, %i.qj
  %i.qo = call double @llvm.fmuladd.f64(double %i.qi, double %i.qg, double %i.qn) ; 2 uses
  store double %i.qo, ptr %gep1523.1, align 8, !tbaa !75
  %.not1011.not.1 = icmp sgt i64 %indvars.iv.next1321, %i.hu
  br i1 %.not1011.not.1, label %.lr.ph1102.new, label %._crit_edge1103, !llvm.loop !23

._crit_edge1103:                                  ; preds = %.lr.ph1102.new, %.prol.loopexit
  %store_forwarded.lcssa = phi double [ %load_initial, %.prol.loopexit ], [ %i.qg, %.lr.ph1102.new ]
  %.lcssa2025 = phi double [ %.lcssa2025.unr, %.prol.loopexit ], [ %i.qh, %.lr.ph1102.new ]
  %.lcssa2024 = phi double [ %.lcssa2024.unr, %.prol.loopexit ], [ %i.qi, %.lr.ph1102.new ]
  store double %.lcssa2025, ptr %i.p, align 8, !tbaa !75
  store double %.lcssa2024, ptr %i.q, align 8, !tbaa !75
  store double %store_forwarded.lcssa, ptr %i.o, align 8, !tbaa !75
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge1103, %bb.ar
  br i1 %.not1010.not, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.qp = mul nsw i64 %i.pg, %i.dq                ; 2 uses
  %i.qq = getelementptr [8 x i8], ptr %i.ad, i64 %i.qp
  %i.qr = getelementptr [8 x i8], ptr %i.qq, i64 %i.pg ; 2 uses
  %i.qs = load double, ptr %i.qr, align 8, !tbaa !75
  store double %i.qs, ptr %i.o, align 8, !tbaa !75
  %i.qt = mul nsw i64 %indvars.iv1323, %i.dq      ; 2 uses
  %i.qu = getelementptr [8 x i8], ptr %i.ad, i64 %i.pg
  %i.qv = getelementptr [8 x i8], ptr %i.qu, i64 %i.qt ; 2 uses
  call void @dlartg_(ptr noundef nonnull %i.o, ptr noundef %i.qv, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, ptr noundef nonnull %i.qr) #4
  store double 0.000000e+00, ptr %i.qv, align 8, !tbaa !75
  %i.qw = load i32, ptr %i.x, align 4, !tbaa !73  ; 2 uses
  %i.qx = trunc nsw i64 %indvars.iv1323 to i32
  %i.qy = sub nsw i32 %i.qx, %i.qw
  store i32 %i.qy, ptr %i.h, align 4, !tbaa !73
  %i.qz = add nsw i32 %i.qw, 1
  %i.ra = sext i32 %i.qz to i64                   ; 2 uses
  %i.rb = getelementptr [8 x i8], ptr %i.ad, i64 %i.qp
  %i.rc = getelementptr [8 x i8], ptr %i.rb, i64 %i.ra
  %i.rd = getelementptr [8 x i8], ptr %i.ad, i64 %i.qt
  %i.re = getelementptr [8 x i8], ptr %i.rd, i64 %i.ra
  call void @drot_(ptr noundef nonnull %i.h, ptr noundef %i.rc, ptr noundef nonnull @c__1, ptr noundef %i.re, ptr noundef nonnull @c__1, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q) #4
  %i.rf = load double, ptr %i.p, align 8, !tbaa !75
  %gep1525 = getelementptr [8 x i8], ptr %invariant.gep1524, i64 %i.pg
  store double %i.rf, ptr %gep1525, align 8, !tbaa !75
  %i.rg = load double, ptr %i.q, align 8, !tbaa !75
  %i.rh = fneg double %i.rg
  %gep1527 = getelementptr [8 x i8], ptr %invariant.gep1526, i64 %i.pg
  store double %i.rh, ptr %gep1527, align 8, !tbaa !75
  %.pre1440 = load i32, ptr %i.g, align 4, !tbaa !73
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %i.ri = phi i32 [ %i.pf, %bb.as ], [ %.pre1440, %bb.at ] ; 2 uses
  %indvars.iv.next1324 = add nsw i64 %indvars.iv1323, -1
  %i.rj = sext i32 %i.ri to i64
  %.not1001.not = icmp sgt i64 %indvars.iv1323, %i.rj
  br i1 %.not1001.not, label %bb.ar, label %._crit_edge1111.loopexit, !llvm.loop !24

._crit_edge1111.loopexit:                         ; preds = %bb.au
  %.pre1441 = load i32, ptr %4, align 4, !tbaa !73
  br label %._crit_edge1111

._crit_edge1111:                                  ; preds = %._crit_edge1111.loopexit, %bb.aq
  %i.rk = phi i32 [ %.pre1441, %._crit_edge1111.loopexit ], [ %i.if, %bb.aq ] ; 7 uses
  %i.rl = xor i32 %i.ik, -1
  %i.rm = add i32 %i.rk, %i.rl
  %i.rn = srem i32 %i.rm, 3                       ; 5 uses
  %i.ro = add nsw i32 %i.rn, 1
  store i32 %i.ro, ptr %i.g, align 4, !tbaa !73
  %i.rp = sub nsw i32 %i.rk, %i.ik                ; 2 uses
  %.59401117 = add nsw i32 %i.rp, -3
  %.not1002.not1118 = icmp sgt i32 %.59401117, %i.rn
  br i1 %.not1002.not1118, label %.lr.ph1122, label %bb.aw

.lr.ph1122:                                       ; preds = %._crit_edge1111
  %i.rq = mul nsw i64 %indvars.iv1392, %i.dr      ; 3 uses
  %i.rr = mul nsw i64 %indvars.iv1392, %i.dq      ; 3 uses
  store i32 %i.rk, ptr %i.h, align 4, !tbaa !73
  %i.rs = load i32, ptr %i.x, align 4, !tbaa !73  ; 2 uses
  %.not1009.not1112 = icmp slt i32 %i.rs, %i.rk
  %i.rt = sext i32 %i.rs to i64                   ; 6 uses
  %i.ru = add i32 %i.rk, %indvars.iv1329
  %i.rv = sext i32 %i.ru to i64                   ; 5 uses
  %i.rw = sext i32 %i.rn to i64                   ; 2 uses
  %invariant.gep1536 = getelementptr [8 x i8], ptr %i.aa, i64 %i.rq
  %invariant.gep1538 = getelementptr [8 x i8], ptr %i.ad, i64 %i.rr
  %invariant.gep1540 = getelementptr [8 x i8], ptr %i.aa, i64 %i.rq
  %invariant.gep1542 = getelementptr [8 x i8], ptr %i.ad, i64 %i.rr
  %i.rx = getelementptr [8 x i8], ptr %i.aa, i64 %i.rq
  %i.ry = getelementptr [8 x i8], ptr %i.ad, i64 %i.rr
  %wide.trip.count = sext i32 %i.rk to i64        ; 6 uses
  %i.rz = shl nsw i64 %i.rt, 3                    ; 4 uses
  %scevgep1844 = getelementptr i8, ptr %scevgep1843, i64 %i.rz
  %i.sa = mul i32 %i.y, %i.rk
  %i.sb = add nsw i64 %i.z, %wide.trip.count
  %i.sc = add i64 %i.hu, %i.rv                    ; 2 uses
  %i.sd = mul i64 %i.et, %i.sc
  %i.se = getelementptr i8, ptr %scevgep1850, i64 %i.sd
  %scevgep1851 = getelementptr i8, ptr %i.se, i64 %i.rz ; 3 uses
  %i.sf = mul i64 %i.sc, %i.dr
  %i.sg = add i64 %i.sf, %i.z
  %i.sh = add i64 %i.sg, %wide.trip.count
  %i.si = shl i64 %i.sh, 3
  %i.sj = xor i64 %i.rw, -1
  %i.sk = add nsw i64 %i.sj, %i.rv
  %i.sl = udiv i64 %i.sk, 3
  %i.sm = mul i64 %i.eu, %i.sl                    ; 3 uses
  %i.sn = sub i64 %i.si, %i.sm
  %scevgep1853 = getelementptr i8, ptr %scevgep1852, i64 %i.sn ; 3 uses
  %i.so = add i64 %indvars.iv.next1393, %i.rv     ; 2 uses
  %i.sp = mul i64 %i.ev, %i.so
  %i.sq = getelementptr i8, ptr %scevgep1854, i64 %i.sp
  %scevgep1855 = getelementptr i8, ptr %i.sq, i64 %i.rz ; 3 uses
  %i.sr = mul i64 %i.so, %i.dr
  %i.ss = add i64 %i.sr, %i.z
  %i.st = add i64 %i.ss, %wide.trip.count
  %i.su = shl i64 %i.st, 3
  %i.sv = sub i64 %i.su, %i.sm
  %scevgep1857 = getelementptr i8, ptr %scevgep1856, i64 %i.sv ; 3 uses
  %i.sw = add i64 %indvars.iv1392, %i.rv          ; 2 uses
  %i.sx = mul i64 %i.ew, %i.sw
  %i.sy = getelementptr i8, ptr %scevgep1858, i64 %i.sx
  %scevgep1859 = getelementptr i8, ptr %i.sy, i64 %i.rz ; 3 uses
  %i.sz = mul i64 %i.sw, %i.dr
  %i.ta = add i64 %i.sz, %i.z
  %i.tb = add i64 %i.ta, %wide.trip.count
  %i.tc = shl i64 %i.tb, 3
  %i.td = sub i64 %i.tc, %i.sm
  %scevgep1861 = getelementptr i8, ptr %scevgep1860, i64 %i.td ; 3 uses
  %i.te = sub nsw i64 %wide.trip.count, %i.rt     ; 3 uses
  %min.iters.check1893 = icmp ult i64 %i.te, 8
  %bound01874 = icmp ult ptr %scevgep1851, %scevgep1857
  %bound11875 = icmp ult ptr %scevgep1855, %scevgep1853
  %found.conflict1876 = and i1 %bound01874, %bound11875
  %bound01880.a = icmp ult ptr %scevgep1851, %scevgep1861
  %bound11881.a = icmp ult ptr %scevgep1859, %scevgep1853
  %found.conflict1882.a = and i1 %bound01880.a, %bound11881.a
  %invariant.op2079 = or i1 %found.conflict1876, %found.conflict1882.a
  %bound01886 = icmp ult ptr %scevgep1855, %scevgep1861
  %bound11887 = icmp ult ptr %scevgep1859, %scevgep1857
  %found.conflict1888 = and i1 %bound01886, %bound11887
  %invariant.op2080 = or i1 %invariant.op2079, %found.conflict1888
  %n.vec1895 = and i64 %i.te, -4                  ; 3 uses
  %i.tf = add nsw i64 %n.vec1895, %i.rt
  %invariant.op2077 = add i64 %i.rt, 1
  %cmp.n1922 = icmp eq i64 %i.te, %n.vec1895
  br label %bb.av

..loopexit_crit_edge:                             ; preds = %scalar.ph1892, %middle.block1921
  %.lcssa1609 = phi double [ %i.vb, %middle.block1921 ], [ %i.vc, %scalar.ph1892 ]
  store double %.lcssa1609, ptr %i.o, align 8, !tbaa !75
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %bb.av
  %indvars.iv.next1332 = add nsw i64 %indvars.iv1331, -3 ; 2 uses
  %.not1002.not = icmp sgt i64 %indvars.iv.next1332, %i.rw
  %i.tg = trunc nsw i64 %indvars.iv1331 to i32
  %indvar.next1846 = add i32 %indvar1845, 1
  br i1 %.not1002.not, label %bb.av, label %._crit_edge1123, !llvm.loop !25

bb.av:                                            ; preds = %.lr.ph1122, %.loopexit
  %indvar1845 = phi i32 [ 0, %.lr.ph1122 ], [ %indvar.next1846, %.loopexit ] ; 2 uses
  %indvars.iv1331 = phi i64 [ %i.rv, %.lr.ph1122 ], [ %indvars.iv.next1332, %.loopexit ] ; 5 uses
  %.5940.in1119 = phi i32 [ %i.rp, %.lr.ph1122 ], [ %i.tg, %.loopexit ]
  %i.th = mul i32 %i.es, %indvar1845
  %i.ti = add i32 %i.sa, %i.th
  %i.tj = sext i32 %i.ti to i64                   ; 2 uses
  %i.tk = shl nsw i64 %i.tj, 3
  %scevgep1847 = getelementptr i8, ptr %scevgep1844, i64 %i.tk ; 3 uses
  %i.tl = add nsw i64 %i.sb, %i.tj
  %i.tm = shl nsw i64 %i.tl, 3
  %scevgep1849 = getelementptr i8, ptr %scevgep1848, i64 %i.tm ; 3 uses
  %i.tn = add nsw i64 %indvars.iv1331, %indvars.iv.next1393 ; 2 uses
  %gep1537 = getelementptr [8 x i8], ptr %invariant.gep1536, i64 %i.tn
  %i.to = load double, ptr %gep1537, align 8, !tbaa !75 ; 4 uses
  %gep1539 = getelementptr [8 x i8], ptr %invariant.gep1538, i64 %i.tn
  %i.tp = load double, ptr %gep1539, align 8, !tbaa !75 ; 3 uses
  %i.tq = fneg double %i.tp                       ; 3 uses
  %i.tr = add nsw i64 %indvars.iv1331, %i.hu      ; 2 uses
  %gep1541 = getelementptr [8 x i8], ptr %invariant.gep1540, i64 %i.tr
  %i.ts = load double, ptr %gep1541, align 8, !tbaa !75 ; 3 uses
  %gep1543 = getelementptr [8 x i8], ptr %invariant.gep1542, i64 %i.tr
  %i.tt = load double, ptr %gep1543, align 8, !tbaa !75 ; 3 uses
  %i.tu = fneg double %i.tt                       ; 2 uses
  %i.tv = add i32 %.5940.in1119, %i.ik            ; 2 uses
  %i.tw = sext i32 %i.tv to i64                   ; 2 uses
  %i.tx = getelementptr [8 x i8], ptr %i.rx, i64 %i.tw
  %i.ty = load double, ptr %i.tx, align 8, !tbaa !75 ; 3 uses
  %i.tz = getelementptr [8 x i8], ptr %i.ry, i64 %i.tw
  %i.ua = load double, ptr %i.tz, align 8, !tbaa !75 ; 3 uses
  %i.ub = fneg double %i.ua                       ; 2 uses
  br i1 %.not1009.not1112, label %.lr.ph1115, label %.loopexit

.lr.ph1115:                                       ; preds = %bb.av
  %i.uc = add nsw i64 %indvars.iv1331, %indvars.iv1392 ; 3 uses
  %i.ud = mul nsw i64 %i.uc, %i.dr
  %i.ue = add nsw i64 %i.uc, 1
  %i.uf = mul nsw i64 %i.ue, %i.dr
  %i.ug = add nsw i64 %i.uc, 2
  %i.uh = mul nsw i64 %i.ug, %i.dr
  %i.ui = mul nsw i32 %i.tv, %i.y
  %i.uj = sext i32 %i.ui to i64
  %invariant.gep1528 = getelementptr [8 x i8], ptr %i.aa, i64 %i.ud ; 2 uses
  %invariant.gep1530 = getelementptr [8 x i8], ptr %i.aa, i64 %i.uf ; 2 uses
  %invariant.gep1532 = getelementptr [8 x i8], ptr %i.aa, i64 %i.uh ; 2 uses
  %invariant.gep1534 = getelementptr [8 x i8], ptr %i.aa, i64 %i.uj ; 2 uses
  br i1 %min.iters.check1893, label %scalar.ph1892.preheader, label %vector.memcheck1842

vector.memcheck1842:                              ; preds = %.lr.ph1115
  %bound01862 = icmp ult ptr %scevgep1847, %scevgep1853
  %bound11863 = icmp ult ptr %scevgep1851, %scevgep1849
  %found.conflict1864 = and i1 %bound01862, %bound11863
  %16 = or i1 %found.conflict1864, %stride.check1868
  %bound01865 = icmp ult ptr %scevgep1847, %scevgep1857
  %bound11866 = icmp ult ptr %scevgep1855, %scevgep1849
  %found.conflict1867 = and i1 %bound01865, %bound11866
  %conflict.rdx = or i1 %16, %found.conflict1867
  %bound01869 = icmp ult ptr %scevgep1847, %scevgep1861
  %bound11870 = icmp ult ptr %scevgep1859, %scevgep1849
  %found.conflict1871 = and i1 %bound01869, %bound11870
  %conflict.rdx1873 = or i1 %conflict.rdx, %found.conflict1871
  %conflict.rdx1891.reass = or i1 %conflict.rdx1873, %invariant.op2080
  br i1 %conflict.rdx1891.reass, label %scalar.ph1892.preheader, label %vector.ph1894

vector.ph1894:                                    ; preds = %vector.memcheck1842
  %broadcast.splatinsert1896.a = insertelement <4 x double> poison, double %i.ub, i64 0
  %broadcast.splat1897.a = shufflevector <4 x double> %broadcast.splatinsert1896.a, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1898.a = insertelement <4 x double> poison, double %i.ty, i64 0
  %broadcast.splat1899.a = shufflevector <4 x double> %broadcast.splatinsert1898.a, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1900.a = insertelement <4 x double> poison, double %i.ua, i64 0
  %broadcast.splat1901.a = shufflevector <4 x double> %broadcast.splatinsert1900.a, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1902.a = insertelement <4 x double> poison, double %i.tu, i64 0
  %broadcast.splat1903.a = shufflevector <4 x double> %broadcast.splatinsert1902.a, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1904.a = insertelement <4 x double> poison, double %i.ts, i64 0
  %broadcast.splat1905.a = shufflevector <4 x double> %broadcast.splatinsert1904.a, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1906 = insertelement <4 x double> poison, double %i.tt, i64 0
  %broadcast.splat1907 = shufflevector <4 x double> %broadcast.splatinsert1906, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1908 = insertelement <4 x double> poison, double %i.tq, i64 0
  %broadcast.splat1909 = shufflevector <4 x double> %broadcast.splatinsert1908, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1910 = insertelement <4 x double> poison, double %i.to, i64 0
  %broadcast.splat1911 = shufflevector <4 x double> %broadcast.splatinsert1910, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1912 = insertelement <4 x double> poison, double %i.tp, i64 0
  %broadcast.splat1913 = shufflevector <4 x double> %broadcast.splatinsert1912, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1914

vector.body1914:                                  ; preds = %vector.body1914, %vector.ph1894
  %index1915 = phi i64 [ 0, %vector.ph1894 ], [ %index.next1920, %vector.body1914 ] ; 2 uses
  %.reass2078 = add i64 %index1915, %invariant.op2077 ; 4 uses
  %i.uk = getelementptr [8 x i8], ptr %invariant.gep1528, i64 %.reass2078 ; 2 uses
  %wide.load1916 = load <4 x double>, ptr %i.uk, align 8, !tbaa !75, !alias.scope !84 ; 3 uses
  %i.ul = getelementptr [8 x i8], ptr %invariant.gep1530, i64 %.reass2078 ; 2 uses
  %wide.load1917 = load <4 x double>, ptr %i.ul, align 8, !tbaa !75, !alias.scope !85, !noalias !84 ; 2 uses
  %i.um = getelementptr [8 x i8], ptr %invariant.gep1532, i64 %.reass2078 ; 2 uses
  %wide.load1918 = load <4 x double>, ptr %i.um, align 8, !tbaa !75, !alias.scope !86, !noalias !87 ; 2 uses
  %i.un = getelementptr [8 x i8], ptr %invariant.gep1534, i64 %.reass2078 ; 2 uses
  %wide.load1919 = load <4 x double>, ptr %i.un, align 8, !tbaa !75, !alias.scope !88, !noalias !89 ; 2 uses
  %i.uo = fmul <4 x double> %wide.load1918, %broadcast.splat1897.a
  %i.up = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1899.a, <4 x double> %wide.load1919, <4 x double> %i.uo)
  store <4 x double> %i.up, ptr %i.un, align 8, !tbaa !75, !alias.scope !88, !noalias !89
  %i.uq = fmul <4 x double> %broadcast.splat1899.a, %wide.load1918
  %i.ur = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1901.a, <4 x double> %wide.load1919, <4 x double> %i.uq) ; 2 uses
  %i.us = fmul <4 x double> %wide.load1917, %broadcast.splat1903.a
  %i.ut = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1905.a, <4 x double> %i.ur, <4 x double> %i.us)
  store <4 x double> %i.ut, ptr %i.um, align 8, !tbaa !75, !alias.scope !86, !noalias !87
  %i.uu = fmul <4 x double> %broadcast.splat1905.a, %wide.load1917
  %i.uv = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1907, <4 x double> %i.ur, <4 x double> %i.uu) ; 2 uses
  %i.uw = fmul <4 x double> %wide.load1916, %broadcast.splat1909
  %i.ux = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1911, <4 x double> %i.uv, <4 x double> %i.uw)
  store <4 x double> %i.ux, ptr %i.ul, align 8, !tbaa !75, !alias.scope !85, !noalias !84
  %i.uy = fmul <4 x double> %broadcast.splat1911, %wide.load1916
  %i.uz = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1913, <4 x double> %i.uv, <4 x double> %i.uy)
  store <4 x double> %i.uz, ptr %i.uk, align 8, !tbaa !75, !alias.scope !84
  %index.next1920 = add nuw i64 %index1915, 4     ; 2 uses
  %i.va = icmp eq i64 %index.next1920, %n.vec1895
  br i1 %i.va, label %middle.block1921, label %vector.body1914, !llvm.loop !31

middle.block1921:                                 ; preds = %vector.body1914
  %i.vb = extractelement <4 x double> %wide.load1916, i64 3
  br i1 %cmp.n1922, label %..loopexit_crit_edge, label %scalar.ph1892.preheader

scalar.ph1892.preheader:                          ; preds = %vector.memcheck1842, %.lr.ph1115, %middle.block1921
  %indvars.iv1326.ph = phi i64 [ %i.rt, %vector.memcheck1842 ], [ %i.rt, %.lr.ph1115 ], [ %i.tf, %middle.block1921 ]
  br label %scalar.ph1892

scalar.ph1892:                                    ; preds = %scalar.ph1892.preheader, %scalar.ph1892
  %indvars.iv1326 = phi i64 [ %indvars.iv.next1327, %scalar.ph1892 ], [ %indvars.iv1326.ph, %scalar.ph1892.preheader ]
  %indvars.iv.next1327 = add nsw i64 %indvars.iv1326, 1 ; 6 uses
  %gep1529 = getelementptr [8 x i8], ptr %invariant.gep1528, i64 %indvars.iv.next1327 ; 2 uses
  %i.vc = load double, ptr %gep1529, align 8, !tbaa !75 ; 3 uses
  %gep1531 = getelementptr [8 x i8], ptr %invariant.gep1530, i64 %indvars.iv.next1327 ; 2 uses
  %i.vd = load double, ptr %gep1531, align 8, !tbaa !75 ; 2 uses
  %gep1533 = getelementptr [8 x i8], ptr %invariant.gep1532, i64 %indvars.iv.next1327 ; 2 uses
  %i.ve = load double, ptr %gep1533, align 8, !tbaa !75 ; 2 uses
  %gep1535 = getelementptr [8 x i8], ptr %invariant.gep1534, i64 %indvars.iv.next1327 ; 2 uses
  %i.vf = load double, ptr %gep1535, align 8, !tbaa !75 ; 2 uses
  %i.vg = fmul double %i.ve, %i.ub
  %i.vh = call double @llvm.fmuladd.f64(double %i.ty, double %i.vf, double %i.vg)
  store double %i.vh, ptr %gep1535, align 8, !tbaa !75
  %i.vi = fmul double %i.ty, %i.ve
  %i.vj = call double @llvm.fmuladd.f64(double %i.ua, double %i.vf, double %i.vi) ; 2 uses
  %i.vk = fmul double %i.vd, %i.tu
  %i.vl = call double @llvm.fmuladd.f64(double %i.ts, double %i.vj, double %i.vk)
  store double %i.vl, ptr %gep1533, align 8, !tbaa !75
  %i.vm = fmul double %i.ts, %i.vd
  %i.vn = call double @llvm.fmuladd.f64(double %i.tt, double %i.vj, double %i.vm) ; 2 uses
  %i.vo = fmul double %i.vc, %i.tq
  %i.vp = call double @llvm.fmuladd.f64(double %i.to, double %i.vn, double %i.vo)
  store double %i.vp, ptr %gep1531, align 8, !tbaa !75
  %i.vq = fmul double %i.to, %i.vc
  %i.vr = call double @llvm.fmuladd.f64(double %i.tp, double %i.vn, double %i.vq)
  store double %i.vr, ptr %gep1529, align 8, !tbaa !75
  %exitcond.not = icmp eq i64 %indvars.iv.next1327, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %scalar.ph1892, !llvm.loop !32

._crit_edge1123:                                  ; preds = %.loopexit
  store double %i.to, ptr %i.p, align 8, !tbaa !75
  store double %i.tq, ptr %i.q, align 8, !tbaa !75
  br label %bb.aw

bb.aw:                                            ; preds = %._crit_edge1123, %._crit_edge1111
  %i.vs = icmp sgt i32 %i.rn, 0
  br i1 %i.vs, label %.preheader, label %.loopexit1040

.preheader:                                       ; preds = %bb.aw
  %i.vt = mul nsw i64 %indvars.iv1392, %i.dq
  %i.vu = mul nsw i64 %indvars.iv1392, %i.dr
  %i.vv = zext nneg i32 %i.rn to i64
  %invariant.gep1544 = getelementptr [8 x i8], ptr %i.ad, i64 %i.vt
  %invariant.gep1546 = getelementptr [8 x i8], ptr %i.aa, i64 %i.vu
  br label %bb.ax

bb.ax:                                            ; preds = %.preheader, %bb.ax
  %indvars.iv1334 = phi i64 [ %i.vv, %.preheader ], [ %indvars.iv.next1335, %bb.ax ] ; 4 uses
  %i.vw = load i32, ptr %4, align 4, !tbaa !73
  %i.vx = load i32, ptr %i.x, align 4, !tbaa !73  ; 2 uses
  %i.vy = sub nsw i32 %i.vw, %i.vx
  store i32 %i.vy, ptr %i.g, align 4, !tbaa !73
  %i.vz = add nsw i64 %indvars.iv1334, %indvars.iv.next1393 ; 2 uses
  %gep1545 = getelementptr [8 x i8], ptr %invariant.gep1544, i64 %i.vz
  %i.wa = load double, ptr %gep1545, align 8, !tbaa !75
  %i.wb = fneg double %i.wa
  store double %i.wb, ptr %i.k, align 8, !tbaa !75
  %i.wc = add nsw i32 %i.vx, 1
  %i.wd = add nsw i64 %indvars.iv1334, %indvars.iv1392 ; 2 uses
  %i.we = add nsw i64 %i.wd, 1
  %i.wf = mul nsw i64 %i.we, %i.dr
  %i.wg = sext i32 %i.wc to i64                   ; 2 uses
  %i.wh = getelementptr [8 x i8], ptr %i.aa, i64 %i.wf
  %i.wi = getelementptr [8 x i8], ptr %i.wh, i64 %i.wg
  %i.wj = mul nsw i64 %i.wd, %i.dr
  %i.wk = getelementptr [8 x i8], ptr %i.aa, i64 %i.wj
  %i.wl = getelementptr [8 x i8], ptr %i.wk, i64 %i.wg
  %gep1547 = getelementptr [8 x i8], ptr %invariant.gep1546, i64 %i.vz
  call void @drot_(ptr noundef nonnull %i.g, ptr noundef %i.wi, ptr noundef nonnull @c__1, ptr noundef %i.wl, ptr noundef nonnull @c__1, ptr noundef %gep1547, ptr noundef nonnull %i.k) #4
  %indvars.iv.next1335 = add nsw i64 %indvars.iv1334, -1
  %i.wm = icmp samesign ugt i64 %indvars.iv1334, 1
  br i1 %i.wm, label %bb.ax, label %.loopexit1040, !llvm.loop !33

.loopexit1040:                                    ; preds = %bb.ax, %bb.aw
  %i.wn = load i32, ptr %i.v, align 4, !tbaa !73  ; 2 uses
  %i.wo = add i32 %i.gh, %i.wn
  %i.wp = sext i32 %i.wo to i64
  %i.wq = icmp slt i64 %indvars.iv1392, %i.wp
  br i1 %i.wq, label %bb.ay, label %.loopexit1039

bb.ay:                                            ; preds = %.loopexit1040
  %i.wr = sub nsw i32 %i.oz, %i.ey
  store i32 %i.wr, ptr %i.w, align 4, !tbaa !73
  %i.ws = load i32, ptr %4, align 4, !tbaa !73    ; 5 uses
  %i.wt = load i32, ptr %i.r, align 4, !tbaa !73  ; 5 uses
  %i.wu = sub nsw i32 %i.ws, %i.wt                ; 7 uses
  %i.wv = add nsw i32 %i.wu, 1                    ; 3 uses
  %i.ww = mul nsw i64 %indvars.iv.next1393, %i.dr ; 8 uses
  %i.wx = sext i32 %i.wv to i64
  %i.wy = getelementptr [8 x i8], ptr %i.aa, i64 %i.ww
  %i.wz = getelementptr [8 x i8], ptr %i.wy, i64 %i.wx
  call void @dgemv_(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.r, ptr noundef nonnull %i.w, ptr noundef nonnull @c_b15, ptr noundef nonnull %13, ptr noundef nonnull %i.r, ptr noundef %i.wz, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b14, ptr noundef nonnull %i.gb, ptr noundef nonnull @c__1) #4
  %i.xa = load i32, ptr %i.w, align 4, !tbaa !73  ; 6 uses
  %i.xb = add i32 %i.xa, %.0917.lcssa1046
  %i.xc = load i32, ptr %i.r, align 4, !tbaa !73  ; 5 uses
  %i.xd = sub i32 %i.wu, %i.xa
  %i.xe = add i32 %i.xd, %i.xc
  %.not10031127.not = icmp slt i32 %i.wu, %i.xe
  %i.xf = sext i32 %i.xb to i64                   ; 8 uses
  br i1 %.not10031127.not, label %iter.check1828, label %._crit_edge1132

iter.check1828:                                   ; preds = %bb.ay
  %i.xg = sext i32 %i.wu to i64
  %i.xh = add nsw i64 %i.xg, 1                    ; 6 uses
  %i.xi = add i32 %i.xc, 1
  %i.xj = add i32 %i.xi, %i.ws
  %i.xk = add i32 %i.xa, %i.wt
  %i.xl = sub i32 %i.xj, %i.xk
  %invariant.gep1548 = getelementptr [8 x i8], ptr %i.aa, i64 %i.ww ; 3 uses
  %i.xm = xor i32 %i.xa, -1
  %i.xn = add i32 %i.xc, %i.xm                    ; 3 uses
  %i.xo = zext i32 %i.xn to i64
  %i.xp = add nuw nsw i64 %i.xo, 1                ; 5 uses
  %min.iters.check1811 = icmp ult i32 %i.xn, 3
  br i1 %min.iters.check1811, label %.lr.ph1131.preheader, label %vector.memcheck1808

vector.memcheck1808:                              ; preds = %iter.check1828
  %i.xq = sext i32 %i.wt to i64
  %i.xr = add nsw i64 %i.xq, %i.xf
  %i.xs = shl nsw i64 %i.xr, 3
  %i.xt = add i64 %i.xs, %i.hn
  %i.xu = sext i32 %i.ws to i64
  %i.xv = shl nsw i64 %i.xu, 3
  %i.xw = sub i64 %i.xv, %i.xt
  %diff.check1809 = icmp ugt i64 %i.xw, -128
  br i1 %diff.check1809, label %.lr.ph1131.preheader, label %vector.main.loop.iter.check1812

vector.main.loop.iter.check1812:                  ; preds = %vector.memcheck1808
  %min.iters.check1813 = icmp ult i32 %i.xn, 15
  br i1 %min.iters.check1813, label %vec.epilog.ph1832, label %vector.ph1814

vector.ph1814:                                    ; preds = %vector.main.loop.iter.check1812
  %i.xx = and i64 %i.xp, 12
  %n.vec1815 = and i64 %i.xp, 8589934576          ; 5 uses
  %i.xy = add nsw i64 %i.xh, %n.vec1815
  %i.xz = add nsw i64 %n.vec1815, %i.xf
end_hunk_0
