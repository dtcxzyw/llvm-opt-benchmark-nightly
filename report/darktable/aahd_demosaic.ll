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
  %i.qd = phi ptr [ %i.pw, %bb.t ], [ %i.xn, %bb.w ] ; 2 uses
  %i.qe = add nuw nsw i32 %.0249354, 1            ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qd, i64 28
  %i.qg = load i16, ptr %i.qf, align 4, !tbaa !81
  %i.qh = zext i16 %i.qg to i32
  %i.qi = icmp samesign ult i32 %i.qe, %i.qh
  %indvars.iv.next396 = add nuw nsw i32 %indvars.iv395, 1
  br i1 %i.qi, label %bb.t, label %._crit_edge356, !llvm.loop !120

.lr.ph352:                                        ; preds = %.lr.ph352.preheader, %bb.w
  %indvars.iv397 = phi i64 [ %i.qc, %.lr.ph352.preheader ], [ %indvars.iv.next398, %bb.w ] ; 9 uses
  %.0247350 = phi i32 [ 0, %.lr.ph352.preheader ], [ %i.xm, %bb.w ]
  %i.qj = load i32, ptr %i.c, align 4, !tbaa !85  ; 2 uses
  %i.qk = sext i32 %i.qj to i64                   ; 10 uses
  %i.ql = sub nsw i64 1, %i.qk                    ; 2 uses
  %i.qm = load ptr, ptr %i.en, align 8, !tbaa !89
  %i.qn = getelementptr inbounds i8, ptr %i.qm, i64 %indvars.iv397 ; 8 uses
  %i.qo = xor i64 %i.qk, -1                       ; 2 uses
  %i.qp = getelementptr inbounds i8, ptr %i.qn, i64 %i.qo
  %i.qq = getelementptr inbounds i8, ptr %i.qn, i64 -1
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !102
  %i.qs = add nsw i64 %i.qk, -1                   ; 2 uses
  %i.qt = getelementptr inbounds i8, ptr %i.qn, i64 %i.qs
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !102
  %1 = load <2 x i8>, ptr %i.qp, align 1, !tbaa !102
  %2 = load i8, ptr %i.qn, align 1, !tbaa !102
  %i.qv = getelementptr inbounds i8, ptr %i.qn, i64 %i.qk
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !102
  %3 = getelementptr inbounds i8, ptr %i.qn, i64 %i.ql
  %i.qx = load i8, ptr %3, align 1, !tbaa !102
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qn, i64 1
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !102
  %4 = add nsw i64 %i.qk, 1                       ; 2 uses
  %i.ra = getelementptr inbounds i8, ptr %i.qn, i64 %4
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !102
  %5 = shufflevector <2 x i8> %1, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %6 = insertelement <8 x i8> %5, i8 %i.qx, i64 2
  %7 = insertelement <8 x i8> %6, i8 %i.qu, i64 3
  %8 = insertelement <8 x i8> %7, i8 %i.qw, i64 4
  %9 = insertelement <8 x i8> %8, i8 %i.rb, i64 5
  %10 = insertelement <8 x i8> %9, i8 %i.qr, i64 6
  %11 = insertelement <8 x i8> %10, i8 %2, i64 7
  %12 = tail call i8 @llvm.vector.reduce.add.v8i8(<8 x i8> %11)
  %op.rdx = add i8 %12, %i.qz                     ; 2 uses
  %i.rc = load ptr, ptr %i.eq, align 8, !tbaa !89
  %13 = getelementptr inbounds i8, ptr %i.rc, i64 %indvars.iv397 ; 8 uses
  %i.rd = getelementptr inbounds i8, ptr %13, i64 %i.qo
  %i.re = getelementptr inbounds i8, ptr %13, i64 -1
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !102
  %i.rg = getelementptr inbounds i8, ptr %13, i64 %i.qs
  %i.rh = load i8, ptr %i.rg, align 1, !tbaa !102
  %14 = load <2 x i8>, ptr %i.rd, align 1, !tbaa !102
  %15 = load i8, ptr %13, align 1, !tbaa !102
  %16 = getelementptr inbounds i8, ptr %13, i64 %i.qk
  %17 = load i8, ptr %16, align 1, !tbaa !102
  %i.ri = getelementptr inbounds i8, ptr %13, i64 %i.ql
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !102
  %18 = getelementptr inbounds nuw i8, ptr %13, i64 1
  %i.rk = load i8, ptr %18, align 1, !tbaa !102
  %i.rl = getelementptr inbounds i8, ptr %13, i64 %4
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !102
  %19 = shufflevector <2 x i8> %14, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %20 = insertelement <8 x i8> %19, i8 %i.rj, i64 2
  %21 = insertelement <8 x i8> %20, i8 %i.rh, i64 3
  %22 = insertelement <8 x i8> %21, i8 %17, i64 4
  %23 = insertelement <8 x i8> %22, i8 %i.rm, i64 5
  %24 = insertelement <8 x i8> %23, i8 %i.rf, i64 6
  %25 = insertelement <8 x i8> %24, i8 %15, i64 7
  %26 = tail call i8 @llvm.vector.reduce.add.v8i8(<8 x i8> %25)
  %op.rdx447 = add i8 %26, %i.rk                  ; 2 uses
  %.not = icmp eq i8 %op.rdx, %op.rdx447
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph352
  %i.rn = icmp sgt i8 %op.rdx447, %op.rdx
  %.271 = select i1 %i.rn, i8 5, i8 3
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph352
  %i.ro = load ptr, ptr %i.eo, align 8, !tbaa !87 ; 4 uses
  %i.rp = getelementptr inbounds [12 x i8], ptr %i.ro, i64 %indvars.iv397 ; 4 uses
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !96
  %i.rr = shl nsw i32 %i.rq, 1
  %i.rs = sub nsw i32 0, %i.qj
  %i.rt = sext i32 %i.rs to i64                   ; 3 uses
  %i.ru = getelementptr inbounds [12 x i8], ptr %i.rp, i64 %i.rt ; 2 uses
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !96
  %i.rw = getelementptr inbounds [12 x i8], ptr %i.rp, i64 %i.qk ; 2 uses
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !96
  %i.ry = add i32 %i.rv, %i.rx
  %i.rz = sub i32 %i.rr, %i.ry                    ; 2 uses
  %i.sa = mul nsw i32 %i.rz, %i.rz
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rp, i64 4
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ru, i64 4
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rw, i64 4
  %i.se = load <2 x i32>, ptr %i.sb, align 4, !tbaa !96
  %i.sf = shl nsw <2 x i32> %i.se, splat (i32 1)
  %i.sg = load <2 x i32>, ptr %i.sc, align 4, !tbaa !96
  %i.sh = load <2 x i32>, ptr %i.sd, align 4, !tbaa !96
  %i.si = add <2 x i32> %i.sg, %i.sh
  %i.sj = sub <2 x i32> %i.sf, %i.si              ; 2 uses
  %i.sk = mul nsw <2 x i32> %i.sj, %i.sj          ; 2 uses
  %i.sl = sub nsw i64 %indvars.iv397, %i.qk
  %i.sm = getelementptr inbounds [12 x i8], ptr %i.ro, i64 %i.sl ; 3 uses
  %i.sn = getelementptr inbounds [12 x i8], ptr %i.sm, i64 %i.rt ; 2 uses
  %i.so = getelementptr inbounds [12 x i8], ptr %i.ro, i64 %indvars.iv397 ; 3 uses
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !96
  %i.sq = getelementptr inbounds nuw i8, ptr %i.so, i64 4
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sm, i64 8
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !96
  %i.st = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  %i.su = load i32, ptr %i.st, align 4, !tbaa !96
  %i.sv = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !96
  %i.sx = getelementptr [12 x i8], ptr %i.ro, i64 %indvars.iv397
  %i.sy = getelementptr [12 x i8], ptr %i.sx, i64 %i.qk ; 4 uses
  %i.sz = getelementptr inbounds [12 x i8], ptr %i.sy, i64 %i.rt
  %i.ta = getelementptr inbounds [12 x i8], ptr %i.sy, i64 %i.qk ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sy, i64 8
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !96
  %i.td = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  %i.te = load i32, ptr %i.td, align 4, !tbaa !96
  %i.tf = load <2 x i32>, ptr %i.sm, align 4, !tbaa !96 ; 2 uses
  %i.tg = load <2 x i32>, ptr %i.sn, align 4, !tbaa !96 ; 2 uses
  %i.th = load <2 x i32>, ptr %i.sy, align 4, !tbaa !96 ; 2 uses
  %i.ti = shufflevector <2 x i32> %i.tf, <2 x i32> %i.th, <2 x i32> <i32 0, i32 2>
  %i.tj = shl nsw <2 x i32> %i.ti, splat (i32 1)
  %i.tk = load <2 x i32>, ptr %i.sz, align 4, !tbaa !96 ; 2 uses
  %i.tl = load <2 x i32>, ptr %i.ta, align 4, !tbaa !96 ; 2 uses
  %i.tm = shufflevector <2 x i32> %i.tg, <2 x i32> %i.tk, <2 x i32> <i32 0, i32 2>
  %i.tn = shufflevector <2 x i32> %i.tl, <2 x i32> poison, <2 x i32> <i32 poison, i32 0>
  %i.to = insertelement <2 x i32> %i.tn, i32 %i.sp, i64 0
  %i.tp = add <2 x i32> %i.tm, %i.to
  %i.tq = sub <2 x i32> %i.tj, %i.tp              ; 2 uses
  %i.tr = mul nsw <2 x i32> %i.tq, %i.tq
  %i.ts = shufflevector <2 x i32> %i.tf, <2 x i32> %i.th, <2 x i32> <i32 1, i32 3>
  %i.tt = shl nsw <2 x i32> %i.ts, splat (i32 1)
  %i.tu = load <2 x i32>, ptr %i.sq, align 4, !tbaa !96 ; 2 uses
  %i.tv = shufflevector <2 x i32> %i.tg, <2 x i32> %i.tk, <2 x i32> <i32 1, i32 3>
  %i.tw = shufflevector <2 x i32> %i.tu, <2 x i32> %i.tl, <2 x i32> <i32 0, i32 3>
  %i.tx = add <2 x i32> %i.tv, %i.tw
  %i.ty = sub <2 x i32> %i.tt, %i.tx              ; 2 uses
  %i.tz = mul nsw <2 x i32> %i.ty, %i.ty
  %i.ua = add nuw nsw <2 x i32> %i.tz, %i.tr
  %i.ub = insertelement <2 x i32> poison, i32 %i.ss, i64 0
  %i.uc = insertelement <2 x i32> %i.ub, i32 %i.tc, i64 1
  %i.ud = shl nsw <2 x i32> %i.uc, splat (i32 1)
  %i.ue = insertelement <2 x i32> %i.tu, i32 %i.su, i64 0
  %i.uf = insertelement <2 x i32> poison, i32 %i.sw, i64 0
  %i.ug = insertelement <2 x i32> %i.uf, i32 %i.te, i64 1
  %i.uh = add <2 x i32> %i.ue, %i.ug
  %i.ui = sub <2 x i32> %i.ud, %i.uh              ; 2 uses
  %i.uj = mul nsw <2 x i32> %i.ui, %i.ui
  %i.uk = add nuw nsw <2 x i32> %i.ua, %i.uj
  %i.ul = lshr <2 x i32> %i.uk, splat (i32 1)     ; 2 uses
  %i.um = extractelement <2 x i32> %i.sk, i64 0
  %i.un = add nuw nsw i32 %i.um, %i.sa
  %i.uo = extractelement <2 x i32> %i.sk, i64 1
  %i.up = add nuw nsw i32 %i.un, %i.uo
  %i.uq = extractelement <2 x i32> %i.ul, i64 0
  %i.ur = add nuw nsw i32 %i.up, %i.uq
  %i.us = extractelement <2 x i32> %i.ul, i64 1
  %i.ut = add nuw nsw i32 %i.ur, %i.us
  %i.uu = load ptr, ptr %i.j, align 8, !tbaa !87
  %i.uv = getelementptr inbounds [12 x i8], ptr %i.uu, i64 %indvars.iv397 ; 10 uses
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !96 ; 3 uses
  %i.ux = shl nsw i32 %i.uw, 1
  %i.uy = getelementptr inbounds i8, ptr %i.uv, i64 -12
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !96 ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.uv, i64 12
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !96 ; 2 uses
  %i.vc = add i32 %i.uz, %i.vb
  %i.vd = sub i32 %i.ux, %i.vc                    ; 2 uses
  %i.ve = mul nsw i32 %i.vd, %i.vd
  %i.vf = getelementptr inbounds nuw i8, ptr %i.uv, i64 4
  %i.vg = getelementptr inbounds i8, ptr %i.uv, i64 -8
  %i.vh = getelementptr inbounds nuw i8, ptr %i.uv, i64 16
  %i.vi = shl nsw i32 %i.uz, 1
  %i.vj = getelementptr i8, ptr %i.uv, i64 -24
  %i.vk = load i32, ptr %i.vj, align 4, !tbaa !96
  %i.vl = add i32 %i.uw, %i.vk
  %i.vm = sub i32 %i.vi, %i.vl                    ; 2 uses
  %i.vn = mul nsw i32 %i.vm, %i.vm
  %i.vo = getelementptr i8, ptr %i.uv, i64 -20
  %i.vp = shl nsw i32 %i.vb, 1
  %i.vq = getelementptr i8, ptr %i.uv, i64 24
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !96
  %i.vs = add i32 %i.uw, %i.vr
  %i.vt = sub i32 %i.vp, %i.vs                    ; 2 uses
  %i.vu = mul nsw i32 %i.vt, %i.vt
  %i.vv = getelementptr i8, ptr %i.uv, i64 28
  %i.vw = load <2 x i32>, ptr %i.vf, align 4, !tbaa !96 ; 4 uses
  %i.vx = extractelement <2 x i32> %i.vw, i64 0
  %i.vy = shl nsw i32 %i.vx, 1
  %i.vz = load <2 x i32>, ptr %i.vh, align 4, !tbaa !96 ; 3 uses
  %i.wa = extractelement <2 x i32> %i.vw, i64 1
  %i.wb = shl nsw i32 %i.wa, 1
  %i.wc = load <2 x i32>, ptr %i.vg, align 4, !tbaa !96 ; 3 uses
  %i.wd = shl nsw <2 x i32> %i.wc, splat (i32 1)
  %i.we = load <2 x i32>, ptr %i.vo, align 4, !tbaa !96
  %foldExtExtBinop472 = add <2 x i32> %i.wc, %i.vz
  %i.wf = extractelement <2 x i32> %foldExtExtBinop472, i64 0
  %i.wg = sub i32 %i.vy, %i.wf                    ; 2 uses
  %i.wh = mul nsw i32 %i.wg, %i.wg
  %foldExtExtBinop474 = add <2 x i32> %i.wc, %i.vz
  %i.wi = extractelement <2 x i32> %foldExtExtBinop474, i64 1
  %i.wj = sub i32 %i.wb, %i.wi                    ; 2 uses
  %i.wk = mul nsw i32 %i.wj, %i.wj
  %i.wl = add <2 x i32> %i.vw, %i.we
  %i.wm = sub <2 x i32> %i.wd, %i.wl              ; 2 uses
  %i.wn = mul nsw <2 x i32> %i.wm, %i.wm          ; 2 uses
  %i.wo = extractelement <2 x i32> %i.wn, i64 0
  %i.wp = add nuw nsw i32 %i.wo, %i.vn
  %i.wq = extractelement <2 x i32> %i.wn, i64 1
  %i.wr = add nuw nsw i32 %i.wp, %i.wq
  %i.ws = lshr i32 %i.wr, 1
  %i.wt = shl nsw <2 x i32> %i.vz, splat (i32 1)
  %i.wu = load <2 x i32>, ptr %i.vv, align 4, !tbaa !96
  %i.wv = add <2 x i32> %i.vw, %i.wu
  %i.ww = sub <2 x i32> %i.wt, %i.wv              ; 2 uses
  %i.wx = mul nsw <2 x i32> %i.ww, %i.ww          ; 2 uses
  %i.wy = extractelement <2 x i32> %i.wx, i64 0
  %i.wz = add nuw nsw i32 %i.wy, %i.vu
  %i.xa = extractelement <2 x i32> %i.wx, i64 1
  %i.xb = add nuw nsw i32 %i.wz, %i.xa
  %i.xc = lshr i32 %i.xb, 1
  %i.xd = add nuw nsw i32 %i.wh, %i.ve
  %i.xe = add nuw nsw i32 %i.xd, %i.wk
  %i.xf = add nuw nsw i32 %i.xe, %i.ws
  %i.xg = add nuw nsw i32 %i.xf, %i.xc
  %i.xh = icmp samesign ugt i32 %i.ut, %i.xg
  %.272 = select i1 %i.xh, i8 2, i8 4
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.1 = phi i8 [ %.271, %bb.u ], [ %.272, %bb.v ]
  %i.xi = load ptr, ptr %i.ep, align 8, !tbaa !88
  %i.xj = getelementptr inbounds i8, ptr %i.xi, i64 %indvars.iv397 ; 2 uses
  %i.xk = load i8, ptr %i.xj, align 1, !tbaa !102
  %i.xl = or i8 %i.xk, %.1
  store i8 %i.xl, ptr %i.xj, align 1, !tbaa !102
  %i.xm = add nuw nsw i32 %.0247350, 1            ; 2 uses
  %indvars.iv.next398 = add nsw i64 %indvars.iv397, 1
  %i.xn = load ptr, ptr %i.cp, align 8, !tbaa !94, !nonnull !100, !align !101 ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 30
  %i.xp = load i16, ptr %i.xo, align 2, !tbaa !84
  %i.xq = zext i16 %i.xp to i32
  %i.xr = icmp samesign ult i32 %i.xm, %i.xq
  br i1 %i.xr, label %.lr.ph352, label %._crit_edge353, !llvm.loop !121
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
begin_hunk_1_@_ZN6LibRaw16aahd_interpolateEv:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !81
  %.not.i6 = icmp eq i16 %i.aa, 0
  br i1 %.not.i6, label %_ZN4AAHD14refine_hv_dirsEv.exit, label %.lr.ph.i7

.preheader13.i:                                   ; preds = %.lr.ph.i7
  %i.ab = icmp eq i16 %i.ag, 0
  br i1 %i.ab, label %_ZN4AAHD14refine_hv_dirsEv.exit, label %.lr.ph16.i

.lr.ph.i7:                                        ; preds = %_ZN4AAHD11make_ahd_rbEv.exit, %.lr.ph.i7
  %.01214.i = phi i32 [ %i.ad, %.lr.ph.i7 ], [ 0, %_ZN4AAHD11make_ahd_rbEv.exit ] ; 3 uses
  %i.ac = and i32 %.01214.i, 1
  call void @_ZN4AAHD14refine_hv_dirsEii(ptr noundef nonnull readonly align 8 dereferenceable(128) %1, i32 noundef %.01214.i, i32 noundef %i.ac)
  %i.ad = add nuw nsw i32 %.01214.i, 1            ; 2 uses
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !94, !nonnull !100, !align !101
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %i.ag = load i16, ptr %i.af, align 4, !tbaa !81 ; 2 uses
  %i.ah = zext i16 %i.ag to i32
  %i.ai = icmp samesign ult i32 %i.ad, %i.ah
  br i1 %i.ai, label %.lr.ph.i7, label %.preheader13.i, !llvm.loop !0

.preheader.i8:                                    ; preds = %.lr.ph16.i
  %i.aj = icmp eq i16 %i.au, 0
  br i1 %i.aj, label %_ZN4AAHD14refine_hv_dirsEv.exit, label %.lr.ph18.i.preheader

.lr.ph18.i.preheader:                             ; preds = %.preheader.i8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.as, i64 30
  %i.an = load i16, ptr %i.am, align 2, !tbaa !84
  %i.ao = icmp eq i16 %i.an, 0
  br i1 %i.ao, label %_ZN4AAHD14refine_hv_dirsEv.exit, label %.lr.ph18.i

.lr.ph16.i:                                       ; preds = %.preheader13.i, %.lr.ph16.i
  %.01115.i = phi i32 [ %i.ar, %.lr.ph16.i ], [ 0, %.preheader13.i ] ; 3 uses
  %i.ap = and i32 %.01115.i, 1
  %i.aq = xor i32 %i.ap, 1
  call void @_ZN4AAHD14refine_hv_dirsEii(ptr noundef nonnull readonly align 8 dereferenceable(128) %1, i32 noundef %.01115.i, i32 noundef %i.aq)
  %i.ar = add nuw nsw i32 %.01115.i, 1            ; 2 uses
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !94, !nonnull !100, !align !101 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 28
  %i.au = load i16, ptr %i.at, align 4, !tbaa !81 ; 2 uses
  %i.av = zext i16 %i.au to i32
  %i.aw = icmp samesign ult i32 %i.ar, %i.av
  br i1 %i.aw, label %.lr.ph16.i, label %.preheader.i8, !llvm.loop !1

.lr.ph18.i:                                       ; preds = %.lr.ph18.i.preheader, %_ZN4AAHD15refine_ihv_dirsEi.exit
  %i.ax = phi ptr [ %i.dh, %_ZN4AAHD15refine_ihv_dirsEi.exit ], [ %i.as, %.lr.ph18.i.preheader ] ; 2 uses
  %.017.i = phi i32 [ %i.di, %_ZN4AAHD15refine_ihv_dirsEi.exit ], [ 0, %.lr.ph18.i.preheader ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 30
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !84 ; 2 uses
  %i.ba = zext i16 %i.az to i32
  %.not30.i = icmp eq i16 %i.az, 0
  br i1 %.not30.i, label %_ZN4AAHD15refine_ihv_dirsEi.exit, label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %.lr.ph18.i
  %i.bb = load i32, ptr %i.ak, align 4, !tbaa !85
  %i.bc = add nuw nsw i32 %.017.i, 4
  %i.bd = mul i32 %i.bb, %i.bc
  %i.be = add i32 %i.bd, 4
  %i.bf = sext i32 %i.be to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %.lr.ph.i9
  %indvars.iv.i = phi i64 [ %i.bf, %.lr.ph.i9 ], [ %indvars.iv.next.i, %bb.h ] ; 7 uses
  %.029.i = phi i32 [ 0, %.lr.ph.i9 ], [ %i.dg, %bb.h ]
  %i.bg = load ptr, ptr %i.al, align 8, !tbaa !88 ; 3 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %indvars.iv.i ; 5 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !102 ; 4 uses
  %i.bj = and i8 %i.bi, 1
  %.not.i10 = icmp eq i8 %i.bj, 0
  br i1 %.not.i10, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.bk = load i32, ptr %i.ak, align 4, !tbaa !85
  %i.bl = sext i32 %i.bk to i64                   ; 2 uses
  %i.bm = sub nsw i64 %indvars.iv.i, %i.bl
  %i.bn = getelementptr inbounds i8, ptr %i.bg, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !102
  %i.bp = zext i8 %i.bo to i32                    ; 2 uses
  %i.bq = and i32 %i.bp, 4
  %i.br = getelementptr i8, ptr %i.bh, i64 %i.bl
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !102
  %i.bt = zext i8 %i.bs to i32                    ; 2 uses
  %i.bu = and i32 %i.bt, 4
  %i.bv = add nuw nsw i32 %i.bu, %i.bq
  %i.bw = getelementptr i8, ptr %i.bh, i64 -1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !102
  %i.by = zext i8 %i.bx to i32                    ; 2 uses
  %i.bz = and i32 %i.by, 4
  %i.ca = add nuw nsw i32 %i.bv, %i.bz
  %i.cb = getelementptr i8, ptr %i.bh, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !102
  %i.cd = zext i8 %i.cc to i32                    ; 2 uses
  %i.ce = and i32 %i.cd, 4
  %i.cf = add nuw nsw i32 %i.ca, %i.ce
  %i.cg = and i32 %i.bp, 2
  %i.ch = and i32 %i.bt, 2
  %i.ci = add nuw nsw i32 %i.ch, %i.cg
  %i.cj = and i32 %i.by, 2
  %i.ck = add nuw nsw i32 %i.ci, %i.cj
  %i.cl = and i32 %i.cd, 2
  %i.cm = add nuw nsw i32 %i.ck, %i.cl
  %i.cn = and i8 %i.bi, 4
  %i.co = icmp ne i8 %i.cn, 0
  %i.cp = icmp samesign ugt i32 %i.cm, 6
  %or.cond.i = select i1 %i.co, i1 %i.cp, i1 false
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cq = and i8 %i.bi, -6
  store i8 %i.cq, ptr %i.bh, align 1, !tbaa !102
  %i.cr = load ptr, ptr %i.al, align 8, !tbaa !88
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 %indvars.iv.i ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !102
  %i.cu = or i8 %i.ct, 2
  store i8 %i.cu, ptr %i.cs, align 1, !tbaa !102
  %.pre.i = load ptr, ptr %i.al, align 8, !tbaa !88 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 %indvars.iv.i
  %.pre32.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !102
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cv = phi i8 [ %.pre32.i, %bb.e ], [ %i.bi, %bb.d ] ; 2 uses
  %i.cw = phi ptr [ %.pre.i, %bb.e ], [ %i.bg, %bb.d ]
  %i.cx = and i8 %i.cv, 2
  %i.cy = icmp ne i8 %i.cx, 0
  %i.cz = icmp samesign ugt i32 %i.cf, 12
  %or.cond3.i = select i1 %i.cy, i1 %i.cz, i1 false
  br i1 %or.cond3.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.da = getelementptr inbounds i8, ptr %i.cw, i64 %indvars.iv.i
  %i.db = and i8 %i.cv, -3
  store i8 %i.db, ptr %i.da, align 1, !tbaa !102
  %i.dc = load ptr, ptr %i.al, align 8, !tbaa !88
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 %indvars.iv.i ; 2 uses
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !102
  %i.df = or i8 %i.de, 4
  store i8 %i.df, ptr %i.dd, align 1, !tbaa !102
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.c
  %i.dg = add nuw nsw i32 %.029.i, 1              ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %i.dg, %i.ba
  br i1 %exitcond.not.i, label %_ZN4AAHD15refine_ihv_dirsEi.exit.loopexit, label %bb.c, !llvm.loop !2

_ZN4AAHD15refine_ihv_dirsEi.exit.loopexit:        ; preds = %bb.h
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !94
  br label %_ZN4AAHD15refine_ihv_dirsEi.exit

_ZN4AAHD15refine_ihv_dirsEi.exit:                 ; preds = %_ZN4AAHD15refine_ihv_dirsEi.exit.loopexit, %.lr.ph18.i
  %i.dh = phi ptr [ %.pre, %_ZN4AAHD15refine_ihv_dirsEi.exit.loopexit ], [ %i.ax, %.lr.ph18.i ] ; 2 uses
  %i.di = add nuw nsw i32 %.017.i, 1              ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 28
  %i.dk = load i16, ptr %i.dj, align 4, !tbaa !81
  %i.dl = zext i16 %i.dk to i32
  %i.dm = icmp samesign ult i32 %i.di, %i.dl
  br i1 %i.dm, label %.lr.ph18.i, label %_ZN4AAHD14refine_hv_dirsEv.exit, !llvm.loop !131

_ZN4AAHD14refine_hv_dirsEv.exit:                  ; preds = %_ZN4AAHD15refine_ihv_dirsEi.exit, %.lr.ph18.i.preheader, %.preheader.i8, %.preheader13.i, %_ZN4AAHD11make_ahd_rbEv.exit
  invoke void @_ZN4AAHD13combine_imageEv(ptr noundef nonnull align 8 dereferenceable(128) %1)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %_ZN4AAHD14refine_hv_dirsEv.exit
  call void @_ZN4AAHDD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i3, %.lr.ph9.i, %.lr.ph.i, %_ZN4AAHD14refine_hv_dirsEv.exit, %bb.a
  %lpad.loopexit.split-lp55 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4AAHDD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  resume { ptr, i32 } %lpad.loopexit.split-lp55
}

declare i32 @__gxx_personality_v0(...)

declare noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.pow.v8f32(<8 x float>, <8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.add.v8i8(<8 x i8>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x i32> @llvm.masked.load.v4i32.p0(ptr captures(none), <4 x i1>, <4 x i32>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.abs.v8i32(<8 x i32>, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr>, <4 x i1>, <4 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v2i32(<2 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { cold noreturn }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #12 = { nounwind allocsize(0,1) }
attributes #13 = { nounwind }
attributes #14 = { noreturn }

!llvm.module.flags = !{!7, !8, !9, !10, !11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!17}

!0 = distinct !{!0, !93}
!1 = distinct !{!1, !93}
!2 = distinct !{!2, !93}
!3 = distinct !{!3, !93}
!4 = distinct !{!4, !93}
!5 = distinct !{!5, !93}
!6 = distinct !{!6, !93}
!7 = !{i32 7, !"Dwarf Version", i32 5}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!13 = !{!"Simple C++ TBAA"}
!14 = !{!"omnipotent char", !13, i64 0}
!15 = !{!"int", !14, i64 0}
!16 = !{!"__libc_errno", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"any pointer", !14, i64 0}
!19 = !{!"p1 _ZTS6LibRaw", !18, i64 0}
!20 = !{!"p1 short", !18, i64 0}
!21 = !{!"short", !14, i64 0}
!22 = !{!"double", !14, i64 0}
!23 = !{!"_ZTS20libraw_image_sizes_t", !21, i64 0, !21, i64 2, !21, i64 4, !21, i64 6, !21, i64 8, !21, i64 10, !21, i64 12, !21, i64 14, !15, i64 16, !22, i64 24, !15, i64 32, !14, i64 36, !21, i64 164, !14, i64 166}
!24 = !{!"p1 omnipotent char", !18, i64 0}
!25 = !{!"_ZTS16libraw_iparams_t", !14, i64 0, !14, i64 4, !14, i64 68, !14, i64 132, !14, i64 196, !14, i64 260, !15, i64 324, !15, i64 328, !15, i64 332, !15, i64 336, !15, i64 340, !15, i64 344, !14, i64 348, !14, i64 384, !14, i64 420, !15, i64 428, !24, i64 432}
!26 = !{!"float", !14, i64 0}
!27 = !{!"_ZTS18libraw_nikonlens_t", !26, i64 0, !14, i64 4, !14, i64 5, !14, i64 6, !14, i64 7}
!28 = !{!"_ZTS16libraw_dnglens_t", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12}
!29 = !{!"long long", !14, i64 0}
!30 = !{!"_ZTS24libraw_makernotes_lens_t", !29, i64 0, !14, i64 8, !21, i64 136, !21, i64 138, !29, i64 144, !21, i64 152, !21, i64 154, !14, i64 156, !21, i64 220, !14, i64 222, !14, i64 238, !26, i64 256, !26, i64 260, !26, i64 264, !26, i64 268, !26, i64 272, !26, i64 276, !26, i64 280, !26, i64 284, !26, i64 288, !26, i64 292, !26, i64 296, !26, i64 300, !26, i64 304, !26, i64 308, !26, i64 312, !29, i64 320, !14, i64 328, !29, i64 456, !14, i64 464, !29, i64 592, !14, i64 600, !21, i64 728, !26, i64 732}
!31 = !{!"_ZTS17libraw_lensinfo_t", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !14, i64 20, !14, i64 148, !14, i64 276, !14, i64 404, !21, i64 532, !27, i64 536, !28, i64 544, !30, i64 560}
!32 = !{!"_ZTS13libraw_area_t", !21, i64 0, !21, i64 2, !21, i64 4, !21, i64 6}
!33 = !{!"_ZTS25libraw_canon_makernotes_t", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !14, i64 16, !15, i64 32, !14, i64 36, !21, i64 52, !21, i64 54, !14, i64 56, !21, i64 58, !21, i64 60, !21, i64 62, !21, i64 64, !21, i64 66, !21, i64 68, !21, i64 70, !21, i64 72, !21, i64 74, !21, i64 76, !21, i64 78, !21, i64 80, !21, i64 82, !15, i64 84, !26, i64 88, !21, i64 92, !21, i64 94, !21, i64 96, !21, i64 98, !15, i64 100, !21, i64 104, !15, i64 108, !15, i64 112, !21, i64 116, !15, i64 120, !32, i64 124, !32, i64 132, !32, i64 140, !32, i64 148, !32, i64 156, !14, i64 164}
!34 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !21, i64 0, !21, i64 2, !21, i64 4, !21, i64 6}
!35 = !{!"_ZTS25libraw_nikon_makernotes_t", !22, i64 0, !21, i64 8, !21, i64 10, !14, i64 12, !14, i64 19, !14, i64 20, !14, i64 21, !14, i64 34, !14, i64 54, !14, i64 58, !14, i64 62, !14, i64 66, !14, i64 67, !14, i64 68, !14, i64 69, !14, i64 70, !14, i64 71, !14, i64 73, !14, i64 74, !14, i64 75, !14, i64 76, !14, i64 77, !14, i64 78, !14, i64 82, !14, i64 86, !21, i64 88, !15, i64 92, !15, i64 96, !15, i64 100, !15, i64 104, !14, i64 112, !14, i64 144, !14, i64 145, !14, i64 146, !15, i64 148, !15, i64 152, !15, i64 156, !14, i64 160, !14, i64 162, !21, i64 170, !34, i64 172, !21, i64 180, !21, i64 182, !21, i64 184, !15, i64 188, !14, i64 192, !14, i64 212, !15, i64 232, !14, i64 236, !15, i64 248, !24, i64 256, !21, i64 264, !21, i64 266, !14, i64 268, !21, i64 270, !22, i64 272, !22, i64 280, !22, i64 288}
!36 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !15, i64 0, !22, i64 8, !14, i64 16, !14, i64 24, !14, i64 88, !15, i64 152, !15, i64 156, !15, i64 160, !15, i64 164, !14, i64 168, !14, i64 200, !15, i64 264, !14, i64 268, !14, i64 276, !14, i64 288}
!37 = !{!"_ZTS18libraw_fuji_info_t", !26, i64 0, !21, i64 4, !21, i64 6, !21, i64 8, !21, i64 10, !21, i64 12, !21, i64 14, !21, i64 16, !21, i64 18, !14, i64 20, !14, i64 53, !26, i64 88, !21, i64 92, !21, i64 94, !14, i64 96, !21, i64 100, !15, i64 104, !15, i64 108, !21, i64 112, !14, i64 114, !21, i64 120, !21, i64 122, !21, i64 124, !21, i64 126, !21, i64 128, !15, i64 132, !21, i64 136, !14, i64 138, !14, i64 151, !14, i64 156, !15, i64 164, !21, i64 168, !15, i64 172, !21, i64 176, !14, i64 178, !14, i64 196, !15, i64 324, !15, i64 328, !15, i64 332, !14, i64 336, !15, i64 344}
!38 = !{!"_ZTS27libraw_olympus_makernotes_t", !14, i64 0, !21, i64 6, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48, !15, i64 52, !15, i64 56, !15, i64 60, !14, i64 64, !14, i64 72, !21, i64 82, !14, i64 84, !21, i64 88, !21, i64 90, !14, i64 92, !14, i64 352, !21, i64 392, !14, i64 394, !14, i64 396, !14, i64 404, !21, i64 416, !21, i64 418, !21, i64 420, !21, i64 422, !22, i64 424, !14, i64 432, !14, i64 440, !14, i64 448, !15, i64 452, !21, i64 456, !21, i64 458}
!39 = !{!"_ZTS18libraw_sony_info_t", !21, i64 0, !14, i64 2, !14, i64 3, !15, i64 4, !14, i64 8, !15, i64 12, !14, i64 16, !14, i64 17, !21, i64 18, !14, i64 20, !14, i64 24, !14, i64 25, !21, i64 26, !14, i64 28, !14, i64 38, !14, i64 39, !14, i64 40, !21, i64 48, !14, i64 50, !14, i64 51, !14, i64 52, !21, i64 54, !15, i64 56, !21, i64 60, !14, i64 62, !21, i64 66, !21, i64 68, !21, i64 70, !21, i64 72, !21, i64 74, !21, i64 76, !21, i64 78, !15, i64 80, !26, i64 84, !21, i64 88, !15, i64 92, !15, i64 96, !21, i64 100, !14, i64 102, !15, i64 124, !21, i64 128, !15, i64 132, !14, i64 136, !14, i64 137, !21, i64 138, !21, i64 140, !21, i64 142, !21, i64 144, !21, i64 146, !21, i64 148, !21, i64 150, !21, i64 152, !21, i64 154, !15, i64 156, !21, i64 160, !14, i64 162, !26, i64 180}
!40 = !{!"_ZTS25libraw_kodak_makernotes_t", !21, i64 0, !21, i64 2, !21, i64 4, !21, i64 6, !21, i64 8, !21, i64 10, !14, i64 12, !14, i64 48, !14, i64 84, !14, i64 120, !14, i64 156, !14, i64 192, !21, i64 228, !21, i64 230, !21, i64 232, !21, i64 234, !26, i64 236, !26, i64 240}
!41 = !{!"_ZTS29libraw_panasonic_makernotes_t", !21, i64 0, !21, i64 2, !14, i64 4, !15, i64 36, !26, i64 40, !14, i64 44, !21, i64 56, !21, i64 58, !15, i64 60, !15, i64 64}
!42 = !{!"_ZTS26libraw_pentax_makernotes_t", !14, i64 0, !14, i64 4, !14, i64 8, !21, i64 12, !15, i64 16, !15, i64 20, !21, i64 24, !14, i64 26, !21, i64 30, !14, i64 32, !14, i64 33, !21, i64 34}
!43 = !{!"_ZTS22libraw_p1_makernotes_t", !14, i64 0, !14, i64 64, !14, i64 128, !14, i64 384}
!44 = !{!"_ZTS25libraw_ricoh_makernotes_t", !21, i64 0, !14, i64 4, !14, i64 12, !21, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !21, i64 40, !21, i64 42, !21, i64 44, !21, i64 46, !21, i64 48, !21, i64 50, !22, i64 56, !22, i64 64}
!45 = !{!"_ZTS27libraw_samsung_makernotes_t", !14, i64 0, !14, i64 16, !14, i64 32, !14, i64 40, !22, i64 88, !15, i64 96, !14, i64 100}
!46 = !{!"_ZTS24libraw_metadata_common_t", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !26, i64 20, !26, i64 24, !26, i64 28, !26, i64 32, !26, i64 36, !26, i64 40, !26, i64 44, !26, i64 48, !26, i64 52, !26, i64 56, !26, i64 60, !21, i64 64, !14, i64 66, !26, i64 196, !14, i64 200, !15, i64 296}
!47 = !{!"_ZTS19libraw_makernotes_t", !33, i64 0, !35, i64 168, !36, i64 464, !37, i64 848, !38, i64 1200, !39, i64 1664, !40, i64 1848, !41, i64 2092, !42, i64 2160, !43, i64 2196, !44, i64 2648, !45, i64 2720, !46, i64 2856}
!48 = !{!"_ZTS21libraw_shootinginfo_t", !21, i64 0, !21, i64 2, !21, i64 4, !21, i64 6, !21, i64 8, !21, i64 10, !21, i64 12, !14, i64 14, !14, i64 78}
!49 = !{!"_ZTS22libraw_output_params_t", !14, i64 0, !14, i64 16, !14, i64 32, !14, i64 64, !14, i64 112, !26, i64 128, !26, i64 132, !15, i64 136, !15, i64 140, !15, i64 144, !15, i64 148, !15, i64 152, !15, i64 156, !15, i64 160, !24, i64 168, !24, i64 176, !24, i64 184, !24, i64 192, !15, i64 200, !15, i64 204, !15, i64 208, !15, i64 212, !15, i64 216, !15, i64 220, !14, i64 224, !15, i64 240, !15, i64 244, !26, i64 248, !26, i64 252, !15, i64 256, !15, i64 260, !15, i64 264, !15, i64 268, !15, i64 272, !15, i64 276, !15, i64 280, !15, i64 284, !26, i64 288, !26, i64 292, !15, i64 296, !15, i64 300}
!50 = !{!"any p2 pointer", !18, i64 0}
!51 = !{!"p2 omnipotent char", !50, i64 0}
!52 = !{!"_ZTS26libraw_raw_unpack_params_t", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !26, i64 28, !14, i64 32, !51, i64 40}
!53 = !{!"_ZTS5ph1_t", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !26, i64 32}
!54 = !{!"_ZTS19libraw_dng_levels_t", !15, i64 0, !14, i64 4, !15, i64 16420, !14, i64 16424, !26, i64 32840, !14, i64 32844, !14, i64 32860, !14, i64 32868, !15, i64 32884, !14, i64 32888, !14, i64 32904, !26, i64 32920, !26, i64 32924, !14, i64 32928}
!55 = !{!"_ZTS18libraw_colordata_t", !14, i64 0, !14, i64 131072, !15, i64 147488, !15, i64 147492, !15, i64 147496, !14, i64 147500, !26, i64 147516, !26, i64 147520, !14, i64 147524, !14, i64 147652, !14, i64 147668, !14, i64 147684, !14, i64 147732, !14, i64 147780, !14, i64 147828, !53, i64 147876, !26, i64 147912, !26, i64 147916, !14, i64 147920, !14, i64 147984, !14, i64 148048, !14, i64 148112, !14, i64 148176, !14, i64 148193, !18, i64 148264, !15, i64 148272, !14, i64 148276, !14, i64 148308, !54, i64 148648, !14, i64 181624, !14, i64 185720, !15, i64 187000, !14, i64 187004, !15, i64 187076, !15, i64 187080}
!56 = !{!"long", !14, i64 0}
!57 = !{!"_ZTS17libraw_gps_info_t", !14, i64 0, !14, i64 12, !14, i64 24, !26, i64 36, !14, i64 40, !14, i64 41, !14, i64 42, !14, i64 43, !14, i64 44}
!58 = !{!"_ZTS17libraw_imgother_t", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !56, i64 16, !15, i64 24, !14, i64 28, !57, i64 156, !14, i64 204, !14, i64 716, !14, i64 780}
!59 = !{!"_ZTS24LibRaw_thumbnail_formats", !14, i64 0}
!60 = !{!"_ZTS18libraw_thumbnail_t", !59, i64 0, !21, i64 4, !21, i64 6, !15, i64 8, !15, i64 12, !24, i64 16}
!61 = !{!"_ZTS23libraw_thumbnail_list_t", !15, i64 0, !14, i64 8}
!62 = !{!"p1 float", !18, i64 0}
!63 = !{!"_ZTS31libraw_internal_output_params_t", !15, i64 0, !15, i64 4, !15, i64 8, !21, i64 12, !21, i64 14}
!64 = !{!"_ZTS16libraw_rawdata_t", !18, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !62, i64 32, !62, i64 40, !62, i64 48, !20, i64 56, !20, i64 64, !25, i64 72, !23, i64 512, !63, i64 696, !55, i64 712}
!65 = !{!"_ZTS13libraw_data_t", !20, i64 0, !23, i64 8, !25, i64 192, !31, i64 632, !47, i64 1928, !48, i64 5088, !49, i64 5232, !52, i64 5536, !15, i64 5584, !15, i64 5588, !55, i64 5592, !58, i64 192680, !60, i64 193480, !61, i64 193504, !64, i64 193768, !18, i64 381568}
!66 = !{!"p1 _ZTS10LibRaw_TLS", !18, i64 0}
!67 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !18, i64 0}
!68 = !{!"p1 _ZTS8_IO_FILE", !18, i64 0}
!69 = !{!"_ZTS15internal_data_t", !67, i64 0, !68, i64 8, !15, i64 16, !24, i64 24, !29, i64 32, !29, i64 40, !14, i64 48}
!70 = !{!"p1 int", !18, i64 0}
!71 = !{!"_ZTS13output_data_t", !70, i64 0, !70, i64 8}
!72 = !{!"_ZTS15identify_data_t", !15, i64 0, !29, i64 8, !29, i64 16, !15, i64 24, !15, i64 28, !15, i64 32}
!73 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !14, i64 0}
!74 = !{!"_ZTS12pana8_tags_t", !14, i64 0, !14, i64 24, !21, i64 36, !14, i64 38, !14, i64 46, !14, i64 80, !14, i64 114, !21, i64 148, !21, i64 150, !14, i64 152, !14, i64 192, !14, i64 204, !14, i64 224, !14, i64 234}
!75 = !{!"_ZTS15unpacker_data_t", !21, i64 0, !14, i64 2, !14, i64 10, !15, i64 16, !29, i64 24, !29, i64 32, !29, i64 40, !29, i64 48, !29, i64 56, !29, i64 64, !29, i64 72, !15, i64 80, !15, i64 84, !15, i64 88, !15, i64 92, !73, i64 96, !15, i64 100, !15, i64 104, !15, i64 108, !15, i64 112, !15, i64 116, !15, i64 120, !15, i64 124, !15, i64 128, !15, i64 132, !15, i64 136, !15, i64 140, !29, i64 144, !15, i64 152, !15, i64 156, !15, i64 160, !15, i64 164, !15, i64 168, !15, i64 172, !15, i64 176, !15, i64 180, !15, i64 184, !74, i64 192, !14, i64 440, !15, i64 2488, !15, i64 2492, !21, i64 2496, !21, i64 2498, !15, i64 2500, !15, i64 2504, !15, i64 2508, !15, i64 2512, !15, i64 2516, !15, i64 2520, !15, i64 2524, !14, i64 2528, !21, i64 2608}
!76 = !{!"_ZTS22libraw_internal_data_t", !69, i64 0, !63, i64 64, !71, i64 80, !72, i64 96, !75, i64 136}
!77 = !{!"p1 _ZTS6decode", !18, i64 0}
!78 = !{!"_ZTS13libraw_memmgr", !50, i64 0, !15, i64 8}
!79 = !{!"_ZTS18libraw_callbacks_t", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !18, i64 96, !18, i64 104, !18, i64 112, !18, i64 120, !18, i64 128, !18, i64 136, !18, i64 144}
!80 = !{!"_ZTS6LibRaw", !65, i64 8, !66, i64 381584, !76, i64 381592, !14, i64 384344, !77, i64 433496, !77, i64 433504, !14, i64 433512, !78, i64 768232, !79, i64 768248, !14, i64 768400, !14, i64 768416, !14, i64 768432, !18, i64 768448, !18, i64 768456, !18, i64 768464, !56, i64 768472, !18, i64 768480, !18, i64 768488, !18, i64 768496, !18, i64 768504}
!81 = !{!80, !21, i64 28}
!82 = !{!"_ZTS4AAHD", !15, i64 0, !15, i64 4, !14, i64 8, !14, i64 24, !24, i64 40, !14, i64 48, !14, i64 64, !21, i64 70, !14, i64 72, !14, i64 80, !19, i64 120}
!83 = !{!82, !15, i64 0}
!84 = !{!80, !21, i64 30}
!85 = !{!82, !15, i64 4}
!86 = !{!20, !20, i64 0}
!87 = !{!70, !70, i64 0}
!88 = !{!82, !24, i64 40}
!89 = !{!24, !24, i64 0}
!90 = !{!21, !21, i64 0}
!91 = !{!80, !20, i64 8}
!92 = !{!26, !26, i64 0}
!93 = !{!"llvm.loop.mustprogress"}
!94 = !{!82, !19, i64 120}
!95 = !{!80, !15, i64 544}
!96 = !{!15, !15, i64 0}
!97 = !{!80, !21, i64 381670}
!98 = !{!80, !15, i64 381828}
!99 = !{!"llvm.loop.unswitch.partial.disable"}
!100 = !{}
!101 = !{i64 8}
!102 = !{!14, !14, i64 0}
!103 = distinct !{!103, !93, !110, !111}
!104 = distinct !{!104, !93, !99}
!105 = distinct !{!105, !93}
!106 = distinct !{!106, !93}
!107 = !{!19, !19, i64 0}
!108 = !{!"_ZTS17LibRaw_exceptions", !14, i64 0}
!109 = !{!108, !108, i64 0}
!110 = !{!"llvm.loop.isvectorized", i32 1}
!111 = !{!"llvm.loop.unroll.runtime.disable"}
!112 = !{!82, !21, i64 70}
!113 = distinct !{!113, !93}
!114 = distinct !{!114, !93}
!115 = distinct !{!115, !93}
!116 = distinct !{!116, !93}
!117 = distinct !{!117, !93}
!118 = distinct !{!118, !93}
!119 = distinct !{!119, !93}
!120 = distinct !{!120, !93}
!121 = distinct !{!121, !93}
!122 = distinct !{!122, !93}
!123 = distinct !{!123, !93}
!124 = distinct !{!124, !93}
!125 = distinct !{!125, !93}
!126 = distinct !{!126, !93}
!127 = distinct !{!127, !93, !99}
!128 = distinct !{!128, !93}
!129 = distinct !{!129, !93}
!130 = distinct !{!130, !93}
!131 = distinct !{!131, !93, !99}
end_hunk_1
