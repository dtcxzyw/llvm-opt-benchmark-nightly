Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/render_ocv?download=true
inline.NumInlined: 481
inline.NumDeleted: 188
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2cv4gapi3wip4draw17drawPrimitivesOCVINS2_16BGR2YUVConverterEEEvRNS_3MatERKSt6vectorINS_4util7variantIJNS2_4TextENS2_5FTextENS2_4RectENS2_6CircleENS2_4LineENS2_6MosaicENS2_5ImageENS2_4PolyEEEESaISI_EERSt10shared_ptrINS2_12FTTextRenderEE:bb.a
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
  %i.f = getelementptr inbounds nuw i8, ptr %28, i64 8
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

._crit_edge:                                      ; preds = %bb.at, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.at
  %.sroa.0114.0124 = phi ptr [ %i.c, %.lr.ph ], [ %i.la, %bb.at ] ; 52 uses
  %i.ba = load i64, ptr %.sroa.0114.0124, align 8, !tbaa !16
  switch i64 %i.ba, label %bb.aq [
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
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0114.0124, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0114.0124, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0114.0124, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0114.0124, i64 32
  %i.bf = load double, ptr %i.bc, align 8, !tbaa !18, !noalias !126 ; 2 uses
  %i.bg = load double, ptr %i.bd, align 8, !tbaa !18, !noalias !126 ; 2 uses
  %i.bh = load double, ptr %i.be, align 8, !tbaa !18, !noalias !126 ; 2 uses
  %i.bi = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = fmul <2 x double> %i.bj, <double 5.870000e-01, double -3.312640e-01>
  %i.bl = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.bm = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bm, <2 x double> <double 2.990000e-01, double -1.687360e-01>, <2 x double> %i.bk)
  %i.bo = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.bp = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bp, <2 x double> <double 1.140000e-01, double 5.000000e-01>, <2 x double> %i.bn)
  %i.br = fmul double %i.bh, -4.186880e-01
  %i.bs = call double @llvm.fmuladd.f64(double %i.bg, double 5.000000e-01, double %i.br)
  %i.bt = call double @llvm.fmuladd.f64(double %i.bf, double -8.131200e-02, double %i.bs)
  %i.bu = fadd double %i.bt, 1.280000e+02
  %i.bv = fadd <2 x double> %i.bq, <double -0.000000e+00, double 1.280000e+02>
  store <2 x double> %i.bv, ptr %7, align 16, !tbaa !18, !alias.scope !126
  store double %i.bu, ptr %i.aw, align 16, !tbaa !18, !alias.scope !126
  store double 0.000000e+00, ptr %i.ax, align 8, !tbaa !18, !alias.scope !126
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  store i64 0, ptr %i.az, align 8
  store i32 50397184, ptr %8, align 8, !tbaa !21
  store ptr %0, ptr %i.ay, align 8, !tbaa !22
  %.sroa.032.0.copyload = load i64, ptr %i.bb, align 8, !tbaa !23
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0114.0124, i64 16
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !23
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0114.0124, i64 56
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !29
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0114.0124, i64 60
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !30
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0114.0124, i64 64
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !31
  call void @_ZN2cv9rectangleERKNS_17_InputOutputArrayENS_5Rect_IiEERKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 %.sroa.032.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.bx, i32 noundef %i.bz, i32 noundef %i.cb)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.at

common.resume:                                    ; preds = %_ZN2cv4gapi3wip4draw4TextD2Ev.exit93, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %bb.aj, %_ZN2cv4gapi3wip4draw4PolyD2Ev.exit107, %bb.as
  %common.resume.op = phi { ptr, i32 } [ %.pn77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ], [ %.pn75, %bb.aj ], [ %i.kz, %bb.as ], [ %i.kt, %_ZN2cv4gapi3wip4draw4PolyD2Ev.exit107 ], [ %i.du, %_ZN2cv4gapi3wip4draw4TextD2Ev.exit93 ], [ %.pn81.pn.pn, %bb.v ]
  resume { ptr, i32 } %common.resume.op

_ZN2cv4util3getINS_4gapi3wip4draw4TextEJS5_NS4_5FTextENS4_4RectENS4_6CircleENS4_4LineENS4_6MosaicENS4_5ImageENS4_4PolyEEEERKT_RKNS0_7variantIJDpT0_EEE.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0114.0124, i64 8
  store ptr %i.ah, ptr %9, align 8, !tbaa !34
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !36 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0114.0124, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !37 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.cf, ptr %i.a, align 8, !tbaa !38
  %i.cg = icmp ugt i64 %i.cf, 15
  br i1 %i.cg, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZN2cv4util3getINS_4gapi3wip4draw4TextEJS5_NS4_5FTextENS4_4RectENS4_6CircleENS4_4LineENS4_6MosaicENS4_5ImageENS4_4PolyEEEERKT_RKNS0_7variantIJDpT0_EEE.exit
  %i.ch = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(97) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ch, ptr %9, align 8, !tbaa !36
  %i.ci = load i64, ptr %i.a, align 8, !tbaa !38
  store i64 %i.ci, ptr %i.ah, align 8, !tbaa !39
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %_ZN2cv4util3getINS_4gapi3wip4draw4TextEJS5_NS4_5FTextENS4_4RectENS4_6CircleENS4_4LineENS4_6MosaicENS4_5ImageENS4_4PolyEEEERKT_RKNS0_7variantIJDpT0_EEE.exit
  %i.cj = phi ptr [ %i.ch, %.noexc.i.i ], [ %i.ah, %_ZN2cv4util3getINS_4gapi3wip4draw4TextEJS5_NS4_5FTextENS4_4RectENS4_6CircleENS4_4LineENS4_6MosaicENS4_5ImageENS4_4PolyEEEERKT_RKNS0_7variantIJDpT0_EEE.exit ] ; 2 uses
  switch i64 %i.cf, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.ck = load i8, ptr %i.cd, align 1, !tbaa !39
  store i8 %i.ck, ptr %i.cj, align 1, !tbaa !39
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cj, ptr align 1 %i.cd, i64 %i.cf, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.cl = load i64, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  store i64 %i.cl, ptr %i.ai, align 8, !tbaa !37
  %i.cm = load ptr, ptr %9, align 8, !tbaa !36
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cl
  store i8 0, ptr %i.cn, align 1, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0114.0124, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 24, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0114.0124, i64 64
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !18 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0114.0124, i64 72
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0114.0124, i64 80
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0114.0124, i64 96
  %i.cu = load double, ptr %i.cr, align 8, !tbaa !18 ; 2 uses
  %i.cv = load double, ptr %i.cs, align 8, !tbaa !18 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.an, ptr noundef nonnull align 8 dereferenceable(9) %i.ct, i64 9, i1 false)
  %i.cw = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.cx = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cy = fmul <2 x double> %i.cx, <double 5.870000e-01, double -3.312640e-01>
  %i.cz = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.da = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.db = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.da, <2 x double> <double 2.990000e-01, double -1.687360e-01>, <2 x double> %i.cy)
  %i.dc = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.dd = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.de = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dd, <2 x double> <double 1.140000e-01, double 5.000000e-01>, <2 x double> %i.db)
  %i.df = fmul double %i.cu, -4.186880e-01
  %i.dg = call double @llvm.fmuladd.f64(double %i.cv, double 5.000000e-01, double %i.df)
  %i.dh = call double @llvm.fmuladd.f64(double %i.cq, double -8.131200e-02, double %i.dg)
  %i.di = fadd double %i.dh, 1.280000e+02         ; 2 uses
  %i.dj = fadd <2 x double> %i.de, <double -0.000000e+00, double 1.280000e+02> ; 2 uses
  store <2 x double> %i.dj, ptr %i.ak, align 8, !tbaa !18
  store double %i.di, ptr %i.al, align 8, !tbaa !18
  store double 0.000000e+00, ptr %i.am, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  store i64 0, ptr %i.ap, align 8
  store i32 50397184, ptr %10, align 8, !tbaa !21
  store ptr %0, ptr %i.ao, align 8, !tbaa !22
  %.sroa.030.0.copyload = load i64, ptr %i.aj, align 8, !tbaa !23
  %i.dk = load i32, ptr %i.aq, align 8, !tbaa !43
  %i.dl = load double, ptr %i.ar, align 8, !tbaa !44
  store <2 x double> %i.dj, ptr %11, align 16, !tbaa !18
  store double %i.di, ptr %i.as, align 16, !tbaa !18
  store double 0.000000e+00, ptr %i.at, align 8, !tbaa !18
  %i.dm = load i32, ptr %i.an, align 8, !tbaa !45
  %i.dn = load i32, ptr %i.au, align 4, !tbaa !46
  %i.do = load i8, ptr %i.av, align 8, !tbaa !47, !range !48, !noundef !49
  %i.dp = trunc nuw i8 %i.do to i1
  invoke void @_ZN2cv7putTextERKNS_17_InputOutputArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Point_IiEEidNS_7Scalar_IdEEiib(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 %.sroa.030.0.copyload, i32 noundef %i.dk, double noundef %i.dl, ptr noundef nonnull align 8 dead_on_return %11, i32 noundef %i.dm, i32 noundef %i.dn, i1 noundef zeroext %i.dp)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.dq = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.ah
  br i1 %i.dr, label %_ZN2cv4gapi3wip4draw4TextD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.ds = load i64, ptr %i.ah, align 8, !tbaa !39
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #18
  br label %_ZN2cv4gapi3wip4draw4TextD2Ev.exit

_ZN2cv4gapi3wip4draw4TextD2Ev.exit:               ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.at

bb.g:                                             ; preds = %bb.e
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.dv = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.ah
  br i1 %i.dw, label %_ZN2cv4gapi3wip4draw4TextD2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91: ; preds = %bb.g
  %i.dx = load i64, ptr %i.ah, align 8, !tbaa !39
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dy) #18
  br label %_ZN2cv4gapi3wip4draw4TextD2Ev.exit93

_ZN2cv4gapi3wip4draw4TextD2Ev.exit93:             ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %common.resume

_ZN2cv4util3getINS_4gapi3wip4draw5FTextEJNS4_4TextES5_NS4_4RectENS4_6CircleENS4_4LineENS4_6MosaicENS4_5ImageENS4_4PolyEEEERKT_RKNS0_7variantIJDpT0_EEE.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0114.0124, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0114.0124, i64 72
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0114.0124, i64 64
  %i.ec = load double, ptr %i.dz, align 8, !tbaa !18, !noalias !127 ; 2 uses
  %i.ed = load double, ptr %i.ea, align 8, !tbaa !18, !noalias !127 ; 2 uses
  %i.ee = load double, ptr %i.eb, align 8, !tbaa !18, !noalias !127 ; 2 uses
  %i.ef = insertelement <2 x double> poison, double %i.ee, i64 0
  %i.eg = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eh = fmul <2 x double> %i.eg, <double 5.870000e-01, double -3.312640e-01>
  %i.ei = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.ej = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ek = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ej, <2 x double> <double 2.990000e-01, double -1.687360e-01>, <2 x double> %i.eh)
  %i.el = insertelement <2 x double> poison, double %i.ec, i64 0
  %i.em = shufflevector <2 x double> %i.el, <2 x double> poison, <2 x i32> zeroinitializer
  %i.en = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.em, <2 x double> <double 1.140000e-01, double 5.000000e-01>, <2 x double> %i.ek)
  %i.eo = fmul double %i.ee, -4.186880e-01
  %i.ep = call double @llvm.fmuladd.f64(double %i.ed, double 5.000000e-01, double %i.eo)
  %i.eq = call double @llvm.fmuladd.f64(double %i.ec, double -8.131200e-02, double %i.ep)
  %i.er = fadd double %i.eq, 1.280000e+02
  %i.es = fadd <2 x double> %i.en, <double -0.000000e+00, double 1.280000e+02>
  store <2 x double> %i.es, ptr %12, align 16, !tbaa !18, !alias.scope !127
  store double %i.er, ptr %i.aa, align 16, !tbaa !18, !alias.scope !127
  store double 0.000000e+00, ptr %i.ab, align 8, !tbaa !18, !alias.scope !127
  %i.et = load ptr, ptr %2, align 8, !tbaa !54    ; 2 uses
  %.not118 = icmp eq ptr %i.et, null
  br i1 %.not118, label %bb.h, label %bb.m

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
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.l:                                             ; preds = %bb.i
  %i.ev = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ew = load ptr, ptr %13, align 8, !tbaa !36   ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.ez = load i64, ptr %i.ex, align 8, !tbaa !39
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.fa) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.k
  %.pn79 = phi { ptr, i32 } [ %i.eu, %bb.k ], [ %i.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ev, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %bb.v

bb.m:                                             ; preds = %_ZN2cv4util3getINS_4gapi3wip4draw5FTextEJNS4_4TextES5_NS4_4RectENS4_6CircleENS4_4LineENS4_6MosaicENS4_5ImageENS4_4PolyEEEERKT_RKNS0_7variantIJDpT0_EEE.exit
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0114.0124, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 0, ptr %i.b, align 4, !tbaa !23
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0114.0124, i64 48 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !59
  %i.fe = call i64 @_ZN2cv4gapi3wip4draw12FTTextRender11getTextSizeERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEiPi(ptr noundef nonnull align 8 dereferenceable(16) %i.et, ptr noundef nonnull align 8 dereferenceable(32) %i.fb, i32 noundef %i.fd, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, i8 0, i64 32, i1 false)
  call void @_ZN2cv3MatC1ENS_5Size_IiEEiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %15, i64 %i.fe, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  %i.ff = load i32, ptr %i.ac, align 8, !tbaa !66
  %i.fg = load i32, ptr %i.b, align 4, !tbaa !23
  %i.fh = sub nsw i32 %i.ff, %i.fg
  store i32 0, ptr %17, align 4, !tbaa !67
  store i32 %i.fh, ptr %i.ad, align 4, !tbaa !68
  %i.fi = load ptr, ptr %2, align 8, !tbaa !54
  %i.fj = load i32, ptr %i.fc, align 8, !tbaa !59
  invoke void @_ZN2cv4gapi3wip4draw12FTTextRender7putTextERNS_3MatERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEERKNS_6Point_IiEEi(ptr noundef nonnull align 8 dereferenceable(16) %i.fi, ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 8 dereferenceable(32) %i.fb, ptr noundef nonnull align 4 dereferenceable(8) %17, i32 noundef %i.fj)
          to label %bb.n unwind label %bb.t

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  %i.fk = load i32, ptr %i.ae, align 8, !tbaa !69 ; 3 uses
  %i.fl = icmp slt i32 %i.fk, 3
  br i1 %i.fl, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.o
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.7, i32 noundef 109) #19
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %.noexc
  unreachable

bb.q:                                             ; preds = %.noexc
  %i.fm = landingpad { ptr, i32 }
          cleanup
  %i.fn = load ptr, ptr %5, align 8, !tbaa !36    ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.fp = icmp eq ptr %i.fn, %i.fo
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i95: ; preds = %bb.q
  %i.fq = load i64, ptr %i.fo, align 8, !tbaa !39
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fr) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %.body

bb.r:                                             ; preds = %bb.n
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0114.0124, i64 44
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !70
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0114.0124, i64 40
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !71
  %i.fw = icmp eq i32 %i.fk, 2
  %i.fx = load i32, ptr %i.af, align 4
  %i.fy = icmp sgt i32 %i.fk, -1
  %i.fz = zext i1 %i.fy to i32
  %i.ga = select i1 %i.fw, i32 %i.fx, i32 %i.fz
  %i.gb = sub i32 %i.ft, %i.ga
  %i.gc = load i32, ptr %i.b, align 4, !tbaa !23
  %i.gd = add nsw i32 %i.gb, %i.gc
  store i32 %i.fv, ptr %18, align 4, !tbaa !67
  store i32 %i.gd, ptr %i.ag, align 4, !tbaa !68
  invoke void @_ZN2cv4gapi3wip4draw13blendTextMaskERNS_3MatES4_RKNS_6Point_IiEERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 4 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %bb.at

bb.t:                                             ; preds = %bb.m
end_hunk_0
