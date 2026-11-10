Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/newmdct?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@mdct_sub48:bb.a
  %gep255 = getelementptr i8, ptr %invariant.gep248, i64 2304
  %i.ob = load double, ptr %gep255, align 8, !tbaa !16
  %gep241.1 = getelementptr inbounds nuw i8, ptr %invariant.gep240, i64 1792
  %i.oc = load double, ptr %gep241.1, align 8, !tbaa !16
  %gep243.1 = getelementptr i8, ptr %invariant.gep240, i64 2560
  %i.od = load double, ptr %gep243.1, align 8, !tbaa !16
  %gep245.1 = getelementptr inbounds nuw i8, ptr %invariant.gep240, i64 3328
  %i.oe = load double, ptr %gep245.1, align 8, !tbaa !16 ; 2 uses
  %gep247.1 = getelementptr i8, ptr %invariant.gep240, i64 4096
  %i.of = load double, ptr %gep247.1, align 8, !tbaa !16 ; 2 uses
  %gep249.1 = getelementptr inbounds nuw i8, ptr %invariant.gep248, i64 256
  %i.og = load double, ptr %gep249.1, align 8, !tbaa !16 ; 2 uses
  %gep251.1 = getelementptr i8, ptr %invariant.gep248, i64 1024
  %i.oh = load double, ptr %gep251.1, align 8, !tbaa !16 ; 2 uses
  %gep253.1 = getelementptr inbounds nuw i8, ptr %invariant.gep248, i64 1792
  %i.oi = load double, ptr %gep253.1, align 8, !tbaa !16
  %gep255.1 = getelementptr i8, ptr %invariant.gep248, i64 2560
  %i.oj = load double, ptr %gep255.1, align 8, !tbaa !16
  %gep241.2 = getelementptr inbounds nuw i8, ptr %invariant.gep240, i64 1536
  %i.ok = load double, ptr %gep241.2, align 8, !tbaa !16
  %gep243.2 = getelementptr i8, ptr %invariant.gep240, i64 2816
  %i.ol = load double, ptr %gep243.2, align 8, !tbaa !16
  %i.om = insertelement <2 x double> poison, double %i.of, i64 0
  %i.on = insertelement <2 x double> %i.om, double %i.nv, i64 1
  %i.oo = insertelement <2 x double> poison, double %i.oe, i64 0
  %i.op = insertelement <2 x double> %i.oo, double %i.nu, i64 1
  %i.oq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.on, <2 x double> %i.hl, <2 x double> %i.op)
  store <2 x double> %i.oq, ptr getelementptr inbounds nuw (i8, ptr @win, i64 640), align 16, !tbaa !16
  %i.or = insertelement <2 x double> poison, double %i.oh, i64 0
  %i.os = insertelement <2 x double> %i.or, double %i.ny, i64 1
  %i.ot = insertelement <2 x double> poison, double %i.og, i64 0
  %i.ou = insertelement <2 x double> %i.ot, double %i.nx, i64 1
  %i.ov = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.os, <2 x double> %i.hl, <2 x double> %i.ou)
  store <2 x double> %i.ov, ptr getelementptr inbounds nuw (i8, ptr @win, i64 688), align 16, !tbaa !16
  %i.ow = insertelement <2 x double> poison, double %i.oj, i64 0
  %i.ox = insertelement <2 x double> %i.ow, double %i.ob, i64 1
  %i.oy = insertelement <2 x double> poison, double %i.oi, i64 0
  %i.oz = insertelement <2 x double> %i.oy, double %i.oa, i64 1
  %i.pa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ox, <2 x double> %i.hl, <2 x double> %i.oz)
  store <2 x double> %i.pa, ptr getelementptr inbounds nuw (i8, ptr @win, i64 736), align 16, !tbaa !16
  %i.pb = insertelement <2 x double> poison, double %i.ol, i64 0
  %i.pc = insertelement <2 x double> %i.pb, double %i.od, i64 1
  %i.pd = fneg <2 x double> %i.pc
  %i.pe = insertelement <2 x double> poison, double %i.ok, i64 0
  %i.pf = insertelement <2 x double> %i.pe, double %i.oc, i64 1
  %i.pg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pf, <2 x double> %i.hj, <2 x double> %i.pd)
  store <2 x double> %i.pg, ptr getelementptr inbounds nuw (i8, ptr @win, i64 608), align 16, !tbaa !16
  %gep245.2 = getelementptr inbounds nuw i8, ptr %invariant.gep240, i64 3072
  %i.ph = load double, ptr %gep245.2, align 8, !tbaa !16 ; 2 uses
  %gep247.2 = getelementptr i8, ptr %invariant.gep240, i64 4352
  %i.pi = load double, ptr %gep247.2, align 8, !tbaa !16 ; 2 uses
  %i.pj = insertelement <2 x double> poison, double %i.nr, i64 0
  %i.pk = insertelement <2 x double> %i.pj, double %i.pi, i64 1
  %i.pl = insertelement <2 x double> poison, double %i.nt, i64 0
  %i.pm = insertelement <2 x double> %i.pl, double %i.ph, i64 1
  %i.pn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pk, <2 x double> %i.hm, <2 x double> %i.pm)
  store <2 x double> %i.pn, ptr getelementptr inbounds nuw (i8, ptr @win, i64 624), align 16, !tbaa !16
  %i.po = insertelement <2 x double> poison, double %i.pi, i64 0
  %i.pp = insertelement <2 x double> %i.po, double %i.of, i64 1
  %i.pq = fneg <2 x double> %i.pp
  %i.pr = insertelement <2 x double> poison, double %i.ph, i64 0
  %i.ps = insertelement <2 x double> %i.pr, double %i.oe, i64 1
  %i.pt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ps, <2 x double> %i.hj, <2 x double> %i.pq)
  store <2 x double> %i.pt, ptr getelementptr inbounds nuw (i8, ptr @win, i64 656), align 16, !tbaa !16
  %i.pu = load double, ptr %invariant.gep248, align 8, !tbaa !16 ; 2 uses
  %gep251.2 = getelementptr i8, ptr %invariant.gep248, i64 1280
  %i.pv = load double, ptr %gep251.2, align 8, !tbaa !16 ; 2 uses
  %i.pw = insertelement <2 x double> poison, double %i.nu, i64 0
  %i.px = insertelement <2 x double> %i.pw, double %i.pv, i64 1
  %i.py = insertelement <2 x double> poison, double %i.nw, i64 0
  %i.pz = insertelement <2 x double> %i.py, double %i.pu, i64 1
  %i.qa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.px, <2 x double> %i.hm, <2 x double> %i.pz)
  store <2 x double> %i.qa, ptr getelementptr inbounds nuw (i8, ptr @win, i64 672), align 16, !tbaa !16
  %i.qb = insertelement <2 x double> poison, double %i.pv, i64 0
  %i.qc = insertelement <2 x double> %i.qb, double %i.oh, i64 1
  %i.qd = fneg <2 x double> %i.qc
  %i.qe = insertelement <2 x double> poison, double %i.pu, i64 0
  %i.qf = insertelement <2 x double> %i.qe, double %i.og, i64 1
  %i.qg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qf, <2 x double> %i.hj, <2 x double> %i.qd)
  store <2 x double> %i.qg, ptr getelementptr inbounds nuw (i8, ptr @win, i64 704), align 16, !tbaa !16
  %gep253.2 = getelementptr inbounds nuw i8, ptr %invariant.gep248, i64 1536
  %i.qh = load double, ptr %gep253.2, align 8, !tbaa !16
  %gep255.2 = getelementptr i8, ptr %invariant.gep248, i64 2816
  %i.qi = load double, ptr %gep255.2, align 8, !tbaa !16
  %i.qj = insertelement <2 x double> poison, double %i.nx, i64 0
  %i.qk = insertelement <2 x double> %i.qj, double %i.qi, i64 1
  %i.ql = insertelement <2 x double> poison, double %i.nz, i64 0
  %i.qm = insertelement <2 x double> %i.ql, double %i.qh, i64 1
  %i.qn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qk, <2 x double> %i.hm, <2 x double> %i.qm)
  store <2 x double> %i.qn, ptr getelementptr inbounds nuw (i8, ptr @win, i64 720), align 16, !tbaa !16
  %i.qo = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 704), align 16
  %broadcast.splat310 = shufflevector <1 x double> %i.qo, <1 x double> poison, <2 x i32> zeroinitializer
  %i.qp = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 712), align 8
  %broadcast.splat = shufflevector <1 x double> %i.qp, <1 x double> poison, <2 x i32> zeroinitializer
  %i.qq = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 720), align 16
  %broadcast.splat312 = shufflevector <1 x double> %i.qq, <1 x double> poison, <2 x i32> zeroinitializer
  %i.qr = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 728), align 8
  %broadcast.splat314 = shufflevector <1 x double> %i.qr, <1 x double> poison, <2 x i32> zeroinitializer
  %i.qs = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 736), align 16
  %broadcast.splat316 = shufflevector <1 x double> %i.qs, <1 x double> poison, <2 x i32> zeroinitializer
  %i.qt = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 744), align 8
  %broadcast.splat318 = shufflevector <1 x double> %i.qt, <1 x double> poison, <2 x i32> zeroinitializer
  %i.qu = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 656), align 16
  %broadcast.splat322 = shufflevector <1 x double> %i.qu, <1 x double> poison, <2 x i32> zeroinitializer
  %i.qv = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 664), align 8
  %broadcast.splat320 = shufflevector <1 x double> %i.qv, <1 x double> poison, <2 x i32> zeroinitializer
  %i.qw = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 672), align 16
  %broadcast.splat324 = shufflevector <1 x double> %i.qw, <1 x double> poison, <2 x i32> zeroinitializer
  %i.qx = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 680), align 8
  %broadcast.splat326 = shufflevector <1 x double> %i.qx, <1 x double> poison, <2 x i32> zeroinitializer
  %i.qy = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 688), align 16
  %broadcast.splat328 = shufflevector <1 x double> %i.qy, <1 x double> poison, <2 x i32> zeroinitializer
  %i.qz = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 696), align 8
  %broadcast.splat330 = shufflevector <1 x double> %i.qz, <1 x double> poison, <2 x i32> zeroinitializer
  %i.ra = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 608), align 16
  %broadcast.splat334 = shufflevector <1 x double> %i.ra, <1 x double> poison, <2 x i32> zeroinitializer
  %i.rb = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 616), align 8
  %broadcast.splat332 = shufflevector <1 x double> %i.rb, <1 x double> poison, <2 x i32> zeroinitializer
  %i.rc = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 624), align 16
  %broadcast.splat336 = shufflevector <1 x double> %i.rc, <1 x double> poison, <2 x i32> zeroinitializer
  %i.rd = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 632), align 8
  %broadcast.splat338 = shufflevector <1 x double> %i.rd, <1 x double> poison, <2 x i32> zeroinitializer
  %i.re = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 640), align 16
  %broadcast.splat340 = shufflevector <1 x double> %i.re, <1 x double> poison, <2 x i32> zeroinitializer
  %i.rf = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 648), align 8
  %broadcast.splat342 = shufflevector <1 x double> %i.rf, <1 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader213
  %index = phi i64 [ 0, %.preheader213 ], [ %index.next, %vector.body ] ; 3 uses
  %i.rg = sub i64 5, %index                       ; 2 uses
  %i.rh = sub i64 4, %index
  %i.ri = getelementptr inbounds nuw [48 x i8], ptr @cos_s, i64 %i.rg ; 6 uses
  %i.rj = getelementptr inbounds nuw [48 x i8], ptr @cos_s, i64 %i.rh ; 6 uses
  %i.rk = load double, ptr %i.ri, align 16, !tbaa !16
  %i.rl = load double, ptr %i.rj, align 16, !tbaa !16
  %i.rm = insertelement <2 x double> poison, double %i.rk, i64 0
  %i.rn = insertelement <2 x double> %i.rm, double %i.rl, i64 1 ; 3 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rj, i64 8
  %i.rq = load double, ptr %i.ro, align 8, !tbaa !16
  %i.rr = load double, ptr %i.rp, align 8, !tbaa !16
  %i.rs = insertelement <2 x double> poison, double %i.rq, i64 0
  %i.rt = insertelement <2 x double> %i.rs, double %i.rr, i64 1 ; 3 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rj, i64 16
  %i.rw = load double, ptr %i.ru, align 16, !tbaa !16
  %i.rx = load double, ptr %i.rv, align 16, !tbaa !16
  %i.ry = insertelement <2 x double> poison, double %i.rw, i64 0
  %i.rz = insertelement <2 x double> %i.ry, double %i.rx, i64 1 ; 3 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ri, i64 24
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rj, i64 24
  %i.sc = load double, ptr %i.sa, align 8, !tbaa !16
  %i.sd = load double, ptr %i.sb, align 8, !tbaa !16
  %i.se = insertelement <2 x double> poison, double %i.sc, i64 0
  %i.sf = insertelement <2 x double> %i.se, double %i.sd, i64 1 ; 3 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.ri, i64 32
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rj, i64 32
  %i.si = load double, ptr %i.sg, align 16, !tbaa !16
  %i.sj = load double, ptr %i.sh, align 16, !tbaa !16
  %i.sk = insertelement <2 x double> poison, double %i.si, i64 0
  %i.sl = insertelement <2 x double> %i.sk, double %i.sj, i64 1 ; 3 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.ri, i64 40
  %i.sn = getelementptr inbounds nuw i8, ptr %i.rj, i64 40
  %i.so = load double, ptr %i.sm, align 8, !tbaa !16
  %i.sp = load double, ptr %i.sn, align 8, !tbaa !16
  %i.sq = insertelement <2 x double> poison, double %i.so, i64 0
  %i.sr = insertelement <2 x double> %i.sq, double %i.sp, i64 1 ; 3 uses
  %i.ss = fmul <2 x double> %i.rt, %broadcast.splat
  %i.st = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rn, <2 x double> %broadcast.splat310, <2 x double> %i.ss)
  %i.su = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rz, <2 x double> %broadcast.splat312, <2 x double> %i.st)
  %i.sv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sf, <2 x double> %broadcast.splat314, <2 x double> %i.su)
  %i.sw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sl, <2 x double> %broadcast.splat316, <2 x double> %i.sv)
  %i.sx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sr, <2 x double> %broadcast.splat318, <2 x double> %i.sw)
  %i.sy = mul nuw nsw i64 %i.rg, 24
  %i.sz = getelementptr inbounds nuw i8, ptr %.0194259, i64 %i.sy
  %i.ta = fmul <2 x double> %i.rt, %broadcast.splat320
  %i.tb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rn, <2 x double> %broadcast.splat322, <2 x double> %i.ta)
  %i.tc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rz, <2 x double> %broadcast.splat324, <2 x double> %i.tb)
  %i.td = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sf, <2 x double> %broadcast.splat326, <2 x double> %i.tc)
  %i.te = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sl, <2 x double> %broadcast.splat328, <2 x double> %i.td)
  %i.tf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sr, <2 x double> %broadcast.splat330, <2 x double> %i.te)
  %i.tg = fmul <2 x double> %i.rt, %broadcast.splat332
  %i.th = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rn, <2 x double> %broadcast.splat334, <2 x double> %i.tg)
  %i.ti = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rz, <2 x double> %broadcast.splat336, <2 x double> %i.th)
  %i.tj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sf, <2 x double> %broadcast.splat338, <2 x double> %i.ti)
  %i.tk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sl, <2 x double> %broadcast.splat340, <2 x double> %i.tj)
  %i.tl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sr, <2 x double> %broadcast.splat342, <2 x double> %i.tk)
  %i.tm = getelementptr inbounds i8, ptr %i.sz, i64 -24
  %i.tn = shufflevector <2 x double> %i.tl, <2 x double> %i.tf, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.to = shufflevector <2 x double> %i.sx, <2 x double> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x double> %i.tn, <4 x double> %i.to, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec, ptr %i.tm, align 8, !tbaa !16
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.tp = icmp eq i64 %index.next, 6
  br i1 %i.tp, label %.loopexit, label %vector.body, !llvm.loop !22

.preheader214:                                    ; preds = %.preheader215, %.preheader214
  %indvars.iv.i209 = phi i64 [ %indvars.iv.next.i210, %.preheader214 ], [ 11, %.preheader215 ] ; 3 uses
  %.0.i = phi ptr [ %i.vv, %.preheader214 ], [ @cos_l, %.preheader215 ] ; 46 uses
  %i.tq = load double, ptr %.0.i, align 8, !tbaa !16
  %i.tr = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.ts = load double, ptr %i.tr, align 8, !tbaa !16
  %i.tt = fmul double %i.na, %i.ts
  %i.tu = tail call double @llvm.fmuladd.f64(double %i.mz, double %i.tq, double %i.tt)
  %i.tv = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.tw = load double, ptr %i.tv, align 8, !tbaa !16
  %i.tx = tail call double @llvm.fmuladd.f64(double %i.nb, double %i.tw, double %i.tu)
  %i.ty = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.tz = load double, ptr %i.ty, align 8, !tbaa !16
  %i.ua = tail call double @llvm.fmuladd.f64(double %i.nc, double %i.tz, double %i.tx)
  %i.ub = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.uc = load double, ptr %i.ub, align 8, !tbaa !16
  %i.ud = tail call double @llvm.fmuladd.f64(double %i.nd, double %i.uc, double %i.ua)
  %i.ue = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.uf = load double, ptr %i.ue, align 8, !tbaa !16
  %i.ug = tail call double @llvm.fmuladd.f64(double %i.ne, double %i.uf, double %i.ud)
  %i.uh = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  %i.ui = load double, ptr %i.uh, align 8, !tbaa !16
  %i.uj = tail call double @llvm.fmuladd.f64(double %i.nf, double %i.ui, double %i.ug)
  %i.uk = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %i.ul = load double, ptr %i.uk, align 8, !tbaa !16
  %i.um = tail call double @llvm.fmuladd.f64(double %i.ng, double %i.ul, double %i.uj)
  %i.un = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  %i.uo = load double, ptr %i.un, align 8, !tbaa !16
  %i.up = tail call double @llvm.fmuladd.f64(double %i.nh, double %i.uo, double %i.um)
  %i.uq = getelementptr inbounds nuw i8, ptr %.0.i, i64 72
  %i.ur = load double, ptr %i.uq, align 8, !tbaa !16
  %i.us = tail call double @llvm.fmuladd.f64(double %i.ni, double %i.ur, double %i.up)
  %i.ut = getelementptr inbounds nuw i8, ptr %.0.i, i64 80
  %i.uu = load double, ptr %i.ut, align 8, !tbaa !16
  %i.uv = tail call double @llvm.fmuladd.f64(double %i.nj, double %i.uu, double %i.us)
  %i.uw = getelementptr inbounds nuw i8, ptr %.0.i, i64 88
  %i.ux = load double, ptr %i.uw, align 8, !tbaa !16
  %i.uy = tail call double @llvm.fmuladd.f64(double %i.nk, double %i.ux, double %i.uv)
  %i.uz = getelementptr inbounds nuw i8, ptr %.0.i, i64 96
  %i.va = load double, ptr %i.uz, align 8, !tbaa !16
  %i.vb = tail call double @llvm.fmuladd.f64(double %i.nl, double %i.va, double %i.uy)
  %i.vc = getelementptr inbounds nuw i8, ptr %.0.i, i64 104
  %i.vd = load double, ptr %i.vc, align 8, !tbaa !16
  %i.ve = tail call double @llvm.fmuladd.f64(double %i.nm, double %i.vd, double %i.vb)
  %i.vf = getelementptr inbounds nuw i8, ptr %.0.i, i64 112
  %i.vg = load double, ptr %i.vf, align 8, !tbaa !16
  %i.vh = tail call double @llvm.fmuladd.f64(double %i.nn, double %i.vg, double %i.ve)
  %i.vi = getelementptr inbounds nuw i8, ptr %.0.i, i64 120
  %i.vj = load double, ptr %i.vi, align 8, !tbaa !16
  %i.vk = tail call double @llvm.fmuladd.f64(double %i.no, double %i.vj, double %i.vh)
  %i.vl = getelementptr inbounds nuw i8, ptr %.0.i, i64 128
  %i.vm = load double, ptr %i.vl, align 8, !tbaa !16
  %i.vn = tail call double @llvm.fmuladd.f64(double %i.np, double %i.vm, double %i.vk)
  %i.vo = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  %i.vp = load double, ptr %i.vo, align 8, !tbaa !16
  %i.vq = tail call double @llvm.fmuladd.f64(double %i.nq, double %i.vp, double %i.vn)
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr @all, i64 %indvars.iv.i209
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !7
  %i.vt = sext i32 %i.vs to i64
  %i.vu = getelementptr inbounds [8 x i8], ptr %.0194259, i64 %i.vt
  store double %i.vq, ptr %i.vu, align 8, !tbaa !16
  %i.vv = getelementptr inbounds nuw i8, ptr %.0.i, i64 144 ; 2 uses
  %indvars.iv.next.i210 = add nsw i64 %indvars.iv.i209, -1
  %.not.i211 = icmp eq i64 %indvars.iv.i209, 0
  br i1 %.not.i211, label %mdct_long.exit, label %.preheader214, !llvm.loop !23

mdct_long.exit:                                   ; preds = %.preheader214
  %i.vw = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 728), align 8, !tbaa !16
  %i.vx = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 608), align 16, !tbaa !16
  %i.vy = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 640), align 16, !tbaa !16
  %i.vz = shufflevector <2 x double> %i.vy, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.wa = fadd <2 x double> %i.vx, %i.vz          ; 2 uses
  %i.wb = extractelement <2 x double> %i.wa, i64 0
  %i.wc = fadd double %i.wb, %i.vw                ; 5 uses
  %i.wd = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 736), align 16, !tbaa !16
  %i.we = extractelement <2 x double> %i.wa, i64 1
  %i.wf = fadd double %i.we, %i.wd                ; 5 uses
  %i.wg = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 624), align 16, !tbaa !16
  %i.wh = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 632), align 8, !tbaa !16
  %i.wi = fadd double %i.wg, %i.wh
  %i.wj = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 744), align 8, !tbaa !16
  %i.wk = fadd double %i.wi, %i.wj                ; 5 uses
  %i.wl = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 720), align 16, !tbaa !16
  %i.wm = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 656), align 16, !tbaa !16
  %i.wn = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 680), align 8, !tbaa !16
  %i.wo = fsub <2 x double> %i.wm, %i.wn          ; 2 uses
  %i.wp = extractelement <2 x double> %i.wo, i64 0
  %i.wq = fadd double %i.wp, %i.wl                ; 5 uses
  %i.wr = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 712), align 8, !tbaa !16
  %i.ws = extractelement <2 x double> %i.wo, i64 1
  %i.wt = fadd double %i.ws, %i.wr                ; 5 uses
  %i.wu = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 672), align 16, !tbaa !16
  %i.wv = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 696), align 8, !tbaa !16
  %i.ww = fsub double %i.wu, %i.wv
  %i.wx = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 704), align 16, !tbaa !16
  %i.wy = fadd double %i.ww, %i.wx                ; 5 uses
  %i.wz = load double, ptr %i.vv, align 8, !tbaa !16
  %i.xa = getelementptr inbounds nuw i8, ptr %.0.i, i64 152
  %i.xb = load double, ptr %i.xa, align 8, !tbaa !16
  %i.xc = fmul double %i.wf, %i.xb
  %i.xd = tail call double @llvm.fmuladd.f64(double %i.wc, double %i.wz, double %i.xc)
  %i.xe = getelementptr inbounds nuw i8, ptr %.0.i, i64 160
  %i.xf = load double, ptr %i.xe, align 8, !tbaa !16
  %i.xg = tail call double @llvm.fmuladd.f64(double %i.wk, double %i.xf, double %i.xd)
  %i.xh = getelementptr inbounds nuw i8, ptr %.0.i, i64 168
  %i.xi = load double, ptr %i.xh, align 8, !tbaa !16
  %i.xj = tail call double @llvm.fmuladd.f64(double %i.wq, double %i.xi, double %i.xg)
  %i.xk = getelementptr inbounds nuw i8, ptr %.0.i, i64 176
  %i.xl = load double, ptr %i.xk, align 8, !tbaa !16
  %i.xm = tail call double @llvm.fmuladd.f64(double %i.wt, double %i.xl, double %i.xj)
  %i.xn = getelementptr inbounds nuw i8, ptr %.0.i, i64 184
  %i.xo = load double, ptr %i.xn, align 8, !tbaa !16
  %i.xp = tail call double @llvm.fmuladd.f64(double %i.wy, double %i.xo, double %i.xm)
  %i.xq = getelementptr inbounds nuw i8, ptr %.0194259, i64 128
  store double %i.xp, ptr %i.xq, align 8, !tbaa !16
  %i.xr = getelementptr inbounds nuw i8, ptr %.0.i, i64 192
  %i.xs = load double, ptr %i.xr, align 8, !tbaa !16
  %i.xt = getelementptr inbounds nuw i8, ptr %.0.i, i64 200
  %i.xu = load double, ptr %i.xt, align 8, !tbaa !16
  %i.xv = fmul double %i.wf, %i.xu
  %i.xw = tail call double @llvm.fmuladd.f64(double %i.wc, double %i.xs, double %i.xv)
  %i.xx = getelementptr inbounds nuw i8, ptr %.0.i, i64 208
  %i.xy = load double, ptr %i.xx, align 8, !tbaa !16
  %i.xz = tail call double @llvm.fmuladd.f64(double %i.wk, double %i.xy, double %i.xw)
  %i.ya = getelementptr inbounds nuw i8, ptr %.0.i, i64 216
  %i.yb = load double, ptr %i.ya, align 8, !tbaa !16
  %i.yc = tail call double @llvm.fmuladd.f64(double %i.wq, double %i.yb, double %i.xz)
  %i.yd = getelementptr inbounds nuw i8, ptr %.0.i, i64 224
  %i.ye = load double, ptr %i.yd, align 8, !tbaa !16
  %i.yf = tail call double @llvm.fmuladd.f64(double %i.wt, double %i.ye, double %i.yc)
  %i.yg = getelementptr inbounds nuw i8, ptr %.0.i, i64 232
  %i.yh = load double, ptr %i.yg, align 8, !tbaa !16
  %i.yi = tail call double @llvm.fmuladd.f64(double %i.wy, double %i.yh, double %i.yf)
  %i.yj = getelementptr inbounds nuw i8, ptr %.0194259, i64 80
  store double %i.yi, ptr %i.yj, align 8, !tbaa !16
  %i.yk = getelementptr inbounds nuw i8, ptr %.0.i, i64 240
  %i.yl = load double, ptr %i.yk, align 8, !tbaa !16
  %i.ym = getelementptr inbounds nuw i8, ptr %.0.i, i64 248
  %i.yn = load double, ptr %i.ym, align 8, !tbaa !16
  %i.yo = fmul double %i.wf, %i.yn
  %i.yp = tail call double @llvm.fmuladd.f64(double %i.wc, double %i.yl, double %i.yo)
  %i.yq = getelementptr inbounds nuw i8, ptr %.0.i, i64 256
  %i.yr = load double, ptr %i.yq, align 8, !tbaa !16
  %i.ys = tail call double @llvm.fmuladd.f64(double %i.wk, double %i.yr, double %i.yp)
  %i.yt = getelementptr inbounds nuw i8, ptr %.0.i, i64 264
  %i.yu = load double, ptr %i.yt, align 8, !tbaa !16
  %i.yv = tail call double @llvm.fmuladd.f64(double %i.wq, double %i.yu, double %i.ys)
  %i.yw = getelementptr inbounds nuw i8, ptr %.0.i, i64 272
  %i.yx = load double, ptr %i.yw, align 8, !tbaa !16
  %i.yy = tail call double @llvm.fmuladd.f64(double %i.wt, double %i.yx, double %i.yv)
  %i.yz = getelementptr inbounds nuw i8, ptr %.0.i, i64 280
  %i.za = load double, ptr %i.yz, align 8, !tbaa !16
  %i.zb = tail call double @llvm.fmuladd.f64(double %i.wy, double %i.za, double %i.yy)
  %i.zc = getelementptr inbounds nuw i8, ptr %.0194259, i64 56
  store double %i.zb, ptr %i.zc, align 8, !tbaa !16
  %i.zd = getelementptr inbounds nuw i8, ptr %.0.i, i64 288
  %i.ze = load double, ptr %i.zd, align 8, !tbaa !16
  %i.zf = getelementptr inbounds nuw i8, ptr %.0.i, i64 296
  %i.zg = load double, ptr %i.zf, align 8, !tbaa !16
  %i.zh = fmul double %i.wf, %i.zg
  %i.zi = tail call double @llvm.fmuladd.f64(double %i.wc, double %i.ze, double %i.zh)
  %i.zj = getelementptr inbounds nuw i8, ptr %.0.i, i64 304
  %i.zk = load double, ptr %i.zj, align 8, !tbaa !16
  %i.zl = tail call double @llvm.fmuladd.f64(double %i.wk, double %i.zk, double %i.zi)
  %i.zm = getelementptr inbounds nuw i8, ptr %.0.i, i64 312
  %i.zn = load double, ptr %i.zm, align 8, !tbaa !16
  %i.zo = tail call double @llvm.fmuladd.f64(double %i.wq, double %i.zn, double %i.zl)
  %i.zp = getelementptr inbounds nuw i8, ptr %.0.i, i64 320
  %i.zq = load double, ptr %i.zp, align 8, !tbaa !16
  %i.zr = tail call double @llvm.fmuladd.f64(double %i.wt, double %i.zq, double %i.zo)
  %i.zs = getelementptr inbounds nuw i8, ptr %.0.i, i64 328
  %i.zt = load double, ptr %i.zs, align 8, !tbaa !16
  %i.zu = tail call double @llvm.fmuladd.f64(double %i.wy, double %i.zt, double %i.zr)
  %i.zv = getelementptr inbounds nuw i8, ptr %.0194259, i64 8
  store double %i.zu, ptr %i.zv, align 8, !tbaa !16
  %i.zw = getelementptr inbounds nuw i8, ptr %.0.i, i64 336
  %i.zx = fsub double %i.wc, %i.wf
  %i.zy = fadd double %i.zx, %i.wy                ; 2 uses
  %i.zz = fsub double %i.wk, %i.wq
  %i.aaa = fsub double %i.zz, %i.wt               ; 2 uses
  %i.aab = load double, ptr %i.zw, align 8, !tbaa !16
  %i.aac = getelementptr inbounds nuw i8, ptr %.0.i, i64 344
  %i.aad = load double, ptr %i.aac, align 8, !tbaa !16
  %i.aae = fmul double %i.aaa, %i.aad
  %i.aaf = tail call double @llvm.fmuladd.f64(double %i.zy, double %i.aab, double %i.aae)
  %i.aag = getelementptr inbounds nuw i8, ptr %.0194259, i64 104
  store double %i.aaf, ptr %i.aag, align 8, !tbaa !16
  %i.aah = getelementptr inbounds nuw i8, ptr %.0.i, i64 352
  %i.aai = load double, ptr %i.aah, align 8, !tbaa !16
  %i.aaj = getelementptr inbounds nuw i8, ptr %.0.i, i64 360
  %i.aak = load double, ptr %i.aaj, align 8, !tbaa !16
  %i.aal = fmul double %i.aaa, %i.aak
  %i.aam = tail call double @llvm.fmuladd.f64(double %i.zy, double %i.aai, double %i.aal)
  %i.aan = getelementptr inbounds nuw i8, ptr %.0194259, i64 32
  store double %i.aam, ptr %i.aan, align 8, !tbaa !16
  br label %mdct_short.exit

mdct_short.exit:                                  ; preds = %mdct_long.exit, %bb.m
  %.not208 = icmp eq i32 %i.hn, 2
  %i.aao = icmp eq i64 %indvars.iv288, 0
  %or.cond = or i1 %i.aao, %.not208
  br i1 %or.cond, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %mdct_short.exit
  %i.aap = getelementptr inbounds i8, ptr %.0194259, i64 -64 ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %.0194259, i64 48 ; 2 uses
  %i.aar = load <2 x double>, ptr %i.aap, align 8, !tbaa !16 ; 2 uses
  %i.aas = load <2 x double>, ptr %i.aaq, align 8, !tbaa !16
  %i.aat = shufflevector <2 x double> %i.aas, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aau = fmul <2 x double> %i.aar, %i.ao
  %i.aav = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aat, <2 x double> %i.q, <2 x double> %i.aau)
  store <2 x double> %i.aav, ptr %i.aap, align 8, !tbaa !16
  %i.aaw = fmul <2 x double> %i.aar, %i.r
  %i.aax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aat, <2 x double> %i.ao, <2 x double> %i.aaw)
  %i.aay = shufflevector <2 x double> %i.aax, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.aay, ptr %i.aaq, align 8, !tbaa !16
  %i.aaz = getelementptr inbounds i8, ptr %.0194259, i64 -48 ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %.0194259, i64 32 ; 2 uses
  %i.abb = load <2 x double>, ptr %i.aaz, align 8, !tbaa !16 ; 2 uses
  %i.abc = load <2 x double>, ptr %i.aba, align 8, !tbaa !16
  %i.abd = shufflevector <2 x double> %i.abc, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.abe = fmul <2 x double> %i.abb, %i.aq
  %i.abf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abd, <2 x double> %i.x, <2 x double> %i.abe)
  store <2 x double> %i.abf, ptr %i.aaz, align 8, !tbaa !16
  %i.abg = fmul <2 x double> %i.abb, %i.y
  %i.abh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abd, <2 x double> %i.aq, <2 x double> %i.abg)
  %i.abi = shufflevector <2 x double> %i.abh, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.abi, ptr %i.aba, align 8, !tbaa !16
  %i.abj = getelementptr inbounds i8, ptr %.0194259, i64 -32 ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %.0194259, i64 16 ; 2 uses
  %i.abl = load <2 x double>, ptr %i.abj, align 8, !tbaa !16 ; 2 uses
  %i.abm = load <2 x double>, ptr %i.abk, align 8, !tbaa !16
  %i.abn = shufflevector <2 x double> %i.abm, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.abo = fmul <2 x double> %i.abl, %i.as
  %i.abp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abn, <2 x double> %i.ae, <2 x double> %i.abo)
  store <2 x double> %i.abp, ptr %i.abj, align 8, !tbaa !16
  %i.abq = fmul <2 x double> %i.abl, %i.af
  %i.abr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abn, <2 x double> %i.as, <2 x double> %i.abq)
  %i.abs = shufflevector <2 x double> %i.abr, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.abs, ptr %i.abk, align 8, !tbaa !16
  %i.abt = getelementptr inbounds i8, ptr %.0194259, i64 -16 ; 2 uses
  %i.abu = load <2 x double>, ptr %i.abt, align 8, !tbaa !16 ; 2 uses
  %i.abv = load <2 x double>, ptr %.0194259, align 8, !tbaa !16
  %i.abw = shufflevector <2 x double> %i.abv, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.abx = fmul <2 x double> %i.abu, %i.au
  %i.aby = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abw, <2 x double> %i.al, <2 x double> %i.abx)
  store <2 x double> %i.aby, ptr %i.abt, align 8, !tbaa !16
  %i.abz = fmul <2 x double> %i.abu, %i.am
  %i.aca = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abw, <2 x double> %i.au, <2 x double> %i.abz)
  %i.acb = shufflevector <2 x double> %i.aca, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.acb, ptr %.0194259, align 8, !tbaa !16
  br label %.loopexit

.loopexit:                                        ; preds = %vector.body, %.preheader.preheader, %mdct_short.exit
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %.0194259, i64 144
  %exitcond291.not = icmp eq i64 %indvars.iv.next289, 32
  br i1 %exitcond291.not, label %bb.o, label %bb.k, !llvm.loop !24

bb.o:                                             ; preds = %.loopexit
  %indvars.iv.next293 = add nuw nsw i64 %indvars.iv292, 1 ; 2 uses
  %i.acd = load i32, ptr %i.d, align 8, !tbaa !34 ; 2 uses
  %i.ace = sext i32 %i.acd to i64
  %i.acf = icmp slt i64 %indvars.iv.next293, %i.ace
  br i1 %i.acf, label %bb.d, label %._crit_edge, !llvm.loop !25

._crit_edge:                                      ; preds = %bb.o
  %i.acg = icmp eq i32 %i.acd, 1
  br i1 %i.acg, label %bb.p, label %._crit_edge.thread

bb.p:                                             ; preds = %._crit_edge
  %i.ach = getelementptr inbounds nuw [9216 x i8], ptr @sb_sample, i64 %indvars.iv295 ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 4608
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(4608) %i.ach, ptr noundef nonnull align 16 dereferenceable(4608) %i.aci, i64 4608, i1 false)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader219, %._crit_edge, %bb.p
  %indvars.iv.next296 = add nuw nsw i64 %indvars.iv295, 1 ; 2 uses
  %i.acj = load i32, ptr %i.a, align 4, !tbaa !33
  %i.ack = sext i32 %i.acj to i64
  %i.acl = icmp slt i64 %indvars.iv.next296, %i.ack
  br i1 %i.acl, label %.preheader219, label %._crit_edge270, !llvm.loop !26

._crit_edge270:                                   ; preds = %._crit_edge.thread, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @mdct_init48() local_unnamed_addr #2 !guid !48 {
.preheader204:
  %i.a = alloca [31 x double], align 16           ; 20 uses
  store double f0xBFE076BFCD6FBECD, ptr @ca.0, align 16, !tbaa !16
  store double f0x3FEB7095010F9356, ptr @cs.0, align 16, !tbaa !16
  store double f0xBFDE30DB485DB660, ptr @ca.1, align 8, !tbaa !16
  store double f0x3FEC373AFE3FA80C, ptr @cs.1, align 8, !tbaa !16
  store double f0xBFD40E604F4701FC, ptr @ca.2, align 16, !tbaa !16
  store double f0x3FEE635B9EE7B56E, ptr @cs.2, align 16, !tbaa !16
  store double f0xBFC748EE85851AEC, ptr @ca.3, align 8, !tbaa !16
  store double f0x3FEF77502A0DD15B, ptr @cs.3, align 8, !tbaa !16
  store double f0xBFB83603A7F2535A, ptr @ca.4, align 16, !tbaa !16
  store double f0x3FEFDB482DD30F5B, ptr @cs.4, align 16, !tbaa !16
  store double f0xBFA4F970DD8206D0, ptr @ca.5, align 8, !tbaa !16
  store double f0x3FEFF91F901A8104, ptr @cs.5, align 8, !tbaa !16
  store double f0xBF8D14239D59A7C1, ptr @ca.6, align 16, !tbaa !16
  store double f0x3FEFFF2C98DBE44E, ptr @cs.6, align 16, !tbaa !16
  store double f0xBF6E4F68C708D3F4, ptr @ca.7, align 8, !tbaa !16
  store double f0x3FEFFFF1A52805D2, ptr @cs.7, align 8, !tbaa !16
  store <2 x double> <double f0x3FA65547C4694E11, double f0x3FC0B5150F6DA2D0>, ptr @win, align 16, !tbaa !16
  store <2 x double> <double f0x3FCBB44B13B62571, double f0x3FD33EC389A5A81E>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 16), align 16, !tbaa !16
  store <2 x double> <double f0x3FD87DE2A6AEA963, double f0x3FDD8D4A0E345738>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 32), align 16, !tbaa !16
  store <2 x double> <double f0x3FE1318EF2C01A5B, double f0x3FE37AF93F9513EA>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 48), align 16, !tbaa !16
  store <2 x double> <double f0x3FE59E6F5AE6A0A6, double f0x3FE797C6A435CE84>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 64), align 16, !tbaa !16
  store <2 x double> <double f0x3FE963268B572492, double f0x3FEAFD100EAFC290>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 80), align 16, !tbaa !16
  store <2 x double> <double f0x3FEC62648AF65770, double f0x3FED906BCF328D46>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 96), align 16, !tbaa !16
  store <2 x double> <double f0x3FEE84D9692357E0, double f0x3FEF3DD11FB974B6>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 112), align 16, !tbaa !16
  store <2 x double> <double f0x3FEFB9EA92EC689B, double f0x3FEFF833F9DA45F7>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 128), align 16, !tbaa !16
  store <2 x double> <double f0x3FEFF833F9DA45F7, double f0x3FEFB9EA92EC689B>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 144), align 16, !tbaa !16
  store <2 x double> <double f0x3FEF3DD11FB974B6, double f0x3FEE84D9692357E1>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 160), align 16, !tbaa !16
  store <2 x double> <double f0x3FED906BCF328D46, double f0x3FEC62648AF65772>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 176), align 16, !tbaa !16
  store <2 x double> <double f0x3FEAFD100EAFC291, double f0x3FE963268B572492>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 192), align 16, !tbaa !16
  store <2 x double> <double f0x3FE797C6A435CE85, double f0x3FE59E6F5AE6A0A8>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 208), align 16, !tbaa !16
  store <2 x double> <double f0x3FE37AF93F9513EC, double f0x3FE1318EF2C01A5D>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 224), align 16, !tbaa !16
  store <2 x double> <double f0x3FDD8D4A0E345738, double f0x3FD87DE2A6AEA965>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 240), align 16, !tbaa !16
  store <2 x double> <double f0x3FD33EC389A5A822, double f0x3FCBB44B13B6257C>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 256), align 16, !tbaa !16
  store <2 x double> <double f0x3FC0B5150F6DA2D0, double f0x3FA65547C4694E1B>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 272), align 16, !tbaa !16
  store <2 x double> <double f0x3FA65547C4694E11, double f0x3FC0B5150F6DA2D0>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 288), align 16, !tbaa !16
  store <2 x double> <double f0x3FCBB44B13B62571, double f0x3FD33EC389A5A81E>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 304), align 16, !tbaa !16
  store <2 x double> <double f0x3FD87DE2A6AEA963, double f0x3FDD8D4A0E345738>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 320), align 16, !tbaa !16
  store <2 x double> <double f0x3FE1318EF2C01A5B, double f0x3FE37AF93F9513EA>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 336), align 16, !tbaa !16
  store <2 x double> <double f0x3FE59E6F5AE6A0A6, double f0x3FE797C6A435CE84>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 352), align 16, !tbaa !16
  store <2 x double> <double f0x3FE963268B572492, double f0x3FEAFD100EAFC290>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 368), align 16, !tbaa !16
  store <2 x double> <double f0x3FEC62648AF65770, double f0x3FED906BCF328D46>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 384), align 16, !tbaa !16
  store <2 x double> <double f0x3FEE84D9692357E0, double f0x3FEF3DD11FB974B6>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 400), align 16, !tbaa !16
  store <2 x double> <double f0x3FEFB9EA92EC689B, double f0x3FEFF833F9DA45F7>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 416), align 16, !tbaa !16
  store <2 x double> splat (double 1.000000e+00), ptr getelementptr inbounds nuw (i8, ptr @win, i64 432), align 16, !tbaa !16
  store <2 x double> splat (double 1.000000e+00), ptr getelementptr inbounds nuw (i8, ptr @win, i64 448), align 16, !tbaa !16
  store <2 x double> splat (double 1.000000e+00), ptr getelementptr inbounds nuw (i8, ptr @win, i64 464), align 16, !tbaa !16
  store <2 x double> <double f0x3FEFB9EA92EC689C, double f0x3FED906BCF328D49>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 480), align 16, !tbaa !16
  store <2 x double> <double f0x3FE963268B572498, double f0x3FE37AF93F9513ED>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 496), align 16, !tbaa !16
  store <2 x double> <double f0x3FD87DE2A6AEA96F, double f0x3FC0B5150F6DA2F6>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 512), align 16, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @win, i64 528), i8 0, i64 48, i1 false), !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @win, i64 864), i8 0, i64 48, i1 false)
  store <2 x double> <double f0x3FC0B5150F6DA2F6, double f0x3FD87DE2A6AEA96F>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 912), align 16, !tbaa !16
  store <2 x double> <double f0x3FE37AF93F9513ED, double f0x3FE963268B572498>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 928), align 16, !tbaa !16
  %i.b = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 480), align 16, !tbaa !16
  %i.c = shufflevector <2 x double> %i.b, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.c, ptr getelementptr inbounds nuw (i8, ptr @win, i64 944), align 16, !tbaa !16
  %i.d = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 464), align 16, !tbaa !16
  %i.e = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.e, ptr getelementptr inbounds nuw (i8, ptr @win, i64 960), align 16, !tbaa !16
  %i.f = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 448), align 16, !tbaa !16
  %i.g = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.g, ptr getelementptr inbounds nuw (i8, ptr @win, i64 976), align 16, !tbaa !16
  %i.h = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 432), align 16, !tbaa !16
  %i.i = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.i, ptr getelementptr inbounds nuw (i8, ptr @win, i64 992), align 16, !tbaa !16
  store <2 x double> <double f0x3FEFF833F9DA45F7, double f0x3FEFB9EA92EC689B>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1008), align 16, !tbaa !16
  store <2 x double> <double f0x3FEF3DD11FB974B6, double f0x3FEE84D9692357E0>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1024), align 16, !tbaa !16
  store <2 x double> <double f0x3FED906BCF328D46, double f0x3FEC62648AF65770>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1040), align 16, !tbaa !16
  store <2 x double> <double f0x3FEAFD100EAFC290, double f0x3FE963268B572492>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1056), align 16, !tbaa !16
  store <2 x double> <double f0x3FE797C6A435CE84, double f0x3FE59E6F5AE6A0A6>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1072), align 16, !tbaa !16
  store <2 x double> <double f0x3FE37AF93F9513EA, double f0x3FE1318EF2C01A5B>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1088), align 16, !tbaa !16
  store <2 x double> <double f0x3FDD8D4A0E345738, double f0x3FD87DE2A6AEA963>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1104), align 16, !tbaa !16
  store <2 x double> <double f0x3FD33EC389A5A81E, double f0x3FCBB44B13B62571>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1120), align 16, !tbaa !16
  store <2 x double> <double f0x3FC0B5150F6DA2D0, double f0x3FA65547C4694E11>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1136), align 16, !tbaa !16
  br label %.preheader203

.preheader203:                                    ; preds = %.preheader204, %.preheader203
  %indvars.iv = phi i64 [ 11, %.preheader204 ], [ %indvars.iv.next, %.preheader203 ] ; 3 uses
  %.0173 = phi ptr [ @cos_l, %.preheader204 ], [ %i.cl, %.preheader203 ] ; 23 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @all, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !7
  %i.l = shl nsw i32 %i.k, 1
  %i.m = or disjoint i32 %i.l, 1
  %i.n = sitofp i32 %i.m to double
  %i.o = fmul nnan double %i.n, f0x3F9657184AE74487 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0173, i64 16
  %i.q = insertelement <4 x double> poison, double %i.o, i64 0
  %i.r = shufflevector <4 x double> %i.q, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.s = fmul nnan <4 x double> %i.r, <double 3.800000e+01, double 4.200000e+01, double 4.600000e+01, double 5.000000e+01> ; 4 uses
  %i.t = extractelement <4 x double> %i.s, i64 0
  %i.u = tail call double @cos(double noundef %i.t) #6, !tbaa !7
  %i.v = extractelement <4 x double> %i.s, i64 1
  %i.w = tail call double @cos(double noundef %i.v) #6, !tbaa !7
  %i.x = insertelement <2 x double> poison, double %i.u, i64 0
  %i.y = insertelement <2 x double> %i.x, double %i.w, i64 1
  %i.z = fmul <2 x double> %i.y, splat (double f0x3FBC71C71C71C71C)
  store <2 x double> %i.z, ptr %.0173, align 8, !tbaa !16
  %i.aa = extractelement <4 x double> %i.s, i64 2
  %i.ab = tail call double @cos(double noundef %i.aa) #6, !tbaa !7
  %i.ac = extractelement <4 x double> %i.s, i64 3
  %i.ad = tail call double @cos(double noundef %i.ac) #6, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %.0173, i64 32
  %i.af = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.ag = insertelement <2 x double> %i.af, double %i.ad, i64 1
  %i.ah = fmul <2 x double> %i.ag, splat (double f0x3FBC71C71C71C71C)
  store <2 x double> %i.ah, ptr %i.p, align 8, !tbaa !16
  %i.ai = getelementptr inbounds nuw i8, ptr %.0173, i64 48
  %i.aj = fmul nnan <4 x double> %i.r, <double 5.400000e+01, double 5.800000e+01, double 6.200000e+01, double 6.600000e+01> ; 4 uses
  %i.ak = extractelement <4 x double> %i.aj, i64 0
  %i.al = tail call double @cos(double noundef %i.ak) #6, !tbaa !7
  %i.am = extractelement <4 x double> %i.aj, i64 1
  %i.an = tail call double @cos(double noundef %i.am) #6, !tbaa !7
  %i.ao = insertelement <2 x double> poison, double %i.al, i64 0
  %i.ap = insertelement <2 x double> %i.ao, double %i.an, i64 1
  %i.aq = fmul <2 x double> %i.ap, splat (double f0x3FBC71C71C71C71C)
  store <2 x double> %i.aq, ptr %i.ae, align 8, !tbaa !16
  %i.ar = extractelement <4 x double> %i.aj, i64 2
  %i.as = tail call double @cos(double noundef %i.ar) #6, !tbaa !7
  %i.at = extractelement <4 x double> %i.aj, i64 3
  %i.au = tail call double @cos(double noundef %i.at) #6, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %.0173, i64 64
  %i.aw = insertelement <2 x double> poison, double %i.as, i64 0
  %i.ax = insertelement <2 x double> %i.aw, double %i.au, i64 1
  %i.ay = fmul <2 x double> %i.ax, splat (double f0x3FBC71C71C71C71C)
  store <2 x double> %i.ay, ptr %i.ai, align 8, !tbaa !16
  %i.az = getelementptr inbounds nuw i8, ptr %.0173, i64 80
  %i.ba = fmul nnan <4 x double> %i.r, <double 7.000000e+01, double 1.100000e+02, double 1.140000e+02, double 1.180000e+02> ; 4 uses
  %i.bb = extractelement <4 x double> %i.ba, i64 0
  %i.bc = tail call double @cos(double noundef %i.bb) #6, !tbaa !7
  %i.bd = extractelement <4 x double> %i.ba, i64 1
  %i.be = tail call double @cos(double noundef %i.bd) #6, !tbaa !7
  %i.bf = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.bg = insertelement <2 x double> %i.bf, double %i.be, i64 1
  %i.bh = fmul <2 x double> %i.bg, splat (double f0x3FBC71C71C71C71C)
  store <2 x double> %i.bh, ptr %i.av, align 8, !tbaa !16
  %i.bi = extractelement <4 x double> %i.ba, i64 2
  %i.bj = tail call double @cos(double noundef %i.bi) #6, !tbaa !7
  %i.bk = extractelement <4 x double> %i.ba, i64 3
  %i.bl = tail call double @cos(double noundef %i.bk) #6, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %.0173, i64 96
  %i.bn = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.bo = insertelement <2 x double> %i.bn, double %i.bl, i64 1
  %i.bp = fmul <2 x double> %i.bo, splat (double f0x3FBC71C71C71C71C)
  store <2 x double> %i.bp, ptr %i.az, align 8, !tbaa !16
  %i.bq = getelementptr inbounds nuw i8, ptr %.0173, i64 112
  %i.br = fmul nnan <4 x double> %i.r, <double 1.220000e+02, double 1.260000e+02, double 1.300000e+02, double 1.340000e+02> ; 4 uses
  %i.bs = extractelement <4 x double> %i.br, i64 0
  %i.bt = tail call double @cos(double noundef %i.bs) #6, !tbaa !7
  %i.bu = extractelement <4 x double> %i.br, i64 1
  %i.bv = tail call double @cos(double noundef %i.bu) #6, !tbaa !7
  %i.bw = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.bx = insertelement <2 x double> %i.bw, double %i.bv, i64 1
  %i.by = fmul <2 x double> %i.bx, splat (double f0x3FBC71C71C71C71C)
  store <2 x double> %i.by, ptr %i.bm, align 8, !tbaa !16
  %i.bz = extractelement <4 x double> %i.br, i64 2
  %i.ca = tail call double @cos(double noundef %i.bz) #6, !tbaa !7
  %i.cb = extractelement <4 x double> %i.br, i64 3
  %i.cc = tail call double @cos(double noundef %i.cb) #6, !tbaa !7
  %i.cd = getelementptr inbounds nuw i8, ptr %.0173, i64 128
  %i.ce = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.cf = insertelement <2 x double> %i.ce, double %i.cc, i64 1
  %i.cg = fmul <2 x double> %i.cf, splat (double f0x3FBC71C71C71C71C)
  store <2 x double> %i.cg, ptr %i.bq, align 8, !tbaa !16
  %i.ch = fmul nnan double %i.o, 1.380000e+02
  %i.ci = tail call double @cos(double noundef %i.ch) #6, !tbaa !7
  %i.cj = fmul nnan double %i.o, 1.420000e+02
  %i.ck = tail call double @cos(double noundef %i.cj) #6, !tbaa !7
  %i.cl = getelementptr inbounds nuw i8, ptr %.0173, i64 144 ; 2 uses
  %i.cm = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.cn = insertelement <2 x double> %i.cm, double %i.ck, i64 1
  %i.co = fmul <2 x double> %i.cn, splat (double f0x3FBC71C71C71C71C)
  store <2 x double> %i.co, ptr %i.cd, align 8, !tbaa !16
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %.preheader201.preheader, label %.preheader203, !llvm.loop !45

.preheader201.preheader:                          ; preds = %.preheader203
  %i.cp = getelementptr inbounds nuw i8, ptr %.0173, i64 160
  store <2 x double> <double f0xBFB150DD8DD9D8BF, double f0x3FA5C53B3ED42489>, ptr %i.cl, align 8, !tbaa !16
  %i.cq = getelementptr inbounds nuw i8, ptr %.0173, i64 176
  store <2 x double> <double f0xBF8DB3B3A9A67635, double f0x3FB69105D1310418>, ptr %i.cp, align 8, !tbaa !16
  %i.cr = getelementptr inbounds nuw i8, ptr %.0173, i64 192
  store <2 x double> <double f0xBFBA477C4665D2FD, double f0x3FBC337B2D43EB39>, ptr %i.cq, align 8, !tbaa !16
  %i.cs = getelementptr inbounds nuw i8, ptr %.0173, i64 208
  store <2 x double> <double f0x3F8DB3B3A9A6765A, double f0x3FBA477C4665D2EF>, ptr %i.cr, align 8, !tbaa !16
  %i.ct = getelementptr inbounds nuw i8, ptr %.0173, i64 224
  store <2 x double> <double f0xBFB150DD8DD9D8C0, double f0xBFBC337B2D43EB38>, ptr %i.cs, align 8, !tbaa !16
  %i.cu = getelementptr inbounds nuw i8, ptr %.0173, i64 240
  store <2 x double> <double f0x3FA5C53B3ED424BF, double f0x3FB69105D1310415>, ptr %i.ct, align 8, !tbaa !16
  %i.cv = getelementptr inbounds nuw i8, ptr %.0173, i64 256
  store <2 x double> <double f0x3FBC337B2D43EB35, double f0x3FA5C53B3ED424BE>, ptr %i.cu, align 8, !tbaa !16
  %i.cw = getelementptr inbounds nuw i8, ptr %.0173, i64 272
  store <2 x double> <double f0xBFB69105D1310415, double f0x3F8DB3B3A9A676B8>, ptr %i.cv, align 8, !tbaa !16
  %i.cx = getelementptr inbounds nuw i8, ptr %.0173, i64 288
  store <2 x double> <double f0xBFBA477C4665D2EA, double f0xBFB150DD8DD9D8CB>, ptr %i.cw, align 8, !tbaa !16
  %i.cy = getelementptr inbounds nuw i8, ptr %.0173, i64 304
  store <2 x double> <double f0xBFB69105D131040F, double f0xBFBA477C4665D2E8>, ptr %i.cx, align 8, !tbaa !16
  %i.cz = getelementptr inbounds nuw i8, ptr %.0173, i64 320
  store <2 x double> <double f0xBFBC337B2D43EB34, double f0xBFB150DD8DD9D8D2>, ptr %i.cy, align 8, !tbaa !16
  %i.da = getelementptr inbounds nuw i8, ptr %.0173, i64 336
  store <2 x double> <double f0xBFA5C53B3ED424D2, double f0xBF8DB3B3A9A67701>, ptr %i.cz, align 8, !tbaa !16
  %i.db = getelementptr inbounds nuw i8, ptr %.0173, i64 352
  store <2 x double> <double f0xBFBA477C4665D2F0, double f0xBFA5C53B3ED424C1>, ptr %i.da, align 8, !tbaa !16
  store <2 x double> <double f0x3FA5C53B3ED424D4, double f0xBFBA477C4665D2E6>, ptr %i.db, align 8, !tbaa !16
  %i.dc = load double, ptr getelementptr inbounds nuw (i8, ptr @enwindow, i64 1984), align 16, !tbaa !16 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.dd = load double, ptr @enwindow, align 16, !tbaa !16 ; 3 uses
  %i.de = fdiv double %i.dd, %i.dc
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store double %i.de, ptr %i.df, align 8, !tbaa !16
  %i.dg = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @enwindow, i64 8), align 8, !tbaa !16
  %i.dh = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.di = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.dj = fdiv <2 x double> %i.dg, %i.di
  store <2 x double> %i.dj, ptr @enwindow, align 16, !tbaa !16
  %i.dk = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @enwindow, i64 24), align 8, !tbaa !16
  %i.dl = fdiv <2 x double> %i.dk, %i.di
  store <2 x double> %i.dl, ptr getelementptr inbounds nuw (i8, ptr @enwindow, i64 16), align 16, !tbaa !16
  %i.dm = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @enwindow, i64 40), align 8, !tbaa !16
  %i.dn = fdiv <2 x double> %i.dm, %i.di
  store <2 x double> %i.dn, ptr getelementptr inbounds nuw (i8, ptr @enwindow, i64 32), align 16, !tbaa !16
  %i.do = load double, ptr getelementptr inbounds nuw (i8, ptr @enwindow, i64 56), align 8, !tbaa !16
  %i.dp = fdiv double %i.do, %i.dd
  store double %i.dp, ptr getelementptr inbounds nuw (i8, ptr @enwindow, i64 48), align 16, !tbaa !16
  br label %.preheader198

.preheader198:                                    ; preds = %.preheader201.preheader, %.preheader198
  %indvars.iv273 = phi i64 [ 14, %.preheader201.preheader ], [ %indvars.iv.next274, %.preheader198 ] ; 4 uses
  %.1161236 = phi ptr [ getelementptr inbounds nuw (i8, ptr @enwindow, i64 56), %.preheader201.preheader ], [ %i.fq, %.preheader198 ] ; 22 uses
  %.1165235 = phi ptr [ getelementptr inbounds nuw (i8, ptr @enwindow, i64 64), %.preheader201.preheader ], [ %.2166.14, %.preheader198 ] ; 23 uses
  %i.dq = sub nuw nsw i64 30, %indvars.iv273
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dq
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv273
  %i.dt = load <2 x double>, ptr %.1165235, align 8, !tbaa !16 ; 3 uses
  %i.du = extractelement <2 x double> %i.dt, i64 0 ; 14 uses
  %i.dv = shufflevector <2 x double> %i.dt, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.dw = insertelement <2 x double> %i.dv, double %i.dc, i64 0
  %i.dx = fdiv <2 x double> %i.dt, %i.dw          ; 2 uses
  %i.dy = extractelement <2 x double> %i.dx, i64 0 ; 2 uses
  store double %i.dy, ptr %i.dr, align 8, !tbaa !16
  store double %i.dy, ptr %i.ds, align 8, !tbaa !16
  %i.dz = getelementptr inbounds nuw i8, ptr %.1161236, i64 8
  %i.ea = extractelement <2 x double> %i.dx, i64 1
  store double %i.ea, ptr %.1161236, align 8, !tbaa !16
  %.2166 = getelementptr inbounds nuw i8, ptr %.1165235, i64 16
  %i.eb = load double, ptr %.2166, align 8, !tbaa !16
  %i.ec = fdiv double %i.eb, %i.du
  %i.ed = getelementptr inbounds nuw i8, ptr %.1161236, i64 16
  store double %i.ec, ptr %i.dz, align 8, !tbaa !16
  %.2166.1 = getelementptr inbounds nuw i8, ptr %.1165235, i64 24
  %i.ee = load double, ptr %.2166.1, align 8, !tbaa !16
  %i.ef = fdiv double %i.ee, %i.du
  %i.eg = getelementptr inbounds nuw i8, ptr %.1161236, i64 24
  store double %i.ef, ptr %i.ed, align 8, !tbaa !16
  %.2166.2 = getelementptr inbounds nuw i8, ptr %.1165235, i64 32
  %i.eh = load double, ptr %.2166.2, align 8, !tbaa !16
  %i.ei = fdiv double %i.eh, %i.du
  %i.ej = getelementptr inbounds nuw i8, ptr %.1161236, i64 32
  store double %i.ei, ptr %i.eg, align 8, !tbaa !16
  %.2166.3 = getelementptr inbounds nuw i8, ptr %.1165235, i64 40
  %i.ek = load double, ptr %.2166.3, align 8, !tbaa !16
  %i.el = fdiv double %i.ek, %i.du
  %i.em = getelementptr inbounds nuw i8, ptr %.1161236, i64 40
  store double %i.el, ptr %i.ej, align 8, !tbaa !16
  %.2166.4 = getelementptr inbounds nuw i8, ptr %.1165235, i64 48
  %i.en = load double, ptr %.2166.4, align 8, !tbaa !16
  %i.eo = fdiv double %i.en, %i.du
  %i.ep = getelementptr inbounds nuw i8, ptr %.1161236, i64 48
  store double %i.eo, ptr %i.em, align 8, !tbaa !16
  %.2166.5 = getelementptr inbounds nuw i8, ptr %.1165235, i64 56
  %i.eq = load double, ptr %.2166.5, align 8, !tbaa !16
  %i.er = fdiv double %i.eq, %i.du
  %i.es = getelementptr inbounds nuw i8, ptr %.1161236, i64 56
  store double %i.er, ptr %i.ep, align 8, !tbaa !16
  %.2166.6 = getelementptr inbounds nuw i8, ptr %.1165235, i64 64
  %i.et = load double, ptr %.2166.6, align 8, !tbaa !16
  %i.eu = fdiv double %i.et, %i.du
  %i.ev = getelementptr inbounds nuw i8, ptr %.1161236, i64 64
  store double %i.eu, ptr %i.es, align 8, !tbaa !16
  %.2166.7 = getelementptr inbounds nuw i8, ptr %.1165235, i64 72
  %i.ew = load double, ptr %.2166.7, align 8, !tbaa !16
  %i.ex = fdiv double %i.ew, %i.du
  %i.ey = getelementptr inbounds nuw i8, ptr %.1161236, i64 72
  store double %i.ex, ptr %i.ev, align 8, !tbaa !16
  %.2166.8 = getelementptr inbounds nuw i8, ptr %.1165235, i64 80
  %i.ez = load double, ptr %.2166.8, align 8, !tbaa !16
  %i.fa = fdiv double %i.ez, %i.du
  %i.fb = getelementptr inbounds nuw i8, ptr %.1161236, i64 80
  store double %i.fa, ptr %i.ey, align 8, !tbaa !16
  %.2166.9 = getelementptr inbounds nuw i8, ptr %.1165235, i64 88
  %i.fc = load double, ptr %.2166.9, align 8, !tbaa !16
  %i.fd = fdiv double %i.fc, %i.du
  %i.fe = getelementptr inbounds nuw i8, ptr %.1161236, i64 88
  store double %i.fd, ptr %i.fb, align 8, !tbaa !16
  %.2166.10 = getelementptr inbounds nuw i8, ptr %.1165235, i64 96
  %i.ff = load double, ptr %.2166.10, align 8, !tbaa !16
  %i.fg = fdiv double %i.ff, %i.du
  %i.fh = getelementptr inbounds nuw i8, ptr %.1161236, i64 96
  store double %i.fg, ptr %i.fe, align 8, !tbaa !16
  %.2166.11 = getelementptr inbounds nuw i8, ptr %.1165235, i64 104
  %i.fi = load double, ptr %.2166.11, align 8, !tbaa !16
  %i.fj = fdiv double %i.fi, %i.du
  %i.fk = getelementptr inbounds nuw i8, ptr %.1161236, i64 104
  store double %i.fj, ptr %i.fh, align 8, !tbaa !16
  %.2166.12 = getelementptr inbounds nuw i8, ptr %.1165235, i64 112
  %i.fl = load double, ptr %.2166.12, align 8, !tbaa !16
  %i.fm = fdiv double %i.fl, %i.du
  %i.fn = getelementptr inbounds nuw i8, ptr %.1161236, i64 112
  store double %i.fm, ptr %i.fk, align 8, !tbaa !16
  %.2166.13 = getelementptr inbounds nuw i8, ptr %.1165235, i64 120
  %i.fo = load double, ptr %.2166.13, align 8, !tbaa !16
  %i.fp = fdiv double %i.fo, %i.du
  %i.fq = getelementptr inbounds nuw i8, ptr %.1161236, i64 120 ; 2 uses
  store double %i.fp, ptr %i.fn, align 8, !tbaa !16
  %.2166.14 = getelementptr inbounds nuw i8, ptr %.1165235, i64 128
  %indvars.iv.next274 = add nsw i64 %indvars.iv273, -1
  %.not301 = icmp eq i64 %indvars.iv273, 0
  br i1 %.not301, label %.preheader197.preheader, label %.preheader198, !llvm.loop !46

.preheader197.preheader:                          ; preds = %.preheader198
  %.3167 = getelementptr inbounds nuw i8, ptr %.1165235, i64 136
  %i.fr = load double, ptr %.3167, align 8, !tbaa !16
  %i.fs = fdiv double %i.fr, %i.dc
  %i.ft = getelementptr inbounds nuw i8, ptr %.1161236, i64 128
  store double %i.fs, ptr %i.fq, align 8, !tbaa !16
  %.3167.1 = getelementptr inbounds nuw i8, ptr %.1165235, i64 144
  %i.fu = load double, ptr %.3167.1, align 8, !tbaa !16
  %i.fv = fdiv double %i.fu, %i.dc
  %i.fw = getelementptr inbounds nuw i8, ptr %.1161236, i64 136
  store double %i.fv, ptr %i.ft, align 8, !tbaa !16
  %.3167.2 = getelementptr inbounds nuw i8, ptr %.1165235, i64 152
  %i.fx = load double, ptr %.3167.2, align 8, !tbaa !16
  %i.fy = fdiv double %i.fx, %i.dc
  %i.fz = getelementptr inbounds nuw i8, ptr %.1161236, i64 144
  store double %i.fy, ptr %i.fw, align 8, !tbaa !16
  %.3167.3 = getelementptr inbounds nuw i8, ptr %.1165235, i64 160
  %i.ga = load double, ptr %.3167.3, align 8, !tbaa !16
  %i.gb = fdiv double %i.ga, %i.dc
  %i.gc = getelementptr inbounds nuw i8, ptr %.1161236, i64 152
  store double %i.gb, ptr %i.fz, align 8, !tbaa !16
  %.3167.4 = getelementptr inbounds nuw i8, ptr %.1165235, i64 168
  %i.gd = load double, ptr %.3167.4, align 8, !tbaa !16
  %i.ge = fdiv double %i.gd, %i.dc
  %i.gf = getelementptr inbounds nuw i8, ptr %.1161236, i64 160
  store double %i.ge, ptr %i.gc, align 8, !tbaa !16
  %.3167.5 = getelementptr inbounds nuw i8, ptr %.1165235, i64 176
  %i.gg = load double, ptr %.3167.5, align 8, !tbaa !16
  %i.gh = fdiv double %i.gg, %i.dc
  %i.gi = getelementptr inbounds nuw i8, ptr %.1161236, i64 168
  store double %i.gh, ptr %i.gf, align 8, !tbaa !16
  %.3167.6 = getelementptr inbounds nuw i8, ptr %.1165235, i64 184
  %i.gj = load double, ptr %.3167.6, align 8, !tbaa !16
  %i.gk = fdiv double %i.gj, %i.dc
  store double %i.gk, ptr %i.gi, align 8, !tbaa !16
  %i.gl = load <2 x double>, ptr %i.a, align 16, !tbaa !16
  %i.gm = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.gn = load <2 x double>, ptr %i.gm, align 16, !tbaa !16
  %i.go = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.gp = load <2 x double>, ptr %i.go, align 16, !tbaa !16
  %i.gq = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.gr = load <2 x double>, ptr %i.gq, align 16, !tbaa !16
  %i.gs = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.gt = load <2 x double>, ptr %i.gs, align 16, !tbaa !16
  %i.gu = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.gv = load <2 x double>, ptr %i.gu, align 16, !tbaa !16
  %i.gw = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.gx = load <2 x double>, ptr %i.gw, align 16, !tbaa !16
  %i.gy = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.gz = load <2 x double>, ptr %i.gy, align 16, !tbaa !16
  %i.ha = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.hb = load <2 x double>, ptr %i.ha, align 16, !tbaa !16
  %i.hc = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.hd = load <1 x double>, ptr %i.hc, align 16
  %i.he = shufflevector <1 x double> %i.hd, <1 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.hf = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.hg = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.hh = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.hi = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.hj = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.hk = load double, ptr %i.hf, align 8, !tbaa !16
  %i.hl = load <2 x double>, ptr %i.hg, align 16, !tbaa !16
  %i.hm = insertelement <4 x double> %i.he, double %i.hk, i64 1
  %i.hn = shufflevector <2 x double> %i.hl, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ho = shufflevector <4 x double> %i.hm, <4 x double> %i.hn, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.hp = load <4 x double>, ptr %i.hh, align 16, !tbaa !16
  %i.hq = load <4 x double>, ptr %i.hi, align 16, !tbaa !16
  %i.hr = load double, ptr %i.hj, align 16, !tbaa !16
  br label %.preheader195

.preheader195:                                    ; preds = %.preheader197.preheader, %.preheader195
  %indvars.iv279 = phi i64 [ 15, %.preheader197.preheader ], [ %indvars.iv.next280, %.preheader195 ] ; 3 uses
  %.4168243 = phi ptr [ @mm, %.preheader197.preheader ], [ %i.qw, %.preheader195 ] ; 14 uses
  %i.hs = shl nuw nsw i64 %indvars.iv279, 1
  %i.ht = or disjoint i64 %i.hs, 1                ; 31 uses
  %i.hu = trunc nuw nsw i64 %i.ht to i32
  %i.hv = uitofp nneg i32 %i.hu to double
  %i.hw = fmul nnan double %i.hv, f0x400921FB54442D18
  %i.hx = fmul nnan double %i.hw, 1.562500e-02
  %i.hy = tail call double @cos(double noundef %i.hx) #6, !tbaa !7
  %.tr = trunc nuw nsw i64 %i.ht to i32
  %i.hz = shl nuw nsw i32 %.tr, 1
  %i.ia = uitofp nneg i32 %i.hz to double
  %i.ib = fmul nnan double %i.ia, f0x400921FB54442D18
  %i.ic = fmul nnan double %i.ib, 1.562500e-02
  %i.id = tail call double @cos(double noundef %i.ic) #6, !tbaa !7
  %i.ie = getelementptr inbounds nuw i8, ptr %.4168243, i64 16
  %i.if = insertelement <2 x double> poison, double %i.hy, i64 0
  %i.ig = insertelement <2 x double> %i.if, double %i.id, i64 1
  %i.ih = fmul <2 x double> %i.ig, %i.gl
  store <2 x double> %i.ih, ptr %.4168243, align 8, !tbaa !16
  %i.ii = trunc i64 %i.ht to i32
  %i.ij = mul i32 %i.ii, 3
  %i.ik = uitofp nneg i32 %i.ij to double
  %i.il = fmul nnan double %i.ik, f0x400921FB54442D18
  %i.im = fmul nnan double %i.il, 1.562500e-02
  %i.in = tail call double @cos(double noundef %i.im) #6, !tbaa !7
  %.tr302 = trunc nuw nsw i64 %i.ht to i32
  %i.io = shl nuw nsw i32 %.tr302, 2
  %i.ip = uitofp nneg i32 %i.io to double
  %i.iq = fmul nnan double %i.ip, f0x400921FB54442D18
  %i.ir = fmul nnan double %i.iq, 1.562500e-02
  %i.is = tail call double @cos(double noundef %i.ir) #6, !tbaa !7
  %i.it = getelementptr inbounds nuw i8, ptr %.4168243, i64 32
  %i.iu = insertelement <2 x double> poison, double %i.in, i64 0
  %i.iv = insertelement <2 x double> %i.iu, double %i.is, i64 1
  %i.iw = fmul <2 x double> %i.iv, %i.gn
  store <2 x double> %i.iw, ptr %i.ie, align 8, !tbaa !16
  %i.ix = trunc i64 %i.ht to i32
  %i.iy = mul i32 %i.ix, 5
  %i.iz = uitofp nneg i32 %i.iy to double
  %i.ja = fmul nnan double %i.iz, f0x400921FB54442D18
  %i.jb = fmul nnan double %i.ja, 1.562500e-02
  %i.jc = tail call double @cos(double noundef %i.jb) #6, !tbaa !7
  %i.jd = trunc i64 %i.ht to i32
  %i.je = mul i32 %i.jd, 6
  %i.jf = uitofp nneg i32 %i.je to double
  %i.jg = fmul nnan double %i.jf, f0x400921FB54442D18
  %i.jh = fmul nnan double %i.jg, 1.562500e-02
  %i.ji = tail call double @cos(double noundef %i.jh) #6, !tbaa !7
  %i.jj = getelementptr inbounds nuw i8, ptr %.4168243, i64 48
  %i.jk = insertelement <2 x double> poison, double %i.jc, i64 0
  %i.jl = insertelement <2 x double> %i.jk, double %i.ji, i64 1
  %i.jm = fmul <2 x double> %i.jl, %i.gp
  store <2 x double> %i.jm, ptr %i.it, align 8, !tbaa !16
  %i.jn = trunc i64 %i.ht to i32
  %i.jo = mul i32 %i.jn, 7
  %i.jp = uitofp nneg i32 %i.jo to double
  %i.jq = fmul nnan double %i.jp, f0x400921FB54442D18
  %i.jr = fmul nnan double %i.jq, 1.562500e-02
  %i.js = tail call double @cos(double noundef %i.jr) #6, !tbaa !7
  %.tr303 = trunc nuw nsw i64 %i.ht to i32
  %i.jt = shl nuw nsw i32 %.tr303, 3
  %i.ju = uitofp nneg i32 %i.jt to double
  %i.jv = fmul nnan double %i.ju, f0x400921FB54442D18
  %i.jw = fmul nnan double %i.jv, 1.562500e-02
  %i.jx = tail call double @cos(double noundef %i.jw) #6, !tbaa !7
  %i.jy = getelementptr inbounds nuw i8, ptr %.4168243, i64 64
  %i.jz = insertelement <2 x double> poison, double %i.js, i64 0
  %i.ka = insertelement <2 x double> %i.jz, double %i.jx, i64 1
  %i.kb = fmul <2 x double> %i.ka, %i.gr
  store <2 x double> %i.kb, ptr %i.jj, align 8, !tbaa !16
  %i.kc = trunc i64 %i.ht to i32
  %i.kd = mul i32 %i.kc, 9
  %i.ke = uitofp nneg i32 %i.kd to double
  %i.kf = fmul nnan double %i.ke, f0x400921FB54442D18
  %i.kg = fmul nnan double %i.kf, 1.562500e-02
  %i.kh = tail call double @cos(double noundef %i.kg) #6, !tbaa !7
  %i.ki = trunc i64 %i.ht to i32
  %i.kj = mul i32 %i.ki, 10
  %i.kk = uitofp nneg i32 %i.kj to double
  %i.kl = fmul nnan double %i.kk, f0x400921FB54442D18
  %i.km = fmul nnan double %i.kl, 1.562500e-02
  %i.kn = tail call double @cos(double noundef %i.km) #6, !tbaa !7
  %i.ko = getelementptr inbounds nuw i8, ptr %.4168243, i64 80
  %i.kp = insertelement <2 x double> poison, double %i.kh, i64 0
  %i.kq = insertelement <2 x double> %i.kp, double %i.kn, i64 1
  %i.kr = fmul <2 x double> %i.kq, %i.gt
  store <2 x double> %i.kr, ptr %i.jy, align 8, !tbaa !16
  %i.ks = trunc i64 %i.ht to i32
  %i.kt = mul i32 %i.ks, 11
  %i.ku = uitofp nneg i32 %i.kt to double
  %i.kv = fmul nnan double %i.ku, f0x400921FB54442D18
  %i.kw = fmul nnan double %i.kv, 1.562500e-02
  %i.kx = tail call double @cos(double noundef %i.kw) #6, !tbaa !7
  %i.ky = trunc i64 %i.ht to i32
  %i.kz = mul i32 %i.ky, 12
  %i.la = uitofp nneg i32 %i.kz to double
  %i.lb = fmul nnan double %i.la, f0x400921FB54442D18
  %i.lc = fmul nnan double %i.lb, 1.562500e-02
  %i.ld = tail call double @cos(double noundef %i.lc) #6, !tbaa !7
  %i.le = getelementptr inbounds nuw i8, ptr %.4168243, i64 96
  %i.lf = insertelement <2 x double> poison, double %i.kx, i64 0
  %i.lg = insertelement <2 x double> %i.lf, double %i.ld, i64 1
  %i.lh = fmul <2 x double> %i.lg, %i.gv
  store <2 x double> %i.lh, ptr %i.ko, align 8, !tbaa !16
  %i.li = trunc i64 %i.ht to i32
  %i.lj = mul i32 %i.li, 13
  %i.lk = uitofp nneg i32 %i.lj to double
  %i.ll = fmul nnan double %i.lk, f0x400921FB54442D18
  %i.lm = fmul nnan double %i.ll, 1.562500e-02
  %i.ln = tail call double @cos(double noundef %i.lm) #6, !tbaa !7
  %i.lo = trunc i64 %i.ht to i32
  %i.lp = mul i32 %i.lo, 14
  %i.lq = uitofp nneg i32 %i.lp to double
  %i.lr = fmul nnan double %i.lq, f0x400921FB54442D18
  %i.ls = fmul nnan double %i.lr, 1.562500e-02
end_hunk_0
