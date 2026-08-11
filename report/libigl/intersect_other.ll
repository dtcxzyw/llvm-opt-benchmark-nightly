inline.NumInlined: 13174
inline.NumDeleted: 5391
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZN3igl8copyleft4cgal15intersect_otherIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEES5_S6_S6_NS4_IN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEES6_NS4_IiLin1ELi1ELi0ELin1ELi1EEESO_EEbRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERKNSP_IT2_EERKNS1_28RemeshSelfIntersectionsParamERNS3_15PlainObjectBaseIT3_EERNS19_IT4_EERNS19_IT5_EERNS19_IT6_EERNS19_IT7_EE:bb.a

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %66, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %67, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl8copyleft4cgal26mesh_to_cgal_triangle_listIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickEEEvRKNS3_10MatrixBaseIT_EERKNS9_IT0_EERSt6vectorINS7_10Triangle_3IT1_EESaISL_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %66)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN3igl8copyleft4cgal26mesh_to_cgal_triangle_listIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickEEEvRKNS3_10MatrixBaseIT_EERKNS9_IT0_EERSt6vectorINS7_10Triangle_3IT1_EESaISL_EE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %67)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %68, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %69, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZZN3igl8copyleft4cgalL22intersect_other_helperIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEES7_S8_S8_NS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEES8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EEbRKNS5_10MatrixBaseIT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNSQ_IT3_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseIT4_EERNS1A_IT5_EERNS1A_IT6_EERNS1A_IT7_EERNS1A_IT8_EEENKUlRSt6vectorINS3_10Triangle_3IS4_EESaIS1S_EERS1Q_INS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPS1S_S1U_EENS1W_14ID_FROM_HANDLEEEESaIS23_EEE_clES1V_S26_(ptr noundef nonnull align 8 dereferenceable(24) %66, ptr noundef nonnull align 8 dereferenceable(24) %68)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_ZZN3igl8copyleft4cgalL22intersect_other_helperIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEES7_S8_S8_NS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEES8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EEbRKNS5_10MatrixBaseIT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNSQ_IT3_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseIT4_EERNS1A_IT5_EERNS1A_IT6_EERNS1A_IT7_EERNS1A_IT8_EEENKUlRSt6vectorINS3_10Triangle_3IS4_EESaIS1S_EERS1Q_INS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPS1S_S1U_EENS1W_14ID_FROM_HANDLEEEESaIS23_EEE_clES1V_S26_(ptr noundef nonnull align 8 dereferenceable(24) %67, ptr noundef nonnull align 8 dereferenceable(24) %69)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #22
  %i.e = getelementptr inbounds nuw i8, ptr %70, i64 8 ; 5 uses
  store i32 0, ptr %i.e, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %70, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.g, align 8, !tbaa !35
  %i.h = getelementptr inbounds nuw i8, ptr %70, i64 32
  store ptr %i.e, ptr %i.h, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %70, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #22
  %i.j = getelementptr inbounds nuw i8, ptr %71, i64 8 ; 5 uses
  store i32 0, ptr %i.j, align 8, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %71, i64 16 ; 2 uses
  store ptr null, ptr %i.k, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %71, i64 24 ; 2 uses
  store ptr %i.j, ptr %i.l, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %71, i64 32
  store ptr %i.j, ptr %i.m, align 8, !tbaa !36
  %i.n = getelementptr inbounds nuw i8, ptr %71, i64 40
  store i64 0, ptr %i.n, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #22
  %i.o = getelementptr inbounds nuw i8, ptr %72, i64 8
  store ptr %72, ptr %i.o, align 8, !tbaa !38
  store ptr %72, ptr %72, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %72, i64 16 ; 2 uses
  store i64 0, ptr %i.p, align 8, !tbaa !42
  %i.q = load ptr, ptr %68, align 8, !tbaa !44    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %68, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !44   ; 2 uses
  %i.t = load ptr, ptr %69, align 8, !tbaa !44    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %69, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !44   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !46
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %65)
  store ptr %66, ptr %65, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %65, i64 8
  store ptr %67, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %65, i64 16
  store ptr %72, ptr %.sroa.3.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %65, i64 24
  store ptr %4, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5236.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %65, i64 32
  store ptr %70, ptr %.sroa.5236.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx237.i = getelementptr inbounds nuw i8, ptr %65, i64 40
  store ptr %71, ptr %.sroa.6.0..sroa_idx237.i, align 8
  invoke fastcc void @_ZN4CGAL18Box_intersection_d12segment_treeIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ZN3igl8copyleft4cgalL22intersect_other_helperIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEESP_SQ_SQ_NSO_INS_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEESQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EEbRKNSN_10MatrixBaseIT0_EERKNS18_IT1_EERKNS18_IT2_EERKNS18_IT3_EERKNSL_28RemeshSelfIntersectionsParamERNSN_15PlainObjectBaseIT4_EERNS1S_IT5_EERNS1S_IT6_EERNS1S_IT7_EERNS1S_IT8_EEEUlRKSE_S29_E_dNS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEEEvT_S2F_S19_S19_S1H_S1H_S1D_S1L_lib(ptr %i.q, ptr %i.s, ptr %i.t, ptr %i.v, double noundef f0xFFEFFFFFFFFFFFFF, double noundef f0x7FEFFFFFFFFFFFFF, ptr noundef nonnull byval(%class.anon.125) align 8 %65, i64 noundef range(i64 -2147483648, 2147483648) %i.y, i32 noundef 2, i1 noundef zeroext true)
          to label %.noexc.i unwind label %bb.i

.noexc.i:                                         ; preds = %bb.f
  invoke fastcc void @_ZN4CGAL18Box_intersection_d12segment_treeIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpickEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ZN3igl8copyleft4cgalL22intersect_other_helperIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEESP_SQ_SQ_NSO_INS_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEESQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EEbRKNSN_10MatrixBaseIT0_EERKNS18_IT1_EERKNS18_IT2_EERKNS18_IT3_EERKNSL_28RemeshSelfIntersectionsParamERNSN_15PlainObjectBaseIT4_EERNS1S_IT5_EERNS1S_IT6_EERNS1S_IT7_EERNS1S_IT8_EEEUlRKSE_S29_E_dNS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEEEvT_S2F_S19_S19_S1H_S1H_S1D_S1L_lib(ptr %i.t, ptr %i.v, ptr %i.q, ptr %i.s, double noundef f0xFFEFFFFFFFFFFFFF, double noundef f0x7FEFFFFFFFFFFFFF, ptr noundef nonnull byval(%class.anon.125) align 8 %65, i64 noundef range(i64 -2147483648, 2147483648) %i.y, i32 noundef 2, i1 noundef zeroext false)
          to label %_ZN4CGAL18box_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESJ_ZN3igl8copyleft4cgalL22intersect_other_helperIS7_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSP_IiLin1ELin1ELi0ELin1ELin1EEESQ_SR_SR_NSP_INS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEESR_NSP_IiLin1ELi1ELi0ELin1ELi1EEES18_EEbRKNSO_10MatrixBaseIT0_EERKNS19_IT1_EERKNS19_IT2_EERKNS19_IT3_EERKNSM_28RemeshSelfIntersectionsParamERNSO_15PlainObjectBaseIT4_EERNS1T_IT5_EERNS1T_IT6_EERNS1T_IT7_EERNS1T_IT8_EEEUlRKSF_S2A_E_EEvS1A_S1A_S1E_S1E_S1I_l.exit.i unwind label %bb.i

_ZN4CGAL18box_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESJ_ZN3igl8copyleft4cgalL22intersect_other_helperIS7_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSP_IiLin1ELin1ELi0ELin1ELin1EEESQ_SR_SR_NSP_INS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEESR_NSP_IiLin1ELi1ELi0ELin1ELi1EEES18_EEbRKNSO_10MatrixBaseIT0_EERKNS19_IT1_EERKNS19_IT2_EERKNS19_IT3_EERKNSM_28RemeshSelfIntersectionsParamERNSO_15PlainObjectBaseIT4_EERNS1T_IT5_EERNS1T_IT6_EERNS1T_IT7_EERNS1T_IT8_EEEUlRKSF_S2A_E_EEvS1A_S1A_S1E_S1E_S1I_l.exit.i: ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %65)
  br label %bb.n

bb.g:                                             ; preds = %bb.c, %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.i:                                             ; preds = %.noexc.i, %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi                        ; 3 uses
  %i.ac = extractvalue { ptr, i32 } %i.ab, 1
  %i.ad = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIi) #22
  %i.ae = icmp eq i32 %i.ac, %i.ad
  br i1 %i.ae, label %bb.j, label %bb.cy

bb.j:                                             ; preds = %bb.i
  %i.af = extractvalue { ptr, i32 } %i.ab, 0
  %i.ag = call ptr @__cxa_begin_catch(ptr %i.af) #22
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !47 ; 2 uses
  %.not.i = icmp eq i32 %i.ah, 10
  br i1 %.not.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = call ptr @__cxa_allocate_exception(i64 4) #22 ; 2 uses
  store i32 %i.ah, ptr %i.ai, align 16, !tbaa !47
  invoke void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTIi, ptr null) #43
          to label %bb.df unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_end_catch() #22
  br label %bb.cy

bb.m:                                             ; preds = %bb.j
  call void @__cxa_end_catch() #22
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN4CGAL18box_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESJ_ZN3igl8copyleft4cgalL22intersect_other_helperIS7_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSP_IiLin1ELin1ELi0ELin1ELin1EEESQ_SR_SR_NSP_INS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEESR_NSP_IiLin1ELi1ELi0ELin1ELi1EEES18_EEbRKNSO_10MatrixBaseIT0_EERKNS19_IT1_EERKNS19_IT2_EERKNS19_IT3_EERKNSM_28RemeshSelfIntersectionsParamERNSO_15PlainObjectBaseIT4_EERNS1T_IT5_EERNS1T_IT6_EERNS1T_IT7_EERNS1T_IT8_EEEUlRKSF_S2A_E_EEvS1A_S1A_S1E_S1E_S1I_l.exit.i
  %i.ak = load i64, ptr %i.p, align 8, !tbaa !48  ; 3 uses
  %i.al = lshr i64 %i.ak, 1                       ; 2 uses
  %i.am = icmp ne i64 %i.al, 0
  %i.an = icmp slt i64 %i.ak, 0
  %or.cond.i = and i1 %i.an, %i.am
  br i1 %or.cond.i, label %bb.o, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.ao = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ao, align 8, !tbaa !51
  invoke void @__cxa_throw(ptr nonnull %i.ao, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #43
          to label %.noexc91.i unwind label %bb.p

.noexc91.i:                                       ; preds = %bb.o
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i: ; preds = %bb.n
  %i.ap = and i64 %i.ak, 9223372036854775806
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.ap, i64 noundef %i.al, i64 noundef 2)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader.i unwind label %bb.p

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader.i: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i
  %.sroa.0232.0262.i = load ptr, ptr %72, align 8, !tbaa !41 ; 3 uses
  %.not242263.i = icmp eq ptr %.sroa.0232.0262.i, %72
  br i1 %.not242263.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader.i
  %i.aq = load ptr, ptr %5, align 8, !tbaa !53
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !56
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.i: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader.i
  %i.at = load i8, ptr %4, align 4, !tbaa !27, !range !13, !noundef !14
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.cr, label %bb.q

bb.p:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i, %bb.o
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i ] ; 2 uses
  %.sroa.0232.0265.i = phi ptr [ %.sroa.0232.0262.i, %.lr.ph.i ], [ %.sroa.0232.0.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0232.0265.i, i64 16
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !47
  %i.ay = getelementptr [4 x i8], ptr %i.aq, i64 %indvars.iv.i ; 2 uses
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !47
  %i.az = load ptr, ptr %.sroa.0232.0265.i, align 8, !tbaa !41 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !47
  %i.bc = getelementptr [4 x i8], ptr %i.ay, i64 %i.as
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !47
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %.sroa.0232.0.i = load ptr, ptr %i.az, align 8, !tbaa !41 ; 2 uses
  %.not242.i = icmp eq ptr %.sroa.0232.0.i, %72
  br i1 %.not242.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, !llvm.loop !57

bb.q:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #22
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !59 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !59
  %i.bh = add nsw i64 %i.bg, %i.be                ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %73, i8 0, i64 24, i1 false)
  %i.bi = icmp sgt i64 %i.bh, 3074457345618258602
  br i1 %i.bi, label %.invoke.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i: ; preds = %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %73, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 2 uses
  %.not.i183.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i183.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i
  %i.bl = icmp sgt i64 %i.bh, 0
  br i1 %i.bl, label %bb.s, label %.sink.split.i.i

bb.s:                                             ; preds = %bb.r
  %i.bm = icmp samesign ugt i64 %i.bh, 768614336404564650
  br i1 %i.bm, label %.invoke.i, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i: ; preds = %bb.s
  %i.bn = mul nuw i64 %i.bh, 24
  %i.bo = call noalias ptr @malloc(i64 noundef %i.bn) #44 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %.invoke.i, label %.sink.split.i.i

.invoke.i:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i, %bb.s, %bb.q
  %i.bq = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bq, align 8, !tbaa !51
  invoke void @__cxa_throw(ptr nonnull %i.bq, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #43
          to label %.cont.i unwind label %bb.t

.cont.i:                                          ; preds = %.invoke.i
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i, %bb.r
  %.sink.i.i = phi ptr [ %i.bo, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i ], [ null, %bb.r ] ; 2 uses
  store ptr %.sink.i.i, ptr %73, align 8, !tbaa !62
  br label %bb.u

bb.t:                                             ; preds = %.invoke.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.u:                                             ; preds = %.sink.split.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i
  %i.bs = phi ptr [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i ], [ %.sink.i.i, %.sink.split.i.i ] ; 2 uses
  store i64 %i.bh, ptr %i.bj, align 8, !tbaa !59
  store i64 3, ptr %i.bk, align 8, !tbaa !63
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !63, !noalias !64 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #22, !noalias !64
  store ptr %i.bs, ptr %64, align 8, !tbaa !67, !alias.scope !70, !noalias !64
  %i.bv = getelementptr inbounds nuw i8, ptr %64, i64 8
  store i64 %i.be, ptr %i.bv, align 8, !tbaa !73, !alias.scope !70, !noalias !64
  %i.bw = getelementptr inbounds nuw i8, ptr %64, i64 16
  store i64 %i.bu, ptr %i.bw, align 8, !tbaa !73, !alias.scope !70, !noalias !64
  %i.bx = getelementptr inbounds nuw i8, ptr %64, i64 24
  store ptr %73, ptr %i.bx, align 8, !tbaa !74, !alias.scope !70, !noalias !64
  %i.by = getelementptr inbounds nuw i8, ptr %64, i64 32
  %i.bz = getelementptr inbounds nuw i8, ptr %64, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i8 0, i64 16, i1 false), !noalias !64
  store i64 %i.bh, ptr %i.bz, align 8, !tbaa !76, !alias.scope !70, !noalias !64
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #22, !noalias !64
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #22, !noalias !64
  %i.ca = load ptr, ptr %0, align 8, !tbaa !62, !noalias !64
  store ptr %i.ca, ptr %60, align 8, !tbaa !79, !noalias !64
  %i.cb = getelementptr inbounds nuw i8, ptr %60, i64 8
  store i64 %i.be, ptr %i.cb, align 8, !tbaa !81, !noalias !64
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #22, !noalias !64
  store ptr %i.bs, ptr %61, align 8, !tbaa !82, !noalias !64
  %i.cc = getelementptr inbounds nuw i8, ptr %61, i64 16
  store i64 %i.bh, ptr %i.cc, align 8, !tbaa !73, !noalias !64
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #22, !noalias !64
  store ptr %61, ptr %62, align 8, !tbaa !85, !noalias !64
  %i.cd = getelementptr inbounds nuw i8, ptr %62, i64 8
  store ptr %60, ptr %i.cd, align 8, !tbaa !87, !noalias !64
  %i.ce = getelementptr inbounds nuw i8, ptr %62, i64 16
  store ptr %63, ptr %i.ce, align 8, !tbaa !89, !noalias !64
  %i.cf = getelementptr inbounds nuw i8, ptr %62, i64 24
  store ptr %64, ptr %i.cf, align 8, !tbaa !91, !noalias !64
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %62)
          to label %bb.v unwind label %bb.ak

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #22, !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #22, !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #22, !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #22, !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #22, !noalias !64
  %i.cg = load i64, ptr %i.bk, align 8, !tbaa !63
  %i.ch = icmp eq i64 %i.bu, %i.cg
  br i1 %i.ch, label %bb.w, label %._crit_edge11.i.i

._crit_edge11.i.i:                                ; preds = %bb.v
  %.pre13.i.i = load i64, ptr %i.bf, align 8, !tbaa !59
  %.phi.trans.insert14.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre15.i.i = load i64, ptr %.phi.trans.insert14.i.i, align 8, !tbaa !63
  br label %._crit_edge.i.i

bb.w:                                             ; preds = %bb.v
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !63 ; 2 uses
  %.not.i.i = icmp eq i64 %i.cj, 0
  %i.ck = load i64, ptr %i.bf, align 8, !tbaa !59 ; 3 uses
  br i1 %.not.i.i, label %bb.x, label %._crit_edge.i.i

bb.x:                                             ; preds = %bb.w
  %.not8.i.i = icmp eq i64 %i.ck, %i.be           ; 2 uses
  %spec.select.i = select i1 %.not8.i.i, i64 0, i64 %i.be
  %spec.select246.i = select i1 %.not8.i.i, i64 %i.bu, i64 0
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.x, %bb.w, %._crit_edge11.i.i
  %.sroa.5221.0.i = phi i64 [ %spec.select.i, %bb.x ], [ 0, %._crit_edge11.i.i ], [ %i.be, %bb.w ] ; 2 uses
  %i.cl = phi i64 [ 0, %bb.x ], [ %.pre15.i.i, %._crit_edge11.i.i ], [ %i.cj, %bb.w ]
  %i.cm = phi i64 [ %i.ck, %bb.x ], [ %.pre13.i.i, %._crit_edge11.i.i ], [ %i.ck, %bb.w ] ; 2 uses
  %i.cn = phi i64 [ %spec.select246.i, %bb.x ], [ %i.bu, %._crit_edge11.i.i ], [ 0, %bb.w ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.co = load ptr, ptr %73, align 8, !tbaa !62, !noalias !93
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.co, i64 %.sroa.5221.0.i
  %i.cq = load i64, ptr %i.bj, align 8, !tbaa !59, !noalias !93 ; 3 uses
  %i.cr = mul nsw i64 %i.cq, %i.cn
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.cr ; 2 uses
  store ptr %i.cs, ptr %59, align 8, !tbaa !67, !alias.scope !93
  %i.ct = getelementptr inbounds nuw i8, ptr %59, i64 8
  store i64 %i.cm, ptr %i.ct, align 8, !tbaa !73, !alias.scope !93
  %i.cu = getelementptr inbounds nuw i8, ptr %59, i64 16
  store i64 %i.cl, ptr %i.cu, align 8, !tbaa !73, !alias.scope !93
  %i.cv = getelementptr inbounds nuw i8, ptr %59, i64 24
  store ptr %73, ptr %i.cv, align 8, !tbaa !74, !alias.scope !93
  %i.cw = getelementptr inbounds nuw i8, ptr %59, i64 32
  store i64 %.sroa.5221.0.i, ptr %i.cw, align 8, !tbaa !73, !alias.scope !93
  %i.cx = getelementptr inbounds nuw i8, ptr %59, i64 40
  store i64 %i.cn, ptr %i.cx, align 8, !tbaa !73, !alias.scope !93
  %i.cy = getelementptr inbounds nuw i8, ptr %59, i64 48
  store i64 %i.cq, ptr %i.cy, align 8, !tbaa !76, !alias.scope !93
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #22
  %i.cz = load ptr, ptr %2, align 8, !tbaa !62
  store ptr %i.cz, ptr %55, align 8, !tbaa !79
  %i.da = getelementptr inbounds nuw i8, ptr %55, i64 8
  store i64 %i.cm, ptr %i.da, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #22
  store ptr %i.cs, ptr %56, align 8, !tbaa !82
  %i.db = getelementptr inbounds nuw i8, ptr %56, i64 16
  store i64 %i.cq, ptr %i.db, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #22
  store ptr %56, ptr %57, align 8, !tbaa !85
  %i.dc = getelementptr inbounds nuw i8, ptr %57, i64 8
  store ptr %55, ptr %i.dc, align 8, !tbaa !87
  %i.dd = getelementptr inbounds nuw i8, ptr %57, i64 16
  store ptr %58, ptr %i.dd, align 8, !tbaa !89
  %i.de = getelementptr inbounds nuw i8, ptr %57, i64 24
  store ptr %59, ptr %i.de, align 8, !tbaa !91
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %57)
          to label %bb.y unwind label %bb.al

bb.y:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #22
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !56 ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !56
  %i.dj = add nsw i64 %i.di, %i.dg                ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %74, i8 0, i64 24, i1 false)
  %i.dk = icmp sgt i64 %i.dj, 3074457345618258602
  br i1 %i.dk, label %.invoke361.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i: ; preds = %bb.y
  %i.dl = getelementptr inbounds nuw i8, ptr %74, i64 8 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %74, i64 16 ; 2 uses
  %.not.i186.i = icmp eq i64 %i.dj, 0
  br i1 %.not.i186.i, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i
  %i.dn = icmp sgt i64 %i.dj, 0
  br i1 %i.dn, label %bb.aa, label %.sink.split.i187.i

bb.aa:                                            ; preds = %bb.z
  %i.do = icmp samesign ugt i64 %i.dj, 1537228672809129301
  br i1 %i.do, label %.invoke361.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i: ; preds = %bb.aa
  %i.dp = mul nuw i64 %i.dj, 12
  %i.dq = call noalias ptr @malloc(i64 noundef %i.dp) #44 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %.invoke361.i, label %.sink.split.i187.i

.invoke361.i:                                     ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.aa, %bb.y
  %i.ds = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ds, align 8, !tbaa !51
  invoke void @__cxa_throw(ptr nonnull %i.ds, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #43
          to label %.cont362.i unwind label %bb.ab

.cont362.i:                                       ; preds = %.invoke361.i
  unreachable

.sink.split.i187.i:                               ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.z
  %.sink.i188.i = phi ptr [ %i.dq, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i ], [ null, %bb.z ] ; 2 uses
  store ptr %.sink.i188.i, ptr %74, align 8, !tbaa !53
  br label %bb.ac

bb.ab:                                            ; preds = %.invoke361.i
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %.body98.i

bb.ac:                                            ; preds = %.sink.split.i187.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i
  %i.du = phi ptr [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i ], [ %.sink.i188.i, %.sink.split.i187.i ] ; 2 uses
  store i64 %i.dj, ptr %i.dl, align 8, !tbaa !56
  store i64 3, ptr %i.dm, align 8, !tbaa !96
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !96, !noalias !97 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #22, !noalias !97
  store ptr %i.du, ptr %54, align 8, !tbaa !100, !alias.scope !102, !noalias !97
  %i.dx = getelementptr inbounds nuw i8, ptr %54, i64 8
  store i64 %i.dg, ptr %i.dx, align 8, !tbaa !73, !alias.scope !102, !noalias !97
  %i.dy = getelementptr inbounds nuw i8, ptr %54, i64 16
  store i64 %i.dw, ptr %i.dy, align 8, !tbaa !73, !alias.scope !102, !noalias !97
  %i.dz = getelementptr inbounds nuw i8, ptr %54, i64 24
  store ptr %74, ptr %i.dz, align 8, !tbaa !105, !alias.scope !102, !noalias !97
  %i.ea = getelementptr inbounds nuw i8, ptr %54, i64 32
  %i.eb = getelementptr inbounds nuw i8, ptr %54, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ea, i8 0, i64 16, i1 false), !noalias !97
  store i64 %i.dj, ptr %i.eb, align 8, !tbaa !107, !alias.scope !102, !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #22, !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #22, !noalias !97
  %i.ec = load ptr, ptr %1, align 8, !tbaa !53, !noalias !97
  store ptr %i.ec, ptr %50, align 8, !tbaa !110, !noalias !97
  %i.ed = getelementptr inbounds nuw i8, ptr %50, i64 8
  store i64 %i.dg, ptr %i.ed, align 8, !tbaa !112, !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #22, !noalias !97
  store ptr %i.du, ptr %51, align 8, !tbaa !113, !noalias !97
  %i.ee = getelementptr inbounds nuw i8, ptr %51, i64 16
  store i64 %i.dj, ptr %i.ee, align 8, !tbaa !73, !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #22, !noalias !97
  store ptr %51, ptr %52, align 8, !tbaa !115, !noalias !97
  %i.ef = getelementptr inbounds nuw i8, ptr %52, i64 8
  store ptr %50, ptr %i.ef, align 8, !tbaa !117, !noalias !97
  %i.eg = getelementptr inbounds nuw i8, ptr %52, i64 16
  store ptr %53, ptr %i.eg, align 8, !tbaa !119, !noalias !97
  %i.eh = getelementptr inbounds nuw i8, ptr %52, i64 24
  store ptr %54, ptr %i.eh, align 8, !tbaa !121, !noalias !97
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %52)
          to label %bb.ad unwind label %bb.am

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #22, !noalias !97
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #22, !noalias !97
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #22, !noalias !97
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #22, !noalias !97
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #22, !noalias !97
  %i.ei = load i64, ptr %i.bd, align 8, !tbaa !59
  %i.ej = load i64, ptr %i.dh, align 8, !tbaa !56, !noalias !123 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !96, !noalias !123 ; 3 uses
  %i.em = trunc i64 %i.ei to i32
  %i.en = load i64, ptr %i.dm, align 8, !tbaa !96
  %i.eo = icmp eq i64 %i.dw, %i.en
  br i1 %i.eo, label %bb.ae, label %._crit_edge11.i101.i

bb.ae:                                            ; preds = %bb.ad
  %.not.i106.i = icmp eq i64 %i.el, 0
  %.not8.i112.i = icmp eq i64 %i.ej, %i.dg
  %or.cond241.i = select i1 %.not.i106.i, i1 %.not8.i112.i, i1 false
  br i1 %or.cond241.i, label %._crit_edge11.i101.i, label %._crit_edge.i107.i

._crit_edge.i107.i:                               ; preds = %bb.ae
  br label %._crit_edge11.i101.i

._crit_edge11.i101.i:                             ; preds = %._crit_edge.i107.i, %bb.ae, %bb.ad
  %.sroa.5213.0.i = phi i64 [ 0, %bb.ae ], [ %i.dg, %._crit_edge.i107.i ], [ 0, %bb.ad ] ; 2 uses
  %i.ep = phi i64 [ 0, %bb.ae ], [ %i.el, %._crit_edge.i107.i ], [ %i.el, %bb.ad ]
  %i.eq = phi i64 [ %i.dw, %bb.ae ], [ 0, %._crit_edge.i107.i ], [ %i.dw, %bb.ad ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.er = load ptr, ptr %74, align 8, !tbaa !53, !noalias !126
  %i.es = getelementptr inbounds [4 x i8], ptr %i.er, i64 %.sroa.5213.0.i
  %i.et = load i64, ptr %i.dl, align 8, !tbaa !56, !noalias !126 ; 3 uses
  %i.eu = mul nsw i64 %i.et, %i.eq
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.eu ; 2 uses
  store ptr %i.ev, ptr %49, align 8, !tbaa !100, !alias.scope !126
  %i.ew = getelementptr inbounds nuw i8, ptr %49, i64 8
  store i64 %i.ej, ptr %i.ew, align 8, !tbaa !73, !alias.scope !126
  %i.ex = getelementptr inbounds nuw i8, ptr %49, i64 16
  store i64 %i.ep, ptr %i.ex, align 8, !tbaa !73, !alias.scope !126
  %i.ey = getelementptr inbounds nuw i8, ptr %49, i64 24
  store ptr %74, ptr %i.ey, align 8, !tbaa !105, !alias.scope !126
  %i.ez = getelementptr inbounds nuw i8, ptr %49, i64 32
  store i64 %.sroa.5213.0.i, ptr %i.ez, align 8, !tbaa !73, !alias.scope !126
  %i.fa = getelementptr inbounds nuw i8, ptr %49, i64 40
  store i64 %i.eq, ptr %i.fa, align 8, !tbaa !73, !alias.scope !126
  %i.fb = getelementptr inbounds nuw i8, ptr %49, i64 48
  store i64 %i.et, ptr %i.fb, align 8, !tbaa !107, !alias.scope !126
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #22
  %i.fc = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.fd = load ptr, ptr %3, align 8, !tbaa !53
  store ptr %i.fd, ptr %i.fc, align 8, !tbaa !110
  %i.fe = getelementptr inbounds nuw i8, ptr %45, i64 16
  store i64 %i.ej, ptr %i.fe, align 8, !tbaa !112
  %i.ff = getelementptr inbounds nuw i8, ptr %45, i64 24
  store i32 %i.em, ptr %i.ff, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #22
  store ptr %i.ev, ptr %46, align 8, !tbaa !113
  %i.fg = getelementptr inbounds nuw i8, ptr %46, i64 16
  store i64 %i.et, ptr %i.fg, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #22
  store ptr %46, ptr %47, align 8, !tbaa !115
  %i.fh = getelementptr inbounds nuw i8, ptr %47, i64 8
  store ptr %45, ptr %i.fh, align 8, !tbaa !131
  %i.fi = getelementptr inbounds nuw i8, ptr %47, i64 16
  store ptr %48, ptr %i.fi, align 8, !tbaa !119
  %i.fj = getelementptr inbounds nuw i8, ptr %47, i64 24
  store ptr %49, ptr %i.fj, align 8, !tbaa !121
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIiiEEKNS_12ArrayWrapperIKS6_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEEEEEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSS_(ptr noundef nonnull align 8 dereferenceable(32) %47)
          to label %bb.af unwind label %bb.an

bb.af:                                            ; preds = %._crit_edge11.i101.i
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %75, i8 0, i64 24, i1 false)
  %i.fk = getelementptr inbounds nuw i8, ptr %66, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !133 ; 2 uses
  %i.fm = load ptr, ptr %66, align 8, !tbaa !136  ; 2 uses
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = sub i64 %i.fn, %i.fo                    ; 2 uses
  %i.fq = sdiv exact i64 %i.fp, 72
  %i.fr = getelementptr inbounds nuw i8, ptr %67, i64 8 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !133
  %i.ft = load ptr, ptr %67, align 8, !tbaa !136
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sub i64 %i.fu, %i.fv                    ; 2 uses
  %i.fx = sdiv exact i64 %i.fw, 72
  %i.fy = add nsw i64 %i.fx, %i.fq                ; 3 uses
  %i.fz = icmp ugt i64 %i.fy, 128102389400760775
  br i1 %i.fz, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #43
          to label %.noexc114.i unwind label %bb.ao

.noexc114.i:                                      ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.ga = getelementptr inbounds nuw i8, ptr %75, i64 16 ; 2 uses
  %.not354.i = icmp eq i64 %i.fy, 0
  br i1 %.not354.i, label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EE7reserveEm.exit.i, label %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EE11_M_allocateEm.exit.i.i: ; preds = %bb.ah
  %i.gb = add i64 %i.fw, %i.fp
  %i.gc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gb) #45
          to label %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EE13_M_deallocateEPS3_m.exit.i.i unwind label %bb.ao ; 4 uses

_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EE13_M_deallocateEPS3_m.exit.i.i: ; preds = %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EE11_M_allocateEm.exit.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %75, i64 8
  store ptr %i.gc, ptr %75, align 8, !tbaa !136
  store ptr %i.gc, ptr %i.gd, align 8, !tbaa !133
  %i.ge = getelementptr inbounds nuw [72 x i8], ptr %i.gc, i64 %i.fy
  store ptr %i.ge, ptr %i.ga, align 8, !tbaa !137
  br label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EE7reserveEm.exit.i

_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EE7reserveEm.exit.i: ; preds = %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EE13_M_deallocateEPS3_m.exit.i.i, %bb.ah
  %i.gf = phi ptr [ %i.gc, %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EE13_M_deallocateEPS3_m.exit.i.i ], [ null, %bb.ah ]
  invoke void @_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %75, ptr %i.gf, ptr %i.fm, ptr %i.fl)
          to label %bb.ai unwind label %bb.ap

bb.ai:                                            ; preds = %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EE7reserveEm.exit.i
  %i.gg = getelementptr inbounds nuw i8, ptr %75, i64 8
  %i.gh = load ptr, ptr %75, align 8, !tbaa !138  ; 2 uses
  %i.gi = load ptr, ptr %i.gg, align 8, !tbaa !138
  %i.gj = load ptr, ptr %67, align 8, !tbaa !138
  %i.gk = load ptr, ptr %i.fr, align 8, !tbaa !138
  %i.gl = ptrtoint ptr %i.gi to i64
  %i.gm = ptrtoint ptr %i.gh to i64
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = getelementptr inbounds i8, ptr %i.gh, i64 %i.gn
end_hunk_0
begin_hunk_1_@_ZN3igl8copyleft4cgal15intersect_otherIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEES5_S6_S6_NS4_IN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEES6_NS4_IiLin1ELi1ELi0ELin1ELi1EEESO_EEbRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNSP_IT1_EERKNSP_IT2_EERKNS1_28RemeshSelfIntersectionsParamERNS3_15PlainObjectBaseIT3_EERNS19_IT4_EERNS19_IT5_EERNS19_IT6_EERNS19_IT7_EE:bb.a

bb.dg:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %31, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %32, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl8copyleft4cgal26mesh_to_cgal_triangle_listIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpeckEEEvRKNS3_10MatrixBaseIT_EERKNS9_IT0_EERSt6vectorINS7_10Triangle_3IT1_EESaISL_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %31)
          to label %bb.dh unwind label %bb.dl

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZN3igl8copyleft4cgal26mesh_to_cgal_triangle_listIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpeckEEEvRKNS3_10MatrixBaseIT_EERKNS9_IT0_EERSt6vectorINS7_10Triangle_3IT1_EESaISL_EE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %32)
          to label %bb.di unwind label %bb.dl

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %33, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %34, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZZN3igl8copyleft4cgalL22intersect_other_helperIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEES7_S8_S8_NS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEES8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EEbRKNS5_10MatrixBaseIT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNSQ_IT3_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseIT4_EERNS1A_IT5_EERNS1A_IT6_EERNS1A_IT7_EERNS1A_IT8_EEENKUlRSt6vectorINS3_10Triangle_3IS4_EESaIS1S_EERS1Q_INS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPS1S_S1U_EENS1W_14ID_FROM_HANDLEEEESaIS23_EEE_clES1V_S26_(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull align 8 dereferenceable(24) %33)
          to label %bb.dj unwind label %bb.dm

bb.dj:                                            ; preds = %bb.di
  invoke fastcc void @_ZZN3igl8copyleft4cgalL22intersect_other_helperIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEES7_S8_S8_NS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEES8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EEbRKNS5_10MatrixBaseIT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNSQ_IT3_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseIT4_EERNS1A_IT5_EERNS1A_IT6_EERNS1A_IT7_EERNS1A_IT8_EEENKUlRSt6vectorINS3_10Triangle_3IS4_EESaIS1S_EERS1Q_INS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPS1S_S1U_EENS1W_14ID_FROM_HANDLEEEESaIS23_EEE_clES1V_S26_(ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(24) %34)
          to label %bb.dk unwind label %bb.dm

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  %i.re = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 5 uses
  store i32 0, ptr %i.re, align 8, !tbaa !29
  %i.rf = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  store ptr null, ptr %i.rf, align 8, !tbaa !34
  %i.rg = getelementptr inbounds nuw i8, ptr %35, i64 24 ; 2 uses
  store ptr %i.re, ptr %i.rg, align 8, !tbaa !35
  %i.rh = getelementptr inbounds nuw i8, ptr %35, i64 32
  store ptr %i.re, ptr %i.rh, align 8, !tbaa !36
  %i.ri = getelementptr inbounds nuw i8, ptr %35, i64 40
  store i64 0, ptr %i.ri, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #22
  %i.rj = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 5 uses
  store i32 0, ptr %i.rj, align 8, !tbaa !29
  %i.rk = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  store ptr null, ptr %i.rk, align 8, !tbaa !34
  %i.rl = getelementptr inbounds nuw i8, ptr %36, i64 24 ; 2 uses
  store ptr %i.rj, ptr %i.rl, align 8, !tbaa !35
  %i.rm = getelementptr inbounds nuw i8, ptr %36, i64 32
  store ptr %i.rj, ptr %i.rm, align 8, !tbaa !36
  %i.rn = getelementptr inbounds nuw i8, ptr %36, i64 40
  store i64 0, ptr %i.rn, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #22
  %i.ro = getelementptr inbounds nuw i8, ptr %37, i64 8
  store ptr %37, ptr %i.ro, align 8, !tbaa !38
  store ptr %37, ptr %37, align 8, !tbaa !41
  %i.rp = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 2 uses
  store i64 0, ptr %i.rp, align 8, !tbaa !42
  %i.rq = load ptr, ptr %33, align 8, !tbaa !173  ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !173 ; 2 uses
  %i.rt = load ptr, ptr %34, align 8, !tbaa !173  ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !173 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !46
  %i.ry = sext i32 %i.rx to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30)
  store ptr %31, ptr %30, align 8
  %.sroa.2.0..sroa_idx.i24 = getelementptr inbounds nuw i8, ptr %30, i64 8
  store ptr %32, ptr %.sroa.2.0..sroa_idx.i24, align 8
  %.sroa.3.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %30, i64 16
  store ptr %37, ptr %.sroa.3.0..sroa_idx.i25, align 8
  %.sroa.4.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %30, i64 24
  store ptr %4, ptr %.sroa.4.0..sroa_idx.i26, align 8
  %.sroa.5256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %30, i64 32
  store ptr %35, ptr %.sroa.5256.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx257.i = getelementptr inbounds nuw i8, ptr %30, i64 40
  store ptr %36, ptr %.sroa.6.0..sroa_idx257.i, align 8
  invoke fastcc void @_ZN4CGAL18Box_intersection_d12segment_treeIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ZN3igl8copyleft4cgalL22intersect_other_helperIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEESP_SQ_SQ_NSO_INS_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEESQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EEbRKNSN_10MatrixBaseIT0_EERKNS18_IT1_EERKNS18_IT2_EERKNS18_IT3_EERKNSL_28RemeshSelfIntersectionsParamERNSN_15PlainObjectBaseIT4_EERNS1S_IT5_EERNS1S_IT6_EERNS1S_IT7_EERNS1S_IT8_EEEUlRKSE_S29_E_dNS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEEEvT_S2F_S19_S19_S1H_S1H_S1D_S1L_lib(ptr %i.rq, ptr %i.rs, ptr %i.rt, ptr %i.rv, double noundef f0xFFEFFFFFFFFFFFFF, double noundef f0x7FEFFFFFFFFFFFFF, ptr noundef nonnull byval(%class.anon.457) align 8 %30, i64 noundef range(i64 -2147483648, 2147483648) %i.ry, i32 noundef 2, i1 noundef zeroext true)
          to label %.noexc.i165 unwind label %bb.dn

.noexc.i165:                                      ; preds = %bb.dk
  invoke fastcc void @_ZN4CGAL18Box_intersection_d12segment_treeIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ZN3igl8copyleft4cgalL22intersect_other_helperIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEESP_SQ_SQ_NSO_INS_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEESQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EEbRKNSN_10MatrixBaseIT0_EERKNS18_IT1_EERKNS18_IT2_EERKNS18_IT3_EERKNSL_28RemeshSelfIntersectionsParamERNSN_15PlainObjectBaseIT4_EERNS1S_IT5_EERNS1S_IT6_EERNS1S_IT7_EERNS1S_IT8_EEEUlRKSE_S29_E_dNS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEEEvT_S2F_S19_S19_S1H_S1H_S1D_S1L_lib(ptr %i.rt, ptr %i.rv, ptr %i.rq, ptr %i.rs, double noundef f0xFFEFFFFFFFFFFFFF, double noundef f0x7FEFFFFFFFFFFFFF, ptr noundef nonnull byval(%class.anon.457) align 8 %30, i64 noundef range(i64 -2147483648, 2147483648) %i.ry, i32 noundef 2, i1 noundef zeroext false)
          to label %_ZN4CGAL18box_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESJ_ZN3igl8copyleft4cgalL22intersect_other_helperIS7_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSP_IiLin1ELin1ELi0ELin1ELin1EEESQ_SR_SR_NSP_INS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEESR_NSP_IiLin1ELi1ELi0ELin1ELi1EEES18_EEbRKNSO_10MatrixBaseIT0_EERKNS19_IT1_EERKNS19_IT2_EERKNS19_IT3_EERKNSM_28RemeshSelfIntersectionsParamERNSO_15PlainObjectBaseIT4_EERNS1T_IT5_EERNS1T_IT6_EERNS1T_IT7_EERNS1T_IT8_EEEUlRKSF_S2A_E_EEvS1A_S1A_S1E_S1E_S1I_l.exit.i unwind label %bb.dn

_ZN4CGAL18box_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESJ_ZN3igl8copyleft4cgalL22intersect_other_helperIS7_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSP_IiLin1ELin1ELi0ELin1ELin1EEESQ_SR_SR_NSP_INS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEESR_NSP_IiLin1ELi1ELi0ELin1ELi1EEES18_EEbRKNSO_10MatrixBaseIT0_EERKNS19_IT1_EERKNS19_IT2_EERKNS19_IT3_EERKNSM_28RemeshSelfIntersectionsParamERNSO_15PlainObjectBaseIT4_EERNS1T_IT5_EERNS1T_IT6_EERNS1T_IT7_EERNS1T_IT8_EEEUlRKSF_S2A_E_EEvS1A_S1A_S1E_S1E_S1I_l.exit.i: ; preds = %.noexc.i165
  call void @llvm.lifetime.end.p0(ptr nonnull %30)
  br label %bb.ds

bb.dl:                                            ; preds = %bb.dh, %bb.dg
  %i.rz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ie

bb.dm:                                            ; preds = %bb.dj, %bb.di
  %i.sa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

bb.dn:                                            ; preds = %.noexc.i165, %bb.dk
  %i.sb = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi                        ; 3 uses
  %i.sc = extractvalue { ptr, i32 } %i.sb, 1
  %i.sd = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIi) #22
  %i.se = icmp eq i32 %i.sc, %i.sd
  br i1 %i.se, label %bb.do, label %bb.ia

bb.do:                                            ; preds = %bb.dn
  %i.sf = extractvalue { ptr, i32 } %i.sb, 0
  %i.sg = call ptr @__cxa_begin_catch(ptr %i.sf) #22
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !47 ; 2 uses
  %.not.i28 = icmp eq i32 %i.sh, 10
  br i1 %.not.i28, label %bb.dr, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.si = call ptr @__cxa_allocate_exception(i64 4) #22 ; 2 uses
  store i32 %i.sh, ptr %i.si, align 16, !tbaa !47
  invoke void @__cxa_throw(ptr nonnull %i.si, ptr nonnull @_ZTIi, ptr null) #43
          to label %bb.if unwind label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.sj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_end_catch() #22
  br label %bb.ia

bb.dr:                                            ; preds = %bb.do
  call void @__cxa_end_catch() #22
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %_ZN4CGAL18box_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESJ_ZN3igl8copyleft4cgalL22intersect_other_helperIS7_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSP_IiLin1ELin1ELi0ELin1ELin1EEESQ_SR_SR_NSP_INS_13Lazy_exact_ntIN5boost14multiprecision6numberINSU_8backends16rational_adaptorINSW_15cpp_int_backendILm0ELm0ELNSU_16cpp_integer_typeE1ELNSU_18cpp_int_check_typeE0ESaIyEEEEELNSU_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEESR_NSP_IiLin1ELi1ELi0ELin1ELi1EEES18_EEbRKNSO_10MatrixBaseIT0_EERKNS19_IT1_EERKNS19_IT2_EERKNS19_IT3_EERKNSM_28RemeshSelfIntersectionsParamERNSO_15PlainObjectBaseIT4_EERNS1T_IT5_EERNS1T_IT6_EERNS1T_IT7_EERNS1T_IT8_EEEUlRKSF_S2A_E_EEvS1A_S1A_S1E_S1E_S1I_l.exit.i
  %i.sk = load i64, ptr %i.rp, align 8, !tbaa !48 ; 3 uses
  %i.sl = lshr i64 %i.sk, 1                       ; 2 uses
  %i.sm = icmp ne i64 %i.sl, 0
  %i.sn = icmp slt i64 %i.sk, 0
  %or.cond.i29 = and i1 %i.sn, %i.sm
  br i1 %or.cond.i29, label %bb.dt, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i30

bb.dt:                                            ; preds = %bb.ds
  %i.so = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.so, align 8, !tbaa !51
  invoke void @__cxa_throw(ptr nonnull %i.so, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #43
          to label %.noexc91.i164 unwind label %bb.du

.noexc91.i164:                                    ; preds = %bb.dt
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i30: ; preds = %bb.ds
  %i.sp = and i64 %i.sk, 9223372036854775806
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.sp, i64 noundef %i.sl, i64 noundef 2)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader.i31 unwind label %bb.du

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader.i31: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i30
  %.sroa.0252.0282.i = load ptr, ptr %37, align 8, !tbaa !41 ; 3 uses
  %.not262283.i = icmp eq ptr %.sroa.0252.0282.i, %37
  br i1 %.not262283.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.i36, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader.i31
  %i.sq = load ptr, ptr %5, align 8, !tbaa !53
  %i.sr = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ss = load i64, ptr %i.sr, align 8, !tbaa !56
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i33

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.i36: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i33, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader.i31
  %i.st = load i8, ptr %4, align 4, !tbaa !27, !range !13, !noundef !14
  %i.su = trunc nuw i8 %i.st to i1
  br i1 %i.su, label %bb.hd, label %bb.dv

bb.du:                                            ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i30, %bb.dt
  %i.sv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ia

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i33: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i33, %.lr.ph.i32
  %indvars.iv.i34 = phi i64 [ 0, %.lr.ph.i32 ], [ %indvars.iv.next.i35, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i33 ] ; 2 uses
  %.sroa.0252.0285.i = phi ptr [ %.sroa.0252.0282.i, %.lr.ph.i32 ], [ %.sroa.0252.0.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i33 ] ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %.sroa.0252.0285.i, i64 16
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !47
  %i.sy = getelementptr [4 x i8], ptr %i.sq, i64 %indvars.iv.i34 ; 2 uses
  store i32 %i.sx, ptr %i.sy, align 4, !tbaa !47
  %i.sz = load ptr, ptr %.sroa.0252.0285.i, align 8, !tbaa !41 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 16
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !47
  %i.tc = getelementptr [4 x i8], ptr %i.sy, i64 %i.ss
  store i32 %i.tb, ptr %i.tc, align 4, !tbaa !47
  %indvars.iv.next.i35 = add nuw nsw i64 %indvars.iv.i34, 1
  %.sroa.0252.0.i = load ptr, ptr %i.sz, align 8, !tbaa !41 ; 2 uses
  %.not262.i = icmp eq ptr %.sroa.0252.0.i, %37
  br i1 %.not262.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.i36, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i33, !llvm.loop !175

bb.dv:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.i36
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #22
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.te = load i64, ptr %i.td, align 8, !tbaa !59 ; 6 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.tg = load i64, ptr %i.tf, align 8, !tbaa !59
  %i.th = add nsw i64 %i.tg, %i.te                ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %38, i8 0, i64 24, i1 false)
  %i.ti = icmp sgt i64 %i.th, 3074457345618258602
  br i1 %i.ti, label %.invoke.i162, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i37

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i37: ; preds = %bb.dv
  %i.tj = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %.not.i203.i = icmp eq i64 %i.th, 0
  br i1 %.not.i203.i, label %bb.dz, label %bb.dw

bb.dw:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i37
  %i.tl = icmp sgt i64 %i.th, 0
  br i1 %i.tl, label %bb.dx, label %.sink.split.i.i38

bb.dx:                                            ; preds = %bb.dw
  %i.tm = icmp samesign ugt i64 %i.th, 768614336404564650
  br i1 %i.tm, label %.invoke.i162, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i161

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i161: ; preds = %bb.dx
  %i.tn = mul nuw i64 %i.th, 24
  %i.to = call noalias ptr @malloc(i64 noundef %i.tn) #44 ; 2 uses
  %i.tp = icmp eq ptr %i.to, null
  br i1 %i.tp, label %.invoke.i162, label %.sink.split.i.i38

.invoke.i162:                                     ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i161, %bb.dx, %bb.dv
  %i.tq = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.tq, align 8, !tbaa !51
  invoke void @__cxa_throw(ptr nonnull %i.tq, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #43
          to label %.cont.i163 unwind label %bb.dy

.cont.i163:                                       ; preds = %.invoke.i162
  unreachable

.sink.split.i.i38:                                ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i161, %bb.dw
  %.sink.i.i39 = phi ptr [ %i.to, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i161 ], [ null, %bb.dw ] ; 2 uses
  store ptr %.sink.i.i39, ptr %38, align 8, !tbaa !62
  br label %bb.dz

bb.dy:                                            ; preds = %.invoke.i162
  %i.tr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i40

bb.dz:                                            ; preds = %.sink.split.i.i38, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i37
  %i.ts = phi ptr [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i37 ], [ %.sink.i.i39, %.sink.split.i.i38 ] ; 2 uses
  store i64 %i.th, ptr %i.tj, align 8, !tbaa !59
  store i64 3, ptr %i.tk, align 8, !tbaa !63
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.tu = load i64, ptr %i.tt, align 8, !tbaa !63, !noalias !176 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22, !noalias !176
  store ptr %i.ts, ptr %29, align 8, !tbaa !67, !alias.scope !179, !noalias !176
  %i.tv = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 %i.te, ptr %i.tv, align 8, !tbaa !73, !alias.scope !179, !noalias !176
  %i.tw = getelementptr inbounds nuw i8, ptr %29, i64 16
  store i64 %i.tu, ptr %i.tw, align 8, !tbaa !73, !alias.scope !179, !noalias !176
  %i.tx = getelementptr inbounds nuw i8, ptr %29, i64 24
  store ptr %38, ptr %i.tx, align 8, !tbaa !74, !alias.scope !179, !noalias !176
  %i.ty = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.tz = getelementptr inbounds nuw i8, ptr %29, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ty, i8 0, i64 16, i1 false), !noalias !176
  store i64 %i.th, ptr %i.tz, align 8, !tbaa !76, !alias.scope !179, !noalias !176
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22, !noalias !176
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22, !noalias !176
  %i.ua = load ptr, ptr %0, align 8, !tbaa !62, !noalias !176
  store ptr %i.ua, ptr %25, align 8, !tbaa !79, !noalias !176
  %i.ub = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 %i.te, ptr %i.ub, align 8, !tbaa !81, !noalias !176
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22, !noalias !176
  store ptr %i.ts, ptr %26, align 8, !tbaa !82, !noalias !176
  %i.uc = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i64 %i.th, ptr %i.uc, align 8, !tbaa !73, !noalias !176
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22, !noalias !176
  store ptr %26, ptr %27, align 8, !tbaa !85, !noalias !176
  %i.ud = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr %25, ptr %i.ud, align 8, !tbaa !87, !noalias !176
  %i.ue = getelementptr inbounds nuw i8, ptr %27, i64 16
  store ptr %28, ptr %i.ue, align 8, !tbaa !89, !noalias !176
  %i.uf = getelementptr inbounds nuw i8, ptr %27, i64 24
  store ptr %29, ptr %i.uf, align 8, !tbaa !91, !noalias !176
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %27)
          to label %bb.ea unwind label %bb.ep

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22, !noalias !176
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22, !noalias !176
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22, !noalias !176
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22, !noalias !176
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22, !noalias !176
  %i.ug = load i64, ptr %i.tk, align 8, !tbaa !63
  %i.uh = icmp eq i64 %i.tu, %i.ug
  br i1 %i.uh, label %bb.eb, label %._crit_edge11.i.i42

._crit_edge11.i.i42:                              ; preds = %bb.ea
  %.pre13.i.i43 = load i64, ptr %i.tf, align 8, !tbaa !59
  %.phi.trans.insert14.i.i44 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre15.i.i45 = load i64, ptr %.phi.trans.insert14.i.i44, align 8, !tbaa !63
  br label %._crit_edge.i.i46

bb.eb:                                            ; preds = %bb.ea
  %i.ui = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.uj = load i64, ptr %i.ui, align 8, !tbaa !63 ; 2 uses
  %.not.i.i158 = icmp eq i64 %i.uj, 0
  %i.uk = load i64, ptr %i.tf, align 8, !tbaa !59 ; 3 uses
  br i1 %.not.i.i158, label %bb.ec, label %._crit_edge.i.i46

bb.ec:                                            ; preds = %bb.eb
  %.not8.i.i159 = icmp eq i64 %i.uk, %i.te        ; 2 uses
  %spec.select.i160 = select i1 %.not8.i.i159, i64 0, i64 %i.te
  %spec.select266.i = select i1 %.not8.i.i159, i64 %i.tu, i64 0
  br label %._crit_edge.i.i46

._crit_edge.i.i46:                                ; preds = %bb.ec, %bb.eb, %._crit_edge11.i.i42
  %.sroa.5241.0.i = phi i64 [ %spec.select.i160, %bb.ec ], [ 0, %._crit_edge11.i.i42 ], [ %i.te, %bb.eb ] ; 2 uses
  %i.ul = phi i64 [ 0, %bb.ec ], [ %.pre15.i.i45, %._crit_edge11.i.i42 ], [ %i.uj, %bb.eb ]
  %i.um = phi i64 [ %i.uk, %bb.ec ], [ %.pre13.i.i43, %._crit_edge11.i.i42 ], [ %i.uk, %bb.eb ] ; 2 uses
  %i.un = phi i64 [ %spec.select266.i, %bb.ec ], [ %i.tu, %._crit_edge11.i.i42 ], [ 0, %bb.eb ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %i.uo = load ptr, ptr %38, align 8, !tbaa !62, !noalias !182
  %i.up = getelementptr inbounds [8 x i8], ptr %i.uo, i64 %.sroa.5241.0.i
  %i.uq = load i64, ptr %i.tj, align 8, !tbaa !59, !noalias !182 ; 3 uses
  %i.ur = mul nsw i64 %i.uq, %i.un
  %i.us = getelementptr inbounds [8 x i8], ptr %i.up, i64 %i.ur ; 2 uses
  store ptr %i.us, ptr %24, align 8, !tbaa !67, !alias.scope !182
  %i.ut = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 %i.um, ptr %i.ut, align 8, !tbaa !73, !alias.scope !182
  %i.uu = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i64 %i.ul, ptr %i.uu, align 8, !tbaa !73, !alias.scope !182
  %i.uv = getelementptr inbounds nuw i8, ptr %24, i64 24
  store ptr %38, ptr %i.uv, align 8, !tbaa !74, !alias.scope !182
  %i.uw = getelementptr inbounds nuw i8, ptr %24, i64 32
  store i64 %.sroa.5241.0.i, ptr %i.uw, align 8, !tbaa !73, !alias.scope !182
  %i.ux = getelementptr inbounds nuw i8, ptr %24, i64 40
  store i64 %i.un, ptr %i.ux, align 8, !tbaa !73, !alias.scope !182
  %i.uy = getelementptr inbounds nuw i8, ptr %24, i64 48
  store i64 %i.uq, ptr %i.uy, align 8, !tbaa !76, !alias.scope !182
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.uz = load ptr, ptr %2, align 8, !tbaa !62
  store ptr %i.uz, ptr %20, align 8, !tbaa !79
  %i.va = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.um, ptr %i.va, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  store ptr %i.us, ptr %21, align 8, !tbaa !82
  %i.vb = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i64 %i.uq, ptr %i.vb, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  store ptr %21, ptr %22, align 8, !tbaa !85
  %i.vc = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %20, ptr %i.vc, align 8, !tbaa !87
  %i.vd = getelementptr inbounds nuw i8, ptr %22, i64 16
  store ptr %23, ptr %i.vd, align 8, !tbaa !89
  %i.ve = getelementptr inbounds nuw i8, ptr %22, i64 24
  store ptr %24, ptr %i.ve, align 8, !tbaa !91
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.ed unwind label %bb.eq

bb.ed:                                            ; preds = %._crit_edge.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #22
  %i.vf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.vg = load i64, ptr %i.vf, align 8, !tbaa !56 ; 5 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.vi = load i64, ptr %i.vh, align 8, !tbaa !56
  %i.vj = add nsw i64 %i.vi, %i.vg                ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %39, i8 0, i64 24, i1 false)
  %i.vk = icmp sgt i64 %i.vj, 3074457345618258602
  br i1 %i.vk, label %.invoke399.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i47

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i47: ; preds = %bb.ed
  %i.vl = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %.not.i206.i = icmp eq i64 %i.vj, 0
  br i1 %.not.i206.i, label %bb.eh, label %bb.ee

bb.ee:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i47
  %i.vn = icmp sgt i64 %i.vj, 0
  br i1 %i.vn, label %bb.ef, label %.sink.split.i207.i

bb.ef:                                            ; preds = %bb.ee
  %i.vo = icmp samesign ugt i64 %i.vj, 1537228672809129301
  br i1 %i.vo, label %.invoke399.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i157

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i157: ; preds = %bb.ef
  %i.vp = mul nuw i64 %i.vj, 12
  %i.vq = call noalias ptr @malloc(i64 noundef %i.vp) #44 ; 2 uses
  %i.vr = icmp eq ptr %i.vq, null
  br i1 %i.vr, label %.invoke399.i, label %.sink.split.i207.i

.invoke399.i:                                     ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i157, %bb.ef, %bb.ed
  %i.vs = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.vs, align 8, !tbaa !51
  invoke void @__cxa_throw(ptr nonnull %i.vs, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #43
          to label %.cont400.i unwind label %bb.eg

.cont400.i:                                       ; preds = %.invoke399.i
  unreachable

.sink.split.i207.i:                               ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i157, %bb.ee
  %.sink.i208.i = phi ptr [ %i.vq, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i157 ], [ null, %bb.ee ] ; 2 uses
  store ptr %.sink.i208.i, ptr %39, align 8, !tbaa !53
  br label %bb.eh

bb.eg:                                            ; preds = %.invoke399.i
  %i.vt = landingpad { ptr, i32 }
          cleanup
  br label %.body98.i48

bb.eh:                                            ; preds = %.sink.split.i207.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i47
  %i.vu = phi ptr [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i47 ], [ %.sink.i208.i, %.sink.split.i207.i ] ; 2 uses
  store i64 %i.vj, ptr %i.vl, align 8, !tbaa !56
  store i64 3, ptr %i.vm, align 8, !tbaa !96
  %i.vv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.vw = load i64, ptr %i.vv, align 8, !tbaa !96, !noalias !185 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22, !noalias !185
  store ptr %i.vu, ptr %19, align 8, !tbaa !100, !alias.scope !188, !noalias !185
  %i.vx = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %i.vg, ptr %i.vx, align 8, !tbaa !73, !alias.scope !188, !noalias !185
  %i.vy = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i64 %i.vw, ptr %i.vy, align 8, !tbaa !73, !alias.scope !188, !noalias !185
  %i.vz = getelementptr inbounds nuw i8, ptr %19, i64 24
  store ptr %39, ptr %i.vz, align 8, !tbaa !105, !alias.scope !188, !noalias !185
  %i.wa = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.wb = getelementptr inbounds nuw i8, ptr %19, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wa, i8 0, i64 16, i1 false), !noalias !185
  store i64 %i.vj, ptr %i.wb, align 8, !tbaa !107, !alias.scope !188, !noalias !185
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22, !noalias !185
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22, !noalias !185
  %i.wc = load ptr, ptr %1, align 8, !tbaa !53, !noalias !185
  store ptr %i.wc, ptr %15, align 8, !tbaa !110, !noalias !185
  %i.wd = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.vg, ptr %i.wd, align 8, !tbaa !112, !noalias !185
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22, !noalias !185
  store ptr %i.vu, ptr %16, align 8, !tbaa !113, !noalias !185
  %i.we = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 %i.vj, ptr %i.we, align 8, !tbaa !73, !noalias !185
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22, !noalias !185
  store ptr %16, ptr %17, align 8, !tbaa !115, !noalias !185
  %i.wf = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %15, ptr %i.wf, align 8, !tbaa !117, !noalias !185
  %i.wg = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %18, ptr %i.wg, align 8, !tbaa !119, !noalias !185
  %i.wh = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr %19, ptr %i.wh, align 8, !tbaa !121, !noalias !185
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.ei unwind label %bb.er

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22, !noalias !185
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22, !noalias !185
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22, !noalias !185
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22, !noalias !185
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22, !noalias !185
  %i.wi = load i64, ptr %i.td, align 8, !tbaa !59
  %i.wj = load i64, ptr %i.vh, align 8, !tbaa !56, !noalias !191 ; 3 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.wl = load i64, ptr %i.wk, align 8, !tbaa !96, !noalias !191 ; 3 uses
  %i.wm = trunc i64 %i.wi to i32
  %i.wn = load i64, ptr %i.vm, align 8, !tbaa !96
  %i.wo = icmp eq i64 %i.vw, %i.wn
  br i1 %i.wo, label %bb.ej, label %._crit_edge11.i101.i50

bb.ej:                                            ; preds = %bb.ei
  %.not.i106.i154 = icmp eq i64 %i.wl, 0
  %.not8.i112.i155 = icmp eq i64 %i.wj, %i.vg
  %or.cond261.i = select i1 %.not.i106.i154, i1 %.not8.i112.i155, i1 false
  br i1 %or.cond261.i, label %._crit_edge11.i101.i50, label %._crit_edge.i107.i156

._crit_edge.i107.i156:                            ; preds = %bb.ej
  br label %._crit_edge11.i101.i50

._crit_edge11.i101.i50:                           ; preds = %._crit_edge.i107.i156, %bb.ej, %bb.ei
  %.sroa.5233.0.i = phi i64 [ 0, %bb.ej ], [ %i.vg, %._crit_edge.i107.i156 ], [ 0, %bb.ei ] ; 2 uses
  %i.wp = phi i64 [ 0, %bb.ej ], [ %i.wl, %._crit_edge.i107.i156 ], [ %i.wl, %bb.ei ]
  %i.wq = phi i64 [ %i.vw, %bb.ej ], [ 0, %._crit_edge.i107.i156 ], [ %i.vw, %bb.ei ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %i.wr = load ptr, ptr %39, align 8, !tbaa !53, !noalias !194
  %i.ws = getelementptr inbounds [4 x i8], ptr %i.wr, i64 %.sroa.5233.0.i
  %i.wt = load i64, ptr %i.vl, align 8, !tbaa !56, !noalias !194 ; 3 uses
  %i.wu = mul nsw i64 %i.wt, %i.wq
  %i.wv = getelementptr inbounds [4 x i8], ptr %i.ws, i64 %i.wu ; 2 uses
  store ptr %i.wv, ptr %14, align 8, !tbaa !100, !alias.scope !194
  %i.ww = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.wj, ptr %i.ww, align 8, !tbaa !73, !alias.scope !194
  %i.wx = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 %i.wp, ptr %i.wx, align 8, !tbaa !73, !alias.scope !194
  %i.wy = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr %39, ptr %i.wy, align 8, !tbaa !105, !alias.scope !194
  %i.wz = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i64 %.sroa.5233.0.i, ptr %i.wz, align 8, !tbaa !73, !alias.scope !194
  %i.xa = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i64 %i.wq, ptr %i.xa, align 8, !tbaa !73, !alias.scope !194
  %i.xb = getelementptr inbounds nuw i8, ptr %14, i64 48
  store i64 %i.wt, ptr %i.xb, align 8, !tbaa !107, !alias.scope !194
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.xc = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.xd = load ptr, ptr %3, align 8, !tbaa !53
  store ptr %i.xd, ptr %i.xc, align 8, !tbaa !110
  %i.xe = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %i.wj, ptr %i.xe, align 8, !tbaa !112
  %i.xf = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 %i.wm, ptr %i.xf, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  store ptr %i.wv, ptr %11, align 8, !tbaa !113
  %i.xg = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %i.wt, ptr %i.xg, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store ptr %11, ptr %12, align 8, !tbaa !115
  %i.xh = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %10, ptr %i.xh, align 8, !tbaa !131
  %i.xi = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %13, ptr %i.xi, align 8, !tbaa !119
  %i.xj = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %14, ptr %i.xj, align 8, !tbaa !121
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIiiEEKNS_12ArrayWrapperIKS6_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEEEEEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSS_(ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.ek unwind label %bb.es

bb.ek:                                            ; preds = %._crit_edge11.i101.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %40, i8 0, i64 24, i1 false)
  %i.xk = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !197 ; 2 uses
  %i.xm = load ptr, ptr %31, align 8, !tbaa !200  ; 2 uses
  %i.xn = ptrtoint ptr %i.xl to i64
  %i.xo = ptrtoint ptr %i.xm to i64
  %i.xp = sub i64 %i.xn, %i.xo
  %i.xq = ashr exact i64 %i.xp, 3
  %i.xr = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !197
  %i.xt = load ptr, ptr %32, align 8, !tbaa !200
  %i.xu = ptrtoint ptr %i.xs to i64
  %i.xv = ptrtoint ptr %i.xt to i64
  %i.xw = sub i64 %i.xu, %i.xv
  %i.xx = ashr exact i64 %i.xw, 3
  %i.xy = add nsw i64 %i.xx, %i.xq                ; 4 uses
  %i.xz = icmp ugt i64 %i.xy, 1152921504606846975
  br i1 %i.xz, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #43
          to label %.noexc114.i153 unwind label %bb.et

.noexc114.i153:                                   ; preds = %bb.el
  unreachable

bb.em:                                            ; preds = %bb.ek
  %i.ya = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  %.not392.i = icmp eq i64 %i.xy, 0
  br i1 %.not392.i, label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE7reserveEm.exit.i, label %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE11_M_allocateEm.exit.i.i: ; preds = %bb.em
  %i.yb = shl nuw nsw i64 %i.xy, 3
  %i.yc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yb) #45
          to label %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit.i.i unwind label %bb.et ; 4 uses

_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit.i.i: ; preds = %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE11_M_allocateEm.exit.i.i
  %i.yd = getelementptr inbounds nuw i8, ptr %40, i64 8
  store ptr %i.yc, ptr %40, align 8, !tbaa !200
  store ptr %i.yc, ptr %i.yd, align 8, !tbaa !197
  %i.ye = getelementptr inbounds nuw [8 x i8], ptr %i.yc, i64 %i.xy
  store ptr %i.ye, ptr %i.ya, align 8, !tbaa !201
  br label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE7reserveEm.exit.i

_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE7reserveEm.exit.i: ; preds = %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit.i.i, %bb.em
  %i.yf = phi ptr [ %i.yc, %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit.i.i ], [ null, %bb.em ]
  %i.yg = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  invoke void @_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %40, ptr %i.yf, ptr %i.xm, ptr %i.xl)
          to label %bb.en unwind label %bb.eu

bb.en:                                            ; preds = %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE7reserveEm.exit.i
  %i.yh = load ptr, ptr %40, align 8, !tbaa !202  ; 2 uses
  %i.yi = load ptr, ptr %i.yg, align 8, !tbaa !202
  %i.yj = load ptr, ptr %32, align 8, !tbaa !202
  %i.yk = load ptr, ptr %i.xr, align 8, !tbaa !202
  %i.yl = ptrtoint ptr %i.yi to i64
  %i.ym = ptrtoint ptr %i.yh to i64
  %i.yn = sub i64 %i.yl, %i.ym
  %i.yo = getelementptr inbounds i8, ptr %i.yh, i64 %i.yn
end_hunk_1
begin_hunk_2_@_ZN3igl8copyleft4cgal15intersect_otherIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEESL_SM_SM_SL_SM_NS4_IiLin1ELi1ELi0ELin1ELi1EEESN_EEbRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNS1_28RemeshSelfIntersectionsParamERNS3_15PlainObjectBaseIT3_EERNS18_IT4_EERNS18_IT5_EERNS18_IT6_EERNS18_IT7_EE:bb.a
bb.b:                                             ; preds = %bb.a
  invoke void @_ZN3igl8copyleft4cgal26mesh_to_cgal_triangle_listIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS5_5EpeckEEEvRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERSt6vectorINS5_10Triangle_3IT1_EESaIS10_EE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %22)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZZN3igl8copyleft4cgalL22intersect_other_helperIN4CGAL5EpeckEN5Eigen6MatrixINS3_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESM_SN_SN_SM_SN_NS6_IiLin1ELi1ELi0ELin1ELi1EEESO_EEbRKNS5_10MatrixBaseIT0_EERKNSP_IT1_EERKNSP_IT2_EERKNSP_IT3_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseIT4_EERNS19_IT5_EERNS19_IT6_EERNS19_IT7_EERNS19_IT8_EEENKUlRSt6vectorINS3_10Triangle_3IS4_EESaIS1R_EERS1P_INS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPS1R_S1T_EENS1V_14ID_FROM_HANDLEEEESaIS22_EEE_clES1U_S25_(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %23)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_ZZN3igl8copyleft4cgalL22intersect_other_helperIN4CGAL5EpeckEN5Eigen6MatrixINS3_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESM_SN_SN_SM_SN_NS6_IiLin1ELi1ELi0ELin1ELi1EEESO_EEbRKNS5_10MatrixBaseIT0_EERKNSP_IT1_EERKNSP_IT2_EERKNSP_IT3_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseIT4_EERNS19_IT5_EERNS19_IT6_EERNS19_IT7_EERNS19_IT8_EEENKUlRSt6vectorINS3_10Triangle_3IS4_EESaIS1R_EERS1P_INS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPS1R_S1T_EENS1V_14ID_FROM_HANDLEEEESaIS22_EEE_clES1U_S25_(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %24)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  %i.b = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %25, i64 24 ; 2 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %25, i64 32
  store ptr %i.b, ptr %i.e, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %25, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  %i.g = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 5 uses
  store i32 0, ptr %i.g, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  store ptr null, ptr %i.h, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %26, i64 24 ; 2 uses
  store ptr %i.g, ptr %i.i, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %26, i64 32
  store ptr %i.g, ptr %i.j, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %26, i64 40
  store i64 0, ptr %i.k, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  %i.l = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr %27, ptr %i.l, align 8, !tbaa !38
  store ptr %27, ptr %27, align 8, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  store i64 0, ptr %i.m, align 8, !tbaa !42
  %i.n = load ptr, ptr %23, align 8, !tbaa !173   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !173  ; 2 uses
  %i.q = load ptr, ptr %24, align 8, !tbaa !173   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !173  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !46
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  store ptr %21, ptr %20, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %22, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %27, ptr %.sroa.3.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %20, i64 24
  store ptr %4, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5239.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %20, i64 32
  store ptr %25, ptr %.sroa.5239.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx240.i = getelementptr inbounds nuw i8, ptr %20, i64 40
  store ptr %26, ptr %.sroa.6.0..sroa_idx240.i, align 8
  invoke fastcc void @_ZN4CGAL18Box_intersection_d12segment_treeIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ZN3igl8copyleft4cgalL22intersect_other_helperIS6_N5Eigen6MatrixINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSR_8backends16rational_adaptorINST_15cpp_int_backendILm0ELm0ELNSR_16cpp_integer_typeE1ELNSR_18cpp_int_check_typeE0ESaIyEEEEELNSR_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEES14_S15_S15_S14_S15_NSO_IiLin1ELi1ELi0ELin1ELi1EEES16_EEbRKNSN_10MatrixBaseIT0_EERKNS17_IT1_EERKNS17_IT2_EERKNS17_IT3_EERKNSL_28RemeshSelfIntersectionsParamERNSN_15PlainObjectBaseIT4_EERNS1R_IT5_EERNS1R_IT6_EERNS1R_IT7_EERNS1R_IT8_EEEUlRKSE_S28_E_dNS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEEEvT_S2E_S18_S18_S1G_S1G_S1C_S1K_lib(ptr %i.n, ptr %i.p, ptr %i.q, ptr %i.s, double noundef f0xFFEFFFFFFFFFFFFF, double noundef f0x7FEFFFFFFFFFFFFF, ptr noundef nonnull byval(%class.anon.1135) align 8 %20, i64 noundef range(i64 -2147483648, 2147483648) %i.v, i32 noundef 2, i1 noundef zeroext true)
          to label %.noexc.i unwind label %bb.h

.noexc.i:                                         ; preds = %bb.e
  invoke fastcc void @_ZN4CGAL18Box_intersection_d12segment_treeIN9__gnu_cxx17__normal_iteratorIPNS0_17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS7_SaIS7_EEEENS0_14ID_FROM_HANDLEEEES9_ISE_SaISE_EEEESI_ZN3igl8copyleft4cgalL22intersect_other_helperIS6_N5Eigen6MatrixINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSR_8backends16rational_adaptorINST_15cpp_int_backendILm0ELm0ELNSR_16cpp_integer_typeE1ELNSR_18cpp_int_check_typeE0ESaIyEEEEELNSR_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEES14_S15_S15_S14_S15_NSO_IiLin1ELi1ELi0ELin1ELi1EEES16_EEbRKNSN_10MatrixBaseIT0_EERKNS17_IT1_EERKNS17_IT2_EERKNS17_IT3_EERKNSL_28RemeshSelfIntersectionsParamERNSN_15PlainObjectBaseIT4_EERNS1R_IT5_EERNS1R_IT6_EERNS1R_IT7_EERNS1R_IT8_EEEUlRKSE_S28_E_dNS0_18Predicate_traits_dINS0_12Box_traits_dISE_EELb1EEEEEvT_S2E_S18_S18_S1G_S1G_S1C_S1K_lib(ptr %i.q, ptr %i.s, ptr %i.n, ptr %i.p, double noundef f0xFFEFFFFFFFFFFFFF, double noundef f0x7FEFFFFFFFFFFFFF, ptr noundef nonnull byval(%class.anon.1135) align 8 %20, i64 noundef range(i64 -2147483648, 2147483648) %i.v, i32 noundef 2, i1 noundef zeroext false)
          to label %_ZN4CGAL18box_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESJ_ZN3igl8copyleft4cgalL22intersect_other_helperIS7_N5Eigen6MatrixINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSS_8backends16rational_adaptorINSU_15cpp_int_backendILm0ELm0ELNSS_16cpp_integer_typeE1ELNSS_18cpp_int_check_typeE0ESaIyEEEEELNSS_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENSP_IiLin1ELin1ELi0ELin1ELin1EEES15_S16_S16_S15_S16_NSP_IiLin1ELi1ELi0ELin1ELi1EEES17_EEbRKNSO_10MatrixBaseIT0_EERKNS18_IT1_EERKNS18_IT2_EERKNS18_IT3_EERKNSM_28RemeshSelfIntersectionsParamERNSO_15PlainObjectBaseIT4_EERNS1S_IT5_EERNS1S_IT6_EERNS1S_IT7_EERNS1S_IT8_EEEUlRKSF_S29_E_EEvS19_S19_S1D_S1D_S1H_l.exit.i unwind label %bb.h

_ZN4CGAL18box_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESJ_ZN3igl8copyleft4cgalL22intersect_other_helperIS7_N5Eigen6MatrixINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSS_8backends16rational_adaptorINSU_15cpp_int_backendILm0ELm0ELNSS_16cpp_integer_typeE1ELNSS_18cpp_int_check_typeE0ESaIyEEEEELNSS_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENSP_IiLin1ELin1ELi0ELin1ELin1EEES15_S16_S16_S15_S16_NSP_IiLin1ELi1ELi0ELin1ELi1EEES17_EEbRKNSO_10MatrixBaseIT0_EERKNS18_IT1_EERKNS18_IT2_EERKNS18_IT3_EERKNSM_28RemeshSelfIntersectionsParamERNSO_15PlainObjectBaseIT4_EERNS1S_IT5_EERNS1S_IT6_EERNS1S_IT7_EERNS1S_IT8_EEEUlRKSF_S29_E_EEvS19_S19_S1D_S1D_S1H_l.exit.i: ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  br label %bb.m

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.ef

bb.h:                                             ; preds = %.noexc.i, %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi                        ; 3 uses
  %i.z = extractvalue { ptr, i32 } %i.y, 1
  %i.aa = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIi) #22
  %i.ab = icmp eq i32 %i.z, %i.aa
  br i1 %i.ab, label %bb.i, label %bb.ee

bb.i:                                             ; preds = %bb.h
  %i.ac = extractvalue { ptr, i32 } %i.y, 0
  %i.ad = call ptr @__cxa_begin_catch(ptr %i.ac) #22
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !47 ; 2 uses
  %.not.i = icmp eq i32 %i.ae, 10
  br i1 %.not.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = call ptr @__cxa_allocate_exception(i64 4) #22 ; 2 uses
  store i32 %i.ae, ptr %i.af, align 16, !tbaa !47
  invoke void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTIi, ptr null) #43
          to label %bb.ej unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_end_catch() #22
  br label %bb.ee

bb.l:                                             ; preds = %bb.i
  call void @__cxa_end_catch() #22
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN4CGAL18box_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESJ_ZN3igl8copyleft4cgalL22intersect_other_helperIS7_N5Eigen6MatrixINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSS_8backends16rational_adaptorINSU_15cpp_int_backendILm0ELm0ELNSS_16cpp_integer_typeE1ELNSS_18cpp_int_check_typeE0ESaIyEEEEELNSS_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENSP_IiLin1ELin1ELi0ELin1ELin1EEES15_S16_S16_S15_S16_NSP_IiLin1ELi1ELi0ELin1ELi1EEES17_EEbRKNSO_10MatrixBaseIT0_EERKNS18_IT1_EERKNS18_IT2_EERKNS18_IT3_EERKNSM_28RemeshSelfIntersectionsParamERNSO_15PlainObjectBaseIT4_EERNS1S_IT5_EERNS1S_IT6_EERNS1S_IT7_EERNS1S_IT8_EEEUlRKSF_S29_E_EEvS19_S19_S1D_S1D_S1H_l.exit.i
  %i.ah = load i64, ptr %i.m, align 8, !tbaa !48  ; 3 uses
  %i.ai = lshr i64 %i.ah, 1                       ; 2 uses
  %i.aj = icmp ne i64 %i.ai, 0
  %i.ak = icmp slt i64 %i.ah, 0
  %or.cond.i = and i1 %i.ak, %i.aj
  br i1 %or.cond.i, label %bb.n, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.al = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.al, align 8, !tbaa !51
  invoke void @__cxa_throw(ptr nonnull %i.al, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #43
          to label %.noexc91.i unwind label %bb.o

.noexc91.i:                                       ; preds = %bb.n
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i: ; preds = %bb.m
  %i.am = and i64 %i.ah, 9223372036854775806
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.am, i64 noundef %i.ai, i64 noundef 2)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader.i unwind label %bb.o

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader.i: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i
  %.sroa.0235.0264.i = load ptr, ptr %27, align 8, !tbaa !41 ; 3 uses
  %.not245265.i = icmp eq ptr %.sroa.0235.0264.i, %27
  br i1 %.not245265.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader.i
  %i.an = load ptr, ptr %5, align 8, !tbaa !53
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !56
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.i: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader.i
  %i.aq = load i8, ptr %4, align 4, !tbaa !27, !range !13, !noundef !14
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.dh, label %bb.p

bb.o:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i, %bb.n
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i ] ; 2 uses
  %.sroa.0235.0267.i = phi ptr [ %.sroa.0235.0264.i, %.lr.ph.i ], [ %.sroa.0235.0.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0235.0267.i, i64 16
  %i.au = load i32, ptr %i.at, align 4, !tbaa !47
  %i.av = getelementptr [4 x i8], ptr %i.an, i64 %indvars.iv.i ; 2 uses
  store i32 %i.au, ptr %i.av, align 4, !tbaa !47
  %i.aw = load ptr, ptr %.sroa.0235.0267.i, align 8, !tbaa !41 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !47
  %i.az = getelementptr [4 x i8], ptr %i.av, i64 %i.ap
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !47
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %.sroa.0235.0.i = load ptr, ptr %i.aw, align 8, !tbaa !41 ; 2 uses
  %.not245.i = icmp eq ptr %.sroa.0235.0.i, %27
  br i1 %.not245.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, !llvm.loop !213

bb.p:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !214 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !214
  %i.be = add nsw i64 %i.bd, %i.bb                ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %28, i8 0, i64 24, i1 false)
  %i.bf = icmp sgt i64 %i.be, 3074457345618258602
  br i1 %i.bf, label %bb.q, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.bg = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bg, align 8, !tbaa !51
  invoke void @__cxa_throw(ptr nonnull %i.bg, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #43
          to label %.noexc.i.i unwind label %bb.s

.noexc.i.i:                                       ; preds = %bb.q
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.i: ; preds = %bb.p
  %i.bh = mul nuw nsw i64 %i.be, 3
  %i.bi = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %.not.i192.i = icmp eq i64 %i.be, 0
  br i1 %.not.i192.i, label %bb.t, label %_ZN5Eigen8internal31conditional_aligned_delete_autoIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELb1EEEvPT_m.exit.i.i

_ZN5Eigen8internal31conditional_aligned_delete_autoIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELb1EEEvPT_m.exit.i.i: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.i
  %i.bk = icmp sgt i64 %i.be, 0
  br i1 %i.bk, label %bb.r, label %.sink.split.i.i

bb.r:                                             ; preds = %_ZN5Eigen8internal31conditional_aligned_delete_autoIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELb1EEEvPT_m.exit.i.i
  %i.bl = invoke noundef ptr @_ZN5Eigen8internal28conditional_aligned_new_autoIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELb1EEEPT_m(i64 noundef %i.bh)
          to label %..sink.split.i_crit_edge.i unwind label %bb.s

..sink.split.i_crit_edge.i:                       ; preds = %bb.r
  %.pre.pre.i = load i64, ptr %i.ba, align 8, !tbaa !214, !noalias !217
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %..sink.split.i_crit_edge.i, %_ZN5Eigen8internal31conditional_aligned_delete_autoIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELb1EEEvPT_m.exit.i.i
  %.pre.i = phi i64 [ %i.bb, %_ZN5Eigen8internal31conditional_aligned_delete_autoIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELb1EEEvPT_m.exit.i.i ], [ %.pre.pre.i, %..sink.split.i_crit_edge.i ]
  %.sink.i.i = phi ptr [ null, %_ZN5Eigen8internal31conditional_aligned_delete_autoIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELb1EEEvPT_m.exit.i.i ], [ %i.bl, %..sink.split.i_crit_edge.i ] ; 2 uses
  store ptr %.sink.i.i, ptr %28, align 8, !tbaa !220
  br label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.t:                                             ; preds = %.sink.split.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.i
  %i.bn = phi ptr [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.i ], [ %.sink.i.i, %.sink.split.i.i ]
  %i.bo = phi i64 [ %i.bb, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.i ], [ %.pre.i, %.sink.split.i.i ] ; 3 uses
  store i64 %i.be, ptr %i.bi, align 8, !tbaa !214
  store i64 3, ptr %i.bj, align 8, !tbaa !221
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !217)
  store ptr %28, ptr %29, align 8, !tbaa !222, !alias.scope !217
  %i.bp = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 0, ptr %i.bp, align 8, !tbaa !224, !alias.scope !217
  %i.bq = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !221, !noalias !217 ; 4 uses
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !226, !alias.scope !217
  %i.bt = getelementptr inbounds nuw i8, ptr %29, i64 24
  store i64 %i.bo, ptr %i.bt, align 8, !tbaa !227, !alias.scope !217
  %i.bu = load ptr, ptr %0, align 8, !tbaa !220, !noalias !217
  %i.bv = icmp sgt i64 %i.bo, 0
  %i.bw = icmp sgt i64 %i.bs, 0
  %or.cond.i.i.i = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEEElsISI_EENS_16CommaInitializerISI_EERKNS0_IT_EE.exit.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.t, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bz, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.t ] ; 3 uses
  %invariant.gep.i.i.i.i.i.i.i.i.i.i.i.idx.i = mul i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 48
  %invariant.gep.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.bn, i64 %invariant.gep.i.i.i.i.i.i.i.i.i.i.i.idx.i
  %i.bx = mul nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.bs
  %i.by = getelementptr [16 x i8], ptr %i.bu, i64 %i.bx
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELin1ELin1ELb0EEEEENS2_ISL_EENS0_9assign_opISK_SK_EELi0EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bz = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond9.not.i.i.i = icmp eq i64 %i.bz, %i.bo
  br i1 %exitcond9.not.i.i.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEEElsISI_EENS_16CommaInitializerISI_EERKNS0_IT_EE.exit.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !228

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELin1ELin1ELb0EEEEENS2_ISL_EENS0_9assign_opISK_SK_EELi0EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.db, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELin1ELin1ELb0EEEEENS2_ISL_EENS0_9assign_opISK_SK_EELi0EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %gep.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr [16 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.ca = getelementptr [16 x i8], ptr %i.by, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24, !noalias !217
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.cb, 0
  %i.cc = load ptr, ptr %i.ca, align 8, !tbaa !205, !noalias !217
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ce = atomicrmw add ptr %i.cd, i32 1 monotonic, align 4, !noalias !217 ; 0 uses
  %i.cf = load ptr, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !205, !noalias !217 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELin1ELin1ELb0EEEEENS2_ISL_EENS0_9assign_opISK_SK_EELi0EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.w

_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cg = load atomic i32, ptr %i.cd monotonic, align 4, !noalias !217
  %i.ch = add nsw i32 %i.cg, 1
  store atomic i32 %i.ch, ptr %i.cd monotonic, align 4, !noalias !217
  %i.ci = load ptr, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !205, !noalias !217 ; 4 uses
  %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELin1ELin1ELb0EEEEENS2_ISL_EENS0_9assign_opISK_SK_EELi0EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.ck = load atomic i32, ptr %i.cj monotonic, align 4, !noalias !217 ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 1
  br i1 %i.cl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cm = load ptr, ptr %i.ci, align 8, !tbaa !51, !noalias !217
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !noalias !217
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(12) %i.ci) #22, !noalias !217, !inline_history !230
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELin1ELin1ELb0EEEEENS2_ISL_EENS0_9assign_opISK_SK_EELi0EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.v:                                             ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cp = add nsw i32 %i.ck, -1
  store atomic i32 %i.cp, ptr %i.cj monotonic, align 4, !noalias !217
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELin1ELin1ELb0EEEEENS2_ISL_EENS0_9assign_opISK_SK_EELi0EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  %i.cr = load atomic i32, ptr %i.cq monotonic, align 4, !noalias !217
  %i.cs = icmp eq i32 %i.cr, 1
  br i1 %i.cs, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ct = atomicrmw sub ptr %i.cq, i32 1 release, align 4, !noalias !217
  %i.cu = icmp eq i32 %i.ct, 1
  br i1 %i.cu, label %bb.y, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELin1ELin1ELb0EEEEENS2_ISL_EENS0_9assign_opISK_SK_EELi0EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.x, %bb.w
  fence acquire
  %i.cv = load ptr, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !205, !noalias !217 ; 3 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELin1ELin1ELb0EEEEENS2_ISL_EENS0_9assign_opISK_SK_EELi0EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cx = load ptr, ptr %i.cv, align 8, !tbaa !51, !noalias !217
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !noalias !217
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(12) %i.cv) #22, !noalias !217, !inline_history !230
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELin1ELin1ELb0EEEEENS2_ISL_EENS0_9assign_opISK_SK_EELi0EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELin1ELin1ELb0EEEEENS2_ISL_EENS0_9assign_opISK_SK_EELi0EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.z, %bb.y, %bb.x, %bb.v, %bb.u, %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.da = load ptr, ptr %i.ca, align 8, !tbaa !205, !noalias !217
  store ptr %i.da, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !205, !noalias !217
  %i.db = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.db, %i.bs
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !231

_ZN5Eigen9DenseBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEEElsISI_EENS_16CommaInitializerISI_EERKNS0_IT_EE.exit.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.t
  %i.dc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN5Eigen16CommaInitializerINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEEEcmISI_EERSJ_RKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.aa unwind label %bb.am     ; 0 uses

bb.aa:                                            ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEEElsISI_EENS_16CommaInitializerISI_EERKNS0_IT_EE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !56 ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !56
  %i.dh = add nsw i64 %i.dg, %i.de                ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %30, i8 0, i64 24, i1 false)
  %i.di = icmp sgt i64 %i.dh, 3074457345618258602
  br i1 %i.di, label %.invoke.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i: ; preds = %bb.aa
  %i.dj = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %.not.i196.i = icmp eq i64 %i.dh, 0
  br i1 %.not.i196.i, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i
  %i.dl = icmp sgt i64 %i.dh, 0
  br i1 %i.dl, label %bb.ac, label %.sink.split.i197.i

bb.ac:                                            ; preds = %bb.ab
  %i.dm = icmp samesign ugt i64 %i.dh, 1537228672809129301
  br i1 %i.dm, label %.invoke.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i: ; preds = %bb.ac
  %i.dn = mul nuw i64 %i.dh, 12
  %i.do = call noalias ptr @malloc(i64 noundef %i.dn) #44 ; 2 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %.invoke.i, label %.sink.split.i197.i

.invoke.i:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.ac, %bb.aa
  %i.dq = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dq, align 8, !tbaa !51
  invoke void @__cxa_throw(ptr nonnull %i.dq, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #43
          to label %.cont.i unwind label %bb.ad

.cont.i:                                          ; preds = %.invoke.i
  unreachable

.sink.split.i197.i:                               ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.ab
  %.sink.i198.i = phi ptr [ %i.do, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i ], [ null, %bb.ab ] ; 2 uses
  store ptr %.sink.i198.i, ptr %30, align 8, !tbaa !53
  br label %bb.ae

bb.ad:                                            ; preds = %.invoke.i
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %.body96.i

bb.ae:                                            ; preds = %.sink.split.i197.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i
  %i.ds = phi ptr [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i ], [ %.sink.i198.i, %.sink.split.i197.i ] ; 2 uses
  store i64 %i.dh, ptr %i.dj, align 8, !tbaa !56
  store i64 3, ptr %i.dk, align 8, !tbaa !96
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !96, !noalias !232 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22, !noalias !232
  store ptr %i.ds, ptr %19, align 8, !tbaa !100, !alias.scope !235, !noalias !232
  %i.dv = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %i.de, ptr %i.dv, align 8, !tbaa !73, !alias.scope !235, !noalias !232
  %i.dw = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i64 %i.du, ptr %i.dw, align 8, !tbaa !73, !alias.scope !235, !noalias !232
  %i.dx = getelementptr inbounds nuw i8, ptr %19, i64 24
  store ptr %30, ptr %i.dx, align 8, !tbaa !105, !alias.scope !235, !noalias !232
  %i.dy = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.dz = getelementptr inbounds nuw i8, ptr %19, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, i8 0, i64 16, i1 false), !noalias !232
  store i64 %i.dh, ptr %i.dz, align 8, !tbaa !107, !alias.scope !235, !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22, !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22, !noalias !232
  %i.ea = load ptr, ptr %1, align 8, !tbaa !53, !noalias !232
  store ptr %i.ea, ptr %15, align 8, !tbaa !110, !noalias !232
  %i.eb = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.de, ptr %i.eb, align 8, !tbaa !112, !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22, !noalias !232
  store ptr %i.ds, ptr %16, align 8, !tbaa !113, !noalias !232
  %i.ec = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 %i.dh, ptr %i.ec, align 8, !tbaa !73, !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22, !noalias !232
  store ptr %16, ptr %17, align 8, !tbaa !115, !noalias !232
  %i.ed = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %15, ptr %i.ed, align 8, !tbaa !117, !noalias !232
  %i.ee = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %18, ptr %i.ee, align 8, !tbaa !119, !noalias !232
  %i.ef = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr %19, ptr %i.ef, align 8, !tbaa !121, !noalias !232
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.af unwind label %bb.an

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22, !noalias !232
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22, !noalias !232
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22, !noalias !232
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22, !noalias !232
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22, !noalias !232
  %i.eg = load i64, ptr %i.ba, align 8, !tbaa !214
  %i.eh = load i64, ptr %i.df, align 8, !tbaa !56, !noalias !238 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !96, !noalias !238 ; 3 uses
  %i.ek = trunc i64 %i.eg to i32
  %i.el = load i64, ptr %i.dk, align 8, !tbaa !96
  %i.em = icmp eq i64 %i.du, %i.el
  br i1 %i.em, label %bb.ag, label %._crit_edge11.i.i

bb.ag:                                            ; preds = %bb.af
  %.not.i.i = icmp eq i64 %i.ej, 0
  %.not8.i.i = icmp eq i64 %i.eh, %i.de
  %or.cond244.i = select i1 %.not.i.i, i1 %.not8.i.i, i1 false
  br i1 %or.cond244.i, label %._crit_edge11.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.ag
  br label %._crit_edge11.i.i

._crit_edge11.i.i:                                ; preds = %._crit_edge.i.i, %bb.ag, %bb.af
  %.sroa.5223.0.i = phi i64 [ 0, %bb.ag ], [ %i.de, %._crit_edge.i.i ], [ 0, %bb.af ] ; 2 uses
  %i.en = phi i64 [ 0, %bb.ag ], [ %i.ej, %._crit_edge.i.i ], [ %i.ej, %bb.af ]
  %i.eo = phi i64 [ %i.du, %bb.ag ], [ 0, %._crit_edge.i.i ], [ %i.du, %bb.af ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %i.ep = load ptr, ptr %30, align 8, !tbaa !53, !noalias !241
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %.sroa.5223.0.i
  %i.er = load i64, ptr %i.dj, align 8, !tbaa !56, !noalias !241 ; 3 uses
  %i.es = mul nsw i64 %i.er, %i.eo
  %i.et = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.es ; 2 uses
  store ptr %i.et, ptr %14, align 8, !tbaa !100, !alias.scope !241
  %i.eu = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.eh, ptr %i.eu, align 8, !tbaa !73, !alias.scope !241
  %i.ev = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 %i.en, ptr %i.ev, align 8, !tbaa !73, !alias.scope !241
  %i.ew = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr %30, ptr %i.ew, align 8, !tbaa !105, !alias.scope !241
  %i.ex = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i64 %.sroa.5223.0.i, ptr %i.ex, align 8, !tbaa !73, !alias.scope !241
  %i.ey = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i64 %i.eo, ptr %i.ey, align 8, !tbaa !73, !alias.scope !241
  %i.ez = getelementptr inbounds nuw i8, ptr %14, i64 48
  store i64 %i.er, ptr %i.ez, align 8, !tbaa !107, !alias.scope !241
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.fa = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fb = load ptr, ptr %3, align 8, !tbaa !53
  store ptr %i.fb, ptr %i.fa, align 8, !tbaa !110
  %i.fc = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %i.eh, ptr %i.fc, align 8, !tbaa !112
  %i.fd = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 %i.ek, ptr %i.fd, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  store ptr %i.et, ptr %11, align 8, !tbaa !113
  %i.fe = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %i.er, ptr %i.fe, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store ptr %11, ptr %12, align 8, !tbaa !115
  %i.ff = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %10, ptr %i.ff, align 8, !tbaa !131
  %i.fg = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %13, ptr %i.fg, align 8, !tbaa !119
  %i.fh = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %14, ptr %i.fh, align 8, !tbaa !121
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIiiEEKNS_12ArrayWrapperIKS6_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEEEEEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSS_(ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.ah unwind label %bb.ao

bb.ah:                                            ; preds = %._crit_edge11.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %31, i8 0, i64 24, i1 false)
  %i.fi = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !197 ; 2 uses
  %i.fk = load ptr, ptr %21, align 8, !tbaa !200  ; 2 uses
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = ashr exact i64 %i.fn, 3
  %i.fp = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !197
  %i.fr = load ptr, ptr %22, align 8, !tbaa !200
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = ashr exact i64 %i.fu, 3
  %i.fw = add nsw i64 %i.fv, %i.fo                ; 4 uses
  %i.fx = icmp ugt i64 %i.fw, 1152921504606846975
  br i1 %i.fx, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #43
          to label %.noexc100.i unwind label %bb.ap

.noexc100.i:                                      ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.fy = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %.not386.i = icmp eq i64 %i.fw, 0
  br i1 %.not386.i, label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE7reserveEm.exit.i, label %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE11_M_allocateEm.exit.i.i: ; preds = %bb.aj
  %i.fz = shl nuw nsw i64 %i.fw, 3
  %i.ga = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fz) #45
          to label %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit.i.i unwind label %bb.ap ; 4 uses

_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit.i.i: ; preds = %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE11_M_allocateEm.exit.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr %i.ga, ptr %31, align 8, !tbaa !200
  store ptr %i.ga, ptr %i.gb, align 8, !tbaa !197
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.fw
  store ptr %i.gc, ptr %i.fy, align 8, !tbaa !201
  br label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE7reserveEm.exit.i

_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE7reserveEm.exit.i: ; preds = %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit.i.i, %bb.aj
  %i.gd = phi ptr [ %i.ga, %_ZNSt12_Vector_baseIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit.i.i ], [ null, %bb.aj ]
  %i.ge = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  invoke void @_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr %i.gd, ptr %i.fk, ptr %i.fj)
          to label %bb.ak unwind label %bb.aq

bb.ak:                                            ; preds = %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EE7reserveEm.exit.i
  %i.gf = load ptr, ptr %31, align 8, !tbaa !202  ; 2 uses
  %i.gg = load ptr, ptr %i.ge, align 8, !tbaa !202
  %i.gh = load ptr, ptr %22, align 8, !tbaa !202
  %i.gi = load ptr, ptr %i.fp, align 8, !tbaa !202
  %i.gj = ptrtoint ptr %i.gg to i64
  %i.gk = ptrtoint ptr %i.gf to i64
  %i.gl = sub i64 %i.gj, %i.gk
  %i.gm = getelementptr inbounds i8, ptr %i.gf, i64 %i.gl
end_hunk_2
