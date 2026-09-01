Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/import-svg?download=true
inline.NumInlined: 174
inline.NumDeleted: 62
begin_hunk_0_@_ZN7msdfgen21buildShapeFromSvgPathERNS_5ShapeEPKcd:bb.a

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i253:    ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store ptr null, ptr %i.g, align 8, !tbaa !11
  %i.jq = call double @strtod(ptr noundef nonnull %.50, ptr noundef nonnull %i.g) #12 ; 3 uses
  %i.jr = load ptr, ptr %i.g, align 8, !tbaa !11  ; 2 uses
  %i.js = icmp ugt ptr %i.jr, %.50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  br i1 %i.js, label %.preheader1406, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

.preheader1406:                                   ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i253, %.critedge.i.i5.i255
  %.51 = phi ptr [ %i.ju, %.critedge.i.i5.i255 ], [ %i.jr, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i253 ] ; 4 uses
  %i.jt = load i8, ptr %.51, align 1, !tbaa !8
  switch i8 %i.jt, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i256 [
    i8 44, label %.critedge.i.i5.i255
    i8 32, label %.critedge.i.i5.i255
    i8 9, label %.critedge.i.i5.i255
    i8 13, label %.critedge.i.i5.i255
    i8 10, label %.critedge.i.i5.i255
  ]

.critedge.i.i5.i255:                              ; preds = %.preheader1406, %.preheader1406, %.preheader1406, %.preheader1406, %.preheader1406
  %i.ju = getelementptr inbounds nuw i8, ptr %.51, i64 1
  br label %.preheader1406, !llvm.loop !9

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i256:   ; preds = %.preheader1406
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store ptr null, ptr %i.f, align 8, !tbaa !11
  %i.jv = call double @strtod(ptr noundef nonnull %.51, ptr noundef nonnull %i.f) #12 ; 3 uses
  %i.jw = load ptr, ptr %i.f, align 8, !tbaa !11  ; 2 uses
  %i.jx = icmp ugt ptr %i.jw, %.51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  br i1 %i.jx, label %.preheader1405, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

.preheader1405:                                   ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i256, %.critedge.i.i260
  %.54 = phi ptr [ %i.jz, %.critedge.i.i260 ], [ %i.jw, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i256 ] ; 4 uses
  %i.jy = load i8, ptr %.54, align 1, !tbaa !8
  switch i8 %i.jy, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i261 [
    i8 44, label %.critedge.i.i260
    i8 32, label %.critedge.i.i260
    i8 9, label %.critedge.i.i260
    i8 13, label %.critedge.i.i260
    i8 10, label %.critedge.i.i260
  ]

.critedge.i.i260:                                 ; preds = %.preheader1405, %.preheader1405, %.preheader1405, %.preheader1405, %.preheader1405
  %i.jz = getelementptr inbounds nuw i8, ptr %.54, i64 1
  br label %.preheader1405, !llvm.loop !9

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i261:      ; preds = %.preheader1405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store ptr null, ptr %i.e, align 8, !tbaa !11
  %i.ka = call double @strtod(ptr noundef nonnull %.54, ptr noundef nonnull %i.e) #12
  %i.kb = load ptr, ptr %i.e, align 8, !tbaa !11  ; 2 uses
  %i.kc = icmp ugt ptr %i.kb, %.54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  br i1 %i.kc, label %.preheader1404, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

.preheader1404:                                   ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i261, %.critedge.i.i264
  %.56 = phi ptr [ %i.ke, %.critedge.i.i264 ], [ %i.kb, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i261 ] ; 4 uses
  %i.kd = load i8, ptr %.56, align 1, !tbaa !8
  switch i8 %i.kd, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i265 [
    i8 44, label %.critedge.i.i264
    i8 32, label %.critedge.i.i264
    i8 9, label %.critedge.i.i264
    i8 13, label %.critedge.i.i264
    i8 10, label %.critedge.i.i264
  ]

.critedge.i.i264:                                 ; preds = %.preheader1404, %.preheader1404, %.preheader1404, %.preheader1404, %.preheader1404
  %i.ke = getelementptr inbounds nuw i8, ptr %.56, i64 1
  br label %.preheader1404, !llvm.loop !9

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i265:      ; preds = %.preheader1404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store ptr null, ptr %i.d, align 8, !tbaa !11
  %i.kf = call i64 @__isoc23_strtol(ptr noundef nonnull %.56, ptr noundef nonnull %i.d, i32 noundef 10) #12
  %i.kg = load ptr, ptr %i.d, align 8, !tbaa !11  ; 2 uses
  %i.kh = icmp ugt ptr %i.kg, %.56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br i1 %i.kh, label %.preheader1403, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

.preheader1403:                                   ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i265, %.critedge.i.i267
  %.58 = phi ptr [ %i.kj, %.critedge.i.i267 ], [ %i.kg, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i265 ] ; 4 uses
  %i.ki = load i8, ptr %.58, align 1, !tbaa !8
  switch i8 %i.ki, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i268 [
    i8 44, label %.critedge.i.i267
    i8 32, label %.critedge.i.i267
    i8 9, label %.critedge.i.i267
    i8 13, label %.critedge.i.i267
    i8 10, label %.critedge.i.i267
  ]

.critedge.i.i267:                                 ; preds = %.preheader1403, %.preheader1403, %.preheader1403, %.preheader1403, %.preheader1403
  %i.kj = getelementptr inbounds nuw i8, ptr %.58, i64 1
  br label %.preheader1403, !llvm.loop !9

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i268:      ; preds = %.preheader1403
  %i.kk = icmp ne i64 %i.kf, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store ptr null, ptr %i.c, align 8, !tbaa !11
  %i.kl = call i64 @__isoc23_strtol(ptr noundef nonnull %.58, ptr noundef nonnull %i.c, i32 noundef 10) #12
  %i.km = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.kn = icmp ugt ptr %i.km, %.58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br i1 %i.kn, label %.preheader1402, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

.preheader1402:                                   ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i268, %.critedge.i.i.i271
  %.60 = phi ptr [ %i.kp, %.critedge.i.i.i271 ], [ %i.km, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i268 ] ; 4 uses
  %i.ko = load i8, ptr %.60, align 1, !tbaa !8
  switch i8 %i.ko, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i272 [
    i8 44, label %.critedge.i.i.i271
    i8 32, label %.critedge.i.i.i271
    i8 9, label %.critedge.i.i.i271
    i8 13, label %.critedge.i.i.i271
    i8 10, label %.critedge.i.i.i271
  ]

.critedge.i.i.i271:                               ; preds = %.preheader1402, %.preheader1402, %.preheader1402, %.preheader1402, %.preheader1402
  %i.kp = getelementptr inbounds nuw i8, ptr %.60, i64 1
  br label %.preheader1402, !llvm.loop !9

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i272:    ; preds = %.preheader1402
  %i.kq = icmp ne i64 %i.kl, 0                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr null, ptr %i.b, align 8, !tbaa !11
  %i.kr = call double @strtod(ptr noundef nonnull %.60, ptr noundef nonnull %i.b) #12
  %i.ks = load ptr, ptr %i.b, align 8, !tbaa !11  ; 2 uses
  %i.kt = icmp ugt ptr %i.ks, %.60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br i1 %i.kt, label %.preheader1401, label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit.thread

.preheader1401:                                   ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i272, %.critedge.i.i5.i274
  %.61 = phi ptr [ %i.kv, %.critedge.i.i5.i274 ], [ %i.ks, %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i.i272 ] ; 4 uses
  %i.ku = load i8, ptr %.61, align 1, !tbaa !8
  switch i8 %i.ku, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i275 [
    i8 44, label %.critedge.i.i5.i274
    i8 32, label %.critedge.i.i5.i274
    i8 9, label %.critedge.i.i5.i274
    i8 13, label %.critedge.i.i5.i274
    i8 10, label %.critedge.i.i5.i274
  ]

.critedge.i.i5.i274:                              ; preds = %.preheader1401, %.preheader1401, %.preheader1401, %.preheader1401, %.preheader1401
  %i.kv = getelementptr inbounds nuw i8, ptr %.61, i64 1
  br label %.preheader1401, !llvm.loop !9

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i6.i275:   ; preds = %.preheader1401
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !11
  %i.kw = call double @strtod(ptr noundef nonnull %.61, ptr noundef nonnull %i.a) #12
  %i.kx = load ptr, ptr %i.a, align 8, !tbaa !11  ; 5 uses
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
  store ptr %i.lq, ptr %3, align 8, !tbaa !14
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
  %13 = insertelement <2 x double> poison, double %i.jv, i64 0
  %14 = insertelement <2 x double> %13, double %i.jq, i64 1
  %15 = call <2 x double> @llvm.fabs.v2f64(<2 x double> %14) ; 2 uses
  %i.ls = call double @cos(double noundef %i.lg) #12 ; 2 uses
  %i.lt = call double @sin(double noundef %i.lg) #12 ; 3 uses
  %i.lu = fsub <2 x double> %i.am, %i.lf
  %i.lv = fmul <2 x double> %i.lu, splat (double 5.000000e-01) ; 2 uses
  %i.lw = fneg double %i.lt
  %16 = shufflevector <2 x double> %i.lv, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.lx = insertelement <2 x double> poison, double %i.lt, i64 0
  %17 = insertelement <2 x double> %i.lx, double %i.ls, i64 1 ; 4 uses
  %18 = fmul <2 x double> %16, %17
  %19 = shufflevector <2 x double> %17, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.ly = insertelement <2 x double> %19, double %i.lw, i64 1
  %20 = shufflevector <2 x double> %i.lv, <2 x double> poison, <2 x i32> zeroinitializer
  %21 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ly, <2 x double> %20, <2 x double> %18) ; 6 uses
  %i.lz = insertelement <2 x double> poison, double %i.jq, i64 0
  %22 = insertelement <2 x double> %i.lz, double %i.jv, i64 1 ; 2 uses
  %23 = fmul <2 x double> %22, %22                ; 3 uses
  %i.ma = fmul <2 x double> %21, %21              ; 3 uses
  %i.mb = fdiv <2 x double> %i.ma, %23            ; 2 uses
  %shift = shufflevector <2 x double> %i.mb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %shift, %i.mb
  %i.mc = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.md = fcmp ogt double %i.mc, 1.000000e+00
  %i.me = extractelement <2 x double> %23, i64 0
  %i.mf = extractelement <2 x double> %23, i64 1
  br i1 %i.md, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %sqrt.i = call nnan double @llvm.sqrt.f64(double %i.mc)
  %24 = insertelement <2 x double> poison, double %sqrt.i, i64 0
  %25 = shufflevector <2 x double> %24, <2 x double> poison, <2 x i32> zeroinitializer
  %26 = fmul <2 x double> %15, %25                ; 5 uses
  %foldExtExtBinop1493 = fmul <2 x double> %26, %26
  %27 = extractelement <2 x double> %foldExtExtBinop1493, i64 1
  %foldExtExtBinop1495 = fmul <2 x double> %26, %26
  %28 = extractelement <2 x double> %foldExtExtBinop1495, i64 0
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.sroa.0140.0.i.a = phi double [ %27, %bb.as ], [ %i.me, %bb.ar ] ; 2 uses
  %.sroa.8.0.i.a = phi double [ %28, %bb.as ], [ %i.mf, %bb.ar ] ; 2 uses
  %29 = phi <2 x double> [ %26, %bb.as ], [ %15, %bb.ar ] ; 6 uses
  %i.mg = extractelement <2 x double> %i.ma, i64 0
  %i.mh = fmul double %i.mg, %.sroa.8.0.i.a
  %i.mi = extractelement <2 x double> %i.ma, i64 1
  %i.mj = call double @llvm.fmuladd.f64(double %.sroa.0140.0.i.a, double %i.mi, double %i.mh)
  %i.mk = fmul double %.sroa.0140.0.i.a, %.sroa.8.0.i.a
  %i.ml = fdiv double %i.mk, %i.mj
  %i.mm = fadd double %i.ml, -1.000000e+00        ; 2 uses
  %i.mn = xor i1 %i.kk, %i.kq
  %i.mo = fcmp olt double %i.mm, 0.000000e+00
  %i.mp = select i1 %i.mo, double 0.000000e+00, double %i.mm
  %i.mq = call double @sqrt(double noundef %i.mp) #12 ; 2 uses
  %i.mr = fneg double %i.mq
  %i.ms = select i1 %i.mn, double %i.mq, double %i.mr ; 2 uses
  %30 = fneg double %i.ms
  %31 = fadd <2 x double> %i.am, %i.lf
  %32 = fmul <2 x double> %31, splat (double 5.000000e-01)
  %33 = fneg <2 x double> %21                     ; 2 uses
  %34 = insertelement <2 x double> poison, double %30, i64 0
  %35 = insertelement <2 x double> %34, double %i.ms, i64 1
  %36 = fmul <2 x double> %29, %35
  %37 = fmul <2 x double> %21, %36
  %38 = shufflevector <2 x double> %29, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %39 = fdiv <2 x double> %37, %38                ; 5 uses
  %40 = extractelement <2 x double> %39, i64 0
  %41 = fneg double %40
  %i.mt = insertelement <2 x double> poison, double %41, i64 0
  %42 = shufflevector <2 x double> %i.mt, <2 x double> %39, <2 x i32> <i32 0, i32 2>
  %i.mu = fmul <2 x double> %17, %42
  %43 = shufflevector <2 x double> %39, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %44 = shufflevector <2 x double> %39, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.mv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %19, <2 x double> %44, <2 x double> %i.mu)
  %i.mw = fadd <2 x double> %32, %i.mv            ; 3 uses
  %45 = shufflevector <2 x double> %33, <2 x double> %21, <2 x i32> <i32 0, i32 2>
  %i.mx = fsub <2 x double> %45, %43
  %46 = shufflevector <2 x double> %29, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.my = fdiv <2 x double> %i.mx, %46            ; 4 uses
  %i.mz = extractelement <2 x double> %i.my, i64 1 ; 4 uses
  %i.na = fmul double %i.mz, 0.000000e+00
  %47 = shufflevector <2 x double> %21, <2 x double> %33, <2 x i32> <i32 3, i32 1>
  %i.nb = shufflevector <2 x double> %39, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nc = fsub <2 x double> %47, %i.nb
  %i.nd = shufflevector <2 x double> %29, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ne = fdiv <2 x double> %i.nc, %i.nd          ; 4 uses
  %i.nf = extractelement <2 x double> %i.ne, i64 1 ; 4 uses
  %i.ng = fcmp ogt double %i.nf, %i.na
  %i.nh = fmul <2 x double> %i.ne, %i.ne
  %i.ni = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.my, <2 x double> %i.my, <2 x double> %i.nh)
  %i.nj = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ni) ; 3 uses
  %i.nk = extractelement <2 x double> %i.my, i64 0 ; 2 uses
  %i.nl = fneg double %i.nk
  %i.nm = fmul double %i.nf, %i.nl
  %i.nn = extractelement <2 x double> %i.ne, i64 0 ; 2 uses
  %i.no = call noundef double @llvm.fmuladd.f64(double %i.mz, double %i.nn, double %i.nm)
  %i.np = fcmp ogt double %i.no, 0.000000e+00
  %shift1497 = shufflevector <2 x double> %i.nj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1498 = fmul <2 x double> %shift1497, %i.nj
  %i.nq = fmul double %i.nf, 0.000000e+00
  %i.nr = fmul double %i.nf, %i.nn
  %i.ns = fadd double %i.mz, %i.nq
  %i.nt = call noundef double @llvm.fmuladd.f64(double %i.mz, double %i.nk, double %i.nr)
  %i.nu = insertelement <2 x double> poison, double %i.nt, i64 0
  %i.nv = insertelement <2 x double> %i.nu, double %i.ns, i64 1
  %48 = shufflevector <2 x double> %foldExtExtBinop1498, <2 x double> %i.nj, <2 x i32> <i32 0, i32 3>
  %i.nw = fdiv <2 x double> %i.nv, %48            ; 3 uses
  %i.nx = fcmp olt <2 x double> %i.nw, splat (double -1.000000e+00)
  %i.ny = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.nw)
  %i.nz = fcmp ugt <2 x double> %i.ny, splat (double 1.000000e+00)
  %i.oa = select <2 x i1> %i.nx, <2 x double> splat (double -1.000000e+00), <2 x double> splat (double 1.000000e+00)
  %i.ob = select <2 x i1> %i.nz, <2 x double> %i.oa, <2 x double> %i.nw ; 2 uses
  %i.oc = extractelement <2 x double> %i.ob, i64 1
  %i.od = call double @acos(double noundef %i.oc) #12 ; 2 uses
  %i.oe = fneg double %i.od
  %i.of = select i1 %i.ng, double %i.od, double %i.oe
  %i.og = extractelement <2 x double> %i.ob, i64 0
  %i.oh = call double @acos(double noundef %i.og) #12 ; 2 uses
  %i.oi = fneg double %i.oh
  %i.oj = select i1 %i.np, double %i.oh, double %i.oi ; 5 uses
  %i.ok = fcmp ule double %i.oj, 0.000000e+00
  %or.cond4.not.i = or i1 %i.kq, %i.ok
  br i1 %or.cond4.not.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ol = fadd double %i.oj, f0xC01921FB54442D18
  br label %bb.ax

bb.av:                                            ; preds = %bb.at
  %i.om = fcmp olt double %i.oj, 0.000000e+00
  %or.cond6.i = and i1 %i.kq, %i.om
  br i1 %or.cond6.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.on = fadd double %i.oj, f0x401921FB54442D18
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au
  %.0185.i = phi double [ %i.ol, %bb.au ], [ %i.on, %bb.aw ], [ %i.oj, %bb.av ] ; 2 uses
  %i.oo = call double @llvm.fabs.f64(double %.0185.i)
  %i.op = fmul double %i.oo, f0x3FE45F306DC9C883
  %i.oq = call double @llvm.ceil.f64(double %i.op)
  %i.or = fptosi double %i.oq to i32              ; 4 uses
  %i.os = sitofp i32 %i.or to double
  %i.ot = fdiv double %.0185.i, %i.os             ; 2 uses
  %i.ou = fmul double %i.ot, 5.000000e-01         ; 2 uses
  %i.ov = call double @sin(double noundef %i.ou) #12
  %i.ow = call double @cos(double noundef %i.ou) #12
  %i.ox = icmp sgt i32 %i.or, 0
  br i1 %i.ox, label %.preheader.lr.ph.i, label %_ZN7msdfgenL17addArcApproximateERNS_7ContourENS_7Vector2ES2_S2_dbb.exit

.preheader.lr.ph.i:                               ; preds = %bb.ax
  %i.oy = fmul double %i.ov, f0x3FF5555555555555
  %i.oz = fadd double %i.ow, 1.000000e+00
  %i.pa = fdiv double %i.oy, %i.oz                ; 3 uses
  %i.pb = fneg double %i.pa                       ; 2 uses
  %i.pc = add nsw i32 %i.or, -1
  %49 = insertelement <2 x double> poison, double %i.pb, i64 0
  %50 = insertelement <2 x double> %49, double %i.pa, i64 1
  %i.pd = insertelement <2 x double> poison, double %i.ls, i64 0
  %i.pe = insertelement <2 x double> %i.pd, double %i.lt, i64 1 ; 3 uses
  %51 = shufflevector <2 x double> %i.pe, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.pf = insertelement <2 x double> poison, double %i.pa, i64 0
  %i.pg = insertelement <2 x double> %i.pf, double %i.pb, i64 1
  %52 = extractelement <2 x double> %29, i64 0
  %53 = extractelement <2 x double> %29, i64 1
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.ba, %.preheader.lr.ph.i
  %.0186267.i = phi double [ %i.of, %.preheader.lr.ph.i ], [ %i.po, %bb.ba ] ; 3 uses
  %.0187266.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %i.rd, %bb.ba ] ; 2 uses
  %i.ph = phi <2 x double> [ %i.am, %.preheader.lr.ph.i ], [ %i.qt, %bb.ba ] ; 2 uses
  %i.pi = call double @cos(double noundef %.0186267.i) #12
  %i.pj = call double @sin(double noundef %.0186267.i) #12
  %i.pk = insertelement <2 x double> poison, double %i.pj, i64 0
  %i.pl = insertelement <2 x double> %i.pk, double %i.pi, i64 1 ; 2 uses
  %i.pm = shufflevector <2 x double> %i.pl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.pn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %50, <2 x double> %i.pl, <2 x double> %i.pm) ; 2 uses
  %i.po = fadd double %i.ot, %.0186267.i          ; 3 uses
  %i.pp = call double @cos(double noundef %i.po) #12 ; 2 uses
  %i.pq = call double @sin(double noundef %i.po) #12 ; 2 uses
  %i.pr = insertelement <2 x double> poison, double %i.pq, i64 0
  %i.ps = insertelement <2 x double> %i.pr, double %i.pp, i64 1 ; 2 uses
  %i.pt = shufflevector <2 x double> %i.ps, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.pu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pg, <2 x double> %i.ps, <2 x double> %i.pt) ; 2 uses
  %54 = shufflevector <2 x double> %i.pn, <2 x double> %i.pu, <2 x i32> <i32 0, i32 2>
  %55 = fmul <2 x double> %46, %54                ; 2 uses
  %56 = shufflevector <2 x double> %55, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pv = shufflevector <2 x double> %i.pn, <2 x double> %i.pu, <2 x i32> <i32 1, i32 3>
  %i.pw = fmul <2 x double> %i.nd, %i.pv          ; 3 uses
  %i.px = fneg <2 x double> %i.pw                 ; 2 uses
  %i.py = shufflevector <2 x double> %i.px, <2 x double> %i.pw, <2 x i32> <i32 2, i32 0>
  %i.pz = fmul <2 x double> %i.pe, %i.py
  %i.qa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %51, <2 x double> %56, <2 x double> %i.pz)
  %i.qb = shufflevector <2 x double> %i.qa, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.qc = fadd <2 x double> %i.mw, %i.qb          ; 2 uses
  %i.qd = shufflevector <2 x double> %i.px, <2 x double> %i.pw, <2 x i32> <i32 3, i32 1>
  %i.qe = fmul <2 x double> %i.pe, %i.qd
  %57 = shufflevector <2 x double> %55, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %51, <2 x double> %57, <2 x double> %i.qe)
  %i.qg = shufflevector <2 x double> %i.qf, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.qh = fadd <2 x double> %i.mw, %i.qg          ; 2 uses
  %i.qi = icmp eq i32 %.0187266.i, %i.pc
  br i1 %i.qi, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.preheader.i
  %i.qj = fmul double %53, %i.pp
  %i.qk = fmul double %52, %i.pq                  ; 2 uses
  %i.ql = fneg double %i.qk
  %i.qm = insertelement <2 x double> poison, double %i.ql, i64 0
  %i.qn = insertelement <2 x double> %i.qm, double %i.qk, i64 1
  %i.qo = fmul <2 x double> %17, %i.qn
  %i.qp = insertelement <2 x double> poison, double %i.qj, i64 0
  %i.qq = shufflevector <2 x double> %i.qp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %19, <2 x double> %i.qq, <2 x double> %i.qo)
  %i.qs = fadd <2 x double> %i.mw, %i.qr
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.preheader.i
  %i.qt = phi <2 x double> [ %i.qs, %bb.ay ], [ %i.lf, %.preheader.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.qu = extractelement <2 x double> %i.qt, i64 0
  %i.qv = extractelement <2 x double> %i.qt, i64 1
  %i.qw = extractelement <2 x double> %i.ph, i64 0
  %i.qx = extractelement <2 x double> %i.ph, i64 1
  %i.qy = extractelement <2 x double> %i.qc, i64 0
  %i.qz = extractelement <2 x double> %i.qc, i64 1
  %i.ra = extractelement <2 x double> %i.qh, i64 0
  %i.rb = extractelement <2 x double> %i.qh, i64 1
  %i.rc = call noundef ptr @_ZN7msdfgen11EdgeSegment6createENS_7Vector2ES1_S1_S1_NS_9EdgeColorE(double %i.qw, double %i.qx, double %i.qy, double %i.qz, double %i.ra, double %i.rb, double %i.qu, double %i.qv, i32 noundef 7)
  store ptr %i.rc, ptr %4, align 8, !tbaa !14
  invoke void @_ZN7msdfgen7Contour7addEdgeEONS_10EdgeHolderE(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.rd = add nuw nsw i32 %.0187266.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.rd, %i.or
  br i1 %exitcond.not.i, label %_ZN7msdfgenL17addArcApproximateERNS_7ContourENS_7Vector2ES2_S2_dbb.exit, label %.preheader.i, !llvm.loop !17

bb.bb:                                            ; preds = %bb.az
  %i.re = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %common.resume

common.resume:                                    ; preds = %bb.j, %bb.n, %bb.r, %bb.v, %bb.ac, %bb.ag, %bb.al, %bb.bj, %bb.aq, %bb.bb
  %common.resume.op = phi { ptr, i32 } [ %i.re, %bb.bb ], [ %i.lr, %bb.aq ], [ %i.to, %bb.bj ], [ %i.ch, %bb.j ], [ %i.ct, %bb.n ], [ %i.df, %bb.r ], [ %i.eq, %bb.v ], [ %i.fs, %bb.ac ], [ %i.ht, %bb.ag ], [ %i.jn, %bb.al ]
  resume { ptr, i32 } %common.resume.op

_ZN7msdfgenL17addArcApproximateERNS_7ContourENS_7Vector2ES2_S2_dbb.exit: ; preds = %bb.ba, %bb.ax, %bb.ap, %.critedge163, %bb.ak, %bb.af, %bb.ab, %bb.u, %bb.q, %bb.m, %bb.i, %bb.e
  %.3361 = phi i8 [ %i.bi, %bb.e ], [ %.2360743, %bb.i ], [ %.2360743, %bb.m ], [ %.2360743, %bb.q ], [ %.2360743, %bb.u ], [ %.2360743, %bb.ab ], [ %.2360743, %bb.af ], [ %.2360743, %bb.ak ], [ %.2360743, %.critedge163 ], [ %.2360743, %bb.ap ], [ %.2360743, %bb.ax ], [ %.2360743, %bb.ba ] ; 7 uses
  %.3 = phi ptr [ %i.az, %bb.e ], [ %i.bt, %bb.i ], [ %i.cl, %bb.m ], [ %i.cx, %bb.q ], [ %i.dy, %bb.u ], [ %i.fc, %bb.ab ], [ %i.gv, %bb.af ], [ %i.it, %bb.ak ], [ %i.kx, %.critedge163 ], [ %i.kx, %bb.ap ], [ %i.kx, %bb.ax ], [ %i.kx, %bb.ba ]
  %i.rf = phi <2 x double> [ %i.bh, %bb.e ], [ %i.cb, %bb.i ], [ %i.cs, %bb.m ], [ %i.de, %bb.q ], [ %i.eh, %bb.u ], [ %i.fk, %bb.ab ], [ %i.hh, %bb.af ], [ %i.jc, %bb.ak ], [ %i.lf, %.critedge163 ], [ %i.lf, %bb.ap ], [ %i.lf, %bb.ax ], [ %i.lf, %bb.ba ] ; 4 uses
  %i.rg = phi <2 x double> [ %i.bh, %bb.e ], [ %i.an, %bb.i ], [ %i.an, %bb.m ], [ %i.an, %bb.q ], [ %i.an, %bb.u ], [ %i.an, %bb.ab ], [ %i.an, %bb.af ], [ %i.an, %bb.ak ], [ %i.an, %.critedge163 ], [ %i.an, %bb.ap ], [ %i.an, %bb.ax ], [ %i.an, %bb.ba ] ; 2 uses
  %i.rh = phi <2 x double> [ %i.ao, %bb.e ], [ %i.ao, %bb.i ], [ %i.ao, %bb.m ], [ %i.ao, %bb.q ], [ %i.ei, %bb.u ], [ %i.et, %bb.ab ], [ %i.hi, %bb.af ], [ %i.ia, %bb.ak ], [ %i.ao, %.critedge163 ], [ %i.ao, %bb.ap ], [ %i.ao, %bb.ax ], [ %i.ao, %bb.ba ]
  %i.ri = phi <2 x double> [ %i.aq, %bb.e ], [ %i.aq, %bb.i ], [ %i.aq, %bb.m ], [ %i.aq, %bb.q ], [ %i.aq, %bb.u ], [ %i.aq, %bb.ab ], [ %i.hj, %bb.af ], [ %i.jd, %bb.ak ], [ %i.aq, %.critedge163 ], [ %i.aq, %bb.ap ], [ %i.aq, %bb.ax ], [ %i.aq, %bb.ba ]
  %i.rj = and i8 %.3361, -33
  %i.rk = icmp eq i8 %i.rj, 77
  %i.rl = and i1 %.0155745, %i.rk
  br label %bb.bc

bb.bc:                                            ; preds = %.critedge.i.i279, %_ZN7msdfgenL17addArcApproximateERNS_7ContourENS_7Vector2ES2_S2_dbb.exit
  %.64 = phi ptr [ %.3, %_ZN7msdfgenL17addArcApproximateERNS_7ContourENS_7Vector2ES2_S2_dbb.exit ], [ %i.rn, %.critedge.i.i279 ] ; 7 uses
  %i.rm = load i8, ptr %.64, align 1, !tbaa !8    ; 7 uses
  switch i8 %i.rm, label %bb.bd [
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
  %i.rn = getelementptr inbounds nuw i8, ptr %.64, i64 1
  br label %bb.bc, !llvm.loop !9

bb.bd:                                            ; preds = %bb.bc
  %i.ro = add i8 %i.rm, -58
  %or.cond14.i282 = icmp ult i8 %i.ro, -10        ; 2 uses
  %spec.select = select i1 %or.cond14.i282, i8 %i.rm, i8 %.3361
  %spec.select439.idx = zext i1 %or.cond14.i282 to i64
  %spec.select439 = getelementptr inbounds nuw i8, ptr %.64, i64 %spec.select439.idx ; 2 uses
  %.pre1059 = load i8, ptr %spec.select439, align 1, !tbaa !8
  br label %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283

_ZN7msdfgenL12readNodeTypeERcRPKc.exit283:        ; preds = %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.bd
  %i.rp = phi i8 [ %.pre1059, %bb.bd ], [ %i.rm, %bb.bc ], [ %i.rm, %bb.bc ], [ %i.rm, %bb.bc ], [ %i.rm, %bb.bc ] ; 2 uses
  %.5363 = phi i8 [ %spec.select, %bb.bd ], [ %.3361, %bb.bc ], [ %.3361, %bb.bc ], [ %.3361, %bb.bc ], [ %.3361, %bb.bc ] ; 2 uses
  %.65 = phi ptr [ %spec.select439, %bb.bd ], [ %.64, %bb.bc ], [ %.64, %bb.bc ], [ %.64, %bb.bc ], [ %.64, %bb.bc ] ; 2 uses
  %.not = icmp eq i8 %i.rp, 0
  %i.rq = extractelement <2 x double> %i.rf, i64 0 ; 2 uses
  %i.rr = extractelement <2 x double> %i.rf, i64 1 ; 2 uses
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !18

.loopexit.loopexit.split.loop.exit:               ; preds = %bb.d
  %i.rs = extractelement <2 x double> %i.am, i64 0
  %i.rt = extractelement <2 x double> %i.am, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.split.loop.exit, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283, %.critedge, %bb.f
  %.sroa.28.1735 = phi double [ %i.bk, %bb.f ], [ %.sroa.28.0, %.critedge ], [ %i.rt, %.loopexit.loopexit.split.loop.exit ], [ %i.rr, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283 ] ; 2 uses
  %.sroa.0314.1694 = phi double [ %i.bj, %bb.f ], [ %.sroa.0314.0, %.critedge ], [ %i.rs, %.loopexit.loopexit.split.loop.exit ], [ %i.rq, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283 ] ; 2 uses
  %.2360571 = phi i8 [ %.2360743, %bb.f ], [ %.1359, %.critedge ], [ %.2360743, %.loopexit.loopexit.split.loop.exit ], [ %.5363, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283 ]
  %.2530 = phi ptr [ %.2744, %bb.f ], [ %.1, %.critedge ], [ %.2744, %.loopexit.loopexit.split.loop.exit ], [ %.65, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283 ]
  %.1153 = phi i1 [ false, %bb.f ], [ false, %.critedge ], [ true, %.loopexit.loopexit.split.loop.exit ], [ false, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283 ]
  %i.ru = phi <2 x double> [ %i.an, %bb.f ], [ zeroinitializer, %.critedge ], [ %i.an, %.loopexit.loopexit.split.loop.exit ], [ %i.rg, %_ZN7msdfgenL12readNodeTypeERcRPKc.exit283 ] ; 3 uses
  %i.rv = extractelement <2 x double> %i.ru, i64 1 ; 3 uses
  %i.rw = extractelement <2 x double> %i.ru, i64 0 ; 3 uses
  %i.rx = load ptr, ptr %i.aj, align 8, !tbaa !19
  %i.ry = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !19 ; 2 uses
  %i.sa = icmp eq ptr %i.rx, %i.rz
  br i1 %i.sa, label %.backedge, label %bb.be

bb.be:                                            ; preds = %.loopexit
  %i.sb = fcmp une double %.sroa.0314.1694, %i.rw
  %i.sc = fcmp une double %.sroa.28.1735, %i.rv
  %i.sd = select i1 %i.sb, i1 true, i1 %i.sc
  br i1 %i.sd, label %bb.bf, label %.backedge

bb.bf:                                            ; preds = %bb.be
  %i.se = getelementptr inbounds i8, ptr %i.rz, i64 -8
  %i.sf = call noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.se) ; 2 uses
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !21
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 40
  %i.si = load ptr, ptr %i.sh, align 8
  %i.sj = call { double, double } %i.si(ptr noundef nonnull align 8 dereferenceable(12) %i.sf, double noundef 1.000000e+00) ; 2 uses
  %i.sk = extractvalue { double, double } %i.sj, 0
  %i.sl = extractvalue { double, double } %i.sj, 1
  %i.sm = load ptr, ptr %i.aj, align 8, !tbaa !23
  %i.sn = call noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.sm) ; 2 uses
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !21
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 40
  %i.sq = load ptr, ptr %i.sp, align 8
  %i.sr = call { double, double } %i.sq(ptr noundef nonnull align 8 dereferenceable(12) %i.sn, double noundef 0.000000e+00) ; 2 uses
  %i.ss = extractvalue { double, double } %i.sr, 0
  %i.st = extractvalue { double, double } %i.sr, 1
  %i.su = fsub double %i.sk, %i.ss                ; 2 uses
  %i.sv = fsub double %i.sl, %i.st                ; 2 uses
  %i.sw = fmul double %i.sv, %i.sv
  %i.sx = call double @llvm.fmuladd.f64(double %i.su, double %i.su, double %i.sw)
  %sqrt.i286 = call noundef double @llvm.sqrt.f64(double %i.sx)
  %i.sy = fcmp olt double %sqrt.i286, %2
  br i1 %i.sy, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.sz = load ptr, ptr %i.ry, align 8, !tbaa !19
  %i.ta = getelementptr inbounds i8, ptr %i.sz, i64 -8
  %i.tb = call noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ta) ; 2 uses
  %i.tc = load ptr, ptr %i.aj, align 8, !tbaa !23
  %i.td = call noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.tc) ; 2 uses
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !21
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 40
  %i.tg = load ptr, ptr %i.tf, align 8
  %i.th = call { double, double } %i.tg(ptr noundef nonnull align 8 dereferenceable(12) %i.td, double noundef 0.000000e+00) ; 2 uses
  %i.ti = extractvalue { double, double } %i.th, 0
  %i.tj = extractvalue { double, double } %i.th, 1
  %i.tk = load ptr, ptr %i.tb, align 8, !tbaa !21
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 112
  %i.tm = load ptr, ptr %i.tl, align 8
  call void %i.tm(ptr noundef nonnull align 8 dereferenceable(12) %i.tb, double %i.ti, double %i.tj)
  br label %.backedge

.backedge:                                        ; preds = %bb.bg, %bb.bi, %bb.be, %.loopexit
  br label %bb.b, !llvm.loop !25

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.tn = call noundef ptr @_ZN7msdfgen11EdgeSegment6createENS_7Vector2ES1_NS_9EdgeColorE(double %.sroa.0314.1694, double %.sroa.28.1735, double %i.rw, double %i.rv, i32 noundef 7)
  store ptr %i.tn, ptr %12, align 8, !tbaa !14
  invoke void @_ZN7msdfgen7Contour7addEdgeEONS_10EdgeHolderE(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.bi unwind label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  br label %.backedge

bb.bj:                                            ; preds = %bb.bh
  %i.to = landingpad { ptr, i32 }
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
begin_hunk_1_@_ZN7msdfgen12loadSvgShapeERNS_5ShapeERNS0_6BoundsEPKc:bb.a
  %i.z = icmp ugt ptr %i.y, %i.u
  br i1 %i.z, label %bb.q, label %_ZN7msdfgenL10readDoubleERdRPKc.exit

_ZN7msdfgenL10readDoubleERdRPKc.exit:             ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.v

bb.q:                                             ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i
  store ptr %i.y, ptr %i.e, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.aa = call fastcc noundef zeroext i1 @_ZN7msdfgenL10readDoubleERdRPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  br i1 %i.aa, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.ab = call fastcc noundef zeroext i1 @_ZN7msdfgenL10readDoubleERdRPKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  br i1 %i.ab, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.ac = call fastcc noundef zeroext i1 @_ZN7msdfgenL10readDoubleERdRPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 0 uses
  br label %bb.v

bb.t:                                             ; preds = %bb.x, %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE5clearEv.exit, %bb.n, %bb.m
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.u:                                             ; preds = %bb.o
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  br label %bb.z

bb.v:                                             ; preds = %_ZN7msdfgenL10readDoubleERdRPKc.exit, %bb.q, %bb.r, %bb.s, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load <2 x double>, ptr %1, align 8, !tbaa !26
  %i.ah = load <2 x double>, ptr %4, align 16, !tbaa !26 ; 4 uses
  %i.ai = fadd <2 x double> %i.ag, %i.ah
  store <2 x double> %i.ai, ptr %i.af, align 8, !tbaa !26
  %i.aj = load ptr, ptr %0, align 8, !tbaa !35    ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !38 ; 2 uses
  %.not.i.i = icmp eq ptr %i.al, %i.aj
  br i1 %.not.i.i, label %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.v, %_ZSt8_DestroyIN7msdfgen7ContourEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.aw, %_ZSt8_DestroyIN7msdfgen7ContourEEvPT_.exit.i.i.i.i ], [ %i.aj, %bb.v ] ; 5 uses
  %i.am = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !23 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !39 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.am, %i.ao
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.am, %.lr.ph.i.i.i.i ] ; 2 uses
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i.i.i) #12
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.ao
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !40

_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !23
  br label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.aq = phi ptr [ %.pr.i.i.i.i.i.i.i, %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i ], [ %i.am, %.lr.ph.i.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7msdfgen7ContourEEvPT_.exit.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !41
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #13
  br label %_ZSt8_DestroyIN7msdfgen7ContourEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN7msdfgen7ContourEEvPT_.exit.i.i.i.i: ; preds = %bb.w, %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aw, %i.al
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN7msdfgen7ContourES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !42

_ZSt8_DestroyIPN7msdfgen7ContourES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN7msdfgen7ContourEEvPT_.exit.i.i.i.i
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !38
  br label %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE5clearEv.exit

_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE5clearEv.exit: ; preds = %bb.v, %_ZSt8_DestroyIPN7msdfgen7ContourES1_EvT_S3_RSaIT0_E.exit.i.i
  invoke void @_ZN7msdfgen5Shape19setYAxisOrientationENS_16YAxisOrientationE(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef 1)
          to label %bb.x unwind label %bb.t

bb.x:                                             ; preds = %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE5clearEv.exit
  %foldExtExtBinop = fmul <2 x double> %i.ah, %i.ah
  %i.ax = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.ay = extractelement <2 x double> %i.ah, i64 0 ; 2 uses
  %i.az = call double @llvm.fmuladd.f64(double %i.ay, double %i.ay, double %i.ax)
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.az)
  %i.ba = fmul double %sqrt.i, f0x3F10000000000000
  %i.bb = invoke noundef zeroext i1 @_ZN7msdfgen21buildShapeFromSvgPathERNS_5ShapeEPKcd(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull %i.n, double noundef %i.ba)
          to label %bb.y unwind label %bb.t

bb.y:                                             ; preds = %bb.x
  %.026 = select i1 %i.bb, i32 %i.k, i32 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.aa

bb.z:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.t ], [ %i.ae, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y, %bb.k, %bb.g, %bb.h
  %.228 = phi i32 [ 0, %bb.g ], [ 0, %bb.h ], [ %.026, %bb.y ], [ 0, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.ac

bb.ab:                                            ; preds = %bb.l, %bb.z, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %i.m, %bb.i ], [ %.pn, %bb.z ], [ %i.o, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa, %_ZN8tinyxml27XMLNode17FirstChildElementEPKc.exit, %bb.b
  %.430 = phi i32 [ 0, %bb.b ], [ %.228, %bb.aa ], [ 0, %_ZN8tinyxml27XMLNode17FirstChildElementEPKc.exit ]
  call void @_ZN8tinyxml211XMLDocumentD1Ev(ptr noundef nonnull align 8 dead_on_return(776) dereferenceable(776) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i32 %.430

bb.ad:                                            ; preds = %bb.e, %bb.ab, %bb.c
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.g, %bb.c ], [ %.pn.pn.pn, %bb.ab ], [ %i.i, %bb.e ]
  call void @_ZN8tinyxml211XMLDocumentD1Ev(ptr noundef nonnull align 8 dead_on_return(776) dereferenceable(776) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

declare noundef ptr @_ZN7msdfgen11EdgeSegment6createENS_7Vector2ES1_NS_9EdgeColorE(double, double, double, double, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #6

declare noundef ptr @_ZN7msdfgen11EdgeSegment6createENS_7Vector2ES1_S1_NS_9EdgeColorE(double, double, double, double, double, double, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN7msdfgen11EdgeSegment6createENS_7Vector2ES1_S1_S1_NS_9EdgeColorE(double, double, double, double, double, double, double, double, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @acos(double noundef) local_unnamed_addr #8

declare noundef ptr @_ZNK8tinyxml27XMLNode17FirstChildElementEPKc(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

declare noundef ptr @_ZNK8tinyxml27XMLNode5ValueEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #2

declare noundef ptr @_ZNK8tinyxml27XMLNode18NextSiblingElementEPKc(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK8tinyxml27XMLNode16LastChildElementEPKc(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK8tinyxml27XMLNode22PreviousSiblingElementEPKc(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!15, !16, i64 0}
!15 = !{!"_ZTSN7msdfgen10EdgeHolderE", !16, i64 0}
!16 = !{!"p1 _ZTSN7msdfgen11EdgeSegmentE", !13, i64 0}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 _ZTSN7msdfgen10EdgeHolderE", !13, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"vtable pointer", !7, i64 0}
!23 = !{!24, !20, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseIN7msdfgen10EdgeHolderESaIS1_EE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!25 = distinct !{!25, !10}
!26 = !{!27, !27, i64 0}
!27 = !{!"double", !6, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"p1 _ZTSN8tinyxml210XMLElementE", !13, i64 0}
!30 = !{!5, !5, i64 0}
!31 = !{!32, !27, i64 0}
!32 = !{!"_ZTSN7msdfgen7Vector2E", !27, i64 0, !27, i64 8}
!33 = !{!32, !27, i64 8}
!34 = !{i64 0, i64 8, !26, i64 8, i64 8, !26}
!35 = !{!36, !37, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIN7msdfgen7ContourESaIS1_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!37 = !{!"p1 _ZTSN7msdfgen7ContourE", !13, i64 0}
!38 = !{!36, !37, i64 8}
!39 = !{!24, !20, i64 8}
!40 = distinct !{!40, !10}
!41 = !{!24, !20, i64 16}
!42 = distinct !{!42, !10}
!43 = distinct !{!43, !10}
!44 = distinct !{!44, !10}
end_hunk_1
