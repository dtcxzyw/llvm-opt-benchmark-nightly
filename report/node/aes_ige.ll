begin_hunk_0_@AES_bi_ige_encrypt:bb.a
  store i8 %i.oj, ptr %i.ls, align 1, !tbaa !14
  %i.ok = getelementptr inbounds nuw i8, ptr %5, i64 60
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !14
  %i.om = load i8, ptr %i.lx, align 1, !tbaa !14
  %i.on = xor i8 %i.om, %i.ol
  store i8 %i.on, ptr %i.lx, align 1, !tbaa !14
  %i.oo = getelementptr inbounds nuw i8, ptr %5, i64 61
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !14
  %i.oq = load i8, ptr %i.mc, align 1, !tbaa !14
  %i.or = xor i8 %i.oq, %i.op
  store i8 %i.or, ptr %i.mc, align 1, !tbaa !14
  %i.os = getelementptr inbounds nuw i8, ptr %5, i64 62
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !14
  %i.ou = load i8, ptr %i.mh, align 1, !tbaa !14
  %i.ov = xor i8 %i.ou, %i.ot
  store i8 %i.ov, ptr %i.mh, align 1, !tbaa !14
  %i.ow = getelementptr inbounds nuw i8, ptr %5, i64 63
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !14
  %i.oy = load i8, ptr %i.mm, align 1, !tbaa !14
  %i.oz = xor i8 %i.oy, %i.ox
  store i8 %i.oz, ptr %i.mm, align 1, !tbaa !14
  %.sroa.8.0..sroa_idx181 = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %.sroa.16.0..sroa_idx205 = getelementptr inbounds nuw i8, ptr %i.a, i64 5 ; 2 uses
  %.sroa.18.0..sroa_idx211 = getelementptr inbounds nuw i8, ptr %i.a, i64 6 ; 2 uses
  %.sroa.22.0..sroa_idx223 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.pa = add i64 %2, -16                         ; 2 uses
  %i.pb = icmp ugt i64 %i.pa, 15
  br i1 %i.pb, label %.lr.ph167.peel.next, label %.loopexit

.lr.ph167.peel.next:                              ; preds = %.lr.ph167.preheader
  %i.pc = load <8 x i8>, ptr %.sroa.22.0..sroa_idx223, align 8
  %i.pd = load <2 x i8>, ptr %.sroa.18.0..sroa_idx211, align 2
  %.sroa.16.0.copyload206 = load i8, ptr %.sroa.16.0..sroa_idx205, align 1
  %i.pe = load <4 x i8>, ptr %.sroa.8.0..sroa_idx181, align 1
  br label %.lr.ph167

.lr.ph167:                                        ; preds = %.lr.ph167.peel.next, %.lr.ph167
  %.sroa.16.1 = phi i8 [ %.sroa.16.0.copyload206, %.lr.ph167.peel.next ], [ %.sroa.16.0.copyload202, %.lr.ph167 ]
  %.1113164 = phi ptr [ %i.jo, %.lr.ph167.peel.next ], [ %i.pj, %.lr.ph167 ] ; 2 uses
  %.1117163 = phi i64 [ %i.pa, %.lr.ph167.peel.next ], [ %i.pz, %.lr.ph167 ]
  %i.pf = phi <8 x i8> [ %i.pc, %.lr.ph167.peel.next ], [ %i.py, %.lr.ph167 ]
  %i.pg = phi <4 x i8> [ %i.pe, %.lr.ph167.peel.next ], [ %i.pw, %.lr.ph167 ]
  %i.ph = phi <2 x i8> [ %i.pd, %.lr.ph167.peel.next ], [ %i.px, %.lr.ph167 ]
  %i.pi = load <16 x i8>, ptr %i.a, align 16
  %i.pj = getelementptr inbounds i8, ptr %.1113164, i64 -16 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %i.pj, i64 16, i1 false)
  %i.pk = load <16 x i8>, ptr %.1113164, align 1, !tbaa !14
  %i.pl = load <16 x i8>, ptr %i.pj, align 1, !tbaa !14
  %i.pm = xor <16 x i8> %i.pl, %i.pk
  store <16 x i8> %i.pm, ptr %i.pj, align 1, !tbaa !14
  tail call void @AES_encrypt(ptr noundef nonnull %i.pj, ptr noundef nonnull %i.pj, ptr noundef nonnull %3) #5
  %i.pn = load <16 x i8>, ptr %i.pj, align 1, !tbaa !14
  %i.po = shufflevector <4 x i8> %i.pg, <4 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pp = shufflevector <16 x i8> %i.pi, <16 x i8> %i.po, <16 x i32> <i32 0, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pq = insertelement <16 x i8> %i.pp, i8 %.sroa.16.1, i64 5
  %i.pr = shufflevector <2 x i8> %i.ph, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ps = shufflevector <16 x i8> %i.pq, <16 x i8> %i.pr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pt = shufflevector <8 x i8> %i.pf, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pu = shufflevector <16 x i8> %i.ps, <16 x i8> %i.pt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.pv = xor <16 x i8> %i.pn, %i.pu
  store <16 x i8> %i.pv, ptr %i.pj, align 1, !tbaa !14
  %i.pw = load <4 x i8>, ptr %.sroa.8.0..sroa_idx181, align 1
  %.sroa.16.0.copyload202 = load i8, ptr %.sroa.16.0..sroa_idx205, align 1
  %i.px = load <2 x i8>, ptr %.sroa.18.0..sroa_idx211, align 2
  %i.py = load <8 x i8>, ptr %.sroa.22.0..sroa_idx223, align 8
  %i.pz = add i64 %.1117163, -16                  ; 2 uses
  %i.qa = icmp ugt i64 %i.pz, 15
  br i1 %i.qa, label %.lr.ph167, label %.loopexit, !llvm.loop !20

bb.i:                                             ; preds = %bb.g
  br i1 %i.l, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 16 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 %2 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.qe = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.qf = getelementptr inbounds i8, ptr %i.qc, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %i.qf, i64 16, i1 false)
  %.sroa.38.0..sroa_idx433 = getelementptr inbounds i8, ptr %i.qc, i64 -8
  %i.qg = load <8 x i8>, ptr %.sroa.38.0..sroa_idx433, align 1
  %i.qh = load <16 x i8>, ptr %i.qd, align 1, !tbaa !14
  %i.qi = load <16 x i8>, ptr %i.a, align 16, !tbaa !14
  %i.qj = xor <16 x i8> %i.qi, %i.qh
  store <16 x i8> %i.qj, ptr %i.a, align 16, !tbaa !14
  %i.qk = getelementptr inbounds i8, ptr %i.qb, i64 -16 ; 5 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %5, i64 33
  %i.qm = getelementptr inbounds i8, ptr %i.qb, i64 -15 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %5, i64 34
  %i.qo = getelementptr inbounds i8, ptr %i.qb, i64 -14 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %5, i64 35
  %i.qq = getelementptr inbounds i8, ptr %i.qb, i64 -13 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.qs = getelementptr inbounds i8, ptr %i.qb, i64 -12 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %5, i64 37
  %i.qu = getelementptr inbounds i8, ptr %i.qb, i64 -11 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %5, i64 38
  %i.qw = getelementptr inbounds i8, ptr %i.qb, i64 -10 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %5, i64 39
  %i.qy = getelementptr inbounds i8, ptr %i.qb, i64 -9 ; 2 uses
  %i.qz = load <8 x i8>, ptr %i.qf, align 1
  call void @AES_decrypt(ptr noundef nonnull %i.a, ptr noundef nonnull %i.qk, ptr noundef nonnull %3) #5
  %i.ra = load i8, ptr %i.qe, align 1, !tbaa !14
  %i.rb = load i8, ptr %i.qk, align 1, !tbaa !14
  %i.rc = xor i8 %i.rb, %i.ra                     ; 2 uses
  store i8 %i.rc, ptr %i.qk, align 1, !tbaa !14
  %i.rd = load i8, ptr %i.ql, align 1, !tbaa !14
  %i.re = load i8, ptr %i.qm, align 1, !tbaa !14
  %i.rf = xor i8 %i.re, %i.rd                     ; 2 uses
  store i8 %i.rf, ptr %i.qm, align 1, !tbaa !14
  %i.rg = load i8, ptr %i.qn, align 1, !tbaa !14
  %i.rh = load i8, ptr %i.qo, align 1, !tbaa !14
  %i.ri = xor i8 %i.rh, %i.rg                     ; 2 uses
  store i8 %i.ri, ptr %i.qo, align 1, !tbaa !14
  %i.rj = load i8, ptr %i.qp, align 1, !tbaa !14
  %i.rk = load i8, ptr %i.qq, align 1, !tbaa !14
  %i.rl = xor i8 %i.rk, %i.rj                     ; 2 uses
  store i8 %i.rl, ptr %i.qq, align 1, !tbaa !14
  %i.rm = load i8, ptr %i.qr, align 1, !tbaa !14
  %i.rn = load i8, ptr %i.qs, align 1, !tbaa !14
  %i.ro = xor i8 %i.rn, %i.rm                     ; 2 uses
  store i8 %i.ro, ptr %i.qs, align 1, !tbaa !14
  %i.rp = load i8, ptr %i.qt, align 1, !tbaa !14
  %i.rq = load i8, ptr %i.qu, align 1, !tbaa !14
  %i.rr = xor i8 %i.rq, %i.rp                     ; 2 uses
  store i8 %i.rr, ptr %i.qu, align 1, !tbaa !14
  %i.rs = load i8, ptr %i.qv, align 1, !tbaa !14
  %i.rt = load i8, ptr %i.qw, align 1, !tbaa !14
  %i.ru = xor i8 %i.rt, %i.rs                     ; 2 uses
  store i8 %i.ru, ptr %i.qw, align 1, !tbaa !14
  %i.rv = load i8, ptr %i.qx, align 1, !tbaa !14
  %i.rw = load i8, ptr %i.qy, align 1, !tbaa !14
  %i.rx = xor i8 %i.rw, %i.rv                     ; 2 uses
  store i8 %i.rx, ptr %i.qy, align 1, !tbaa !14
  %i.ry = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !14
  %i.sa = getelementptr inbounds i8, ptr %i.qb, i64 -8 ; 2 uses
  %i.sb = load i8, ptr %i.sa, align 1, !tbaa !14
  %i.sc = getelementptr inbounds nuw i8, ptr %5, i64 41
  %i.sd = getelementptr inbounds i8, ptr %i.qb, i64 -7 ; 2 uses
  %i.se = load i8, ptr %i.sd, align 1, !tbaa !14
  %i.sf = xor i8 %i.sb, %i.rz                     ; 2 uses
  store i8 %i.sf, ptr %i.sa, align 1, !tbaa !14
  %i.sg = load i8, ptr %i.sc, align 1, !tbaa !14
  %i.sh = xor i8 %i.se, %i.sg                     ; 2 uses
  store i8 %i.sh, ptr %i.sd, align 1, !tbaa !14
  %i.si = getelementptr inbounds nuw i8, ptr %5, i64 42
  %i.sj = load i8, ptr %i.si, align 1, !tbaa !14
  %i.sk = getelementptr inbounds i8, ptr %i.qb, i64 -6 ; 2 uses
  %i.sl = load i8, ptr %i.sk, align 1, !tbaa !14
  %i.sm = xor i8 %i.sl, %i.sj
  store i8 %i.sm, ptr %i.sk, align 1, !tbaa !14
  %i.sn = getelementptr inbounds nuw i8, ptr %5, i64 43
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !14
  %i.sp = getelementptr inbounds i8, ptr %i.qb, i64 -5 ; 2 uses
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !14
  %i.sr = xor i8 %i.sq, %i.so
  store i8 %i.sr, ptr %i.sp, align 1, !tbaa !14
  %i.ss = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !14
  %i.su = getelementptr inbounds i8, ptr %i.qb, i64 -4 ; 2 uses
  %i.sv = load i8, ptr %i.su, align 1, !tbaa !14
  %i.sw = xor i8 %i.sv, %i.st
  store i8 %i.sw, ptr %i.su, align 1, !tbaa !14
  %i.sx = getelementptr inbounds nuw i8, ptr %5, i64 45
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !14
  %i.sz = getelementptr inbounds i8, ptr %i.qb, i64 -3 ; 2 uses
  %i.ta = load i8, ptr %i.sz, align 1, !tbaa !14
  %i.tb = xor i8 %i.ta, %i.sy
  store i8 %i.tb, ptr %i.sz, align 1, !tbaa !14
  %i.tc = getelementptr inbounds nuw i8, ptr %5, i64 46
  %i.td = load i8, ptr %i.tc, align 1, !tbaa !14
  %i.te = getelementptr inbounds i8, ptr %i.qb, i64 -2 ; 2 uses
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !14
  %i.tg = xor i8 %i.tf, %i.td
  store i8 %i.tg, ptr %i.te, align 1, !tbaa !14
  %i.th = getelementptr inbounds nuw i8, ptr %5, i64 47
  %i.ti = load i8, ptr %i.th, align 1, !tbaa !14
  %i.tj = getelementptr inbounds i8, ptr %i.qb, i64 -1 ; 2 uses
  %i.tk = load i8, ptr %i.tj, align 1, !tbaa !14
  %i.tl = xor i8 %i.tk, %i.ti
  store i8 %i.tl, ptr %i.tj, align 1, !tbaa !14
  %i.tm = add i64 %2, -16                         ; 2 uses
  %i.tn = icmp ugt i64 %i.tm, 15
  br i1 %i.tn, label %.lr.ph.preheader489, label %.lr.ph150.preheader

.lr.ph.preheader489:                              ; preds = %.lr.ph.preheader
  %i.to = insertelement <2 x i8> poison, i8 %i.sf, i64 0
  %i.tp = insertelement <2 x i8> %i.to, i8 %i.sh, i64 1
  %i.tq = insertelement <8 x i8> poison, i8 %i.rc, i64 0
  %i.tr = insertelement <8 x i8> %i.tq, i8 %i.rf, i64 1
  %i.ts = insertelement <8 x i8> %i.tr, i8 %i.ri, i64 2
  %i.tt = insertelement <8 x i8> %i.ts, i8 %i.rl, i64 3
  %i.tu = insertelement <8 x i8> %i.tt, i8 %i.ro, i64 4
  %i.tv = insertelement <8 x i8> %i.tu, i8 %i.rr, i64 5
  %i.tw = insertelement <8 x i8> %i.tv, i8 %i.ru, i64 6
  %i.tx = insertelement <8 x i8> %i.tw, i8 %i.rx, i64 7
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader489, %.lr.ph
  %.2142 = phi ptr [ %i.uf, %.lr.ph ], [ %i.qk, %.lr.ph.preheader489 ] ; 4 uses
  %.2118140 = phi i64 [ %i.uu, %.lr.ph ], [ %i.tm, %.lr.ph.preheader489 ]
  %.1125139 = phi ptr [ %i.uc, %.lr.ph ], [ %i.qf, %.lr.ph.preheader489 ] ; 2 uses
  %i.ty = phi <8 x i8> [ %i.ur, %.lr.ph ], [ %i.tx, %.lr.ph.preheader489 ]
  %i.tz = phi <8 x i8> [ %i.ug, %.lr.ph ], [ %i.qz, %.lr.ph.preheader489 ]
  %i.ua = phi <8 x i8> [ %i.up, %.lr.ph ], [ %i.qg, %.lr.ph.preheader489 ]
  %i.ub = phi <2 x i8> [ %i.uw, %.lr.ph ], [ %i.tp, %.lr.ph.preheader489 ]
  %i.uc = getelementptr inbounds i8, ptr %.1125139, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %i.uc, i64 16, i1 false)
  %.sroa.38.0..sroa_idx = getelementptr inbounds i8, ptr %.1125139, i64 -8
  %i.ud = getelementptr inbounds nuw i8, ptr %.2142, i64 10
  %i.ue = getelementptr inbounds nuw i8, ptr %.2142, i64 14
  %i.uf = getelementptr inbounds i8, ptr %.2142, i64 -16 ; 5 uses
  %i.ug = load <8 x i8>, ptr %i.uc, align 1
  %7 = load <4 x i8>, ptr %i.ud, align 1, !tbaa !14
  %8 = load <2 x i8>, ptr %i.ue, align 1, !tbaa !14
  %i.uh = load <16 x i8>, ptr %i.a, align 16, !tbaa !14
  %9 = shufflevector <2 x i8> %8, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ui = shufflevector <4 x i8> %7, <4 x i8> %9, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5>
  %i.uj = shufflevector <2 x i8> %i.ub, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.uk = shufflevector <16 x i8> %i.ui, <16 x i8> %i.uj, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ul = shufflevector <8 x i8> %i.ty, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.um = shufflevector <16 x i8> %i.ul, <16 x i8> %i.uk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.un = xor <16 x i8> %i.uh, %i.um
  store <16 x i8> %i.un, ptr %i.a, align 16, !tbaa !14
  %i.uo = getelementptr inbounds i8, ptr %.2142, i64 -8 ; 2 uses
  %i.up = load <8 x i8>, ptr %.sroa.38.0..sroa_idx, align 1
  call void @AES_decrypt(ptr noundef nonnull %i.a, ptr noundef nonnull %i.uf, ptr noundef nonnull %3) #5
  %i.uq = load <8 x i8>, ptr %i.uf, align 1, !tbaa !14
  %i.ur = xor <8 x i8> %i.uq, %i.tz               ; 2 uses
  store <8 x i8> %i.ur, ptr %i.uf, align 1, !tbaa !14
  %i.us = load <8 x i8>, ptr %i.uo, align 1, !tbaa !14
  %i.ut = xor <8 x i8> %i.us, %i.ua               ; 2 uses
  store <8 x i8> %i.ut, ptr %i.uo, align 1, !tbaa !14
  %i.uu = add i64 %.2118140, -16                  ; 2 uses
  %i.uv = icmp ugt i64 %i.uu, 15
  %i.uw = shufflevector <8 x i8> %i.ut, <8 x i8> poison, <2 x i32> <i32 0, i32 1>
  br i1 %i.uv, label %.lr.ph, label %.lr.ph150.preheader, !llvm.loop !21

.lr.ph150.preheader:                              ; preds = %.lr.ph, %.lr.ph.preheader
  %.2129.lcssa.ph = phi ptr [ %i.qk, %.lr.ph.preheader ], [ %i.uf, %.lr.ph ] ; 21 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %.2129.lcssa.ph, i64 16, i1 false)
  %.sroa.10397.0..2129.lcssa.sroa_idx = getelementptr inbounds nuw i8, ptr %.2129.lcssa.ph, i64 1 ; 2 uses
  %.sroa.14402.0..2129.lcssa.sroa_idx = getelementptr inbounds nuw i8, ptr %.2129.lcssa.ph, i64 2 ; 2 uses
  %.sroa.18407.0..2129.lcssa.sroa_idx = getelementptr inbounds nuw i8, ptr %.2129.lcssa.ph, i64 3 ; 2 uses
  %.sroa.22412.0..2129.lcssa.sroa_idx = getelementptr inbounds nuw i8, ptr %.2129.lcssa.ph, i64 4 ; 2 uses
  %.sroa.26417.0..2129.lcssa.sroa_idx = getelementptr inbounds nuw i8, ptr %.2129.lcssa.ph, i64 5 ; 2 uses
  %.sroa.30422.0..2129.lcssa.sroa_idx = getelementptr inbounds nuw i8, ptr %.2129.lcssa.ph, i64 6 ; 2 uses
  %.sroa.34427.0..2129.lcssa.sroa_idx = getelementptr inbounds nuw i8, ptr %.2129.lcssa.ph, i64 7 ; 2 uses
  %.sroa.38.0..2129.lcssa.sroa_idx = getelementptr inbounds nuw i8, ptr %.2129.lcssa.ph, i64 8 ; 2 uses
  %.sroa.42.0..2129.lcssa.sroa_idx = getelementptr inbounds nuw i8, ptr %.2129.lcssa.ph, i64 9 ; 2 uses
  %.sroa.46.0..2129.lcssa.sroa_idx = getelementptr inbounds nuw i8, ptr %.2129.lcssa.ph, i64 10 ; 2 uses
  %.sroa.50.0..2129.lcssa.sroa_idx = getelementptr inbounds nuw i8, ptr %.2129.lcssa.ph, i64 11 ; 2 uses
  %.sroa.54.0..2129.lcssa.sroa_idx = getelementptr inbounds nuw i8, ptr %.2129.lcssa.ph, i64 12 ; 2 uses
  %.sroa.58.0..2129.lcssa.sroa_idx = getelementptr inbounds nuw i8, ptr %.2129.lcssa.ph, i64 13 ; 2 uses
  %.sroa.62.0..2129.lcssa.sroa_idx = getelementptr inbounds nuw i8, ptr %.2129.lcssa.ph, i64 14 ; 2 uses
  %.sroa.66.0..2129.lcssa.sroa_idx = getelementptr inbounds nuw i8, ptr %.2129.lcssa.ph, i64 15 ; 2 uses
  %i.uy = load <16 x i8>, ptr %.2129.lcssa.ph, align 1
  %i.uz = load <16 x i8>, ptr %i.ux, align 1, !tbaa !14
  %i.va = load <16 x i8>, ptr %i.a, align 16, !tbaa !14
  %i.vb = xor <16 x i8> %i.va, %i.uz
  store <16 x i8> %i.vb, ptr %i.a, align 16, !tbaa !14
  call void @AES_decrypt(ptr noundef nonnull %i.a, ptr noundef nonnull %.2129.lcssa.ph, ptr noundef nonnull %3) #5
  %i.vc = load i8, ptr %5, align 1, !tbaa !14
  %i.vd = load i8, ptr %.2129.lcssa.ph, align 1, !tbaa !14
  %i.ve = xor i8 %i.vd, %i.vc
  store i8 %i.ve, ptr %.2129.lcssa.ph, align 1, !tbaa !14
  %i.vf = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.vg = load i8, ptr %i.vf, align 1, !tbaa !14
  %i.vh = load i8, ptr %.sroa.10397.0..2129.lcssa.sroa_idx, align 1, !tbaa !14
  %i.vi = xor i8 %i.vh, %i.vg
  store i8 %i.vi, ptr %.sroa.10397.0..2129.lcssa.sroa_idx, align 1, !tbaa !14
  %i.vj = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.vk = load i8, ptr %i.vj, align 1, !tbaa !14
  %i.vl = load i8, ptr %.sroa.14402.0..2129.lcssa.sroa_idx, align 1, !tbaa !14
  %i.vm = xor i8 %i.vl, %i.vk
  store i8 %i.vm, ptr %.sroa.14402.0..2129.lcssa.sroa_idx, align 1, !tbaa !14
  %i.vn = getelementptr inbounds nuw i8, ptr %5, i64 3
  %i.vo = load i8, ptr %i.vn, align 1, !tbaa !14
  %i.vp = load i8, ptr %.sroa.18407.0..2129.lcssa.sroa_idx, align 1, !tbaa !14
  %i.vq = xor i8 %i.vp, %i.vo
  store i8 %i.vq, ptr %.sroa.18407.0..2129.lcssa.sroa_idx, align 1, !tbaa !14
  %i.vr = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.vs = load i8, ptr %i.vr, align 1, !tbaa !14
  %i.vt = load i8, ptr %.sroa.22412.0..2129.lcssa.sroa_idx, align 1, !tbaa !14
  %i.vu = xor i8 %i.vt, %i.vs
  store i8 %i.vu, ptr %.sroa.22412.0..2129.lcssa.sroa_idx, align 1, !tbaa !14
  %i.vv = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.vw = load i8, ptr %i.vv, align 1, !tbaa !14
  %i.vx = load i8, ptr %.sroa.26417.0..2129.lcssa.sroa_idx, align 1, !tbaa !14
  %i.vy = xor i8 %i.vx, %i.vw
  store i8 %i.vy, ptr %.sroa.26417.0..2129.lcssa.sroa_idx, align 1, !tbaa !14
  %i.vz = getelementptr inbounds nuw i8, ptr %5, i64 6
  %i.wa = load i8, ptr %i.vz, align 1, !tbaa !14
  %i.wb = load i8, ptr %.sroa.30422.0..2129.lcssa.sroa_idx, align 1, !tbaa !14
  %i.wc = xor i8 %i.wb, %i.wa
  store i8 %i.wc, ptr %.sroa.30422.0..2129.lcssa.sroa_idx, align 1, !tbaa !14
  %i.wd = getelementptr inbounds nuw i8, ptr %5, i64 7
  %i.we = load i8, ptr %i.wd, align 1, !tbaa !14
  %i.wf = load i8, ptr %.sroa.34427.0..2129.lcssa.sroa_idx, align 1, !tbaa !14
  %i.wg = xor i8 %i.wf, %i.we
  store i8 %i.wg, ptr %.sroa.34427.0..2129.lcssa.sroa_idx, align 1, !tbaa !14
  %i.wh = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.wi = load i8, ptr %i.wh, align 1, !tbaa !14
  %i.wj = load i8, ptr %.sroa.38.0..2129.lcssa.sroa_idx, align 1, !tbaa !14
  %i.wk = xor i8 %i.wj, %i.wi
  store i8 %i.wk, ptr %.sroa.38.0..2129.lcssa.sroa_idx, align 1, !tbaa !14
  %i.wl = getelementptr inbounds nuw i8, ptr %5, i64 9
  %i.wm = load i8, ptr %i.wl, align 1, !tbaa !14
  %i.wn = load i8, ptr %.sroa.42.0..2129.lcssa.sroa_idx, align 1, !tbaa !14
  %i.wo = xor i8 %i.wn, %i.wm
  store i8 %i.wo, ptr %.sroa.42.0..2129.lcssa.sroa_idx, align 1, !tbaa !14
  %i.wp = getelementptr inbounds nuw i8, ptr %5, i64 10
  %i.wq = load i8, ptr %i.wp, align 1, !tbaa !14
  %i.wr = load i8, ptr %.sroa.46.0..2129.lcssa.sroa_idx, align 1, !tbaa !14
  %i.ws = xor i8 %i.wr, %i.wq
  store i8 %i.ws, ptr %.sroa.46.0..2129.lcssa.sroa_idx, align 1, !tbaa !14
  %i.wt = getelementptr inbounds nuw i8, ptr %5, i64 11
  %i.wu = load i8, ptr %i.wt, align 1, !tbaa !14
  %i.wv = load i8, ptr %.sroa.50.0..2129.lcssa.sroa_idx, align 1, !tbaa !14
  %i.ww = xor i8 %i.wv, %i.wu
  store i8 %i.ww, ptr %.sroa.50.0..2129.lcssa.sroa_idx, align 1, !tbaa !14
  %i.wx = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.wy = load i8, ptr %i.wx, align 1, !tbaa !14
  %i.wz = load i8, ptr %.sroa.54.0..2129.lcssa.sroa_idx, align 1, !tbaa !14
  %i.xa = xor i8 %i.wz, %i.wy
  store i8 %i.xa, ptr %.sroa.54.0..2129.lcssa.sroa_idx, align 1, !tbaa !14
  %i.xb = getelementptr inbounds nuw i8, ptr %5, i64 13
  %i.xc = load i8, ptr %i.xb, align 1, !tbaa !14
  %i.xd = load i8, ptr %.sroa.58.0..2129.lcssa.sroa_idx, align 1, !tbaa !14
  %i.xe = xor i8 %i.xd, %i.xc
  store i8 %i.xe, ptr %.sroa.58.0..2129.lcssa.sroa_idx, align 1, !tbaa !14
  %i.xf = getelementptr inbounds nuw i8, ptr %5, i64 14
  %i.xg = load i8, ptr %i.xf, align 1, !tbaa !14
  %i.xh = load i8, ptr %.sroa.62.0..2129.lcssa.sroa_idx, align 1, !tbaa !14
  %i.xi = xor i8 %i.xh, %i.xg
  store i8 %i.xi, ptr %.sroa.62.0..2129.lcssa.sroa_idx, align 1, !tbaa !14
  %i.xj = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.xk = load i8, ptr %i.xj, align 1, !tbaa !14
  %i.xl = load i8, ptr %.sroa.66.0..2129.lcssa.sroa_idx, align 1, !tbaa !14
  %i.xm = xor i8 %i.xl, %i.xk
  store i8 %i.xm, ptr %.sroa.66.0..2129.lcssa.sroa_idx, align 1, !tbaa !14
  %i.xn = add i64 %2, -16                         ; 2 uses
  %i.xo = icmp ugt i64 %i.xn, 15
  br i1 %i.xo, label %.lr.ph150, label %.loopexit

.lr.ph150:                                        ; preds = %.lr.ph150.preheader, %.lr.ph150
  %.3148 = phi ptr [ %.3130145, %.lr.ph150 ], [ %.2129.lcssa.ph, %.lr.ph150.preheader ] ; 2 uses
  %.3119146 = phi i64 [ %i.xw, %.lr.ph150 ], [ %i.xn, %.lr.ph150.preheader ]
  %i.xp = phi <16 x i8> [ %i.xt, %.lr.ph150 ], [ %i.uy, %.lr.ph150.preheader ]
  %.3130145 = getelementptr inbounds nuw i8, ptr %.3148, i64 16 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %.3130145, i64 16, i1 false)
  %i.xq = load <16 x i8>, ptr %.3148, align 1, !tbaa !14
  %i.xr = load <16 x i8>, ptr %i.a, align 16, !tbaa !14
  %i.xs = xor <16 x i8> %i.xr, %i.xq
  store <16 x i8> %i.xs, ptr %i.a, align 16, !tbaa !14
  %i.xt = load <16 x i8>, ptr %.3130145, align 1
  call void @AES_decrypt(ptr noundef nonnull %i.a, ptr noundef nonnull %.3130145, ptr noundef nonnull %3) #5
  %i.xu = load <16 x i8>, ptr %.3130145, align 1, !tbaa !14
  %i.xv = xor <16 x i8> %i.xu, %i.xp
  store <16 x i8> %i.xv, ptr %.3130145, align 1, !tbaa !14
  %i.xw = add i64 %.3119146, -16                  ; 2 uses
  %i.xx = icmp ugt i64 %i.xw, 15
  br i1 %i.xx, label %.lr.ph150, label %.loopexit, !llvm.loop !22

.loopexit:                                        ; preds = %.lr.ph150, %.lr.ph167, %.lr.ph150.preheader, %.lr.ph167.preheader, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{i64 0, i64 16, !14}
!14 = !{!7, !7, i64 0}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12, !19}
!19 = !{!"llvm.loop.peeled.count", i32 1}
!20 = distinct !{!20, !12, !19}
!21 = distinct !{!21, !12, !19}
!22 = distinct !{!22, !12, !19}
end_hunk_0
