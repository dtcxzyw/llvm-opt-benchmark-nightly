inline.NumInlined: 24561
inline.NumDeleted: 7924
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 83
begin_hunk_0_@_ZN4CGAL18Box_intersection_d12segment_treeIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_St8functionIFvRKSE_SL_EEdNS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEEEvT_SS_T0_ST_T2_SU_T1_T3_lib:bb.a
  %i.eh = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !88 ; 2 uses
  %.not.i137 = icmp eq ptr %i.ei, null
  br i1 %.not.i137, label %.body124, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ej = invoke noundef zeroext i1 %i.ei(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef 3)
          to label %.body124 unwind label %bb.cd  ; 0 uses

bb.cd:                                            ; preds = %bb.cc
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  call void @__clang_call_terminate(ptr %i.el) #41
  unreachable

.body124:                                         ; preds = %bb.bv, %bb.bw, %bb.ca, %bb.bx, %bb.by, %bb.cb, %bb.cc, %bb.bi, %bb.bh, %bb.bg, %bb.bb, %bb.ba
  %.pn95 = phi { ptr, i32 } [ %i.cq, %bb.ba ], [ %i.da, %bb.bi ], [ %i.cz, %bb.bg ], [ %i.cq, %bb.bb ], [ %i.da, %bb.bh ], [ %i.dz, %bb.by ], [ %i.dy, %bb.bw ], [ %i.ef, %bb.ca ], [ %i.dx, %bb.bv ], [ %i.dz, %bb.bx ], [ %i.eg, %bb.cb ], [ %i.eg, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %.body

.body:                                            ; preds = %bb.ap, %.body124, %bb.aq, %bb.ar, %bb.at, %bb.au, %bb.ab, %bb.aa, %bb.u, %bb.v, %bb.n, %bb.m, %bb.g, %bb.h
  %.pn98 = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.az, %bb.ab ], [ %i.aq, %bb.u ], [ %i.w, %bb.n ], [ %i.cc, %bb.au ], [ %i.n, %bb.h ], [ %i.w, %bb.m ], [ %i.aq, %bb.v ], [ %i.az, %bb.aa ], [ %.pn95, %.body124 ], [ %i.bw, %bb.ar ], [ %i.bv, %bb.ap ], [ %i.bw, %bb.aq ], [ %i.cc, %bb.at ]
  %i.em = load i32, ptr %i.b, align 4, !tbaa !90
  %i.en = add nsw i32 %i.em, -1
  store i32 %i.en, ptr %i.b, align 4, !tbaa !90
  resume { ptr, i32 } %.pn98
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL18Box_intersection_d12one_way_scanIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_St8functionIFvRKSE_SL_EENS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEEEvT_SS_T0_ST_T1_T2_ib(ptr %0, ptr %1, ptr %2, ptr %3, ptr noundef align 8 %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #4 comdat {
bb.a:
  %.sroa.10.i.i117 = alloca [3 x double], align 8 ; 4 uses
  %7 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d", align 8 ; 4 uses
  %.sroa.10.i.i81 = alloca [3 x double], align 8  ; 4 uses
  %8 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d", align 8 ; 4 uses
  %.sroa.10.i.i45 = alloca [3 x double], align 8  ; 4 uses
  %9 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d", align 8 ; 4 uses
  %.sroa.10.i.i = alloca [3 x double], align 8    ; 4 uses
  %10 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d", align 8 ; 4 uses
  %.sroa.10.i.i.i18 = alloca [3 x double], align 8 ; 4 uses
  %.sroa.10.i.i.i = alloca [3 x double], align 8  ; 4 uses
  %.not.i.i = icmp eq ptr %0, %1
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = sdiv exact i64 %i.c, 56
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = shl nuw nsw i64 %i.e, 1
  %i.g = xor i64 %i.f, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEElNS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_T1_(ptr %0, ptr %1, i64 noundef %i.g, i32 0)
  %i.h = icmp sgt i64 %i.c, 896
  br i1 %i.h, label %bb.c, label %.preheader.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %scevgep = getelementptr i8, ptr %0, i64 56
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.c
  %.sroa.0.025.i50.idx = phi i64 [ 56, %bb.c ], [ %.sroa.0.025.i50.add, %bb.h ] ; 4 uses
  %.pn24.i51 = phi ptr [ %0, %bb.c ], [ %.sroa.0.025.i50.ptr, %bb.h ] ; 4 uses
  %.sroa.0.025.i50.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.025.i50.idx ; 4 uses
  %i.j = load double, ptr %.sroa.0.025.i50.ptr, align 8, !tbaa !53 ; 5 uses
  %i.k = load double, ptr %0, align 8, !tbaa !53  ; 2 uses
  %i.l = fcmp olt double %i.j, %i.k
  br i1 %i.l, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i76, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = fcmp oeq double %i.j, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %.pn24.i51, i64 104
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  br i1 %i.m, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i75, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i53

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i75: ; preds = %bb.e
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !1459
  %i.q = icmp ult ptr %i.o, %i.p
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i76, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i53

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i76: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i75, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i50.ptr, i64 56, i1 false)
  %i.r = icmp samesign ugt i64 %.sroa.0.025.i50.idx, 56
  br i1 %i.r, label %bb.f, label %bb.g, !prof !1461

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i76
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.025.i50.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i77

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i76
  %i.s = getelementptr inbounds nuw i8, ptr %.pn24.i51, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i77

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i77: ; preds = %bb.g, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %9, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.h

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i53: ; preds = %bb.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i75
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i45)
  %.sroa.6.0..sroa_idx.i.i55 = getelementptr inbounds nuw i8, ptr %.pn24.i51, i64 64
  %i.t = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i55, align 8
  %.sroa.10.0..sroa_idx.i.i59 = getelementptr inbounds nuw i8, ptr %.pn24.i51, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i45, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i59, i64 24, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i62

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i62: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i74, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i53
  %.sroa.014.0.us.i.i63 = phi ptr [ %.sroa.0.0.us.i.i64, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i74 ], [ %.sroa.0.025.i50.ptr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i53 ] ; 7 uses
  %.sroa.0.0.us.i.i64 = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i63, i64 -56 ; 3 uses
  %i.u = load double, ptr %.sroa.0.0.us.i.i64, align 8, !tbaa !53 ; 2 uses
  %i.v = fcmp olt double %i.j, %i.u
  br i1 %i.v, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i74, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i65

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i65: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i62
  %i.w = fcmp oeq double %i.j, %i.u
  br i1 %i.w, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i73, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i66

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i73: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i65
  %i.x = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i63, i64 -8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1459
  %i.z = icmp ult ptr %i.o, %i.y
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i74, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i66

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i74: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i73, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i62
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i63, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i64, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i62, !llvm.loop !1462

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i66: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i73, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i65
  store double %i.j, ptr %.sroa.014.0.us.i.i63, align 8
  %.sroa.6.0..sroa_idx5.i.i67 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i63, i64 8
  store <2 x double> %i.t, ptr %.sroa.6.0..sroa_idx5.i.i67, align 8
  %.sroa.10.0..sroa_idx9.i.i69 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i63, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i69, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i45, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i70 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i63, i64 48
  store ptr %i.o, ptr %.sroa.1010.0..sroa_idx11.i.i70, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i45)
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i66, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i77
  %.sroa.0.025.i50.add = add nuw nsw i64 %.sroa.0.025.i50.idx, 56 ; 2 uses
  %.not.i72 = icmp eq i64 %.sroa.0.025.i50.add, 896
  br i1 %.not.i72, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit80, label %bb.d, !llvm.loop !1463

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit80: ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.aa, %1
  br i1 %.not9.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i: ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit80, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i
  %.sroa.0.010.us.i.i = phi ptr [ %i.aj, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i ], [ %i.aa, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit80 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i)
  %i.ab = load <2 x double>, ptr %.sroa.0.010.us.i.i, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i, i64 16
  %.sroa.8.0.copyload.i.us.i.i = load double, ptr %.sroa.8.0..sroa_idx.i.us.i.i, align 8
  %.sroa.10.0..sroa_idx.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.us.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i, i64 48
  %.sroa.1010.0.copyload.i.us.i.i = load ptr, ptr %.sroa.1010.0..sroa_idx.i.us.i.i, align 8 ; 2 uses
  %i.ac = extractelement <2 x double> %i.ab, i64 0 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i
  %.sroa.014.0.us.i.us.i.i = phi ptr [ %.sroa.0.0.us.i.us.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i ], [ %.sroa.0.010.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i ] ; 7 uses
  %.sroa.0.0.us.i.us.i.i = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i, i64 -56 ; 3 uses
  %i.ad = load double, ptr %.sroa.0.0.us.i.us.i.i, align 8, !tbaa !53 ; 2 uses
  %i.ae = fcmp olt double %i.ac, %i.ad
  br i1 %i.ae, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i
  %i.af = fcmp oeq double %i.ac, %i.ad
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i
  %i.ag = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i, i64 -8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1459
  %i.ai = icmp ult ptr %.sroa.1010.0.copyload.i.us.i.i, %i.ah
  br i1 %i.ai, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.us.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.us.i.i, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i, !llvm.loop !1462

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i
  store <2 x double> %i.ab, ptr %.sroa.014.0.us.i.us.i.i, align 8
  %.sroa.8.0..sroa_idx7.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i, i64 16
  store double %.sroa.8.0.copyload.i.us.i.i, ptr %.sroa.8.0..sroa_idx7.i.us.i.i, align 8
  %.sroa.10.0..sroa_idx9.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.us.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i, i64 48
  store ptr %.sroa.1010.0.copyload.i.us.i.i, ptr %.sroa.1010.0..sroa_idx11.i.us.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i)
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i, i64 56 ; 2 uses
  %.not.us.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.us.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i, !llvm.loop !1464

.preheader.i:                                     ; preds = %bb.b
  %.sroa.0.022.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.not23.i = icmp eq ptr %.sroa.0.022.i, %1
  br i1 %.not23.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i
  %.sroa.0.025.i = phi ptr [ %.sroa.0.022.i, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.n ] ; 6 uses
  %.pn24.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.025.i, %bb.n ] ; 5 uses
  %i.al = load double, ptr %.sroa.0.025.i, align 8, !tbaa !53 ; 5 uses
  %i.am = load double, ptr %0, align 8, !tbaa !53 ; 2 uses
  %i.an = fcmp olt double %i.al, %i.am
  br i1 %i.an, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = fcmp oeq double %i.al, %i.am
  br i1 %i.ao, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i: ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1459
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !1459
  %i.as = icmp ult ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i, i64 56, i1 false)
  %i.at = ptrtoint ptr %.sroa.0.025.i to i64
  %i.au = sub i64 %i.at, %i.b                     ; 3 uses
  %i.av = icmp sgt i64 %i.au, 56
  br i1 %i.av, label %bb.k, label %bb.l, !prof !1461

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0.022.i, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.au, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i
  %i.aw = icmp eq i64 %i.au, 56
  br i1 %i.aw, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ax, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %10, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.n

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i)
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 64
  %i.ay = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 104
  %.sroa.1010.0.copyload.i.i = load ptr, ptr %.sroa.1010.0..sroa_idx.i.i, align 8 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i
  %.sroa.014.0.us.i.i = phi ptr [ %.sroa.0.0.us.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i ], [ %.sroa.0.025.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i ] ; 7 uses
  %.sroa.0.0.us.i.i = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i, i64 -56 ; 3 uses
  %i.az = load double, ptr %.sroa.0.0.us.i.i, align 8, !tbaa !53 ; 2 uses
  %i.ba = fcmp olt double %i.al, %i.az
  br i1 %i.ba, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i
  %i.bb = fcmp oeq double %i.al, %i.az
  br i1 %i.bb, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i
  %i.bc = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i, i64 -8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1459
  %i.be = icmp ult ptr %.sroa.1010.0.copyload.i.i, %i.bd
  br i1 %i.be, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i, !llvm.loop !1462

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i
  store double %i.al, ptr %.sroa.014.0.us.i.i, align 8
  %.sroa.6.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i, i64 8
  store <2 x double> %i.ay, ptr %.sroa.6.0..sroa_idx5.i.i, align 8
  %.sroa.10.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i, i64 48
  store ptr %.sroa.1010.0.copyload.i.i, ptr %.sroa.1010.0..sroa_idx11.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i)
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i, i64 56 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %1
  br i1 %.not.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit, label %bb.i, !llvm.loop !1463

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit80, %.preheader.i, %bb.a
  %.not.i.i13 = icmp eq ptr %2, %3
  br i1 %.not.i.i13, label %._crit_edge198, label %bb.o

bb.o:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit
  %i.bf = ptrtoint ptr %3 to i64
  %i.bg = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = sdiv exact i64 %i.bh, 56
  %i.bj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bi, i1 true)
  %i.bk = shl nuw nsw i64 %i.bj, 1
  %i.bl = xor i64 %i.bk, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEElNS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_T1_(ptr %2, ptr %3, i64 noundef %i.bl, i32 0)
  %i.bm = icmp sgt i64 %i.bh, 896
  br i1 %i.bm, label %bb.p, label %.preheader.i82

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 48
  %scevgep201 = getelementptr i8, ptr %2, i64 56
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %bb.p
  %.sroa.0.025.i122.idx = phi i64 [ 56, %bb.p ], [ %.sroa.0.025.i122.add, %bb.u ] ; 4 uses
  %.pn24.i123 = phi ptr [ %2, %bb.p ], [ %.sroa.0.025.i122.ptr, %bb.u ] ; 4 uses
  %.sroa.0.025.i122.ptr = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.025.i122.idx ; 4 uses
  %i.bo = load double, ptr %.sroa.0.025.i122.ptr, align 8, !tbaa !53 ; 5 uses
  %i.bp = load double, ptr %2, align 8, !tbaa !53 ; 2 uses
  %i.bq = fcmp olt double %i.bo, %i.bp
  br i1 %i.bq, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i148, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = fcmp oeq double %i.bo, %i.bp
  %i.bs = getelementptr inbounds nuw i8, ptr %.pn24.i123, i64 104
  %i.bt = load ptr, ptr %i.bs, align 8            ; 3 uses
  br i1 %i.br, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i147, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i125

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i147: ; preds = %bb.r
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !1459
  %i.bv = icmp ult ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i148, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i125

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i148: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i147, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i122.ptr, i64 56, i1 false)
  %i.bw = icmp samesign ugt i64 %.sroa.0.025.i122.idx, 56
  br i1 %i.bw, label %bb.s, label %bb.t, !prof !1461

bb.s:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i148
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep201, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %.sroa.0.025.i122.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i149

bb.t:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i148
  %i.bx = getelementptr inbounds nuw i8, ptr %.pn24.i123, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bx, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i149

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i149: ; preds = %bb.t, %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %7, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.u

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i125: ; preds = %bb.r, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i147
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i117)
  %.sroa.6.0..sroa_idx.i.i127 = getelementptr inbounds nuw i8, ptr %.pn24.i123, i64 64
  %i.by = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i127, align 8
  %.sroa.10.0..sroa_idx.i.i131 = getelementptr inbounds nuw i8, ptr %.pn24.i123, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i117, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i131, i64 24, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i134

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i134: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i146, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i125
  %.sroa.014.0.us.i.i135 = phi ptr [ %.sroa.0.0.us.i.i136, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i146 ], [ %.sroa.0.025.i122.ptr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i125 ] ; 7 uses
  %.sroa.0.0.us.i.i136 = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i135, i64 -56 ; 3 uses
  %i.bz = load double, ptr %.sroa.0.0.us.i.i136, align 8, !tbaa !53 ; 2 uses
  %i.ca = fcmp olt double %i.bo, %i.bz
  br i1 %i.ca, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i146, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i137

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i137: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i134
  %i.cb = fcmp oeq double %i.bo, %i.bz
  br i1 %i.cb, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i145, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i138

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i145: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i137
  %i.cc = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i135, i64 -8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1459
  %i.ce = icmp ult ptr %i.bt, %i.cd
  br i1 %i.ce, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i146, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i138

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i146: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i145, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i134
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i135, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i136, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i134, !llvm.loop !1462

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i138: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i145, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i137
  store double %i.bo, ptr %.sroa.014.0.us.i.i135, align 8
  %.sroa.6.0..sroa_idx5.i.i139 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i135, i64 8
  store <2 x double> %i.by, ptr %.sroa.6.0..sroa_idx5.i.i139, align 8
  %.sroa.10.0..sroa_idx9.i.i141 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i135, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i141, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i117, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i142 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i135, i64 48
  store ptr %i.bt, ptr %.sroa.1010.0..sroa_idx11.i.i142, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i117)
  br label %bb.u

bb.u:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i138, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i149
  %.sroa.0.025.i122.add = add nuw nsw i64 %.sroa.0.025.i122.idx, 56 ; 2 uses
  %.not.i144 = icmp eq i64 %.sroa.0.025.i122.add, 896
  br i1 %.not.i144, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit152, label %bb.q, !llvm.loop !1463

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit152: ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 896 ; 2 uses
  %.not9.i.i19 = icmp eq ptr %i.cf, %3
  br i1 %.not9.i.i19, label %.preheader180.lr.ph, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i21

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i21: ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit152, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35
  %.sroa.0.010.us.i.i22 = phi ptr [ %i.co, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35 ], [ %i.cf, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit152 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i18)
  %i.cg = load <2 x double>, ptr %.sroa.0.010.us.i.i22, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx.i.us.i.i26 = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i22, i64 16
  %.sroa.8.0.copyload.i.us.i.i27 = load double, ptr %.sroa.8.0..sroa_idx.i.us.i.i26, align 8
  %.sroa.10.0..sroa_idx.i.us.i.i28 = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i22, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i18, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.us.i.i28, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.us.i.i29 = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i22, i64 48
  %.sroa.1010.0.copyload.i.us.i.i30 = load ptr, ptr %.sroa.1010.0..sroa_idx.i.us.i.i29, align 8 ; 2 uses
  %i.ch = extractelement <2 x double> %i.cg, i64 0 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i31

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i31: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i42, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i21
  %.sroa.014.0.us.i.us.i.i32 = phi ptr [ %.sroa.0.0.us.i.us.i.i33, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i42 ], [ %.sroa.0.010.us.i.i22, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i21 ] ; 7 uses
  %.sroa.0.0.us.i.us.i.i33 = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i32, i64 -56 ; 3 uses
  %i.ci = load double, ptr %.sroa.0.0.us.i.us.i.i33, align 8, !tbaa !53 ; 2 uses
  %i.cj = fcmp olt double %i.ch, %i.ci
  br i1 %i.cj, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i42, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i34

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i34: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i31
  %i.ck = fcmp oeq double %i.ch, %i.ci
  br i1 %i.ck, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i41, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i41: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i34
  %i.cl = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i32, i64 -8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !1459
  %i.cn = icmp ult ptr %.sroa.1010.0.copyload.i.us.i.i30, %i.cm
  br i1 %i.cn, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i42, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i42: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i41, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i31
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.us.i.i32, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.us.i.i33, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i31, !llvm.loop !1462

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i41, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i34
  store <2 x double> %i.cg, ptr %.sroa.014.0.us.i.us.i.i32, align 8
  %.sroa.8.0..sroa_idx7.i.us.i.i37 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i32, i64 16
  store double %.sroa.8.0.copyload.i.us.i.i27, ptr %.sroa.8.0..sroa_idx7.i.us.i.i37, align 8
  %.sroa.10.0..sroa_idx9.i.us.i.i38 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i32, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.us.i.i38, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i18, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.us.i.i39 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i32, i64 48
  store ptr %.sroa.1010.0.copyload.i.us.i.i30, ptr %.sroa.1010.0..sroa_idx11.i.us.i.i39, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i18)
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i22, i64 56 ; 2 uses
  %.not.us.i.i40 = icmp eq ptr %i.co, %3
  br i1 %.not.us.i.i40, label %.preheader180.lr.ph, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i21, !llvm.loop !1464

.preheader.i82:                                   ; preds = %bb.o
  %.sroa.0.022.i83 = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %.not23.i84 = icmp eq ptr %.sroa.0.022.i83, %3
  br i1 %.not23.i84, label %.preheader180.lr.ph, label %.lr.ph.i85

.lr.ph.i85:                                       ; preds = %.preheader.i82
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.v

bb.v:                                             ; preds = %bb.aa, %.lr.ph.i85
  %.sroa.0.025.i86 = phi ptr [ %.sroa.0.022.i83, %.lr.ph.i85 ], [ %.sroa.0.0.i107, %bb.aa ] ; 6 uses
  %.pn24.i87 = phi ptr [ %2, %.lr.ph.i85 ], [ %.sroa.0.025.i86, %bb.aa ] ; 5 uses
  %i.cq = load double, ptr %.sroa.0.025.i86, align 8, !tbaa !53 ; 5 uses
  %i.cr = load double, ptr %2, align 8, !tbaa !53 ; 2 uses
  %i.cs = fcmp olt double %i.cq, %i.cr
  br i1 %i.cs, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i112, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = fcmp oeq double %i.cq, %i.cr
  br i1 %i.ct, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i111, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i89

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i111: ; preds = %bb.w
  %i.cu = getelementptr inbounds nuw i8, ptr %.pn24.i87, i64 104
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !1459
  %i.cw = load ptr, ptr %i.cp, align 8, !tbaa !1459
  %i.cx = icmp ult ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i112, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i89

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i112: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i111, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i86, i64 56, i1 false)
  %i.cy = ptrtoint ptr %.sroa.0.025.i86 to i64
  %i.cz = sub i64 %i.cy, %i.bg                    ; 3 uses
  %i.da = icmp sgt i64 %i.cz, 56
  br i1 %i.da, label %bb.x, label %bb.y, !prof !1461

bb.x:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i112
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0.022.i83, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %i.cz, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i113

bb.y:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i112
  %i.db = icmp eq i64 %i.cz, 56
  br i1 %i.db, label %bb.z, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i113

bb.z:                                             ; preds = %bb.y
  %i.dc = getelementptr inbounds nuw i8, ptr %.pn24.i87, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dc, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i113

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i113: ; preds = %bb.z, %bb.y, %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %8, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.aa

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i89: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i111, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i81)
  %.sroa.6.0..sroa_idx.i.i91 = getelementptr inbounds nuw i8, ptr %.pn24.i87, i64 64
  %i.dd = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i91, align 8
  %.sroa.10.0..sroa_idx.i.i95 = getelementptr inbounds nuw i8, ptr %.pn24.i87, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i81, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i95, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.i96 = getelementptr inbounds nuw i8, ptr %.pn24.i87, i64 104
  %.sroa.1010.0.copyload.i.i97 = load ptr, ptr %.sroa.1010.0..sroa_idx.i.i96, align 8 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i98

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i98: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i110, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i89
  %.sroa.014.0.us.i.i99 = phi ptr [ %.sroa.0.0.us.i.i100, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i110 ], [ %.sroa.0.025.i86, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i89 ] ; 7 uses
  %.sroa.0.0.us.i.i100 = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i99, i64 -56 ; 3 uses
  %i.de = load double, ptr %.sroa.0.0.us.i.i100, align 8, !tbaa !53 ; 2 uses
  %i.df = fcmp olt double %i.cq, %i.de
  br i1 %i.df, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i110, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i101

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i101: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i98
  %i.dg = fcmp oeq double %i.cq, %i.de
  br i1 %i.dg, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i109, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i102

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i109: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i101
  %i.dh = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i99, i64 -8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !1459
  %i.dj = icmp ult ptr %.sroa.1010.0.copyload.i.i97, %i.di
  br i1 %i.dj, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i110, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i102

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i110: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i109, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i98
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i99, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i100, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i98, !llvm.loop !1462

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i102: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i109, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i101
  store double %i.cq, ptr %.sroa.014.0.us.i.i99, align 8
  %.sroa.6.0..sroa_idx5.i.i103 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i99, i64 8
  store <2 x double> %i.dd, ptr %.sroa.6.0..sroa_idx5.i.i103, align 8
  %.sroa.10.0..sroa_idx9.i.i105 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i99, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i105, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i81, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i106 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i99, i64 48
  store ptr %.sroa.1010.0.copyload.i.i97, ptr %.sroa.1010.0..sroa_idx11.i.i106, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i81)
  br label %bb.aa

bb.aa:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i102, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i113
  %.sroa.0.0.i107 = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i86, i64 56 ; 2 uses
  %.not.i108 = icmp eq ptr %.sroa.0.0.i107, %3
  br i1 %.not.i108, label %.preheader180.lr.ph, label %bb.v, !llvm.loop !1463

.preheader180.lr.ph:                              ; preds = %bb.aa, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit152, %.preheader.i82
  %.not188 = icmp slt i32 %5, 1
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %exitcond.peel.not = icmp eq i32 %5, 1
  br label %.preheader180

.preheader180:                                    ; preds = %.preheader180.lr.ph, %.critedge2
  %.sroa.0159.0197 = phi ptr [ %2, %.preheader180.lr.ph ], [ %i.ez, %.critedge2 ] ; 11 uses
  %.sroa.0172.0196 = phi ptr [ %0, %.preheader180.lr.ph ], [ %.sroa.0172.1.lcssa, %.critedge2 ] ; 3 uses
  %.not178183 = icmp eq ptr %.sroa.0172.0196, %1
  br i1 %.not178183, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader180
  %i.dm = load double, ptr %.sroa.0159.0197, align 8, !tbaa !53 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0159.0197, i64 48
  br label %bb.ab

._crit_edge198:                                   ; preds = %.critedge2, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit
  ret void

bb.ab:                                            ; preds = %.lr.ph, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread
  %.sroa.0172.1184 = phi ptr [ %.sroa.0172.0196, %.lr.ph ], [ %i.dv, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread ] ; 5 uses
  %i.do = load double, ptr %.sroa.0172.1184, align 8, !tbaa !53 ; 2 uses
  %i.dp = fcmp olt double %i.do, %i.dm
  br i1 %i.dp, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dq = fcmp oeq double %i.do, %i.dm
  br i1 %i.dq, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit, label %.critedge

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit: ; preds = %bb.ac
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0172.1184, i64 48
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !1459
  %i.dt = load ptr, ptr %i.dn, align 8, !tbaa !1459
  %i.du = icmp ult ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread, label %.critedge

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread: ; preds = %bb.ab, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0172.1184, i64 56 ; 3 uses
  %.not178 = icmp eq ptr %i.dv, %1
  br i1 %.not178, label %.critedge, label %bb.ab, !llvm.loop !1465

.critedge:                                        ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread, %bb.ac, %.preheader180
  %.sroa.0172.1.lcssa = phi ptr [ %.sroa.0172.0196, %.preheader180 ], [ %.sroa.0172.1184, %bb.ac ], [ %i.dv, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread ], [ %.sroa.0172.1184, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit ] ; 3 uses
  %.not179190 = icmp eq ptr %.sroa.0172.1.lcssa, %1
  br i1 %.not179190, label %.critedge2, label %.lr.ph193

.lr.ph193:                                        ; preds = %.critedge
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0159.0197, i64 24
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0159.0197, i64 48
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0159.0197, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0159.0197, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0159.0197, i64 32
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0159.0197, i64 40
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph193, %.thread
  %.sroa.0.0191 = phi ptr [ %.sroa.0172.1.lcssa, %.lr.ph193 ], [ %i.ey, %.thread ] ; 9 uses
  %i.eb = load double, ptr %i.dw, align 8, !tbaa !53
  %i.ec = load double, ptr %.sroa.0.0191, align 8, !tbaa !53
  %i.ed = fcmp ult double %i.eb, %i.ec
  br i1 %i.ed, label %.critedge2, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0.0191, i64 48
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !1459
  %i.eg = load ptr, ptr %i.dx, align 8, !tbaa !1459
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.ae
  br i1 %.not188, label %._crit_edge, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.preheader

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.preheader: ; preds = %.preheader
  %i.ei = load double, ptr %i.ea, align 8, !tbaa !53
  %.in.i.i.i.i.peel = getelementptr inbounds nuw i8, ptr %.sroa.0.0191, i64 8
  %i.ej = load double, ptr %.in.i.i.i.i.peel, align 8, !tbaa !53
  %i.ek = fcmp ult double %i.ei, %i.ej
  br i1 %i.ek, label %.thread, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit.peel

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit.peel: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.preheader
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0.0191, i64 32
  %i.em = load double, ptr %i.el, align 8, !tbaa !53
  %i.en = load double, ptr %i.dy, align 8, !tbaa !53
  %i.eo = fcmp ult double %i.em, %i.en
  br i1 %i.eo, label %.thread, label %bb.af

bb.af:                                            ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit.peel
  br i1 %exitcond.peel.not, label %._crit_edge, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next: ; preds = %bb.af
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !53
  %.in.i.i.i.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0.0191, i64 16
  %.pre205 = load double, ptr %.in.i.i.i.i.phi.trans.insert, align 8, !tbaa !53
  %i.ep = fcmp ult double %.pre, %.pre205
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0.0191, i64 40
  br label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i

bb.ag:                                            ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit
  %i.er = add nuw i32 %.0189, 1
  %exitcond.not = icmp eq i32 %.0189, %5
  br i1 %exitcond.not, label %._crit_edge, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i, !llvm.loop !1466

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next, %bb.ag
  %.0189 = phi i32 [ %i.er, %bb.ag ], [ 2, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next ] ; 2 uses
  br i1 %i.ep, label %.thread, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i
  %i.es = load double, ptr %i.eq, align 8, !tbaa !53
  %i.et = load double, ptr %i.dz, align 8, !tbaa !53
  %i.eu = fcmp ult double %i.es, %i.et
  br i1 %i.eu, label %.thread, label %bb.ag

._crit_edge:                                      ; preds = %bb.ag, %bb.af, %.preheader
  %i.ev = load ptr, ptr %i.dk, align 8, !tbaa !88
  %.not.i.i15 = icmp eq ptr %i.ev, null           ; 2 uses
  br i1 %6, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %._crit_edge
  br i1 %.not.i.i15, label %bb.ai, label %_ZNKSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEclESG_SG_.exit

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZSt25__throw_bad_function_callv() #43
  unreachable

_ZNKSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEclESG_SG_.exit: ; preds = %bb.ah
  %i.ew = load ptr, ptr %i.dl, align 8, !tbaa !85
  tail call void %i.ew(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0191, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0159.0197), !inline_history !1467
  br label %.thread

bb.aj:                                            ; preds = %._crit_edge
  br i1 %.not.i.i15, label %bb.ak, label %_ZNKSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEclESG_SG_.exit17

bb.ak:                                            ; preds = %bb.aj
  tail call void @_ZSt25__throw_bad_function_callv() #43
  unreachable

_ZNKSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEclESG_SG_.exit17: ; preds = %bb.aj
  %i.ex = load ptr, ptr %i.dl, align 8, !tbaa !85
  tail call void %i.ex(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0159.0197, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0191), !inline_history !1467
  br label %.thread

.thread:                                          ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.preheader, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit.peel, %_ZNKSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEclESG_SG_.exit17, %_ZNKSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEclESG_SG_.exit, %bb.ae
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.0191, i64 56 ; 2 uses
  %.not179 = icmp eq ptr %i.ey, %1
  br i1 %.not179, label %.critedge2, label %bb.ad, !llvm.loop !1468

.critedge2:                                       ; preds = %.thread, %bb.ad, %.critedge
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0159.0197, i64 56 ; 2 uses
  %.not177 = icmp eq ptr %i.ez, %3
  br i1 %.not177, label %._crit_edge198, label %.preheader180, !llvm.loop !1469
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL18Box_intersection_d21modified_two_way_scanIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_St8functionIFvRKSE_SL_EENS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEEEvT_SS_T0_ST_T1_T2_ib(ptr %0, ptr %1, ptr %2, ptr %3, ptr noundef align 8 %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #4 comdat {
bb.a:
  %.sroa.10.i.i164 = alloca [3 x double], align 8 ; 4 uses
  %7 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d", align 8 ; 4 uses
  %.sroa.10.i.i128 = alloca [3 x double], align 8 ; 4 uses
  %8 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d", align 8 ; 4 uses
  %.sroa.10.i.i92 = alloca [3 x double], align 8  ; 4 uses
  %9 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d", align 8 ; 4 uses
  %.sroa.10.i.i = alloca [3 x double], align 8    ; 4 uses
  %10 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d", align 8 ; 4 uses
  %.sroa.10.i.i.i65 = alloca [3 x double], align 8 ; 4 uses
  %.sroa.10.i.i.i = alloca [3 x double], align 8  ; 4 uses
  %.not.i.i = icmp eq ptr %0, %1
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = sdiv exact i64 %i.c, 56
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = shl nuw nsw i64 %i.e, 1
  %i.g = xor i64 %i.f, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEElNS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_T1_(ptr %0, ptr %1, i64 noundef %i.g, i32 0)
  %i.h = icmp sgt i64 %i.c, 896
  br i1 %i.h, label %bb.c, label %.preheader.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %scevgep = getelementptr i8, ptr %0, i64 56
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.c
  %.sroa.0.025.i97.idx = phi i64 [ 56, %bb.c ], [ %.sroa.0.025.i97.add, %bb.h ] ; 4 uses
  %.pn24.i98 = phi ptr [ %0, %bb.c ], [ %.sroa.0.025.i97.ptr, %bb.h ] ; 4 uses
  %.sroa.0.025.i97.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.025.i97.idx ; 4 uses
  %i.j = load double, ptr %.sroa.0.025.i97.ptr, align 8, !tbaa !53 ; 5 uses
  %i.k = load double, ptr %0, align 8, !tbaa !53  ; 2 uses
  %i.l = fcmp olt double %i.j, %i.k
  br i1 %i.l, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i123, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = fcmp oeq double %i.j, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %.pn24.i98, i64 104
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  br i1 %i.m, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i122, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i100

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i122: ; preds = %bb.e
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !1459
  %i.q = icmp ult ptr %i.o, %i.p
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i123, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i100

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i123: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i122, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i97.ptr, i64 56, i1 false)
  %i.r = icmp samesign ugt i64 %.sroa.0.025.i97.idx, 56
  br i1 %i.r, label %bb.f, label %bb.g, !prof !1461

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i123
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.025.i97.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i124

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i123
  %i.s = getelementptr inbounds nuw i8, ptr %.pn24.i98, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i124

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i124: ; preds = %bb.g, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %9, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.h

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i100: ; preds = %bb.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i122
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i92)
  %.sroa.6.0..sroa_idx.i.i102 = getelementptr inbounds nuw i8, ptr %.pn24.i98, i64 64
  %i.t = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i102, align 8
  %.sroa.10.0..sroa_idx.i.i106 = getelementptr inbounds nuw i8, ptr %.pn24.i98, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i92, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i106, i64 24, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i109

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i109: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i121, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i100
  %.sroa.014.0.us.i.i110 = phi ptr [ %.sroa.0.0.us.i.i111, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i121 ], [ %.sroa.0.025.i97.ptr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i100 ] ; 7 uses
  %.sroa.0.0.us.i.i111 = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i110, i64 -56 ; 3 uses
  %i.u = load double, ptr %.sroa.0.0.us.i.i111, align 8, !tbaa !53 ; 2 uses
  %i.v = fcmp olt double %i.j, %i.u
  br i1 %i.v, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i121, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i112

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i112: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i109
  %i.w = fcmp oeq double %i.j, %i.u
  br i1 %i.w, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i120, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i113

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i120: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i112
  %i.x = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i110, i64 -8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1459
  %i.z = icmp ult ptr %i.o, %i.y
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i121, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i113

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i121: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i120, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i109
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i110, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i111, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i109, !llvm.loop !1462

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i113: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i120, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i112
  store double %i.j, ptr %.sroa.014.0.us.i.i110, align 8
  %.sroa.6.0..sroa_idx5.i.i114 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i110, i64 8
  store <2 x double> %i.t, ptr %.sroa.6.0..sroa_idx5.i.i114, align 8
  %.sroa.10.0..sroa_idx9.i.i116 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i110, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i116, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i92, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i117 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i110, i64 48
  store ptr %i.o, ptr %.sroa.1010.0..sroa_idx11.i.i117, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i92)
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i113, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i124
  %.sroa.0.025.i97.add = add nuw nsw i64 %.sroa.0.025.i97.idx, 56 ; 2 uses
  %.not.i119 = icmp eq i64 %.sroa.0.025.i97.add, 896
  br i1 %.not.i119, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit127, label %bb.d, !llvm.loop !1463

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit127: ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.aa, %1
  br i1 %.not9.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i: ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit127, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i
  %.sroa.0.010.us.i.i = phi ptr [ %i.aj, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i ], [ %i.aa, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit127 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i)
  %i.ab = load <2 x double>, ptr %.sroa.0.010.us.i.i, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i, i64 16
  %.sroa.8.0.copyload.i.us.i.i = load double, ptr %.sroa.8.0..sroa_idx.i.us.i.i, align 8
  %.sroa.10.0..sroa_idx.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.us.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i, i64 48
  %.sroa.1010.0.copyload.i.us.i.i = load ptr, ptr %.sroa.1010.0..sroa_idx.i.us.i.i, align 8 ; 2 uses
  %i.ac = extractelement <2 x double> %i.ab, i64 0 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i
  %.sroa.014.0.us.i.us.i.i = phi ptr [ %.sroa.0.0.us.i.us.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i ], [ %.sroa.0.010.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i ] ; 7 uses
  %.sroa.0.0.us.i.us.i.i = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i, i64 -56 ; 3 uses
  %i.ad = load double, ptr %.sroa.0.0.us.i.us.i.i, align 8, !tbaa !53 ; 2 uses
  %i.ae = fcmp olt double %i.ac, %i.ad
  br i1 %i.ae, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i
  %i.af = fcmp oeq double %i.ac, %i.ad
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i
  %i.ag = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i, i64 -8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1459
  %i.ai = icmp ult ptr %.sroa.1010.0.copyload.i.us.i.i, %i.ah
  br i1 %i.ai, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.us.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.us.i.i, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i, !llvm.loop !1462

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i
  store <2 x double> %i.ab, ptr %.sroa.014.0.us.i.us.i.i, align 8
  %.sroa.8.0..sroa_idx7.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i, i64 16
  store double %.sroa.8.0.copyload.i.us.i.i, ptr %.sroa.8.0..sroa_idx7.i.us.i.i, align 8
  %.sroa.10.0..sroa_idx9.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.us.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i, i64 48
  store ptr %.sroa.1010.0.copyload.i.us.i.i, ptr %.sroa.1010.0..sroa_idx11.i.us.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i)
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i, i64 56 ; 2 uses
  %.not.us.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.us.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i, !llvm.loop !1464

.preheader.i:                                     ; preds = %bb.b
  %.sroa.0.022.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.not23.i = icmp eq ptr %.sroa.0.022.i, %1
  br i1 %.not23.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i
  %.sroa.0.025.i = phi ptr [ %.sroa.0.022.i, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.n ] ; 6 uses
  %.pn24.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.025.i, %bb.n ] ; 5 uses
  %i.al = load double, ptr %.sroa.0.025.i, align 8, !tbaa !53 ; 5 uses
  %i.am = load double, ptr %0, align 8, !tbaa !53 ; 2 uses
  %i.an = fcmp olt double %i.al, %i.am
  br i1 %i.an, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = fcmp oeq double %i.al, %i.am
  br i1 %i.ao, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i: ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1459
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !1459
  %i.as = icmp ult ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i, i64 56, i1 false)
  %i.at = ptrtoint ptr %.sroa.0.025.i to i64
  %i.au = sub i64 %i.at, %i.b                     ; 3 uses
  %i.av = icmp sgt i64 %i.au, 56
  br i1 %i.av, label %bb.k, label %bb.l, !prof !1461

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0.022.i, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.au, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i
  %i.aw = icmp eq i64 %i.au, 56
  br i1 %i.aw, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ax, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %10, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.n

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i)
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 64
  %i.ay = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 104
  %.sroa.1010.0.copyload.i.i = load ptr, ptr %.sroa.1010.0..sroa_idx.i.i, align 8 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i
  %.sroa.014.0.us.i.i = phi ptr [ %.sroa.0.0.us.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i ], [ %.sroa.0.025.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i ] ; 7 uses
  %.sroa.0.0.us.i.i = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i, i64 -56 ; 3 uses
  %i.az = load double, ptr %.sroa.0.0.us.i.i, align 8, !tbaa !53 ; 2 uses
  %i.ba = fcmp olt double %i.al, %i.az
  br i1 %i.ba, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i
  %i.bb = fcmp oeq double %i.al, %i.az
  br i1 %i.bb, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i
  %i.bc = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i, i64 -8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1459
  %i.be = icmp ult ptr %.sroa.1010.0.copyload.i.i, %i.bd
  br i1 %i.be, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i, !llvm.loop !1462

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i
  store double %i.al, ptr %.sroa.014.0.us.i.i, align 8
  %.sroa.6.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i, i64 8
  store <2 x double> %i.ay, ptr %.sroa.6.0..sroa_idx5.i.i, align 8
  %.sroa.10.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i, i64 48
  store ptr %.sroa.1010.0.copyload.i.i, ptr %.sroa.1010.0..sroa_idx11.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i)
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i, i64 56 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %1
  br i1 %.not.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit, label %bb.i, !llvm.loop !1463

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit127, %.preheader.i, %bb.a
  %.not.i.i24 = icmp eq ptr %2, %3
  br i1 %.not.i.i24, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit25, label %bb.o

bb.o:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit
  %i.bf = ptrtoint ptr %3 to i64
  %i.bg = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = sdiv exact i64 %i.bh, 56
  %i.bj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bi, i1 true)
  %i.bk = shl nuw nsw i64 %i.bj, 1
  %i.bl = xor i64 %i.bk, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEElNS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_T1_(ptr %2, ptr %3, i64 noundef %i.bl, i32 0)
  %i.bm = icmp sgt i64 %i.bh, 896
  br i1 %i.bm, label %bb.p, label %.preheader.i129

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 48
  %scevgep272 = getelementptr i8, ptr %2, i64 56
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %bb.p
  %.sroa.0.025.i169.idx = phi i64 [ 56, %bb.p ], [ %.sroa.0.025.i169.add, %bb.u ] ; 4 uses
  %.pn24.i170 = phi ptr [ %2, %bb.p ], [ %.sroa.0.025.i169.ptr, %bb.u ] ; 4 uses
  %.sroa.0.025.i169.ptr = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.025.i169.idx ; 4 uses
  %i.bo = load double, ptr %.sroa.0.025.i169.ptr, align 8, !tbaa !53 ; 5 uses
  %i.bp = load double, ptr %2, align 8, !tbaa !53 ; 2 uses
  %i.bq = fcmp olt double %i.bo, %i.bp
  br i1 %i.bq, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i195, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = fcmp oeq double %i.bo, %i.bp
  %i.bs = getelementptr inbounds nuw i8, ptr %.pn24.i170, i64 104
  %i.bt = load ptr, ptr %i.bs, align 8            ; 3 uses
  br i1 %i.br, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i194, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i172

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i194: ; preds = %bb.r
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !1459
  %i.bv = icmp ult ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i195, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i172

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i195: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i194, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i169.ptr, i64 56, i1 false)
  %i.bw = icmp samesign ugt i64 %.sroa.0.025.i169.idx, 56
  br i1 %i.bw, label %bb.s, label %bb.t, !prof !1461

bb.s:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i195
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep272, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %.sroa.0.025.i169.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i196

bb.t:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i195
  %i.bx = getelementptr inbounds nuw i8, ptr %.pn24.i170, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bx, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i196

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i196: ; preds = %bb.t, %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %7, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.u

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i172: ; preds = %bb.r, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i194
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i164)
  %.sroa.6.0..sroa_idx.i.i174 = getelementptr inbounds nuw i8, ptr %.pn24.i170, i64 64
  %i.by = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i174, align 8
  %.sroa.10.0..sroa_idx.i.i178 = getelementptr inbounds nuw i8, ptr %.pn24.i170, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i164, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i178, i64 24, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i181

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i181: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i193, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i172
  %.sroa.014.0.us.i.i182 = phi ptr [ %.sroa.0.0.us.i.i183, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i193 ], [ %.sroa.0.025.i169.ptr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i172 ] ; 7 uses
  %.sroa.0.0.us.i.i183 = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i182, i64 -56 ; 3 uses
  %i.bz = load double, ptr %.sroa.0.0.us.i.i183, align 8, !tbaa !53 ; 2 uses
  %i.ca = fcmp olt double %i.bo, %i.bz
  br i1 %i.ca, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i193, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i184

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i184: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i181
  %i.cb = fcmp oeq double %i.bo, %i.bz
  br i1 %i.cb, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i192, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i185

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i192: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i184
  %i.cc = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i182, i64 -8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1459
  %i.ce = icmp ult ptr %i.bt, %i.cd
  br i1 %i.ce, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i193, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i185

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i193: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i192, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i181
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i182, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i183, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i181, !llvm.loop !1462

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i185: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i192, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i184
  store double %i.bo, ptr %.sroa.014.0.us.i.i182, align 8
  %.sroa.6.0..sroa_idx5.i.i186 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i182, i64 8
  store <2 x double> %i.by, ptr %.sroa.6.0..sroa_idx5.i.i186, align 8
  %.sroa.10.0..sroa_idx9.i.i188 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i182, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i188, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i164, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i189 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i182, i64 48
  store ptr %i.bt, ptr %.sroa.1010.0..sroa_idx11.i.i189, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i164)
  br label %bb.u

bb.u:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i185, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i196
  %.sroa.0.025.i169.add = add nuw nsw i64 %.sroa.0.025.i169.idx, 56 ; 2 uses
  %.not.i191 = icmp eq i64 %.sroa.0.025.i169.add, 896
  br i1 %.not.i191, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit199, label %bb.q, !llvm.loop !1463

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit199: ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 896 ; 2 uses
  %.not9.i.i66 = icmp eq ptr %i.cf, %3
  br i1 %.not9.i.i66, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit25, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i68

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i68: ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit199, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i82
  %.sroa.0.010.us.i.i69 = phi ptr [ %i.co, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i82 ], [ %i.cf, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit199 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i65)
  %i.cg = load <2 x double>, ptr %.sroa.0.010.us.i.i69, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx.i.us.i.i73 = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i69, i64 16
  %.sroa.8.0.copyload.i.us.i.i74 = load double, ptr %.sroa.8.0..sroa_idx.i.us.i.i73, align 8
  %.sroa.10.0..sroa_idx.i.us.i.i75 = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i69, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i65, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.us.i.i75, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.us.i.i76 = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i69, i64 48
  %.sroa.1010.0.copyload.i.us.i.i77 = load ptr, ptr %.sroa.1010.0..sroa_idx.i.us.i.i76, align 8 ; 2 uses
  %i.ch = extractelement <2 x double> %i.cg, i64 0 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i78

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i78: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i89, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i68
  %.sroa.014.0.us.i.us.i.i79 = phi ptr [ %.sroa.0.0.us.i.us.i.i80, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i89 ], [ %.sroa.0.010.us.i.i69, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i68 ] ; 7 uses
  %.sroa.0.0.us.i.us.i.i80 = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i79, i64 -56 ; 3 uses
  %i.ci = load double, ptr %.sroa.0.0.us.i.us.i.i80, align 8, !tbaa !53 ; 2 uses
  %i.cj = fcmp olt double %i.ch, %i.ci
  br i1 %i.cj, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i89, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i81

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i81: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i78
  %i.ck = fcmp oeq double %i.ch, %i.ci
  br i1 %i.ck, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i88, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i82

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i88: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i81
  %i.cl = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i79, i64 -8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !1459
  %i.cn = icmp ult ptr %.sroa.1010.0.copyload.i.us.i.i77, %i.cm
  br i1 %i.cn, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i89, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i82

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i89: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i88, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i78
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.us.i.i79, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.us.i.i80, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i78, !llvm.loop !1462

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i82: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i88, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i81
  store <2 x double> %i.cg, ptr %.sroa.014.0.us.i.us.i.i79, align 8
  %.sroa.8.0..sroa_idx7.i.us.i.i84 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i79, i64 16
  store double %.sroa.8.0.copyload.i.us.i.i74, ptr %.sroa.8.0..sroa_idx7.i.us.i.i84, align 8
  %.sroa.10.0..sroa_idx9.i.us.i.i85 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i79, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.us.i.i85, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i65, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.us.i.i86 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i79, i64 48
  store ptr %.sroa.1010.0.copyload.i.us.i.i77, ptr %.sroa.1010.0..sroa_idx11.i.us.i.i86, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i65)
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i69, i64 56 ; 2 uses
  %.not.us.i.i87 = icmp eq ptr %i.co, %3
  br i1 %.not.us.i.i87, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit25, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i68, !llvm.loop !1464

.preheader.i129:                                  ; preds = %bb.o
  %.sroa.0.022.i130 = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %.not23.i131 = icmp eq ptr %.sroa.0.022.i130, %3
  br i1 %.not23.i131, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit25, label %.lr.ph.i132

.lr.ph.i132:                                      ; preds = %.preheader.i129
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.v

bb.v:                                             ; preds = %bb.aa, %.lr.ph.i132
  %.sroa.0.025.i133 = phi ptr [ %.sroa.0.022.i130, %.lr.ph.i132 ], [ %.sroa.0.0.i154, %bb.aa ] ; 6 uses
  %.pn24.i134 = phi ptr [ %2, %.lr.ph.i132 ], [ %.sroa.0.025.i133, %bb.aa ] ; 5 uses
  %i.cq = load double, ptr %.sroa.0.025.i133, align 8, !tbaa !53 ; 5 uses
  %i.cr = load double, ptr %2, align 8, !tbaa !53 ; 2 uses
  %i.cs = fcmp olt double %i.cq, %i.cr
  br i1 %i.cs, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i159, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = fcmp oeq double %i.cq, %i.cr
  br i1 %i.ct, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i158, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i136

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i158: ; preds = %bb.w
  %i.cu = getelementptr inbounds nuw i8, ptr %.pn24.i134, i64 104
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !1459
  %i.cw = load ptr, ptr %i.cp, align 8, !tbaa !1459
  %i.cx = icmp ult ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i159, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i136

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i159: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i158, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i133, i64 56, i1 false)
  %i.cy = ptrtoint ptr %.sroa.0.025.i133 to i64
  %i.cz = sub i64 %i.cy, %i.bg                    ; 3 uses
  %i.da = icmp sgt i64 %i.cz, 56
  br i1 %i.da, label %bb.x, label %bb.y, !prof !1461

bb.x:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i159
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0.022.i130, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %i.cz, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i160

bb.y:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i159
  %i.db = icmp eq i64 %i.cz, 56
  br i1 %i.db, label %bb.z, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i160

bb.z:                                             ; preds = %bb.y
  %i.dc = getelementptr inbounds nuw i8, ptr %.pn24.i134, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dc, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i160

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i160: ; preds = %bb.z, %bb.y, %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %8, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.aa

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i136: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i158, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i128)
  %.sroa.6.0..sroa_idx.i.i138 = getelementptr inbounds nuw i8, ptr %.pn24.i134, i64 64
  %i.dd = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i138, align 8
  %.sroa.10.0..sroa_idx.i.i142 = getelementptr inbounds nuw i8, ptr %.pn24.i134, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i128, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i142, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.i143 = getelementptr inbounds nuw i8, ptr %.pn24.i134, i64 104
  %.sroa.1010.0.copyload.i.i144 = load ptr, ptr %.sroa.1010.0..sroa_idx.i.i143, align 8 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i145

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i145: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i157, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i136
  %.sroa.014.0.us.i.i146 = phi ptr [ %.sroa.0.0.us.i.i147, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i157 ], [ %.sroa.0.025.i133, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i136 ] ; 7 uses
  %.sroa.0.0.us.i.i147 = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i146, i64 -56 ; 3 uses
  %i.de = load double, ptr %.sroa.0.0.us.i.i147, align 8, !tbaa !53 ; 2 uses
  %i.df = fcmp olt double %i.cq, %i.de
  br i1 %i.df, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i157, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i148

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i148: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i145
  %i.dg = fcmp oeq double %i.cq, %i.de
  br i1 %i.dg, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i156, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i149

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i156: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i148
  %i.dh = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i146, i64 -8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !1459
  %i.dj = icmp ult ptr %.sroa.1010.0.copyload.i.i144, %i.di
  br i1 %i.dj, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i157, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i149

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i157: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i156, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i145
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i146, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i147, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i145, !llvm.loop !1462

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i149: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i156, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i148
  store double %i.cq, ptr %.sroa.014.0.us.i.i146, align 8
  %.sroa.6.0..sroa_idx5.i.i150 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i146, i64 8
  store <2 x double> %i.dd, ptr %.sroa.6.0..sroa_idx5.i.i150, align 8
  %.sroa.10.0..sroa_idx9.i.i152 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i146, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i152, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i128, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i153 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i146, i64 48
  store ptr %.sroa.1010.0.copyload.i.i144, ptr %.sroa.1010.0..sroa_idx11.i.i153, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i128)
  br label %bb.aa

bb.aa:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i149, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i160
  %.sroa.0.0.i154 = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i133, i64 56 ; 2 uses
  %.not.i155 = icmp eq ptr %.sroa.0.0.i154, %3
  br i1 %.not.i155, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit25, label %bb.v, !llvm.loop !1463

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit25: ; preds = %bb.aa, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i82, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit199, %.preheader.i129, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit
  %i.dk = icmp ne ptr %2, %3
  %i.dl = icmp ne ptr %0, %1
  %or.cond266 = and i1 %i.dk, %i.dl
  br i1 %or.cond266, label %.lr.ph269, label %.critedge

.lr.ph269:                                        ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit25
  %.not252 = icmp slt i32 %5, 1                   ; 2 uses
  %switch.selectcmp.i.i.i.i52 = icmp eq i32 %5, 1
  %switch.select.i.i.i.i53 = select i1 %switch.selectcmp.i.i.i.i52, i64 32, i64 40
  %switch.selectcmp2.i.i.i.i54 = icmp eq i32 %5, 0
  %switch.select3.i.i.i.i55 = select i1 %switch.selectcmp2.i.i.i.i54, i64 24, i64 %switch.select.i.i.i.i53 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.do = add nuw i32 %5, 1                       ; 2 uses
  %exitcond.peel.not = icmp eq i32 %i.do, 2
  %exitcond274.peel.not = icmp eq i32 %i.do, 2
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph269, %bb.bb
  %.sroa.0230.0268 = phi ptr [ %0, %.lr.ph269 ], [ %.sroa.0230.1, %bb.bb ] ; 17 uses
  %.sroa.0219.0267 = phi ptr [ %2, %.lr.ph269 ], [ %.sroa.0219.1, %bb.bb ] ; 17 uses
  %i.dp = load double, ptr %.sroa.0219.0267, align 8, !tbaa !53 ; 2 uses
  %i.dq = load double, ptr %.sroa.0230.0268, align 8, !tbaa !53 ; 2 uses
  %i.dr = fcmp olt double %i.dp, %i.dq
  br i1 %i.dr, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ds = fcmp oeq double %i.dp, %i.dq
  br i1 %i.ds, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread239

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit: ; preds = %bb.ac
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0219.0267, i64 48
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !1459
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0230.0268, i64 48
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !1459
  %i.dx = icmp ult ptr %i.du, %i.dw
  br i1 %i.dx, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread239

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread: ; preds = %bb.ab, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit
  %.not248261 = icmp eq ptr %.sroa.0230.0268, %1
  br i1 %.not248261, label %.critedge2, label %.lr.ph264

.lr.ph264:                                        ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0219.0267, i64 24
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0219.0267, i64 48
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0219.0267, i64 8 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0219.0267, i64 16 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0219.0267, i64 %switch.select3.i.i.i.i55
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0219.0267, i64 32
  %.phi.trans.insert279 = getelementptr inbounds nuw i8, ptr %.sroa.0219.0267, i64 40
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph264, %.thread
  %.sroa.0207.0262 = phi ptr [ %.sroa.0230.0268, %.lr.ph264 ], [ %i.fr, %.thread ] ; 18 uses
  %i.ee = load double, ptr %i.dy, align 8, !tbaa !53
  %i.ef = load double, ptr %.sroa.0207.0262, align 8, !tbaa !53
  %i.eg = fcmp ult double %i.ee, %i.ef
  br i1 %i.eg, label %.critedge2, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0207.0262, i64 48
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !1459 ; 2 uses
  %i.ej = load ptr, ptr %i.dz, align 8, !tbaa !1459 ; 2 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.ae
  br i1 %.not252, label %._crit_edge260, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.preheader

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.preheader: ; preds = %.preheader
  %i.el = load double, ptr %i.ed, align 8, !tbaa !53
  %.in.i.i.i.i.peel = getelementptr inbounds nuw i8, ptr %.sroa.0207.0262, i64 8
  %i.em = load double, ptr %.in.i.i.i.i.peel, align 8, !tbaa !53
  %i.en = fcmp ult double %i.el, %i.em
  br i1 %i.en, label %.thread, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit.peel

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit.peel: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.preheader
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0207.0262, i64 32
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !53
  %i.eq = load double, ptr %i.ea, align 8, !tbaa !53
  %i.er = fcmp ult double %i.ep, %i.eq
  br i1 %i.er, label %.thread, label %bb.af

bb.af:                                            ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit.peel
  br i1 %exitcond274.peel.not, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next: ; preds = %bb.af
  %.pre280 = load double, ptr %.phi.trans.insert279, align 8, !tbaa !53
  %.in.i.i.i.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0207.0262, i64 16
  %.pre281 = load double, ptr %.in.i.i.i.i.phi.trans.insert, align 8, !tbaa !53
  %i.es = fcmp ult double %.pre280, %.pre281
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.0207.0262, i64 40
  br label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i

bb.ag:                                            ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit
  %i.eu = add nuw i32 %.021259, 1
  %exitcond274.not = icmp eq i32 %.021259, %5
  br i1 %exitcond274.not, label %._crit_edge260, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i, !llvm.loop !1470

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next, %bb.ag
  %.021259 = phi i32 [ %i.eu, %bb.ag ], [ 2, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next ] ; 2 uses
  br i1 %i.es, label %.thread, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i
  %i.ev = load double, ptr %i.et, align 8, !tbaa !53
  %i.ew = load double, ptr %i.eb, align 8, !tbaa !53
  %i.ex = fcmp ult double %i.ev, %i.ew
  br i1 %i.ex, label %.thread, label %bb.ag

._crit_edge260:                                   ; preds = %bb.ag, %.preheader
  switch i32 %5, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i [
    i32 0, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i
    i32 1, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i
  ]

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i: ; preds = %bb.af, %._crit_edge260
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0207.0262, i64 8
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i: ; preds = %._crit_edge260
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0207.0262, i64 16
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i, %._crit_edge260
  %.in.i.i = phi ptr [ %i.eb, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i ], [ %i.ea, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i ], [ %.sroa.0219.0267, %._crit_edge260 ]
  %.in.i.i9.i.i = phi ptr [ %i.ez, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i ], [ %i.ey, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i ], [ %.sroa.0207.0262, %._crit_edge260 ]
  %i.fa = load double, ptr %.in.i.i, align 8, !tbaa !53
  %i.fb = load double, ptr %.in.i.i9.i.i, align 8, !tbaa !53
  %i.fc = fcmp olt double %i.fa, %i.fb
  br i1 %i.fc, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread.i, label %bb.ah

bb.ah:                                            ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i
  switch i32 %5, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i.i [
    i32 0, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i
    i32 1, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i.i
  ]
end_hunk_0
begin_hunk_1_@_ZN4CGAL18Box_intersection_d12segment_treeIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_St8functionIFvRKSE_SL_EEdNS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb0EEEEEvT_SS_T0_ST_T2_SU_T1_T3_lib:bb.a
  %i.eh = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !88 ; 2 uses
  %.not.i137 = icmp eq ptr %i.ei, null
  br i1 %.not.i137, label %.body124, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ej = invoke noundef zeroext i1 %i.ei(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef 3)
          to label %.body124 unwind label %bb.cd  ; 0 uses

bb.cd:                                            ; preds = %bb.cc
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  call void @__clang_call_terminate(ptr %i.el) #41
  unreachable

.body124:                                         ; preds = %bb.bv, %bb.bw, %bb.ca, %bb.bx, %bb.by, %bb.cb, %bb.cc, %bb.bi, %bb.bh, %bb.bg, %bb.bb, %bb.ba
  %.pn95 = phi { ptr, i32 } [ %i.cq, %bb.ba ], [ %i.da, %bb.bi ], [ %i.cz, %bb.bg ], [ %i.cq, %bb.bb ], [ %i.da, %bb.bh ], [ %i.dz, %bb.by ], [ %i.dy, %bb.bw ], [ %i.ef, %bb.ca ], [ %i.dx, %bb.bv ], [ %i.dz, %bb.bx ], [ %i.eg, %bb.cb ], [ %i.eg, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %.body

.body:                                            ; preds = %bb.ap, %.body124, %bb.aq, %bb.ar, %bb.at, %bb.au, %bb.ab, %bb.aa, %bb.u, %bb.v, %bb.n, %bb.m, %bb.h, %bb.g
  %.pn98 = phi { ptr, i32 } [ %i.w, %bb.n ], [ %i.az, %bb.ab ], [ %i.aq, %bb.u ], [ %i.n, %bb.g ], [ %i.n, %bb.h ], [ %i.cc, %bb.au ], [ %i.w, %bb.m ], [ %i.aq, %bb.v ], [ %i.az, %bb.aa ], [ %.pn95, %.body124 ], [ %i.bw, %bb.ar ], [ %i.bv, %bb.ap ], [ %i.bw, %bb.aq ], [ %i.cc, %bb.at ]
  %i.em = load i32, ptr %i.b, align 4, !tbaa !90
  %i.en = add nsw i32 %i.em, -1
  store i32 %i.en, ptr %i.b, align 4, !tbaa !90
  resume { ptr, i32 } %.pn98
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL18Box_intersection_d12one_way_scanIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_St8functionIFvRKSE_SL_EENS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb0EEEEEvT_SS_T0_ST_T1_T2_ib(ptr %0, ptr %1, ptr %2, ptr %3, ptr noundef align 8 %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #4 comdat {
bb.a:
  %.sroa.10.i.i117 = alloca [3 x double], align 8 ; 4 uses
  %7 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d", align 8 ; 4 uses
  %.sroa.10.i.i81 = alloca [3 x double], align 8  ; 4 uses
  %8 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d", align 8 ; 4 uses
  %.sroa.10.i.i45 = alloca [3 x double], align 8  ; 4 uses
  %9 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d", align 8 ; 4 uses
  %.sroa.10.i.i = alloca [3 x double], align 8    ; 4 uses
  %10 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d", align 8 ; 4 uses
  %.sroa.10.i.i.i18 = alloca [3 x double], align 8 ; 4 uses
  %.sroa.10.i.i.i = alloca [3 x double], align 8  ; 4 uses
  %.not.i.i = icmp eq ptr %0, %1
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = sdiv exact i64 %i.c, 56
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = shl nuw nsw i64 %i.e, 1
  %i.g = xor i64 %i.f, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEElNS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_T1_(ptr %0, ptr %1, i64 noundef %i.g, i32 0)
  %i.h = icmp sgt i64 %i.c, 896
  br i1 %i.h, label %bb.c, label %.preheader.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %scevgep = getelementptr i8, ptr %0, i64 56
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.c
  %.sroa.0.025.i50.idx = phi i64 [ 56, %bb.c ], [ %.sroa.0.025.i50.add, %bb.h ] ; 4 uses
  %.pn24.i51 = phi ptr [ %0, %bb.c ], [ %.sroa.0.025.i50.ptr, %bb.h ] ; 4 uses
  %.sroa.0.025.i50.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.025.i50.idx ; 4 uses
  %i.j = load double, ptr %.sroa.0.025.i50.ptr, align 8, !tbaa !53 ; 5 uses
  %i.k = load double, ptr %0, align 8, !tbaa !53  ; 2 uses
  %i.l = fcmp olt double %i.j, %i.k
  br i1 %i.l, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i76, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = fcmp oeq double %i.j, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %.pn24.i51, i64 104
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  br i1 %i.m, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i75, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i53

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i75: ; preds = %bb.e
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !1459
  %i.q = icmp ult ptr %i.o, %i.p
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i76, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i53

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i76: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i75, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i50.ptr, i64 56, i1 false)
  %i.r = icmp samesign ugt i64 %.sroa.0.025.i50.idx, 56
  br i1 %i.r, label %bb.f, label %bb.g, !prof !1461

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i76
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.025.i50.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i77

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i76
  %i.s = getelementptr inbounds nuw i8, ptr %.pn24.i51, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i77

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i77: ; preds = %bb.g, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %9, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.h

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i53: ; preds = %bb.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i75
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i45)
  %.sroa.6.0..sroa_idx.i.i55 = getelementptr inbounds nuw i8, ptr %.pn24.i51, i64 64
  %i.t = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i55, align 8
  %.sroa.10.0..sroa_idx.i.i59 = getelementptr inbounds nuw i8, ptr %.pn24.i51, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i45, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i59, i64 24, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i62

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i62: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i74, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i53
  %.sroa.014.0.us.i.i63 = phi ptr [ %.sroa.0.0.us.i.i64, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i74 ], [ %.sroa.0.025.i50.ptr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i53 ] ; 7 uses
  %.sroa.0.0.us.i.i64 = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i63, i64 -56 ; 3 uses
  %i.u = load double, ptr %.sroa.0.0.us.i.i64, align 8, !tbaa !53 ; 2 uses
  %i.v = fcmp olt double %i.j, %i.u
  br i1 %i.v, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i74, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i65

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i65: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i62
  %i.w = fcmp oeq double %i.j, %i.u
  br i1 %i.w, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i73, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i66

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i73: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i65
  %i.x = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i63, i64 -8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1459
  %i.z = icmp ult ptr %i.o, %i.y
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i74, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i66

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i74: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i73, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i62
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i63, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i64, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i62, !llvm.loop !1519

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i66: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i73, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i65
  store double %i.j, ptr %.sroa.014.0.us.i.i63, align 8
  %.sroa.6.0..sroa_idx5.i.i67 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i63, i64 8
  store <2 x double> %i.t, ptr %.sroa.6.0..sroa_idx5.i.i67, align 8
  %.sroa.10.0..sroa_idx9.i.i69 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i63, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i69, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i45, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i70 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i63, i64 48
  store ptr %i.o, ptr %.sroa.1010.0..sroa_idx11.i.i70, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i45)
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i66, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i77
  %.sroa.0.025.i50.add = add nuw nsw i64 %.sroa.0.025.i50.idx, 56 ; 2 uses
  %.not.i72 = icmp eq i64 %.sroa.0.025.i50.add, 896
  br i1 %.not.i72, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_.exit80, label %bb.d, !llvm.loop !1520

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_.exit80: ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.aa, %1
  br i1 %.not9.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i: ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_.exit80, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i
  %.sroa.0.010.us.i.i = phi ptr [ %i.aj, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i ], [ %i.aa, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_.exit80 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i)
  %i.ab = load <2 x double>, ptr %.sroa.0.010.us.i.i, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i, i64 16
  %.sroa.8.0.copyload.i.us.i.i = load double, ptr %.sroa.8.0..sroa_idx.i.us.i.i, align 8
  %.sroa.10.0..sroa_idx.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.us.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i, i64 48
  %.sroa.1010.0.copyload.i.us.i.i = load ptr, ptr %.sroa.1010.0..sroa_idx.i.us.i.i, align 8 ; 2 uses
  %i.ac = extractelement <2 x double> %i.ab, i64 0 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i
  %.sroa.014.0.us.i.us.i.i = phi ptr [ %.sroa.0.0.us.i.us.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i ], [ %.sroa.0.010.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i ] ; 7 uses
  %.sroa.0.0.us.i.us.i.i = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i, i64 -56 ; 3 uses
  %i.ad = load double, ptr %.sroa.0.0.us.i.us.i.i, align 8, !tbaa !53 ; 2 uses
  %i.ae = fcmp olt double %i.ac, %i.ad
  br i1 %i.ae, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i
  %i.af = fcmp oeq double %i.ac, %i.ad
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i
  %i.ag = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i, i64 -8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1459
  %i.ai = icmp ult ptr %.sroa.1010.0.copyload.i.us.i.i, %i.ah
  br i1 %i.ai, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.us.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.us.i.i, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i, !llvm.loop !1519

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i
  store <2 x double> %i.ab, ptr %.sroa.014.0.us.i.us.i.i, align 8
  %.sroa.8.0..sroa_idx7.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i, i64 16
  store double %.sroa.8.0.copyload.i.us.i.i, ptr %.sroa.8.0..sroa_idx7.i.us.i.i, align 8
  %.sroa.10.0..sroa_idx9.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.us.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i, i64 48
  store ptr %.sroa.1010.0.copyload.i.us.i.i, ptr %.sroa.1010.0..sroa_idx11.i.us.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i)
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i, i64 56 ; 2 uses
  %.not.us.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.us.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i, !llvm.loop !1521

.preheader.i:                                     ; preds = %bb.b
  %.sroa.0.022.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.not23.i = icmp eq ptr %.sroa.0.022.i, %1
  br i1 %.not23.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i
  %.sroa.0.025.i = phi ptr [ %.sroa.0.022.i, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.n ] ; 6 uses
  %.pn24.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.025.i, %bb.n ] ; 5 uses
  %i.al = load double, ptr %.sroa.0.025.i, align 8, !tbaa !53 ; 5 uses
  %i.am = load double, ptr %0, align 8, !tbaa !53 ; 2 uses
  %i.an = fcmp olt double %i.al, %i.am
  br i1 %i.an, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = fcmp oeq double %i.al, %i.am
  br i1 %i.ao, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i: ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1459
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !1459
  %i.as = icmp ult ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i, i64 56, i1 false)
  %i.at = ptrtoint ptr %.sroa.0.025.i to i64
  %i.au = sub i64 %i.at, %i.b                     ; 3 uses
  %i.av = icmp sgt i64 %i.au, 56
  br i1 %i.av, label %bb.k, label %bb.l, !prof !1461

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0.022.i, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.au, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i
  %i.aw = icmp eq i64 %i.au, 56
  br i1 %i.aw, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ax, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %10, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.n

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i)
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 64
  %i.ay = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 104
  %.sroa.1010.0.copyload.i.i = load ptr, ptr %.sroa.1010.0..sroa_idx.i.i, align 8 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i
  %.sroa.014.0.us.i.i = phi ptr [ %.sroa.0.0.us.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i ], [ %.sroa.0.025.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i ] ; 7 uses
  %.sroa.0.0.us.i.i = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i, i64 -56 ; 3 uses
  %i.az = load double, ptr %.sroa.0.0.us.i.i, align 8, !tbaa !53 ; 2 uses
  %i.ba = fcmp olt double %i.al, %i.az
  br i1 %i.ba, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i
  %i.bb = fcmp oeq double %i.al, %i.az
  br i1 %i.bb, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i
  %i.bc = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i, i64 -8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1459
  %i.be = icmp ult ptr %.sroa.1010.0.copyload.i.i, %i.bd
  br i1 %i.be, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i, !llvm.loop !1519

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i
  store double %i.al, ptr %.sroa.014.0.us.i.i, align 8
  %.sroa.6.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i, i64 8
  store <2 x double> %i.ay, ptr %.sroa.6.0..sroa_idx5.i.i, align 8
  %.sroa.10.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i, i64 48
  store ptr %.sroa.1010.0.copyload.i.i, ptr %.sroa.1010.0..sroa_idx11.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i)
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i, i64 56 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %1
  br i1 %.not.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit, label %bb.i, !llvm.loop !1520

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_.exit80, %.preheader.i, %bb.a
  %.not.i.i13 = icmp eq ptr %2, %3
  br i1 %.not.i.i13, label %._crit_edge198, label %bb.o

bb.o:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit
  %i.bf = ptrtoint ptr %3 to i64
  %i.bg = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = sdiv exact i64 %i.bh, 56
  %i.bj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bi, i1 true)
  %i.bk = shl nuw nsw i64 %i.bj, 1
  %i.bl = xor i64 %i.bk, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEElNS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_T1_(ptr %2, ptr %3, i64 noundef %i.bl, i32 0)
  %i.bm = icmp sgt i64 %i.bh, 896
  br i1 %i.bm, label %bb.p, label %.preheader.i82

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 48
  %scevgep201 = getelementptr i8, ptr %2, i64 56
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %bb.p
  %.sroa.0.025.i122.idx = phi i64 [ 56, %bb.p ], [ %.sroa.0.025.i122.add, %bb.u ] ; 4 uses
  %.pn24.i123 = phi ptr [ %2, %bb.p ], [ %.sroa.0.025.i122.ptr, %bb.u ] ; 4 uses
  %.sroa.0.025.i122.ptr = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.025.i122.idx ; 4 uses
  %i.bo = load double, ptr %.sroa.0.025.i122.ptr, align 8, !tbaa !53 ; 5 uses
  %i.bp = load double, ptr %2, align 8, !tbaa !53 ; 2 uses
  %i.bq = fcmp olt double %i.bo, %i.bp
  br i1 %i.bq, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i148, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = fcmp oeq double %i.bo, %i.bp
  %i.bs = getelementptr inbounds nuw i8, ptr %.pn24.i123, i64 104
  %i.bt = load ptr, ptr %i.bs, align 8            ; 3 uses
  br i1 %i.br, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i147, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i125

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i147: ; preds = %bb.r
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !1459
  %i.bv = icmp ult ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i148, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i125

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i148: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i147, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i122.ptr, i64 56, i1 false)
  %i.bw = icmp samesign ugt i64 %.sroa.0.025.i122.idx, 56
  br i1 %i.bw, label %bb.s, label %bb.t, !prof !1461

bb.s:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i148
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep201, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %.sroa.0.025.i122.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i149

bb.t:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i148
  %i.bx = getelementptr inbounds nuw i8, ptr %.pn24.i123, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bx, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i149

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i149: ; preds = %bb.t, %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %7, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.u

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i125: ; preds = %bb.r, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i147
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i117)
  %.sroa.6.0..sroa_idx.i.i127 = getelementptr inbounds nuw i8, ptr %.pn24.i123, i64 64
  %i.by = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i127, align 8
  %.sroa.10.0..sroa_idx.i.i131 = getelementptr inbounds nuw i8, ptr %.pn24.i123, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i117, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i131, i64 24, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i134

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i134: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i146, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i125
  %.sroa.014.0.us.i.i135 = phi ptr [ %.sroa.0.0.us.i.i136, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i146 ], [ %.sroa.0.025.i122.ptr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i125 ] ; 7 uses
  %.sroa.0.0.us.i.i136 = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i135, i64 -56 ; 3 uses
  %i.bz = load double, ptr %.sroa.0.0.us.i.i136, align 8, !tbaa !53 ; 2 uses
  %i.ca = fcmp olt double %i.bo, %i.bz
  br i1 %i.ca, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i146, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i137

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i137: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i134
  %i.cb = fcmp oeq double %i.bo, %i.bz
  br i1 %i.cb, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i145, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i138

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i145: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i137
  %i.cc = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i135, i64 -8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1459
  %i.ce = icmp ult ptr %i.bt, %i.cd
  br i1 %i.ce, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i146, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i138

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i146: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i145, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i134
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i135, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i136, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i134, !llvm.loop !1519

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i138: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i145, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i137
  store double %i.bo, ptr %.sroa.014.0.us.i.i135, align 8
  %.sroa.6.0..sroa_idx5.i.i139 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i135, i64 8
  store <2 x double> %i.by, ptr %.sroa.6.0..sroa_idx5.i.i139, align 8
  %.sroa.10.0..sroa_idx9.i.i141 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i135, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i141, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i117, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i142 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i135, i64 48
  store ptr %i.bt, ptr %.sroa.1010.0..sroa_idx11.i.i142, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i117)
  br label %bb.u

bb.u:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i138, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i149
  %.sroa.0.025.i122.add = add nuw nsw i64 %.sroa.0.025.i122.idx, 56 ; 2 uses
  %.not.i144 = icmp eq i64 %.sroa.0.025.i122.add, 896
  br i1 %.not.i144, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_.exit152, label %bb.q, !llvm.loop !1520

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_.exit152: ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 896 ; 2 uses
  %.not9.i.i19 = icmp eq ptr %i.cf, %3
  br i1 %.not9.i.i19, label %.preheader180.lr.ph, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i21

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i21: ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_.exit152, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35
  %.sroa.0.010.us.i.i22 = phi ptr [ %i.co, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35 ], [ %i.cf, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_.exit152 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i18)
  %i.cg = load <2 x double>, ptr %.sroa.0.010.us.i.i22, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx.i.us.i.i26 = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i22, i64 16
  %.sroa.8.0.copyload.i.us.i.i27 = load double, ptr %.sroa.8.0..sroa_idx.i.us.i.i26, align 8
  %.sroa.10.0..sroa_idx.i.us.i.i28 = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i22, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i18, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.us.i.i28, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.us.i.i29 = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i22, i64 48
  %.sroa.1010.0.copyload.i.us.i.i30 = load ptr, ptr %.sroa.1010.0..sroa_idx.i.us.i.i29, align 8 ; 2 uses
  %i.ch = extractelement <2 x double> %i.cg, i64 0 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i31

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i31: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i42, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i21
  %.sroa.014.0.us.i.us.i.i32 = phi ptr [ %.sroa.0.0.us.i.us.i.i33, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i42 ], [ %.sroa.0.010.us.i.i22, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i21 ] ; 7 uses
  %.sroa.0.0.us.i.us.i.i33 = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i32, i64 -56 ; 3 uses
  %i.ci = load double, ptr %.sroa.0.0.us.i.us.i.i33, align 8, !tbaa !53 ; 2 uses
  %i.cj = fcmp olt double %i.ch, %i.ci
  br i1 %i.cj, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i42, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i34

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i34: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i31
  %i.ck = fcmp oeq double %i.ch, %i.ci
  br i1 %i.ck, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i41, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i41: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i34
  %i.cl = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i32, i64 -8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !1459
  %i.cn = icmp ult ptr %.sroa.1010.0.copyload.i.us.i.i30, %i.cm
  br i1 %i.cn, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i42, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i42: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i41, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i31
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.us.i.i32, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.us.i.i33, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i31, !llvm.loop !1519

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i41, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i34
  store <2 x double> %i.cg, ptr %.sroa.014.0.us.i.us.i.i32, align 8
  %.sroa.8.0..sroa_idx7.i.us.i.i37 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i32, i64 16
  store double %.sroa.8.0.copyload.i.us.i.i27, ptr %.sroa.8.0..sroa_idx7.i.us.i.i37, align 8
  %.sroa.10.0..sroa_idx9.i.us.i.i38 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i32, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.us.i.i38, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i18, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.us.i.i39 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i32, i64 48
  store ptr %.sroa.1010.0.copyload.i.us.i.i30, ptr %.sroa.1010.0..sroa_idx11.i.us.i.i39, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i18)
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i22, i64 56 ; 2 uses
  %.not.us.i.i40 = icmp eq ptr %i.co, %3
  br i1 %.not.us.i.i40, label %.preheader180.lr.ph, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i21, !llvm.loop !1521

.preheader.i82:                                   ; preds = %bb.o
  %.sroa.0.022.i83 = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %.not23.i84 = icmp eq ptr %.sroa.0.022.i83, %3
  br i1 %.not23.i84, label %.preheader180.lr.ph, label %.lr.ph.i85

.lr.ph.i85:                                       ; preds = %.preheader.i82
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.v

bb.v:                                             ; preds = %bb.aa, %.lr.ph.i85
  %.sroa.0.025.i86 = phi ptr [ %.sroa.0.022.i83, %.lr.ph.i85 ], [ %.sroa.0.0.i107, %bb.aa ] ; 6 uses
  %.pn24.i87 = phi ptr [ %2, %.lr.ph.i85 ], [ %.sroa.0.025.i86, %bb.aa ] ; 5 uses
  %i.cq = load double, ptr %.sroa.0.025.i86, align 8, !tbaa !53 ; 5 uses
  %i.cr = load double, ptr %2, align 8, !tbaa !53 ; 2 uses
  %i.cs = fcmp olt double %i.cq, %i.cr
  br i1 %i.cs, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i112, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = fcmp oeq double %i.cq, %i.cr
  br i1 %i.ct, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i111, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i89

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i111: ; preds = %bb.w
  %i.cu = getelementptr inbounds nuw i8, ptr %.pn24.i87, i64 104
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !1459
  %i.cw = load ptr, ptr %i.cp, align 8, !tbaa !1459
  %i.cx = icmp ult ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i112, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i89

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i112: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i111, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i86, i64 56, i1 false)
  %i.cy = ptrtoint ptr %.sroa.0.025.i86 to i64
  %i.cz = sub i64 %i.cy, %i.bg                    ; 3 uses
  %i.da = icmp sgt i64 %i.cz, 56
  br i1 %i.da, label %bb.x, label %bb.y, !prof !1461

bb.x:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i112
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0.022.i83, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %i.cz, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i113

bb.y:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i112
  %i.db = icmp eq i64 %i.cz, 56
  br i1 %i.db, label %bb.z, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i113

bb.z:                                             ; preds = %bb.y
  %i.dc = getelementptr inbounds nuw i8, ptr %.pn24.i87, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dc, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i113

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i113: ; preds = %bb.z, %bb.y, %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %8, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.aa

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i89: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i111, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i81)
  %.sroa.6.0..sroa_idx.i.i91 = getelementptr inbounds nuw i8, ptr %.pn24.i87, i64 64
  %i.dd = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i91, align 8
  %.sroa.10.0..sroa_idx.i.i95 = getelementptr inbounds nuw i8, ptr %.pn24.i87, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i81, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i95, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.i96 = getelementptr inbounds nuw i8, ptr %.pn24.i87, i64 104
  %.sroa.1010.0.copyload.i.i97 = load ptr, ptr %.sroa.1010.0..sroa_idx.i.i96, align 8 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i98

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i98: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i110, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i89
  %.sroa.014.0.us.i.i99 = phi ptr [ %.sroa.0.0.us.i.i100, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i110 ], [ %.sroa.0.025.i86, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i89 ] ; 7 uses
  %.sroa.0.0.us.i.i100 = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i99, i64 -56 ; 3 uses
  %i.de = load double, ptr %.sroa.0.0.us.i.i100, align 8, !tbaa !53 ; 2 uses
  %i.df = fcmp olt double %i.cq, %i.de
  br i1 %i.df, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i110, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i101

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i101: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i98
  %i.dg = fcmp oeq double %i.cq, %i.de
  br i1 %i.dg, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i109, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i102

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i109: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i101
  %i.dh = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i99, i64 -8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !1459
  %i.dj = icmp ult ptr %.sroa.1010.0.copyload.i.i97, %i.di
  br i1 %i.dj, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i110, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i102

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i110: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i109, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i98
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i99, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i100, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i98, !llvm.loop !1519

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i102: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i109, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i101
  store double %i.cq, ptr %.sroa.014.0.us.i.i99, align 8
  %.sroa.6.0..sroa_idx5.i.i103 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i99, i64 8
  store <2 x double> %i.dd, ptr %.sroa.6.0..sroa_idx5.i.i103, align 8
  %.sroa.10.0..sroa_idx9.i.i105 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i99, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i105, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i81, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i106 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i99, i64 48
  store ptr %.sroa.1010.0.copyload.i.i97, ptr %.sroa.1010.0..sroa_idx11.i.i106, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i81)
  br label %bb.aa

bb.aa:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i102, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i113
  %.sroa.0.0.i107 = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i86, i64 56 ; 2 uses
  %.not.i108 = icmp eq ptr %.sroa.0.0.i107, %3
  br i1 %.not.i108, label %.preheader180.lr.ph, label %bb.v, !llvm.loop !1520

.preheader180.lr.ph:                              ; preds = %bb.aa, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_.exit152, %.preheader.i82
  %.not188 = icmp slt i32 %5, 1
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %exitcond.peel.not = icmp eq i32 %5, 1
  br label %.preheader180

.preheader180:                                    ; preds = %.preheader180.lr.ph, %.critedge2
  %.sroa.0159.0197 = phi ptr [ %2, %.preheader180.lr.ph ], [ %i.ez, %.critedge2 ] ; 11 uses
  %.sroa.0172.0196 = phi ptr [ %0, %.preheader180.lr.ph ], [ %.sroa.0172.1.lcssa, %.critedge2 ] ; 3 uses
  %.not178183 = icmp eq ptr %.sroa.0172.0196, %1
  br i1 %.not178183, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader180
  %i.dm = load double, ptr %.sroa.0159.0197, align 8, !tbaa !53 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0159.0197, i64 48
  br label %bb.ab

._crit_edge198:                                   ; preds = %.critedge2, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit
  ret void

bb.ab:                                            ; preds = %.lr.ph, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit.thread
  %.sroa.0172.1184 = phi ptr [ %.sroa.0172.0196, %.lr.ph ], [ %i.dv, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit.thread ] ; 5 uses
  %i.do = load double, ptr %.sroa.0172.1184, align 8, !tbaa !53 ; 2 uses
  %i.dp = fcmp olt double %i.do, %i.dm
  br i1 %i.dp, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dq = fcmp oeq double %i.do, %i.dm
  br i1 %i.dq, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit, label %.critedge

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit: ; preds = %bb.ac
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0172.1184, i64 48
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !1459
  %i.dt = load ptr, ptr %i.dn, align 8, !tbaa !1459
  %i.du = icmp ult ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit.thread, label %.critedge

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit.thread: ; preds = %bb.ab, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0172.1184, i64 56 ; 3 uses
  %.not178 = icmp eq ptr %i.dv, %1
  br i1 %.not178, label %.critedge, label %bb.ab, !llvm.loop !1522

.critedge:                                        ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit.thread, %bb.ac, %.preheader180
  %.sroa.0172.1.lcssa = phi ptr [ %.sroa.0172.0196, %.preheader180 ], [ %.sroa.0172.1184, %bb.ac ], [ %i.dv, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit.thread ], [ %.sroa.0172.1184, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit ] ; 3 uses
  %.not179190 = icmp eq ptr %.sroa.0172.1.lcssa, %1
  br i1 %.not179190, label %.critedge2, label %.lr.ph193

.lr.ph193:                                        ; preds = %.critedge
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0159.0197, i64 24
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0159.0197, i64 48
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0159.0197, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0159.0197, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0159.0197, i64 32
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0159.0197, i64 40
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph193, %.thread
  %.sroa.0.0191 = phi ptr [ %.sroa.0172.1.lcssa, %.lr.ph193 ], [ %i.ey, %.thread ] ; 9 uses
  %i.eb = load double, ptr %i.dw, align 8, !tbaa !53
  %i.ec = load double, ptr %.sroa.0.0191, align 8, !tbaa !53
  %i.ed = fcmp ogt double %i.eb, %i.ec
  br i1 %i.ed, label %bb.ae, label %.critedge2

bb.ae:                                            ; preds = %bb.ad
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0.0191, i64 48
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !1459
  %i.eg = load ptr, ptr %i.dx, align 8, !tbaa !1459
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.ae
  br i1 %.not188, label %._crit_edge, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i.preheader

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i.preheader: ; preds = %.preheader
  %i.ei = load double, ptr %i.ea, align 8, !tbaa !53
  %.in.i.i.i.i.peel = getelementptr inbounds nuw i8, ptr %.sroa.0.0191, i64 8
  %i.ej = load double, ptr %.in.i.i.i.i.peel, align 8, !tbaa !53
  %i.ek = fcmp ogt double %i.ei, %i.ej
  br i1 %i.ek, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE14does_intersectERKSF_SJ_i.exit.peel, label %.thread

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE14does_intersectERKSF_SJ_i.exit.peel: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i.preheader
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0.0191, i64 32
  %i.em = load double, ptr %i.el, align 8, !tbaa !53
  %i.en = load double, ptr %i.dy, align 8, !tbaa !53
  %i.eo = fcmp ogt double %i.em, %i.en
  br i1 %i.eo, label %bb.af, label %.thread

bb.af:                                            ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE14does_intersectERKSF_SJ_i.exit.peel
  br i1 %exitcond.peel.not, label %._crit_edge, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next: ; preds = %bb.af
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !53
  %.in.i.i.i.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0.0191, i64 16
  %.pre205 = load double, ptr %.in.i.i.i.i.phi.trans.insert, align 8, !tbaa !53
  %i.ep = fcmp ogt double %.pre, %.pre205
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0.0191, i64 40
  br label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i

bb.ag:                                            ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE14does_intersectERKSF_SJ_i.exit
  %i.er = add nuw i32 %.0189, 1
  %exitcond.not = icmp eq i32 %.0189, %5
  br i1 %exitcond.not, label %._crit_edge, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i, !llvm.loop !1523

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next, %bb.ag
  %.0189 = phi i32 [ %i.er, %bb.ag ], [ 2, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next ] ; 2 uses
  br i1 %i.ep, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE14does_intersectERKSF_SJ_i.exit, label %.thread

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE14does_intersectERKSF_SJ_i.exit: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i
  %i.es = load double, ptr %i.eq, align 8, !tbaa !53
  %i.et = load double, ptr %i.dz, align 8, !tbaa !53
  %i.eu = fcmp ogt double %i.es, %i.et
  br i1 %i.eu, label %bb.ag, label %.thread

._crit_edge:                                      ; preds = %bb.ag, %bb.af, %.preheader
  %i.ev = load ptr, ptr %i.dk, align 8, !tbaa !88
  %.not.i.i15 = icmp eq ptr %i.ev, null           ; 2 uses
  br i1 %6, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %._crit_edge
  br i1 %.not.i.i15, label %bb.ai, label %_ZNKSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEclESG_SG_.exit

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZSt25__throw_bad_function_callv() #43
  unreachable

_ZNKSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEclESG_SG_.exit: ; preds = %bb.ah
  %i.ew = load ptr, ptr %i.dl, align 8, !tbaa !85
  tail call void %i.ew(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0191, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0159.0197), !inline_history !1467
  br label %.thread

bb.aj:                                            ; preds = %._crit_edge
  br i1 %.not.i.i15, label %bb.ak, label %_ZNKSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEclESG_SG_.exit17

bb.ak:                                            ; preds = %bb.aj
  tail call void @_ZSt25__throw_bad_function_callv() #43
  unreachable

_ZNKSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEclESG_SG_.exit17: ; preds = %bb.aj
  %i.ex = load ptr, ptr %i.dl, align 8, !tbaa !85
  tail call void %i.ex(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0159.0197, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0191), !inline_history !1467
  br label %.thread

.thread:                                          ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE14does_intersectERKSF_SJ_i.exit, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i.preheader, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE14does_intersectERKSF_SJ_i.exit.peel, %_ZNKSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEclESG_SG_.exit17, %_ZNKSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEclESG_SG_.exit, %bb.ae
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.0191, i64 56 ; 2 uses
  %.not179 = icmp eq ptr %i.ey, %1
  br i1 %.not179, label %.critedge2, label %bb.ad, !llvm.loop !1524

.critedge2:                                       ; preds = %.thread, %bb.ad, %.critedge
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0159.0197, i64 56 ; 2 uses
  %.not177 = icmp eq ptr %i.ez, %3
  br i1 %.not177, label %._crit_edge198, label %.preheader180, !llvm.loop !1525
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL18Box_intersection_d21modified_two_way_scanIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_St8functionIFvRKSE_SL_EENS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb0EEEEEvT_SS_T0_ST_T1_T2_ib(ptr %0, ptr %1, ptr %2, ptr %3, ptr noundef align 8 %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #4 comdat {
bb.a:
  %.sroa.10.i.i164 = alloca [3 x double], align 8 ; 4 uses
  %7 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d", align 8 ; 4 uses
  %.sroa.10.i.i128 = alloca [3 x double], align 8 ; 4 uses
  %8 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d", align 8 ; 4 uses
  %.sroa.10.i.i92 = alloca [3 x double], align 8  ; 4 uses
  %9 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d", align 8 ; 4 uses
  %.sroa.10.i.i = alloca [3 x double], align 8    ; 4 uses
  %10 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d", align 8 ; 4 uses
  %.sroa.10.i.i.i65 = alloca [3 x double], align 8 ; 4 uses
  %.sroa.10.i.i.i = alloca [3 x double], align 8  ; 4 uses
  %.not.i.i = icmp eq ptr %0, %1
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = sdiv exact i64 %i.c, 56
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = shl nuw nsw i64 %i.e, 1
  %i.g = xor i64 %i.f, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEElNS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_T1_(ptr %0, ptr %1, i64 noundef %i.g, i32 0)
  %i.h = icmp sgt i64 %i.c, 896
  br i1 %i.h, label %bb.c, label %.preheader.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %scevgep = getelementptr i8, ptr %0, i64 56
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.c
  %.sroa.0.025.i97.idx = phi i64 [ 56, %bb.c ], [ %.sroa.0.025.i97.add, %bb.h ] ; 4 uses
  %.pn24.i98 = phi ptr [ %0, %bb.c ], [ %.sroa.0.025.i97.ptr, %bb.h ] ; 4 uses
  %.sroa.0.025.i97.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.025.i97.idx ; 4 uses
  %i.j = load double, ptr %.sroa.0.025.i97.ptr, align 8, !tbaa !53 ; 5 uses
  %i.k = load double, ptr %0, align 8, !tbaa !53  ; 2 uses
  %i.l = fcmp olt double %i.j, %i.k
  br i1 %i.l, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i123, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = fcmp oeq double %i.j, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %.pn24.i98, i64 104
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  br i1 %i.m, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i122, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i100

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i122: ; preds = %bb.e
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !1459
  %i.q = icmp ult ptr %i.o, %i.p
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i123, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i100

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i123: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i122, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i97.ptr, i64 56, i1 false)
  %i.r = icmp samesign ugt i64 %.sroa.0.025.i97.idx, 56
  br i1 %i.r, label %bb.f, label %bb.g, !prof !1461

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i123
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.025.i97.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i124

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i123
  %i.s = getelementptr inbounds nuw i8, ptr %.pn24.i98, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i124

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i124: ; preds = %bb.g, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %9, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.h

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i100: ; preds = %bb.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i122
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i92)
  %.sroa.6.0..sroa_idx.i.i102 = getelementptr inbounds nuw i8, ptr %.pn24.i98, i64 64
  %i.t = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i102, align 8
  %.sroa.10.0..sroa_idx.i.i106 = getelementptr inbounds nuw i8, ptr %.pn24.i98, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i92, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i106, i64 24, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i109

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i109: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i121, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i100
  %.sroa.014.0.us.i.i110 = phi ptr [ %.sroa.0.0.us.i.i111, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i121 ], [ %.sroa.0.025.i97.ptr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i100 ] ; 7 uses
  %.sroa.0.0.us.i.i111 = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i110, i64 -56 ; 3 uses
  %i.u = load double, ptr %.sroa.0.0.us.i.i111, align 8, !tbaa !53 ; 2 uses
  %i.v = fcmp olt double %i.j, %i.u
  br i1 %i.v, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i121, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i112

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i112: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i109
  %i.w = fcmp oeq double %i.j, %i.u
  br i1 %i.w, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i120, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i113

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i120: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i112
  %i.x = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i110, i64 -8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1459
  %i.z = icmp ult ptr %i.o, %i.y
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i121, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i113

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i121: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i120, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i109
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i110, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i111, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i109, !llvm.loop !1519

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i113: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i120, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i112
  store double %i.j, ptr %.sroa.014.0.us.i.i110, align 8
  %.sroa.6.0..sroa_idx5.i.i114 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i110, i64 8
  store <2 x double> %i.t, ptr %.sroa.6.0..sroa_idx5.i.i114, align 8
  %.sroa.10.0..sroa_idx9.i.i116 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i110, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i116, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i92, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i117 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i110, i64 48
  store ptr %i.o, ptr %.sroa.1010.0..sroa_idx11.i.i117, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i92)
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i113, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i124
  %.sroa.0.025.i97.add = add nuw nsw i64 %.sroa.0.025.i97.idx, 56 ; 2 uses
  %.not.i119 = icmp eq i64 %.sroa.0.025.i97.add, 896
  br i1 %.not.i119, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_.exit127, label %bb.d, !llvm.loop !1520

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_.exit127: ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.aa, %1
  br i1 %.not9.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i: ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_.exit127, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i
  %.sroa.0.010.us.i.i = phi ptr [ %i.aj, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i ], [ %i.aa, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_.exit127 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i)
  %i.ab = load <2 x double>, ptr %.sroa.0.010.us.i.i, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i, i64 16
  %.sroa.8.0.copyload.i.us.i.i = load double, ptr %.sroa.8.0..sroa_idx.i.us.i.i, align 8
  %.sroa.10.0..sroa_idx.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.us.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i, i64 48
  %.sroa.1010.0.copyload.i.us.i.i = load ptr, ptr %.sroa.1010.0..sroa_idx.i.us.i.i, align 8 ; 2 uses
  %i.ac = extractelement <2 x double> %i.ab, i64 0 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i
  %.sroa.014.0.us.i.us.i.i = phi ptr [ %.sroa.0.0.us.i.us.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i ], [ %.sroa.0.010.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i ] ; 7 uses
  %.sroa.0.0.us.i.us.i.i = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i, i64 -56 ; 3 uses
  %i.ad = load double, ptr %.sroa.0.0.us.i.us.i.i, align 8, !tbaa !53 ; 2 uses
  %i.ae = fcmp olt double %i.ac, %i.ad
  br i1 %i.ae, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i
  %i.af = fcmp oeq double %i.ac, %i.ad
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i
  %i.ag = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i, i64 -8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1459
  %i.ai = icmp ult ptr %.sroa.1010.0.copyload.i.us.i.i, %i.ah
  br i1 %i.ai, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.us.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.us.i.i, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i, !llvm.loop !1519

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i
  store <2 x double> %i.ab, ptr %.sroa.014.0.us.i.us.i.i, align 8
  %.sroa.8.0..sroa_idx7.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i, i64 16
  store double %.sroa.8.0.copyload.i.us.i.i, ptr %.sroa.8.0..sroa_idx7.i.us.i.i, align 8
  %.sroa.10.0..sroa_idx9.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.us.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i, i64 48
  store ptr %.sroa.1010.0.copyload.i.us.i.i, ptr %.sroa.1010.0..sroa_idx11.i.us.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i)
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i, i64 56 ; 2 uses
  %.not.us.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.us.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i, !llvm.loop !1521

.preheader.i:                                     ; preds = %bb.b
  %.sroa.0.022.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.not23.i = icmp eq ptr %.sroa.0.022.i, %1
  br i1 %.not23.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i
  %.sroa.0.025.i = phi ptr [ %.sroa.0.022.i, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.n ] ; 6 uses
  %.pn24.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.025.i, %bb.n ] ; 5 uses
  %i.al = load double, ptr %.sroa.0.025.i, align 8, !tbaa !53 ; 5 uses
  %i.am = load double, ptr %0, align 8, !tbaa !53 ; 2 uses
  %i.an = fcmp olt double %i.al, %i.am
  br i1 %i.an, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = fcmp oeq double %i.al, %i.am
  br i1 %i.ao, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i: ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1459
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !1459
  %i.as = icmp ult ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i, i64 56, i1 false)
  %i.at = ptrtoint ptr %.sroa.0.025.i to i64
  %i.au = sub i64 %i.at, %i.b                     ; 3 uses
  %i.av = icmp sgt i64 %i.au, 56
  br i1 %i.av, label %bb.k, label %bb.l, !prof !1461

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0.022.i, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.au, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i
  %i.aw = icmp eq i64 %i.au, 56
  br i1 %i.aw, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ax, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %10, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.n

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i)
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 64
  %i.ay = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 104
  %.sroa.1010.0.copyload.i.i = load ptr, ptr %.sroa.1010.0..sroa_idx.i.i, align 8 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i
  %.sroa.014.0.us.i.i = phi ptr [ %.sroa.0.0.us.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i ], [ %.sroa.0.025.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i ] ; 7 uses
  %.sroa.0.0.us.i.i = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i, i64 -56 ; 3 uses
  %i.az = load double, ptr %.sroa.0.0.us.i.i, align 8, !tbaa !53 ; 2 uses
  %i.ba = fcmp olt double %i.al, %i.az
  br i1 %i.ba, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i
  %i.bb = fcmp oeq double %i.al, %i.az
  br i1 %i.bb, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i
  %i.bc = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i, i64 -8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1459
  %i.be = icmp ult ptr %.sroa.1010.0.copyload.i.i, %i.bd
  br i1 %i.be, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i, !llvm.loop !1519

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i
  store double %i.al, ptr %.sroa.014.0.us.i.i, align 8
  %.sroa.6.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i, i64 8
  store <2 x double> %i.ay, ptr %.sroa.6.0..sroa_idx5.i.i, align 8
  %.sroa.10.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i, i64 48
  store ptr %.sroa.1010.0.copyload.i.i, ptr %.sroa.1010.0..sroa_idx11.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i)
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i, i64 56 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %1
  br i1 %.not.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit, label %bb.i, !llvm.loop !1520

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_.exit127, %.preheader.i, %bb.a
  %.not.i.i24 = icmp eq ptr %2, %3
  br i1 %.not.i.i24, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit25, label %bb.o

bb.o:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit
  %i.bf = ptrtoint ptr %3 to i64
  %i.bg = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = sdiv exact i64 %i.bh, 56
  %i.bj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bi, i1 true)
  %i.bk = shl nuw nsw i64 %i.bj, 1
  %i.bl = xor i64 %i.bk, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEElNS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_T1_(ptr %2, ptr %3, i64 noundef %i.bl, i32 0)
  %i.bm = icmp sgt i64 %i.bh, 896
  br i1 %i.bm, label %bb.p, label %.preheader.i129

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 48
  %scevgep272 = getelementptr i8, ptr %2, i64 56
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %bb.p
  %.sroa.0.025.i169.idx = phi i64 [ 56, %bb.p ], [ %.sroa.0.025.i169.add, %bb.u ] ; 4 uses
  %.pn24.i170 = phi ptr [ %2, %bb.p ], [ %.sroa.0.025.i169.ptr, %bb.u ] ; 4 uses
  %.sroa.0.025.i169.ptr = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.025.i169.idx ; 4 uses
  %i.bo = load double, ptr %.sroa.0.025.i169.ptr, align 8, !tbaa !53 ; 5 uses
  %i.bp = load double, ptr %2, align 8, !tbaa !53 ; 2 uses
  %i.bq = fcmp olt double %i.bo, %i.bp
  br i1 %i.bq, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i195, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = fcmp oeq double %i.bo, %i.bp
  %i.bs = getelementptr inbounds nuw i8, ptr %.pn24.i170, i64 104
  %i.bt = load ptr, ptr %i.bs, align 8            ; 3 uses
  br i1 %i.br, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i194, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i172

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i194: ; preds = %bb.r
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !1459
  %i.bv = icmp ult ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i195, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i172

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i195: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i194, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i169.ptr, i64 56, i1 false)
  %i.bw = icmp samesign ugt i64 %.sroa.0.025.i169.idx, 56
  br i1 %i.bw, label %bb.s, label %bb.t, !prof !1461

bb.s:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i195
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep272, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %.sroa.0.025.i169.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i196

bb.t:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i195
  %i.bx = getelementptr inbounds nuw i8, ptr %.pn24.i170, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bx, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i196

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i196: ; preds = %bb.t, %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %7, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.u

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i172: ; preds = %bb.r, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i194
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i164)
  %.sroa.6.0..sroa_idx.i.i174 = getelementptr inbounds nuw i8, ptr %.pn24.i170, i64 64
  %i.by = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i174, align 8
  %.sroa.10.0..sroa_idx.i.i178 = getelementptr inbounds nuw i8, ptr %.pn24.i170, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i164, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i178, i64 24, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i181

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i181: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i193, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i172
  %.sroa.014.0.us.i.i182 = phi ptr [ %.sroa.0.0.us.i.i183, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i193 ], [ %.sroa.0.025.i169.ptr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i172 ] ; 7 uses
  %.sroa.0.0.us.i.i183 = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i182, i64 -56 ; 3 uses
  %i.bz = load double, ptr %.sroa.0.0.us.i.i183, align 8, !tbaa !53 ; 2 uses
  %i.ca = fcmp olt double %i.bo, %i.bz
  br i1 %i.ca, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i193, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i184

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i184: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i181
  %i.cb = fcmp oeq double %i.bo, %i.bz
  br i1 %i.cb, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i192, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i185

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i192: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i184
  %i.cc = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i182, i64 -8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1459
  %i.ce = icmp ult ptr %i.bt, %i.cd
  br i1 %i.ce, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i193, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i185

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i193: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i192, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i181
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i182, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i183, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i181, !llvm.loop !1519

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i185: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i192, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i184
  store double %i.bo, ptr %.sroa.014.0.us.i.i182, align 8
  %.sroa.6.0..sroa_idx5.i.i186 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i182, i64 8
  store <2 x double> %i.by, ptr %.sroa.6.0..sroa_idx5.i.i186, align 8
  %.sroa.10.0..sroa_idx9.i.i188 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i182, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i188, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i164, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i189 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i182, i64 48
  store ptr %i.bt, ptr %.sroa.1010.0..sroa_idx11.i.i189, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i164)
  br label %bb.u

bb.u:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i185, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i196
  %.sroa.0.025.i169.add = add nuw nsw i64 %.sroa.0.025.i169.idx, 56 ; 2 uses
  %.not.i191 = icmp eq i64 %.sroa.0.025.i169.add, 896
  br i1 %.not.i191, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_.exit199, label %bb.q, !llvm.loop !1520

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_.exit199: ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 896 ; 2 uses
  %.not9.i.i66 = icmp eq ptr %i.cf, %3
  br i1 %.not9.i.i66, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit25, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i68

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i68: ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_.exit199, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i82
  %.sroa.0.010.us.i.i69 = phi ptr [ %i.co, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i82 ], [ %i.cf, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_.exit199 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i65)
  %i.cg = load <2 x double>, ptr %.sroa.0.010.us.i.i69, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx.i.us.i.i73 = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i69, i64 16
  %.sroa.8.0.copyload.i.us.i.i74 = load double, ptr %.sroa.8.0..sroa_idx.i.us.i.i73, align 8
  %.sroa.10.0..sroa_idx.i.us.i.i75 = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i69, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i65, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.us.i.i75, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.us.i.i76 = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i69, i64 48
  %.sroa.1010.0.copyload.i.us.i.i77 = load ptr, ptr %.sroa.1010.0..sroa_idx.i.us.i.i76, align 8 ; 2 uses
  %i.ch = extractelement <2 x double> %i.cg, i64 0 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i78

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i78: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i89, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i68
  %.sroa.014.0.us.i.us.i.i79 = phi ptr [ %.sroa.0.0.us.i.us.i.i80, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i89 ], [ %.sroa.0.010.us.i.i69, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i68 ] ; 7 uses
  %.sroa.0.0.us.i.us.i.i80 = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i79, i64 -56 ; 3 uses
  %i.ci = load double, ptr %.sroa.0.0.us.i.us.i.i80, align 8, !tbaa !53 ; 2 uses
  %i.cj = fcmp olt double %i.ch, %i.ci
  br i1 %i.cj, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i89, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i81

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i81: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i78
  %i.ck = fcmp oeq double %i.ch, %i.ci
  br i1 %i.ck, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i88, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i82

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i88: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i81
  %i.cl = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i79, i64 -8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !1459
  %i.cn = icmp ult ptr %.sroa.1010.0.copyload.i.us.i.i77, %i.cm
  br i1 %i.cn, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i89, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i82

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i89: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i88, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i78
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.us.i.i79, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.us.i.i80, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i78, !llvm.loop !1519

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i82: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i88, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i81
  store <2 x double> %i.cg, ptr %.sroa.014.0.us.i.us.i.i79, align 8
  %.sroa.8.0..sroa_idx7.i.us.i.i84 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i79, i64 16
  store double %.sroa.8.0.copyload.i.us.i.i74, ptr %.sroa.8.0..sroa_idx7.i.us.i.i84, align 8
  %.sroa.10.0..sroa_idx9.i.us.i.i85 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i79, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.us.i.i85, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i65, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.us.i.i86 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i79, i64 48
  store ptr %.sroa.1010.0.copyload.i.us.i.i77, ptr %.sroa.1010.0..sroa_idx11.i.us.i.i86, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i65)
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i69, i64 56 ; 2 uses
  %.not.us.i.i87 = icmp eq ptr %i.co, %3
  br i1 %.not.us.i.i87, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit25, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i68, !llvm.loop !1521

.preheader.i129:                                  ; preds = %bb.o
  %.sroa.0.022.i130 = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %.not23.i131 = icmp eq ptr %.sroa.0.022.i130, %3
  br i1 %.not23.i131, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit25, label %.lr.ph.i132

.lr.ph.i132:                                      ; preds = %.preheader.i129
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.v

bb.v:                                             ; preds = %bb.aa, %.lr.ph.i132
  %.sroa.0.025.i133 = phi ptr [ %.sroa.0.022.i130, %.lr.ph.i132 ], [ %.sroa.0.0.i154, %bb.aa ] ; 6 uses
  %.pn24.i134 = phi ptr [ %2, %.lr.ph.i132 ], [ %.sroa.0.025.i133, %bb.aa ] ; 5 uses
  %i.cq = load double, ptr %.sroa.0.025.i133, align 8, !tbaa !53 ; 5 uses
  %i.cr = load double, ptr %2, align 8, !tbaa !53 ; 2 uses
  %i.cs = fcmp olt double %i.cq, %i.cr
  br i1 %i.cs, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i159, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = fcmp oeq double %i.cq, %i.cr
  br i1 %i.ct, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i158, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i136

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i158: ; preds = %bb.w
  %i.cu = getelementptr inbounds nuw i8, ptr %.pn24.i134, i64 104
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !1459
  %i.cw = load ptr, ptr %i.cp, align 8, !tbaa !1459
  %i.cx = icmp ult ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i159, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i136

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i159: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i158, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i133, i64 56, i1 false)
  %i.cy = ptrtoint ptr %.sroa.0.025.i133 to i64
  %i.cz = sub i64 %i.cy, %i.bg                    ; 3 uses
  %i.da = icmp sgt i64 %i.cz, 56
  br i1 %i.da, label %bb.x, label %bb.y, !prof !1461

bb.x:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i159
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0.022.i130, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %i.cz, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i160

bb.y:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i159
  %i.db = icmp eq i64 %i.cz, 56
  br i1 %i.db, label %bb.z, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i160

bb.z:                                             ; preds = %bb.y
  %i.dc = getelementptr inbounds nuw i8, ptr %.pn24.i134, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dc, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i160

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i160: ; preds = %bb.z, %bb.y, %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %8, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.aa

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i136: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i158, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i128)
  %.sroa.6.0..sroa_idx.i.i138 = getelementptr inbounds nuw i8, ptr %.pn24.i134, i64 64
  %i.dd = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i138, align 8
  %.sroa.10.0..sroa_idx.i.i142 = getelementptr inbounds nuw i8, ptr %.pn24.i134, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i128, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i142, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.i143 = getelementptr inbounds nuw i8, ptr %.pn24.i134, i64 104
  %.sroa.1010.0.copyload.i.i144 = load ptr, ptr %.sroa.1010.0..sroa_idx.i.i143, align 8 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i145

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i145: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i157, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i136
  %.sroa.014.0.us.i.i146 = phi ptr [ %.sroa.0.0.us.i.i147, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i157 ], [ %.sroa.0.025.i133, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i136 ] ; 7 uses
  %.sroa.0.0.us.i.i147 = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i146, i64 -56 ; 3 uses
  %i.de = load double, ptr %.sroa.0.0.us.i.i147, align 8, !tbaa !53 ; 2 uses
  %i.df = fcmp olt double %i.cq, %i.de
  br i1 %i.df, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i157, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i148

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i148: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i145
  %i.dg = fcmp oeq double %i.cq, %i.de
  br i1 %i.dg, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i156, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i149

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i156: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i148
  %i.dh = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i146, i64 -8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !1459
  %i.dj = icmp ult ptr %.sroa.1010.0.copyload.i.i144, %i.di
  br i1 %i.dj, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i157, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i149

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i157: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i156, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i145
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i146, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i147, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i145, !llvm.loop !1519

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i149: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i156, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i148
  store double %i.cq, ptr %.sroa.014.0.us.i.i146, align 8
  %.sroa.6.0..sroa_idx5.i.i150 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i146, i64 8
  store <2 x double> %i.dd, ptr %.sroa.6.0..sroa_idx5.i.i150, align 8
  %.sroa.10.0..sroa_idx9.i.i152 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i146, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i152, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i128, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i153 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i146, i64 48
  store ptr %.sroa.1010.0.copyload.i.i144, ptr %.sroa.1010.0..sroa_idx11.i.i153, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i128)
  br label %bb.aa

bb.aa:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i149, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i160
  %.sroa.0.0.i154 = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i133, i64 56 ; 2 uses
  %.not.i155 = icmp eq ptr %.sroa.0.0.i154, %3
  br i1 %.not.i155, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit25, label %bb.v, !llvm.loop !1520

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit25: ; preds = %bb.aa, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i82, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_.exit199, %.preheader.i129, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit
  %i.dk = icmp ne ptr %2, %3
  %i.dl = icmp ne ptr %0, %1
  %or.cond266 = and i1 %i.dk, %i.dl
  br i1 %or.cond266, label %.lr.ph269, label %.critedge

.lr.ph269:                                        ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit25
  %.not252 = icmp slt i32 %5, 1                   ; 2 uses
  %switch.selectcmp.i.i.i.i52 = icmp eq i32 %5, 1
  %switch.select.i.i.i.i53 = select i1 %switch.selectcmp.i.i.i.i52, i64 32, i64 40
  %switch.selectcmp2.i.i.i.i54 = icmp eq i32 %5, 0
  %switch.select3.i.i.i.i55 = select i1 %switch.selectcmp2.i.i.i.i54, i64 24, i64 %switch.select.i.i.i.i53 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.do = add nuw i32 %5, 1                       ; 2 uses
  %exitcond.peel.not = icmp eq i32 %i.do, 2
  %exitcond274.peel.not = icmp eq i32 %i.do, 2
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph269, %bb.bb
  %.sroa.0230.0268 = phi ptr [ %0, %.lr.ph269 ], [ %.sroa.0230.1, %bb.bb ] ; 17 uses
  %.sroa.0219.0267 = phi ptr [ %2, %.lr.ph269 ], [ %.sroa.0219.1, %bb.bb ] ; 17 uses
  %i.dp = load double, ptr %.sroa.0219.0267, align 8, !tbaa !53 ; 2 uses
  %i.dq = load double, ptr %.sroa.0230.0268, align 8, !tbaa !53 ; 2 uses
  %i.dr = fcmp olt double %i.dp, %i.dq
  br i1 %i.dr, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ds = fcmp oeq double %i.dp, %i.dq
  br i1 %i.ds, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit.thread239

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit: ; preds = %bb.ac
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0219.0267, i64 48
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !1459
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0230.0268, i64 48
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !1459
  %i.dx = icmp ult ptr %i.du, %i.dw
  br i1 %i.dx, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit.thread, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit.thread239

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit.thread: ; preds = %bb.ab, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit
  %.not248261 = icmp eq ptr %.sroa.0230.0268, %1
  br i1 %.not248261, label %.critedge2, label %.lr.ph264

.lr.ph264:                                        ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit.thread
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0219.0267, i64 24
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0219.0267, i64 48
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0219.0267, i64 8 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0219.0267, i64 16 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0219.0267, i64 %switch.select3.i.i.i.i55
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0219.0267, i64 32
  %.phi.trans.insert279 = getelementptr inbounds nuw i8, ptr %.sroa.0219.0267, i64 40
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph264, %.thread
  %.sroa.0207.0262 = phi ptr [ %.sroa.0230.0268, %.lr.ph264 ], [ %i.fr, %.thread ] ; 18 uses
  %i.ee = load double, ptr %i.dy, align 8, !tbaa !53
  %i.ef = load double, ptr %.sroa.0207.0262, align 8, !tbaa !53
  %i.eg = fcmp ogt double %i.ee, %i.ef
  br i1 %i.eg, label %bb.ae, label %.critedge2

bb.ae:                                            ; preds = %bb.ad
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0207.0262, i64 48
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !1459 ; 2 uses
  %i.ej = load ptr, ptr %i.dz, align 8, !tbaa !1459 ; 2 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.ae
  br i1 %.not252, label %._crit_edge260, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i.preheader

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i.preheader: ; preds = %.preheader
  %i.el = load double, ptr %i.ed, align 8, !tbaa !53
  %.in.i.i.i.i.peel = getelementptr inbounds nuw i8, ptr %.sroa.0207.0262, i64 8
  %i.em = load double, ptr %.in.i.i.i.i.peel, align 8, !tbaa !53
  %i.en = fcmp ogt double %i.el, %i.em
  br i1 %i.en, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE14does_intersectERKSF_SJ_i.exit.peel, label %.thread

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE14does_intersectERKSF_SJ_i.exit.peel: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i.preheader
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0207.0262, i64 32
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !53
  %i.eq = load double, ptr %i.ea, align 8, !tbaa !53
  %i.er = fcmp ogt double %i.ep, %i.eq
  br i1 %i.er, label %bb.af, label %.thread

bb.af:                                            ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE14does_intersectERKSF_SJ_i.exit.peel
  br i1 %exitcond274.peel.not, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next: ; preds = %bb.af
  %.pre280 = load double, ptr %.phi.trans.insert279, align 8, !tbaa !53
  %.in.i.i.i.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0207.0262, i64 16
  %.pre281 = load double, ptr %.in.i.i.i.i.phi.trans.insert, align 8, !tbaa !53
  %i.es = fcmp ogt double %.pre280, %.pre281
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.0207.0262, i64 40
  br label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i

bb.ag:                                            ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE14does_intersectERKSF_SJ_i.exit
  %i.eu = add nuw i32 %.021259, 1
  %exitcond274.not = icmp eq i32 %.021259, %5
  br i1 %exitcond274.not, label %._crit_edge260, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i, !llvm.loop !1526

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next, %bb.ag
  %.021259 = phi i32 [ %i.eu, %bb.ag ], [ 2, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next ] ; 2 uses
  br i1 %i.es, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE14does_intersectERKSF_SJ_i.exit, label %.thread

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE14does_intersectERKSF_SJ_i.exit: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i
  %i.ev = load double, ptr %i.et, align 8, !tbaa !53
  %i.ew = load double, ptr %i.eb, align 8, !tbaa !53
  %i.ex = fcmp ogt double %i.ev, %i.ew
  br i1 %i.ex, label %bb.ag, label %.thread

._crit_edge260:                                   ; preds = %bb.ag, %.preheader
  switch i32 %5, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i [
    i32 0, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i
    i32 1, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i
  ]

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i: ; preds = %bb.af, %._crit_edge260
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0207.0262, i64 8
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i: ; preds = %._crit_edge260
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0207.0262, i64 16
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i, %._crit_edge260
  %.in.i.i = phi ptr [ %i.eb, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i ], [ %i.ea, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i ], [ %.sroa.0219.0267, %._crit_edge260 ]
  %.in.i.i9.i.i = phi ptr [ %i.ez, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i ], [ %i.ey, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i ], [ %.sroa.0207.0262, %._crit_edge260 ]
  %i.fa = load double, ptr %.in.i.i, align 8, !tbaa !53
  %i.fb = load double, ptr %.in.i.i9.i.i, align 8, !tbaa !53
  %i.fc = fcmp olt double %i.fa, %i.fb
  br i1 %i.fc, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit.thread.i, label %bb.ah

bb.ah:                                            ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i
  switch i32 %5, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i.i [
    i32 0, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i
    i32 1, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i.i
  ]
end_hunk_1
begin_hunk_2_@_ZN4CGAL18Box_intersection_d12segment_treeIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_St8functionIFvRKSE_SL_EEdNS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEEEvT_SS_T0_ST_T2_SU_T1_T3_lib:bb.a
  %i.eh = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !88 ; 2 uses
  %.not.i137 = icmp eq ptr %i.ei, null
  br i1 %.not.i137, label %.body124, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ej = invoke noundef zeroext i1 %i.ei(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef 3)
          to label %.body124 unwind label %bb.cd  ; 0 uses

bb.cd:                                            ; preds = %bb.cc
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  call void @__clang_call_terminate(ptr %i.el) #41
  unreachable

.body124:                                         ; preds = %bb.bv, %bb.bw, %bb.ca, %bb.bx, %bb.by, %bb.cb, %bb.cc, %bb.bi, %bb.bh, %bb.bg, %bb.bb, %bb.ba
  %.pn95 = phi { ptr, i32 } [ %i.cq, %bb.ba ], [ %i.da, %bb.bi ], [ %i.cz, %bb.bg ], [ %i.cq, %bb.bb ], [ %i.da, %bb.bh ], [ %i.dz, %bb.by ], [ %i.dy, %bb.bw ], [ %i.ef, %bb.ca ], [ %i.dx, %bb.bv ], [ %i.dz, %bb.bx ], [ %i.eg, %bb.cb ], [ %i.eg, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %.body

.body:                                            ; preds = %bb.ap, %.body124, %bb.aq, %bb.ar, %bb.at, %bb.au, %bb.ab, %bb.aa, %bb.u, %bb.v, %bb.n, %bb.m, %bb.g, %bb.h
  %.pn98 = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.az, %bb.ab ], [ %i.aq, %bb.u ], [ %i.w, %bb.n ], [ %i.cc, %bb.au ], [ %i.n, %bb.h ], [ %i.w, %bb.m ], [ %i.aq, %bb.v ], [ %i.az, %bb.aa ], [ %.pn95, %.body124 ], [ %i.bw, %bb.ar ], [ %i.bv, %bb.ap ], [ %i.bw, %bb.aq ], [ %i.cc, %bb.at ]
  %i.em = load i32, ptr %i.b, align 4, !tbaa !90
  %i.en = add nsw i32 %i.em, -1
  store i32 %i.en, ptr %i.b, align 4, !tbaa !90
  resume { ptr, i32 } %.pn98
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL18Box_intersection_d12one_way_scanIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_St8functionIFvRKSE_SL_EENS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEEEvT_SS_T0_ST_T1_T2_ib(ptr %0, ptr %1, ptr %2, ptr %3, ptr noundef align 8 %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #4 comdat {
bb.a:
  %.sroa.10.i.i117 = alloca [3 x double], align 8 ; 4 uses
  %7 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d.628", align 8 ; 4 uses
  %.sroa.10.i.i81 = alloca [3 x double], align 8  ; 4 uses
  %8 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d.628", align 8 ; 4 uses
  %.sroa.10.i.i45 = alloca [3 x double], align 8  ; 4 uses
  %9 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d.628", align 8 ; 4 uses
  %.sroa.10.i.i = alloca [3 x double], align 8    ; 4 uses
  %10 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d.628", align 8 ; 4 uses
  %.sroa.10.i.i.i18 = alloca [3 x double], align 8 ; 4 uses
  %.sroa.10.i.i.i = alloca [3 x double], align 8  ; 4 uses
  %.not.i.i = icmp eq ptr %0, %1
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = sdiv exact i64 %i.c, 56
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = shl nuw nsw i64 %i.e, 1
  %i.g = xor i64 %i.f, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEElNS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_T1_(ptr %0, ptr %1, i64 noundef %i.g, i32 0)
  %i.h = icmp sgt i64 %i.c, 896
  br i1 %i.h, label %bb.c, label %.preheader.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %scevgep = getelementptr i8, ptr %0, i64 56
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.c
  %.sroa.0.025.i50.idx = phi i64 [ 56, %bb.c ], [ %.sroa.0.025.i50.add, %bb.h ] ; 4 uses
  %.pn24.i51 = phi ptr [ %0, %bb.c ], [ %.sroa.0.025.i50.ptr, %bb.h ] ; 4 uses
  %.sroa.0.025.i50.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.025.i50.idx ; 4 uses
  %i.j = load double, ptr %.sroa.0.025.i50.ptr, align 8, !tbaa !53 ; 5 uses
  %i.k = load double, ptr %0, align 8, !tbaa !53  ; 2 uses
  %i.l = fcmp olt double %i.j, %i.k
  br i1 %i.l, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i76, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = fcmp oeq double %i.j, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %.pn24.i51, i64 104
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  br i1 %i.m, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i75, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i53

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i75: ; preds = %bb.e
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !2755
  %i.q = icmp ult ptr %i.o, %i.p
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i76, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i53

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i76: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i75, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i50.ptr, i64 56, i1 false)
  %i.r = icmp samesign ugt i64 %.sroa.0.025.i50.idx, 56
  br i1 %i.r, label %bb.f, label %bb.g, !prof !1461

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i76
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.025.i50.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i77

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i76
  %i.s = getelementptr inbounds nuw i8, ptr %.pn24.i51, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i77

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i77: ; preds = %bb.g, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %9, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.h

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i53: ; preds = %bb.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i75
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i45)
  %.sroa.6.0..sroa_idx.i.i55 = getelementptr inbounds nuw i8, ptr %.pn24.i51, i64 64
  %i.t = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i55, align 8
  %.sroa.10.0..sroa_idx.i.i59 = getelementptr inbounds nuw i8, ptr %.pn24.i51, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i45, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i59, i64 24, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i62

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i62: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i74, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i53
  %.sroa.014.0.us.i.i63 = phi ptr [ %.sroa.0.0.us.i.i64, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i74 ], [ %.sroa.0.025.i50.ptr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i53 ] ; 7 uses
  %.sroa.0.0.us.i.i64 = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i63, i64 -56 ; 3 uses
  %i.u = load double, ptr %.sroa.0.0.us.i.i64, align 8, !tbaa !53 ; 2 uses
  %i.v = fcmp olt double %i.j, %i.u
  br i1 %i.v, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i74, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i65

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i65: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i62
  %i.w = fcmp oeq double %i.j, %i.u
  br i1 %i.w, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i73, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i66

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i73: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i65
  %i.x = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i63, i64 -8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2755
  %i.z = icmp ult ptr %i.o, %i.y
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i74, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i66

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i74: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i73, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i62
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i63, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i64, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i62, !llvm.loop !2757

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i66: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i73, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i65
  store double %i.j, ptr %.sroa.014.0.us.i.i63, align 8
  %.sroa.6.0..sroa_idx5.i.i67 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i63, i64 8
  store <2 x double> %i.t, ptr %.sroa.6.0..sroa_idx5.i.i67, align 8
  %.sroa.10.0..sroa_idx9.i.i69 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i63, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i69, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i45, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i70 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i63, i64 48
  store ptr %i.o, ptr %.sroa.1010.0..sroa_idx11.i.i70, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i45)
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i66, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i77
  %.sroa.0.025.i50.add = add nuw nsw i64 %.sroa.0.025.i50.idx, 56 ; 2 uses
  %.not.i72 = icmp eq i64 %.sroa.0.025.i50.add, 896
  br i1 %.not.i72, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit80, label %bb.d, !llvm.loop !2758

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit80: ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.aa, %1
  br i1 %.not9.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i: ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit80, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i
  %.sroa.0.010.us.i.i = phi ptr [ %i.aj, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i ], [ %i.aa, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit80 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i)
  %i.ab = load <2 x double>, ptr %.sroa.0.010.us.i.i, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i, i64 16
  %.sroa.8.0.copyload.i.us.i.i = load double, ptr %.sroa.8.0..sroa_idx.i.us.i.i, align 8
  %.sroa.10.0..sroa_idx.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.us.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i, i64 48
  %.sroa.1010.0.copyload.i.us.i.i = load ptr, ptr %.sroa.1010.0..sroa_idx.i.us.i.i, align 8 ; 2 uses
  %i.ac = extractelement <2 x double> %i.ab, i64 0 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i
  %.sroa.014.0.us.i.us.i.i = phi ptr [ %.sroa.0.0.us.i.us.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i ], [ %.sroa.0.010.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i ] ; 7 uses
  %.sroa.0.0.us.i.us.i.i = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i, i64 -56 ; 3 uses
  %i.ad = load double, ptr %.sroa.0.0.us.i.us.i.i, align 8, !tbaa !53 ; 2 uses
  %i.ae = fcmp olt double %i.ac, %i.ad
  br i1 %i.ae, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i
  %i.af = fcmp oeq double %i.ac, %i.ad
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i
  %i.ag = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i, i64 -8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !2755
  %i.ai = icmp ult ptr %.sroa.1010.0.copyload.i.us.i.i, %i.ah
  br i1 %i.ai, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.us.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.us.i.i, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i, !llvm.loop !2757

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i
  store <2 x double> %i.ab, ptr %.sroa.014.0.us.i.us.i.i, align 8
  %.sroa.8.0..sroa_idx7.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i, i64 16
  store double %.sroa.8.0.copyload.i.us.i.i, ptr %.sroa.8.0..sroa_idx7.i.us.i.i, align 8
  %.sroa.10.0..sroa_idx9.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.us.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i, i64 48
  store ptr %.sroa.1010.0.copyload.i.us.i.i, ptr %.sroa.1010.0..sroa_idx11.i.us.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i)
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i, i64 56 ; 2 uses
  %.not.us.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.us.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i, !llvm.loop !2759

.preheader.i:                                     ; preds = %bb.b
  %.sroa.0.022.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.not23.i = icmp eq ptr %.sroa.0.022.i, %1
  br i1 %.not23.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i
  %.sroa.0.025.i = phi ptr [ %.sroa.0.022.i, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.n ] ; 6 uses
  %.pn24.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.025.i, %bb.n ] ; 5 uses
  %i.al = load double, ptr %.sroa.0.025.i, align 8, !tbaa !53 ; 5 uses
  %i.am = load double, ptr %0, align 8, !tbaa !53 ; 2 uses
  %i.an = fcmp olt double %i.al, %i.am
  br i1 %i.an, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = fcmp oeq double %i.al, %i.am
  br i1 %i.ao, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i: ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !2755
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !2755
  %i.as = icmp ult ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i, i64 56, i1 false)
  %i.at = ptrtoint ptr %.sroa.0.025.i to i64
  %i.au = sub i64 %i.at, %i.b                     ; 3 uses
  %i.av = icmp sgt i64 %i.au, 56
  br i1 %i.av, label %bb.k, label %bb.l, !prof !1461

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0.022.i, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.au, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i
  %i.aw = icmp eq i64 %i.au, 56
  br i1 %i.aw, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ax, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %10, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.n

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i)
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 64
  %i.ay = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 104
  %.sroa.1010.0.copyload.i.i = load ptr, ptr %.sroa.1010.0..sroa_idx.i.i, align 8 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i
  %.sroa.014.0.us.i.i = phi ptr [ %.sroa.0.0.us.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i ], [ %.sroa.0.025.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i ] ; 7 uses
  %.sroa.0.0.us.i.i = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i, i64 -56 ; 3 uses
  %i.az = load double, ptr %.sroa.0.0.us.i.i, align 8, !tbaa !53 ; 2 uses
  %i.ba = fcmp olt double %i.al, %i.az
  br i1 %i.ba, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i
  %i.bb = fcmp oeq double %i.al, %i.az
  br i1 %i.bb, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i
  %i.bc = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i, i64 -8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !2755
  %i.be = icmp ult ptr %.sroa.1010.0.copyload.i.i, %i.bd
  br i1 %i.be, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i, !llvm.loop !2757

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i
  store double %i.al, ptr %.sroa.014.0.us.i.i, align 8
  %.sroa.6.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i, i64 8
  store <2 x double> %i.ay, ptr %.sroa.6.0..sroa_idx5.i.i, align 8
  %.sroa.10.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i, i64 48
  store ptr %.sroa.1010.0.copyload.i.i, ptr %.sroa.1010.0..sroa_idx11.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i)
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i, i64 56 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %1
  br i1 %.not.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit, label %bb.i, !llvm.loop !2758

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit80, %.preheader.i, %bb.a
  %.not.i.i13 = icmp eq ptr %2, %3
  br i1 %.not.i.i13, label %._crit_edge198, label %bb.o

bb.o:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit
  %i.bf = ptrtoint ptr %3 to i64
  %i.bg = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = sdiv exact i64 %i.bh, 56
  %i.bj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bi, i1 true)
  %i.bk = shl nuw nsw i64 %i.bj, 1
  %i.bl = xor i64 %i.bk, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEElNS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_T1_(ptr %2, ptr %3, i64 noundef %i.bl, i32 0)
  %i.bm = icmp sgt i64 %i.bh, 896
  br i1 %i.bm, label %bb.p, label %.preheader.i82

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 48
  %scevgep201 = getelementptr i8, ptr %2, i64 56
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %bb.p
  %.sroa.0.025.i122.idx = phi i64 [ 56, %bb.p ], [ %.sroa.0.025.i122.add, %bb.u ] ; 4 uses
  %.pn24.i123 = phi ptr [ %2, %bb.p ], [ %.sroa.0.025.i122.ptr, %bb.u ] ; 4 uses
  %.sroa.0.025.i122.ptr = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.025.i122.idx ; 4 uses
  %i.bo = load double, ptr %.sroa.0.025.i122.ptr, align 8, !tbaa !53 ; 5 uses
  %i.bp = load double, ptr %2, align 8, !tbaa !53 ; 2 uses
  %i.bq = fcmp olt double %i.bo, %i.bp
  br i1 %i.bq, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i148, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = fcmp oeq double %i.bo, %i.bp
  %i.bs = getelementptr inbounds nuw i8, ptr %.pn24.i123, i64 104
  %i.bt = load ptr, ptr %i.bs, align 8            ; 3 uses
  br i1 %i.br, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i147, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i125

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i147: ; preds = %bb.r
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !2755
  %i.bv = icmp ult ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i148, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i125

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i148: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i147, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i122.ptr, i64 56, i1 false)
  %i.bw = icmp samesign ugt i64 %.sroa.0.025.i122.idx, 56
  br i1 %i.bw, label %bb.s, label %bb.t, !prof !1461

bb.s:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i148
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep201, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %.sroa.0.025.i122.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i149

bb.t:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i148
  %i.bx = getelementptr inbounds nuw i8, ptr %.pn24.i123, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bx, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i149

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i149: ; preds = %bb.t, %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %7, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.u

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i125: ; preds = %bb.r, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i147
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i117)
  %.sroa.6.0..sroa_idx.i.i127 = getelementptr inbounds nuw i8, ptr %.pn24.i123, i64 64
  %i.by = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i127, align 8
  %.sroa.10.0..sroa_idx.i.i131 = getelementptr inbounds nuw i8, ptr %.pn24.i123, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i117, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i131, i64 24, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i134

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i134: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i146, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i125
  %.sroa.014.0.us.i.i135 = phi ptr [ %.sroa.0.0.us.i.i136, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i146 ], [ %.sroa.0.025.i122.ptr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i125 ] ; 7 uses
  %.sroa.0.0.us.i.i136 = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i135, i64 -56 ; 3 uses
  %i.bz = load double, ptr %.sroa.0.0.us.i.i136, align 8, !tbaa !53 ; 2 uses
  %i.ca = fcmp olt double %i.bo, %i.bz
  br i1 %i.ca, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i146, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i137

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i137: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i134
  %i.cb = fcmp oeq double %i.bo, %i.bz
  br i1 %i.cb, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i145, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i138

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i145: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i137
  %i.cc = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i135, i64 -8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !2755
  %i.ce = icmp ult ptr %i.bt, %i.cd
  br i1 %i.ce, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i146, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i138

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i146: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i145, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i134
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i135, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i136, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i134, !llvm.loop !2757

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i138: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i145, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i137
  store double %i.bo, ptr %.sroa.014.0.us.i.i135, align 8
  %.sroa.6.0..sroa_idx5.i.i139 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i135, i64 8
  store <2 x double> %i.by, ptr %.sroa.6.0..sroa_idx5.i.i139, align 8
  %.sroa.10.0..sroa_idx9.i.i141 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i135, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i141, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i117, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i142 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i135, i64 48
  store ptr %i.bt, ptr %.sroa.1010.0..sroa_idx11.i.i142, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i117)
  br label %bb.u

bb.u:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i138, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i149
  %.sroa.0.025.i122.add = add nuw nsw i64 %.sroa.0.025.i122.idx, 56 ; 2 uses
  %.not.i144 = icmp eq i64 %.sroa.0.025.i122.add, 896
  br i1 %.not.i144, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit152, label %bb.q, !llvm.loop !2758

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit152: ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 896 ; 2 uses
  %.not9.i.i19 = icmp eq ptr %i.cf, %3
  br i1 %.not9.i.i19, label %.preheader180.lr.ph, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i21

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i21: ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit152, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35
  %.sroa.0.010.us.i.i22 = phi ptr [ %i.co, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35 ], [ %i.cf, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit152 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i18)
  %i.cg = load <2 x double>, ptr %.sroa.0.010.us.i.i22, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx.i.us.i.i26 = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i22, i64 16
  %.sroa.8.0.copyload.i.us.i.i27 = load double, ptr %.sroa.8.0..sroa_idx.i.us.i.i26, align 8
  %.sroa.10.0..sroa_idx.i.us.i.i28 = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i22, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i18, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.us.i.i28, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.us.i.i29 = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i22, i64 48
  %.sroa.1010.0.copyload.i.us.i.i30 = load ptr, ptr %.sroa.1010.0..sroa_idx.i.us.i.i29, align 8 ; 2 uses
  %i.ch = extractelement <2 x double> %i.cg, i64 0 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i31

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i31: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i42, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i21
  %.sroa.014.0.us.i.us.i.i32 = phi ptr [ %.sroa.0.0.us.i.us.i.i33, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i42 ], [ %.sroa.0.010.us.i.i22, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i21 ] ; 7 uses
  %.sroa.0.0.us.i.us.i.i33 = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i32, i64 -56 ; 3 uses
  %i.ci = load double, ptr %.sroa.0.0.us.i.us.i.i33, align 8, !tbaa !53 ; 2 uses
  %i.cj = fcmp olt double %i.ch, %i.ci
  br i1 %i.cj, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i42, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i34

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i34: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i31
  %i.ck = fcmp oeq double %i.ch, %i.ci
  br i1 %i.ck, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i41, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i41: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i34
  %i.cl = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i32, i64 -8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !2755
  %i.cn = icmp ult ptr %.sroa.1010.0.copyload.i.us.i.i30, %i.cm
  br i1 %i.cn, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i42, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i42: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i41, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i31
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.us.i.i32, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.us.i.i33, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i31, !llvm.loop !2757

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i41, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i34
  store <2 x double> %i.cg, ptr %.sroa.014.0.us.i.us.i.i32, align 8
  %.sroa.8.0..sroa_idx7.i.us.i.i37 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i32, i64 16
  store double %.sroa.8.0.copyload.i.us.i.i27, ptr %.sroa.8.0..sroa_idx7.i.us.i.i37, align 8
  %.sroa.10.0..sroa_idx9.i.us.i.i38 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i32, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.us.i.i38, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i18, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.us.i.i39 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i32, i64 48
  store ptr %.sroa.1010.0.copyload.i.us.i.i30, ptr %.sroa.1010.0..sroa_idx11.i.us.i.i39, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i18)
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i22, i64 56 ; 2 uses
  %.not.us.i.i40 = icmp eq ptr %i.co, %3
  br i1 %.not.us.i.i40, label %.preheader180.lr.ph, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i21, !llvm.loop !2759

.preheader.i82:                                   ; preds = %bb.o
  %.sroa.0.022.i83 = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %.not23.i84 = icmp eq ptr %.sroa.0.022.i83, %3
  br i1 %.not23.i84, label %.preheader180.lr.ph, label %.lr.ph.i85

.lr.ph.i85:                                       ; preds = %.preheader.i82
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.v

bb.v:                                             ; preds = %bb.aa, %.lr.ph.i85
  %.sroa.0.025.i86 = phi ptr [ %.sroa.0.022.i83, %.lr.ph.i85 ], [ %.sroa.0.0.i107, %bb.aa ] ; 6 uses
  %.pn24.i87 = phi ptr [ %2, %.lr.ph.i85 ], [ %.sroa.0.025.i86, %bb.aa ] ; 5 uses
  %i.cq = load double, ptr %.sroa.0.025.i86, align 8, !tbaa !53 ; 5 uses
  %i.cr = load double, ptr %2, align 8, !tbaa !53 ; 2 uses
  %i.cs = fcmp olt double %i.cq, %i.cr
  br i1 %i.cs, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i112, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = fcmp oeq double %i.cq, %i.cr
  br i1 %i.ct, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i111, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i89

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i111: ; preds = %bb.w
  %i.cu = getelementptr inbounds nuw i8, ptr %.pn24.i87, i64 104
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !2755
  %i.cw = load ptr, ptr %i.cp, align 8, !tbaa !2755
  %i.cx = icmp ult ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i112, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i89

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i112: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i111, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i86, i64 56, i1 false)
  %i.cy = ptrtoint ptr %.sroa.0.025.i86 to i64
  %i.cz = sub i64 %i.cy, %i.bg                    ; 3 uses
  %i.da = icmp sgt i64 %i.cz, 56
  br i1 %i.da, label %bb.x, label %bb.y, !prof !1461

bb.x:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i112
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0.022.i83, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %i.cz, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i113

bb.y:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i112
  %i.db = icmp eq i64 %i.cz, 56
  br i1 %i.db, label %bb.z, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i113

bb.z:                                             ; preds = %bb.y
  %i.dc = getelementptr inbounds nuw i8, ptr %.pn24.i87, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dc, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i113

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i113: ; preds = %bb.z, %bb.y, %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %8, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.aa

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i89: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i111, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i81)
  %.sroa.6.0..sroa_idx.i.i91 = getelementptr inbounds nuw i8, ptr %.pn24.i87, i64 64
  %i.dd = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i91, align 8
  %.sroa.10.0..sroa_idx.i.i95 = getelementptr inbounds nuw i8, ptr %.pn24.i87, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i81, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i95, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.i96 = getelementptr inbounds nuw i8, ptr %.pn24.i87, i64 104
  %.sroa.1010.0.copyload.i.i97 = load ptr, ptr %.sroa.1010.0..sroa_idx.i.i96, align 8 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i98

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i98: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i110, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i89
  %.sroa.014.0.us.i.i99 = phi ptr [ %.sroa.0.0.us.i.i100, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i110 ], [ %.sroa.0.025.i86, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i89 ] ; 7 uses
  %.sroa.0.0.us.i.i100 = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i99, i64 -56 ; 3 uses
  %i.de = load double, ptr %.sroa.0.0.us.i.i100, align 8, !tbaa !53 ; 2 uses
  %i.df = fcmp olt double %i.cq, %i.de
  br i1 %i.df, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i110, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i101

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i101: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i98
  %i.dg = fcmp oeq double %i.cq, %i.de
  br i1 %i.dg, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i109, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i102

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i109: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i101
  %i.dh = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i99, i64 -8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !2755
  %i.dj = icmp ult ptr %.sroa.1010.0.copyload.i.i97, %i.di
  br i1 %i.dj, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i110, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i102

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i110: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i109, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i98
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i99, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i100, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i98, !llvm.loop !2757

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i102: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i109, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i101
  store double %i.cq, ptr %.sroa.014.0.us.i.i99, align 8
  %.sroa.6.0..sroa_idx5.i.i103 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i99, i64 8
  store <2 x double> %i.dd, ptr %.sroa.6.0..sroa_idx5.i.i103, align 8
  %.sroa.10.0..sroa_idx9.i.i105 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i99, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i105, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i81, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i106 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i99, i64 48
  store ptr %.sroa.1010.0.copyload.i.i97, ptr %.sroa.1010.0..sroa_idx11.i.i106, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i81)
  br label %bb.aa

bb.aa:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i102, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i113
  %.sroa.0.0.i107 = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i86, i64 56 ; 2 uses
  %.not.i108 = icmp eq ptr %.sroa.0.0.i107, %3
  br i1 %.not.i108, label %.preheader180.lr.ph, label %bb.v, !llvm.loop !2758

.preheader180.lr.ph:                              ; preds = %bb.aa, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit152, %.preheader.i82
  %.not188 = icmp slt i32 %5, 1
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %exitcond.peel.not = icmp eq i32 %5, 1
  br label %.preheader180

.preheader180:                                    ; preds = %.preheader180.lr.ph, %.critedge2
  %.sroa.0159.0197 = phi ptr [ %2, %.preheader180.lr.ph ], [ %i.ez, %.critedge2 ] ; 11 uses
  %.sroa.0172.0196 = phi ptr [ %0, %.preheader180.lr.ph ], [ %.sroa.0172.1.lcssa, %.critedge2 ] ; 3 uses
  %.not178183 = icmp eq ptr %.sroa.0172.0196, %1
  br i1 %.not178183, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader180
  %i.dm = load double, ptr %.sroa.0159.0197, align 8, !tbaa !53 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0159.0197, i64 48
  br label %bb.ab

._crit_edge198:                                   ; preds = %.critedge2, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit
  ret void

bb.ab:                                            ; preds = %.lr.ph, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread
  %.sroa.0172.1184 = phi ptr [ %.sroa.0172.0196, %.lr.ph ], [ %i.dv, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread ] ; 5 uses
  %i.do = load double, ptr %.sroa.0172.1184, align 8, !tbaa !53 ; 2 uses
  %i.dp = fcmp olt double %i.do, %i.dm
  br i1 %i.dp, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dq = fcmp oeq double %i.do, %i.dm
  br i1 %i.dq, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit, label %.critedge

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit: ; preds = %bb.ac
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0172.1184, i64 48
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !2755
  %i.dt = load ptr, ptr %i.dn, align 8, !tbaa !2755
  %i.du = icmp ult ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread, label %.critedge

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread: ; preds = %bb.ab, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0172.1184, i64 56 ; 3 uses
  %.not178 = icmp eq ptr %i.dv, %1
  br i1 %.not178, label %.critedge, label %bb.ab, !llvm.loop !2760

.critedge:                                        ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread, %bb.ac, %.preheader180
  %.sroa.0172.1.lcssa = phi ptr [ %.sroa.0172.0196, %.preheader180 ], [ %.sroa.0172.1184, %bb.ac ], [ %i.dv, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread ], [ %.sroa.0172.1184, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit ] ; 3 uses
  %.not179190 = icmp eq ptr %.sroa.0172.1.lcssa, %1
  br i1 %.not179190, label %.critedge2, label %.lr.ph193

.lr.ph193:                                        ; preds = %.critedge
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0159.0197, i64 24
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0159.0197, i64 48
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0159.0197, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0159.0197, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0159.0197, i64 32
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0159.0197, i64 40
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph193, %.thread
  %.sroa.0.0191 = phi ptr [ %.sroa.0172.1.lcssa, %.lr.ph193 ], [ %i.ey, %.thread ] ; 9 uses
  %i.eb = load double, ptr %i.dw, align 8, !tbaa !53
  %i.ec = load double, ptr %.sroa.0.0191, align 8, !tbaa !53
  %i.ed = fcmp ult double %i.eb, %i.ec
  br i1 %i.ed, label %.critedge2, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0.0191, i64 48
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !2755
  %i.eg = load ptr, ptr %i.dx, align 8, !tbaa !2755
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.ae
  br i1 %.not188, label %._crit_edge, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.preheader

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.preheader: ; preds = %.preheader
  %i.ei = load double, ptr %i.ea, align 8, !tbaa !53
  %.in.i.i.i.i.peel = getelementptr inbounds nuw i8, ptr %.sroa.0.0191, i64 8
  %i.ej = load double, ptr %.in.i.i.i.i.peel, align 8, !tbaa !53
  %i.ek = fcmp ult double %i.ei, %i.ej
  br i1 %i.ek, label %.thread, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit.peel

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit.peel: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.preheader
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0.0191, i64 32
  %i.em = load double, ptr %i.el, align 8, !tbaa !53
  %i.en = load double, ptr %i.dy, align 8, !tbaa !53
  %i.eo = fcmp ult double %i.em, %i.en
  br i1 %i.eo, label %.thread, label %bb.af

bb.af:                                            ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit.peel
  br i1 %exitcond.peel.not, label %._crit_edge, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next: ; preds = %bb.af
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !53
  %.in.i.i.i.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0.0191, i64 16
  %.pre205 = load double, ptr %.in.i.i.i.i.phi.trans.insert, align 8, !tbaa !53
  %i.ep = fcmp ult double %.pre, %.pre205
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0.0191, i64 40
  br label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i

bb.ag:                                            ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit
  %i.er = add nuw i32 %.0189, 1
  %exitcond.not = icmp eq i32 %.0189, %5
  br i1 %exitcond.not, label %._crit_edge, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i, !llvm.loop !2761

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next, %bb.ag
  %.0189 = phi i32 [ %i.er, %bb.ag ], [ 2, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next ] ; 2 uses
  br i1 %i.ep, label %.thread, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i
  %i.es = load double, ptr %i.eq, align 8, !tbaa !53
  %i.et = load double, ptr %i.dz, align 8, !tbaa !53
  %i.eu = fcmp ult double %i.es, %i.et
  br i1 %i.eu, label %.thread, label %bb.ag

._crit_edge:                                      ; preds = %bb.ag, %bb.af, %.preheader
  %i.ev = load ptr, ptr %i.dk, align 8, !tbaa !88
  %.not.i.i15 = icmp eq ptr %i.ev, null           ; 2 uses
  br i1 %6, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %._crit_edge
  br i1 %.not.i.i15, label %bb.ai, label %_ZNKSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEclESG_SG_.exit

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZSt25__throw_bad_function_callv() #43
  unreachable

_ZNKSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEclESG_SG_.exit: ; preds = %bb.ah
  %i.ew = load ptr, ptr %i.dl, align 8, !tbaa !161
  tail call void %i.ew(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0191, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0159.0197), !inline_history !2762
  br label %.thread

bb.aj:                                            ; preds = %._crit_edge
  br i1 %.not.i.i15, label %bb.ak, label %_ZNKSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEclESG_SG_.exit17

bb.ak:                                            ; preds = %bb.aj
  tail call void @_ZSt25__throw_bad_function_callv() #43
  unreachable

_ZNKSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEclESG_SG_.exit17: ; preds = %bb.aj
  %i.ex = load ptr, ptr %i.dl, align 8, !tbaa !161
  tail call void %i.ex(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0159.0197, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0191), !inline_history !2762
  br label %.thread

.thread:                                          ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.preheader, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit.peel, %_ZNKSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEclESG_SG_.exit17, %_ZNKSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEclESG_SG_.exit, %bb.ae
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.0191, i64 56 ; 2 uses
  %.not179 = icmp eq ptr %i.ey, %1
  br i1 %.not179, label %.critedge2, label %bb.ad, !llvm.loop !2763

.critedge2:                                       ; preds = %.thread, %bb.ad, %.critedge
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0159.0197, i64 56 ; 2 uses
  %.not177 = icmp eq ptr %i.ez, %3
  br i1 %.not177, label %._crit_edge198, label %.preheader180, !llvm.loop !2764
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL18Box_intersection_d21modified_two_way_scanIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_St8functionIFvRKSE_SL_EENS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEEEvT_SS_T0_ST_T1_T2_ib(ptr %0, ptr %1, ptr %2, ptr %3, ptr noundef align 8 %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #4 comdat {
bb.a:
  %.sroa.10.i.i164 = alloca [3 x double], align 8 ; 4 uses
  %7 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d.628", align 8 ; 4 uses
  %.sroa.10.i.i128 = alloca [3 x double], align 8 ; 4 uses
  %8 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d.628", align 8 ; 4 uses
  %.sroa.10.i.i92 = alloca [3 x double], align 8  ; 4 uses
  %9 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d.628", align 8 ; 4 uses
  %.sroa.10.i.i = alloca [3 x double], align 8    ; 4 uses
  %10 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d.628", align 8 ; 4 uses
  %.sroa.10.i.i.i65 = alloca [3 x double], align 8 ; 4 uses
  %.sroa.10.i.i.i = alloca [3 x double], align 8  ; 4 uses
  %.not.i.i = icmp eq ptr %0, %1
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = sdiv exact i64 %i.c, 56
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = shl nuw nsw i64 %i.e, 1
  %i.g = xor i64 %i.f, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEElNS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_T1_(ptr %0, ptr %1, i64 noundef %i.g, i32 0)
  %i.h = icmp sgt i64 %i.c, 896
  br i1 %i.h, label %bb.c, label %.preheader.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %scevgep = getelementptr i8, ptr %0, i64 56
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.c
  %.sroa.0.025.i97.idx = phi i64 [ 56, %bb.c ], [ %.sroa.0.025.i97.add, %bb.h ] ; 4 uses
  %.pn24.i98 = phi ptr [ %0, %bb.c ], [ %.sroa.0.025.i97.ptr, %bb.h ] ; 4 uses
  %.sroa.0.025.i97.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.025.i97.idx ; 4 uses
  %i.j = load double, ptr %.sroa.0.025.i97.ptr, align 8, !tbaa !53 ; 5 uses
  %i.k = load double, ptr %0, align 8, !tbaa !53  ; 2 uses
  %i.l = fcmp olt double %i.j, %i.k
  br i1 %i.l, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i123, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = fcmp oeq double %i.j, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %.pn24.i98, i64 104
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  br i1 %i.m, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i122, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i100

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i122: ; preds = %bb.e
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !2755
  %i.q = icmp ult ptr %i.o, %i.p
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i123, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i100

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i123: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i122, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i97.ptr, i64 56, i1 false)
  %i.r = icmp samesign ugt i64 %.sroa.0.025.i97.idx, 56
  br i1 %i.r, label %bb.f, label %bb.g, !prof !1461

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i123
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.025.i97.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i124

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i123
  %i.s = getelementptr inbounds nuw i8, ptr %.pn24.i98, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i124

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i124: ; preds = %bb.g, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %9, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.h

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i100: ; preds = %bb.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i122
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i92)
  %.sroa.6.0..sroa_idx.i.i102 = getelementptr inbounds nuw i8, ptr %.pn24.i98, i64 64
  %i.t = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i102, align 8
  %.sroa.10.0..sroa_idx.i.i106 = getelementptr inbounds nuw i8, ptr %.pn24.i98, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i92, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i106, i64 24, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i109

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i109: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i121, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i100
  %.sroa.014.0.us.i.i110 = phi ptr [ %.sroa.0.0.us.i.i111, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i121 ], [ %.sroa.0.025.i97.ptr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i100 ] ; 7 uses
  %.sroa.0.0.us.i.i111 = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i110, i64 -56 ; 3 uses
  %i.u = load double, ptr %.sroa.0.0.us.i.i111, align 8, !tbaa !53 ; 2 uses
  %i.v = fcmp olt double %i.j, %i.u
  br i1 %i.v, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i121, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i112

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i112: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i109
  %i.w = fcmp oeq double %i.j, %i.u
  br i1 %i.w, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i120, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i113

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i120: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i112
  %i.x = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i110, i64 -8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2755
  %i.z = icmp ult ptr %i.o, %i.y
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i121, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i113

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i121: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i120, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i109
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i110, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i111, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i109, !llvm.loop !2757

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i113: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i120, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i112
  store double %i.j, ptr %.sroa.014.0.us.i.i110, align 8
  %.sroa.6.0..sroa_idx5.i.i114 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i110, i64 8
  store <2 x double> %i.t, ptr %.sroa.6.0..sroa_idx5.i.i114, align 8
  %.sroa.10.0..sroa_idx9.i.i116 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i110, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i116, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i92, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i117 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i110, i64 48
  store ptr %i.o, ptr %.sroa.1010.0..sroa_idx11.i.i117, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i92)
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i113, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i124
  %.sroa.0.025.i97.add = add nuw nsw i64 %.sroa.0.025.i97.idx, 56 ; 2 uses
  %.not.i119 = icmp eq i64 %.sroa.0.025.i97.add, 896
  br i1 %.not.i119, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit127, label %bb.d, !llvm.loop !2758

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit127: ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.aa, %1
  br i1 %.not9.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i: ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit127, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i
  %.sroa.0.010.us.i.i = phi ptr [ %i.aj, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i ], [ %i.aa, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit127 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i)
  %i.ab = load <2 x double>, ptr %.sroa.0.010.us.i.i, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i, i64 16
  %.sroa.8.0.copyload.i.us.i.i = load double, ptr %.sroa.8.0..sroa_idx.i.us.i.i, align 8
  %.sroa.10.0..sroa_idx.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.us.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i, i64 48
  %.sroa.1010.0.copyload.i.us.i.i = load ptr, ptr %.sroa.1010.0..sroa_idx.i.us.i.i, align 8 ; 2 uses
  %i.ac = extractelement <2 x double> %i.ab, i64 0 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i
  %.sroa.014.0.us.i.us.i.i = phi ptr [ %.sroa.0.0.us.i.us.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i ], [ %.sroa.0.010.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i ] ; 7 uses
  %.sroa.0.0.us.i.us.i.i = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i, i64 -56 ; 3 uses
  %i.ad = load double, ptr %.sroa.0.0.us.i.us.i.i, align 8, !tbaa !53 ; 2 uses
  %i.ae = fcmp olt double %i.ac, %i.ad
  br i1 %i.ae, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i
  %i.af = fcmp oeq double %i.ac, %i.ad
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i
  %i.ag = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i, i64 -8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !2755
  %i.ai = icmp ult ptr %.sroa.1010.0.copyload.i.us.i.i, %i.ah
  br i1 %i.ai, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.us.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.us.i.i, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i, !llvm.loop !2757

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i
  store <2 x double> %i.ab, ptr %.sroa.014.0.us.i.us.i.i, align 8
  %.sroa.8.0..sroa_idx7.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i, i64 16
  store double %.sroa.8.0.copyload.i.us.i.i, ptr %.sroa.8.0..sroa_idx7.i.us.i.i, align 8
  %.sroa.10.0..sroa_idx9.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.us.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i, i64 48
  store ptr %.sroa.1010.0.copyload.i.us.i.i, ptr %.sroa.1010.0..sroa_idx11.i.us.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i)
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i, i64 56 ; 2 uses
  %.not.us.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.us.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i, !llvm.loop !2759

.preheader.i:                                     ; preds = %bb.b
  %.sroa.0.022.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.not23.i = icmp eq ptr %.sroa.0.022.i, %1
  br i1 %.not23.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i
  %.sroa.0.025.i = phi ptr [ %.sroa.0.022.i, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.n ] ; 6 uses
  %.pn24.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.025.i, %bb.n ] ; 5 uses
  %i.al = load double, ptr %.sroa.0.025.i, align 8, !tbaa !53 ; 5 uses
  %i.am = load double, ptr %0, align 8, !tbaa !53 ; 2 uses
  %i.an = fcmp olt double %i.al, %i.am
  br i1 %i.an, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = fcmp oeq double %i.al, %i.am
  br i1 %i.ao, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i: ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !2755
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !2755
  %i.as = icmp ult ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i, i64 56, i1 false)
  %i.at = ptrtoint ptr %.sroa.0.025.i to i64
  %i.au = sub i64 %i.at, %i.b                     ; 3 uses
  %i.av = icmp sgt i64 %i.au, 56
  br i1 %i.av, label %bb.k, label %bb.l, !prof !1461

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0.022.i, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.au, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i
  %i.aw = icmp eq i64 %i.au, 56
  br i1 %i.aw, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ax, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %10, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.n

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i)
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 64
  %i.ay = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 104
  %.sroa.1010.0.copyload.i.i = load ptr, ptr %.sroa.1010.0..sroa_idx.i.i, align 8 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i
  %.sroa.014.0.us.i.i = phi ptr [ %.sroa.0.0.us.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i ], [ %.sroa.0.025.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i ] ; 7 uses
  %.sroa.0.0.us.i.i = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i, i64 -56 ; 3 uses
  %i.az = load double, ptr %.sroa.0.0.us.i.i, align 8, !tbaa !53 ; 2 uses
  %i.ba = fcmp olt double %i.al, %i.az
  br i1 %i.ba, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i
  %i.bb = fcmp oeq double %i.al, %i.az
  br i1 %i.bb, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i
  %i.bc = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i, i64 -8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !2755
  %i.be = icmp ult ptr %.sroa.1010.0.copyload.i.i, %i.bd
  br i1 %i.be, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i, !llvm.loop !2757

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i
  store double %i.al, ptr %.sroa.014.0.us.i.i, align 8
  %.sroa.6.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i, i64 8
  store <2 x double> %i.ay, ptr %.sroa.6.0..sroa_idx5.i.i, align 8
  %.sroa.10.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i, i64 48
  store ptr %.sroa.1010.0.copyload.i.i, ptr %.sroa.1010.0..sroa_idx11.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i)
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i, i64 56 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %1
  br i1 %.not.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit, label %bb.i, !llvm.loop !2758

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit127, %.preheader.i, %bb.a
  %.not.i.i24 = icmp eq ptr %2, %3
  br i1 %.not.i.i24, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit25, label %bb.o

bb.o:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit
  %i.bf = ptrtoint ptr %3 to i64
  %i.bg = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = sdiv exact i64 %i.bh, 56
  %i.bj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bi, i1 true)
  %i.bk = shl nuw nsw i64 %i.bj, 1
  %i.bl = xor i64 %i.bk, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEElNS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_T1_(ptr %2, ptr %3, i64 noundef %i.bl, i32 0)
  %i.bm = icmp sgt i64 %i.bh, 896
  br i1 %i.bm, label %bb.p, label %.preheader.i129

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 48
  %scevgep272 = getelementptr i8, ptr %2, i64 56
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %bb.p
  %.sroa.0.025.i169.idx = phi i64 [ 56, %bb.p ], [ %.sroa.0.025.i169.add, %bb.u ] ; 4 uses
  %.pn24.i170 = phi ptr [ %2, %bb.p ], [ %.sroa.0.025.i169.ptr, %bb.u ] ; 4 uses
  %.sroa.0.025.i169.ptr = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.025.i169.idx ; 4 uses
  %i.bo = load double, ptr %.sroa.0.025.i169.ptr, align 8, !tbaa !53 ; 5 uses
  %i.bp = load double, ptr %2, align 8, !tbaa !53 ; 2 uses
  %i.bq = fcmp olt double %i.bo, %i.bp
  br i1 %i.bq, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i195, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = fcmp oeq double %i.bo, %i.bp
  %i.bs = getelementptr inbounds nuw i8, ptr %.pn24.i170, i64 104
  %i.bt = load ptr, ptr %i.bs, align 8            ; 3 uses
  br i1 %i.br, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i194, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i172

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i194: ; preds = %bb.r
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !2755
  %i.bv = icmp ult ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i195, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i172

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i195: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i194, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i169.ptr, i64 56, i1 false)
  %i.bw = icmp samesign ugt i64 %.sroa.0.025.i169.idx, 56
  br i1 %i.bw, label %bb.s, label %bb.t, !prof !1461

bb.s:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i195
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep272, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %.sroa.0.025.i169.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i196

bb.t:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i195
  %i.bx = getelementptr inbounds nuw i8, ptr %.pn24.i170, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bx, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i196

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i196: ; preds = %bb.t, %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %7, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.u

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i172: ; preds = %bb.r, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i194
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i164)
  %.sroa.6.0..sroa_idx.i.i174 = getelementptr inbounds nuw i8, ptr %.pn24.i170, i64 64
  %i.by = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i174, align 8
  %.sroa.10.0..sroa_idx.i.i178 = getelementptr inbounds nuw i8, ptr %.pn24.i170, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i164, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i178, i64 24, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i181

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i181: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i193, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i172
  %.sroa.014.0.us.i.i182 = phi ptr [ %.sroa.0.0.us.i.i183, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i193 ], [ %.sroa.0.025.i169.ptr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i172 ] ; 7 uses
  %.sroa.0.0.us.i.i183 = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i182, i64 -56 ; 3 uses
  %i.bz = load double, ptr %.sroa.0.0.us.i.i183, align 8, !tbaa !53 ; 2 uses
  %i.ca = fcmp olt double %i.bo, %i.bz
  br i1 %i.ca, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i193, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i184

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i184: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i181
  %i.cb = fcmp oeq double %i.bo, %i.bz
  br i1 %i.cb, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i192, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i185

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i192: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i184
  %i.cc = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i182, i64 -8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !2755
  %i.ce = icmp ult ptr %i.bt, %i.cd
  br i1 %i.ce, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i193, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i185

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i193: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i192, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i181
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i182, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i183, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i181, !llvm.loop !2757

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i185: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i192, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i184
  store double %i.bo, ptr %.sroa.014.0.us.i.i182, align 8
  %.sroa.6.0..sroa_idx5.i.i186 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i182, i64 8
  store <2 x double> %i.by, ptr %.sroa.6.0..sroa_idx5.i.i186, align 8
  %.sroa.10.0..sroa_idx9.i.i188 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i182, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i188, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i164, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i189 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i182, i64 48
  store ptr %i.bt, ptr %.sroa.1010.0..sroa_idx11.i.i189, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i164)
  br label %bb.u

bb.u:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i185, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i196
  %.sroa.0.025.i169.add = add nuw nsw i64 %.sroa.0.025.i169.idx, 56 ; 2 uses
  %.not.i191 = icmp eq i64 %.sroa.0.025.i169.add, 896
  br i1 %.not.i191, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit199, label %bb.q, !llvm.loop !2758

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit199: ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 896 ; 2 uses
  %.not9.i.i66 = icmp eq ptr %i.cf, %3
  br i1 %.not9.i.i66, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit25, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i68

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i68: ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit199, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i82
  %.sroa.0.010.us.i.i69 = phi ptr [ %i.co, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i82 ], [ %i.cf, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit199 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i65)
  %i.cg = load <2 x double>, ptr %.sroa.0.010.us.i.i69, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx.i.us.i.i73 = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i69, i64 16
  %.sroa.8.0.copyload.i.us.i.i74 = load double, ptr %.sroa.8.0..sroa_idx.i.us.i.i73, align 8
  %.sroa.10.0..sroa_idx.i.us.i.i75 = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i69, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i65, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.us.i.i75, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.us.i.i76 = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i69, i64 48
  %.sroa.1010.0.copyload.i.us.i.i77 = load ptr, ptr %.sroa.1010.0..sroa_idx.i.us.i.i76, align 8 ; 2 uses
  %i.ch = extractelement <2 x double> %i.cg, i64 0 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i78

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i78: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i89, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i68
  %.sroa.014.0.us.i.us.i.i79 = phi ptr [ %.sroa.0.0.us.i.us.i.i80, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i89 ], [ %.sroa.0.010.us.i.i69, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i68 ] ; 7 uses
  %.sroa.0.0.us.i.us.i.i80 = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i79, i64 -56 ; 3 uses
  %i.ci = load double, ptr %.sroa.0.0.us.i.us.i.i80, align 8, !tbaa !53 ; 2 uses
  %i.cj = fcmp olt double %i.ch, %i.ci
  br i1 %i.cj, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i89, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i81

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i81: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i78
  %i.ck = fcmp oeq double %i.ch, %i.ci
  br i1 %i.ck, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i88, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i82

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i88: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i81
  %i.cl = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i79, i64 -8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !2755
  %i.cn = icmp ult ptr %.sroa.1010.0.copyload.i.us.i.i77, %i.cm
  br i1 %i.cn, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i89, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i82

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i89: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i88, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i78
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.us.i.i79, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.us.i.i80, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i78, !llvm.loop !2757

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i82: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i88, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i81
  store <2 x double> %i.cg, ptr %.sroa.014.0.us.i.us.i.i79, align 8
  %.sroa.8.0..sroa_idx7.i.us.i.i84 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i79, i64 16
  store double %.sroa.8.0.copyload.i.us.i.i74, ptr %.sroa.8.0..sroa_idx7.i.us.i.i84, align 8
  %.sroa.10.0..sroa_idx9.i.us.i.i85 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i79, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.us.i.i85, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i65, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.us.i.i86 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i79, i64 48
  store ptr %.sroa.1010.0.copyload.i.us.i.i77, ptr %.sroa.1010.0..sroa_idx11.i.us.i.i86, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i65)
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i69, i64 56 ; 2 uses
  %.not.us.i.i87 = icmp eq ptr %i.co, %3
  br i1 %.not.us.i.i87, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit25, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i68, !llvm.loop !2759

.preheader.i129:                                  ; preds = %bb.o
  %.sroa.0.022.i130 = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %.not23.i131 = icmp eq ptr %.sroa.0.022.i130, %3
  br i1 %.not23.i131, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit25, label %.lr.ph.i132

.lr.ph.i132:                                      ; preds = %.preheader.i129
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.v

bb.v:                                             ; preds = %bb.aa, %.lr.ph.i132
  %.sroa.0.025.i133 = phi ptr [ %.sroa.0.022.i130, %.lr.ph.i132 ], [ %.sroa.0.0.i154, %bb.aa ] ; 6 uses
  %.pn24.i134 = phi ptr [ %2, %.lr.ph.i132 ], [ %.sroa.0.025.i133, %bb.aa ] ; 5 uses
  %i.cq = load double, ptr %.sroa.0.025.i133, align 8, !tbaa !53 ; 5 uses
  %i.cr = load double, ptr %2, align 8, !tbaa !53 ; 2 uses
  %i.cs = fcmp olt double %i.cq, %i.cr
  br i1 %i.cs, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i159, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = fcmp oeq double %i.cq, %i.cr
  br i1 %i.ct, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i158, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i136

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i158: ; preds = %bb.w
  %i.cu = getelementptr inbounds nuw i8, ptr %.pn24.i134, i64 104
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !2755
  %i.cw = load ptr, ptr %i.cp, align 8, !tbaa !2755
  %i.cx = icmp ult ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i159, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i136

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i159: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i158, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i133, i64 56, i1 false)
  %i.cy = ptrtoint ptr %.sroa.0.025.i133 to i64
  %i.cz = sub i64 %i.cy, %i.bg                    ; 3 uses
  %i.da = icmp sgt i64 %i.cz, 56
  br i1 %i.da, label %bb.x, label %bb.y, !prof !1461

bb.x:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i159
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0.022.i130, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %i.cz, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i160

bb.y:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i159
  %i.db = icmp eq i64 %i.cz, 56
  br i1 %i.db, label %bb.z, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i160

bb.z:                                             ; preds = %bb.y
  %i.dc = getelementptr inbounds nuw i8, ptr %.pn24.i134, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dc, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i160

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i160: ; preds = %bb.z, %bb.y, %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %8, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.aa

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i136: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i158, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i128)
  %.sroa.6.0..sroa_idx.i.i138 = getelementptr inbounds nuw i8, ptr %.pn24.i134, i64 64
  %i.dd = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i138, align 8
  %.sroa.10.0..sroa_idx.i.i142 = getelementptr inbounds nuw i8, ptr %.pn24.i134, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i128, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i142, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.i143 = getelementptr inbounds nuw i8, ptr %.pn24.i134, i64 104
  %.sroa.1010.0.copyload.i.i144 = load ptr, ptr %.sroa.1010.0..sroa_idx.i.i143, align 8 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i145

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i145: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i157, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i136
  %.sroa.014.0.us.i.i146 = phi ptr [ %.sroa.0.0.us.i.i147, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i157 ], [ %.sroa.0.025.i133, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i136 ] ; 7 uses
  %.sroa.0.0.us.i.i147 = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i146, i64 -56 ; 3 uses
  %i.de = load double, ptr %.sroa.0.0.us.i.i147, align 8, !tbaa !53 ; 2 uses
  %i.df = fcmp olt double %i.cq, %i.de
  br i1 %i.df, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i157, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i148

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i148: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i145
  %i.dg = fcmp oeq double %i.cq, %i.de
  br i1 %i.dg, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i156, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i149

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i156: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i148
  %i.dh = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i146, i64 -8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !2755
  %i.dj = icmp ult ptr %.sroa.1010.0.copyload.i.i144, %i.di
  br i1 %i.dj, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i157, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i149

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i157: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i156, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i145
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i146, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i147, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i145, !llvm.loop !2757

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i149: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i156, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i148
  store double %i.cq, ptr %.sroa.014.0.us.i.i146, align 8
  %.sroa.6.0..sroa_idx5.i.i150 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i146, i64 8
  store <2 x double> %i.dd, ptr %.sroa.6.0..sroa_idx5.i.i150, align 8
  %.sroa.10.0..sroa_idx9.i.i152 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i146, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i152, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i128, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i153 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i146, i64 48
  store ptr %.sroa.1010.0.copyload.i.i144, ptr %.sroa.1010.0..sroa_idx11.i.i153, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i128)
  br label %bb.aa

bb.aa:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i149, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i160
  %.sroa.0.0.i154 = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i133, i64 56 ; 2 uses
  %.not.i155 = icmp eq ptr %.sroa.0.0.i154, %3
  br i1 %.not.i155, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit25, label %bb.v, !llvm.loop !2758

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit25: ; preds = %bb.aa, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i82, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit199, %.preheader.i129, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit
  %i.dk = icmp ne ptr %2, %3
  %i.dl = icmp ne ptr %0, %1
  %or.cond266 = and i1 %i.dk, %i.dl
  br i1 %or.cond266, label %.lr.ph269, label %.critedge

.lr.ph269:                                        ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit25
  %.not252 = icmp slt i32 %5, 1                   ; 2 uses
  %switch.selectcmp.i.i.i.i52 = icmp eq i32 %5, 1
  %switch.select.i.i.i.i53 = select i1 %switch.selectcmp.i.i.i.i52, i64 32, i64 40
  %switch.selectcmp2.i.i.i.i54 = icmp eq i32 %5, 0
  %switch.select3.i.i.i.i55 = select i1 %switch.selectcmp2.i.i.i.i54, i64 24, i64 %switch.select.i.i.i.i53 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.do = add nuw i32 %5, 1                       ; 2 uses
  %exitcond.peel.not = icmp eq i32 %i.do, 2
  %exitcond274.peel.not = icmp eq i32 %i.do, 2
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph269, %bb.bb
  %.sroa.0230.0268 = phi ptr [ %0, %.lr.ph269 ], [ %.sroa.0230.1, %bb.bb ] ; 17 uses
  %.sroa.0219.0267 = phi ptr [ %2, %.lr.ph269 ], [ %.sroa.0219.1, %bb.bb ] ; 17 uses
  %i.dp = load double, ptr %.sroa.0219.0267, align 8, !tbaa !53 ; 2 uses
  %i.dq = load double, ptr %.sroa.0230.0268, align 8, !tbaa !53 ; 2 uses
  %i.dr = fcmp olt double %i.dp, %i.dq
  br i1 %i.dr, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ds = fcmp oeq double %i.dp, %i.dq
  br i1 %i.ds, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread239

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit: ; preds = %bb.ac
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0219.0267, i64 48
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !2755
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0230.0268, i64 48
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !2755
  %i.dx = icmp ult ptr %i.du, %i.dw
  br i1 %i.dx, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread239

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread: ; preds = %bb.ab, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit
  %.not248261 = icmp eq ptr %.sroa.0230.0268, %1
  br i1 %.not248261, label %.critedge2, label %.lr.ph264

.lr.ph264:                                        ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0219.0267, i64 24
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0219.0267, i64 48
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0219.0267, i64 8 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0219.0267, i64 16 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0219.0267, i64 %switch.select3.i.i.i.i55
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0219.0267, i64 32
  %.phi.trans.insert279 = getelementptr inbounds nuw i8, ptr %.sroa.0219.0267, i64 40
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph264, %.thread
  %.sroa.0207.0262 = phi ptr [ %.sroa.0230.0268, %.lr.ph264 ], [ %i.fr, %.thread ] ; 18 uses
  %i.ee = load double, ptr %i.dy, align 8, !tbaa !53
  %i.ef = load double, ptr %.sroa.0207.0262, align 8, !tbaa !53
  %i.eg = fcmp ult double %i.ee, %i.ef
  br i1 %i.eg, label %.critedge2, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0207.0262, i64 48
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !2755 ; 2 uses
  %i.ej = load ptr, ptr %i.dz, align 8, !tbaa !2755 ; 2 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.ae
  br i1 %.not252, label %._crit_edge260, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.preheader

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.preheader: ; preds = %.preheader
  %i.el = load double, ptr %i.ed, align 8, !tbaa !53
  %.in.i.i.i.i.peel = getelementptr inbounds nuw i8, ptr %.sroa.0207.0262, i64 8
  %i.em = load double, ptr %.in.i.i.i.i.peel, align 8, !tbaa !53
  %i.en = fcmp ult double %i.el, %i.em
  br i1 %i.en, label %.thread, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit.peel

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit.peel: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.preheader
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0207.0262, i64 32
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !53
  %i.eq = load double, ptr %i.ea, align 8, !tbaa !53
  %i.er = fcmp ult double %i.ep, %i.eq
  br i1 %i.er, label %.thread, label %bb.af

bb.af:                                            ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit.peel
  br i1 %exitcond274.peel.not, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next: ; preds = %bb.af
  %.pre280 = load double, ptr %.phi.trans.insert279, align 8, !tbaa !53
  %.in.i.i.i.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0207.0262, i64 16
  %.pre281 = load double, ptr %.in.i.i.i.i.phi.trans.insert, align 8, !tbaa !53
  %i.es = fcmp ult double %.pre280, %.pre281
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.0207.0262, i64 40
  br label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i

bb.ag:                                            ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit
  %i.eu = add nuw i32 %.021259, 1
  %exitcond274.not = icmp eq i32 %.021259, %5
  br i1 %exitcond274.not, label %._crit_edge260, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i, !llvm.loop !2765

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next, %bb.ag
  %.021259 = phi i32 [ %i.eu, %bb.ag ], [ 2, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next ] ; 2 uses
  br i1 %i.es, label %.thread, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i
  %i.ev = load double, ptr %i.et, align 8, !tbaa !53
  %i.ew = load double, ptr %i.eb, align 8, !tbaa !53
  %i.ex = fcmp ult double %i.ev, %i.ew
  br i1 %i.ex, label %.thread, label %bb.ag

._crit_edge260:                                   ; preds = %bb.ag, %.preheader
  switch i32 %5, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i [
    i32 0, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i
    i32 1, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i
  ]

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i: ; preds = %bb.af, %._crit_edge260
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0207.0262, i64 8
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i: ; preds = %._crit_edge260
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0207.0262, i64 16
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i, %._crit_edge260
  %.in.i.i = phi ptr [ %i.eb, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i ], [ %i.ea, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i ], [ %.sroa.0219.0267, %._crit_edge260 ]
  %.in.i.i9.i.i = phi ptr [ %i.ez, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i ], [ %i.ey, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i ], [ %.sroa.0207.0262, %._crit_edge260 ]
  %i.fa = load double, ptr %.in.i.i, align 8, !tbaa !53
  %i.fb = load double, ptr %.in.i.i9.i.i, align 8, !tbaa !53
  %i.fc = fcmp olt double %i.fa, %i.fb
  br i1 %i.fc, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread.i, label %bb.ah

bb.ah:                                            ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i
  switch i32 %5, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i.i [
    i32 0, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i
    i32 1, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i.i
  ]
end_hunk_2
begin_hunk_3_@_ZN4CGAL18Box_intersection_d12segment_treeIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_St8functionIFvRKSE_SL_EEdNS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb0EEEEEvT_SS_T0_ST_T2_SU_T1_T3_lib:bb.a
  %i.eh = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !88 ; 2 uses
  %.not.i137 = icmp eq ptr %i.ei, null
  br i1 %.not.i137, label %.body124, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ej = invoke noundef zeroext i1 %i.ei(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef 3)
          to label %.body124 unwind label %bb.cd  ; 0 uses

bb.cd:                                            ; preds = %bb.cc
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  call void @__clang_call_terminate(ptr %i.el) #41
  unreachable

.body124:                                         ; preds = %bb.bv, %bb.bw, %bb.ca, %bb.bx, %bb.by, %bb.cb, %bb.cc, %bb.bi, %bb.bh, %bb.bg, %bb.bb, %bb.ba
  %.pn95 = phi { ptr, i32 } [ %i.cq, %bb.ba ], [ %i.da, %bb.bi ], [ %i.cz, %bb.bg ], [ %i.cq, %bb.bb ], [ %i.da, %bb.bh ], [ %i.dz, %bb.by ], [ %i.dy, %bb.bw ], [ %i.ef, %bb.ca ], [ %i.dx, %bb.bv ], [ %i.dz, %bb.bx ], [ %i.eg, %bb.cb ], [ %i.eg, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %.body

.body:                                            ; preds = %bb.ap, %.body124, %bb.aq, %bb.ar, %bb.at, %bb.au, %bb.ab, %bb.aa, %bb.u, %bb.v, %bb.n, %bb.m, %bb.h, %bb.g
  %.pn98 = phi { ptr, i32 } [ %i.w, %bb.n ], [ %i.az, %bb.ab ], [ %i.aq, %bb.u ], [ %i.n, %bb.g ], [ %i.n, %bb.h ], [ %i.cc, %bb.au ], [ %i.w, %bb.m ], [ %i.aq, %bb.v ], [ %i.az, %bb.aa ], [ %.pn95, %.body124 ], [ %i.bw, %bb.ar ], [ %i.bv, %bb.ap ], [ %i.bw, %bb.aq ], [ %i.cc, %bb.at ]
  %i.em = load i32, ptr %i.b, align 4, !tbaa !90
  %i.en = add nsw i32 %i.em, -1
  store i32 %i.en, ptr %i.b, align 4, !tbaa !90
  resume { ptr, i32 } %.pn98
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL18Box_intersection_d12one_way_scanIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_St8functionIFvRKSE_SL_EENS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb0EEEEEvT_SS_T0_ST_T1_T2_ib(ptr %0, ptr %1, ptr %2, ptr %3, ptr noundef align 8 %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #4 comdat {
bb.a:
  %.sroa.10.i.i117 = alloca [3 x double], align 8 ; 4 uses
  %7 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d.628", align 8 ; 4 uses
  %.sroa.10.i.i81 = alloca [3 x double], align 8  ; 4 uses
  %8 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d.628", align 8 ; 4 uses
  %.sroa.10.i.i45 = alloca [3 x double], align 8  ; 4 uses
  %9 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d.628", align 8 ; 4 uses
  %.sroa.10.i.i = alloca [3 x double], align 8    ; 4 uses
  %10 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d.628", align 8 ; 4 uses
  %.sroa.10.i.i.i18 = alloca [3 x double], align 8 ; 4 uses
  %.sroa.10.i.i.i = alloca [3 x double], align 8  ; 4 uses
  %.not.i.i = icmp eq ptr %0, %1
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = sdiv exact i64 %i.c, 56
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = shl nuw nsw i64 %i.e, 1
  %i.g = xor i64 %i.f, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEElNS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_T1_(ptr %0, ptr %1, i64 noundef %i.g, i32 0)
  %i.h = icmp sgt i64 %i.c, 896
  br i1 %i.h, label %bb.c, label %.preheader.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %scevgep = getelementptr i8, ptr %0, i64 56
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.c
  %.sroa.0.025.i50.idx = phi i64 [ 56, %bb.c ], [ %.sroa.0.025.i50.add, %bb.h ] ; 4 uses
  %.pn24.i51 = phi ptr [ %0, %bb.c ], [ %.sroa.0.025.i50.ptr, %bb.h ] ; 4 uses
  %.sroa.0.025.i50.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.025.i50.idx ; 4 uses
  %i.j = load double, ptr %.sroa.0.025.i50.ptr, align 8, !tbaa !53 ; 5 uses
  %i.k = load double, ptr %0, align 8, !tbaa !53  ; 2 uses
  %i.l = fcmp olt double %i.j, %i.k
  br i1 %i.l, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i76, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = fcmp oeq double %i.j, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %.pn24.i51, i64 104
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  br i1 %i.m, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i75, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i53

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i75: ; preds = %bb.e
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !2755
  %i.q = icmp ult ptr %i.o, %i.p
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i76, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i53

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i76: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i75, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i50.ptr, i64 56, i1 false)
  %i.r = icmp samesign ugt i64 %.sroa.0.025.i50.idx, 56
  br i1 %i.r, label %bb.f, label %bb.g, !prof !1461

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i76
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.025.i50.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i77

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i76
  %i.s = getelementptr inbounds nuw i8, ptr %.pn24.i51, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i77

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i77: ; preds = %bb.g, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %9, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.h

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i53: ; preds = %bb.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i75
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i45)
  %.sroa.6.0..sroa_idx.i.i55 = getelementptr inbounds nuw i8, ptr %.pn24.i51, i64 64
  %i.t = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i55, align 8
  %.sroa.10.0..sroa_idx.i.i59 = getelementptr inbounds nuw i8, ptr %.pn24.i51, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i45, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i59, i64 24, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i62

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i62: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i74, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i53
  %.sroa.014.0.us.i.i63 = phi ptr [ %.sroa.0.0.us.i.i64, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i74 ], [ %.sroa.0.025.i50.ptr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i53 ] ; 7 uses
  %.sroa.0.0.us.i.i64 = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i63, i64 -56 ; 3 uses
  %i.u = load double, ptr %.sroa.0.0.us.i.i64, align 8, !tbaa !53 ; 2 uses
  %i.v = fcmp olt double %i.j, %i.u
  br i1 %i.v, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i74, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i65

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i65: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i62
  %i.w = fcmp oeq double %i.j, %i.u
  br i1 %i.w, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i73, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i66

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i73: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i65
  %i.x = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i63, i64 -8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2755
  %i.z = icmp ult ptr %i.o, %i.y
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i74, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i66

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i74: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i73, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i62
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i63, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i64, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i62, !llvm.loop !2799

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i66: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i73, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i65
  store double %i.j, ptr %.sroa.014.0.us.i.i63, align 8
  %.sroa.6.0..sroa_idx5.i.i67 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i63, i64 8
  store <2 x double> %i.t, ptr %.sroa.6.0..sroa_idx5.i.i67, align 8
  %.sroa.10.0..sroa_idx9.i.i69 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i63, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i69, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i45, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i70 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i63, i64 48
  store ptr %i.o, ptr %.sroa.1010.0..sroa_idx11.i.i70, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i45)
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i66, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i77
  %.sroa.0.025.i50.add = add nuw nsw i64 %.sroa.0.025.i50.idx, 56 ; 2 uses
  %.not.i72 = icmp eq i64 %.sroa.0.025.i50.add, 896
  br i1 %.not.i72, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_.exit80, label %bb.d, !llvm.loop !2800

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_.exit80: ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.aa, %1
  br i1 %.not9.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i: ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_.exit80, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i
  %.sroa.0.010.us.i.i = phi ptr [ %i.aj, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i ], [ %i.aa, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_.exit80 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i)
  %i.ab = load <2 x double>, ptr %.sroa.0.010.us.i.i, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i, i64 16
  %.sroa.8.0.copyload.i.us.i.i = load double, ptr %.sroa.8.0..sroa_idx.i.us.i.i, align 8
  %.sroa.10.0..sroa_idx.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.us.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i, i64 48
  %.sroa.1010.0.copyload.i.us.i.i = load ptr, ptr %.sroa.1010.0..sroa_idx.i.us.i.i, align 8 ; 2 uses
  %i.ac = extractelement <2 x double> %i.ab, i64 0 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i
  %.sroa.014.0.us.i.us.i.i = phi ptr [ %.sroa.0.0.us.i.us.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i ], [ %.sroa.0.010.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i ] ; 7 uses
  %.sroa.0.0.us.i.us.i.i = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i, i64 -56 ; 3 uses
  %i.ad = load double, ptr %.sroa.0.0.us.i.us.i.i, align 8, !tbaa !53 ; 2 uses
  %i.ae = fcmp olt double %i.ac, %i.ad
  br i1 %i.ae, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i
  %i.af = fcmp oeq double %i.ac, %i.ad
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i
  %i.ag = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i, i64 -8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !2755
  %i.ai = icmp ult ptr %.sroa.1010.0.copyload.i.us.i.i, %i.ah
  br i1 %i.ai, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.us.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.us.i.i, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i, !llvm.loop !2799

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i
  store <2 x double> %i.ab, ptr %.sroa.014.0.us.i.us.i.i, align 8
  %.sroa.8.0..sroa_idx7.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i, i64 16
  store double %.sroa.8.0.copyload.i.us.i.i, ptr %.sroa.8.0..sroa_idx7.i.us.i.i, align 8
  %.sroa.10.0..sroa_idx9.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.us.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i, i64 48
  store ptr %.sroa.1010.0.copyload.i.us.i.i, ptr %.sroa.1010.0..sroa_idx11.i.us.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i)
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i, i64 56 ; 2 uses
  %.not.us.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.us.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i, !llvm.loop !2801

.preheader.i:                                     ; preds = %bb.b
  %.sroa.0.022.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.not23.i = icmp eq ptr %.sroa.0.022.i, %1
  br i1 %.not23.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i
  %.sroa.0.025.i = phi ptr [ %.sroa.0.022.i, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.n ] ; 6 uses
  %.pn24.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.025.i, %bb.n ] ; 5 uses
  %i.al = load double, ptr %.sroa.0.025.i, align 8, !tbaa !53 ; 5 uses
  %i.am = load double, ptr %0, align 8, !tbaa !53 ; 2 uses
  %i.an = fcmp olt double %i.al, %i.am
  br i1 %i.an, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = fcmp oeq double %i.al, %i.am
  br i1 %i.ao, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i: ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !2755
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !2755
  %i.as = icmp ult ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i, i64 56, i1 false)
  %i.at = ptrtoint ptr %.sroa.0.025.i to i64
  %i.au = sub i64 %i.at, %i.b                     ; 3 uses
  %i.av = icmp sgt i64 %i.au, 56
  br i1 %i.av, label %bb.k, label %bb.l, !prof !1461

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0.022.i, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.au, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i
  %i.aw = icmp eq i64 %i.au, 56
  br i1 %i.aw, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ax, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %10, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.n

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i)
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 64
  %i.ay = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 104
  %.sroa.1010.0.copyload.i.i = load ptr, ptr %.sroa.1010.0..sroa_idx.i.i, align 8 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i
  %.sroa.014.0.us.i.i = phi ptr [ %.sroa.0.0.us.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i ], [ %.sroa.0.025.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i ] ; 7 uses
  %.sroa.0.0.us.i.i = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i, i64 -56 ; 3 uses
  %i.az = load double, ptr %.sroa.0.0.us.i.i, align 8, !tbaa !53 ; 2 uses
  %i.ba = fcmp olt double %i.al, %i.az
  br i1 %i.ba, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i
  %i.bb = fcmp oeq double %i.al, %i.az
  br i1 %i.bb, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i
  %i.bc = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i, i64 -8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !2755
  %i.be = icmp ult ptr %.sroa.1010.0.copyload.i.i, %i.bd
  br i1 %i.be, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i, !llvm.loop !2799

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i
  store double %i.al, ptr %.sroa.014.0.us.i.i, align 8
  %.sroa.6.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i, i64 8
  store <2 x double> %i.ay, ptr %.sroa.6.0..sroa_idx5.i.i, align 8
  %.sroa.10.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i, i64 48
  store ptr %.sroa.1010.0.copyload.i.i, ptr %.sroa.1010.0..sroa_idx11.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i)
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i, i64 56 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %1
  br i1 %.not.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit, label %bb.i, !llvm.loop !2800

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_.exit80, %.preheader.i, %bb.a
  %.not.i.i13 = icmp eq ptr %2, %3
  br i1 %.not.i.i13, label %._crit_edge198, label %bb.o

bb.o:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit
  %i.bf = ptrtoint ptr %3 to i64
  %i.bg = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = sdiv exact i64 %i.bh, 56
  %i.bj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bi, i1 true)
  %i.bk = shl nuw nsw i64 %i.bj, 1
  %i.bl = xor i64 %i.bk, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEElNS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_T1_(ptr %2, ptr %3, i64 noundef %i.bl, i32 0)
  %i.bm = icmp sgt i64 %i.bh, 896
  br i1 %i.bm, label %bb.p, label %.preheader.i82

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 48
  %scevgep201 = getelementptr i8, ptr %2, i64 56
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %bb.p
  %.sroa.0.025.i122.idx = phi i64 [ 56, %bb.p ], [ %.sroa.0.025.i122.add, %bb.u ] ; 4 uses
  %.pn24.i123 = phi ptr [ %2, %bb.p ], [ %.sroa.0.025.i122.ptr, %bb.u ] ; 4 uses
  %.sroa.0.025.i122.ptr = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.025.i122.idx ; 4 uses
  %i.bo = load double, ptr %.sroa.0.025.i122.ptr, align 8, !tbaa !53 ; 5 uses
  %i.bp = load double, ptr %2, align 8, !tbaa !53 ; 2 uses
  %i.bq = fcmp olt double %i.bo, %i.bp
  br i1 %i.bq, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i148, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = fcmp oeq double %i.bo, %i.bp
  %i.bs = getelementptr inbounds nuw i8, ptr %.pn24.i123, i64 104
  %i.bt = load ptr, ptr %i.bs, align 8            ; 3 uses
  br i1 %i.br, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i147, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i125

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i147: ; preds = %bb.r
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !2755
  %i.bv = icmp ult ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i148, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i125

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i148: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i147, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i122.ptr, i64 56, i1 false)
  %i.bw = icmp samesign ugt i64 %.sroa.0.025.i122.idx, 56
  br i1 %i.bw, label %bb.s, label %bb.t, !prof !1461

bb.s:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i148
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep201, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %.sroa.0.025.i122.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i149

bb.t:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i148
  %i.bx = getelementptr inbounds nuw i8, ptr %.pn24.i123, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bx, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i149

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i149: ; preds = %bb.t, %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %7, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.u

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i125: ; preds = %bb.r, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i147
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i117)
  %.sroa.6.0..sroa_idx.i.i127 = getelementptr inbounds nuw i8, ptr %.pn24.i123, i64 64
  %i.by = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i127, align 8
  %.sroa.10.0..sroa_idx.i.i131 = getelementptr inbounds nuw i8, ptr %.pn24.i123, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i117, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i131, i64 24, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i134

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i134: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i146, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i125
  %.sroa.014.0.us.i.i135 = phi ptr [ %.sroa.0.0.us.i.i136, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i146 ], [ %.sroa.0.025.i122.ptr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i125 ] ; 7 uses
  %.sroa.0.0.us.i.i136 = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i135, i64 -56 ; 3 uses
  %i.bz = load double, ptr %.sroa.0.0.us.i.i136, align 8, !tbaa !53 ; 2 uses
  %i.ca = fcmp olt double %i.bo, %i.bz
  br i1 %i.ca, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i146, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i137

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i137: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i134
  %i.cb = fcmp oeq double %i.bo, %i.bz
  br i1 %i.cb, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i145, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i138

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i145: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i137
  %i.cc = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i135, i64 -8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !2755
  %i.ce = icmp ult ptr %i.bt, %i.cd
  br i1 %i.ce, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i146, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i138

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i146: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i145, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i134
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i135, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i136, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i134, !llvm.loop !2799

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i138: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i145, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i137
  store double %i.bo, ptr %.sroa.014.0.us.i.i135, align 8
  %.sroa.6.0..sroa_idx5.i.i139 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i135, i64 8
  store <2 x double> %i.by, ptr %.sroa.6.0..sroa_idx5.i.i139, align 8
  %.sroa.10.0..sroa_idx9.i.i141 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i135, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i141, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i117, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i142 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i135, i64 48
  store ptr %i.bt, ptr %.sroa.1010.0..sroa_idx11.i.i142, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i117)
  br label %bb.u

bb.u:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i138, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i149
  %.sroa.0.025.i122.add = add nuw nsw i64 %.sroa.0.025.i122.idx, 56 ; 2 uses
  %.not.i144 = icmp eq i64 %.sroa.0.025.i122.add, 896
  br i1 %.not.i144, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_.exit152, label %bb.q, !llvm.loop !2800

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_.exit152: ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 896 ; 2 uses
  %.not9.i.i19 = icmp eq ptr %i.cf, %3
  br i1 %.not9.i.i19, label %.preheader180.lr.ph, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i21

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i21: ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_.exit152, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35
  %.sroa.0.010.us.i.i22 = phi ptr [ %i.co, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35 ], [ %i.cf, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_.exit152 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i18)
  %i.cg = load <2 x double>, ptr %.sroa.0.010.us.i.i22, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx.i.us.i.i26 = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i22, i64 16
  %.sroa.8.0.copyload.i.us.i.i27 = load double, ptr %.sroa.8.0..sroa_idx.i.us.i.i26, align 8
  %.sroa.10.0..sroa_idx.i.us.i.i28 = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i22, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i18, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.us.i.i28, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.us.i.i29 = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i22, i64 48
  %.sroa.1010.0.copyload.i.us.i.i30 = load ptr, ptr %.sroa.1010.0..sroa_idx.i.us.i.i29, align 8 ; 2 uses
  %i.ch = extractelement <2 x double> %i.cg, i64 0 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i31

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i31: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i42, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i21
  %.sroa.014.0.us.i.us.i.i32 = phi ptr [ %.sroa.0.0.us.i.us.i.i33, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i42 ], [ %.sroa.0.010.us.i.i22, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i21 ] ; 7 uses
  %.sroa.0.0.us.i.us.i.i33 = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i32, i64 -56 ; 3 uses
  %i.ci = load double, ptr %.sroa.0.0.us.i.us.i.i33, align 8, !tbaa !53 ; 2 uses
  %i.cj = fcmp olt double %i.ch, %i.ci
  br i1 %i.cj, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i42, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i34

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i34: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i31
  %i.ck = fcmp oeq double %i.ch, %i.ci
  br i1 %i.ck, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i41, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i41: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i34
  %i.cl = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i32, i64 -8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !2755
  %i.cn = icmp ult ptr %.sroa.1010.0.copyload.i.us.i.i30, %i.cm
  br i1 %i.cn, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i42, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i42: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i41, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i31
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.us.i.i32, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.us.i.i33, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i31, !llvm.loop !2799

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i41, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i34
  store <2 x double> %i.cg, ptr %.sroa.014.0.us.i.us.i.i32, align 8
  %.sroa.8.0..sroa_idx7.i.us.i.i37 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i32, i64 16
  store double %.sroa.8.0.copyload.i.us.i.i27, ptr %.sroa.8.0..sroa_idx7.i.us.i.i37, align 8
  %.sroa.10.0..sroa_idx9.i.us.i.i38 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i32, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.us.i.i38, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i18, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.us.i.i39 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i32, i64 48
  store ptr %.sroa.1010.0.copyload.i.us.i.i30, ptr %.sroa.1010.0..sroa_idx11.i.us.i.i39, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i18)
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i22, i64 56 ; 2 uses
  %.not.us.i.i40 = icmp eq ptr %i.co, %3
  br i1 %.not.us.i.i40, label %.preheader180.lr.ph, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i21, !llvm.loop !2801

.preheader.i82:                                   ; preds = %bb.o
  %.sroa.0.022.i83 = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %.not23.i84 = icmp eq ptr %.sroa.0.022.i83, %3
  br i1 %.not23.i84, label %.preheader180.lr.ph, label %.lr.ph.i85

.lr.ph.i85:                                       ; preds = %.preheader.i82
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.v

bb.v:                                             ; preds = %bb.aa, %.lr.ph.i85
  %.sroa.0.025.i86 = phi ptr [ %.sroa.0.022.i83, %.lr.ph.i85 ], [ %.sroa.0.0.i107, %bb.aa ] ; 6 uses
  %.pn24.i87 = phi ptr [ %2, %.lr.ph.i85 ], [ %.sroa.0.025.i86, %bb.aa ] ; 5 uses
  %i.cq = load double, ptr %.sroa.0.025.i86, align 8, !tbaa !53 ; 5 uses
  %i.cr = load double, ptr %2, align 8, !tbaa !53 ; 2 uses
  %i.cs = fcmp olt double %i.cq, %i.cr
  br i1 %i.cs, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i112, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = fcmp oeq double %i.cq, %i.cr
  br i1 %i.ct, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i111, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i89

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i111: ; preds = %bb.w
  %i.cu = getelementptr inbounds nuw i8, ptr %.pn24.i87, i64 104
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !2755
  %i.cw = load ptr, ptr %i.cp, align 8, !tbaa !2755
  %i.cx = icmp ult ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i112, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i89

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i112: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i111, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i86, i64 56, i1 false)
  %i.cy = ptrtoint ptr %.sroa.0.025.i86 to i64
  %i.cz = sub i64 %i.cy, %i.bg                    ; 3 uses
  %i.da = icmp sgt i64 %i.cz, 56
  br i1 %i.da, label %bb.x, label %bb.y, !prof !1461

bb.x:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i112
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0.022.i83, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %i.cz, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i113

bb.y:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i112
  %i.db = icmp eq i64 %i.cz, 56
  br i1 %i.db, label %bb.z, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i113

bb.z:                                             ; preds = %bb.y
  %i.dc = getelementptr inbounds nuw i8, ptr %.pn24.i87, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dc, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i113

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i113: ; preds = %bb.z, %bb.y, %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %8, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.aa

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i89: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i111, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i81)
  %.sroa.6.0..sroa_idx.i.i91 = getelementptr inbounds nuw i8, ptr %.pn24.i87, i64 64
  %i.dd = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i91, align 8
  %.sroa.10.0..sroa_idx.i.i95 = getelementptr inbounds nuw i8, ptr %.pn24.i87, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i81, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i95, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.i96 = getelementptr inbounds nuw i8, ptr %.pn24.i87, i64 104
  %.sroa.1010.0.copyload.i.i97 = load ptr, ptr %.sroa.1010.0..sroa_idx.i.i96, align 8 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i98

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i98: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i110, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i89
  %.sroa.014.0.us.i.i99 = phi ptr [ %.sroa.0.0.us.i.i100, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i110 ], [ %.sroa.0.025.i86, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i89 ] ; 7 uses
  %.sroa.0.0.us.i.i100 = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i99, i64 -56 ; 3 uses
  %i.de = load double, ptr %.sroa.0.0.us.i.i100, align 8, !tbaa !53 ; 2 uses
  %i.df = fcmp olt double %i.cq, %i.de
  br i1 %i.df, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i110, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i101

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i101: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i98
  %i.dg = fcmp oeq double %i.cq, %i.de
  br i1 %i.dg, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i109, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i102

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i109: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i101
  %i.dh = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i99, i64 -8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !2755
  %i.dj = icmp ult ptr %.sroa.1010.0.copyload.i.i97, %i.di
  br i1 %i.dj, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i110, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i102

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i110: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i109, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i98
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i99, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i100, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i98, !llvm.loop !2799

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i102: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i109, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i101
  store double %i.cq, ptr %.sroa.014.0.us.i.i99, align 8
  %.sroa.6.0..sroa_idx5.i.i103 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i99, i64 8
  store <2 x double> %i.dd, ptr %.sroa.6.0..sroa_idx5.i.i103, align 8
  %.sroa.10.0..sroa_idx9.i.i105 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i99, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i105, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i81, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i106 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i99, i64 48
  store ptr %.sroa.1010.0.copyload.i.i97, ptr %.sroa.1010.0..sroa_idx11.i.i106, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i81)
  br label %bb.aa

bb.aa:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i102, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i113
  %.sroa.0.0.i107 = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i86, i64 56 ; 2 uses
  %.not.i108 = icmp eq ptr %.sroa.0.0.i107, %3
  br i1 %.not.i108, label %.preheader180.lr.ph, label %bb.v, !llvm.loop !2800

.preheader180.lr.ph:                              ; preds = %bb.aa, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_.exit152, %.preheader.i82
  %.not188 = icmp slt i32 %5, 1
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %exitcond.peel.not = icmp eq i32 %5, 1
  br label %.preheader180

.preheader180:                                    ; preds = %.preheader180.lr.ph, %.critedge2
  %.sroa.0159.0197 = phi ptr [ %2, %.preheader180.lr.ph ], [ %i.ez, %.critedge2 ] ; 11 uses
  %.sroa.0172.0196 = phi ptr [ %0, %.preheader180.lr.ph ], [ %.sroa.0172.1.lcssa, %.critedge2 ] ; 3 uses
  %.not178183 = icmp eq ptr %.sroa.0172.0196, %1
  br i1 %.not178183, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader180
  %i.dm = load double, ptr %.sroa.0159.0197, align 8, !tbaa !53 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0159.0197, i64 48
  br label %bb.ab

._crit_edge198:                                   ; preds = %.critedge2, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit
  ret void

bb.ab:                                            ; preds = %.lr.ph, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit.thread
  %.sroa.0172.1184 = phi ptr [ %.sroa.0172.0196, %.lr.ph ], [ %i.dv, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit.thread ] ; 5 uses
  %i.do = load double, ptr %.sroa.0172.1184, align 8, !tbaa !53 ; 2 uses
  %i.dp = fcmp olt double %i.do, %i.dm
  br i1 %i.dp, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dq = fcmp oeq double %i.do, %i.dm
  br i1 %i.dq, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit, label %.critedge

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit: ; preds = %bb.ac
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0172.1184, i64 48
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !2755
  %i.dt = load ptr, ptr %i.dn, align 8, !tbaa !2755
  %i.du = icmp ult ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit.thread, label %.critedge

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit.thread: ; preds = %bb.ab, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0172.1184, i64 56 ; 3 uses
  %.not178 = icmp eq ptr %i.dv, %1
  br i1 %.not178, label %.critedge, label %bb.ab, !llvm.loop !2802

.critedge:                                        ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit.thread, %bb.ac, %.preheader180
  %.sroa.0172.1.lcssa = phi ptr [ %.sroa.0172.0196, %.preheader180 ], [ %.sroa.0172.1184, %bb.ac ], [ %i.dv, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit.thread ], [ %.sroa.0172.1184, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit ] ; 3 uses
  %.not179190 = icmp eq ptr %.sroa.0172.1.lcssa, %1
  br i1 %.not179190, label %.critedge2, label %.lr.ph193

.lr.ph193:                                        ; preds = %.critedge
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0159.0197, i64 24
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0159.0197, i64 48
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0159.0197, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0159.0197, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0159.0197, i64 32
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0159.0197, i64 40
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph193, %.thread
  %.sroa.0.0191 = phi ptr [ %.sroa.0172.1.lcssa, %.lr.ph193 ], [ %i.ey, %.thread ] ; 9 uses
  %i.eb = load double, ptr %i.dw, align 8, !tbaa !53
  %i.ec = load double, ptr %.sroa.0.0191, align 8, !tbaa !53
  %i.ed = fcmp ogt double %i.eb, %i.ec
  br i1 %i.ed, label %bb.ae, label %.critedge2

bb.ae:                                            ; preds = %bb.ad
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0.0191, i64 48
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !2755
  %i.eg = load ptr, ptr %i.dx, align 8, !tbaa !2755
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.ae
  br i1 %.not188, label %._crit_edge, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i.preheader

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i.preheader: ; preds = %.preheader
  %i.ei = load double, ptr %i.ea, align 8, !tbaa !53
  %.in.i.i.i.i.peel = getelementptr inbounds nuw i8, ptr %.sroa.0.0191, i64 8
  %i.ej = load double, ptr %.in.i.i.i.i.peel, align 8, !tbaa !53
  %i.ek = fcmp ogt double %i.ei, %i.ej
  br i1 %i.ek, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE14does_intersectERKSF_SJ_i.exit.peel, label %.thread

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE14does_intersectERKSF_SJ_i.exit.peel: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i.preheader
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0.0191, i64 32
  %i.em = load double, ptr %i.el, align 8, !tbaa !53
  %i.en = load double, ptr %i.dy, align 8, !tbaa !53
  %i.eo = fcmp ogt double %i.em, %i.en
  br i1 %i.eo, label %bb.af, label %.thread

bb.af:                                            ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE14does_intersectERKSF_SJ_i.exit.peel
  br i1 %exitcond.peel.not, label %._crit_edge, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next: ; preds = %bb.af
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !53
  %.in.i.i.i.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0.0191, i64 16
  %.pre205 = load double, ptr %.in.i.i.i.i.phi.trans.insert, align 8, !tbaa !53
  %i.ep = fcmp ogt double %.pre, %.pre205
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0.0191, i64 40
  br label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i

bb.ag:                                            ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE14does_intersectERKSF_SJ_i.exit
  %i.er = add nuw i32 %.0189, 1
  %exitcond.not = icmp eq i32 %.0189, %5
  br i1 %exitcond.not, label %._crit_edge, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i, !llvm.loop !2803

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next, %bb.ag
  %.0189 = phi i32 [ %i.er, %bb.ag ], [ 2, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next ] ; 2 uses
  br i1 %i.ep, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE14does_intersectERKSF_SJ_i.exit, label %.thread

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE14does_intersectERKSF_SJ_i.exit: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i
  %i.es = load double, ptr %i.eq, align 8, !tbaa !53
  %i.et = load double, ptr %i.dz, align 8, !tbaa !53
  %i.eu = fcmp ogt double %i.es, %i.et
  br i1 %i.eu, label %bb.ag, label %.thread

._crit_edge:                                      ; preds = %bb.ag, %bb.af, %.preheader
  %i.ev = load ptr, ptr %i.dk, align 8, !tbaa !88
  %.not.i.i15 = icmp eq ptr %i.ev, null           ; 2 uses
  br i1 %6, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %._crit_edge
  br i1 %.not.i.i15, label %bb.ai, label %_ZNKSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEclESG_SG_.exit

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZSt25__throw_bad_function_callv() #43
  unreachable

_ZNKSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEclESG_SG_.exit: ; preds = %bb.ah
  %i.ew = load ptr, ptr %i.dl, align 8, !tbaa !161
  tail call void %i.ew(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0191, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0159.0197), !inline_history !2762
  br label %.thread

bb.aj:                                            ; preds = %._crit_edge
  br i1 %.not.i.i15, label %bb.ak, label %_ZNKSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEclESG_SG_.exit17

bb.ak:                                            ; preds = %bb.aj
  tail call void @_ZSt25__throw_bad_function_callv() #43
  unreachable

_ZNKSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEclESG_SG_.exit17: ; preds = %bb.aj
  %i.ex = load ptr, ptr %i.dl, align 8, !tbaa !161
  tail call void %i.ex(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0159.0197, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0191), !inline_history !2762
  br label %.thread

.thread:                                          ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE14does_intersectERKSF_SJ_i.exit, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i.preheader, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE14does_intersectERKSF_SJ_i.exit.peel, %_ZNKSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEclESG_SG_.exit17, %_ZNKSt8functionIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_EEclESG_SG_.exit, %bb.ae
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.0191, i64 56 ; 2 uses
  %.not179 = icmp eq ptr %i.ey, %1
  br i1 %.not179, label %.critedge2, label %bb.ad, !llvm.loop !2804

.critedge2:                                       ; preds = %.thread, %bb.ad, %.critedge
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0159.0197, i64 56 ; 2 uses
  %.not177 = icmp eq ptr %i.ez, %3
  br i1 %.not177, label %._crit_edge198, label %.preheader180, !llvm.loop !2805
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL18Box_intersection_d21modified_two_way_scanIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_St8functionIFvRKSE_SL_EENS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb0EEEEEvT_SS_T0_ST_T1_T2_ib(ptr %0, ptr %1, ptr %2, ptr %3, ptr noundef align 8 %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #4 comdat {
bb.a:
  %.sroa.10.i.i164 = alloca [3 x double], align 8 ; 4 uses
  %7 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d.628", align 8 ; 4 uses
  %.sroa.10.i.i128 = alloca [3 x double], align 8 ; 4 uses
  %8 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d.628", align 8 ; 4 uses
  %.sroa.10.i.i92 = alloca [3 x double], align 8  ; 4 uses
  %9 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d.628", align 8 ; 4 uses
  %.sroa.10.i.i = alloca [3 x double], align 8    ; 4 uses
  %10 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d.628", align 8 ; 4 uses
  %.sroa.10.i.i.i65 = alloca [3 x double], align 8 ; 4 uses
  %.sroa.10.i.i.i = alloca [3 x double], align 8  ; 4 uses
  %.not.i.i = icmp eq ptr %0, %1
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = sdiv exact i64 %i.c, 56
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = shl nuw nsw i64 %i.e, 1
  %i.g = xor i64 %i.f, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEElNS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_T1_(ptr %0, ptr %1, i64 noundef %i.g, i32 0)
  %i.h = icmp sgt i64 %i.c, 896
  br i1 %i.h, label %bb.c, label %.preheader.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %scevgep = getelementptr i8, ptr %0, i64 56
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.c
  %.sroa.0.025.i97.idx = phi i64 [ 56, %bb.c ], [ %.sroa.0.025.i97.add, %bb.h ] ; 4 uses
  %.pn24.i98 = phi ptr [ %0, %bb.c ], [ %.sroa.0.025.i97.ptr, %bb.h ] ; 4 uses
  %.sroa.0.025.i97.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.025.i97.idx ; 4 uses
  %i.j = load double, ptr %.sroa.0.025.i97.ptr, align 8, !tbaa !53 ; 5 uses
  %i.k = load double, ptr %0, align 8, !tbaa !53  ; 2 uses
  %i.l = fcmp olt double %i.j, %i.k
  br i1 %i.l, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i123, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = fcmp oeq double %i.j, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %.pn24.i98, i64 104
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  br i1 %i.m, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i122, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i100

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i122: ; preds = %bb.e
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !2755
  %i.q = icmp ult ptr %i.o, %i.p
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i123, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i100

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i123: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i122, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i97.ptr, i64 56, i1 false)
  %i.r = icmp samesign ugt i64 %.sroa.0.025.i97.idx, 56
  br i1 %i.r, label %bb.f, label %bb.g, !prof !1461

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i123
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.025.i97.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i124

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i123
  %i.s = getelementptr inbounds nuw i8, ptr %.pn24.i98, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i124

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i124: ; preds = %bb.g, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %9, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.h

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i100: ; preds = %bb.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i122
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i92)
  %.sroa.6.0..sroa_idx.i.i102 = getelementptr inbounds nuw i8, ptr %.pn24.i98, i64 64
  %i.t = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i102, align 8
  %.sroa.10.0..sroa_idx.i.i106 = getelementptr inbounds nuw i8, ptr %.pn24.i98, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i92, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i106, i64 24, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i109

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i109: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i121, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i100
  %.sroa.014.0.us.i.i110 = phi ptr [ %.sroa.0.0.us.i.i111, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i121 ], [ %.sroa.0.025.i97.ptr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i100 ] ; 7 uses
  %.sroa.0.0.us.i.i111 = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i110, i64 -56 ; 3 uses
  %i.u = load double, ptr %.sroa.0.0.us.i.i111, align 8, !tbaa !53 ; 2 uses
  %i.v = fcmp olt double %i.j, %i.u
  br i1 %i.v, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i121, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i112

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i112: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i109
  %i.w = fcmp oeq double %i.j, %i.u
  br i1 %i.w, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i120, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i113

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i120: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i112
  %i.x = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i110, i64 -8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2755
  %i.z = icmp ult ptr %i.o, %i.y
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i121, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i113

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i121: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i120, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i109
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i110, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i111, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i109, !llvm.loop !2799

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i113: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i120, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i112
  store double %i.j, ptr %.sroa.014.0.us.i.i110, align 8
  %.sroa.6.0..sroa_idx5.i.i114 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i110, i64 8
  store <2 x double> %i.t, ptr %.sroa.6.0..sroa_idx5.i.i114, align 8
  %.sroa.10.0..sroa_idx9.i.i116 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i110, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i116, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i92, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i117 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i110, i64 48
  store ptr %i.o, ptr %.sroa.1010.0..sroa_idx11.i.i117, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i92)
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i113, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i124
  %.sroa.0.025.i97.add = add nuw nsw i64 %.sroa.0.025.i97.idx, 56 ; 2 uses
  %.not.i119 = icmp eq i64 %.sroa.0.025.i97.add, 896
  br i1 %.not.i119, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_.exit127, label %bb.d, !llvm.loop !2800

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_.exit127: ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.aa, %1
  br i1 %.not9.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i: ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_.exit127, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i
  %.sroa.0.010.us.i.i = phi ptr [ %i.aj, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i ], [ %i.aa, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_.exit127 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i)
  %i.ab = load <2 x double>, ptr %.sroa.0.010.us.i.i, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i, i64 16
  %.sroa.8.0.copyload.i.us.i.i = load double, ptr %.sroa.8.0..sroa_idx.i.us.i.i, align 8
  %.sroa.10.0..sroa_idx.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.us.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i, i64 48
  %.sroa.1010.0.copyload.i.us.i.i = load ptr, ptr %.sroa.1010.0..sroa_idx.i.us.i.i, align 8 ; 2 uses
  %i.ac = extractelement <2 x double> %i.ab, i64 0 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i
  %.sroa.014.0.us.i.us.i.i = phi ptr [ %.sroa.0.0.us.i.us.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i ], [ %.sroa.0.010.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i ] ; 7 uses
  %.sroa.0.0.us.i.us.i.i = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i, i64 -56 ; 3 uses
  %i.ad = load double, ptr %.sroa.0.0.us.i.us.i.i, align 8, !tbaa !53 ; 2 uses
  %i.ae = fcmp olt double %i.ac, %i.ad
  br i1 %i.ae, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i
  %i.af = fcmp oeq double %i.ac, %i.ad
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i
  %i.ag = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i, i64 -8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !2755
  %i.ai = icmp ult ptr %.sroa.1010.0.copyload.i.us.i.i, %i.ah
  br i1 %i.ai, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.us.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.us.i.i, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i, !llvm.loop !2799

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i
  store <2 x double> %i.ab, ptr %.sroa.014.0.us.i.us.i.i, align 8
  %.sroa.8.0..sroa_idx7.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i, i64 16
  store double %.sroa.8.0.copyload.i.us.i.i, ptr %.sroa.8.0..sroa_idx7.i.us.i.i, align 8
  %.sroa.10.0..sroa_idx9.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.us.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i, i64 48
  store ptr %.sroa.1010.0.copyload.i.us.i.i, ptr %.sroa.1010.0..sroa_idx11.i.us.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i)
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i, i64 56 ; 2 uses
  %.not.us.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.us.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i, !llvm.loop !2801

.preheader.i:                                     ; preds = %bb.b
  %.sroa.0.022.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.not23.i = icmp eq ptr %.sroa.0.022.i, %1
  br i1 %.not23.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i
  %.sroa.0.025.i = phi ptr [ %.sroa.0.022.i, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.n ] ; 6 uses
  %.pn24.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.025.i, %bb.n ] ; 5 uses
  %i.al = load double, ptr %.sroa.0.025.i, align 8, !tbaa !53 ; 5 uses
  %i.am = load double, ptr %0, align 8, !tbaa !53 ; 2 uses
  %i.an = fcmp olt double %i.al, %i.am
  br i1 %i.an, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = fcmp oeq double %i.al, %i.am
  br i1 %i.ao, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i: ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !2755
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !2755
  %i.as = icmp ult ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i, i64 56, i1 false)
  %i.at = ptrtoint ptr %.sroa.0.025.i to i64
  %i.au = sub i64 %i.at, %i.b                     ; 3 uses
  %i.av = icmp sgt i64 %i.au, 56
  br i1 %i.av, label %bb.k, label %bb.l, !prof !1461

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0.022.i, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.au, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i
  %i.aw = icmp eq i64 %i.au, 56
  br i1 %i.aw, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ax, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %10, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.n

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i)
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 64
  %i.ay = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 104
  %.sroa.1010.0.copyload.i.i = load ptr, ptr %.sroa.1010.0..sroa_idx.i.i, align 8 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i
  %.sroa.014.0.us.i.i = phi ptr [ %.sroa.0.0.us.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i ], [ %.sroa.0.025.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i ] ; 7 uses
  %.sroa.0.0.us.i.i = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i, i64 -56 ; 3 uses
  %i.az = load double, ptr %.sroa.0.0.us.i.i, align 8, !tbaa !53 ; 2 uses
  %i.ba = fcmp olt double %i.al, %i.az
  br i1 %i.ba, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i
  %i.bb = fcmp oeq double %i.al, %i.az
  br i1 %i.bb, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i
  %i.bc = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i, i64 -8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !2755
  %i.be = icmp ult ptr %.sroa.1010.0.copyload.i.i, %i.bd
  br i1 %i.be, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i, !llvm.loop !2799

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i
  store double %i.al, ptr %.sroa.014.0.us.i.i, align 8
  %.sroa.6.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i, i64 8
  store <2 x double> %i.ay, ptr %.sroa.6.0..sroa_idx5.i.i, align 8
  %.sroa.10.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i, i64 48
  store ptr %.sroa.1010.0.copyload.i.i, ptr %.sroa.1010.0..sroa_idx11.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i)
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i, i64 56 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %1
  br i1 %.not.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit, label %bb.i, !llvm.loop !2800

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_.exit127, %.preheader.i, %bb.a
  %.not.i.i24 = icmp eq ptr %2, %3
  br i1 %.not.i.i24, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit25, label %bb.o

bb.o:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit
  %i.bf = ptrtoint ptr %3 to i64
  %i.bg = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = sdiv exact i64 %i.bh, 56
  %i.bj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bi, i1 true)
  %i.bk = shl nuw nsw i64 %i.bj, 1
  %i.bl = xor i64 %i.bk, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEElNS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_T1_(ptr %2, ptr %3, i64 noundef %i.bl, i32 0)
  %i.bm = icmp sgt i64 %i.bh, 896
  br i1 %i.bm, label %bb.p, label %.preheader.i129

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 48
  %scevgep272 = getelementptr i8, ptr %2, i64 56
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %bb.p
  %.sroa.0.025.i169.idx = phi i64 [ 56, %bb.p ], [ %.sroa.0.025.i169.add, %bb.u ] ; 4 uses
  %.pn24.i170 = phi ptr [ %2, %bb.p ], [ %.sroa.0.025.i169.ptr, %bb.u ] ; 4 uses
  %.sroa.0.025.i169.ptr = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.025.i169.idx ; 4 uses
  %i.bo = load double, ptr %.sroa.0.025.i169.ptr, align 8, !tbaa !53 ; 5 uses
  %i.bp = load double, ptr %2, align 8, !tbaa !53 ; 2 uses
  %i.bq = fcmp olt double %i.bo, %i.bp
  br i1 %i.bq, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i195, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = fcmp oeq double %i.bo, %i.bp
  %i.bs = getelementptr inbounds nuw i8, ptr %.pn24.i170, i64 104
  %i.bt = load ptr, ptr %i.bs, align 8            ; 3 uses
  br i1 %i.br, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i194, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i172

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i194: ; preds = %bb.r
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !2755
  %i.bv = icmp ult ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i195, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i172

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i195: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i194, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i169.ptr, i64 56, i1 false)
  %i.bw = icmp samesign ugt i64 %.sroa.0.025.i169.idx, 56
  br i1 %i.bw, label %bb.s, label %bb.t, !prof !1461

bb.s:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i195
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep272, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %.sroa.0.025.i169.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i196

bb.t:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i195
  %i.bx = getelementptr inbounds nuw i8, ptr %.pn24.i170, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bx, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i196

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i196: ; preds = %bb.t, %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %7, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.u

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i172: ; preds = %bb.r, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i194
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i164)
  %.sroa.6.0..sroa_idx.i.i174 = getelementptr inbounds nuw i8, ptr %.pn24.i170, i64 64
  %i.by = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i174, align 8
  %.sroa.10.0..sroa_idx.i.i178 = getelementptr inbounds nuw i8, ptr %.pn24.i170, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i164, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i178, i64 24, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i181

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i181: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i193, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i172
  %.sroa.014.0.us.i.i182 = phi ptr [ %.sroa.0.0.us.i.i183, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i193 ], [ %.sroa.0.025.i169.ptr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i172 ] ; 7 uses
  %.sroa.0.0.us.i.i183 = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i182, i64 -56 ; 3 uses
  %i.bz = load double, ptr %.sroa.0.0.us.i.i183, align 8, !tbaa !53 ; 2 uses
  %i.ca = fcmp olt double %i.bo, %i.bz
  br i1 %i.ca, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i193, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i184

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i184: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i181
  %i.cb = fcmp oeq double %i.bo, %i.bz
  br i1 %i.cb, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i192, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i185

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i192: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i184
  %i.cc = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i182, i64 -8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !2755
  %i.ce = icmp ult ptr %i.bt, %i.cd
  br i1 %i.ce, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i193, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i185

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i193: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i192, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i181
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i182, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i183, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i181, !llvm.loop !2799

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i185: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i192, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i184
  store double %i.bo, ptr %.sroa.014.0.us.i.i182, align 8
  %.sroa.6.0..sroa_idx5.i.i186 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i182, i64 8
  store <2 x double> %i.by, ptr %.sroa.6.0..sroa_idx5.i.i186, align 8
  %.sroa.10.0..sroa_idx9.i.i188 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i182, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i188, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i164, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i189 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i182, i64 48
  store ptr %i.bt, ptr %.sroa.1010.0..sroa_idx11.i.i189, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i164)
  br label %bb.u

bb.u:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i185, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i196
  %.sroa.0.025.i169.add = add nuw nsw i64 %.sroa.0.025.i169.idx, 56 ; 2 uses
  %.not.i191 = icmp eq i64 %.sroa.0.025.i169.add, 896
  br i1 %.not.i191, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_.exit199, label %bb.q, !llvm.loop !2800

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_.exit199: ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 896 ; 2 uses
  %.not9.i.i66 = icmp eq ptr %i.cf, %3
  br i1 %.not9.i.i66, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit25, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i68

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i68: ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_.exit199, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i82
  %.sroa.0.010.us.i.i69 = phi ptr [ %i.co, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i82 ], [ %i.cf, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_.exit199 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i65)
  %i.cg = load <2 x double>, ptr %.sroa.0.010.us.i.i69, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx.i.us.i.i73 = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i69, i64 16
  %.sroa.8.0.copyload.i.us.i.i74 = load double, ptr %.sroa.8.0..sroa_idx.i.us.i.i73, align 8
  %.sroa.10.0..sroa_idx.i.us.i.i75 = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i69, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i65, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.us.i.i75, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.us.i.i76 = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i69, i64 48
  %.sroa.1010.0.copyload.i.us.i.i77 = load ptr, ptr %.sroa.1010.0..sroa_idx.i.us.i.i76, align 8 ; 2 uses
  %i.ch = extractelement <2 x double> %i.cg, i64 0 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i78

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i78: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i89, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i68
  %.sroa.014.0.us.i.us.i.i79 = phi ptr [ %.sroa.0.0.us.i.us.i.i80, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i89 ], [ %.sroa.0.010.us.i.i69, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i68 ] ; 7 uses
  %.sroa.0.0.us.i.us.i.i80 = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i79, i64 -56 ; 3 uses
  %i.ci = load double, ptr %.sroa.0.0.us.i.us.i.i80, align 8, !tbaa !53 ; 2 uses
  %i.cj = fcmp olt double %i.ch, %i.ci
  br i1 %i.cj, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i89, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i81

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i81: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i78
  %i.ck = fcmp oeq double %i.ch, %i.ci
  br i1 %i.ck, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i88, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i82

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i88: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i81
  %i.cl = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i79, i64 -8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !2755
  %i.cn = icmp ult ptr %.sroa.1010.0.copyload.i.us.i.i77, %i.cm
  br i1 %i.cn, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i89, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i82

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i89: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i88, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i78
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.us.i.i79, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.us.i.i80, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i78, !llvm.loop !2799

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i82: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i88, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i81
  store <2 x double> %i.cg, ptr %.sroa.014.0.us.i.us.i.i79, align 8
  %.sroa.8.0..sroa_idx7.i.us.i.i84 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i79, i64 16
  store double %.sroa.8.0.copyload.i.us.i.i74, ptr %.sroa.8.0..sroa_idx7.i.us.i.i84, align 8
  %.sroa.10.0..sroa_idx9.i.us.i.i85 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i79, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.us.i.i85, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i65, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.us.i.i86 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i79, i64 48
  store ptr %.sroa.1010.0.copyload.i.us.i.i77, ptr %.sroa.1010.0..sroa_idx11.i.us.i.i86, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i65)
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i69, i64 56 ; 2 uses
  %.not.us.i.i87 = icmp eq ptr %i.co, %3
  br i1 %.not.us.i.i87, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit25, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i68, !llvm.loop !2801

.preheader.i129:                                  ; preds = %bb.o
  %.sroa.0.022.i130 = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %.not23.i131 = icmp eq ptr %.sroa.0.022.i130, %3
  br i1 %.not23.i131, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit25, label %.lr.ph.i132

.lr.ph.i132:                                      ; preds = %.preheader.i129
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.v

bb.v:                                             ; preds = %bb.aa, %.lr.ph.i132
  %.sroa.0.025.i133 = phi ptr [ %.sroa.0.022.i130, %.lr.ph.i132 ], [ %.sroa.0.0.i154, %bb.aa ] ; 6 uses
  %.pn24.i134 = phi ptr [ %2, %.lr.ph.i132 ], [ %.sroa.0.025.i133, %bb.aa ] ; 5 uses
  %i.cq = load double, ptr %.sroa.0.025.i133, align 8, !tbaa !53 ; 5 uses
  %i.cr = load double, ptr %2, align 8, !tbaa !53 ; 2 uses
  %i.cs = fcmp olt double %i.cq, %i.cr
  br i1 %i.cs, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i159, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = fcmp oeq double %i.cq, %i.cr
  br i1 %i.ct, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i158, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i136

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i158: ; preds = %bb.w
  %i.cu = getelementptr inbounds nuw i8, ptr %.pn24.i134, i64 104
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !2755
  %i.cw = load ptr, ptr %i.cp, align 8, !tbaa !2755
  %i.cx = icmp ult ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i159, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i136

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i159: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i158, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i133, i64 56, i1 false)
  %i.cy = ptrtoint ptr %.sroa.0.025.i133 to i64
  %i.cz = sub i64 %i.cy, %i.bg                    ; 3 uses
  %i.da = icmp sgt i64 %i.cz, 56
  br i1 %i.da, label %bb.x, label %bb.y, !prof !1461

bb.x:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i159
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0.022.i130, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %i.cz, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i160

bb.y:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i159
  %i.db = icmp eq i64 %i.cz, 56
  br i1 %i.db, label %bb.z, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i160

bb.z:                                             ; preds = %bb.y
  %i.dc = getelementptr inbounds nuw i8, ptr %.pn24.i134, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dc, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i160

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i160: ; preds = %bb.z, %bb.y, %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %8, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.aa

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i136: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i158, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i128)
  %.sroa.6.0..sroa_idx.i.i138 = getelementptr inbounds nuw i8, ptr %.pn24.i134, i64 64
  %i.dd = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i138, align 8
  %.sroa.10.0..sroa_idx.i.i142 = getelementptr inbounds nuw i8, ptr %.pn24.i134, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i128, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i142, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.i143 = getelementptr inbounds nuw i8, ptr %.pn24.i134, i64 104
  %.sroa.1010.0.copyload.i.i144 = load ptr, ptr %.sroa.1010.0..sroa_idx.i.i143, align 8 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i145

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i145: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i157, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i136
  %.sroa.014.0.us.i.i146 = phi ptr [ %.sroa.0.0.us.i.i147, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i157 ], [ %.sroa.0.025.i133, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i136 ] ; 7 uses
  %.sroa.0.0.us.i.i147 = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i146, i64 -56 ; 3 uses
  %i.de = load double, ptr %.sroa.0.0.us.i.i147, align 8, !tbaa !53 ; 2 uses
  %i.df = fcmp olt double %i.cq, %i.de
  br i1 %i.df, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i157, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i148

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i148: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i145
  %i.dg = fcmp oeq double %i.cq, %i.de
  br i1 %i.dg, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i156, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i149

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i156: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i148
  %i.dh = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i146, i64 -8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !2755
  %i.dj = icmp ult ptr %.sroa.1010.0.copyload.i.i144, %i.di
  br i1 %i.dj, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i157, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i149

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i157: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i156, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i145
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i146, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i147, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i145, !llvm.loop !2799

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i149: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb0EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i156, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i148
  store double %i.cq, ptr %.sroa.014.0.us.i.i146, align 8
  %.sroa.6.0..sroa_idx5.i.i150 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i146, i64 8
  store <2 x double> %i.dd, ptr %.sroa.6.0..sroa_idx5.i.i150, align 8
  %.sroa.10.0..sroa_idx9.i.i152 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i146, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i152, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i128, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i153 = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i146, i64 48
  store ptr %.sroa.1010.0.copyload.i.i144, ptr %.sroa.1010.0..sroa_idx11.i.i153, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i128)
  br label %bb.aa

bb.aa:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.i149, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i160
  %.sroa.0.0.i154 = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i133, i64 56 ; 2 uses
  %.not.i155 = icmp eq ptr %.sroa.0.0.i154, %3
  br i1 %.not.i155, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit25, label %bb.v, !llvm.loop !2800

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit25: ; preds = %bb.aa, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i82, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEEEvT_SR_T0_.exit199, %.preheader.i129, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit
  %i.dk = icmp ne ptr %2, %3
  %i.dl = icmp ne ptr %0, %1
  %or.cond266 = and i1 %i.dk, %i.dl
  br i1 %or.cond266, label %.lr.ph269, label %.critedge

.lr.ph269:                                        ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb0EE7CompareEEvT_SO_T0_.exit25
  %.not252 = icmp slt i32 %5, 1                   ; 2 uses
  %switch.selectcmp.i.i.i.i52 = icmp eq i32 %5, 1
  %switch.select.i.i.i.i53 = select i1 %switch.selectcmp.i.i.i.i52, i64 32, i64 40
  %switch.selectcmp2.i.i.i.i54 = icmp eq i32 %5, 0
  %switch.select3.i.i.i.i55 = select i1 %switch.selectcmp2.i.i.i.i54, i64 24, i64 %switch.select.i.i.i.i53 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.do = add nuw i32 %5, 1                       ; 2 uses
  %exitcond.peel.not = icmp eq i32 %i.do, 2
  %exitcond274.peel.not = icmp eq i32 %i.do, 2
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph269, %bb.bb
  %.sroa.0230.0268 = phi ptr [ %0, %.lr.ph269 ], [ %.sroa.0230.1, %bb.bb ] ; 17 uses
  %.sroa.0219.0267 = phi ptr [ %2, %.lr.ph269 ], [ %.sroa.0219.1, %bb.bb ] ; 17 uses
  %i.dp = load double, ptr %.sroa.0219.0267, align 8, !tbaa !53 ; 2 uses
  %i.dq = load double, ptr %.sroa.0230.0268, align 8, !tbaa !53 ; 2 uses
  %i.dr = fcmp olt double %i.dp, %i.dq
  br i1 %i.dr, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ds = fcmp oeq double %i.dp, %i.dq
  br i1 %i.ds, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit.thread239

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit: ; preds = %bb.ac
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0219.0267, i64 48
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !2755
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0230.0268, i64 48
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !2755
  %i.dx = icmp ult ptr %i.du, %i.dw
  br i1 %i.dx, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit.thread, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit.thread239

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit.thread: ; preds = %bb.ab, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit
  %.not248261 = icmp eq ptr %.sroa.0230.0268, %1
  br i1 %.not248261, label %.critedge2, label %.lr.ph264

.lr.ph264:                                        ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit.thread
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0219.0267, i64 24
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0219.0267, i64 48
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0219.0267, i64 8 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0219.0267, i64 16 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0219.0267, i64 %switch.select3.i.i.i.i55
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0219.0267, i64 32
  %.phi.trans.insert279 = getelementptr inbounds nuw i8, ptr %.sroa.0219.0267, i64 40
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph264, %.thread
  %.sroa.0207.0262 = phi ptr [ %.sroa.0230.0268, %.lr.ph264 ], [ %i.fr, %.thread ] ; 18 uses
  %i.ee = load double, ptr %i.dy, align 8, !tbaa !53
  %i.ef = load double, ptr %.sroa.0207.0262, align 8, !tbaa !53
  %i.eg = fcmp ogt double %i.ee, %i.ef
  br i1 %i.eg, label %bb.ae, label %.critedge2

bb.ae:                                            ; preds = %bb.ad
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0207.0262, i64 48
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !2755 ; 2 uses
  %i.ej = load ptr, ptr %i.dz, align 8, !tbaa !2755 ; 2 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.ae
  br i1 %.not252, label %._crit_edge260, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i.preheader

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i.preheader: ; preds = %.preheader
  %i.el = load double, ptr %i.ed, align 8, !tbaa !53
  %.in.i.i.i.i.peel = getelementptr inbounds nuw i8, ptr %.sroa.0207.0262, i64 8
  %i.em = load double, ptr %.in.i.i.i.i.peel, align 8, !tbaa !53
  %i.en = fcmp ogt double %i.el, %i.em
  br i1 %i.en, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE14does_intersectERKSF_SJ_i.exit.peel, label %.thread

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE14does_intersectERKSF_SJ_i.exit.peel: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i.preheader
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0207.0262, i64 32
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !53
  %i.eq = load double, ptr %i.ea, align 8, !tbaa !53
  %i.er = fcmp ogt double %i.ep, %i.eq
  br i1 %i.er, label %bb.af, label %.thread

bb.af:                                            ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE14does_intersectERKSF_SJ_i.exit.peel
  br i1 %exitcond274.peel.not, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next: ; preds = %bb.af
  %.pre280 = load double, ptr %.phi.trans.insert279, align 8, !tbaa !53
  %.in.i.i.i.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0207.0262, i64 16
  %.pre281 = load double, ptr %.in.i.i.i.i.phi.trans.insert, align 8, !tbaa !53
  %i.es = fcmp ogt double %.pre280, %.pre281
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.0207.0262, i64 40
  br label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i

bb.ag:                                            ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE14does_intersectERKSF_SJ_i.exit
  %i.eu = add nuw i32 %.021259, 1
  %exitcond274.not = icmp eq i32 %.021259, %5
  br i1 %exitcond274.not, label %._crit_edge260, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i, !llvm.loop !2806

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next, %bb.ag
  %.021259 = phi i32 [ %i.eu, %bb.ag ], [ 2, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next ] ; 2 uses
  br i1 %i.es, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE14does_intersectERKSF_SJ_i.exit, label %.thread

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE14does_intersectERKSF_SJ_i.exit: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_hiERKSF_SJ_i.exit.i
  %i.ev = load double, ptr %i.et, align 8, !tbaa !53
  %i.ew = load double, ptr %i.eb, align 8, !tbaa !53
  %i.ex = fcmp ogt double %i.ev, %i.ew
  br i1 %i.ex, label %bb.ag, label %.thread

._crit_edge260:                                   ; preds = %bb.ag, %.preheader
  switch i32 %5, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i [
    i32 0, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i
    i32 1, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i
  ]

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i: ; preds = %bb.af, %._crit_edge260
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0207.0262, i64 8
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i: ; preds = %._crit_edge260
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0207.0262, i64 16
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i, %._crit_edge260
  %.in.i.i = phi ptr [ %i.eb, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i ], [ %i.ea, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i ], [ %.sroa.0219.0267, %._crit_edge260 ]
  %.in.i.i9.i.i = phi ptr [ %i.ez, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i ], [ %i.ey, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i ], [ %.sroa.0207.0262, %._crit_edge260 ]
  %i.fa = load double, ptr %.in.i.i, align 8, !tbaa !53
  %i.fb = load double, ptr %.in.i.i9.i.i, align 8, !tbaa !53
  %i.fc = fcmp olt double %i.fa, %i.fb
  br i1 %i.fc, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb0EE13is_lo_less_loERKSF_SJ_i.exit.thread.i, label %bb.ah

bb.ah:                                            ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i
  switch i32 %5, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i.i [
    i32 0, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i
    i32 1, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i.i
  ]
end_hunk_3
