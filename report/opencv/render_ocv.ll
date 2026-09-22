Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/render_ocv?download=true
inline.NumInlined: 481
inline.NumDeleted: 188
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2cv4gapi3wip4draw17drawPrimitivesOCVINS2_14EmptyConverterEEEvRNS_3MatERKSt6vectorINS_4util7variantIJNS2_4TextENS2_5FTextENS2_4RectENS2_6CircleENS2_4LineENS2_6MosaicENS2_5ImageENS2_4PolyEEEESaISI_EERSt10shared_ptrINS2_12FTTextRenderEE:bb.a
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gf, %i.ga
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %bb.an
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.gc, %bb.an ], [ %i.gg, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.f, align 8, !tbaa !86
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 32
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 48
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 64
  %i.gk = load <2 x double>, ptr %i.gh, align 8, !tbaa !18
  %i.gl = load <2 x double>, ptr %i.gi, align 8, !tbaa !18
  store <2 x double> %i.gl, ptr %i.i, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.j, ptr noundef nonnull align 8 dereferenceable(12) %i.gj, i64 12, i1 false)
  store <2 x double> %i.gk, ptr %i.h, align 8, !tbaa !18
  invoke void @_ZN2cv4gapi3wip4draw4polyERNS_3MatERKNS2_4PolyE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(68) %26)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %.loopexit
  %i.gm = load ptr, ptr %26, align 8, !tbaa !87   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.gm, null
  br i1 %.not.i.i.i.i, label %_ZN2cv4gapi3wip4draw4PolyD2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gn = load ptr, ptr %i.g, align 8, !tbaa !90
  %i.go = ptrtoint ptr %i.gn to i64
  %i.gp = ptrtoint ptr %i.gm to i64
  %i.gq = sub i64 %i.go, %i.gp
  call void @_ZdlPvm(ptr noundef nonnull %i.gm, i64 noundef %i.gq) #18
  br label %_ZN2cv4gapi3wip4draw4PolyD2Ev.exit

_ZN2cv4gapi3wip4draw4PolyD2Ev.exit:               ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17
  br label %bb.av

bb.aq:                                            ; preds = %.loopexit
  %i.gr = landingpad { ptr, i32 }
          cleanup
  %i.gs = load ptr, ptr %26, align 8, !tbaa !87   ; 3 uses
  %.not.i.i.i.i107 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i.i.i107, label %_ZN2cv4gapi3wip4draw4PolyD2Ev.exit108, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gt = load ptr, ptr %i.g, align 8, !tbaa !90
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = ptrtoint ptr %i.gs to i64
  %i.gw = sub i64 %i.gu, %i.gv
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef %i.gw) #18
  br label %_ZN2cv4gapi3wip4draw4PolyD2Ev.exit108

_ZN2cv4gapi3wip4draw4PolyD2Ev.exit108:            ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17
  br label %common.resume

bb.as:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #17
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull @.str.3)
  invoke void @_ZN2cv4util11throw_errorISt11logic_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %27) #19
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %bb.as
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %27) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #17
  br label %common.resume

bb.av:                                            ; preds = %_ZN2cv4gapi3wip4draw4PolyD2Ev.exit, %bb.ah, %bb.ad, %_ZN2cv4util3getINS_4gapi3wip4draw4LineEJNS4_4TextENS4_5FTextENS4_4RectENS4_6CircleES5_NS4_6MosaicENS4_5ImageENS4_4PolyEEEERKT_RKNS0_7variantIJDpT0_EEE.exit, %_ZN2cv4util3getINS_4gapi3wip4draw6CircleEJNS4_4TextENS4_5FTextENS4_4RectES5_NS4_4LineENS4_6MosaicENS4_5ImageENS4_4PolyEEEERKT_RKNS0_7variantIJDpT0_EEE.exit, %bb.s, %_ZN2cv4gapi3wip4draw4TextD2Ev.exit, %_ZN2cv4util3getINS_4gapi3wip4draw4RectEJNS4_4TextENS4_5FTextES5_NS4_6CircleENS4_4LineENS4_6MosaicENS4_5ImageENS4_4PolyEEEERKT_RKNS0_7variantIJDpT0_EEE.exit
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 432 ; 2 uses
  %.not = icmp eq ptr %i.gy, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv4gapi3wip4draw20drawPrimitivesOCVYUVERNS_3MatERKSt6vectorINS_4util7variantIJNS2_4TextENS2_5FTextENS2_4RectENS2_6CircleENS2_4LineENS2_6MosaicENS2_5ImageENS2_4PolyEEEESaISG_EERSt10shared_ptrINS2_12FTTextRenderEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN2cv4gapi3wip4draw17drawPrimitivesOCVINS2_16BGR2YUVConverterEEEvRNS_3MatERKSt6vectorINS_4util7variantIJNS2_4TextENS2_5FTextENS2_4RectENS2_6CircleENS2_4LineENS2_6MosaicENS2_5ImageENS2_4PolyEEEESaISI_EERSt10shared_ptrINS2_12FTTextRenderEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv4gapi3wip4draw17drawPrimitivesOCVINS2_16BGR2YUVConverterEEEvRNS_3MatERKSt6vectorINS_4util7variantIJNS2_4TextENS2_5FTextENS2_4RectENS2_6CircleENS2_4LineENS2_6MosaicENS2_5ImageENS2_4PolyEEEESaISI_EERSt10shared_ptrINS2_12FTTextRenderEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %4 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.cv::Scalar_", align 16      ; 6 uses
  %8 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  %9 = alloca %"struct.cv::gapi::wip::draw::Text", align 8 ; 21 uses
  %10 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %11 = alloca %"class.cv::Scalar_", align 16     ; 4 uses
  %12 = alloca %"class.cv::Scalar_", align 16     ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator.0", align 1 ; 3 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %15 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %16 = alloca %"class.cv::Scalar_", align 8      ; 4 uses
  %17 = alloca %"class.cv::Point_", align 4       ; 6 uses
  %18 = alloca %"class.cv::Point_", align 4       ; 6 uses
  %19 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  %20 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  %21 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  %22 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::allocator.0", align 1 ; 3 uses
  %25 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %26 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %27 = alloca %"class.cv::Mat", align 8          ; 4 uses
  %28 = alloca %"struct.cv::gapi::wip::draw::Poly", align 8 ; 14 uses
  %29 = alloca %"class.std::logic_error", align 8 ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %.not123 = icmp eq ptr %i.c, %i.e
  br i1 %.not123, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %28, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %28, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %28, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %28, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %15, i64 72
  %i.af = getelementptr inbounds nuw i8, ptr %15, i64 84
  %i.ag = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 92
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.av, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.av
  %.sroa.0115.0124 = phi ptr [ %i.c, %.lr.ph ], [ %i.lc, %bb.av ] ; 52 uses
  %i.ba = load i64, ptr %.sroa.0115.0124, align 8, !tbaa !16
  switch i64 %i.ba, label %bb.as [
    i64 2, label %_ZN2cv4util3getINS_4gapi3wip4draw4RectEJNS4_4TextENS4_5FTextES5_NS4_6CircleENS4_4LineENS4_6MosaicENS4_5ImageENS4_4PolyEEEERKT_RKNS0_7variantIJDpT0_EEE.exit
    i64 0, label %_ZN2cv4util3getINS_4gapi3wip4draw4TextEJS5_NS4_5FTextENS4_4RectENS4_6CircleENS4_4LineENS4_6MosaicENS4_5ImageENS4_4PolyEEEERKT_RKNS0_7variantIJDpT0_EEE.exit
    i64 1, label %_ZN2cv4util3getINS_4gapi3wip4draw5FTextEJNS4_4TextES5_NS4_4RectENS4_6CircleENS4_4LineENS4_6MosaicENS4_5ImageENS4_4PolyEEEERKT_RKNS0_7variantIJDpT0_EEE.exit
    i64 3, label %_ZN2cv4util3getINS_4gapi3wip4draw6CircleEJNS4_4TextENS4_5FTextENS4_4RectES5_NS4_4LineENS4_6MosaicENS4_5ImageENS4_4PolyEEEERKT_RKNS0_7variantIJDpT0_EEE.exit
    i64 4, label %_ZN2cv4util3getINS_4gapi3wip4draw4LineEJNS4_4TextENS4_5FTextENS4_4RectENS4_6CircleES5_NS4_6MosaicENS4_5ImageENS4_4PolyEEEERKT_RKNS0_7variantIJDpT0_EEE.exit
    i64 5, label %_ZN2cv4util3getINS_4gapi3wip4draw6MosaicEJNS4_4TextENS4_5FTextENS4_4RectENS4_6CircleENS4_4LineES5_NS4_5ImageENS4_4PolyEEEERKT_RKNS0_7variantIJDpT0_EEE.exit
    i64 6, label %_ZN2cv4util3getINS_4gapi3wip4draw5ImageEJNS4_4TextENS4_5FTextENS4_4RectENS4_6CircleENS4_4LineENS4_6MosaicES5_NS4_4PolyEEEERKT_RKNS0_7variantIJDpT0_EEE.exit
    i64 7, label %_ZN2cv4util3getINS_4gapi3wip4draw4PolyEJNS4_4TextENS4_5FTextENS4_4RectENS4_6CircleENS4_4LineENS4_6MosaicENS4_5ImageES5_EEERKT_RKNS0_7variantIJDpT0_EEE.exit
  ]

_ZN2cv4util3getINS_4gapi3wip4draw4RectEJNS4_4TextENS4_5FTextES5_NS4_6CircleENS4_4LineENS4_6MosaicENS4_5ImageENS4_4PolyEEEERKT_RKNS0_7variantIJDpT0_EEE.exit: ; preds = %bb.b
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 32
  %i.bf = load double, ptr %i.bc, align 8, !tbaa !18, !noalias !126 ; 3 uses
  %i.bg = load double, ptr %i.be, align 8, !tbaa !18, !noalias !126 ; 2 uses
  %i.bh = load double, ptr %i.bd, align 8, !tbaa !18, !noalias !126
  %i.bi = fmul double %i.bg, 5.870000e-01
  %i.bj = insertelement <2 x double> poison, double %i.bh, i64 0 ; 2 uses
  %i.bk = insertelement <2 x double> %i.bj, double %i.bf, i64 1
  %i.bl = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.bm = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bn = fmul <2 x double> %i.bm, <double -4.186880e-01, double -3.312640e-01>
  %i.bo = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> <double 5.000000e-01, double -1.687360e-01>, <2 x double> %i.bn) ; 2 uses
  %30 = insertelement <2 x double> %i.bp, double %i.bi, i64 0
  %i.bq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> <double 2.990000e-01, double 5.000000e-01>, <2 x double> %30)
  %i.br = insertelement <2 x double> <double poison, double 1.280000e+02>, double %i.bf, i64 0
  %i.bs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> <double 1.140000e-01, double 1.000000e+00>, <2 x double> %i.bq)
  %i.bt = extractelement <2 x double> %i.bp, i64 0
  %i.bu = call double @llvm.fmuladd.f64(double %i.bf, double -8.131200e-02, double %i.bt)
  %i.bv = fadd double %i.bu, 1.280000e+02
  store <2 x double> %i.bs, ptr %7, align 16, !tbaa !18, !alias.scope !126
  store double %i.bv, ptr %i.aw, align 16, !tbaa !18, !alias.scope !126
  store double 0.000000e+00, ptr %i.ax, align 8, !tbaa !18, !alias.scope !126
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  store i64 0, ptr %i.az, align 8
  store i32 50397184, ptr %8, align 8, !tbaa !21
  store ptr %0, ptr %i.ay, align 8, !tbaa !22
  %.sroa.032.0.copyload = load i64, ptr %i.bb, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 16
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 56
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !28
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 60
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !29
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 64
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !30
  call void @_ZN2cv9rectangleERKNS_17_InputOutputArrayENS_5Rect_IiEERKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 %.sroa.032.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.bx, i32 noundef %i.bz, i32 noundef %i.cb)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.av

common.resume:                                    ; preds = %_ZN2cv4gapi3wip4draw4TextD2Ev.exit93, %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %bb.al, %_ZN2cv4gapi3wip4draw4PolyD2Ev.exit108, %bb.au
  %common.resume.op = phi { ptr, i32 } [ %.pn77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ], [ %.pn75, %bb.al ], [ %i.lb, %bb.au ], [ %i.kv, %_ZN2cv4gapi3wip4draw4PolyD2Ev.exit108 ], [ %i.dv, %_ZN2cv4gapi3wip4draw4TextD2Ev.exit93 ], [ %.pn81.pn.pn, %bb.x ]
  resume { ptr, i32 } %common.resume.op

_ZN2cv4util3getINS_4gapi3wip4draw4TextEJS5_NS4_5FTextENS4_4RectENS4_6CircleENS4_4LineENS4_6MosaicENS4_5ImageENS4_4PolyEEEERKT_RKNS0_7variantIJDpT0_EEE.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 8
  store ptr %i.ah, ptr %9, align 8, !tbaa !33
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !35 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.cf, ptr %i.a, align 8, !tbaa !37
  %i.cg = icmp ugt i64 %i.cf, 15
  br i1 %i.cg, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZN2cv4util3getINS_4gapi3wip4draw4TextEJS5_NS4_5FTextENS4_4RectENS4_6CircleENS4_4LineENS4_6MosaicENS4_5ImageENS4_4PolyEEEERKT_RKNS0_7variantIJDpT0_EEE.exit
  %i.ch = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(97) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ch, ptr %9, align 8, !tbaa !35
  %i.ci = load i64, ptr %i.a, align 8, !tbaa !37
  store i64 %i.ci, ptr %i.ah, align 8, !tbaa !38
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %_ZN2cv4util3getINS_4gapi3wip4draw4TextEJS5_NS4_5FTextENS4_4RectENS4_6CircleENS4_4LineENS4_6MosaicENS4_5ImageENS4_4PolyEEEERKT_RKNS0_7variantIJDpT0_EEE.exit
  %i.cj = phi ptr [ %i.ch, %.noexc.i.i ], [ %i.ah, %_ZN2cv4util3getINS_4gapi3wip4draw4TextEJS5_NS4_5FTextENS4_4RectENS4_6CircleENS4_4LineENS4_6MosaicENS4_5ImageENS4_4PolyEEEERKT_RKNS0_7variantIJDpT0_EEE.exit ] ; 2 uses
  switch i64 %i.cf, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.ck = load i8, ptr %i.cd, align 1, !tbaa !38
  store i8 %i.ck, ptr %i.cj, align 1, !tbaa !38
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cj, ptr align 1 %i.cd, i64 %i.cf, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.cl = load i64, ptr %i.a, align 8, !tbaa !37  ; 2 uses
  store i64 %i.cl, ptr %i.ai, align 8, !tbaa !36
  %i.cm = load ptr, ptr %9, align 8, !tbaa !35
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cl
  store i8 0, ptr %i.cn, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 24, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 64
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 72
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 80
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 96
  %i.ct = load double, ptr %i.cq, align 8, !tbaa !18 ; 2 uses
  %i.cu = load double, ptr %i.cr, align 8, !tbaa !18 ; 2 uses
  %i.cv = load double, ptr %i.cp, align 8, !tbaa !18 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.an, ptr noundef nonnull align 8 dereferenceable(9) %i.cs, i64 9, i1 false)
  %i.cw = insertelement <2 x double> poison, double %i.ct, i64 0
  %i.cx = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cy = fmul <2 x double> %i.cx, <double 5.870000e-01, double -3.312640e-01>
  %i.cz = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.da = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.db = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.da, <2 x double> <double 2.990000e-01, double -1.687360e-01>, <2 x double> %i.cy)
  %i.dc = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.dd = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.de = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dd, <2 x double> <double 1.140000e-01, double 5.000000e-01>, <2 x double> %i.db) ; 2 uses
  %i.df = fadd <2 x double> %i.de, <double -0.000000e+00, double 1.280000e+02> ; 2 uses
  %i.dg = fmul double %i.ct, -4.186880e-01
  %i.dh = call double @llvm.fmuladd.f64(double %i.cu, double 5.000000e-01, double %i.dg)
  %i.di = call double @llvm.fmuladd.f64(double %i.cv, double -8.131200e-02, double %i.dh)
  %i.dj = fadd double %i.di, 1.280000e+02         ; 2 uses
  store <2 x double> %i.df, ptr %i.ak, align 8, !tbaa !18
  store double %i.dj, ptr %i.al, align 8, !tbaa !18
  store double 0.000000e+00, ptr %i.am, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  store i64 0, ptr %i.ap, align 8
  store i32 50397184, ptr %10, align 8, !tbaa !21
  store ptr %0, ptr %i.ao, align 8, !tbaa !22
  %.sroa.030.0.copyload = load i64, ptr %i.aj, align 8
  %i.dk = load i32, ptr %i.aq, align 8, !tbaa !42
  %i.dl = load double, ptr %i.ar, align 8, !tbaa !43
  %i.dm = shufflevector <2 x double> %i.de, <2 x double> %i.df, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.dm, ptr %11, align 16, !tbaa !18
  store double %i.dj, ptr %i.as, align 16, !tbaa !18
  store double 0.000000e+00, ptr %i.at, align 8, !tbaa !18
  %i.dn = load i32, ptr %i.an, align 8, !tbaa !44
  %i.do = load i32, ptr %i.au, align 4, !tbaa !45
  %i.dp = load i8, ptr %i.av, align 8, !tbaa !46, !range !47, !noundef !48
  %i.dq = trunc nuw i8 %i.dp to i1
  invoke void @_ZN2cv7putTextERKNS_17_InputOutputArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Point_IiEEidNS_7Scalar_IdEEiib(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 %.sroa.030.0.copyload, i32 noundef %i.dk, double noundef %i.dl, ptr noundef nonnull align 8 dead_on_return %11, i32 noundef %i.dn, i32 noundef %i.do, i1 noundef zeroext %i.dq)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.dr = load ptr, ptr %9, align 8, !tbaa !35    ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.ah
  br i1 %i.ds, label %_ZN2cv4gapi3wip4draw4TextD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.dt = load i64, ptr %i.ah, align 8, !tbaa !38
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #18
  br label %_ZN2cv4gapi3wip4draw4TextD2Ev.exit

_ZN2cv4gapi3wip4draw4TextD2Ev.exit:               ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.av

bb.g:                                             ; preds = %bb.e
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.dw = load ptr, ptr %9, align 8, !tbaa !35    ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.ah
  br i1 %i.dx, label %_ZN2cv4gapi3wip4draw4TextD2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91: ; preds = %bb.g
  %i.dy = load i64, ptr %i.ah, align 8, !tbaa !38
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #18
  br label %_ZN2cv4gapi3wip4draw4TextD2Ev.exit93

_ZN2cv4gapi3wip4draw4TextD2Ev.exit93:             ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %common.resume

_ZN2cv4util3getINS_4gapi3wip4draw5FTextEJNS4_4TextES5_NS4_4RectENS4_6CircleENS4_4LineENS4_6MosaicENS4_5ImageENS4_4PolyEEEERKT_RKNS0_7variantIJDpT0_EEE.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 72
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 64
  %i.ed = load double, ptr %i.ea, align 8, !tbaa !18, !noalias !127 ; 3 uses
  %i.ee = load double, ptr %i.ec, align 8, !tbaa !18, !noalias !127 ; 2 uses
  %i.ef = load double, ptr %i.eb, align 8, !tbaa !18, !noalias !127
  %i.eg = fmul double %i.ee, 5.870000e-01
  %i.eh = insertelement <2 x double> poison, double %i.ef, i64 0 ; 2 uses
  %i.ei = insertelement <2 x double> %i.eh, double %i.ed, i64 1
  %i.ej = insertelement <2 x double> poison, double %i.ee, i64 0
  %i.ek = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> zeroinitializer
  %i.el = fmul <2 x double> %i.ek, <double -4.186880e-01, double -3.312640e-01>
  %i.em = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.en = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.em, <2 x double> <double 5.000000e-01, double -1.687360e-01>, <2 x double> %i.el) ; 2 uses
  %31 = insertelement <2 x double> %i.en, double %i.eg, i64 0
  %i.eo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ei, <2 x double> <double 2.990000e-01, double 5.000000e-01>, <2 x double> %31)
  %i.ep = insertelement <2 x double> <double poison, double 1.280000e+02>, double %i.ed, i64 0
  %i.eq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ep, <2 x double> <double 1.140000e-01, double 1.000000e+00>, <2 x double> %i.eo)
  %i.er = extractelement <2 x double> %i.en, i64 0
  %i.es = call double @llvm.fmuladd.f64(double %i.ed, double -8.131200e-02, double %i.er)
  %i.et = fadd double %i.es, 1.280000e+02
  store <2 x double> %i.eq, ptr %12, align 16, !tbaa !18, !alias.scope !127
  store double %i.et, ptr %i.aa, align 16, !tbaa !18, !alias.scope !127
  store double 0.000000e+00, ptr %i.ab, align 8, !tbaa !18, !alias.scope !127
  %i.eu = load ptr, ptr %2, align 8, !tbaa !53    ; 2 uses
  %.not119 = icmp eq ptr %i.eu, null
  br i1 %.not119, label %bb.h, label %bb.m

bb.h:                                             ; preds = %_ZN2cv4util3getINS_4gapi3wip4draw5FTextEJNS4_4TextES5_NS4_4RectENS4_6CircleENS4_4LineENS4_6MosaicENS4_5ImageENS4_4PolyEEEERKT_RKNS0_7variantIJDpT0_EEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZN2cv4gapi3wip4draw17drawPrimitivesOCVINS2_14EmptyConverterEEEvRNS_3MatERKSt6vectorINS_4util7variantIJNS2_4TextENS2_5FTextENS2_4RectENS2_6CircleENS2_4LineENS2_6MosaicENS2_5ImageENS2_4PolyEEEESaISI_EERSt10shared_ptrINS2_12FTTextRenderEE, ptr noundef nonnull @.str.1, i32 noundef 180) #19
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.l:                                             ; preds = %bb.i
  %i.ew = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ex = load ptr, ptr %13, align 8, !tbaa !35   ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.fa = load i64, ptr %i.ey, align 8, !tbaa !38
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fb) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.k
  %.pn79 = phi { ptr, i32 } [ %i.ev, %bb.k ], [ %i.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ew, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %bb.x

bb.m:                                             ; preds = %_ZN2cv4util3getINS_4gapi3wip4draw5FTextEJNS4_4TextES5_NS4_4RectENS4_6CircleENS4_4LineENS4_6MosaicENS4_5ImageENS4_4PolyEEEERKT_RKNS0_7variantIJDpT0_EEE.exit
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 0, ptr %i.b, align 4, !tbaa !54
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 48 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !59
  %i.ff = call i64 @_ZN2cv4gapi3wip4draw12FTTextRender11getTextSizeERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEiPi(ptr noundef nonnull align 8 dereferenceable(16) %i.eu, ptr noundef nonnull align 8 dereferenceable(32) %i.fc, i32 noundef %i.fe, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, i8 0, i64 32, i1 false)
  call void @_ZN2cv3MatC1ENS_5Size_IiEEiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %15, i64 %i.ff, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  %i.fg = load i32, ptr %i.ac, align 8, !tbaa !66
  %i.fh = load i32, ptr %i.b, align 4, !tbaa !54
  %i.fi = sub nsw i32 %i.fg, %i.fh
  store i32 0, ptr %17, align 4, !tbaa !67
  store i32 %i.fi, ptr %i.ad, align 4, !tbaa !68
  %i.fj = load ptr, ptr %2, align 8, !tbaa !53
  %i.fk = load i32, ptr %i.fd, align 8, !tbaa !59
  invoke void @_ZN2cv4gapi3wip4draw12FTTextRender7putTextERNS_3MatERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEERKNS_6Point_IiEEi(ptr noundef nonnull align 8 dereferenceable(16) %i.fj, ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 8 dereferenceable(32) %i.fc, ptr noundef nonnull align 4 dereferenceable(8) %17, i32 noundef %i.fk)
          to label %bb.n unwind label %bb.t

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  %i.fl = load i32, ptr %i.ae, align 8, !tbaa !69 ; 3 uses
  %i.fm = icmp slt i32 %i.fl, 3
  br i1 %i.fm, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.o
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.7, i32 noundef 109) #19
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %.noexc
  unreachable

bb.q:                                             ; preds = %.noexc
  %i.fn = landingpad { ptr, i32 }
          cleanup
  %i.fo = load ptr, ptr %5, align 8, !tbaa !35    ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.fq = icmp eq ptr %i.fo, %i.fp
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i95: ; preds = %bb.q
  %i.fr = load i64, ptr %i.fp, align 8, !tbaa !38
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fs) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %.body

bb.r:                                             ; preds = %bb.n
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 44
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !70
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 40
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !71
  %or.cond.not = icmp eq i32 %i.fl, 2
  %i.fx = load i32, ptr %i.af, align 4
  %i.fy = icmp sgt i32 %i.fl, -1
  %i.fz = zext i1 %i.fy to i32
  %i.ga = select i1 %or.cond.not, i32 %i.fx, i32 %i.fz
  %i.gb = sub i32 %i.fu, %i.ga
  %i.gc = load i32, ptr %i.b, align 4, !tbaa !54
  %i.gd = add nsw i32 %i.gb, %i.gc
  store i32 %i.fw, ptr %18, align 4, !tbaa !67
  store i32 %i.gd, ptr %i.ag, align 4, !tbaa !68
  invoke void @_ZN2cv4gapi3wip4draw13blendTextMaskERNS_3MatES4_RKNS_6Point_IiEERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 4 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %bb.av

bb.t:                                             ; preds = %bb.m
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.u:                                             ; preds = %bb.o
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.r
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.v
  %.pn81 = phi { ptr, i32 } [ %i.gg, %bb.v ], [ %i.gf, %bb.u ], [ %i.fn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br label %bb.w

bb.w:                                             ; preds = %.body, %bb.t
  %.pn81.pn = phi { ptr, i32 } [ %.pn81, %.body ], [ %i.ge, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn81.pn.pn = phi { ptr, i32 } [ %.pn81.pn, %bb.w ], [ %.pn79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %common.resume

_ZN2cv4util3getINS_4gapi3wip4draw6CircleEJNS4_4TextENS4_5FTextENS4_4RectES5_NS4_4LineENS4_6MosaicENS4_5ImageENS4_4PolyEEEERKT_RKNS0_7variantIJDpT0_EEE.exit: ; preds = %bb.b
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 40
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 32
  %i.gl = load double, ptr %i.gi, align 8, !tbaa !18, !noalias !128 ; 3 uses
  %i.gm = load double, ptr %i.gk, align 8, !tbaa !18, !noalias !128 ; 2 uses
  %i.gn = load double, ptr %i.gj, align 8, !tbaa !18, !noalias !128
  %i.go = fmul double %i.gm, 5.870000e-01
  %i.gp = insertelement <2 x double> poison, double %i.gn, i64 0 ; 2 uses
  %i.gq = insertelement <2 x double> %i.gp, double %i.gl, i64 1
  %i.gr = insertelement <2 x double> poison, double %i.gm, i64 0
  %i.gs = shufflevector <2 x double> %i.gr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gt = fmul <2 x double> %i.gs, <double -4.186880e-01, double -3.312640e-01>
  %i.gu = shufflevector <2 x double> %i.gp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gu, <2 x double> <double 5.000000e-01, double -1.687360e-01>, <2 x double> %i.gt) ; 2 uses
  %32 = insertelement <2 x double> %i.gv, double %i.go, i64 0
  %i.gw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gq, <2 x double> <double 2.990000e-01, double 5.000000e-01>, <2 x double> %32)
  %i.gx = insertelement <2 x double> <double poison, double 1.280000e+02>, double %i.gl, i64 0
  %i.gy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gx, <2 x double> <double 1.140000e-01, double 1.000000e+00>, <2 x double> %i.gw)
  %i.gz = extractelement <2 x double> %i.gv, i64 0
  %i.ha = call double @llvm.fmuladd.f64(double %i.gl, double -8.131200e-02, double %i.gz)
  %i.hb = fadd double %i.ha, 1.280000e+02
  store <2 x double> %i.gy, ptr %19, align 16, !tbaa !18, !alias.scope !128
  store double %i.hb, ptr %i.w, align 16, !tbaa !18, !alias.scope !128
  store double 0.000000e+00, ptr %i.x, align 8, !tbaa !18, !alias.scope !128
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  store i64 0, ptr %i.z, align 8
  store i32 50397184, ptr %20, align 8, !tbaa !21
  store ptr %0, ptr %i.y, align 8, !tbaa !22
  %.sroa.013.0.copyload = load i64, ptr %i.gh, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 16
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !73
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 56
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !74
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 60
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !75
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 64
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !76
  call void @_ZN2cv6circleERKNS_17_InputOutputArrayENS_6Point_IiEEiRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 %.sroa.013.0.copyload, i32 noundef %i.hd, ptr noundef nonnull align 8 dereferenceable(32) %19, i32 noundef %i.hf, i32 noundef %i.hh, i32 noundef %i.hj)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  br label %bb.av

_ZN2cv4util3getINS_4gapi3wip4draw4LineEJNS4_4TextENS4_5FTextENS4_4RectENS4_6CircleES5_NS4_6MosaicENS4_5ImageENS4_4PolyEEEERKT_RKNS0_7variantIJDpT0_EEE.exit: ; preds = %bb.b
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 40
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 32
  %i.ho = load double, ptr %i.hl, align 8, !tbaa !18, !noalias !129 ; 3 uses
  %i.hp = load double, ptr %i.hn, align 8, !tbaa !18, !noalias !129 ; 2 uses
  %i.hq = load double, ptr %i.hm, align 8, !tbaa !18, !noalias !129
  %i.hr = fmul double %i.hp, 5.870000e-01
  %i.hs = insertelement <2 x double> poison, double %i.hq, i64 0 ; 2 uses
  %i.ht = insertelement <2 x double> %i.hs, double %i.ho, i64 1
  %i.hu = insertelement <2 x double> poison, double %i.hp, i64 0
  %i.hv = shufflevector <2 x double> %i.hu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hw = fmul <2 x double> %i.hv, <double -4.186880e-01, double -3.312640e-01>
  %i.hx = shufflevector <2 x double> %i.hs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hx, <2 x double> <double 5.000000e-01, double -1.687360e-01>, <2 x double> %i.hw) ; 2 uses
  %33 = insertelement <2 x double> %i.hy, double %i.hr, i64 0
  %i.hz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ht, <2 x double> <double 2.990000e-01, double 5.000000e-01>, <2 x double> %33)
  %i.ia = insertelement <2 x double> <double poison, double 1.280000e+02>, double %i.ho, i64 0
  %i.ib = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ia, <2 x double> <double 1.140000e-01, double 1.000000e+00>, <2 x double> %i.hz)
  %i.ic = extractelement <2 x double> %i.hy, i64 0
  %i.id = call double @llvm.fmuladd.f64(double %i.ho, double -8.131200e-02, double %i.ic)
  %i.ie = fadd double %i.id, 1.280000e+02
  store <2 x double> %i.ib, ptr %21, align 16, !tbaa !18, !alias.scope !129
  store double %i.ie, ptr %i.s, align 16, !tbaa !18, !alias.scope !129
  store double 0.000000e+00, ptr %i.t, align 8, !tbaa !18, !alias.scope !129
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17
  store i64 0, ptr %i.v, align 8
  store i32 50397184, ptr %22, align 8, !tbaa !21
  store ptr %0, ptr %i.u, align 8, !tbaa !22
  %.sroa.06.0.copyload = load i64, ptr %i.hk, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 16
  %.sroa.0.0.copyload = load i64, ptr %i.if, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 56
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !78
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 60
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !79
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 64
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !80
  call void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %22, i64 %.sroa.06.0.copyload, i64 %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %21, i32 noundef %i.ih, i32 noundef %i.ij, i32 noundef %i.il)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  br label %bb.av

_ZN2cv4util3getINS_4gapi3wip4draw6MosaicEJNS4_4TextENS4_5FTextENS4_4RectENS4_6CircleENS4_4LineES5_NS4_5ImageENS4_4PolyEEEERKT_RKNS0_7variantIJDpT0_EEE.exit: ; preds = %bb.b
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 28
  %i.in = load i32, ptr %i.im, align 4, !tbaa !82
  %i.io = icmp eq i32 %i.in, 0
  br i1 %i.io, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %_ZN2cv4util3getINS_4gapi3wip4draw6MosaicEJNS4_4TextENS4_5FTextENS4_4RectENS4_6CircleENS4_4LineES5_NS4_5ImageENS4_4PolyEEEERKT_RKNS0_7variantIJDpT0_EEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @__func__._ZN2cv4gapi3wip4draw17drawPrimitivesOCVINS2_14EmptyConverterEEEvRNS_3MatERKSt6vectorINS_4util7variantIJNS2_4TextENS2_5FTextENS2_4RectENS2_6CircleENS2_4LineENS2_6MosaicENS2_5ImageENS2_4PolyEEEESaISI_EERSt10shared_ptrINS2_12FTTextRenderEE, ptr noundef nonnull @.str.1, i32 noundef 216) #19
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.y
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

bb.ac:                                            ; preds = %bb.z
  %i.iq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ir = load ptr, ptr %23, align 8, !tbaa !35   ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.it = icmp eq ptr %i.ir, %i.is
  br i1 %i.it, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %bb.ac
  %i.iu = load i64, ptr %i.is, align 8, !tbaa !38
  %i.iv = add i64 %i.iu, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iv) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101, %bb.ab
  %.pn77 = phi { ptr, i32 } [ %i.ip, %bb.ab ], [ %i.iq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ], [ %i.iq, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  br label %common.resume

bb.ad:                                            ; preds = %_ZN2cv4util3getINS_4gapi3wip4draw6MosaicEJNS4_4TextENS4_5FTextENS4_4RectENS4_6CircleENS4_4LineES5_NS4_5ImageENS4_4PolyEEEERKT_RKNS0_7variantIJDpT0_EEE.exit
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 8
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 24
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !83
  call void @_ZN2cv4gapi3wip4draw6mosaicERNS_3MatERKNS_5Rect_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.iw, i32 noundef %i.iy)
  br label %bb.av

_ZN2cv4util3getINS_4gapi3wip4draw5ImageEJNS4_4TextENS4_5FTextENS4_4RectENS4_6CircleENS4_4LineENS4_6MosaicES5_NS4_4PolyEEEERKT_RKNS0_7variantIJDpT0_EEE.exit: ; preds = %bb.b
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #17
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %25) #17
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i32 0, ptr %i.l, align 8, !tbaa !92
  store i32 0, ptr %i.m, align 4, !tbaa !93
  store i32 16842752, ptr %3, align 8, !tbaa !21
  store ptr %i.ja, ptr %i.n, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store i64 0, ptr %i.p, align 8
  store i32 33619968, ptr %4, align 8, !tbaa !21
  store ptr %25, ptr %i.o, align 8, !tbaa !22
  invoke void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 82, i32 noundef 0, i32 noundef 0)
          to label %bb.ae unwind label %bb.ai

bb.ae:                                            ; preds = %_ZN2cv4util3getINS_4gapi3wip4draw5ImageEJNS4_4TextENS4_5FTextENS4_4RectENS4_6CircleENS4_4LineENS4_6MosaicES5_NS4_4PolyEEEERKT_RKNS0_7variantIJDpT0_EEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #17
  store i64 0, ptr %i.r, align 8
  store i32 33619968, ptr %26, align 8, !tbaa !21
  store ptr %25, ptr %i.q, align 8, !tbaa !22
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %25, ptr noundef nonnull align 8 dereferenceable(24) %26, i32 noundef 5, double noundef f0x3F70101010101010, double noundef 0.000000e+00)
          to label %bb.af unwind label %bb.aj

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %27, ptr noundef nonnull align 8 dereferenceable(208) %0)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 224
  invoke void @_ZN2cv4gapi3wip4draw10blendImageERKNS_3MatES5_RKNS_6Point_IiEES3_(ptr noundef nonnull align 8 dereferenceable(208) %25, ptr noundef nonnull align 8 dereferenceable(208) %i.jb, ptr noundef nonnull align 4 dereferenceable(8) %i.iz, ptr noundef nonnull align 8 %27)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #17
  br label %bb.av

bb.ai:                                            ; preds = %_ZN2cv4util3getINS_4gapi3wip4draw5ImageEJNS4_4TextENS4_5FTextENS4_4RectENS4_6CircleENS4_4LineENS4_6MosaicES5_NS4_4PolyEEEERKT_RKNS0_7variantIJDpT0_EEE.exit, %bb.af
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.aj:                                            ; preds = %bb.ae
  %i.jd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17
  br label %bb.al

bb.ak:                                            ; preds = %bb.ag
  %i.je = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #17
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %.pn75 = phi { ptr, i32 } [ %i.je, %bb.ak ], [ %i.jc, %bb.ai ], [ %i.jd, %bb.aj ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #17
  br label %common.resume

_ZN2cv4util3getINS_4gapi3wip4draw4PolyEJNS4_4TextENS4_5FTextENS4_4RectENS4_6CircleENS4_4LineENS4_6MosaicENS4_5ImageES5_EEERKT_RKNS0_7variantIJDpT0_EEE.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #17
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 8 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 16 ; 2 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !86 ; 3 uses
  %i.ji = load ptr, ptr %i.jf, align 8, !tbaa !87 ; 3 uses
  %i.jj = ptrtoint ptr %i.jh to i64
  %i.jk = ptrtoint ptr %i.ji to i64
  %i.jl = sub i64 %i.jj, %i.jk                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %28, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.jh, %i.ji
  br i1 %.not.i.i.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZN2cv4util3getINS_4gapi3wip4draw4PolyEJNS4_4TextENS4_5FTextENS4_4RectENS4_6CircleENS4_4LineENS4_6MosaicENS4_5ImageES5_EEERKT_RKNS0_7variantIJDpT0_EEE.exit
  %i.jm = icmp ugt i64 %i.jl, 9223372036854775800
  br i1 %i.jm, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !88

.noexc.i.i.i:                                     ; preds = %bb.am
  call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.am
  %i.jn = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jl) #20
  %.pre = load ptr, ptr %i.jf, align 8, !tbaa !89
  %.pre125 = load ptr, ptr %i.jg, align 8, !tbaa !89
  br label %bb.an

bb.an:                                            ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i.i, %_ZN2cv4util3getINS_4gapi3wip4draw4PolyEJNS4_4TextENS4_5FTextENS4_4RectENS4_6CircleENS4_4LineENS4_6MosaicENS4_5ImageES5_EEERKT_RKNS0_7variantIJDpT0_EEE.exit
  %i.jo = phi ptr [ %i.jh, %_ZN2cv4util3getINS_4gapi3wip4draw4PolyEJNS4_4TextENS4_5FTextENS4_4RectENS4_6CircleENS4_4LineENS4_6MosaicENS4_5ImageES5_EEERKT_RKNS0_7variantIJDpT0_EEE.exit ], [ %.pre125, %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 2 uses
  %i.jp = phi ptr [ %i.ji, %_ZN2cv4util3getINS_4gapi3wip4draw4PolyEJNS4_4TextENS4_5FTextENS4_4RectENS4_6CircleENS4_4LineENS4_6MosaicENS4_5ImageES5_EEERKT_RKNS0_7variantIJDpT0_EEE.exit ], [ %.pre, %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 2 uses
  %i.jq = phi ptr [ null, %_ZN2cv4util3getINS_4gapi3wip4draw4PolyEJNS4_4TextENS4_5FTextENS4_4RectENS4_6CircleENS4_4LineENS4_6MosaicENS4_5ImageES5_EEERKT_RKNS0_7variantIJDpT0_EEE.exit ], [ %i.jn, %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 5 uses
  store ptr %i.jq, ptr %28, align 8, !tbaa !87
  store ptr %i.jq, ptr %i.f, align 8, !tbaa !86
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.jl
  store ptr %i.jr, ptr %i.g, align 8, !tbaa !90
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.jp, %i.jo
  br i1 %.not7.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.an, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.ju, %.lr.ph.i.i.i.i.i.i ], [ %i.jq, %bb.an ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.jt, %.lr.ph.i.i.i.i.i.i ], [ %i.jp, %bb.an ] ; 2 uses
  %i.js = load i64, ptr %.sroa.04.08.i.i.i.i.i.i, align 4
  store i64 %i.js, ptr %.09.i.i.i.i.i.i, align 4
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.jt, %i.jo
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %bb.an
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.jq, %bb.an ], [ %i.ju, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.f, align 8, !tbaa !86
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 32
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !18 ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 40
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 48
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 64
  %i.ka = load double, ptr %i.jx, align 8, !tbaa !18 ; 2 uses
  %i.kb = load double, ptr %i.jy, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.k, ptr noundef nonnull align 8 dereferenceable(12) %i.jz, i64 12, i1 false)
  %i.kc = fmul double %i.ka, 5.870000e-01
  %i.kd = insertelement <2 x double> poison, double %i.kb, i64 0 ; 2 uses
  %i.ke = insertelement <2 x double> %i.kd, double %i.jw, i64 1
  %i.kf = insertelement <2 x double> poison, double %i.ka, i64 0
  %i.kg = shufflevector <2 x double> %i.kf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kh = fmul <2 x double> %i.kg, <double -4.186880e-01, double -3.312640e-01>
  %i.ki = shufflevector <2 x double> %i.kd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ki, <2 x double> <double 5.000000e-01, double -1.687360e-01>, <2 x double> %i.kh) ; 2 uses
  %34 = insertelement <2 x double> %i.kj, double %i.kc, i64 0
  %i.kk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ke, <2 x double> <double 2.990000e-01, double 5.000000e-01>, <2 x double> %34)
  %i.kl = insertelement <2 x double> <double poison, double 1.280000e+02>, double %i.jw, i64 0
  %i.km = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kl, <2 x double> <double 1.140000e-01, double 1.000000e+00>, <2 x double> %i.kk)
  %i.kn = extractelement <2 x double> %i.kj, i64 0
  %i.ko = call double @llvm.fmuladd.f64(double %i.jw, double -8.131200e-02, double %i.kn)
  %i.kp = fadd double %i.ko, 1.280000e+02
  store <2 x double> %i.km, ptr %i.h, align 8, !tbaa !18
  store double %i.kp, ptr %i.i, align 8, !tbaa !18
  store double 0.000000e+00, ptr %i.j, align 8, !tbaa !18
  invoke void @_ZN2cv4gapi3wip4draw4polyERNS_3MatERKNS2_4PolyE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(68) %28)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %.loopexit
  %i.kq = load ptr, ptr %28, align 8, !tbaa !87   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.kq, null
  br i1 %.not.i.i.i.i, label %_ZN2cv4gapi3wip4draw4PolyD2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.kr = load ptr, ptr %i.g, align 8, !tbaa !90
  %i.ks = ptrtoint ptr %i.kr to i64
  %i.kt = ptrtoint ptr %i.kq to i64
  %i.ku = sub i64 %i.ks, %i.kt
  call void @_ZdlPvm(ptr noundef nonnull %i.kq, i64 noundef %i.ku) #18
  br label %_ZN2cv4gapi3wip4draw4PolyD2Ev.exit

_ZN2cv4gapi3wip4draw4PolyD2Ev.exit:               ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #17
  br label %bb.av

bb.aq:                                            ; preds = %.loopexit
  %i.kv = landingpad { ptr, i32 }
          cleanup
  %i.kw = load ptr, ptr %28, align 8, !tbaa !87   ; 3 uses
  %.not.i.i.i.i107 = icmp eq ptr %i.kw, null
  br i1 %.not.i.i.i.i107, label %_ZN2cv4gapi3wip4draw4PolyD2Ev.exit108, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.kx = load ptr, ptr %i.g, align 8, !tbaa !90
  %i.ky = ptrtoint ptr %i.kx to i64
  %i.kz = ptrtoint ptr %i.kw to i64
  %i.la = sub i64 %i.ky, %i.kz
  call void @_ZdlPvm(ptr noundef nonnull %i.kw, i64 noundef %i.la) #18
  br label %_ZN2cv4gapi3wip4draw4PolyD2Ev.exit108

_ZN2cv4gapi3wip4draw4PolyD2Ev.exit108:            ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #17
  br label %common.resume

bb.as:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #17
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull @.str.3)
  invoke void @_ZN2cv4util11throw_errorISt11logic_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %29) #19
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %bb.as
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.lb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %29) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #17
  br label %common.resume

bb.av:                                            ; preds = %_ZN2cv4gapi3wip4draw4PolyD2Ev.exit, %bb.ah, %bb.ad, %_ZN2cv4util3getINS_4gapi3wip4draw4LineEJNS4_4TextENS4_5FTextENS4_4RectENS4_6CircleES5_NS4_6MosaicENS4_5ImageENS4_4PolyEEEERKT_RKNS0_7variantIJDpT0_EEE.exit, %_ZN2cv4util3getINS_4gapi3wip4draw6CircleEJNS4_4TextENS4_5FTextENS4_4RectES5_NS4_4LineENS4_6MosaicENS4_5ImageENS4_4PolyEEEERKT_RKNS0_7variantIJDpT0_EEE.exit, %bb.s, %_ZN2cv4gapi3wip4draw4TextD2Ev.exit, %_ZN2cv4util3getINS_4gapi3wip4draw4RectEJNS4_4TextENS4_5FTextES5_NS4_6CircleENS4_4LineENS4_6MosaicENS4_5ImageENS4_4PolyEEEERKT_RKNS0_7variantIJDpT0_EEE.exit
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.0115.0124, i64 432 ; 2 uses
  %.not = icmp eq ptr %i.lc, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN2cv9rectangleERKNS_17_InputOutputArrayENS_5Rect_IiEERKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24), i64, i64, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN2cv7putTextERKNS_17_InputOutputArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Point_IiEEidNS_7Scalar_IdEEiib(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(32), i64, i32 noundef, double noundef, ptr noundef align 8 dead_on_return, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !33
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.5) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.d, ptr %i.a, align 8, !tbaa !37
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !35
  %i.g = load i64, ptr %i.a, align 8, !tbaa !37
  store i64 %i.g, ptr %i.b, align 8, !tbaa !38
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !38
  store i8 %i.i, ptr %i.h, align 1, !tbaa !38
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !36
  %i.l = load ptr, ptr %0, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

declare i64 @_ZN2cv4gapi3wip4draw12FTTextRender11getTextSizeERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEiPi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN2cv3MatC1ENS_5Size_IiEEiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208), i64, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

declare void @_ZN2cv4gapi3wip4draw12FTTextRender7putTextERNS_3MatERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEERKNS_6Point_IiEEi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv4gapi3wip4draw13blendTextMaskERNS_3MatES4_RKNS_6Point_IiEERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %6 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %7 = alloca %"class.std::vector.18", align 8    ; 10 uses
  %8 = alloca %"class.std::allocator.20", align 1 ; 4 uses
  %9 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %10 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %12 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %13 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.b, align 8
  store i32 33619968, ptr %4, align 8, !tbaa !21
  store ptr %1, ptr %i.a, align 8, !tbaa !22
  call void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 5, double noundef f0x3F70101010101010, double noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS1_RKS2_(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef 3, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.c, align 8, !tbaa !92
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 0, ptr %i.d, align 4, !tbaa !93
  store i32 17104896, ptr %6, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %7, ptr %i.e, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.g, align 8
  store i32 33619968, ptr %9, align 8, !tbaa !21
  store ptr %5, ptr %i.f, align 8, !tbaa !22
  invoke void @_ZN2cv5mergeERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.h = load ptr, ptr %7, align 8, !tbaa !96     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !97   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
end_hunk_0
