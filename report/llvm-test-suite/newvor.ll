Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/newvor?download=true
inline.NumInlined: 47
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@do_merge:bb.a
.loopexit145:                                     ; preds = %bb.i, %bb.h
  %.2115 = phi ptr [ %.0113, %bb.h ], [ %.1114, %bb.i ] ; 4 uses
  %i.ha = ptrtoint ptr %.0111 to i64              ; 4 uses
  %i.hb = add i64 %i.ha, 32
  %i.hc = and i64 %i.hb, 127
  %i.hd = and i64 %i.ha, -128
  %i.he = or disjoint i64 %i.hc, %i.hd
  %i.hf = inttoptr i64 %i.he to ptr
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !16
  %i.hi = ptrtoint ptr %i.hh to i64               ; 2 uses
  %i.hj = add i64 %i.hi, 32
  %i.hk = and i64 %i.hj, 127
  %i.hl = and i64 %i.hi, -128
  %i.hm = or disjoint i64 %i.hk, %i.hl            ; 2 uses
  %i.hn = xor i64 %i.hm, 64
  %i.ho = inttoptr i64 %i.hn to ptr
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !15
  %i.hq = load <2 x double>, ptr %i.hp, align 8, !tbaa !27
  %i.hr = fsub <2 x double> %i.hq, %i.ch          ; 2 uses
  %i.hs = extractelement <2 x double> %i.hr, i64 0
  %i.ht = fmul double %i.hs, %i.cm
  %i.hu = extractelement <2 x double> %i.hr, i64 1
  %i.hv = tail call double @llvm.fmuladd.f64(double %i.ci, double %i.hu, double %i.ht)
  %i.hw = fcmp ule double %i.hv, 0.000000e+00
  br i1 %i.hw, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit145
  %i.hx = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !28 ; 3 uses
  %avail_edge.promoted149 = load ptr, ptr @avail_edge, align 8
  %i.hz = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ia = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.k

bb.k:                                             ; preds = %.preheader, %bb.l
  %i.ib = phi ptr [ %i.mf, %bb.l ], [ %avail_edge.promoted149, %.preheader ]
  %.1112 = phi ptr [ %.1110, %bb.l ], [ %.0111, %.preheader ] ; 5 uses
  %.1104.in.in.in = phi i64 [ %i.ms, %bb.l ], [ %i.hm, %.preheader ] ; 5 uses
  %.1102.in.in.in = phi i64 [ %.1104.in.in.in, %bb.l ], [ %i.ha, %.preheader ]
  %.1 = load ptr, ptr %.1112, align 8, !tbaa !15  ; 2 uses
  %.1102.in.in = xor i64 %.1102.in.in.in, 64
  %.1102.in = inttoptr i64 %.1102.in.in to ptr
  %.1102 = load ptr, ptr %.1102.in, align 8, !tbaa !15 ; 2 uses
  %.1104.in.in = xor i64 %.1104.in.in.in, 64
  %.1104.in = inttoptr i64 %.1104.in.in to ptr
  %.1104 = load ptr, ptr %.1104.in, align 8, !tbaa !15 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.1104, i64 16
  %i.id = load double, ptr %i.ic, align 8, !tbaa !28
  %i.ie = getelementptr inbounds nuw i8, ptr %.1102, i64 16
  %i.if = load double, ptr %i.ie, align 8, !tbaa !28
  %i.ig = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !28
  %i.ii = fsub double %i.id, %i.hy
  %i.ij = fsub double %i.if, %i.hy
  %i.ik = load <2 x double>, ptr %.1104, align 8, !tbaa !27 ; 2 uses
  %i.il = load <2 x double>, ptr %.1102, align 8, !tbaa !27 ; 2 uses
  %i.im = shufflevector <2 x double> %i.il, <2 x double> %i.ik, <2 x i32> <i32 0, i32 3>
  %i.in = fsub <2 x double> %i.im, %i.ch          ; 3 uses
  %i.io = load <2 x double>, ptr %.1, align 8, !tbaa !27 ; 3 uses
  %i.ip = shufflevector <2 x double> %i.io, <2 x double> %i.ik, <2 x i32> <i32 0, i32 2>
  %i.iq = fsub <2 x double> %i.ip, %i.ia          ; 2 uses
  %i.ir = fsub <2 x double> %i.io, %i.ch
  %i.is = shufflevector <2 x double> %i.ir, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.it = shufflevector <2 x double> %i.il, <2 x double> %i.io, <2 x i32> <i32 1, i32 3>
  %i.iu = fsub <2 x double> %i.it, %i.hz          ; 2 uses
  %i.iv = fneg <2 x double> %i.iq
  %i.iw = fmul <2 x double> %i.iu, %i.iv
  %i.ix = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.is, <2 x double> %i.in, <2 x double> %i.iw) ; 2 uses
  %i.iy = fsub double %i.ih, %i.hy
  %i.iz = insertelement <2 x double> poison, double %i.ii, i64 0
  %i.ja = fneg <2 x double> %i.in
  %i.jb = shufflevector <2 x double> %i.iz, <2 x double> %i.ja, <2 x i32> <i32 0, i32 2>
  %i.jc = shufflevector <2 x double> %i.ix, <2 x double> %i.in, <2 x i32> <i32 0, i32 3>
  %i.jd = fmul <2 x double> %i.jb, %i.jc
  %i.je = insertelement <2 x double> %i.iq, double %i.ij, i64 0
  %i.jf = shufflevector <2 x double> %i.ix, <2 x double> %i.iu, <2 x i32> <i32 1, i32 2>
  %i.jg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.je, <2 x double> %i.jf, <2 x double> %i.jd) ; 2 uses
  %i.jh = extractelement <2 x double> %i.jg, i64 0
  %i.ji = extractelement <2 x double> %i.jg, i64 1
  %i.jj = tail call double @llvm.fmuladd.f64(double %i.iy, double %i.ji, double %i.jh)
  %i.jk = fcmp ule double %i.jj, 0.000000e+00
  br i1 %i.jk, label %.loopexit.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.1110 = inttoptr i64 %.1104.in.in.in to ptr
  %i.jl = ptrtoint ptr %.1112 to i64              ; 3 uses
  %i.jm = add i64 %i.jl, 32
  %i.jn = and i64 %i.jm, 127
  %i.jo = and i64 %i.jl, -128                     ; 3 uses
  %i.jp = or disjoint i64 %i.jn, %i.jo
  %i.jq = inttoptr i64 %i.jp to ptr
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !16
  %i.jt = ptrtoint ptr %i.js to i64               ; 2 uses
  %i.ju = add i64 %i.jt, 32
  %i.jv = and i64 %i.ju, 127
  %i.jw = and i64 %i.jt, -128
  %i.jx = or disjoint i64 %i.jv, %i.jw
  %i.jy = inttoptr i64 %i.jx to ptr
  %i.jz = getelementptr inbounds nuw i8, ptr %.1112, i64 8 ; 3 uses
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !16
  %i.kb = ptrtoint ptr %i.ka to i64               ; 2 uses
  %i.kc = add i64 %i.kb, 32
  %i.kd = and i64 %i.kc, 127
  %i.ke = and i64 %i.kb, -128
  %i.kf = or disjoint i64 %i.kd, %i.ke
  %i.kg = inttoptr i64 %i.kf to ptr
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jy, i64 8 ; 3 uses
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !16
  %i.kj = ptrtoint ptr %i.ki to i64               ; 2 uses
  %i.kk = add i64 %i.kj, 32
  %i.kl = and i64 %i.kk, 127
  %i.km = and i64 %i.kj, -128
  %i.kn = or disjoint i64 %i.kl, %i.km
  %i.ko = inttoptr i64 %i.kn to ptr
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8 ; 2 uses
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !16
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kg, i64 8 ; 2 uses
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !16
  store ptr %i.kq, ptr %i.kr, align 8, !tbaa !16
  store ptr %i.ks, ptr %i.kp, align 8, !tbaa !16
  %i.kt = load ptr, ptr %i.jz, align 8, !tbaa !16
  %i.ku = load ptr, ptr %i.kh, align 8, !tbaa !16
  store ptr %i.kt, ptr %i.kh, align 8, !tbaa !16
  store ptr %i.ku, ptr %i.jz, align 8, !tbaa !16
  %i.kv = xor i64 %i.jl, 64                       ; 2 uses
  %i.kw = inttoptr i64 %i.kv to ptr
  %i.kx = add i64 %i.kv, 32
  %i.ky = and i64 %i.kx, 127
  %i.kz = or disjoint i64 %i.ky, %i.jo
  %i.la = inttoptr i64 %i.kz to ptr
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !16
  %i.ld = ptrtoint ptr %i.lc to i64               ; 2 uses
  %i.le = add i64 %i.ld, 32
  %i.lf = and i64 %i.le, 127
  %i.lg = and i64 %i.ld, -128
  %i.lh = or disjoint i64 %i.lf, %i.lg
  %i.li = inttoptr i64 %i.lh to ptr
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kw, i64 8 ; 3 uses
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !16
  %i.ll = ptrtoint ptr %i.lk to i64               ; 2 uses
  %i.lm = add i64 %i.ll, 32
  %i.ln = and i64 %i.lm, 127
  %i.lo = and i64 %i.ll, -128
  %i.lp = or disjoint i64 %i.ln, %i.lo
  %i.lq = inttoptr i64 %i.lp to ptr
  %i.lr = getelementptr inbounds nuw i8, ptr %i.li, i64 8 ; 3 uses
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !16
  %i.lt = ptrtoint ptr %i.ls to i64               ; 2 uses
  %i.lu = add i64 %i.lt, 32
  %i.lv = and i64 %i.lu, 127
  %i.lw = and i64 %i.lt, -128
  %i.lx = or disjoint i64 %i.lv, %i.lw
  %i.ly = inttoptr i64 %i.lx to ptr
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8 ; 2 uses
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !16
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lq, i64 8 ; 2 uses
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !16
  store ptr %i.ma, ptr %i.mb, align 8, !tbaa !16
  store ptr %i.mc, ptr %i.lz, align 8, !tbaa !16
  %i.md = load ptr, ptr %i.lj, align 8, !tbaa !16
  %i.me = load ptr, ptr %i.lr, align 8, !tbaa !16
  store ptr %i.md, ptr %i.lr, align 8, !tbaa !16
  store ptr %i.me, ptr %i.lj, align 8, !tbaa !16
  %i.mf = inttoptr i64 %i.jo to ptr               ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  store ptr %i.ib, ptr %i.mg, align 8, !tbaa !16
  store ptr %i.mf, ptr @avail_edge, align 8, !tbaa !17
  %i.mh = add i64 %.1104.in.in.in, 32
  %i.mi = and i64 %i.mh, 127
  %i.mj = and i64 %.1104.in.in.in, -128
  %i.mk = or disjoint i64 %i.mi, %i.mj
  %i.ml = inttoptr i64 %i.mk to ptr
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !16
  %i.mo = ptrtoint ptr %i.mn to i64               ; 2 uses
  %i.mp = add i64 %i.mo, 32
  %i.mq = and i64 %i.mp, 127
  %i.mr = and i64 %i.mo, -128
  %i.ms = or disjoint i64 %i.mq, %i.mr
  br label %bb.k, !llvm.loop !39

.loopexit.loopexit:                               ; preds = %bb.k
  %.pre151 = ptrtoint ptr %.1112 to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit145
  %.pre-phi = phi i64 [ %.pre151, %.loopexit.loopexit ], [ %i.ha, %.loopexit145 ]
  %.2 = phi ptr [ %.1112, %.loopexit.loopexit ], [ %.0111, %.loopexit145 ] ; 3 uses
  %i.mt = ptrtoint ptr %.2115 to i64
  %i.mu = xor i64 %i.mt, 64
  %i.mv = inttoptr i64 %i.mu to ptr
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !15 ; 2 uses
  %i.mx = xor i64 %.pre-phi, 64
  %i.my = inttoptr i64 %i.mx to ptr
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !15 ; 2 uses
  %i.na = load <2 x double>, ptr %i.mz, align 8, !tbaa !27 ; 6 uses
  %i.nb = load <2 x double>, ptr %i.mw, align 8, !tbaa !27 ; 4 uses
  %4 = shufflevector <2 x double> %i.na, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %5 = shufflevector <2 x double> %i.na, <2 x double> %i.nb, <2 x i32> <i32 1, i32 3>
  %i.nc = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.nd = fsub <2 x double> %5, %i.nc
  %i.ne = shufflevector <2 x double> %i.na, <2 x double> %i.nb, <2 x i32> <i32 0, i32 2>
  %i.nf = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ng = fsub <2 x double> %i.ne, %i.nf
  %i.nh = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.ni = shufflevector <2 x double> %i.nh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nj = fmul <2 x double> %i.ng, %i.ni
  %i.nk = shufflevector <2 x double> %foldExtExtBinop, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nk, <2 x double> %i.nd, <2 x double> %i.nj)
  %i.nm = fcmp ogt <2 x double> %i.nl, zeroinitializer ; 2 uses
  %i.nn = extractelement <2 x i1> %i.nm, i64 0    ; 2 uses
  %i.no = extractelement <2 x i1> %i.nm, i64 1    ; 2 uses
  %or.cond = select i1 %i.no, i1 true, i1 %i.nn
  br i1 %or.cond, label %bb.m, label %bb.s

bb.m:                                             ; preds = %.loopexit
  %i.np = load ptr, ptr %.2115, align 8, !tbaa !15 ; 2 uses
  %i.nq = load ptr, ptr %.2, align 8, !tbaa !15   ; 2 uses
  br i1 %i.no, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  br i1 %i.nn, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.nr = getelementptr inbounds nuw i8, ptr %i.mz, i64 16
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !28 ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  %i.nu = load double, ptr %i.nt, align 8, !tbaa !28
  %i.nv = getelementptr inbounds nuw i8, ptr %i.np, i64 8
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nq, i64 16
  %i.nx = load double, ptr %i.nw, align 8, !tbaa !28
  %i.ny = fsub double %i.nu, %i.ns
  %i.nz = load <2 x double>, ptr %i.np, align 8, !tbaa !27
  %i.oa = shufflevector <2 x double> %i.nz, <2 x double> %i.nb, <2 x i32> <i32 0, i32 3>
  %i.ob = fsub <2 x double> %i.oa, %i.na          ; 3 uses
  %i.oc = load <2 x double>, ptr %i.nq, align 8, !tbaa !27
  %foldExtExtBinop159 = fsub <2 x double> %i.nb, %i.na ; 2 uses
  %i.od = fsub <2 x double> %i.oc, %i.na          ; 3 uses
  %i.oe = shufflevector <2 x double> %i.od, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.of = shufflevector <2 x double> %i.od, <2 x double> %foldExtExtBinop159, <2 x i32> <i32 0, i32 2>
  %i.og = fneg <2 x double> %i.of
  %i.oh = fsub double %i.nx, %i.ns
  %i.oi = extractelement <2 x double> %i.ob, i64 0
  %i.oj = fneg double %i.oi
  %i.ok = load <2 x double>, ptr %i.nv, align 8, !tbaa !27
  %i.ol = insertelement <2 x double> %4, double %i.ns, i64 1
  %i.om = fsub <2 x double> %i.ok, %i.ol          ; 2 uses
  %i.on = shufflevector <2 x double> %i.om, <2 x double> %i.od, <2 x i32> <i32 0, i32 3>
  %i.oo = fmul <2 x double> %i.on, %i.og
  %i.op = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oe, <2 x double> %i.ob, <2 x double> %i.oo) ; 2 uses
  %i.oq = insertelement <2 x double> poison, double %i.oj, i64 0
  %i.or = insertelement <2 x double> %i.oq, double %i.ny, i64 1
  %i.os = shufflevector <2 x double> %i.ob, <2 x double> %i.op, <2 x i32> <i32 1, i32 2>
  %i.ot = fmul <2 x double> %i.or, %i.os
  %i.ou = shufflevector <2 x double> %foldExtExtBinop159, <2 x double> %i.op, <2 x i32> <i32 0, i32 3>
  %i.ov = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.om, <2 x double> %i.ou, <2 x double> %i.ot) ; 2 uses
  %i.ow = extractelement <2 x double> %i.ov, i64 0
  %i.ox = extractelement <2 x double> %i.ov, i64 1
  %i.oy = tail call double @llvm.fmuladd.f64(double %i.oh, double %i.ow, double %i.ox)
  %i.oz = fcmp ule double %i.oy, 0.000000e+00
  br i1 %i.oz, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %i.pa = tail call ptr @connect_left(ptr noundef nonnull %.2, ptr noundef nonnull %i.ca) ; 2 uses
  %i.pb = ptrtoint ptr %i.pa to i64               ; 2 uses
  %i.pc = xor i64 %i.pb, 64
  %i.pd = add i64 %i.pc, 96
  %i.pe = and i64 %i.pd, 127
  %i.pf = and i64 %i.pb, -128
  %i.pg = or disjoint i64 %i.pe, %i.pf
  %i.ph = inttoptr i64 %i.pg to ptr
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !16
  %i.pk = ptrtoint ptr %i.pj to i64               ; 2 uses
  %i.pl = add i64 %i.pk, 32
  %i.pm = and i64 %i.pl, 127
  %i.pn = and i64 %i.pk, -128
  %i.po = or disjoint i64 %i.pm, %i.pn
  %i.pp = inttoptr i64 %i.po to ptr
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.pq = tail call ptr @connect_right(ptr noundef nonnull %.2115, ptr noundef nonnull %.0118) ; 2 uses
  %i.pr = ptrtoint ptr %i.pq to i64
  %i.ps = xor i64 %i.pr, 64
  %i.pt = inttoptr i64 %i.ps to ptr
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !16
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.2120 = phi ptr [ %i.pt, %bb.q ], [ %i.pa, %bb.p ] ; 2 uses
  %.4117 = phi ptr [ %i.pv, %bb.q ], [ %.2115, %bb.p ]
  %.4 = phi ptr [ %.2, %bb.q ], [ %i.pp, %bb.p ]
  %.pre = load ptr, ptr %.2120, align 8, !tbaa !15
  br label %bb.h

bb.s:                                             ; preds = %.loopexit
  %i.pw = icmp eq ptr %i.bs, %i.bu
  %.0126 = select i1 %i.pw, ptr %i.bb, ptr %0
  %i.px = icmp eq ptr %i.br, %i.bt
  %spec.select = select i1 %i.px, ptr %i.ay, ptr %3
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.0126, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %spec.select, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @ccw(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !26
  %i.d = load double, ptr %1, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !26
  %i.g = load double, ptr %2, align 8, !tbaa !25  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load double, ptr %i.h, align 8, !tbaa !26 ; 2 uses
  %i.j = fsub double %i.a, %i.g
  %i.k = fsub double %i.f, %i.i
  %i.l = fsub double %i.d, %i.g
  %i.m = fsub double %i.c, %i.i
  %i.n = fneg double %i.m
  %i.o = fmul double %i.l, %i.n
  %i.p = tail call double @llvm.fmuladd.f64(double %i.j, double %i.k, double %i.o)
  %i.q = fcmp ogt double %i.p, 0.000000e+00
  %i.r = zext i1 %i.q to i32
  ret i32 %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @delete_all_edges() local_unnamed_addr #8 {
bb.a:
  store ptr null, ptr @next_edge, align 8, !tbaa !17
  store ptr null, ptr @avail_edge, align 8, !tbaa !17
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @myalign(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %0 to i64                       ; 2 uses
  %i.b = sext i32 %1 to i64
  %i.c = tail call noalias ptr @memalign(i64 noundef %i.a, i64 noundef %i.b) #25 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.c, i64 %i.a) ]
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  tail call void @exit(i32 noundef -1) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized,aligned") allocsize(1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @memalign(i64 allocalign noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @alloc_edge() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @avail_edge, align 8, !tbaa !17 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias align 128 dereferenceable_or_null(128) ptr @memalign(i64 noundef 128, i64 noundef 128) #25 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %myalign.exit

bb.c:                                             ; preds = %bb.b
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  tail call void @exit(i32 noundef -1) #26
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16
  store ptr %i.f, ptr @avail_edge, align 8, !tbaa !17
  br label %myalign.exit

myalign.exit:                                     ; preds = %bb.b, %bb.d
  %.0 = phi ptr [ %i.a, %bb.d ], [ %i.c, %bb.b ]  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0, i64 16
  store i64 0, ptr %i.g, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.0, i64 48
  store i64 0, ptr %i.h, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %.0, i64 80
  store i64 0, ptr %i.i, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.0, i64 112
  store i64 0, ptr %i.j, align 8, !tbaa !18
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @incircle(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !28 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load double, ptr %i.g, align 8, !tbaa !28
  %i.i = fsub double %i.d, %i.b
  %i.j = fsub double %i.f, %i.b
  %i.k = load <2 x double>, ptr %3, align 8, !tbaa !27 ; 4 uses
  %i.l = load <2 x double>, ptr %0, align 8, !tbaa !27 ; 2 uses
  %i.m = load <2 x double>, ptr %1, align 8, !tbaa !27 ; 2 uses
  %i.n = shufflevector <2 x double> %i.m, <2 x double> %i.l, <2 x i32> <i32 0, i32 3>
  %i.o = fsub <2 x double> %i.n, %i.k             ; 3 uses
  %i.p = load <2 x double>, ptr %2, align 8, !tbaa !27 ; 3 uses
  %i.q = shufflevector <2 x double> %i.p, <2 x double> %i.l, <2 x i32> <i32 0, i32 2>
  %i.r = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = fsub <2 x double> %i.q, %i.r             ; 2 uses
  %i.t = fsub <2 x double> %i.p, %i.k
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.v = shufflevector <2 x double> %i.m, <2 x double> %i.p, <2 x i32> <i32 1, i32 3>
  %i.w = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.x = fsub <2 x double> %i.v, %i.w             ; 2 uses
  %i.y = fneg <2 x double> %i.s
  %i.z = fmul <2 x double> %i.x, %i.y
  %i.aa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.o, <2 x double> %i.z) ; 2 uses
  %i.ab = fsub double %i.h, %i.b
  %i.ac = insertelement <2 x double> poison, double %i.i, i64 0
  %i.ad = fneg <2 x double> %i.o
  %i.ae = shufflevector <2 x double> %i.ac, <2 x double> %i.ad, <2 x i32> <i32 0, i32 2>
  %i.af = shufflevector <2 x double> %i.aa, <2 x double> %i.o, <2 x i32> <i32 0, i32 3>
  %i.ag = fmul <2 x double> %i.ae, %i.af
  %i.ah = insertelement <2 x double> %i.s, double %i.j, i64 0
  %i.ai = shufflevector <2 x double> %i.aa, <2 x double> %i.x, <2 x i32> <i32 1, i32 2>
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ah, <2 x double> %i.ai, <2 x double> %i.ag) ; 2 uses
  %i.ak = extractelement <2 x double> %i.aj, i64 0
end_hunk_0
