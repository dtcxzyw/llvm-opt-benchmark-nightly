Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/implot?download=true
inline.NumInlined: 2055
inline.NumDeleted: 380
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 76
begin_hunk_0_@_ZN6ImPlot13Locator_Log10ER12ImPlotTickerRK11ImPlotRangefbPFidPciPvES6_:bb.a
.lr.ph.i:                                         ; preds = %.preheader27.i, %.lr.ph.i
  %i.y = phi i32 [ %i.z, %.lr.ph.i ], [ %i.t, %.preheader27.i ]
  %i.z = add nuw nsw i32 %i.y, 1                  ; 3 uses
  %i.aa = urem i32 %i.z, 3
  %.not25.i = icmp eq i32 %i.aa, 0
  br i1 %.not25.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !5

.lr.ph30.i:                                       ; preds = %.preheader.i, %.lr.ph30.i
  %i.ab = phi i32 [ %i.ac, %.lr.ph30.i ], [ %i.u, %.preheader.i ]
  %i.ac = add nsw i32 %i.ab, -1                   ; 3 uses
  %i.ad = srem i32 %i.ac, %.0
  %.not26.i = icmp eq i32 %i.ad, 0
  br i1 %.not26.i, label %.loopexit, label %.lr.ph30.i, !llvm.loop !6

.loopexit:                                        ; preds = %.lr.ph30.i, %bb.b, %.preheader.i
  %.012.ph = phi i32 [ %i.u, %bb.b ], [ %i.u, %.preheader.i ], [ %i.ac, %.lr.ph30.i ]
  %.1.ph = phi i32 [ 1, %bb.b ], [ %.0, %.preheader.i ], [ %.0, %.lr.ph30.i ]
  tail call void @_ZN6ImPlot19AddTicksLogarithmicERK11ImPlotRangeiiiR12ImPlotTickerPFidPciPvES6_(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %.012.ph, i32 noundef %i.v, i32 noundef %.1.ph, ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef %4, ptr noundef %5)
  br label %_ZN6ImPlot24CalcLogarithmicExponentsERK11ImPlotRangefbRiS3_S3_.exit

_ZN6ImPlot24CalcLogarithmicExponentsERK11ImPlotRangefbRiS3_S3_.exit: ; preds = %bb.a, %.loopexit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define dso_local noundef float @_ZN6ImPlot15CalcSymLogPixelEdRK11ImPlotRangef(double noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, float noundef %2) local_unnamed_addr #17 {
bb.a:
  %i.a = fpext float %2 to double
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = fmul double %0, 5.000000e-01
  %i.d = load <2 x double>, ptr %1, align 8, !tbaa !266 ; 3 uses
  %i.e = load double, ptr %i.b, align 8, !tbaa !276
  %i.f = extractelement <2 x double> %i.d, i64 0  ; 3 uses
  %i.g = fmul double %i.f, 5.000000e-01
  %i.h = tail call noundef double @asinh(double noundef %i.g) #32
  %i.i = fmul double %i.h, 2.000000e+00           ; 2 uses
  %i.j = fmul double %i.e, 5.000000e-01
  %i.k = tail call noundef double @asinh(double noundef %i.j) #32
  %i.l = fmul double %i.k, 2.000000e+00
  %i.m = tail call noundef double @asinh(double noundef %i.c) #32
  %i.n = fmul double %i.m, 2.000000e+00
  %i.o = fsub double %i.n, %i.i
  %i.p = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.q = insertelement <2 x double> %i.p, double %i.l, i64 1
  %i.r = insertelement <2 x double> %i.d, double %i.i, i64 1
  %i.s = fsub <2 x double> %i.q, %i.r             ; 2 uses
  %i.t = insertelement <2 x double> poison, double %i.a, i64 0
  %i.u = insertelement <2 x double> %i.t, double %i.o, i64 1
  %i.v = fdiv <2 x double> %i.u, %i.s             ; 2 uses
  %i.w = extractelement <2 x double> %i.v, i64 1
  %i.x = extractelement <2 x double> %i.s, i64 0
  %i.y = tail call double @llvm.fmuladd.f64(double %i.x, double %i.w, double %i.f)
  %i.z = fsub double %i.y, %i.f
  %i.aa = extractelement <2 x double> %i.v, i64 0
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.z, double 0.000000e+00)
  %i.ac = fptrunc double %i.ab to float
  ret float %i.ac
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define internal noundef double @_ZN6ImPlotL23TransformForward_SymLogEdPv(double noundef %0, ptr nofree readnone captures(none) %1) #18 {
bb.a:
  %i.a = fmul double %0, 5.000000e-01
  %i.b = tail call noundef double @asinh(double noundef %i.a) #32
  %i.c = fmul double %i.b, 2.000000e+00
  ret double %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot14Locator_SymLogER12ImPlotTickerRK11ImPlotRangefbPFidPciPvES6_(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, float noundef %2, i1 noundef zeroext %3, ptr noundef %4, ptr noundef %5) #1 {
bb.a:
  %6 = alloca %struct.ImPlotRange, align 16       ; 4 uses
  %7 = alloca %struct.ImPlotRange, align 16       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load <2 x double>, ptr %1, align 8       ; 3 uses
  %i.c = extractelement <2 x double> %i.b, i64 0  ; 9 uses
  %i.d = load double, ptr %i.a, align 8           ; 5 uses
  %i.e = fcmp ult double %i.c, -1.000000e+00
  %i.f = fcmp ugt double %i.d, 1.000000e+00
  %or.cond = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6ImPlot15Locator_DefaultER12ImPlotTickerRK11ImPlotRangefbPFidPciPvES6_(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef %2, i1 noundef zeroext %3, ptr noundef %4, ptr noundef %5)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.g = fmul double %i.c, %i.d
  %i.h = fcmp olt double %i.g, 0.000000e+00
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = fpext float %2 to double
  %i.j = fmul double %i.c, 5.000000e-01           ; 2 uses
  %i.k = tail call noundef double @asinh(double noundef %i.j) #32
  %i.l = fmul double %i.d, 5.000000e-01           ; 2 uses
  %i.m = tail call noundef double @asinh(double noundef %i.l) #32
  %i.n = tail call noundef double @asinh(double noundef 5.000000e-01) #32
  %i.o = tail call noundef double @asinh(double noundef %i.j) #32
  %i.p = fmul double %i.o, 2.000000e+00           ; 2 uses
  %i.q = tail call noundef double @asinh(double noundef %i.l) #32
  %i.r = fmul double %i.q, 2.000000e+00
  %i.s = tail call noundef double @asinh(double noundef -5.000000e-01) #32
  %i.t = fmul double %i.s, 2.000000e+00
  %i.u = fsub double %i.t, %i.p
  %i.v = shufflevector <2 x double> %i.b, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.w = insertelement <2 x double> %i.v, double %i.r, i64 1
  %i.x = insertelement <2 x double> %i.b, double %i.p, i64 1
  %i.y = fsub <2 x double> %i.w, %i.x             ; 2 uses
  %i.z = insertelement <2 x double> poison, double %i.i, i64 0
  %i.aa = insertelement <2 x double> %i.z, double %i.u, i64 1
  %i.ab = fdiv <2 x double> %i.aa, %i.y           ; 2 uses
  %i.ac = extractelement <2 x double> %i.ab, i64 1
  %i.ad = extractelement <2 x double> %i.y, i64 0 ; 2 uses
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.ac, double %i.c)
  %i.af = fsub double %i.ae, %i.c
  %i.ag = extractelement <2 x double> %i.ab, i64 0 ; 2 uses
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.af, double 0.000000e+00)
  %i.ai = fptrunc double %i.ah to float
  %i.aj = fcmp ogt double %i.d, 0.000000e+00
  br i1 %i.aj, label %bb.e, label %_ZN6ImPlot24CalcLogarithmicExponentsERK11ImPlotRangefbRiS3_S3_.exit

bb.e:                                             ; preds = %bb.d
  %i.ak = fmul double %i.n, 2.000000e+00
  %i.al = fmul double %i.k, 2.000000e+00          ; 2 uses
  %i.am = fsub double %i.ak, %i.al
  %i.an = fmul double %i.m, 2.000000e+00
  %i.ao = fsub double %i.an, %i.al
  %i.ap = fdiv double %i.am, %i.ao
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.ap, double %i.c)
  %i.ar = fsub double %i.aq, %i.c
  %i.as = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.ar, double 0.000000e+00)
  %i.at = fptrunc double %i.as to float
  %i.au = fsub float %2, %i.at
  %i.av = tail call noundef float @llvm.fabs.f32(float %i.au) ; 2 uses
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.av, float f0x3C23D70A, float 5.000000e-01)
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.av, float 2.000000e-02, float 5.000000e-01)
  %.sink31.i = select i1 %3, float %i.ax, float %i.aw
  %i.ay = fptosi float %.sink31.i to i32
  %i.az = tail call noundef i32 @llvm.smax.i32(i32 %i.ay, i32 2)
  %i.ba = tail call double @llvm.log10.f64(double %i.d) ; 4 uses
  %i.bb = fcmp ogt double %i.ba, 0.000000e+00
  %i.bc = select i1 %i.bb, double 0.000000e+00, double %i.ba ; 2 uses
  %i.bd = fcmp ole double %i.ba, 0.000000e+00
  %i.be = select i1 %i.bd, double 0.000000e+00, double %i.ba ; 2 uses
  %i.bf = fsub double %i.be, %i.bc
  %i.bg = fptosi double %i.bf to i32
  %i.bh = sdiv i32 %i.bg, %i.az                   ; 4 uses
  %i.bi = fptosi double %i.bc to i32              ; 4 uses
  %i.bj = fptosi double %i.be to i32              ; 3 uses
  %.not.i = icmp slt i32 %i.bh, 2
  br i1 %.not.i, label %_ZN6ImPlot24CalcLogarithmicExponentsERK11ImPlotRangefbRiS3_S3_.exit, label %.preheader27.i

.preheader27.i:                                   ; preds = %bb.e
  %i.bk = urem i32 %i.bh, 3
  %.not2528.i = icmp eq i32 %i.bk, 0
  br i1 %.not2528.i, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i, %.preheader27.i
  %.069 = phi i32 [ %i.bh, %.preheader27.i ], [ %i.bn, %.lr.ph.i ] ; 4 uses
  %i.bl = srem i32 %i.bi, %.069
  %.not2629.i = icmp eq i32 %i.bl, 0
  br i1 %.not2629.i, label %_ZN6ImPlot24CalcLogarithmicExponentsERK11ImPlotRangefbRiS3_S3_.exit, label %.lr.ph30.i

.lr.ph.i:                                         ; preds = %.preheader27.i, %.lr.ph.i
  %i.bm = phi i32 [ %i.bn, %.lr.ph.i ], [ %i.bh, %.preheader27.i ]
  %i.bn = add nuw nsw i32 %i.bm, 1                ; 3 uses
  %i.bo = urem i32 %i.bn, 3
  %.not25.i = icmp eq i32 %i.bo, 0
  br i1 %.not25.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !5

.lr.ph30.i:                                       ; preds = %.preheader.i, %.lr.ph30.i
  %i.bp = phi i32 [ %i.bq, %.lr.ph30.i ], [ %i.bi, %.preheader.i ]
  %i.bq = add nsw i32 %i.bp, -1                   ; 3 uses
  %i.br = srem i32 %i.bq, %.069
  %.not26.i = icmp eq i32 %i.br, 0
  br i1 %.not26.i, label %_ZN6ImPlot24CalcLogarithmicExponentsERK11ImPlotRangefbRiS3_S3_.exit, label %.lr.ph30.i, !llvm.loop !6

_ZN6ImPlot24CalcLogarithmicExponentsERK11ImPlotRangefbRiS3_S3_.exit: ; preds = %.lr.ph30.i, %bb.d, %bb.e, %.preheader.i
  %.072 = phi i32 [ %i.bi, %bb.e ], [ %i.bi, %.preheader.i ], [ undef, %bb.d ], [ %i.bq, %.lr.ph30.i ]
  %.071 = phi i32 [ %i.bj, %bb.e ], [ %i.bj, %.preheader.i ], [ undef, %bb.d ], [ %i.bj, %.lr.ph30.i ]
  %.170 = phi i32 [ 1, %bb.e ], [ %.069, %.preheader.i ], [ undef, %bb.d ], [ %.069, %.lr.ph30.i ]
  %i.bs = fcmp olt double %i.c, 0.000000e+00
  br i1 %i.bs, label %bb.f, label %_ZN6ImPlot24CalcLogarithmicExponentsERK11ImPlotRangefbRiS3_S3_.exit53

bb.f:                                             ; preds = %_ZN6ImPlot24CalcLogarithmicExponentsERK11ImPlotRangefbRiS3_S3_.exit
  %i.bt = tail call noundef float @llvm.fabs.f32(float %i.ai) ; 2 uses
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bt, float f0x3C23D70A, float 5.000000e-01)
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.bt, float 2.000000e-02, float 5.000000e-01)
  %.sink31.i42 = select i1 %3, float %i.bv, float %i.bu
  %i.bw = fptosi float %.sink31.i42 to i32
  %i.bx = tail call noundef i32 @llvm.smax.i32(i32 %i.bw, i32 2)
  %i.by = tail call noundef double @llvm.fabs.f64(double %i.c)
  %i.bz = tail call double @llvm.log10.f64(double %i.by) ; 4 uses
  %i.ca = fcmp olt double %i.bz, 0.000000e+00
  %i.cb = select i1 %i.ca, double %i.bz, double 0.000000e+00 ; 2 uses
  %i.cc = fcmp oge double %i.bz, 0.000000e+00
  %i.cd = select i1 %i.cc, double %i.bz, double 0.000000e+00 ; 2 uses
  %i.ce = fsub double %i.cd, %i.cb
  %i.cf = fptosi double %i.ce to i32
  %8 = udiv i32 %i.cf, %i.bx                      ; 4 uses
  %i.cg = fptosi double %i.cb to i32              ; 4 uses
  %i.ch = fptosi double %i.cd to i32              ; 3 uses
  %.not.i43 = icmp samesign ult i32 %8, 2
  br i1 %.not.i43, label %_ZN6ImPlot24CalcLogarithmicExponentsERK11ImPlotRangefbRiS3_S3_.exit53, label %.preheader27.i44

.preheader27.i44:                                 ; preds = %bb.f
  %i.ci = urem i32 %8, 3
  %.not2528.i45 = icmp eq i32 %i.ci, 0
  br i1 %.not2528.i45, label %.preheader.i49, label %.lr.ph.i46

.preheader.i49:                                   ; preds = %.lr.ph.i46, %.preheader27.i44
  %.0 = phi i32 [ %8, %.preheader27.i44 ], [ %i.cl, %.lr.ph.i46 ] ; 4 uses
  %i.cj = srem i32 %i.cg, %.0
  %.not2629.i50 = icmp eq i32 %i.cj, 0
  br i1 %.not2629.i50, label %_ZN6ImPlot24CalcLogarithmicExponentsERK11ImPlotRangefbRiS3_S3_.exit53, label %.lr.ph30.i51

.lr.ph.i46:                                       ; preds = %.preheader27.i44, %.lr.ph.i46
  %i.ck = phi i32 [ %i.cl, %.lr.ph.i46 ], [ %8, %.preheader27.i44 ]
  %i.cl = add nuw nsw i32 %i.ck, 1                ; 3 uses
  %i.cm = urem i32 %i.cl, 3
  %.not25.i47 = icmp eq i32 %i.cm, 0
  br i1 %.not25.i47, label %.preheader.i49, label %.lr.ph.i46, !llvm.loop !5

.lr.ph30.i51:                                     ; preds = %.preheader.i49, %.lr.ph30.i51
  %i.cn = phi i32 [ %i.co, %.lr.ph30.i51 ], [ %i.cg, %.preheader.i49 ]
  %i.co = add nsw i32 %i.cn, -1                   ; 3 uses
  %i.cp = srem i32 %i.co, %.0
  %.not26.i52 = icmp eq i32 %i.cp, 0
  br i1 %.not26.i52, label %_ZN6ImPlot24CalcLogarithmicExponentsERK11ImPlotRangefbRiS3_S3_.exit53, label %.lr.ph30.i51, !llvm.loop !6

_ZN6ImPlot24CalcLogarithmicExponentsERK11ImPlotRangefbRiS3_S3_.exit53: ; preds = %.lr.ph30.i51, %_ZN6ImPlot24CalcLogarithmicExponentsERK11ImPlotRangefbRiS3_S3_.exit, %bb.f, %.preheader.i49
  %.068 = phi i32 [ %i.cg, %bb.f ], [ %i.cg, %.preheader.i49 ], [ undef, %_ZN6ImPlot24CalcLogarithmicExponentsERK11ImPlotRangefbRiS3_S3_.exit ], [ %i.co, %.lr.ph30.i51 ]
  %.067 = phi i32 [ %i.ch, %bb.f ], [ %i.ch, %.preheader.i49 ], [ undef, %_ZN6ImPlot24CalcLogarithmicExponentsERK11ImPlotRangefbRiS3_S3_.exit ], [ %i.ch, %.lr.ph30.i51 ]
  %.1 = phi i32 [ 1, %bb.f ], [ %.0, %.preheader.i49 ], [ undef, %_ZN6ImPlot24CalcLogarithmicExponentsERK11ImPlotRangefbRiS3_S3_.exit ], [ %.0, %.lr.ph30.i51 ]
  %i.cq = tail call noundef i32 @llvm.smax.i32(i32 %.1, i32 %.170) ; 2 uses
  %i.cr = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN12ImPlotTicker7AddTickEdbibPFidPciPvES1_(ptr noundef nonnull align 8 dereferenceable(52) %0, double noundef 0.000000e+00, i1 noundef zeroext true, i32 noundef 0, i1 noundef zeroext true, ptr noundef %4, ptr noundef %5) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.cs = load double, ptr %i.a, align 8, !tbaa !276
  %i.ct = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.cs, i64 1
  store <2 x double> %i.ct, ptr %6, align 16, !tbaa !266
  call void @_ZN6ImPlot19AddTicksLogarithmicERK11ImPlotRangeiiiR12ImPlotTickerPFidPciPvES6_(ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef %.072, i32 noundef %.071, i32 noundef %i.cq, ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.cu = load double, ptr %1, align 8, !tbaa !269
  %i.cv = insertelement <2 x double> <double poison, double -1.000000e+00>, double %i.cu, i64 0
  store <2 x double> %i.cv, ptr %7, align 16, !tbaa !266
  call void @_ZN6ImPlot19AddTicksLogarithmicERK11ImPlotRangeiiiR12ImPlotTickerPFidPciPvES6_(ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef %.068, i32 noundef %.067, i32 noundef %i.cq, ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  tail call void @_ZN6ImPlot13Locator_Log10ER12ImPlotTickerRK11ImPlotRangefbPFidPciPvES6_(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef %2, i1 noundef zeroext %3, ptr noundef %4, ptr noundef %5)
  br label %bb.h

bb.h:                                             ; preds = %_ZN6ImPlot24CalcLogarithmicExponentsERK11ImPlotRangefbRiS3_S3_.exit53, %bb.g, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot14AddTicksCustomEPKdPKPKciR12ImPlotTickerPFidPciPvES9_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(52) %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  %wide.trip.count20 = zext nneg i32 %2 to i64    ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv17
  %i.c = load double, ptr %i.b, align 8, !tbaa !266
  %i.d = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN12ImPlotTicker7AddTickEdbibPFidPciPvES1_(ptr noundef nonnull align 8 dereferenceable(52) %3, double noundef %i.c, i1 noundef zeroext false, i32 noundef 0, i1 noundef zeroext true, ptr noundef %4, ptr noundef %5) ; 0 uses
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1 ; 2 uses
  %exitcond21.not = icmp eq i64 %indvars.iv.next18, %wide.trip.count20
  br i1 %exitcond21.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !7

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.a
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 0, %.lr.ph ] ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.f = load double, ptr %i.e, align 8, !tbaa !266
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44
  %i.i = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN12ImPlotTicker7AddTickEdbibPKc(ptr noundef nonnull align 8 dereferenceable(52) %3, double noundef %i.f, i1 noundef zeroext false, i32 noundef 0, i1 noundef zeroext true, ptr noundef %i.h) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count20
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !7
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN12ImPlotTicker7AddTickEdbibPKc(ptr noundef nonnull align 8 dereferenceable(52) %0, double noundef %1, i1 noundef zeroext %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = icmp ne ptr %5, null
  %or.cond = and i1 %4, %i.a
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !225
  %spec.select.i = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.c, i32 1) ; 2 uses
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #33
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  tail call void @_ZN15ImGuiTextBuffer6appendEPKcS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %5, ptr noundef nonnull %i.f) #32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !270
  %i.i = sext i32 %spec.select.i to i64
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 %i.i
  %i.k = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %i.j, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00) #32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.8.0 = phi i32 [ %spec.select.i, %bb.b ], [ -1, %bb.a ]
  %.sroa.5.0 = phi <2 x float> [ %i.k, %bb.b ], [ zeroinitializer, %bb.a ] ; 3 uses
  br i1 %4, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load <2 x float>, ptr %i.l, align 8, !tbaa !41 ; 2 uses
  %i.n = fcmp ogt <2 x float> %.sroa.5.0, %i.m
  %i.o = select <2 x i1> %i.n, <2 x float> %.sroa.5.0, <2 x float> %i.m
  store <2 x float> %i.o, ptr %i.l, align 8, !tbaa !41
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = load i32, ptr %0, align 8, !tbaa !271    ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !272
  %i.s = icmp eq i32 %i.p, %i.r
  br i1 %i.s, label %bb.f, label %._ZN8ImVectorI10ImPlotTickE7reserveEi.exit_crit_edge.i.i

._ZN8ImVectorI10ImPlotTickE7reserveEi.exit_crit_edge.i.i: ; preds = %bb.e
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !273
  br label %_ZN12ImPlotTicker7AddTickE10ImPlotTick.exit

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i32 %i.p, 1
  %.not.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i, label %_ZNK8ImVectorI10ImPlotTickE14_grow_capacityEi.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = sdiv i32 %i.p, 2
  %i.v = add nsw i32 %i.u, %i.p
  br label %_ZNK8ImVectorI10ImPlotTickE14_grow_capacityEi.exit.i.i

_ZNK8ImVectorI10ImPlotTickE14_grow_capacityEi.exit.i.i: ; preds = %bb.g, %bb.f
  %i.w = phi i32 [ %i.v, %bb.g ], [ 8, %bb.f ]
  %i.x = tail call noundef i32 @llvm.smax.i32(i32 %i.w, i32 %i.t) ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = mul nsw i64 %i.y, 40
  %i.aa = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.z) #32 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !273 ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not6.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK8ImVectorI10ImPlotTickE14_grow_capacityEi.exit.i.i
  %i.ad = load i32, ptr %0, align 8, !tbaa !271
  %i.ae = sext i32 %i.ad to i64
  %i.af = mul nsw i64 %i.ae, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.aa, ptr nonnull align 8 %i.ac, i64 %i.af, i1 false)
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !273
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ag) #32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNK8ImVectorI10ImPlotTickE14_grow_capacityEi.exit.i.i
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !273
  store i32 %i.x, ptr %i.q, align 4, !tbaa !272
  %.pre3.i.i = load i32, ptr %0, align 8, !tbaa !271
  br label %_ZN12ImPlotTicker7AddTickE10ImPlotTick.exit

_ZN12ImPlotTicker7AddTickE10ImPlotTick.exit:      ; preds = %._ZN8ImVectorI10ImPlotTickE7reserveEi.exit_crit_edge.i.i, %bb.i
  %i.ah = phi i32 [ %i.p, %._ZN8ImVectorI10ImPlotTickE7reserveEi.exit_crit_edge.i.i ], [ %.pre3.i.i, %bb.i ]
  %i.ai = phi ptr [ %.pre.i.i, %._ZN8ImVectorI10ImPlotTickE7reserveEi.exit_crit_edge.i.i ], [ %i.aa, %bb.i ]
  %i.aj = zext i1 %4 to i8
  %i.ak = zext i1 %2 to i8
  %i.al = sext i32 %i.ah to i64
  %i.am = getelementptr inbounds [40 x i8], ptr %i.ai, i64 %i.al ; 8 uses
  store double %1, ptr %i.am, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store float 0.000000e+00, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store <2 x float> %.sroa.5.0, ptr %.sroa.517.0..sroa_idx, align 4
  %.sroa.818.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 20
  store i32 %.sroa.8.0, ptr %.sroa.818.0..sroa_idx, align 4
  %.sroa.919.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i8 %i.ak, ptr %.sroa.919.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 25
  store i8 %i.aj, ptr %.sroa.10.0..sroa_idx, align 1
  %.sroa.1321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 28
  store i32 %3, ptr %.sroa.1321.0..sroa_idx, align 4
  %.sroa.1422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store i32 %i.p, ptr %.sroa.1422.0..sroa_idx, align 8
  %i.an = load i32, ptr %0, align 8, !tbaa !271
  %i.ao = add nsw i32 %i.an, 1                    ; 2 uses
  store i32 %i.ao, ptr %0, align 8, !tbaa !271
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !273
end_hunk_0
