Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/intersect_other?download=true
inline.NumInlined: 13173
inline.NumDeleted: 5390
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZN4CGAL13Intersections8internal12intersectionINS_5EpickEEENS_19Intersection_traitsIT_NS5_10Triangle_3ES6_E11result_typeERKS6_SA_RKS5_:bb.a
  %i.ce = load i8, ptr %i.cd, align 8, !tbaa !315, !range !77, !noundef !78
  %i.cf = trunc nuw i8 %i.ce to i1
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.ch = load i8, ptr %i.cg, align 8, !range !77
  %i.ci = trunc nuw i8 %i.ch to i1
  %or.cond = select i1 %i.cf, i1 %i.ci, i1 false
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.cj, align 8, !tbaa !285, !alias.scope !1080
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !317, !noalias !1081
  %i.cm = zext i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !317, !noalias !1081
  %i.cp = zext i8 %i.co to i64
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableINS0_21__deduce_visit_resultISt8optionalISt7variantIJN4CGAL7Point_3INS5_5EpickEEENS5_9Segment_3IS7_EENS5_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEEEEEONS5_13Intersections8internal21Triangle_Line_visitorIS7_EEJRS4_IJS8_SA_EESP_EE9_S_vtableE, i64 %i.cm
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cp
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !80, !noalias !1081
  call void %i.cs(ptr dead_on_unwind writable sret(%"class.std::optional") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(49) %7, ptr noundef nonnull align 8 dereferenceable(49) %8), !inline_history !1066
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.i

.critedge:                                        ; preds = %bb.c
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.ct, align 8, !tbaa !285, !alias.scope !1082
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.critedge, %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL13Intersections8internal12intersectionINS_5EpickEEENS_19Intersection_traitsIT_NS5_7Plane_3ES6_E11result_typeERKS6_SA_RKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::optional.232") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  %i.g = load <2 x double>, ptr %2, align 8, !tbaa !228 ; 5 uses
  %i.h = load double, ptr %i.d, align 8, !tbaa !228 ; 8 uses
  %i.i = load <2 x double>, ptr %1, align 8, !tbaa !228 ; 6 uses
  %i.j = load double, ptr %i.a, align 8, !tbaa !228 ; 9 uses
  %i.k = fneg double %i.j
  %i.l = extractelement <2 x double> %i.g, i64 0  ; 6 uses
  %i.m = fmul double %i.l, %i.k
  %i.n = extractelement <2 x double> %i.i, i64 0  ; 6 uses
  %i.o = tail call double @llvm.fmuladd.f64(double %i.n, double %i.h, double %i.m) ; 5 uses
  %i.p = fcmp une double %i.o, 0.000000e+00
  br i1 %i.p, label %_ZN4CGAL7Point_3INS_5EpickEEC2ERKdS4_S4_S4_.exit, label %bb.b

_ZN4CGAL7Point_3INS_5EpickEEC2ERKdS4_S4_S4_.exit: ; preds = %bb.a
  %i.q = load double, ptr %i.f, align 8, !tbaa !228 ; 2 uses
  %i.r = load double, ptr %i.c, align 8, !tbaa !228 ; 2 uses
  %i.s = fcmp une double %i.o, 1.000000e+00
  %i.t = fdiv double 0.000000e+00, %i.o
  %i.u = load double, ptr %i.e, align 8, !tbaa !228 ; 2 uses
  %i.v = load double, ptr %i.b, align 8, !tbaa !228 ; 2 uses
  %i.w = fneg double %i.u
  %i.x = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.y = insertelement <2 x double> %i.x, double %i.q, i64 1
  %i.z = fneg <2 x double> %i.y                   ; 2 uses
  %i.aa = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ab = insertelement <2 x double> %i.aa, double %i.r, i64 0
  %i.ac = fmul <2 x double> %i.ab, %i.z
  %i.ad = shufflevector <2 x double> %i.i, <2 x double> %i.g, <2 x i32> <i32 1, i32 2>
  %i.ae = insertelement <2 x double> poison, double %i.q, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.r, i64 1
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> %i.af, <2 x double> %i.ac) ; 2 uses
  %i.ah = insertelement <2 x double> poison, double %i.o, i64 0
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = fdiv <2 x double> %i.ag, %i.ai
  %i.ak = insertelement <2 x i1> poison, i1 %i.s, i64 0
  %i.al = shufflevector <2 x i1> %i.ak, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.am = select <2 x i1> %i.al, <2 x double> %i.aj, <2 x double> %i.ag
  store <2 x double> %i.am, ptr %0, align 8
  %.sroa.0.sroa.5165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.t, ptr %.sroa.0.sroa.5165.0..sroa_idx, align 8
  %.sroa.4147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = insertelement <2 x double> poison, double %i.v, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.w, i64 1
  %i.ap = shufflevector <2 x double> %i.z, <2 x double> %i.i, <2 x i32> <i32 0, i32 2>
  %i.aq = fmul <2 x double> %i.ao, %i.ap
  %i.ar = insertelement <2 x double> %i.x, double %i.j, i64 0
  %i.as = insertelement <2 x double> poison, double %i.u, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.v, i64 1
  %i.au = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.at, <2 x double> %i.aq)
  store <2 x double> %i.au, ptr %.sroa.4147.0..sroa_idx, align 8
  %.sroa.6149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.o, ptr %.sroa.6149.0..sroa_idx, align 8
  br label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.av = load double, ptr %i.e, align 8, !tbaa !228 ; 6 uses
  %i.aw = load double, ptr %i.b, align 8, !tbaa !228 ; 8 uses
  %i.ax = fneg double %i.aw
  %i.ay = fmul double %i.l, %i.ax
  %i.az = tail call double @llvm.fmuladd.f64(double %i.n, double %i.av, double %i.ay) ; 5 uses
  %i.ba = fcmp une double %i.az, 0.000000e+00
  br i1 %i.ba, label %_ZN4CGAL7Point_3INS_5EpickEEC2ERKdS4_S4_S4_.exit99, label %bb.c

_ZN4CGAL7Point_3INS_5EpickEEC2ERKdS4_S4_S4_.exit99: ; preds = %bb.b
  %i.bb = load double, ptr %i.f, align 8, !tbaa !228 ; 2 uses
  %i.bc = load double, ptr %i.c, align 8, !tbaa !228 ; 2 uses
  %i.bd = fneg double %i.av                       ; 2 uses
  %i.be = fmul double %i.bc, %i.bd
  %i.bf = fneg double %i.bb
  %i.bg = fmul double %i.n, %i.bf
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.l, double %i.bc, double %i.bg) ; 2 uses
  %i.bi = fcmp une double %i.az, 1.000000e+00     ; 2 uses
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.bb, double %i.be) ; 2 uses
  %i.bk = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.bj, i64 0
  %i.bl = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bm = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bn = fdiv <2 x double> %i.bk, %i.bm          ; 2 uses
  %i.bo = fdiv double %i.bh, %i.az
  %i.bp = extractelement <2 x double> %i.bn, i64 0
  %.sink14.i.i.i.i.i.i94 = select i1 %i.bi, double %i.bp, double %i.bj
  %.sink.i.i.i.i.i.i96 = select i1 %i.bi, double %i.bo, double %i.bh
  %i.bq = fmul double %i.j, %i.bd
  %i.br = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.h, double %i.bq)
  %i.bs = fneg double %i.h
  %i.bt = fmul double %i.n, %i.bs
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.l, double %i.j, double %i.bt)
  store double %.sink14.i.i.i.i.i.i94, ptr %0, align 8
  %.sroa.0.sroa.4145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bv = extractelement <2 x double> %i.bn, i64 1
  store double %i.bv, ptr %.sroa.0.sroa.4145.0..sroa_idx, align 8
  %.sroa.0.sroa.5146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sink.i.i.i.i.i.i96, ptr %.sroa.0.sroa.5146.0..sroa_idx, align 8
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.br, ptr %.sroa.4128.0..sroa_idx, align 8
  %.sroa.5129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.az, ptr %.sroa.5129.0..sroa_idx, align 8
  %.sroa.6130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.bu, ptr %.sroa.6130.0..sroa_idx, align 8
  br label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.bw = fneg double %i.h
  %i.bx = fmul double %i.aw, %i.bw
  %i.by = tail call double @llvm.fmuladd.f64(double %i.j, double %i.av, double %i.bx) ; 5 uses
  %i.bz = fcmp une double %i.by, 0.000000e+00
  br i1 %i.bz, label %_ZN4CGAL7Point_3INS_5EpickEEC2ERKdS4_S4_S4_.exit110, label %bb.d

_ZN4CGAL7Point_3INS_5EpickEEC2ERKdS4_S4_S4_.exit110: ; preds = %bb.c
  %i.ca = load double, ptr %i.f, align 8, !tbaa !228 ; 2 uses
  %i.cb = load double, ptr %i.c, align 8, !tbaa !228 ; 2 uses
  %i.cc = fcmp une double %i.by, 1.000000e+00
  %i.cd = fdiv double 0.000000e+00, %i.by
  store double %i.cd, ptr %0, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ce = insertelement <2 x double> poison, double %i.av, i64 0 ; 2 uses
  %i.cf = insertelement <2 x double> %i.ce, double %i.ca, i64 1
  %i.cg = fneg <2 x double> %i.cf
  %i.ch = insertelement <2 x double> poison, double %i.cb, i64 0
  %i.ci = insertelement <2 x double> %i.ch, double %i.j, i64 1
  %i.cj = fmul <2 x double> %i.ci, %i.cg
  %i.ck = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.cl = insertelement <2 x double> %i.ck, double %i.cb, i64 1
  %i.cm = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.cn = insertelement <2 x double> %i.cm, double %i.h, i64 1
  %i.co = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cl, <2 x double> %i.cn, <2 x double> %i.cj) ; 2 uses
  %i.cp = insertelement <2 x double> poison, double %i.by, i64 0
  %i.cq = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cr = fdiv <2 x double> %i.co, %i.cq
  %i.cs = insertelement <2 x i1> poison, i1 %i.cc, i64 0
  %i.ct = shufflevector <2 x i1> %i.cs, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.cu = select <2 x i1> %i.ct, <2 x double> %i.cr, <2 x double> %i.co
  store <2 x double> %i.cu, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.by, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cv = insertelement <2 x double> %i.i, double %i.j, i64 1
  %i.cw = shufflevector <2 x double> %i.ce, <2 x double> %i.g, <2 x i32> <i32 0, i32 2>
  %i.cx = fneg <2 x double> %i.cw
  %i.cy = fmul <2 x double> %i.cv, %i.cx
  %i.cz = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.da = insertelement <2 x double> %i.cz, double %i.h, i64 1
  %i.db = shufflevector <2 x double> %i.g, <2 x double> %i.i, <2 x i32> <i32 0, i32 2>
  %i.dc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.da, <2 x double> %i.db, <2 x double> %i.cy)
  store <2 x double> %i.dc, ptr %.sroa.5.0..sroa_idx, align 8
  br label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.dd = fcmp une double %i.n, 0.000000e+00
  %i.de = fcmp une double %i.l, 0.000000e+00
  %or.cond = or i1 %i.dd, %i.de
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.df = load double, ptr %i.f, align 8, !tbaa !228
  %i.dg = fmul double %i.n, %i.df
  %i.dh = load double, ptr %i.c, align 8, !tbaa !228
  %i.di = fmul double %i.l, %i.dh
  %i.dj = fcmp oeq double %i.dg, %i.di
  br i1 %i.dj, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %.sink.split

bb.g:                                             ; preds = %bb.d
  %i.dk = fcmp une double %i.j, 0.000000e+00
  %i.dl = fcmp une double %i.h, 0.000000e+00
  %or.cond172 = or i1 %i.dl, %i.dk
  br i1 %or.cond172, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.dm = load double, ptr %i.f, align 8, !tbaa !228
  %i.dn = fmul double %i.j, %i.dm
  %i.do = load double, ptr %i.c, align 8, !tbaa !228
  %i.dp = fmul double %i.h, %i.do
  %i.dq = fcmp oeq double %i.dn, %i.dp
  br i1 %i.dq, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %.sink.split

bb.j:                                             ; preds = %bb.g
  %i.dr = fcmp une double %i.aw, 0.000000e+00
  %i.ds = fcmp une double %i.av, 0.000000e+00
  %or.cond173 = or i1 %i.ds, %i.dr
  br i1 %or.cond173, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.dt = load double, ptr %i.f, align 8, !tbaa !228
  %i.du = fmul double %i.aw, %i.dt
  %i.dv = load double, ptr %i.c, align 8, !tbaa !228
  %i.dw = fmul double %i.av, %i.dv
  %i.dx = fcmp oeq double %i.du, %i.dw
  br i1 %i.dx, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %.sink.split

bb.m:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN4CGAL7Point_3INS_5EpickEEC2ERKdS4_S4_S4_.exit, %_ZN4CGAL7Point_3INS_5EpickEEC2ERKdS4_S4_S4_.exit99, %_ZN4CGAL7Point_3INS_5EpickEEC2ERKdS4_S4_S4_.exit110, %bb.f, %bb.i, %bb.l, %bb.m
  %.sink177 = phi i8 [ 1, %bb.m ], [ 1, %bb.l ], [ 1, %bb.i ], [ 1, %bb.f ], [ 0, %_ZN4CGAL7Point_3INS_5EpickEEC2ERKdS4_S4_S4_.exit110 ], [ 0, %_ZN4CGAL7Point_3INS_5EpickEEC2ERKdS4_S4_S4_.exit99 ], [ 0, %_ZN4CGAL7Point_3INS_5EpickEEC2ERKdS4_S4_S4_.exit ]
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sink177, ptr %i.dy, align 8, !tbaa !313
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.k, %bb.h, %bb.e
  %.sink = phi i8 [ 0, %bb.e ], [ 0, %bb.h ], [ 0, %bb.k ], [ 1, %.sink.split ]
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %.sink, ptr %i.dz, align 8, !tbaa !311
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL13Intersections8internal31intersection_coplanar_trianglesINS_5EpickEEENS_19Intersection_traitsIT_NS5_10Triangle_3ES6_E11result_typeERKS6_SA_RKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::iterators::transform_iterator", align 8 ; 11 uses
  %5 = alloca %"class.boost::iterators::transform_iterator", align 8 ; 11 uses
  %6 = alloca %"class.CGAL::Point_3", align 8     ; 29 uses
  %7 = alloca %"class.CGAL::Point_3", align 8     ; 29 uses
  %8 = alloca %"class.CGAL::Point_3", align 8     ; 17 uses
  %9 = alloca %"class.CGAL::Point_3", align 8     ; 17 uses
  %10 = alloca %"class.std::__cxx11::list.292", align 8 ; 23 uses
  %11 = alloca %"class.std::vector.303", align 16 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr %10, ptr %i.e, align 8, !tbaa !102
  store ptr %10, ptr %10, align 8, !tbaa !103
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 8 uses
  store i64 0, ptr %i.f, align 8, !tbaa !105
  %.0.i.i.i.sroa.gep = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  %.0.i.i.i.sroa.gep287 = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  %.0.i.i.i.sroa.gep288 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %.0.i.i.i.sroa.gep290 = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %.0.i.i.i.sroa.gep291 = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %.0.i.i.i.sroa.gep292 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %.0.i15.i.i.sroa.gep = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 18 uses
  %.0.i15.i.i.sroa.gep323 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 18 uses
  %.0.i15.i.i.sroa.gep324 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 18 uses
  %.0.i15.i.i.sroa.gep326 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 18 uses
  %.0.i15.i.i.sroa.gep327 = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 18 uses
  %.0.i15.i.i.sroa.gep328 = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 18 uses
  %i.g = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #45
          to label %bb.b unwind label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEED2Ev.exit58 ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 -4294967296, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %10) #22
  %i.j = load i64, ptr %i.f, align 8, !tbaa !320
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.f, align 8, !tbaa !320
  %i.l = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #45
          to label %bb.c unwind label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEED2Ev.exit60 ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 -8589934592, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 0, i64 32, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %10) #22
  %i.o = load i64, ptr %i.f, align 8, !tbaa !320
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.f, align 8, !tbaa !320
  %i.q = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #45
          to label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEED2Ev.exit56 unwind label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEED2Ev.exit62 ; 3 uses

_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEED2Ev.exit56: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 -12884901888, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 32, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %10) #22
  %i.t = load i64, ptr %i.f, align 8, !tbaa !320
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.f, align 8, !tbaa !320
  invoke void @_ZN4CGAL13Intersections8internal38intersection_coplanar_triangles_cutoffINS_5EpickEEEvRKNT_7Point_3ES7_S7_iS7_S7_S7_RKS4_RNSt7__cxx114listINS1_17Point_on_triangleIS4_EESaISD_EEE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEED2Ev.exit56
  invoke void @_ZN4CGAL13Intersections8internal38intersection_coplanar_triangles_cutoffINS_5EpickEEEvRKNT_7Point_3ES7_S7_iS7_S7_S7_RKS4_RNSt7__cxx114listINS1_17Point_on_triangleIS4_EESaISD_EEE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4CGAL13Intersections8internal38intersection_coplanar_triangles_cutoffINS_5EpickEEEvRKNT_7Point_3ES7_S7_iS7_S7_S7_RKS4_RNSt7__cxx114listINS1_17Point_on_triangleIS4_EESaISD_EEE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i64, ptr %i.f, align 8, !tbaa !320
  switch i64 %i.v, label %bb.ch [
    i64 0, label %bb.h
    i64 1, label %bb.i
    i64 2, label %bb.v
    i64 3, label %bb.av
  ]

_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEED2Ev.exit58: ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEED2Ev.exit60: ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEED2Ev.exit62: ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.g:                                             ; preds = %bb.e, %bb.d, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEED2Ev.exit56
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.h:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.aa, align 8, !tbaa !285, !alias.scope !1129
  br label %bb.ck

bb.i:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %10, align 8, !tbaa !103  ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !328, !noalias !1130 ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  switch i32 %i.ad, label %bb.l [
    i32 -1, label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit.i.i
    i32 -2, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit.i.i

bb.l:                                             ; preds = %bb.j
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit.i.i

_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %.0.i.i.i.sroa.phi = phi ptr [ %.0.i.i.i.sroa.gep, %bb.l ], [ %.0.i.i.i.sroa.gep287, %bb.k ], [ %.0.i.i.i.sroa.gep288, %bb.j ]
  %.0.i.i.i.sroa.phi289 = phi ptr [ %.0.i.i.i.sroa.gep290, %bb.l ], [ %.0.i.i.i.sroa.gep291, %bb.k ], [ %.0.i.i.i.sroa.gep292, %bb.j ]
  %.0.i.i.i = phi ptr [ %9, %bb.l ], [ %8, %bb.k ], [ %2, %bb.j ]
  %.sroa.0183.0.copyload184 = load double, ptr %.0.i.i.i, align 8
  %.sroa.7186.0.copyload187 = load double, ptr %.0.i.i.i.sroa.phi, align 8
  %.sroa.8189.0.copyload190 = load double, ptr %.0.i.i.i.sroa.phi289, align 8
  %i.af = insertelement <2 x double> poison, double %.sroa.0183.0.copyload184, i64 0
  %i.ag = insertelement <2 x double> %i.af, double %.sroa.7186.0.copyload187, i64 1
  br label %_ZZN4CGAL13Intersections8internal31intersection_coplanar_trianglesINS_5EpickEEENS_19Intersection_traitsIT_NS5_10Triangle_3ES6_E11result_typeERKS6_SA_RKS5_ENKUlRKNS1_17Point_on_triangleIS3_EEE_clESG_.exit

bb.m:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !329, !noalias !1130 ; 4 uses
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  switch i32 %i.ai, label %bb.p [
    i32 -1, label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit16.i.i
    i32 -2, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit16.i.i

bb.p:                                             ; preds = %bb.n
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit16.i.i
end_hunk_0
