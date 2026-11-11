Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/raudio?download=true
inline.NumInlined: 3136
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 97
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 300
begin_hunk_0_@inverse_mdct:bb.a
  %i.mh = load float, ptr %i.mg, align 4
  %i.mi = fsub float %i.mf, %i.mh                 ; 2 uses
  %i.mj = fadd float %i.ma, %i.mc
  store float %i.mj, ptr %i.lz, align 4
  %i.mk = load float, ptr %i.mg, align 4
  %i.ml = fadd float %i.mf, %i.mk
  store float %i.ml, ptr %i.me, align 4
  %i.mm = load float, ptr %i.ly, align 4
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ly, i64 4 ; 2 uses
  %i.mo = load float, ptr %i.mn, align 4
  %i.mp = fneg float %i.mo
  %i.mq = fmul float %i.mi, %i.mp
  %i.mr = call float @llvm.fmuladd.f32(float %i.md, float %i.mm, float %i.mq)
  store float %i.mr, ptr %i.mb, align 4
  %i.ms = load float, ptr %i.ly, align 4
  %i.mt = load float, ptr %i.mn, align 4
  %i.mu = fmul float %i.md, %i.mt
  %i.mv = call float @llvm.fmuladd.f32(float %i.mi, float %i.ms, float %i.mu)
  store float %i.mv, ptr %i.mg, align 4
  %i.mw = getelementptr inbounds i8, ptr %.08893.i, i64 -32
  %i.mx = getelementptr inbounds i8, ptr %.094.i, i64 -32
  %i.my = getelementptr inbounds [4 x i8], ptr %i.ly, i64 %i.jb
  %i.mz = add nsw i32 %.08992.i, -1
  %i.na = icmp samesign ugt i32 %.08992.i, 1
  br i1 %i.na, label %bb.r, label %imdct_step3_inner_r_loop.exit.loopexit

imdct_step3_inner_r_loop.exit.loopexit:           ; preds = %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit423, label %.lr.ph.i

.loopexit:                                        ; preds = %imdct_step3_inner_s_loop.exit.loopexit, %.lr.ph459, %.lr.ph461
  %exitcond498.not = icmp eq i32 %i.nd, %i.il
  br i1 %exitcond498.not, label %._crit_edge462, label %.lr.ph461

.lr.ph461:                                        ; preds = %.lr.ph461.preheader, %.loopexit
  %.1460 = phi i32 [ %i.nd, %.loopexit ], [ %.0.lcssa, %.lr.ph461.preheader ] ; 8 uses
  %i.nb = add nuw nsw i32 %.1460, 6
  %i.nc = ashr i32 %1, %i.nb                      ; 2 uses
  %i.nd = add nuw nsw i32 %.1460, 1               ; 2 uses
  %i.ne = shl nuw i32 2, %.1460                   ; 2 uses
  %i.nf = icmp sgt i32 %i.nc, 0
  br i1 %i.nf, label %.lr.ph459, label %.loopexit

.lr.ph459:                                        ; preds = %.lr.ph461
  %i.ng = add nuw nsw i32 %.1460, 2
  %i.nh = ashr i32 %1, %i.ng                      ; 2 uses
  %i.ni = ashr i32 %i.nh, 1
  %i.nj = shl nuw i32 8, %.1460
  %i.nk = sext i32 %i.nj to i64
  %i.nl = shl i32 16, %.1460
  %i.nm = sext i32 %i.nl to i64
  %i.nn = shl i32 24, %.1460
  %i.no = sext i32 %i.nn to i64
  %i.np = icmp sgt i32 %i.ne, 0
  %i.nq = sub nsw i32 0, %i.ni
  %i.nr = sext i32 %i.nq to i64
  %i.ns = sext i32 %i.nh to i64
  %i.nt = sub nsw i64 0, %i.ns                    ; 2 uses
  %i.nu = shl i32 32, %.1460
  %i.nv = sext i32 %i.nu to i64
  br i1 %i.np, label %.lr.ph.i421, label %.loopexit

.lr.ph.i421:                                      ; preds = %.lr.ph459, %imdct_step3_inner_s_loop.exit.loopexit
  %indvars.iv495 = phi i64 [ %indvars.iv.next496, %imdct_step3_inner_s_loop.exit.loopexit ], [ %i.in, %.lr.ph459 ] ; 2 uses
  %.0393457 = phi ptr [ %i.rv, %imdct_step3_inner_s_loop.exit.loopexit ], [ %i.x, %.lr.ph459 ] ; 6 uses
  %.0395455 = phi i32 [ %i.rw, %imdct_step3_inner_s_loop.exit.loopexit ], [ %i.nc, %.lr.ph459 ] ; 2 uses
  %i.nw = load float, ptr %.0393457, align 4
  %i.nx = getelementptr inbounds nuw i8, ptr %.0393457, i64 4
  %i.ny = load float, ptr %i.nx, align 4          ; 2 uses
  %i.nz = getelementptr inbounds [4 x i8], ptr %.0393457, i64 %i.nk ; 2 uses
  %i.oa = load float, ptr %i.nz, align 4
  %i.ob = getelementptr i8, ptr %i.nz, i64 4
  %i.oc = load float, ptr %i.ob, align 4          ; 2 uses
  %i.od = getelementptr inbounds [4 x i8], ptr %.0393457, i64 %i.nm ; 2 uses
  %i.oe = load float, ptr %i.od, align 4
  %i.of = getelementptr i8, ptr %i.od, i64 4
  %i.og = load float, ptr %i.of, align 4          ; 2 uses
  %i.oh = getelementptr inbounds [4 x i8], ptr %.0393457, i64 %i.no ; 2 uses
  %i.oi = load float, ptr %i.oh, align 4
  %i.oj = getelementptr i8, ptr %i.oh, i64 4
  %i.ok = load float, ptr %i.oj, align 4          ; 2 uses
  %i.ol = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv495 ; 2 uses
  %i.om = getelementptr inbounds [4 x i8], ptr %i.ol, i64 %i.nr
  %i.on = fneg float %i.ny
  %i.oo = fneg float %i.oc
  %i.op = fneg float %i.og
  %i.oq = fneg float %i.ok
  %i.or = insertelement <2 x float> poison, float %i.oi, i64 0
  %i.os = shufflevector <2 x float> %i.or, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ot = insertelement <2 x float> poison, float %i.oq, i64 0
  %i.ou = insertelement <2 x float> %i.ot, float %i.ok, i64 1
  %i.ov = insertelement <2 x float> poison, float %i.oe, i64 0
  %i.ow = shufflevector <2 x float> %i.ov, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ox = insertelement <2 x float> poison, float %i.op, i64 0
  %i.oy = insertelement <2 x float> %i.ox, float %i.og, i64 1
  %i.oz = insertelement <2 x float> poison, float %i.oa, i64 0
  %i.pa = shufflevector <2 x float> %i.oz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pb = insertelement <2 x float> poison, float %i.oo, i64 0
  %i.pc = insertelement <2 x float> %i.pb, float %i.oc, i64 1
  %i.pd = insertelement <2 x float> poison, float %i.nw, i64 0
  %i.pe = shufflevector <2 x float> %i.pd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pf = insertelement <2 x float> poison, float %i.on, i64 0
  %i.pg = insertelement <2 x float> %i.pf, float %i.ny, i64 1
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i421
  %.0108.i = phi ptr [ %i.om, %.lr.ph.i421 ], [ %i.rs, %bb.s ] ; 9 uses
  %.0104107.i = phi ptr [ %i.ol, %.lr.ph.i421 ], [ %i.rr, %bb.s ] ; 9 uses
  %.0105106.i = phi i32 [ %i.ne, %.lr.ph.i421 ], [ %i.rt, %bb.s ] ; 2 uses
  %i.ph = getelementptr inbounds i8, ptr %.0104107.i, i64 -4 ; 2 uses
  %i.pi = getelementptr inbounds i8, ptr %.0108.i, i64 -4 ; 3 uses
  %i.pj = load <2 x float>, ptr %i.ph, align 4    ; 3 uses
  %i.pk = load float, ptr %.0108.i, align 4
  %i.pl = load <2 x float>, ptr %i.pi, align 4
  %i.pm = fsub <2 x float> %i.pj, %i.pl           ; 2 uses
  %i.pn = extractelement <2 x float> %i.pj, i64 1
  %i.po = fadd float %i.pn, %i.pk
  store float %i.po, ptr %.0104107.i, align 4
  %i.pp = load float, ptr %i.pi, align 4
  %i.pq = extractelement <2 x float> %i.pj, i64 0
  %i.pr = fadd float %i.pq, %i.pp
  store float %i.pr, ptr %i.ph, align 4
  %i.ps = fmul <2 x float> %i.pg, %i.pm
  %i.pt = shufflevector <2 x float> %i.ps, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.pu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pm, <2 x float> %i.pe, <2 x float> %i.pt)
  store <2 x float> %i.pu, ptr %i.pi, align 4
  %i.pv = getelementptr inbounds i8, ptr %.0104107.i, i64 -8
  %i.pw = getelementptr inbounds i8, ptr %.0108.i, i64 -8
  %i.px = getelementptr inbounds i8, ptr %.0104107.i, i64 -12 ; 2 uses
  %i.py = getelementptr inbounds i8, ptr %.0108.i, i64 -12 ; 3 uses
  %i.pz = load <2 x float>, ptr %i.px, align 4    ; 3 uses
  %i.qa = load float, ptr %i.pw, align 4
  %i.qb = load <2 x float>, ptr %i.py, align 4
  %i.qc = fsub <2 x float> %i.pz, %i.qb           ; 2 uses
  %i.qd = extractelement <2 x float> %i.pz, i64 1
  %i.qe = fadd float %i.qd, %i.qa
  store float %i.qe, ptr %i.pv, align 4
  %i.qf = load float, ptr %i.py, align 4
  %i.qg = extractelement <2 x float> %i.pz, i64 0
  %i.qh = fadd float %i.qg, %i.qf
  store float %i.qh, ptr %i.px, align 4
  %i.qi = fmul <2 x float> %i.pc, %i.qc
  %i.qj = shufflevector <2 x float> %i.qi, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qc, <2 x float> %i.pa, <2 x float> %i.qj)
  store <2 x float> %i.qk, ptr %i.py, align 4
  %i.ql = getelementptr inbounds i8, ptr %.0104107.i, i64 -16
  %i.qm = getelementptr inbounds i8, ptr %.0108.i, i64 -16
  %i.qn = getelementptr inbounds i8, ptr %.0104107.i, i64 -20 ; 2 uses
  %i.qo = getelementptr inbounds i8, ptr %.0108.i, i64 -20 ; 3 uses
  %i.qp = load <2 x float>, ptr %i.qn, align 4    ; 3 uses
  %i.qq = load float, ptr %i.qm, align 4
  %i.qr = load <2 x float>, ptr %i.qo, align 4
  %i.qs = fsub <2 x float> %i.qp, %i.qr           ; 2 uses
  %i.qt = extractelement <2 x float> %i.qp, i64 1
  %i.qu = fadd float %i.qt, %i.qq
  store float %i.qu, ptr %i.ql, align 4
  %i.qv = load float, ptr %i.qo, align 4
  %i.qw = extractelement <2 x float> %i.qp, i64 0
  %i.qx = fadd float %i.qw, %i.qv
  store float %i.qx, ptr %i.qn, align 4
  %i.qy = fmul <2 x float> %i.oy, %i.qs
  %i.qz = shufflevector <2 x float> %i.qy, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ra = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qs, <2 x float> %i.ow, <2 x float> %i.qz)
  store <2 x float> %i.ra, ptr %i.qo, align 4
  %i.rb = getelementptr inbounds i8, ptr %.0104107.i, i64 -24
  %i.rc = getelementptr inbounds i8, ptr %.0108.i, i64 -24
  %i.rd = getelementptr inbounds i8, ptr %.0104107.i, i64 -28 ; 2 uses
  %i.re = getelementptr inbounds i8, ptr %.0108.i, i64 -28 ; 3 uses
  %i.rf = load <2 x float>, ptr %i.rd, align 4    ; 3 uses
  %i.rg = load float, ptr %i.rc, align 4
  %i.rh = load <2 x float>, ptr %i.re, align 4
  %i.ri = fsub <2 x float> %i.rf, %i.rh           ; 2 uses
  %i.rj = extractelement <2 x float> %i.rf, i64 1
  %i.rk = fadd float %i.rj, %i.rg
  store float %i.rk, ptr %i.rb, align 4
  %i.rl = load float, ptr %i.re, align 4
  %i.rm = extractelement <2 x float> %i.rf, i64 0
  %i.rn = fadd float %i.rm, %i.rl
  store float %i.rn, ptr %i.rd, align 4
  %i.ro = fmul <2 x float> %i.ou, %i.ri
  %i.rp = shufflevector <2 x float> %i.ro, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.rq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ri, <2 x float> %i.os, <2 x float> %i.rp)
  store <2 x float> %i.rq, ptr %i.re, align 4
  %i.rr = getelementptr inbounds [4 x i8], ptr %.0104107.i, i64 %i.nt
  %i.rs = getelementptr inbounds [4 x i8], ptr %.0108.i, i64 %i.nt
  %i.rt = add nsw i32 %.0105106.i, -1
  %i.ru = icmp samesign ugt i32 %.0105106.i, 1
  br i1 %i.ru, label %bb.s, label %imdct_step3_inner_s_loop.exit.loopexit

imdct_step3_inner_s_loop.exit.loopexit:           ; preds = %bb.s
  %i.rv = getelementptr inbounds [4 x i8], ptr %.0393457, i64 %i.nv
  %indvars.iv.next496 = add nsw i64 %indvars.iv495, -8
  %i.rw = add nsw i32 %.0395455, -1
  %i.rx = icmp sgt i32 %.0395455, 1
  br i1 %i.rx, label %.lr.ph.i421, label %.loopexit

._crit_edge462:                                   ; preds = %.loopexit, %.preheader
  %i.ry = sext i32 %i.hy to i64
  %i.rz = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ry ; 2 uses
  %i.sa = shl nsw i32 %i.ib, 4
  %4 = sext i32 %i.sa to i64
  %.neg.i = mul nsw i64 %4, -4
  %i.sb = getelementptr inbounds i8, ptr %i.rz, i64 %.neg.i
  %i.sc = icmp sgt i32 %i.ib, 0
  br i1 %i.sc, label %.lr.ph.i422, label %imdct_step3_inner_s_loop_ld654.exit

.lr.ph.i422:                                      ; preds = %._crit_edge462
  %i.sd = sext i32 %i.c to i64
  %i.se = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.sd
  %i.sf = load float, ptr %i.se, align 4          ; 2 uses
  %i.sg = fneg float %i.sf
  %i.sh = insertelement <2 x float> poison, float %i.sf, i64 0
  %i.si = shufflevector <2 x float> %i.sh, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.sj = insertelement <2 x float> %i.si, float %i.sg, i64 1
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph.i422
  %.075.i = phi ptr [ %i.rz, %.lr.ph.i422 ], [ %i.vo, %bb.t ] ; 13 uses
  %i.sk = getelementptr inbounds i8, ptr %.075.i, i64 -4
  %i.sl = getelementptr inbounds i8, ptr %.075.i, i64 -36
  %i.sm = getelementptr inbounds i8, ptr %.075.i, i64 -8
  %i.sn = getelementptr inbounds i8, ptr %.075.i, i64 -40
  %i.so = getelementptr inbounds i8, ptr %.075.i, i64 -12 ; 2 uses
  %i.sp = getelementptr inbounds i8, ptr %.075.i, i64 -44 ; 2 uses
  %i.sq = getelementptr inbounds i8, ptr %.075.i, i64 -20
  %i.sr = getelementptr inbounds i8, ptr %.075.i, i64 -52
  %i.ss = getelementptr inbounds i8, ptr %.075.i, i64 -24
  %i.st = getelementptr inbounds i8, ptr %.075.i, i64 -56
  %i.su = getelementptr inbounds i8, ptr %.075.i, i64 -28 ; 2 uses
  %i.sv = getelementptr inbounds i8, ptr %.075.i, i64 -60 ; 2 uses
  %i.sw = load <2 x float>, ptr %i.sk, align 4    ; 2 uses
  %i.sx = load <2 x float>, ptr %i.sl, align 4    ; 2 uses
  %i.sy = fsub <2 x float> %i.sw, %i.sx           ; 2 uses
  %i.sz = load <2 x float>, ptr %i.so, align 4    ; 2 uses
  %i.ta = load float, ptr %i.sm, align 4
  %i.tb = load <2 x float>, ptr %i.sp, align 4    ; 2 uses
  %i.tc = load float, ptr %i.sn, align 4
  %i.td = load <2 x float>, ptr %i.su, align 4    ; 2 uses
  %i.te = load float, ptr %i.ss, align 4
  %i.tf = load <2 x float>, ptr %i.sv, align 4    ; 2 uses
  %i.tg = load float, ptr %i.st, align 4
  %i.th = shufflevector <2 x float> %i.sz, <2 x float> %i.td, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ti = shufflevector <2 x float> %i.tb, <2 x float> %i.tf, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.tj = fsub <4 x float> %i.th, %i.ti           ; 4 uses
  %i.tk = shufflevector <4 x float> %i.tj, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.tl = shufflevector <4 x float> %i.tj, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.tm = fadd <2 x float> %i.tk, %i.tl
  %i.tn = fsub <2 x float> %i.tk, %i.tl
  %i.to = shufflevector <2 x float> %i.tm, <2 x float> %i.tn, <2 x i32> <i32 0, i32 3>
  %i.tp = fmul <2 x float> %i.si, %i.to           ; 2 uses
  %i.tq = load <2 x float>, ptr %i.sq, align 4    ; 2 uses
  %i.tr = load <2 x float>, ptr %i.sr, align 4    ; 2 uses
  %i.ts = fsub <2 x float> %i.tq, %i.tr
  %i.tt = shufflevector <2 x float> %i.ts, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.tu = shufflevector <4 x float> %i.tj, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.tv = shufflevector <4 x float> %i.tj, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.tw = fsub <2 x float> %i.tu, %i.tv
  %i.tx = fadd <2 x float> %i.tu, %i.tv
  %i.ty = shufflevector <2 x float> %i.tw, <2 x float> %i.tx, <2 x i32> <i32 0, i32 3>
  %i.tz = fmul <2 x float> %i.sj, %i.ty           ; 2 uses
  %i.ua = fadd <2 x float> %i.sw, %i.sx           ; 2 uses
  %i.ub = shufflevector <2 x float> %i.sz, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.uc = insertelement <2 x float> %i.ub, float %i.ta, i64 0
  %i.ud = shufflevector <2 x float> %i.tb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ue = insertelement <2 x float> %i.ud, float %i.tc, i64 0
  %i.uf = fadd <2 x float> %i.uc, %i.ue           ; 2 uses
  %i.ug = fadd <2 x float> %i.tq, %i.tr           ; 2 uses
  %i.uh = shufflevector <2 x float> %i.td, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ui = insertelement <2 x float> %i.uh, float %i.te, i64 0
  %i.uj = shufflevector <2 x float> %i.tf, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.uk = insertelement <2 x float> %i.uj, float %i.tg, i64 0
  %i.ul = fadd <2 x float> %i.ui, %i.uk           ; 2 uses
  %i.um = fsub <2 x float> %i.uf, %i.ul
  %i.un = shufflevector <2 x float> %i.um, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.uo = fsub <2 x float> %i.ua, %i.ug
  %i.up = shufflevector <2 x float> %i.uo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.uq = fadd <2 x float> %i.ua, %i.ug
  %i.ur = shufflevector <2 x float> %i.uq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.us = fadd <2 x float> %i.uf, %i.ul
  %i.ut = shufflevector <2 x float> %i.us, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.uu = fsub <4 x float> %i.ur, %i.ut
  %i.uv = fadd <4 x float> %i.ur, %i.ut
  %i.uw = shufflevector <4 x float> %i.uu, <4 x float> %i.uv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.uw, ptr %i.so, align 4
  %i.ux = fadd <4 x float> %i.up, %i.un
  %i.uy = fsub <4 x float> %i.up, %i.un
  %i.uz = shufflevector <4 x float> %i.ux, <4 x float> %i.uy, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x float> %i.uz, ptr %i.su, align 4
  %i.va = fsub <2 x float> %i.tp, %i.tz
  %i.vb = shufflevector <2 x float> %i.va, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.vc = fadd <2 x float> %i.sy, %i.tt           ; 2 uses
  %i.vd = fsub <2 x float> %i.sy, %i.tt           ; 2 uses
  %i.ve = shufflevector <2 x float> %i.vc, <2 x float> %i.vd, <4 x i32> <i32 0, i32 3, i32 0, i32 3> ; 2 uses
  %i.vf = shufflevector <2 x float> %i.vd, <2 x float> %i.vc, <4 x i32> <i32 0, i32 3, i32 0, i32 3> ; 2 uses
  %i.vg = fadd <2 x float> %i.tp, %i.tz
  %i.vh = shufflevector <2 x float> %i.vg, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.vi = fsub <4 x float> %i.vf, %i.vh
  %i.vj = fadd <4 x float> %i.vf, %i.vh
  %i.vk = shufflevector <4 x float> %i.vi, <4 x float> %i.vj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.vk, ptr %i.sp, align 4
  %i.vl = fadd <4 x float> %i.ve, %i.vb
  %i.vm = fsub <4 x float> %i.ve, %i.vb
  %i.vn = shufflevector <4 x float> %i.vl, <4 x float> %i.vm, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x float> %i.vn, ptr %i.sv, align 4
  %i.vo = getelementptr inbounds i8, ptr %.075.i, i64 -64 ; 2 uses
  %i.vp = icmp ugt ptr %i.vo, %i.sb
  br i1 %i.vp, label %bb.t, label %imdct_step3_inner_s_loop_ld654.exit

imdct_step3_inner_s_loop_ld654.exit:              ; preds = %bb.t, %._crit_edge462
  %i.vq = add nsw i32 %i.a, -4
  %i.vr = sext i32 %i.vq to i64                   ; 2 uses
  %.0391463 = getelementptr i8, ptr %i.dv, i64 -16 ; 2 uses
  %.not412464 = icmp ult ptr %.0391463, %i.t
  br i1 %.not412464, label %._crit_edge470, label %.lr.ph469.preheader

.lr.ph469.preheader:                              ; preds = %imdct_step3_inner_s_loop_ld654.exit
  %i.vs = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.vr
  %i.vt = getelementptr inbounds nuw i8, ptr %2, i64 1480
  %i.vu = getelementptr inbounds nuw [8 x i8], ptr %i.vt, i64 %i.v
  %i.vv = load ptr, ptr %i.vu, align 8
  br label %.lr.ph469

.lr.ph469:                                        ; preds = %.lr.ph469.preheader, %.lr.ph469
  %.0391468 = phi ptr [ %.0391, %.lr.ph469 ], [ %.0391463, %.lr.ph469.preheader ] ; 3 uses
  %.0390467 = phi ptr [ %i.wx, %.lr.ph469 ], [ %i.vs, %.lr.ph469.preheader ] ; 5 uses
  %.pn417466 = phi ptr [ %.0391468, %.lr.ph469 ], [ %i.dv, %.lr.ph469.preheader ] ; 3 uses
  %.0392465 = phi ptr [ %i.wy, %.lr.ph469 ], [ %i.vv, %.lr.ph469.preheader ] ; 3 uses
  %i.vw = load i16, ptr %.0392465, align 2
  %i.vx = zext i16 %i.vw to i64
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.vx ; 4 uses
  %i.vz = load float, ptr %i.vy, align 4
  %i.wa = getelementptr inbounds nuw i8, ptr %.0390467, i64 12
  store float %i.vz, ptr %i.wa, align 4
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vy, i64 4
  %i.wc = load float, ptr %i.wb, align 4
  %i.wd = getelementptr inbounds nuw i8, ptr %.0390467, i64 8
  store float %i.wc, ptr %i.wd, align 4
  %i.we = getelementptr inbounds nuw i8, ptr %i.vy, i64 8
  %i.wf = load float, ptr %i.we, align 4
  %i.wg = getelementptr i8, ptr %.pn417466, i64 -4
  store float %i.wf, ptr %i.wg, align 4
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vy, i64 12
  %i.wi = load float, ptr %i.wh, align 4
  %i.wj = getelementptr i8, ptr %.pn417466, i64 -8
  store float %i.wi, ptr %i.wj, align 4
  %i.wk = getelementptr inbounds nuw i8, ptr %.0392465, i64 2
  %i.wl = load i16, ptr %i.wk, align 2
  %i.wm = zext i16 %i.wl to i64
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.wm ; 4 uses
  %i.wo = load float, ptr %i.wn, align 4
  %i.wp = getelementptr inbounds nuw i8, ptr %.0390467, i64 4
  store float %i.wo, ptr %i.wp, align 4
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wn, i64 4
  %i.wr = load float, ptr %i.wq, align 4
  store float %i.wr, ptr %.0390467, align 4
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wn, i64 8
  %i.wt = load float, ptr %i.ws, align 4
  %i.wu = getelementptr i8, ptr %.pn417466, i64 -12
  store float %i.wt, ptr %i.wu, align 4
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wn, i64 12
  %i.ww = load float, ptr %i.wv, align 4
  store float %i.ww, ptr %.0391468, align 4
  %i.wx = getelementptr inbounds i8, ptr %.0390467, i64 -16
  %i.wy = getelementptr inbounds nuw i8, ptr %.0392465, i64 4
  %.0391 = getelementptr i8, ptr %.0391468, i64 -16 ; 2 uses
  %.not412 = icmp ult ptr %.0391, %i.t
  br i1 %.not412, label %._crit_edge470, label %.lr.ph469

._crit_edge470:                                   ; preds = %.lr.ph469, %imdct_step3_inner_s_loop_ld654.exit
  %.0385471 = getelementptr inbounds i8, ptr %i.z, i64 -16 ; 2 uses
  %i.wz = icmp ult ptr %i.t, %.0385471
  br i1 %i.wz, label %.lr.ph477.preheader, label %._crit_edge478

.lr.ph477.preheader:                              ; preds = %._crit_edge470
  %i.xa = getelementptr inbounds nuw i8, ptr %2, i64 1448
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr %i.xa, i64 %i.v
  %i.xc = load ptr, ptr %i.xb, align 8
  br label %.lr.ph477

.lr.ph477:                                        ; preds = %.lr.ph477.preheader, %.lr.ph477
  %.0385475 = phi ptr [ %.0385, %.lr.ph477 ], [ %.0385471, %.lr.ph477.preheader ] ; 4 uses
  %.pn416474 = phi ptr [ %.0385475, %.lr.ph477 ], [ %i.z, %.lr.ph477.preheader ] ; 2 uses
  %.0386473 = phi ptr [ %i.yp, %.lr.ph477 ], [ %i.t, %.lr.ph477.preheader ] ; 4 uses
  %.0387472 = phi ptr [ %i.yo, %.lr.ph477 ], [ %i.xc, %.lr.ph477.preheader ] ; 3 uses
  %i.xd = getelementptr inbounds i8, ptr %.pn416474, i64 -8 ; 2 uses
  %i.xe = load <2 x float>, ptr %.0386473, align 4 ; 2 uses
  %i.xf = load <2 x float>, ptr %i.xd, align 4    ; 2 uses
  %i.xg = fsub <2 x float> %i.xe, %i.xf           ; 2 uses
  %i.xh = fadd <2 x float> %i.xe, %i.xf           ; 3 uses
  %i.xi = shufflevector <2 x float> %i.xg, <2 x float> %i.xh, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.xj = load <2 x float>, ptr %.0387472, align 4 ; 2 uses
  %i.xk = fneg <2 x float> %i.xi
  %i.xl = shufflevector <2 x float> %i.xh, <2 x float> %i.xk, <2 x i32> <i32 1, i32 2>
  %i.xm = shufflevector <2 x float> %i.xj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xn = fmul <2 x float> %i.xl, %i.xm
  %i.xo = shufflevector <2 x float> %i.xj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.xp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xo, <2 x float> %i.xi, <2 x float> %i.xn) ; 3 uses
  %i.xq = shufflevector <2 x float> %i.xh, <2 x float> %i.xg, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.xr = fadd <2 x float> %i.xq, %i.xp
  store <2 x float> %i.xr, ptr %.0386473, align 4
  %i.xs = shufflevector <2 x float> %i.xq, <2 x float> %i.xp, <2 x i32> <i32 0, i32 3>
end_hunk_0
