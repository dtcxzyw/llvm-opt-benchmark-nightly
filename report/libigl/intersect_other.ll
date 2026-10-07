Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/intersect_other?download=true
inline.NumInlined: 13173
inline.NumDeleted: 5390
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZSt9partitionIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7Lo_lessEET_SO_SO_T0_:bb.a
  %.sroa.08.0.pn.i = phi ptr [ %.sroa.08.1.i, %_ZNK4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE7Lo_lessclERKSF_.exit5.i ], [ %.sroa.08.046.i, %.preheader.i ] ; 2 uses
  %.sroa.08.1.i = getelementptr inbounds i8, ptr %.sroa.08.0.pn.i, i64 -56 ; 3 uses
  %i.w = icmp eq ptr %.us-phi.i, %.sroa.08.1.i
  br i1 %i.w, label %_ZSt11__partitionIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7Lo_lessEET_SO_SO_T0_St26bidirectional_iterator_tag.exit, label %_ZNK4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE7Lo_lessclERKSF_.exit5.i

_ZNK4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE7Lo_lessclERKSF_.exit5.i: ; preds = %.preheader.split34.i
  %i.x = getelementptr inbounds i8, ptr %.sroa.08.0.pn.i, i64 -40
  %i.y = load double, ptr %i.x, align 8, !tbaa !228
  %i.z = fcmp olt double %i.y, %2
  br i1 %i.z, label %.split.us.i, label %.preheader.split34.i, !llvm.loop !38

.split.us.i:                                      ; preds = %_ZNK4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE7Lo_lessclERKSF_.exit5.us40.i, %_ZNK4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE7Lo_lessclERKSF_.exit5.us.i, %_ZNK4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE7Lo_lessclERKSF_.exit5.i
  %.us-phi36.i = phi ptr [ %.sroa.08.1.us.i, %_ZNK4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE7Lo_lessclERKSF_.exit5.us.i ], [ %.sroa.08.1.i, %_ZNK4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE7Lo_lessclERKSF_.exit5.i ], [ %.sroa.08.1.us39.i, %_ZNK4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE7Lo_lessclERKSF_.exit5.us40.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %.us-phi.i, i64 56, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.us-phi.i, ptr noundef nonnull align 8 dereferenceable(56) %.us-phi36.i, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.us-phi36.i, ptr noundef nonnull align 8 dereferenceable(56) %4, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.aa = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 56 ; 3 uses
  %i.ab = icmp eq ptr %i.aa, %.us-phi36.i
  br i1 %i.ab, label %_ZSt11__partitionIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7Lo_lessEET_SO_SO_T0_St26bidirectional_iterator_tag.exit, label %.lr.ph.i, !llvm.loop !39

_ZSt11__partitionIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7Lo_lessEET_SO_SO_T0_St26bidirectional_iterator_tag.exit: ; preds = %.split.us.i, %bb.c, %bb.b, %bb.d, %.preheader.split34.us37.i, %.preheader.split34.us.i, %.preheader.split34.i, %bb.a
  %.sroa.013.120.i = phi ptr [ %.us-phi.i, %.preheader.split34.us.i ], [ %i.i, %bb.c ], [ %.us-phi.i, %.preheader.split34.i ], [ %i.d, %bb.b ], [ %0, %bb.a ], [ %.us-phi.i, %.preheader.split34.us37.i ], [ %i.u, %bb.d ], [ %i.aa, %.split.us.i ]
  ret ptr %.sroa.013.120.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local ptr @_ZSt9partitionIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE10Hi_greaterEET_SO_SO_T0_(ptr %0, ptr %1, double %2, i32 %3) local_unnamed_addr #8 comdat {
bb.a:
  %4 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d.461", align 8 ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11__partitionIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE10Hi_greaterEET_SO_SO_T0_St26bidirectional_iterator_tag.exit, label %.lr.ph.lr.ph.i

.lr.ph.lr.ph.i:                                   ; preds = %bb.a
  %switch.selectcmp.i.i.i.i = icmp eq i32 %3, 1
  %switch.select.i.i.i.i = select i1 %switch.selectcmp.i.i.i.i, i64 32, i64 40
  %switch.selectcmp2.i.i.i.i = icmp eq i32 %3, 0
  %switch.select3.i.i.i.i = select i1 %switch.selectcmp2.i.i.i.i, i64 24, i64 %switch.select.i.i.i.i ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.lr.ph.i
  %.sroa.015.028.i = phi ptr [ %0, %.lr.ph.lr.ph.i ], [ %i.k, %bb.e ]
  %.sroa.010.027.i = phi ptr [ %1, %.lr.ph.lr.ph.i ], [ %.sroa.010.1.i, %bb.e ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %.sroa.015.124.i = phi ptr [ %.sroa.015.028.i, %.lr.ph.i ], [ %i.e, %bb.c ] ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.015.124.i, i64 %switch.select3.i.i.i.i
  %i.c = load double, ptr %i.b, align 8, !tbaa !228
  %i.d = fcmp ult double %i.c, %2
  br i1 %i.d, label %.preheader.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.015.124.i, i64 56 ; 3 uses
  %i.f = icmp eq ptr %i.e, %.sroa.010.027.i
  br i1 %i.f, label %_ZSt11__partitionIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE10Hi_greaterEET_SO_SO_T0_St26bidirectional_iterator_tag.exit, label %bb.b, !llvm.loop !1665

.preheader.i:                                     ; preds = %bb.b, %bb.d
  %.sroa.010.0.pn.i = phi ptr [ %.sroa.010.1.i, %bb.d ], [ %.sroa.010.027.i, %bb.b ]
  %.sroa.010.1.i = getelementptr inbounds i8, ptr %.sroa.010.0.pn.i, i64 -56 ; 7 uses
  %i.g = icmp eq ptr %.sroa.015.124.i, %.sroa.010.1.i
  br i1 %i.g, label %_ZSt11__partitionIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE10Hi_greaterEET_SO_SO_T0_St26bidirectional_iterator_tag.exit, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i, i64 %switch.select3.i.i.i.i
  %i.i = load double, ptr %i.h, align 8, !tbaa !228
  %i.j = fcmp ult double %i.i, %2
  br i1 %i.j, label %.preheader.i, label %bb.e, !llvm.loop !1666

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.015.124.i, i64 56, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.015.124.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.010.1.i, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.010.1.i, ptr noundef nonnull align 8 dereferenceable(56) %4, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.015.124.i, i64 56 ; 3 uses
  %i.l = icmp eq ptr %i.k, %.sroa.010.1.i
  br i1 %i.l, label %_ZSt11__partitionIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE10Hi_greaterEET_SO_SO_T0_St26bidirectional_iterator_tag.exit, label %.lr.ph.i, !llvm.loop !1667

_ZSt11__partitionIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE10Hi_greaterEET_SO_SO_T0_St26bidirectional_iterator_tag.exit: ; preds = %bb.e, %bb.c, %.preheader.i, %bb.a
  %.sroa.015.122.i = phi ptr [ %i.e, %bb.c ], [ %.sroa.015.124.i, %.preheader.i ], [ %0, %bb.a ], [ %i.k, %bb.e ]
  ret ptr %.sroa.015.122.i
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN3igl8copyleft4cgalL22intersect_other_helperIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEES7_S8_S8_NS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEES8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EEbRKNS5_10MatrixBaseIT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNSQ_IT3_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseIT4_EERNS1A_IT5_EERNS1A_IT6_EERNS1A_IT7_EERNS1A_IT8_EEENKUlRKNS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS4_EESt6vectorIS1V_SaIS1V_EEEENS1Q_14ID_FROM_HANDLEEEES24_E_clES24_S24_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nonnull %.48.val, ptr nonnull %.48.val1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.862, align 1            ; 3 uses
  %2 = alloca %"struct.CGAL::Object::Any_from_variant", align 1 ; 3 uses
  %3 = alloca %"struct.CGAL::Lazy_construction_variant", align 1 ; 3 uses
  %4 = alloca %"class.CGAL::Static_filtered_predicate", align 1 ; 3 uses
  %5 = alloca %"class.CGAL::Object", align 8      ; 8 uses
  %6 = alloca %"class.std::optional.510", align 8 ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1671, !nonnull !78, !align !281
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !211
  %i.c = ptrtoint ptr %.48.val to i64
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 3
  %i.g = trunc i64 %i.f to i32                    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1672, !nonnull !78, !align !281
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !211
  %i.k = ptrtoint ptr %.48.val1 to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 3
  %i.o = trunc i64 %i.n to i32                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.p = call noundef zeroext i1 @_ZNK4CGAL25Static_filtered_predicateINS_16Simple_cartesianINS_11Interval_ntILb0EEEEENS_18Filtered_predicateINS_20CommonKernelFunctors14Do_intersect_3INS1_IN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEEEENS7_IS4_EENS_15Exact_converterINS_5EpeckESL_EENS_16Approx_converterISP_S4_EELb1EEENS_8internal25Static_filters_predicates14Do_intersect_3INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES10_EEEENSU_14Static_filtersIS13_EEEEEclINS_10Triangle_3ISP_EES1A_EEbRKT_RKT0_(ptr noundef nonnull align 1 dereferenceable(13) %4, ptr noundef nonnull align 8 dereferenceable(8) %.48.val, ptr noundef nonnull align 8 dereferenceable(8) %.48.val1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %i.p, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1673, !nonnull !78, !align !281 ; 2 uses
  %i.s = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i32 %i.g, ptr %i.t, align 4, !tbaa !109
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.r) #22
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !112
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !112
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !1673, !nonnull !78, !align !281 ; 2 uses
  %i.y = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i32 %i.o, ptr %i.z, align 4, !tbaa !109
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.x) #22
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !112
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !112
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1674, !nonnull !78, !align !282 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !283, !range !77, !noundef !78
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ai = call ptr @__cxa_allocate_exception(i64 4) #22 ; 2 uses
  store i32 10, ptr %i.ai, align 16, !tbaa !109
  call void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTIi, ptr null) #43
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.aj = load i8, ptr %i.ae, align 4, !tbaa !90, !range !77, !noundef !78
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.v, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !1675
  call void @_ZNK4CGAL25Lazy_construction_variantINS_5EpeckENS_20CommonKernelFunctors11Intersect_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclINS_10Triangle_3IS1_EESR_EEDcRKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.510") align 8 %6, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %.48.val, ptr noundef nonnull align 8 dereferenceable(8) %.48.val1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !1675
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.am = load i8, ptr %i.al, align 8, !tbaa !383, !range !77, !noundef !78
  %i.an = trunc nuw i8 %i.am to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  br i1 %i.an, label %bb.f, label %.noexc15

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !385
  %.not.i.i.i = icmp eq i8 %i.ap, -1
  br i1 %.not.i.i.i, label %bb.g, label %_ZSt5visitIN4CGAL6Object16Any_from_variantEJRKSt7variantIJNS0_7Point_3INS0_5EpeckEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISK_EEEEE4typeEE4typeEOST_EEEE4typeEOSI_DpOSK_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.aq = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.aq, align 8, !tbaa !114
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr @.str.133, ptr %i.ar, align 8, !tbaa !352
  invoke void @__cxa_throw(ptr nonnull %i.aq, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #43
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.g
  unreachable

_ZSt5visitIN4CGAL6Object16Any_from_variantEJRKSt7variantIJNS0_7Point_3INS0_5EpeckEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISK_EEEEE4typeEE4typeEOST_EEEE4typeEOSI_DpOSK_.exit.i: ; preds = %bb.f
  %i.as = invoke noundef ptr @_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIPN5boost3anyEEEN4CGAL6Object16Any_from_variantEJRKSt7variantIJNS7_7Point_3INS7_5EpeckEEENS7_9Segment_3ISC_EENS7_10Triangle_3ISC_EESt6vectorISD_SaISD_EEEEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %.noexc15 unwind label %bb.s

.noexc15:                                         ; preds = %_ZSt5visitIN4CGAL6Object16Any_from_variantEJRKSt7variantIJNS0_7Point_3INS0_5EpeckEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISK_EEEEE4typeEE4typeEOST_EEEE4typeEOSI_DpOSK_.exit.i, %bb.e
  %i.at = phi ptr [ null, %bb.e ], [ %i.as, %_ZSt5visitIN4CGAL6Object16Any_from_variantEJRKSt7variantIJNS0_7Point_3INS0_5EpeckEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISK_EEEEE4typeEE4typeEOST_EEEE4typeEOSI_DpOSK_.exit.i ] ; 2 uses
  store ptr %i.at, ptr %5, align 8, !tbaa !266
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  invoke void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN5boost3anyEEET_(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef %i.at)
          to label %bb.h unwind label %bb.s

bb.h:                                             ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.av = load i8, ptr %i.al, align 8, !tbaa !383, !range !77, !noundef !78
  %i.aw = trunc nuw i8 %i.av to i1
  store i8 0, ptr %i.al, align 8, !tbaa !383
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ay = load i8, ptr %i.ax, align 8
  %.not.i.i.i.i.i.i = icmp ne i8 %i.ay, -1
  %or.cond.not.i.i.i = select i1 %i.aw, i1 %.not.i.i.i.i.i.i, i1 false, !prof !386
  br i1 %or.cond.not.i.i.i, label %bb.i, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0EED2Ev.exit, !prof !386

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS3_5EpeckEEENS3_9Segment_3IS5_EENS3_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_SA_SD_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %.noexc.i.i.i.i.i unwind label %bb.j

.noexc.i.i.i.i.i:                                 ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0EED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #41
  unreachable

_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0EED2Ev.exit: ; preds = %bb.h, %.noexc.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1676, !nonnull !78, !align !281
  invoke fastcc void @_ZN3igl8copyleft4cgalL11push_resultIlEEviiRKN4CGAL6ObjectERSt3mapIT_St6vectorISt4pairIS8_S4_ESaISB_EESt4lessIS8_ESaISA_IKS8_SD_EEE(i32 noundef %i.g, i32 noundef %i.o, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.bc)
          to label %bb.k unwind label %bb.t

bb.k:                                             ; preds = %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0EED2Ev.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1677, !nonnull !78, !align !281
  invoke fastcc void @_ZN3igl8copyleft4cgalL11push_resultIlEEviiRKN4CGAL6ObjectERSt3mapIT_St6vectorISt4pairIS8_S4_ESaISB_EESt4lessIS8_ESaISA_IKS8_SD_EEE(i32 noundef %i.o, i32 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.be)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.bf = load ptr, ptr %i.au, align 8, !tbaa !190 ; 8 uses
  %.not.i.i.i17 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i17, label %_ZN4CGAL6ObjectD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.bg, align 8, !tbaa !192
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !193
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !114
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #22, !inline_history !22
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !114
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #22, !inline_history !22
  br label %_ZN4CGAL6ObjectD2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !109
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i = phi i32 [ %i.bj, %bb.p ], [ %i.bt, %bb.q ]
  %i.bu = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bu, label %bb.r, label %_ZN4CGAL6ObjectD2Ev.exit, !prof !179

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #22
  br label %_ZN4CGAL6ObjectD2Ev.exit

_ZN4CGAL6ObjectD2Ev.exit:                         ; preds = %bb.l, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.v

bb.s:                                             ; preds = %.noexc15, %_ZSt5visitIN4CGAL6Object16Any_from_variantEJRKSt7variantIJNS0_7Point_3INS0_5EpeckEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISK_EEEEE4typeEE4typeEOST_EEEE4typeEOSI_DpOSK_.exit.i, %bb.g
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.u

bb.t:                                             ; preds = %bb.k, %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0EED2Ev.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #22
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.bw, %bb.t ], [ %i.bv, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %.pn

bb.v:                                             ; preds = %bb.d, %_ZN4CGAL6ObjectD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEElNS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_T1_(ptr %0, ptr %1, i64 noundef %2, i32 %3) local_unnamed_addr #4 comdat {
bb.a:
  %4 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d.461", align 8 ; 4 uses
  %5 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d.461", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 896
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_SR_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph36

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEET_SR_SR_T0_.exit
  %i.j = icmp eq i64 %i.bd, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph36, !llvm.loop !1678

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.bf, %bb.b ]
  %storemerge22.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.023.1.i.i, %bb.b ]
  %i.k = udiv exact i64 %.lcssa, 56               ; 2 uses
  %i.l = add nsw i64 %i.k, -2
  %i.m = lshr i64 %i.l, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.08.i.i = phi i64 [ %i.m, %._crit_edge ], [ %i.o, %bb.c ] ; 4 uses
  %i.n = getelementptr inbounds [56 x i8], ptr %0, i64 %.08.i.i
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEElSE_NS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_SS_T1_T2_(ptr %0, i64 noundef %.08.i.i, i64 noundef %i.k, ptr noundef nonnull byval(%"class.CGAL::Box_intersection_d::Box_with_handle_d.461") align 8 %i.n, i32 %3)
  %.not.i.i = icmp eq i64 %.08.i.i, 0
  %i.o = add nsw i64 %.08.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !1679

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.p, %.lr.ph.i.i ], [ %storemerge22.lcssa, %bb.c ]
  %i.p = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -56 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 56, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = sdiv exact i64 %i.r, 56
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEElSE_NS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_SS_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, ptr noundef nonnull byval(%"class.CGAL::Box_intersection_d::Box_with_handle_d.461") align 8 %5, i32 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.t = icmp sgt i64 %i.r, 56
  br i1 %i.t, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_SR_T0_.exit, !llvm.loop !1680

.lr.ph36:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2235 = phi ptr [ %.sroa.023.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02334 = phi i64 [ %i.bd, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.bf, %bb.b ], [ %i.c, %.lr.ph ]
  %i.v = udiv i64 %i.u, 112
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.v
  %i.x = getelementptr inbounds i8, ptr %storemerge2235, i64 -56
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_SR_SR_T0_(ptr %0, ptr nonnull %i.e, ptr %i.w, ptr nonnull %i.x, i32 %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph36
  %.sroa.020.0.i.i = phi ptr [ %storemerge2235, %.lr.ph36 ], [ %.sroa.020.1.i.i, %bb.h ]
  %.sroa.023.0.i.i = phi ptr [ %i.e, %.lr.ph36 ], [ %i.bc, %bb.h ]
  br label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i.i, %bb.d
  %.sroa.023.1.i.i = phi ptr [ %.sroa.023.0.i.i, %bb.d ], [ %i.am, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i.i ] ; 16 uses
  switch i32 %3, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i.i.i.i [
    i32 0, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.i.i
    i32 1, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i.i.i.i
  ]

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i.i.i.i: ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.023.1.i.i, i64 8
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i.i.i.i: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.023.1.i.i, i64 16
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i.i.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i.i.i.i, %bb.e
  %.in.i.i.i.i.i = phi ptr [ %i.z, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i.i.i.i ], [ %i.y, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i.i.i.i ], [ %.sroa.023.1.i.i, %bb.e ]
  %.in.i.i9.i.i.i.i.i = phi ptr [ %i.g, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i.i.i.i ], [ %i.f, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i.i.i.i ], [ %0, %bb.e ]
  %i.aa = load double, ptr %.in.i.i.i.i.i, align 8, !tbaa !228
  %i.ab = load double, ptr %.in.i.i9.i.i.i.i.i, align 8, !tbaa !228
  %i.ac = fcmp olt double %i.aa, %i.ab
  br i1 %i.ac, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.i.i
  switch i32 %3, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i.i.i.i.i [
    i32 0, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_SR_SR_T0_:bb.a

bb.d:                                             ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i38
  switch i32 %4, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i.i.i45 [
    i32 0, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i42
    i32 1, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i.i.i41
  ]

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i.i.i41: ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i42

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i.i.i45: ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i42

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i42: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i.i.i45, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i.i.i41, %bb.d
  %.in21.i.i.i43 = phi ptr [ %i.av, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i.i.i45 ], [ %i.at, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i.i.i41 ], [ %1, %bb.d ]
  %.in.i.i13.i.i.i44 = phi ptr [ %i.aw, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i.i.i45 ], [ %i.au, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i.i.i41 ], [ %3, %bb.d ]
  %i.ax = load double, ptr %.in21.i.i.i43, align 8, !tbaa !228
  %i.ay = load double, ptr %.in.i.i13.i.i.i44, align 8, !tbaa !228
  %i.az = fcmp oeq double %i.ax, %i.ay
  br i1 %i.az, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit47, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit47.thread76

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit47: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i42
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !372
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !372
  %i.be = icmp ult ptr %i.bb, %i.bd
  br i1 %i.be, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit47.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit47.thread76

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit47.thread: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i38, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit47
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %9, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.g

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit47.thread76: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i42, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit47
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %8, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.g

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread74: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit
  switch i32 %4, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i.i57 [
    i32 0, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i49
    i32 1, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i.i48
  ]

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i.i48: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread74
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i49

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i.i57: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread74
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i49

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i49: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i.i57, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i.i48, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread74
  %.in.i.i.i50 = phi ptr [ %i.bh, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i.i57 ], [ %i.bf, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i.i48 ], [ %1, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread74 ]
  %.in.i.i9.i.i.i51 = phi ptr [ %i.bi, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i.i57 ], [ %i.bg, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i.i48 ], [ %3, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread74 ]
  %i.bj = load double, ptr %.in.i.i.i50, align 8, !tbaa !228
  %i.bk = load double, ptr %.in.i.i9.i.i.i51, align 8, !tbaa !228
  %i.bl = fcmp olt double %i.bj, %i.bk
  br i1 %i.bl, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit58.thread, label %bb.e

bb.e:                                             ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i49
  switch i32 %4, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i.i.i56 [
    i32 0, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i53
    i32 1, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i.i.i52
  ]

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i.i.i52: ; preds = %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i53

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i.i.i56: ; preds = %bb.e
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i53

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i53: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i.i.i56, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i.i.i52, %bb.e
  %.in21.i.i.i54 = phi ptr [ %i.bo, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i.i.i56 ], [ %i.bm, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i.i.i52 ], [ %1, %bb.e ]
  %.in.i.i13.i.i.i55 = phi ptr [ %i.bp, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i.i.i56 ], [ %i.bn, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i.i.i52 ], [ %3, %bb.e ]
  %i.bq = load double, ptr %.in21.i.i.i54, align 8, !tbaa !228
  %i.br = load double, ptr %.in.i.i13.i.i.i55, align 8, !tbaa !228
  %i.bs = fcmp oeq double %i.bq, %i.br
  br i1 %i.bs, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit58, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit58.thread77

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit58: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i53
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !372
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !372
  %i.bx = icmp ult ptr %i.bu, %i.bw
  br i1 %i.bx, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit58.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit58.thread77

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit58.thread: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i49, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit58
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %7, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.g

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit58.thread77: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i53, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit58
  switch i32 %4, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i.i68 [
    i32 0, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i60
    i32 1, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i.i59
  ]

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i.i59: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit58.thread77
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i60

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i.i68: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit58.thread77
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i60

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i60: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i.i68, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i.i59, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit58.thread77
  %.in.i.i.i61 = phi ptr [ %i.ca, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i.i68 ], [ %i.by, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i.i59 ], [ %2, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit58.thread77 ]
  %.in.i.i9.i.i.i62 = phi ptr [ %i.cb, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i.i68 ], [ %i.bz, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i.i59 ], [ %3, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit58.thread77 ]
  %i.cc = load double, ptr %.in.i.i.i61, align 8, !tbaa !228
  %i.cd = load double, ptr %.in.i.i9.i.i.i62, align 8, !tbaa !228
  %i.ce = fcmp olt double %i.cc, %i.cd
  br i1 %i.ce, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit69.thread, label %bb.f

bb.f:                                             ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i60
  switch i32 %4, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i.i.i67 [
    i32 0, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i64
    i32 1, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i.i.i63
  ]

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i.i.i63: ; preds = %bb.f
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i64

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i.i.i67: ; preds = %bb.f
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i64

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i64: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i.i.i67, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i.i.i63, %bb.f
  %.in21.i.i.i65 = phi ptr [ %i.ch, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i.i.i67 ], [ %i.cf, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i.i.i63 ], [ %2, %bb.f ]
  %.in.i.i13.i.i.i66 = phi ptr [ %i.ci, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i.i.i67 ], [ %i.cg, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i.i.i63 ], [ %3, %bb.f ]
  %i.cj = load double, ptr %.in21.i.i.i65, align 8, !tbaa !228
  %i.ck = load double, ptr %.in.i.i13.i.i.i66, align 8, !tbaa !228
  %i.cl = fcmp oeq double %i.cj, %i.ck
  br i1 %i.cl, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit69, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit69.thread78

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit69: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i64
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !372
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !372
  %i.cq = icmp ult ptr %i.cn, %i.cp
  br i1 %i.cq, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit69.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit69.thread78

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit69.thread: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i60, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit69
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.g

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit69.thread78: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i64, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit69
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.g

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit58.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit69.thread78, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit69.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit36.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit47.thread76, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit47.thread
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.862, align 1            ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !383, !range !77, !noundef !78
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !383
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i8, ptr %i.d, align 8
  %.not.i.i.i.i.i = icmp ne i8 %i.e, -1
  %or.cond.not.i.i = select i1 %i.c, i1 %.not.i.i.i.i.i, i1 false, !prof !386
  br i1 %or.cond.not.i.i, label %bb.b, label %_ZNSt17_Optional_payloadISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0ELb0EED2Ev.exit, !prof !386

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS3_5EpeckEEENS3_9Segment_3IS5_EENS3_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_SA_SD_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(33) %0)
          to label %.noexc.i.i.i.i unwind label %bb.c

.noexc.i.i.i.i:                                   ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %_ZNSt17_Optional_payloadISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0ELb0EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #41
  unreachable

_ZNSt17_Optional_payloadISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %.noexc.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK4CGAL25Static_filtered_predicateINS_16Simple_cartesianINS_11Interval_ntILb0EEEEENS_18Filtered_predicateINS_20CommonKernelFunctors14Do_intersect_3INS1_IN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEEEENS7_IS4_EENS_15Exact_converterINS_5EpeckESL_EENS_16Approx_converterISP_S4_EELb1EEENS_8internal25Static_filters_predicates14Do_intersect_3INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES10_EEEENSU_14Static_filtersIS13_EEEEEclINS_10Triangle_3ISP_EES1A_EEbRKT_RKT0_(ptr noundef nonnull align 1 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #31 comdat align 2 {
bb.a:
  %3 = alloca %"class.CGAL::internal::Static_filters", align 1 ; 3 uses
  %4 = alloca %"struct.std::pair.550", align 8    ; 13 uses
  %5 = alloca %"struct.std::pair.550", align 8    ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.a = load ptr, ptr %1, align 8, !tbaa !207
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.c = load atomic ptr, ptr %i.b acquire, align 8 ; 18 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1702)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !86, !noalias !1703
  %i.f = load double, ptr %i.c, align 16, !tbaa !86, !noalias !1703
  %i.g = fneg double %i.f                         ; 2 uses
  %i.h = fcmp oeq double %i.e, %i.g
  br i1 %i.h, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.k = load double, ptr %i.j, align 8, !tbaa !86, !noalias !1703
  %i.l = load double, ptr %i.i, align 16, !tbaa !86, !noalias !1703
  %i.m = fneg double %i.l                         ; 2 uses
  %i.n = fcmp oeq double %i.k, %i.m
  br i1 %i.n, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.q = load double, ptr %i.p, align 8, !tbaa !86, !noalias !1703
  %i.r = load double, ptr %i.o, align 16, !tbaa !86, !noalias !1703
  %i.s = fneg double %i.r                         ; 2 uses
  %i.t = fcmp oeq double %i.q, %i.s
  br i1 %i.t, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.w = load double, ptr %i.v, align 8, !tbaa !86, !noalias !1704
  %i.x = load double, ptr %i.u, align 16, !tbaa !86, !noalias !1704
  %i.y = fneg double %i.x                         ; 2 uses
  %i.z = fcmp oeq double %i.w, %i.y
  br i1 %i.z, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !86, !noalias !1704
  %i.ad = load double, ptr %i.aa, align 16, !tbaa !86, !noalias !1704
  %i.ae = fneg double %i.ad                       ; 2 uses
  %i.af = fcmp oeq double %i.ac, %i.ae
  br i1 %i.af, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !86, !noalias !1704
  %i.aj = load double, ptr %i.ag, align 16, !tbaa !86, !noalias !1704
  %i.ak = fneg double %i.aj                       ; 2 uses
  %i.al = fcmp oeq double %i.ai, %i.ak
  br i1 %i.al, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.ao = load double, ptr %i.an, align 8, !tbaa !86, !noalias !1705
  %i.ap = load double, ptr %i.am, align 16, !tbaa !86, !noalias !1705
  %i.aq = fneg double %i.ap                       ; 2 uses
  %i.ar = fcmp oeq double %i.ao, %i.aq
  br i1 %i.ar, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.au = load double, ptr %i.at, align 8, !tbaa !86, !noalias !1705
  %i.av = load double, ptr %i.as, align 16, !tbaa !86, !noalias !1705
  %i.aw = fneg double %i.av                       ; 2 uses
  %i.ax = fcmp oeq double %i.au, %i.aw
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.ba = load double, ptr %i.az, align 8, !tbaa !86, !noalias !1705
  %i.bb = load double, ptr %i.ay, align 16, !tbaa !86, !noalias !1705
  %i.bc = fneg double %i.bb                       ; 2 uses
  %i.bd = fcmp oeq double %i.ba, %i.bc
  br i1 %i.bd, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b, %bb.f, %bb.e, %bb.i, %bb.h, %bb.g
  %i.be = tail call noundef zeroext i1 @_ZNK4CGAL18Filtered_predicateINS_20CommonKernelFunctors14Do_intersect_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_10Triangle_3ISO_EESV_EEEbDpRKT_(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.w

bb.k:                                             ; preds = %bb.i
  store double %i.g, ptr %4, align 8, !alias.scope !1702
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store double %i.m, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1702
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double %i.s, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1702
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store double %i.y, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1702
  %.sroa.0.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  store double %i.ae, ptr %.sroa.0.sroa.7.0..sroa_idx.i, align 8, !alias.scope !1702
  %.sroa.0.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  store double %i.ak, ptr %.sroa.0.sroa.8.0..sroa_idx.i, align 8, !alias.scope !1702
  %.sroa.0.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 48
  store double %i.aq, ptr %.sroa.0.sroa.9.0..sroa_idx.i, align 8, !alias.scope !1702
  %.sroa.0.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 56
  store double %i.aw, ptr %.sroa.0.sroa.10.0..sroa_idx.i, align 8, !alias.scope !1702
  %.sroa.0.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 64
  store double %i.bc, ptr %.sroa.0.sroa.11.0..sroa_idx.i, align 8, !alias.scope !1702
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i8 1, ptr %i.bf, align 8, !tbaa !1710, !alias.scope !1702
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.bg = load ptr, ptr %2, align 8, !tbaa !207
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 160
  %i.bi = load atomic ptr, ptr %i.bh acquire, align 8 ; 18 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1711)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !86, !noalias !1712
  %i.bl = load double, ptr %i.bi, align 16, !tbaa !86, !noalias !1712
  %i.bm = fneg double %i.bl                       ; 2 uses
  %i.bn = fcmp oeq double %i.bk, %i.bm
  br i1 %i.bn, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !86, !noalias !1712
  %i.br = load double, ptr %i.bo, align 16, !tbaa !86, !noalias !1712
  %i.bs = fneg double %i.br                       ; 2 uses
  %i.bt = fcmp oeq double %i.bq, %i.bs
  br i1 %i.bt, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !86, !noalias !1712
  %i.bx = load double, ptr %i.bu, align 16, !tbaa !86, !noalias !1712
  %i.by = fneg double %i.bx                       ; 2 uses
  %i.bz = fcmp oeq double %i.bw, %i.by
  br i1 %i.bz, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !86, !noalias !1713
  %i.cd = load double, ptr %i.ca, align 16, !tbaa !86, !noalias !1713
  %i.ce = fneg double %i.cd                       ; 2 uses
  %i.cf = fcmp oeq double %i.cc, %i.ce
  br i1 %i.cf, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !86, !noalias !1713
  %i.cj = load double, ptr %i.cg, align 16, !tbaa !86, !noalias !1713
  %i.ck = fneg double %i.cj                       ; 2 uses
  %i.cl = fcmp oeq double %i.ci, %i.ck
  br i1 %i.cl, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bi, i64 80
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bi, i64 88
  %i.co = load double, ptr %i.cn, align 8, !tbaa !86, !noalias !1713
  %i.cp = load double, ptr %i.cm, align 16, !tbaa !86, !noalias !1713
  %i.cq = fneg double %i.cp                       ; 2 uses
  %i.cr = fcmp oeq double %i.co, %i.cq
  br i1 %i.cr, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bi, i64 96
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bi, i64 104
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !86, !noalias !1714
  %i.cv = load double, ptr %i.cs, align 16, !tbaa !86, !noalias !1714
  %i.cw = fneg double %i.cv                       ; 2 uses
  %i.cx = fcmp oeq double %i.cu, %i.cw
end_hunk_1
begin_hunk_2_@_ZNK4CGAL25Lazy_construction_variantINS_5EpeckENS_20CommonKernelFunctors11Intersect_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclINS_10Triangle_3IS1_EESR_EEDcRKT_RKT0_:bb.a
  unreachable

common.resume:                                    ; preds = %bb.as, %bb.bb, %bb.aq, %bb.an
  %common.resume.op = phi { ptr, i32 } [ %i.cu, %bb.an ], [ %i.db, %bb.aq ], [ %i.eb, %bb.bb ], [ %.merged17, %bb.as ]
  resume { ptr, i32 } %common.resume.op

bb.an:                                            ; preds = %bb.al, %bb.ak
  %i.cu = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.cr, align 8, !tbaa !80
  store ptr null, ptr %i.cs, align 8, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %common.resume

_ZN4CGAL5exactINS_10Triangle_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEERKT0_RKNS_4LazyIT_SQ_T1_EE.exit: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.cr, align 8, !tbaa !80
  store ptr null, ptr %i.cs, align 8, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 160
  %i.cw = load atomic ptr, ptr %i.cv monotonic, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 144
  %i.cy = load ptr, ptr %3, align 8, !tbaa !207   ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %i.cy, ptr %8, align 8, !tbaa !370
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %8, ptr %7, align 8, !tbaa !80
  store ptr %7, ptr %i.cr, align 8, !tbaa !80
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_10Triangle_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.cs, align 8, !tbaa !80
  %i.da = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.cz, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i26 unwind label %bb.aq ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i26:        ; preds = %_ZN4CGAL5exactINS_10Triangle_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEERKT0_RKNS_4LazyIT_SQ_T1_EE.exit
  %.not.i.i.i.i27 = icmp eq i32 %i.da, 0
  br i1 %.not.i.i.i.i27, label %_ZN4CGAL5exactINS_10Triangle_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEERKT0_RKNS_4LazyIT_SQ_T1_EE.exit28, label %bb.ao

bb.ao:                                            ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i26
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.da) #43
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  unreachable

bb.aq:                                            ; preds = %bb.ao, %_ZN4CGAL5exactINS_10Triangle_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEERKT0_RKNS_4LazyIT_SQ_T1_EE.exit
  %i.db = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.cr, align 8, !tbaa !80
  store ptr null, ptr %i.cs, align 8, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %common.resume

_ZN4CGAL5exactINS_10Triangle_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEERKT0_RKNS_4LazyIT_SQ_T1_EE.exit28: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i26
  store ptr null, ptr %i.cr, align 8, !tbaa !80
  store ptr null, ptr %i.cs, align 8, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 160
  %i.dd = load atomic ptr, ptr %i.dc monotonic, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22, !noalias !2359
  call void @_ZN4CGAL13Intersections8internal12intersectionINS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS_19Intersection_traitsIT_NSJ_10Triangle_3ESK_E11result_typeERKSK_SO_RKSJ_(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.614") align 16 %18, ptr noundef nonnull align 16 dereferenceable(576) %i.cx, ptr noundef nonnull align 16 dereferenceable(576) %i.de, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !2359
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %i.df = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 3 uses
  store i8 0, ptr %i.df, align 16, !tbaa !383
  %i.dg = getelementptr inbounds nuw i8, ptr %18, i64 592 ; 3 uses
  %i.dh = load i8, ptr %i.dg, align 16, !tbaa !413, !range !77, !noundef !78
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.at, label %.thread54

.thread54:                                        ; preds = %_ZN4CGAL5exactINS_10Triangle_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEERKT0_RKNS_4LazyIT_SQ_T1_EE.exit28
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.dj, align 8, !tbaa !383
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0EED2Ev.exit36

bb.ar:                                            ; preds = %bb.aj
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ai
  %.merged17 = phi { ptr, i32 } [ %i.dk, %bb.ar ], [ %.pn.pn, %bb.ai ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.dl = load i32, ptr %i.a, align 4
  %i.dm = and i32 %i.dl, -24577
  %i.dn = or disjoint i32 %i.dm, %i.i
  store i32 %i.dn, ptr %i.b, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %common.resume

bb.at:                                            ; preds = %_ZN4CGAL5exactINS_10Triangle_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEERKT0_RKNS_4LazyIT_SQ_T1_EE.exit28
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  store ptr %19, ptr %20, align 8, !tbaa !415
  invoke void @_ZSt5visitIRN4CGAL8internal27Fill_lazy_variant_visitor_0ISt8optionalISt7variantIJNS0_7Point_3INS0_5EpeckEEENS0_9Segment_3IS6_EENS0_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEENS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEES6_NSH_IN5boost14multiprecision6numberINSM_8backends16rational_adaptorINSO_15cpp_int_backendILm0ELm0ELNSM_16cpp_integer_typeE1ELNSM_18cpp_int_check_typeE0ESaIyEEEEELNSM_26expression_template_optionE1EEEEEEEJRS4_IJNS5_ISY_EENS8_ISY_EENSA_ISY_EESC_IS11_SaIS11_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS1B_EEEEE4typeEE4typeEOS1K_EEEE4typeEOS19_DpOS1B_(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 16 dereferenceable(577) %18)
          to label %bb.au unwind label %bb.bb

bb.au:                                            ; preds = %bb.at
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i8 0, ptr %i.do, align 8, !tbaa !383
  %i.dp = load i8, ptr %i.df, align 16, !tbaa !383, !range !77, !noundef !78
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %bb.av, label %.thread57

.thread57:                                        ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0EED2Ev.exit36

bb.av:                                            ; preds = %bb.au
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 -1, ptr %i.dr, align 8, !tbaa !385
  %i.ds = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.dt = load i8, ptr %i.ds, align 8, !tbaa !385 ; 2 uses
  switch i8 %i.dt, label %bb.ba [
    i8 0, label %bb.aw
    i8 1, label %bb.ax
    i8 2, label %bb.ay
    i8 3, label %bb.az
    i8 -1, label %bb.bc
  ]

bb.aw:                                            ; preds = %bb.av
  %i.du = load ptr, ptr %19, align 16, !tbaa !207
  store ptr %i.du, ptr %0, align 8, !tbaa !207
  store ptr null, ptr %19, align 16, !tbaa !207
  br label %bb.bc

bb.ax:                                            ; preds = %bb.av
  %i.dv = load ptr, ptr %19, align 16, !tbaa !207
  store ptr %i.dv, ptr %0, align 8, !tbaa !207
  store ptr null, ptr %19, align 16, !tbaa !207
  br label %bb.bc

bb.ay:                                            ; preds = %bb.av
  %i.dw = load ptr, ptr %19, align 16, !tbaa !207
  store ptr %i.dw, ptr %0, align 8, !tbaa !207
  store ptr null, ptr %19, align 16, !tbaa !207
  br label %bb.bc

bb.az:                                            ; preds = %bb.av
  %i.dx = load <2 x ptr>, ptr %19, align 16, !tbaa !405
  store <2 x ptr> %i.dx, ptr %0, align 8, !tbaa !405
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.ea = load ptr, ptr %i.dz, align 16, !tbaa !407
  store ptr %i.ea, ptr %i.dy, align 8, !tbaa !407
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %19, i8 0, i64 24, i1 false)
  br label %bb.bc

bb.ba:                                            ; preds = %bb.av
  unreachable

bb.bb:                                            ; preds = %bb.at
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_3ISH_EENS1_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEELb0ELb0EED2Ev(ptr noundef nonnull align 16 dead_on_return(608) dereferenceable(608) %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %common.resume

bb.bc:                                            ; preds = %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az
  store i8 %i.dt, ptr %i.dr, align 8, !tbaa !385
  store i8 1, ptr %i.do, align 8, !tbaa !383
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  store i8 0, ptr %i.df, align 16, !tbaa !383
  %i.ec = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.ed = load i8, ptr %i.ec, align 8
  %.not.i.i.i.i.i.i33.not = icmp eq i8 %i.ed, -1
  br i1 %.not.i.i.i.i.i.i33.not, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0EED2Ev.exit36, label %bb.bd, !prof !2358

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS3_5EpeckEEENS3_9Segment_3IS5_EENS3_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_SA_SD_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(40) %19)
          to label %.noexc.i.i.i.i.i35 unwind label %bb.be

.noexc.i.i.i.i.i35:                               ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0EED2Ev.exit36

bb.be:                                            ; preds = %bb.bd
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #41
  unreachable

_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0EED2Ev.exit36: ; preds = %.thread57, %.thread54, %bb.bc, %.noexc.i.i.i.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.eg = load i8, ptr %i.dg, align 16, !tbaa !413, !range !77, !noundef !78
  %i.eh = trunc nuw i8 %i.eg to i1
  store i8 0, ptr %i.dg, align 16, !tbaa !413
  %i.ei = getelementptr inbounds nuw i8, ptr %18, i64 576
  %i.ej = load i8, ptr %i.ei, align 16
  %.not.i.i.i.i.i.i37 = icmp ne i8 %i.ej, -1
  %or.cond.not.i.i.i38 = select i1 %i.eh, i1 %.not.i.i.i.i.i.i37, i1 false, !prof !386
  br i1 %or.cond.not.i.i.i38, label %bb.bf, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_3ISH_EENS1_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEELb0ELb0EED2Ev.exit, !prof !386

bb.bf:                                            ; preds = %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0EED2Ev.exit36
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS3_16Simple_cartesianIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEEEENS3_9Segment_3ISJ_EENS3_10Triangle_3ISJ_EESt6vectorISK_SaISK_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJSK_SM_SO_SR_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 16 dereferenceable(608) %18)
          to label %.noexc.i.i.i.i.i39 unwind label %bb.bg

.noexc.i.i.i.i.i39:                               ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_3ISH_EENS1_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEELb0ELb0EED2Ev.exit

bb.bg:                                            ; preds = %bb.bf
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  call void @__clang_call_terminate(ptr %i.el) #41
  unreachable

_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_3ISH_EENS1_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEELb0ELb0EED2Ev.exit: ; preds = %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0EED2Ev.exit36, %.noexc.i.i.i.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %bb.bh

bb.bh:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit, %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_3ISH_EENS1_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEELb0ELb0EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nISt8optionalISt7variantIJNS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_3IS7_EENS_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSJ_8backends16rational_adaptorINSL_15cpp_int_backendILm0ELm0ELNSJ_16cpp_integer_typeE1ELNSJ_18cpp_int_check_typeE0ESaIyEEEEELNSJ_26expression_template_optionE1EEEEEEENS9_ISV_EENSB_ISV_EESD_ISW_SaISW_EEEEENS_20CommonKernelFunctors11Intersect_3IS7_EENS14_ISV_EENS_19Cartesian_converterISV_S7_NS_12NT_converterISU_S6_EEEELb0EJNSB_INS_5EpeckEEES1C_EEC2IJRKS1C_S1G_EEERKS15_RKS16_DpOT_(ptr noundef nonnull align 16 dereferenceable(224) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.CGAL::Simple_cartesian", align 1 ; 3 uses
  %6 = alloca %"class.std::optional.568", align 16 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.a = load ptr, ptr %3, align 8, !tbaa !207
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.c = load atomic ptr, ptr %i.b acquire, align 8
  %i.d = load ptr, ptr %4, align 8, !tbaa !207
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.f = load atomic ptr, ptr %i.e acquire, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !2362
  call void @_ZN4CGAL13Intersections8internal12intersectionINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_19Intersection_traitsIT_NS8_10Triangle_3ES9_E11result_typeERKS9_SD_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.568") align 16 %6, ptr noundef nonnull align 16 dereferenceable(144) %i.c, ptr noundef nonnull align 16 dereferenceable(144) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !2362
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.g, align 8, !tbaa !417
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repISt8optionalISt7variantIJNS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_3IS7_EENS_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSJ_8backends16rational_adaptorINSL_15cpp_int_backendILm0ELm0ELNSJ_16cpp_integer_typeE1ELNSJ_18cpp_int_check_typeE0ESaIyEEEEELNSJ_26expression_template_optionE1EEEEEEENS9_ISV_EENSB_ISV_EESD_ISW_SaISW_EEEEENS_19Cartesian_converterISV_S7_NS_12NT_converterISU_S6_EEEELi0EEE, i64 16), ptr %0, align 16, !tbaa !114
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 160 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  store i8 0, ptr %i.j, align 16, !tbaa !396
  %i.k = load i8, ptr %i.i, align 16, !tbaa !396, !range !77, !noundef !78
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.h, ptr %i.m, align 16, !tbaa !2365
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 0, ptr %i.n, align 8, !tbaa !419
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.q = load i8, ptr %i.p, align 16, !tbaa !403  ; 3 uses
  switch i8 %i.q, label %bb.f [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.h, ptr noundef nonnull align 16 dereferenceable(176) %6, i64 48, i1 false)
  br label %.thread17

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.h, ptr noundef nonnull align 16 dereferenceable(176) %6, i64 96, i1 false)
  br label %.thread17

bb.e:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.h, ptr noundef nonnull align 16 dereferenceable(176) %6, i64 144, i1 false)
  br label %.thread17

bb.f:                                             ; preds = %bb.b
  unreachable

.thread17:                                        ; preds = %bb.c, %bb.d, %bb.e
  store i8 %i.q, ptr %i.o, align 16, !tbaa !403
  store i8 1, ptr %i.j, align 16, !tbaa !396
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.h, ptr %i.r, align 16, !tbaa !2365
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 0, ptr %i.s, align 8, !tbaa !419
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEELb0ELb0EED2Ev.exit

bb.g:                                             ; preds = %bb.b
  %i.t = load <2 x ptr>, ptr %6, align 16, !tbaa !420
  store <2 x ptr> %i.t, ptr %i.h, align 16, !tbaa !420
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !411
  store ptr %i.w, ptr %i.u, align 16, !tbaa !411
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %6, i8 0, i64 24, i1 false)
  store i8 %i.q, ptr %i.o, align 16, !tbaa !403
  store i8 1, ptr %i.j, align 16, !tbaa !396
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.h, ptr %i.x, align 16, !tbaa !2365
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 0, ptr %i.y, align 8, !tbaa !419
  store i8 0, ptr %i.i, align 16, !tbaa !396
  %i.z = load ptr, ptr %6, align 16, !tbaa !410   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEELb0ELb0EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ab = load ptr, ptr %i.aa, align 16, !tbaa !411
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #40
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEELb0ELb0EED2Ev.exit: ; preds = %.thread17, %.thread, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nISt8optionalISt7variantIJNS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_3IS7_EENS_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSJ_8backends16rational_adaptorINSL_15cpp_int_backendILm0ELm0ELNSJ_16cpp_integer_typeE1ELNSJ_18cpp_int_check_typeE0ESaIyEEEEELNSJ_26expression_template_optionE1EEEEEEENS9_ISV_EENSB_ISV_EESD_ISW_SaISW_EEEEENS_20CommonKernelFunctors11Intersect_3IS7_EENS14_ISV_EENS_19Cartesian_converterISV_S7_NS_12NT_converterISU_S6_EEEELb0EJNSB_INS_5EpeckEEES1C_EEE, i64 16), ptr %0, align 16, !tbaa !114
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ag = load ptr, ptr %4, align 8, !tbaa !207   ; 2 uses
  store ptr %i.ag, ptr %i.af, align 16, !tbaa !207
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEELb0ELb0EED2Ev.exit
  %i.aj = load atomic i32, ptr %i.ai monotonic, align 4
  %i.ak = add nsw i32 %i.aj, 1
  store atomic i32 %i.ak, ptr %i.ai monotonic, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.am = load ptr, ptr %3, align 8, !tbaa !207   ; 2 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !207
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ao = load atomic i32, ptr %i.an monotonic, align 4
  %i.ap = add nsw i32 %i.ao, 1
  store atomic i32 %i.ap, ptr %i.an monotonic, align 4
  br label %bb.k

bb.j:                                             ; preds = %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEELb0ELb0EED2Ev.exit
  %i.aq = atomicrmw add ptr %i.ai, i32 1 monotonic, align 4 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.as = load ptr, ptr %3, align 8, !tbaa !207   ; 2 uses
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !207
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = atomicrmw add ptr %i.at, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt5visitIRN4CGAL8internal27Fill_lazy_variant_visitor_0ISt8optionalISt7variantIJNS0_7Point_3INS0_5EpeckEEENS0_9Segment_3IS6_EENS0_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEENS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEES6_NSH_IN5boost14multiprecision6numberINSM_8backends16rational_adaptorINSO_15cpp_int_backendILm0ELm0ELNSM_16cpp_integer_typeE1ELNSM_18cpp_int_check_typeE0ESaIyEEEEELNSM_26expression_template_optionE1EEEEEEEJRS4_IJNS5_ISY_EENS8_ISY_EENSA_ISY_EESC_IS11_SaIS11_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS1B_EEEEE4typeEE4typeEOS1K_EEEE4typeEOS19_DpOS1B_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 16 dereferenceable(577) %1) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.b = load i8, ptr %i.a, align 16, !tbaa !422
  switch i8 %i.b, label %bb.g [
    i8 -1, label %bb.b
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !114
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @.str.133, ptr %i.d, align 8, !tbaa !352
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #43
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4CGAL8internal27Fill_lazy_variant_visitor_0ISt8optionalISt7variantIJNS_7Point_3INS_5EpeckEEENS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEENS_16Simple_cartesianINS_11Interval_ntILb0EEEEES5_NSG_IN5boost14multiprecision6numberINSL_8backends16rational_adaptorINSN_15cpp_int_backendILm0ELm0ELNSL_16cpp_integer_typeE1ELNSL_18cpp_int_check_typeE0ESaIyEEEEELNSL_26expression_template_optionE1EEEEEEclINS4_ISX_EEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 16 dereferenceable(577) %1)
  br label %_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIvEERN4CGAL8internal27Fill_lazy_variant_visitor_0ISt8optionalISt7variantIJNS4_7Point_3INS4_5EpeckEEENS4_9Segment_3ISA_EENS4_10Triangle_3ISA_EESt6vectorISB_SaISB_EEEEENS4_16Simple_cartesianINS4_11Interval_ntILb0EEEEESA_NSL_IN5boost14multiprecision6numberINSQ_8backends16rational_adaptorINSS_15cpp_int_backendILm0ELm0ELNSQ_16cpp_integer_typeE1ELNSQ_18cpp_int_check_typeE0ESaIyEEEEELNSQ_26expression_template_optionE1EEEEEEEJRS8_IJNS9_IS12_EENSC_IS12_EENSE_IS12_EESG_IS15_SaIS15_EEEEEEDcOT0_DpOT1_.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN4CGAL8internal27Fill_lazy_variant_visitor_0ISt8optionalISt7variantIJNS_7Point_3INS_5EpeckEEENS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEENS_16Simple_cartesianINS_11Interval_ntILb0EEEEES5_NSG_IN5boost14multiprecision6numberINSL_8backends16rational_adaptorINSN_15cpp_int_backendILm0ELm0ELNSL_16cpp_integer_typeE1ELNSL_18cpp_int_check_typeE0ESaIyEEEEELNSL_26expression_template_optionE1EEEEEEclINS7_ISX_EEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 16 dereferenceable(577) %1)
  br label %_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIvEERN4CGAL8internal27Fill_lazy_variant_visitor_0ISt8optionalISt7variantIJNS4_7Point_3INS4_5EpeckEEENS4_9Segment_3ISA_EENS4_10Triangle_3ISA_EESt6vectorISB_SaISB_EEEEENS4_16Simple_cartesianINS4_11Interval_ntILb0EEEEESA_NSL_IN5boost14multiprecision6numberINSQ_8backends16rational_adaptorINSS_15cpp_int_backendILm0ELm0ELNSQ_16cpp_integer_typeE1ELNSQ_18cpp_int_check_typeE0ESaIyEEEEELNSQ_26expression_template_optionE1EEEEEEEJRS8_IJNS9_IS12_EENSC_IS12_EENSE_IS12_EESG_IS15_SaIS15_EEEEEEDcOT0_DpOT1_.exit

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN4CGAL8internal27Fill_lazy_variant_visitor_0ISt8optionalISt7variantIJNS_7Point_3INS_5EpeckEEENS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEENS_16Simple_cartesianINS_11Interval_ntILb0EEEEES5_NSG_IN5boost14multiprecision6numberINSL_8backends16rational_adaptorINSN_15cpp_int_backendILm0ELm0ELNSL_16cpp_integer_typeE1ELNSL_18cpp_int_check_typeE0ESaIyEEEEELNSL_26expression_template_optionE1EEEEEEclINS9_ISX_EEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 16 dereferenceable(577) %1)
  br label %_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIvEERN4CGAL8internal27Fill_lazy_variant_visitor_0ISt8optionalISt7variantIJNS4_7Point_3INS4_5EpeckEEENS4_9Segment_3ISA_EENS4_10Triangle_3ISA_EESt6vectorISB_SaISB_EEEEENS4_16Simple_cartesianINS4_11Interval_ntILb0EEEEESA_NSL_IN5boost14multiprecision6numberINSQ_8backends16rational_adaptorINSS_15cpp_int_backendILm0ELm0ELNSQ_16cpp_integer_typeE1ELNSQ_18cpp_int_check_typeE0ESaIyEEEEELNSQ_26expression_template_optionE1EEEEEEEJRS8_IJNS9_IS12_EENSC_IS12_EENSE_IS12_EESG_IS15_SaIS15_EEEEEEDcOT0_DpOT1_.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_ZN4CGAL8internal27Fill_lazy_variant_visitor_0ISt8optionalISt7variantIJNS_7Point_3INS_5EpeckEEENS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEENS_16Simple_cartesianINS_11Interval_ntILb0EEEEES5_NSG_IN5boost14multiprecision6numberINSL_8backends16rational_adaptorINSN_15cpp_int_backendILm0ELm0ELNSL_16cpp_integer_typeE1ELNSL_18cpp_int_check_typeE0ESaIyEEEEELNSL_26expression_template_optionE1EEEEEEclINS4_ISX_EEEEvRKSB_IT_SaIS11_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 16 dereferenceable(577) %1)
  br label %_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIvEERN4CGAL8internal27Fill_lazy_variant_visitor_0ISt8optionalISt7variantIJNS4_7Point_3INS4_5EpeckEEENS4_9Segment_3ISA_EENS4_10Triangle_3ISA_EESt6vectorISB_SaISB_EEEEENS4_16Simple_cartesianINS4_11Interval_ntILb0EEEEESA_NSL_IN5boost14multiprecision6numberINSQ_8backends16rational_adaptorINSS_15cpp_int_backendILm0ELm0ELNSQ_16cpp_integer_typeE1ELNSQ_18cpp_int_check_typeE0ESaIyEEEEELNSQ_26expression_template_optionE1EEEEEEEJRS8_IJNS9_IS12_EENSC_IS12_EENSE_IS12_EESG_IS15_SaIS15_EEEEEEDcOT0_DpOT1_.exit

bb.g:                                             ; preds = %bb.a
  unreachable

_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIvEERN4CGAL8internal27Fill_lazy_variant_visitor_0ISt8optionalISt7variantIJNS4_7Point_3INS4_5EpeckEEENS4_9Segment_3ISA_EENS4_10Triangle_3ISA_EESt6vectorISB_SaISB_EEEEENS4_16Simple_cartesianINS4_11Interval_ntILb0EEEEESA_NSL_IN5boost14multiprecision6numberINSQ_8backends16rational_adaptorINSS_15cpp_int_backendILm0ELm0ELNSQ_16cpp_integer_typeE1ELNSQ_18cpp_int_check_typeE0ESaIyEEEEELNSQ_26expression_template_optionE1EEEEEEEJRS8_IJNS9_IS12_EENSC_IS12_EENSE_IS12_EESG_IS15_SaIS15_EEEEEEDcOT0_DpOT1_.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_3ISH_EENS1_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEELb0ELb0EED2Ev(ptr noundef nonnull align 16 dead_on_return(608) dereferenceable(608) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.1036, align 1           ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.b = load i8, ptr %i.a, align 16, !tbaa !413, !range !77, !noundef !78
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 16, !tbaa !413
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.e = load i8, ptr %i.d, align 16
  %.not.i.i.i.i.i = icmp ne i8 %i.e, -1
  %or.cond.not.i.i = select i1 %i.c, i1 %.not.i.i.i.i.i, i1 false, !prof !386
  br i1 %or.cond.not.i.i, label %bb.b, label %_ZNSt17_Optional_payloadISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_3ISH_EENS1_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEELb0ELb0ELb0EED2Ev.exit, !prof !386

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS3_16Simple_cartesianIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEEEENS3_9Segment_3ISJ_EENS3_10Triangle_3ISJ_EESt6vectorISK_SaISK_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJSK_SM_SO_SR_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(593) %0)
          to label %.noexc.i.i.i.i unwind label %bb.c

.noexc.i.i.i.i:                                   ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %_ZNSt17_Optional_payloadISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_3ISH_EENS1_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEELb0ELb0ELb0EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #41
  unreachable

_ZNSt17_Optional_payloadISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_3ISH_EENS1_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %.noexc.i.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nISt8optionalISt7variantIJNS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_3IS7_EENS_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSJ_8backends16rational_adaptorINSL_15cpp_int_backendILm0ELm0ELNSJ_16cpp_integer_typeE1ELNSJ_18cpp_int_check_typeE0ESaIyEEEEELNSJ_26expression_template_optionE1EEEEEEENS9_ISV_EENSB_ISV_EESD_ISW_SaISW_EEEEENS_20CommonKernelFunctors11Intersect_3IS7_EENS14_ISV_EENS_19Cartesian_converterISV_S7_NS_12NT_converterISU_S6_EEEELb0EJNSB_INS_5EpeckEEES1C_EED2Ev(ptr noundef nonnull align 16 dead_on_return(224) dereferenceable(224) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !207  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL10Triangle_3INS0_5EpeckEEELb0EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i = icmp eq i8 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load atomic i32, ptr %i.e monotonic, align 4 ; 2 uses
  %i.g = icmp eq i32 %i.f, 1                      ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !114
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(12) %i.c) #22, !inline_history !2366
  br label %_ZNSt10_Head_baseILm0EN4CGAL10Triangle_3INS0_5EpeckEEELb0EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = add nsw i32 %i.f, -1
  store atomic i32 %i.k, ptr %i.e monotonic, align 4
  br label %_ZNSt10_Head_baseILm0EN4CGAL10Triangle_3INS0_5EpeckEEELb0EED2Ev.exit.i

bb.f:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = atomicrmw sub ptr %i.e, i32 1 release, align 4
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.h, label %_ZNSt10_Head_baseILm0EN4CGAL10Triangle_3INS0_5EpeckEEELb0EED2Ev.exit.i

bb.h:                                             ; preds = %bb.g, %bb.f
  fence acquire
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !207  ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZNSt10_Head_baseILm0EN4CGAL10Triangle_3INS0_5EpeckEEELb0EED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !114
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(12) %i.n) #22, !inline_history !2366
  br label %_ZNSt10_Head_baseILm0EN4CGAL10Triangle_3INS0_5EpeckEEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0EN4CGAL10Triangle_3INS0_5EpeckEEELb0EED2Ev.exit.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.a
  %i.s = load ptr, ptr %i.a, align 16, !tbaa !207 ; 4 uses
  %.not.i.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i, label %_ZNSt11_Tuple_implILm0EJN4CGAL10Triangle_3INS0_5EpeckEEES3_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt10_Head_baseILm0EN4CGAL10Triangle_3INS0_5EpeckEEELb0EED2Ev.exit.i
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i2.i = icmp eq i8 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load atomic i32, ptr %i.u monotonic, align 4 ; 2 uses
  %i.w = icmp eq i32 %i.v, 1                      ; 2 uses
  br i1 %.not.i.i.i.i2.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.w, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !114
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(12) %i.s) #22, !inline_history !2367
  br label %_ZNSt11_Tuple_implILm0EJN4CGAL10Triangle_3INS0_5EpeckEEES3_EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.aa = add nsw i32 %i.v, -1
  store atomic i32 %i.aa, ptr %i.u monotonic, align 4
  br label %_ZNSt11_Tuple_implILm0EJN4CGAL10Triangle_3INS0_5EpeckEEES3_EED2Ev.exit

bb.n:                                             ; preds = %bb.j
  br i1 %i.w, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = atomicrmw sub ptr %i.u, i32 1 release, align 4
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %bb.p, label %_ZNSt11_Tuple_implILm0EJN4CGAL10Triangle_3INS0_5EpeckEEES3_EED2Ev.exit

bb.p:                                             ; preds = %bb.o, %bb.n
  fence acquire
  %i.ad = load ptr, ptr %i.a, align 16, !tbaa !207 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZNSt11_Tuple_implILm0EJN4CGAL10Triangle_3INS0_5EpeckEEES3_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !114
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(12) %i.ad) #22, !inline_history !2367
  br label %_ZNSt11_Tuple_implILm0EJN4CGAL10Triangle_3INS0_5EpeckEEES3_EED2Ev.exit

_ZNSt11_Tuple_implILm0EJN4CGAL10Triangle_3INS0_5EpeckEEES3_EED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0EN4CGAL10Triangle_3INS0_5EpeckEEELb0EED2Ev.exit.i, %bb.l, %bb.m, %bb.o, %bb.p, %bb.q
  tail call void @_ZN4CGAL8Lazy_repISt8optionalISt7variantIJNS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_3IS7_EENS_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSJ_8backends16rational_adaptorINSL_15cpp_int_backendILm0ELm0ELNSJ_16cpp_integer_typeE1ELNSJ_18cpp_int_check_typeE0ESaIyEEEEELNSJ_26expression_template_optionE1EEEEEEENS9_ISV_EENSB_ISV_EESD_ISW_SaISW_EEEEENS_19Cartesian_converterISV_S7_NS_12NT_converterISU_S6_EEEELi0EED2Ev(ptr noundef nonnull align 16 dead_on_return(204) dereferenceable(204) %0) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nISt8optionalISt7variantIJNS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_3IS7_EENS_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSJ_8backends16rational_adaptorINSL_15cpp_int_backendILm0ELm0ELNSJ_16cpp_integer_typeE1ELNSJ_18cpp_int_check_typeE0ESaIyEEEEELNSJ_26expression_template_optionE1EEEEEEENS9_ISV_EENSB_ISV_EESD_ISW_SaISW_EEEEENS_20CommonKernelFunctors11Intersect_3IS7_EENS14_ISV_EENS_19Cartesian_converterISV_S7_NS_12NT_converterISU_S6_EEEELb0EJNSB_INS_5EpeckEEES1C_EED0Ev(ptr noundef nonnull align 16 dereferenceable(224) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !207  ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL10Triangle_3INS0_5EpeckEEELb0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i = icmp eq i8 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load atomic i32, ptr %i.e monotonic, align 4 ; 2 uses
  %i.g = icmp eq i32 %i.f, 1                      ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !114
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(12) %i.c) #22, !inline_history !2368
  br label %_ZNSt10_Head_baseILm0EN4CGAL10Triangle_3INS0_5EpeckEEELb0EED2Ev.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.k = add nsw i32 %i.f, -1
  store atomic i32 %i.k, ptr %i.e monotonic, align 4
  br label %_ZNSt10_Head_baseILm0EN4CGAL10Triangle_3INS0_5EpeckEEELb0EED2Ev.exit.i.i

bb.f:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = atomicrmw sub ptr %i.e, i32 1 release, align 4
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.h, label %_ZNSt10_Head_baseILm0EN4CGAL10Triangle_3INS0_5EpeckEEELb0EED2Ev.exit.i.i

bb.h:                                             ; preds = %bb.g, %bb.f
  fence acquire
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !207  ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZNSt10_Head_baseILm0EN4CGAL10Triangle_3INS0_5EpeckEEELb0EED2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !114
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(12) %i.n) #22, !inline_history !2368
  br label %_ZNSt10_Head_baseILm0EN4CGAL10Triangle_3INS0_5EpeckEEELb0EED2Ev.exit.i.i

_ZNSt10_Head_baseILm0EN4CGAL10Triangle_3INS0_5EpeckEEELb0EED2Ev.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.a
  %i.s = load ptr, ptr %i.a, align 16, !tbaa !207 ; 4 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i.i, label %_ZN4CGAL10Lazy_rep_nISt8optionalISt7variantIJNS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_3IS7_EENS_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSJ_8backends16rational_adaptorINSL_15cpp_int_backendILm0ELm0ELNSJ_16cpp_integer_typeE1ELNSJ_18cpp_int_check_typeE0ESaIyEEEEELNSJ_26expression_template_optionE1EEEEEEENS9_ISV_EENSB_ISV_EESD_ISW_SaISW_EEEEENS_20CommonKernelFunctors11Intersect_3IS7_EENS14_ISV_EENS_19Cartesian_converterISV_S7_NS_12NT_converterISU_S6_EEEELb0EJNSB_INS_5EpeckEEES1C_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt10_Head_baseILm0EN4CGAL10Triangle_3INS0_5EpeckEEELb0EED2Ev.exit.i.i
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i2.i.i = icmp eq i8 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load atomic i32, ptr %i.u monotonic, align 4 ; 2 uses
  %i.w = icmp eq i32 %i.v, 1                      ; 2 uses
  br i1 %.not.i.i.i.i2.i.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.w, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !114
end_hunk_2
begin_hunk_3_@_ZN4CGAL13Intersections8internal31intersection_collinear_segmentsINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_19Intersection_traitsIT_NS8_9Segment_3ES9_E11result_typeERKS9_SD_RKS8_:bb.a
  br label %bb.bh

bb.ap:                                            ; preds = %_ZN4CGALneINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENT_7BooleanERKNS_7Point_3IS5_EESA_.exit62
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.gc = call i16 @_ZN4CGAL34collinear_are_ordered_along_lineC3INS_11Interval_ntILb0EEEEENS_8Equal_toIT_S4_E11result_typeERKS4_S8_S8_S8_S8_S8_S8_S8_S8_(ptr noundef nonnull align 16 dereferenceable(48) %5, ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 16 dereferenceable(48) %4, ptr noundef nonnull align 16 dereferenceable(16) %i.e, ptr noundef nonnull align 16 dereferenceable(16) %i.f, ptr noundef nonnull align 16 dereferenceable(48) %6, ptr noundef nonnull align 16 dereferenceable(16) %i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.j)
  store i16 %i.gc, ptr %16, align 2
  %i.gd = call noundef zeroext i1 @_ZNK4CGAL9UncertainIbE12make_certainEv(ptr noundef nonnull align 1 dereferenceable(2) %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  br i1 %i.gd, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %0, ptr noundef nonnull align 16 dereferenceable(96) %1, i64 96, i1 false)
  store i8 1, ptr %i.ge, align 16, !tbaa !430, !alias.scope !2741
  store i8 1, ptr %i.ga, align 16, !tbaa !428, !alias.scope !2741
  br label %bb.bh

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false)
  store i8 0, ptr %i.ge, align 16, !tbaa !430, !alias.scope !2742
  store i8 1, ptr %i.ga, align 16, !tbaa !428, !alias.scope !2742
  br label %bb.bh

bb.as:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.gf = load double, ptr %4, align 16, !tbaa !86
  %i.gg = fneg double %i.gf                       ; 2 uses
  %i.gh = load double, ptr %i.ea, align 8, !tbaa !86 ; 2 uses
  %i.gi = fcmp olt double %i.gh, %i.gg
  br i1 %i.gi, label %_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit.i.i.i66, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !86 ; 2 uses
  %i.gl = load double, ptr %6, align 16, !tbaa !86
  %i.gm = fneg double %i.gl                       ; 2 uses
  %i.gn = fcmp olt double %i.gk, %i.gm
  br i1 %i.gn, label %_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit.i.i.i66, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.go = fcmp oeq double %i.gh, %i.gg
  %i.gp = fcmp oeq double %i.gk, %i.gm
  %or.cond.i.i.i.i65 = and i1 %i.go, %i.gp
  %i.gq = zext i1 %or.cond.i.i.i.i65 to i16
  %i.gr = or disjoint i16 %i.gq, 256
  br label %_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit.i.i.i66

_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit.i.i.i66: ; preds = %bb.au, %bb.at, %bb.as
  %.sroa.4.0.i.i.i.i67 = phi i16 [ %i.gr, %bb.au ], [ 0, %bb.as ], [ 0, %bb.at ] ; 4 uses
  %.sroa.0.0.extract.trunc.i.i.i.i.i.i68 = trunc i16 %.sroa.4.0.i.i.i.i67 to i8
  %.sroa.2.0.extract.shift.i.i.i.i.i.i69 = lshr i16 %.sroa.4.0.i.i.i.i67, 8
  %.sroa.2.0.extract.trunc.i.i.i.i.i.i70 = trunc nuw nsw i16 %.sroa.2.0.extract.shift.i.i.i.i.i.i69 to i8
  %i.gs = icmp ne i8 %.sroa.0.0.extract.trunc.i.i.i.i.i.i68, %.sroa.2.0.extract.trunc.i.i.i.i.i.i70
  %i.gt = trunc i16 %.sroa.4.0.i.i.i.i67 to i1
  %.not7.i.i.i.i71 = or i1 %i.gs, %i.gt
  br i1 %.not7.i.i.i.i71, label %bb.av, label %_ZN4CGALneINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENT_7BooleanERKNS_7Point_3IS5_EESA_.exit83

bb.av:                                            ; preds = %_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit.i.i.i66
  %i.gu = load double, ptr %i.e, align 16, !tbaa !86
  %i.gv = fneg double %i.gu                       ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !86 ; 2 uses
  %i.gy = fcmp olt double %i.gx, %i.gv
  br i1 %i.gy, label %_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit.i.i.i.i.i76, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gz = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !86 ; 2 uses
  %i.hb = load double, ptr %i.i, align 16, !tbaa !86
  %i.hc = fneg double %i.hb                       ; 2 uses
  %i.hd = fcmp olt double %i.ha, %i.hc
  br i1 %i.hd, label %_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit.i.i.i.i.i76, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.he = fcmp oeq double %i.gx, %i.gv
  %i.hf = fcmp oeq double %i.ha, %i.hc
  %or.cond.i.i.i.i.i.i75 = and i1 %i.he, %i.hf
  %i.hg = zext i1 %or.cond.i.i.i.i.i.i75 to i16
  %i.hh = or disjoint i16 %i.hg, 256
  br label %_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit.i.i.i.i.i76

_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit.i.i.i.i.i76: ; preds = %bb.ax, %bb.aw, %bb.av
  %.sroa.4.0.i.i.i.i.i.i77 = phi i16 [ %i.hh, %bb.ax ], [ 0, %bb.av ], [ 0, %bb.aw ] ; 4 uses
  %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i.i78 = trunc i16 %.sroa.4.0.i.i.i.i.i.i77 to i8
  %.sroa.2.0.extract.shift.i.i.i.i.i.i.i.i79 = lshr i16 %.sroa.4.0.i.i.i.i.i.i77, 8
  %.sroa.2.0.extract.trunc.i.i.i.i.i.i.i.i80 = trunc nuw nsw i16 %.sroa.2.0.extract.shift.i.i.i.i.i.i.i.i79 to i8
  %i.hi = icmp ne i8 %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i.i78, %.sroa.2.0.extract.trunc.i.i.i.i.i.i.i.i80
  %i.hj = trunc i16 %.sroa.4.0.i.i.i.i.i.i77 to i1
  %.not7.i.i.i.i.i.i81 = or i1 %i.hi, %i.hj
  br i1 %.not7.i.i.i.i.i.i81, label %bb.ay, label %_ZN4CGALneINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENT_7BooleanERKNS_7Point_3IS5_EESA_.exit83

bb.ay:                                            ; preds = %_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit.i.i.i.i.i76
  %i.hk = load double, ptr %i.f, align 16, !tbaa !86
  %i.hl = fneg double %i.hk                       ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !86 ; 2 uses
  %i.ho = fcmp olt double %i.hn, %i.hl
  br i1 %i.ho, label %_ZN4CGALneINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENT_7BooleanERKNS_7Point_3IS5_EESA_.exit83, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hp = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !86 ; 2 uses
  %i.hr = load double, ptr %i.j, align 16, !tbaa !86
  %i.hs = fneg double %i.hr                       ; 2 uses
  %i.ht = fcmp olt double %i.hq, %i.hs
  br i1 %i.ht, label %_ZN4CGALneINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENT_7BooleanERKNS_7Point_3IS5_EESA_.exit83, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hu = fcmp oeq double %i.hn, %i.hl
  %i.hv = fcmp oeq double %i.hq, %i.hs
  %or.cond.i.i.i.i.i.i.i.i82 = and i1 %i.hu, %i.hv
  %i.hw = zext i1 %or.cond.i.i.i.i.i.i.i.i82 to i16
  %i.hx = or disjoint i16 %i.hw, 256
  %i.hy = and i16 %.sroa.4.0.i.i.i.i67, %i.hx
  %i.hz = and i16 %i.hy, %.sroa.4.0.i.i.i.i.i.i77
  br label %_ZN4CGALneINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENT_7BooleanERKNS_7Point_3IS5_EESA_.exit83

_ZN4CGALneINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENT_7BooleanERKNS_7Point_3IS5_EESA_.exit83: ; preds = %_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit.i.i.i66, %_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit.i.i.i.i.i76, %bb.ay, %bb.az, %bb.ba
  %.sroa.06.0.i.i.i.i72 = phi i16 [ 0, %_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit.i.i.i66 ], [ 0, %_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit.i.i.i.i.i76 ], [ %i.hz, %bb.ba ], [ 0, %bb.ay ], [ 0, %bb.az ]
  %trunc.i.i73 = trunc nuw i16 %.sroa.06.0.i.i.i.i72 to i9
  %i.ia = and i9 %trunc.i.i73, -255
  %i.ib = xor i9 %i.ia, -255
  %i.ic = call i9 @llvm.bitreverse.i9(i9 %i.ib)
  %.sroa.01.0.insert.insert.i.i74 = zext i9 %i.ic to i16
  store i16 %.sroa.01.0.insert.insert.i.i74, ptr %17, align 2
  %i.id = call noundef zeroext i1 @_ZNK4CGAL9UncertainIbE12make_certainEv(ptr noundef nonnull align 1 dereferenceable(2) %17)
  br i1 %i.id, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %_ZN4CGALneINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENT_7BooleanERKNS_7Point_3IS5_EESA_.exit83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.03.i84, ptr noundef nonnull align 16 dereferenceable(48) %6, i64 48, i1 false)
  %.sroa.03.48..sroa_idx.i85 = getelementptr inbounds nuw i8, ptr %.sroa.03.i84, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.03.48..sroa_idx.i85, ptr noundef nonnull align 16 dereferenceable(48) %4, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %.sroa.03.i84, i64 96, i1 false)
  br label %bb.bd

bb.bc:                                            ; preds = %_ZN4CGALneINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENT_7BooleanERKNS_7Point_3IS5_EESA_.exit83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %0, ptr noundef nonnull align 16 dereferenceable(48) %4, i64 48, i1 false)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.sink90 = phi i8 [ 1, %bb.bb ], [ 0, %bb.bc ]
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 %.sink90, ptr %i.ie, align 16, !tbaa !430
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 1, ptr %i.if, align 16, !tbaa !428
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.bh

bb.be:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.ig = call i16 @_ZN4CGAL34collinear_are_ordered_along_lineC3INS_11Interval_ntILb0EEEEENS_8Equal_toIT_S4_E11result_typeERKS4_S8_S8_S8_S8_S8_S8_S8_S8_(ptr noundef nonnull align 16 dereferenceable(48) %5, ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 16 dereferenceable(48) %1, ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(48) %6, ptr noundef nonnull align 16 dereferenceable(16) %i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.j)
  store i16 %i.ig, ptr %18, align 2
  %i.ih = call noundef zeroext i1 @_ZNK4CGAL9UncertainIbE12make_certainEv(ptr noundef nonnull align 1 dereferenceable(2) %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br i1 %i.ih, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %0, ptr noundef nonnull align 16 dereferenceable(96) %1, i64 96, i1 false)
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.ii, align 16, !tbaa !430, !alias.scope !2743
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 1, ptr %i.ij, align 16, !tbaa !428, !alias.scope !2743
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 0, ptr %i.ik, align 16, !tbaa !428, !alias.scope !2744
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.bd, %bb.ar, %bb.aq, %bb.ao, %bb.ac, %bb.q, %bb.p, %bb.n, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL8Lazy_repISt8optionalISt7variantIJNS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_3IS7_EENS_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSJ_8backends16rational_adaptorINSL_15cpp_int_backendILm0ELm0ELNSJ_16cpp_integer_typeE1ELNSJ_18cpp_int_check_typeE0ESaIyEEEEELNSJ_26expression_template_optionE1EEEEEEENS9_ISV_EENSB_ISV_EESD_ISW_SaISW_EEEEENS_19Cartesian_converterISV_S7_NS_12NT_converterISU_S6_EEEELi0EED2Ev(ptr noundef nonnull align 16 dead_on_return(204) dereferenceable(204) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.1036, align 1           ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repISt8optionalISt7variantIJNS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_3IS7_EENS_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSJ_8backends16rational_adaptorINSL_15cpp_int_backendILm0ELm0ELNSJ_16cpp_integer_typeE1ELNSJ_18cpp_int_check_typeE0ESaIyEEEEELNSJ_26expression_template_optionE1EEEEEEENS9_ISV_EENSB_ISV_EESD_ISW_SaISW_EEEEENS_19Cartesian_converterISV_S7_NS_12NT_converterISU_S6_EEEELi0EEE, i64 16), ptr %0, align 16, !tbaa !114
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load atomic ptr, ptr %i.a monotonic, align 16 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  fence acquire
  %i.d = icmp eq ptr %i.b, null
  br i1 %i.d, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 768 ; 2 uses
  %i.f = load i8, ptr %i.e, align 16, !tbaa !413, !range !77, !noundef !78
  %i.g = trunc nuw i8 %i.f to i1
  store i8 0, ptr %i.e, align 16, !tbaa !413
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 752
  %i.i = load i8, ptr %i.h, align 16
  %.not.i.i.i.i.i.i.i = icmp ne i8 %i.i, -1
  %or.cond.not.i.i.i.i = select i1 %i.g, i1 %.not.i.i.i.i.i.i.i, i1 false, !prof !386
  br i1 %or.cond.not.i.i.i.i, label %bb.d, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_3ISH_EENS1_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEELb0ELb0EED2Ev.exit.i, !prof !386

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS3_16Simple_cartesianIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEEEENS3_9Segment_3ISJ_EENS3_10Triangle_3ISJ_EESt6vectorISK_SaISK_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJSK_SM_SO_SR_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(608) %i.j)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.e

.noexc.i.i.i.i.i.i:                               ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_3ISH_EENS1_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEELb0ELb0EED2Ev.exit.i

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #41
  unreachable

_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_3ISH_EENS1_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEELb0ELb0EED2Ev.exit.i: ; preds = %.noexc.i.i.i.i.i.i, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.n = load i8, ptr %i.m, align 16, !tbaa !396, !range !77, !noundef !78
  %i.o = trunc nuw i8 %i.n to i1
  store i8 0, ptr %i.m, align 16, !tbaa !396
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.q = load i8, ptr %i.p, align 16
  %i.r = icmp eq i8 %i.q, 3
  %or.cond.i.i.i.i.i = select i1 %i.o, i1 %i.r, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.f, label %_ZN4CGAL10AT_ET_wrapISt8optionalISt7variantIJNS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_3IS7_EENS_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSJ_8backends16rational_adaptorINSL_15cpp_int_backendILm0ELm0ELNSJ_16cpp_integer_typeE1ELNSJ_18cpp_int_check_typeE0ESaIyEEEEELNSJ_26expression_template_optionE1EEEEEEENS9_ISV_EENSB_ISV_EESD_ISW_SaISW_EEEEEED2Ev.exit

bb.f:                                             ; preds = %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_3ISH_EENS1_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEELb0ELb0EED2Ev.exit.i
  %i.s = load ptr, ptr %i.b, align 16, !tbaa !410 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4CGAL10AT_ET_wrapISt8optionalISt7variantIJNS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_3IS7_EENS_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSJ_8backends16rational_adaptorINSL_15cpp_int_backendILm0ELm0ELNSJ_16cpp_integer_typeE1ELNSJ_18cpp_int_check_typeE0ESaIyEEEEELNSJ_26expression_template_optionE1EEEEEEENS9_ISV_EENSB_ISV_EESD_ISW_SaISW_EEEEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !411
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #40
  br label %_ZN4CGAL10AT_ET_wrapISt8optionalISt7variantIJNS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_3IS7_EENS_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSJ_8backends16rational_adaptorINSL_15cpp_int_backendILm0ELm0ELNSJ_16cpp_integer_typeE1ELNSJ_18cpp_int_check_typeE0ESaIyEEEEELNSJ_26expression_template_optionE1EEEEEEENS9_ISV_EENSB_ISV_EESD_ISW_SaISW_EEEEEED2Ev.exit

_ZN4CGAL10AT_ET_wrapISt8optionalISt7variantIJNS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_3IS7_EENS_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSJ_8backends16rational_adaptorINSL_15cpp_int_backendILm0ELm0ELNSJ_16cpp_integer_typeE1ELNSJ_18cpp_int_check_typeE0ESaIyEEEEELNSJ_26expression_template_optionE1EEEEEEENS9_ISV_EENSB_ISV_EESD_ISW_SaISW_EEEEEED2Ev.exit: ; preds = %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_3ISH_EENS1_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEELb0ELb0EED2Ev.exit.i, %bb.f, %bb.g
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 784) #40
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %_ZN4CGAL10AT_ET_wrapISt8optionalISt7variantIJNS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_3IS7_EENS_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSJ_8backends16rational_adaptorINSL_15cpp_int_backendILm0ELm0ELNSJ_16cpp_integer_typeE1ELNSJ_18cpp_int_check_typeE0ESaIyEEEEELNSJ_26expression_template_optionE1EEEEEEENS9_ISV_EENSB_ISV_EESD_ISW_SaISW_EEEEEED2Ev.exit, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.z = load i8, ptr %i.y, align 16, !tbaa !396, !range !77, !noundef !78
  %i.aa = trunc nuw i8 %i.z to i1
  store i8 0, ptr %i.y, align 16, !tbaa !396
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ac = load i8, ptr %i.ab, align 16
  %i.ad = icmp eq i8 %i.ac, 3
  %or.cond.i.i.i.i = select i1 %i.aa, i1 %i.ad, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.i, label %_ZN4CGAL7AT_wrapISt8optionalISt7variantIJNS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_3IS7_EENS_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEEEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %i.c, align 16, !tbaa !410 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4CGAL7AT_wrapISt8optionalISt7variantIJNS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_3IS7_EENS_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 16, !tbaa !411
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #40
  br label %_ZN4CGAL7AT_wrapISt8optionalISt7variantIJNS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_3IS7_EENS_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEEEED2Ev.exit

_ZN4CGAL7AT_wrapISt8optionalISt7variantIJNS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_3IS7_EENS_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEEEED2Ev.exit: ; preds = %bb.h, %bb.i, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL8Lazy_repISt8optionalISt7variantIJNS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_3IS7_EENS_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSJ_8backends16rational_adaptorINSL_15cpp_int_backendILm0ELm0ELNSJ_16cpp_integer_typeE1ELNSJ_18cpp_int_check_typeE0ESaIyEEEEELNSJ_26expression_template_optionE1EEEEEEENS9_ISV_EENSB_ISV_EESD_ISW_SaISW_EEEEENS_19Cartesian_converterISV_S7_NS_12NT_converterISU_S6_EEEELi0EED0Ev(ptr noundef nonnull align 16 dereferenceable(204) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #41
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_nISt8optionalISt7variantIJNS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_3IS7_EENS_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSJ_8backends16rational_adaptorINSL_15cpp_int_backendILm0ELm0ELNSJ_16cpp_integer_typeE1ELNSJ_18cpp_int_check_typeE0ESaIyEEEEELNSJ_26expression_template_optionE1EEEEEEENS9_ISV_EENSB_ISV_EESD_ISW_SaISW_EEEEENS_20CommonKernelFunctors11Intersect_3IS7_EENS14_ISV_EENS_19Cartesian_converterISV_S7_NS_12NT_converterISU_S6_EEEELb0EJNSB_INS_5EpeckEEES1C_EE19update_exact_helperIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 16 dereferenceable(224) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.1036, align 1           ; 3 uses
  %2 = alloca %class.anon.803, align 8            ; 4 uses
  %3 = alloca %"struct.CGAL::Simple_cartesian.491", align 1 ; 3 uses
  %4 = alloca %class.anon.499, align 8            ; 5 uses
  %5 = alloca %class.anon.498, align 8            ; 4 uses
  %6 = alloca %class.anon.499, align 8            ; 5 uses
  %7 = alloca %class.anon.498, align 8            ; 4 uses
  %8 = alloca %"class.std::optional.614", align 16 ; 8 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(784) ptr @_Znwm(i64 noundef 784) #45 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !207  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %i.d, ptr %7, align 8, !tbaa !370
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %7, ptr %6, align 8, !tbaa !80
  %i.f = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 5 uses
  store ptr %6, ptr %i.f, align 8, !tbaa !80
  %i.g = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 5 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_10Triangle_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.g, align 8, !tbaa !80
  %i.h = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.d ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.h) #43
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.f, align 8, !tbaa !80
  store ptr null, ptr %i.g, align 8, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.body

bb.e:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.k = load atomic ptr, ptr %i.j monotonic, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %i.m = load ptr, ptr %i.b, align 16, !tbaa !207 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %i.m, ptr %5, align 8, !tbaa !370
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %5, ptr %4, align 8, !tbaa !80
  store ptr %4, ptr %i.f, align 8, !tbaa !80
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_10Triangle_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.g, align 8, !tbaa !80
  %i.o = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i7 unwind label %bb.h ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i7:         ; preds = %bb.e
  %.not.i.i.i.i8 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i8, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i7
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.o) #43
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.f, align 8, !tbaa !80
  store ptr null, ptr %i.g, align 8, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.body

bb.i:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i7
  store ptr null, ptr %i.f, align 8, !tbaa !80
  store ptr null, ptr %i.g, align 8, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  %i.r = load atomic ptr, ptr %i.q monotonic, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !2748
  invoke void @_ZN4CGAL13Intersections8internal12intersectionINS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS_19Intersection_traitsIT_NSJ_10Triangle_3ESK_E11result_typeERKSK_SO_RKSJ_(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.614") align 16 %8, ptr noundef nonnull align 16 dereferenceable(576) %i.l, ptr noundef nonnull align 16 dereferenceable(576) %i.s, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.j unwind label %bb.ae

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !2748
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i8 0, ptr %i.t, align 16, !tbaa !396
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 592 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 768 ; 2 uses
  store i8 0, ptr %i.v, align 16, !tbaa !413
  %i.w = load i8, ptr %i.u, align 16, !tbaa !413, !range !77, !noundef !78
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.k, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_3ISH_EENS1_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEELb0ELb0EED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 752 ; 2 uses
  store i8 -1, ptr %i.z, align 16, !tbaa !422
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %i.y, ptr %2, align 8, !tbaa !444
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Move_ctor_baseILb0EJN4CGAL7Point_3INS4_16Simple_cartesianIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS4_9Segment_3ISK_EENS4_10Triangle_3ISK_EESt6vectorISL_SaISL_EEEEC1EOST_EUlOT_T0_E_JSt7variantIJSL_SN_SP_SS_EEEEDcOSX_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 16 dereferenceable(608) %8)
          to label %_ZN4CGAL10AT_ET_wrapISt8optionalISt7variantIJNS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_3IS7_EENS_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSJ_8backends16rational_adaptorINSL_15cpp_int_backendILm0ELm0ELNSJ_16cpp_integer_typeE1ELNSJ_18cpp_int_check_typeE0ESaIyEEEEELNSJ_26expression_template_optionE1EEEEEEENS9_ISV_EENSB_ISV_EESD_ISW_SaISW_EEEEEEC2EOS12_.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #41
  unreachable

_ZN4CGAL10AT_ET_wrapISt8optionalISt7variantIJNS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_3IS7_EENS_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSJ_8backends16rational_adaptorINSL_15cpp_int_backendILm0ELm0ELNSJ_16cpp_integer_typeE1ELNSJ_18cpp_int_check_typeE0ESaIyEEEEELNSJ_26expression_template_optionE1EEEEEEENS9_ISV_EENSB_ISV_EESD_ISW_SaISW_EEEEEEC2EOS12_.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 576
  %i.ad = load i8, ptr %i.ac, align 16, !tbaa !422 ; 2 uses
  store i8 %i.ad, ptr %i.z, align 16, !tbaa !422
  store i8 1, ptr %i.v, align 16, !tbaa !413
  %.pre = load i8, ptr %i.u, align 16, !tbaa !413, !range !77
  %i.ae = trunc nuw i8 %.pre to i1
  store i8 0, ptr %i.u, align 16, !tbaa !413
  %.not.i.i.i.i.i.i = icmp ne i8 %i.ad, -1
  %or.cond.not.i.i.i = select i1 %i.ae, i1 %.not.i.i.i.i.i.i, i1 false, !prof !386
  br i1 %or.cond.not.i.i.i, label %bb.m, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_3ISH_EENS1_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEELb0ELb0EED2Ev.exit, !prof !2749

bb.m:                                             ; preds = %_ZN4CGAL10AT_ET_wrapISt8optionalISt7variantIJNS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_3IS7_EENS_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSJ_8backends16rational_adaptorINSL_15cpp_int_backendILm0ELm0ELNSJ_16cpp_integer_typeE1ELNSJ_18cpp_int_check_typeE0ESaIyEEEEELNSJ_26expression_template_optionE1EEEEEEENS9_ISV_EENSB_ISV_EESD_ISW_SaISW_EEEEEEC2EOS12_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS3_16Simple_cartesianIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEEEENS3_9Segment_3ISJ_EENS3_10Triangle_3ISJ_EESt6vectorISK_SaISK_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJSK_SM_SO_SR_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(608) %8)
          to label %.noexc.i.i.i.i.i unwind label %bb.n

.noexc.i.i.i.i.i:                                 ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_3ISH_EENS1_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEELb0ELb0EED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #41
  unreachable

_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_3ISH_EENS1_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEELb0ELb0EED2Ev.exit: ; preds = %bb.j, %_ZN4CGAL10AT_ET_wrapISt8optionalISt7variantIJNS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_3IS7_EENS_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSJ_8backends16rational_adaptorINSL_15cpp_int_backendILm0ELm0ELNSJ_16cpp_integer_typeE1ELNSJ_18cpp_int_check_typeE0ESaIyEEEEELNSJ_26expression_template_optionE1EEEEEEENS9_ISV_EENSB_ISV_EESD_ISW_SaISW_EEEEEEC2EOS12_.exit, %.noexc.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZNK4CGAL8Lazy_repISt8optionalISt7variantIJNS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_3IS7_EENS_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSJ_8backends16rational_adaptorINSL_15cpp_int_backendILm0ELm0ELNSJ_16cpp_integer_typeE1ELNSJ_18cpp_int_check_typeE0ESaIyEEEEELNSJ_26expression_template_optionE1EEEEEEENS9_ISV_EENSB_ISV_EESD_ISW_SaISW_EEEEENS_19Cartesian_converterISV_S7_NS_12NT_converterISU_S6_EEEELi0EE6set_atEPNS_10AT_ET_wrapISH_S12_EE(ptr noundef nonnull align 16 dereferenceable(204) %0, ptr noundef nonnull %i.a)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 192
  store atomic ptr %i.a, ptr %i.ah release, align 16
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !207 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i, label %_ZN4CGAL17lazy_reset_memberINS_10Triangle_3INS_5EpeckEEEEEvRT_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_3ISH_EENS1_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEELb0ELb0EED2Ev.exit
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i12 = icmp eq i8 %i.aj, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.al = load atomic i32, ptr %i.ak monotonic, align 4 ; 2 uses
  %i.am = icmp eq i32 %i.al, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i12, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %i.am, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !114
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(12) %i.ai) #22, !inline_history !2747
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.aq = add nsw i32 %i.al, -1
  store atomic i32 %i.aq, ptr %i.ak monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.o
  br i1 %i.am, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = atomicrmw sub ptr %i.ak, i32 1 release, align 4
  %i.as = icmp eq i32 %i.ar, 1
  br i1 %i.as, label %bb.u, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.t, %bb.s
  fence acquire
  %i.at = load ptr, ptr %i.c, align 8, !tbaa !207 ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !114
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(12) %i.at) #22, !inline_history !2747
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i:          ; preds = %bb.v, %bb.u, %bb.t, %bb.r, %bb.q
  store ptr null, ptr %i.c, align 8, !tbaa !207
  br label %_ZN4CGAL17lazy_reset_memberINS_10Triangle_3INS_5EpeckEEEEEvRT_.exit.i.i

_ZN4CGAL17lazy_reset_memberINS_10Triangle_3INS_5EpeckEEEEEvRT_.exit.i.i: ; preds = %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i, %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_3ISH_EENS1_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEELb0ELb0EED2Ev.exit
  %i.ay = load ptr, ptr %i.b, align 16, !tbaa !207 ; 4 uses
  %.not.i.i.i2.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i2.i.i, label %_ZN4CGAL17lazy_reset_memberIJNS_10Triangle_3INS_5EpeckEEES3_EEEvRSt5tupleIJDpT_EE.exit, label %bb.w

bb.w:                                             ; preds = %_ZN4CGAL17lazy_reset_memberINS_10Triangle_3INS_5EpeckEEEEEvRT_.exit.i.i
  %i.az = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i3.i.i = icmp eq i8 %i.az, 0
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 3 uses
  %i.bb = load atomic i32, ptr %i.ba monotonic, align 4 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 1                    ; 2 uses
  br i1 %.not.i.i.i.i3.i.i, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %i.bc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !114
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(12) %i.ay) #22, !inline_history !2747
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i4.i.i

bb.z:                                             ; preds = %bb.x
  %i.bg = add nsw i32 %i.bb, -1
  store atomic i32 %i.bg, ptr %i.ba monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i4.i.i

bb.aa:                                            ; preds = %bb.w
  br i1 %i.bc, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bh = atomicrmw sub ptr %i.ba, i32 1 release, align 4
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %bb.ac, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i4.i.i

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  fence acquire
  %i.bj = load ptr, ptr %i.b, align 16, !tbaa !207 ; 3 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i4.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !114
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(12) %i.bj) #22, !inline_history !2747
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i4.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i.i4.i.i:         ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.z, %bb.y
  store ptr null, ptr %i.b, align 16, !tbaa !207
  br label %_ZN4CGAL17lazy_reset_memberIJNS_10Triangle_3INS_5EpeckEEES3_EEEvRSt5tupleIJDpT_EE.exit

_ZN4CGAL17lazy_reset_memberIJNS_10Triangle_3INS_5EpeckEEES3_EEEvRSt5tupleIJDpT_EE.exit: ; preds = %_ZN4CGAL17lazy_reset_memberINS_10Triangle_3INS_5EpeckEEEEEvRT_.exit.i.i, %_ZN4CGAL6Handle6decrefEv.exit.i.i.i4.i.i
  ret void

bb.ae:                                            ; preds = %bb.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.h, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.p, %bb.h ], [ %i.i, %bb.d ], [ %i.bo, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 784) #40
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL8Lazy_repISt8optionalISt7variantIJNS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_3IS7_EENS_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSJ_8backends16rational_adaptorINSL_15cpp_int_backendILm0ELm0ELNSJ_16cpp_integer_typeE1ELNSJ_18cpp_int_check_typeE0ESaIyEEEEELNSJ_26expression_template_optionE1EEEEEEENS9_ISV_EENSB_ISV_EESD_ISW_SaISW_EEEEENS_19Cartesian_converterISV_S7_NS_12NT_converterISU_S6_EEEELi0EE6set_atEPNS_10AT_ET_wrapISH_S12_EE(ptr noundef nonnull align 16 dereferenceable(204) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.CGAL::internal::Converting_visitor", align 8 ; 6 uses
  %3 = alloca %"class.std::optional.568", align 16 ; 11 uses
  %4 = alloca %"class.CGAL::Cartesian_converter.814", align 2 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store i16 0, ptr %4, align 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2752)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 5 uses
  store i8 0, ptr %i.a, align 16, !tbaa !396, !alias.scope !2752
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.c = load i8, ptr %i.b, align 16, !tbaa !413, !range !77, !noalias !2752, !noundef !78
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZNK4CGAL19Cartesian_converterINS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS1_INS_11Interval_ntILb0EEEEENS_12NT_converterISE_SH_EEEclIJNS_7Point_3ISF_EENS_9Segment_3ISF_EENS_10Triangle_3ISF_EESt6vectorISO_SaISO_EEEEENS_11Type_mapperISt8optionalISt7variantIJDpT_EEESF_SI_E4typeERKS12_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !2752
  store ptr %4, ptr %2, align 8, !tbaa !2753, !noalias !2752
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %3, ptr %i.f, align 8, !tbaa !448, !noalias !2752
  invoke void @_ZSt5visitIRN4CGAL8internal18Converting_visitorINS0_19Cartesian_converterINS0_16Simple_cartesianIN5boost14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEENS4_INS0_11Interval_ntILb0EEEEENS0_12NT_converterISH_SK_EEEESt8optionalISt7variantIJNS0_7Point_3ISL_EENS0_9Segment_3ISL_EENS0_10Triangle_3ISL_EESt6vectorISS_SaISS_EEEEEEEJRKSQ_IJNSR_ISI_EENST_ISI_EENSV_ISI_EESX_IS14_SaIS14_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS1F_EEEEE4typeEE4typeEOS1O_EEEE4typeEOS1D_DpOS1F_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(608) %i.e)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !2752
  br label %_ZNK4CGAL19Cartesian_converterINS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS1_INS_11Interval_ntILb0EEEEENS_12NT_converterISE_SH_EEEclIJNS_7Point_3ISF_EENS_9Segment_3ISF_EENS_10Triangle_3ISF_EESt6vectorISO_SaISO_EEEEENS_11Type_mapperISt8optionalISt7variantIJDpT_EEESF_SI_E4typeERKS12_.exit

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !2752
  %i.h = load i8, ptr %i.a, align 16, !tbaa !396, !range !77, !noundef !78
  %i.i = trunc nuw i8 %i.h to i1
  store i8 0, ptr %i.a, align 16, !tbaa !396
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.k = load i8, ptr %i.j, align 16
  %i.l = icmp eq i8 %i.k, 3
  %or.cond.i.i.i2 = select i1 %i.i, i1 %i.l, i1 false
  br i1 %or.cond.i.i.i2, label %bb.e, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEELb0ELb0EED2Ev.exit4

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %3, align 16, !tbaa !410   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i3 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i3, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEELb0ELb0EED2Ev.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !411
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #40
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEELb0ELb0EED2Ev.exit4

end_hunk_3
begin_hunk_4_@_ZN4CGAL18Box_intersection_d21modified_two_way_scanIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ZN3igl8copyleft4cgalL22intersect_other_helperIS6_N5Eigen6MatrixINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSR_8backends16rational_adaptorINST_15cpp_int_backendILm0ELm0ELNSR_16cpp_integer_typeE1ELNSR_18cpp_int_check_typeE0ESaIyEEEEELNSR_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEES14_S15_S15_S14_S15_NSO_IiLin1ELi1ELi0ELin1ELi1EEES16_EEbRKNSN_10MatrixBaseIT0_EERKNS17_IT1_EERKNS17_IT2_EERKNS17_IT3_EERKNSL_28RemeshSelfIntersectionsParamERNSN_15PlainObjectBaseIT4_EERNS1R_IT5_EERNS1R_IT6_EERNS1R_IT7_EERNS1R_IT8_EEEUlRKSE_S28_E_NS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEEEvT_S2E_S18_S18_S1C_S1G_ib:bb.a

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i47: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i63, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i46, %._crit_edge
  %.in.i.i48 = phi ptr [ %i.gs, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i63 ], [ %i.gr, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i46 ], [ %.sroa.0.0255, %._crit_edge ]
  %.in.i.i9.i.i49 = phi ptr [ %i.ft, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i63 ], [ %i.fs, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i46 ], [ %.sroa.0230.0269, %._crit_edge ]
  %i.gt = load double, ptr %.in.i.i48, align 8, !tbaa !228
  %i.gu = load double, ptr %.in.i.i9.i.i49, align 8, !tbaa !228
  %i.gv = fcmp olt double %i.gt, %i.gu
  br i1 %i.gv, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread.i55, label %bb.ar

bb.ar:                                            ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i47
  switch i32 %5, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i.i62 [
    i32 0, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i51
    i32 1, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i.i50
  ]

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i.i50: ; preds = %bb.ar
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.0.0255, i64 8
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i51

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i.i62: ; preds = %bb.ar
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0.0255, i64 16
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i51

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i51: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i.i62, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i.i50, %bb.ar
  %.in21.i.i52 = phi ptr [ %i.gx, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i.i62 ], [ %i.gw, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i.i50 ], [ %.sroa.0.0255, %bb.ar ]
  %.in.i.i13.i.i53 = phi ptr [ %i.ft, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i.i62 ], [ %i.fs, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i.i50 ], [ %.sroa.0230.0269, %bb.ar ]
  %i.gy = load double, ptr %.in21.i.i52, align 8, !tbaa !228
  %i.gz = load double, ptr %.in.i.i13.i.i53, align 8, !tbaa !228
  %i.ha = fcmp oeq double %i.gy, %i.gz
  %i.hb = icmp ult ptr %i.gb, %i.fz
  %or.cond246 = and i1 %i.hb, %i.ha
  br i1 %or.cond246, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread.i55, label %.thread242

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread.i55: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i51, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i47
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.0.0255, i64 %switch.select3.i.i.i.i59
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !228
  switch i32 %5, label %bb.at [
    i32 0, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE17contains_lo_pointERKSF_SJ_i.exit64
    i32 1, label %bb.as
  ]

bb.as:                                            ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread.i55
  br label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE17contains_lo_pointERKSF_SJ_i.exit64

bb.at:                                            ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread.i55
  br label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE17contains_lo_pointERKSF_SJ_i.exit64

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE17contains_lo_pointERKSF_SJ_i.exit64: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread.i55, %bb.as, %bb.at
  %.in.i.i.i.i61 = phi ptr [ %i.ft, %bb.at ], [ %i.fs, %bb.as ], [ %.sroa.0230.0269, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread.i55 ]
  %i.he = load double, ptr %.in.i.i.i.i61, align 8, !tbaa !228
  %i.hf = fcmp ult double %i.hd, %i.he
  br i1 %i.hf, label %.thread242, label %bb.au

bb.au:                                            ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE17contains_lo_pointERKSF_SJ_i.exit64
  br i1 %6, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  call fastcc void @_ZZN3igl8copyleft4cgalL22intersect_other_helperIN4CGAL5EpeckEN5Eigen6MatrixINS3_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESM_SN_SN_SM_SN_NS6_IiLin1ELi1ELi0ELin1ELi1EEESO_EEbRKNS5_10MatrixBaseIT0_EERKNSP_IT1_EERKNSP_IT2_EERKNSP_IT3_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseIT4_EERNS19_IT5_EERNS19_IT6_EERNS19_IT7_EERNS19_IT8_EEENKUlRKNS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS4_EESt6vectorIS1U_SaIS1U_EEEENS1P_14ID_FROM_HANDLEEEES23_E_clES23_S23_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr %i.fz, ptr %i.gb)
  br label %.thread242

bb.aw:                                            ; preds = %bb.au
  call fastcc void @_ZZN3igl8copyleft4cgalL22intersect_other_helperIN4CGAL5EpeckEN5Eigen6MatrixINS3_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESM_SN_SN_SM_SN_NS6_IiLin1ELi1ELi0ELin1ELi1EEESO_EEbRKNS5_10MatrixBaseIT0_EERKNSP_IT1_EERKNSP_IT2_EERKNSP_IT3_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseIT4_EERNS19_IT5_EERNS19_IT6_EERNS19_IT7_EERNS19_IT8_EEENKUlRKNS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS4_EESt6vectorIS1U_SaIS1U_EEEENS1P_14ID_FROM_HANDLEEEES23_E_clES23_S23_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr %i.gb, ptr %i.fz)
  br label %.thread242

.thread242:                                       ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i41, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit45, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i41.lr.ph, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit45.peel, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i51, %bb.av, %bb.aw, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE17contains_lo_pointERKSF_SJ_i.exit64, %bb.ao
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0.0255, i64 56 ; 2 uses
  %.not247 = icmp eq ptr %i.hg, %3
  br i1 %.not247, label %.critedge4, label %bb.an, !llvm.loop !3694

.critedge4:                                       ; preds = %.thread242, %bb.an, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread239
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0230.0269, i64 56
  br label %bb.ax

bb.ax:                                            ; preds = %.critedge4, %.critedge2
  %.sroa.0219.1 = phi ptr [ %i.fp, %.critedge2 ], [ %.sroa.0219.0268, %.critedge4 ] ; 2 uses
  %.sroa.0230.1 = phi ptr [ %.sroa.0230.0269, %.critedge2 ], [ %i.hh, %.critedge4 ] ; 2 uses
  %i.hi = icmp ne ptr %.sroa.0219.1, %3
  %i.hj = icmp ne ptr %.sroa.0230.1, %1
  %or.cond = select i1 %i.hi, i1 %i.hj, i1 false
  br i1 %or.cond, label %bb.ab, label %.critedge, !llvm.loop !3695

.critedge:                                        ; preds = %bb.ax, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit32
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN3igl8copyleft4cgalL22intersect_other_helperIN4CGAL5EpeckEN5Eigen6MatrixINS3_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESM_SN_SN_SM_SN_NS6_IiLin1ELi1ELi0ELin1ELi1EEESO_EEbRKNS5_10MatrixBaseIT0_EERKNSP_IT1_EERKNSP_IT2_EERKNSP_IT3_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseIT4_EERNS19_IT5_EERNS19_IT6_EERNS19_IT7_EERNS19_IT8_EEENKUlRKNS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS4_EESt6vectorIS1U_SaIS1U_EEEENS1P_14ID_FROM_HANDLEEEES23_E_clES23_S23_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nonnull %.48.val, ptr nonnull %.48.val1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.862, align 1            ; 3 uses
  %2 = alloca %"struct.CGAL::Object::Any_from_variant", align 1 ; 3 uses
  %3 = alloca %"struct.CGAL::Lazy_construction_variant", align 1 ; 3 uses
  %4 = alloca %"class.CGAL::Static_filtered_predicate", align 1 ; 3 uses
  %5 = alloca %"class.CGAL::Object", align 8      ; 8 uses
  %6 = alloca %"class.std::optional.510", align 8 ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !3699, !nonnull !78, !align !281
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !211
  %i.c = ptrtoint ptr %.48.val to i64
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 3
  %i.g = trunc i64 %i.f to i32                    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3700, !nonnull !78, !align !281
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !211
  %i.k = ptrtoint ptr %.48.val1 to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 3
  %i.o = trunc i64 %i.n to i32                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.p = call noundef zeroext i1 @_ZNK4CGAL25Static_filtered_predicateINS_16Simple_cartesianINS_11Interval_ntILb0EEEEENS_18Filtered_predicateINS_20CommonKernelFunctors14Do_intersect_3INS1_IN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEEEENS7_IS4_EENS_15Exact_converterINS_5EpeckESL_EENS_16Approx_converterISP_S4_EELb1EEENS_8internal25Static_filters_predicates14Do_intersect_3INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES10_EEEENSU_14Static_filtersIS13_EEEEEclINS_10Triangle_3ISP_EES1A_EEbRKT_RKT0_(ptr noundef nonnull align 1 dereferenceable(13) %4, ptr noundef nonnull align 8 dereferenceable(8) %.48.val, ptr noundef nonnull align 8 dereferenceable(8) %.48.val1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %i.p, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !3701, !nonnull !78, !align !281 ; 2 uses
  %i.s = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i32 %i.g, ptr %i.t, align 4, !tbaa !109
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.r) #22
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !112
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !112
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !3701, !nonnull !78, !align !281 ; 2 uses
  %i.y = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i32 %i.o, ptr %i.z, align 4, !tbaa !109
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.x) #22
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !112
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !112
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !3702, !nonnull !78, !align !282 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !283, !range !77, !noundef !78
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ai = call ptr @__cxa_allocate_exception(i64 4) #22 ; 2 uses
  store i32 10, ptr %i.ai, align 16, !tbaa !109
  call void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTIi, ptr null) #43
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.aj = load i8, ptr %i.ae, align 4, !tbaa !90, !range !77, !noundef !78
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.v, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !3703
  call void @_ZNK4CGAL25Lazy_construction_variantINS_5EpeckENS_20CommonKernelFunctors11Intersect_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclINS_10Triangle_3IS1_EESR_EEDcRKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.510") align 8 %6, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %.48.val, ptr noundef nonnull align 8 dereferenceable(8) %.48.val1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !3703
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.am = load i8, ptr %i.al, align 8, !tbaa !383, !range !77, !noundef !78
  %i.an = trunc nuw i8 %i.am to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  br i1 %i.an, label %bb.f, label %.noexc15

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !385
  %.not.i.i.i = icmp eq i8 %i.ap, -1
  br i1 %.not.i.i.i, label %bb.g, label %_ZSt5visitIN4CGAL6Object16Any_from_variantEJRKSt7variantIJNS0_7Point_3INS0_5EpeckEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISK_EEEEE4typeEE4typeEOST_EEEE4typeEOSI_DpOSK_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.aq = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.aq, align 8, !tbaa !114
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr @.str.133, ptr %i.ar, align 8, !tbaa !352
  invoke void @__cxa_throw(ptr nonnull %i.aq, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #43
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.g
  unreachable

_ZSt5visitIN4CGAL6Object16Any_from_variantEJRKSt7variantIJNS0_7Point_3INS0_5EpeckEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISK_EEEEE4typeEE4typeEOST_EEEE4typeEOSI_DpOSK_.exit.i: ; preds = %bb.f
  %i.as = invoke noundef ptr @_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIPN5boost3anyEEEN4CGAL6Object16Any_from_variantEJRKSt7variantIJNS7_7Point_3INS7_5EpeckEEENS7_9Segment_3ISC_EENS7_10Triangle_3ISC_EESt6vectorISD_SaISD_EEEEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %.noexc15 unwind label %bb.s

.noexc15:                                         ; preds = %_ZSt5visitIN4CGAL6Object16Any_from_variantEJRKSt7variantIJNS0_7Point_3INS0_5EpeckEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISK_EEEEE4typeEE4typeEOST_EEEE4typeEOSI_DpOSK_.exit.i, %bb.e
  %i.at = phi ptr [ null, %bb.e ], [ %i.as, %_ZSt5visitIN4CGAL6Object16Any_from_variantEJRKSt7variantIJNS0_7Point_3INS0_5EpeckEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISK_EEEEE4typeEE4typeEOST_EEEE4typeEOSI_DpOSK_.exit.i ] ; 2 uses
  store ptr %i.at, ptr %5, align 8, !tbaa !266
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  invoke void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN5boost3anyEEET_(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef %i.at)
          to label %bb.h unwind label %bb.s

bb.h:                                             ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.av = load i8, ptr %i.al, align 8, !tbaa !383, !range !77, !noundef !78
  %i.aw = trunc nuw i8 %i.av to i1
  store i8 0, ptr %i.al, align 8, !tbaa !383
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ay = load i8, ptr %i.ax, align 8
  %.not.i.i.i.i.i.i = icmp ne i8 %i.ay, -1
  %or.cond.not.i.i.i = select i1 %i.aw, i1 %.not.i.i.i.i.i.i, i1 false, !prof !386
  br i1 %or.cond.not.i.i.i, label %bb.i, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0EED2Ev.exit, !prof !386

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS3_5EpeckEEENS3_9Segment_3IS5_EENS3_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_SA_SD_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %.noexc.i.i.i.i.i unwind label %bb.j

.noexc.i.i.i.i.i:                                 ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0EED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #41
  unreachable

_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0EED2Ev.exit: ; preds = %bb.h, %.noexc.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !3704, !nonnull !78, !align !281
  invoke fastcc void @_ZN3igl8copyleft4cgalL11push_resultIlEEviiRKN4CGAL6ObjectERSt3mapIT_St6vectorISt4pairIS8_S4_ESaISB_EESt4lessIS8_ESaISA_IKS8_SD_EEE(i32 noundef %i.g, i32 noundef %i.o, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.bc)
          to label %bb.k unwind label %bb.t

bb.k:                                             ; preds = %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0EED2Ev.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !3705, !nonnull !78, !align !281
  invoke fastcc void @_ZN3igl8copyleft4cgalL11push_resultIlEEviiRKN4CGAL6ObjectERSt3mapIT_St6vectorISt4pairIS8_S4_ESaISB_EESt4lessIS8_ESaISA_IKS8_SD_EEE(i32 noundef %i.o, i32 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.be)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.bf = load ptr, ptr %i.au, align 8, !tbaa !190 ; 8 uses
  %.not.i.i.i17 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i17, label %_ZN4CGAL6ObjectD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.bg, align 8, !tbaa !192
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !193
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !114
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #22, !inline_history !22
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !114
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #22, !inline_history !22
  br label %_ZN4CGAL6ObjectD2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !109
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i = phi i32 [ %i.bj, %bb.p ], [ %i.bt, %bb.q ]
  %i.bu = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bu, label %bb.r, label %_ZN4CGAL6ObjectD2Ev.exit, !prof !179

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #22
  br label %_ZN4CGAL6ObjectD2Ev.exit

_ZN4CGAL6ObjectD2Ev.exit:                         ; preds = %bb.l, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.v

bb.s:                                             ; preds = %.noexc15, %_ZSt5visitIN4CGAL6Object16Any_from_variantEJRKSt7variantIJNS0_7Point_3INS0_5EpeckEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISK_EEEEE4typeEE4typeEOST_EEEE4typeEOSI_DpOSK_.exit.i, %bb.g
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.u

bb.t:                                             ; preds = %bb.k, %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0EED2Ev.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #22
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.bw, %bb.t ], [ %i.bv, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %.pn

bb.v:                                             ; preds = %bb.d, %_ZN4CGAL6ObjectD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_intersect_other.cpp() #37 section ".text.startup" {
bb.a:
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @_ZN5EigenL4lastE) ; 0 uses
  %i.b = tail call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZN5EigenL6lastp1E) ; 0 uses
  %i.c = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @_ZN5EigenL3allE) ; 0 uses
  %i.d = tail call double @ldexp(double noundef 1.000000e+00, i32 noundef -52) #22
  %i.e = fadd double %i.d, 1.000000e+00
  store double %i.e, ptr @_ZN4COREL6relEpsE, align 8, !tbaa !228
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4COREL6relEpsE) ; 0 uses
  store i64 0, ptr @_ZN4COREL12EXTLONG_ZEROE, align 8, !tbaa !3707
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL12EXTLONG_ZEROE, i64 8), align 8, !tbaa !3708
  %i.g = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL12EXTLONG_ZEROE) ; 0 uses
  store i64 1, ptr @_ZN4COREL11EXTLONG_ONEE, align 8, !tbaa !3707
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL11EXTLONG_ONEE, i64 8), align 8, !tbaa !3708
  %i.h = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL11EXTLONG_ONEE) ; 0 uses
  store i64 2, ptr @_ZN4COREL11EXTLONG_TWOE, align 8, !tbaa !3707
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL11EXTLONG_TWOE, i64 8), align 8, !tbaa !3708
  %i.i = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL11EXTLONG_TWOE) ; 0 uses
  store i64 3, ptr @_ZN4COREL13EXTLONG_THREEE, align 8, !tbaa !3707
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL13EXTLONG_THREEE, i64 8), align 8, !tbaa !3708
  %i.j = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL13EXTLONG_THREEE) ; 0 uses
  store i64 4, ptr @_ZN4COREL12EXTLONG_FOURE, align 8, !tbaa !3707
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL12EXTLONG_FOURE, i64 8), align 8, !tbaa !3708
  %i.k = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL12EXTLONG_FOURE) ; 0 uses
  store i64 5, ptr @_ZN4COREL12EXTLONG_FIVEE, align 8, !tbaa !3707
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL12EXTLONG_FIVEE, i64 8), align 8, !tbaa !3708
  %i.l = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL12EXTLONG_FIVEE) ; 0 uses
  store i64 6, ptr @_ZN4COREL11EXTLONG_SIXE, align 8, !tbaa !3707
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL11EXTLONG_SIXE, i64 8), align 8, !tbaa !3708
  %i.m = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL11EXTLONG_SIXE) ; 0 uses
  store i64 7, ptr @_ZN4COREL13EXTLONG_SEVENE, align 8, !tbaa !3707
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL13EXTLONG_SEVENE, i64 8), align 8, !tbaa !3708
  %i.n = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL13EXTLONG_SEVENE) ; 0 uses
  store i64 8, ptr @_ZN4COREL13EXTLONG_EIGHTE, align 8, !tbaa !3707
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL13EXTLONG_EIGHTE, i64 8), align 8, !tbaa !3708
  %i.o = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL13EXTLONG_EIGHTE) ; 0 uses
  store i64 1073741824, ptr @_ZN4COREL11EXTLONG_BIGE, align 8, !tbaa !3707
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL11EXTLONG_BIGE, i64 8), align 8, !tbaa !3708
  %i.p = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL11EXTLONG_BIGE) ; 0 uses
  store i64 -1073741824, ptr @_ZN4COREL13EXTLONG_SMALLE, align 8, !tbaa !3707
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL13EXTLONG_SMALLE, i64 8), align 8, !tbaa !3708
  %i.q = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL13EXTLONG_SMALLE) ; 0 uses
  store double f0x4002934F0979A371, ptr @_ZN4COREL5log_5E, align 8, !tbaa !228
  %i.r = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4COREL5log_5E) ; 0 uses
  %i.s = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @_ZN5boost11optional_nsL13in_place_initE) ; 0 uses
  %i.t = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @_ZN5boost11optional_nsL16in_place_init_ifE) ; 0 uses
  %i.u = load i8, ptr @_ZGVZN4CGAL18get_default_randomEvE14default_random, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.b, label %__cxx_global_var_init.24.exit, !prof !480

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4CGAL6RandomC2Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4CGAL18get_default_randomEvE14default_random)
  store i8 1, ptr @_ZGVZN4CGAL18get_default_randomEvE14default_random, align 8
  br label %__cxx_global_var_init.24.exit

__cxx_global_var_init.24.exit:                    ; preds = %bb.a, %bb.b
  %i.w = tail call noundef nonnull align 8 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN4CGAL18get_default_randomEvE14default_random)
  store ptr %i.w, ptr @_ZN4CGAL12_GLOBAL__N_114default_randomE, align 8, !tbaa !3710
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.umin.i128(i128, i128) #25
end_hunk_4
