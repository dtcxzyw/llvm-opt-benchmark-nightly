Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/signed_distance_isosurface?download=true
inline.NumInlined: 15413
inline.NumDeleted: 5213
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 85
begin_hunk_0_@_ZNK4CGAL8internal25Static_filters_predicates25Side_of_oriented_sphere_3INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES6_EEEEEclERKNS_7Point_3IS6_EESE_SE_SE_SE_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #38
  %i.ay = fsub double %i.x, %i.am                 ; 4 uses
  store double %i.ay, ptr %i.f, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #38
  %i.az = fsub double %i.z, %i.ao                 ; 4 uses
  store double %i.az, ptr %i.g, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #38
  %i.ba = fmul double %i.ax, %i.ax
  %i.bb = fmul double %i.ay, %i.ay
  %i.bc = fadd double %i.ba, %i.bb
  %i.bd = fmul double %i.az, %i.az
  %i.be = fadd double %i.bc, %i.bd
  store double %i.be, ptr %i.h, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #38
  %i.bf = fsub double %i.aa, %i.ak                ; 4 uses
  store double %i.bf, ptr %i.i, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #38
  %i.bg = fsub double %i.ac, %i.am                ; 4 uses
  store double %i.bg, ptr %i.j, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #38
  %i.bh = fsub double %i.ae, %i.ao                ; 4 uses
  store double %i.bh, ptr %i.k, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #38
  %i.bi = fmul double %i.bf, %i.bf
  %i.bj = fmul double %i.bg, %i.bg
  %i.bk = fadd double %i.bi, %i.bj
  %i.bl = fmul double %i.bh, %i.bh
  %i.bm = fadd double %i.bk, %i.bl
  store double %i.bm, ptr %i.l, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #38
  %i.bn = fsub double %i.af, %i.ak                ; 4 uses
  store double %i.bn, ptr %i.m, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #38
  %i.bo = fsub double %i.ah, %i.am                ; 4 uses
  store double %i.bo, ptr %i.n, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #38
  %i.bp = fsub double %i.aj, %i.ao                ; 4 uses
  store double %i.bp, ptr %i.o, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #38
  %i.bq = fmul double %i.bn, %i.bn
  %i.br = fmul double %i.bo, %i.bo
  %i.bs = fadd double %i.bq, %i.br
  %i.bt = fmul double %i.bp, %i.bp
  %i.bu = fadd double %i.bs, %i.bt
  store double %i.bu, ptr %i.p, align 8, !tbaa !95
  %i.bv = tail call noundef double @llvm.fabs.f64(double %i.ap) ; 2 uses
  %i.bw = tail call noundef double @llvm.fabs.f64(double %i.aq) ; 2 uses
  %i.bx = tail call noundef double @llvm.fabs.f64(double %i.ar) ; 2 uses
  %i.by = tail call noundef double @llvm.fabs.f64(double %i.ax) ; 2 uses
  %i.bz = tail call noundef double @llvm.fabs.f64(double %i.bf) ; 2 uses
  %i.ca = tail call noundef double @llvm.fabs.f64(double %i.bn) ; 2 uses
  %i.cb = tail call noundef double @llvm.fabs.f64(double %i.ay) ; 2 uses
  %i.cc = tail call noundef double @llvm.fabs.f64(double %i.bg) ; 2 uses
  %i.cd = tail call noundef double @llvm.fabs.f64(double %i.bo) ; 2 uses
  %i.ce = tail call noundef double @llvm.fabs.f64(double %i.az) ; 2 uses
  %i.cf = tail call noundef double @llvm.fabs.f64(double %i.bh) ; 2 uses
  %i.cg = tail call noundef double @llvm.fabs.f64(double %i.bp) ; 2 uses
  %i.ch = fcmp olt double %i.bv, %i.by
  %.0110 = select i1 %i.ch, double %i.by, double %i.bv ; 2 uses
  %i.ci = fcmp olt double %.0110, %i.bz
  %.1111 = select i1 %i.ci, double %i.bz, double %.0110 ; 2 uses
  %i.cj = fcmp olt double %.1111, %i.ca
  %.2112 = select i1 %i.cj, double %i.ca, double %.1111 ; 4 uses
  %i.ck = fcmp olt double %i.bw, %i.cb
  %.0107 = select i1 %i.ck, double %i.cb, double %i.bw ; 2 uses
  %i.cl = fcmp olt double %.0107, %i.cc
  %.1108 = select i1 %i.cl, double %i.cc, double %.0107 ; 2 uses
  %i.cm = fcmp olt double %.1108, %i.cd
  %.2109 = select i1 %i.cm, double %i.cd, double %.1108 ; 5 uses
  %i.cn = fcmp olt double %i.bx, %i.ce
  %.0 = select i1 %i.cn, double %i.ce, double %i.bx ; 2 uses
  %i.co = fcmp olt double %.0, %i.cf
  %.1106 = select i1 %i.co, double %i.cf, double %.0 ; 2 uses
  %i.cp = fcmp olt double %.1106, %i.cg
  %.2 = select i1 %i.cp, double %i.cg, double %.1106 ; 4 uses
  %i.cq = fmul double %.2112, f0x3D418B6626A0000F
  %i.cr = fmul double %i.cq, %.2109
  %i.cs = fmul double %i.cr, %.2
  %i.ct = fcmp ogt double %.2112, %.2             ; 2 uses
  %.3113 = select i1 %i.ct, double %.2, double %.2112 ; 3 uses
  %.3 = select i1 %i.ct, double %.2112, double %.2 ; 3 uses
  %i.cu = fcmp ogt double %.2109, %.3
  br i1 %i.cu, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.cv = fcmp olt double %.2109, %.3113
  br i1 %i.cv, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.4114 = phi double [ %.3113, %bb.b ], [ %.2109, %bb.c ], [ %.3113, %bb.a ] ; 2 uses
  %.4 = phi double [ %.3, %bb.b ], [ %.3, %bb.c ], [ %.2109, %bb.a ] ; 3 uses
  %i.cw = call noundef double @_ZN4CGAL11determinantIdEET_RKS1_S3_S3_S3_S3_S3_S3_S3_S3_S3_S3_S3_S3_S3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 2 uses
  %i.cx = fcmp olt double %.4114, 1.000000e-58
  br i1 %i.cx, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cy = fcmp oeq double %.4114, 0.000000e+00
  br i1 %i.cy, label %.thread, label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.cz = fcmp olt double %.4, f0x4C98E45E1DF3B015
  br i1 %i.cz, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.da = fmul double %.4, %.4
  %i.db = fmul double %i.cs, %i.da                ; 2 uses
  %i.dc = fcmp ogt double %i.cw, %i.db
  br i1 %i.dc, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dd = fneg double %i.db
  %i.de = fcmp olt double %i.cw, %i.dd
  br i1 %i.de, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.g, %bb.e, %bb.h
  %.045.ph = phi i32 [ -1, %bb.h ], [ 0, %bb.e ], [ 1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  br label %bb.j

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  %i.df = call noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors25Side_of_oriented_sphere_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Point_3IST_EES16_S16_S16_S16_EEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i
  %.1 = phi i32 [ %i.df, %bb.i ], [ %.045.ph, %.thread ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef double @_ZN4CGAL11determinantIdEET_RKS1_S3_S3_S3_S3_S3_S3_S3_S3_S3_S3_S3_S3_S3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %15) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = load double, ptr %4, align 8, !tbaa !95  ; 2 uses
  %i.b = load double, ptr %1, align 8, !tbaa !95
  %i.c = load double, ptr %0, align 8, !tbaa !95
  %i.d = load double, ptr %5, align 8, !tbaa !95  ; 2 uses
  %i.e = load double, ptr %8, align 8, !tbaa !95  ; 2 uses
  %i.f = load double, ptr %9, align 8, !tbaa !95  ; 2 uses
  %i.g = insertelement <2 x double> poison, double %i.d, i64 0
  %i.h = insertelement <2 x double> %i.g, double %i.f, i64 1 ; 2 uses
  %i.i = fneg <2 x double> %i.h
  %i.j = insertelement <2 x double> poison, double %i.c, i64 0 ; 2 uses
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = fmul <2 x double> %i.k, %i.i
  %i.m = insertelement <2 x double> poison, double %i.a, i64 0
  %i.n = insertelement <2 x double> %i.m, double %i.e, i64 1 ; 2 uses
  %i.o = insertelement <2 x double> poison, double %i.b, i64 0 ; 2 uses
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.p, <2 x double> %i.l) ; 3 uses
  %i.r = load double, ptr %12, align 8, !tbaa !95
  %i.s = load double, ptr %13, align 8, !tbaa !95
  %i.t = insertelement <2 x double> poison, double %i.s, i64 0
  %i.u = insertelement <2 x double> %i.t, double %i.f, i64 1
  %i.v = fneg <2 x double> %i.u                   ; 2 uses
  %i.w = insertelement <2 x double> %i.j, double %i.a, i64 1
  %i.x = fmul <2 x double> %i.w, %i.v
  %i.y = insertelement <2 x double> poison, double %i.r, i64 0 ; 2 uses
  %i.z = insertelement <2 x double> %i.y, double %i.e, i64 1
  %i.aa = insertelement <2 x double> %i.o, double %i.d, i64 1
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> %i.aa, <2 x double> %i.x) ; 4 uses
  %i.ac = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = fmul <2 x double> %i.n, %i.ac
  %i.ae = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.h, <2 x double> %i.ad) ; 3 uses
  %i.ag = load double, ptr %2, align 8, !tbaa !95
  %i.ah = load double, ptr %6, align 8, !tbaa !95 ; 2 uses
  %i.ai = fneg double %i.ah
  %i.aj = load double, ptr %10, align 8, !tbaa !95 ; 2 uses
  %i.ak = shufflevector <2 x double> %i.q, <2 x double> %i.ab, <2 x i32> <i32 1, i32 2>
  %i.al = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x double> %i.ak, %i.am
  %i.ao = shufflevector <2 x double> %i.ab, <2 x double> %i.af, <2 x i32> <i32 1, i32 2>
  %i.ap = insertelement <2 x double> poison, double %i.ag, i64 0 ; 2 uses
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> %i.aq, <2 x double> %i.an)
  %16 = load double, ptr %14, align 8, !tbaa !95  ; 2 uses
  %17 = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %18 = insertelement <2 x double> poison, double %i.aj, i64 0
  %19 = insertelement <2 x double> %18, double %16, i64 1
  %20 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> %19, <2 x double> %i.ar) ; 2 uses
  %i.as = fneg double %i.aj
  %i.at = shufflevector <2 x double> %i.ab, <2 x double> %i.af, <2 x i32> <i32 0, i32 2>
  %i.au = insertelement <2 x double> poison, double %i.as, i64 0
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = fmul <2 x double> %i.at, %i.av
  %i.ax = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ay = insertelement <2 x double> %i.ap, double %i.ah, i64 1
  %i.az = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.ay, <2 x double> %i.aw)
  %21 = shufflevector <2 x double> %i.q, <2 x double> %i.ab, <2 x i32> <i32 1, i32 3>
  %22 = insertelement <2 x double> poison, double %16, i64 0
  %23 = shufflevector <2 x double> %22, <2 x double> poison, <2 x i32> zeroinitializer
  %24 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %21, <2 x double> %23, <2 x double> %i.az) ; 2 uses
  %i.ba = load double, ptr %3, align 8, !tbaa !95
  %i.bb = load double, ptr %7, align 8, !tbaa !95
  %i.bc = fneg double %i.bb
  %25 = extractelement <2 x double> %24, i64 0
  %i.bd = fmul double %25, %i.bc
  %26 = extractelement <2 x double> %24, i64 1
  %i.be = tail call double @llvm.fmuladd.f64(double %26, double %i.ba, double %i.bd)
  %i.bf = load double, ptr %11, align 8, !tbaa !95
  %27 = extractelement <2 x double> %20, i64 1
  %i.bg = tail call double @llvm.fmuladd.f64(double %27, double %i.bf, double %i.be)
  %i.bh = load double, ptr %15, align 8, !tbaa !95
  %28 = extractelement <2 x double> %20, i64 0
  %i.bi = fneg double %28
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.bi, double %i.bh, double %i.bg)
  ret double %i.bj
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors25Side_of_oriented_sphere_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Point_3IST_EES16_S16_S16_S16_EEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.CGAL::Point_3.561", align 16 ; 7 uses
  %7 = alloca %"class.CGAL::Point_3.561", align 16 ; 7 uses
  %8 = alloca %"class.CGAL::Point_3.561", align 16 ; 7 uses
  %9 = alloca %"class.CGAL::Point_3.561", align 16 ; 7 uses
  %10 = alloca %"class.CGAL::Point_3.561", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.g)
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 24576                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.e)
  %i.j = load i32, ptr %i.e, align 4
  %i.k = and i32 %i.j, -24577
  %i.l = or disjoint i32 %i.k, 16384
  store i32 %i.l, ptr %i.f, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !2134)
  %i.m = load <2 x double>, ptr %1, align 8, !tbaa !95, !noalias !2134 ; 3 uses
  %i.n = fneg <2 x double> %i.m                   ; 2 uses
  %i.o = shufflevector <2 x double> %i.n, <2 x double> %i.m, <2 x i32> <i32 0, i32 2>
  %i.p = shufflevector <2 x double> %i.n, <2 x double> %i.m, <2 x i32> <i32 1, i32 3>
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load double, ptr %i.q, align 8, !tbaa !95, !noalias !2134 ; 2 uses
  %i.s = fneg double %i.r
  %i.t = insertelement <2 x double> poison, double %i.s, i64 0
  %i.u = insertelement <2 x double> %i.t, double %i.r, i64 1
  store <2 x double> %i.o, ptr %6, align 16, !alias.scope !2134
  %.sroa.04.i.i.i.i.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store <2 x double> %i.p, ptr %.sroa.04.i.i.i.i.sroa.4.0..sroa_idx.i, align 16, !alias.scope !2134
  %.sroa.04.i.i.i.i.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store <2 x double> %i.u, ptr %.sroa.04.i.i.i.i.sroa.5.0..sroa_idx.i, align 16, !alias.scope !2134
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !2135)
  %i.v = load double, ptr %2, align 8, !tbaa !95, !noalias !2135 ; 2 uses
  %i.w = fneg double %i.v
  %i.x = insertelement <2 x double> poison, double %i.w, i64 0
  %i.y = insertelement <2 x double> %i.x, double %i.v, i64 1
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load <2 x double>, ptr %i.z, align 8, !tbaa !95, !noalias !2135 ; 3 uses
  %i.ab = fneg <2 x double> %i.aa                 ; 2 uses
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> %i.aa, <2 x i32> <i32 0, i32 2>
  %i.ad = shufflevector <2 x double> %i.ab, <2 x double> %i.aa, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.y, ptr %7, align 16, !alias.scope !2135
  %.sroa.04.i.i.i.i.sroa.4.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store <2 x double> %i.ac, ptr %.sroa.04.i.i.i.i.sroa.4.0..sroa_idx.i38, align 16, !alias.scope !2135
  %.sroa.04.i.i.i.i.sroa.5.0..sroa_idx.i39 = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  store <2 x double> %i.ad, ptr %.sroa.04.i.i.i.i.sroa.5.0..sroa_idx.i39, align 16, !alias.scope !2135
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !2136)
  %i.ae = load <2 x double>, ptr %3, align 8, !tbaa !95, !noalias !2136 ; 3 uses
  %i.af = fneg <2 x double> %i.ae                 ; 2 uses
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> %i.ae, <2 x i32> <i32 0, i32 2>
  %i.ah = shufflevector <2 x double> %i.af, <2 x double> %i.ae, <2 x i32> <i32 1, i32 3>
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !95, !noalias !2136 ; 2 uses
  %i.ak = fneg double %i.aj
  %i.al = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.am = insertelement <2 x double> %i.al, double %i.aj, i64 1
  store <2 x double> %i.ag, ptr %8, align 16, !alias.scope !2136
  %.sroa.04.i.i.i.i.sroa.4.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store <2 x double> %i.ah, ptr %.sroa.04.i.i.i.i.sroa.4.0..sroa_idx.i40, align 16, !alias.scope !2136
  %.sroa.04.i.i.i.i.sroa.5.0..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store <2 x double> %i.am, ptr %.sroa.04.i.i.i.i.sroa.5.0..sroa_idx.i41, align 16, !alias.scope !2136
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !2137)
  %i.an = load double, ptr %4, align 8, !tbaa !95, !noalias !2137 ; 2 uses
  %i.ao = fneg double %i.an
  %i.ap = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.aq = insertelement <2 x double> %i.ap, double %i.an, i64 1
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.as = load <2 x double>, ptr %i.ar, align 8, !tbaa !95, !noalias !2137 ; 3 uses
  %i.at = fneg <2 x double> %i.as                 ; 2 uses
  %i.au = shufflevector <2 x double> %i.at, <2 x double> %i.as, <2 x i32> <i32 0, i32 2>
  %i.av = shufflevector <2 x double> %i.at, <2 x double> %i.as, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.aq, ptr %9, align 16, !alias.scope !2137
  %.sroa.04.i.i.i.i.sroa.4.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store <2 x double> %i.au, ptr %.sroa.04.i.i.i.i.sroa.4.0..sroa_idx.i42, align 16, !alias.scope !2137
  %.sroa.04.i.i.i.i.sroa.5.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  store <2 x double> %i.av, ptr %.sroa.04.i.i.i.i.sroa.5.0..sroa_idx.i43, align 16, !alias.scope !2137
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !2138)
  %i.aw = load <2 x double>, ptr %5, align 8, !tbaa !95, !noalias !2138 ; 3 uses
  %i.ax = fneg <2 x double> %i.aw                 ; 2 uses
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> %i.aw, <2 x i32> <i32 0, i32 2>
  %i.az = shufflevector <2 x double> %i.ax, <2 x double> %i.aw, <2 x i32> <i32 1, i32 3>
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !95, !noalias !2138 ; 2 uses
  %i.bc = fneg double %i.bb
  %i.bd = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %i.bb, i64 1
  store <2 x double> %i.ay, ptr %10, align 16, !alias.scope !2138
  %.sroa.04.i.i.i.i.sroa.4.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store <2 x double> %i.az, ptr %.sroa.04.i.i.i.i.sroa.4.0..sroa_idx.i44, align 16, !alias.scope !2138
  %.sroa.04.i.i.i.i.sroa.5.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  store <2 x double> %i.be, ptr %.sroa.04.i.i.i.i.sroa.5.0..sroa_idx.i45, align 16, !alias.scope !2138
  %i.bf = invoke i64 @_ZN4CGAL25side_of_oriented_sphereC3INS_11Interval_ntILb0EEEEENS_19Same_uncertainty_ntINS_4SignET_E4typeERKS5_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_S9_(ptr noundef nonnull align 16 dereferenceable(48) %6, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.i.i.i.i.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.i.i.i.i.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(48) %7, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.i.i.i.i.sroa.4.0..sroa_idx.i38, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.i.i.i.i.sroa.5.0..sroa_idx.i39, ptr noundef nonnull align 16 dereferenceable(48) %8, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.i.i.i.i.sroa.4.0..sroa_idx.i40, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.i.i.i.i.sroa.5.0..sroa_idx.i41, ptr noundef nonnull align 16 dereferenceable(48) %9, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.i.i.i.i.sroa.4.0..sroa_idx.i42, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.i.i.i.i.sroa.5.0..sroa_idx.i43, ptr noundef nonnull align 16 dereferenceable(48) %10, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.i.i.i.i.sroa.4.0..sroa_idx.i44, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.i.i.i.i.sroa.5.0..sroa_idx.i45)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.bf to i32 ; 2 uses
  %.sroa.2.0.extract.shift.i = lshr i64 %i.bf, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %i.bg = icmp ne i32 %.sroa.0.0.extract.trunc.i, %.sroa.2.0.extract.trunc.i
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.bh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  %.4 = extractvalue { ptr, i32 } %i.bh, 1
  %i.bi = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #38
  %i.bj = icmp eq i32 %.4, %i.bi
  br i1 %i.bj, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %.430 = extractvalue { ptr, i32 } %i.bh, 0
  %i.bk = call ptr @__cxa_begin_catch(ptr %.430) #38 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.b, %bb.d
  %.2 = phi i32 [ undef, %bb.d ], [ %.sroa.0.0.extract.trunc.i, %bb.b ]
  %.1 = phi i1 [ true, %bb.d ], [ %i.bg, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.bl = load i32, ptr %i.c, align 4
  %i.bm = and i32 %i.bl, -24577
  %i.bn = or disjoint i32 %i.bm, %i.i
  store i32 %i.bn, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.1, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.bo = call noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors25Side_of_oriented_sphere_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EE4callIJNS_7Point_3IST_EES16_S16_S16_S16_ETnPNSt9enable_ifIXntsr22Call_operator_needs_FTIDpT_EE5valueEvE4typeELPv0EEENS_4SignEDpRKS18_(ptr noundef nonnull align 1 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %.merged = phi { ptr, i32 } [ %i.bp, %bb.g ], [ %i.bh, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.bq = load i32, ptr %i.a, align 4
  %i.br = and i32 %i.bq, -24577
  %i.bs = or disjoint i32 %i.br, %i.i
  store i32 %i.bs, ptr %i.b, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  resume { ptr, i32 } %.merged

bb.i:                                             ; preds = %bb.e, %bb.f
  %.3 = phi i32 [ %i.bo, %bb.f ], [ %.2, %bb.e ]
  ret i32 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors25Side_of_oriented_sphere_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EE4callIJNS_7Point_3IST_EES16_S16_S16_S16_ETnPNSt9enable_ifIXntsr22Call_operator_needs_FTIDpT_EE5valueEvE4typeELPv0EEENS_4SignEDpRKS18_(ptr noundef nonnull align 1 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.CGAL::Point_3.637", align 16 ; 18 uses
  %7 = alloca %"class.CGAL::Point_3.637", align 16 ; 18 uses
  %8 = alloca %"class.CGAL::Point_3.637", align 16 ; 18 uses
  %9 = alloca %"class.CGAL::Point_3.637", align 16 ; 18 uses
  %10 = alloca %"class.CGAL::Point_3.637", align 16 ; 18 uses
end_hunk_0
