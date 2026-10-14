Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/aahd_demosaic?download=true
inline.NumInlined: 46
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN4AAHD12evaluate_ahdEv:.preheader326
.critedge.1.1:                                    ; preds = %bb.k
  %i.lz = load ptr, ptr %i.im, align 8, !tbaa !89
  %i.ma = getelementptr i8, ptr %i.lz, i64 %indvars.iv384
  %i.mb = getelementptr i8, ptr %i.ma, i64 3      ; 2 uses
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !102
  %i.md = add i8 %i.mc, 1
  store i8 %i.md, ptr %i.mb, align 1, !tbaa !102
  br label %.loopexit.1

.loopexit.1:                                      ; preds = %.preheader324.preheader.1, %bb.j, %.critedge.1378, %bb.k, %.critedge.1.1, %bb.i, %bb.h, %.loopexit
  %i.me = getelementptr inbounds nuw i8, ptr %indvars.iv379.sroa.phi487, i64 8
  %i.mf = load float, ptr %i.me, align 8, !tbaa !92
  %i.mg = fcmp reassoc nsz arcp contract afn ugt float %i.mf, %.
  br i1 %i.mg, label %.loopexit.2, label %bb.l

bb.l:                                             ; preds = %.loopexit.1
  %i.mh = getelementptr inbounds nuw i8, ptr %indvars.iv379.sroa.phi, i64 8
  %i.mi = load i32, ptr %i.mh, align 8, !tbaa !96
  %.not270.2 = icmp sgt i32 %i.mi, %i.ia
  br i1 %.not270.2, label %.loopexit.2, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.mj = load ptr, ptr %i.im, align 8, !tbaa !89
  %i.mk = getelementptr i8, ptr %i.mj, i64 %indvars.iv384
  %i.ml = getelementptr i8, ptr %i.mk, i64 %i.ah  ; 2 uses
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !102
  %i.mn = add i8 %i.mm, 1
  store i8 %i.mn, ptr %i.ml, align 1, !tbaa !102
  br i1 %i.ii, label %.preheader324.preheader.2, label %.loopexit.2

.preheader324.preheader.2:                        ; preds = %bb.m
  %i.mo = load i32, ptr %i.il, align 4, !tbaa !96
  %i.mp = getelementptr inbounds [12 x i8], ptr %i.il, i64 %i.ak ; 2 uses
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !96
  %i.mr = sub nsw i32 %i.mo, %i.mq
  %i.ms = tail call i32 @llvm.abs.i32(i32 %i.mr, i1 true)
  %i.mt = uitofp nsz nneg i32 %i.ms to float
  %i.mu = fcmp reassoc nsz arcp contract afn ogt float %., %i.mt
  br i1 %i.mu, label %bb.n, label %.loopexit.2

bb.n:                                             ; preds = %.preheader324.preheader.2
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mp, i64 4
  %i.mw = load <2 x i32>, ptr %i.in, align 4, !tbaa !96
  %i.mx = load <2 x i32>, ptr %i.mv, align 4, !tbaa !96
  %i.my = sub nsw <2 x i32> %i.mw, %i.mx          ; 2 uses
  %i.mz = mul nsw <2 x i32> %i.my, %i.my
  %i.na = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.mz)
  %i.nb = icmp samesign ult i32 %i.na, %i.ia
  br i1 %i.nb, label %.critedge.2, label %.loopexit.2

.critedge.2:                                      ; preds = %bb.n
  %i.nc = load ptr, ptr %i.im, align 8, !tbaa !89
  %i.nd = getelementptr i8, ptr %i.nc, i64 %i.ak
  %i.ne = getelementptr i8, ptr %i.nd, i64 %indvars.iv384 ; 2 uses
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !102
  %i.ng = add i8 %i.nf, 1
  store i8 %i.ng, ptr %i.ne, align 1, !tbaa !102
  %i.nh = load i32, ptr %i.il, align 4, !tbaa !96
  %i.ni = getelementptr inbounds [12 x i8], ptr %i.il, i64 %i.al ; 2 uses
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !96
  %i.nk = sub nsw i32 %i.nh, %i.nj
  %i.nl = tail call i32 @llvm.abs.i32(i32 %i.nk, i1 true)
  %i.nm = uitofp nsz nneg i32 %i.nl to float
  %i.nn = fcmp reassoc nsz arcp contract afn ogt float %., %i.nm
  br i1 %i.nn, label %bb.o, label %.loopexit.2

bb.o:                                             ; preds = %.critedge.2
  %i.no = getelementptr inbounds nuw i8, ptr %i.ni, i64 4
  %i.np = load <2 x i32>, ptr %i.in, align 4, !tbaa !96
  %i.nq = load <2 x i32>, ptr %i.no, align 4, !tbaa !96
  %i.nr = sub nsw <2 x i32> %i.np, %i.nq          ; 2 uses
  %i.ns = mul nsw <2 x i32> %i.nr, %i.nr
  %i.nt = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.ns)
  %i.nu = icmp samesign ult i32 %i.nt, %i.ia
  br i1 %i.nu, label %.critedge.1.2, label %.loopexit.2

.critedge.1.2:                                    ; preds = %bb.o
  %i.nv = load ptr, ptr %i.im, align 8, !tbaa !89
  %i.nw = getelementptr i8, ptr %i.nv, i64 %i.al
  %i.nx = getelementptr i8, ptr %i.nw, i64 %indvars.iv384 ; 2 uses
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !102
  %i.nz = add i8 %i.ny, 1
  store i8 %i.nz, ptr %i.nx, align 1, !tbaa !102
  br label %.loopexit.2

.loopexit.2:                                      ; preds = %.preheader324.preheader.2, %bb.n, %.critedge.2, %bb.o, %.critedge.1.2, %bb.m, %bb.l, %.loopexit.1
  %i.oa = getelementptr inbounds nuw i8, ptr %indvars.iv379.sroa.phi487, i64 12
  %i.ob = load float, ptr %i.oa, align 4, !tbaa !92
  %i.oc = fcmp reassoc nsz arcp contract afn ugt float %i.ob, %.
  br i1 %i.oc, label %.loopexit.3, label %bb.p

bb.p:                                             ; preds = %.loopexit.2
  %i.od = getelementptr inbounds nuw i8, ptr %indvars.iv379.sroa.phi, i64 12
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !96
  %.not270.3 = icmp sgt i32 %i.oe, %i.ia
  br i1 %.not270.3, label %.loopexit.3, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.of = load ptr, ptr %i.im, align 8, !tbaa !89
  %i.og = getelementptr i8, ptr %i.of, i64 %indvars.iv384
  %i.oh = getelementptr i8, ptr %i.og, i64 %i.ai  ; 2 uses
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !102
  %i.oj = add i8 %i.oi, 1
  store i8 %i.oj, ptr %i.oh, align 1, !tbaa !102
  br i1 %i.ii, label %.preheader324.preheader.3, label %.backedge.backedge

.preheader324.preheader.3:                        ; preds = %bb.q
  %i.ok = load i32, ptr %i.il, align 4, !tbaa !96
  %i.ol = getelementptr inbounds [12 x i8], ptr %i.il, i64 %i.am ; 2 uses
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !96
  %i.on = sub nsw i32 %i.ok, %i.om
  %i.oo = tail call i32 @llvm.abs.i32(i32 %i.on, i1 true)
  %i.op = uitofp nsz nneg i32 %i.oo to float
  %i.oq = fcmp reassoc nsz arcp contract afn ogt float %., %i.op
  br i1 %i.oq, label %bb.r, label %.loopexit.3.thread

bb.r:                                             ; preds = %.preheader324.preheader.3
  %i.or = getelementptr inbounds nuw i8, ptr %i.ol, i64 4
  %i.os = load <2 x i32>, ptr %i.in, align 4, !tbaa !96
  %i.ot = load <2 x i32>, ptr %i.or, align 4, !tbaa !96
  %i.ou = sub nsw <2 x i32> %i.os, %i.ot          ; 2 uses
  %i.ov = mul nsw <2 x i32> %i.ou, %i.ou
  %i.ow = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.ov)
  %i.ox = icmp samesign ult i32 %i.ow, %i.ia
  br i1 %i.ox, label %.critedge.3, label %.loopexit.3.thread

.critedge.3:                                      ; preds = %bb.r
  %i.oy = load ptr, ptr %i.im, align 8, !tbaa !89
  %i.oz = getelementptr i8, ptr %i.oy, i64 %i.am
  %i.pa = getelementptr i8, ptr %i.oz, i64 %indvars.iv384 ; 2 uses
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !102
  %i.pc = add i8 %i.pb, 1
  store i8 %i.pc, ptr %i.pa, align 1, !tbaa !102
  %i.pd = load i32, ptr %i.il, align 4, !tbaa !96
  %i.pe = getelementptr inbounds [12 x i8], ptr %i.il, i64 %i.an ; 2 uses
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !96
  %i.pg = sub nsw i32 %i.pd, %i.pf
  %i.ph = tail call i32 @llvm.abs.i32(i32 %i.pg, i1 true)
  %i.pi = uitofp nsz nneg i32 %i.ph to float
  %i.pj = fcmp reassoc nsz arcp contract afn ogt float %., %i.pi
  br i1 %i.pj, label %bb.s, label %.loopexit.3.thread

bb.s:                                             ; preds = %.critedge.3
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pe, i64 4
  %i.pl = load <2 x i32>, ptr %i.in, align 4, !tbaa !96
  %i.pm = load <2 x i32>, ptr %i.pk, align 4, !tbaa !96
  %i.pn = sub nsw <2 x i32> %i.pl, %i.pm          ; 2 uses
  %i.po = mul nsw <2 x i32> %i.pn, %i.pn
  %i.pp = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.po)
  %i.pq = icmp samesign ult i32 %i.pp, %i.ia
  br i1 %i.pq, label %.critedge.1.3, label %.loopexit.3.thread

.critedge.1.3:                                    ; preds = %bb.s
  %i.pr = load ptr, ptr %i.im, align 8, !tbaa !89
  %i.ps = getelementptr i8, ptr %i.pr, i64 %i.an
  %i.pt = getelementptr i8, ptr %i.ps, i64 %indvars.iv384 ; 2 uses
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !102
  %i.pv = add i8 %i.pu, 1
  store i8 %i.pv, ptr %i.pt, align 1, !tbaa !102
  br label %.loopexit.3.thread

.loopexit.3:                                      ; preds = %bb.p, %.loopexit.2
  br i1 %i.ih, label %.backedge.backedge, label %.loopexit.3.thread

.backedge.backedge:                               ; preds = %.loopexit.3, %bb.q
  br label %.backedge, !llvm.loop !119

._crit_edge356:                                   ; preds = %._crit_edge353, %._crit_edge.1, %.preheader323
  ret void

bb.t:                                             ; preds = %.lr.ph355, %._crit_edge353
  %i.pw = phi ptr [ %i.ey, %.lr.ph355 ], [ %i.qd, %._crit_edge353 ] ; 2 uses
  %indvars.iv395 = phi i32 [ 4, %.lr.ph355 ], [ %indvars.iv.next396, %._crit_edge353 ] ; 2 uses
  %.0249354 = phi i32 [ 0, %.lr.ph355 ], [ %i.qe, %._crit_edge353 ]
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 30
  %i.py = load i16, ptr %i.px, align 2, !tbaa !84
  %.not360 = icmp eq i16 %i.py, 0
  br i1 %.not360, label %._crit_edge353, label %.lr.ph352.preheader

.lr.ph352.preheader:                              ; preds = %bb.t
  %i.pz = load i32, ptr %i.c, align 4, !tbaa !85
  %i.qa = mul i32 %i.pz, %indvars.iv395
  %i.qb = add i32 %i.qa, 4
  %i.qc = sext i32 %i.qb to i64
  br label %.lr.ph352

._crit_edge353:                                   ; preds = %bb.w, %bb.t
  %i.qd = phi ptr [ %i.pw, %bb.t ], [ %i.yd, %bb.w ] ; 2 uses
  %i.qe = add nuw nsw i32 %.0249354, 1            ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qd, i64 28
  %i.qg = load i16, ptr %i.qf, align 4, !tbaa !81
  %i.qh = zext i16 %i.qg to i32
  %i.qi = icmp samesign ult i32 %i.qe, %i.qh
  %indvars.iv.next396 = add nuw nsw i32 %indvars.iv395, 1
  br i1 %i.qi, label %bb.t, label %._crit_edge356, !llvm.loop !120

.lr.ph352:                                        ; preds = %.lr.ph352.preheader, %bb.w
  %indvars.iv397 = phi i64 [ %i.qc, %.lr.ph352.preheader ], [ %indvars.iv.next398, %bb.w ] ; 9 uses
  %.0247350 = phi i32 [ 0, %.lr.ph352.preheader ], [ %i.yc, %bb.w ]
  %i.qj = load i32, ptr %i.c, align 4, !tbaa !85  ; 2 uses
  %i.qk = sext i32 %i.qj to i64                   ; 14 uses
  %i.ql = load ptr, ptr %i.en, align 8, !tbaa !89
  %i.qm = getelementptr inbounds i8, ptr %i.ql, i64 %indvars.iv397 ; 8 uses
  %1 = sub nsw i64 0, %i.qk
  %i.qn = xor i64 %i.qk, -1
  %i.qo = getelementptr inbounds i8, ptr %i.qm, i64 %i.qn
  %2 = load i8, ptr %i.qo, align 1, !tbaa !102
  %i.qp = getelementptr inbounds i8, ptr %i.qm, i64 -1
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !102
  %3 = getelementptr i8, ptr %i.qm, i64 %i.qk
  %i.qr = getelementptr i8, ptr %3, i64 -1
  %4 = getelementptr inbounds i8, ptr %i.qm, i64 %1
  %5 = load i8, ptr %4, align 1, !tbaa !102
  %i.qs = load i8, ptr %i.qm, align 1, !tbaa !102
  %6 = load <2 x i8>, ptr %i.qr, align 1, !tbaa !102
  %7 = sub nsw i64 1, %i.qk
  %i.qt = getelementptr inbounds i8, ptr %i.qm, i64 %7
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !102
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qm, i64 1
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !102
  %8 = getelementptr i8, ptr %i.qm, i64 %i.qk
  %i.qx = getelementptr i8, ptr %8, i64 1
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !102
  %i.qz = shufflevector <2 x i8> %6, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ra = insertelement <8 x i8> %i.qz, i8 %i.qw, i64 2
  %i.rb = insertelement <8 x i8> %i.ra, i8 %i.qy, i64 3
  %i.rc = insertelement <8 x i8> %i.rb, i8 %2, i64 4
  %i.rd = insertelement <8 x i8> %i.rc, i8 %5, i64 5
  %i.re = insertelement <8 x i8> %i.rd, i8 %i.qu, i64 6
  %i.rf = insertelement <8 x i8> %i.re, i8 %i.qq, i64 7
  %i.rg = tail call i8 @llvm.vector.reduce.add.v8i8(<8 x i8> %i.rf)
  %op.rdx = add i8 %i.rg, %i.qs                   ; 2 uses
  %i.rh = load ptr, ptr %i.eq, align 8, !tbaa !89
  %i.ri = getelementptr inbounds i8, ptr %i.rh, i64 %indvars.iv397 ; 8 uses
  %9 = sub nsw i64 0, %i.qk
  %10 = xor i64 %i.qk, -1
  %i.rj = getelementptr inbounds i8, ptr %i.ri, i64 %10
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !102
  %i.rl = getelementptr inbounds i8, ptr %i.ri, i64 -1
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !102
  %11 = getelementptr i8, ptr %i.ri, i64 %i.qk
  %12 = getelementptr i8, ptr %11, i64 -1
  %i.rn = getelementptr inbounds i8, ptr %i.ri, i64 %9
  %13 = load i8, ptr %i.rn, align 1, !tbaa !102
  %i.ro = load i8, ptr %i.ri, align 1, !tbaa !102
  %14 = load <2 x i8>, ptr %12, align 1, !tbaa !102
  %15 = sub nsw i64 1, %i.qk
  %i.rp = getelementptr inbounds i8, ptr %i.ri, i64 %15
  %i.rq = load i8, ptr %i.rp, align 1, !tbaa !102
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ri, i64 1
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !102
  %16 = getelementptr i8, ptr %i.ri, i64 %i.qk
  %i.rt = getelementptr i8, ptr %16, i64 1
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !102
  %i.rv = shufflevector <2 x i8> %14, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rw = insertelement <8 x i8> %i.rv, i8 %i.rs, i64 2
  %i.rx = insertelement <8 x i8> %i.rw, i8 %i.ru, i64 3
  %i.ry = insertelement <8 x i8> %i.rx, i8 %i.rk, i64 4
  %i.rz = insertelement <8 x i8> %i.ry, i8 %13, i64 5
  %i.sa = insertelement <8 x i8> %i.rz, i8 %i.rq, i64 6
  %i.sb = insertelement <8 x i8> %i.sa, i8 %i.rm, i64 7
  %i.sc = tail call i8 @llvm.vector.reduce.add.v8i8(<8 x i8> %i.sb)
  %op.rdx447 = add i8 %i.sc, %i.ro                ; 2 uses
  %.not = icmp eq i8 %op.rdx, %op.rdx447
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph352
  %i.sd = icmp sgt i8 %op.rdx447, %op.rdx
  %.271 = select i1 %i.sd, i8 5, i8 3
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph352
  %i.se = load ptr, ptr %i.eo, align 8, !tbaa !87 ; 4 uses
  %i.sf = getelementptr inbounds [12 x i8], ptr %i.se, i64 %indvars.iv397 ; 4 uses
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !96
  %i.sh = shl nsw i32 %i.sg, 1
  %i.si = sub nsw i32 0, %i.qj
  %i.sj = sext i32 %i.si to i64                   ; 3 uses
  %i.sk = getelementptr inbounds [12 x i8], ptr %i.sf, i64 %i.sj ; 2 uses
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !96
  %i.sm = getelementptr inbounds [12 x i8], ptr %i.sf, i64 %i.qk ; 2 uses
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !96
  %i.so = add i32 %i.sl, %i.sn
  %i.sp = sub i32 %i.sh, %i.so                    ; 2 uses
  %i.sq = mul nsw i32 %i.sp, %i.sp
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sf, i64 4
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sk, i64 4
  %i.st = getelementptr inbounds nuw i8, ptr %i.sm, i64 4
  %i.su = load <2 x i32>, ptr %i.sr, align 4, !tbaa !96
  %i.sv = shl nsw <2 x i32> %i.su, splat (i32 1)
  %i.sw = load <2 x i32>, ptr %i.ss, align 4, !tbaa !96
  %i.sx = load <2 x i32>, ptr %i.st, align 4, !tbaa !96
  %i.sy = add <2 x i32> %i.sw, %i.sx
  %i.sz = sub <2 x i32> %i.sv, %i.sy              ; 2 uses
  %i.ta = mul nsw <2 x i32> %i.sz, %i.sz          ; 2 uses
  %i.tb = sub nsw i64 %indvars.iv397, %i.qk
  %i.tc = getelementptr inbounds [12 x i8], ptr %i.se, i64 %i.tb ; 3 uses
  %i.td = getelementptr inbounds [12 x i8], ptr %i.tc, i64 %i.sj ; 2 uses
  %i.te = getelementptr inbounds [12 x i8], ptr %i.se, i64 %indvars.iv397 ; 3 uses
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !96
  %i.tg = getelementptr inbounds nuw i8, ptr %i.te, i64 4
  %i.th = getelementptr inbounds nuw i8, ptr %i.tc, i64 8
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !96
  %i.tj = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !96
  %i.tl = getelementptr inbounds nuw i8, ptr %i.te, i64 8
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !96
  %i.tn = getelementptr [12 x i8], ptr %i.se, i64 %indvars.iv397
  %i.to = getelementptr [12 x i8], ptr %i.tn, i64 %i.qk ; 4 uses
  %i.tp = getelementptr inbounds [12 x i8], ptr %i.to, i64 %i.sj
  %i.tq = getelementptr inbounds [12 x i8], ptr %i.to, i64 %i.qk ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.to, i64 8
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !96
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !96
  %i.tv = load <2 x i32>, ptr %i.tc, align 4, !tbaa !96 ; 2 uses
  %i.tw = load <2 x i32>, ptr %i.td, align 4, !tbaa !96 ; 2 uses
  %i.tx = load <2 x i32>, ptr %i.to, align 4, !tbaa !96 ; 2 uses
  %i.ty = shufflevector <2 x i32> %i.tv, <2 x i32> %i.tx, <2 x i32> <i32 0, i32 2>
  %i.tz = shl nsw <2 x i32> %i.ty, splat (i32 1)
  %i.ua = load <2 x i32>, ptr %i.tp, align 4, !tbaa !96 ; 2 uses
  %i.ub = load <2 x i32>, ptr %i.tq, align 4, !tbaa !96 ; 2 uses
  %i.uc = shufflevector <2 x i32> %i.tw, <2 x i32> %i.ua, <2 x i32> <i32 0, i32 2>
  %i.ud = shufflevector <2 x i32> %i.ub, <2 x i32> poison, <2 x i32> <i32 poison, i32 0>
  %i.ue = insertelement <2 x i32> %i.ud, i32 %i.tf, i64 0
  %i.uf = add <2 x i32> %i.uc, %i.ue
  %i.ug = sub <2 x i32> %i.tz, %i.uf              ; 2 uses
  %i.uh = mul nsw <2 x i32> %i.ug, %i.ug
  %i.ui = shufflevector <2 x i32> %i.tv, <2 x i32> %i.tx, <2 x i32> <i32 1, i32 3>
  %i.uj = shl nsw <2 x i32> %i.ui, splat (i32 1)
  %i.uk = load <2 x i32>, ptr %i.tg, align 4, !tbaa !96 ; 2 uses
  %i.ul = shufflevector <2 x i32> %i.tw, <2 x i32> %i.ua, <2 x i32> <i32 1, i32 3>
  %i.um = shufflevector <2 x i32> %i.uk, <2 x i32> %i.ub, <2 x i32> <i32 0, i32 3>
  %i.un = add <2 x i32> %i.ul, %i.um
  %i.uo = sub <2 x i32> %i.uj, %i.un              ; 2 uses
  %i.up = mul nsw <2 x i32> %i.uo, %i.uo
  %i.uq = add nuw nsw <2 x i32> %i.up, %i.uh
  %i.ur = insertelement <2 x i32> poison, i32 %i.ti, i64 0
  %i.us = insertelement <2 x i32> %i.ur, i32 %i.ts, i64 1
  %i.ut = shl nsw <2 x i32> %i.us, splat (i32 1)
  %i.uu = insertelement <2 x i32> %i.uk, i32 %i.tk, i64 0
  %i.uv = insertelement <2 x i32> poison, i32 %i.tm, i64 0
  %i.uw = insertelement <2 x i32> %i.uv, i32 %i.tu, i64 1
  %i.ux = add <2 x i32> %i.uu, %i.uw
  %i.uy = sub <2 x i32> %i.ut, %i.ux              ; 2 uses
  %i.uz = mul nsw <2 x i32> %i.uy, %i.uy
  %i.va = add nuw nsw <2 x i32> %i.uq, %i.uz
  %i.vb = lshr <2 x i32> %i.va, splat (i32 1)     ; 2 uses
  %i.vc = extractelement <2 x i32> %i.ta, i64 0
  %i.vd = add nuw nsw i32 %i.vc, %i.sq
  %i.ve = extractelement <2 x i32> %i.ta, i64 1
  %i.vf = add nuw nsw i32 %i.vd, %i.ve
  %i.vg = extractelement <2 x i32> %i.vb, i64 0
  %i.vh = add nuw nsw i32 %i.vf, %i.vg
  %i.vi = extractelement <2 x i32> %i.vb, i64 1
  %i.vj = add nuw nsw i32 %i.vh, %i.vi
  %i.vk = load ptr, ptr %i.j, align 8, !tbaa !87
  %i.vl = getelementptr inbounds [12 x i8], ptr %i.vk, i64 %indvars.iv397 ; 10 uses
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !96 ; 3 uses
  %i.vn = shl nsw i32 %i.vm, 1
  %i.vo = getelementptr inbounds i8, ptr %i.vl, i64 -12
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !96 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vl, i64 12
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !96 ; 2 uses
  %i.vs = add i32 %i.vp, %i.vr
  %i.vt = sub i32 %i.vn, %i.vs                    ; 2 uses
  %i.vu = mul nsw i32 %i.vt, %i.vt
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vl, i64 4
  %i.vw = getelementptr inbounds i8, ptr %i.vl, i64 -8
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vl, i64 16
  %i.vy = shl nsw i32 %i.vp, 1
  %i.vz = getelementptr i8, ptr %i.vl, i64 -24
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !96
  %i.wb = add i32 %i.vm, %i.wa
  %i.wc = sub i32 %i.vy, %i.wb                    ; 2 uses
  %i.wd = mul nsw i32 %i.wc, %i.wc
  %i.we = getelementptr i8, ptr %i.vl, i64 -20
  %i.wf = shl nsw i32 %i.vr, 1
  %i.wg = getelementptr i8, ptr %i.vl, i64 24
  %i.wh = load i32, ptr %i.wg, align 4, !tbaa !96
  %i.wi = add i32 %i.vm, %i.wh
  %i.wj = sub i32 %i.wf, %i.wi                    ; 2 uses
  %i.wk = mul nsw i32 %i.wj, %i.wj
  %i.wl = getelementptr i8, ptr %i.vl, i64 28
  %i.wm = load <2 x i32>, ptr %i.vv, align 4, !tbaa !96 ; 4 uses
  %i.wn = extractelement <2 x i32> %i.wm, i64 0
  %i.wo = shl nsw i32 %i.wn, 1
  %i.wp = load <2 x i32>, ptr %i.vx, align 4, !tbaa !96 ; 3 uses
  %i.wq = extractelement <2 x i32> %i.wm, i64 1
  %i.wr = shl nsw i32 %i.wq, 1
  %i.ws = load <2 x i32>, ptr %i.vw, align 4, !tbaa !96 ; 3 uses
  %i.wt = shl nsw <2 x i32> %i.ws, splat (i32 1)
  %i.wu = load <2 x i32>, ptr %i.we, align 4, !tbaa !96
  %foldExtExtBinop472 = add <2 x i32> %i.ws, %i.wp
  %i.wv = extractelement <2 x i32> %foldExtExtBinop472, i64 0
  %i.ww = sub i32 %i.wo, %i.wv                    ; 2 uses
  %i.wx = mul nsw i32 %i.ww, %i.ww
  %foldExtExtBinop474 = add <2 x i32> %i.ws, %i.wp
  %i.wy = extractelement <2 x i32> %foldExtExtBinop474, i64 1
  %i.wz = sub i32 %i.wr, %i.wy                    ; 2 uses
  %i.xa = mul nsw i32 %i.wz, %i.wz
  %i.xb = add <2 x i32> %i.wm, %i.wu
  %i.xc = sub <2 x i32> %i.wt, %i.xb              ; 2 uses
  %i.xd = mul nsw <2 x i32> %i.xc, %i.xc          ; 2 uses
  %i.xe = extractelement <2 x i32> %i.xd, i64 0
  %i.xf = add nuw nsw i32 %i.xe, %i.wd
  %i.xg = extractelement <2 x i32> %i.xd, i64 1
  %i.xh = add nuw nsw i32 %i.xf, %i.xg
  %i.xi = lshr i32 %i.xh, 1
  %i.xj = shl nsw <2 x i32> %i.wp, splat (i32 1)
  %i.xk = load <2 x i32>, ptr %i.wl, align 4, !tbaa !96
  %i.xl = add <2 x i32> %i.wm, %i.xk
  %i.xm = sub <2 x i32> %i.xj, %i.xl              ; 2 uses
  %i.xn = mul nsw <2 x i32> %i.xm, %i.xm          ; 2 uses
  %i.xo = extractelement <2 x i32> %i.xn, i64 0
  %i.xp = add nuw nsw i32 %i.xo, %i.wk
  %i.xq = extractelement <2 x i32> %i.xn, i64 1
  %i.xr = add nuw nsw i32 %i.xp, %i.xq
  %i.xs = lshr i32 %i.xr, 1
  %i.xt = add nuw nsw i32 %i.wx, %i.vu
  %i.xu = add nuw nsw i32 %i.xt, %i.xa
  %i.xv = add nuw nsw i32 %i.xu, %i.xi
  %i.xw = add nuw nsw i32 %i.xv, %i.xs
  %i.xx = icmp samesign ugt i32 %i.vj, %i.xw
  %.272 = select i1 %i.xx, i8 2, i8 4
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.1 = phi i8 [ %.271, %bb.u ], [ %.272, %bb.v ]
  %i.xy = load ptr, ptr %i.ep, align 8, !tbaa !88
  %i.xz = getelementptr inbounds i8, ptr %i.xy, i64 %indvars.iv397 ; 2 uses
  %i.ya = load i8, ptr %i.xz, align 1, !tbaa !102
  %i.yb = or i8 %i.ya, %.1
  store i8 %i.yb, ptr %i.xz, align 1, !tbaa !102
  %i.yc = add nuw nsw i32 %.0247350, 1            ; 2 uses
  %indvars.iv.next398 = add nsw i64 %indvars.iv397, 1
  %i.yd = load ptr, ptr %i.cp, align 8, !tbaa !94, !nonnull !100, !align !101 ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 30
  %i.yf = load i16, ptr %i.ye, align 2, !tbaa !84
  %i.yg = zext i16 %i.yf to i32
  %i.yh = icmp samesign ult i32 %i.yc, %i.yg
  br i1 %i.yh, label %.lr.ph352, label %._crit_edge353, !llvm.loop !121
}

; Function Attrs: mustprogress uwtable
define void @_ZN4AAHD13combine_imageEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94, !nonnull !100, !align !101 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.d = load i16, ptr %i.c, align 4, !tbaa !81
  %.not45 = icmp eq i16 %i.d, 0
  br i1 %.not45, label %._crit_edge44, label %.lr.ph43

.lr.ph43:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

._crit_edge44:                                    ; preds = %._crit_edge, %bb.a
  ret void
end_hunk_0
