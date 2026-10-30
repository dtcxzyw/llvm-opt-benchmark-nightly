Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/triangle?download=true
inline.NumInlined: 349
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZL8incircleP4meshP8behaviorPdS3_S3_S3_:bb.a
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 32
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !23
  %i.ll = fadd double %i.lh, %i.lk
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 40
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !23
  %i.lp = fadd double %i.ll, %i.lo
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 48
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !23
  %i.lt = fadd double %i.lp, %i.ls
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 56
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !23
  %i.lx = fadd double %i.lt, %i.lw                ; 3 uses
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZL8estimateiPd.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !6

_ZL8estimateiPd.exit.i.loopexit.unr-lcssa:        ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL8estimateiPd.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZL8estimateiPd.exit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.7, %_ZL8estimateiPd.exit.i.loopexit.unr-lcssa ]
  %.078.i.i.epil.init = phi double [ %i.ko, %.lr.ph.preheader.i.i ], [ %i.lx, %_ZL8estimateiPd.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod75 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod75)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil ] ; 2 uses
  %.078.i.i.epil = phi double [ %.078.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %i.ma, %.lr.ph.i.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.epil
  %i.lz = load double, ptr %i.ly, align 8, !tbaa !23
  %i.ma = fadd double %.078.i.i.epil, %i.lz       ; 2 uses
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL8estimateiPd.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !216

_ZL8estimateiPd.exit.i:                           ; preds = %_ZL8estimateiPd.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.c
  %.07.lcssa.i.i = phi double [ %i.ko, %bb.c ], [ %i.lx, %_ZL8estimateiPd.exit.i.loopexit.unr-lcssa ], [ %i.ma, %.lr.ph.i.i.epil ] ; 8 uses
  %i.mb = load double, ptr @_ZL12iccerrboundB, align 8, !tbaa !23
  %i.mc = fmul double %i.dx, %i.mb                ; 2 uses
  %i.md = fcmp ult double %.07.lcssa.i.i, %i.mc
  br i1 %i.md, label %bb.d, label %_ZL13incircleadaptPdS_S_S_d.exit

bb.d:                                             ; preds = %_ZL8estimateiPd.exit.i
  %i.me = fneg double %.07.lcssa.i.i              ; 2 uses
  %i.mf = fcmp ugt double %i.mc, %i.me
  br i1 %i.mf, label %bb.e, label %_ZL13incircleadaptPdS_S_S_d.exit

bb.e:                                             ; preds = %bb.d
  %i.mg = fsub double %.0.val, %i.eq              ; 2 uses
  %i.mh = insertelement <2 x double> poison, double %.8.val7, i64 0
  %i.mi = insertelement <2 x double> %i.mh, double %.8.val, i64 1 ; 2 uses
  %i.mj = shufflevector <2 x double> %i.cs, <2 x double> %i.ch, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.mk = fsub <2 x double> %i.mi, %i.mj          ; 2 uses
  %i.ml = fsub <2 x double> %i.cb, %i.cc          ; 2 uses
  %i.mm = fsub double %.8.val3, %i.ei             ; 2 uses
  %i.mn = fadd double %i.eq, %i.mg
  %i.mo = fsub double %i.mg, %.0.val9
  %i.mp = fsub double %.0.val, %i.mn
  %i.mq = fadd double %i.mo, %i.mp                ; 15 uses
  %i.mr = fadd double %i.ei, %i.mm
  %i.ms = fsub double %i.mm, %.8.val11
  %i.mt = fsub double %.8.val3, %i.mr
  %i.mu = fadd double %i.ms, %i.mt                ; 19 uses
  %i.mv = fadd <2 x double> %i.cc, %i.ml
  %i.mw = fsub <2 x double> %i.ml, %i.by
  %i.mx = fsub <2 x double> %i.cb, %i.mv
  %i.my = fadd <2 x double> %i.mw, %i.mx          ; 12 uses
  %i.mz = fadd <2 x double> %i.mj, %i.mk
  %i.na = fsub <2 x double> %i.mk, %i.cg
  %i.nb = fsub <2 x double> %i.mi, %i.mz
  %i.nc = fadd <2 x double> %i.na, %i.nb          ; 15 uses
  %i.nd = fcmp oeq double %i.mq, 0.000000e+00     ; 4 uses
  %i.ne = extractelement <2 x double> %i.my, i64 0 ; 11 uses
  %i.nf = fcmp oeq double %i.ne, 0.000000e+00     ; 4 uses
  %or.cond.i = select i1 %i.nd, i1 %i.nf, i1 false
  %i.ng = extractelement <2 x double> %i.my, i64 1 ; 11 uses
  %i.nh = fcmp oeq double %i.ng, 0.000000e+00     ; 4 uses
  %or.cond3.i = select i1 %or.cond.i, i1 %i.nh, i1 false
  %i.ni = extractelement <2 x double> %i.nc, i64 1 ; 12 uses
  %i.nj = fcmp oeq double %i.ni, 0.000000e+00     ; 6 uses
  %or.cond5.i = select i1 %or.cond3.i, i1 %i.nj, i1 false
  %i.nk = fcmp oeq double %i.mu, 0.000000e+00     ; 6 uses
  %or.cond7.i = select i1 %or.cond5.i, i1 %i.nk, i1 false
  %i.nl = extractelement <2 x double> %i.nc, i64 0 ; 12 uses
  %i.nm = fcmp oeq double %i.nl, 0.000000e+00     ; 6 uses
  %or.cond9.i = select i1 %or.cond7.i, i1 %i.nm, i1 false
  br i1 %or.cond9.i, label %_ZL13incircleadaptPdS_S_S_d.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.nn = load double, ptr @_ZL12iccerrboundC, align 8, !tbaa !23
  %i.no = load double, ptr @_ZL14resulterrbound, align 8, !tbaa !23
  %i.np = fcmp oge double %.07.lcssa.i.i, 0.000000e+00
  %i.nq = select i1 %i.np, double %.07.lcssa.i.i, double %i.me
  %i.nr = fmul <2 x double> %i.mj, %i.my          ; 5 uses
  %i.ns = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> %i.mj, <2 x double> %i.dj)
  %i.nt = insertelement <2 x double> %i.cc, double %i.nq, i64 0
  %i.nu = insertelement <2 x double> poison, double %i.no, i64 0
  %i.nv = insertelement <2 x double> %i.nu, double %i.mu, i64 1
  %i.nw = fmul <2 x double> %i.nt, %i.nv
  %i.nx = insertelement <2 x double> %i.ch, double %i.nn, i64 0
  %i.ny = insertelement <2 x double> %i.my, double %i.dx, i64 0
  %i.nz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nx, <2 x double> %i.ny, <2 x double> %i.nw) ; 2 uses
  %i.oa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> %i.nc, <2 x double> %i.nr)
  %i.ob = shufflevector <2 x double> %i.nc, <2 x double> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %i.oc = insertelement <2 x double> %i.ob, double %i.mu, i64 1
  %i.od = fmul <2 x double> %i.ch, %i.oc
  %i.oe = shufflevector <2 x double> %i.my, <2 x double> poison, <2 x i32> <i32 poison, i32 0> ; 2 uses
  %i.of = insertelement <2 x double> %i.oe, double %i.mq, i64 0 ; 5 uses
  %i.og = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.of, <2 x double> %i.od)
  %i.oh = fmul <2 x double> %i.og, splat (double 2.000000e+00)
  %i.oi = fmul <2 x double> %i.ns, %i.oh
  %i.oj = shufflevector <2 x double> %i.ch, <2 x double> %i.bz, <2 x i32> <i32 1, i32 3>
  %i.ok = insertelement <2 x double> %i.nc, double %i.mq, i64 0
  %i.ol = fmul <2 x double> %i.oj, %i.ok          ; 3 uses
  %i.om = extractelement <2 x double> %i.ol, i64 0 ; 3 uses
  %i.on = insertelement <2 x double> %i.oe, double %i.mu, i64 0
  %i.oo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.es, <2 x double> %i.on, <2 x double> %i.ol) ; 2 uses
  %shift58 = shufflevector <2 x double> %i.oo, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop59 = fsub <2 x double> %i.oo, %shift58
  %i.op = extractelement <2 x double> %foldExtExtBinop59, i64 0
  %i.oq = insertelement <2 x double> %i.bz, double %i.co, i64 1
  %i.or = shufflevector <2 x double> %i.nc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.os = fmul <2 x double> %i.oq, %i.or
  %i.ot = insertelement <2 x double> %i.cc, double %i.co, i64 0
  %i.ou = insertelement <2 x double> %i.my, double %i.mq, i64 0 ; 5 uses
  %i.ov = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ot, <2 x double> %i.ou, <2 x double> %i.os) ; 2 uses
  %i.ow = shufflevector <2 x double> %i.nz, <2 x double> %i.ov, <2 x i32> <i32 1, i32 2>
  %i.ox = fsub <2 x double> %i.oa, %i.ow
  %i.oy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cl, <2 x double> %i.ox, <2 x double> %i.oi) ; 2 uses
  %shift61 = shufflevector <2 x double> %i.oy, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop62 = fadd <2 x double> %i.oy, %shift61
  %i.oz = extractelement <2 x double> %foldExtExtBinop62, i64 0
  %i.pa = extractelement <2 x double> %i.ov, i64 1
  %i.pb = fmul double %i.pa, 2.000000e+00
  %i.pc = tail call double @llvm.fmuladd.f64(double %i.eq, double %i.ei, double %i.du)
  %i.pd = fmul double %i.pc, %i.pb
  %i.pe = tail call double @llvm.fmuladd.f64(double %i.de, double %i.op, double %i.pd)
  %i.pf = fadd double %i.pe, %i.oz
  %i.pg = fadd double %i.pf, %.07.lcssa.i.i       ; 3 uses
  %i.ph = extractelement <2 x double> %i.nz, i64 0 ; 2 uses
  %i.pi = fcmp ult double %i.pg, %i.ph
  %i.pj = fneg double %i.pg
  %i.pk = fcmp ugt double %i.ph, %i.pj
  %or.cond2268.i = and i1 %i.pi, %i.pk
  br i1 %or.cond2268.i, label %bb.g, label %_ZL13incircleadaptPdS_S_S_d.exit

bb.g:                                             ; preds = %bb.f
  %.not.i = xor i1 %i.nf, true                    ; 2 uses
  %.not15.i = xor i1 %i.nk, true                  ; 2 uses
  %or.cond11.i = select i1 %.not.i, i1 true, i1 %.not15.i ; 2 uses
  %.not16.i = xor i1 %i.nh, true                  ; 2 uses
  %or.cond13.i = select i1 %or.cond11.i, i1 true, i1 %.not16.i
  %.not17.i = xor i1 %i.nm, true                  ; 2 uses
  %or.cond15.i = select i1 %or.cond13.i, i1 true, i1 %.not17.i ; 2 uses
  br i1 %or.cond15.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %foldExtExtBinop64 = fmul <2 x double> %i.bz, %i.bz
  %i.pl = extractelement <2 x double> %foldExtExtBinop64, i64 0 ; 4 uses
  %i.pm = extractelement <2 x double> %i.ex, i64 0
  %i.pn = extractelement <2 x double> %i.fs, i64 1
  %i.po = tail call double @llvm.fmuladd.f64(double %i.pn, double %i.pm, double %i.pl)
  %foldExtExtBinop66 = fadd <2 x double> %i.ex, %i.ex
  %i.pp = extractelement <2 x double> %foldExtExtBinop66, i64 0
  %i.pq = fneg double %i.pp
  %i.pr = extractelement <2 x double> %i.ez, i64 0
  %i.ps = tail call double @llvm.fmuladd.f64(double %i.pq, double %i.pr, double %i.po)
  %i.pt = fneg double %i.ps
  %i.pu = extractelement <2 x double> %i.ck, i64 0 ; 2 uses
  %i.pv = fneg <2 x double> %i.ez
  %i.pw = shufflevector <2 x double> %i.ez, <2 x double> %i.pv, <2 x i32> <i32 0, i32 3>
  %i.px = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.py = insertelement <2 x double> %i.px, double %i.pt, i64 0
  %i.pz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pw, <2 x double> %i.ez, <2 x double> %i.py) ; 2 uses
  %foldExtExtBinop68 = fadd <2 x double> %i.ez, %i.ez
  %i.qa = extractelement <2 x double> %foldExtExtBinop68, i64 1
  %i.qb = fneg double %i.qa
  %i.qc = extractelement <2 x double> %i.pz, i64 1
  %i.qd = extractelement <2 x double> %i.fx, i64 0 ; 3 uses
  %i.qe = tail call double @llvm.fmuladd.f64(double %i.qb, double %i.qd, double %i.qc)
  %i.qf = fneg double %i.qe
  %i.qg = tail call double @llvm.fmuladd.f64(double %i.qd, double %i.qd, double %i.qf) ; 2 uses
  %i.qh = extractelement <2 x double> %i.pz, i64 0 ; 3 uses
  %i.qi = fadd double %i.qh, %i.qg                ; 4 uses
  %i.qj = fsub double %i.qi, %i.qh                ; 2 uses
  %i.qk = fsub double %i.qi, %i.qj
  %i.ql = fsub double %i.qg, %i.qj
  %i.qm = fsub double %i.qh, %i.qk
  %i.qn = fadd double %i.ql, %i.qm
  store double %i.qn, ptr %i.v, align 16, !tbaa !23
  %i.qo = fadd double %i.pl, %i.qi                ; 5 uses
  %i.qp = fsub double %i.qo, %i.pl                ; 2 uses
  %i.qq = fsub double %i.qo, %i.qp
  %i.qr = fsub double %i.qi, %i.qp
  %1 = fsub double %i.pl, %i.qq
  %i.qs = fadd double %i.qr, %1                   ; 3 uses
  %i.qt = fadd double %i.pu, %i.qs                ; 4 uses
  %i.qu = fsub double %i.qt, %i.qs                ; 2 uses
  %i.qv = fsub double %i.qt, %i.qu
  %i.qw = fsub double %i.pu, %i.qu
  %2 = fsub double %i.qs, %i.qv
  %i.qx = fadd double %i.qw, %2
  %i.qy = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store double %i.qx, ptr %i.qy, align 8, !tbaa !23
  %i.qz = fadd double %i.qo, %i.qt                ; 3 uses
  %i.ra = fsub double %i.qz, %i.qo                ; 2 uses
  %i.rb = fsub double %i.qz, %i.ra
  %i.rc = fsub double %i.qt, %i.ra
  %3 = fsub double %i.qo, %i.rb
  %i.rd = fadd double %i.rc, %3
  %i.re = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store double %i.rd, ptr %i.re, align 16, !tbaa !23
  %i.rf = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store double %i.qz, ptr %i.rf, align 8, !tbaa !23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %or.cond17.i = select i1 %.not16.i, i1 true, i1 %.not17.i ; 2 uses
  %.not18.i = xor i1 %i.nd, true                  ; 2 uses
  %or.cond19.i = or i1 %or.cond17.i, %.not18.i
  %.not19.i = xor i1 %i.nj, true                  ; 2 uses
  %or.cond21.i = select i1 %or.cond19.i, i1 true, i1 %.not19.i ; 2 uses
  br i1 %or.cond21.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.rg = fmul double %i.ee, %i.ee                ; 4 uses
  %i.rh = load double, ptr @_ZL8splitter, align 8, !tbaa !23
  %i.ri = extractelement <2 x double> %i.ck, i64 1 ; 2 uses
  %i.rj = shufflevector <2 x double> %i.bz, <2 x double> %i.ch, <2 x i32> <i32 1, i32 3>
  %i.rk = insertelement <2 x double> poison, double %i.rh, i64 0
  %i.rl = shufflevector <2 x double> %i.rk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rm = fmul <2 x double> %i.rj, %i.rl          ; 3 uses
  %i.rn = extractelement <2 x double> %i.rm, i64 0
  %i.ro = fsub double %i.rn, %i.ee
  %i.rp = insertelement <2 x double> %i.ch, double %i.ro, i64 0
  %i.rq = fsub <2 x double> %i.rm, %i.rp          ; 4 uses
  %i.rr = extractelement <2 x double> %i.rq, i64 0 ; 2 uses
  %i.rs = fneg double %i.rr
  %i.rt = tail call double @llvm.fmuladd.f64(double %i.rs, double %i.rr, double %i.rg)
  %foldExtExtBinop70 = fadd <2 x double> %i.rq, %i.rq
  %i.ru = extractelement <2 x double> %foldExtExtBinop70, i64 0
  %i.rv = fneg double %i.ru
  %i.rw = shufflevector <2 x double> %i.bz, <2 x double> %i.rm, <2 x i32> <i32 1, i32 3>
  %i.rx = fsub <2 x double> %i.rw, %i.rq          ; 5 uses
  %i.ry = extractelement <2 x double> %i.rx, i64 0
  %i.rz = tail call double @llvm.fmuladd.f64(double %i.rv, double %i.ry, double %i.rt)
  %i.sa = fneg double %i.rz
  %i.sb = extractelement <2 x double> %i.rx, i64 1 ; 3 uses
  %i.sc = fsub double %i.ei, %i.sb                ; 3 uses
  %i.sd = fneg <2 x double> %i.rx
  %i.se = shufflevector <2 x double> %i.rx, <2 x double> %i.sd, <2 x i32> <i32 0, i32 3>
  %i.sf = insertelement <2 x double> %i.ck, double %i.sa, i64 0
  %i.sg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.se, <2 x double> %i.rx, <2 x double> %i.sf) ; 2 uses
  %i.sh = fadd double %i.sb, %i.sb
  %i.si = fneg double %i.sh
  %i.sj = extractelement <2 x double> %i.sg, i64 1
  %i.sk = tail call double @llvm.fmuladd.f64(double %i.si, double %i.sc, double %i.sj)
  %i.sl = fneg double %i.sk
  %i.sm = tail call double @llvm.fmuladd.f64(double %i.sc, double %i.sc, double %i.sl) ; 2 uses
  %i.sn = extractelement <2 x double> %i.sg, i64 0 ; 3 uses
  %i.so = fadd double %i.sn, %i.sm                ; 4 uses
  %i.sp = fsub double %i.so, %i.sn                ; 2 uses
  %i.sq = fsub double %i.so, %i.sp
  %i.sr = fsub double %i.sm, %i.sp
  %i.ss = fsub double %i.sn, %i.sq
  %i.st = fadd double %i.sr, %i.ss
  store double %i.st, ptr %i.w, align 16, !tbaa !23
  %i.su = fadd double %i.rg, %i.so                ; 5 uses
  %i.sv = fsub double %i.su, %i.rg                ; 2 uses
  %i.sw = fsub double %i.su, %i.sv
  %i.sx = fsub double %i.so, %i.sv
  %4 = fsub double %i.rg, %i.sw
  %i.sy = fadd double %i.sx, %4                   ; 3 uses
  %i.sz = fadd double %i.ri, %i.sy                ; 4 uses
  %i.ta = fsub double %i.sz, %i.sy                ; 2 uses
  %i.tb = fsub double %i.sz, %i.ta
  %i.tc = fsub double %i.ri, %i.ta
  %5 = fsub double %i.sy, %i.tb
  %i.td = fadd double %i.tc, %5
  %i.te = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store double %i.td, ptr %i.te, align 8, !tbaa !23
  %i.tf = fadd double %i.su, %i.sz                ; 3 uses
  %i.tg = fsub double %i.tf, %i.su                ; 2 uses
  %i.th = fsub double %i.tf, %i.tg
  %i.ti = fsub double %i.sz, %i.tg
  %6 = fsub double %i.su, %i.th
  %i.tj = fadd double %i.ti, %6
  %i.tk = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store double %i.tj, ptr %i.tk, align 16, !tbaa !23
  %i.tl = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store double %i.tf, ptr %i.tl, align 8, !tbaa !23
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %or.cond23.i = select i1 %.not18.i, i1 true, i1 %.not19.i ; 2 uses
  %or.cond25.i = or i1 %or.cond23.i, %.not.i
  %or.cond27.i = select i1 %or.cond25.i, i1 true, i1 %.not15.i ; 2 uses
  br i1 %or.cond27.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.tm = fmul double %i.ef, %i.ef                ; 4 uses
  %i.tn = load double, ptr @_ZL8splitter, align 8, !tbaa !23
  %i.to = insertelement <2 x double> %i.cz, double %i.co, i64 1 ; 2 uses
  %i.tp = insertelement <2 x double> poison, double %i.tn, i64 0
  %i.tq = shufflevector <2 x double> %i.tp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tr = fmul <2 x double> %i.to, %i.tq          ; 3 uses
  %i.ts = extractelement <2 x double> %i.tr, i64 0
  %i.tt = fsub double %i.ts, %i.ef
  %i.tu = insertelement <2 x double> %i.to, double %i.tt, i64 0
  %i.tv = fsub <2 x double> %i.tr, %i.tu          ; 4 uses
  %i.tw = extractelement <2 x double> %i.tv, i64 0 ; 2 uses
  %i.tx = fneg double %i.tw
  %i.ty = tail call double @llvm.fmuladd.f64(double %i.tx, double %i.tw, double %i.tm)
  %foldExtExtBinop72 = fadd <2 x double> %i.tv, %i.tv
  %i.tz = extractelement <2 x double> %foldExtExtBinop72, i64 0
  %i.ua = fneg double %i.tz
  %i.ub = shufflevector <2 x double> %i.cc, <2 x double> %i.tr, <2 x i32> <i32 1, i32 3>
  %i.uc = fsub <2 x double> %i.ub, %i.tv          ; 5 uses
  %i.ud = extractelement <2 x double> %i.uc, i64 0
  %i.ue = tail call double @llvm.fmuladd.f64(double %i.ua, double %i.ud, double %i.ty)
  %i.uf = fneg double %i.ue
  %i.ug = extractelement <2 x double> %i.uc, i64 1 ; 3 uses
  %i.uh = fsub double %i.co, %i.ug                ; 3 uses
  %i.ui = fneg <2 x double> %i.uc
  %i.uj = shufflevector <2 x double> %i.uc, <2 x double> %i.ui, <2 x i32> <i32 0, i32 3>
  %i.uk = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ul = insertelement <2 x double> %i.uk, double %i.uf, i64 0
  %i.um = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uj, <2 x double> %i.uc, <2 x double> %i.ul) ; 2 uses
  %i.un = fadd double %i.ug, %i.ug
  %i.uo = fneg double %i.un
  %i.up = extractelement <2 x double> %i.um, i64 1
  %i.uq = tail call double @llvm.fmuladd.f64(double %i.uo, double %i.uh, double %i.up)
  %i.ur = fneg double %i.uq
  %i.us = tail call double @llvm.fmuladd.f64(double %i.uh, double %i.uh, double %i.ur) ; 2 uses
  %i.ut = extractelement <2 x double> %i.um, i64 0 ; 3 uses
  %i.uu = fadd double %i.ut, %i.us                ; 4 uses
  %i.uv = fsub double %i.uu, %i.ut                ; 2 uses
  %i.uw = fsub double %i.uu, %i.uv
  %i.ux = fsub double %i.us, %i.uv
  %i.uy = fsub double %i.ut, %i.uw
  %i.uz = fadd double %i.ux, %i.uy
  store double %i.uz, ptr %i.x, align 16, !tbaa !23
  %i.va = fadd double %i.tm, %i.uu                ; 5 uses
  %i.vb = fsub double %i.va, %i.tm                ; 2 uses
  %i.vc = fsub double %i.va, %i.vb
  %i.vd = fsub double %i.uu, %i.vb
  %7 = fsub double %i.tm, %i.vc
  %i.ve = fadd double %i.vd, %7                   ; 3 uses
  %i.vf = extractelement <2 x double> %i.cx, i64 0 ; 2 uses
  %i.vg = fadd double %i.vf, %i.ve                ; 4 uses
  %i.vh = fsub double %i.vg, %i.ve                ; 2 uses
  %i.vi = fsub double %i.vg, %i.vh
  %i.vj = fsub double %i.vf, %i.vh
  %8 = fsub double %i.ve, %i.vi
  %i.vk = fadd double %i.vj, %8
  %i.vl = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store double %i.vk, ptr %i.vl, align 8, !tbaa !23
  %i.vm = fadd double %i.va, %i.vg                ; 3 uses
  %i.vn = fsub double %i.vm, %i.va                ; 2 uses
  %i.vo = fsub double %i.vm, %i.vn
  %i.vp = fsub double %i.vg, %i.vn
  %9 = fsub double %i.va, %i.vo
  %i.vq = fadd double %i.vp, %9
  %i.vr = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store double %i.vq, ptr %i.vr, align 16, !tbaa !23
  %i.vs = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store double %i.vm, ptr %i.vs, align 8, !tbaa !23
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  br i1 %i.nd, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.vt = call fastcc noundef i32 @_ZL24scale_expansion_zeroelimiPddS_(i32 noundef 4, ptr noundef %i.a, double noundef %i.mq, ptr noundef %i.au) ; 2 uses
  %i.vu = fmul double %i.eq, 2.000000e+00
  %i.vv = call fastcc noundef i32 @_ZL24scale_expansion_zeroelimiPddS_(i32 noundef %i.vt, ptr noundef %i.au, double noundef %i.vu, ptr noundef %i.ab)
  %i.vw = call fastcc noundef i32 @_ZL24scale_expansion_zeroelimiPddS_(i32 noundef 4, ptr noundef %i.x, double noundef %i.mq, ptr noundef %i.aj)
  %i.vx = call fastcc noundef i32 @_ZL24scale_expansion_zeroelimiPddS_(i32 noundef %i.vw, ptr noundef %i.aj, double noundef %i.ei, ptr noundef %i.ac)
  %i.vy = call fastcc noundef i32 @_ZL24scale_expansion_zeroelimiPddS_(i32 noundef 4, ptr noundef %i.w, double noundef %i.mq, ptr noundef %i.ai)
  %i.vz = fneg double %i.co
  %i.wa = call fastcc noundef i32 @_ZL24scale_expansion_zeroelimiPddS_(i32 noundef %i.vy, ptr noundef %i.ai, double noundef %i.vz, ptr noundef %i.ad)
  %i.wb = call fastcc noundef i32 @_ZL27fast_expansion_sum_zeroelimiPdiS_S_(i32 noundef %i.vv, ptr noundef %i.ab, i32 noundef %i.vx, ptr noundef %i.ac, ptr noundef %i.ae)
  %i.wc = call fastcc noundef i32 @_ZL27fast_expansion_sum_zeroelimiPdiS_S_(i32 noundef %i.wa, ptr noundef %i.ad, i32 noundef %i.wb, ptr noundef %i.ae, ptr noundef %i.ag)
  %i.wd = call fastcc noundef i32 @_ZL27fast_expansion_sum_zeroelimiPdiS_S_(i32 noundef %i.kn, ptr noundef %i.t, i32 noundef %i.wc, ptr noundef %i.ag, ptr noundef %i.u)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.02225.i = phi ptr [ %i.u, %bb.n ], [ %i.t, %bb.m ] ; 3 uses
  %.02208.i = phi ptr [ %i.t, %bb.n ], [ %i.u, %bb.m ] ; 3 uses
  %.02207.i = phi i32 [ %i.wd, %bb.n ], [ %i.kn, %bb.m ] ; 2 uses
  %.02206.i = phi i32 [ %i.vt, %bb.n ], [ undef, %bb.m ]
  br i1 %i.nj, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.we = call fastcc noundef i32 @_ZL24scale_expansion_zeroelimiPddS_(i32 noundef 4, ptr noundef %i.a, double noundef %i.ni, ptr noundef %i.av) ; 2 uses
  %i.wf = fmul double %i.er, 2.000000e+00
  %i.wg = call fastcc noundef i32 @_ZL24scale_expansion_zeroelimiPddS_(i32 noundef %i.we, ptr noundef %i.av, double noundef %i.wf, ptr noundef %i.ab)
  %i.wh = call fastcc noundef i32 @_ZL24scale_expansion_zeroelimiPddS_(i32 noundef 4, ptr noundef %i.w, double noundef %i.ni, ptr noundef %i.ak)
  %i.wi = call fastcc noundef i32 @_ZL24scale_expansion_zeroelimiPddS_(i32 noundef %i.wh, ptr noundef %i.ak, double noundef %i.ef, ptr noundef %i.ac)
  %i.wj = call fastcc noundef i32 @_ZL24scale_expansion_zeroelimiPddS_(i32 noundef 4, ptr noundef %i.x, double noundef %i.ni, ptr noundef %i.al)
  %i.wk = fneg double %i.ee
  %i.wl = call fastcc noundef i32 @_ZL24scale_expansion_zeroelimiPddS_(i32 noundef %i.wj, ptr noundef %i.al, double noundef %i.wk, ptr noundef %i.ad)
  %i.wm = call fastcc noundef i32 @_ZL27fast_expansion_sum_zeroelimiPdiS_S_(i32 noundef %i.wg, ptr noundef %i.ab, i32 noundef %i.wi, ptr noundef %i.ac, ptr noundef %i.ae)
  %i.wn = call fastcc noundef i32 @_ZL27fast_expansion_sum_zeroelimiPdiS_S_(i32 noundef %i.wl, ptr noundef %i.ad, i32 noundef %i.wm, ptr noundef %i.ae, ptr noundef %i.ag)
  %i.wo = call fastcc noundef i32 @_ZL27fast_expansion_sum_zeroelimiPdiS_S_(i32 noundef %.02207.i, ptr noundef %.02225.i, i32 noundef %i.wn, ptr noundef %i.ag, ptr noundef %.02208.i)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.12226.i = phi ptr [ %.02208.i, %bb.p ], [ %.02225.i, %bb.o ] ; 3 uses
  %.12209.i = phi ptr [ %.02225.i, %bb.p ], [ %.02208.i, %bb.o ] ; 3 uses
  %.1.i = phi i32 [ %i.wo, %bb.p ], [ %.02207.i, %bb.o ] ; 2 uses
  %.02205.i = phi i32 [ %i.we, %bb.p ], [ undef, %bb.o ]
  br i1 %i.nf, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.wp = call fastcc noundef i32 @_ZL24scale_expansion_zeroelimiPddS_(i32 noundef 4, ptr noundef %i.b, double noundef %i.ne, ptr noundef %i.aw) ; 2 uses
  %i.wq = fmul double %i.ee, 2.000000e+00
  %i.wr = call fastcc noundef i32 @_ZL24scale_expansion_zeroelimiPddS_(i32 noundef %i.wp, ptr noundef %i.aw, double noundef %i.wq, ptr noundef %i.ab)
  %i.ws = call fastcc noundef i32 @_ZL24scale_expansion_zeroelimiPddS_(i32 noundef 4, ptr noundef %i.v, double noundef %i.ne, ptr noundef %i.am)
  %i.wt = call fastcc noundef i32 @_ZL24scale_expansion_zeroelimiPddS_(i32 noundef %i.ws, ptr noundef %i.am, double noundef %i.co, ptr noundef %i.ac)
  %i.wu = call fastcc noundef i32 @_ZL24scale_expansion_zeroelimiPddS_(i32 noundef 4, ptr noundef %i.x, double noundef %i.ne, ptr noundef %i.an)
  %i.wv = fneg double %i.er
  %i.ww = call fastcc noundef i32 @_ZL24scale_expansion_zeroelimiPddS_(i32 noundef %i.wu, ptr noundef %i.an, double noundef %i.wv, ptr noundef %i.ad)
  %i.wx = call fastcc noundef i32 @_ZL27fast_expansion_sum_zeroelimiPdiS_S_(i32 noundef %i.wr, ptr noundef %i.ab, i32 noundef %i.wt, ptr noundef %i.ac, ptr noundef %i.ae)
  %i.wy = call fastcc noundef i32 @_ZL27fast_expansion_sum_zeroelimiPdiS_S_(i32 noundef %i.ww, ptr noundef %i.ad, i32 noundef %i.wx, ptr noundef %i.ae, ptr noundef %i.ag)
  %i.wz = call fastcc noundef i32 @_ZL27fast_expansion_sum_zeroelimiPdiS_S_(i32 noundef %.1.i, ptr noundef %.12226.i, i32 noundef %i.wy, ptr noundef %i.ag, ptr noundef %.12209.i)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.22227.i = phi ptr [ %.12209.i, %bb.r ], [ %.12226.i, %bb.q ] ; 3 uses
  %.22210.i = phi ptr [ %.12226.i, %bb.r ], [ %.12209.i, %bb.q ] ; 3 uses
  %.2.i = phi i32 [ %i.wz, %bb.r ], [ %.1.i, %bb.q ] ; 2 uses
  %.02204.i = phi i32 [ %i.wp, %bb.r ], [ undef, %bb.q ]
  br i1 %i.nk, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.xa = call fastcc noundef i32 @_ZL24scale_expansion_zeroelimiPddS_(i32 noundef 4, ptr noundef %i.b, double noundef %i.mu, ptr noundef %i.ax) ; 2 uses
  %i.xb = fmul double %i.ei, 2.000000e+00
  %i.xc = call fastcc noundef i32 @_ZL24scale_expansion_zeroelimiPddS_(i32 noundef %i.xa, ptr noundef %i.ax, double noundef %i.xb, ptr noundef %i.ab)
  %i.xd = call fastcc noundef i32 @_ZL24scale_expansion_zeroelimiPddS_(i32 noundef 4, ptr noundef %i.x, double noundef %i.mu, ptr noundef %i.ap)
  %i.xe = call fastcc noundef i32 @_ZL24scale_expansion_zeroelimiPddS_(i32 noundef %i.xd, ptr noundef %i.ap, double noundef %i.eq, ptr noundef %i.ac)
  %i.xf = call fastcc noundef i32 @_ZL24scale_expansion_zeroelimiPddS_(i32 noundef 4, ptr noundef %i.v, double noundef %i.mu, ptr noundef %i.ao)
  %i.xg = fneg double %i.ef
  %i.xh = call fastcc noundef i32 @_ZL24scale_expansion_zeroelimiPddS_(i32 noundef %i.xf, ptr noundef %i.ao, double noundef %i.xg, ptr noundef %i.ad)
  %i.xi = call fastcc noundef i32 @_ZL27fast_expansion_sum_zeroelimiPdiS_S_(i32 noundef %i.xc, ptr noundef %i.ab, i32 noundef %i.xe, ptr noundef %i.ac, ptr noundef %i.ae)
  %i.xj = call fastcc noundef i32 @_ZL27fast_expansion_sum_zeroelimiPdiS_S_(i32 noundef %i.xh, ptr noundef %i.ad, i32 noundef %i.xi, ptr noundef %i.ae, ptr noundef %i.ag)
  %i.xk = call fastcc noundef i32 @_ZL27fast_expansion_sum_zeroelimiPdiS_S_(i32 noundef %.2.i, ptr noundef %.22227.i, i32 noundef %i.xj, ptr noundef %i.ag, ptr noundef %.22210.i)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.32228.i = phi ptr [ %.22210.i, %bb.t ], [ %.22227.i, %bb.s ] ; 3 uses
  %.32211.i = phi ptr [ %.22227.i, %bb.t ], [ %.22210.i, %bb.s ] ; 3 uses
  %.3.i = phi i32 [ %i.xk, %bb.t ], [ %.2.i, %bb.s ] ; 2 uses
  %.02203.i = phi i32 [ %i.xa, %bb.t ], [ undef, %bb.s ]
  br i1 %i.nh, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.xl = call fastcc noundef i32 @_ZL24scale_expansion_zeroelimiPddS_(i32 noundef 4, ptr noundef %i.c, double noundef %i.ng, ptr noundef %i.ay) ; 2 uses
  %i.xm = fmul double %i.ef, 2.000000e+00
  %i.xn = call fastcc noundef i32 @_ZL24scale_expansion_zeroelimiPddS_(i32 noundef %i.xl, ptr noundef %i.ay, double noundef %i.xm, ptr noundef %i.ab)
  %i.xo = call fastcc noundef i32 @_ZL24scale_expansion_zeroelimiPddS_(i32 noundef 4, ptr noundef %i.w, double noundef %i.ng, ptr noundef %i.ar)
  %i.xp = call fastcc noundef i32 @_ZL24scale_expansion_zeroelimiPddS_(i32 noundef %i.xo, ptr noundef %i.ar, double noundef %i.er, ptr noundef %i.ac)
  %i.xq = call fastcc noundef i32 @_ZL24scale_expansion_zeroelimiPddS_(i32 noundef 4, ptr noundef %i.v, double noundef %i.ng, ptr noundef %i.aq)
  %i.xr = fneg double %i.ei
  %i.xs = call fastcc noundef i32 @_ZL24scale_expansion_zeroelimiPddS_(i32 noundef %i.xq, ptr noundef %i.aq, double noundef %i.xr, ptr noundef %i.ad)
  %i.xt = call fastcc noundef i32 @_ZL27fast_expansion_sum_zeroelimiPdiS_S_(i32 noundef %i.xn, ptr noundef %i.ab, i32 noundef %i.xp, ptr noundef %i.ac, ptr noundef %i.ae)
  %i.xu = call fastcc noundef i32 @_ZL27fast_expansion_sum_zeroelimiPdiS_S_(i32 noundef %i.xs, ptr noundef %i.ad, i32 noundef %i.xt, ptr noundef %i.ae, ptr noundef %i.ag)
  %i.xv = call fastcc noundef i32 @_ZL27fast_expansion_sum_zeroelimiPdiS_S_(i32 noundef %.3.i, ptr noundef %.32228.i, i32 noundef %i.xu, ptr noundef %i.ag, ptr noundef %.32211.i)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.42229.i = phi ptr [ %.32211.i, %bb.v ], [ %.32228.i, %bb.u ] ; 3 uses
  %.42212.i = phi ptr [ %.32228.i, %bb.v ], [ %.32211.i, %bb.u ] ; 3 uses
  %.4.i = phi i32 [ %i.xv, %bb.v ], [ %.3.i, %bb.u ] ; 2 uses
  %.02202.i = phi i32 [ %i.xl, %bb.v ], [ undef, %bb.u ]
  br i1 %i.nm, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.xw = call fastcc noundef i32 @_ZL24scale_expansion_zeroelimiPddS_(i32 noundef 4, ptr noundef %i.c, double noundef %i.nl, ptr noundef %i.az) ; 2 uses
  %i.xx = fmul double %i.co, 2.000000e+00
  %i.xy = call fastcc noundef i32 @_ZL24scale_expansion_zeroelimiPddS_(i32 noundef %i.xw, ptr noundef %i.az, double noundef %i.xx, ptr noundef %i.ab)
  %i.xz = call fastcc noundef i32 @_ZL24scale_expansion_zeroelimiPddS_(i32 noundef 4, ptr noundef %i.v, double noundef %i.nl, ptr noundef %i.as)
  %i.ya = call fastcc noundef i32 @_ZL24scale_expansion_zeroelimiPddS_(i32 noundef %i.xz, ptr noundef %i.as, double noundef %i.ee, ptr noundef %i.ac)
  %i.yb = call fastcc noundef i32 @_ZL24scale_expansion_zeroelimiPddS_(i32 noundef 4, ptr noundef %i.w, double noundef %i.nl, ptr noundef %i.at)
  %i.yc = fneg double %i.eq
  %i.yd = call fastcc noundef i32 @_ZL24scale_expansion_zeroelimiPddS_(i32 noundef %i.yb, ptr noundef %i.at, double noundef %i.yc, ptr noundef %i.ad)
  %i.ye = call fastcc noundef i32 @_ZL27fast_expansion_sum_zeroelimiPdiS_S_(i32 noundef %i.xy, ptr noundef %i.ab, i32 noundef %i.ya, ptr noundef %i.ac, ptr noundef %i.ae)
  %i.yf = call fastcc noundef i32 @_ZL27fast_expansion_sum_zeroelimiPdiS_S_(i32 noundef %i.yd, ptr noundef %i.ad, i32 noundef %i.ye, ptr noundef %i.ae, ptr noundef %i.ag)
  %i.yg = call fastcc noundef i32 @_ZL27fast_expansion_sum_zeroelimiPdiS_S_(i32 noundef %.4.i, ptr noundef %.42229.i, i32 noundef %i.yf, ptr noundef %i.ag, ptr noundef %.42212.i)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.52230.i = phi ptr [ %.42212.i, %bb.x ], [ %.42229.i, %bb.w ] ; 6 uses
  %.52213.i = phi ptr [ %.42229.i, %bb.x ], [ %.42212.i, %bb.w ] ; 6 uses
  %.5.i = phi i32 [ %i.yg, %bb.x ], [ %.4.i, %bb.w ] ; 3 uses
  %.02201.i = phi i32 [ %i.xw, %bb.x ], [ undef, %bb.w ]
  br i1 %or.cond23.i, label %bb.z, label %bb.ak

bb.z:                                             ; preds = %bb.y
  br i1 %or.cond15.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.yh = load double, ptr @_ZL8splitter, align 8, !tbaa !23 ; 2 uses
  %i.yi = extractelement <2 x double> %i.nr, i64 0 ; 3 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.yk = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.yl = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ym = fneg double %i.mu                       ; 2 uses
  %i.yn = fmul double %i.ef, %i.ym                ; 3 uses
  %i.yo = insertelement <2 x double> poison, double %i.yh, i64 0
  %i.yp = shufflevector <2 x double> %i.yo, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.yq = fmul <2 x double> %i.cp, %i.yp          ; 2 uses
  %i.yr = fsub <2 x double> %i.yq, %i.cp
  %i.ys = fsub <2 x double> %i.yq, %i.yr          ; 3 uses
  %i.yt = extractelement <2 x double> %i.ys, i64 0
  %i.yu = fneg double %i.yt
  %i.yv = fsub <2 x double> %i.cp, %i.ys          ; 3 uses
  %i.yw = fneg <2 x double> %i.yv                 ; 2 uses
  %i.yx = extractelement <2 x double> %i.yv, i64 1
  %i.yy = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.yz = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.za = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.zb = fmul <2 x double> %i.my, %i.yp          ; 2 uses
  %i.zc = fsub <2 x double> %i.zb, %i.my
  %i.zd = fsub <2 x double> %i.zb, %i.zc          ; 3 uses
  %i.ze = fneg <2 x double> %i.zd                 ; 4 uses
  %i.zf = fsub <2 x double> %i.my, %i.zd          ; 4 uses
  %i.zg = fneg <2 x double> %i.zf                 ; 3 uses
  %i.zh = insertelement <2 x double> poison, double %i.ym, i64 0
  %i.zi = insertelement <2 x double> %i.zh, double %i.co, i64 1 ; 3 uses
  %i.zj = fmul <2 x double> %i.yp, %i.zi          ; 3 uses
  %i.zk = insertelement <2 x double> %i.zi, double %i.mu, i64 0 ; 2 uses
  %i.zl = fadd <2 x double> %i.zj, %i.zk
  %i.zm = fsub <2 x double> %i.zj, %i.zk
  %i.zn = shufflevector <2 x double> %i.zl, <2 x double> %i.zm, <2 x i32> <i32 0, i32 3>
  %i.zo = fsub <2 x double> %i.zj, %i.zn          ; 3 uses
  %i.zp = fsub <2 x double> %i.zi, %i.zo          ; 3 uses
  %i.zq = shufflevector <2 x double> %i.ys, <2 x double> %i.zd, <2 x i32> <i32 1, i32 2>
  %i.zr = fneg <2 x double> %i.zq                 ; 2 uses
  %i.zs = shufflevector <2 x double> %i.nr, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.zt = insertelement <2 x double> %i.zs, double %i.yn, i64 0
  %i.zu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zr, <2 x double> %i.zo, <2 x double> %i.zt)
  %i.zv = shufflevector <2 x double> %i.yw, <2 x double> %i.zg, <2 x i32> <i32 1, i32 2>
  %i.zw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zv, <2 x double> %i.zo, <2 x double> %i.zu)
  %i.zx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zr, <2 x double> %i.zp, <2 x double> %i.zw)
  %i.zy = fneg <2 x double> %i.zx                 ; 2 uses
  %i.zz = extractelement <2 x double> %i.zy, i64 0
  %i.aaa = extractelement <2 x double> %i.zp, i64 0
  %i.aab = tail call double @llvm.fmuladd.f64(double %i.yx, double %i.aaa, double %i.zz) ; 2 uses
  %i.aac = extractelement <2 x double> %i.zf, i64 0
  %i.aad = extractelement <2 x double> %i.zy, i64 1
  %i.aae = extractelement <2 x double> %i.zp, i64 1
  %i.aaf = tail call double @llvm.fmuladd.f64(double %i.aac, double %i.aae, double %i.aad) ; 3 uses
  %i.aag = insertelement <2 x double> %i.nc, double %i.mu, i64 1 ; 4 uses
  %i.aah = fmul <2 x double> %i.aag, %i.yp        ; 2 uses
  %i.aai = fsub <2 x double> %i.aah, %i.aag
  %i.aaj = fsub <2 x double> %i.aah, %i.aai       ; 5 uses
  %i.aak = fsub <2 x double> %i.aag, %i.aaj       ; 4 uses
  %i.aal = extractelement <2 x double> %i.aak, i64 0
  %i.aam = extractelement <2 x double> %i.yv, i64 0
  %i.aan = fneg double %i.ei                      ; 3 uses
  %i.aao = shufflevector <2 x double> %i.bz, <2 x double> %i.my, <2 x i32> <i32 1, i32 3>
  %i.aap = insertelement <2 x double> %i.nc, double %i.aan, i64 1
end_hunk_0
begin_hunk_1_@_Z12splitencsegsP4meshP8behaviori:bb.a
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.ec = load double, ptr %i.bw, align 8, !tbaa !23
  %i.ed = load double, ptr %i.dt, align 8, !tbaa !23 ; 2 uses
  %i.ee = fsub double %i.ec, %i.ed
  %i.ef = load double, ptr %i.cb, align 8, !tbaa !23
  %i.eg = fsub double %i.ef, %i.ed
  %i.eh = load double, ptr %i.ea, align 8, !tbaa !23
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !23 ; 2 uses
  %i.ek = fsub double %i.eh, %i.ej
  %i.el = load double, ptr %i.eb, align 8, !tbaa !23
  %i.em = fsub double %i.el, %i.ej
  %i.en = fmul double %i.ek, %i.em
  %i.eo = call double @llvm.fmuladd.f64(double %i.ee, double %i.eg, double %i.en)
  %i.ep = fcmp olt double %i.eo, 0.000000e+00
  br i1 %i.ep, label %.lr.ph311, label %.critedge7.loopexit

bb.l:                                             ; preds = %.lr.ph311
  %i.eq = load double, ptr %i.bw, align 8, !tbaa !23
  %i.er = load double, ptr %i.fl, align 8, !tbaa !23 ; 2 uses
  %i.es = fsub double %i.eq, %i.er
  %i.et = load double, ptr %i.cb, align 8, !tbaa !23
  %i.eu = fsub double %i.et, %i.er
  %i.ev = load double, ptr %i.ea, align 8, !tbaa !23
  %i.ew = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !23 ; 2 uses
  %i.ey = fsub double %i.ev, %i.ex
  %i.ez = load double, ptr %i.eb, align 8, !tbaa !23
  %i.fa = fsub double %i.ez, %i.ex
  %i.fb = fmul double %i.ey, %i.fa
  %i.fc = call double @llvm.fmuladd.f64(double %i.es, double %i.eu, double %i.fb)
  %i.fd = fcmp olt double %i.fc, 0.000000e+00
  br i1 %i.fd, label %.lr.ph311, label %.critedge7.loopexit.loopexit, !llvm.loop !320

.lr.ph311:                                        ; preds = %.lr.ph, %bb.l
  call void @_Z12deletevertexP4meshP8behaviorP4otri(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %4)
  %i.fe = load ptr, ptr %i.cm, align 8, !tbaa !76
  %i.ff = ptrtoint ptr %i.fe to i64               ; 4 uses
  %i.fg = and i64 %i.ff, -4
  %i.fh = inttoptr i64 %i.fg to ptr               ; 4 uses
  %i.fi = and i64 %i.ff, 3                        ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !76 ; 3 uses
  store ptr %i.fh, ptr %4, align 8, !tbaa !73
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr @minus1mod3, i64 %i.fi
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !32
  store i32 %i.fn, ptr %i.p, align 8, !tbaa !74
  %i.fo = load i32, ptr %i.s, align 4, !tbaa !109
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr [4 x i8], ptr %i.fl, i64 %i.fp
  %i.fr = getelementptr i8, ptr %i.fq, i64 4
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !32
  %i.ft = icmp eq i32 %i.fs, 2
  br i1 %i.ft, label %bb.l, label %..critedge7.loopexit.loopexit_crit_edge, !llvm.loop !320

..critedge7.loopexit.loopexit_crit_edge:          ; preds = %.lr.ph311
  %i.fu = trunc i64 %i.ff to i32
  %i.fv = and i32 %i.fu, 3
  br label %.critedge7.loopexit, !llvm.loop !320

.critedge7.loopexit.loopexit:                     ; preds = %bb.l
  %i.fw = trunc i64 %i.ff to i32
  %i.fx = and i32 %i.fw, 3
  br label %.critedge7.loopexit

.critedge7.loopexit:                              ; preds = %.critedge7.loopexit.loopexit, %.lr.ph, %..critedge7.loopexit.loopexit_crit_edge, %bb.k
  %.lcssa222 = phi ptr [ %i.cs, %bb.k ], [ %i.cs, %.lr.ph ], [ %i.fh, %..critedge7.loopexit.loopexit_crit_edge ], [ %i.fh, %.critedge7.loopexit.loopexit ] ; 2 uses
  %.lcssa220 = phi i32 [ %i.cq, %bb.k ], [ %i.cq, %.lr.ph ], [ %i.fv, %..critedge7.loopexit.loopexit_crit_edge ], [ %i.fx, %.critedge7.loopexit.loopexit ] ; 2 uses
  store i32 %.lcssa220, ptr %i.o, align 8
  store ptr %.lcssa222, ptr %3, align 8
  br label %.critedge7

.critedge7:                                       ; preds = %.critedge7.loopexit, %bb.j
  %i.fy = phi i32 [ %.lcssa220, %.critedge7.loopexit ], [ %i.cq, %bb.j ]
  %i.fz = phi ptr [ %.lcssa222, %.critedge7.loopexit ], [ %i.cs, %bb.j ]
  %i.ga = zext nneg i32 %i.fy to i64
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.ga ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !76
  %i.gd = ptrtoint ptr %i.gc to i64               ; 3 uses
  %i.ge = trunc i64 %i.gd to i32
  %i.gf = and i32 %i.ge, 3
  store i32 %i.gf, ptr %i.p, align 8, !tbaa !74
  %i.gg = and i64 %i.gd, -4
  %i.gh = inttoptr i64 %i.gg to ptr               ; 5 uses
  store ptr %i.gh, ptr %4, align 8, !tbaa !73
  %i.gi = load ptr, ptr %i.t, align 8, !tbaa !83
  %.not202 = icmp eq ptr %i.gi, %i.gh
  br i1 %.not202, label %.critedge13, label %bb.m

bb.m:                                             ; preds = %.critedge7
  %i.gj = and i64 %i.gd, 3
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr @plus1mod3, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !32
  %i.gm = sext i32 %i.gl to i64                   ; 2 uses
  %i.gn = getelementptr [8 x i8], ptr %i.gh, i64 %i.gm
  %i.go = getelementptr i8, ptr %i.gn, i64 48
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !76
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = and i64 %i.gq, -4
  %i.gs = inttoptr i64 %i.gr to ptr
  %i.gt = load ptr, ptr %i.q, align 8, !tbaa !84  ; 2 uses
  %i.gu = icmp ne ptr %i.gt, %i.gs                ; 2 uses
  %i.gv = select i1 %i.do, i1 true, i1 %i.gu      ; 4 uses
  %i.gw = getelementptr inbounds [4 x i8], ptr @plus1mod3, i64 %i.gm
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !32 ; 2 uses
  store i32 %i.gx, ptr %i.p, align 8, !tbaa !74
  %i.gy = sext i32 %i.gx to i64                   ; 2 uses
  %i.gz = getelementptr [8 x i8], ptr %i.gh, i64 %i.gy
  %i.ha = getelementptr i8, ptr %i.gz, i64 48
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !76
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = and i64 %i.hc, -4
  %i.he = inttoptr i64 %i.hd to ptr
  %i.hf = icmp ne ptr %i.gt, %i.he                ; 2 uses
  %i.hg = select i1 %i.de, i1 true, i1 %i.hf      ; 4 uses
  %i.hh = load i32, ptr %i.r, align 8, !tbaa !61
  %i.hi = icmp ne i32 %i.hh, 0
  %or.cond9 = select i1 %i.hi, i1 true, i1 %i.hf
  %or.cond11 = select i1 %or.cond9, i1 true, i1 %i.gu
  br i1 %or.cond11, label %.critedge13, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.hj = getelementptr inbounds [4 x i8], ptr @plus1mod3, i64 %i.gy
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !32
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr [8 x i8], ptr %i.gh, i64 %i.hl
  %i.hn = getelementptr i8, ptr %i.hm, i64 24
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !76 ; 2 uses
  %i.hp = load i32, ptr %i.s, align 4, !tbaa !109
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr [4 x i8], ptr %i.ho, i64 %i.hq
  %i.hs = getelementptr i8, ptr %i.hr, i64 4
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !32
  %i.hu = icmp eq i32 %i.ht, 2
  br i1 %i.hu, label %.lr.ph229, label %.critedge13

.lr.ph229:                                        ; preds = %bb.n
  %i.hv = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph229, %bb.p
  %.1192228 = phi ptr [ %i.ho, %.lr.ph229 ], [ %i.is, %bb.p ] ; 2 uses
  %i.hx = load double, ptr %i.bw, align 8, !tbaa !23
  %i.hy = load double, ptr %.1192228, align 8, !tbaa !23 ; 2 uses
  %i.hz = fsub double %i.hx, %i.hy
  %i.ia = load double, ptr %i.cb, align 8, !tbaa !23
  %i.ib = fsub double %i.ia, %i.hy
  %i.ic = load double, ptr %i.hv, align 8, !tbaa !23
  %i.id = getelementptr inbounds nuw i8, ptr %.1192228, i64 8
  %i.ie = load double, ptr %i.id, align 8, !tbaa !23 ; 2 uses
  %i.if = fsub double %i.ic, %i.ie
  %i.ig = load double, ptr %i.hw, align 8, !tbaa !23
  %i.ih = fsub double %i.ig, %i.ie
  %i.ii = fmul double %i.if, %i.ih
  %i.ij = call double @llvm.fmuladd.f64(double %i.hz, double %i.ib, double %i.ii)
  %i.ik = fcmp olt double %i.ij, 0.000000e+00
  br i1 %i.ik, label %bb.p, label %.critedge13

bb.p:                                             ; preds = %bb.o
  call void @_Z12deletevertexP4meshP8behaviorP4otri(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %4)
  %i.il = load ptr, ptr %i.gb, align 8, !tbaa !76
  %i.im = ptrtoint ptr %i.il to i64               ; 2 uses
  %i.in = and i64 %i.im, -4
  %i.io = inttoptr i64 %i.in to ptr               ; 2 uses
  store ptr %i.io, ptr %4, align 8, !tbaa !73
  %i.ip = and i64 %i.im, 3                        ; 2 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !76 ; 2 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr @minus1mod3, i64 %i.ip
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !32
  store i32 %i.iu, ptr %i.p, align 8, !tbaa !74
  %i.iv = load i32, ptr %i.s, align 4, !tbaa !109
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr [4 x i8], ptr %i.is, i64 %i.iw
  %i.iy = getelementptr i8, ptr %i.ix, i64 4
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !32
  %i.ja = icmp eq i32 %i.iz, 2
  br i1 %i.ja, label %bb.o, label %.critedge13, !llvm.loop !321

.critedge13:                                      ; preds = %bb.o, %bb.p, %bb.n, %bb.m, %.critedge7
  %.0188.in = phi i1 [ %i.hg, %bb.m ], [ %i.de, %.critedge7 ], [ %i.hg, %bb.n ], [ %i.hg, %bb.p ], [ %i.hg, %bb.o ]
  %.0187.in = phi i1 [ %i.gv, %bb.m ], [ %i.do, %.critedge7 ], [ %i.gv, %bb.n ], [ %i.gv, %bb.p ], [ %i.gv, %bb.o ] ; 2 uses
  %or.cond15 = select i1 %.0188.in, i1 true, i1 %.0187.in
  br i1 %or.cond15, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.critedge13
  %i.jb = load double, ptr %i.cb, align 8, !tbaa !23
  %i.jc = load double, ptr %i.bw, align 8, !tbaa !23
  %i.jd = fsub double %i.jb, %i.jc                ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.jf = load double, ptr %i.je, align 8, !tbaa !23
  %i.jg = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !23
  %i.ji = fsub double %i.jf, %i.jh                ; 2 uses
  %i.jj = fmul double %i.ji, %i.ji
  %i.jk = call double @llvm.fmuladd.f64(double %i.jd, double %i.jd, double %i.jj)
  %i.jl = call double @sqrt(double noundef %i.jk) #37 ; 5 uses
  %i.jm = fcmp ogt double %i.jl, 3.000000e+00
  br i1 %i.jm, label %.lr.ph232, label %.preheader

.preheader:                                       ; preds = %.lr.ph232, %bb.q
  %.0190.lcssa = phi double [ 1.000000e+00, %bb.q ], [ %i.jp, %.lr.ph232 ] ; 3 uses
  %i.jn = fmul double %.0190.lcssa, 1.500000e+00
  %i.jo = fcmp olt double %i.jl, %i.jn
  br i1 %i.jo, label %.lr.ph235, label %._crit_edge

.lr.ph232:                                        ; preds = %bb.q, %.lr.ph232
  %.0190231 = phi double [ %i.jp, %.lr.ph232 ], [ 1.000000e+00, %bb.q ]
  %i.jp = fmul double %.0190231, 2.000000e+00     ; 3 uses
  %i.jq = fmul double %i.jp, 3.000000e+00
  %i.jr = fcmp ogt double %i.jl, %i.jq
  br i1 %i.jr, label %.lr.ph232, label %.preheader, !llvm.loop !322

.lr.ph235:                                        ; preds = %.preheader, %.lr.ph235
  %.1234 = phi double [ %i.js, %.lr.ph235 ], [ %.0190.lcssa, %.preheader ]
  %i.js = fmul double %.1234, 5.000000e-01        ; 3 uses
  %i.jt = fmul double %i.js, 1.500000e+00
  %i.ju = fcmp olt double %i.jl, %i.jt
  br i1 %i.ju, label %.lr.ph235, label %._crit_edge, !llvm.loop !323

._crit_edge:                                      ; preds = %.lr.ph235, %.preheader
  %.1.lcssa = phi double [ %.0190.lcssa, %.preheader ], [ %i.js, %.lr.ph235 ]
  %i.jv = fdiv double %.1.lcssa, %i.jl            ; 2 uses
  br i1 %.0187.in, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge
  %i.jw = fsub double 1.000000e+00, %i.jv
  br label %bb.s

bb.s:                                             ; preds = %.critedge13, %._crit_edge, %bb.r
  %.0189 = phi double [ %i.jw, %bb.r ], [ %i.jv, %._crit_edge ], [ 5.000000e-01, %.critedge13 ] ; 4 uses
  %i.jx = call noundef ptr @_Z9poolallocP10memorypool(ptr noundef nonnull %i.u) ; 16 uses
  %i.jy = ptrtoaddr ptr %i.jx to i64              ; 2 uses
  %i.jz = load i32, ptr %i.v, align 4, !tbaa !108 ; 2 uses
  %i.ka = icmp sgt i32 %i.jz, -2
  br i1 %i.ka, label %.lr.ph239.preheader, label %._crit_edge240

.lr.ph239.preheader:                              ; preds = %bb.s
  %i.kb = add i32 %i.jz, 2                        ; 2 uses
  %wide.trip.count = zext i32 %i.kb to i64        ; 5 uses
  %min.iters.check = icmp ult i32 %i.kb, 4
  br i1 %min.iters.check, label %.lr.ph239.preheader324, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph239.preheader
  %i.kc = sub i64 %i.bx, %i.jy
  %diff.check = icmp ugt i64 %i.kc, -32
  %i.kd = sub i64 %i.cc, %i.jy
  %diff.check320 = icmp ugt i64 %i.kd, -32
  %conflict.rdx = or i1 %diff.check, %diff.check320
  br i1 %conflict.rdx, label %.lr.ph239.preheader324, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.0189, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %index ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %wide.load = load <2 x double>, ptr %i.ke, align 8, !tbaa !23 ; 2 uses
  %wide.load321.a = load <2 x double>, ptr %i.kf, align 8, !tbaa !23 ; 2 uses
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %index ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  %wide.load322 = load <2 x double>, ptr %i.kg, align 8, !tbaa !23
  %wide.load323 = load <2 x double>, ptr %i.kh, align 8, !tbaa !23
  %i.ki = fsub <2 x double> %wide.load322, %wide.load
  %i.kj = fsub <2 x double> %wide.load323, %wide.load321.a
  %i.kk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.ki, <2 x double> %wide.load)
  %i.kl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.kj, <2 x double> %wide.load321.a)
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %index ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  store <2 x double> %i.kk, ptr %i.km, align 8, !tbaa !23
  store <2 x double> %i.kl, ptr %i.kn, align 8, !tbaa !23
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ko = icmp eq i64 %index.next, %n.vec
  br i1 %i.ko, label %middle.block, label %vector.body, !llvm.loop !324

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge240, label %.lr.ph239.preheader324

.lr.ph239.preheader324:                           ; preds = %vector.memcheck, %.lr.ph239.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph239.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph239.prol.loopexit, label %.lr.ph239.prol

.lr.ph239.prol:                                   ; preds = %.lr.ph239.preheader324
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv.ph
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !23 ; 2 uses
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.ph
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !23
  %i.kt = fsub double %i.ks, %i.kq
  %i.ku = call double @llvm.fmuladd.f64(double %.0189, double %i.kt, double %i.kq)
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %indvars.iv.ph
  store double %i.ku, ptr %i.kv, align 8, !tbaa !23
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph239.prol.loopexit

.lr.ph239.prol.loopexit:                          ; preds = %.lr.ph239.prol, %.lr.ph239.preheader324
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph239.preheader324 ], [ %indvars.iv.next.prol, %.lr.ph239.prol ]
  %i.kw = add nsw i64 %wide.trip.count, -1
  %i.kx = icmp eq i64 %indvars.iv.ph, %i.kw
  br i1 %i.kx, label %._crit_edge240, label %.lr.ph239

.lr.ph239:                                        ; preds = %.lr.ph239.prol.loopexit, %.lr.ph239
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph239 ], [ %indvars.iv.unr, %.lr.ph239.prol.loopexit ] ; 5 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !23 ; 2 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv
  %i.lb = load double, ptr %i.la, align 8, !tbaa !23
  %i.lc = fsub double %i.lb, %i.kz
  %i.ld = call double @llvm.fmuladd.f64(double %.0189, double %i.lc, double %i.kz)
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %indvars.iv
  store double %i.ld, ptr %i.le, align 8, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv.next
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !23 ; 2 uses
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.next
  %i.li = load double, ptr %i.lh, align 8, !tbaa !23
  %i.lj = fsub double %i.li, %i.lg
  %i.lk = call double @llvm.fmuladd.f64(double %.0189, double %i.lj, double %i.lg)
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %indvars.iv.next
  store double %i.lk, ptr %i.ll, align 8, !tbaa !23
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.1, label %._crit_edge240, label %.lr.ph239, !llvm.loop !325

._crit_edge240:                                   ; preds = %.lr.ph239.prol.loopexit, %.lr.ph239, %middle.block, %bb.s
  %i.lm = load i32, ptr %i.w, align 4, !tbaa !56
  %.not203 = icmp eq i32 %i.lm, 0
  %.pre255.pre = load double, ptr %i.jx, align 8, !tbaa !23 ; 6 uses
  %.pre257.pre260 = load double, ptr %i.bw, align 8, !tbaa !23 ; 5 uses
  br i1 %.not203, label %bb.t, label %bb.ac

bb.t:                                             ; preds = %._crit_edge240
  %i.ln = load i64, ptr %i.x, align 8, !tbaa !122
  %i.lo = add nsw i64 %i.ln, 1
  store i64 %i.lo, ptr %i.x, align 8, !tbaa !122
  %i.lp = fsub double %.pre257.pre260, %.pre255.pre
  %i.lq = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !23 ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.jx, i64 8 ; 2 uses
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !23 ; 3 uses
  %i.lu = fsub double %i.lr, %i.lt
  %i.lv = fmul double %i.lp, %i.lu                ; 5 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.lx = load double, ptr %i.lw, align 8, !tbaa !23 ; 3 uses
  %i.ly = fsub double %i.lx, %i.lt
  %i.lz = load double, ptr %i.cb, align 8, !tbaa !23 ; 2 uses
  %i.ma = fsub double %i.lz, %.pre255.pre
  %i.mb = fmul double %i.ly, %i.ma                ; 5 uses
  %i.mc = fsub double %i.lv, %i.mb                ; 5 uses
  %i.md = fcmp ogt double %i.lv, 0.000000e+00
  br i1 %i.md, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.me = fcmp ugt double %i.mb, 0.000000e+00
  br i1 %i.me, label %bb.v, label %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit

bb.v:                                             ; preds = %bb.u
  %i.mf = fadd double %i.lv, %i.mb
  br label %bb.y

bb.w:                                             ; preds = %bb.t
  %i.mg = fcmp olt double %i.lv, 0.000000e+00
  %i.mh = fcmp ult double %i.mb, 0.000000e+00
  %or.cond42.i = select i1 %i.mg, i1 %i.mh, i1 false
  br i1 %or.cond42.i, label %bb.x, label %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit

bb.x:                                             ; preds = %bb.w
  %i.mi = fneg double %i.lv
  %i.mj = fsub double %i.mi, %i.mb
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %.0.i208 = phi double [ %i.mf, %bb.v ], [ %i.mj, %bb.x ] ; 2 uses
  %i.mk = load double, ptr @_ZL12ccwerrboundA, align 8, !tbaa !23
  %i.ml = fmul double %.0.i208, %i.mk             ; 2 uses
  %i.mm = fcmp ult double %i.mc, %i.ml
  %i.mn = fneg double %i.mc
  %i.mo = fcmp ugt double %i.ml, %i.mn
  %or.cond.i = and i1 %i.mm, %i.mo
  br i1 %or.cond.i, label %bb.z, label %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit

bb.z:                                             ; preds = %bb.y
  %i.mp = call noundef double @_Z21counterclockwiseadaptPdS_S_d(ptr noundef nonnull readonly %i.bw, ptr noundef nonnull readonly %i.cb, ptr noundef nonnull readonly %i.jx, double noundef %.0.i208)
  br label %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit

_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit: ; preds = %bb.u, %bb.w, %bb.y, %bb.z
  %.035.i = phi double [ %i.mc, %bb.y ], [ %i.mc, %bb.u ], [ %i.mc, %bb.w ], [ %i.mp, %bb.z ] ; 2 uses
  %i.mq = fsub double %.pre257.pre260, %i.lz      ; 2 uses
  %i.mr = fsub double %i.lx, %i.lr                ; 2 uses
  %i.ms = fmul double %i.mr, %i.mr
  %i.mt = call double @llvm.fmuladd.f64(double %i.mq, double %i.mq, double %i.ms) ; 2 uses
end_hunk_1
begin_hunk_2_@_Z11triangulatePcP13triangulateioS1_S1_:bb.a
  call void @_Z10statisticsP4meshP8behavior(ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.on = getelementptr inbounds nuw i8, ptr %5, i64 108
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !62
  %.not108 = icmp eq i32 %i.oo, 0
  br i1 %.not108, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @_Z9checkmeshP4meshP8behavior(ptr noundef nonnull %4, ptr noundef nonnull %5)
  call void @_Z13checkdelaunayP4meshP8behavior(ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  call void @_Z14triangledeinitP4meshP8behavior(ptr noundef nonnull %4, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #28 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #37 ; 0 uses
  tail call void @_ZSt9terminatev() #38
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #29

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i32 @_ZL24scale_expansion_zeroelimiPddS_(i32 noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, double noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #19 {
bb.a:
  %i.a = load double, ptr @_ZL8splitter, align 8, !tbaa !23 ; 3 uses
  %i.b = fmul double %2, %i.a                     ; 2 uses
  %i.c = fsub double %i.b, %2
  %i.d = fsub double %i.b, %i.c                   ; 5 uses
  %i.e = fsub double %2, %i.d                     ; 4 uses
  %i.f = load double, ptr %1, align 8, !tbaa !23  ; 4 uses
  %i.g = fmul double %2, %i.f                     ; 3 uses
  %i.h = fmul double %i.a, %i.f                   ; 2 uses
  %i.i = fsub double %i.h, %i.f
  %i.j = fsub double %i.h, %i.i                   ; 2 uses
  %i.k = fsub double %i.f, %i.j                   ; 2 uses
  %i.l = fneg double %i.j                         ; 2 uses
  %i.m = tail call double @llvm.fmuladd.f64(double %i.l, double %i.d, double %i.g)
  %i.n = fneg double %i.k
  %i.o = tail call double @llvm.fmuladd.f64(double %i.n, double %i.d, double %i.m)
  %i.p = tail call double @llvm.fmuladd.f64(double %i.l, double %i.e, double %i.o)
  %i.q = fneg double %i.p
  %i.r = tail call double @llvm.fmuladd.f64(double %i.k, double %i.e, double %i.q) ; 2 uses
  %i.s = fcmp une double %i.r, 0.000000e+00
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store double %i.r, ptr %3, align 8, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]        ; 2 uses
  %i.t = icmp sgt i32 %0, 1
  br i1 %i.t, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.197 = phi i32 [ %.0, %.lr.ph.preheader ], [ %.3, %bb.g ] ; 3 uses
  %.09195 = phi double [ %i.g, %.lr.ph.preheader ], [ %i.as, %bb.g ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.v = load double, ptr %i.u, align 8, !tbaa !23 ; 4 uses
  %i.w = fmul double %2, %i.v                     ; 3 uses
  %i.x = fmul double %i.a, %i.v                   ; 2 uses
  %i.y = fsub double %i.x, %i.v
  %i.z = fsub double %i.x, %i.y                   ; 2 uses
  %i.aa = fsub double %i.v, %i.z                  ; 2 uses
  %i.ab = fneg double %i.z                        ; 2 uses
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.d, double %i.w)
  %i.ad = fneg double %i.aa
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.d, double %i.ac)
  %i.af = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.e, double %i.ae)
  %i.ag = fneg double %i.af
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.e, double %i.ag) ; 2 uses
  %i.ai = fadd double %.09195, %i.ah              ; 4 uses
  %i.aj = fsub double %i.ai, %.09195              ; 2 uses
  %i.ak = fsub double %i.ai, %i.aj
  %i.al = fsub double %i.ah, %i.aj
  %i.am = fsub double %.09195, %i.ak
  %i.an = fadd double %i.al, %i.am                ; 2 uses
  %i.ao = fcmp une double %i.an, 0.000000e+00
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.ap = add nsw i32 %.197, 1
  %i.aq = sext i32 %.197 to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %3, i64 %i.aq
  store double %i.an, ptr %i.ar, align 8, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %.2 = phi i32 [ %i.ap, %bb.d ], [ %.197, %.lr.ph ] ; 3 uses
  %i.as = fadd double %i.w, %i.ai                 ; 3 uses
  %i.at = fsub double %i.as, %i.w
  %i.au = fsub double %i.ai, %i.at                ; 2 uses
  %i.av = fcmp une double %i.au, 0.000000e+00
  br i1 %i.av, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aw = add nsw i32 %.2, 1
  %i.ax = sext i32 %.2 to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ax
  store double %i.au, ptr %i.ay, align 8, !tbaa !23
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.3 = phi i32 [ %i.aw, %bb.f ], [ %.2, %bb.e ]  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !398

._crit_edge:                                      ; preds = %bb.g, %bb.c
  %.091.lcssa = phi double [ %i.g, %bb.c ], [ %i.as, %bb.g ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0, %bb.c ], [ %.3, %bb.g ] ; 4 uses
  %i.az = fcmp une double %.091.lcssa, 0.000000e+00
  %i.ba = icmp eq i32 %.1.lcssa, 0
  %or.cond = select i1 %i.az, i1 true, i1 %i.ba
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.bb = add nsw i32 %.1.lcssa, 1
  %i.bc = sext i32 %.1.lcssa to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bc
  store double %.091.lcssa, ptr %i.bd, align 8, !tbaa !23
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %.4 = phi i32 [ %i.bb, %bb.h ], [ %.1.lcssa, %._crit_edge ]
  ret i32 %.4
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #30

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #32

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #33

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #34

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #34

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #35

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind memory(write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { cold nofree noreturn }
attributes #30 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #33 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #34 = { nofree nounwind }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #36 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #37 = { nounwind }
attributes #38 = { noreturn nounwind }
attributes #39 = { noreturn }
attributes #40 = { builtin nounwind }
attributes #41 = { nounwind allocsize(0) }

!llvm.module.flags = !{!14, !15}
!llvm.ident = !{!16}
!llvm.errno.tbaa = !{!21}

!0 = distinct !{!0, !24}
!1 = distinct !{!1, !24}
!2 = distinct !{!2, !24}
!3 = distinct !{!3, !24}
!4 = distinct !{!4, !24}
!5 = distinct !{!5, !24}
!6 = distinct !{!6, !24}
!7 = distinct !{!7, !24}
!8 = distinct !{!8, !24}
!9 = distinct !{!9, !24}
!10 = distinct !{!10, !24}
!11 = distinct !{!11, !24}
!12 = distinct !{!12, !24}
!13 = distinct !{!13, !24}
!14 = !{i32 8, !"PIC Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 2}
!16 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!17 = !{!"Simple C++ TBAA"}
!18 = !{!"omnipotent char", !17, i64 0}
!19 = !{!"int", !18, i64 0}
!20 = !{!"__libc_errno", !19, i64 0}
!21 = !{!20, !19, i64 0}
!22 = !{!"double", !18, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"any pointer", !18, i64 0}
!26 = !{!"p1 omnipotent char", !25, i64 0}
!27 = !{!"long", !18, i64 0}
!28 = !{!18, !18, i64 0}
!29 = !{!"_ZTS8behavior", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !19, i64 20, !19, i64 24, !19, i64 28, !19, i64 32, !19, i64 36, !19, i64 40, !19, i64 44, !19, i64 48, !19, i64 52, !19, i64 56, !19, i64 60, !19, i64 64, !19, i64 68, !19, i64 72, !19, i64 76, !19, i64 80, !19, i64 84, !19, i64 88, !19, i64 92, !19, i64 96, !19, i64 100, !19, i64 104, !19, i64 108, !19, i64 112, !19, i64 116, !19, i64 120, !19, i64 124, !19, i64 128, !19, i64 132, !22, i64 136, !22, i64 144, !22, i64 152, !22, i64 160}
!30 = !{!29, !19, i64 40}
!31 = !{!29, !19, i64 128}
!32 = !{!19, !19, i64 0}
!33 = !{!29, !19, i64 132}
!34 = !{!29, !19, i64 124}
!35 = !{!29, !22, i64 136}
!36 = !{!29, !22, i64 160}
!37 = !{!26, !26, i64 0}
!38 = !{!29, !19, i64 0}
!39 = !{!29, !19, i64 4}
!40 = !{!29, !19, i64 8}
!41 = !{!29, !19, i64 16}
!42 = !{!29, !19, i64 12}
!43 = !{!29, !19, i64 20}
!44 = !{!29, !19, i64 24}
!45 = !{!29, !19, i64 28}
!46 = !{!29, !19, i64 32}
!47 = !{!29, !19, i64 36}
!48 = !{!29, !19, i64 44}
!49 = !{!29, !19, i64 48}
!50 = !{!29, !19, i64 52}
!51 = !{!29, !19, i64 60}
!52 = !{!29, !19, i64 64}
!53 = !{!29, !19, i64 68}
!54 = !{!29, !19, i64 72}
!55 = !{!29, !19, i64 80}
!56 = !{!29, !19, i64 84}
!57 = !{!29, !19, i64 92}
!58 = !{!29, !19, i64 96}
!59 = !{!29, !19, i64 100}
!60 = !{!29, !19, i64 104}
!61 = !{!29, !19, i64 88}
!62 = !{!29, !19, i64 108}
!63 = !{!29, !19, i64 112}
!64 = !{!29, !19, i64 116}
!65 = !{!29, !19, i64 120}
!66 = !{!29, !22, i64 152}
!67 = !{!29, !22, i64 144}
!68 = !{!29, !19, i64 76}
!69 = !{!"any p2 pointer", !25, i64 0}
!70 = !{!"any p3 pointer", !69, i64 0}
!71 = !{!"p3 double", !70, i64 0}
!72 = !{!"_ZTS4otri", !71, i64 0, !19, i64 8}
!73 = !{!72, !71, i64 0}
!74 = !{!72, !19, i64 8}
!75 = !{!"p2 double", !69, i64 0}
!76 = !{!75, !75, i64 0}
!77 = !{!"p2 int", !69, i64 0}
!78 = !{!"p1 int", !25, i64 0}
!79 = !{!"_ZTS10memorypool", !77, i64 0, !77, i64 8, !78, i64 16, !78, i64 24, !77, i64 32, !78, i64 40, !19, i64 48, !19, i64 52, !19, i64 56, !19, i64 60, !27, i64 64, !27, i64 72, !19, i64 80, !19, i64 84}
!80 = !{!"p1 _ZTS11flipstacker", !25, i64 0}
!81 = !{!"p1 double", !25, i64 0}
!82 = !{!"_ZTS4mesh", !79, i64 0, !79, i64 88, !79, i64 176, !79, i64 264, !79, i64 352, !79, i64 440, !79, i64 528, !79, i64 616, !18, i64 704, !18, i64 33472, !18, i64 66240, !19, i64 82624, !80, i64 82632, !22, i64 82640, !22, i64 82648, !22, i64 82656, !22, i64 82664, !22, i64 82672, !19, i64 82680, !19, i64 82684, !19, i64 82688, !19, i64 82692, !19, i64 82696, !19, i64 82700, !27, i64 82704, !19, i64 82712, !19, i64 82716, !19, i64 82720, !27, i64 82728, !19, i64 82736, !19, i64 82740, !19, i64 82744, !19, i64 82748, !19, i64 82752, !19, i64 82756, !19, i64 82760, !19, i64 82764, !19, i64 82768, !27, i64 82776, !27, i64 82784, !27, i64 82792, !27, i64 82800, !27, i64 82808, !27, i64 82816, !27, i64 82824, !81, i64 82832, !81, i64 82840, !81, i64 82848, !71, i64 82856, !71, i64 82864, !71, i64 82872, !71, i64 82880, !72, i64 82888}
!83 = !{!82, !71, i64 82856}
!84 = !{!82, !71, i64 82872}
!85 = !{!82, !19, i64 82756}
!86 = !{!"_ZTS4osub", !71, i64 0, !19, i64 8}
!87 = !{!86, !71, i64 0}
!88 = !{!86, !19, i64 8}
!89 = !{!79, !77, i64 0}
!90 = !{!79, !77, i64 8}
!91 = !{!79, !19, i64 48}
!92 = !{!79, !78, i64 16}
!93 = !{!79, !19, i64 60}
!94 = !{!79, !19, i64 80}
!95 = !{!79, !78, i64 24}
!96 = !{!79, !19, i64 52}
!97 = !{!79, !19, i64 56}
!98 = !{!78, !78, i64 0}
!99 = !{!79, !27, i64 72}
!100 = !{!79, !27, i64 64}
!101 = !{!79, !77, i64 32}
!102 = !{!79, !78, i64 40}
!103 = !{!79, !19, i64 84}
!104 = !{!82, !19, i64 48}
!105 = !{!82, !71, i64 82864}
!106 = !{!82, !71, i64 82880}
!107 = !{!82, !19, i64 82712}
!108 = !{!82, !19, i64 82716}
!109 = !{!82, !19, i64 82740}
!110 = !{!82, !19, i64 82744}
!111 = !{!82, !19, i64 82680}
!112 = !{!82, !19, i64 82748}
!113 = !{!82, !19, i64 82752}
!114 = !{!82, !19, i64 82720}
!115 = !{!"_ZTS9badsubseg", !75, i64 0, !81, i64 8, !81, i64 16}
!116 = !{!115, !81, i64 8}
!117 = !{!82, !77, i64 176}
!118 = !{!82, !19, i64 236}
!119 = !{!82, !19, i64 232}
!120 = !{!82, !19, i64 224}
!121 = !{!82, !19, i64 228}
!122 = !{!82, !27, i64 82792}
!123 = !{!"llvm.loop.unroll.disable"}
!124 = !{!82, !27, i64 82816}
!125 = !{!82, !71, i64 82888}
!126 = !{!82, !19, i64 82700}
!127 = !{!82, !27, i64 82776}
!128 = !{!82, !19, i64 82760}
!129 = !{!82, !19, i64 82764}
!130 = !{!27, !27, i64 0}
!131 = !{!82, !81, i64 82832}
!132 = !{!82, !81, i64 82840}
!133 = !{!82, !81, i64 82848}
!134 = !{!"p1 _ZTS9badtriang", !25, i64 0}
!135 = !{!"_ZTS9badtriang", !75, i64 0, !22, i64 8, !81, i64 16, !81, i64 24, !81, i64 32, !134, i64 40}
!136 = !{!135, !81, i64 16}
!137 = !{!135, !81, i64 24}
!138 = !{!135, !81, i64 32}
!139 = !{!135, !22, i64 8}
!140 = !{!134, !134, i64 0}
!141 = !{!82, !19, i64 82624}
!142 = !{!135, !134, i64 40}
!143 = !{!135, !75, i64 0}
!144 = !{!115, !75, i64 0}
!145 = !{!115, !81, i64 16}
!146 = !{!82, !19, i64 82896}
!147 = !{!82, !27, i64 64}
end_hunk_2
