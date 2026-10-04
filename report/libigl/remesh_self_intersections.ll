Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/remesh_self_intersections?download=true
inline.NumInlined: 24559
inline.NumDeleted: 7922
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 83
begin_hunk_0_@_ZN4CGAL13Intersections8internal12intersectionINS_5EpickEEENS_19Intersection_traitsIT_NS5_9Segment_3ENS5_10Triangle_3EE11result_typeERKS7_RKS6_RKS5_:bb.a
  ]

bb.r:                                             ; preds = %bb.q
  %i.ae = call noundef i32 @_ZNK4CGAL8internal25Static_filters_predicates13Orientation_3INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES6_EEEEEclERKNS_7Point_3IS6_EESE_SE_SE_(ptr noundef nonnull align 1 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %.not116 = icmp eq i32 %i.ae, 1
  br i1 %.not116, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.af = call noundef i32 @_ZNK4CGAL8internal25Static_filters_predicates13Orientation_3INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES6_EEEEEclERKNS_7Point_3IS6_EESE_SE_SE_(ptr noundef nonnull align 1 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  %.not117 = icmp eq i32 %i.af, 1
  br i1 %.not117, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ag = call noundef i32 @_ZNK4CGAL8internal25Static_filters_predicates13Orientation_3INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES6_EEEEEclERKNS_7Point_3IS6_EESE_SE_SE_(ptr noundef nonnull align 1 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %.not118 = icmp eq i32 %i.ag, 1
  br i1 %.not118, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !2836)
  call void @llvm.experimental.noalias.scope.decl(metadata !2837)
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !146, !noalias !2838
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !146, !noalias !2838
  %i.al = fsub double %i.ai, %i.ak
  %.sroa.4.0..sroa_idx.i.i128 = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.am = load <2 x double>, ptr %spec.select.i.i.i, align 8, !tbaa !146, !noalias !2838
  %i.an = load <2 x double>, ptr %2, align 8, !tbaa !146, !noalias !2838
  %i.ao = fsub <2 x double> %i.am, %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 24, i1 false)
  store <2 x double> %i.ao, ptr %.sroa.4.0..sroa_idx.i.i128, align 8, !alias.scope !2839
  %.sroa.6.0..sroa_idx.i.i130 = getelementptr inbounds nuw i8, ptr %11, i64 40
  store double %i.al, ptr %.sroa.6.0..sroa_idx.i.i130, align 8, !alias.scope !2839
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @_ZNK4CGAL10Triangle_3INS_5EpickEE16supporting_planeEv(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Plane_3") align 8 %12, ptr noundef nonnull align 8 dereferenceable(72) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @_ZN4CGAL13Intersections8internal12intersectionINS_5EpickEEENS_19Intersection_traitsIT_NS5_7Plane_3ENS5_6Line_3EE11result_typeERKS7_RKS6_RKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.593") align 8 %10, ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 1 dereferenceable(1) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !525, !range !106, !noundef !107
  %i.ar = trunc nuw i8 %i.aq to i1
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.at = load i8, ptr %i.as, align 8
  %.not133 = icmp eq i8 %i.at, 0
  %or.cond140 = select i1 %i.ar, i1 %.not133, i1 false
  br i1 %or.cond140, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.au, align 8, !tbaa !483, !alias.scope !2840
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.sink136 = phi i8 [ 1, %bb.v ], [ 0, %bb.u ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %.sink136, ptr %i.av, align 8, !tbaa !481
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.at

bb.x:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.aw, align 8, !tbaa !481, !alias.scope !2841
  br label %bb.at

bb.y:                                             ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.ax, align 8, !tbaa !481, !alias.scope !2842
  br label %bb.at

bb.z:                                             ; preds = %bb.q
  %i.ay = call noundef i32 @_ZNK4CGAL8internal25Static_filters_predicates13Orientation_3INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES6_EEEEEclERKNS_7Point_3IS6_EESE_SE_SE_(ptr noundef nonnull align 1 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %.not113 = icmp eq i32 %i.ay, 1
  br i1 %.not113, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.az = call noundef i32 @_ZNK4CGAL8internal25Static_filters_predicates13Orientation_3INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES6_EEEEEclERKNS_7Point_3IS6_EESE_SE_SE_(ptr noundef nonnull align 1 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  %.not114 = icmp eq i32 %i.az, 1
  br i1 %.not114, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ba = call noundef i32 @_ZNK4CGAL8internal25Static_filters_predicates13Orientation_3INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES6_EEEEEclERKNS_7Point_3IS6_EESE_SE_SE_(ptr noundef nonnull align 1 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %.not115 = icmp eq i32 %i.ba, 1
  br i1 %.not115, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.bb, align 8, !tbaa !483, !alias.scope !2843
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.bc, align 8, !tbaa !481, !alias.scope !2843
  br label %bb.at

bb.ad:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.bd, align 8, !tbaa !481, !alias.scope !2844
  br label %bb.at

bb.ae:                                            ; preds = %bb.q
  call void @_ZN4CGAL14assertion_failEPKcS1_iS1_(ptr noundef nonnull @.str, ptr noundef nonnull @.str.135, i32 noundef 516, ptr noundef nonnull @.str) #43
  unreachable

bb.af:                                            ; preds = %bb.a
  switch i32 %i.d, label %bb.ar [
    i32 1, label %bb.ag
    i32 -1, label %bb.al
    i32 0, label %bb.aq
  ]

bb.ag:                                            ; preds = %bb.af
  %i.be = call noundef i32 @_ZNK4CGAL8internal25Static_filters_predicates13Orientation_3INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES6_EEEEEclERKNS_7Point_3IS6_EESE_SE_SE_(ptr noundef nonnull align 1 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %.not110 = icmp eq i32 %i.be, 1
  br i1 %.not110, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bf = call noundef i32 @_ZNK4CGAL8internal25Static_filters_predicates13Orientation_3INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES6_EEEEEclERKNS_7Point_3IS6_EESE_SE_SE_(ptr noundef nonnull align 1 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  %.not111 = icmp eq i32 %i.bf, 1
  br i1 %.not111, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bg = call noundef i32 @_ZNK4CGAL8internal25Static_filters_predicates13Orientation_3INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES6_EEEEEclERKNS_7Point_3IS6_EESE_SE_SE_(ptr noundef nonnull align 1 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %.not112 = icmp eq i32 %i.bg, 1
  br i1 %.not112, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.bh, align 8, !tbaa !483, !alias.scope !2845
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.bi, align 8, !tbaa !481, !alias.scope !2845
  br label %bb.at

bb.ak:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.bj, align 8, !tbaa !481, !alias.scope !2846
  br label %bb.at

bb.al:                                            ; preds = %bb.af
  %i.bk = call noundef i32 @_ZNK4CGAL8internal25Static_filters_predicates13Orientation_3INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES6_EEEEEclERKNS_7Point_3IS6_EESE_SE_SE_(ptr noundef nonnull align 1 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %.not = icmp eq i32 %i.bk, 1
  br i1 %.not, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bl = call noundef i32 @_ZNK4CGAL8internal25Static_filters_predicates13Orientation_3INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES6_EEEEEclERKNS_7Point_3IS6_EESE_SE_SE_(ptr noundef nonnull align 1 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  %.not108 = icmp eq i32 %i.bl, 1
  br i1 %.not108, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bm = call noundef i32 @_ZNK4CGAL8internal25Static_filters_predicates13Orientation_3INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES6_EEEEEclERKNS_7Point_3IS6_EESE_SE_SE_(ptr noundef nonnull align 1 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %.not109 = icmp eq i32 %i.bm, 1
  br i1 %.not109, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.bn, align 8, !tbaa !483, !alias.scope !2847
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.bo, align 8, !tbaa !481, !alias.scope !2847
  br label %bb.at

bb.ap:                                            ; preds = %bb.an, %bb.am, %bb.al
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.bp, align 8, !tbaa !481, !alias.scope !2848
  br label %bb.at

bb.aq:                                            ; preds = %bb.af
  call void @_ZN4CGAL13Intersections8internal21intersection_coplanarINS_5EpickEEENS_19Intersection_traitsIT_NS5_9Segment_3ENS5_10Triangle_3EE11result_typeERKS7_RKS6_RKS5_(ptr dead_on_unwind writable sret(%"class.std::optional.491") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  br label %bb.at

bb.ar:                                            ; preds = %bb.af
  call void @_ZN4CGAL14assertion_failEPKcS1_iS1_(ptr noundef nonnull @.str, ptr noundef nonnull @.str.135, i32 noundef 546, ptr noundef nonnull @.str) #43
  unreachable

bb.as:                                            ; preds = %bb.a
  call void @_ZN4CGAL14assertion_failEPKcS1_iS1_(ptr noundef nonnull @.str, ptr noundef nonnull @.str.135, i32 noundef 550, ptr noundef nonnull @.str) #43
  unreachable

bb.at:                                            ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.ak, %bb.aj, %bb.ad, %bb.ac, %bb.y, %bb.x, %bb.w, %bb.o, %bb.n, %bb.j, %bb.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL13Intersections8internal12intersectionINS_5EpickEEENS_19Intersection_traitsIT_NS5_7Plane_3ENS5_6Line_3EE11result_typeERKS7_RKS6_RKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::optional.593") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2861)
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload.i = load double, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !2861 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load <2 x double>, ptr %1, align 8, !noalias !2861 ; 3 uses
  %i.c = load <2 x double>, ptr %i.a, align 8, !tbaa !146, !noalias !2862 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load double, ptr %i.d, align 8, !tbaa !146, !noalias !2862 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %4 = load double, ptr %i.f, align 8, !tbaa !146, !noalias !2861 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = load double, ptr %i.g, align 8, !tbaa !146, !noalias !2861
  %i.i = load <2 x double>, ptr %2, align 8, !tbaa !146, !noalias !2861 ; 2 uses
  %i.j = shufflevector <2 x double> %i.b, <2 x double> %i.c, <2 x i32> <i32 1, i32 3>
  %i.k = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.l = fmul <2 x double> %i.j, %i.k
  %i.m = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = shufflevector <2 x double> %i.b, <2 x double> %i.c, <2 x i32> <i32 0, i32 2>
  %i.o = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.m, <2 x double> %i.n, <2 x double> %i.l) ; 2 uses
  %5 = extractelement <2 x double> %i.o, i64 0
  %6 = tail call double @llvm.fmuladd.f64(double %4, double %.sroa.7.0.copyload.i, double %5)
  %7 = fadd double %i.h, %6                       ; 3 uses
  %i.p = extractelement <2 x double> %i.o, i64 1
  %8 = tail call double @llvm.fmuladd.f64(double %4, double %i.e, double %i.p) ; 5 uses
  %i.q = fcmp oeq double %8, 0.000000e+00
  br i1 %i.q, label %bb.b, label %_ZN4CGAL7Point_3INS_5EpickEEC2ERKdS4_S4_S4_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.r = fcmp oeq double %7, 0.000000e+00
  br i1 %i.r, label %bb.c, label %_ZN4CGAL13Intersections8internal12intersectionINS_5EpickEEENS_19Intersection_traitsIT_NS5_7Plane_3ENS5_6Line_3EE11result_typeERKS6_RKS7_RKS5_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  br label %.sink.split.i

_ZN4CGAL7Point_3INS_5EpickEEC2ERKdS4_S4_S4_.exit.i: ; preds = %bb.a
  %i.s = fneg <2 x double> %i.c
  %i.t = fneg double %i.e
  %i.u = fmul double %7, %i.t
  %i.v = tail call double @llvm.fmuladd.f64(double %8, double %.sroa.7.0.copyload.i, double %i.u) ; 2 uses
  %i.w = fcmp une double %8, 1.000000e+00         ; 2 uses
  %i.x = fdiv double %i.v, %8
  %.sink.i.i.i.i.i.i.i = select i1 %i.w, double %i.x, double %i.v
  %i.y = insertelement <2 x double> poison, double %7, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = fmul <2 x double> %i.z, %i.s
  %9 = insertelement <2 x double> poison, double %8, i64 0
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> %i.b, <2 x double> %i.aa) ; 2 uses
  %i.ac = fdiv <2 x double> %i.ab, %10
  %i.ad = insertelement <2 x i1> poison, i1 %i.w, i64 0
  %i.ae = shufflevector <2 x i1> %i.ad, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.af = select <2 x i1> %i.ae, <2 x double> %i.ac, <2 x double> %i.ab
  store <2 x double> %i.af, ptr %0, align 8, !alias.scope !2861
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sink.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2861
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_ZN4CGAL7Point_3INS_5EpickEEC2ERKdS4_S4_S4_.exit.i, %bb.c
  %.sink48.i = phi i8 [ 0, %_ZN4CGAL7Point_3INS_5EpickEEC2ERKdS4_S4_S4_.exit.i ], [ 1, %bb.c ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sink48.i, ptr %i.ag, align 8, !tbaa !2864, !alias.scope !2861
  br label %_ZN4CGAL13Intersections8internal12intersectionINS_5EpickEEENS_19Intersection_traitsIT_NS5_7Plane_3ENS5_6Line_3EE11result_typeERKS6_RKS7_RKS5_.exit

_ZN4CGAL13Intersections8internal12intersectionINS_5EpickEEENS_19Intersection_traitsIT_NS5_7Plane_3ENS5_6Line_3EE11result_typeERKS6_RKS7_RKS5_.exit: ; preds = %bb.b, %.sink.split.i
  %.sink.i = phi i8 [ 0, %bb.b ], [ 1, %.sink.split.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %.sink.i, ptr %i.ah, align 8, !tbaa !525, !alias.scope !2861
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL13Intersections8internal21intersection_coplanarINS_5EpickEEENS_19Intersection_traitsIT_NS5_9Segment_3ENS5_10Triangle_3EE11result_typeERKS7_RKS6_RKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::optional.491") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
_ZNK4CGAL20CommonKernelFunctors18Construct_vertex_3INS_5EpickEEclERKNS_10Triangle_3IS2_EEi.exit153:
  %4 = alloca %"class.CGAL::Filtered_predicate_RT_FT.429", align 1 ; 6 uses
  %5 = alloca %"class.CGAL::Filtered_predicate_RT_FT.579", align 1 ; 8 uses
  %6 = alloca %"class.CGAL::Point_3", align 8     ; 28 uses
  %7 = alloca %"class.CGAL::Point_3", align 8     ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %spec.select.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %spec.select.i.i.i, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.c = call noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Point_3IST_EES16_S16_EEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  %.not = icmp eq i32 %i.c, 1                     ; 2 uses
  %spec.select = select i1 %.not, ptr %i.a, ptr %i.b ; 19 uses
  %spec.select165 = select i1 %.not, ptr %i.b, ptr %i.a ; 19 uses
  %i.d = call noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Point_3IST_EES16_S16_EEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.e = call noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Point_3IST_EES16_S16_EEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %spec.select) ; 3 uses
  %i.f = call noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Point_3IST_EES16_S16_EEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %spec.select165) ; 9 uses
  switch i32 %i.d, label %bb.ba [
    i32 1, label %bb.a
    i32 -1, label %bb.r
    i32 0, label %bb.ai
  ]

bb.a:                                             ; preds = %_ZNK4CGAL20CommonKernelFunctors18Construct_vertex_3INS_5EpickEEclERKNS_10Triangle_3IS2_EEi.exit153
  switch i32 %i.e, label %bb.q [
    i32 1, label %bb.b
    i32 -1, label %bb.h
    i32 0, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  switch i32 %i.f, label %bb.e [
    i32 1, label %bb.c
    i32 -1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.g, align 8, !tbaa !481, !alias.scope !2893
  br label %bb.bb

bb.d:                                             ; preds = %bb.b
  call void @_ZN4CGAL13Intersections8internal30t3s3_intersection_coplanar_auxINS_5EpickEEENS_19Intersection_traitsIT_NS5_10Triangle_3ENS5_9Segment_3EE11result_typeERKNS5_7Point_3ESC_SC_SC_SC_bRKS5_(ptr dead_on_unwind writable sret(%"class.std::optional.491") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %spec.select, ptr noundef nonnull align 8 dereferenceable(24) %spec.select165, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %3)
  br label %bb.bb

bb.e:                                             ; preds = %bb.b
  %i.h = call noundef zeroext i1 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors34Collinear_are_ordered_along_line_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Point_3IST_EES16_S16_EEEbDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %spec.select165, ptr noundef nonnull align 8 dereferenceable(24) %7)
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %spec.select165, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.i, align 8, !tbaa !483, !alias.scope !2894
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.j, align 8, !tbaa !481, !alias.scope !2894
  br label %bb.bb

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.k, align 8, !tbaa !481, !alias.scope !2895
  br label %bb.bb

bb.h:                                             ; preds = %bb.a
  %i.l = icmp eq i32 %i.f, 1
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZN4CGAL13Intersections8internal30t3s3_intersection_coplanar_auxINS_5EpickEEENS_19Intersection_traitsIT_NS5_10Triangle_3ENS5_9Segment_3EE11result_typeERKNS5_7Point_3ESC_SC_SC_SC_bRKS5_(ptr dead_on_unwind writable sret(%"class.std::optional.491") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %spec.select165, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %spec.select, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %3)
  br label %bb.bb

bb.j:                                             ; preds = %bb.h
  call void @_ZN4CGAL13Intersections8internal30t3s3_intersection_coplanar_auxINS_5EpickEEENS_19Intersection_traitsIT_NS5_10Triangle_3ENS5_9Segment_3EE11result_typeERKNS5_7Point_3ESC_SC_SC_SC_bRKS5_(ptr dead_on_unwind writable sret(%"class.std::optional.491") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %spec.select, ptr noundef nonnull align 8 dereferenceable(24) %spec.select165, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %3)
  br label %bb.bb

bb.k:                                             ; preds = %bb.a
  switch i32 %i.f, label %bb.p [
    i32 1, label %bb.l
    i32 -1, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k
  %i.m = call noundef zeroext i1 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors34Collinear_are_ordered_along_line_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Point_3IST_EES16_S16_EEEbDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %spec.select, ptr noundef nonnull align 8 dereferenceable(24) %7)
  br i1 %i.m, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %spec.select, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.n, align 8, !tbaa !483, !alias.scope !2896
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.o, align 8, !tbaa !481, !alias.scope !2896
  br label %bb.bb

bb.n:                                             ; preds = %bb.l
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.p, align 8, !tbaa !481, !alias.scope !2897
  br label %bb.bb

bb.o:                                             ; preds = %bb.k
  call void @_ZN4CGAL13Intersections8internal30t3s3_intersection_coplanar_auxINS_5EpickEEENS_19Intersection_traitsIT_NS5_10Triangle_3ENS5_9Segment_3EE11result_typeERKNS5_7Point_3ESC_SC_SC_SC_bRKS5_(ptr dead_on_unwind writable sret(%"class.std::optional.491") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %spec.select, ptr noundef nonnull align 8 dereferenceable(24) %spec.select165, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %3)
  br label %bb.bb

bb.p:                                             ; preds = %bb.k
  call void @_ZN4CGAL13Intersections8internal31t3s3_intersection_collinear_auxINS_5EpickEEENS_19Intersection_traitsIT_NS5_10Triangle_3ENS5_9Segment_3EE11result_typeERKNS5_7Point_3ESC_SC_SC_RKS5_(ptr dead_on_unwind writable sret(%"class.std::optional.491") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %spec.select, ptr noundef nonnull align 8 dereferenceable(24) %spec.select165, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 1 dereferenceable(1) %3)
  br label %bb.bb

bb.q:                                             ; preds = %bb.a
  call void @_ZN4CGAL14assertion_failEPKcS1_iS1_(ptr noundef nonnull @.str, ptr noundef nonnull @.str.135, i32 noundef 278, ptr noundef nonnull @.str) #43
  unreachable

bb.r:                                             ; preds = %_ZNK4CGAL20CommonKernelFunctors18Construct_vertex_3INS_5EpickEEclERKNS_10Triangle_3IS2_EEi.exit153
  switch i32 %i.e, label %bb.ah [
    i32 1, label %bb.s
    i32 -1, label %bb.v
    i32 0, label %bb.ab
  ]

bb.s:                                             ; preds = %bb.r
  %i.q = icmp eq i32 %i.f, 1
  br i1 %i.q, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @_ZN4CGAL13Intersections8internal30t3s3_intersection_coplanar_auxINS_5EpickEEENS_19Intersection_traitsIT_NS5_10Triangle_3ENS5_9Segment_3EE11result_typeERKNS5_7Point_3ESC_SC_SC_SC_bRKS5_(ptr dead_on_unwind writable sret(%"class.std::optional.491") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %spec.select, ptr noundef nonnull align 8 dereferenceable(24) %spec.select165, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %3)
  br label %bb.bb

bb.u:                                             ; preds = %bb.s
  call void @_ZN4CGAL13Intersections8internal30t3s3_intersection_coplanar_auxINS_5EpickEEENS_19Intersection_traitsIT_NS5_10Triangle_3ENS5_9Segment_3EE11result_typeERKNS5_7Point_3ESC_SC_SC_SC_bRKS5_(ptr dead_on_unwind writable sret(%"class.std::optional.491") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %spec.select165, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %spec.select, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %3)
  br label %bb.bb

bb.v:                                             ; preds = %bb.r
  switch i32 %i.f, label %bb.y [
    i32 1, label %bb.w
    i32 -1, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  call void @_ZN4CGAL13Intersections8internal30t3s3_intersection_coplanar_auxINS_5EpickEEENS_19Intersection_traitsIT_NS5_10Triangle_3ENS5_9Segment_3EE11result_typeERKNS5_7Point_3ESC_SC_SC_SC_bRKS5_(ptr dead_on_unwind writable sret(%"class.std::optional.491") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %spec.select, ptr noundef nonnull align 8 dereferenceable(24) %spec.select165, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %3)
  br label %bb.bb

bb.x:                                             ; preds = %bb.v
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.r, align 8, !tbaa !481, !alias.scope !2898
  br label %bb.bb

bb.y:                                             ; preds = %bb.v
  %i.s = call noundef zeroext i1 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors34Collinear_are_ordered_along_line_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Point_3IST_EES16_S16_EEEbDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %spec.select165, ptr noundef nonnull align 8 dereferenceable(24) %7)
  br i1 %i.s, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %spec.select165, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.t, align 8, !tbaa !483, !alias.scope !2899
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.u, align 8, !tbaa !481, !alias.scope !2899
  br label %bb.bb

bb.aa:                                            ; preds = %bb.y
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.v, align 8, !tbaa !481, !alias.scope !2900
  br label %bb.bb

bb.ab:                                            ; preds = %bb.r
  switch i32 %i.f, label %bb.ag [
    i32 1, label %bb.ac
    i32 -1, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN4CGAL13Intersections8internal30t3s3_intersection_coplanar_auxINS_5EpickEEENS_19Intersection_traitsIT_NS5_10Triangle_3ENS5_9Segment_3EE11result_typeERKNS5_7Point_3ESC_SC_SC_SC_bRKS5_(ptr dead_on_unwind writable sret(%"class.std::optional.491") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %spec.select, ptr noundef nonnull align 8 dereferenceable(24) %spec.select165, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %3)
  br label %bb.bb

bb.ad:                                            ; preds = %bb.ab
  %i.w = call noundef zeroext i1 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors34Collinear_are_ordered_along_line_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Point_3IST_EES16_S16_EEEbDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %spec.select, ptr noundef nonnull align 8 dereferenceable(24) %7)
  br i1 %i.w, label %bb.ae, label %bb.af
end_hunk_0
