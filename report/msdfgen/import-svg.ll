Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/import-svg?download=true
inline.NumInlined: 174
inline.NumDeleted: 62
begin_hunk_0_@_ZN7msdfgen21buildShapeFromSvgPathERNS_5ShapeEPKcd:bb.a

.critedge.i.i5.i274:                              ; preds = %.preheader1401, %.preheader1401, %.preheader1401, %.preheader1401, %.preheader1401
  %i.kv = getelementptr inbounds nuw i8, ptr %.61, i64 1
  br label %.preheader1401, !llvm.loop !0

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i275:   ; preds = %.preheader1401
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !15
  %i.kw = call double @strtod(ptr noundef nonnull %.61, ptr noundef nonnull %i.a) #12
  %i.kx = load ptr, ptr %i.a, align 8, !tbaa !15  ; 5 uses
  %i.ky = icmp ugt ptr %i.kx, %.61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br i1 %i.ky, label %.critedge163, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

.critedge163:                                     ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i275
  %i.kz = icmp eq i8 %.2360743, 97
  %i.la = insertelement <2 x double> poison, double %i.kr, i64 0
  %i.lb = insertelement <2 x double> %i.la, double %i.kw, i64 1 ; 2 uses
  %i.lc = fadd <2 x double> %i.am, %i.lb
  %i.ld = insertelement <2 x i1> poison, i1 %i.kz, i64 0
  %i.le = shufflevector <2 x i1> %i.ld, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.lf = select <2 x i1> %i.le, <2 x double> %i.lc, <2 x double> %i.lb ; 9 uses
  %i.lg = fmul double %i.ka, f0x3F91DF46A2529D39  ; 2 uses
  %i.lh = extractelement <2 x double> %i.am, i64 0 ; 2 uses
  %i.li = extractelement <2 x double> %i.lf, i64 0 ; 2 uses
  %i.lj = fcmp oeq double %i.li, %i.lh
  %i.lk = extractelement <2 x double> %i.am, i64 1 ; 2 uses
  %i.ll = extractelement <2 x double> %i.lf, i64 1 ; 2 uses
  %i.lm = fcmp oeq double %i.ll, %i.lk
  %i.ln = select i1 %i.lj, i1 %i.lm, i1 false
  br i1 %i.ln, label %_ZN7msdfgenL17addArcApproximateERNS_7ContourENS_7Vector2ES2_S2_dbb.exit, label %bb.an

bb.an:                                            ; preds = %.critedge163
  %i.lo = fcmp oeq double %i.jq, 0.000000e+00
  %i.lp = fcmp oeq double %i.jv, 0.000000e+00
  %or.cond.i = select i1 %i.lo, i1 true, i1 %i.lp
  br i1 %or.cond.i, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.lq = call noundef ptr @_ZN7msdfgen11EdgeSegment6createENS_7Vector2ES1_NS_9EdgeColorE(double %i.lh, double %i.lk, double %i.li, double %i.ll, i32 noundef 7)
  store ptr %i.lq, ptr %3, align 8, !tbaa !38
  invoke void @_ZN7msdfgen7Contour7addEdgeEONS_10EdgeHolderE(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %_ZN7msdfgenL17addArcApproximateERNS_7ContourENS_7Vector2ES2_S2_dbb.exit

bb.aq:                                            ; preds = %bb.ao
  %i.lr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %common.resume

bb.ar:                                            ; preds = %bb.an
  %i.ls = insertelement <2 x double> poison, double %i.jv, i64 0
  %i.lt = insertelement <2 x double> %i.ls, double %i.jq, i64 1
  %i.lu = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.lt) ; 2 uses
  %i.lv = call double @cos(double noundef %i.lg) #12 ; 2 uses
  %i.lw = call double @sin(double noundef %i.lg) #12 ; 3 uses
  %i.lx = fsub <2 x double> %i.am, %i.lf
  %i.ly = fmul <2 x double> %i.lx, splat (double 5.000000e-01) ; 2 uses
  %i.lz = fneg double %i.lw
  %i.ma = shufflevector <2 x double> %i.ly, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.mb = insertelement <2 x double> poison, double %i.lw, i64 0
  %i.mc = insertelement <2 x double> %i.mb, double %i.lv, i64 1 ; 4 uses
  %i.md = fmul <2 x double> %i.ma, %i.mc
  %i.me = shufflevector <2 x double> %i.mc, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.mf = insertelement <2 x double> %i.me, double %i.lz, i64 1
  %i.mg = shufflevector <2 x double> %i.ly, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mf, <2 x double> %i.mg, <2 x double> %i.md) ; 6 uses
  %i.mi = insertelement <2 x double> poison, double %i.jq, i64 0
  %i.mj = insertelement <2 x double> %i.mi, double %i.jv, i64 1 ; 2 uses
  %i.mk = fmul <2 x double> %i.mj, %i.mj          ; 3 uses
  %i.ml = fmul <2 x double> %i.mh, %i.mh          ; 3 uses
  %i.mm = fdiv <2 x double> %i.ml, %i.mk
  %i.mn = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.mm) ; 2 uses
  %i.mo = fcmp ogt double %i.mn, 1.000000e+00
  %i.mp = extractelement <2 x double> %i.mk, i64 0
  %i.mq = extractelement <2 x double> %i.mk, i64 1
  br i1 %i.mo, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %sqrt.i = call nnan double @llvm.sqrt.f64(double %i.mn)
  %i.mr = insertelement <2 x double> poison, double %sqrt.i, i64 0
  %i.ms = shufflevector <2 x double> %i.mr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mt = fmul <2 x double> %i.lu, %i.ms          ; 5 uses
  %foldExtExtBinop = fmul <2 x double> %i.mt, %i.mt
  %i.mu = extractelement <2 x double> %foldExtExtBinop, i64 1
  %foldExtExtBinop1493 = fmul <2 x double> %i.mt, %i.mt
  %i.mv = extractelement <2 x double> %foldExtExtBinop1493, i64 0
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.sroa.0140.0.i = phi double [ %i.mu, %bb.as ], [ %i.mp, %bb.ar ] ; 2 uses
  %.sroa.8.0.i = phi double [ %i.mv, %bb.as ], [ %i.mq, %bb.ar ] ; 2 uses
  %i.mw = phi <2 x double> [ %i.mt, %bb.as ], [ %i.lu, %bb.ar ] ; 6 uses
  %i.mx = extractelement <2 x double> %i.ml, i64 0
  %i.my = fmul double %i.mx, %.sroa.8.0.i
  %i.mz = extractelement <2 x double> %i.ml, i64 1
  %i.na = call double @llvm.fmuladd.f64(double %.sroa.0140.0.i, double %i.mz, double %i.my)
  %i.nb = fmul double %.sroa.0140.0.i, %.sroa.8.0.i
  %i.nc = fdiv double %i.nb, %i.na
  %i.nd = fadd double %i.nc, -1.000000e+00        ; 2 uses
  %i.ne = xor i1 %i.kk, %i.kq
  %i.nf = fcmp olt double %i.nd, 0.000000e+00
  %i.ng = select i1 %i.nf, double 0.000000e+00, double %i.nd
  %i.nh = call double @sqrt(double noundef %i.ng) #12 ; 2 uses
  %i.ni = fneg double %i.nh
  %i.nj = select i1 %i.ne, double %i.nh, double %i.ni ; 2 uses
  %i.nk = fneg double %i.nj
  %i.nl = fadd <2 x double> %i.am, %i.lf
  %i.nm = fmul <2 x double> %i.nl, splat (double 5.000000e-01)
  %i.nn = fneg <2 x double> %i.mh                 ; 2 uses
  %i.no = insertelement <2 x double> poison, double %i.nk, i64 0
  %i.np = insertelement <2 x double> %i.no, double %i.nj, i64 1
  %i.nq = fmul <2 x double> %i.mw, %i.np
  %i.nr = fmul <2 x double> %i.mh, %i.nq
  %i.ns = shufflevector <2 x double> %i.mw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.nt = fdiv <2 x double> %i.nr, %i.ns          ; 5 uses
  %i.nu = extractelement <2 x double> %i.nt, i64 0
  %i.nv = fneg double %i.nu
  %i.nw = insertelement <2 x double> poison, double %i.nv, i64 0
  %i.nx = shufflevector <2 x double> %i.nw, <2 x double> %i.nt, <2 x i32> <i32 0, i32 2>
  %i.ny = fmul <2 x double> %i.mc, %i.nx
  %i.nz = shufflevector <2 x double> %i.nt, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.oa = shufflevector <2 x double> %i.nt, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ob = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.me, <2 x double> %i.oa, <2 x double> %i.ny)
  %i.oc = fadd <2 x double> %i.nm, %i.ob          ; 3 uses
  %i.od = shufflevector <2 x double> %i.nn, <2 x double> %i.mh, <2 x i32> <i32 0, i32 2>
  %i.oe = fsub <2 x double> %i.od, %i.nz
  %i.of = shufflevector <2 x double> %i.mw, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.og = fdiv <2 x double> %i.oe, %i.of          ; 4 uses
  %i.oh = extractelement <2 x double> %i.og, i64 1 ; 4 uses
  %i.oi = fmul double %i.oh, 0.000000e+00
  %i.oj = shufflevector <2 x double> %i.mh, <2 x double> %i.nn, <2 x i32> <i32 3, i32 1>
  %i.ok = shufflevector <2 x double> %i.nt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ol = fsub <2 x double> %i.oj, %i.ok
  %i.om = shufflevector <2 x double> %i.mw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.on = fdiv <2 x double> %i.ol, %i.om          ; 4 uses
  %i.oo = extractelement <2 x double> %i.on, i64 1 ; 4 uses
  %i.op = fcmp ogt double %i.oo, %i.oi
  %i.oq = fmul <2 x double> %i.on, %i.on
  %i.or = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.og, <2 x double> %i.og, <2 x double> %i.oq)
  %i.os = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.or) ; 3 uses
  %i.ot = extractelement <2 x double> %i.og, i64 0 ; 2 uses
  %i.ou = fneg double %i.ot
  %i.ov = fmul double %i.oo, %i.ou
  %i.ow = extractelement <2 x double> %i.on, i64 0 ; 2 uses
  %i.ox = call noundef double @llvm.fmuladd.f64(double %i.oh, double %i.ow, double %i.ov)
  %i.oy = fcmp ogt double %i.ox, 0.000000e+00
  %shift = shufflevector <2 x double> %i.os, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1495 = fmul <2 x double> %shift, %i.os
  %i.oz = fmul double %i.oo, 0.000000e+00
  %i.pa = fmul double %i.oo, %i.ow
  %i.pb = fadd double %i.oh, %i.oz
  %i.pc = call noundef double @llvm.fmuladd.f64(double %i.oh, double %i.ot, double %i.pa)
  %i.pd = insertelement <2 x double> poison, double %i.pc, i64 0
  %i.pe = insertelement <2 x double> %i.pd, double %i.pb, i64 1
  %i.pf = shufflevector <2 x double> %foldExtExtBinop1495, <2 x double> %i.os, <2 x i32> <i32 0, i32 3>
  %i.pg = fdiv <2 x double> %i.pe, %i.pf          ; 3 uses
  %i.ph = fcmp olt <2 x double> %i.pg, splat (double -1.000000e+00)
  %i.pi = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.pg)
  %i.pj = fcmp ugt <2 x double> %i.pi, splat (double 1.000000e+00)
  %i.pk = select <2 x i1> %i.ph, <2 x double> splat (double -1.000000e+00), <2 x double> splat (double 1.000000e+00)
  %i.pl = select <2 x i1> %i.pj, <2 x double> %i.pk, <2 x double> %i.pg ; 2 uses
  %i.pm = extractelement <2 x double> %i.pl, i64 1
  %i.pn = call double @acos(double noundef %i.pm) #12 ; 2 uses
  %i.po = fneg double %i.pn
  %i.pp = select i1 %i.op, double %i.pn, double %i.po
  %i.pq = extractelement <2 x double> %i.pl, i64 0
  %i.pr = call double @acos(double noundef %i.pq) #12 ; 2 uses
  %i.ps = fneg double %i.pr
  %i.pt = select i1 %i.oy, double %i.pr, double %i.ps ; 5 uses
  %i.pu = fcmp ule double %i.pt, 0.000000e+00
  %or.cond4.not.i = or i1 %i.kq, %i.pu
  br i1 %or.cond4.not.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.pv = fadd double %i.pt, f0xC01921FB54442D18
  br label %bb.ax

bb.av:                                            ; preds = %bb.at
  %i.pw = fcmp olt double %i.pt, 0.000000e+00
  %or.cond6.i = and i1 %i.kq, %i.pw
  br i1 %or.cond6.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.px = fadd double %i.pt, f0x401921FB54442D18
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au
  %.0185.i = phi double [ %i.pv, %bb.au ], [ %i.px, %bb.aw ], [ %i.pt, %bb.av ] ; 2 uses
  %i.py = call double @llvm.fabs.f64(double %.0185.i)
  %i.pz = fmul double %i.py, f0x3FE45F306DC9C883
  %i.qa = call double @llvm.ceil.f64(double %i.pz)
  %i.qb = fptosi double %i.qa to i32              ; 4 uses
  %13 = sitofp i32 %i.qb to double
  %i.qc = fdiv double %.0185.i, %13               ; 2 uses
  %i.qd = fmul double %i.qc, 5.000000e-01         ; 2 uses
  %i.qe = call double @sin(double noundef %i.qd) #12
  %i.qf = call double @cos(double noundef %i.qd) #12
  %14 = icmp sgt i32 %i.qb, 0
  br i1 %14, label %.preheader.lr.ph.i, label %_ZN7msdfgenL17addArcApproximateERNS_7ContourENS_7Vector2ES2_S2_dbb.exit

.preheader.lr.ph.i:                               ; preds = %bb.ax
  %i.qg = fmul double %i.qe, f0x3FF5555555555555
  %i.qh = fadd double %i.qf, 1.000000e+00
  %i.qi = fdiv double %i.qg, %i.qh                ; 3 uses
  %i.qj = fneg double %i.qi                       ; 2 uses
  %i.qk = add nsw i32 %i.qb, -1
  %i.ql = insertelement <2 x double> poison, double %i.qj, i64 0
  %i.qm = insertelement <2 x double> %i.ql, double %i.qi, i64 1
  %i.qn = insertelement <2 x double> poison, double %i.lv, i64 0
  %i.qo = insertelement <2 x double> %i.qn, double %i.lw, i64 1 ; 3 uses
  %i.qp = shufflevector <2 x double> %i.qo, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.qq = insertelement <2 x double> poison, double %i.qi, i64 0
  %i.qr = insertelement <2 x double> %i.qq, double %i.qj, i64 1
  %i.qs = extractelement <2 x double> %i.mw, i64 0
  %i.qt = extractelement <2 x double> %i.mw, i64 1
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.ba, %.preheader.lr.ph.i
  %.0186267.i = phi double [ %i.pp, %.preheader.lr.ph.i ], [ %i.rb, %bb.ba ] ; 3 uses
  %.0187266.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %i.su, %bb.ba ] ; 2 uses
  %i.qu = phi <2 x double> [ %i.am, %.preheader.lr.ph.i ], [ %i.sk, %bb.ba ] ; 2 uses
  %i.qv = call double @cos(double noundef %.0186267.i) #12
  %i.qw = call double @sin(double noundef %.0186267.i) #12
  %i.qx = insertelement <2 x double> poison, double %i.qw, i64 0
  %i.qy = insertelement <2 x double> %i.qx, double %i.qv, i64 1 ; 2 uses
  %i.qz = shufflevector <2 x double> %i.qy, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ra = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qm, <2 x double> %i.qy, <2 x double> %i.qz) ; 2 uses
  %i.rb = fadd double %i.qc, %.0186267.i          ; 3 uses
  %i.rc = call double @cos(double noundef %i.rb) #12 ; 2 uses
  %i.rd = call double @sin(double noundef %i.rb) #12 ; 2 uses
  %i.re = insertelement <2 x double> poison, double %i.rd, i64 0
  %i.rf = insertelement <2 x double> %i.re, double %i.rc, i64 1 ; 2 uses
  %i.rg = shufflevector <2 x double> %i.rf, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.rh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qr, <2 x double> %i.rf, <2 x double> %i.rg) ; 2 uses
  %i.ri = shufflevector <2 x double> %i.ra, <2 x double> %i.rh, <2 x i32> <i32 0, i32 2>
  %i.rj = fmul <2 x double> %i.of, %i.ri          ; 2 uses
  %i.rk = shufflevector <2 x double> %i.rj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rl = shufflevector <2 x double> %i.ra, <2 x double> %i.rh, <2 x i32> <i32 1, i32 3>
  %i.rm = fmul <2 x double> %i.om, %i.rl          ; 3 uses
  %i.rn = fneg <2 x double> %i.rm                 ; 2 uses
  %i.ro = shufflevector <2 x double> %i.rn, <2 x double> %i.rm, <2 x i32> <i32 2, i32 0>
  %i.rp = fmul <2 x double> %i.qo, %i.ro
  %i.rq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qp, <2 x double> %i.rk, <2 x double> %i.rp)
  %i.rr = shufflevector <2 x double> %i.rq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.rs = fadd <2 x double> %i.oc, %i.rr          ; 2 uses
  %i.rt = shufflevector <2 x double> %i.rn, <2 x double> %i.rm, <2 x i32> <i32 3, i32 1>
  %i.ru = fmul <2 x double> %i.qo, %i.rt
  %i.rv = shufflevector <2 x double> %i.rj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.rw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qp, <2 x double> %i.rv, <2 x double> %i.ru)
  %i.rx = shufflevector <2 x double> %i.rw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ry = fadd <2 x double> %i.oc, %i.rx          ; 2 uses
  %i.rz = icmp eq i32 %.0187266.i, %i.qk
  br i1 %i.rz, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.preheader.i
  %i.sa = fmul double %i.qt, %i.rc
  %i.sb = fmul double %i.qs, %i.rd                ; 2 uses
  %i.sc = fneg double %i.sb
  %i.sd = insertelement <2 x double> poison, double %i.sc, i64 0
  %i.se = insertelement <2 x double> %i.sd, double %i.sb, i64 1
  %i.sf = fmul <2 x double> %i.mc, %i.se
  %i.sg = insertelement <2 x double> poison, double %i.sa, i64 0
  %i.sh = shufflevector <2 x double> %i.sg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.si = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.me, <2 x double> %i.sh, <2 x double> %i.sf)
  %i.sj = fadd <2 x double> %i.oc, %i.si
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.preheader.i
  %i.sk = phi <2 x double> [ %i.sj, %bb.ay ], [ %i.lf, %.preheader.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.sl = extractelement <2 x double> %i.sk, i64 0
  %i.sm = extractelement <2 x double> %i.sk, i64 1
  %i.sn = extractelement <2 x double> %i.qu, i64 0
  %i.so = extractelement <2 x double> %i.qu, i64 1
  %i.sp = extractelement <2 x double> %i.rs, i64 0
  %i.sq = extractelement <2 x double> %i.rs, i64 1
  %i.sr = extractelement <2 x double> %i.ry, i64 0
  %i.ss = extractelement <2 x double> %i.ry, i64 1
  %i.st = call noundef ptr @_ZN7msdfgen11EdgeSegment6createENS_7Vector2ES1_S1_S1_NS_9EdgeColorE(double %i.sn, double %i.so, double %i.sp, double %i.sq, double %i.sr, double %i.ss, double %i.sl, double %i.sm, i32 noundef 7)
  store ptr %i.st, ptr %4, align 8, !tbaa !38
  invoke void @_ZN7msdfgen7Contour7addEdgeEONS_10EdgeHolderE(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.su = add nuw nsw i32 %.0187266.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.su, %i.qb
  br i1 %exitcond.not.i, label %_ZN7msdfgenL17addArcApproximateERNS_7ContourENS_7Vector2ES2_S2_dbb.exit, label %.preheader.i, !llvm.loop !33

bb.bb:                                            ; preds = %bb.az
  %i.sv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %common.resume

common.resume:                                    ; preds = %bb.j, %bb.n, %bb.r, %bb.v, %bb.ac, %bb.ag, %bb.al, %bb.bj, %bb.aq, %bb.bb
  %common.resume.op = phi { ptr, i32 } [ %i.sv, %bb.bb ], [ %i.lr, %bb.aq ], [ %i.vf, %bb.bj ], [ %i.ch, %bb.j ], [ %i.ct, %bb.n ], [ %i.df, %bb.r ], [ %i.eq, %bb.v ], [ %i.fs, %bb.ac ], [ %i.ht, %bb.ag ], [ %i.jn, %bb.al ]
  resume { ptr, i32 } %common.resume.op

_ZN7msdfgenL17addArcApproximateERNS_7ContourENS_7Vector2ES2_S2_dbb.exit: ; preds = %bb.ba, %bb.ax, %bb.ap, %.critedge163, %bb.ak, %bb.af, %bb.ab, %bb.u, %bb.q, %bb.m, %bb.i, %bb.e
  %.3361 = phi i8 [ %i.bi, %bb.e ], [ %.2360743, %bb.i ], [ %.2360743, %bb.m ], [ %.2360743, %bb.q ], [ %.2360743, %bb.u ], [ %.2360743, %bb.ab ], [ %.2360743, %bb.af ], [ %.2360743, %bb.ak ], [ %.2360743, %.critedge163 ], [ %.2360743, %bb.ap ], [ %.2360743, %bb.ax ], [ %.2360743, %bb.ba ] ; 7 uses
  %.3 = phi ptr [ %i.az, %bb.e ], [ %i.bt, %bb.i ], [ %i.cl, %bb.m ], [ %i.cx, %bb.q ], [ %i.dy, %bb.u ], [ %i.fc, %bb.ab ], [ %i.gv, %bb.af ], [ %i.it, %bb.ak ], [ %i.kx, %.critedge163 ], [ %i.kx, %bb.ap ], [ %i.kx, %bb.ax ], [ %i.kx, %bb.ba ]
  %i.sw = phi <2 x double> [ %i.bh, %bb.e ], [ %i.cb, %bb.i ], [ %i.cs, %bb.m ], [ %i.de, %bb.q ], [ %i.eh, %bb.u ], [ %i.fk, %bb.ab ], [ %i.hh, %bb.af ], [ %i.jc, %bb.ak ], [ %i.lf, %.critedge163 ], [ %i.lf, %bb.ap ], [ %i.lf, %bb.ax ], [ %i.lf, %bb.ba ] ; 4 uses
  %i.sx = phi <2 x double> [ %i.bh, %bb.e ], [ %i.an, %bb.i ], [ %i.an, %bb.m ], [ %i.an, %bb.q ], [ %i.an, %bb.u ], [ %i.an, %bb.ab ], [ %i.an, %bb.af ], [ %i.an, %bb.ak ], [ %i.an, %.critedge163 ], [ %i.an, %bb.ap ], [ %i.an, %bb.ax ], [ %i.an, %bb.ba ] ; 2 uses
  %i.sy = phi <2 x double> [ %i.ao, %bb.e ], [ %i.ao, %bb.i ], [ %i.ao, %bb.m ], [ %i.ao, %bb.q ], [ %i.ei, %bb.u ], [ %i.et, %bb.ab ], [ %i.hi, %bb.af ], [ %i.ia, %bb.ak ], [ %i.ao, %.critedge163 ], [ %i.ao, %bb.ap ], [ %i.ao, %bb.ax ], [ %i.ao, %bb.ba ]
  %i.sz = phi <2 x double> [ %i.aq, %bb.e ], [ %i.aq, %bb.i ], [ %i.aq, %bb.m ], [ %i.aq, %bb.q ], [ %i.aq, %bb.u ], [ %i.aq, %bb.ab ], [ %i.hj, %bb.af ], [ %i.jd, %bb.ak ], [ %i.aq, %.critedge163 ], [ %i.aq, %bb.ap ], [ %i.aq, %bb.ax ], [ %i.aq, %bb.ba ]
  %i.ta = and i8 %.3361, -33
  %i.tb = icmp eq i8 %i.ta, 77
  %i.tc = and i1 %.0155745, %i.tb
  br label %bb.bc

bb.bc:                                            ; preds = %.critedge.i.i279, %_ZN7msdfgenL17addArcApproximateERNS_7ContourENS_7Vector2ES2_S2_dbb.exit
  %.64 = phi ptr [ %.3, %_ZN7msdfgenL17addArcApproximateERNS_7ContourENS_7Vector2ES2_S2_dbb.exit ], [ %i.te, %.critedge.i.i279 ] ; 7 uses
  %i.td = load i8, ptr %.64, align 1, !tbaa !11   ; 7 uses
  switch i8 %i.td, label %bb.bd [
    i8 44, label %.critedge.i.i279
    i8 32, label %.critedge.i.i279
    i8 9, label %.critedge.i.i279
    i8 13, label %.critedge.i.i279
    i8 10, label %.critedge.i.i279
    i8 46, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283
    i8 45, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283
    i8 0, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283
    i8 43, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283
  ]

.critedge.i.i279:                                 ; preds = %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.bc
  %i.te = getelementptr inbounds nuw i8, ptr %.64, i64 1
  br label %bb.bc, !llvm.loop !0

bb.bd:                                            ; preds = %bb.bc
  %i.tf = add i8 %i.td, -58
  %or.cond14.i282 = icmp ult i8 %i.tf, -10        ; 2 uses
  %spec.select = select i1 %or.cond14.i282, i8 %i.td, i8 %.3361
  %spec.select439.idx = zext i1 %or.cond14.i282 to i64
  %spec.select439 = getelementptr inbounds nuw i8, ptr %.64, i64 %spec.select439.idx ; 2 uses
  %.pre1059 = load i8, ptr %spec.select439, align 1, !tbaa !11
  br label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283

_ZN7msdfgenL12readNodeTypeERcRPKc.exit283:        ; preds = %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.bd
  %i.tg = phi i8 [ %.pre1059, %bb.bd ], [ %i.td, %bb.bc ], [ %i.td, %bb.bc ], [ %i.td, %bb.bc ], [ %i.td, %bb.bc ] ; 2 uses
  %.5363 = phi i8 [ %spec.select, %bb.bd ], [ %.3361, %bb.bc ], [ %.3361, %bb.bc ], [ %.3361, %bb.bc ], [ %.3361, %bb.bc ] ; 2 uses
  %.65 = phi ptr [ %spec.select439, %bb.bd ], [ %.64, %bb.bc ], [ %.64, %bb.bc ], [ %.64, %bb.bc ], [ %.64, %bb.bc ] ; 2 uses
  %.not = icmp eq i8 %i.tg, 0
  %i.th = extractelement <2 x double> %i.sw, i64 0 ; 2 uses
  %i.ti = extractelement <2 x double> %i.sw, i64 1 ; 2 uses
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !34

.loopexit.loopexit.split.loop.exit:               ; preds = %bb.d
  %i.tj = extractelement <2 x double> %i.am, i64 0
  %i.tk = extractelement <2 x double> %i.am, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.split.loop.exit, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283, %.critedge, %bb.f
  %.sroa.28.1735 = phi double [ %i.bk, %bb.f ], [ %.sroa.28.0, %.critedge ], [ %i.tk, %.loopexit.loopexit.split.loop.exit ], [ %i.ti, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283 ] ; 2 uses
  %.sroa.0314.1694 = phi double [ %i.bj, %bb.f ], [ %.sroa.0314.0, %.critedge ], [ %i.tj, %.loopexit.loopexit.split.loop.exit ], [ %i.th, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283 ] ; 2 uses
  %.2360571 = phi i8 [ %.2360743, %bb.f ], [ %.1359, %.critedge ], [ %.2360743, %.loopexit.loopexit.split.loop.exit ], [ %.5363, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283 ]
  %.2530 = phi ptr [ %.2744, %bb.f ], [ %.1, %.critedge ], [ %.2744, %.loopexit.loopexit.split.loop.exit ], [ %.65, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283 ]
  %.1153 = phi i1 [ false, %bb.f ], [ false, %.critedge ], [ true, %.loopexit.loopexit.split.loop.exit ], [ false, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283 ]
  %i.tl = phi <2 x double> [ %i.an, %bb.f ], [ zeroinitializer, %.critedge ], [ %i.an, %.loopexit.loopexit.split.loop.exit ], [ %i.sx, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283 ] ; 3 uses
  %i.tm = extractelement <2 x double> %i.tl, i64 1 ; 3 uses
  %i.tn = extractelement <2 x double> %i.tl, i64 0 ; 3 uses
  %i.to = load ptr, ptr %i.aj, align 8, !tbaa !39
  %i.tp = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !39 ; 2 uses
  %i.tr = icmp eq ptr %i.to, %i.tq
  br i1 %i.tr, label %.backedge, label %bb.be

bb.be:                                            ; preds = %.loopexit
  %i.ts = fcmp une double %.sroa.0314.1694, %i.tn
  %i.tt = fcmp une double %.sroa.28.1735, %i.tm
  %i.tu = select i1 %i.ts, i1 true, i1 %i.tt
  br i1 %i.tu, label %bb.bf, label %.backedge

bb.bf:                                            ; preds = %bb.be
  %i.tv = getelementptr inbounds i8, ptr %i.tq, i64 -8
  %i.tw = call noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.tv) ; 2 uses
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !41
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 40
  %i.tz = load ptr, ptr %i.ty, align 8
  %i.ua = call { double, double } %i.tz(ptr noundef nonnull align 8 dereferenceable(12) %i.tw, double noundef 1.000000e+00) ; 2 uses
  %i.ub = extractvalue { double, double } %i.ua, 0
  %i.uc = extractvalue { double, double } %i.ua, 1
  %i.ud = load ptr, ptr %i.aj, align 8, !tbaa !18
  %i.ue = call noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ud) ; 2 uses
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !41
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 40
  %i.uh = load ptr, ptr %i.ug, align 8
  %i.ui = call { double, double } %i.uh(ptr noundef nonnull align 8 dereferenceable(12) %i.ue, double noundef 0.000000e+00) ; 2 uses
  %i.uj = extractvalue { double, double } %i.ui, 0
  %i.uk = extractvalue { double, double } %i.ui, 1
  %i.ul = fsub double %i.ub, %i.uj                ; 2 uses
  %i.um = fsub double %i.uc, %i.uk                ; 2 uses
  %i.un = fmul double %i.um, %i.um
  %i.uo = call double @llvm.fmuladd.f64(double %i.ul, double %i.ul, double %i.un)
  %sqrt.i286 = call noundef double @llvm.sqrt.f64(double %i.uo)
  %i.up = fcmp olt double %sqrt.i286, %2
end_hunk_0
