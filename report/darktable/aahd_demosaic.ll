Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/aahd_demosaic?download=true
inline.NumInlined: 46
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
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
  %i.me = getelementptr inbounds nuw i8, ptr %indvars.iv379.sroa.phi486, i64 8
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
  %i.oa = getelementptr inbounds nuw i8, ptr %indvars.iv379.sroa.phi486, i64 12
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
  br label %.backedge

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
  %i.qd = phi ptr [ %i.pw, %bb.t ], [ %i.yo, %bb.w ] ; 2 uses
  %i.qe = add nuw nsw i32 %.0249354, 1            ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qd, i64 28
  %i.qg = load i16, ptr %i.qf, align 4, !tbaa !81
  %i.qh = zext i16 %i.qg to i32
  %i.qi = icmp samesign ult i32 %i.qe, %i.qh
  %indvars.iv.next396 = add nuw nsw i32 %indvars.iv395, 1
  br i1 %i.qi, label %bb.t, label %._crit_edge356, !llvm.loop !119

.lr.ph352:                                        ; preds = %.lr.ph352.preheader, %bb.w
  %indvars.iv397 = phi i64 [ %i.qc, %.lr.ph352.preheader ], [ %indvars.iv.next398, %bb.w ] ; 9 uses
  %.0247350 = phi i32 [ 0, %.lr.ph352.preheader ], [ %i.yn, %bb.w ]
  %i.qj = load i32, ptr %i.c, align 4, !tbaa !85  ; 2 uses
  %i.qk = sext i32 %i.qj to i64                   ; 11 uses
  %1 = sub nsw i64 0, %i.qk                       ; 2 uses
  %2 = sub nsw i64 1, %i.qk                       ; 2 uses
  %i.ql = load ptr, ptr %i.en, align 8, !tbaa !89
  %i.qm = getelementptr inbounds i8, ptr %i.ql, i64 %indvars.iv397 ; 9 uses
  %i.qn = xor i64 %i.qk, -1                       ; 2 uses
  %i.qo = getelementptr inbounds i8, ptr %i.qm, i64 %i.qn
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !102
  %i.qq = getelementptr inbounds i8, ptr %i.qm, i64 -1
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !102
  %i.qs = add i8 %i.qp, %i.qr
  %3 = add nsw i64 %i.qk, -1                      ; 2 uses
  %i.qt = getelementptr inbounds i8, ptr %i.qm, i64 %3
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !102
  %i.qv = add i8 %i.qs, %i.qu
  %i.qw = getelementptr inbounds i8, ptr %i.qm, i64 %1
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !102
  %i.qy = add i8 %i.qv, %i.qx
  %i.qz = load i8, ptr %i.qm, align 1, !tbaa !102
  %i.ra = add i8 %i.qy, %i.qz
  %i.rb = getelementptr inbounds i8, ptr %i.qm, i64 %i.qk
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !102
  %i.rd = add i8 %i.ra, %i.rc
  %i.re = getelementptr inbounds i8, ptr %i.qm, i64 %2
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !102
  %i.rg = add i8 %i.rd, %i.rf
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qm, i64 1
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !102
  %i.rj = add i8 %i.rg, %i.ri
  %4 = add nsw i64 %i.qk, 1                       ; 2 uses
  %i.rk = getelementptr inbounds i8, ptr %i.qm, i64 %4
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !102
  %i.rm = add i8 %i.rj, %i.rl                     ; 2 uses
  %i.rn = load ptr, ptr %i.eq, align 8, !tbaa !89
  %i.ro = getelementptr inbounds i8, ptr %i.rn, i64 %indvars.iv397 ; 9 uses
  %i.rp = getelementptr inbounds i8, ptr %i.ro, i64 %i.qn
  %i.rq = load i8, ptr %i.rp, align 1, !tbaa !102
  %i.rr = getelementptr inbounds i8, ptr %i.ro, i64 -1
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !102
  %i.rt = add i8 %i.rq, %i.rs
  %i.ru = getelementptr inbounds i8, ptr %i.ro, i64 %3
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !102
  %i.rw = add i8 %i.rt, %i.rv
  %i.rx = getelementptr inbounds i8, ptr %i.ro, i64 %1
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !102
  %i.rz = add i8 %i.rw, %i.ry
  %i.sa = load i8, ptr %i.ro, align 1, !tbaa !102
  %i.sb = add i8 %i.rz, %i.sa
  %i.sc = getelementptr inbounds i8, ptr %i.ro, i64 %i.qk
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !102
  %i.se = add i8 %i.sb, %i.sd
  %i.sf = getelementptr inbounds i8, ptr %i.ro, i64 %2
  %i.sg = load i8, ptr %i.sf, align 1, !tbaa !102
  %i.sh = add i8 %i.se, %i.sg
  %i.si = getelementptr inbounds nuw i8, ptr %i.ro, i64 1
  %i.sj = load i8, ptr %i.si, align 1, !tbaa !102
  %i.sk = add i8 %i.sh, %i.sj
  %i.sl = getelementptr inbounds i8, ptr %i.ro, i64 %4
  %i.sm = load i8, ptr %i.sl, align 1, !tbaa !102
  %i.sn = add i8 %i.sk, %i.sm                     ; 2 uses
  %.not = icmp eq i8 %i.rm, %i.sn
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph352
  %i.so = icmp sgt i8 %i.sn, %i.rm
  %.271 = select i1 %i.so, i8 5, i8 3
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph352
  %i.sp = load ptr, ptr %i.eo, align 8, !tbaa !87 ; 4 uses
  %i.sq = getelementptr inbounds [12 x i8], ptr %i.sp, i64 %indvars.iv397 ; 4 uses
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !96
  %i.ss = shl nsw i32 %i.sr, 1
  %i.st = sub nsw i32 0, %i.qj
  %i.su = sext i32 %i.st to i64                   ; 3 uses
  %i.sv = getelementptr inbounds [12 x i8], ptr %i.sq, i64 %i.su ; 2 uses
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !96
  %i.sx = getelementptr inbounds [12 x i8], ptr %i.sq, i64 %i.qk ; 2 uses
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !96
  %i.sz = add i32 %i.sw, %i.sy
  %i.ta = sub i32 %i.ss, %i.sz                    ; 2 uses
  %i.tb = mul nsw i32 %i.ta, %i.ta
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sq, i64 4
  %i.td = getelementptr inbounds nuw i8, ptr %i.sv, i64 4
  %i.te = getelementptr inbounds nuw i8, ptr %i.sx, i64 4
  %i.tf = load <2 x i32>, ptr %i.tc, align 4, !tbaa !96
  %i.tg = shl nsw <2 x i32> %i.tf, splat (i32 1)
  %i.th = load <2 x i32>, ptr %i.td, align 4, !tbaa !96
  %i.ti = load <2 x i32>, ptr %i.te, align 4, !tbaa !96
  %i.tj = add <2 x i32> %i.th, %i.ti
  %i.tk = sub <2 x i32> %i.tg, %i.tj              ; 2 uses
  %i.tl = mul nsw <2 x i32> %i.tk, %i.tk          ; 2 uses
  %i.tm = sub nsw i64 %indvars.iv397, %i.qk
  %i.tn = getelementptr inbounds [12 x i8], ptr %i.sp, i64 %i.tm ; 3 uses
  %i.to = getelementptr inbounds [12 x i8], ptr %i.tn, i64 %i.su ; 2 uses
  %i.tp = getelementptr inbounds [12 x i8], ptr %i.sp, i64 %indvars.iv397 ; 3 uses
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !96
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tp, i64 4
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !96
  %i.tu = getelementptr inbounds nuw i8, ptr %i.to, i64 8
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !96
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tp, i64 8
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !96
  %i.ty = getelementptr [12 x i8], ptr %i.sp, i64 %indvars.iv397
  %i.tz = getelementptr [12 x i8], ptr %i.ty, i64 %i.qk ; 4 uses
  %i.ua = getelementptr inbounds [12 x i8], ptr %i.tz, i64 %i.su
  %i.ub = getelementptr inbounds [12 x i8], ptr %i.tz, i64 %i.qk ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !96
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !96
  %i.ug = load <2 x i32>, ptr %i.tn, align 4, !tbaa !96 ; 2 uses
  %i.uh = load <2 x i32>, ptr %i.to, align 4, !tbaa !96 ; 2 uses
  %i.ui = load <2 x i32>, ptr %i.tz, align 4, !tbaa !96 ; 2 uses
  %i.uj = shufflevector <2 x i32> %i.ug, <2 x i32> %i.ui, <2 x i32> <i32 0, i32 2>
  %i.uk = shl nsw <2 x i32> %i.uj, splat (i32 1)
  %i.ul = load <2 x i32>, ptr %i.ua, align 4, !tbaa !96 ; 2 uses
  %i.um = load <2 x i32>, ptr %i.ub, align 4, !tbaa !96 ; 2 uses
  %i.un = shufflevector <2 x i32> %i.uh, <2 x i32> %i.ul, <2 x i32> <i32 0, i32 2>
  %i.uo = shufflevector <2 x i32> %i.um, <2 x i32> poison, <2 x i32> <i32 poison, i32 0>
  %i.up = insertelement <2 x i32> %i.uo, i32 %i.tq, i64 0
  %i.uq = add <2 x i32> %i.un, %i.up
  %i.ur = sub <2 x i32> %i.uk, %i.uq              ; 2 uses
  %i.us = mul nsw <2 x i32> %i.ur, %i.ur
  %i.ut = shufflevector <2 x i32> %i.ug, <2 x i32> %i.ui, <2 x i32> <i32 1, i32 3>
  %i.uu = shl nsw <2 x i32> %i.ut, splat (i32 1)
  %i.uv = load <2 x i32>, ptr %i.tr, align 4, !tbaa !96 ; 2 uses
  %i.uw = shufflevector <2 x i32> %i.uh, <2 x i32> %i.ul, <2 x i32> <i32 1, i32 3>
  %i.ux = shufflevector <2 x i32> %i.uv, <2 x i32> %i.um, <2 x i32> <i32 0, i32 3>
  %i.uy = add <2 x i32> %i.uw, %i.ux
  %i.uz = sub <2 x i32> %i.uu, %i.uy              ; 2 uses
  %i.va = mul nsw <2 x i32> %i.uz, %i.uz
  %i.vb = add nuw nsw <2 x i32> %i.va, %i.us
  %i.vc = insertelement <2 x i32> poison, i32 %i.tt, i64 0
  %i.vd = insertelement <2 x i32> %i.vc, i32 %i.ud, i64 1
  %i.ve = shl nsw <2 x i32> %i.vd, splat (i32 1)
  %i.vf = insertelement <2 x i32> %i.uv, i32 %i.tv, i64 0
  %i.vg = insertelement <2 x i32> poison, i32 %i.tx, i64 0
  %i.vh = insertelement <2 x i32> %i.vg, i32 %i.uf, i64 1
  %i.vi = add <2 x i32> %i.vf, %i.vh
  %i.vj = sub <2 x i32> %i.ve, %i.vi              ; 2 uses
  %i.vk = mul nsw <2 x i32> %i.vj, %i.vj
  %i.vl = add nuw nsw <2 x i32> %i.vb, %i.vk
  %i.vm = lshr <2 x i32> %i.vl, splat (i32 1)     ; 2 uses
  %i.vn = extractelement <2 x i32> %i.tl, i64 0
  %i.vo = add nuw nsw i32 %i.vn, %i.tb
  %i.vp = extractelement <2 x i32> %i.tl, i64 1
  %i.vq = add nuw nsw i32 %i.vo, %i.vp
  %i.vr = extractelement <2 x i32> %i.vm, i64 0
  %i.vs = add nuw nsw i32 %i.vq, %i.vr
  %i.vt = extractelement <2 x i32> %i.vm, i64 1
  %i.vu = add nuw nsw i32 %i.vs, %i.vt
  %i.vv = load ptr, ptr %i.j, align 8, !tbaa !87
  %i.vw = getelementptr inbounds [12 x i8], ptr %i.vv, i64 %indvars.iv397 ; 10 uses
  %i.vx = load i32, ptr %i.vw, align 4, !tbaa !96 ; 3 uses
  %i.vy = shl nsw i32 %i.vx, 1
  %i.vz = getelementptr inbounds i8, ptr %i.vw, i64 -12
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !96 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vw, i64 12
  %i.wc = load i32, ptr %i.wb, align 4, !tbaa !96 ; 2 uses
  %i.wd = add i32 %i.wa, %i.wc
  %i.we = sub i32 %i.vy, %i.wd                    ; 2 uses
  %i.wf = mul nsw i32 %i.we, %i.we
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vw, i64 4
  %i.wh = getelementptr inbounds i8, ptr %i.vw, i64 -8
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vw, i64 16
  %i.wj = shl nsw i32 %i.wa, 1
  %i.wk = getelementptr i8, ptr %i.vw, i64 -24
  %i.wl = load i32, ptr %i.wk, align 4, !tbaa !96
  %i.wm = add i32 %i.vx, %i.wl
  %i.wn = sub i32 %i.wj, %i.wm                    ; 2 uses
  %i.wo = mul nsw i32 %i.wn, %i.wn
  %i.wp = getelementptr i8, ptr %i.vw, i64 -20
  %i.wq = shl nsw i32 %i.wc, 1
  %i.wr = getelementptr i8, ptr %i.vw, i64 24
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !96
  %i.wt = add i32 %i.vx, %i.ws
  %i.wu = sub i32 %i.wq, %i.wt                    ; 2 uses
  %i.wv = mul nsw i32 %i.wu, %i.wu
  %i.ww = getelementptr i8, ptr %i.vw, i64 28
  %i.wx = load <2 x i32>, ptr %i.wg, align 4, !tbaa !96 ; 4 uses
  %i.wy = extractelement <2 x i32> %i.wx, i64 0
  %i.wz = shl nsw i32 %i.wy, 1
  %i.xa = load <2 x i32>, ptr %i.wi, align 4, !tbaa !96 ; 3 uses
  %i.xb = extractelement <2 x i32> %i.wx, i64 1
  %i.xc = shl nsw i32 %i.xb, 1
  %i.xd = load <2 x i32>, ptr %i.wh, align 4, !tbaa !96 ; 3 uses
  %i.xe = shl nsw <2 x i32> %i.xd, splat (i32 1)
  %i.xf = load <2 x i32>, ptr %i.wp, align 4, !tbaa !96
  %foldExtExtBinop471 = add <2 x i32> %i.xd, %i.xa
  %i.xg = extractelement <2 x i32> %foldExtExtBinop471, i64 0
  %i.xh = sub i32 %i.wz, %i.xg                    ; 2 uses
  %i.xi = mul nsw i32 %i.xh, %i.xh
  %foldExtExtBinop473 = add <2 x i32> %i.xd, %i.xa
  %i.xj = extractelement <2 x i32> %foldExtExtBinop473, i64 1
  %i.xk = sub i32 %i.xc, %i.xj                    ; 2 uses
  %i.xl = mul nsw i32 %i.xk, %i.xk
  %i.xm = add <2 x i32> %i.wx, %i.xf
  %i.xn = sub <2 x i32> %i.xe, %i.xm              ; 2 uses
  %i.xo = mul nsw <2 x i32> %i.xn, %i.xn          ; 2 uses
  %i.xp = extractelement <2 x i32> %i.xo, i64 0
  %i.xq = add nuw nsw i32 %i.xp, %i.wo
  %i.xr = extractelement <2 x i32> %i.xo, i64 1
  %i.xs = add nuw nsw i32 %i.xq, %i.xr
  %i.xt = lshr i32 %i.xs, 1
  %i.xu = shl nsw <2 x i32> %i.xa, splat (i32 1)
  %i.xv = load <2 x i32>, ptr %i.ww, align 4, !tbaa !96
  %i.xw = add <2 x i32> %i.wx, %i.xv
  %i.xx = sub <2 x i32> %i.xu, %i.xw              ; 2 uses
  %i.xy = mul nsw <2 x i32> %i.xx, %i.xx          ; 2 uses
  %i.xz = extractelement <2 x i32> %i.xy, i64 0
  %i.ya = add nuw nsw i32 %i.xz, %i.wv
  %i.yb = extractelement <2 x i32> %i.xy, i64 1
  %i.yc = add nuw nsw i32 %i.ya, %i.yb
  %i.yd = lshr i32 %i.yc, 1
  %i.ye = add nuw nsw i32 %i.xi, %i.wf
  %i.yf = add nuw nsw i32 %i.ye, %i.xl
  %i.yg = add nuw nsw i32 %i.yf, %i.xt
  %i.yh = add nuw nsw i32 %i.yg, %i.yd
  %i.yi = icmp samesign ugt i32 %i.vu, %i.yh
  %.272 = select i1 %i.yi, i8 2, i8 4
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.1 = phi i8 [ %.271, %bb.u ], [ %.272, %bb.v ]
  %i.yj = load ptr, ptr %i.ep, align 8, !tbaa !88
  %i.yk = getelementptr inbounds i8, ptr %i.yj, i64 %indvars.iv397 ; 2 uses
  %i.yl = load i8, ptr %i.yk, align 1, !tbaa !102
  %i.ym = or i8 %i.yl, %.1
  store i8 %i.ym, ptr %i.yk, align 1, !tbaa !102
  %i.yn = add nuw nsw i32 %.0247350, 1            ; 2 uses
  %indvars.iv.next398 = add nsw i64 %indvars.iv397, 1
  %i.yo = load ptr, ptr %i.cp, align 8, !tbaa !94, !nonnull !100, !align !101 ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 30
  %i.yq = load i16, ptr %i.yp, align 2, !tbaa !84
  %i.yr = zext i16 %i.yq to i32
  %i.ys = icmp samesign ult i32 %i.yn, %i.yr
  br i1 %i.ys, label %.lr.ph352, label %._crit_edge353, !llvm.loop !120
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
