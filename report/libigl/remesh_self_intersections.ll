Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/remesh_self_intersections?download=true
inline.NumInlined: 24559
inline.NumDeleted: 7922
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 83
begin_hunk_0_@_ZN4CGAL13Intersections8internal31intersection_coplanar_trianglesINS_5EpickEEENS_19Intersection_traitsIT_NS5_10Triangle_3ES6_E11result_typeERKS6_SA_RKS5_:bb.a
  ]

bb.o:                                             ; preds = %bb.n
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit16.i.i

bb.p:                                             ; preds = %bb.n
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit16.i.i

_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit16.i.i: ; preds = %bb.p, %bb.o, %bb.n
  %.0.i15.i.i.sroa.phi = phi ptr [ %.0.i15.i.i.sroa.gep, %bb.p ], [ %.0.i15.i.i.sroa.gep323, %bb.o ], [ %.0.i15.i.i.sroa.gep324, %bb.n ]
  %.0.i15.i.i.sroa.phi325 = phi ptr [ %.0.i15.i.i.sroa.gep326, %bb.p ], [ %.0.i15.i.i.sroa.gep327, %bb.o ], [ %.0.i15.i.i.sroa.gep328, %bb.n ]
  %.0.i15.i.i = phi ptr [ %7, %bb.p ], [ %6, %bb.o ], [ %1, %bb.n ]
  %.sroa.0183.0.copyload = load double, ptr %.0.i15.i.i, align 8
  %.sroa.7186.0.copyload = load double, ptr %.0.i15.i.i.sroa.phi, align 8
  %.sroa.8189.0.copyload = load double, ptr %.0.i15.i.i.sroa.phi325, align 8
  %i.ak = insertelement <2 x double> poison, double %.sroa.0183.0.copyload, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %.sroa.7186.0.copyload, i64 1
  br label %_ZZN4CGAL13Intersections8internal31intersection_coplanar_trianglesINS_5EpickEEENS_19Intersection_traitsIT_NS5_10Triangle_3ES6_E11result_typeERKS6_SA_RKS5_ENKUlRKNS1_17Point_on_triangleIS3_EEE_clESG_.exit

bb.q:                                             ; preds = %bb.m
  %i.am = urem i32 %i.ai, 3
  switch i32 %i.am, label %bb.s [
    i32 0, label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i
    i32 1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i

bb.s:                                             ; preds = %bb.q
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i

_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i: ; preds = %bb.s, %bb.r, %bb.q
  %.0.i17.i.i.sroa.phi = phi ptr [ %.0.i15.i.i.sroa.gep, %bb.s ], [ %.0.i15.i.i.sroa.gep323, %bb.r ], [ %.0.i15.i.i.sroa.gep324, %bb.q ]
  %.0.i17.i.i.sroa.phi331 = phi ptr [ %.0.i15.i.i.sroa.gep326, %bb.s ], [ %.0.i15.i.i.sroa.gep327, %bb.r ], [ %.0.i15.i.i.sroa.gep328, %bb.q ]
  %.0.i17.i.i = phi ptr [ %7, %bb.s ], [ %6, %bb.r ], [ %1, %bb.q ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  switch i32 %i.ai, label %bb.u [
    i32 1, label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit20.i.i
    i32 2, label %bb.t
  ]

bb.t:                                             ; preds = %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit20.i.i

bb.u:                                             ; preds = %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit20.i.i

_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit20.i.i: ; preds = %bb.u, %bb.t, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i
  %.0.i19.i.i.sroa.phi = phi ptr [ %.0.i15.i.i.sroa.gep, %bb.u ], [ %.0.i15.i.i.sroa.gep323, %bb.t ], [ %.0.i15.i.i.sroa.gep324, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i ]
  %.0.i19.i.i.sroa.phi337 = phi ptr [ %.0.i15.i.i.sroa.gep326, %bb.u ], [ %.0.i15.i.i.sroa.gep327, %bb.t ], [ %.0.i15.i.i.sroa.gep328, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i ]
  %.0.i19.i.i = phi ptr [ %7, %bb.u ], [ %6, %bb.t ], [ %1, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i ]
  %i.ao = load double, ptr %i.an, align 8, !tbaa !146, !noalias !2379 ; 3 uses
  %i.ap = fsub double 1.000000e+00, %i.ao         ; 2 uses
  %i.aq = load double, ptr %.0.i17.i.i, align 8, !tbaa !146, !noalias !2379
  %i.ar = load double, ptr %.0.i19.i.i, align 8, !tbaa !146, !noalias !2379
  %i.as = load double, ptr %.0.i17.i.i.sroa.phi, align 8, !tbaa !146, !noalias !2379
  %i.at = load double, ptr %.0.i19.i.i.sroa.phi, align 8, !tbaa !146, !noalias !2379
  %i.au = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.ax = insertelement <2 x double> %i.aw, double %i.at, i64 1
  %i.ay = fmul <2 x double> %i.av, %i.ax
  %i.az = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.ba = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.as, i64 1
  %i.bd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %i.bc, <2 x double> %i.ay)
  %i.be = load double, ptr %.0.i17.i.i.sroa.phi331, align 8, !tbaa !146, !noalias !2379
  %i.bf = load double, ptr %.0.i19.i.i.sroa.phi337, align 8, !tbaa !146, !noalias !2379
  %i.bg = fmul double %i.ap, %i.bf
  %i.bh = call double @llvm.fmuladd.f64(double %i.ao, double %i.be, double %i.bg)
  br label %_ZZN4CGAL13Intersections8internal31intersection_coplanar_trianglesINS_5EpickEEENS_19Intersection_traitsIT_NS5_10Triangle_3ES6_E11result_typeERKS6_SA_RKS5_ENKUlRKNS1_17Point_on_triangleIS3_EEE_clESG_.exit

_ZZN4CGAL13Intersections8internal31intersection_coplanar_trianglesINS_5EpickEEENS_19Intersection_traitsIT_NS5_10Triangle_3ES6_E11result_typeERKS6_SA_RKS5_ENKUlRKNS1_17Point_on_triangleIS3_EEE_clESG_.exit: ; preds = %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit20.i.i, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit16.i.i, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit.i.i
  %.sroa.8189.0 = phi double [ %.sroa.8189.0.copyload190, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit.i.i ], [ %.sroa.8189.0.copyload, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit16.i.i ], [ %i.bh, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit20.i.i ]
  %i.bi = phi <2 x double> [ %i.ag, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit.i.i ], [ %i.al, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit16.i.i ], [ %i.bd, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit20.i.i ]
  store <2 x double> %i.bi, ptr %0, align 8
  %.sroa.8189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sroa.8189.0, ptr %.sroa.8189.0..sroa_idx, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.bj, align 8, !tbaa !503, !alias.scope !2380
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 1, ptr %i.bk, align 8, !tbaa !456, !alias.scope !2380
  br label %bb.ck

bb.v:                                             ; preds = %bb.f
  %i.bl = load ptr, ptr %10, align 8, !tbaa !487  ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 20
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !500, !noalias !2381 ; 2 uses
  %i.bo = icmp slt i32 %i.bn, 0
  br i1 %i.bo, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  switch i32 %i.bn, label %bb.y [
    i32 -1, label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit.i.i71
    i32 -2, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit.i.i71

bb.y:                                             ; preds = %bb.w
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit.i.i71

_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit.i.i71: ; preds = %bb.y, %bb.x, %bb.w
  %.0.i.i.i72.sroa.phi = phi ptr [ %.0.i.i.i.sroa.gep, %bb.y ], [ %.0.i.i.i.sroa.gep287, %bb.x ], [ %.0.i.i.i.sroa.gep288, %bb.w ]
  %.0.i.i.i72.sroa.phi295 = phi ptr [ %.0.i.i.i.sroa.gep290, %bb.y ], [ %.0.i.i.i.sroa.gep291, %bb.x ], [ %.0.i.i.i.sroa.gep292, %bb.w ]
  %.0.i.i.i72 = phi ptr [ %9, %bb.y ], [ %8, %bb.x ], [ %2, %bb.w ]
  %.sroa.0171.0.copyload172 = load double, ptr %.0.i.i.i72, align 8
  %.sroa.7174.0.copyload175 = load double, ptr %.0.i.i.i72.sroa.phi, align 8
  %.sroa.8177.0.copyload178 = load double, ptr %.0.i.i.i72.sroa.phi295, align 8
  %i.bp = insertelement <2 x double> poison, double %.sroa.0171.0.copyload172, i64 0
  %i.bq = insertelement <2 x double> %i.bp, double %.sroa.7174.0.copyload175, i64 1
  br label %_ZZN4CGAL13Intersections8internal31intersection_coplanar_trianglesINS_5EpickEEENS_19Intersection_traitsIT_NS5_10Triangle_3ES6_E11result_typeERKS6_SA_RKS5_ENKUlRKNS1_17Point_on_triangleIS3_EEE_clESG_.exit73

bb.z:                                             ; preds = %bb.v
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !501, !noalias !2381 ; 4 uses
  %i.bt = icmp slt i32 %i.bs, 0
  br i1 %i.bt, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  switch i32 %i.bs, label %bb.ac [
    i32 -1, label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit16.i.i69
    i32 -2, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit16.i.i69

bb.ac:                                            ; preds = %bb.aa
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit16.i.i69

_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit16.i.i69: ; preds = %bb.ac, %bb.ab, %bb.aa
  %.0.i15.i.i70.sroa.phi = phi ptr [ %.0.i15.i.i.sroa.gep, %bb.ac ], [ %.0.i15.i.i.sroa.gep323, %bb.ab ], [ %.0.i15.i.i.sroa.gep324, %bb.aa ]
  %.0.i15.i.i70.sroa.phi343 = phi ptr [ %.0.i15.i.i.sroa.gep326, %bb.ac ], [ %.0.i15.i.i.sroa.gep327, %bb.ab ], [ %.0.i15.i.i.sroa.gep328, %bb.aa ]
  %.0.i15.i.i70 = phi ptr [ %7, %bb.ac ], [ %6, %bb.ab ], [ %1, %bb.aa ]
  %.sroa.0171.0.copyload = load double, ptr %.0.i15.i.i70, align 8
  %.sroa.7174.0.copyload = load double, ptr %.0.i15.i.i70.sroa.phi, align 8
  %.sroa.8177.0.copyload = load double, ptr %.0.i15.i.i70.sroa.phi343, align 8
  %i.bu = insertelement <2 x double> poison, double %.sroa.0171.0.copyload, i64 0
  %i.bv = insertelement <2 x double> %i.bu, double %.sroa.7174.0.copyload, i64 1
  br label %_ZZN4CGAL13Intersections8internal31intersection_coplanar_trianglesINS_5EpickEEENS_19Intersection_traitsIT_NS5_10Triangle_3ES6_E11result_typeERKS6_SA_RKS5_ENKUlRKNS1_17Point_on_triangleIS3_EEE_clESG_.exit73

bb.ad:                                            ; preds = %bb.z
  %i.bw = urem i32 %i.bs, 3
  switch i32 %i.bw, label %bb.af [
    i32 0, label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i63
    i32 1, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i63

bb.af:                                            ; preds = %bb.ad
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i63

_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i63: ; preds = %bb.af, %bb.ae, %bb.ad
  %.0.i17.i.i64.sroa.phi = phi ptr [ %.0.i15.i.i.sroa.gep, %bb.af ], [ %.0.i15.i.i.sroa.gep323, %bb.ae ], [ %.0.i15.i.i.sroa.gep324, %bb.ad ]
  %.0.i17.i.i64.sroa.phi349 = phi ptr [ %.0.i15.i.i.sroa.gep326, %bb.af ], [ %.0.i15.i.i.sroa.gep327, %bb.ae ], [ %.0.i15.i.i.sroa.gep328, %bb.ad ]
  %.0.i17.i.i64 = phi ptr [ %7, %bb.af ], [ %6, %bb.ae ], [ %1, %bb.ad ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  switch i32 %i.bs, label %bb.ah [
    i32 1, label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit20.i.i65
    i32 2, label %bb.ag
  ]

bb.ag:                                            ; preds = %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i63
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit20.i.i65

bb.ah:                                            ; preds = %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i63
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit20.i.i65

_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit20.i.i65: ; preds = %bb.ah, %bb.ag, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i63
  %.0.i19.i.i66.sroa.phi = phi ptr [ %.0.i15.i.i.sroa.gep, %bb.ah ], [ %.0.i15.i.i.sroa.gep323, %bb.ag ], [ %.0.i15.i.i.sroa.gep324, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i63 ]
  %.0.i19.i.i66.sroa.phi355 = phi ptr [ %.0.i15.i.i.sroa.gep326, %bb.ah ], [ %.0.i15.i.i.sroa.gep327, %bb.ag ], [ %.0.i15.i.i.sroa.gep328, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i63 ]
  %.0.i19.i.i66 = phi ptr [ %7, %bb.ah ], [ %6, %bb.ag ], [ %1, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i63 ]
  %i.by = load double, ptr %i.bx, align 8, !tbaa !146, !noalias !2382 ; 3 uses
  %i.bz = fsub double 1.000000e+00, %i.by         ; 2 uses
  %i.ca = load double, ptr %.0.i17.i.i64, align 8, !tbaa !146, !noalias !2382
  %i.cb = load double, ptr %.0.i19.i.i66, align 8, !tbaa !146, !noalias !2382
  %i.cc = load double, ptr %.0.i17.i.i64.sroa.phi, align 8, !tbaa !146, !noalias !2382
  %i.cd = load double, ptr %.0.i19.i.i66.sroa.phi, align 8, !tbaa !146, !noalias !2382
  %i.ce = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.cf = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cg = insertelement <2 x double> poison, double %i.cb, i64 0
  %i.ch = insertelement <2 x double> %i.cg, double %i.cd, i64 1
  %i.ci = fmul <2 x double> %i.cf, %i.ch
  %i.cj = insertelement <2 x double> poison, double %i.by, i64 0
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cl = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.cm = insertelement <2 x double> %i.cl, double %i.cc, i64 1
  %i.cn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ck, <2 x double> %i.cm, <2 x double> %i.ci)
  %i.co = load double, ptr %.0.i17.i.i64.sroa.phi349, align 8, !tbaa !146, !noalias !2382
  %i.cp = load double, ptr %.0.i19.i.i66.sroa.phi355, align 8, !tbaa !146, !noalias !2382
  %i.cq = fmul double %i.bz, %i.cp
  %i.cr = call double @llvm.fmuladd.f64(double %i.by, double %i.co, double %i.cq)
  br label %_ZZN4CGAL13Intersections8internal31intersection_coplanar_trianglesINS_5EpickEEENS_19Intersection_traitsIT_NS5_10Triangle_3ES6_E11result_typeERKS6_SA_RKS5_ENKUlRKNS1_17Point_on_triangleIS3_EEE_clESG_.exit73

_ZZN4CGAL13Intersections8internal31intersection_coplanar_trianglesINS_5EpickEEENS_19Intersection_traitsIT_NS5_10Triangle_3ES6_E11result_typeERKS6_SA_RKS5_ENKUlRKNS1_17Point_on_triangleIS3_EEE_clESG_.exit73: ; preds = %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit.i.i71, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit16.i.i69, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit20.i.i65
  %.sroa.8177.0 = phi double [ %.sroa.8177.0.copyload178, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit.i.i71 ], [ %.sroa.8177.0.copyload, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit16.i.i69 ], [ %i.cr, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit20.i.i65 ]
  %i.cs = phi <2 x double> [ %i.bq, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit.i.i71 ], [ %i.bv, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit16.i.i69 ], [ %i.cn, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit20.i.i65 ]
  %i.ct = load ptr, ptr %i.bl, align 8, !tbaa !487 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 20
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !500, !noalias !2383 ; 2 uses
  %i.cw = icmp slt i32 %i.cv, 0
  br i1 %i.cw, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %_ZZN4CGAL13Intersections8internal31intersection_coplanar_trianglesINS_5EpickEEENS_19Intersection_traitsIT_NS5_10Triangle_3ES6_E11result_typeERKS6_SA_RKS5_ENKUlRKNS1_17Point_on_triangleIS3_EEE_clESG_.exit73
  switch i32 %i.cv, label %bb.ak [
    i32 -1, label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit.i.i82
    i32 -2, label %bb.aj
  ]

bb.aj:                                            ; preds = %bb.ai
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit.i.i82

bb.ak:                                            ; preds = %bb.ai
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit.i.i82

_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit.i.i82: ; preds = %bb.ak, %bb.aj, %bb.ai
  %.0.i.i.i83.sroa.phi = phi ptr [ %.0.i.i.i.sroa.gep, %bb.ak ], [ %.0.i.i.i.sroa.gep287, %bb.aj ], [ %.0.i.i.i.sroa.gep288, %bb.ai ]
  %.0.i.i.i83.sroa.phi301 = phi ptr [ %.0.i.i.i.sroa.gep290, %bb.ak ], [ %.0.i.i.i.sroa.gep291, %bb.aj ], [ %.0.i.i.i.sroa.gep292, %bb.ai ]
  %.0.i.i.i83 = phi ptr [ %9, %bb.ak ], [ %8, %bb.aj ], [ %2, %bb.ai ]
  %.sroa.0161.0.copyload162 = load double, ptr %.0.i.i.i83, align 8
  %.sroa.7164.0.copyload165 = load double, ptr %.0.i.i.i83.sroa.phi, align 8
  %.sroa.8167.0.copyload168 = load double, ptr %.0.i.i.i83.sroa.phi301, align 8
  %i.cx = insertelement <2 x double> poison, double %.sroa.0161.0.copyload162, i64 0
  %i.cy = insertelement <2 x double> %i.cx, double %.sroa.7164.0.copyload165, i64 1
  br label %bb.au

bb.al:                                            ; preds = %_ZZN4CGAL13Intersections8internal31intersection_coplanar_trianglesINS_5EpickEEENS_19Intersection_traitsIT_NS5_10Triangle_3ES6_E11result_typeERKS6_SA_RKS5_ENKUlRKNS1_17Point_on_triangleIS3_EEE_clESG_.exit73
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !501, !noalias !2383 ; 4 uses
  %i.db = icmp slt i32 %i.da, 0
  br i1 %i.db, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  switch i32 %i.da, label %bb.ao [
    i32 -1, label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit16.i.i80
    i32 -2, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit16.i.i80

bb.ao:                                            ; preds = %bb.am
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit16.i.i80

_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit16.i.i80: ; preds = %bb.ao, %bb.an, %bb.am
  %.0.i15.i.i81.sroa.phi = phi ptr [ %.0.i15.i.i.sroa.gep, %bb.ao ], [ %.0.i15.i.i.sroa.gep323, %bb.an ], [ %.0.i15.i.i.sroa.gep324, %bb.am ]
  %.0.i15.i.i81.sroa.phi361 = phi ptr [ %.0.i15.i.i.sroa.gep326, %bb.ao ], [ %.0.i15.i.i.sroa.gep327, %bb.an ], [ %.0.i15.i.i.sroa.gep328, %bb.am ]
  %.0.i15.i.i81 = phi ptr [ %7, %bb.ao ], [ %6, %bb.an ], [ %1, %bb.am ]
  %.sroa.0161.0.copyload = load double, ptr %.0.i15.i.i81, align 8
  %.sroa.7164.0.copyload = load double, ptr %.0.i15.i.i81.sroa.phi, align 8
  %.sroa.8167.0.copyload = load double, ptr %.0.i15.i.i81.sroa.phi361, align 8
  %i.dc = insertelement <2 x double> poison, double %.sroa.0161.0.copyload, i64 0
  %i.dd = insertelement <2 x double> %i.dc, double %.sroa.7164.0.copyload, i64 1
  br label %bb.au

bb.ap:                                            ; preds = %bb.al
  %i.de = urem i32 %i.da, 3
  switch i32 %i.de, label %bb.ar [
    i32 0, label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i74
    i32 1, label %bb.aq
  ]

bb.aq:                                            ; preds = %bb.ap
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i74

bb.ar:                                            ; preds = %bb.ap
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i74

_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i74: ; preds = %bb.ar, %bb.aq, %bb.ap
  %.0.i17.i.i75.sroa.phi = phi ptr [ %.0.i15.i.i.sroa.gep, %bb.ar ], [ %.0.i15.i.i.sroa.gep323, %bb.aq ], [ %.0.i15.i.i.sroa.gep324, %bb.ap ]
  %.0.i17.i.i75.sroa.phi367 = phi ptr [ %.0.i15.i.i.sroa.gep326, %bb.ar ], [ %.0.i15.i.i.sroa.gep327, %bb.aq ], [ %.0.i15.i.i.sroa.gep328, %bb.ap ]
  %.0.i17.i.i75 = phi ptr [ %7, %bb.ar ], [ %6, %bb.aq ], [ %1, %bb.ap ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  switch i32 %i.da, label %bb.at [
    i32 1, label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit20.i.i76
    i32 2, label %bb.as
  ]

bb.as:                                            ; preds = %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i74
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit20.i.i76

bb.at:                                            ; preds = %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i74
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit20.i.i76

_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit20.i.i76: ; preds = %bb.at, %bb.as, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i74
  %.0.i19.i.i77.sroa.phi = phi ptr [ %.0.i15.i.i.sroa.gep, %bb.at ], [ %.0.i15.i.i.sroa.gep323, %bb.as ], [ %.0.i15.i.i.sroa.gep324, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i74 ]
  %.0.i19.i.i77.sroa.phi373 = phi ptr [ %.0.i15.i.i.sroa.gep326, %bb.at ], [ %.0.i15.i.i.sroa.gep327, %bb.as ], [ %.0.i15.i.i.sroa.gep328, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i74 ]
  %.0.i19.i.i77 = phi ptr [ %7, %bb.at ], [ %6, %bb.as ], [ %1, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i74 ]
  %i.dg = load double, ptr %i.df, align 8, !tbaa !146, !noalias !2384 ; 3 uses
  %i.dh = fsub double 1.000000e+00, %i.dg         ; 2 uses
  %i.di = load double, ptr %.0.i17.i.i75, align 8, !tbaa !146, !noalias !2384
  %i.dj = load double, ptr %.0.i19.i.i77, align 8, !tbaa !146, !noalias !2384
  %i.dk = load double, ptr %.0.i17.i.i75.sroa.phi, align 8, !tbaa !146, !noalias !2384
  %i.dl = load double, ptr %.0.i19.i.i77.sroa.phi, align 8, !tbaa !146, !noalias !2384
  %i.dm = insertelement <2 x double> poison, double %i.dh, i64 0
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.do = insertelement <2 x double> poison, double %i.dj, i64 0
  %i.dp = insertelement <2 x double> %i.do, double %i.dl, i64 1
  %i.dq = fmul <2 x double> %i.dn, %i.dp
  %i.dr = insertelement <2 x double> poison, double %i.dg, i64 0
  %i.ds = shufflevector <2 x double> %i.dr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dt = insertelement <2 x double> poison, double %i.di, i64 0
  %i.du = insertelement <2 x double> %i.dt, double %i.dk, i64 1
  %i.dv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ds, <2 x double> %i.du, <2 x double> %i.dq)
  %i.dw = load double, ptr %.0.i17.i.i75.sroa.phi367, align 8, !tbaa !146, !noalias !2384
  %i.dx = load double, ptr %.0.i19.i.i77.sroa.phi373, align 8, !tbaa !146, !noalias !2384
  %i.dy = fmul double %i.dh, %i.dx
  %i.dz = call double @llvm.fmuladd.f64(double %i.dg, double %i.dw, double %i.dy)
  br label %bb.au

bb.au:                                            ; preds = %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit.i.i82, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit16.i.i80, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit20.i.i76
  %.sroa.8167.0 = phi double [ %.sroa.8167.0.copyload168, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit.i.i82 ], [ %.sroa.8167.0.copyload, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit16.i.i80 ], [ %i.dz, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit20.i.i76 ]
  %i.ea = phi <2 x double> [ %i.cy, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit.i.i82 ], [ %i.dd, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit16.i.i80 ], [ %i.dv, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit20.i.i76 ]
  store <2 x double> %i.cs, ptr %0, align 8
  %.sroa.0181.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sroa.8177.0, ptr %.sroa.0181.sroa.6.0..sroa_idx, align 8
  %.sroa.0181.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x double> %i.ea, ptr %.sroa.0181.sroa.7.0..sroa_idx, align 8
  %.sroa.0181.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.sroa.8167.0, ptr %.sroa.0181.sroa.9.0..sroa_idx, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 1, ptr %i.eb, align 8, !tbaa !503, !alias.scope !2385
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 1, ptr %i.ec, align 8, !tbaa !456, !alias.scope !2385
  br label %bb.ck

bb.av:                                            ; preds = %bb.f
  %i.ed = load ptr, ptr %10, align 8, !tbaa !487  ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 20
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !500, !noalias !2386 ; 2 uses
  %i.eg = icmp slt i32 %i.ef, 0
  br i1 %i.eg, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  switch i32 %i.ef, label %bb.ay [
    i32 -1, label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit.i.i93
    i32 -2, label %bb.ax
  ]

bb.ax:                                            ; preds = %bb.aw
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit.i.i93

bb.ay:                                            ; preds = %bb.aw
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit.i.i93

_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit.i.i93: ; preds = %bb.ay, %bb.ax, %bb.aw
  %.0.i.i.i94.sroa.phi = phi ptr [ %.0.i.i.i.sroa.gep, %bb.ay ], [ %.0.i.i.i.sroa.gep287, %bb.ax ], [ %.0.i.i.i.sroa.gep288, %bb.aw ]
  %.0.i.i.i94.sroa.phi307 = phi ptr [ %.0.i.i.i.sroa.gep290, %bb.ay ], [ %.0.i.i.i.sroa.gep291, %bb.ax ], [ %.0.i.i.i.sroa.gep292, %bb.aw ]
  %.0.i.i.i94 = phi ptr [ %9, %bb.ay ], [ %8, %bb.ax ], [ %2, %bb.aw ]
  %.sroa.0149.0.copyload150 = load double, ptr %.0.i.i.i94, align 8
  %.sroa.7152.0.copyload153 = load double, ptr %.0.i.i.i94.sroa.phi, align 8
  %.sroa.8155.0.copyload156 = load double, ptr %.0.i.i.i94.sroa.phi307, align 8
  %i.eh = insertelement <2 x double> poison, double %.sroa.0149.0.copyload150, i64 0
  %i.ei = insertelement <2 x double> %i.eh, double %.sroa.7152.0.copyload153, i64 1
  br label %_ZZN4CGAL13Intersections8internal31intersection_coplanar_trianglesINS_5EpickEEENS_19Intersection_traitsIT_NS5_10Triangle_3ES6_E11result_typeERKS6_SA_RKS5_ENKUlRKNS1_17Point_on_triangleIS3_EEE_clESG_.exit95

bb.az:                                            ; preds = %bb.av
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !501, !noalias !2386 ; 4 uses
  %i.el = icmp slt i32 %i.ek, 0
  br i1 %i.el, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  switch i32 %i.ek, label %bb.bc [
    i32 -1, label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit16.i.i91
    i32 -2, label %bb.bb
  ]

bb.bb:                                            ; preds = %bb.ba
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit16.i.i91

bb.bc:                                            ; preds = %bb.ba
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit16.i.i91

_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit16.i.i91: ; preds = %bb.bc, %bb.bb, %bb.ba
  %.0.i15.i.i92.sroa.phi = phi ptr [ %.0.i15.i.i.sroa.gep, %bb.bc ], [ %.0.i15.i.i.sroa.gep323, %bb.bb ], [ %.0.i15.i.i.sroa.gep324, %bb.ba ]
  %.0.i15.i.i92.sroa.phi379 = phi ptr [ %.0.i15.i.i.sroa.gep326, %bb.bc ], [ %.0.i15.i.i.sroa.gep327, %bb.bb ], [ %.0.i15.i.i.sroa.gep328, %bb.ba ]
  %.0.i15.i.i92 = phi ptr [ %7, %bb.bc ], [ %6, %bb.bb ], [ %1, %bb.ba ]
  %.sroa.0149.0.copyload = load double, ptr %.0.i15.i.i92, align 8
  %.sroa.7152.0.copyload = load double, ptr %.0.i15.i.i92.sroa.phi, align 8
  %.sroa.8155.0.copyload = load double, ptr %.0.i15.i.i92.sroa.phi379, align 8
  %i.em = insertelement <2 x double> poison, double %.sroa.0149.0.copyload, i64 0
  %i.en = insertelement <2 x double> %i.em, double %.sroa.7152.0.copyload, i64 1
  br label %_ZZN4CGAL13Intersections8internal31intersection_coplanar_trianglesINS_5EpickEEENS_19Intersection_traitsIT_NS5_10Triangle_3ES6_E11result_typeERKS6_SA_RKS5_ENKUlRKNS1_17Point_on_triangleIS3_EEE_clESG_.exit95

bb.bd:                                            ; preds = %bb.az
  %i.eo = urem i32 %i.ek, 3
  switch i32 %i.eo, label %bb.bf [
    i32 0, label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i85
    i32 1, label %bb.be
  ]

bb.be:                                            ; preds = %bb.bd
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i85

bb.bf:                                            ; preds = %bb.bd
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i85

_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i85: ; preds = %bb.bf, %bb.be, %bb.bd
  %.0.i17.i.i86.sroa.phi = phi ptr [ %.0.i15.i.i.sroa.gep, %bb.bf ], [ %.0.i15.i.i.sroa.gep323, %bb.be ], [ %.0.i15.i.i.sroa.gep324, %bb.bd ]
  %.0.i17.i.i86.sroa.phi385 = phi ptr [ %.0.i15.i.i.sroa.gep326, %bb.bf ], [ %.0.i15.i.i.sroa.gep327, %bb.be ], [ %.0.i15.i.i.sroa.gep328, %bb.bd ]
  %.0.i17.i.i86 = phi ptr [ %7, %bb.bf ], [ %6, %bb.be ], [ %1, %bb.bd ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  switch i32 %i.ek, label %bb.bh [
    i32 1, label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit20.i.i87
    i32 2, label %bb.bg
  ]

bb.bg:                                            ; preds = %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i85
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit20.i.i87

bb.bh:                                            ; preds = %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i85
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit20.i.i87

_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit20.i.i87: ; preds = %bb.bh, %bb.bg, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i85
  %.0.i19.i.i88.sroa.phi = phi ptr [ %.0.i15.i.i.sroa.gep, %bb.bh ], [ %.0.i15.i.i.sroa.gep323, %bb.bg ], [ %.0.i15.i.i.sroa.gep324, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i85 ]
  %.0.i19.i.i88.sroa.phi391 = phi ptr [ %.0.i15.i.i.sroa.gep326, %bb.bh ], [ %.0.i15.i.i.sroa.gep327, %bb.bg ], [ %.0.i15.i.i.sroa.gep328, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i85 ]
  %.0.i19.i.i88 = phi ptr [ %7, %bb.bh ], [ %6, %bb.bg ], [ %1, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i85 ]
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !146, !noalias !2387 ; 3 uses
  %i.er = fsub double 1.000000e+00, %i.eq         ; 2 uses
  %i.es = load double, ptr %.0.i17.i.i86, align 8, !tbaa !146, !noalias !2387
  %i.et = load double, ptr %.0.i19.i.i88, align 8, !tbaa !146, !noalias !2387
  %i.eu = load double, ptr %.0.i17.i.i86.sroa.phi, align 8, !tbaa !146, !noalias !2387
  %i.ev = load double, ptr %.0.i19.i.i88.sroa.phi, align 8, !tbaa !146, !noalias !2387
  %i.ew = insertelement <2 x double> poison, double %i.er, i64 0
  %i.ex = shufflevector <2 x double> %i.ew, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ey = insertelement <2 x double> poison, double %i.et, i64 0
  %i.ez = insertelement <2 x double> %i.ey, double %i.ev, i64 1
  %i.fa = fmul <2 x double> %i.ex, %i.ez
  %i.fb = insertelement <2 x double> poison, double %i.eq, i64 0
  %i.fc = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fd = insertelement <2 x double> poison, double %i.es, i64 0
  %i.fe = insertelement <2 x double> %i.fd, double %i.eu, i64 1
  %i.ff = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fc, <2 x double> %i.fe, <2 x double> %i.fa)
  %i.fg = load double, ptr %.0.i17.i.i86.sroa.phi385, align 8, !tbaa !146, !noalias !2387
  %i.fh = load double, ptr %.0.i19.i.i88.sroa.phi391, align 8, !tbaa !146, !noalias !2387
  %i.fi = fmul double %i.er, %i.fh
  %i.fj = call double @llvm.fmuladd.f64(double %i.eq, double %i.fg, double %i.fi)
  br label %_ZZN4CGAL13Intersections8internal31intersection_coplanar_trianglesINS_5EpickEEENS_19Intersection_traitsIT_NS5_10Triangle_3ES6_E11result_typeERKS6_SA_RKS5_ENKUlRKNS1_17Point_on_triangleIS3_EEE_clESG_.exit95

_ZZN4CGAL13Intersections8internal31intersection_coplanar_trianglesINS_5EpickEEENS_19Intersection_traitsIT_NS5_10Triangle_3ES6_E11result_typeERKS6_SA_RKS5_ENKUlRKNS1_17Point_on_triangleIS3_EEE_clESG_.exit95: ; preds = %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit.i.i93, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit16.i.i91, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit20.i.i87
  %.sroa.8155.0 = phi double [ %.sroa.8155.0.copyload156, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit.i.i93 ], [ %.sroa.8155.0.copyload, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit16.i.i91 ], [ %i.fj, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit20.i.i87 ]
  %i.fk = phi <2 x double> [ %i.ei, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit.i.i93 ], [ %i.en, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit16.i.i91 ], [ %i.ff, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit20.i.i87 ]
  %i.fl = load ptr, ptr %i.ed, align 8, !tbaa !487 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 20
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !500, !noalias !2388 ; 2 uses
  %i.fo = icmp slt i32 %i.fn, 0
  br i1 %i.fo, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %_ZZN4CGAL13Intersections8internal31intersection_coplanar_trianglesINS_5EpickEEENS_19Intersection_traitsIT_NS5_10Triangle_3ES6_E11result_typeERKS6_SA_RKS5_ENKUlRKNS1_17Point_on_triangleIS3_EEE_clESG_.exit95
  switch i32 %i.fn, label %bb.bk [
    i32 -1, label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit.i.i108
    i32 -2, label %bb.bj
  ]

bb.bj:                                            ; preds = %bb.bi
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit.i.i108

bb.bk:                                            ; preds = %bb.bi
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit.i.i108

_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit.i.i108: ; preds = %bb.bk, %bb.bj, %bb.bi
  %.0.i.i.i109.sroa.phi = phi ptr [ %.0.i.i.i.sroa.gep, %bb.bk ], [ %.0.i.i.i.sroa.gep287, %bb.bj ], [ %.0.i.i.i.sroa.gep288, %bb.bi ]
  %.0.i.i.i109.sroa.phi313 = phi ptr [ %.0.i.i.i.sroa.gep290, %bb.bk ], [ %.0.i.i.i.sroa.gep291, %bb.bj ], [ %.0.i.i.i.sroa.gep292, %bb.bi ]
  %.0.i.i.i109 = phi ptr [ %9, %bb.bk ], [ %8, %bb.bj ], [ %2, %bb.bi ]
  %.sroa.0139.0.copyload140 = load double, ptr %.0.i.i.i109, align 8
  %.sroa.7142.0.copyload143 = load double, ptr %.0.i.i.i109.sroa.phi, align 8
  %.sroa.8145.0.copyload146 = load double, ptr %.0.i.i.i109.sroa.phi313, align 8
  %i.fp = insertelement <2 x double> poison, double %.sroa.0139.0.copyload140, i64 0
  %i.fq = insertelement <2 x double> %i.fp, double %.sroa.7142.0.copyload143, i64 1
  br label %_ZZN4CGAL13Intersections8internal31intersection_coplanar_trianglesINS_5EpickEEENS_19Intersection_traitsIT_NS5_10Triangle_3ES6_E11result_typeERKS6_SA_RKS5_ENKUlRKNS1_17Point_on_triangleIS3_EEE_clESG_.exit110

bb.bl:                                            ; preds = %_ZZN4CGAL13Intersections8internal31intersection_coplanar_trianglesINS_5EpickEEENS_19Intersection_traitsIT_NS5_10Triangle_3ES6_E11result_typeERKS6_SA_RKS5_ENKUlRKNS1_17Point_on_triangleIS3_EEE_clESG_.exit95
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !501, !noalias !2388 ; 4 uses
  %i.ft = icmp slt i32 %i.fs, 0
  br i1 %i.ft, label %bb.bm, label %bb.bp

bb.bm:                                            ; preds = %bb.bl
  switch i32 %i.fs, label %bb.bo [
    i32 -1, label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit16.i.i106
    i32 -2, label %bb.bn
  ]

bb.bn:                                            ; preds = %bb.bm
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit16.i.i106

bb.bo:                                            ; preds = %bb.bm
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit16.i.i106

_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit16.i.i106: ; preds = %bb.bo, %bb.bn, %bb.bm
  %.0.i15.i.i107.sroa.phi = phi ptr [ %.0.i15.i.i.sroa.gep, %bb.bo ], [ %.0.i15.i.i.sroa.gep323, %bb.bn ], [ %.0.i15.i.i.sroa.gep324, %bb.bm ]
  %.0.i15.i.i107.sroa.phi397 = phi ptr [ %.0.i15.i.i.sroa.gep326, %bb.bo ], [ %.0.i15.i.i.sroa.gep327, %bb.bn ], [ %.0.i15.i.i.sroa.gep328, %bb.bm ]
  %.0.i15.i.i107 = phi ptr [ %7, %bb.bo ], [ %6, %bb.bn ], [ %1, %bb.bm ]
  %.sroa.0139.0.copyload = load double, ptr %.0.i15.i.i107, align 8
  %.sroa.7142.0.copyload = load double, ptr %.0.i15.i.i107.sroa.phi, align 8
  %.sroa.8145.0.copyload = load double, ptr %.0.i15.i.i107.sroa.phi397, align 8
  %i.fu = insertelement <2 x double> poison, double %.sroa.0139.0.copyload, i64 0
  %i.fv = insertelement <2 x double> %i.fu, double %.sroa.7142.0.copyload, i64 1
  br label %_ZZN4CGAL13Intersections8internal31intersection_coplanar_trianglesINS_5EpickEEENS_19Intersection_traitsIT_NS5_10Triangle_3ES6_E11result_typeERKS6_SA_RKS5_ENKUlRKNS1_17Point_on_triangleIS3_EEE_clESG_.exit110

bb.bp:                                            ; preds = %bb.bl
  %i.fw = urem i32 %i.fs, 3
  switch i32 %i.fw, label %bb.br [
    i32 0, label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i100
    i32 1, label %bb.bq
  ]

bb.bq:                                            ; preds = %bb.bp
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i100

bb.br:                                            ; preds = %bb.bp
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i100

_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i100: ; preds = %bb.br, %bb.bq, %bb.bp
  %.0.i17.i.i101.sroa.phi = phi ptr [ %.0.i15.i.i.sroa.gep, %bb.br ], [ %.0.i15.i.i.sroa.gep323, %bb.bq ], [ %.0.i15.i.i.sroa.gep324, %bb.bp ]
  %.0.i17.i.i101.sroa.phi403 = phi ptr [ %.0.i15.i.i.sroa.gep326, %bb.br ], [ %.0.i15.i.i.sroa.gep327, %bb.bq ], [ %.0.i15.i.i.sroa.gep328, %bb.bp ]
  %.0.i17.i.i101 = phi ptr [ %7, %bb.br ], [ %6, %bb.bq ], [ %1, %bb.bp ]
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fl, i64 48
  switch i32 %i.fs, label %bb.bt [
    i32 1, label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit20.i.i102
    i32 2, label %bb.bs
  ]

bb.bs:                                            ; preds = %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i100
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit20.i.i102

bb.bt:                                            ; preds = %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i100
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit20.i.i102

_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit20.i.i102: ; preds = %bb.bt, %bb.bs, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i100
  %.0.i19.i.i103.sroa.phi = phi ptr [ %.0.i15.i.i.sroa.gep, %bb.bt ], [ %.0.i15.i.i.sroa.gep323, %bb.bs ], [ %.0.i15.i.i.sroa.gep324, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i100 ]
  %.0.i19.i.i103.sroa.phi409 = phi ptr [ %.0.i15.i.i.sroa.gep326, %bb.bt ], [ %.0.i15.i.i.sroa.gep327, %bb.bs ], [ %.0.i15.i.i.sroa.gep328, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i100 ]
  %.0.i19.i.i103 = phi ptr [ %7, %bb.bt ], [ %6, %bb.bs ], [ %1, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i100 ]
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !146, !noalias !2389 ; 3 uses
  %i.fz = fsub double 1.000000e+00, %i.fy         ; 2 uses
  %i.ga = load double, ptr %.0.i17.i.i101, align 8, !tbaa !146, !noalias !2389
  %i.gb = load double, ptr %.0.i19.i.i103, align 8, !tbaa !146, !noalias !2389
  %i.gc = load double, ptr %.0.i17.i.i101.sroa.phi, align 8, !tbaa !146, !noalias !2389
  %i.gd = load double, ptr %.0.i19.i.i103.sroa.phi, align 8, !tbaa !146, !noalias !2389
  %i.ge = insertelement <2 x double> poison, double %i.fz, i64 0
  %i.gf = shufflevector <2 x double> %i.ge, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gg = insertelement <2 x double> poison, double %i.gb, i64 0
  %i.gh = insertelement <2 x double> %i.gg, double %i.gd, i64 1
  %i.gi = fmul <2 x double> %i.gf, %i.gh
  %i.gj = insertelement <2 x double> poison, double %i.fy, i64 0
  %i.gk = shufflevector <2 x double> %i.gj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gl = insertelement <2 x double> poison, double %i.ga, i64 0
  %i.gm = insertelement <2 x double> %i.gl, double %i.gc, i64 1
  %i.gn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gk, <2 x double> %i.gm, <2 x double> %i.gi)
  %i.go = load double, ptr %.0.i17.i.i101.sroa.phi403, align 8, !tbaa !146, !noalias !2389
  %i.gp = load double, ptr %.0.i19.i.i103.sroa.phi409, align 8, !tbaa !146, !noalias !2389
  %i.gq = fmul double %i.fz, %i.gp
  %i.gr = call double @llvm.fmuladd.f64(double %i.fy, double %i.go, double %i.gq)
  br label %_ZZN4CGAL13Intersections8internal31intersection_coplanar_trianglesINS_5EpickEEENS_19Intersection_traitsIT_NS5_10Triangle_3ES6_E11result_typeERKS6_SA_RKS5_ENKUlRKNS1_17Point_on_triangleIS3_EEE_clESG_.exit110

_ZZN4CGAL13Intersections8internal31intersection_coplanar_trianglesINS_5EpickEEENS_19Intersection_traitsIT_NS5_10Triangle_3ES6_E11result_typeERKS6_SA_RKS5_ENKUlRKNS1_17Point_on_triangleIS3_EEE_clESG_.exit110: ; preds = %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit20.i.i102, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit16.i.i106, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit.i.i108
  %.sroa.8145.0 = phi double [ %.sroa.8145.0.copyload146, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit.i.i108 ], [ %.sroa.8145.0.copyload, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit16.i.i106 ], [ %i.gr, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit20.i.i102 ]
  %i.gs = phi <2 x double> [ %i.fq, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit.i.i108 ], [ %i.fv, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit16.i.i106 ], [ %i.gn, %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit20.i.i102 ]
  %i.gt = load ptr, ptr %i.e, align 8, !tbaa !486 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 20
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !500, !noalias !2390 ; 2 uses
  %i.gw = icmp slt i32 %i.gv, 0
  br i1 %i.gw, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %_ZZN4CGAL13Intersections8internal31intersection_coplanar_trianglesINS_5EpickEEENS_19Intersection_traitsIT_NS5_10Triangle_3ES6_E11result_typeERKS6_SA_RKS5_ENKUlRKNS1_17Point_on_triangleIS3_EEE_clESG_.exit110
  switch i32 %i.gv, label %bb.bw [
    i32 -1, label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit.i.i120
    i32 -2, label %bb.bv
  ]

bb.bv:                                            ; preds = %bb.bu
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit.i.i120

bb.bw:                                            ; preds = %bb.bu
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit.i.i120

_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit.i.i120: ; preds = %bb.bw, %bb.bv, %bb.bu
  %.0.i.i.i121.sroa.phi = phi ptr [ %.0.i.i.i.sroa.gep, %bb.bw ], [ %.0.i.i.i.sroa.gep287, %bb.bv ], [ %.0.i.i.i.sroa.gep288, %bb.bu ]
  %.0.i.i.i121.sroa.phi319 = phi ptr [ %.0.i.i.i.sroa.gep290, %bb.bw ], [ %.0.i.i.i.sroa.gep291, %bb.bv ], [ %.0.i.i.i.sroa.gep292, %bb.bu ]
  %.0.i.i.i121 = phi ptr [ %9, %bb.bw ], [ %8, %bb.bv ], [ %2, %bb.bu ]
  %.sroa.0131.0.copyload132 = load double, ptr %.0.i.i.i121, align 8
  %.sroa.7.0.copyload134 = load double, ptr %.0.i.i.i121.sroa.phi, align 8
  %.sroa.8.0.copyload136 = load double, ptr %.0.i.i.i121.sroa.phi319, align 8
  %i.gx = insertelement <2 x double> poison, double %.sroa.0131.0.copyload132, i64 0
  %i.gy = insertelement <2 x double> %i.gx, double %.sroa.7.0.copyload134, i64 1
  br label %bb.cg

bb.bx:                                            ; preds = %_ZZN4CGAL13Intersections8internal31intersection_coplanar_trianglesINS_5EpickEEENS_19Intersection_traitsIT_NS5_10Triangle_3ES6_E11result_typeERKS6_SA_RKS5_ENKUlRKNS1_17Point_on_triangleIS3_EEE_clESG_.exit110
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !501, !noalias !2390 ; 4 uses
  %i.hb = icmp slt i32 %i.ha, 0
  br i1 %i.hb, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %bb.bx
  switch i32 %i.ha, label %bb.ca [
    i32 -1, label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit16.i.i118
    i32 -2, label %bb.bz
  ]

bb.bz:                                            ; preds = %bb.by
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit16.i.i118

bb.ca:                                            ; preds = %bb.by
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit16.i.i118

_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit16.i.i118: ; preds = %bb.ca, %bb.bz, %bb.by
  %.0.i15.i.i119.sroa.phi = phi ptr [ %.0.i15.i.i.sroa.gep, %bb.ca ], [ %.0.i15.i.i.sroa.gep323, %bb.bz ], [ %.0.i15.i.i.sroa.gep324, %bb.by ]
  %.0.i15.i.i119.sroa.phi415 = phi ptr [ %.0.i15.i.i.sroa.gep326, %bb.ca ], [ %.0.i15.i.i.sroa.gep327, %bb.bz ], [ %.0.i15.i.i.sroa.gep328, %bb.by ]
  %.0.i15.i.i119 = phi ptr [ %7, %bb.ca ], [ %6, %bb.bz ], [ %1, %bb.by ]
  %.sroa.0131.0.copyload = load double, ptr %.0.i15.i.i119, align 8
  %.sroa.7.0.copyload = load double, ptr %.0.i15.i.i119.sroa.phi, align 8
  %.sroa.8.0.copyload = load double, ptr %.0.i15.i.i119.sroa.phi415, align 8
  %i.hc = insertelement <2 x double> poison, double %.sroa.0131.0.copyload, i64 0
  %i.hd = insertelement <2 x double> %i.hc, double %.sroa.7.0.copyload, i64 1
  br label %bb.cg

bb.cb:                                            ; preds = %bb.bx
  %i.he = urem i32 %i.ha, 3
  switch i32 %i.he, label %bb.cd [
    i32 0, label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i112
    i32 1, label %bb.cc
  ]

bb.cc:                                            ; preds = %bb.cb
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i112

bb.cd:                                            ; preds = %bb.cb
  br label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i112

_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i112: ; preds = %bb.cd, %bb.cc, %bb.cb
  %.0.i17.i.i113.sroa.phi = phi ptr [ %.0.i15.i.i.sroa.gep, %bb.cd ], [ %.0.i15.i.i.sroa.gep323, %bb.cc ], [ %.0.i15.i.i.sroa.gep324, %bb.cb ]
  %.0.i17.i.i113.sroa.phi421 = phi ptr [ %.0.i15.i.i.sroa.gep326, %bb.cd ], [ %.0.i15.i.i.sroa.gep327, %bb.cc ], [ %.0.i15.i.i.sroa.gep328, %bb.cb ]
  %.0.i17.i.i113 = phi ptr [ %7, %bb.cd ], [ %6, %bb.cc ], [ %1, %bb.cb ]
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gt, i64 48
  switch i32 %i.ha, label %bb.cf [
    i32 1, label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit20.i.i114
    i32 2, label %bb.ce
  ]

bb.ce:                                            ; preds = %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEE13point_from_idERKNS_7Point_3IS3_EES8_S8_i.exit18.i.i112
end_hunk_0
