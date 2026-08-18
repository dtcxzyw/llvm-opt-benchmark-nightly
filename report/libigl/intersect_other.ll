inline.NumInlined: 13174
inline.NumDeleted: 5391
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZNSt4pairIKlSt6vectorIS_IlN4CGAL6ObjectEESaIS4_EEED2Ev:bb.a

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !159  ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !161
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !163
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !51
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #22, !inline_history !500
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #22, !inline_history !500
  br label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.t, %bb.f ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.g, label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i, !prof !148

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #22
  br label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !165

_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !147
  br label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.w = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !150
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #40
  br label %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EED2Ev.exit

_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEES3_EvT_S5_RSaIT0_E.exit.i, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEEixEOl(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  %.pre = load i64, ptr %1, align 8, !tbaa !25    ; 3 uses
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !25
  %i.f = icmp slt i64 %i.e, %.pre                 ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !489 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEE11lower_boundERS9_.exit, label %.lr.ph.i.i.i, !llvm.loop !490

_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEE11lower_boundERS9_.exit: ; preds = %.lr.ph.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEE11lower_boundERS9_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !25
  %i.j = icmp slt i64 %.pre, %i.i
  br i1 %i.j, label %.critedge, label %_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOlEESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEE11lower_boundERS9_.exit, %bb.b
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.b ], [ %.19.i.i.i, %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEE11lower_boundERS9_.exit ], [ %i.c, %bb.a ]
  %i.k = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #45 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  store i64 %.pre, ptr %i.l, align 8, !tbaa !139
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %i.n = invoke { ptr, ptr } @_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.c unwind label %_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.c:                                             ; preds = %.critedge
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i4 = icmp ne ptr %i.o, null
  %i.q = icmp eq ptr %i.p, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.q
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.s = load i64, ptr %i.l, align 8, !tbaa !25
  %i.t = load i64, ptr %i.r, align 8, !tbaa !25
  %i.u = icmp slt i64 %i.s, %i.t
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.v = phi i1 [ %i.u, %bb.e ], [ true, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.v, ptr noundef nonnull %i.k, ptr noundef nonnull %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #22
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !37
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !37
  br label %_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOlEESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_.exit

_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.k) #22
  resume { ptr, i32 } %i.z

bb.f:                                             ; preds = %bb.c
  tail call void @_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.k) #22
  br label %_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOlEESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_.exit

_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOlEESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_.exit: ; preds = %bb.f, %.thread.i, %bb.b
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.b ], [ %i.k, %.thread.i ], [ %i.o, %bb.f ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.aa
}

declare void @_ZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickENS4_INS7_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEES6_NS4_IiLin1ELi1ELi0ELin1ELi1EEESP_EEvRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKSt6vectorINS7_10Triangle_3IT1_EESaIS12_EERKSt3mapINSV_5IndexESZ_ISt4pairIS18_NS7_6ObjectEESaIS1B_EESt4lessIS18_ESaIS19_IKS18_S1D_EEEbbRNS3_15PlainObjectBaseIT2_EERNS1M_IT3_EERNS1M_IT4_EERNS1M_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(48), i1 noundef zeroext, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  invoke void @_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #41
  unreachable

_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4CGAL18Box_intersection_d12segment_treeIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ZN3igl8copyleft4cgalL22intersect_other_helperIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEESP_SQ_SQ_NSO_INS_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEESQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EEbRKNSN_10MatrixBaseIT0_EERKNS18_IT1_EERKNS18_IT2_EERKNS18_IT3_EERKNSL_28RemeshSelfIntersectionsParamERNSN_15PlainObjectBaseIT4_EERNS1S_IT5_EERNS1S_IT6_EERNS1S_IT7_EERNS1S_IT8_EEEUlRKSE_S29_E_dNS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEEEvT_S2F_S19_S19_S1H_S1H_S1D_S1L_lib(ptr %0, ptr %1, ptr %2, ptr %3, double noundef %4, double noundef %5, ptr nofree noundef readonly byval(%class.anon.125) align 8 captures(none) %6, i64 noundef range(i64 -2147483648, 2147483648) %7, i32 noundef range(i32 -2147483648, 2147483647) %8, i1 noundef zeroext %9) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.10.i.i114.i = alloca [3 x double], align 8 ; 4 uses
  %10 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d", align 8 ; 4 uses
  %.sroa.10.i.i79.i = alloca [3 x double], align 8 ; 4 uses
  %11 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d", align 8 ; 4 uses
  %.sroa.10.i.i44.i = alloca [3 x double], align 8 ; 4 uses
  %12 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d", align 8 ; 4 uses
  %.sroa.10.i.i.i = alloca [3 x double], align 8  ; 4 uses
  %13 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d", align 8 ; 4 uses
  %.sroa.10.i.i.i18.i = alloca [3 x double], align 8 ; 4 uses
  %.sroa.10.i.i.i.i = alloca [3 x double], align 8 ; 4 uses
  %14 = alloca %class.anon.125, align 8           ; 5 uses
  %15 = alloca %"class.CGAL::Box_intersection_d::Predicate_traits_d<CGAL::Box_intersection_d::Box_traits_d<CGAL::Box_intersection_d::Box_with_handle_d<double, 3, __gnu_cxx::__normal_iterator<CGAL::Triangle_3<CGAL::Epick> *, std::vector<CGAL::Triangle_3<CGAL::Epick>>>>>, true>::Spanning", align 8 ; 4 uses
  %i.a = alloca double, align 8                   ; 8 uses
  %i.b = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN4CGAL18Box_intersection_d12segment_treeIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ZN3igl8copyleft4cgalL22intersect_other_helperIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEESP_SQ_SQ_NSO_INS_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEESQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EEbRKNSN_10MatrixBaseIT0_EERKNS18_IT1_EERKNS18_IT2_EERKNS18_IT3_EERKNSL_28RemeshSelfIntersectionsParamERNSN_15PlainObjectBaseIT4_EERNS1S_IT5_EERNS1S_IT6_EERNS1S_IT7_EERNS1S_IT8_EEEUlRKSE_S29_E_dNS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEEEvT_S2F_S19_S19_S1H_S1H_S1D_S1L_libE5level) ; 6 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !47
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 4, !tbaa !47
  %i.e = icmp eq ptr %0, %1
  br i1 %i.e, label %bb.az, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ne ptr %2, %3
  %i.g = fcmp ult double %4, %5
  %or.cond = and i1 %i.f, %i.g
  br i1 %or.cond, label %bb.c, label %bb.az

.loopexit:                                        ; preds = %bb.af
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.ah
  %lpad.loopexit127 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit.i, %bb.d, %bb.ak
  %lpad.loopexit.split-lp128 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i32 %8, 0
  br i1 %i.h, label %bb.d, label %bb.ai

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false)
  %16 = ptrtoint ptr %1 to i64
  %17 = ptrtoint ptr %0 to i64                    ; 2 uses
  %18 = sub i64 %16, %17                          ; 2 uses
  %19 = sdiv exact i64 %18, 56
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %19, i1 true)
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = xor i64 %i.j, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEElNS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_T1_(ptr %0, ptr %1, i64 noundef %i.k, i32 0)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  %i.l = icmp sgt i64 %18, 896
  br i1 %i.l, label %bb.e, label %.preheader.i.i

bb.e:                                             ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %scevgep.i = getelementptr i8, ptr %0, i64 56
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %bb.e
  %.sroa.0.025.i49.idx.i = phi i64 [ 56, %bb.e ], [ %.sroa.0.025.i49.add.i, %bb.j ] ; 4 uses
  %.pn24.i50.i = phi ptr [ %0, %bb.e ], [ %.sroa.0.025.i49.ptr.i, %bb.j ] ; 4 uses
  %.sroa.0.025.i49.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.025.i49.idx.i ; 4 uses
  %i.n = load double, ptr %.sroa.0.025.i49.ptr.i, align 8, !tbaa !249 ; 5 uses
  %i.o = load double, ptr %0, align 8, !tbaa !249 ; 2 uses
  %i.p = fcmp olt double %i.n, %i.o
  br i1 %i.p, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i74.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = fcmp oeq double %i.n, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %.pn24.i50.i, i64 104
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i73.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i51.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i73.i: ; preds = %bb.g
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !501
  %i.u = icmp ult ptr %i.s, %i.t
  br i1 %i.u, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i74.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i51.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i74.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i73.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i49.ptr.i, i64 56, i1 false)
  %i.v = icmp samesign ugt i64 %.sroa.0.025.i49.idx.i, 56
  br i1 %i.v, label %bb.h, label %bb.i, !prof !503

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i74.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.025.i49.idx.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i75.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i74.i
  %i.w = getelementptr inbounds nuw i8, ptr %.pn24.i50.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i75.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i75.i: ; preds = %bb.i, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %12, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %bb.j

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i51.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i73.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i44.i)
  %.sroa.6.0..sroa_idx.i.i53.i = getelementptr inbounds nuw i8, ptr %.pn24.i50.i, i64 64
  %i.x = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i53.i, align 8
  %.sroa.10.0..sroa_idx.i.i57.i = getelementptr inbounds nuw i8, ptr %.pn24.i50.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i44.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i57.i, i64 24, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i60.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i60.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i72.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i51.i
  %.sroa.014.0.us.i.i61.i = phi ptr [ %.sroa.0.0.us.i.i62.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i72.i ], [ %.sroa.0.025.i49.ptr.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i51.i ] ; 7 uses
  %.sroa.0.0.us.i.i62.i = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i61.i, i64 -56 ; 3 uses
  %i.y = load double, ptr %.sroa.0.0.us.i.i62.i, align 8, !tbaa !249 ; 2 uses
  %i.z = fcmp olt double %i.n, %i.y
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i72.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i63.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i63.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i60.i
  %i.aa = fcmp oeq double %i.n, %i.y
  br i1 %i.aa, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i71.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i64.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i71.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i63.i
  %i.ab = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i61.i, i64 -8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !501
  %i.ad = icmp ult ptr %i.s, %i.ac
  br i1 %i.ad, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i72.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i64.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i72.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i71.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i60.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i61.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i62.i, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i60.i, !llvm.loop !504

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i64.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i71.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i63.i
  store double %i.n, ptr %.sroa.014.0.us.i.i61.i, align 8
  %.sroa.6.0..sroa_idx5.i.i65.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i61.i, i64 8
  store <2 x double> %i.x, ptr %.sroa.6.0..sroa_idx5.i.i65.i, align 8
  %.sroa.10.0..sroa_idx9.i.i67.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i61.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i67.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i44.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i68.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i61.i, i64 48
  store ptr %i.s, ptr %.sroa.1010.0..sroa_idx11.i.i68.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i44.i)
  br label %bb.j

bb.j:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i64.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i75.i
  %.sroa.0.025.i49.add.i = add nuw nsw i64 %.sroa.0.025.i49.idx.i, 56 ; 2 uses
  %.not.i70.i = icmp eq i64 %.sroa.0.025.i49.add.i, 896
  br i1 %.not.i70.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit78.i, label %bb.f, !llvm.loop !505

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit78.i: ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.ae, %1
  br i1 %.not9.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i.i: ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit78.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i.i
  %.sroa.0.010.us.i.i.i = phi ptr [ %i.an, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i.i ], [ %i.ae, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit78.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i.i)
  %i.af = load <2 x double>, ptr %.sroa.0.010.us.i.i.i, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i.i, i64 16
  %.sroa.8.0.copyload.i.us.i.i.i = load double, ptr %.sroa.8.0..sroa_idx.i.us.i.i.i, align 8
  %.sroa.10.0..sroa_idx.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.us.i.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i.i, i64 48
  %.sroa.1010.0.copyload.i.us.i.i.i = load ptr, ptr %.sroa.1010.0..sroa_idx.i.us.i.i.i, align 8 ; 2 uses
  %i.ag = extractelement <2 x double> %i.af, i64 0 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i.i
  %.sroa.014.0.us.i.us.i.i.i = phi ptr [ %.sroa.0.0.us.i.us.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i.i ], [ %.sroa.0.010.us.i.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i.i ] ; 7 uses
  %.sroa.0.0.us.i.us.i.i.i = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i.i, i64 -56 ; 3 uses
  %i.ah = load double, ptr %.sroa.0.0.us.i.us.i.i.i, align 8, !tbaa !249 ; 2 uses
  %i.ai = fcmp olt double %i.ag, %i.ah
  br i1 %i.ai, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i.i
  %i.aj = fcmp oeq double %i.ag, %i.ah
  br i1 %i.aj, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i.i
  %i.ak = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i.i, i64 -8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !501
  %i.am = icmp ult ptr %.sroa.1010.0.copyload.i.us.i.i.i, %i.al
  br i1 %i.am, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.us.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.us.i.i.i, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i.i, !llvm.loop !504

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i.i
  store <2 x double> %i.af, ptr %.sroa.014.0.us.i.us.i.i.i, align 8
  %.sroa.8.0..sroa_idx7.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i.i, i64 16
  store double %.sroa.8.0.copyload.i.us.i.i.i, ptr %.sroa.8.0..sroa_idx7.i.us.i.i.i, align 8
  %.sroa.10.0..sroa_idx9.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.us.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i.i, i64 48
  store ptr %.sroa.1010.0.copyload.i.us.i.i.i, ptr %.sroa.1010.0..sroa_idx11.i.us.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i.i)
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i.i, i64 56 ; 2 uses
  %.not.us.i.i.i = icmp eq ptr %i.an, %1
  br i1 %.not.us.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i.i, !llvm.loop !506

.preheader.i.i:                                   ; preds = %.noexc
  %.sroa.0.022.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.not23.i.i = icmp eq ptr %.sroa.0.022.i.i, %1
  br i1 %.not23.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.k

bb.k:                                             ; preds = %bb.p, %.lr.ph.i.i
  %.sroa.0.025.i.i = phi ptr [ %.sroa.0.022.i.i, %.lr.ph.i.i ], [ %.sroa.0.0.i.i, %bb.p ] ; 6 uses
  %.pn24.i.i = phi ptr [ %0, %.lr.ph.i.i ], [ %.sroa.0.025.i.i, %bb.p ] ; 6 uses
  %i.ap = load double, ptr %.sroa.0.025.i.i, align 8, !tbaa !249 ; 5 uses
  %i.aq = load double, ptr %0, align 8, !tbaa !249 ; 2 uses
  %i.ar = fcmp olt double %i.ap, %i.aq
  br i1 %i.ar, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = fcmp oeq double %i.ap, %i.aq
  br i1 %i.as, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i.i: ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %.pn24.i.i, i64 104
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !501
  %i.av = load ptr, ptr %i.ao, align 8, !tbaa !501
  %i.aw = icmp ult ptr %i.au, %i.av
  br i1 %i.aw, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i.i, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i.i, i64 56, i1 false)
  %i.ax = ptrtoint ptr %.sroa.0.025.i.i to i64
  %i.ay = sub i64 %i.ax, %17                      ; 4 uses
  %i.az = icmp sgt i64 %i.ay, 56
  br i1 %i.az, label %bb.m, label %bb.n, !prof !503

bb.m:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i.i
  %20 = getelementptr inbounds nuw i8, ptr %.pn24.i.i, i64 112
  %.neg34.i.i = udiv exact i64 %i.ay, 56
  %.neg34.neg.i.i = sub nsw i64 0, %.neg34.i.i
  %21 = getelementptr inbounds [56 x i8], ptr %20, i64 %.neg34.neg.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %21, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.ay, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i.i

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i.i
  %i.ba = icmp eq i64 %i.ay, 56
  br i1 %i.ba, label %bb.o, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %.pn24.i.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bb, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i.i: ; preds = %bb.o, %bb.n, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %13, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.p

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i.i, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i)
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.pn24.i.i, i64 64
  %i.bc = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.pn24.i.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.pn24.i.i, i64 104
  %.sroa.1010.0.copyload.i.i.i = load ptr, ptr %.sroa.1010.0..sroa_idx.i.i.i, align 8 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i.i
  %.sroa.014.0.us.i.i.i = phi ptr [ %.sroa.0.0.us.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i.i ], [ %.sroa.0.025.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i.i ] ; 7 uses
  %.sroa.0.0.us.i.i.i = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i.i, i64 -56 ; 3 uses
  %i.bd = load double, ptr %.sroa.0.0.us.i.i.i, align 8, !tbaa !249 ; 2 uses
  %i.be = fcmp olt double %i.ap, %i.bd
  br i1 %i.be, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i.i
  %i.bf = fcmp oeq double %i.ap, %i.bd
  br i1 %i.bf, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i.i
  %i.bg = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i.i, i64 -8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !501
  %i.bi = icmp ult ptr %.sroa.1010.0.copyload.i.i.i, %i.bh
  br i1 %i.bi, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i.i, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i.i, !llvm.loop !504

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i.i
  store double %i.ap, ptr %.sroa.014.0.us.i.i.i, align 8
  %.sroa.6.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i.i, i64 8
  store <2 x double> %i.bc, ptr %.sroa.6.0..sroa_idx5.i.i.i, align 8
  %.sroa.10.0..sroa_idx9.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i.i, i64 48
  store ptr %.sroa.1010.0.copyload.i.i.i, ptr %.sroa.1010.0..sroa_idx11.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i)
  br label %bb.p

bb.p:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i.i
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i.i, i64 56 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.0.0.i.i, %1
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit.i, label %bb.k, !llvm.loop !505

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit.i: ; preds = %bb.p, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit78.i, %.preheader.i.i
  %i.bj = ptrtoint ptr %3 to i64
  %i.bk = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.bl = sub i64 %i.bj, %i.bk                    ; 2 uses
  %i.bm = sdiv exact i64 %i.bl, 56
  %i.bn = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bm, i1 true)
  %i.bo = shl nuw nsw i64 %i.bn, 1
  %i.bp = xor i64 %i.bo, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEElNS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_T1_(ptr %2, ptr %3, i64 noundef %i.bp, i32 0)
          to label %.noexc101 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc101:                                        ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit.i
  %i.bq = icmp sgt i64 %i.bl, 896
  br i1 %i.bq, label %bb.q, label %.preheader.i80.i

bb.q:                                             ; preds = %.noexc101
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 48
  %scevgep189.i = getelementptr i8, ptr %2, i64 56
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %bb.q
  %.sroa.0.025.i119.idx.i = phi i64 [ 56, %bb.q ], [ %.sroa.0.025.i119.add.i, %bb.v ] ; 4 uses
  %.pn24.i120.i = phi ptr [ %2, %bb.q ], [ %.sroa.0.025.i119.ptr.i, %bb.v ] ; 4 uses
  %.sroa.0.025.i119.ptr.i = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.025.i119.idx.i ; 4 uses
  %i.bs = load double, ptr %.sroa.0.025.i119.ptr.i, align 8, !tbaa !249 ; 5 uses
  %i.bt = load double, ptr %2, align 8, !tbaa !249 ; 2 uses
  %i.bu = fcmp olt double %i.bs, %i.bt
  br i1 %i.bu, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i144.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bv = fcmp oeq double %i.bs, %i.bt
  %i.bw = getelementptr inbounds nuw i8, ptr %.pn24.i120.i, i64 104
  %i.bx = load ptr, ptr %i.bw, align 8            ; 3 uses
  br i1 %i.bv, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i143.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i121.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i143.i: ; preds = %bb.s
  %i.by = load ptr, ptr %i.br, align 8, !tbaa !501
  %i.bz = icmp ult ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i144.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i121.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i144.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i143.i, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i119.ptr.i, i64 56, i1 false)
  %i.ca = icmp samesign ugt i64 %.sroa.0.025.i119.idx.i, 56
  br i1 %i.ca, label %bb.t, label %bb.u, !prof !503

bb.t:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i144.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep189.i, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %.sroa.0.025.i119.idx.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i145.i

bb.u:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i144.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.pn24.i120.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cb, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i145.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i145.i: ; preds = %bb.u, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %10, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.v

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i121.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i143.i, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i114.i)
  %.sroa.6.0..sroa_idx.i.i123.i = getelementptr inbounds nuw i8, ptr %.pn24.i120.i, i64 64
  %i.cc = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i123.i, align 8
  %.sroa.10.0..sroa_idx.i.i127.i = getelementptr inbounds nuw i8, ptr %.pn24.i120.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i114.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i127.i, i64 24, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i130.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i130.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i142.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i121.i
  %.sroa.014.0.us.i.i131.i = phi ptr [ %.sroa.0.0.us.i.i132.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i142.i ], [ %.sroa.0.025.i119.ptr.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i121.i ] ; 7 uses
  %.sroa.0.0.us.i.i132.i = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i131.i, i64 -56 ; 3 uses
  %i.cd = load double, ptr %.sroa.0.0.us.i.i132.i, align 8, !tbaa !249 ; 2 uses
  %i.ce = fcmp olt double %i.bs, %i.cd
  br i1 %i.ce, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i142.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i133.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i133.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i130.i
  %i.cf = fcmp oeq double %i.bs, %i.cd
  br i1 %i.cf, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i141.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i134.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i141.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i133.i
  %i.cg = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i131.i, i64 -8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !501
  %i.ci = icmp ult ptr %i.bx, %i.ch
  br i1 %i.ci, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i142.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i134.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i142.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i141.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i130.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i131.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i132.i, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i130.i, !llvm.loop !504

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i134.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i141.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i133.i
  store double %i.bs, ptr %.sroa.014.0.us.i.i131.i, align 8
  %.sroa.6.0..sroa_idx5.i.i135.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i131.i, i64 8
  store <2 x double> %i.cc, ptr %.sroa.6.0..sroa_idx5.i.i135.i, align 8
  %.sroa.10.0..sroa_idx9.i.i137.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i131.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i137.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i114.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i138.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i131.i, i64 48
  store ptr %i.bx, ptr %.sroa.1010.0..sroa_idx11.i.i138.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i114.i)
  br label %bb.v

bb.v:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i134.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i145.i
  %.sroa.0.025.i119.add.i = add nuw nsw i64 %.sroa.0.025.i119.idx.i, 56 ; 2 uses
  %.not.i140.i = icmp eq i64 %.sroa.0.025.i119.add.i, 896
  br i1 %.not.i140.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit148.i, label %bb.r, !llvm.loop !505

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit148.i: ; preds = %bb.v
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 896 ; 2 uses
  %.not9.i.i19.i = icmp eq ptr %i.cj, %3
  br i1 %.not9.i.i19.i, label %.preheader.i.preheader, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i21.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i21.i: ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit148.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35.i
  %.sroa.0.010.us.i.i22.i = phi ptr [ %i.cs, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35.i ], [ %i.cj, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit148.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i18.i)
  %i.ck = load <2 x double>, ptr %.sroa.0.010.us.i.i22.i, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx.i.us.i.i26.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i22.i, i64 16
  %.sroa.8.0.copyload.i.us.i.i27.i = load double, ptr %.sroa.8.0..sroa_idx.i.us.i.i26.i, align 8
  %.sroa.10.0..sroa_idx.i.us.i.i28.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i22.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i18.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.us.i.i28.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.us.i.i29.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i22.i, i64 48
  %.sroa.1010.0.copyload.i.us.i.i30.i = load ptr, ptr %.sroa.1010.0..sroa_idx.i.us.i.i29.i, align 8 ; 2 uses
  %i.cl = extractelement <2 x double> %i.ck, i64 0 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i31.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i31.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i42.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i21.i
  %.sroa.014.0.us.i.us.i.i32.i = phi ptr [ %.sroa.0.0.us.i.us.i.i33.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i42.i ], [ %.sroa.0.010.us.i.i22.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i21.i ] ; 7 uses
  %.sroa.0.0.us.i.us.i.i33.i = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i32.i, i64 -56 ; 3 uses
  %i.cm = load double, ptr %.sroa.0.0.us.i.us.i.i33.i, align 8, !tbaa !249 ; 2 uses
  %i.cn = fcmp olt double %i.cl, %i.cm
  br i1 %i.cn, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i42.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i34.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i34.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i31.i
  %i.co = fcmp oeq double %i.cl, %i.cm
  br i1 %i.co, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i41.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i41.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i34.i
  %i.cp = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i32.i, i64 -8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !501
  %i.cr = icmp ult ptr %.sroa.1010.0.copyload.i.us.i.i30.i, %i.cq
  br i1 %i.cr, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i42.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i42.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i41.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i31.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.us.i.i32.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.us.i.i33.i, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i31.i, !llvm.loop !504

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i41.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i34.i
  store <2 x double> %i.ck, ptr %.sroa.014.0.us.i.us.i.i32.i, align 8
  %.sroa.8.0..sroa_idx7.i.us.i.i37.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i32.i, i64 16
  store double %.sroa.8.0.copyload.i.us.i.i27.i, ptr %.sroa.8.0..sroa_idx7.i.us.i.i37.i, align 8
  %.sroa.10.0..sroa_idx9.i.us.i.i38.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i32.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.us.i.i38.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i18.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.us.i.i39.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i32.i, i64 48
  store ptr %.sroa.1010.0.copyload.i.us.i.i30.i, ptr %.sroa.1010.0..sroa_idx11.i.us.i.i39.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i18.i)
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i22.i, i64 56 ; 2 uses
  %.not.us.i.i40.i = icmp eq ptr %i.cs, %3
  br i1 %.not.us.i.i40.i, label %.preheader.i.preheader, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i21.i, !llvm.loop !506

.preheader.i80.i:                                 ; preds = %.noexc101
  %.sroa.0.022.i81.i = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %.not23.i82.i = icmp eq ptr %.sroa.0.022.i81.i, %3
  br i1 %.not23.i82.i, label %.preheader.i.preheader, label %.lr.ph.i83.i

.lr.ph.i83.i:                                     ; preds = %.preheader.i80.i
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.w

bb.w:                                             ; preds = %bb.ab, %.lr.ph.i83.i
  %.sroa.0.025.i84.i = phi ptr [ %.sroa.0.022.i81.i, %.lr.ph.i83.i ], [ %.sroa.0.0.i104.i, %bb.ab ] ; 6 uses
  %.pn24.i85.i = phi ptr [ %2, %.lr.ph.i83.i ], [ %.sroa.0.025.i84.i, %bb.ab ] ; 6 uses
  %i.cu = load double, ptr %.sroa.0.025.i84.i, align 8, !tbaa !249 ; 5 uses
  %i.cv = load double, ptr %2, align 8, !tbaa !249 ; 2 uses
  %i.cw = fcmp olt double %i.cu, %i.cv
  br i1 %i.cw, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i109.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cx = fcmp oeq double %i.cu, %i.cv
  br i1 %i.cx, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i108.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i86.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i108.i: ; preds = %bb.x
  %i.cy = getelementptr inbounds nuw i8, ptr %.pn24.i85.i, i64 104
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !501
  %i.da = load ptr, ptr %i.ct, align 8, !tbaa !501
  %i.db = icmp ult ptr %i.cz, %i.da
  br i1 %i.db, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i109.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i86.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i109.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i108.i, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i84.i, i64 56, i1 false)
  %i.dc = ptrtoint ptr %.sroa.0.025.i84.i to i64
  %i.dd = sub i64 %i.dc, %i.bk                    ; 4 uses
  %i.de = icmp sgt i64 %i.dd, 56
  br i1 %i.de, label %bb.y, label %bb.z, !prof !503

bb.y:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i109.i
  %22 = getelementptr inbounds nuw i8, ptr %.pn24.i85.i, i64 112
  %.neg34.i111.i = udiv exact i64 %i.dd, 56
  %.neg34.neg.i112.i = sub nsw i64 0, %.neg34.i111.i
  %23 = getelementptr inbounds [56 x i8], ptr %22, i64 %.neg34.neg.i112.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %23, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %i.dd, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i110.i

bb.z:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i109.i
  %i.df = icmp eq i64 %i.dd, 56
  br i1 %i.df, label %bb.aa, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i110.i

bb.aa:                                            ; preds = %bb.z
  %i.dg = getelementptr inbounds nuw i8, ptr %.pn24.i85.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dg, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i110.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i110.i: ; preds = %bb.aa, %bb.z, %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %11, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.ab

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i86.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i108.i, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i79.i)
  %.sroa.6.0..sroa_idx.i.i88.i = getelementptr inbounds nuw i8, ptr %.pn24.i85.i, i64 64
  %i.dh = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i88.i, align 8
  %.sroa.10.0..sroa_idx.i.i92.i = getelementptr inbounds nuw i8, ptr %.pn24.i85.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i79.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i92.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.i93.i = getelementptr inbounds nuw i8, ptr %.pn24.i85.i, i64 104
  %.sroa.1010.0.copyload.i.i94.i = load ptr, ptr %.sroa.1010.0..sroa_idx.i.i93.i, align 8 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i95.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i95.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i107.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i86.i
  %.sroa.014.0.us.i.i96.i = phi ptr [ %.sroa.0.0.us.i.i97.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i107.i ], [ %.sroa.0.025.i84.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i86.i ] ; 7 uses
  %.sroa.0.0.us.i.i97.i = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i96.i, i64 -56 ; 3 uses
  %i.di = load double, ptr %.sroa.0.0.us.i.i97.i, align 8, !tbaa !249 ; 2 uses
  %i.dj = fcmp olt double %i.cu, %i.di
  br i1 %i.dj, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i107.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i98.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i98.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i95.i
  %i.dk = fcmp oeq double %i.cu, %i.di
  br i1 %i.dk, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i106.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i99.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i106.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i98.i
  %i.dl = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i96.i, i64 -8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !501
  %i.dn = icmp ult ptr %.sroa.1010.0.copyload.i.i94.i, %i.dm
  br i1 %i.dn, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i107.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i99.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i107.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i106.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i95.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i96.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i97.i, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i95.i, !llvm.loop !504

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i99.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i106.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i98.i
  store double %i.cu, ptr %.sroa.014.0.us.i.i96.i, align 8
  %.sroa.6.0..sroa_idx5.i.i100.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i96.i, i64 8
  store <2 x double> %i.dh, ptr %.sroa.6.0..sroa_idx5.i.i100.i, align 8
  %.sroa.10.0..sroa_idx9.i.i102.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i96.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i102.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i79.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i103.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i96.i, i64 48
  store ptr %.sroa.1010.0.copyload.i.i94.i, ptr %.sroa.1010.0..sroa_idx11.i.i103.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i79.i)
  br label %bb.ab

bb.ab:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i99.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i110.i
  %.sroa.0.0.i104.i = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i84.i, i64 56 ; 2 uses
  %.not.i105.i = icmp eq ptr %.sroa.0.0.i104.i, %3
  br i1 %.not.i105.i, label %.preheader.i.preheader, label %bb.w, !llvm.loop !505

.preheader.i.preheader:                           ; preds = %bb.ab, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit148.i, %.preheader.i80.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.critedge2.i
  %.sroa.0154.0185.i = phi ptr [ %i.eq, %.critedge2.i ], [ %2, %.preheader.i.preheader ] ; 5 uses
  %.sroa.0166.0184.i = phi ptr [ %.sroa.0166.1.lcssa.i, %.critedge2.i ], [ %0, %.preheader.i.preheader ] ; 3 uses
  %.not170174.i = icmp eq ptr %.sroa.0166.0184.i, %1
  br i1 %.not170174.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.do = load double, ptr %.sroa.0154.0185.i, align 8, !tbaa !249 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0154.0185.i, i64 48
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread.i, %.lr.ph.i
  %.sroa.0166.1175.i = phi ptr [ %.sroa.0166.0184.i, %.lr.ph.i ], [ %i.dx, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread.i ] ; 5 uses
  %i.dq = load double, ptr %.sroa.0166.1175.i, align 8, !tbaa !249 ; 2 uses
  %i.dr = fcmp olt double %i.dq, %i.do
  br i1 %i.dr, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ds = fcmp oeq double %i.dq, %i.do
  br i1 %i.ds, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.i, label %.critedge.i

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.i: ; preds = %bb.ad
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0166.1175.i, i64 48
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !501
  %i.dv = load ptr, ptr %i.dp, align 8, !tbaa !501
  %i.dw = icmp ult ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread.i, label %.critedge.i

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread.i: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.i, %bb.ac
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0166.1175.i, i64 56 ; 3 uses
  %.not170.i = icmp eq ptr %i.dx, %1
  br i1 %.not170.i, label %.critedge.i, label %bb.ac, !llvm.loop !507

.critedge.i:                                      ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread.i, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.i, %bb.ad, %.preheader.i
  %.sroa.0166.1.lcssa.i = phi ptr [ %.sroa.0166.0184.i, %.preheader.i ], [ %.sroa.0166.1175.i, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.i ], [ %i.dx, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread.i ], [ %.sroa.0166.1175.i, %bb.ad ] ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0154.0185.i, i64 24 ; 2 uses
  %.not171179.i = icmp eq ptr %.sroa.0166.1.lcssa.i, %1
  br i1 %.not171179.i, label %.critedge2.i, label %.lr.ph181.i

.lr.ph181.i:                                      ; preds = %.critedge.i
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0154.0185.i, i64 48 ; 2 uses
  br i1 %9, label %.lr.ph181.split.us.i, label %.lr.ph181.split.i

.lr.ph181.split.us.i:                             ; preds = %.lr.ph181.i, %.noexc102
  %.sroa.0.0180.us.i = phi ptr [ %i.eh, %.noexc102 ], [ %.sroa.0166.1.lcssa.i, %.lr.ph181.i ] ; 3 uses
  %i.ea = load double, ptr %i.dy, align 8, !tbaa !249
  %i.eb = load double, ptr %.sroa.0.0180.us.i, align 8, !tbaa !249
  %i.ec = fcmp ult double %i.ea, %i.eb
  br i1 %i.ec, label %.critedge2.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph181.split.us.i
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0.0180.us.i, i64 48
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !501 ; 2 uses
  %i.ef = load ptr, ptr %i.dz, align 8, !tbaa !501 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %.noexc102, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke fastcc void @_ZZN3igl8copyleft4cgalL22intersect_other_helperIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEES7_S8_S8_NS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEES8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EEbRKNS5_10MatrixBaseIT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNSQ_IT3_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseIT4_EERNS1A_IT5_EERNS1A_IT6_EERNS1A_IT7_EERNS1A_IT8_EEENKUlRKNS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS4_EESt6vectorIS1V_SaIS1V_EEEENS1Q_14ID_FROM_HANDLEEEES24_E_clES24_S24_(ptr noundef nonnull readonly align 8 dereferenceable(48) %14, ptr %i.ee, ptr %i.ef)
          to label %.noexc102 unwind label %.loopexit

.noexc102:                                        ; preds = %bb.af, %bb.ae
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.0180.us.i, i64 56 ; 2 uses
  %.not171.us.i = icmp eq ptr %i.eh, %1
  br i1 %.not171.us.i, label %.critedge2.i, label %.lr.ph181.split.us.i, !llvm.loop !508

.lr.ph181.split.i:                                ; preds = %.lr.ph181.i, %.noexc103
  %.sroa.0.0180.i = phi ptr [ %i.ep, %.noexc103 ], [ %.sroa.0166.1.lcssa.i, %.lr.ph181.i ] ; 3 uses
  %i.ei = load double, ptr %i.dy, align 8, !tbaa !249
  %i.ej = load double, ptr %.sroa.0.0180.i, align 8, !tbaa !249
  %i.ek = fcmp ult double %i.ei, %i.ej
  br i1 %i.ek, label %.critedge2.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph181.split.i
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0.0180.i, i64 48
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !501 ; 2 uses
  %i.en = load ptr, ptr %i.dz, align 8, !tbaa !501 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %.noexc103, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke fastcc void @_ZZN3igl8copyleft4cgalL22intersect_other_helperIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEES7_S8_S8_NS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEES8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EEbRKNS5_10MatrixBaseIT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNSQ_IT3_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseIT4_EERNS1A_IT5_EERNS1A_IT6_EERNS1A_IT7_EERNS1A_IT8_EEENKUlRKNS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS4_EESt6vectorIS1V_SaIS1V_EEEENS1Q_14ID_FROM_HANDLEEEES24_E_clES24_S24_(ptr noundef nonnull readonly align 8 dereferenceable(48) %14, ptr %i.en, ptr %i.em)
          to label %.noexc103 unwind label %.loopexit.split-lp.loopexit

.noexc103:                                        ; preds = %bb.ah, %bb.ag
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0.0180.i, i64 56 ; 2 uses
  %.not171.i = icmp eq ptr %i.ep, %1
  br i1 %.not171.i, label %.critedge2.i, label %.lr.ph181.split.i, !llvm.loop !508

.critedge2.i:                                     ; preds = %.noexc103, %.lr.ph181.split.i, %.noexc102, %.lr.ph181.split.us.i, %.critedge.i
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0154.0185.i, i64 56 ; 2 uses
  %.not.i = icmp eq ptr %i.eq, %3
  br i1 %.not.i, label %.loopexit130, label %.preheader.i, !llvm.loop !509

.loopexit130:                                     ; preds = %.critedge2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %bb.az

bb.ai:                                            ; preds = %bb.c
  %24 = ptrtoint ptr %1 to i64
  %25 = ptrtoint ptr %0 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 56
  %i.er = icmp slt i64 %27, %7
  br i1 %i.er, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.es = ptrtoint ptr %3 to i64
  %i.et = ptrtoint ptr %2 to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = sdiv exact i64 %i.eu, 56
  %i.ew = icmp slt i64 %i.ev, %7
  br i1 %i.ew, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  invoke fastcc void @_ZN4CGAL18Box_intersection_d21modified_two_way_scanIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ZN3igl8copyleft4cgalL22intersect_other_helperIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEESP_SQ_SQ_NSO_INS_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEESQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EEbRKNSN_10MatrixBaseIT0_EERKNS18_IT1_EERKNS18_IT2_EERKNS18_IT3_EERKNSL_28RemeshSelfIntersectionsParamERNSN_15PlainObjectBaseIT4_EERNS1S_IT5_EERNS1S_IT6_EERNS1S_IT7_EERNS1S_IT8_EEEUlRKSE_S29_E_NS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEEEvT_S2F_S19_S19_S1D_S1H_ib(ptr %0, ptr %1, ptr %2, ptr %3, ptr noundef nonnull byval(%class.anon.125) align 8 %6, i32 noundef %8, i1 noundef zeroext %9)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp

bb.al:                                            ; preds = %bb.aj
  %i.ex = fcmp oeq double %4, f0xFFEFFFFFFFFFFFFF
  %i.ey = fcmp oeq double %5, f0x7FEFFFFFFFFFFFFF
  %or.cond100 = or i1 %i.ex, %i.ey
  br i1 %or.cond100, label %.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  store double %4, ptr %15, align 8, !tbaa !510
  %i.ez = getelementptr inbounds nuw i8, ptr %15, i64 8
  store double %5, ptr %i.ez, align 8, !tbaa !512
  %i.fa = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 %8, ptr %i.fa, align 8, !tbaa !513
  %i.fb = invoke ptr @_ZSt9partitionIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE8SpanningEET_SO_SO_T0_(ptr %2, ptr %3, ptr noundef nonnull byval(%"class.CGAL::Box_intersection_d::Predicate_traits_d<CGAL::Box_intersection_d::Box_traits_d<CGAL::Box_intersection_d::Box_with_handle_d<double, 3, __gnu_cxx::__normal_iterator<CGAL::Triangle_3<CGAL::Epick> *, std::vector<CGAL::Triangle_3<CGAL::Epick>>>>>, true>::Spanning") align 8 %15)
          to label %bb.an unwind label %bb.aq     ; 5 uses

bb.an:                                            ; preds = %bb.am
  %.not = icmp eq ptr %2, %i.fb
  br i1 %.not, label %.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fc = add nsw i32 %8, -1                      ; 2 uses
  invoke fastcc void @_ZN4CGAL18Box_intersection_d12segment_treeIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ZN3igl8copyleft4cgalL22intersect_other_helperIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEESP_SQ_SQ_NSO_INS_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEESQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EEbRKNSN_10MatrixBaseIT0_EERKNS18_IT1_EERKNS18_IT2_EERKNS18_IT3_EERKNSL_28RemeshSelfIntersectionsParamERNSN_15PlainObjectBaseIT4_EERNS1S_IT5_EERNS1S_IT6_EERNS1S_IT7_EERNS1S_IT8_EEEUlRKSE_S29_E_dNS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEEEvT_S2F_S19_S19_S1H_S1H_S1D_S1L_lib(ptr %0, ptr %1, ptr %2, ptr %i.fb, double noundef f0xFFEFFFFFFFFFFFFF, double noundef f0x7FEFFFFFFFFFFFFF, ptr noundef nonnull byval(%class.anon.125) align 8 %6, i64 noundef %7, i32 noundef %i.fc, i1 noundef zeroext %9)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fd = xor i1 %9, true
  invoke fastcc void @_ZN4CGAL18Box_intersection_d12segment_treeIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ZN3igl8copyleft4cgalL22intersect_other_helperIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEESP_SQ_SQ_NSO_INS_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEESQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EEbRKNSN_10MatrixBaseIT0_EERKNS18_IT1_EERKNS18_IT2_EERKNS18_IT3_EERKNSL_28RemeshSelfIntersectionsParamERNSN_15PlainObjectBaseIT4_EERNS1S_IT5_EERNS1S_IT6_EERNS1S_IT7_EERNS1S_IT8_EEEUlRKSE_S29_E_dNS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEEEvT_S2F_S19_S19_S1H_S1H_S1D_S1L_lib(ptr %2, ptr %i.fb, ptr %0, ptr %1, double noundef f0xFFEFFFFFFFFFFFFF, double noundef f0x7FEFFFFFFFFFFFFF, ptr noundef nonnull byval(%class.anon.125) align 8 %6, i64 noundef %7, i32 noundef %i.fc, i1 noundef zeroext %i.fd)
          to label %.thread unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.am
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.thread:                                          ; preds = %bb.al, %bb.ap, %bb.an
  %storemerge178 = phi ptr [ %i.fb, %bb.an ], [ %i.fb, %bb.ap ], [ %2, %bb.al ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.ff = invoke ptr @_ZN4CGAL18Box_intersection_d12split_pointsIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEdEET_SN_SN_T0_iRT1_(ptr %0, ptr %1, i32 noundef %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.ar unwind label %bb.at     ; 4 uses

bb.ar:                                            ; preds = %.thread
  %i.fg = icmp eq ptr %i.ff, %0
  %i.fh = icmp eq ptr %i.ff, %1
  %or.cond125 = or i1 %i.fg, %i.fh
  br i1 %or.cond125, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  invoke fastcc void @_ZN4CGAL18Box_intersection_d21modified_two_way_scanIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ZN3igl8copyleft4cgalL22intersect_other_helperIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEESP_SQ_SQ_NSO_INS_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEESQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EEbRKNSN_10MatrixBaseIT0_EERKNS18_IT1_EERKNS18_IT2_EERKNS18_IT3_EERKNSL_28RemeshSelfIntersectionsParamERNSN_15PlainObjectBaseIT4_EERNS1S_IT5_EERNS1S_IT6_EERNS1S_IT7_EERNS1S_IT8_EEEUlRKSE_S29_E_NS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEEEvT_S2F_S19_S19_S1D_S1H_ib(ptr %0, ptr %1, ptr %storemerge178, ptr %3, ptr noundef nonnull byval(%class.anon.125) align 8 %6, i32 noundef %8, i1 noundef zeroext %9)
          to label %bb.ay unwind label %bb.at

bb.at:                                            ; preds = %bb.as, %.thread
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.au:                                            ; preds = %bb.ar
  %i.fj = load double, ptr %i.a, align 8, !tbaa !249
  %i.fk = invoke ptr @_ZSt9partitionIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7Lo_lessEET_SO_SO_T0_(ptr %storemerge178, ptr %3, double %i.fj, i32 %8)
          to label %bb.av unwind label %bb.ba

bb.av:                                            ; preds = %bb.au
  %i.fl = load double, ptr %i.a, align 8, !tbaa !249
  invoke fastcc void @_ZN4CGAL18Box_intersection_d12segment_treeIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ZN3igl8copyleft4cgalL22intersect_other_helperIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEESP_SQ_SQ_NSO_INS_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEESQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EEbRKNSN_10MatrixBaseIT0_EERKNS18_IT1_EERKNS18_IT2_EERKNS18_IT3_EERKNSL_28RemeshSelfIntersectionsParamERNSN_15PlainObjectBaseIT4_EERNS1S_IT5_EERNS1S_IT6_EERNS1S_IT7_EERNS1S_IT8_EEEUlRKSE_S29_E_dNS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEEEvT_S2F_S19_S19_S1H_S1H_S1D_S1L_lib(ptr %0, ptr %i.ff, ptr %storemerge178, ptr %i.fk, double noundef %4, double noundef %i.fl, ptr noundef nonnull byval(%class.anon.125) align 8 %6, i64 noundef %7, i32 noundef %8, i1 noundef zeroext %9)
          to label %bb.aw unwind label %bb.bb

bb.aw:                                            ; preds = %bb.av
  %i.fm = load double, ptr %i.a, align 8, !tbaa !249
  %i.fn = invoke ptr @_ZSt9partitionIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE10Hi_greaterEET_SO_SO_T0_(ptr %storemerge178, ptr %3, double %i.fm, i32 %8)
          to label %bb.ax unwind label %bb.bc

bb.ax:                                            ; preds = %bb.aw
  %i.fo = load double, ptr %i.a, align 8, !tbaa !249
  invoke fastcc void @_ZN4CGAL18Box_intersection_d12segment_treeIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ZN3igl8copyleft4cgalL22intersect_other_helperIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEESP_SQ_SQ_NSO_INS_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEESQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EEbRKNSN_10MatrixBaseIT0_EERKNS18_IT1_EERKNS18_IT2_EERKNS18_IT3_EERKNSL_28RemeshSelfIntersectionsParamERNSN_15PlainObjectBaseIT4_EERNS1S_IT5_EERNS1S_IT6_EERNS1S_IT7_EERNS1S_IT8_EEEUlRKSE_S29_E_dNS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEEEvT_S2F_S19_S19_S1H_S1H_S1D_S1L_lib(ptr %i.ff, ptr %1, ptr %storemerge178, ptr %i.fn, double noundef %i.fo, double noundef %5, ptr noundef nonnull byval(%class.anon.125) align 8 %6, i64 noundef %7, i32 noundef %8, i1 noundef zeroext %9)
          to label %bb.ay unwind label %bb.bb

bb.ay:                                            ; preds = %bb.ax, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.az

bb.az:                                            ; preds = %bb.ak, %bb.a, %bb.b, %bb.ay, %.loopexit130
  %i.fp = load i32, ptr %i.b, align 4, !tbaa !47
  %i.fq = add nsw i32 %i.fp, -1
  store i32 %i.fq, ptr %i.b, align 4, !tbaa !47
  ret void

bb.ba:                                            ; preds = %bb.au
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bb:                                            ; preds = %bb.ax, %bb.av
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %bb.aw
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bd:                                            ; preds = %bb.ba, %bb.bb, %bb.bc, %bb.at
  %.pn95 = phi { ptr, i32 } [ %i.fi, %bb.at ], [ %i.fs, %bb.bb ], [ %i.ft, %bb.bc ], [ %i.fr, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.aq, %bb.bd
  %.pn98 = phi { ptr, i32 } [ %i.fe, %bb.aq ], [ %.pn95, %bb.bd ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit127, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp128, %.loopexit.split-lp.loopexit.split-lp ]
  %i.fu = load i32, ptr %i.b, align 4, !tbaa !47
  %i.fv = add nsw i32 %i.fu, -1
  store i32 %i.fv, ptr %i.b, align 4, !tbaa !47
  resume { ptr, i32 } %.pn98
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4CGAL18Box_intersection_d21modified_two_way_scanIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ZN3igl8copyleft4cgalL22intersect_other_helperIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEESP_SQ_SQ_NSO_INS_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEESQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EEbRKNSN_10MatrixBaseIT0_EERKNS18_IT1_EERKNS18_IT2_EERKNS18_IT3_EERKNSL_28RemeshSelfIntersectionsParamERNSN_15PlainObjectBaseIT4_EERNS1S_IT5_EERNS1S_IT6_EERNS1S_IT7_EERNS1S_IT8_EEEUlRKSE_S29_E_NS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEEEvT_S2F_S19_S19_S1D_S1H_ib(ptr %0, ptr %1, ptr %2, ptr %3, ptr nofree noundef readonly byval(%class.anon.125) align 8 captures(none) %4, i32 noundef range(i32 -2147483648, 2147483647) %5, i1 noundef zeroext %6) unnamed_addr #4 {
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
  %i.j = load double, ptr %.sroa.0.025.i97.ptr, align 8, !tbaa !249 ; 5 uses
  %i.k = load double, ptr %0, align 8, !tbaa !249 ; 2 uses
  %i.l = fcmp olt double %i.j, %i.k
  br i1 %i.l, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i123, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = fcmp oeq double %i.j, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %.pn24.i98, i64 104
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  br i1 %i.m, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i122, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i100

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i122: ; preds = %bb.e
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !501
  %i.q = icmp ult ptr %i.o, %i.p
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i123, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i100

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i123: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i122, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i97.ptr, i64 56, i1 false)
  %i.r = icmp samesign ugt i64 %.sroa.0.025.i97.idx, 56
  br i1 %i.r, label %bb.f, label %bb.g, !prof !503

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
  %i.u = load double, ptr %.sroa.0.0.us.i.i111, align 8, !tbaa !249 ; 2 uses
  %i.v = fcmp olt double %i.j, %i.u
  br i1 %i.v, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i121, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i112

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i112: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i109
  %i.w = fcmp oeq double %i.j, %i.u
  br i1 %i.w, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i120, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i113

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i120: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i112
  %i.x = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i110, i64 -8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !501
  %i.z = icmp ult ptr %i.o, %i.y
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i121, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i113

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i121: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i120, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i109
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i110, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i111, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i109, !llvm.loop !504

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
  br i1 %.not.i119, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit127, label %bb.d, !llvm.loop !505

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
  %i.ad = load double, ptr %.sroa.0.0.us.i.us.i.i, align 8, !tbaa !249 ; 2 uses
  %i.ae = fcmp olt double %i.ac, %i.ad
  br i1 %i.ae, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i
  %i.af = fcmp oeq double %i.ac, %i.ad
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i
  %i.ag = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i, i64 -8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !501
  %i.ai = icmp ult ptr %.sroa.1010.0.copyload.i.us.i.i, %i.ah
  br i1 %i.ai, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.us.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.us.i.i, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i, !llvm.loop !504

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
  br i1 %.not.us.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i, !llvm.loop !506

.preheader.i:                                     ; preds = %bb.b
  %.sroa.0.022.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.not23.i = icmp eq ptr %.sroa.0.022.i, %1
  br i1 %.not23.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i
  %.sroa.0.025.i = phi ptr [ %.sroa.0.022.i, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.n ] ; 6 uses
  %.pn24.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.025.i, %bb.n ] ; 6 uses
  %i.al = load double, ptr %.sroa.0.025.i, align 8, !tbaa !249 ; 5 uses
  %i.am = load double, ptr %0, align 8, !tbaa !249 ; 2 uses
  %i.an = fcmp olt double %i.al, %i.am
  br i1 %i.an, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = fcmp oeq double %i.al, %i.am
  br i1 %i.ao, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i: ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !501
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !501
  %i.as = icmp ult ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i, i64 56, i1 false)
  %i.at = ptrtoint ptr %.sroa.0.025.i to i64
  %i.au = sub i64 %i.at, %i.b                     ; 4 uses
  %i.av = icmp sgt i64 %i.au, 56
  br i1 %i.av, label %bb.k, label %bb.l, !prof !503

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i
  %11 = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 112
  %.neg34.i = udiv exact i64 %i.au, 56
  %.neg34.neg.i = sub nsw i64 0, %.neg34.i
  %12 = getelementptr inbounds [56 x i8], ptr %11, i64 %.neg34.neg.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.au, i1 false)
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
  %i.az = load double, ptr %.sroa.0.0.us.i.i, align 8, !tbaa !249 ; 2 uses
  %i.ba = fcmp olt double %i.al, %i.az
  br i1 %i.ba, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i
  %i.bb = fcmp oeq double %i.al, %i.az
  br i1 %i.bb, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i
  %i.bc = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i, i64 -8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !501
  %i.be = icmp ult ptr %.sroa.1010.0.copyload.i.i, %i.bd
  br i1 %i.be, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i, !llvm.loop !504

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
  br i1 %.not.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit, label %bb.i, !llvm.loop !505

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit127, %.preheader.i, %bb.a
  %.not.i.i31 = icmp eq ptr %2, %3
  br i1 %.not.i.i31, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit32, label %bb.o

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
  %scevgep273 = getelementptr i8, ptr %2, i64 56
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %bb.p
  %.sroa.0.025.i169.idx = phi i64 [ 56, %bb.p ], [ %.sroa.0.025.i169.add, %bb.u ] ; 4 uses
  %.pn24.i170 = phi ptr [ %2, %bb.p ], [ %.sroa.0.025.i169.ptr, %bb.u ] ; 4 uses
  %.sroa.0.025.i169.ptr = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.025.i169.idx ; 4 uses
  %i.bo = load double, ptr %.sroa.0.025.i169.ptr, align 8, !tbaa !249 ; 5 uses
  %i.bp = load double, ptr %2, align 8, !tbaa !249 ; 2 uses
  %i.bq = fcmp olt double %i.bo, %i.bp
  br i1 %i.bq, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i195, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = fcmp oeq double %i.bo, %i.bp
  %i.bs = getelementptr inbounds nuw i8, ptr %.pn24.i170, i64 104
  %i.bt = load ptr, ptr %i.bs, align 8            ; 3 uses
  br i1 %i.br, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i194, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i172

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i194: ; preds = %bb.r
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !501
  %i.bv = icmp ult ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i195, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i172

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i195: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i194, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i169.ptr, i64 56, i1 false)
  %i.bw = icmp samesign ugt i64 %.sroa.0.025.i169.idx, 56
  br i1 %i.bw, label %bb.s, label %bb.t, !prof !503

bb.s:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i195
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep273, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %.sroa.0.025.i169.idx, i1 false)
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
  %i.bz = load double, ptr %.sroa.0.0.us.i.i183, align 8, !tbaa !249 ; 2 uses
  %i.ca = fcmp olt double %i.bo, %i.bz
  br i1 %i.ca, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i193, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i184

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i184: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i181
  %i.cb = fcmp oeq double %i.bo, %i.bz
  br i1 %i.cb, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i192, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i185

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i192: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i184
  %i.cc = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i182, i64 -8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !501
  %i.ce = icmp ult ptr %i.bt, %i.cd
  br i1 %i.ce, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i193, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i185

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i193: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i192, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i181
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i182, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i183, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i181, !llvm.loop !504

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
  br i1 %.not.i191, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit199, label %bb.q, !llvm.loop !505

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit199: ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 896 ; 2 uses
  %.not9.i.i66 = icmp eq ptr %i.cf, %3
  br i1 %.not9.i.i66, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit32, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i68

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
  %i.ci = load double, ptr %.sroa.0.0.us.i.us.i.i80, align 8, !tbaa !249 ; 2 uses
  %i.cj = fcmp olt double %i.ch, %i.ci
  br i1 %i.cj, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i89, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i81

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i81: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i78
  %i.ck = fcmp oeq double %i.ch, %i.ci
  br i1 %i.ck, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i88, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i82

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i88: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i81
  %i.cl = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i79, i64 -8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !501
  %i.cn = icmp ult ptr %.sroa.1010.0.copyload.i.us.i.i77, %i.cm
  br i1 %i.cn, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i89, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i82

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i89: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i88, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i78
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.us.i.i79, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.us.i.i80, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i78, !llvm.loop !504

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
  br i1 %.not.us.i.i87, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit32, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i68, !llvm.loop !506

.preheader.i129:                                  ; preds = %bb.o
  %.sroa.0.022.i130 = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %.not23.i131 = icmp eq ptr %.sroa.0.022.i130, %3
  br i1 %.not23.i131, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit32, label %.lr.ph.i132

.lr.ph.i132:                                      ; preds = %.preheader.i129
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.v

bb.v:                                             ; preds = %bb.aa, %.lr.ph.i132
  %.sroa.0.025.i133 = phi ptr [ %.sroa.0.022.i130, %.lr.ph.i132 ], [ %.sroa.0.0.i154, %bb.aa ] ; 6 uses
  %.pn24.i134 = phi ptr [ %2, %.lr.ph.i132 ], [ %.sroa.0.025.i133, %bb.aa ] ; 6 uses
  %i.cq = load double, ptr %.sroa.0.025.i133, align 8, !tbaa !249 ; 5 uses
  %i.cr = load double, ptr %2, align 8, !tbaa !249 ; 2 uses
  %i.cs = fcmp olt double %i.cq, %i.cr
  br i1 %i.cs, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i159, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = fcmp oeq double %i.cq, %i.cr
  br i1 %i.ct, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i158, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i136

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i158: ; preds = %bb.w
  %i.cu = getelementptr inbounds nuw i8, ptr %.pn24.i134, i64 104
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !501
  %i.cw = load ptr, ptr %i.cp, align 8, !tbaa !501
  %i.cx = icmp ult ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i159, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i136

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i159: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i158, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i133, i64 56, i1 false)
  %i.cy = ptrtoint ptr %.sroa.0.025.i133 to i64
  %i.cz = sub i64 %i.cy, %i.bg                    ; 4 uses
  %i.da = icmp sgt i64 %i.cz, 56
  br i1 %i.da, label %bb.x, label %bb.y, !prof !503

bb.x:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i159
  %13 = getelementptr inbounds nuw i8, ptr %.pn24.i134, i64 112
  %.neg34.i161 = udiv exact i64 %i.cz, 56
  %.neg34.neg.i162 = sub nsw i64 0, %.neg34.i161
  %14 = getelementptr inbounds [56 x i8], ptr %13, i64 %.neg34.neg.i162
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %14, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %i.cz, i1 false)
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
  %i.de = load double, ptr %.sroa.0.0.us.i.i147, align 8, !tbaa !249 ; 2 uses
  %i.df = fcmp olt double %i.cq, %i.de
  br i1 %i.df, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i157, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i148

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i148: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i145
  %i.dg = fcmp oeq double %i.cq, %i.de
  br i1 %i.dg, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i156, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i149

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i156: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i148
  %i.dh = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i146, i64 -8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !501
  %i.dj = icmp ult ptr %.sroa.1010.0.copyload.i.i144, %i.di
  br i1 %i.dj, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i157, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i149

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i157: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpickEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i156, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i145
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i146, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i147, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i145, !llvm.loop !504

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
  br i1 %.not.i155, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit32, label %bb.v, !llvm.loop !505

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit32: ; preds = %bb.aa, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i82, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit199, %.preheader.i129, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit
  %i.dk = icmp ne ptr %2, %3
  %i.dl = icmp ne ptr %0, %1
  %or.cond267 = and i1 %i.dk, %i.dl
  br i1 %or.cond267, label %.lr.ph270, label %.critedge

.lr.ph270:                                        ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpickEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit32
  %.not252 = icmp slt i32 %5, 1                   ; 2 uses
  %switch.selectcmp.i.i.i.i56 = icmp eq i32 %5, 1
  %switch.select.i.i.i.i57 = select i1 %switch.selectcmp.i.i.i.i56, i64 32, i64 40
  %switch.selectcmp2.i.i.i.i58 = icmp eq i32 %5, 0
  %switch.select3.i.i.i.i59 = select i1 %switch.selectcmp2.i.i.i.i58, i64 24, i64 %switch.select.i.i.i.i57 ; 2 uses
  %i.dm = add nuw nsw i32 %5, 1                   ; 2 uses
  %exitcond.peel.not = icmp eq i32 %i.dm, 2
  %exitcond275.peel.not = icmp eq i32 %i.dm, 2
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph270, %bb.ax
  %.sroa.0230.0269 = phi ptr [ %0, %.lr.ph270 ], [ %.sroa.0230.1, %bb.ax ] ; 15 uses
  %.sroa.0219.0268 = phi ptr [ %2, %.lr.ph270 ], [ %.sroa.0219.1, %bb.ax ] ; 15 uses
  %i.dn = load double, ptr %.sroa.0219.0268, align 8, !tbaa !249 ; 2 uses
  %i.do = load double, ptr %.sroa.0230.0269, align 8, !tbaa !249 ; 2 uses
  %i.dp = fcmp olt double %i.dn, %i.do
  br i1 %i.dp, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dq = fcmp oeq double %i.dn, %i.do
  br i1 %i.dq, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread239

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit: ; preds = %bb.ac
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0219.0268, i64 48
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !501
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0230.0269, i64 48
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !501
  %i.dv = icmp ult ptr %i.ds, %i.du
  br i1 %i.dv, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread239

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread: ; preds = %bb.ab, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0219.0268, i64 24
  %.not248262 = icmp eq ptr %.sroa.0230.0269, %1
  br i1 %.not248262, label %.critedge2, label %.lr.ph265

.lr.ph265:                                        ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0219.0268, i64 48
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0219.0268, i64 8 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0219.0268, i64 16 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0219.0268, i64 %switch.select3.i.i.i.i59
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0219.0268, i64 32
  %.phi.trans.insert280 = getelementptr inbounds nuw i8, ptr %.sroa.0219.0268, i64 40
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph265, %.thread
  %.sroa.0207.0263 = phi ptr [ %.sroa.0230.0269, %.lr.ph265 ], [ %i.fm, %.thread ] ; 16 uses
  %i.ec = load double, ptr %i.dw, align 8, !tbaa !249
  %i.ed = load double, ptr %.sroa.0207.0263, align 8, !tbaa !249
  %i.ee = fcmp ult double %i.ec, %i.ed
  br i1 %i.ee, label %.critedge2, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0207.0263, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !501 ; 4 uses
  %i.eh = load ptr, ptr %i.dx, align 8, !tbaa !501 ; 4 uses
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.ae
  br i1 %.not252, label %._crit_edge261, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.preheader

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.preheader: ; preds = %.preheader
  %i.ej = load double, ptr %i.eb, align 8, !tbaa !249
  %.in.i.i.i.i.peel = getelementptr inbounds nuw i8, ptr %.sroa.0207.0263, i64 8
  %i.ek = load double, ptr %.in.i.i.i.i.peel, align 8, !tbaa !249
  %i.el = fcmp ult double %i.ej, %i.ek
  br i1 %i.el, label %.thread, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit.peel

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit.peel: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.preheader
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0207.0263, i64 32
  %i.en = load double, ptr %i.em, align 8, !tbaa !249
  %i.eo = load double, ptr %i.dy, align 8, !tbaa !249
  %i.ep = fcmp ult double %i.en, %i.eo
  br i1 %i.ep, label %.thread, label %bb.af

bb.af:                                            ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit.peel
  br i1 %exitcond275.peel.not, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next: ; preds = %bb.af
  %.pre281 = load double, ptr %.phi.trans.insert280, align 8, !tbaa !249
  %.in.i.i.i.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0207.0263, i64 16
  %.pre282 = load double, ptr %.in.i.i.i.i.phi.trans.insert, align 8, !tbaa !249
  %i.eq = fcmp ult double %.pre281, %.pre282
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0207.0263, i64 40
  br label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i

bb.ag:                                            ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit
  %i.es = add nuw nsw i32 %.021260, 1
  %exitcond275.not = icmp eq i32 %.021260, %5
  br i1 %exitcond275.not, label %._crit_edge261, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i, !llvm.loop !514

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next, %bb.ag
  %.021260 = phi i32 [ %i.es, %bb.ag ], [ 2, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next ] ; 2 uses
  br i1 %i.eq, label %.thread, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i
  %i.et = load double, ptr %i.er, align 8, !tbaa !249
  %i.eu = load double, ptr %i.dz, align 8, !tbaa !249
  %i.ev = fcmp ult double %i.et, %i.eu
  br i1 %i.ev, label %.thread, label %bb.ag

._crit_edge261:                                   ; preds = %bb.ag, %.preheader
  switch i32 %5, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i [
    i32 0, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i
    i32 1, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i
  ]

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i: ; preds = %bb.af, %._crit_edge261
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0207.0263, i64 8
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i: ; preds = %._crit_edge261
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0207.0263, i64 16
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i, %._crit_edge261
  %.in.i.i = phi ptr [ %i.dz, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i ], [ %i.dy, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i ], [ %.sroa.0219.0268, %._crit_edge261 ]
  %.in.i.i9.i.i = phi ptr [ %i.ex, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i ], [ %i.ew, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i ], [ %.sroa.0207.0263, %._crit_edge261 ]
  %i.ey = load double, ptr %.in.i.i, align 8, !tbaa !249
  %i.ez = load double, ptr %.in.i.i9.i.i, align 8, !tbaa !249
  %i.fa = fcmp olt double %i.ey, %i.ez
  br i1 %i.fa, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread.i, label %bb.ah

bb.ah:                                            ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i
  switch i32 %5, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i.i [
    i32 0, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i
    i32 1, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i.i
  ]

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i.i: ; preds = %bb.ah
end_hunk_0
begin_hunk_1_@_ZN4CGAL17Boost_MP_internal11to_intervalIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEENS4_ISB_LSD_1EEEEESt4pairIddET0_SI_:bb.a
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = select i1 %i.de, ptr %13, ptr %i.dg
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !252 ; 2 uses
  %i.dj = icmp sgt i64 %i.da, 52
  br i1 %i.dj, label %.split, label %bb.ad

_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE7is_zeroEv.exit.thread: ; preds = %_ZN5boost14multiprecision3msbINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENSt9enable_ifIXeqsr15number_categoryIT_EE5valueLNS0_20number_category_typeE0EEmE4typeERKNS0_6numberISA_XT0_EEE.exit
  %i.dk = icmp sgt i64 %i.da, 52
  br i1 %i.dk, label %.split.thread, label %.thread

.split.thread:                                    ; preds = %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE7is_zeroEv.exit.thread
  %i.dl = lshr i64 %i.cz, 1
  %i.dm = add i32 %i.ag, 52
  br label %.thread

.split:                                           ; preds = %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE7is_zeroEv.exit
  %i.dn = and i64 %i.cz, 1
  %i.do = or i64 %i.dn, %i.di
  %i.dp = icmp eq i64 %i.do, 0
  %i.dq = lshr i64 %i.cz, 1                       ; 2 uses
  %i.dr = add i32 %i.ag, 52                       ; 2 uses
  br i1 %i.dp, label %bb.ae, label %.thread

bb.aa:                                            ; preds = %_ZN5boost14multiprecision8backends15eval_left_shiftILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEvE4typeERS9_o.exit
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ab:                                            ; preds = %_ZN5boost14multiprecision9divide_qrINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENSt9enable_ifIXeqsr15number_categoryIT_EE5valueLNS0_20number_category_typeE0EEvE4typeERKNS0_6numberISA_XT0_EEESH_RSF_SI_.exit
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ac:                                            ; preds = %bb.z
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ad:                                            ; preds = %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE7is_zeroEv.exit
  %i.dv = icmp eq i64 %i.di, 0
  br i1 %i.dv, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %.split, %bb.ad
  %.03288 = phi i64 [ %i.dq, %.split ], [ %i.cz, %bb.ad ]
  %.03886 = phi i32 [ %i.dr, %.split ], [ %i.ah, %bb.ad ] ; 3 uses
  %i.dw = uitofp i64 %.03288 to double
  %i.dx = sub nsw i32 0, %.03886
  %i.dy = icmp sgt i32 %.03886, 1074
  br i1 %i.dy, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dz = icmp slt i32 %.03886, -971
  br i1 %i.dz, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ea = call double @ldexp(double noundef 1.000000e+00, i32 noundef %i.dx) #22
  %i.eb = fmul double %i.ea, %i.dw                ; 2 uses
  br label %bb.aj

.thread:                                          ; preds = %.split.thread, %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE7is_zeroEv.exit.thread, %.split, %bb.ad
  %.03289 = phi i64 [ %i.dq, %.split ], [ %i.cz, %bb.ad ], [ %i.cz, %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE7is_zeroEv.exit.thread ], [ %i.dl, %.split.thread ]
  %.03887 = phi i32 [ %i.dr, %.split ], [ %i.ah, %bb.ad ], [ %i.ah, %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE7is_zeroEv.exit.thread ], [ %i.dm, %.split.thread ] ; 3 uses
  %i.ec = uitofp i64 %.03289 to double            ; 2 uses
  %i.ed = fadd nnan double %i.ec, 1.000000e+00
  %i.ee = sub nsw i32 0, %.03887
  %i.ef = icmp sgt i32 %.03887, 1074
  br i1 %i.ef, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %.thread
  %i.eg = icmp slt i32 %.03887, -971
  br i1 %i.eg, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eh = call double @ldexp(double noundef 1.000000e+00, i32 noundef %i.ee) #22 ; 2 uses
  %i.ei = fmul double %i.eh, %i.ec
  %i.ej = fmul double %i.ed, %i.eh
  br label %bb.aj

bb.aj:                                            ; preds = %.thread, %bb.ah, %bb.ai, %bb.ae, %bb.af, %bb.ag
  %.sroa.6.0 = phi double [ +inf, %bb.af ], [ %i.eb, %bb.ag ], [ f0x0010000000000000, %bb.ae ], [ %i.ej, %bb.ai ], [ f0x0010000000000000, %.thread ], [ +inf, %bb.ah ] ; 2 uses
  %.sroa.074.0 = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.af ], [ %i.eb, %bb.ag ], [ 0.000000e+00, %bb.ae ], [ %i.ei, %bb.ai ], [ 0.000000e+00, %.thread ], [ f0x7FEFFFFFFFFFFFFF, %bb.ah ] ; 2 uses
  %i.ek = fneg double %.sroa.6.0
  %i.el = fneg double %.sroa.074.0
  %.085 = select i1 %.039, double %i.el, double %.sroa.6.0
  %.0 = select i1 %.039, double %i.ek, double %.sroa.074.0
  %.fca.0.insert.i66 = insertvalue { double, double } poison, double %.0, 0
  %.fca.1.insert.i67 = insertvalue { double, double } %.fca.0.insert.i66, double %.085, 1
  %i.em = load i8, ptr %i.by, align 1, !tbaa !9, !range !13, !noundef !14
  %i.en = trunc nuw i8 %i.em to i1
  %i.eo = load i8, ptr %i.bz, align 2, !range !13
  %i.ep = trunc nuw i8 %i.eo to i1
  %or.cond.i.i = select i1 %i.en, i1 true, i1 %i.ep
  br i1 %or.cond.i.i, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eq = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = load i64, ptr %13, align 16
  %i.et = shl i64 %i.es, 3
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.et) #40
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit: ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.eu = load i8, ptr %i.bu, align 1, !tbaa !9, !range !13, !noundef !14
  %i.ev = trunc nuw i8 %i.eu to i1
  %i.ew = load i8, ptr %i.bv, align 2, !range !13
  %i.ex = trunc nuw i8 %i.ew to i1
  %or.cond.i.i68 = select i1 %i.ev, i1 true, i1 %i.ex
  br i1 %or.cond.i.i68, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit69, label %bb.al

bb.al:                                            ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = load i64, ptr %12, align 16
  %i.fb = shl i64 %i.fa, 3
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fb) #40
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit69

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit69: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.ap

bb.am:                                            ; preds = %bb.ab, %bb.ac, %bb.aa
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ds, %bb.aa ], [ %i.dt, %bb.ab ], [ %i.du, %bb.ac ]
  %i.fc = load i8, ptr %i.by, align 1, !tbaa !9, !range !13, !noundef !14
  %i.fd = trunc nuw i8 %i.fc to i1
  %i.fe = load i8, ptr %i.bz, align 2, !range !13
  %i.ff = trunc nuw i8 %i.fe to i1
  %or.cond.i.i70 = select i1 %i.fd, i1 true, i1 %i.ff
  br i1 %or.cond.i.i70, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit71, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fg = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = load i64, ptr %13, align 16
  %i.fj = shl i64 %i.fi, 3
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fj) #40
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit71

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit71: ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.fk = load i8, ptr %i.bu, align 1, !tbaa !9, !range !13, !noundef !14
  %i.fl = trunc nuw i8 %i.fk to i1
  %i.fm = load i8, ptr %i.bv, align 2, !range !13
  %i.fn = trunc nuw i8 %i.fm to i1
  %or.cond.i.i72 = select i1 %i.fl, i1 true, i1 %i.fn
  br i1 %or.cond.i.i72, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit73, label %bb.ao

bb.ao:                                            ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit71
  %i.fo = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = load i64, ptr %12, align 16
  %i.fr = shl i64 %i.fq, 3
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fr) #40
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit73

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit73: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit71, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %common.resume

bb.ap:                                            ; preds = %_ZN4CGAL7is_zeroIN5boost14multiprecision6numberINS2_8backends15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEELNS2_26expression_template_optionE1EEEEENSt11conditionalIXsr3stdE9is_same_vINS_26Algebraic_structure_traitsIT_E7Is_zeroENS_12Null_functorEEENS_22Real_embeddable_traitsISE_E7Is_zeroESG_E4type11result_typeERKSE_.exit, %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit69
  %.pn46 = phi { double, double } [ %.fca.1.insert.i67, %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit69 ], [ zeroinitializer, %_ZN4CGAL7is_zeroIN5boost14multiprecision6numberINS2_8backends15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEELNS2_26expression_template_optionE1EEEEENSt11conditionalIXsr3stdE9is_same_vINS_26Algebraic_structure_traitsIT_E7Is_zeroENS_12Null_functorEEENS_22Real_embeddable_traitsISE_E7Is_zeroESG_E4type11result_typeERKSE_.exit ]
  ret { double, double } %.pn46
}

declare void @__once_proxy() #12

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_10Triangle_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv() #8 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1459, !nonnull !14, !align !542
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1461 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 16 dereferenceable(172) %i.d), !inline_history !1464
  ret void
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4CGAL18Box_intersection_d12segment_treeIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ZN3igl8copyleft4cgalL22intersect_other_helperIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEESP_SQ_SQ_NSO_INS_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEESQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EEbRKNSN_10MatrixBaseIT0_EERKNS18_IT1_EERKNS18_IT2_EERKNS18_IT3_EERKNSL_28RemeshSelfIntersectionsParamERNSN_15PlainObjectBaseIT4_EERNS1S_IT5_EERNS1S_IT6_EERNS1S_IT7_EERNS1S_IT8_EEEUlRKSE_S29_E_dNS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEEEvT_S2F_S19_S19_S1H_S1H_S1D_S1L_lib(ptr %0, ptr %1, ptr %2, ptr %3, double noundef %4, double noundef %5, ptr nofree noundef readonly byval(%class.anon.457) align 8 captures(none) %6, i64 noundef range(i64 -2147483648, 2147483648) %7, i32 noundef range(i32 -2147483648, 2147483647) %8, i1 noundef zeroext %9) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.10.i.i114.i = alloca [3 x double], align 8 ; 4 uses
  %10 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d.461", align 8 ; 4 uses
  %.sroa.10.i.i79.i = alloca [3 x double], align 8 ; 4 uses
  %11 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d.461", align 8 ; 4 uses
  %.sroa.10.i.i44.i = alloca [3 x double], align 8 ; 4 uses
  %12 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d.461", align 8 ; 4 uses
  %.sroa.10.i.i.i = alloca [3 x double], align 8  ; 4 uses
  %13 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d.461", align 8 ; 4 uses
  %.sroa.10.i.i.i18.i = alloca [3 x double], align 8 ; 4 uses
  %.sroa.10.i.i.i.i = alloca [3 x double], align 8 ; 4 uses
  %14 = alloca %class.anon.457, align 8           ; 5 uses
  %15 = alloca %"class.CGAL::Box_intersection_d::Predicate_traits_d<CGAL::Box_intersection_d::Box_traits_d<CGAL::Box_intersection_d::Box_with_handle_d<double, 3, __gnu_cxx::__normal_iterator<CGAL::Triangle_3<CGAL::Epeck> *, std::vector<CGAL::Triangle_3<CGAL::Epeck>>>>>, true>::Spanning", align 8 ; 4 uses
  %i.a = alloca double, align 8                   ; 8 uses
  %i.b = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN4CGAL18Box_intersection_d12segment_treeIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ZN3igl8copyleft4cgalL22intersect_other_helperIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEESP_SQ_SQ_NSO_INS_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEESQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EEbRKNSN_10MatrixBaseIT0_EERKNS18_IT1_EERKNS18_IT2_EERKNS18_IT3_EERKNSL_28RemeshSelfIntersectionsParamERNSN_15PlainObjectBaseIT4_EERNS1S_IT5_EERNS1S_IT6_EERNS1S_IT7_EERNS1S_IT8_EEEUlRKSE_S29_E_dNS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEEEvT_S2F_S19_S19_S1H_S1H_S1D_S1L_libE5level) ; 6 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !47
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 4, !tbaa !47
  %i.e = icmp eq ptr %0, %1
  br i1 %i.e, label %bb.az, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ne ptr %2, %3
  %i.g = fcmp ult double %4, %5
  %or.cond = and i1 %i.f, %i.g
  br i1 %or.cond, label %bb.c, label %bb.az

.loopexit:                                        ; preds = %bb.af
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.ah
  %lpad.loopexit127 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit.i, %bb.d, %bb.ak
  %lpad.loopexit.split-lp128 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i32 %8, 0
  br i1 %i.h, label %bb.d, label %bb.ai

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false)
  %16 = ptrtoint ptr %1 to i64
  %17 = ptrtoint ptr %0 to i64                    ; 2 uses
  %18 = sub i64 %16, %17                          ; 2 uses
  %19 = sdiv exact i64 %18, 56
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %19, i1 true)
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = xor i64 %i.j, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEElNS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_T1_(ptr %0, ptr %1, i64 noundef %i.k, i32 0)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  %i.l = icmp sgt i64 %18, 896
  br i1 %i.l, label %bb.e, label %.preheader.i.i

bb.e:                                             ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %scevgep.i = getelementptr i8, ptr %0, i64 56
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %bb.e
  %.sroa.0.025.i49.idx.i = phi i64 [ 56, %bb.e ], [ %.sroa.0.025.i49.add.i, %bb.j ] ; 4 uses
  %.pn24.i50.i = phi ptr [ %0, %bb.e ], [ %.sroa.0.025.i49.ptr.i, %bb.j ] ; 4 uses
  %.sroa.0.025.i49.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.025.i49.idx.i ; 4 uses
  %i.n = load double, ptr %.sroa.0.025.i49.ptr.i, align 8, !tbaa !249 ; 5 uses
  %i.o = load double, ptr %0, align 8, !tbaa !249 ; 2 uses
  %i.p = fcmp olt double %i.n, %i.o
  br i1 %i.p, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i74.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = fcmp oeq double %i.n, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %.pn24.i50.i, i64 104
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i73.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i51.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i73.i: ; preds = %bb.g
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !1465
  %i.u = icmp ult ptr %i.s, %i.t
  br i1 %i.u, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i74.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i51.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i74.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i73.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i49.ptr.i, i64 56, i1 false)
  %i.v = icmp samesign ugt i64 %.sroa.0.025.i49.idx.i, 56
  br i1 %i.v, label %bb.h, label %bb.i, !prof !503

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i74.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.025.i49.idx.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i75.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i74.i
  %i.w = getelementptr inbounds nuw i8, ptr %.pn24.i50.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i75.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i75.i: ; preds = %bb.i, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %12, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %bb.j

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i51.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i73.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i44.i)
  %.sroa.6.0..sroa_idx.i.i53.i = getelementptr inbounds nuw i8, ptr %.pn24.i50.i, i64 64
  %i.x = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i53.i, align 8
  %.sroa.10.0..sroa_idx.i.i57.i = getelementptr inbounds nuw i8, ptr %.pn24.i50.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i44.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i57.i, i64 24, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i60.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i60.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i72.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i51.i
  %.sroa.014.0.us.i.i61.i = phi ptr [ %.sroa.0.0.us.i.i62.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i72.i ], [ %.sroa.0.025.i49.ptr.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i51.i ] ; 7 uses
  %.sroa.0.0.us.i.i62.i = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i61.i, i64 -56 ; 3 uses
  %i.y = load double, ptr %.sroa.0.0.us.i.i62.i, align 8, !tbaa !249 ; 2 uses
  %i.z = fcmp olt double %i.n, %i.y
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i72.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i63.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i63.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i60.i
  %i.aa = fcmp oeq double %i.n, %i.y
  br i1 %i.aa, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i71.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i64.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i71.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i63.i
  %i.ab = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i61.i, i64 -8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1465
  %i.ad = icmp ult ptr %i.s, %i.ac
  br i1 %i.ad, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i72.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i64.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i72.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i71.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i60.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i61.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i62.i, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i60.i, !llvm.loop !1467

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i64.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i71.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i63.i
  store double %i.n, ptr %.sroa.014.0.us.i.i61.i, align 8
  %.sroa.6.0..sroa_idx5.i.i65.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i61.i, i64 8
  store <2 x double> %i.x, ptr %.sroa.6.0..sroa_idx5.i.i65.i, align 8
  %.sroa.10.0..sroa_idx9.i.i67.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i61.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i67.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i44.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i68.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i61.i, i64 48
  store ptr %i.s, ptr %.sroa.1010.0..sroa_idx11.i.i68.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i44.i)
  br label %bb.j

bb.j:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i64.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i75.i
  %.sroa.0.025.i49.add.i = add nuw nsw i64 %.sroa.0.025.i49.idx.i, 56 ; 2 uses
  %.not.i70.i = icmp eq i64 %.sroa.0.025.i49.add.i, 896
  br i1 %.not.i70.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit78.i, label %bb.f, !llvm.loop !1468

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit78.i: ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.ae, %1
  br i1 %.not9.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i.i: ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit78.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i.i
  %.sroa.0.010.us.i.i.i = phi ptr [ %i.an, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i.i ], [ %i.ae, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit78.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i.i)
  %i.af = load <2 x double>, ptr %.sroa.0.010.us.i.i.i, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i.i, i64 16
  %.sroa.8.0.copyload.i.us.i.i.i = load double, ptr %.sroa.8.0..sroa_idx.i.us.i.i.i, align 8
  %.sroa.10.0..sroa_idx.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.us.i.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i.i, i64 48
  %.sroa.1010.0.copyload.i.us.i.i.i = load ptr, ptr %.sroa.1010.0..sroa_idx.i.us.i.i.i, align 8 ; 2 uses
  %i.ag = extractelement <2 x double> %i.af, i64 0 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i.i
  %.sroa.014.0.us.i.us.i.i.i = phi ptr [ %.sroa.0.0.us.i.us.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i.i ], [ %.sroa.0.010.us.i.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i.i ] ; 7 uses
  %.sroa.0.0.us.i.us.i.i.i = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i.i, i64 -56 ; 3 uses
  %i.ah = load double, ptr %.sroa.0.0.us.i.us.i.i.i, align 8, !tbaa !249 ; 2 uses
  %i.ai = fcmp olt double %i.ag, %i.ah
  br i1 %i.ai, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i.i
  %i.aj = fcmp oeq double %i.ag, %i.ah
  br i1 %i.aj, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i.i
  %i.ak = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i.i, i64 -8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1465
  %i.am = icmp ult ptr %.sroa.1010.0.copyload.i.us.i.i.i, %i.al
  br i1 %i.am, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.us.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.us.i.i.i, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i.i, !llvm.loop !1467

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i.i
  store <2 x double> %i.af, ptr %.sroa.014.0.us.i.us.i.i.i, align 8
  %.sroa.8.0..sroa_idx7.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i.i, i64 16
  store double %.sroa.8.0.copyload.i.us.i.i.i, ptr %.sroa.8.0..sroa_idx7.i.us.i.i.i, align 8
  %.sroa.10.0..sroa_idx9.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.us.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i.i, i64 48
  store ptr %.sroa.1010.0.copyload.i.us.i.i.i, ptr %.sroa.1010.0..sroa_idx11.i.us.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i.i)
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i.i, i64 56 ; 2 uses
  %.not.us.i.i.i = icmp eq ptr %i.an, %1
  br i1 %.not.us.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i.i, !llvm.loop !1469

.preheader.i.i:                                   ; preds = %.noexc
  %.sroa.0.022.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.not23.i.i = icmp eq ptr %.sroa.0.022.i.i, %1
  br i1 %.not23.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.k

bb.k:                                             ; preds = %bb.p, %.lr.ph.i.i
  %.sroa.0.025.i.i = phi ptr [ %.sroa.0.022.i.i, %.lr.ph.i.i ], [ %.sroa.0.0.i.i, %bb.p ] ; 6 uses
  %.pn24.i.i = phi ptr [ %0, %.lr.ph.i.i ], [ %.sroa.0.025.i.i, %bb.p ] ; 6 uses
  %i.ap = load double, ptr %.sroa.0.025.i.i, align 8, !tbaa !249 ; 5 uses
  %i.aq = load double, ptr %0, align 8, !tbaa !249 ; 2 uses
  %i.ar = fcmp olt double %i.ap, %i.aq
  br i1 %i.ar, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = fcmp oeq double %i.ap, %i.aq
  br i1 %i.as, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i.i: ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %.pn24.i.i, i64 104
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1465
  %i.av = load ptr, ptr %i.ao, align 8, !tbaa !1465
  %i.aw = icmp ult ptr %i.au, %i.av
  br i1 %i.aw, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i.i, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i.i, i64 56, i1 false)
  %i.ax = ptrtoint ptr %.sroa.0.025.i.i to i64
  %i.ay = sub i64 %i.ax, %17                      ; 4 uses
  %i.az = icmp sgt i64 %i.ay, 56
  br i1 %i.az, label %bb.m, label %bb.n, !prof !503

bb.m:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i.i
  %20 = getelementptr inbounds nuw i8, ptr %.pn24.i.i, i64 112
  %.neg34.i.i = udiv exact i64 %i.ay, 56
  %.neg34.neg.i.i = sub nsw i64 0, %.neg34.i.i
  %21 = getelementptr inbounds [56 x i8], ptr %20, i64 %.neg34.neg.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %21, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.ay, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i.i

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i.i
  %i.ba = icmp eq i64 %i.ay, 56
  br i1 %i.ba, label %bb.o, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %.pn24.i.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bb, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i.i: ; preds = %bb.o, %bb.n, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %13, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.p

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i.i, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i)
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.pn24.i.i, i64 64
  %i.bc = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.pn24.i.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.pn24.i.i, i64 104
  %.sroa.1010.0.copyload.i.i.i = load ptr, ptr %.sroa.1010.0..sroa_idx.i.i.i, align 8 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i.i
  %.sroa.014.0.us.i.i.i = phi ptr [ %.sroa.0.0.us.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i.i ], [ %.sroa.0.025.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i.i ] ; 7 uses
  %.sroa.0.0.us.i.i.i = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i.i, i64 -56 ; 3 uses
  %i.bd = load double, ptr %.sroa.0.0.us.i.i.i, align 8, !tbaa !249 ; 2 uses
  %i.be = fcmp olt double %i.ap, %i.bd
  br i1 %i.be, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i.i
  %i.bf = fcmp oeq double %i.ap, %i.bd
  br i1 %i.bf, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i.i
  %i.bg = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i.i, i64 -8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1465
  %i.bi = icmp ult ptr %.sroa.1010.0.copyload.i.i.i, %i.bh
  br i1 %i.bi, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i.i, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i.i, !llvm.loop !1467

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i.i
  store double %i.ap, ptr %.sroa.014.0.us.i.i.i, align 8
  %.sroa.6.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i.i, i64 8
  store <2 x double> %i.bc, ptr %.sroa.6.0..sroa_idx5.i.i.i, align 8
  %.sroa.10.0..sroa_idx9.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i.i, i64 48
  store ptr %.sroa.1010.0.copyload.i.i.i, ptr %.sroa.1010.0..sroa_idx11.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i)
  br label %bb.p

bb.p:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i.i
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i.i, i64 56 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.0.0.i.i, %1
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit.i, label %bb.k, !llvm.loop !1468

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit.i: ; preds = %bb.p, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit78.i, %.preheader.i.i
  %i.bj = ptrtoint ptr %3 to i64
  %i.bk = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.bl = sub i64 %i.bj, %i.bk                    ; 2 uses
  %i.bm = sdiv exact i64 %i.bl, 56
  %i.bn = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bm, i1 true)
  %i.bo = shl nuw nsw i64 %i.bn, 1
  %i.bp = xor i64 %i.bo, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEElNS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_T1_(ptr %2, ptr %3, i64 noundef %i.bp, i32 0)
          to label %.noexc101 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc101:                                        ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit.i
  %i.bq = icmp sgt i64 %i.bl, 896
  br i1 %i.bq, label %bb.q, label %.preheader.i80.i

bb.q:                                             ; preds = %.noexc101
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 48
  %scevgep189.i = getelementptr i8, ptr %2, i64 56
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %bb.q
  %.sroa.0.025.i119.idx.i = phi i64 [ 56, %bb.q ], [ %.sroa.0.025.i119.add.i, %bb.v ] ; 4 uses
  %.pn24.i120.i = phi ptr [ %2, %bb.q ], [ %.sroa.0.025.i119.ptr.i, %bb.v ] ; 4 uses
  %.sroa.0.025.i119.ptr.i = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.025.i119.idx.i ; 4 uses
  %i.bs = load double, ptr %.sroa.0.025.i119.ptr.i, align 8, !tbaa !249 ; 5 uses
  %i.bt = load double, ptr %2, align 8, !tbaa !249 ; 2 uses
  %i.bu = fcmp olt double %i.bs, %i.bt
  br i1 %i.bu, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i144.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bv = fcmp oeq double %i.bs, %i.bt
  %i.bw = getelementptr inbounds nuw i8, ptr %.pn24.i120.i, i64 104
  %i.bx = load ptr, ptr %i.bw, align 8            ; 3 uses
  br i1 %i.bv, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i143.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i121.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i143.i: ; preds = %bb.s
  %i.by = load ptr, ptr %i.br, align 8, !tbaa !1465
  %i.bz = icmp ult ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i144.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i121.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i144.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i143.i, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i119.ptr.i, i64 56, i1 false)
  %i.ca = icmp samesign ugt i64 %.sroa.0.025.i119.idx.i, 56
  br i1 %i.ca, label %bb.t, label %bb.u, !prof !503

bb.t:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i144.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep189.i, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %.sroa.0.025.i119.idx.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i145.i

bb.u:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i144.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.pn24.i120.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cb, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i145.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i145.i: ; preds = %bb.u, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %10, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.v

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i121.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i143.i, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i114.i)
  %.sroa.6.0..sroa_idx.i.i123.i = getelementptr inbounds nuw i8, ptr %.pn24.i120.i, i64 64
  %i.cc = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i123.i, align 8
  %.sroa.10.0..sroa_idx.i.i127.i = getelementptr inbounds nuw i8, ptr %.pn24.i120.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i114.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i127.i, i64 24, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i130.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i130.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i142.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i121.i
  %.sroa.014.0.us.i.i131.i = phi ptr [ %.sroa.0.0.us.i.i132.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i142.i ], [ %.sroa.0.025.i119.ptr.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i121.i ] ; 7 uses
  %.sroa.0.0.us.i.i132.i = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i131.i, i64 -56 ; 3 uses
  %i.cd = load double, ptr %.sroa.0.0.us.i.i132.i, align 8, !tbaa !249 ; 2 uses
  %i.ce = fcmp olt double %i.bs, %i.cd
  br i1 %i.ce, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i142.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i133.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i133.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i130.i
  %i.cf = fcmp oeq double %i.bs, %i.cd
  br i1 %i.cf, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i141.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i134.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i141.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i133.i
  %i.cg = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i131.i, i64 -8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !1465
  %i.ci = icmp ult ptr %i.bx, %i.ch
  br i1 %i.ci, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i142.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i134.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i142.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i141.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i130.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i131.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i132.i, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i130.i, !llvm.loop !1467

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i134.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i141.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i133.i
  store double %i.bs, ptr %.sroa.014.0.us.i.i131.i, align 8
  %.sroa.6.0..sroa_idx5.i.i135.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i131.i, i64 8
  store <2 x double> %i.cc, ptr %.sroa.6.0..sroa_idx5.i.i135.i, align 8
  %.sroa.10.0..sroa_idx9.i.i137.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i131.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i137.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i114.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i138.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i131.i, i64 48
  store ptr %i.bx, ptr %.sroa.1010.0..sroa_idx11.i.i138.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i114.i)
  br label %bb.v

bb.v:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i134.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i145.i
  %.sroa.0.025.i119.add.i = add nuw nsw i64 %.sroa.0.025.i119.idx.i, 56 ; 2 uses
  %.not.i140.i = icmp eq i64 %.sroa.0.025.i119.add.i, 896
  br i1 %.not.i140.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit148.i, label %bb.r, !llvm.loop !1468

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit148.i: ; preds = %bb.v
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 896 ; 2 uses
  %.not9.i.i19.i = icmp eq ptr %i.cj, %3
  br i1 %.not9.i.i19.i, label %.preheader.i.preheader, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i21.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i21.i: ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit148.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35.i
  %.sroa.0.010.us.i.i22.i = phi ptr [ %i.cs, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35.i ], [ %i.cj, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit148.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i18.i)
  %i.ck = load <2 x double>, ptr %.sroa.0.010.us.i.i22.i, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx.i.us.i.i26.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i22.i, i64 16
  %.sroa.8.0.copyload.i.us.i.i27.i = load double, ptr %.sroa.8.0..sroa_idx.i.us.i.i26.i, align 8
  %.sroa.10.0..sroa_idx.i.us.i.i28.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i22.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i18.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.us.i.i28.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.us.i.i29.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i22.i, i64 48
  %.sroa.1010.0.copyload.i.us.i.i30.i = load ptr, ptr %.sroa.1010.0..sroa_idx.i.us.i.i29.i, align 8 ; 2 uses
  %i.cl = extractelement <2 x double> %i.ck, i64 0 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i31.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i31.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i42.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i21.i
  %.sroa.014.0.us.i.us.i.i32.i = phi ptr [ %.sroa.0.0.us.i.us.i.i33.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i42.i ], [ %.sroa.0.010.us.i.i22.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i21.i ] ; 7 uses
  %.sroa.0.0.us.i.us.i.i33.i = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i32.i, i64 -56 ; 3 uses
  %i.cm = load double, ptr %.sroa.0.0.us.i.us.i.i33.i, align 8, !tbaa !249 ; 2 uses
  %i.cn = fcmp olt double %i.cl, %i.cm
  br i1 %i.cn, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i42.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i34.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i34.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i31.i
  %i.co = fcmp oeq double %i.cl, %i.cm
  br i1 %i.co, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i41.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i41.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i34.i
  %i.cp = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i32.i, i64 -8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !1465
  %i.cr = icmp ult ptr %.sroa.1010.0.copyload.i.us.i.i30.i, %i.cq
  br i1 %i.cr, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i42.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i42.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i41.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i31.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.us.i.i32.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.us.i.i33.i, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i31.i, !llvm.loop !1467

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i41.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i34.i
  store <2 x double> %i.ck, ptr %.sroa.014.0.us.i.us.i.i32.i, align 8
  %.sroa.8.0..sroa_idx7.i.us.i.i37.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i32.i, i64 16
  store double %.sroa.8.0.copyload.i.us.i.i27.i, ptr %.sroa.8.0..sroa_idx7.i.us.i.i37.i, align 8
  %.sroa.10.0..sroa_idx9.i.us.i.i38.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i32.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.us.i.i38.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i18.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.us.i.i39.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i32.i, i64 48
  store ptr %.sroa.1010.0.copyload.i.us.i.i30.i, ptr %.sroa.1010.0..sroa_idx11.i.us.i.i39.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i18.i)
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i22.i, i64 56 ; 2 uses
  %.not.us.i.i40.i = icmp eq ptr %i.cs, %3
  br i1 %.not.us.i.i40.i, label %.preheader.i.preheader, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i21.i, !llvm.loop !1469

.preheader.i80.i:                                 ; preds = %.noexc101
  %.sroa.0.022.i81.i = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %.not23.i82.i = icmp eq ptr %.sroa.0.022.i81.i, %3
  br i1 %.not23.i82.i, label %.preheader.i.preheader, label %.lr.ph.i83.i

.lr.ph.i83.i:                                     ; preds = %.preheader.i80.i
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.w

bb.w:                                             ; preds = %bb.ab, %.lr.ph.i83.i
  %.sroa.0.025.i84.i = phi ptr [ %.sroa.0.022.i81.i, %.lr.ph.i83.i ], [ %.sroa.0.0.i104.i, %bb.ab ] ; 6 uses
  %.pn24.i85.i = phi ptr [ %2, %.lr.ph.i83.i ], [ %.sroa.0.025.i84.i, %bb.ab ] ; 6 uses
  %i.cu = load double, ptr %.sroa.0.025.i84.i, align 8, !tbaa !249 ; 5 uses
  %i.cv = load double, ptr %2, align 8, !tbaa !249 ; 2 uses
  %i.cw = fcmp olt double %i.cu, %i.cv
  br i1 %i.cw, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i109.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cx = fcmp oeq double %i.cu, %i.cv
  br i1 %i.cx, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i108.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i86.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i108.i: ; preds = %bb.x
  %i.cy = getelementptr inbounds nuw i8, ptr %.pn24.i85.i, i64 104
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1465
  %i.da = load ptr, ptr %i.ct, align 8, !tbaa !1465
  %i.db = icmp ult ptr %i.cz, %i.da
  br i1 %i.db, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i109.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i86.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i109.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i108.i, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i84.i, i64 56, i1 false)
  %i.dc = ptrtoint ptr %.sroa.0.025.i84.i to i64
  %i.dd = sub i64 %i.dc, %i.bk                    ; 4 uses
  %i.de = icmp sgt i64 %i.dd, 56
  br i1 %i.de, label %bb.y, label %bb.z, !prof !503

bb.y:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i109.i
  %22 = getelementptr inbounds nuw i8, ptr %.pn24.i85.i, i64 112
  %.neg34.i111.i = udiv exact i64 %i.dd, 56
  %.neg34.neg.i112.i = sub nsw i64 0, %.neg34.i111.i
  %23 = getelementptr inbounds [56 x i8], ptr %22, i64 %.neg34.neg.i112.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %23, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %i.dd, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i110.i

bb.z:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i109.i
  %i.df = icmp eq i64 %i.dd, 56
  br i1 %i.df, label %bb.aa, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i110.i

bb.aa:                                            ; preds = %bb.z
  %i.dg = getelementptr inbounds nuw i8, ptr %.pn24.i85.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dg, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i110.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i110.i: ; preds = %bb.aa, %bb.z, %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %11, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.ab

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i86.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i108.i, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i79.i)
  %.sroa.6.0..sroa_idx.i.i88.i = getelementptr inbounds nuw i8, ptr %.pn24.i85.i, i64 64
  %i.dh = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i88.i, align 8
  %.sroa.10.0..sroa_idx.i.i92.i = getelementptr inbounds nuw i8, ptr %.pn24.i85.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i79.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i92.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.i93.i = getelementptr inbounds nuw i8, ptr %.pn24.i85.i, i64 104
  %.sroa.1010.0.copyload.i.i94.i = load ptr, ptr %.sroa.1010.0..sroa_idx.i.i93.i, align 8 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i95.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i95.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i107.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i86.i
  %.sroa.014.0.us.i.i96.i = phi ptr [ %.sroa.0.0.us.i.i97.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i107.i ], [ %.sroa.0.025.i84.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i86.i ] ; 7 uses
  %.sroa.0.0.us.i.i97.i = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i96.i, i64 -56 ; 3 uses
  %i.di = load double, ptr %.sroa.0.0.us.i.i97.i, align 8, !tbaa !249 ; 2 uses
  %i.dj = fcmp olt double %i.cu, %i.di
  br i1 %i.dj, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i107.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i98.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i98.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i95.i
  %i.dk = fcmp oeq double %i.cu, %i.di
  br i1 %i.dk, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i106.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i99.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i106.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i98.i
  %i.dl = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i96.i, i64 -8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !1465
  %i.dn = icmp ult ptr %.sroa.1010.0.copyload.i.i94.i, %i.dm
  br i1 %i.dn, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i107.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i99.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i107.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i106.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i95.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i96.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i97.i, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i95.i, !llvm.loop !1467

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i99.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i106.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i98.i
  store double %i.cu, ptr %.sroa.014.0.us.i.i96.i, align 8
  %.sroa.6.0..sroa_idx5.i.i100.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i96.i, i64 8
  store <2 x double> %i.dh, ptr %.sroa.6.0..sroa_idx5.i.i100.i, align 8
  %.sroa.10.0..sroa_idx9.i.i102.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i96.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i102.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i79.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i103.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i96.i, i64 48
  store ptr %.sroa.1010.0.copyload.i.i94.i, ptr %.sroa.1010.0..sroa_idx11.i.i103.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i79.i)
  br label %bb.ab

bb.ab:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i99.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i110.i
  %.sroa.0.0.i104.i = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i84.i, i64 56 ; 2 uses
  %.not.i105.i = icmp eq ptr %.sroa.0.0.i104.i, %3
  br i1 %.not.i105.i, label %.preheader.i.preheader, label %bb.w, !llvm.loop !1468

.preheader.i.preheader:                           ; preds = %bb.ab, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit148.i, %.preheader.i80.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.critedge2.i
  %.sroa.0154.0185.i = phi ptr [ %i.eq, %.critedge2.i ], [ %2, %.preheader.i.preheader ] ; 5 uses
  %.sroa.0166.0184.i = phi ptr [ %.sroa.0166.1.lcssa.i, %.critedge2.i ], [ %0, %.preheader.i.preheader ] ; 3 uses
  %.not170174.i = icmp eq ptr %.sroa.0166.0184.i, %1
  br i1 %.not170174.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.do = load double, ptr %.sroa.0154.0185.i, align 8, !tbaa !249 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0154.0185.i, i64 48
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread.i, %.lr.ph.i
  %.sroa.0166.1175.i = phi ptr [ %.sroa.0166.0184.i, %.lr.ph.i ], [ %i.dx, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread.i ] ; 5 uses
  %i.dq = load double, ptr %.sroa.0166.1175.i, align 8, !tbaa !249 ; 2 uses
  %i.dr = fcmp olt double %i.dq, %i.do
  br i1 %i.dr, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ds = fcmp oeq double %i.dq, %i.do
  br i1 %i.ds, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.i, label %.critedge.i

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.i: ; preds = %bb.ad
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0166.1175.i, i64 48
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !1465
  %i.dv = load ptr, ptr %i.dp, align 8, !tbaa !1465
  %i.dw = icmp ult ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread.i, label %.critedge.i

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread.i: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.i, %bb.ac
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0166.1175.i, i64 56 ; 3 uses
  %.not170.i = icmp eq ptr %i.dx, %1
  br i1 %.not170.i, label %.critedge.i, label %bb.ac, !llvm.loop !1470

.critedge.i:                                      ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread.i, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.i, %bb.ad, %.preheader.i
  %.sroa.0166.1.lcssa.i = phi ptr [ %.sroa.0166.0184.i, %.preheader.i ], [ %.sroa.0166.1175.i, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.i ], [ %i.dx, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread.i ], [ %.sroa.0166.1175.i, %bb.ad ] ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0154.0185.i, i64 24 ; 2 uses
  %.not171179.i = icmp eq ptr %.sroa.0166.1.lcssa.i, %1
  br i1 %.not171179.i, label %.critedge2.i, label %.lr.ph181.i

.lr.ph181.i:                                      ; preds = %.critedge.i
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0154.0185.i, i64 48 ; 2 uses
  br i1 %9, label %.lr.ph181.split.us.i, label %.lr.ph181.split.i

.lr.ph181.split.us.i:                             ; preds = %.lr.ph181.i, %.noexc102
  %.sroa.0.0180.us.i = phi ptr [ %i.eh, %.noexc102 ], [ %.sroa.0166.1.lcssa.i, %.lr.ph181.i ] ; 3 uses
  %i.ea = load double, ptr %i.dy, align 8, !tbaa !249
  %i.eb = load double, ptr %.sroa.0.0180.us.i, align 8, !tbaa !249
  %i.ec = fcmp ult double %i.ea, %i.eb
  br i1 %i.ec, label %.critedge2.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph181.split.us.i
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0.0180.us.i, i64 48
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !1465 ; 2 uses
  %i.ef = load ptr, ptr %i.dz, align 8, !tbaa !1465 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %.noexc102, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke fastcc void @_ZZN3igl8copyleft4cgalL22intersect_other_helperIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEES7_S8_S8_NS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEES8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EEbRKNS5_10MatrixBaseIT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNSQ_IT3_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseIT4_EERNS1A_IT5_EERNS1A_IT6_EERNS1A_IT7_EERNS1A_IT8_EEENKUlRKNS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS4_EESt6vectorIS1V_SaIS1V_EEEENS1Q_14ID_FROM_HANDLEEEES24_E_clES24_S24_(ptr noundef nonnull readonly align 8 dereferenceable(48) %14, ptr %i.ee, ptr %i.ef)
          to label %.noexc102 unwind label %.loopexit

.noexc102:                                        ; preds = %bb.af, %bb.ae
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.0180.us.i, i64 56 ; 2 uses
  %.not171.us.i = icmp eq ptr %i.eh, %1
  br i1 %.not171.us.i, label %.critedge2.i, label %.lr.ph181.split.us.i, !llvm.loop !1471

.lr.ph181.split.i:                                ; preds = %.lr.ph181.i, %.noexc103
  %.sroa.0.0180.i = phi ptr [ %i.ep, %.noexc103 ], [ %.sroa.0166.1.lcssa.i, %.lr.ph181.i ] ; 3 uses
  %i.ei = load double, ptr %i.dy, align 8, !tbaa !249
  %i.ej = load double, ptr %.sroa.0.0180.i, align 8, !tbaa !249
  %i.ek = fcmp ult double %i.ei, %i.ej
  br i1 %i.ek, label %.critedge2.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph181.split.i
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0.0180.i, i64 48
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !1465 ; 2 uses
  %i.en = load ptr, ptr %i.dz, align 8, !tbaa !1465 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %.noexc103, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke fastcc void @_ZZN3igl8copyleft4cgalL22intersect_other_helperIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEES7_S8_S8_NS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEES8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EEbRKNS5_10MatrixBaseIT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNSQ_IT3_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseIT4_EERNS1A_IT5_EERNS1A_IT6_EERNS1A_IT7_EERNS1A_IT8_EEENKUlRKNS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS4_EESt6vectorIS1V_SaIS1V_EEEENS1Q_14ID_FROM_HANDLEEEES24_E_clES24_S24_(ptr noundef nonnull readonly align 8 dereferenceable(48) %14, ptr %i.en, ptr %i.em)
          to label %.noexc103 unwind label %.loopexit.split-lp.loopexit

.noexc103:                                        ; preds = %bb.ah, %bb.ag
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0.0180.i, i64 56 ; 2 uses
  %.not171.i = icmp eq ptr %i.ep, %1
  br i1 %.not171.i, label %.critedge2.i, label %.lr.ph181.split.i, !llvm.loop !1471

.critedge2.i:                                     ; preds = %.noexc103, %.lr.ph181.split.i, %.noexc102, %.lr.ph181.split.us.i, %.critedge.i
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0154.0185.i, i64 56 ; 2 uses
  %.not.i = icmp eq ptr %i.eq, %3
  br i1 %.not.i, label %.loopexit130, label %.preheader.i, !llvm.loop !1472

.loopexit130:                                     ; preds = %.critedge2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %bb.az

bb.ai:                                            ; preds = %bb.c
  %24 = ptrtoint ptr %1 to i64
  %25 = ptrtoint ptr %0 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 56
  %i.er = icmp slt i64 %27, %7
  br i1 %i.er, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.es = ptrtoint ptr %3 to i64
  %i.et = ptrtoint ptr %2 to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = sdiv exact i64 %i.eu, 56
  %i.ew = icmp slt i64 %i.ev, %7
  br i1 %i.ew, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  invoke fastcc void @_ZN4CGAL18Box_intersection_d21modified_two_way_scanIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ZN3igl8copyleft4cgalL22intersect_other_helperIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEESP_SQ_SQ_NSO_INS_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEESQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EEbRKNSN_10MatrixBaseIT0_EERKNS18_IT1_EERKNS18_IT2_EERKNS18_IT3_EERKNSL_28RemeshSelfIntersectionsParamERNSN_15PlainObjectBaseIT4_EERNS1S_IT5_EERNS1S_IT6_EERNS1S_IT7_EERNS1S_IT8_EEEUlRKSE_S29_E_NS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEEEvT_S2F_S19_S19_S1D_S1H_ib(ptr %0, ptr %1, ptr %2, ptr %3, ptr noundef nonnull byval(%class.anon.457) align 8 %6, i32 noundef %8, i1 noundef zeroext %9)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp

bb.al:                                            ; preds = %bb.aj
  %i.ex = fcmp oeq double %4, f0xFFEFFFFFFFFFFFFF
  %i.ey = fcmp oeq double %5, f0x7FEFFFFFFFFFFFFF
  %or.cond100 = or i1 %i.ex, %i.ey
  br i1 %or.cond100, label %.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  store double %4, ptr %15, align 8, !tbaa !1473
  %i.ez = getelementptr inbounds nuw i8, ptr %15, i64 8
  store double %5, ptr %i.ez, align 8, !tbaa !1475
  %i.fa = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 %8, ptr %i.fa, align 8, !tbaa !1476
  %i.fb = invoke ptr @_ZSt9partitionIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE8SpanningEET_SO_SO_T0_(ptr %2, ptr %3, ptr noundef nonnull byval(%"class.CGAL::Box_intersection_d::Predicate_traits_d<CGAL::Box_intersection_d::Box_traits_d<CGAL::Box_intersection_d::Box_with_handle_d<double, 3, __gnu_cxx::__normal_iterator<CGAL::Triangle_3<CGAL::Epeck> *, std::vector<CGAL::Triangle_3<CGAL::Epeck>>>>>, true>::Spanning") align 8 %15)
          to label %bb.an unwind label %bb.aq     ; 5 uses

bb.an:                                            ; preds = %bb.am
  %.not = icmp eq ptr %2, %i.fb
  br i1 %.not, label %.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fc = add nsw i32 %8, -1                      ; 2 uses
  invoke fastcc void @_ZN4CGAL18Box_intersection_d12segment_treeIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ZN3igl8copyleft4cgalL22intersect_other_helperIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEESP_SQ_SQ_NSO_INS_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEESQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EEbRKNSN_10MatrixBaseIT0_EERKNS18_IT1_EERKNS18_IT2_EERKNS18_IT3_EERKNSL_28RemeshSelfIntersectionsParamERNSN_15PlainObjectBaseIT4_EERNS1S_IT5_EERNS1S_IT6_EERNS1S_IT7_EERNS1S_IT8_EEEUlRKSE_S29_E_dNS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEEEvT_S2F_S19_S19_S1H_S1H_S1D_S1L_lib(ptr %0, ptr %1, ptr %2, ptr %i.fb, double noundef f0xFFEFFFFFFFFFFFFF, double noundef f0x7FEFFFFFFFFFFFFF, ptr noundef nonnull byval(%class.anon.457) align 8 %6, i64 noundef %7, i32 noundef %i.fc, i1 noundef zeroext %9)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fd = xor i1 %9, true
  invoke fastcc void @_ZN4CGAL18Box_intersection_d12segment_treeIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ZN3igl8copyleft4cgalL22intersect_other_helperIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEESP_SQ_SQ_NSO_INS_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEESQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EEbRKNSN_10MatrixBaseIT0_EERKNS18_IT1_EERKNS18_IT2_EERKNS18_IT3_EERKNSL_28RemeshSelfIntersectionsParamERNSN_15PlainObjectBaseIT4_EERNS1S_IT5_EERNS1S_IT6_EERNS1S_IT7_EERNS1S_IT8_EEEUlRKSE_S29_E_dNS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEEEvT_S2F_S19_S19_S1H_S1H_S1D_S1L_lib(ptr %2, ptr %i.fb, ptr %0, ptr %1, double noundef f0xFFEFFFFFFFFFFFFF, double noundef f0x7FEFFFFFFFFFFFFF, ptr noundef nonnull byval(%class.anon.457) align 8 %6, i64 noundef %7, i32 noundef %i.fc, i1 noundef zeroext %i.fd)
          to label %.thread unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.am
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.thread:                                          ; preds = %bb.al, %bb.ap, %bb.an
  %storemerge178 = phi ptr [ %i.fb, %bb.an ], [ %i.fb, %bb.ap ], [ %2, %bb.al ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.ff = invoke ptr @_ZN4CGAL18Box_intersection_d12split_pointsIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEdEET_SN_SN_T0_iRT1_(ptr %0, ptr %1, i32 noundef %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.ar unwind label %bb.at     ; 4 uses

bb.ar:                                            ; preds = %.thread
  %i.fg = icmp eq ptr %i.ff, %0
  %i.fh = icmp eq ptr %i.ff, %1
  %or.cond125 = or i1 %i.fg, %i.fh
  br i1 %or.cond125, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  invoke fastcc void @_ZN4CGAL18Box_intersection_d21modified_two_way_scanIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ZN3igl8copyleft4cgalL22intersect_other_helperIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEESP_SQ_SQ_NSO_INS_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEESQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EEbRKNSN_10MatrixBaseIT0_EERKNS18_IT1_EERKNS18_IT2_EERKNS18_IT3_EERKNSL_28RemeshSelfIntersectionsParamERNSN_15PlainObjectBaseIT4_EERNS1S_IT5_EERNS1S_IT6_EERNS1S_IT7_EERNS1S_IT8_EEEUlRKSE_S29_E_NS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEEEvT_S2F_S19_S19_S1D_S1H_ib(ptr %0, ptr %1, ptr %storemerge178, ptr %3, ptr noundef nonnull byval(%class.anon.457) align 8 %6, i32 noundef %8, i1 noundef zeroext %9)
          to label %bb.ay unwind label %bb.at

bb.at:                                            ; preds = %bb.as, %.thread
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.au:                                            ; preds = %bb.ar
  %i.fj = load double, ptr %i.a, align 8, !tbaa !249
  %i.fk = invoke ptr @_ZSt9partitionIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7Lo_lessEET_SO_SO_T0_(ptr %storemerge178, ptr %3, double %i.fj, i32 %8)
          to label %bb.av unwind label %bb.ba

bb.av:                                            ; preds = %bb.au
  %i.fl = load double, ptr %i.a, align 8, !tbaa !249
  invoke fastcc void @_ZN4CGAL18Box_intersection_d12segment_treeIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ZN3igl8copyleft4cgalL22intersect_other_helperIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEESP_SQ_SQ_NSO_INS_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEESQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EEbRKNSN_10MatrixBaseIT0_EERKNS18_IT1_EERKNS18_IT2_EERKNS18_IT3_EERKNSL_28RemeshSelfIntersectionsParamERNSN_15PlainObjectBaseIT4_EERNS1S_IT5_EERNS1S_IT6_EERNS1S_IT7_EERNS1S_IT8_EEEUlRKSE_S29_E_dNS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEEEvT_S2F_S19_S19_S1H_S1H_S1D_S1L_lib(ptr %0, ptr %i.ff, ptr %storemerge178, ptr %i.fk, double noundef %4, double noundef %i.fl, ptr noundef nonnull byval(%class.anon.457) align 8 %6, i64 noundef %7, i32 noundef %8, i1 noundef zeroext %9)
          to label %bb.aw unwind label %bb.bb

bb.aw:                                            ; preds = %bb.av
  %i.fm = load double, ptr %i.a, align 8, !tbaa !249
  %i.fn = invoke ptr @_ZSt9partitionIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE10Hi_greaterEET_SO_SO_T0_(ptr %storemerge178, ptr %3, double %i.fm, i32 %8)
          to label %bb.ax unwind label %bb.bc

bb.ax:                                            ; preds = %bb.aw
  %i.fo = load double, ptr %i.a, align 8, !tbaa !249
  invoke fastcc void @_ZN4CGAL18Box_intersection_d12segment_treeIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ZN3igl8copyleft4cgalL22intersect_other_helperIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEESP_SQ_SQ_NSO_INS_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEESQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EEbRKNSN_10MatrixBaseIT0_EERKNS18_IT1_EERKNS18_IT2_EERKNS18_IT3_EERKNSL_28RemeshSelfIntersectionsParamERNSN_15PlainObjectBaseIT4_EERNS1S_IT5_EERNS1S_IT6_EERNS1S_IT7_EERNS1S_IT8_EEEUlRKSE_S29_E_dNS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEEEvT_S2F_S19_S19_S1H_S1H_S1D_S1L_lib(ptr %i.ff, ptr %1, ptr %storemerge178, ptr %i.fn, double noundef %i.fo, double noundef %5, ptr noundef nonnull byval(%class.anon.457) align 8 %6, i64 noundef %7, i32 noundef %8, i1 noundef zeroext %9)
          to label %bb.ay unwind label %bb.bb

bb.ay:                                            ; preds = %bb.ax, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.az

bb.az:                                            ; preds = %bb.ak, %bb.a, %bb.b, %bb.ay, %.loopexit130
  %i.fp = load i32, ptr %i.b, align 4, !tbaa !47
  %i.fq = add nsw i32 %i.fp, -1
  store i32 %i.fq, ptr %i.b, align 4, !tbaa !47
  ret void

bb.ba:                                            ; preds = %bb.au
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bb:                                            ; preds = %bb.ax, %bb.av
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %bb.aw
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bd:                                            ; preds = %bb.ba, %bb.bb, %bb.bc, %bb.at
  %.pn95 = phi { ptr, i32 } [ %i.fi, %bb.at ], [ %i.fs, %bb.bb ], [ %i.ft, %bb.bc ], [ %i.fr, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.aq, %bb.bd
  %.pn98 = phi { ptr, i32 } [ %i.fe, %bb.aq ], [ %.pn95, %bb.bd ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit127, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp128, %.loopexit.split-lp.loopexit.split-lp ]
  %i.fu = load i32, ptr %i.b, align 4, !tbaa !47
  %i.fv = add nsw i32 %i.fu, -1
  store i32 %i.fv, ptr %i.b, align 4, !tbaa !47
  resume { ptr, i32 } %.pn98
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4CGAL18Box_intersection_d21modified_two_way_scanIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ZN3igl8copyleft4cgalL22intersect_other_helperIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEESP_SQ_SQ_NSO_INS_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEESQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EEbRKNSN_10MatrixBaseIT0_EERKNS18_IT1_EERKNS18_IT2_EERKNS18_IT3_EERKNSL_28RemeshSelfIntersectionsParamERNSN_15PlainObjectBaseIT4_EERNS1S_IT5_EERNS1S_IT6_EERNS1S_IT7_EERNS1S_IT8_EEEUlRKSE_S29_E_NS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEEEvT_S2F_S19_S19_S1D_S1H_ib(ptr %0, ptr %1, ptr %2, ptr %3, ptr nofree noundef readonly byval(%class.anon.457) align 8 captures(none) %4, i32 noundef range(i32 -2147483648, 2147483647) %5, i1 noundef zeroext %6) unnamed_addr #4 {
bb.a:
  %.sroa.10.i.i164 = alloca [3 x double], align 8 ; 4 uses
  %7 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d.461", align 8 ; 4 uses
  %.sroa.10.i.i128 = alloca [3 x double], align 8 ; 4 uses
  %8 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d.461", align 8 ; 4 uses
  %.sroa.10.i.i92 = alloca [3 x double], align 8  ; 4 uses
  %9 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d.461", align 8 ; 4 uses
  %.sroa.10.i.i = alloca [3 x double], align 8    ; 4 uses
  %10 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d.461", align 8 ; 4 uses
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
  %i.j = load double, ptr %.sroa.0.025.i97.ptr, align 8, !tbaa !249 ; 5 uses
  %i.k = load double, ptr %0, align 8, !tbaa !249 ; 2 uses
  %i.l = fcmp olt double %i.j, %i.k
  br i1 %i.l, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i123, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = fcmp oeq double %i.j, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %.pn24.i98, i64 104
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  br i1 %i.m, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i122, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i100

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i122: ; preds = %bb.e
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !1465
  %i.q = icmp ult ptr %i.o, %i.p
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i123, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i100

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i123: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i122, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i97.ptr, i64 56, i1 false)
  %i.r = icmp samesign ugt i64 %.sroa.0.025.i97.idx, 56
  br i1 %i.r, label %bb.f, label %bb.g, !prof !503

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
  %i.u = load double, ptr %.sroa.0.0.us.i.i111, align 8, !tbaa !249 ; 2 uses
  %i.v = fcmp olt double %i.j, %i.u
  br i1 %i.v, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i121, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i112

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i112: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i109
  %i.w = fcmp oeq double %i.j, %i.u
  br i1 %i.w, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i120, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i113

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i120: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i112
  %i.x = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i110, i64 -8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1465
  %i.z = icmp ult ptr %i.o, %i.y
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i121, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i113

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i121: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i120, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i109
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i110, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i111, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i109, !llvm.loop !1467

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
  br i1 %.not.i119, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit127, label %bb.d, !llvm.loop !1468

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
  %i.ad = load double, ptr %.sroa.0.0.us.i.us.i.i, align 8, !tbaa !249 ; 2 uses
  %i.ae = fcmp olt double %i.ac, %i.ad
  br i1 %i.ae, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i
  %i.af = fcmp oeq double %i.ac, %i.ad
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i
  %i.ag = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i, i64 -8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1465
  %i.ai = icmp ult ptr %.sroa.1010.0.copyload.i.us.i.i, %i.ah
  br i1 %i.ai, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.us.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.us.i.i, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i, !llvm.loop !1467

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
  br i1 %.not.us.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i, !llvm.loop !1469

.preheader.i:                                     ; preds = %bb.b
  %.sroa.0.022.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.not23.i = icmp eq ptr %.sroa.0.022.i, %1
  br i1 %.not23.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i
  %.sroa.0.025.i = phi ptr [ %.sroa.0.022.i, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.n ] ; 6 uses
  %.pn24.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.025.i, %bb.n ] ; 6 uses
  %i.al = load double, ptr %.sroa.0.025.i, align 8, !tbaa !249 ; 5 uses
  %i.am = load double, ptr %0, align 8, !tbaa !249 ; 2 uses
  %i.an = fcmp olt double %i.al, %i.am
  br i1 %i.an, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = fcmp oeq double %i.al, %i.am
  br i1 %i.ao, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i: ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1465
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !1465
  %i.as = icmp ult ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i, i64 56, i1 false)
  %i.at = ptrtoint ptr %.sroa.0.025.i to i64
  %i.au = sub i64 %i.at, %i.b                     ; 4 uses
  %i.av = icmp sgt i64 %i.au, 56
  br i1 %i.av, label %bb.k, label %bb.l, !prof !503

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i
  %11 = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 112
  %.neg34.i = udiv exact i64 %i.au, 56
  %.neg34.neg.i = sub nsw i64 0, %.neg34.i
  %12 = getelementptr inbounds [56 x i8], ptr %11, i64 %.neg34.neg.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.au, i1 false)
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
  %i.az = load double, ptr %.sroa.0.0.us.i.i, align 8, !tbaa !249 ; 2 uses
  %i.ba = fcmp olt double %i.al, %i.az
  br i1 %i.ba, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i
  %i.bb = fcmp oeq double %i.al, %i.az
  br i1 %i.bb, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i
  %i.bc = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i, i64 -8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1465
  %i.be = icmp ult ptr %.sroa.1010.0.copyload.i.i, %i.bd
  br i1 %i.be, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i, !llvm.loop !1467

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
  br i1 %.not.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit, label %bb.i, !llvm.loop !1468

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit127, %.preheader.i, %bb.a
  %.not.i.i31 = icmp eq ptr %2, %3
  br i1 %.not.i.i31, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit32, label %bb.o

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
  %scevgep273 = getelementptr i8, ptr %2, i64 56
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %bb.p
  %.sroa.0.025.i169.idx = phi i64 [ 56, %bb.p ], [ %.sroa.0.025.i169.add, %bb.u ] ; 4 uses
  %.pn24.i170 = phi ptr [ %2, %bb.p ], [ %.sroa.0.025.i169.ptr, %bb.u ] ; 4 uses
  %.sroa.0.025.i169.ptr = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.025.i169.idx ; 4 uses
  %i.bo = load double, ptr %.sroa.0.025.i169.ptr, align 8, !tbaa !249 ; 5 uses
  %i.bp = load double, ptr %2, align 8, !tbaa !249 ; 2 uses
  %i.bq = fcmp olt double %i.bo, %i.bp
  br i1 %i.bq, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i195, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = fcmp oeq double %i.bo, %i.bp
  %i.bs = getelementptr inbounds nuw i8, ptr %.pn24.i170, i64 104
  %i.bt = load ptr, ptr %i.bs, align 8            ; 3 uses
  br i1 %i.br, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i194, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i172

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i194: ; preds = %bb.r
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !1465
  %i.bv = icmp ult ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i195, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i172

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i195: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i194, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i169.ptr, i64 56, i1 false)
  %i.bw = icmp samesign ugt i64 %.sroa.0.025.i169.idx, 56
  br i1 %i.bw, label %bb.s, label %bb.t, !prof !503

bb.s:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i195
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep273, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %.sroa.0.025.i169.idx, i1 false)
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
  %i.bz = load double, ptr %.sroa.0.0.us.i.i183, align 8, !tbaa !249 ; 2 uses
  %i.ca = fcmp olt double %i.bo, %i.bz
  br i1 %i.ca, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i193, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i184

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i184: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i181
  %i.cb = fcmp oeq double %i.bo, %i.bz
  br i1 %i.cb, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i192, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i185

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i192: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i184
  %i.cc = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i182, i64 -8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1465
  %i.ce = icmp ult ptr %i.bt, %i.cd
  br i1 %i.ce, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i193, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i185

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i193: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i192, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i181
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i182, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i183, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i181, !llvm.loop !1467

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
  br i1 %.not.i191, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit199, label %bb.q, !llvm.loop !1468

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit199: ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 896 ; 2 uses
  %.not9.i.i66 = icmp eq ptr %i.cf, %3
  br i1 %.not9.i.i66, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit32, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i68

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
  %i.ci = load double, ptr %.sroa.0.0.us.i.us.i.i80, align 8, !tbaa !249 ; 2 uses
  %i.cj = fcmp olt double %i.ch, %i.ci
  br i1 %i.cj, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i89, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i81

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i81: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i78
  %i.ck = fcmp oeq double %i.ch, %i.ci
  br i1 %i.ck, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i88, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i82

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i88: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i81
  %i.cl = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i79, i64 -8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !1465
  %i.cn = icmp ult ptr %.sroa.1010.0.copyload.i.us.i.i77, %i.cm
  br i1 %i.cn, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i89, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i82

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i89: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i88, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i78
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.us.i.i79, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.us.i.i80, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i78, !llvm.loop !1467

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
  br i1 %.not.us.i.i87, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit32, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i68, !llvm.loop !1469

.preheader.i129:                                  ; preds = %bb.o
  %.sroa.0.022.i130 = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %.not23.i131 = icmp eq ptr %.sroa.0.022.i130, %3
  br i1 %.not23.i131, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit32, label %.lr.ph.i132

.lr.ph.i132:                                      ; preds = %.preheader.i129
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.v

bb.v:                                             ; preds = %bb.aa, %.lr.ph.i132
  %.sroa.0.025.i133 = phi ptr [ %.sroa.0.022.i130, %.lr.ph.i132 ], [ %.sroa.0.0.i154, %bb.aa ] ; 6 uses
  %.pn24.i134 = phi ptr [ %2, %.lr.ph.i132 ], [ %.sroa.0.025.i133, %bb.aa ] ; 6 uses
  %i.cq = load double, ptr %.sroa.0.025.i133, align 8, !tbaa !249 ; 5 uses
  %i.cr = load double, ptr %2, align 8, !tbaa !249 ; 2 uses
  %i.cs = fcmp olt double %i.cq, %i.cr
  br i1 %i.cs, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i159, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = fcmp oeq double %i.cq, %i.cr
  br i1 %i.ct, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i158, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i136

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i158: ; preds = %bb.w
  %i.cu = getelementptr inbounds nuw i8, ptr %.pn24.i134, i64 104
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !1465
  %i.cw = load ptr, ptr %i.cp, align 8, !tbaa !1465
  %i.cx = icmp ult ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i159, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i136

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i159: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i158, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i133, i64 56, i1 false)
  %i.cy = ptrtoint ptr %.sroa.0.025.i133 to i64
  %i.cz = sub i64 %i.cy, %i.bg                    ; 4 uses
  %i.da = icmp sgt i64 %i.cz, 56
  br i1 %i.da, label %bb.x, label %bb.y, !prof !503

bb.x:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i159
  %13 = getelementptr inbounds nuw i8, ptr %.pn24.i134, i64 112
  %.neg34.i161 = udiv exact i64 %i.cz, 56
  %.neg34.neg.i162 = sub nsw i64 0, %.neg34.i161
  %14 = getelementptr inbounds [56 x i8], ptr %13, i64 %.neg34.neg.i162
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %14, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %i.cz, i1 false)
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
  %i.de = load double, ptr %.sroa.0.0.us.i.i147, align 8, !tbaa !249 ; 2 uses
  %i.df = fcmp olt double %i.cq, %i.de
  br i1 %i.df, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i157, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i148

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i148: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i145
  %i.dg = fcmp oeq double %i.cq, %i.de
  br i1 %i.dg, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i156, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i149

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i156: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i148
  %i.dh = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i146, i64 -8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !1465
  %i.dj = icmp ult ptr %.sroa.1010.0.copyload.i.i144, %i.di
  br i1 %i.dj, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i157, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i149

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i157: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i156, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i145
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i146, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i147, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i145, !llvm.loop !1467

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
  br i1 %.not.i155, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit32, label %bb.v, !llvm.loop !1468

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit32: ; preds = %bb.aa, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i82, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit199, %.preheader.i129, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit
  %i.dk = icmp ne ptr %2, %3
  %i.dl = icmp ne ptr %0, %1
  %or.cond267 = and i1 %i.dk, %i.dl
  br i1 %or.cond267, label %.lr.ph270, label %.critedge

.lr.ph270:                                        ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit32
  %.not252 = icmp slt i32 %5, 1                   ; 2 uses
  %switch.selectcmp.i.i.i.i56 = icmp eq i32 %5, 1
  %switch.select.i.i.i.i57 = select i1 %switch.selectcmp.i.i.i.i56, i64 32, i64 40
  %switch.selectcmp2.i.i.i.i58 = icmp eq i32 %5, 0
  %switch.select3.i.i.i.i59 = select i1 %switch.selectcmp2.i.i.i.i58, i64 24, i64 %switch.select.i.i.i.i57 ; 2 uses
  %i.dm = add nuw nsw i32 %5, 1                   ; 2 uses
  %exitcond.peel.not = icmp eq i32 %i.dm, 2
  %exitcond275.peel.not = icmp eq i32 %i.dm, 2
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph270, %bb.ax
  %.sroa.0230.0269 = phi ptr [ %0, %.lr.ph270 ], [ %.sroa.0230.1, %bb.ax ] ; 15 uses
  %.sroa.0219.0268 = phi ptr [ %2, %.lr.ph270 ], [ %.sroa.0219.1, %bb.ax ] ; 15 uses
  %i.dn = load double, ptr %.sroa.0219.0268, align 8, !tbaa !249 ; 2 uses
  %i.do = load double, ptr %.sroa.0230.0269, align 8, !tbaa !249 ; 2 uses
  %i.dp = fcmp olt double %i.dn, %i.do
  br i1 %i.dp, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dq = fcmp oeq double %i.dn, %i.do
  br i1 %i.dq, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread239

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit: ; preds = %bb.ac
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0219.0268, i64 48
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !1465
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0230.0269, i64 48
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !1465
  %i.dv = icmp ult ptr %i.ds, %i.du
  br i1 %i.dv, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread239

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread: ; preds = %bb.ab, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0219.0268, i64 24
  %.not248262 = icmp eq ptr %.sroa.0230.0269, %1
  br i1 %.not248262, label %.critedge2, label %.lr.ph265

.lr.ph265:                                        ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0219.0268, i64 48
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0219.0268, i64 8 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0219.0268, i64 16 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0219.0268, i64 %switch.select3.i.i.i.i59
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0219.0268, i64 32
  %.phi.trans.insert280 = getelementptr inbounds nuw i8, ptr %.sroa.0219.0268, i64 40
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph265, %.thread
  %.sroa.0207.0263 = phi ptr [ %.sroa.0230.0269, %.lr.ph265 ], [ %i.fm, %.thread ] ; 16 uses
  %i.ec = load double, ptr %i.dw, align 8, !tbaa !249
  %i.ed = load double, ptr %.sroa.0207.0263, align 8, !tbaa !249
  %i.ee = fcmp ult double %i.ec, %i.ed
  br i1 %i.ee, label %.critedge2, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0207.0263, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !1465 ; 4 uses
  %i.eh = load ptr, ptr %i.dx, align 8, !tbaa !1465 ; 4 uses
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.ae
  br i1 %.not252, label %._crit_edge261, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.preheader

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.preheader: ; preds = %.preheader
  %i.ej = load double, ptr %i.eb, align 8, !tbaa !249
  %.in.i.i.i.i.peel = getelementptr inbounds nuw i8, ptr %.sroa.0207.0263, i64 8
  %i.ek = load double, ptr %.in.i.i.i.i.peel, align 8, !tbaa !249
  %i.el = fcmp ult double %i.ej, %i.ek
  br i1 %i.el, label %.thread, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit.peel

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit.peel: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.preheader
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0207.0263, i64 32
  %i.en = load double, ptr %i.em, align 8, !tbaa !249
  %i.eo = load double, ptr %i.dy, align 8, !tbaa !249
  %i.ep = fcmp ult double %i.en, %i.eo
  br i1 %i.ep, label %.thread, label %bb.af

bb.af:                                            ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit.peel
  br i1 %exitcond275.peel.not, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next: ; preds = %bb.af
  %.pre281 = load double, ptr %.phi.trans.insert280, align 8, !tbaa !249
  %.in.i.i.i.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0207.0263, i64 16
  %.pre282 = load double, ptr %.in.i.i.i.i.phi.trans.insert, align 8, !tbaa !249
  %i.eq = fcmp ult double %.pre281, %.pre282
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0207.0263, i64 40
  br label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i

bb.ag:                                            ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit
  %i.es = add nuw nsw i32 %.021260, 1
  %exitcond275.not = icmp eq i32 %.021260, %5
  br i1 %exitcond275.not, label %._crit_edge261, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i, !llvm.loop !1477

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next, %bb.ag
  %.021260 = phi i32 [ %i.es, %bb.ag ], [ 2, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next ] ; 2 uses
  br i1 %i.eq, label %.thread, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i
  %i.et = load double, ptr %i.er, align 8, !tbaa !249
  %i.eu = load double, ptr %i.dz, align 8, !tbaa !249
  %i.ev = fcmp ult double %i.et, %i.eu
  br i1 %i.ev, label %.thread, label %bb.ag

._crit_edge261:                                   ; preds = %bb.ag, %.preheader
  switch i32 %5, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i [
    i32 0, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i
    i32 1, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i
  ]

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i: ; preds = %bb.af, %._crit_edge261
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0207.0263, i64 8
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i: ; preds = %._crit_edge261
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0207.0263, i64 16
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i, %._crit_edge261
  %.in.i.i = phi ptr [ %i.dz, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i ], [ %i.dy, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i ], [ %.sroa.0219.0268, %._crit_edge261 ]
  %.in.i.i9.i.i = phi ptr [ %i.ex, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i ], [ %i.ew, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i ], [ %.sroa.0207.0263, %._crit_edge261 ]
  %i.ey = load double, ptr %.in.i.i, align 8, !tbaa !249
  %i.ez = load double, ptr %.in.i.i9.i.i, align 8, !tbaa !249
  %i.fa = fcmp olt double %i.ey, %i.ez
  br i1 %i.fa, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread.i, label %bb.ah

bb.ah:                                            ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i
  switch i32 %5, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i.i [
    i32 0, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i
    i32 1, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i.i
  ]

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i.i: ; preds = %bb.ah
end_hunk_1
begin_hunk_2_@_ZZN3igl8copyleft4cgalL22intersect_other_helperIN4CGAL5EpeckEN5Eigen6MatrixINS3_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESM_SN_SN_SM_SN_NS6_IiLin1ELi1ELi0ELin1ELi1EEESO_EEbRKNS5_10MatrixBaseIT0_EERKNSP_IT1_EERKNSP_IT2_EERKNSP_IT3_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseIT4_EERNS19_IT5_EERNS19_IT6_EERNS19_IT7_EERNS19_IT8_EEENKUlRSt6vectorINS3_10Triangle_3IS4_EESaIS1R_EERS1P_INS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPS1R_S1T_EENS1V_14ID_FROM_HANDLEEEESaIS22_EEE_clES1U_S25_:bb.a
  %.pre26 = phi ptr [ %.pre26.pre, %bb.d ], [ %i.g, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit.i ]
  %.pre = phi ptr [ %.pre.pre, %bb.d ], [ %i.h, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit.i ]
  store ptr %i.aa, ptr %1, align 8, !tbaa !210
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store ptr %i.ad, ptr %i.v, align 8, !tbaa !1413
  %i.ae = getelementptr inbounds nuw [56 x i8], ptr %i.aa, i64 %i.l
  store ptr %i.ae, ptr %i.n, align 8, !tbaa !212
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE13_M_deallocateEPSE_m.exit.i
  %i.af = phi ptr [ %i.g, %bb.c ], [ %.pre26, %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE13_M_deallocateEPSE_m.exit.i ]
  %i.ag = phi ptr [ %i.h, %bb.c ], [ %.pre, %_ZNSt12_Vector_baseIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISE_EE13_M_deallocateEPSE_m.exit.i ] ; 2 uses
  %.not24 = icmp eq ptr %i.ag, %i.af
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit
  %.sroa.021.025 = phi ptr [ %i.ag, %.lr.ph ], [ %i.dd, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3648
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.e), !noalias !3648
  %i.ai = load i32, ptr %i.e, align 4, !noalias !3648
  %i.aj = and i32 %i.ai, 24576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3648
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c), !noalias !3648
  %i.ak = load i32, ptr %i.c, align 4, !noalias !3648
  %i.al = and i32 %i.ak, -24577
  %i.am = or disjoint i32 %i.al, 16384
  store i32 %i.am, ptr %i.d, align 4, !noalias !3648
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d), !noalias !3648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3648
  %i.an = load ptr, ptr %.sroa.021.025, align 8, !tbaa !205, !noalias !3648
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 160
  %i.ap = load atomic ptr, ptr %i.ao acquire, align 8, !noalias !3648 ; 9 uses
  %i.aq = load <2 x double>, ptr %i.ap, align 16, !noalias !3653 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.as = load <2 x double>, ptr %i.ar, align 16, !noalias !3653 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.au = load <2 x double>, ptr %i.at, align 16, !noalias !3653 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.aw = load <2 x double>, ptr %i.av, align 16, !noalias !3658 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.ay = load <2 x double>, ptr %i.ax, align 16, !noalias !3658 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  %i.ba = load <2 x double>, ptr %i.az, align 16, !noalias !3658 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  %i.bc = load <2 x double>, ptr %i.bb, align 16, !noalias !3661 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 112
  %i.be = load <2 x double>, ptr %i.bd, align 16, !noalias !3661 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ap, i64 128
  %i.bg = load <2 x double>, ptr %i.bf, align 16, !noalias !3661 ; 3 uses
  %i.bh = extractelement <2 x double> %i.bg, i64 0
  %i.bi = extractelement <2 x double> %i.bg, i64 1
  %i.bj = shufflevector <2 x double> %i.aw, <2 x double> %i.ay, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bk = shufflevector <2 x double> %i.aq, <2 x double> %i.as, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bl = fcmp ogt <2 x double> %i.bj, %i.bk
  %i.bm = select <2 x i1> %i.bl, <2 x double> %i.bj, <2 x double> %i.bk ; 2 uses
  %i.bn = shufflevector <2 x double> %i.bc, <2 x double> %i.be, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bo = fcmp ogt <2 x double> %i.bn, %i.bm
  %i.bp = select <2 x i1> %i.bo, <2 x double> %i.bn, <2 x double> %i.bm
  %i.bq = fneg <2 x double> %i.bp                 ; 2 uses
  %i.br = shufflevector <2 x double> %i.aq, <2 x double> %i.as, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bs = shufflevector <2 x double> %i.aw, <2 x double> %i.ay, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bt = fcmp olt <2 x double> %i.br, %i.bs
  %i.bu = select <2 x i1> %i.bt, <2 x double> %i.bs, <2 x double> %i.br ; 2 uses
  %i.bv = shufflevector <2 x double> %i.bc, <2 x double> %i.be, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bw = fcmp olt <2 x double> %i.bu, %i.bv
  %i.bx = select <2 x i1> %i.bw, <2 x double> %i.bv, <2 x double> %i.bu ; 2 uses
  %i.by = fcmp olt <2 x double> %i.au, %i.ba
  %i.bz = select <2 x i1> %i.by, <2 x double> %i.ba, <2 x double> %i.au ; 3 uses
  %i.ca = fcmp olt <2 x double> %i.bz, %i.bg      ; 2 uses
  %i.cb = extractelement <2 x i1> %i.ca, i64 0
  %i.cc = extractelement <2 x double> %i.bz, i64 0
  %.sroa.speculated23.i5.v.i.i.i = select i1 %i.cb, double %i.bh, double %i.cc
  %.sroa.speculated23.i5.i.i.i = fneg double %.sroa.speculated23.i5.v.i.i.i ; 2 uses
  %i.cd = extractelement <2 x i1> %i.ca, i64 1
  %i.ce = extractelement <2 x double> %i.bz, i64 1
  %.sroa.speculated.i8.i.i.i = select i1 %i.cd, double %i.bi, double %i.ce ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3648
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a), !noalias !3648
  %i.cf = load i32, ptr %i.a, align 4, !noalias !3648
  %i.cg = and i32 %i.cf, -24577
  %i.ch = or disjoint i32 %i.cg, %i.aj
  store i32 %i.ch, ptr %i.b, align 4, !noalias !3648
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b), !noalias !3648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3648
  %i.ci = load ptr, ptr %i.ah, align 8, !tbaa !1413 ; 9 uses
  %i.cj = load ptr, ptr %i.n, align 8, !tbaa !212
  %.not.i.i = icmp eq ptr %i.ci, %i.cj
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store <2 x double> %i.bq, ptr %i.ci, align 8
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store double %.sroa.speculated23.i5.i.i.i, ptr %.sroa.67.0..sroa_idx, align 8
  %.sroa.710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store <2 x double> %i.bx, ptr %.sroa.710.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  store double %.sroa.speculated.i8.i.i.i, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  store ptr %.sroa.021.025, ptr %.sroa.10.0..sroa_idx, align 8
  %i.ck = load ptr, ptr %i.ah, align 8, !tbaa !1413
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  store ptr %i.cl, ptr %i.ah, align 8, !tbaa !1413
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit

bb.g:                                             ; preds = %bb.e
  %i.cm = load ptr, ptr %1, align 8, !tbaa !210   ; 5 uses
  %i.cn = ptrtoint ptr %i.ci to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co                    ; 4 uses
  %i.cq = icmp eq i64 %i.cp, 9223372036854775800
  br i1 %i.cq, label %bb.h, label %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #43
  unreachable

_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.cr = sdiv exact i64 %i.cp, 56                ; 3 uses
  %.sroa.speculated.i.i.i.i5 = call i64 @llvm.umax.i64(i64 %i.cr, i64 1)
  %i.cs = add nsw i64 %.sroa.speculated.i.i.i.i5, %i.cr ; 2 uses
  %i.ct = icmp ult i64 %i.cs, %i.cr
  %i.cu = call i64 @llvm.umin.i64(i64 %i.cs, i64 164703072086692425)
  %i.cv = select i1 %i.ct, i64 164703072086692425, i64 %i.cu ; 3 uses
  %.not.i.i.i.i6 = icmp ne i64 %i.cv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i6)
  %i.cw = mul nuw nsw i64 %i.cv, 56
  %i.cx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cw) #45 ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cp ; 5 uses
  store <2 x double> %i.bq, ptr %i.cy, align 8
  %.sroa.67.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store double %.sroa.speculated23.i5.i.i.i, ptr %.sroa.67.0..sroa_idx8, align 8
  %.sroa.710.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  store <2 x double> %i.bx, ptr %.sroa.710.0..sroa_idx11, align 8
  %.sroa.9.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  store double %.sroa.speculated.i8.i.i.i, ptr %.sroa.9.0..sroa_idx16, align 8
  %.sroa.10.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  store ptr %.sroa.021.025, ptr %.sroa.10.0..sroa_idx18, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.cm, %i.ci
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i.i ], [ %i.cx, %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i ], [ %i.cm, %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i.i.i.i, i64 56, i1 false), !alias.scope !3664
  %i.cz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cz, %i.ci
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1418

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.cx, %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.da, %.lr.ph.i.i.i.i.i.i ]
  %i.db = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 56
  %.not.i23.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cp) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i
  store ptr %i.cx, ptr %1, align 8, !tbaa !210
  store ptr %i.db, ptr %i.ah, align 8, !tbaa !1413
  %i.dc = getelementptr inbounds nuw [56 x i8], ptr %i.cx, i64 %i.cv
  store ptr %i.dc, ptr %i.n, align 8, !tbaa !212
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.f, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.021.025, i64 8 ; 2 uses
  %i.de = load ptr, ptr %i.f, align 8, !tbaa !202
  %.not = icmp eq ptr %i.dd, %i.de
  br i1 %.not, label %._crit_edge, label %bb.e, !llvm.loop !3668
}

declare void @_ZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS5_5EpeckESL_SM_NS4_IiLin1ELi1ELi0ELin1ELi1EEESO_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKSt6vectorINS5_10Triangle_3IT1_EESaIS11_EERKSt3mapINSU_5IndexESY_ISt4pairIS17_NS5_6ObjectEESaIS1A_EESt4lessIS17_ESaIS18_IKS17_S1C_EEEbbRNS3_15PlainObjectBaseIT2_EERNS1L_IT3_EERNS1L_IT4_EERNS1L_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(48), i1 noundef zeroext, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4CGAL18Box_intersection_d12segment_treeIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ZN3igl8copyleft4cgalL22intersect_other_helperIS6_N5Eigen6MatrixINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSR_8backends16rational_adaptorINST_15cpp_int_backendILm0ELm0ELNSR_16cpp_integer_typeE1ELNSR_18cpp_int_check_typeE0ESaIyEEEEELNSR_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEES14_S15_S15_S14_S15_NSO_IiLin1ELi1ELi0ELin1ELi1EEES16_EEbRKNSN_10MatrixBaseIT0_EERKNS17_IT1_EERKNS17_IT2_EERKNS17_IT3_EERKNSL_28RemeshSelfIntersectionsParamERNSN_15PlainObjectBaseIT4_EERNS1R_IT5_EERNS1R_IT6_EERNS1R_IT7_EERNS1R_IT8_EEEUlRKSE_S28_E_dNS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEEEvT_S2E_S18_S18_S1G_S1G_S1C_S1K_lib(ptr %0, ptr %1, ptr %2, ptr %3, double noundef %4, double noundef %5, ptr nofree noundef readonly byval(%class.anon.1135) align 8 captures(none) %6, i64 noundef range(i64 -2147483648, 2147483648) %7, i32 noundef range(i32 -2147483648, 2147483647) %8, i1 noundef zeroext %9) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.10.i.i114.i = alloca [3 x double], align 8 ; 4 uses
  %10 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d.461", align 8 ; 4 uses
  %.sroa.10.i.i79.i = alloca [3 x double], align 8 ; 4 uses
  %11 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d.461", align 8 ; 4 uses
  %.sroa.10.i.i44.i = alloca [3 x double], align 8 ; 4 uses
  %12 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d.461", align 8 ; 4 uses
  %.sroa.10.i.i.i = alloca [3 x double], align 8  ; 4 uses
  %13 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d.461", align 8 ; 4 uses
  %.sroa.10.i.i.i18.i = alloca [3 x double], align 8 ; 4 uses
  %.sroa.10.i.i.i.i = alloca [3 x double], align 8 ; 4 uses
  %14 = alloca %class.anon.1135, align 8          ; 5 uses
  %15 = alloca %"class.CGAL::Box_intersection_d::Predicate_traits_d<CGAL::Box_intersection_d::Box_traits_d<CGAL::Box_intersection_d::Box_with_handle_d<double, 3, __gnu_cxx::__normal_iterator<CGAL::Triangle_3<CGAL::Epeck> *, std::vector<CGAL::Triangle_3<CGAL::Epeck>>>>>, true>::Spanning", align 8 ; 4 uses
  %i.a = alloca double, align 8                   ; 8 uses
  %i.b = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN4CGAL18Box_intersection_d12segment_treeIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ZN3igl8copyleft4cgalL22intersect_other_helperIS6_N5Eigen6MatrixINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSR_8backends16rational_adaptorINST_15cpp_int_backendILm0ELm0ELNSR_16cpp_integer_typeE1ELNSR_18cpp_int_check_typeE0ESaIyEEEEELNSR_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEES14_S15_S15_S14_S15_NSO_IiLin1ELi1ELi0ELin1ELi1EEES16_EEbRKNSN_10MatrixBaseIT0_EERKNS17_IT1_EERKNS17_IT2_EERKNS17_IT3_EERKNSL_28RemeshSelfIntersectionsParamERNSN_15PlainObjectBaseIT4_EERNS1R_IT5_EERNS1R_IT6_EERNS1R_IT7_EERNS1R_IT8_EEEUlRKSE_S28_E_dNS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEEEvT_S2E_S18_S18_S1G_S1G_S1C_S1K_libE5level) ; 6 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !47
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 4, !tbaa !47
  %i.e = icmp eq ptr %0, %1
  br i1 %i.e, label %bb.az, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ne ptr %2, %3
  %i.g = fcmp ult double %4, %5
  %or.cond = and i1 %i.f, %i.g
  br i1 %or.cond, label %bb.c, label %bb.az

.loopexit:                                        ; preds = %bb.af
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.ah
  %lpad.loopexit127 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit.i, %bb.d, %bb.ak
  %lpad.loopexit.split-lp128 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i32 %8, 0
  br i1 %i.h, label %bb.d, label %bb.ai

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false)
  %16 = ptrtoint ptr %1 to i64
  %17 = ptrtoint ptr %0 to i64                    ; 2 uses
  %18 = sub i64 %16, %17                          ; 2 uses
  %19 = sdiv exact i64 %18, 56
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %19, i1 true)
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = xor i64 %i.j, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEElNS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_T1_(ptr %0, ptr %1, i64 noundef %i.k, i32 0)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  %i.l = icmp sgt i64 %18, 896
  br i1 %i.l, label %bb.e, label %.preheader.i.i

bb.e:                                             ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %scevgep.i = getelementptr i8, ptr %0, i64 56
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %bb.e
  %.sroa.0.025.i49.idx.i = phi i64 [ 56, %bb.e ], [ %.sroa.0.025.i49.add.i, %bb.j ] ; 4 uses
  %.pn24.i50.i = phi ptr [ %0, %bb.e ], [ %.sroa.0.025.i49.ptr.i, %bb.j ] ; 4 uses
  %.sroa.0.025.i49.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.025.i49.idx.i ; 4 uses
  %i.n = load double, ptr %.sroa.0.025.i49.ptr.i, align 8, !tbaa !249 ; 5 uses
  %i.o = load double, ptr %0, align 8, !tbaa !249 ; 2 uses
  %i.p = fcmp olt double %i.n, %i.o
  br i1 %i.p, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i74.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = fcmp oeq double %i.n, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %.pn24.i50.i, i64 104
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i73.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i51.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i73.i: ; preds = %bb.g
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !1465
  %i.u = icmp ult ptr %i.s, %i.t
  br i1 %i.u, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i74.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i51.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i74.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i73.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i49.ptr.i, i64 56, i1 false)
  %i.v = icmp samesign ugt i64 %.sroa.0.025.i49.idx.i, 56
  br i1 %i.v, label %bb.h, label %bb.i, !prof !503

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i74.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.025.i49.idx.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i75.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i74.i
  %i.w = getelementptr inbounds nuw i8, ptr %.pn24.i50.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i75.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i75.i: ; preds = %bb.i, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %12, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %bb.j

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i51.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i73.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i44.i)
  %.sroa.6.0..sroa_idx.i.i53.i = getelementptr inbounds nuw i8, ptr %.pn24.i50.i, i64 64
  %i.x = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i53.i, align 8
  %.sroa.10.0..sroa_idx.i.i57.i = getelementptr inbounds nuw i8, ptr %.pn24.i50.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i44.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i57.i, i64 24, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i60.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i60.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i72.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i51.i
  %.sroa.014.0.us.i.i61.i = phi ptr [ %.sroa.0.0.us.i.i62.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i72.i ], [ %.sroa.0.025.i49.ptr.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i51.i ] ; 7 uses
  %.sroa.0.0.us.i.i62.i = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i61.i, i64 -56 ; 3 uses
  %i.y = load double, ptr %.sroa.0.0.us.i.i62.i, align 8, !tbaa !249 ; 2 uses
  %i.z = fcmp olt double %i.n, %i.y
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i72.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i63.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i63.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i60.i
  %i.aa = fcmp oeq double %i.n, %i.y
  br i1 %i.aa, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i71.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i64.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i71.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i63.i
  %i.ab = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i61.i, i64 -8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1465
  %i.ad = icmp ult ptr %i.s, %i.ac
  br i1 %i.ad, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i72.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i64.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i72.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i71.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i60.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i61.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i62.i, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i60.i, !llvm.loop !1467

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i64.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i71.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i63.i
  store double %i.n, ptr %.sroa.014.0.us.i.i61.i, align 8
  %.sroa.6.0..sroa_idx5.i.i65.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i61.i, i64 8
  store <2 x double> %i.x, ptr %.sroa.6.0..sroa_idx5.i.i65.i, align 8
  %.sroa.10.0..sroa_idx9.i.i67.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i61.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i67.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i44.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i68.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i61.i, i64 48
  store ptr %i.s, ptr %.sroa.1010.0..sroa_idx11.i.i68.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i44.i)
  br label %bb.j

bb.j:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i64.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i75.i
  %.sroa.0.025.i49.add.i = add nuw nsw i64 %.sroa.0.025.i49.idx.i, 56 ; 2 uses
  %.not.i70.i = icmp eq i64 %.sroa.0.025.i49.add.i, 896
  br i1 %.not.i70.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit78.i, label %bb.f, !llvm.loop !1468

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit78.i: ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.ae, %1
  br i1 %.not9.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i.i: ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit78.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i.i
  %.sroa.0.010.us.i.i.i = phi ptr [ %i.an, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i.i ], [ %i.ae, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit78.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i.i)
  %i.af = load <2 x double>, ptr %.sroa.0.010.us.i.i.i, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i.i, i64 16
  %.sroa.8.0.copyload.i.us.i.i.i = load double, ptr %.sroa.8.0..sroa_idx.i.us.i.i.i, align 8
  %.sroa.10.0..sroa_idx.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.us.i.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i.i, i64 48
  %.sroa.1010.0.copyload.i.us.i.i.i = load ptr, ptr %.sroa.1010.0..sroa_idx.i.us.i.i.i, align 8 ; 2 uses
  %i.ag = extractelement <2 x double> %i.af, i64 0 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i.i
  %.sroa.014.0.us.i.us.i.i.i = phi ptr [ %.sroa.0.0.us.i.us.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i.i ], [ %.sroa.0.010.us.i.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i.i ] ; 7 uses
  %.sroa.0.0.us.i.us.i.i.i = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i.i, i64 -56 ; 3 uses
  %i.ah = load double, ptr %.sroa.0.0.us.i.us.i.i.i, align 8, !tbaa !249 ; 2 uses
  %i.ai = fcmp olt double %i.ag, %i.ah
  br i1 %i.ai, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i.i
  %i.aj = fcmp oeq double %i.ag, %i.ah
  br i1 %i.aj, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i.i
  %i.ak = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i.i, i64 -8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1465
  %i.am = icmp ult ptr %.sroa.1010.0.copyload.i.us.i.i.i, %i.al
  br i1 %i.am, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.us.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.us.i.i.i, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i.i, !llvm.loop !1467

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i.i
  store <2 x double> %i.af, ptr %.sroa.014.0.us.i.us.i.i.i, align 8
  %.sroa.8.0..sroa_idx7.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i.i, i64 16
  store double %.sroa.8.0.copyload.i.us.i.i.i, ptr %.sroa.8.0..sroa_idx7.i.us.i.i.i, align 8
  %.sroa.10.0..sroa_idx9.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.us.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i.i, i64 48
  store ptr %.sroa.1010.0.copyload.i.us.i.i.i, ptr %.sroa.1010.0..sroa_idx11.i.us.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i.i)
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i.i, i64 56 ; 2 uses
  %.not.us.i.i.i = icmp eq ptr %i.an, %1
  br i1 %.not.us.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i.i, !llvm.loop !1469

.preheader.i.i:                                   ; preds = %.noexc
  %.sroa.0.022.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.not23.i.i = icmp eq ptr %.sroa.0.022.i.i, %1
  br i1 %.not23.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.k

bb.k:                                             ; preds = %bb.p, %.lr.ph.i.i
  %.sroa.0.025.i.i = phi ptr [ %.sroa.0.022.i.i, %.lr.ph.i.i ], [ %.sroa.0.0.i.i, %bb.p ] ; 6 uses
  %.pn24.i.i = phi ptr [ %0, %.lr.ph.i.i ], [ %.sroa.0.025.i.i, %bb.p ] ; 6 uses
  %i.ap = load double, ptr %.sroa.0.025.i.i, align 8, !tbaa !249 ; 5 uses
  %i.aq = load double, ptr %0, align 8, !tbaa !249 ; 2 uses
  %i.ar = fcmp olt double %i.ap, %i.aq
  br i1 %i.ar, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = fcmp oeq double %i.ap, %i.aq
  br i1 %i.as, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i.i: ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %.pn24.i.i, i64 104
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1465
  %i.av = load ptr, ptr %i.ao, align 8, !tbaa !1465
  %i.aw = icmp ult ptr %i.au, %i.av
  br i1 %i.aw, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i.i, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i.i, i64 56, i1 false)
  %i.ax = ptrtoint ptr %.sroa.0.025.i.i to i64
  %i.ay = sub i64 %i.ax, %17                      ; 4 uses
  %i.az = icmp sgt i64 %i.ay, 56
  br i1 %i.az, label %bb.m, label %bb.n, !prof !503

bb.m:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i.i
  %20 = getelementptr inbounds nuw i8, ptr %.pn24.i.i, i64 112
  %.neg34.i.i = udiv exact i64 %i.ay, 56
  %.neg34.neg.i.i = sub nsw i64 0, %.neg34.i.i
  %21 = getelementptr inbounds [56 x i8], ptr %20, i64 %.neg34.neg.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %21, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.ay, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i.i

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i.i
  %i.ba = icmp eq i64 %i.ay, 56
  br i1 %i.ba, label %bb.o, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %.pn24.i.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bb, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i.i: ; preds = %bb.o, %bb.n, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %13, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.p

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i.i, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i)
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.pn24.i.i, i64 64
  %i.bc = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.pn24.i.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.pn24.i.i, i64 104
  %.sroa.1010.0.copyload.i.i.i = load ptr, ptr %.sroa.1010.0..sroa_idx.i.i.i, align 8 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i.i
  %.sroa.014.0.us.i.i.i = phi ptr [ %.sroa.0.0.us.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i.i ], [ %.sroa.0.025.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i.i ] ; 7 uses
  %.sroa.0.0.us.i.i.i = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i.i, i64 -56 ; 3 uses
  %i.bd = load double, ptr %.sroa.0.0.us.i.i.i, align 8, !tbaa !249 ; 2 uses
  %i.be = fcmp olt double %i.ap, %i.bd
  br i1 %i.be, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i.i
  %i.bf = fcmp oeq double %i.ap, %i.bd
  br i1 %i.bf, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i.i
  %i.bg = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i.i, i64 -8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1465
  %i.bi = icmp ult ptr %.sroa.1010.0.copyload.i.i.i, %i.bh
  br i1 %i.bi, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i.i, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i.i, !llvm.loop !1467

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i.i
  store double %i.ap, ptr %.sroa.014.0.us.i.i.i, align 8
  %.sroa.6.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i.i, i64 8
  store <2 x double> %i.bc, ptr %.sroa.6.0..sroa_idx5.i.i.i, align 8
  %.sroa.10.0..sroa_idx9.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i.i, i64 48
  store ptr %.sroa.1010.0.copyload.i.i.i, ptr %.sroa.1010.0..sroa_idx11.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i)
  br label %bb.p

bb.p:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i.i
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i.i, i64 56 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.0.0.i.i, %1
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit.i, label %bb.k, !llvm.loop !1468

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit.i: ; preds = %bb.p, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit78.i, %.preheader.i.i
  %i.bj = ptrtoint ptr %3 to i64
  %i.bk = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.bl = sub i64 %i.bj, %i.bk                    ; 2 uses
  %i.bm = sdiv exact i64 %i.bl, 56
  %i.bn = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bm, i1 true)
  %i.bo = shl nuw nsw i64 %i.bn, 1
  %i.bp = xor i64 %i.bo, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEElNS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_T1_(ptr %2, ptr %3, i64 noundef %i.bp, i32 0)
          to label %.noexc101 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc101:                                        ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit.i
  %i.bq = icmp sgt i64 %i.bl, 896
  br i1 %i.bq, label %bb.q, label %.preheader.i80.i

bb.q:                                             ; preds = %.noexc101
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 48
  %scevgep189.i = getelementptr i8, ptr %2, i64 56
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %bb.q
  %.sroa.0.025.i119.idx.i = phi i64 [ 56, %bb.q ], [ %.sroa.0.025.i119.add.i, %bb.v ] ; 4 uses
  %.pn24.i120.i = phi ptr [ %2, %bb.q ], [ %.sroa.0.025.i119.ptr.i, %bb.v ] ; 4 uses
  %.sroa.0.025.i119.ptr.i = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.025.i119.idx.i ; 4 uses
  %i.bs = load double, ptr %.sroa.0.025.i119.ptr.i, align 8, !tbaa !249 ; 5 uses
  %i.bt = load double, ptr %2, align 8, !tbaa !249 ; 2 uses
  %i.bu = fcmp olt double %i.bs, %i.bt
  br i1 %i.bu, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i144.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bv = fcmp oeq double %i.bs, %i.bt
  %i.bw = getelementptr inbounds nuw i8, ptr %.pn24.i120.i, i64 104
  %i.bx = load ptr, ptr %i.bw, align 8            ; 3 uses
  br i1 %i.bv, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i143.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i121.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i143.i: ; preds = %bb.s
  %i.by = load ptr, ptr %i.br, align 8, !tbaa !1465
  %i.bz = icmp ult ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i144.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i121.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i144.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i143.i, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i119.ptr.i, i64 56, i1 false)
  %i.ca = icmp samesign ugt i64 %.sroa.0.025.i119.idx.i, 56
  br i1 %i.ca, label %bb.t, label %bb.u, !prof !503

bb.t:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i144.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep189.i, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %.sroa.0.025.i119.idx.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i145.i

bb.u:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i144.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.pn24.i120.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cb, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i145.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i145.i: ; preds = %bb.u, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %10, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.v

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i121.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i143.i, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i114.i)
  %.sroa.6.0..sroa_idx.i.i123.i = getelementptr inbounds nuw i8, ptr %.pn24.i120.i, i64 64
  %i.cc = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i123.i, align 8
  %.sroa.10.0..sroa_idx.i.i127.i = getelementptr inbounds nuw i8, ptr %.pn24.i120.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i114.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i127.i, i64 24, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i130.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i130.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i142.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i121.i
  %.sroa.014.0.us.i.i131.i = phi ptr [ %.sroa.0.0.us.i.i132.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i142.i ], [ %.sroa.0.025.i119.ptr.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i121.i ] ; 7 uses
  %.sroa.0.0.us.i.i132.i = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i131.i, i64 -56 ; 3 uses
  %i.cd = load double, ptr %.sroa.0.0.us.i.i132.i, align 8, !tbaa !249 ; 2 uses
  %i.ce = fcmp olt double %i.bs, %i.cd
  br i1 %i.ce, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i142.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i133.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i133.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i130.i
  %i.cf = fcmp oeq double %i.bs, %i.cd
  br i1 %i.cf, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i141.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i134.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i141.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i133.i
  %i.cg = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i131.i, i64 -8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !1465
  %i.ci = icmp ult ptr %i.bx, %i.ch
  br i1 %i.ci, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i142.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i134.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i142.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i141.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i130.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i131.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i132.i, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i130.i, !llvm.loop !1467

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i134.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i141.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i133.i
  store double %i.bs, ptr %.sroa.014.0.us.i.i131.i, align 8
  %.sroa.6.0..sroa_idx5.i.i135.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i131.i, i64 8
  store <2 x double> %i.cc, ptr %.sroa.6.0..sroa_idx5.i.i135.i, align 8
  %.sroa.10.0..sroa_idx9.i.i137.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i131.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i137.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i114.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i138.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i131.i, i64 48
  store ptr %i.bx, ptr %.sroa.1010.0..sroa_idx11.i.i138.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i114.i)
  br label %bb.v

bb.v:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i134.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i145.i
  %.sroa.0.025.i119.add.i = add nuw nsw i64 %.sroa.0.025.i119.idx.i, 56 ; 2 uses
  %.not.i140.i = icmp eq i64 %.sroa.0.025.i119.add.i, 896
  br i1 %.not.i140.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit148.i, label %bb.r, !llvm.loop !1468

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit148.i: ; preds = %bb.v
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 896 ; 2 uses
  %.not9.i.i19.i = icmp eq ptr %i.cj, %3
  br i1 %.not9.i.i19.i, label %.preheader.i.preheader, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i21.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i21.i: ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit148.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35.i
  %.sroa.0.010.us.i.i22.i = phi ptr [ %i.cs, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35.i ], [ %i.cj, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit148.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i18.i)
  %i.ck = load <2 x double>, ptr %.sroa.0.010.us.i.i22.i, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx.i.us.i.i26.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i22.i, i64 16
  %.sroa.8.0.copyload.i.us.i.i27.i = load double, ptr %.sroa.8.0..sroa_idx.i.us.i.i26.i, align 8
  %.sroa.10.0..sroa_idx.i.us.i.i28.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i22.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i18.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.us.i.i28.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.us.i.i29.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i22.i, i64 48
  %.sroa.1010.0.copyload.i.us.i.i30.i = load ptr, ptr %.sroa.1010.0..sroa_idx.i.us.i.i29.i, align 8 ; 2 uses
  %i.cl = extractelement <2 x double> %i.ck, i64 0 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i31.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i31.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i42.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i21.i
  %.sroa.014.0.us.i.us.i.i32.i = phi ptr [ %.sroa.0.0.us.i.us.i.i33.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i42.i ], [ %.sroa.0.010.us.i.i22.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i21.i ] ; 7 uses
  %.sroa.0.0.us.i.us.i.i33.i = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i32.i, i64 -56 ; 3 uses
  %i.cm = load double, ptr %.sroa.0.0.us.i.us.i.i33.i, align 8, !tbaa !249 ; 2 uses
  %i.cn = fcmp olt double %i.cl, %i.cm
  br i1 %i.cn, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i42.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i34.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i34.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i31.i
  %i.co = fcmp oeq double %i.cl, %i.cm
  br i1 %i.co, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i41.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i41.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i34.i
  %i.cp = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i32.i, i64 -8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !1465
  %i.cr = icmp ult ptr %.sroa.1010.0.copyload.i.us.i.i30.i, %i.cq
  br i1 %i.cr, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i42.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i42.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i41.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i31.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.us.i.i32.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.us.i.i33.i, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i31.i, !llvm.loop !1467

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i41.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i34.i
  store <2 x double> %i.ck, ptr %.sroa.014.0.us.i.us.i.i32.i, align 8
  %.sroa.8.0..sroa_idx7.i.us.i.i37.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i32.i, i64 16
  store double %.sroa.8.0.copyload.i.us.i.i27.i, ptr %.sroa.8.0..sroa_idx7.i.us.i.i37.i, align 8
  %.sroa.10.0..sroa_idx9.i.us.i.i38.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i32.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.us.i.i38.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i18.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.us.i.i39.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.us.i.i32.i, i64 48
  store ptr %.sroa.1010.0.copyload.i.us.i.i30.i, ptr %.sroa.1010.0..sroa_idx11.i.us.i.i39.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i18.i)
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us.i.i22.i, i64 56 ; 2 uses
  %.not.us.i.i40.i = icmp eq ptr %i.cs, %3
  br i1 %.not.us.i.i40.i, label %.preheader.i.preheader, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i21.i, !llvm.loop !1469

.preheader.i80.i:                                 ; preds = %.noexc101
  %.sroa.0.022.i81.i = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %.not23.i82.i = icmp eq ptr %.sroa.0.022.i81.i, %3
  br i1 %.not23.i82.i, label %.preheader.i.preheader, label %.lr.ph.i83.i

.lr.ph.i83.i:                                     ; preds = %.preheader.i80.i
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.w

bb.w:                                             ; preds = %bb.ab, %.lr.ph.i83.i
  %.sroa.0.025.i84.i = phi ptr [ %.sroa.0.022.i81.i, %.lr.ph.i83.i ], [ %.sroa.0.0.i104.i, %bb.ab ] ; 6 uses
  %.pn24.i85.i = phi ptr [ %2, %.lr.ph.i83.i ], [ %.sroa.0.025.i84.i, %bb.ab ] ; 6 uses
  %i.cu = load double, ptr %.sroa.0.025.i84.i, align 8, !tbaa !249 ; 5 uses
  %i.cv = load double, ptr %2, align 8, !tbaa !249 ; 2 uses
  %i.cw = fcmp olt double %i.cu, %i.cv
  br i1 %i.cw, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i109.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cx = fcmp oeq double %i.cu, %i.cv
  br i1 %i.cx, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i108.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i86.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i108.i: ; preds = %bb.x
  %i.cy = getelementptr inbounds nuw i8, ptr %.pn24.i85.i, i64 104
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1465
  %i.da = load ptr, ptr %i.ct, align 8, !tbaa !1465
  %i.db = icmp ult ptr %i.cz, %i.da
  br i1 %i.db, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i109.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i86.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i109.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i108.i, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i84.i, i64 56, i1 false)
  %i.dc = ptrtoint ptr %.sroa.0.025.i84.i to i64
  %i.dd = sub i64 %i.dc, %i.bk                    ; 4 uses
  %i.de = icmp sgt i64 %i.dd, 56
  br i1 %i.de, label %bb.y, label %bb.z, !prof !503

bb.y:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i109.i
  %22 = getelementptr inbounds nuw i8, ptr %.pn24.i85.i, i64 112
  %.neg34.i111.i = udiv exact i64 %i.dd, 56
  %.neg34.neg.i112.i = sub nsw i64 0, %.neg34.i111.i
  %23 = getelementptr inbounds [56 x i8], ptr %22, i64 %.neg34.neg.i112.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %23, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %i.dd, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i110.i

bb.z:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i109.i
  %i.df = icmp eq i64 %i.dd, 56
  br i1 %i.df, label %bb.aa, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i110.i

bb.aa:                                            ; preds = %bb.z
  %i.dg = getelementptr inbounds nuw i8, ptr %.pn24.i85.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dg, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i110.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i110.i: ; preds = %bb.aa, %bb.z, %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %11, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.ab

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i86.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i108.i, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i79.i)
  %.sroa.6.0..sroa_idx.i.i88.i = getelementptr inbounds nuw i8, ptr %.pn24.i85.i, i64 64
  %i.dh = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i88.i, align 8
  %.sroa.10.0..sroa_idx.i.i92.i = getelementptr inbounds nuw i8, ptr %.pn24.i85.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i79.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i92.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx.i.i93.i = getelementptr inbounds nuw i8, ptr %.pn24.i85.i, i64 104
  %.sroa.1010.0.copyload.i.i94.i = load ptr, ptr %.sroa.1010.0..sroa_idx.i.i93.i, align 8 ; 2 uses
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i95.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i95.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i107.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i86.i
  %.sroa.014.0.us.i.i96.i = phi ptr [ %.sroa.0.0.us.i.i97.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i107.i ], [ %.sroa.0.025.i84.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i86.i ] ; 7 uses
  %.sroa.0.0.us.i.i97.i = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i96.i, i64 -56 ; 3 uses
  %i.di = load double, ptr %.sroa.0.0.us.i.i97.i, align 8, !tbaa !249 ; 2 uses
  %i.dj = fcmp olt double %i.cu, %i.di
  br i1 %i.dj, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i107.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i98.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i98.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i95.i
  %i.dk = fcmp oeq double %i.cu, %i.di
  br i1 %i.dk, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i106.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i99.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i106.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i98.i
  %i.dl = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i96.i, i64 -8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !1465
  %i.dn = icmp ult ptr %.sroa.1010.0.copyload.i.i94.i, %i.dm
  br i1 %i.dn, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i107.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i99.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i107.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i106.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i95.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i96.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i97.i, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i95.i, !llvm.loop !1467

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i99.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i106.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i98.i
  store double %i.cu, ptr %.sroa.014.0.us.i.i96.i, align 8
  %.sroa.6.0..sroa_idx5.i.i100.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i96.i, i64 8
  store <2 x double> %i.dh, ptr %.sroa.6.0..sroa_idx5.i.i100.i, align 8
  %.sroa.10.0..sroa_idx9.i.i102.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i96.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx9.i.i102.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i79.i, i64 24, i1 false)
  %.sroa.1010.0..sroa_idx11.i.i103.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.us.i.i96.i, i64 48
  store ptr %.sroa.1010.0.copyload.i.i94.i, ptr %.sroa.1010.0..sroa_idx11.i.i103.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i79.i)
  br label %bb.ab

bb.ab:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i99.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ET0_T_SK_SJ_.exit.i110.i
  %.sroa.0.0.i104.i = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i84.i, i64 56 ; 2 uses
  %.not.i105.i = icmp eq ptr %.sroa.0.0.i104.i, %3
  br i1 %.not.i105.i, label %.preheader.i.preheader, label %bb.w, !llvm.loop !1468

.preheader.i.preheader:                           ; preds = %bb.ab, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i35.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit148.i, %.preheader.i80.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.critedge2.i
  %.sroa.0154.0185.i = phi ptr [ %i.eq, %.critedge2.i ], [ %2, %.preheader.i.preheader ] ; 5 uses
  %.sroa.0166.0184.i = phi ptr [ %.sroa.0166.1.lcssa.i, %.critedge2.i ], [ %0, %.preheader.i.preheader ] ; 3 uses
  %.not170174.i = icmp eq ptr %.sroa.0166.0184.i, %1
  br i1 %.not170174.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.do = load double, ptr %.sroa.0154.0185.i, align 8, !tbaa !249 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0154.0185.i, i64 48
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread.i, %.lr.ph.i
  %.sroa.0166.1175.i = phi ptr [ %.sroa.0166.0184.i, %.lr.ph.i ], [ %i.dx, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread.i ] ; 5 uses
  %i.dq = load double, ptr %.sroa.0166.1175.i, align 8, !tbaa !249 ; 2 uses
  %i.dr = fcmp olt double %i.dq, %i.do
  br i1 %i.dr, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ds = fcmp oeq double %i.dq, %i.do
  br i1 %i.ds, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.i, label %.critedge.i

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.i: ; preds = %bb.ad
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0166.1175.i, i64 48
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !1465
  %i.dv = load ptr, ptr %i.dp, align 8, !tbaa !1465
  %i.dw = icmp ult ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread.i, label %.critedge.i

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread.i: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.i, %bb.ac
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0166.1175.i, i64 56 ; 3 uses
  %.not170.i = icmp eq ptr %i.dx, %1
  br i1 %.not170.i, label %.critedge.i, label %bb.ac, !llvm.loop !3669

.critedge.i:                                      ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread.i, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.i, %bb.ad, %.preheader.i
  %.sroa.0166.1.lcssa.i = phi ptr [ %.sroa.0166.0184.i, %.preheader.i ], [ %.sroa.0166.1175.i, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.i ], [ %i.dx, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread.i ], [ %.sroa.0166.1175.i, %bb.ad ] ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0154.0185.i, i64 24 ; 2 uses
  %.not171179.i = icmp eq ptr %.sroa.0166.1.lcssa.i, %1
  br i1 %.not171179.i, label %.critedge2.i, label %.lr.ph181.i

.lr.ph181.i:                                      ; preds = %.critedge.i
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0154.0185.i, i64 48 ; 2 uses
  br i1 %9, label %.lr.ph181.split.us.i, label %.lr.ph181.split.i

.lr.ph181.split.us.i:                             ; preds = %.lr.ph181.i, %.noexc102
  %.sroa.0.0180.us.i = phi ptr [ %i.eh, %.noexc102 ], [ %.sroa.0166.1.lcssa.i, %.lr.ph181.i ] ; 3 uses
  %i.ea = load double, ptr %i.dy, align 8, !tbaa !249
  %i.eb = load double, ptr %.sroa.0.0180.us.i, align 8, !tbaa !249
  %i.ec = fcmp ult double %i.ea, %i.eb
  br i1 %i.ec, label %.critedge2.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph181.split.us.i
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0.0180.us.i, i64 48
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !1465 ; 2 uses
  %i.ef = load ptr, ptr %i.dz, align 8, !tbaa !1465 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %.noexc102, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke fastcc void @_ZZN3igl8copyleft4cgalL22intersect_other_helperIN4CGAL5EpeckEN5Eigen6MatrixINS3_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESM_SN_SN_SM_SN_NS6_IiLin1ELi1ELi0ELin1ELi1EEESO_EEbRKNS5_10MatrixBaseIT0_EERKNSP_IT1_EERKNSP_IT2_EERKNSP_IT3_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseIT4_EERNS19_IT5_EERNS19_IT6_EERNS19_IT7_EERNS19_IT8_EEENKUlRKNS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS4_EESt6vectorIS1U_SaIS1U_EEEENS1P_14ID_FROM_HANDLEEEES23_E_clES23_S23_(ptr noundef nonnull readonly align 8 dereferenceable(48) %14, ptr %i.ee, ptr %i.ef)
          to label %.noexc102 unwind label %.loopexit

.noexc102:                                        ; preds = %bb.af, %bb.ae
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.0180.us.i, i64 56 ; 2 uses
  %.not171.us.i = icmp eq ptr %i.eh, %1
  br i1 %.not171.us.i, label %.critedge2.i, label %.lr.ph181.split.us.i, !llvm.loop !3670

.lr.ph181.split.i:                                ; preds = %.lr.ph181.i, %.noexc103
  %.sroa.0.0180.i = phi ptr [ %i.ep, %.noexc103 ], [ %.sroa.0166.1.lcssa.i, %.lr.ph181.i ] ; 3 uses
  %i.ei = load double, ptr %i.dy, align 8, !tbaa !249
  %i.ej = load double, ptr %.sroa.0.0180.i, align 8, !tbaa !249
  %i.ek = fcmp ult double %i.ei, %i.ej
  br i1 %i.ek, label %.critedge2.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph181.split.i
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0.0180.i, i64 48
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !1465 ; 2 uses
  %i.en = load ptr, ptr %i.dz, align 8, !tbaa !1465 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %.noexc103, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke fastcc void @_ZZN3igl8copyleft4cgalL22intersect_other_helperIN4CGAL5EpeckEN5Eigen6MatrixINS3_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESM_SN_SN_SM_SN_NS6_IiLin1ELi1ELi0ELin1ELi1EEESO_EEbRKNS5_10MatrixBaseIT0_EERKNSP_IT1_EERKNSP_IT2_EERKNSP_IT3_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseIT4_EERNS19_IT5_EERNS19_IT6_EERNS19_IT7_EERNS19_IT8_EEENKUlRKNS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS4_EESt6vectorIS1U_SaIS1U_EEEENS1P_14ID_FROM_HANDLEEEES23_E_clES23_S23_(ptr noundef nonnull readonly align 8 dereferenceable(48) %14, ptr %i.en, ptr %i.em)
          to label %.noexc103 unwind label %.loopexit.split-lp.loopexit

.noexc103:                                        ; preds = %bb.ah, %bb.ag
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0.0180.i, i64 56 ; 2 uses
  %.not171.i = icmp eq ptr %i.ep, %1
  br i1 %.not171.i, label %.critedge2.i, label %.lr.ph181.split.i, !llvm.loop !3670

.critedge2.i:                                     ; preds = %.noexc103, %.lr.ph181.split.i, %.noexc102, %.lr.ph181.split.us.i, %.critedge.i
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0154.0185.i, i64 56 ; 2 uses
  %.not.i = icmp eq ptr %i.eq, %3
  br i1 %.not.i, label %.loopexit130, label %.preheader.i, !llvm.loop !3671

.loopexit130:                                     ; preds = %.critedge2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %bb.az

bb.ai:                                            ; preds = %bb.c
  %24 = ptrtoint ptr %1 to i64
  %25 = ptrtoint ptr %0 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 56
  %i.er = icmp slt i64 %27, %7
  br i1 %i.er, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.es = ptrtoint ptr %3 to i64
  %i.et = ptrtoint ptr %2 to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = sdiv exact i64 %i.eu, 56
  %i.ew = icmp slt i64 %i.ev, %7
  br i1 %i.ew, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  invoke fastcc void @_ZN4CGAL18Box_intersection_d21modified_two_way_scanIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ZN3igl8copyleft4cgalL22intersect_other_helperIS6_N5Eigen6MatrixINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSR_8backends16rational_adaptorINST_15cpp_int_backendILm0ELm0ELNSR_16cpp_integer_typeE1ELNSR_18cpp_int_check_typeE0ESaIyEEEEELNSR_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEES14_S15_S15_S14_S15_NSO_IiLin1ELi1ELi0ELin1ELi1EEES16_EEbRKNSN_10MatrixBaseIT0_EERKNS17_IT1_EERKNS17_IT2_EERKNS17_IT3_EERKNSL_28RemeshSelfIntersectionsParamERNSN_15PlainObjectBaseIT4_EERNS1R_IT5_EERNS1R_IT6_EERNS1R_IT7_EERNS1R_IT8_EEEUlRKSE_S28_E_NS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEEEvT_S2E_S18_S18_S1C_S1G_ib(ptr %0, ptr %1, ptr %2, ptr %3, ptr noundef nonnull byval(%class.anon.1135) align 8 %6, i32 noundef %8, i1 noundef zeroext %9)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp

bb.al:                                            ; preds = %bb.aj
  %i.ex = fcmp oeq double %4, f0xFFEFFFFFFFFFFFFF
  %i.ey = fcmp oeq double %5, f0x7FEFFFFFFFFFFFFF
  %or.cond100 = or i1 %i.ex, %i.ey
  br i1 %or.cond100, label %.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  store double %4, ptr %15, align 8, !tbaa !1473
  %i.ez = getelementptr inbounds nuw i8, ptr %15, i64 8
  store double %5, ptr %i.ez, align 8, !tbaa !1475
  %i.fa = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 %8, ptr %i.fa, align 8, !tbaa !1476
  %i.fb = invoke ptr @_ZSt9partitionIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE8SpanningEET_SO_SO_T0_(ptr %2, ptr %3, ptr noundef nonnull byval(%"class.CGAL::Box_intersection_d::Predicate_traits_d<CGAL::Box_intersection_d::Box_traits_d<CGAL::Box_intersection_d::Box_with_handle_d<double, 3, __gnu_cxx::__normal_iterator<CGAL::Triangle_3<CGAL::Epeck> *, std::vector<CGAL::Triangle_3<CGAL::Epeck>>>>>, true>::Spanning") align 8 %15)
          to label %bb.an unwind label %bb.aq     ; 5 uses

bb.an:                                            ; preds = %bb.am
  %.not = icmp eq ptr %2, %i.fb
  br i1 %.not, label %.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fc = add nsw i32 %8, -1                      ; 2 uses
  invoke fastcc void @_ZN4CGAL18Box_intersection_d12segment_treeIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ZN3igl8copyleft4cgalL22intersect_other_helperIS6_N5Eigen6MatrixINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSR_8backends16rational_adaptorINST_15cpp_int_backendILm0ELm0ELNSR_16cpp_integer_typeE1ELNSR_18cpp_int_check_typeE0ESaIyEEEEELNSR_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEES14_S15_S15_S14_S15_NSO_IiLin1ELi1ELi0ELin1ELi1EEES16_EEbRKNSN_10MatrixBaseIT0_EERKNS17_IT1_EERKNS17_IT2_EERKNS17_IT3_EERKNSL_28RemeshSelfIntersectionsParamERNSN_15PlainObjectBaseIT4_EERNS1R_IT5_EERNS1R_IT6_EERNS1R_IT7_EERNS1R_IT8_EEEUlRKSE_S28_E_dNS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEEEvT_S2E_S18_S18_S1G_S1G_S1C_S1K_lib(ptr %0, ptr %1, ptr %2, ptr %i.fb, double noundef f0xFFEFFFFFFFFFFFFF, double noundef f0x7FEFFFFFFFFFFFFF, ptr noundef nonnull byval(%class.anon.1135) align 8 %6, i64 noundef %7, i32 noundef %i.fc, i1 noundef zeroext %9)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fd = xor i1 %9, true
  invoke fastcc void @_ZN4CGAL18Box_intersection_d12segment_treeIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ZN3igl8copyleft4cgalL22intersect_other_helperIS6_N5Eigen6MatrixINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSR_8backends16rational_adaptorINST_15cpp_int_backendILm0ELm0ELNSR_16cpp_integer_typeE1ELNSR_18cpp_int_check_typeE0ESaIyEEEEELNSR_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEES14_S15_S15_S14_S15_NSO_IiLin1ELi1ELi0ELin1ELi1EEES16_EEbRKNSN_10MatrixBaseIT0_EERKNS17_IT1_EERKNS17_IT2_EERKNS17_IT3_EERKNSL_28RemeshSelfIntersectionsParamERNSN_15PlainObjectBaseIT4_EERNS1R_IT5_EERNS1R_IT6_EERNS1R_IT7_EERNS1R_IT8_EEEUlRKSE_S28_E_dNS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEEEvT_S2E_S18_S18_S1G_S1G_S1C_S1K_lib(ptr %2, ptr %i.fb, ptr %0, ptr %1, double noundef f0xFFEFFFFFFFFFFFFF, double noundef f0x7FEFFFFFFFFFFFFF, ptr noundef nonnull byval(%class.anon.1135) align 8 %6, i64 noundef %7, i32 noundef %i.fc, i1 noundef zeroext %i.fd)
          to label %.thread unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.am
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.thread:                                          ; preds = %bb.al, %bb.ap, %bb.an
  %storemerge178 = phi ptr [ %i.fb, %bb.an ], [ %i.fb, %bb.ap ], [ %2, %bb.al ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.ff = invoke ptr @_ZN4CGAL18Box_intersection_d12split_pointsIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEdEET_SN_SN_T0_iRT1_(ptr %0, ptr %1, i32 noundef %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.ar unwind label %bb.at     ; 4 uses

bb.ar:                                            ; preds = %.thread
  %i.fg = icmp eq ptr %i.ff, %0
  %i.fh = icmp eq ptr %i.ff, %1
  %or.cond125 = or i1 %i.fg, %i.fh
  br i1 %or.cond125, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  invoke fastcc void @_ZN4CGAL18Box_intersection_d21modified_two_way_scanIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ZN3igl8copyleft4cgalL22intersect_other_helperIS6_N5Eigen6MatrixINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSR_8backends16rational_adaptorINST_15cpp_int_backendILm0ELm0ELNSR_16cpp_integer_typeE1ELNSR_18cpp_int_check_typeE0ESaIyEEEEELNSR_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEES14_S15_S15_S14_S15_NSO_IiLin1ELi1ELi0ELin1ELi1EEES16_EEbRKNSN_10MatrixBaseIT0_EERKNS17_IT1_EERKNS17_IT2_EERKNS17_IT3_EERKNSL_28RemeshSelfIntersectionsParamERNSN_15PlainObjectBaseIT4_EERNS1R_IT5_EERNS1R_IT6_EERNS1R_IT7_EERNS1R_IT8_EEEUlRKSE_S28_E_NS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEEEvT_S2E_S18_S18_S1C_S1G_ib(ptr %0, ptr %1, ptr %storemerge178, ptr %3, ptr noundef nonnull byval(%class.anon.1135) align 8 %6, i32 noundef %8, i1 noundef zeroext %9)
          to label %bb.ay unwind label %bb.at

bb.at:                                            ; preds = %bb.as, %.thread
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.au:                                            ; preds = %bb.ar
  %i.fj = load double, ptr %i.a, align 8, !tbaa !249
  %i.fk = invoke ptr @_ZSt9partitionIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7Lo_lessEET_SO_SO_T0_(ptr %storemerge178, ptr %3, double %i.fj, i32 %8)
          to label %bb.av unwind label %bb.ba

bb.av:                                            ; preds = %bb.au
  %i.fl = load double, ptr %i.a, align 8, !tbaa !249
  invoke fastcc void @_ZN4CGAL18Box_intersection_d12segment_treeIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ZN3igl8copyleft4cgalL22intersect_other_helperIS6_N5Eigen6MatrixINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSR_8backends16rational_adaptorINST_15cpp_int_backendILm0ELm0ELNSR_16cpp_integer_typeE1ELNSR_18cpp_int_check_typeE0ESaIyEEEEELNSR_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEES14_S15_S15_S14_S15_NSO_IiLin1ELi1ELi0ELin1ELi1EEES16_EEbRKNSN_10MatrixBaseIT0_EERKNS17_IT1_EERKNS17_IT2_EERKNS17_IT3_EERKNSL_28RemeshSelfIntersectionsParamERNSN_15PlainObjectBaseIT4_EERNS1R_IT5_EERNS1R_IT6_EERNS1R_IT7_EERNS1R_IT8_EEEUlRKSE_S28_E_dNS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEEEvT_S2E_S18_S18_S1G_S1G_S1C_S1K_lib(ptr %0, ptr %i.ff, ptr %storemerge178, ptr %i.fk, double noundef %4, double noundef %i.fl, ptr noundef nonnull byval(%class.anon.1135) align 8 %6, i64 noundef %7, i32 noundef %8, i1 noundef zeroext %9)
          to label %bb.aw unwind label %bb.bb

bb.aw:                                            ; preds = %bb.av
  %i.fm = load double, ptr %i.a, align 8, !tbaa !249
  %i.fn = invoke ptr @_ZSt9partitionIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE10Hi_greaterEET_SO_SO_T0_(ptr %storemerge178, ptr %3, double %i.fm, i32 %8)
          to label %bb.ax unwind label %bb.bc

bb.ax:                                            ; preds = %bb.aw
  %i.fo = load double, ptr %i.a, align 8, !tbaa !249
  invoke fastcc void @_ZN4CGAL18Box_intersection_d12segment_treeIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ZN3igl8copyleft4cgalL22intersect_other_helperIS6_N5Eigen6MatrixINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSR_8backends16rational_adaptorINST_15cpp_int_backendILm0ELm0ELNSR_16cpp_integer_typeE1ELNSR_18cpp_int_check_typeE0ESaIyEEEEELNSR_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEES14_S15_S15_S14_S15_NSO_IiLin1ELi1ELi0ELin1ELi1EEES16_EEbRKNSN_10MatrixBaseIT0_EERKNS17_IT1_EERKNS17_IT2_EERKNS17_IT3_EERKNSL_28RemeshSelfIntersectionsParamERNSN_15PlainObjectBaseIT4_EERNS1R_IT5_EERNS1R_IT6_EERNS1R_IT7_EERNS1R_IT8_EEEUlRKSE_S28_E_dNS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEEEvT_S2E_S18_S18_S1G_S1G_S1C_S1K_lib(ptr %i.ff, ptr %1, ptr %storemerge178, ptr %i.fn, double noundef %i.fo, double noundef %5, ptr noundef nonnull byval(%class.anon.1135) align 8 %6, i64 noundef %7, i32 noundef %8, i1 noundef zeroext %9)
          to label %bb.ay unwind label %bb.bb

bb.ay:                                            ; preds = %bb.ax, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.az

bb.az:                                            ; preds = %bb.ak, %bb.a, %bb.b, %bb.ay, %.loopexit130
  %i.fp = load i32, ptr %i.b, align 4, !tbaa !47
  %i.fq = add nsw i32 %i.fp, -1
  store i32 %i.fq, ptr %i.b, align 4, !tbaa !47
  ret void

bb.ba:                                            ; preds = %bb.au
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bb:                                            ; preds = %bb.ax, %bb.av
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %bb.aw
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bd:                                            ; preds = %bb.ba, %bb.bb, %bb.bc, %bb.at
  %.pn95 = phi { ptr, i32 } [ %i.fi, %bb.at ], [ %i.fs, %bb.bb ], [ %i.ft, %bb.bc ], [ %i.fr, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.aq, %bb.bd
  %.pn98 = phi { ptr, i32 } [ %i.fe, %bb.aq ], [ %.pn95, %bb.bd ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit127, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp128, %.loopexit.split-lp.loopexit.split-lp ]
  %i.fu = load i32, ptr %i.b, align 4, !tbaa !47
  %i.fv = add nsw i32 %i.fu, -1
  store i32 %i.fv, ptr %i.b, align 4, !tbaa !47
  resume { ptr, i32 } %.pn98
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4CGAL18Box_intersection_d21modified_two_way_scanIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ZN3igl8copyleft4cgalL22intersect_other_helperIS6_N5Eigen6MatrixINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSR_8backends16rational_adaptorINST_15cpp_int_backendILm0ELm0ELNSR_16cpp_integer_typeE1ELNSR_18cpp_int_check_typeE0ESaIyEEEEELNSR_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEES14_S15_S15_S14_S15_NSO_IiLin1ELi1ELi0ELin1ELi1EEES16_EEbRKNSN_10MatrixBaseIT0_EERKNS17_IT1_EERKNS17_IT2_EERKNS17_IT3_EERKNSL_28RemeshSelfIntersectionsParamERNSN_15PlainObjectBaseIT4_EERNS1R_IT5_EERNS1R_IT6_EERNS1R_IT7_EERNS1R_IT8_EEEUlRKSE_S28_E_NS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEEEvT_S2E_S18_S18_S1C_S1G_ib(ptr %0, ptr %1, ptr %2, ptr %3, ptr nofree noundef readonly byval(%class.anon.1135) align 8 captures(none) %4, i32 noundef range(i32 -2147483648, 2147483647) %5, i1 noundef zeroext %6) unnamed_addr #4 {
bb.a:
  %.sroa.10.i.i164 = alloca [3 x double], align 8 ; 4 uses
  %7 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d.461", align 8 ; 4 uses
  %.sroa.10.i.i128 = alloca [3 x double], align 8 ; 4 uses
  %8 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d.461", align 8 ; 4 uses
  %.sroa.10.i.i92 = alloca [3 x double], align 8  ; 4 uses
  %9 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d.461", align 8 ; 4 uses
  %.sroa.10.i.i = alloca [3 x double], align 8    ; 4 uses
  %10 = alloca %"class.CGAL::Box_intersection_d::Box_with_handle_d.461", align 8 ; 4 uses
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
  %i.j = load double, ptr %.sroa.0.025.i97.ptr, align 8, !tbaa !249 ; 5 uses
  %i.k = load double, ptr %0, align 8, !tbaa !249 ; 2 uses
  %i.l = fcmp olt double %i.j, %i.k
  br i1 %i.l, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i123, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = fcmp oeq double %i.j, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %.pn24.i98, i64 104
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  br i1 %i.m, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i122, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i100

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i122: ; preds = %bb.e
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !1465
  %i.q = icmp ult ptr %i.o, %i.p
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i123, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i100

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i123: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i122, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i97.ptr, i64 56, i1 false)
  %i.r = icmp samesign ugt i64 %.sroa.0.025.i97.idx, 56
  br i1 %i.r, label %bb.f, label %bb.g, !prof !503

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
  %i.u = load double, ptr %.sroa.0.0.us.i.i111, align 8, !tbaa !249 ; 2 uses
  %i.v = fcmp olt double %i.j, %i.u
  br i1 %i.v, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i121, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i112

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i112: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i109
  %i.w = fcmp oeq double %i.j, %i.u
  br i1 %i.w, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i120, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i113

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i120: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i112
  %i.x = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i110, i64 -8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1465
  %i.z = icmp ult ptr %i.o, %i.y
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i121, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i113

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i121: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i120, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i109
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i110, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i111, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i109, !llvm.loop !1467

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
  br i1 %.not.i119, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit127, label %bb.d, !llvm.loop !1468

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
  %i.ad = load double, ptr %.sroa.0.0.us.i.us.i.i, align 8, !tbaa !249 ; 2 uses
  %i.ae = fcmp olt double %i.ac, %i.ad
  br i1 %i.ae, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i
  %i.af = fcmp oeq double %i.ac, %i.ad
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i
  %i.ag = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i, i64 -8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1465
  %i.ai = icmp ult ptr %.sroa.1010.0.copyload.i.us.i.i, %i.ah
  br i1 %i.ai, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.us.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.us.i.i, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i, !llvm.loop !1467

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
  br i1 %.not.us.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i, !llvm.loop !1469

.preheader.i:                                     ; preds = %bb.b
  %.sroa.0.022.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.not23.i = icmp eq ptr %.sroa.0.022.i, %1
  br i1 %.not23.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i
  %.sroa.0.025.i = phi ptr [ %.sroa.0.022.i, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.n ] ; 6 uses
  %.pn24.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.025.i, %bb.n ] ; 6 uses
  %i.al = load double, ptr %.sroa.0.025.i, align 8, !tbaa !249 ; 5 uses
  %i.am = load double, ptr %0, align 8, !tbaa !249 ; 2 uses
  %i.an = fcmp olt double %i.al, %i.am
  br i1 %i.an, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = fcmp oeq double %i.al, %i.am
  br i1 %i.ao, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i: ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1465
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !1465
  %i.as = icmp ult ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i, i64 56, i1 false)
  %i.at = ptrtoint ptr %.sroa.0.025.i to i64
  %i.au = sub i64 %i.at, %i.b                     ; 4 uses
  %i.av = icmp sgt i64 %i.au, 56
  br i1 %i.av, label %bb.k, label %bb.l, !prof !503

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i
  %11 = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 112
  %.neg34.i = udiv exact i64 %i.au, 56
  %.neg34.neg.i = sub nsw i64 0, %.neg34.i
  %12 = getelementptr inbounds [56 x i8], ptr %11, i64 %.neg34.neg.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.au, i1 false)
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
  %i.az = load double, ptr %.sroa.0.0.us.i.i, align 8, !tbaa !249 ; 2 uses
  %i.ba = fcmp olt double %i.al, %i.az
  br i1 %i.ba, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i
  %i.bb = fcmp oeq double %i.al, %i.az
  br i1 %i.bb, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i
  %i.bc = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i, i64 -8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1465
  %i.be = icmp ult ptr %.sroa.1010.0.copyload.i.i, %i.bd
  br i1 %i.be, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i, !llvm.loop !1467

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
  br i1 %.not.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit, label %bb.i, !llvm.loop !1468

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit127, %.preheader.i, %bb.a
  %.not.i.i31 = icmp eq ptr %2, %3
  br i1 %.not.i.i31, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit32, label %bb.o

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
  %scevgep273 = getelementptr i8, ptr %2, i64 56
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %bb.p
  %.sroa.0.025.i169.idx = phi i64 [ 56, %bb.p ], [ %.sroa.0.025.i169.add, %bb.u ] ; 4 uses
  %.pn24.i170 = phi ptr [ %2, %bb.p ], [ %.sroa.0.025.i169.ptr, %bb.u ] ; 4 uses
  %.sroa.0.025.i169.ptr = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.025.i169.idx ; 4 uses
  %i.bo = load double, ptr %.sroa.0.025.i169.ptr, align 8, !tbaa !249 ; 5 uses
  %i.bp = load double, ptr %2, align 8, !tbaa !249 ; 2 uses
  %i.bq = fcmp olt double %i.bo, %i.bp
  br i1 %i.bq, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i195, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = fcmp oeq double %i.bo, %i.bp
  %i.bs = getelementptr inbounds nuw i8, ptr %.pn24.i170, i64 104
  %i.bt = load ptr, ptr %i.bs, align 8            ; 3 uses
  br i1 %i.br, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i194, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i172

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i194: ; preds = %bb.r
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !1465
  %i.bv = icmp ult ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i195, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i172

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i195: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i194, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i169.ptr, i64 56, i1 false)
  %i.bw = icmp samesign ugt i64 %.sroa.0.025.i169.idx, 56
  br i1 %i.bw, label %bb.s, label %bb.t, !prof !503

bb.s:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i195
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep273, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %.sroa.0.025.i169.idx, i1 false)
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
  %i.bz = load double, ptr %.sroa.0.0.us.i.i183, align 8, !tbaa !249 ; 2 uses
  %i.ca = fcmp olt double %i.bo, %i.bz
  br i1 %i.ca, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i193, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i184

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i184: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i181
  %i.cb = fcmp oeq double %i.bo, %i.bz
  br i1 %i.cb, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i192, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i185

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i192: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i184
  %i.cc = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i182, i64 -8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1465
  %i.ce = icmp ult ptr %i.bt, %i.cd
  br i1 %i.ce, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i193, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i185

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i193: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i192, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i181
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i182, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i183, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i181, !llvm.loop !1467

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
  br i1 %.not.i191, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit199, label %bb.q, !llvm.loop !1468

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit199: ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 896 ; 2 uses
  %.not9.i.i66 = icmp eq ptr %i.cf, %3
  br i1 %.not9.i.i66, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit32, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i68

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
  %i.ci = load double, ptr %.sroa.0.0.us.i.us.i.i80, align 8, !tbaa !249 ; 2 uses
  %i.cj = fcmp olt double %i.ch, %i.ci
  br i1 %i.cj, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i89, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i81

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i81: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i78
  %i.ck = fcmp oeq double %i.ch, %i.ci
  br i1 %i.ck, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i88, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i82

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i88: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.us.i.i81
  %i.cl = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.us.i.i79, i64 -8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !1465
  %i.cn = icmp ult ptr %.sroa.1010.0.copyload.i.us.i.i77, %i.cm
  br i1 %i.cn, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i89, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i82

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.us.i.i89: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.us.i.i88, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i78
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.us.i.i79, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.us.i.i80, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.us.i.i78, !llvm.loop !1467

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
  br i1 %.not.us.i.i87, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit32, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.preheader.us.i.i68, !llvm.loop !1469

.preheader.i129:                                  ; preds = %bb.o
  %.sroa.0.022.i130 = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %.not23.i131 = icmp eq ptr %.sroa.0.022.i130, %3
  br i1 %.not23.i131, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit32, label %.lr.ph.i132

.lr.ph.i132:                                      ; preds = %.preheader.i129
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.v

bb.v:                                             ; preds = %bb.aa, %.lr.ph.i132
  %.sroa.0.025.i133 = phi ptr [ %.sroa.0.022.i130, %.lr.ph.i132 ], [ %.sroa.0.0.i154, %bb.aa ] ; 6 uses
  %.pn24.i134 = phi ptr [ %2, %.lr.ph.i132 ], [ %.sroa.0.025.i133, %bb.aa ] ; 6 uses
  %i.cq = load double, ptr %.sroa.0.025.i133, align 8, !tbaa !249 ; 5 uses
  %i.cr = load double, ptr %2, align 8, !tbaa !249 ; 2 uses
  %i.cs = fcmp olt double %i.cq, %i.cr
  br i1 %i.cs, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i159, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = fcmp oeq double %i.cq, %i.cr
  br i1 %i.ct, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i158, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i136

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i158: ; preds = %bb.w
  %i.cu = getelementptr inbounds nuw i8, ptr %.pn24.i134, i64 104
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !1465
  %i.cw = load ptr, ptr %i.cp, align 8, !tbaa !1465
  %i.cx = icmp ult ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i159, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread19.i136

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i159: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.i158, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.025.i133, i64 56, i1 false)
  %i.cy = ptrtoint ptr %.sroa.0.025.i133 to i64
  %i.cz = sub i64 %i.cy, %i.bg                    ; 4 uses
  %i.da = icmp sgt i64 %i.cz, 56
  br i1 %i.da, label %bb.x, label %bb.y, !prof !503

bb.x:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclINS7_IPSH_SC_ISH_SaISH_EEEESQ_EEbT_T0_.exit.thread.i159
  %13 = getelementptr inbounds nuw i8, ptr %.pn24.i134, i64 112
  %.neg34.i161 = udiv exact i64 %i.cz, 56
  %.neg34.neg.i162 = sub nsw i64 0, %.neg34.i161
  %14 = getelementptr inbounds [56 x i8], ptr %13, i64 %.neg34.neg.i162
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %14, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %i.cz, i1 false)
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
  %i.de = load double, ptr %.sroa.0.0.us.i.i147, align 8, !tbaa !249 ; 2 uses
  %i.df = fcmp olt double %i.cq, %i.de
  br i1 %i.df, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i157, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i148

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i148: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i145
  %i.dg = fcmp oeq double %i.cq, %i.de
  br i1 %i.dg, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i156, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i149

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i156: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i.i.us.i.i148
  %i.dh = getelementptr inbounds i8, ptr %.sroa.014.0.us.i.i146, i64 -8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !1465
  %i.dj = icmp ult ptr %.sroa.1010.0.copyload.i.i144, %i.di
  br i1 %i.dj, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i157, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.i149

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.thread.us.i.i157: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4CGAL18Box_intersection_d18Predicate_traits_dINS3_12Box_traits_dINS3_17Box_with_handle_dIdLi3ENS_17__normal_iteratorIPNS2_10Triangle_3INS2_5EpeckEEESt6vectorISA_SaISA_EEEENS3_14ID_FROM_HANDLEEEEEELb1EE7CompareEEclISH_NS7_IPSH_SC_ISH_SaISH_EEEEEEbRT_T0_.exit.us.i.i156, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i145
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.0.us.i.i146, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.us.i.i147, i64 56, i1 false)
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i.i.us.i.i145, !llvm.loop !1467

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
  br i1 %.not.i155, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit32, label %bb.v, !llvm.loop !1468

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit32: ; preds = %bb.aa, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops14_Val_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_T0_.exit.loopexit7.us.i.i82, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterINS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEEEvT_SR_T0_.exit199, %.preheader.i129, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit
  %i.dk = icmp ne ptr %2, %3
  %i.dl = icmp ne ptr %0, %1
  %or.cond267 = and i1 %i.dk, %i.dl
  br i1 %or.cond267, label %.lr.ph270, label %.critedge

.lr.ph270:                                        ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3ENS1_IPNS2_10Triangle_3INS2_5EpeckEEESt6vectorIS7_SaIS7_EEEENS3_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEENS3_18Predicate_traits_dINS3_12Box_traits_dISE_EELb1EE7CompareEEvT_SO_T0_.exit32
  %.not252 = icmp slt i32 %5, 1                   ; 2 uses
  %switch.selectcmp.i.i.i.i56 = icmp eq i32 %5, 1
  %switch.select.i.i.i.i57 = select i1 %switch.selectcmp.i.i.i.i56, i64 32, i64 40
  %switch.selectcmp2.i.i.i.i58 = icmp eq i32 %5, 0
  %switch.select3.i.i.i.i59 = select i1 %switch.selectcmp2.i.i.i.i58, i64 24, i64 %switch.select.i.i.i.i57 ; 2 uses
  %i.dm = add nuw nsw i32 %5, 1                   ; 2 uses
  %exitcond.peel.not = icmp eq i32 %i.dm, 2
  %exitcond275.peel.not = icmp eq i32 %i.dm, 2
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph270, %bb.ax
  %.sroa.0230.0269 = phi ptr [ %0, %.lr.ph270 ], [ %.sroa.0230.1, %bb.ax ] ; 15 uses
  %.sroa.0219.0268 = phi ptr [ %2, %.lr.ph270 ], [ %.sroa.0219.1, %bb.ax ] ; 15 uses
  %i.dn = load double, ptr %.sroa.0219.0268, align 8, !tbaa !249 ; 2 uses
  %i.do = load double, ptr %.sroa.0230.0269, align 8, !tbaa !249 ; 2 uses
  %i.dp = fcmp olt double %i.dn, %i.do
  br i1 %i.dp, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dq = fcmp oeq double %i.dn, %i.do
  br i1 %i.dq, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread239

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit: ; preds = %bb.ac
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0219.0268, i64 48
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !1465
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0230.0269, i64 48
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !1465
  %i.dv = icmp ult ptr %i.ds, %i.du
  br i1 %i.dv, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread239

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread: ; preds = %bb.ab, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0219.0268, i64 24
  %.not248262 = icmp eq ptr %.sroa.0230.0269, %1
  br i1 %.not248262, label %.critedge2, label %.lr.ph265

.lr.ph265:                                        ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0219.0268, i64 48
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0219.0268, i64 8 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0219.0268, i64 16 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0219.0268, i64 %switch.select3.i.i.i.i59
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0219.0268, i64 32
  %.phi.trans.insert280 = getelementptr inbounds nuw i8, ptr %.sroa.0219.0268, i64 40
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph265, %.thread
  %.sroa.0207.0263 = phi ptr [ %.sroa.0230.0269, %.lr.ph265 ], [ %i.fm, %.thread ] ; 16 uses
  %i.ec = load double, ptr %i.dw, align 8, !tbaa !249
  %i.ed = load double, ptr %.sroa.0207.0263, align 8, !tbaa !249
  %i.ee = fcmp ult double %i.ec, %i.ed
  br i1 %i.ee, label %.critedge2, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0207.0263, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !1465 ; 4 uses
  %i.eh = load ptr, ptr %i.dx, align 8, !tbaa !1465 ; 4 uses
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.ae
  br i1 %.not252, label %._crit_edge261, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.preheader

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.preheader: ; preds = %.preheader
  %i.ej = load double, ptr %i.eb, align 8, !tbaa !249
  %.in.i.i.i.i.peel = getelementptr inbounds nuw i8, ptr %.sroa.0207.0263, i64 8
  %i.ek = load double, ptr %.in.i.i.i.i.peel, align 8, !tbaa !249
  %i.el = fcmp ult double %i.ej, %i.ek
  br i1 %i.el, label %.thread, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit.peel

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit.peel: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.preheader
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0207.0263, i64 32
  %i.en = load double, ptr %i.em, align 8, !tbaa !249
  %i.eo = load double, ptr %i.dy, align 8, !tbaa !249
  %i.ep = fcmp ult double %i.en, %i.eo
  br i1 %i.ep, label %.thread, label %bb.af

bb.af:                                            ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit.peel
  br i1 %exitcond275.peel.not, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next: ; preds = %bb.af
  %.pre281 = load double, ptr %.phi.trans.insert280, align 8, !tbaa !249
  %.in.i.i.i.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0207.0263, i64 16
  %.pre282 = load double, ptr %.in.i.i.i.i.phi.trans.insert, align 8, !tbaa !249
  %i.eq = fcmp ult double %.pre281, %.pre282
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0207.0263, i64 40
  br label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i

bb.ag:                                            ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit
  %i.es = add nuw nsw i32 %.021260, 1
  %exitcond275.not = icmp eq i32 %.021260, %5
  br i1 %exitcond275.not, label %._crit_edge261, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i, !llvm.loop !3672

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next, %bb.ag
  %.021260 = phi i32 [ %i.es, %bb.ag ], [ 2, %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i.peel.next ] ; 2 uses
  br i1 %i.eq, label %.thread, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit

_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE14does_intersectERKSF_SJ_i.exit: ; preds = %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_hiERKSF_SJ_i.exit.i
  %i.et = load double, ptr %i.er, align 8, !tbaa !249
  %i.eu = load double, ptr %i.dz, align 8, !tbaa !249
  %i.ev = fcmp ult double %i.et, %i.eu
  br i1 %i.ev, label %.thread, label %bb.ag

._crit_edge261:                                   ; preds = %bb.ag, %.preheader
  switch i32 %5, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i [
    i32 0, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i
    i32 1, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i
  ]

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i: ; preds = %bb.af, %._crit_edge261
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0207.0263, i64 8
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i: ; preds = %._crit_edge261
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0207.0263, i64 16
  br label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i: ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i, %._crit_edge261
  %.in.i.i = phi ptr [ %i.dz, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i ], [ %i.dy, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i ], [ %.sroa.0219.0268, %._crit_edge261 ]
  %.in.i.i9.i.i = phi ptr [ %i.ex, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.i.i ], [ %i.ew, %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit.thread16.i.i ], [ %.sroa.0207.0263, %._crit_edge261 ]
  %i.ey = load double, ptr %.in.i.i, align 8, !tbaa !249
  %i.ez = load double, ptr %.in.i.i9.i.i, align 8, !tbaa !249
  %i.fa = fcmp olt double %i.ey, %i.ez
  br i1 %i.fa, label %_ZN4CGAL18Box_intersection_d18Predicate_traits_dINS0_12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS0_14ID_FROM_HANDLEEEEEELb1EE13is_lo_less_loERKSF_SJ_i.exit.thread.i, label %bb.ah

bb.ah:                                            ; preds = %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit10.i.i
  switch i32 %5, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.i.i [
    i32 0, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit14.i.i
    i32 1, label %_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i.i
  ]

_ZN4CGAL18Box_intersection_d12Box_traits_dINS0_17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEEE9min_coordERKSE_i.exit12.thread19.i.i: ; preds = %bb.ah
end_hunk_2
