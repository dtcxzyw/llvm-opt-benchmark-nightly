Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/import-svg?download=true
inline.NumInlined: 174
inline.NumDeleted: 62
begin_hunk_0_@_ZN7msdfgen21buildShapeFromSvgPathERNS_5ShapeEPKcd:bb.a
  store ptr null, ptr %i.c, align 8, !tbaa !15
  %i.kl = call i64 @__isoc23_strtol(ptr noundef nonnull %.58, ptr noundef nonnull %i.c, i32 noundef 10) #12
  %i.km = load ptr, ptr %i.c, align 8, !tbaa !15  ; 2 uses
  %i.kn = icmp ugt ptr %i.km, %.58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br i1 %i.kn, label %.preheader1402, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

.preheader1402:                                   ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i268, %.critedge.i.i.i271
  %.60 = phi ptr [ %i.kp, %.critedge.i.i.i271 ], [ %i.km, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i268 ] ; 4 uses
  %i.ko = load i8, ptr %.60, align 1, !tbaa !11
  switch i8 %i.ko, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i272 [
    i8 44, label %.critedge.i.i.i271
    i8 32, label %.critedge.i.i.i271
    i8 9, label %.critedge.i.i.i271
    i8 13, label %.critedge.i.i.i271
    i8 10, label %.critedge.i.i.i271
  ]

.critedge.i.i.i271:                               ; preds = %.preheader1402, %.preheader1402, %.preheader1402, %.preheader1402, %.preheader1402
  %i.kp = getelementptr inbounds nuw i8, ptr %.60, i64 1
  br label %.preheader1402, !llvm.loop !0

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i272:    ; preds = %.preheader1402
  %i.kq = icmp ne i64 %i.kl, 0                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr null, ptr %i.b, align 8, !tbaa !15
  %i.kr = call double @strtod(ptr noundef nonnull %.60, ptr noundef nonnull %i.b) #12
  %i.ks = load ptr, ptr %i.b, align 8, !tbaa !15  ; 2 uses
  %i.kt = icmp ugt ptr %i.ks, %.60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br i1 %i.kt, label %.preheader1401, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

.preheader1401:                                   ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i272, %.critedge.i.i5.i274
  %.61 = phi ptr [ %i.kv, %.critedge.i.i5.i274 ], [ %i.ks, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i272 ] ; 4 uses
  %i.ku = load i8, ptr %.61, align 1, !tbaa !11
  switch i8 %i.ku, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i275 [
    i8 44, label %.critedge.i.i5.i274
    i8 32, label %.critedge.i.i5.i274
    i8 9, label %.critedge.i.i5.i274
    i8 13, label %.critedge.i.i5.i274
    i8 10, label %.critedge.i.i5.i274
  ]

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
  %i.me = insertelement <2 x double> poison, double %i.lv, i64 0 ; 2 uses
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
  %i.nn = shufflevector <2 x double> %i.mc, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.no = fneg <2 x double> %i.mh                 ; 2 uses
  %i.np = insertelement <2 x double> poison, double %i.nk, i64 0
  %i.nq = insertelement <2 x double> %i.np, double %i.nj, i64 1
  %i.nr = fmul <2 x double> %i.mw, %i.nq
  %i.ns = fmul <2 x double> %i.mh, %i.nr
  %i.nt = shufflevector <2 x double> %i.mw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.nu = fdiv <2 x double> %i.ns, %i.nt          ; 5 uses
  %i.nv = extractelement <2 x double> %i.nu, i64 0
  %i.nw = fneg double %i.nv
  %i.nx = insertelement <2 x double> poison, double %i.nw, i64 0
  %i.ny = shufflevector <2 x double> %i.nx, <2 x double> %i.nu, <2 x i32> <i32 0, i32 2>
  %i.nz = fmul <2 x double> %i.mc, %i.ny
  %i.oa = shufflevector <2 x double> %i.nu, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ob = shufflevector <2 x double> %i.nu, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.oc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nn, <2 x double> %i.ob, <2 x double> %i.nz)
  %i.od = fadd <2 x double> %i.nm, %i.oc          ; 3 uses
  %i.oe = shufflevector <2 x double> %i.no, <2 x double> %i.mh, <2 x i32> <i32 0, i32 2>
  %i.of = fsub <2 x double> %i.oe, %i.oa
  %i.og = shufflevector <2 x double> %i.mw, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.oh = fdiv <2 x double> %i.of, %i.og          ; 4 uses
  %i.oi = extractelement <2 x double> %i.oh, i64 1 ; 4 uses
  %i.oj = fmul double %i.oi, 0.000000e+00
  %i.ok = shufflevector <2 x double> %i.mh, <2 x double> %i.no, <2 x i32> <i32 3, i32 1>
  %i.ol = shufflevector <2 x double> %i.nu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.om = fsub <2 x double> %i.ok, %i.ol
  %i.on = shufflevector <2 x double> %i.mw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.oo = fdiv <2 x double> %i.om, %i.on          ; 4 uses
  %i.op = extractelement <2 x double> %i.oo, i64 1 ; 4 uses
  %i.oq = fcmp ogt double %i.op, %i.oj
  %i.or = fmul <2 x double> %i.oo, %i.oo
  %i.os = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oh, <2 x double> %i.oh, <2 x double> %i.or)
  %i.ot = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.os) ; 3 uses
  %i.ou = extractelement <2 x double> %i.oh, i64 0 ; 2 uses
  %i.ov = fneg double %i.ou
  %i.ow = fmul double %i.op, %i.ov
  %i.ox = extractelement <2 x double> %i.oo, i64 0 ; 2 uses
  %i.oy = call noundef double @llvm.fmuladd.f64(double %i.oi, double %i.ox, double %i.ow)
  %i.oz = fcmp ogt double %i.oy, 0.000000e+00
  %shift = shufflevector <2 x double> %i.ot, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1495 = fmul <2 x double> %shift, %i.ot
  %i.pa = fmul double %i.op, 0.000000e+00
  %13 = fadd double %i.oi, %i.pa
  %14 = fmul double %i.op, %i.ox
  %i.pb = call noundef double @llvm.fmuladd.f64(double %i.oi, double %i.ou, double %14)
  %i.pc = insertelement <2 x double> poison, double %i.pb, i64 0
  %i.pd = insertelement <2 x double> %i.pc, double %13, i64 1
  %i.pe = shufflevector <2 x double> %foldExtExtBinop1495, <2 x double> %i.ot, <2 x i32> <i32 0, i32 3>
  %i.pf = fdiv <2 x double> %i.pd, %i.pe          ; 3 uses
  %i.pg = fcmp olt <2 x double> %i.pf, splat (double -1.000000e+00)
  %i.ph = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.pf)
  %i.pi = fcmp ugt <2 x double> %i.ph, splat (double 1.000000e+00)
  %i.pj = select <2 x i1> %i.pg, <2 x double> splat (double -1.000000e+00), <2 x double> splat (double 1.000000e+00)
  %i.pk = select <2 x i1> %i.pi, <2 x double> %i.pj, <2 x double> %i.pf ; 2 uses
  %i.pl = extractelement <2 x double> %i.pk, i64 1
  %i.pm = call double @acos(double noundef %i.pl) #12 ; 2 uses
  %i.pn = fneg double %i.pm
  %i.po = select i1 %i.oq, double %i.pm, double %i.pn
  %i.pp = extractelement <2 x double> %i.pk, i64 0
  %i.pq = call double @acos(double noundef %i.pp) #12 ; 2 uses
  %i.pr = fneg double %i.pq
  %i.ps = select i1 %i.oz, double %i.pq, double %i.pr ; 5 uses
  %i.pt = fcmp ule double %i.ps, 0.000000e+00
  %or.cond4.not.i = or i1 %i.kq, %i.pt
  br i1 %or.cond4.not.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.pu = fadd double %i.ps, f0xC01921FB54442D18
  br label %bb.ax

bb.av:                                            ; preds = %bb.at
  %i.pv = fcmp olt double %i.ps, 0.000000e+00
  %or.cond6.i = and i1 %i.kq, %i.pv
  br i1 %or.cond6.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.pw = fadd double %i.ps, f0x401921FB54442D18
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au
  %.0185.i = phi double [ %i.pu, %bb.au ], [ %i.pw, %bb.aw ], [ %i.ps, %bb.av ] ; 2 uses
  %i.px = call double @llvm.fabs.f64(double %.0185.i)
  %i.py = fmul double %i.px, f0x3FE45F306DC9C883
  %i.pz = call double @llvm.ceil.f64(double %i.py)
  %i.qa = fptosi double %i.pz to i32              ; 4 uses
  %i.qb = uitofp nneg i32 %i.qa to double
  %i.qc = fdiv double %.0185.i, %i.qb             ; 2 uses
  %i.qd = fmul double %i.qc, 5.000000e-01         ; 2 uses
  %i.qe = call double @sin(double noundef %i.qd) #12
  %i.qf = call double @cos(double noundef %i.qd) #12
  %.not.i = icmp eq i32 %i.qa, 0
  br i1 %.not.i, label %_ZN7msdfgenL17addArcApproximateERNS_7ContourENS_7Vector2ES2_S2_dbb.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.ax
  %i.qg = fmul double %i.qe, f0x3FF5555555555555
  %i.qh = fadd double %i.qf, 1.000000e+00
  %i.qi = fdiv double %i.qg, %i.qh                ; 3 uses
  %i.qj = fneg double %i.qi                       ; 2 uses
  %i.qk = add nsw i32 %i.qa, -1
  %i.ql = insertelement <2 x double> poison, double %i.qj, i64 0
  %i.qm = insertelement <2 x double> %i.ql, double %i.qi, i64 1
  %i.qn = insertelement <2 x double> %i.me, double %i.lw, i64 1 ; 3 uses
  %i.qo = shufflevector <2 x double> %i.qn, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.qp = insertelement <2 x double> poison, double %i.qi, i64 0
  %i.qq = insertelement <2 x double> %i.qp, double %i.qj, i64 1
  %i.qr = extractelement <2 x double> %i.mw, i64 0
  %i.qs = extractelement <2 x double> %i.mw, i64 1
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.ba, %.preheader.lr.ph.i
  %.0186267.i = phi double [ %i.po, %.preheader.lr.ph.i ], [ %i.ra, %bb.ba ] ; 3 uses
  %.0187266.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %i.st, %bb.ba ] ; 2 uses
  %i.qt = phi <2 x double> [ %i.am, %.preheader.lr.ph.i ], [ %i.sj, %bb.ba ] ; 2 uses
  %i.qu = call double @cos(double noundef %.0186267.i) #12
  %i.qv = call double @sin(double noundef %.0186267.i) #12
  %i.qw = insertelement <2 x double> poison, double %i.qv, i64 0
  %i.qx = insertelement <2 x double> %i.qw, double %i.qu, i64 1 ; 2 uses
  %i.qy = shufflevector <2 x double> %i.qx, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.qz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qm, <2 x double> %i.qx, <2 x double> %i.qy) ; 2 uses
  %i.ra = fadd double %i.qc, %.0186267.i          ; 3 uses
  %i.rb = call double @cos(double noundef %i.ra) #12 ; 2 uses
  %i.rc = call double @sin(double noundef %i.ra) #12 ; 2 uses
  %i.rd = insertelement <2 x double> poison, double %i.rc, i64 0
  %i.re = insertelement <2 x double> %i.rd, double %i.rb, i64 1 ; 2 uses
  %i.rf = shufflevector <2 x double> %i.re, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.rg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qq, <2 x double> %i.re, <2 x double> %i.rf) ; 2 uses
  %i.rh = shufflevector <2 x double> %i.qz, <2 x double> %i.rg, <2 x i32> <i32 0, i32 2>
  %i.ri = fmul <2 x double> %i.og, %i.rh          ; 2 uses
  %i.rj = shufflevector <2 x double> %i.ri, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rk = shufflevector <2 x double> %i.qz, <2 x double> %i.rg, <2 x i32> <i32 1, i32 3>
  %i.rl = fmul <2 x double> %i.on, %i.rk          ; 3 uses
  %i.rm = fneg <2 x double> %i.rl                 ; 2 uses
  %i.rn = shufflevector <2 x double> %i.rm, <2 x double> %i.rl, <2 x i32> <i32 2, i32 0>
  %i.ro = fmul <2 x double> %i.qn, %i.rn
  %i.rp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qo, <2 x double> %i.rj, <2 x double> %i.ro)
  %i.rq = shufflevector <2 x double> %i.rp, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.rr = fadd <2 x double> %i.od, %i.rq          ; 2 uses
  %i.rs = shufflevector <2 x double> %i.rm, <2 x double> %i.rl, <2 x i32> <i32 3, i32 1>
  %i.rt = fmul <2 x double> %i.qn, %i.rs
  %i.ru = shufflevector <2 x double> %i.ri, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.rv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qo, <2 x double> %i.ru, <2 x double> %i.rt)
  %i.rw = shufflevector <2 x double> %i.rv, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.rx = fadd <2 x double> %i.od, %i.rw          ; 2 uses
  %i.ry = icmp eq i32 %.0187266.i, %i.qk
  br i1 %i.ry, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.preheader.i
  %i.rz = fmul double %i.qs, %i.rb
  %i.sa = fmul double %i.qr, %i.rc                ; 2 uses
  %i.sb = fneg double %i.sa
  %i.sc = insertelement <2 x double> poison, double %i.sb, i64 0
  %i.sd = insertelement <2 x double> %i.sc, double %i.sa, i64 1
  %i.se = fmul <2 x double> %i.mc, %i.sd
  %i.sf = insertelement <2 x double> poison, double %i.rz, i64 0
  %i.sg = shufflevector <2 x double> %i.sf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nn, <2 x double> %i.sg, <2 x double> %i.se)
  %i.si = fadd <2 x double> %i.od, %i.sh
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.preheader.i
  %i.sj = phi <2 x double> [ %i.si, %bb.ay ], [ %i.lf, %.preheader.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.sk = extractelement <2 x double> %i.sj, i64 0
  %i.sl = extractelement <2 x double> %i.sj, i64 1
  %i.sm = extractelement <2 x double> %i.qt, i64 0
  %i.sn = extractelement <2 x double> %i.qt, i64 1
  %i.so = extractelement <2 x double> %i.rr, i64 0
  %i.sp = extractelement <2 x double> %i.rr, i64 1
  %i.sq = extractelement <2 x double> %i.rx, i64 0
  %i.sr = extractelement <2 x double> %i.rx, i64 1
  %i.ss = call noundef ptr @_ZN7msdfgen11EdgeSegment6createENS_7Vector2ES1_S1_S1_NS_9EdgeColorE(double %i.sm, double %i.sn, double %i.so, double %i.sp, double %i.sq, double %i.sr, double %i.sk, double %i.sl, i32 noundef 7)
  store ptr %i.ss, ptr %4, align 8, !tbaa !38
  invoke void @_ZN7msdfgen7Contour7addEdgeEONS_10EdgeHolderE(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.st = add nuw nsw i32 %.0187266.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.st, %i.qa
  br i1 %exitcond.not.i, label %_ZN7msdfgenL17addArcApproximateERNS_7ContourENS_7Vector2ES2_S2_dbb.exit, label %.preheader.i, !llvm.loop !33

bb.bb:                                            ; preds = %bb.az
  %i.su = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %common.resume

common.resume:                                    ; preds = %bb.j, %bb.n, %bb.r, %bb.v, %bb.ac, %bb.ag, %bb.al, %bb.bj, %bb.aq, %bb.bb
  %common.resume.op = phi { ptr, i32 } [ %i.su, %bb.bb ], [ %i.lr, %bb.aq ], [ %i.ve, %bb.bj ], [ %i.ch, %bb.j ], [ %i.ct, %bb.n ], [ %i.df, %bb.r ], [ %i.eq, %bb.v ], [ %i.fs, %bb.ac ], [ %i.ht, %bb.ag ], [ %i.jn, %bb.al ]
  resume { ptr, i32 } %common.resume.op

_ZN7msdfgenL17addArcApproximateERNS_7ContourENS_7Vector2ES2_S2_dbb.exit: ; preds = %bb.ba, %bb.ax, %bb.ap, %.critedge163, %bb.ak, %bb.af, %bb.ab, %bb.u, %bb.q, %bb.m, %bb.i, %bb.e
  %.3361 = phi i8 [ %i.bi, %bb.e ], [ %.2360743, %bb.i ], [ %.2360743, %bb.m ], [ %.2360743, %bb.q ], [ %.2360743, %bb.u ], [ %.2360743, %bb.ab ], [ %.2360743, %bb.af ], [ %.2360743, %bb.ak ], [ %.2360743, %.critedge163 ], [ %.2360743, %bb.ap ], [ %.2360743, %bb.ax ], [ %.2360743, %bb.ba ] ; 7 uses
  %.3 = phi ptr [ %i.az, %bb.e ], [ %i.bt, %bb.i ], [ %i.cl, %bb.m ], [ %i.cx, %bb.q ], [ %i.dy, %bb.u ], [ %i.fc, %bb.ab ], [ %i.gv, %bb.af ], [ %i.it, %bb.ak ], [ %i.kx, %.critedge163 ], [ %i.kx, %bb.ap ], [ %i.kx, %bb.ax ], [ %i.kx, %bb.ba ]
  %i.sv = phi <2 x double> [ %i.bh, %bb.e ], [ %i.cb, %bb.i ], [ %i.cs, %bb.m ], [ %i.de, %bb.q ], [ %i.eh, %bb.u ], [ %i.fk, %bb.ab ], [ %i.hh, %bb.af ], [ %i.jc, %bb.ak ], [ %i.lf, %.critedge163 ], [ %i.lf, %bb.ap ], [ %i.lf, %bb.ax ], [ %i.lf, %bb.ba ] ; 4 uses
  %i.sw = phi <2 x double> [ %i.bh, %bb.e ], [ %i.an, %bb.i ], [ %i.an, %bb.m ], [ %i.an, %bb.q ], [ %i.an, %bb.u ], [ %i.an, %bb.ab ], [ %i.an, %bb.af ], [ %i.an, %bb.ak ], [ %i.an, %.critedge163 ], [ %i.an, %bb.ap ], [ %i.an, %bb.ax ], [ %i.an, %bb.ba ] ; 2 uses
  %i.sx = phi <2 x double> [ %i.ao, %bb.e ], [ %i.ao, %bb.i ], [ %i.ao, %bb.m ], [ %i.ao, %bb.q ], [ %i.ei, %bb.u ], [ %i.et, %bb.ab ], [ %i.hi, %bb.af ], [ %i.ia, %bb.ak ], [ %i.ao, %.critedge163 ], [ %i.ao, %bb.ap ], [ %i.ao, %bb.ax ], [ %i.ao, %bb.ba ]
  %i.sy = phi <2 x double> [ %i.aq, %bb.e ], [ %i.aq, %bb.i ], [ %i.aq, %bb.m ], [ %i.aq, %bb.q ], [ %i.aq, %bb.u ], [ %i.aq, %bb.ab ], [ %i.hj, %bb.af ], [ %i.jd, %bb.ak ], [ %i.aq, %.critedge163 ], [ %i.aq, %bb.ap ], [ %i.aq, %bb.ax ], [ %i.aq, %bb.ba ]
  %i.sz = and i8 %.3361, -33
  %i.ta = icmp eq i8 %i.sz, 77
  %i.tb = and i1 %.0155745, %i.ta
  br label %bb.bc

bb.bc:                                            ; preds = %.critedge.i.i279, %_ZN7msdfgenL17addArcApproximateERNS_7ContourENS_7Vector2ES2_S2_dbb.exit
  %.64 = phi ptr [ %.3, %_ZN7msdfgenL17addArcApproximateERNS_7ContourENS_7Vector2ES2_S2_dbb.exit ], [ %i.td, %.critedge.i.i279 ] ; 7 uses
  %i.tc = load i8, ptr %.64, align 1, !tbaa !11   ; 7 uses
  switch i8 %i.tc, label %bb.bd [
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
  %i.td = getelementptr inbounds nuw i8, ptr %.64, i64 1
  br label %bb.bc, !llvm.loop !0

bb.bd:                                            ; preds = %bb.bc
  %i.te = add i8 %i.tc, -58
  %or.cond14.i282 = icmp ult i8 %i.te, -10        ; 2 uses
  %spec.select = select i1 %or.cond14.i282, i8 %i.tc, i8 %.3361
  %spec.select439.idx = zext i1 %or.cond14.i282 to i64
  %spec.select439 = getelementptr inbounds nuw i8, ptr %.64, i64 %spec.select439.idx ; 2 uses
  %.pre1059 = load i8, ptr %spec.select439, align 1, !tbaa !11
  br label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283

_ZN7msdfgenL12readNodeTypeERcRPKc.exit283:        ; preds = %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.bd
  %i.tf = phi i8 [ %.pre1059, %bb.bd ], [ %i.tc, %bb.bc ], [ %i.tc, %bb.bc ], [ %i.tc, %bb.bc ], [ %i.tc, %bb.bc ] ; 2 uses
  %.5363 = phi i8 [ %spec.select, %bb.bd ], [ %.3361, %bb.bc ], [ %.3361, %bb.bc ], [ %.3361, %bb.bc ], [ %.3361, %bb.bc ] ; 2 uses
  %.65 = phi ptr [ %spec.select439, %bb.bd ], [ %.64, %bb.bc ], [ %.64, %bb.bc ], [ %.64, %bb.bc ], [ %.64, %bb.bc ] ; 2 uses
  %.not = icmp eq i8 %i.tf, 0
  %i.tg = extractelement <2 x double> %i.sv, i64 0 ; 2 uses
  %i.th = extractelement <2 x double> %i.sv, i64 1 ; 2 uses
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !34

.loopexit.loopexit.split.loop.exit:               ; preds = %bb.d
  %i.ti = extractelement <2 x double> %i.am, i64 0
  %i.tj = extractelement <2 x double> %i.am, i64 1
  br label %.loopexit

end_hunk_0
