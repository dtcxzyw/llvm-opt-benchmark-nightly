Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/remesh_self_intersections?download=true
inline.NumInlined: 24559
inline.NumDeleted: 7922
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 83
begin_hunk_0_@_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag:bb.a
  %i.fc = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 24 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fc, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKSt4pairIlN4CGAL6ObjectEEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2281

_ZSt22__uninitialized_copy_aIPKSt4pairIlN4CGAL6ObjectEEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i, %_ZSt4copyIPKSt4pairIlN4CGAL6ObjectEEPS3_ET0_T_S8_S7_.exit38
  %.0.lcssa.i.i.i.i = phi ptr [ %i.eq, %_ZSt4copyIPKSt4pairIlN4CGAL6ObjectEEPS3_ET0_T_S8_S7_.exit38 ], [ %i.fd, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.bb, align 8, !tbaa !348
  br label %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE15_M_erase_at_endEPS3_.exit

_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE15_M_erase_at_endEPS3_.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i, %_ZSt4copyIPKSt4pairIlN4CGAL6ObjectEEPS3_ET0_T_S8_S7_.exit, %_ZSt22__uninitialized_copy_aIPKSt4pairIlN4CGAL6ObjectEEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE13_M_deallocateEPS3_m.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL13Intersections8internal12intersectionINS_5EpickEEENS_19Intersection_traitsIT_NS5_10Triangle_3ES6_E11result_typeERKS6_SA_RKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat {
bb.a:
  %4 = alloca %"class.std::optional.460", align 8 ; 7 uses
  %5 = alloca %"class.CGAL::Plane_3", align 16    ; 6 uses
  %6 = alloca %"class.CGAL::Plane_3", align 16    ; 6 uses
  %7 = alloca %"class.std::optional.491", align 8 ; 6 uses
  %8 = alloca %"class.std::optional.491", align 8 ; 6 uses
  %9 = alloca %"struct.CGAL::Intersections::internal::Triangle_Line_visitor", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2319)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load double, ptr %1, align 8, !tbaa !146, !noalias !2320
  %i.g = load double, ptr %i.b, align 8, !tbaa !146, !noalias !2320 ; 2 uses
  %i.h = load double, ptr %i.a, align 8, !tbaa !146, !noalias !2320
  %i.i = load <2 x double>, ptr %i.c, align 8, !tbaa !146, !noalias !2320 ; 2 uses
  %i.j = load <2 x double>, ptr %i.e, align 8, !tbaa !146, !noalias !2320 ; 5 uses
  %i.k = fsub <2 x double> %i.i, %i.j             ; 2 uses
  %i.l = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.m = insertelement <2 x double> %i.l, double %i.f, i64 1
  %i.n = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.o = insertelement <2 x double> %i.n, double %i.g, i64 1 ; 2 uses
  %i.p = fsub <2 x double> %i.m, %i.o             ; 2 uses
  %i.q = load <2 x double>, ptr %i.d, align 8, !tbaa !146, !noalias !2320 ; 2 uses
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.s = insertelement <2 x double> %i.r, double %i.h, i64 1
  %i.t = fsub <2 x double> %i.s, %i.o             ; 2 uses
  %i.u = fsub <2 x double> %i.q, %i.j             ; 2 uses
  %i.v = fneg <2 x double> %i.p
  %i.w = fmul <2 x double> %i.u, %i.v
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.k, <2 x double> %i.t, <2 x double> %i.w) ; 3 uses
  %i.y = shufflevector <2 x double> %i.k, <2 x double> %i.j, <2 x i32> <i32 0, i32 2>
  %i.z = fneg <2 x double> %i.y
  %i.aa = shufflevector <2 x double> %i.t, <2 x double> %i.x, <2 x i32> <i32 1, i32 3>
  %i.ab = fmul <2 x double> %i.aa, %i.z
  %i.ac = fneg <2 x double> %i.x
  %i.ad = shufflevector <2 x double> %i.p, <2 x double> %i.ac, <2 x i32> <i32 1, i32 2>
  %i.ae = insertelement <2 x double> %i.u, double %i.g, i64 1
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> %i.ae, <2 x double> %i.ab) ; 3 uses
  %i.ag = extractelement <2 x double> %i.af, i64 0
  store <2 x double> %i.x, ptr %5, align 16, !alias.scope !2321
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.ag, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 16, !alias.scope !2321
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2324)
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.am = load double, ptr %2, align 8, !tbaa !146, !noalias !2325
  %i.an = load double, ptr %i.ai, align 8, !tbaa !146, !noalias !2325 ; 2 uses
  %i.ao = load double, ptr %i.ah, align 8, !tbaa !146, !noalias !2325
  %i.ap = load <2 x double>, ptr %i.aj, align 8, !tbaa !146, !noalias !2325 ; 2 uses
  %i.aq = load <2 x double>, ptr %i.al, align 8, !tbaa !146, !noalias !2325 ; 5 uses
  %i.ar = fsub <2 x double> %i.ap, %i.aq          ; 2 uses
  %i.as = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.at = insertelement <2 x double> %i.as, double %i.am, i64 1
  %i.au = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.av = insertelement <2 x double> %i.au, double %i.an, i64 1 ; 2 uses
  %i.aw = fsub <2 x double> %i.at, %i.av          ; 2 uses
  %i.ax = load <2 x double>, ptr %i.ak, align 8, !tbaa !146, !noalias !2325 ; 2 uses
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.az = insertelement <2 x double> %i.ay, double %i.ao, i64 1
  %i.ba = fsub <2 x double> %i.az, %i.av          ; 2 uses
  %i.bb = fsub <2 x double> %i.ax, %i.aq          ; 2 uses
  %i.bc = fneg <2 x double> %i.aw
  %i.bd = fmul <2 x double> %i.bb, %i.bc
  %i.be = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.ba, <2 x double> %i.bd) ; 3 uses
  %i.bf = fneg <2 x double> %i.af
  %i.bg = shufflevector <2 x double> %i.bf, <2 x double> %i.aw, <2 x i32> <i32 0, i32 3>
  %i.bh = shufflevector <2 x double> %i.j, <2 x double> %i.bb, <2 x i32> <i32 1, i32 2>
  %i.bi = extractelement <2 x double> %i.be, i64 0
  %i.bj = fneg double %i.bi
  %i.bk = shufflevector <2 x double> %i.ar, <2 x double> %i.aq, <2 x i32> <i32 0, i32 2>
  %i.bl = fneg <2 x double> %i.bk
  %i.bm = shufflevector <2 x double> %i.ba, <2 x double> %i.be, <2 x i32> <i32 1, i32 3>
  %i.bn = fmul <2 x double> %i.bm, %i.bl          ; 2 uses
  %i.bo = shufflevector <2 x double> %i.af, <2 x double> %i.bn, <2 x i32> <i32 1, i32 2>
  %i.bp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bg, <2 x double> %i.bh, <2 x double> %i.bo) ; 2 uses
  %i.bq = extractelement <2 x double> %i.bp, i64 0
  store double %i.bq, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !tbaa !115, !alias.scope !2321
  %i.br = extractelement <2 x double> %i.bn, i64 1
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.an, double %i.br)
  %i.bt = extractelement <2 x double> %i.bp, i64 1 ; 2 uses
  %i.bu = fneg double %i.bt
  %i.bv = extractelement <2 x double> %i.aq, i64 1
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.bv, double %i.bs)
  store <2 x double> %i.be, ptr %6, align 16, !alias.scope !2326
  %.sroa.5.0..sroa_idx.i.i.i.i15 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double %i.bt, ptr %.sroa.5.0..sroa_idx.i.i.i.i15, align 16, !alias.scope !2326
  %.sroa.6.0..sroa_idx.i.i.i.i16 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store double %i.bw, ptr %.sroa.6.0..sroa_idx.i.i.i.i16, align 8, !tbaa !115, !alias.scope !2326
  call void @_ZN4CGAL13Intersections8internal12intersectionINS_5EpickEEENS_19Intersection_traitsIT_NS5_7Plane_3ES6_E11result_typeERKS6_SA_RKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.460") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !477, !range !106, !noundef !107
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.ca, align 8, !tbaa !456, !alias.scope !2327
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !479
  switch i8 %i.cc, label %.critedge [
    i8 1, label %bb.d
    i8 0, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  call void @_ZN4CGAL13Intersections8internal31intersection_coplanar_trianglesINS_5EpickEEENS_19Intersection_traitsIT_NS5_10Triangle_3ES6_E11result_typeERKS6_SA_RKS5_(ptr dead_on_unwind writable sret(%"class.std::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @_ZN4CGAL13Intersections8internal21intersection_coplanarINS_5EpickEEENS_19Intersection_traitsIT_NS5_10Triangle_3ENS5_6Line_3EE11result_typeERKS6_RKS7_RKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.491") align 8 %7, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZN4CGAL13Intersections8internal21intersection_coplanarINS_5EpickEEENS_19Intersection_traitsIT_NS5_10Triangle_3ENS5_6Line_3EE11result_typeERKS6_RKS7_RKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.491") align 8 %8, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.ce = load i8, ptr %i.cd, align 8, !tbaa !481, !range !106, !noundef !107
  %i.cf = trunc nuw i8 %i.ce to i1
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.ch = load i8, ptr %i.cg, align 8, !range !106
  %i.ci = trunc nuw i8 %i.ch to i1
  %or.cond = select i1 %i.cf, i1 %i.ci, i1 false
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.cj, align 8, !tbaa !456, !alias.scope !2328
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !483, !noalias !2329
  %i.cm = zext i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !483, !noalias !2329
  %i.cp = zext i8 %i.co to i64
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableINS0_21__deduce_visit_resultISt8optionalISt7variantIJN4CGAL7Point_3INS5_5EpickEEENS5_9Segment_3IS7_EENS5_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEEEEEONS5_13Intersections8internal21Triangle_Line_visitorIS7_EEJRS4_IJS8_SA_EESP_EE9_S_vtableE, i64 %i.cm
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cp
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !109, !noalias !2329
  call void %i.cs(ptr dead_on_unwind writable sret(%"class.std::optional") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(49) %7, ptr noundef nonnull align 8 dereferenceable(49) %8), !inline_history !2314
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.i

.critedge:                                        ; preds = %bb.c
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.ct, align 8, !tbaa !456, !alias.scope !2330
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.critedge, %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL13Intersections8internal12intersectionINS_5EpickEEENS_19Intersection_traitsIT_NS5_7Plane_3ES6_E11result_typeERKS6_SA_RKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::optional.460") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  %i.g = load <2 x double>, ptr %2, align 8, !tbaa !146 ; 6 uses
  %i.h = load double, ptr %i.d, align 8, !tbaa !146 ; 8 uses
  %i.i = load <2 x double>, ptr %1, align 8, !tbaa !146 ; 7 uses
  %i.j = load double, ptr %i.a, align 8, !tbaa !146 ; 9 uses
  %i.k = fneg double %i.j
  %i.l = extractelement <2 x double> %i.g, i64 0  ; 5 uses
  %i.m = fmul double %i.l, %i.k
  %i.n = extractelement <2 x double> %i.i, i64 0  ; 5 uses
  %i.o = tail call double @llvm.fmuladd.f64(double %i.n, double %i.h, double %i.m) ; 5 uses
  %i.p = fcmp une double %i.o, 0.000000e+00
  br i1 %i.p, label %_ZN4CGAL7Point_3INS_5EpickEEC2ERKdS4_S4_S4_.exit, label %bb.b

_ZN4CGAL7Point_3INS_5EpickEEC2ERKdS4_S4_S4_.exit: ; preds = %bb.a
  %i.q = load double, ptr %i.f, align 8, !tbaa !146 ; 2 uses
  %i.r = load double, ptr %i.c, align 8, !tbaa !146 ; 2 uses
  %i.s = fcmp une double %i.o, 1.000000e+00
  %i.t = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.u = insertelement <2 x double> %i.t, double %i.q, i64 1
  %i.v = fneg <2 x double> %i.u                   ; 2 uses
  %i.w = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.x = insertelement <2 x double> %i.w, double %i.r, i64 0
  %i.y = fmul <2 x double> %i.x, %i.v
  %i.z = shufflevector <2 x double> %i.i, <2 x double> %i.g, <2 x i32> <i32 1, i32 2>
  %i.aa = insertelement <2 x double> poison, double %i.q, i64 0
  %i.ab = insertelement <2 x double> %i.aa, double %i.r, i64 1
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> %i.ab, <2 x double> %i.y) ; 2 uses
  %i.ad = insertelement <2 x double> poison, double %i.o, i64 0
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer
  %i.af = fdiv <2 x double> %i.ac, %i.ae
  %4 = fdiv double 0.000000e+00, %i.o
  %5 = load double, ptr %i.e, align 8, !tbaa !146 ; 2 uses
  %6 = load double, ptr %i.b, align 8, !tbaa !146 ; 2 uses
  %7 = fneg double %5
  %i.ag = insertelement <2 x i1> poison, i1 %i.s, i64 0
  %i.ah = shufflevector <2 x i1> %i.ag, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ai = select <2 x i1> %i.ah, <2 x double> %i.af, <2 x double> %i.ac
  store <2 x double> %i.ai, ptr %0, align 8
  %.sroa.0.sroa.5165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %4, ptr %.sroa.0.sroa.5165.0..sroa_idx, align 8
  %.sroa.4147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = insertelement <2 x double> poison, double %6, i64 0
  %i.ak = insertelement <2 x double> %i.aj, double %7, i64 1
  %i.al = shufflevector <2 x double> %i.v, <2 x double> %i.i, <2 x i32> <i32 0, i32 2>
  %i.am = fmul <2 x double> %i.ak, %i.al
  %i.an = insertelement <2 x double> %i.t, double %i.j, i64 0
  %i.ao = insertelement <2 x double> poison, double %5, i64 0
  %i.ap = insertelement <2 x double> %i.ao, double %6, i64 1
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.an, <2 x double> %i.ap, <2 x double> %i.am)
  store <2 x double> %i.aq, ptr %.sroa.4147.0..sroa_idx, align 8
  %.sroa.6149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.o, ptr %.sroa.6149.0..sroa_idx, align 8
  br label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.ar = load double, ptr %i.e, align 8, !tbaa !146 ; 7 uses
  %i.as = load double, ptr %i.b, align 8, !tbaa !146 ; 8 uses
  %i.at = fneg double %i.as
  %i.au = fmul double %i.l, %i.at
  %i.av = tail call double @llvm.fmuladd.f64(double %i.n, double %i.ar, double %i.au) ; 5 uses
  %i.aw = fcmp une double %i.av, 0.000000e+00
  br i1 %i.aw, label %_ZN4CGAL7Point_3INS_5EpickEEC2ERKdS4_S4_S4_.exit99, label %bb.c

_ZN4CGAL7Point_3INS_5EpickEEC2ERKdS4_S4_S4_.exit99: ; preds = %bb.b
  %i.ax = load double, ptr %i.f, align 8, !tbaa !146 ; 2 uses
  %i.ay = load double, ptr %i.c, align 8, !tbaa !146 ; 2 uses
  %8 = fcmp une double %i.av, 1.000000e+00        ; 2 uses
  %i.az = fneg double %i.ar
  %9 = insertelement <2 x double> poison, double %i.ax, i64 0
  %10 = insertelement <2 x double> %9, double %i.ar, i64 1
  %11 = fneg <2 x double> %10
  %12 = insertelement <2 x double> %i.i, double %i.ay, i64 1
  %13 = fmul <2 x double> %12, %11
  %14 = insertelement <2 x double> %i.g, double %i.as, i64 1
  %15 = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.ba = insertelement <2 x double> %15, double %i.ax, i64 1
  %16 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %14, <2 x double> %i.ba, <2 x double> %13) ; 3 uses
  %17 = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %16, <2 x i32> <i32 3, i32 1>
  %i.bb = insertelement <2 x double> poison, double %i.av, i64 0
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = fdiv <2 x double> %17, %i.bc            ; 2 uses
  %18 = extractelement <2 x double> %16, i64 0    ; 2 uses
  %i.be = fdiv double %18, %i.av
  %19 = extractelement <2 x double> %i.bd, i64 0
  %i.bf = extractelement <2 x double> %16, i64 1
  %.sink14.i.i.i.i.i.i94 = select i1 %8, double %19, double %i.bf
  %.sink.i.i.i.i.i.i96 = select i1 %8, double %i.be, double %18
  %i.bg = fmul double %i.j, %i.az
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.as, double %i.h, double %i.bg)
  %i.bi = fneg double %i.h
  %i.bj = fmul double %i.n, %i.bi
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.l, double %i.j, double %i.bj)
  store double %.sink14.i.i.i.i.i.i94, ptr %0, align 8
  %.sroa.0.sroa.4145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = extractelement <2 x double> %i.bd, i64 1
  store double %i.bl, ptr %.sroa.0.sroa.4145.0..sroa_idx, align 8
  %.sroa.0.sroa.5146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sink.i.i.i.i.i.i96, ptr %.sroa.0.sroa.5146.0..sroa_idx, align 8
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.bh, ptr %.sroa.4128.0..sroa_idx, align 8
  %.sroa.5129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.av, ptr %.sroa.5129.0..sroa_idx, align 8
  %.sroa.6130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.bk, ptr %.sroa.6130.0..sroa_idx, align 8
  br label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.bm = fneg double %i.h
  %i.bn = fmul double %i.as, %i.bm
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.j, double %i.ar, double %i.bn) ; 5 uses
  %i.bp = fcmp une double %i.bo, 0.000000e+00
  br i1 %i.bp, label %_ZN4CGAL7Point_3INS_5EpickEEC2ERKdS4_S4_S4_.exit110, label %bb.d

_ZN4CGAL7Point_3INS_5EpickEEC2ERKdS4_S4_S4_.exit110: ; preds = %bb.c
  %i.bq = load double, ptr %i.f, align 8, !tbaa !146 ; 2 uses
  %i.br = load double, ptr %i.c, align 8, !tbaa !146 ; 2 uses
  %20 = fneg double %i.bq
  %21 = fmul double %i.j, %20
  %22 = tail call double @llvm.fmuladd.f64(double %i.br, double %i.h, double %21) ; 2 uses
  %23 = fcmp une double %i.bo, 1.000000e+00       ; 2 uses
  %i.bs = insertelement <2 x double> poison, double %i.bo, i64 0
  %24 = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> zeroinitializer
  %25 = fdiv double %22, %i.bo
  %.sink.i.i.i.i.i.i107 = select i1 %23, double %25, double %22
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sink.i.i.i.i.i.i107, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.bo, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %26 = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bt = insertelement <2 x double> %26, double %i.ar, i64 0
  %27 = fneg <2 x double> %i.bt                   ; 2 uses
  %28 = extractelement <2 x double> %27, i64 0
  %29 = fmul double %i.br, %28
  %30 = tail call double @llvm.fmuladd.f64(double %i.as, double %i.bq, double %29) ; 2 uses
  %31 = insertelement <2 x double> <double 0.000000e+00, double poison>, double %30, i64 1
  %32 = fdiv <2 x double> %31, %24                ; 2 uses
  %33 = extractelement <2 x double> %32, i64 1
  %.sink13.i.i.i.i.i.i106 = select i1 %23, double %33, double %30
  %i.bu = insertelement <2 x double> %i.i, double %i.j, i64 1
  %i.bv = fmul <2 x double> %i.bu, %27
  %i.bw = insertelement <2 x double> poison, double %i.as, i64 0
  %i.bx = insertelement <2 x double> %i.bw, double %i.h, i64 1
  %i.by = shufflevector <2 x double> %i.g, <2 x double> %i.i, <2 x i32> <i32 0, i32 2>
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.by, <2 x double> %i.bv)
  %34 = extractelement <2 x double> %32, i64 0
  store double %34, ptr %0, align 8
  store double %.sink13.i.i.i.i.i.i106, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  store <2 x double> %i.bz, ptr %.sroa.5.0..sroa_idx, align 8
  br label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.ca = fcmp une double %i.n, 0.000000e+00
  %i.cb = fcmp une double %i.l, 0.000000e+00
  %or.cond = or i1 %i.ca, %i.cb
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.cc = load double, ptr %i.f, align 8, !tbaa !146
  %i.cd = fmul double %i.n, %i.cc
  %i.ce = load double, ptr %i.c, align 8, !tbaa !146
  %i.cf = fmul double %i.l, %i.ce
  %i.cg = fcmp oeq double %i.cd, %i.cf
  br i1 %i.cg, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %.sink.split

bb.g:                                             ; preds = %bb.d
  %i.ch = fcmp une double %i.j, 0.000000e+00
  %i.ci = fcmp une double %i.h, 0.000000e+00
  %or.cond172 = or i1 %i.ci, %i.ch
  br i1 %or.cond172, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.cj = load double, ptr %i.f, align 8, !tbaa !146
  %i.ck = fmul double %i.j, %i.cj
  %i.cl = load double, ptr %i.c, align 8, !tbaa !146
  %i.cm = fmul double %i.h, %i.cl
  %i.cn = fcmp oeq double %i.ck, %i.cm
  br i1 %i.cn, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %.sink.split

bb.j:                                             ; preds = %bb.g
  %i.co = fcmp une double %i.as, 0.000000e+00
  %i.cp = fcmp une double %i.ar, 0.000000e+00
  %or.cond173 = or i1 %i.cp, %i.co
  br i1 %or.cond173, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.cq = load double, ptr %i.f, align 8, !tbaa !146
  %i.cr = fmul double %i.as, %i.cq
  %i.cs = load double, ptr %i.c, align 8, !tbaa !146
  %i.ct = fmul double %i.ar, %i.cs
  %i.cu = fcmp oeq double %i.cr, %i.ct
  br i1 %i.cu, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %.sink.split

bb.m:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN4CGAL7Point_3INS_5EpickEEC2ERKdS4_S4_S4_.exit, %_ZN4CGAL7Point_3INS_5EpickEEC2ERKdS4_S4_S4_.exit99, %_ZN4CGAL7Point_3INS_5EpickEEC2ERKdS4_S4_S4_.exit110, %bb.f, %bb.i, %bb.l, %bb.m
  %.sink177 = phi i8 [ 1, %bb.m ], [ 1, %bb.l ], [ 1, %bb.i ], [ 1, %bb.f ], [ 0, %_ZN4CGAL7Point_3INS_5EpickEEC2ERKdS4_S4_S4_.exit110 ], [ 0, %_ZN4CGAL7Point_3INS_5EpickEEC2ERKdS4_S4_S4_.exit99 ], [ 0, %_ZN4CGAL7Point_3INS_5EpickEEC2ERKdS4_S4_S4_.exit ]
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sink177, ptr %i.cv, align 8, !tbaa !479
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.k, %bb.h, %bb.e
  %.sink = phi i8 [ 0, %bb.e ], [ 0, %bb.h ], [ 0, %bb.k ], [ 1, %.sink.split ]
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %.sink, ptr %i.cw, align 8, !tbaa !477
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
  %10 = alloca %"class.std::__cxx11::list", align 8 ; 23 uses
  %11 = alloca %"class.std::vector.531", align 16 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr %10, ptr %i.e, align 8, !tbaa !486
  store ptr %10, ptr %10, align 8, !tbaa !487
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 8 uses
  store i64 0, ptr %i.f, align 8, !tbaa !489
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
  %i.g = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #44
          to label %bb.b unwind label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEED2Ev.exit58 ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 -4294967296, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %10) #23
  %i.j = load i64, ptr %i.f, align 8, !tbaa !492
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.f, align 8, !tbaa !492
  %i.l = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #44
          to label %bb.c unwind label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEED2Ev.exit60 ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 -8589934592, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 0, i64 32, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %10) #23
  %i.o = load i64, ptr %i.f, align 8, !tbaa !492
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.f, align 8, !tbaa !492
  %i.q = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #44
          to label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEED2Ev.exit56 unwind label %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEED2Ev.exit62 ; 3 uses

_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEED2Ev.exit56: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 -12884901888, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 32, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %10) #23
  %i.t = load i64, ptr %i.f, align 8, !tbaa !492
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.f, align 8, !tbaa !492
  invoke void @_ZN4CGAL13Intersections8internal38intersection_coplanar_triangles_cutoffINS_5EpickEEEvRKNT_7Point_3ES7_S7_iS7_S7_S7_RKS4_RNSt7__cxx114listINS1_17Point_on_triangleIS4_EESaISD_EEE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZN4CGAL13Intersections8internal17Point_on_triangleINS_5EpickEED2Ev.exit56
  invoke void @_ZN4CGAL13Intersections8internal38intersection_coplanar_triangles_cutoffINS_5EpickEEEvRKNT_7Point_3ES7_S7_iS7_S7_S7_RKS4_RNSt7__cxx114listINS1_17Point_on_triangleIS4_EESaISD_EEE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4CGAL13Intersections8internal38intersection_coplanar_triangles_cutoffINS_5EpickEEEvRKNT_7Point_3ES7_S7_iS7_S7_S7_RKS4_RNSt7__cxx114listINS1_17Point_on_triangleIS4_EESaISD_EEE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i64, ptr %i.f, align 8, !tbaa !492
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
  store i8 0, ptr %i.aa, align 8, !tbaa !456, !alias.scope !2377
  br label %bb.ck

bb.i:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %10, align 8, !tbaa !487  ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !500, !noalias !2378 ; 2 uses
end_hunk_0
