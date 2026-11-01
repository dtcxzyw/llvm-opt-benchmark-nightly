Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/cvodes?download=true
inline.NumInlined: 74
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 55
begin_hunk_0_@CVode:bb.a
  %i.pg = fcmp ult double %i.pf, 0.000000e+00
  br i1 %i.pg, label %bb.fb, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  store double %1, ptr %3, align 8, !tbaa !29
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store double %1, ptr %i.ph, align 8, !tbaa !191
  %i.pi = tail call i32 @CVodeGetDky(ptr noundef nonnull %0, double noundef %1, i32 noundef 0, ptr noundef nonnull %2)
  %.not592 = icmp eq i32 %i.pi, 0
  br i1 %.not592, label %cvInitialSetup.exit.thread, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 3392, ptr noundef nonnull @__func__.CVode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.51, double noundef %1)
  br label %cvInitialSetup.exit.thread

bb.ez:                                            ; preds = %bb.ev
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.pk = load double, ptr %i.pj, align 8, !tbaa !191
  %i.pl = fsub double %i.pc, %i.pk
  %i.pm = tail call double @llvm.fabs.f64(double %i.pl)
  %i.pn = fcmp ogt double %i.pm, %i.mn
  br i1 %i.pn, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  store double %i.pc, ptr %3, align 8, !tbaa !29
  store double %i.pc, ptr %i.pj, align 8, !tbaa !191
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !52
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.pp, ptr noundef nonnull %2) #13
  br label %cvInitialSetup.exit.thread

bb.fb:                                            ; preds = %bb.ew, %bb.ez, %bb.dz
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 24 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 3 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 29 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 968 ; 3 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 27 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 9 uses
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 12 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 10 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 5 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 12 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 13 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 6 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 11 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 6 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 10 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 5 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 6 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 39 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 2688 ; 22 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 2112 ; 4 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 26 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 1768 ; 3 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 1464 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 3 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 1440 ; 3 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 11 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 964 ; 13 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 2712 ; 3 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 5 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 972 ; 10 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 2576 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 2568
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 4 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 4 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 21 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 3 uses
  %scevgep.i.i.i = getelementptr i8, ptr %0, i64 1224
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 2584 ; 5 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 6 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 6 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 4 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 4 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 1432 ; 3 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 7 uses
  %scevgep.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 3 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 2016 ; 3 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 1936 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 2056
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 1848 ; 4 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 15 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 1952 ; 4 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 1672 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 1864 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 1944
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 1696 ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 1392 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 11 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 4 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %0, i64 1384 ; 3 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 2104 ; 3 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 3 uses
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 2536 ; 3 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 5 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 3 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 2544 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 2552 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 1480 ; 4 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 2560
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 14 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 2580 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 1720
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ta = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 11 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 1728
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 1600 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %0, i64 1908
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 1920 ; 4 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 1896 ; 3 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 1688 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 1712 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 1976 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 1880 ; 3 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 1968
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 1984
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 1680 ; 6 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 1704 ; 6 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 1656 ; 5 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 1736
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 10 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 3 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 1632 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.ug = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 1744
  %i.ui = getelementptr inbounds nuw i8, ptr %0, i64 2400 ; 5 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 2088
  %i.uk = getelementptr inbounds nuw i8, ptr %0, i64 2068
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 1448 ; 14 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 2096 ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 2136
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 1496 ; 4 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 1784 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %0, i64 1504 ; 3 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 1512 ; 3 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %0, i64 1488 ; 3 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 1544 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 1776 ; 4 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 1792 ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 2200
  %i.vb = getelementptr i8, ptr %0, i64 2344      ; 3 uses
  %i.vc = getelementptr i8, ptr %0, i64 2376
  %i.vd = getelementptr i8, ptr %0, i64 2312      ; 3 uses
  %i.ve = getelementptr i8, ptr %0, i64 2280      ; 3 uses
  %i.vf = getelementptr i8, ptr %0, i64 2248      ; 3 uses
  %i.vg = getelementptr i8, ptr %0, i64 2352
  %i.vh = getelementptr i8, ptr %0, i64 2320
  %i.vi = getelementptr i8, ptr %0, i64 2288
  %i.vj = getelementptr i8, ptr %0, i64 2256      ; 2 uses
  %i.vk = getelementptr i8, ptr %0, i64 2360      ; 3 uses
  %i.vl = getelementptr i8, ptr %0, i64 2392
  %i.vm = getelementptr i8, ptr %0, i64 2328      ; 3 uses
  %i.vn = getelementptr i8, ptr %0, i64 2296      ; 3 uses
  %i.vo = getelementptr i8, ptr %0, i64 2264      ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 2208
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 2240
  %i.vr = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.vs = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.vt = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.vu = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.vv = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.vw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.vx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.vy = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.vz = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.wa = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.wb = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.wc = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.wd = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.we = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.wf = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.wg = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.wh = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %i.wi = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.wj = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.wk = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.wl = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  %i.wm = getelementptr inbounds nuw i8, ptr %i.h, i64 176
  %i.wn = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.wo = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.wp = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.wq = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.wr = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.ws = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.wt = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.wu = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.wv = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ww = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.wx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %gep364.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %gep364.1.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %gep364.2.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %gep364.1421.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %gep364.1.1.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %gep364.2.1.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %gep364.2423.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %gep364.1.2.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %gep364.2.2.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.wy = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.wz = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.xa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.xb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.xc = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.xd = getelementptr inbounds nuw i8, ptr %0, i64 2408 ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %0, i64 1576
  %i.xf = getelementptr inbounds nuw i8, ptr %0, i64 2424 ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %0, i64 2520
  %i.xh = getelementptr inbounds nuw i8, ptr %0, i64 2528
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.fb
  %.0519 = phi i64 [ 0, %bb.fb ], [ %i.cth, %.backedge.backedge ] ; 2 uses
  %i.xi = load double, ptr %i.pq, align 8, !tbaa !197
  store double %i.xi, ptr %i.pr, align 8, !tbaa !97
  %i.xj = load i32, ptr %i.ps, align 8, !tbaa !79
  store i32 %i.xj, ptr %i.pt, align 8, !tbaa !98
  %i.xk = load i64, ptr %i.aj, align 8, !tbaa !301
  %i.xl = icmp sgt i64 %i.xk, 0
  br i1 %i.xl, label %bb.fc, label %bb.fs

bb.fc:                                            ; preds = %.backedge
  %i.xm = load ptr, ptr %i.pu, align 8, !tbaa !109
  %i.xn = load ptr, ptr %i.pv, align 8, !tbaa !52
  %i.xo = load ptr, ptr %i.pw, align 8, !tbaa !58
  %i.xp = load ptr, ptr %i.px, align 8, !tbaa !110
  %i.xq = call i32 %i.xm(ptr noundef %i.xn, ptr noundef %i.xo, ptr noundef %i.xp) #13
  %.not569 = icmp eq i32 %i.xq, 0
  br i1 %.not569, label %bb.fh, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !107
  %i.xt = icmp eq i32 %i.xs, 3
  %i.xu = load double, ptr %i.qp, align 8, !tbaa !77 ; 2 uses
  br i1 %i.xt, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 3443, ptr noundef nonnull @__func__.CVode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.52, double noundef %i.xu)
  br label %bb.fg

bb.ff:                                            ; preds = %bb.fd
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 3448, ptr noundef nonnull @__func__.CVode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.53, double noundef %i.xu)
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %i.xv = load double, ptr %i.qp, align 8, !tbaa !77 ; 2 uses
  store double %i.xv, ptr %3, align 8, !tbaa !29
  %i.xw = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store double %i.xv, ptr %i.xw, align 8, !tbaa !191
  %i.xx = load ptr, ptr %i.pv, align 8, !tbaa !52
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.xx, ptr noundef nonnull %2) #13
  br label %bb.pa

bb.fh:                                            ; preds = %bb.fc
  %i.xy = load i32, ptr %i.py, align 8, !tbaa !121
  %.not570 = icmp eq i32 %i.xy, 0
  br i1 %.not570, label %bb.fl, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.xz = load i32, ptr %i.pz, align 8, !tbaa !192
  %.not571 = icmp eq i32 %i.xz, 0
  br i1 %.not571, label %bb.fl, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.ya = load ptr, ptr %i.qa, align 8, !tbaa !52
  %i.yb = load ptr, ptr %i.qb, align 8, !tbaa !114
  %i.yc = call fastcc i32 @cvQuadEwtSet(ptr noundef %0, ptr noundef %i.ya, ptr noundef %i.yb)
  %.not572 = icmp eq i32 %i.yc, 0
  br i1 %.not572, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.yd = load double, ptr %i.qp, align 8, !tbaa !77
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 3463, ptr noundef nonnull @__func__.CVode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.54, double noundef %i.yd)
  %i.ye = load double, ptr %i.qp, align 8, !tbaa !77 ; 2 uses
  store double %i.ye, ptr %3, align 8, !tbaa !29
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store double %i.ye, ptr %i.yf, align 8, !tbaa !191
  %i.yg = load ptr, ptr %i.pv, align 8, !tbaa !52
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.yg, ptr noundef nonnull %2) #13
  br label %bb.pa

bb.fl:                                            ; preds = %bb.fj, %bb.fi, %bb.fh
  %i.yh = load i32, ptr %i.qc, align 4, !tbaa !141
  %.not573 = icmp eq i32 %i.yh, 0
  br i1 %.not573, label %bb.fo, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.yi = load ptr, ptr %i.qd, align 8, !tbaa !135
  %i.yj = load ptr, ptr %i.qe, align 8, !tbaa !145
  %i.yk = call fastcc i32 @cvSensEwtSet(ptr noundef %0, ptr noundef %i.yi, ptr noundef %i.yj)
  %.not574 = icmp eq i32 %i.yk, 0
  br i1 %.not574, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.yl = load double, ptr %i.qp, align 8, !tbaa !77
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 3477, ptr noundef nonnull @__func__.CVode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.55, double noundef %i.yl)
  %i.ym = load double, ptr %i.qp, align 8, !tbaa !77 ; 2 uses
  store double %i.ym, ptr %3, align 8, !tbaa !29
  %i.yn = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store double %i.ym, ptr %i.yn, align 8, !tbaa !191
  %i.yo = load ptr, ptr %i.pv, align 8, !tbaa !52
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.yo, ptr noundef nonnull %2) #13
  br label %bb.pa

bb.fo:                                            ; preds = %bb.fm, %bb.fl
  %i.yp = load i32, ptr %i.qf, align 8, !tbaa !173
  %.not575 = icmp eq i32 %i.yp, 0
  br i1 %.not575, label %bb.fs, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.yq = load i32, ptr %i.qg, align 4, !tbaa !193
  %.not576 = icmp eq i32 %i.yq, 0
  br i1 %.not576, label %bb.fs, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.yr = load ptr, ptr %i.qh, align 8, !tbaa !135
  %i.ys = load ptr, ptr %i.qi, align 8, !tbaa !166
  %i.yt = call fastcc i32 @cvQuadSensEwtSet(ptr noundef %0, ptr noundef %i.yr, ptr noundef %i.ys)
  %.not577 = icmp eq i32 %i.yt, 0
  br i1 %.not577, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.yu = load double, ptr %i.qp, align 8, !tbaa !77
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 3491, ptr noundef nonnull @__func__.CVode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.56, double noundef %i.yu)
  %i.yv = load double, ptr %i.qp, align 8, !tbaa !77 ; 2 uses
  store double %i.yv, ptr %3, align 8, !tbaa !29
  %i.yw = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store double %i.yv, ptr %i.yw, align 8, !tbaa !191
  %i.yx = load ptr, ptr %i.pv, align 8, !tbaa !52
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.yx, ptr noundef nonnull %2) #13
  br label %bb.pa

bb.fs:                                            ; preds = %bb.fo, %bb.fp, %bb.fq, %.backedge
  %i.yy = load i64, ptr %i.qj, align 8, !tbaa !27 ; 2 uses
  %i.yz = icmp slt i64 %i.yy, 1
  %.not578 = icmp slt i64 %.0519, %i.yy
  %or.cond597 = select i1 %i.yz, i1 true, i1 %.not578
  br i1 %or.cond597, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.za = load double, ptr %i.qp, align 8, !tbaa !77
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 3504, ptr noundef nonnull @__func__.CVode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.57, double noundef %i.za)
  %i.zb = load double, ptr %i.qp, align 8, !tbaa !77 ; 2 uses
  store double %i.zb, ptr %3, align 8, !tbaa !29
  %i.zc = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store double %i.zb, ptr %i.zc, align 8, !tbaa !191
  %i.zd = load ptr, ptr %i.pv, align 8, !tbaa !52
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.zd, ptr noundef nonnull %2) #13
  br label %bb.pa

bb.fu:                                            ; preds = %bb.fs
  %i.ze = load ptr, ptr %i.pv, align 8, !tbaa !52
  %i.zf = load ptr, ptr %i.pw, align 8, !tbaa !58
  %i.zg = call double @N_VWrmsNorm(ptr noundef %i.ze, ptr noundef %i.zf) #13 ; 4 uses
  %i.zh = load i32, ptr %i.py, align 8, !tbaa !121
  %.not579 = icmp eq i32 %i.zh, 0
  br i1 %.not579, label %bb.fx, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.zi = load i32, ptr %i.pz, align 8, !tbaa !192
  %.not580 = icmp eq i32 %i.zi, 0
  br i1 %.not580, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.zj = load ptr, ptr %i.qa, align 8, !tbaa !52
  %i.zk = load ptr, ptr %i.qb, align 8, !tbaa !114
  %i.zl = call double @N_VWrmsNorm(ptr noundef %i.zj, ptr noundef %i.zk) #13 ; 2 uses
  %i.zm = fcmp ogt double %i.zg, %i.zl
  %..i600 = select i1 %i.zm, double %i.zg, double %i.zl
  br label %bb.fx
end_hunk_0
begin_hunk_1_@CVode:bb.a
  %i.cak = fmul <2 x double> %i.caj, %i.caj
  store <2 x double> %i.cak, ptr %i.vj, align 8, !tbaa !29
  %.pr.i.i = load i32, ptr %i.ps, align 8, !tbaa !79
  br label %bb.na

bb.na:                                            ; preds = %._crit_edge.i308.i, %bb.mz
  %i.cal = phi i32 [ %.pr.i.i, %._crit_edge.i308.i ], [ %i.byp, %bb.mz ] ; 6 uses
  %i.cam = load i32, ptr %i.qv, align 4, !tbaa !312
  %.not.i296.i = icmp slt i32 %i.cam, %i.cal
  br i1 %.not.i296.i, label %bb.ny, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  %i.can = icmp sgt i32 %i.cal, 2
  br i1 %i.can, label %bb.nc, label %cvBDFStab.exit.i

bb.nc:                                            ; preds = %bb.nb
  %i.cao = load i32, ptr %i.ui, align 8, !tbaa !94
  %i.cap = add nuw nsw i32 %i.cal, 5
  %.not76.i.i = icmp slt i32 %i.cao, %i.cap
  br i1 %.not76.i.i, label %cvBDFStab.exit.i, label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13
  br label %bb.ne

bb.ne:                                            ; preds = %bb.nf, %bb.nd
  %indvars.iv.i.i297.i = phi i64 [ 1, %bb.nd ], [ %indvars.iv.next.i.i298.i, %bb.nf ] ; 13 uses
  %i.caq = getelementptr inbounds nuw [8 x i8], ptr %i.vq, i64 %indvars.iv.i.i297.i
  %i.car = load double, ptr %i.caq, align 8, !tbaa !29 ; 7 uses
  %invariant.gep.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.vp, i64 %indvars.iv.i.i297.i ; 4 uses
  %i.cas = fcmp olt double %i.car, 0.000000e+00
  %i.cat = select i1 %i.cas, double 0.000000e+00, double %i.car ; 2 uses
  %gep.1.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i, i64 64
  %i.cau = load double, ptr %gep.1.i.i.i, align 8, !tbaa !29 ; 8 uses
  %i.cav = fcmp olt double %i.car, %i.cau
  %.0298..1.i.i.i = select i1 %i.cav, double %i.car, double %i.cau ; 2 uses
  %i.caw = fcmp ogt double %i.cat, %i.cau
  %i.cax = select i1 %i.caw, double %i.cat, double %i.cau ; 2 uses
  %gep.2.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i, i64 96
  %i.cay = load double, ptr %gep.2.i.i.i, align 8, !tbaa !29 ; 10 uses
  %i.caz = fcmp olt double %.0298..1.i.i.i, %i.cay
  %.0298..2.i.i.i = select i1 %i.caz, double %.0298..1.i.i.i, double %i.cay ; 2 uses
  %i.cba = fcmp ogt double %i.cax, %i.cay
  %i.cbb = select i1 %i.cba, double %i.cax, double %i.cay ; 2 uses
  %gep.3.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i, i64 128
  %i.cbc = load double, ptr %gep.3.i.i.i, align 8, !tbaa !29 ; 9 uses
  %i.cbd = fcmp olt double %.0298..2.i.i.i, %i.cbc
  %.0298..3.i.i.i = select i1 %i.cbd, double %.0298..2.i.i.i, double %i.cbc ; 2 uses
  %i.cbe = fcmp ogt double %i.cbb, %i.cbc
  %i.cbf = select i1 %i.cbe, double %i.cbb, double %i.cbc ; 2 uses
  %gep.4.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i, i64 160
  %i.cbg = load double, ptr %gep.4.i.i.i, align 8, !tbaa !29 ; 7 uses
  %i.cbh = fcmp olt double %.0298..3.i.i.i, %i.cbg
  %.0298..4.i.i.i = select i1 %i.cbh, double %.0298..3.i.i.i, double %i.cbg
  %i.cbi = fcmp ogt double %i.cbf, %i.cbg
  %i.cbj = select i1 %i.cbi, double %i.cbf, double %i.cbg ; 4 uses
  %i.cbk = fmul double %i.cbj, 1.000000e-10
  %i.cbl = fcmp olt double %.0298..4.i.i.i, %i.cbk
  br i1 %i.cbl, label %cvSLdet.exit.thread.i.i, label %bb.nf

bb.nf:                                            ; preds = %bb.ne
  %i.cbm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i.i297.i
  store double %i.cbj, ptr %i.cbm, align 8, !tbaa !29
  %i.cbn = fmul double %i.cbj, %i.cbj
  %i.cbo = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i.i297.i
  store double %i.cbn, ptr %i.cbo, align 8, !tbaa !29
  %i.cbp = fdiv double %i.car, %i.cau             ; 3 uses
  %i.cbq = fadd double %i.cbp, 0.000000e+00
  %i.cbr = fdiv double %i.cau, %i.cay             ; 3 uses
  %i.cbs = fadd double %i.cbq, %i.cbr
  %i.cbt = fdiv double %i.cay, %i.cbc             ; 3 uses
  %i.cbu = fadd double %i.cbs, %i.cbt
  %i.cbv = fdiv double %i.cbc, %i.cbg             ; 3 uses
  %i.cbw = fadd double %i.cbu, %i.cbv
  %i.cbx = fmul double %i.cbw, 2.500000e-01       ; 2 uses
  %i.cby = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i297.i
  store double %i.cbx, ptr %i.cby, align 8, !tbaa !29
  %i.cbz = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i.i297.i
  %i.cca = call double @llvm.fmuladd.f64(double %i.cbp, double %i.cbp, double 0.000000e+00)
  %i.ccb = call double @llvm.fmuladd.f64(double %i.cbr, double %i.cbr, double %i.cca)
  %i.ccc = call double @llvm.fmuladd.f64(double %i.cbt, double %i.cbt, double %i.ccb)
  %i.ccd = call double @llvm.fmuladd.f64(double %i.cbv, double %i.cbv, double %i.ccc)
  %i.cce = insertelement <2 x double> poison, double %i.cbx, i64 0
  %i.ccf = insertelement <2 x double> %i.cce, double %i.cau, i64 1 ; 2 uses
  %i.ccg = fneg <2 x double> %i.ccf
  %i.cch = fmul <2 x double> %i.ccf, %i.ccg
  %i.cci = insertelement <2 x double> poison, double %i.ccd, i64 0
  %i.ccj = insertelement <2 x double> %i.cci, double %i.car, i64 1
  %i.cck = insertelement <2 x double> <double 2.500000e-01, double poison>, double %i.cay, i64 1
  %i.ccl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ccj, <2 x double> %i.cck, <2 x double> %i.cch) ; 2 uses
  %i.ccm = extractelement <2 x double> %i.ccl, i64 0
  %i.ccn = call double @llvm.fabs.f64(double %i.ccm)
  store double %i.ccn, ptr %i.cbz, align 8, !tbaa !29
  %i.cco = getelementptr inbounds nuw [8 x i8], ptr %i.vr, i64 %indvars.iv.i.i297.i
  %i.ccp = extractelement <2 x double> %i.ccl, i64 1 ; 2 uses
  store double %i.ccp, ptr %i.cco, align 8, !tbaa !29
  %i.ccq = fneg double %i.cbc
  %i.ccr = getelementptr inbounds nuw [8 x i8], ptr %i.vs, i64 %indvars.iv.i.i297.i
  %i.ccs = getelementptr inbounds nuw [8 x i8], ptr %i.vt, i64 %indvars.iv.i.i297.i
  store double 0.000000e+00, ptr %i.ccs, align 8, !tbaa !29
  %i.cct = insertelement <2 x double> poison, double %i.car, i64 0
  %i.ccu = insertelement <2 x double> %i.cct, double %i.cay, i64 1
  %i.ccv = insertelement <2 x double> poison, double %i.ccq, i64 0
  %i.ccw = shufflevector <2 x double> %i.ccv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ccx = fmul <2 x double> %i.ccu, %i.ccw
  %i.ccy = insertelement <2 x double> poison, double %i.cau, i64 0
  %i.ccz = shufflevector <2 x double> %i.ccy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cda = insertelement <2 x double> poison, double %i.cay, i64 0
  %i.cdb = insertelement <2 x double> %i.cda, double %i.cbg, i64 1
  %i.cdc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ccz, <2 x double> %i.cdb, <2 x double> %i.ccx) ; 2 uses
  %i.cdd = extractelement <2 x double> %i.cdc, i64 0 ; 2 uses
  store double %i.cdd, ptr %i.ccr, align 8, !tbaa !29
  %i.cde = getelementptr inbounds nuw [8 x i8], ptr %i.vu, i64 %indvars.iv.i.i297.i
  %i.cdf = extractelement <2 x double> %i.cdc, i64 1 ; 2 uses
  store double %i.cdf, ptr %i.cde, align 8, !tbaa !29
  %i.cdg = fneg double %i.cbg
  %i.cdh = fmul double %i.cay, %i.cdg
  %i.cdi = call double @llvm.fmuladd.f64(double %i.cbc, double %i.cbc, double %i.cdh) ; 2 uses
  %i.cdj = getelementptr inbounds nuw [8 x i8], ptr %i.vv, i64 %indvars.iv.i.i297.i
  store double %i.cdi, ptr %i.cdj, align 8, !tbaa !29
  %invariant.gep352.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i.i297.i ; 5 uses
  %gep353.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i.i, i64 32
  store double %i.cdi, ptr %gep353.i.i.i, align 8, !tbaa !29
  %gep353.1.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i.i, i64 64
  store double %i.cdf, ptr %gep353.1.i.i.i, align 8, !tbaa !29
  %gep353.2.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i.i, i64 96
  store double 0.000000e+00, ptr %gep353.2.i.i.i, align 8, !tbaa !29
  %gep353.3.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i.i, i64 128
  store double %i.cdd, ptr %gep353.3.i.i.i, align 8, !tbaa !29
  %gep353.4.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i.i, i64 160
  store double %i.ccp, ptr %gep353.4.i.i.i, align 8, !tbaa !29
  %indvars.iv.next.i.i298.i = add nuw nsw i64 %indvars.iv.i.i297.i, 1 ; 2 uses
  %exitcond.not.i.i299.i = icmp eq i64 %indvars.iv.next.i.i298.i, 4
  br i1 %exitcond.not.i.i299.i, label %bb.ng, label %bb.ne

bb.ng:                                            ; preds = %bb.nf
  %i.cdk = load double, ptr %i.vw, align 8, !tbaa !29 ; 4 uses
  %i.cdl = load double, ptr %i.vx, align 16, !tbaa !29 ; 4 uses
  %i.cdm = load double, ptr %i.vy, align 8, !tbaa !29 ; 4 uses
  %i.cdn = fcmp olt double %i.cdl, %i.cdm
  %i.cdo = select i1 %i.cdn, double %i.cdl, double %i.cdm ; 2 uses
  %i.cdp = fcmp olt double %i.cdk, %i.cdo
  %..i.i300.i = select i1 %i.cdp, double %i.cdk, double %i.cdo
  %i.cdq = fcmp olt double %..i.i300.i, 1.000000e-08
  br i1 %i.cdq, label %bb.nh, label %bb.nj

bb.nh:                                            ; preds = %bb.ng
  %i.cdr = fcmp ogt double %i.cdl, %i.cdm
  %i.cds = select i1 %i.cdr, double %i.cdl, double %i.cdm ; 2 uses
  %i.cdt = fcmp ogt double %i.cdk, %i.cds
  %i.cdu = select i1 %i.cdt, double %i.cdk, double %i.cds
  %i.cdv = fcmp ogt double %i.cdu, 2.500000e-07
  br i1 %i.cdv, label %cvSLdet.exit.thread.i.i, label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  %i.cdw = load double, ptr %i.wz, align 8, !tbaa !29 ; 2 uses
  %i.cdx = load <2 x double>, ptr %i.wy, align 8, !tbaa !29 ; 3 uses
  %shift = shufflevector <2 x double> %i.cdx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.cdx, %shift
  %i.cdy = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.cdz = fadd double %i.cdy, %i.cdw
  %i.cea = fdiv double %i.cdz, 3.000000e+00       ; 3 uses
  %i.ceb = insertelement <2 x double> poison, double %i.cea, i64 0
  %i.cec = shufflevector <2 x double> %i.ceb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ced = fsub <2 x double> %i.cdx, %i.cec
  %i.cee = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ced) ; 2 uses
  %i.cef = extractelement <2 x double> %i.cee, i64 0 ; 2 uses
  %i.ceg = extractelement <2 x double> %i.cee, i64 1 ; 2 uses
  %i.ceh = fcmp ogt double %i.cef, %i.ceg
  %i.cei = select i1 %i.ceh, double %i.cef, double %i.ceg ; 2 uses
  %i.cej = fsub double %i.cdw, %i.cea
  %i.cek = call double @llvm.fabs.f64(double %i.cej) ; 2 uses
  %i.cel = fcmp ogt double %i.cei, %i.cek
  %i.cem = select i1 %i.cel, double %i.cei, double %i.cek
  %i.cen = fcmp ogt double %i.cem, 5.000000e-04
  br i1 %i.cen, label %cvSLdet.exit.thread.i.i, label %bb.no

bb.nj:                                            ; preds = %bb.ng
  %i.ceo = load double, ptr %i.vz, align 8, !tbaa !29 ; 3 uses
  %i.cep = call double @llvm.fabs.f64(double %i.ceo)
  %i.ceq = load double, ptr %i.wa, align 8, !tbaa !29 ; 2 uses
  %i.cer = fmul double %i.ceq, 1.000000e-10       ; 2 uses
  %i.ces = fcmp olt double %i.cep, %i.cer
  br i1 %i.ces, label %cvSLdet.exit.thread.i.i, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  %i.cet = load double, ptr %i.wb, align 16, !tbaa !29
  %i.ceu = fneg double %i.cet
  %i.cev = fdiv double %i.ceu, %i.ceo             ; 3 uses
  %i.cew = load double, ptr %i.wc, align 16, !tbaa !29
  %i.cex = load double, ptr %i.wd, align 8, !tbaa !29 ; 2 uses
  %i.cey = call double @llvm.fmuladd.f64(double %i.cev, double %i.cex, double %i.cew) ; 2 uses
  %i.cez = call double @llvm.fabs.f64(double %i.cey)
  %i.cfa = load double, ptr %i.we, align 16, !tbaa !29 ; 4 uses
  %i.cfb = fmul double %i.cfa, 1.000000e-10       ; 2 uses
  %i.cfc = fcmp olt double %i.cez, %i.cfb
  br i1 %i.cfc, label %cvSLdet.exit.thread.i.i, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  %i.cfd = load double, ptr %i.wf, align 8, !tbaa !29
  %i.cfe = fneg double %i.cfd
  %i.cff = fdiv double %i.cfe, %i.ceo             ; 3 uses
  %i.cfg = load double, ptr %i.wg, align 8, !tbaa !29 ; 2 uses
  %i.cfh = load double, ptr %i.wh, align 8, !tbaa !29
  %i.cfi = call double @llvm.fmuladd.f64(double %i.cff, double %i.cfg, double %i.cfh)
  %i.cfj = load double, ptr %i.wi, align 8, !tbaa !29
  %i.cfk = call double @llvm.fmuladd.f64(double %i.cff, double %i.cex, double %i.cfj)
  %i.cfl = load double, ptr %i.wj, align 16, !tbaa !29
  %i.cfm = call double @llvm.fmuladd.f64(double %i.cev, double %i.cfg, double %i.cfl)
  %i.cfn = fneg double %i.cfk
  %i.cfo = fdiv double %i.cfn, %i.cey             ; 2 uses
  %i.cfp = call double @llvm.fmuladd.f64(double %i.cfo, double %i.cfm, double %i.cfi) ; 2 uses
  %i.cfq = call double @llvm.fabs.f64(double %i.cfp)
  %i.cfr = load double, ptr %i.wk, align 8, !tbaa !29 ; 4 uses
  %i.cfs = fmul double %i.cfr, 1.000000e-10       ; 2 uses
  %i.cft = fcmp olt double %i.cfq, %i.cfs
  br i1 %i.cft, label %cvSLdet.exit.thread.i.i, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  %i.cfu = load <1 x double>, ptr %i.wl, align 8
  %i.cfv = load <2 x double>, ptr %i.wm, align 16, !tbaa !29
  %i.cfw = insertelement <2 x double> poison, double %i.cev, i64 0
  %i.cfx = insertelement <2 x double> %i.cfw, double %i.cff, i64 1
  %i.cfy = shufflevector <1 x double> %i.cfu, <1 x double> poison, <2 x i32> zeroinitializer
  %i.cfz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cfx, <2 x double> %i.cfy, <2 x double> %i.cfv) ; 2 uses
  %i.cga = extractelement <2 x double> %i.cfz, i64 0
  %i.cgb = extractelement <2 x double> %i.cfz, i64 1
  %i.cgc = call double @llvm.fmuladd.f64(double %i.cfo, double %i.cga, double %i.cgb)
  %i.cgd = fneg double %i.cgc
  %i.cge = fdiv double %i.cgd, %i.cfp             ; 9 uses
  %i.cgf = fcmp olt double %i.cge, 1.000000e-10
  %i.cgg = fcmp ogt double %i.cge, 1.000000e+02
  %or.cond.i.i301.i = or i1 %i.cgf, %i.cgg
  br i1 %or.cond.i.i301.i, label %cvSLdet.exit.thread.i.i, label %.preheader338.i.i.i

.preheader338.i.i.i:                              ; preds = %bb.nm
  %i.cgh = fmul double %i.cge, %i.cge             ; 2 uses
  %i.cgi = load double, ptr %i.wn, align 8, !tbaa !29 ; 4 uses
  %i.cgj = load <2 x double>, ptr %i.wo, align 8, !tbaa !29 ; 7 uses
  %i.cgk = load <2 x double>, ptr %i.wp, align 8, !tbaa !29 ; 6 uses
  %i.cgl = load <2 x double>, ptr %i.wq, align 8, !tbaa !29 ; 7 uses
  %i.cgm = extractelement <2 x double> %i.cgk, i64 0 ; 3 uses
  %i.cgn = extractelement <2 x double> %i.cgl, i64 0 ; 3 uses
  %i.cgo = call double @llvm.fmuladd.f64(double %i.cge, double %i.cgn, double %i.cgm)
  %i.cgp = extractelement <2 x double> %i.cgj, i64 0 ; 3 uses
  %i.cgq = call double @llvm.fmuladd.f64(double %i.cgh, double %i.cgo, double %i.cgp)
  %i.cgr = call double @llvm.fmuladd.f64(double %i.cge, double %i.cgq, double %i.cgi) ; 2 uses
  %i.cgs = load double, ptr %i.ws, align 8, !tbaa !29 ; 4 uses
  %i.cgt = load double, ptr %i.wt, align 8, !tbaa !29 ; 4 uses
  %i.cgu = load double, ptr %i.wu, align 8, !tbaa !29 ; 5 uses
  %i.cgv = load <2 x double>, ptr %i.wr, align 16, !tbaa !29 ; 5 uses
  %i.cgw = insertelement <2 x double> poison, double %i.cge, i64 0
  %i.cgx = shufflevector <2 x double> %i.cgw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cgy = shufflevector <2 x double> %i.cgl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cgz = insertelement <2 x double> %i.cgy, double %i.cgu, i64 1
  %i.cha = shufflevector <2 x double> %i.cgk, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.chb = insertelement <2 x double> %i.cha, double %i.cgt, i64 1
  %i.chc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cgx, <2 x double> %i.cgz, <2 x double> %i.chb)
  %i.chd = insertelement <2 x double> poison, double %i.cgh, i64 0
  %i.che = shufflevector <2 x double> %i.chd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.chf = shufflevector <2 x double> %i.cgj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.chg = insertelement <2 x double> %i.chf, double %i.cgs, i64 1
  %i.chh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.che, <2 x double> %i.chc, <2 x double> %i.chg)
  %i.chi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cgx, <2 x double> %i.chh, <2 x double> %i.cgv) ; 3 uses
  %i.chj = shufflevector <2 x double> %i.chi, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.chk = insertelement <2 x double> %i.chj, double %i.cgr, i64 0
  %i.chl = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.chk)
  %5 = insertelement <2 x double> poison, double %i.ceq, i64 0 ; 2 uses
  %6 = insertelement <2 x double> %5, double %i.cfa, i64 1 ; 2 uses
  %i.chm = fdiv <2 x double> %i.chl, %6           ; 2 uses
  %i.chn = extractelement <2 x double> %i.chm, i64 0 ; 2 uses
  %i.cho = fcmp ogt double %i.chn, 0.000000e+00
  %.1293.i.i.i = select i1 %i.cho, double %i.chn, double 0.000000e+00 ; 2 uses
  %i.chp = extractelement <2 x double> %i.chm, i64 1 ; 2 uses
  %i.chq = fcmp ogt double %i.chp, %.1293.i.i.i
  %.1293.1.i.i.i = select i1 %i.chq, double %i.chp, double %.1293.i.i.i ; 2 uses
  %i.chr = extractelement <2 x double> %i.chi, i64 1
  %i.chs = call double @llvm.fabs.f64(double %i.chr)
  %i.cht = fdiv double %i.chs, %i.cfr             ; 2 uses
  %i.chu = fcmp ogt double %i.cht, %.1293.1.i.i.i
  %.1293.2.i.i.i = select i1 %i.chu, double %i.cht, double %.1293.1.i.i.i
  %i.chv = fcmp olt double %.1293.2.i.i.i, 1.000000e-03
  br i1 %i.chv, label %bb.no, label %.preheader335.i.i.i.preheader

.preheader335.i.i.i.preheader:                    ; preds = %.preheader338.i.i.i
  %i.chw = extractelement <2 x double> %i.cgj, i64 1
  %i.chx = insertelement <2 x double> %i.cgv, double %i.cgt, i64 1 ; 2 uses
  %i.chy = insertelement <2 x double> %i.cgk, double %i.cgi, i64 0
  %i.chz = insertelement <2 x double> poison, double %i.cgt, i64 1
  %i.cia = shufflevector <2 x double> %i.cgl, <2 x double> <double poison, double 3.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.cib = insertelement <2 x double> poison, double %i.cfb, i64 0
  %i.cic = insertelement <2 x double> %i.cib, double %i.cfs, i64 1
  %i.cid = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cie = extractelement <2 x double> %i.cgv, i64 0
  %i.cif = shufflevector <2 x double> %i.cgv, <2 x double> %i.cgk, <2 x i32> <i32 1, i32 2>
  %i.cig = shufflevector <2 x double> %i.cgj, <2 x double> %i.cgk, <2 x i32> <i32 0, i32 3>
  %i.cih = insertelement <2 x double> %i.cgj, double %i.cgi, i64 0
  %i.cii = insertelement <2 x double> poison, double %i.cgu, i64 1
  %i.cij = insertelement <2 x double> poison, double %i.cgs, i64 0
  %i.cik = shufflevector <2 x double> %i.cij, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cil = shufflevector <2 x double> %i.cgv, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cim = insertelement <2 x double> poison, double %i.cfr, i64 0
  %i.cin = shufflevector <2 x double> %i.cim, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cio = insertelement <2 x double> %i.cgj, double %i.cgs, i64 0
  %7 = insertelement <2 x double> poison, double %i.cfa, i64 0
  %8 = insertelement <2 x double> %7, double %i.cfr, i64 1
  br label %.preheader335.i.i.i

.preheader335.i.i.i:                              ; preds = %.preheader335.i.i.i.preheader, %.preheader.i.i303.i
  %.sroa.2449.0.i.i.i = phi double [ %i.cng, %.preheader.i.i303.i ], [ %i.cgr, %.preheader335.i.i.i.preheader ]
  %.0299376.i.i.i = phi double [ %i.cne, %.preheader.i.i303.i ], [ %i.cge, %.preheader335.i.i.i.preheader ] ; 5 uses
  %.0305375.i.i.i = phi i32 [ %.2307.2.i.i.i, %.preheader.i.i303.i ], [ 0, %.preheader335.i.i.i.preheader ]
  %.0308374.i.i.i = phi i32 [ %i.cnj, %.preheader.i.i303.i ], [ 1, %.preheader335.i.i.i.preheader ]
  %i.cip = phi <2 x double> [ %i.cnl, %.preheader.i.i303.i ], [ %i.chi, %.preheader335.i.i.i.preheader ]
  %i.ciq = fmul double %.0299376.i.i.i, %.0299376.i.i.i ; 2 uses
  %i.cir = fmul double %.0299376.i.i.i, 4.000000e+00 ; 2 uses
  %i.cis = fneg double %.sroa.2449.0.i.i.i
  %i.cit = insertelement <2 x double> poison, double %i.cir, i64 0
  %i.ciu = shufflevector <2 x double> %i.cit, <2 x double> poison, <2 x i32> zeroinitializer
  %i.civ = fmul <2 x double> %i.cgl, %i.ciu
  %i.ciw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cgk, <2 x double> splat (double 3.000000e+00), <2 x double> %i.civ)
  %i.cix = insertelement <2 x double> poison, double %i.ciq, i64 0
  %i.ciy = shufflevector <2 x double> %i.cix, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ciz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ciy, <2 x double> %i.ciw, <2 x double> %i.cgj) ; 2 uses
  %i.cja = extractelement <2 x double> %i.ciz, i64 0 ; 2 uses
  %i.cjb = call double @llvm.fabs.f64(double %i.cja)
  %i.cjc = fcmp ogt double %i.cjb, %i.cer
  %i.cjd = fdiv double %i.cis, %i.cja
  %.sroa.2444.0.i.i.i = select i1 %i.cjc, double %i.cjd, double 0.000000e+00
  %i.cje = fadd double %.0299376.i.i.i, %.sroa.2444.0.i.i.i ; 6 uses
  store double %i.cje, ptr %i.wv, align 8, !tbaa !29
  %i.cjf = fneg <2 x double> %i.cip
  %i.cjg = fmul double %i.cgu, %i.cir
  %i.cjh = insertelement <2 x double> poison, double %i.cje, i64 0
  %i.cji = shufflevector <2 x double> %i.cjh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cjj = insertelement <2 x double> %i.chz, double %i.cje, i64 0
  %i.cjk = insertelement <2 x double> %i.cha, double %i.cjg, i64 1
  %i.cjl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cjj, <2 x double> %i.cia, <2 x double> %i.cjk) ; 2 uses
  %i.cjm = extractelement <2 x double> %i.cjl, i64 1
  %i.cjn = call double @llvm.fmuladd.f64(double %i.ciq, double %i.cjm, double %i.cgs)
  %i.cjo = shufflevector <2 x double> %i.ciz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cjp = insertelement <2 x double> %i.cjo, double %i.cjn, i64 1 ; 2 uses
  %i.cjq = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cjp)
  %i.cjr = fcmp ogt <2 x double> %i.cjq, %i.cic
  %i.cjs = fdiv <2 x double> %i.cjf, %i.cjp
  %i.cjt = select <2 x i1> %i.cjr, <2 x double> %i.cjs, <2 x double> zeroinitializer
  %i.cju = insertelement <2 x double> poison, double %.0299376.i.i.i, i64 0
  %i.cjv = shufflevector <2 x double> %i.cju, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cjw = fadd <2 x double> %i.cjv, %i.cjt       ; 9 uses
  %i.cjx = extractelement <2 x double> %i.cjw, i64 0 ; 4 uses
  store double %i.cjx, ptr %i.ww, align 16, !tbaa !29
  %i.cjy = extractelement <2 x double> %i.cjw, i64 1
  store double %i.cjy, ptr %i.wx, align 8, !tbaa !29
  %foldExtExtBinop1130 = fmul <2 x double> %i.cjw, %i.cjw ; 2 uses
  %i.cjz = extractelement <2 x double> %foldExtExtBinop1130, i64 0
  %i.cka = call double @llvm.fmuladd.f64(double %i.cjx, double %i.cgn, double %i.cgm)
  %i.ckb = call double @llvm.fmuladd.f64(double %i.cjz, double %i.cka, double %i.cgp)
  %i.ckc = shufflevector <2 x double> %i.cjw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ckd = insertelement <2 x double> %i.cgl, double %i.ckb, i64 0
  %i.cke = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ckc, <2 x double> %i.ckd, <2 x double> %i.chy) ; 3 uses
  %i.ckf = call double @llvm.fmuladd.f64(double %i.cje, double %i.cgn, double %i.cgm)
  %i.ckg = extractelement <2 x double> %i.cke, i64 0
  %i.ckh = shufflevector <2 x double> %i.cke, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  store double %i.ckg, ptr %gep364.1421.i.i.i, align 16, !tbaa !29
  %i.cki = call double @llvm.fmuladd.f64(double %i.cjx, double %i.cgu, double %i.cgt)
  %i.ckj = shufflevector <2 x double> %i.cjw, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ckk = insertelement <2 x double> %i.ckj, double %i.cje, i64 1 ; 3 uses
  %i.ckl = fmul <2 x double> %i.ckk, %i.ckk       ; 4 uses
  %i.ckm = extractelement <2 x double> %i.ckl, i64 1 ; 2 uses
  %i.ckn = extractelement <2 x double> %i.cjl, i64 0
  %i.cko = call double @llvm.fmuladd.f64(double %i.ckm, double %i.ckn, double %i.chw)
  %i.ckp = insertelement <2 x double> %i.cii, double %i.cko, i64 0
  %i.ckq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cji, <2 x double> %i.ckp, <2 x double> %i.chx) ; 2 uses
  %i.ckr = extractelement <2 x double> %i.ckq, i64 0 ; 2 uses
  store double %i.ckr, ptr %gep364.1.i.i.i, align 8, !tbaa !29
  %i.cks = call double @llvm.fabs.f64(double %i.ckr)
  %i.ckt = fdiv double %i.cks, %i.cfa             ; 2 uses
  %i.cku = call double @llvm.fmuladd.f64(double %i.ckm, double %i.ckf, double %i.cgp)
  %i.ckv = call double @llvm.fmuladd.f64(double %i.cje, double %i.cku, double %i.cgi) ; 2 uses
  store double %i.ckv, ptr %gep364.i.i.i, align 8, !tbaa !29
  %i.ckw = insertelement <2 x double> %i.ckh, double %i.ckv, i64 0
  %i.ckx = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ckw)
  %i.cky = fdiv <2 x double> %i.ckx, %i.cid       ; 3 uses
  %i.ckz = fcmp ogt <2 x double> %i.cky, zeroinitializer ; 2 uses
  %i.cla = extractelement <2 x i1> %i.ckz, i64 0
  %i.clb = extractelement <2 x double> %i.cky, i64 0
  %.1291.i.i.i = select i1 %i.cla, double %i.clb, double 0.000000e+00 ; 2 uses
  %i.clc = fcmp ogt double %i.ckt, %.1291.i.i.i
  %.1291.1.i.i.i = select i1 %i.clc, double %i.ckt, double %.1291.i.i.i ; 2 uses
  %i.cld = extractelement <2 x i1> %i.ckz, i64 1
  %i.cle = extractelement <2 x double> %i.cky, i64 1
  %.1291.1422.i.i.i = select i1 %i.cld, double %i.cle, double 0.000000e+00
  %i.clf = shufflevector <2 x double> %i.ckl, <2 x double> %i.cjw, <2 x i32> <i32 0, i32 3>
  %i.clg = shufflevector <2 x double> %i.cjw, <2 x double> %i.ckl, <2 x i32> <i32 1, i32 2>
  %i.clh = shufflevector <2 x double> %foldExtExtBinop1130, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cli = insertelement <2 x double> %i.cke, double %i.cki, i64 0
  %i.clj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.clh, <2 x double> %i.cli, <2 x double> %i.cio) ; 2 uses
  %i.clk = shufflevector <2 x double> %i.clj, <2 x double> %i.cgl, <2 x i32> <i32 0, i32 2>
  %i.cll = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cjw, <2 x double> %i.clk, <2 x double> %i.cif) ; 3 uses
  %i.clm = extractelement <2 x double> %i.cll, i64 0
  store double %i.clm, ptr %gep364.2.1.i.i.i, align 16, !tbaa !29
  %i.cln = shufflevector <2 x double> %i.cll, <2 x double> %i.cgl, <2 x i32> <i32 1, i32 3>
  %i.clo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.clf, <2 x double> %i.cln, <2 x double> %i.cig)
  %i.clp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.clg, <2 x double> %i.clo, <2 x double> %i.cih) ; 3 uses
  %i.clq = shufflevector <2 x double> %i.clp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.clr = insertelement <2 x double> %i.clq, double %i.cgu, i64 1
  %i.cls = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ckj, <2 x double> %i.clr, <2 x double> %i.chx) ; 3 uses
  %i.clt = extractelement <2 x double> %i.cls, i64 0
  store double %i.clt, ptr %gep364.1.2.i.i.i, align 8, !tbaa !29
  %i.clu = shufflevector <2 x double> %i.cls, <2 x double> %i.ckq, <2 x i32> <i32 1, i32 3>
  %i.clv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ckl, <2 x double> %i.clu, <2 x double> %i.cik)
  %i.clw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ckk, <2 x double> %i.clv, <2 x double> %i.cil) ; 3 uses
  %i.clx = extractelement <2 x double> %i.clw, i64 0
  store double %i.clx, ptr %gep364.2.2.i.i.i, align 8, !tbaa !29
  %i.cly = extractelement <2 x double> %i.clw, i64 1
  store double %i.cly, ptr %gep364.2.i.i.i, align 8, !tbaa !29
  %i.clz = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.clw)
  %i.cma = fdiv <2 x double> %i.clz, %i.cin       ; 3 uses
  %i.cmb = extractelement <2 x double> %i.cma, i64 1 ; 2 uses
  %i.cmc = fcmp ogt double %i.cmb, %.1291.1.i.i.i
  %.1291.2.i.i.i = select i1 %i.cmc, double %i.cmb, double %.1291.1.i.i.i ; 3 uses
  %i.cmd = extractelement <2 x double> %i.clj, i64 1
  %i.cme = call double @llvm.fmuladd.f64(double %i.cjx, double %i.cmd, double %i.cie) ; 2 uses
  store double %i.cme, ptr %gep364.1.1.i.i.i, align 16, !tbaa !29
  %i.cmf = extractelement <2 x double> %i.clp, i64 0
  store double %i.cmf, ptr %gep364.2423.i.i.i, align 8, !tbaa !29
  %i.cmg = insertelement <2 x double> %i.clp, double %i.cme, i64 1
  %i.cmh = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cmg)
  %i.cmi = fdiv <2 x double> %i.cmh, %6           ; 2 uses
  %i.cmj = insertelement <2 x double> <double 0.000000e+00, double poison>, double %.1291.1422.i.i.i, i64 1 ; 2 uses
  %i.cmk = fcmp ogt <2 x double> %i.cmi, %i.cmj
  %i.cml = select <2 x i1> %i.cmk, <2 x double> %i.cmi, <2 x double> %i.cmj ; 2 uses
  %i.cmm = shufflevector <2 x double> %i.cls, <2 x double> %i.cll, <2 x i32> <i32 0, i32 2>
  %i.cmn = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cmm)
  %i.cmo = fdiv <2 x double> %i.cmn, %8           ; 2 uses
  %i.cmp = fcmp ogt <2 x double> %i.cmo, %i.cml
  %i.cmq = select <2 x i1> %i.cmp, <2 x double> %i.cmo, <2 x double> %i.cml ; 3 uses
  %i.cmr = fadd double %.1291.2.i.i.i, 1.000000e+00 ; 2 uses
  %i.cms = fcmp olt double %.1291.2.i.i.i, %i.cmr ; 2 uses
  %.2307.i.i.i = select i1 %i.cms, i32 1, i32 %.0305375.i.i.i
  %.2.i.i302.i = select i1 %i.cms, double %.1291.2.i.i.i, double %i.cmr ; 2 uses
  %i.cmt = insertelement <2 x double> %i.cma, double %.2.i.i302.i, i64 1
  %i.cmu = fcmp ogt <2 x double> %i.cmt, %i.cmq   ; 2 uses
  %i.cmv = extractelement <2 x i1> %i.cmu, i64 1
  %.2307.1.i.i.i = select i1 %i.cmv, i32 2, i32 %.2307.i.i.i
  %i.cmw = shufflevector <2 x double> %i.cma, <2 x double> %i.cmq, <2 x i32> <i32 0, i32 3>
  %i.cmx = insertelement <2 x double> %i.cmq, double %.2.i.i302.i, i64 1
  %i.cmy = select <2 x i1> %i.cmu, <2 x double> %i.cmw, <2 x double> %i.cmx ; 2 uses
  %i.cmz = extractelement <2 x double> %i.cmy, i64 0 ; 2 uses
  %i.cna = extractelement <2 x double> %i.cmy, i64 1 ; 2 uses
  %i.cnb = fcmp olt double %i.cmz, %i.cna         ; 2 uses
  %.2307.2.i.i.i = select i1 %i.cnb, i32 3, i32 %.2307.1.i.i.i ; 2 uses
  %.2.2.i.i.i = select i1 %i.cnb, double %i.cmz, double %i.cna ; 2 uses
  %i.cnc = zext nneg i32 %.2307.2.i.i.i to i64    ; 2 uses
  %i.cnd = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cnc
  %i.cne = load double, ptr %i.cnd, align 8, !tbaa !29 ; 2 uses
  %i.cnf = fcmp olt double %.2.2.i.i.i, 1.000000e-03
  br i1 %i.cnf, label %bb.nn, label %.preheader.i.i303.i

.preheader.i.i303.i:                              ; preds = %.preheader335.i.i.i
  %invariant.gep371.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.cnc ; 3 uses
  %gep372.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep371.i.i.i, i64 32
  %i.cng = load double, ptr %gep372.i.i.i, align 8, !tbaa !29
  %gep372.1.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep371.i.i.i, i64 64
  %i.cnh = load double, ptr %gep372.1.i.i.i, align 8, !tbaa !29
  %gep372.2.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep371.i.i.i, i64 96
  %i.cni = load double, ptr %gep372.2.i.i.i, align 8, !tbaa !29
  %i.cnj = add nuw nsw i32 %.0308374.i.i.i, 1     ; 2 uses
  %exitcond433.not.i.i.i = icmp eq i32 %i.cnj, 4
  %i.cnk = insertelement <2 x double> poison, double %i.cnh, i64 0
  %i.cnl = insertelement <2 x double> %i.cnk, double %i.cni, i64 1
  br i1 %exitcond433.not.i.i.i, label %bb.nn, label %.preheader335.i.i.i

bb.nn:                                            ; preds = %.preheader.i.i303.i, %.preheader335.i.i.i
  %.0302.i.i.i = phi i32 [ 0, %.preheader.i.i303.i ], [ 3, %.preheader335.i.i.i ]
  %i.cnm = fcmp ogt double %.2.2.i.i.i, 1.000000e-03
  br i1 %i.cnm, label %cvSLdet.exit.thread.i.i, label %bb.no

bb.no:                                            ; preds = %bb.nn, %.preheader338.i.i.i, %bb.ni
  %.1303.i.i.i = phi i32 [ %.0302.i.i.i, %bb.nn ], [ 1, %bb.ni ], [ 2, %.preheader338.i.i.i ] ; 2 uses
  %.2301.i.i.i = phi double [ %i.cne, %bb.nn ], [ %i.cea, %bb.ni ], [ %i.cge, %.preheader338.i.i.i ] ; 22 uses
  %i.cnn = fmul double %.2301.i.i.i, %.2301.i.i.i ; 3 uses
  %i.cno = load double, ptr %i.ve, align 8, !tbaa !29
  %i.cnp = fmul double %.2301.i.i.i, %i.cno       ; 2 uses
  %i.cnq = load double, ptr %i.vd, align 8, !tbaa !29 ; 2 uses
  %i.cnr = fmul double %.2301.i.i.i, %i.cnq
  %i.cns = fmul double %.2301.i.i.i, %i.cnr       ; 2 uses
  %i.cnt = load double, ptr %i.vb, align 8, !tbaa !29
  %i.cnu = fmul double %.2301.i.i.i, %i.cnt
  %i.cnv = fmul double %.2301.i.i.i, %i.cnu
  %i.cnw = fmul double %.2301.i.i.i, %i.cnv
  %i.cnx = fsub double %i.cnp, %i.cns             ; 4 uses
  %i.cny = fsub double %i.cns, %i.cnw
  %i.cnz = fsub double %i.cnx, %i.cny             ; 2 uses
  %i.coa = call double @llvm.fabs.f64(double %i.cnx)
  %i.cob = load double, ptr %i.xa, align 8, !tbaa !29
  %i.coc = fmul double %i.cob, 1.000000e-10
  %i.cod = fcmp olt double %i.coa, %i.coc
  br i1 %i.cod, label %cvSLdet.exit.thread.i.i, label %bb.np

bb.np:                                            ; preds = %bb.no
  %i.coe = load double, ptr %i.vf, align 8, !tbaa !29
  %i.cof = fsub double %i.coe, %i.cnp
  %i.cog = fsub double %i.cof, %i.cnx
  %i.coh = fsub double %i.cog, %i.cnz
  %i.coi = fneg double %i.coh
  %i.coj = fdiv double %i.coi, %i.cnx             ; 3 uses
  %i.cok = fcmp olt double %i.coj, 1.000000e-10
  %i.col = fcmp ogt double %i.coj, 4.000000e+00
  %or.cond3.i.i.i = or i1 %i.cok, %i.col
  br i1 %or.cond3.i.i.i, label %cvSLdet.exit.thread.i.i, label %bb.nq

bb.nq:                                            ; preds = %bb.np
  %i.com = fdiv double %i.cnz, %i.coj
  %i.con = fdiv double %i.com, %i.cnn
  %i.coo = fadd double %i.cnq, %i.con
  %i.cop = load double, ptr %i.vi, align 8, !tbaa !29
  %i.coq = fmul double %.2301.i.i.i, %i.cop       ; 2 uses
  %i.cor = load double, ptr %i.vh, align 8, !tbaa !29 ; 2 uses
  %i.cos = fmul double %.2301.i.i.i, %i.cor
  %i.cot = fmul double %.2301.i.i.i, %i.cos       ; 2 uses
  %i.cou = load double, ptr %i.vg, align 8, !tbaa !29
  %i.cov = fmul double %.2301.i.i.i, %i.cou
  %i.cow = fmul double %.2301.i.i.i, %i.cov
  %i.cox = fmul double %.2301.i.i.i, %i.cow
  %i.coy = fsub double %i.coq, %i.cot             ; 4 uses
  %i.coz = fsub double %i.cot, %i.cox
  %i.cpa = fsub double %i.coy, %i.coz             ; 2 uses
  %i.cpb = call double @llvm.fabs.f64(double %i.coy)
  %i.cpc = load double, ptr %i.xb, align 16, !tbaa !29
  %i.cpd = fmul double %i.cpc, 1.000000e-10
  %i.cpe = fcmp olt double %i.cpb, %i.cpd
  br i1 %i.cpe, label %cvSLdet.exit.thread.i.i, label %bb.nr

bb.nr:                                            ; preds = %bb.nq
  %i.cpf = load double, ptr %i.vj, align 8, !tbaa !29
  %i.cpg = fsub double %i.cpf, %i.coq
  %i.cph = fsub double %i.cpg, %i.coy
  %i.cpi = fsub double %i.cph, %i.cpa
  %i.cpj = fneg double %i.cpi
  %i.cpk = fdiv double %i.cpj, %i.coy             ; 3 uses
  %i.cpl = fcmp olt double %i.cpk, 1.000000e-10
  %i.cpm = fcmp ogt double %i.cpk, 4.000000e+00
  %or.cond3.1.i.i.i = or i1 %i.cpl, %i.cpm
  br i1 %or.cond3.1.i.i.i, label %cvSLdet.exit.thread.i.i, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  %i.cpn = fdiv double %i.cpa, %i.cpk
  %i.cpo = fdiv double %i.cpn, %i.cnn
  %i.cpp = fadd double %i.cor, %i.cpo             ; 3 uses
  %i.cpq = load double, ptr %i.vn, align 8, !tbaa !29
  %i.cpr = fmul double %.2301.i.i.i, %i.cpq       ; 2 uses
  %i.cps = load double, ptr %i.vm, align 8, !tbaa !29 ; 2 uses
  %i.cpt = fmul double %.2301.i.i.i, %i.cps
  %i.cpu = fmul double %.2301.i.i.i, %i.cpt       ; 2 uses
  %i.cpv = load double, ptr %i.vk, align 8, !tbaa !29
  %i.cpw = fmul double %.2301.i.i.i, %i.cpv
  %i.cpx = fmul double %.2301.i.i.i, %i.cpw
  %i.cpy = fmul double %.2301.i.i.i, %i.cpx
  %i.cpz = fsub double %i.cpr, %i.cpu             ; 4 uses
  %i.cqa = fsub double %i.cpu, %i.cpy
  %i.cqb = fsub double %i.cpz, %i.cqa             ; 2 uses
  %i.cqc = call double @llvm.fabs.f64(double %i.cpz)
  %i.cqd = load double, ptr %i.xc, align 8, !tbaa !29
  %i.cqe = fmul double %i.cqd, 1.000000e-10
  %i.cqf = fcmp olt double %i.cqc, %i.cqe
  br i1 %i.cqf, label %cvSLdet.exit.thread.i.i, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  %i.cqg = load double, ptr %i.vo, align 8, !tbaa !29
  %i.cqh = fsub double %i.cqg, %i.cpr
  %i.cqi = fsub double %i.cqh, %i.cpz
  %i.cqj = fsub double %i.cqi, %i.cqb
  %i.cqk = fneg double %i.cqj
  %i.cql = fdiv double %i.cqk, %i.cpz             ; 3 uses
  %i.cqm = fcmp olt double %i.cql, 1.000000e-10
  %i.cqn = fcmp ogt double %i.cql, 4.000000e+00
  %or.cond3.2.i.i.i = or i1 %i.cqm, %i.cqn
  %i.cqo = fcmp olt double %i.cpp, 1.000000e-10
  %or.cond.i304.i = select i1 %or.cond3.2.i.i.i, i1 true, i1 %i.cqo
  br i1 %or.cond.i304.i, label %cvSLdet.exit.thread.i.i, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  %i.cqp = fdiv double %i.cqb, %i.cql
  %i.cqq = fdiv double %i.cqp, %i.cnn
  %i.cqr = fadd double %i.cps, %i.cqq
  %i.cqs = fdiv double %i.cqr, %i.cpp             ; 2 uses
  %i.cqt = fdiv double %i.coo, %i.cpp
  %i.cqu = mul nuw nsw i32 %i.cal, %i.cal
  %i.cqv = add nsw i32 %i.cqu, -1
  %i.cqw = uitofp nneg i32 %i.cqv to double
  %i.cqx = add nsw i32 %i.cal, -1                 ; 2 uses
  %i.cqy = uitofp nneg i32 %i.cqx to double
  %i.cqz = call double @llvm.fmuladd.f64(double %i.cqs, double %i.cqt, double -1.000000e+00)
  %i.cra = fmul nnan double %i.cqw, -2.500000e-01
  %i.crb = call double @llvm.fmuladd.f64(double %i.cra, double %i.cqs, double %i.cqz)
  %i.crc = fdiv double -2.000000e+00, %i.cqy
  %i.crd = call double @llvm.fmuladd.f64(double %i.crc, double %i.crb, double 1.000000e+00) ; 2 uses
  %i.cre = call double @llvm.fabs.f64(double %i.crd)
  %i.crf = fcmp olt double %i.cre, 1.000000e-10
  br i1 %i.crf, label %cvSLdet.exit.thread.i.i, label %bb.nv

bb.nv:                                            ; preds = %bb.nu
  %i.crg = fdiv double 1.000000e+00, %i.crd
  %i.crh = fsub double %i.crg, %.2301.i.i.i
  %i.cri = call double @llvm.fabs.f64(double %i.crh)
  %i.crj = fcmp ule double %i.cri, 1.000000e-02
  %i.crk = fcmp ogt double %.2301.i.i.i, f0x3FEF5C28F5C28F5C
  %or.cond80.i.i = select i1 %i.crj, i1 %i.crk, i1 false
  br i1 %or.cond80.i.i, label %bb.nw, label %cvSLdet.exit.thread.i.i

bb.nw:                                            ; preds = %bb.nv
  %i.crl = icmp eq i32 %.1303.i.i.i, 1            ; 2 uses
  %spec.store.select.i.i.i = select i1 %i.crl, i32 4, i32 %.1303.i.i.i ; 2 uses
  %i.crm = icmp eq i32 %spec.store.select.i.i.i, 3
  br i1 %i.crm, label %cvSLdet.exit.thread78.i.i, label %cvSLdet.exit.i.i

cvSLdet.exit.thread78.i.i:                        ; preds = %bb.nw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.nx

cvSLdet.exit.thread.i.i:                          ; preds = %bb.ne, %bb.nv, %bb.nu, %bb.nt, %bb.ns, %bb.nr, %bb.nq, %bb.np, %bb.no, %bb.nn, %bb.nm, %bb.nl, %bb.nk, %bb.nj, %bb.ni, %bb.nh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
end_hunk_1
