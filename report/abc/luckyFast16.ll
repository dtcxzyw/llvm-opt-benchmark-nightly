Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/luckyFast16?download=true
inline.NumInlined: 66
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@minimalSwapAndFlipIVar_superFast_lessThen5:bb.a
  br label %scalar.ph246

scalar.ph246:                                     ; preds = %scalar.ph246.preheader, %scalar.ph246
  %indvars.iv.i95 = phi i64 [ %indvars.iv.next.i96, %scalar.ph246 ], [ %indvars.iv.i95.ph, %scalar.ph246.preheader ] ; 3 uses
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i95 ; 2 uses
  %i.me = load i64, ptr %i.md, align 8, !tbaa !13 ; 4 uses
  %i.mf = and i64 %i.me, %i.km
  %i.mg = shl i64 %i.mf, %.pre-phi178
  %i.mh = and i64 %i.me, %i.kn
  %i.mi = shl i64 %i.mh, %i.cs
  %i.mj = lshr i64 %i.mi, %i.aw
  %i.mk = or i64 %i.mj, %i.mg
  %i.ml = and i64 %i.me, %i.kq
  %i.mm = shl i64 %i.ml, %i.ks
  %i.mn = lshr i64 %i.mm, %i.az
  %i.mo = or i64 %i.mk, %i.mn
  %i.mp = and i64 %i.me, %i.kv
  %i.mq = shl i64 %i.mp, %i.kx
  %i.mr = lshr i64 %i.mq, %i.f
  %i.ms = or i64 %i.mo, %i.mr
  store i64 %i.ms, ptr %i.md, align 8, !tbaa !13
  %indvars.iv.next.i96 = add nsw i64 %indvars.iv.i95, -1
  %.not.i97 = icmp eq i64 %indvars.iv.i95, 0
  br i1 %.not.i97, label %arrangeQuoters_superFast_lessThen5.exit98, label %scalar.ph246, !llvm.loop !28

arrangeQuoters_superFast_lessThen5.exit98:        ; preds = %scalar.ph246, %middle.block278
  %i.mt = load i32, ptr %4, align 4, !tbaa !9
  %i.mu = sub nsw i32 %.026.i, %.024.i
  %i.mv = tail call i32 @llvm.abs.i32(i32 %i.mu, i1 true)
  %i.mw = shl nuw nsw i32 %i.mv, 2
  %i.mx = or disjoint i32 %.026.i, -4
  %i.my = add nsw i32 %i.mx, %i.mw
  %i.mz = tail call i32 @adjustInfoAfterSwap(ptr noundef %3, i32 noundef %i.mt, i32 noundef %1, i32 noundef %i.my) #8
  br label %bb.aq

bb.ae:                                            ; preds = %minTemp2_fast.exit
  %.not62 = icmp slt i32 %.0140, %.0142
  br i1 %.not62, label %bb.af, label %.lr.ph.i99

.lr.ph.i99:                                       ; preds = %bb.ae
  %i.na = udiv i32 %.0140, 100
  %i.nb = zext nneg i32 %.034.i to i64
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.nb
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !9  ; 5 uses
  %i.ne = xor i32 %.034.i, 1
  %i.nf = zext nneg i32 %i.ne to i64
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.nf
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !9  ; 4 uses
  %i.ni = sub nsw i32 3, %i.nh                    ; 2 uses
  %i.nj = sub nsw i32 3, %i.nd                    ; 2 uses
  %i.nk = sext i32 %i.nd to i64
  %i.nl = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.nk
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !13 ; 2 uses
  %i.nn = shl i32 %i.nd, %1
  %i.no = zext nneg i32 %i.nn to i64              ; 2 uses
  %i.np = sext i32 %i.nh to i64
  %i.nq = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.np
  %i.nr = load i64, ptr %i.nq, align 8, !tbaa !13 ; 2 uses
  %i.ns = shl i32 %i.nh, %1
  %i.nt = zext nneg i32 %i.ns to i64              ; 2 uses
  %i.nu = sext i32 %i.ni to i64
  %i.nv = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.nu
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !13 ; 2 uses
  %i.nx = shl i32 %i.ni, %1
  %i.ny = zext nneg i32 %i.nx to i64              ; 2 uses
  %i.nz = sext i32 %i.nj to i64
  %i.oa = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.nz
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !13 ; 2 uses
  %i.oc = shl i32 %i.nj, %1
  %i.od = zext nneg i32 %i.oc to i64              ; 2 uses
  %i.oe = zext nneg i32 %i.na to i64              ; 4 uses
  %i.of = add nuw nsw i64 %i.oe, 1                ; 2 uses
  %min.iters.check317 = icmp ult i32 %.0140, 100
  br i1 %min.iters.check317, label %scalar.ph316.preheader, label %vector.ph318

vector.ph318:                                     ; preds = %.lr.ph.i99
  %n.vec319 = and i64 %i.of, 134217726            ; 3 uses
  %i.og = sub nsw i64 %i.oe, %n.vec319
  %broadcast.splatinsert320 = insertelement <2 x i64> poison, i64 %i.nm, i64 0
  %broadcast.splatinsert322 = insertelement <2 x i64> poison, i64 %i.no, i64 0
  %broadcast.splatinsert324 = insertelement <2 x i64> poison, i64 %i.nr, i64 0
  %broadcast.splatinsert326 = insertelement <2 x i64> poison, i64 %i.nt, i64 0
  %broadcast.splatinsert328 = insertelement <2 x i64> poison, i64 %i.nw, i64 0
  %broadcast.splatinsert330 = insertelement <2 x i64> poison, i64 %i.ny, i64 0
  %broadcast.splatinsert332 = insertelement <2 x i64> poison, i64 %i.ob, i64 0
  %broadcast.splatinsert334 = insertelement <2 x i64> poison, i64 %i.od, i64 0
  %broadcast.splatinsert336 = insertelement <2 x i64> poison, i64 %i.aw, i64 0
  %broadcast.splatinsert338 = insertelement <2 x i64> poison, i64 %i.az, i64 0
  %broadcast.splatinsert340 = insertelement <2 x i64> poison, i64 %i.f, i64 0
  %i.oh = shufflevector <2 x i64> %broadcast.splatinsert324, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.oi = shufflevector <2 x i64> %broadcast.splatinsert326, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.oj = shufflevector <2 x i64> %broadcast.splatinsert336, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ok = shufflevector <2 x i64> %broadcast.splatinsert320, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ol = shufflevector <2 x i64> %broadcast.splatinsert322, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.om = shufflevector <2 x i64> %broadcast.splatinsert328, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.on = shufflevector <2 x i64> %broadcast.splatinsert330, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.oo = shufflevector <2 x i64> %broadcast.splatinsert338, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.op = shufflevector <2 x i64> %broadcast.splatinsert332, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.oq = shufflevector <2 x i64> %broadcast.splatinsert334, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.or = shufflevector <2 x i64> %broadcast.splatinsert340, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body342

vector.body342:                                   ; preds = %vector.body342, %vector.ph318
  %index343 = phi i64 [ 0, %vector.ph318 ], [ %index.next347, %vector.body342 ] ; 2 uses
  %i.os = sub i64 %i.oe, %index343
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.os
  %i.ou = getelementptr inbounds i8, ptr %i.ot, i64 -8 ; 2 uses
  %wide.load344 = load <2 x i64>, ptr %i.ou, align 8, !tbaa !13 ; 4 uses
  %i.ov = and <2 x i64> %wide.load344, %i.oh
  %i.ow = shl <2 x i64> %i.ov, %i.oi
  %i.ox = lshr <2 x i64> %i.ow, %i.oj
  %i.oy = and <2 x i64> %wide.load344, %i.ok
  %i.oz = shl <2 x i64> %i.oy, %i.ol
  %i.pa = or <2 x i64> %i.ox, %i.oz
  %i.pb = and <2 x i64> %wide.load344, %i.om
  %i.pc = shl <2 x i64> %i.pb, %i.on
  %i.pd = lshr <2 x i64> %i.pc, %i.oo
  %i.pe = or <2 x i64> %i.pa, %i.pd
  %i.pf = and <2 x i64> %wide.load344, %i.op
  %i.pg = shl <2 x i64> %i.pf, %i.oq
  %i.ph = lshr <2 x i64> %i.pg, %i.or
  %reverse346 = or <2 x i64> %i.pe, %i.ph
  store <2 x i64> %reverse346, ptr %i.ou, align 8, !tbaa !13
  %index.next347 = add nuw i64 %index343, 2       ; 2 uses
  %i.pi = icmp eq i64 %index.next347, %n.vec319
  br i1 %i.pi, label %middle.block348, label %vector.body342, !llvm.loop !29

middle.block348:                                  ; preds = %vector.body342
  %cmp.n349 = icmp eq i64 %i.of, %n.vec319
  br i1 %cmp.n349, label %arrangeQuoters_superFast_lessThen5.exit103, label %scalar.ph316.preheader

scalar.ph316.preheader:                           ; preds = %.lr.ph.i99, %middle.block348
  %indvars.iv.i100.ph = phi i64 [ %i.oe, %.lr.ph.i99 ], [ %i.og, %middle.block348 ]
  br label %scalar.ph316

scalar.ph316:                                     ; preds = %scalar.ph316.preheader, %scalar.ph316
  %indvars.iv.i100 = phi i64 [ %indvars.iv.next.i101, %scalar.ph316 ], [ %indvars.iv.i100.ph, %scalar.ph316.preheader ] ; 3 uses
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i100 ; 2 uses
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !13 ; 4 uses
  %i.pl = and i64 %i.pk, %i.nm
  %i.pm = shl i64 %i.pl, %i.no
  %i.pn = and i64 %i.pk, %i.nr
  %i.po = shl i64 %i.pn, %i.nt
  %i.pp = lshr i64 %i.po, %i.aw
  %i.pq = or i64 %i.pp, %i.pm
  %i.pr = and i64 %i.pk, %i.nw
  %i.ps = shl i64 %i.pr, %i.ny
  %i.pt = lshr i64 %i.ps, %i.az
  %i.pu = or i64 %i.pq, %i.pt
  %i.pv = and i64 %i.pk, %i.ob
  %i.pw = shl i64 %i.pv, %i.od
  %i.px = lshr i64 %i.pw, %i.f
  %i.py = or i64 %i.pu, %i.px
  store i64 %i.py, ptr %i.pj, align 8, !tbaa !13
  %indvars.iv.next.i101 = add nsw i64 %indvars.iv.i100, -1
  %.not.i102 = icmp eq i64 %indvars.iv.i100, 0
  br i1 %.not.i102, label %arrangeQuoters_superFast_lessThen5.exit103, label %scalar.ph316, !llvm.loop !30

arrangeQuoters_superFast_lessThen5.exit103:       ; preds = %scalar.ph316, %middle.block348
  %i.pz = load i32, ptr %4, align 4, !tbaa !9
  %i.qa = sub nsw i32 %i.nd, %i.nh
  %i.qb = tail call i32 @llvm.abs.i32(i32 %i.qa, i1 true)
  %i.qc = shl i32 %i.qb, 2
  %i.qd = add i32 %i.nd, -4
  %i.qe = add i32 %i.qd, %i.qc
  %i.qf = tail call i32 @adjustInfoAfterSwap(ptr noundef %3, i32 noundef %i.pz, i32 noundef %1, i32 noundef %i.qe) #8
  br label %bb.aq

bb.af:                                            ; preds = %bb.ae
  %i.qg = udiv i32 %.0142, 100                    ; 3 uses
  %i.qh = udiv i32 %.0140, 100                    ; 2 uses
  %.not40.i = icmp samesign ult i32 %i.qg, %i.qh
  br i1 %.not40.i, label %..lr.ph.i124_crit_edge, label %.lr.ph.i104

..lr.ph.i124_crit_edge:                           ; preds = %bb.af
  %.pre179 = zext nneg i32 %i.qg to i64
  br label %.lr.ph.i124

.lr.ph.i104:                                      ; preds = %bb.af
  %i.qi = xor i32 %.026.i, 3                      ; 2 uses
  %i.qj = xor i32 %.024.i, 3                      ; 2 uses
  %i.qk = zext nneg i32 %i.qj to i64
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.qk
  %i.qm = load i64, ptr %i.ql, align 8, !tbaa !13
  %i.qn = shl i32 %i.qj, %1
  %i.qo = zext nneg i32 %i.qn to i64
  %i.qp = zext nneg i32 %i.qi to i64
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.qp
  %i.qr = load i64, ptr %i.qq, align 8, !tbaa !13
  %i.qs = shl i32 %i.qi, %1
  %i.qt = zext nneg i32 %i.qs to i64
  %i.qu = zext nneg i32 %i.qg to i64              ; 7 uses
  %i.qv = zext nneg i32 %i.qh to i64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ap, %.lr.ph.i104
  %indvars.iv.i105 = phi i64 [ %i.qu, %.lr.ph.i104 ], [ %indvars.iv.next.i116, %bb.ap ] ; 4 uses
  %i.qw = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv.i105
  %i.qx = load i64, ptr %i.qw, align 8, !tbaa !13 ; 2 uses
  %i.qy = and i64 %i.qx, %i.qm
  %i.qz = shl i64 %i.qy, %i.qo                    ; 3 uses
  %i.ra = and i64 %i.qx, %i.qr
  %i.rb = shl i64 %i.ra, %i.qt                    ; 3 uses
  %i.rc = icmp eq i64 %i.qz, %i.rb
  br i1 %i.rc, label %bb.ap, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.rd = trunc nsw i64 %indvars.iv.i105 to i32
  %i.re = xor i64 %i.rb, %i.qz                    ; 3 uses
  %i.rf = mul nsw i32 %i.rd, 100
  %i.rg = add nsw i32 %i.rf, 20
  %i.rh = icmp eq i32 %1, 4
  br i1 %i.rh, label %minTemp3_fast.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ri = icmp ugt i64 %i.re, 4294967295          ; 2 uses
  %spec.select28.i.i106 = select i1 %i.ri, i32 32, i32 0 ; 3 uses
  %i.rj = icmp eq i32 %1, 3
  br i1 %i.rj, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.rk = sub nuw nsw i32 64, %spec.select28.i.i106
  %i.rl = lshr exact i32 %i.rk, 5
  br label %minTemp3_fast.exit

bb.ak:                                            ; preds = %bb.ai
  %i.rm = lshr i64 %i.re, 32
  %spec.select.i.i107 = select i1 %i.ri, i64 %i.rm, i64 %i.re ; 3 uses
  %i.rn = icmp samesign ugt i64 %spec.select.i.i107, 65535 ; 2 uses
  %i.ro = or disjoint i32 %spec.select28.i.i106, 16
  %.1.i.i108 = select i1 %i.rn, i32 %i.ro, i32 %spec.select28.i.i106 ; 3 uses
  %i.rp = icmp eq i32 %1, 2
  br i1 %i.rp, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.rq = sub nuw nsw i32 64, %.1.i.i108
  %i.rr = lshr exact i32 %i.rq, 4
  br label %minTemp3_fast.exit

bb.am:                                            ; preds = %bb.ak
  %i.rs = lshr i64 %spec.select.i.i107, 16
  %.123.i.i109 = select i1 %i.rn, i64 %i.rs, i64 %spec.select.i.i107 ; 3 uses
  %i.rt = icmp samesign ugt i64 %.123.i.i109, 255 ; 2 uses
  %i.ru = or disjoint i32 %.1.i.i108, 8
  %.2.i.i110 = select i1 %i.rt, i32 %i.ru, i32 %.1.i.i108 ; 3 uses
  %i.rv = icmp eq i32 %1, 1
  br i1 %i.rv, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.rw = sub nuw nsw i32 64, %.2.i.i110
  %i.rx = lshr exact i32 %i.rw, 3
  br label %minTemp3_fast.exit

bb.ao:                                            ; preds = %bb.am
  %i.ry = lshr i64 %.123.i.i109, 8
  %.224.i.i111 = select i1 %i.rt, i64 %i.ry, i64 %.123.i.i109
  %i.rz = icmp samesign ugt i64 %.224.i.i111, 15
  %i.sa = or disjoint i32 %.2.i.i110, 4
  %spec.select29.i.i112 = select i1 %i.rz, i32 %i.sa, i32 %.2.i.i110
  %i.sb = sub nuw nsw i32 64, %spec.select29.i.i112
  %i.sc = lshr i32 %i.sb, 2
  br label %minTemp3_fast.exit

bb.ap:                                            ; preds = %bb.ag
  %indvars.iv.next.i116 = add nsw i64 %indvars.iv.i105, -1
  %.not.not.i = icmp sgt i64 %indvars.iv.i105, %i.qv
  br i1 %.not.not.i, label %bb.ag, label %.lr.ph.i124, !llvm.loop !22

minTemp3_fast.exit:                               ; preds = %bb.ah, %bb.aj, %bb.al, %bb.an, %bb.ao
  %.021.i.i114 = phi i32 [ %i.sc, %bb.ao ], [ %i.rl, %bb.aj ], [ %i.rr, %bb.al ], [ %i.rx, %bb.an ], [ 0, %bb.ah ]
  %i.sd = sub nsw i32 %i.rg, %.021.i.i114
  %i.se = icmp sgt i32 %i.sd, %.0140
  br i1 %i.se, label %.lr.ph.i118, label %.lr.ph.i124

.lr.ph.i118:                                      ; preds = %minTemp3_fast.exit
  %.not37.i.not = icmp ugt i64 %i.qz, %i.rb       ; 2 uses
  %i.sf = select i1 %.not37.i.not, i32 %.024.i, i32 %.026.i ; 5 uses
  %i.sg = select i1 %.not37.i.not, i32 %.026.i, i32 %.024.i ; 4 uses
  %i.sh = xor i32 %i.sf, 3                        ; 2 uses
  %i.si = xor i32 %i.sg, 3                        ; 2 uses
  %i.sj = zext nneg i32 %i.sf to i64
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.sj
  %i.sl = load i64, ptr %i.sk, align 8, !tbaa !13 ; 2 uses
  %i.sm = shl i32 %i.sf, %1
  %i.sn = zext nneg i32 %i.sm to i64              ; 2 uses
  %i.so = zext nneg i32 %i.sg to i64
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.so
  %i.sq = load i64, ptr %i.sp, align 8, !tbaa !13 ; 2 uses
  %i.sr = shl i32 %i.sg, %1
  %i.ss = zext nneg i32 %i.sr to i64              ; 2 uses
  %i.st = zext nneg i32 %i.si to i64
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.st
  %i.sv = load i64, ptr %i.su, align 8, !tbaa !13 ; 2 uses
  %i.sw = shl i32 %i.si, %1
  %i.sx = zext nneg i32 %i.sw to i64              ; 2 uses
  %i.sy = zext nneg i32 %i.sh to i64
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.sy
  %i.ta = load i64, ptr %i.sz, align 8, !tbaa !13 ; 2 uses
  %i.tb = shl i32 %i.sh, %1
  %i.tc = zext nneg i32 %i.tb to i64              ; 2 uses
  %i.td = add nuw nsw i64 %i.qu, 1                ; 2 uses
  %min.iters.check352 = icmp ult i32 %.0142, 100
  br i1 %min.iters.check352, label %scalar.ph351.preheader, label %vector.ph353

vector.ph353:                                     ; preds = %.lr.ph.i118
  %n.vec354 = and i64 %i.td, 134217726            ; 3 uses
  %i.te = sub nsw i64 %i.qu, %n.vec354
  %broadcast.splatinsert355 = insertelement <2 x i64> poison, i64 %i.sl, i64 0
  %broadcast.splatinsert357 = insertelement <2 x i64> poison, i64 %i.sn, i64 0
  %broadcast.splatinsert359 = insertelement <2 x i64> poison, i64 %i.sq, i64 0
  %broadcast.splatinsert361 = insertelement <2 x i64> poison, i64 %i.ss, i64 0
  %broadcast.splatinsert363 = insertelement <2 x i64> poison, i64 %i.sv, i64 0
  %broadcast.splatinsert365 = insertelement <2 x i64> poison, i64 %i.sx, i64 0
  %broadcast.splatinsert367 = insertelement <2 x i64> poison, i64 %i.ta, i64 0
  %broadcast.splatinsert369 = insertelement <2 x i64> poison, i64 %i.tc, i64 0
  %broadcast.splatinsert371 = insertelement <2 x i64> poison, i64 %i.aw, i64 0
  %broadcast.splatinsert373 = insertelement <2 x i64> poison, i64 %i.az, i64 0
  %broadcast.splatinsert375 = insertelement <2 x i64> poison, i64 %i.f, i64 0
  %i.tf = shufflevector <2 x i64> %broadcast.splatinsert359, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.tg = shufflevector <2 x i64> %broadcast.splatinsert361, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.th = shufflevector <2 x i64> %broadcast.splatinsert371, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ti = shufflevector <2 x i64> %broadcast.splatinsert355, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.tj = shufflevector <2 x i64> %broadcast.splatinsert357, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.tk = shufflevector <2 x i64> %broadcast.splatinsert363, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.tl = shufflevector <2 x i64> %broadcast.splatinsert365, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.tm = shufflevector <2 x i64> %broadcast.splatinsert373, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.tn = shufflevector <2 x i64> %broadcast.splatinsert367, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.to = shufflevector <2 x i64> %broadcast.splatinsert369, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.tp = shufflevector <2 x i64> %broadcast.splatinsert375, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body377

vector.body377:                                   ; preds = %vector.body377, %vector.ph353
  %index378 = phi i64 [ 0, %vector.ph353 ], [ %index.next382, %vector.body377 ] ; 2 uses
  %i.tq = sub i64 %i.qu, %index378
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.tq
  %i.ts = getelementptr inbounds i8, ptr %i.tr, i64 -8 ; 2 uses
  %wide.load379 = load <2 x i64>, ptr %i.ts, align 8, !tbaa !13 ; 4 uses
  %i.tt = and <2 x i64> %wide.load379, %i.tf
  %i.tu = shl <2 x i64> %i.tt, %i.tg
  %i.tv = lshr <2 x i64> %i.tu, %i.th
  %i.tw = and <2 x i64> %wide.load379, %i.ti
  %i.tx = shl <2 x i64> %i.tw, %i.tj
  %i.ty = or <2 x i64> %i.tv, %i.tx
  %i.tz = and <2 x i64> %wide.load379, %i.tk
  %i.ua = shl <2 x i64> %i.tz, %i.tl
  %i.ub = lshr <2 x i64> %i.ua, %i.tm
  %i.uc = or <2 x i64> %i.ty, %i.ub
  %i.ud = and <2 x i64> %wide.load379, %i.tn
  %i.ue = shl <2 x i64> %i.ud, %i.to
  %i.uf = lshr <2 x i64> %i.ue, %i.tp
  %reverse381 = or <2 x i64> %i.uc, %i.uf
  store <2 x i64> %reverse381, ptr %i.ts, align 8, !tbaa !13
  %index.next382 = add nuw i64 %index378, 2       ; 2 uses
  %i.ug = icmp eq i64 %index.next382, %n.vec354
  br i1 %i.ug, label %middle.block383, label %vector.body377, !llvm.loop !31

middle.block383:                                  ; preds = %vector.body377
  %cmp.n384 = icmp eq i64 %i.td, %n.vec354
  br i1 %cmp.n384, label %arrangeQuoters_superFast_lessThen5.exit122, label %scalar.ph351.preheader

scalar.ph351.preheader:                           ; preds = %.lr.ph.i118, %middle.block383
  %indvars.iv.i119.ph = phi i64 [ %i.qu, %.lr.ph.i118 ], [ %i.te, %middle.block383 ]
  br label %scalar.ph351

scalar.ph351:                                     ; preds = %scalar.ph351.preheader, %scalar.ph351
  %indvars.iv.i119 = phi i64 [ %indvars.iv.next.i120, %scalar.ph351 ], [ %indvars.iv.i119.ph, %scalar.ph351.preheader ] ; 3 uses
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i119 ; 2 uses
  %i.ui = load i64, ptr %i.uh, align 8, !tbaa !13 ; 4 uses
  %i.uj = and i64 %i.ui, %i.sl
  %i.uk = shl i64 %i.uj, %i.sn
  %i.ul = and i64 %i.ui, %i.sq
  %i.um = shl i64 %i.ul, %i.ss
  %i.un = lshr i64 %i.um, %i.aw
  %i.uo = or i64 %i.un, %i.uk
  %i.up = and i64 %i.ui, %i.sv
  %i.uq = shl i64 %i.up, %i.sx
  %i.ur = lshr i64 %i.uq, %i.az
  %i.us = or i64 %i.uo, %i.ur
  %i.ut = and i64 %i.ui, %i.ta
  %i.uu = shl i64 %i.ut, %i.tc
  %i.uv = lshr i64 %i.uu, %i.f
  %i.uw = or i64 %i.us, %i.uv
  store i64 %i.uw, ptr %i.uh, align 8, !tbaa !13
  %indvars.iv.next.i120 = add nsw i64 %indvars.iv.i119, -1
  %.not.i121 = icmp eq i64 %indvars.iv.i119, 0
  br i1 %.not.i121, label %arrangeQuoters_superFast_lessThen5.exit122, label %scalar.ph351, !llvm.loop !32

arrangeQuoters_superFast_lessThen5.exit122:       ; preds = %scalar.ph351, %middle.block383
  %i.ux = load i32, ptr %4, align 4, !tbaa !9
  %i.uy = sub nsw i32 %i.sf, %i.sg
  %i.uz = tail call i32 @llvm.abs.i32(i32 %i.uy, i1 true)
  %i.va = shl nsw i32 %i.uz, 2
  %i.vb = or disjoint i32 %i.sf, -4
  %i.vc = add nsw i32 %i.vb, %i.va
  %i.vd = tail call i32 @adjustInfoAfterSwap(ptr noundef %3, i32 noundef %i.ux, i32 noundef %1, i32 noundef %i.vc) #8
  br label %bb.aq

.lr.ph.i124:                                      ; preds = %bb.ap, %..lr.ph.i124_crit_edge, %minTemp3_fast.exit
  %.pre-phi180 = phi i64 [ %.pre179, %..lr.ph.i124_crit_edge ], [ %i.qu, %minTemp3_fast.exit ], [ %i.qu, %bb.ap ] ; 5 uses
  %.pn146 = zext nneg i32 %.034.i to i64
  %.in145 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.pn146
  %i.ve = load i32, ptr %.in145, align 4, !tbaa !9 ; 5 uses
  %.pn.in = xor i32 %.034.i, 1
  %.pn = zext nneg i32 %.pn.in to i64
  %.in = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.pn
  %i.vf = load i32, ptr %.in, align 4, !tbaa !9   ; 4 uses
  %i.vg = sub nsw i32 3, %i.vf                    ; 2 uses
  %i.vh = sub nsw i32 3, %i.ve                    ; 2 uses
  %i.vi = sext i32 %i.ve to i64
  %i.vj = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.vi
  %i.vk = load i64, ptr %i.vj, align 8, !tbaa !13 ; 2 uses
  %i.vl = shl i32 %i.ve, %1
  %i.vm = zext nneg i32 %i.vl to i64              ; 2 uses
  %i.vn = sext i32 %i.vf to i64
  %i.vo = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.vn
  %i.vp = load i64, ptr %i.vo, align 8, !tbaa !13 ; 2 uses
  %i.vq = shl i32 %i.vf, %1
  %i.vr = zext nneg i32 %i.vq to i64              ; 2 uses
  %i.vs = sext i32 %i.vg to i64
  %i.vt = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.vs
  %i.vu = load i64, ptr %i.vt, align 8, !tbaa !13 ; 2 uses
  %i.vv = shl i32 %i.vg, %1
  %i.vw = zext nneg i32 %i.vv to i64              ; 2 uses
  %i.vx = sext i32 %i.vh to i64
  %i.vy = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.vx
  %i.vz = load i64, ptr %i.vy, align 8, !tbaa !13 ; 2 uses
  %i.wa = shl i32 %i.vh, %1
  %i.wb = zext nneg i32 %i.wa to i64              ; 2 uses
  %i.wc = add nuw nsw i64 %.pre-phi180, 1         ; 2 uses
  %min.iters.check387 = icmp eq i64 %.pre-phi180, 0
  br i1 %min.iters.check387, label %scalar.ph386.preheader, label %vector.ph388

vector.ph388:                                     ; preds = %.lr.ph.i124
  %n.vec389 = and i64 %i.wc, 4294967294           ; 3 uses
  %i.wd = sub nsw i64 %.pre-phi180, %n.vec389
  %broadcast.splatinsert390 = insertelement <2 x i64> poison, i64 %i.vk, i64 0
  %broadcast.splatinsert392 = insertelement <2 x i64> poison, i64 %i.vm, i64 0
  %broadcast.splatinsert394 = insertelement <2 x i64> poison, i64 %i.vp, i64 0
  %broadcast.splatinsert396 = insertelement <2 x i64> poison, i64 %i.vr, i64 0
  %broadcast.splatinsert398 = insertelement <2 x i64> poison, i64 %i.vu, i64 0
  %broadcast.splatinsert400 = insertelement <2 x i64> poison, i64 %i.vw, i64 0
  %broadcast.splatinsert402 = insertelement <2 x i64> poison, i64 %i.vz, i64 0
  %broadcast.splatinsert404 = insertelement <2 x i64> poison, i64 %i.wb, i64 0
  %broadcast.splatinsert406 = insertelement <2 x i64> poison, i64 %i.aw, i64 0
  %broadcast.splatinsert408 = insertelement <2 x i64> poison, i64 %i.az, i64 0
  %broadcast.splatinsert410 = insertelement <2 x i64> poison, i64 %i.f, i64 0
  %i.we = shufflevector <2 x i64> %broadcast.splatinsert394, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.wf = shufflevector <2 x i64> %broadcast.splatinsert396, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.wg = shufflevector <2 x i64> %broadcast.splatinsert406, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.wh = shufflevector <2 x i64> %broadcast.splatinsert390, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.wi = shufflevector <2 x i64> %broadcast.splatinsert392, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.wj = shufflevector <2 x i64> %broadcast.splatinsert398, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.wk = shufflevector <2 x i64> %broadcast.splatinsert400, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.wl = shufflevector <2 x i64> %broadcast.splatinsert408, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.wm = shufflevector <2 x i64> %broadcast.splatinsert402, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.wn = shufflevector <2 x i64> %broadcast.splatinsert404, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.wo = shufflevector <2 x i64> %broadcast.splatinsert410, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body412

vector.body412:                                   ; preds = %vector.body412, %vector.ph388
  %index413 = phi i64 [ 0, %vector.ph388 ], [ %index.next417, %vector.body412 ] ; 2 uses
  %i.wp = sub i64 %.pre-phi180, %index413
  %i.wq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.wp
  %i.wr = getelementptr inbounds i8, ptr %i.wq, i64 -8 ; 2 uses
  %wide.load414 = load <2 x i64>, ptr %i.wr, align 8, !tbaa !13 ; 4 uses
  %i.ws = and <2 x i64> %wide.load414, %i.we
  %i.wt = shl <2 x i64> %i.ws, %i.wf
  %i.wu = lshr <2 x i64> %i.wt, %i.wg
  %i.wv = and <2 x i64> %wide.load414, %i.wh
  %i.ww = shl <2 x i64> %i.wv, %i.wi
  %i.wx = or <2 x i64> %i.wu, %i.ww
  %i.wy = and <2 x i64> %wide.load414, %i.wj
  %i.wz = shl <2 x i64> %i.wy, %i.wk
  %i.xa = lshr <2 x i64> %i.wz, %i.wl
  %i.xb = or <2 x i64> %i.wx, %i.xa
  %i.xc = and <2 x i64> %wide.load414, %i.wm
  %i.xd = shl <2 x i64> %i.xc, %i.wn
  %i.xe = lshr <2 x i64> %i.xd, %i.wo
end_hunk_0
