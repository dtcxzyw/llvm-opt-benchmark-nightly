Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/import-svg?download=true
inline.NumInlined: 174
inline.NumDeleted: 62
begin_hunk_0_@_ZN7msdfgen21buildShapeFromSvgPathERNS_5ShapeEPKcd:bb.a
  %i.jt = load i8, ptr %.51, align 1, !tbaa !11
  switch i8 %i.jt, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i256 [
    i8 44, label %.critedge.i.i5.i255
    i8 32, label %.critedge.i.i5.i255
    i8 9, label %.critedge.i.i5.i255
    i8 13, label %.critedge.i.i5.i255
    i8 10, label %.critedge.i.i5.i255
  ]

.critedge.i.i5.i255:                              ; preds = %.preheader1406, %.preheader1406, %.preheader1406, %.preheader1406, %.preheader1406
  %i.ju = getelementptr inbounds nuw i8, ptr %.51, i64 1
  br label %.preheader1406, !llvm.loop !0

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i256:   ; preds = %.preheader1406
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store ptr null, ptr %i.f, align 8, !tbaa !15
  %i.jv = call double @strtod(ptr noundef nonnull %.51, ptr noundef nonnull %i.f) #12 ; 3 uses
  %i.jw = load ptr, ptr %i.f, align 8, !tbaa !15  ; 2 uses
  %i.jx = icmp ugt ptr %i.jw, %.51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  br i1 %i.jx, label %.preheader1405, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

.preheader1405:                                   ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i256, %.critedge.i.i260
  %.54 = phi ptr [ %i.jz, %.critedge.i.i260 ], [ %i.jw, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i256 ] ; 4 uses
  %i.jy = load i8, ptr %.54, align 1, !tbaa !11
  switch i8 %i.jy, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i261 [
    i8 44, label %.critedge.i.i260
    i8 32, label %.critedge.i.i260
    i8 9, label %.critedge.i.i260
    i8 13, label %.critedge.i.i260
    i8 10, label %.critedge.i.i260
  ]

.critedge.i.i260:                                 ; preds = %.preheader1405, %.preheader1405, %.preheader1405, %.preheader1405, %.preheader1405
  %i.jz = getelementptr inbounds nuw i8, ptr %.54, i64 1
  br label %.preheader1405, !llvm.loop !0

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i261:      ; preds = %.preheader1405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store ptr null, ptr %i.e, align 8, !tbaa !15
  %i.ka = call double @strtod(ptr noundef nonnull %.54, ptr noundef nonnull %i.e) #12
  %i.kb = load ptr, ptr %i.e, align 8, !tbaa !15  ; 2 uses
  %i.kc = icmp ugt ptr %i.kb, %.54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  br i1 %i.kc, label %.preheader1404, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

.preheader1404:                                   ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i261, %.critedge.i.i264
  %.56 = phi ptr [ %i.ke, %.critedge.i.i264 ], [ %i.kb, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i261 ] ; 4 uses
  %i.kd = load i8, ptr %.56, align 1, !tbaa !11
  switch i8 %i.kd, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i265 [
    i8 44, label %.critedge.i.i264
    i8 32, label %.critedge.i.i264
    i8 9, label %.critedge.i.i264
    i8 13, label %.critedge.i.i264
    i8 10, label %.critedge.i.i264
  ]

.critedge.i.i264:                                 ; preds = %.preheader1404, %.preheader1404, %.preheader1404, %.preheader1404, %.preheader1404
  %i.ke = getelementptr inbounds nuw i8, ptr %.56, i64 1
  br label %.preheader1404, !llvm.loop !0

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i265:      ; preds = %.preheader1404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store ptr null, ptr %i.d, align 8, !tbaa !15
  %i.kf = call i64 @__isoc23_strtol(ptr noundef nonnull %.56, ptr noundef nonnull %i.d, i32 noundef 10) #12
  %i.kg = load ptr, ptr %i.d, align 8, !tbaa !15  ; 2 uses
  %i.kh = icmp ugt ptr %i.kg, %.56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br i1 %i.kh, label %.preheader1403, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

.preheader1403:                                   ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i265, %.critedge.i.i267
  %.58 = phi ptr [ %i.kj, %.critedge.i.i267 ], [ %i.kg, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i265 ] ; 4 uses
  %i.ki = load i8, ptr %.58, align 1, !tbaa !11
  switch i8 %i.ki, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i268 [
    i8 44, label %.critedge.i.i267
    i8 32, label %.critedge.i.i267
    i8 9, label %.critedge.i.i267
    i8 13, label %.critedge.i.i267
    i8 10, label %.critedge.i.i267
  ]

.critedge.i.i267:                                 ; preds = %.preheader1403, %.preheader1403, %.preheader1403, %.preheader1403, %.preheader1403
  %i.kj = getelementptr inbounds nuw i8, ptr %.58, i64 1
  br label %.preheader1403, !llvm.loop !0

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i268:      ; preds = %.preheader1403
  %i.kk = icmp ne i64 %i.kf, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
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
  %13 = shufflevector <2 x double> %i.mc, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.me = insertelement <2 x double> %13, double %i.lz, i64 1
  %i.mf = shufflevector <2 x double> %i.ly, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.me, <2 x double> %i.mf, <2 x double> %i.md) ; 6 uses
  %i.mh = insertelement <2 x double> poison, double %i.jq, i64 0
  %i.mi = insertelement <2 x double> %i.mh, double %i.jv, i64 1 ; 2 uses
  %i.mj = fmul <2 x double> %i.mi, %i.mi          ; 3 uses
  %i.mk = fmul <2 x double> %i.mg, %i.mg          ; 3 uses
  %i.ml = fdiv <2 x double> %i.mk, %i.mj
  %i.mm = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ml) ; 2 uses
  %i.mn = fcmp ogt double %i.mm, 1.000000e+00
  %i.mo = extractelement <2 x double> %i.mj, i64 0
  %i.mp = extractelement <2 x double> %i.mj, i64 1
  br i1 %i.mn, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %sqrt.i = call nnan double @llvm.sqrt.f64(double %i.mm)
  %i.mq = insertelement <2 x double> poison, double %sqrt.i, i64 0
  %i.mr = shufflevector <2 x double> %i.mq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ms = fmul <2 x double> %i.lu, %i.mr          ; 5 uses
  %foldExtExtBinop = fmul <2 x double> %i.ms, %i.ms
  %i.mt = extractelement <2 x double> %foldExtExtBinop, i64 1
  %foldExtExtBinop1493 = fmul <2 x double> %i.ms, %i.ms
  %i.mu = extractelement <2 x double> %foldExtExtBinop1493, i64 0
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.sroa.0140.0.i = phi double [ %i.mt, %bb.as ], [ %i.mo, %bb.ar ] ; 2 uses
  %.sroa.8.0.i = phi double [ %i.mu, %bb.as ], [ %i.mp, %bb.ar ] ; 2 uses
  %i.mv = phi <2 x double> [ %i.ms, %bb.as ], [ %i.lu, %bb.ar ] ; 6 uses
  %i.mw = extractelement <2 x double> %i.mk, i64 0
  %i.mx = fmul double %i.mw, %.sroa.8.0.i
  %i.my = extractelement <2 x double> %i.mk, i64 1
  %i.mz = call double @llvm.fmuladd.f64(double %.sroa.0140.0.i, double %i.my, double %i.mx)
  %i.na = fmul double %.sroa.0140.0.i, %.sroa.8.0.i
  %i.nb = fdiv double %i.na, %i.mz
  %i.nc = fadd double %i.nb, -1.000000e+00        ; 2 uses
  %i.nd = xor i1 %i.kk, %i.kq
  %i.ne = fcmp olt double %i.nc, 0.000000e+00
  %i.nf = select i1 %i.ne, double 0.000000e+00, double %i.nc
  %i.ng = call double @sqrt(double noundef %i.nf) #12 ; 2 uses
  %i.nh = fneg double %i.ng
  %i.ni = select i1 %i.nd, double %i.ng, double %i.nh ; 2 uses
  %i.nj = fneg double %i.ni
  %i.nk = fadd <2 x double> %i.am, %i.lf
  %i.nl = fmul <2 x double> %i.nk, splat (double 5.000000e-01)
  %i.nm = fneg <2 x double> %i.mg                 ; 2 uses
  %i.nn = insertelement <2 x double> poison, double %i.nj, i64 0
  %i.no = insertelement <2 x double> %i.nn, double %i.ni, i64 1
  %i.np = fmul <2 x double> %i.mv, %i.no
  %i.nq = fmul <2 x double> %i.mg, %i.np
  %i.nr = shufflevector <2 x double> %i.mv, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ns = fdiv <2 x double> %i.nq, %i.nr          ; 5 uses
  %i.nt = extractelement <2 x double> %i.ns, i64 0
  %i.nu = fneg double %i.nt
  %i.nv = insertelement <2 x double> poison, double %i.nu, i64 0
  %i.nw = shufflevector <2 x double> %i.nv, <2 x double> %i.ns, <2 x i32> <i32 0, i32 2>
  %i.nx = fmul <2 x double> %i.mc, %i.nw
  %i.ny = shufflevector <2 x double> %i.ns, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.nz = shufflevector <2 x double> %i.ns, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.oa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %13, <2 x double> %i.nz, <2 x double> %i.nx)
  %i.ob = fadd <2 x double> %i.nl, %i.oa          ; 3 uses
  %i.oc = shufflevector <2 x double> %i.nm, <2 x double> %i.mg, <2 x i32> <i32 0, i32 2>
  %i.od = fsub <2 x double> %i.oc, %i.ny
  %i.oe = shufflevector <2 x double> %i.mv, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.of = fdiv <2 x double> %i.od, %i.oe          ; 4 uses
  %i.og = extractelement <2 x double> %i.of, i64 1 ; 4 uses
  %i.oh = fmul double %i.og, 0.000000e+00
  %i.oi = shufflevector <2 x double> %i.mg, <2 x double> %i.nm, <2 x i32> <i32 3, i32 1>
  %i.oj = shufflevector <2 x double> %i.ns, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ok = fsub <2 x double> %i.oi, %i.oj
  %i.ol = shufflevector <2 x double> %i.mv, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.om = fdiv <2 x double> %i.ok, %i.ol          ; 4 uses
  %i.on = extractelement <2 x double> %i.om, i64 1 ; 4 uses
  %i.oo = fcmp ogt double %i.on, %i.oh
  %i.op = fmul <2 x double> %i.om, %i.om
  %i.oq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.of, <2 x double> %i.of, <2 x double> %i.op)
  %i.or = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.oq) ; 3 uses
  %i.os = extractelement <2 x double> %i.of, i64 0 ; 2 uses
  %i.ot = fneg double %i.os
  %i.ou = fmul double %i.on, %i.ot
  %i.ov = extractelement <2 x double> %i.om, i64 0 ; 2 uses
  %i.ow = call noundef double @llvm.fmuladd.f64(double %i.og, double %i.ov, double %i.ou)
  %i.ox = fcmp ogt double %i.ow, 0.000000e+00
  %shift = shufflevector <2 x double> %i.or, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1495 = fmul <2 x double> %shift, %i.or
  %i.oy = fmul double %i.on, 0.000000e+00
  %i.oz = fmul double %i.on, %i.ov
  %i.pa = fadd double %i.og, %i.oy
  %i.pb = call noundef double @llvm.fmuladd.f64(double %i.og, double %i.os, double %i.oz)
  %i.pc = insertelement <2 x double> poison, double %i.pb, i64 0
  %i.pd = insertelement <2 x double> %i.pc, double %i.pa, i64 1
  %i.pe = shufflevector <2 x double> %foldExtExtBinop1495, <2 x double> %i.or, <2 x i32> <i32 0, i32 3>
  %i.pf = fdiv <2 x double> %i.pd, %i.pe          ; 3 uses
  %i.pg = fcmp olt <2 x double> %i.pf, splat (double -1.000000e+00)
  %i.ph = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.pf)
  %i.pi = fcmp ugt <2 x double> %i.ph, splat (double 1.000000e+00)
  %i.pj = select <2 x i1> %i.pg, <2 x double> splat (double -1.000000e+00), <2 x double> splat (double 1.000000e+00)
  %i.pk = select <2 x i1> %i.pi, <2 x double> %i.pj, <2 x double> %i.pf ; 2 uses
  %i.pl = extractelement <2 x double> %i.pk, i64 1
  %i.pm = call double @acos(double noundef %i.pl) #12 ; 2 uses
  %i.pn = fneg double %i.pm
  %i.po = select i1 %i.oo, double %i.pm, double %i.pn
  %i.pp = extractelement <2 x double> %i.pk, i64 0
  %i.pq = call double @acos(double noundef %i.pp) #12 ; 2 uses
  %i.pr = fneg double %i.pq
  %i.ps = select i1 %i.ox, double %i.pq, double %i.pr ; 5 uses
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
  %14 = insertelement <2 x double> poison, double %i.qj, i64 0
  %i.ql = insertelement <2 x double> %14, double %i.qi, i64 1
  %i.qm = insertelement <2 x double> poison, double %i.lv, i64 0
  %i.qn = insertelement <2 x double> %i.qm, double %i.lw, i64 1 ; 3 uses
  %i.qo = shufflevector <2 x double> %i.qn, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.qp = insertelement <2 x double> poison, double %i.qi, i64 0
  %i.qq = insertelement <2 x double> %i.qp, double %i.qj, i64 1
  %i.qr = extractelement <2 x double> %i.mv, i64 0
  %i.qs = extractelement <2 x double> %i.mv, i64 1
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
  %i.qz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ql, <2 x double> %i.qx, <2 x double> %i.qy) ; 2 uses
  %i.ra = fadd double %i.qc, %.0186267.i          ; 3 uses
  %i.rb = call double @cos(double noundef %i.ra) #12 ; 2 uses
  %i.rc = call double @sin(double noundef %i.ra) #12 ; 2 uses
  %i.rd = insertelement <2 x double> poison, double %i.rc, i64 0
  %i.re = insertelement <2 x double> %i.rd, double %i.rb, i64 1 ; 2 uses
  %i.rf = shufflevector <2 x double> %i.re, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.rg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qq, <2 x double> %i.re, <2 x double> %i.rf) ; 2 uses
  %i.rh = shufflevector <2 x double> %i.qz, <2 x double> %i.rg, <2 x i32> <i32 0, i32 2>
  %i.ri = fmul <2 x double> %i.oe, %i.rh          ; 2 uses
  %i.rj = shufflevector <2 x double> %i.ri, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rk = shufflevector <2 x double> %i.qz, <2 x double> %i.rg, <2 x i32> <i32 1, i32 3>
  %i.rl = fmul <2 x double> %i.ol, %i.rk          ; 3 uses
  %i.rm = fneg <2 x double> %i.rl                 ; 2 uses
  %i.rn = shufflevector <2 x double> %i.rm, <2 x double> %i.rl, <2 x i32> <i32 2, i32 0>
  %i.ro = fmul <2 x double> %i.qn, %i.rn
  %i.rp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qo, <2 x double> %i.rj, <2 x double> %i.ro)
  %i.rq = shufflevector <2 x double> %i.rp, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.rr = fadd <2 x double> %i.ob, %i.rq          ; 2 uses
  %i.rs = shufflevector <2 x double> %i.rm, <2 x double> %i.rl, <2 x i32> <i32 3, i32 1>
  %i.rt = fmul <2 x double> %i.qn, %i.rs
  %i.ru = shufflevector <2 x double> %i.ri, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.rv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qo, <2 x double> %i.ru, <2 x double> %i.rt)
  %i.rw = shufflevector <2 x double> %i.rv, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.rx = fadd <2 x double> %i.ob, %i.rw          ; 2 uses
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
  %i.sh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %13, <2 x double> %i.sg, <2 x double> %i.se)
  %i.si = fadd <2 x double> %i.ob, %i.sh
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

.loopexit:                                        ; preds = %.loopexit.loopexit.split.loop.exit, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283, %.critedge, %bb.f
  %.sroa.28.1735 = phi double [ %i.bk, %bb.f ], [ %.sroa.28.0, %.critedge ], [ %i.tj, %.loopexit.loopexit.split.loop.exit ], [ %i.th, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283 ] ; 2 uses
  %.sroa.0314.1694 = phi double [ %i.bj, %bb.f ], [ %.sroa.0314.0, %.critedge ], [ %i.ti, %.loopexit.loopexit.split.loop.exit ], [ %i.tg, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283 ] ; 2 uses
  %.2360571 = phi i8 [ %.2360743, %bb.f ], [ %.1359, %.critedge ], [ %.2360743, %.loopexit.loopexit.split.loop.exit ], [ %.5363, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283 ]
  %.2530 = phi ptr [ %.2744, %bb.f ], [ %.1, %.critedge ], [ %.2744, %.loopexit.loopexit.split.loop.exit ], [ %.65, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283 ]
  %.1153 = phi i1 [ false, %bb.f ], [ false, %.critedge ], [ true, %.loopexit.loopexit.split.loop.exit ], [ false, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283 ]
  %i.tk = phi <2 x double> [ %i.an, %bb.f ], [ zeroinitializer, %.critedge ], [ %i.an, %.loopexit.loopexit.split.loop.exit ], [ %i.sw, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283 ] ; 3 uses
  %i.tl = extractelement <2 x double> %i.tk, i64 1 ; 3 uses
  %i.tm = extractelement <2 x double> %i.tk, i64 0 ; 3 uses
  %i.tn = load ptr, ptr %i.aj, align 8, !tbaa !39
  %i.to = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !39 ; 2 uses
  %i.tq = icmp eq ptr %i.tn, %i.tp
  br i1 %i.tq, label %.backedge, label %bb.be

bb.be:                                            ; preds = %.loopexit
  %i.tr = fcmp une double %.sroa.0314.1694, %i.tm
  %i.ts = fcmp une double %.sroa.28.1735, %i.tl
  %i.tt = select i1 %i.tr, i1 true, i1 %i.ts
  br i1 %i.tt, label %bb.bf, label %.backedge

bb.bf:                                            ; preds = %bb.be
  %i.tu = getelementptr inbounds i8, ptr %i.tp, i64 -8
  %i.tv = call noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.tu) ; 2 uses
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !41
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 40
  %i.ty = load ptr, ptr %i.tx, align 8
  %i.tz = call { double, double } %i.ty(ptr noundef nonnull align 8 dereferenceable(12) %i.tv, double noundef 1.000000e+00) ; 2 uses
  %i.ua = extractvalue { double, double } %i.tz, 0
  %i.ub = extractvalue { double, double } %i.tz, 1
  %i.uc = load ptr, ptr %i.aj, align 8, !tbaa !18
  %i.ud = call noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.uc) ; 2 uses
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !41
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 40
  %i.ug = load ptr, ptr %i.uf, align 8
  %i.uh = call { double, double } %i.ug(ptr noundef nonnull align 8 dereferenceable(12) %i.ud, double noundef 0.000000e+00) ; 2 uses
  %i.ui = extractvalue { double, double } %i.uh, 0
  %i.uj = extractvalue { double, double } %i.uh, 1
  %i.uk = fsub double %i.ua, %i.ui                ; 2 uses
  %i.ul = fsub double %i.ub, %i.uj                ; 2 uses
  %i.um = fmul double %i.ul, %i.ul
  %i.un = call double @llvm.fmuladd.f64(double %i.uk, double %i.uk, double %i.um)
  %sqrt.i286 = call noundef double @llvm.sqrt.f64(double %i.un)
  %i.uo = fcmp olt double %sqrt.i286, %2
  br i1 %i.uo, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.up = load ptr, ptr %i.to, align 8, !tbaa !39
  %i.uq = getelementptr inbounds i8, ptr %i.up, i64 -8
  %i.ur = call noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.uq) ; 2 uses
  %i.us = load ptr, ptr %i.aj, align 8, !tbaa !18
  %i.ut = call noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.us) ; 2 uses
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !41
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 40
  %i.uw = load ptr, ptr %i.uv, align 8
  %i.ux = call { double, double } %i.uw(ptr noundef nonnull align 8 dereferenceable(12) %i.ut, double noundef 0.000000e+00) ; 2 uses
  %i.uy = extractvalue { double, double } %i.ux, 0
  %i.uz = extractvalue { double, double } %i.ux, 1
  %i.va = load ptr, ptr %i.ur, align 8, !tbaa !41
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 112
  %i.vc = load ptr, ptr %i.vb, align 8
  call void %i.vc(ptr noundef nonnull align 8 dereferenceable(12) %i.ur, double %i.uy, double %i.uz)
  br label %.backedge

.backedge:                                        ; preds = %bb.bg, %bb.bi, %bb.be, %.loopexit
  br label %bb.b, !llvm.loop !35

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.vd = call noundef ptr @_ZN7msdfgen11EdgeSegment6createENS_7Vector2ES1_NS_9EdgeColorE(double %.sroa.0314.1694, double %.sroa.28.1735, double %i.tm, double %i.tl, i32 noundef 7)
  store ptr %i.vd, ptr %12, align 8, !tbaa !38
  invoke void @_ZN7msdfgen7Contour7addEdgeEONS_10EdgeHolderE(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.bi unwind label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  br label %.backedge

bb.bj:                                            ; preds = %bb.bh
  %i.ve = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  br label %common.resume

_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread:    ; preds = %bb.c, %bb.f, %.preheader441, %.preheader441, %.preheader441, %.preheader441, %.lr.ph, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i275, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i272, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i268, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i265, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i261, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i256, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i253, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i248, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i245, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i240, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i237, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i228, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i225, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i220, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i217, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i212, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i209, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i204, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i201, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i194, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i191, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i186, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i183, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i179, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i176, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i171, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i168, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i
  %.5 = phi i1 [ true, %.preheader441 ], [ false, %.lr.ph ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i168 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i171 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i176 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i179 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i183 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i186 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i191 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i194 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i201 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i204 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i209 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i212 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i217 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i220 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i225 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i228 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i237 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i240 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i245 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i248 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i253 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i256 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i261 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i265 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i268 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i272 ], [ false, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i275 ], [ true, %.preheader441 ], [ true, %.preheader441 ], [ true, %.preheader441 ], [ true, %bb.c ], [ false, %bb.f ]
  ret i1 %.5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN7msdfgen5Shape10addContourEv(ptr noundef nonnull align 8 dereferenceable(25)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN7msdfgen7Contour7addEdgeEONS_10EdgeHolderE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

end_hunk_0
