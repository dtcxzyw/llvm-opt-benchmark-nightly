Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/intersect_other?download=true
inline.NumInlined: 13173
inline.NumDeleted: 5390
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZZN3igl8copyleft4cgalL22intersect_other_helperIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEES7_S8_S8_NS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEES8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EEbRKNS5_10MatrixBaseIT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNSQ_IT3_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseIT4_EERNS1A_IT5_EERNS1A_IT6_EERNS1A_IT7_EERNS1A_IT8_EEENKUlRSt6vectorINS3_10Triangle_3IS4_EESaIS1S_EERS1Q_INS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPS1S_S1U_EENS1W_14ID_FROM_HANDLEEEESaIS23_EEE_clES1V_S26_:bb.a
  %i.bg = select <2 x i1> %i.bf, <2 x double> %i.az, <2 x double> %i.be ; 2 uses
  %i.bh = fcmp olt double %.sroa.speculated.i.i.i, %i.au
  %.sroa.speculated.i8.i.i = select i1 %i.bh, double %i.au, double %.sroa.speculated.i.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, %i.aj
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store <2 x double> %i.bb, ptr %i.ak, align 8
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store double %.sroa.speculated23.i5.i.i, ptr %.sroa.67.0..sroa_idx, align 8
  %.sroa.710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store <2 x double> %i.bg, ptr %.sroa.710.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store double %.sroa.speculated.i8.i.i, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store ptr %.sroa.021.025, ptr %.sroa.10.0..sroa_idx, align 8
  %i.bi = load ptr, ptr %i.ai, align 8, !tbaa !801
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 56 ; 2 uses
  store ptr %i.bj, ptr %i.ai, align 8, !tbaa !801
  %.pre28 = load ptr, ptr %i.i, align 8, !tbaa !198
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit

bb.g:                                             ; preds = %bb.e
  %i.bk = load ptr, ptr %1, align 8, !tbaa !197   ; 5 uses
  %i.bl = ptrtoint ptr %i.aj to i64
  %i.bm = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775800
  br i1 %i.bo, label %bb.h, label %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #43
  unreachable

_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.bp = sdiv exact i64 %i.bn, 56                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 164703072086692425)
  %i.bt = select i1 %i.br, i64 164703072086692425, i64 %i.bs ; 3 uses
  %.not.i.i.i.i5 = icmp ne i64 %i.bt, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i5)
  %i.bu = mul nuw nsw i64 %i.bt, 56
  %i.bv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #45 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn ; 5 uses
  store <2 x double> %i.bb, ptr %i.bw, align 8
  %.sroa.67.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store double %.sroa.speculated23.i5.i.i, ptr %.sroa.67.0..sroa_idx8, align 8
  %.sroa.710.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store <2 x double> %i.bg, ptr %.sroa.710.0..sroa_idx11, align 8
  %.sroa.9.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  store double %.sroa.speculated.i8.i.i, ptr %.sroa.9.0..sroa_idx16, align 8
  %.sroa.10.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  store ptr %.sroa.021.025, ptr %.sroa.10.0..sroa_idx18, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bk, %i.aj
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i ], [ %i.bv, %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i ], [ %i.bk, %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i.i.i.i, i64 56, i1 false), !alias.scope !806
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bx, %i.aj
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !786

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bv, %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.by, %.lr.ph.i.i.i.i.i.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i
  %i.ca = load ptr, ptr %i.i, align 8, !tbaa !198
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.bm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.cc) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i
  store ptr %i.bv, ptr %1, align 8, !tbaa !197
  store ptr %i.bz, ptr %i.ai, align 8, !tbaa !801
  %i.cd = getelementptr inbounds nuw [56 x i8], ptr %i.bv, i64 %i.bt ; 2 uses
  store ptr %i.cd, ptr %i.i, align 8, !tbaa !198
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.f, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i
  %i.ce = phi ptr [ %.pre28, %bb.f ], [ %i.cd, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ]
  %i.cf = phi ptr [ %i.bj, %bb.f ], [ %i.bz, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.021.025, i64 72 ; 2 uses
  %i.ch = load ptr, ptr %i.a, align 8, !tbaa !169
  %.not = icmp eq ptr %i.cg, %i.ch
  br i1 %.not, label %._crit_edge, label %bb.e, !llvm.loop !800
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #30

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !87     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !87
  %i.g = icmp slt i64 %i.f, %i.d                  ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !265 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEE11lower_boundERS9_.exit, label %bb.b, !llvm.loop !13

_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEE11lower_boundERS9_.exit: ; preds = %bb.b
  %i.h = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEE11lower_boundERS9_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !87
  %i.k = icmp slt i64 %i.d, %i.j
  br i1 %i.k, label %.critedge, label %_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEE11lower_boundERS9_.exit, %bb.c
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEE11lower_boundERS9_.exit ], [ %i.c, %bb.a ]
  %i.l = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #45 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.n = load i64, ptr %1, align 8, !tbaa !87
  store i64 %i.n, ptr %i.m, align 8, !tbaa !176
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  %i.p = invoke { ptr, ptr } @_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.d unwind label %_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.d:                                             ; preds = %.critedge
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i4 = icmp ne ptr %i.q, null
  %i.s = icmp eq ptr %i.r, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.u = load i64, ptr %i.m, align 8, !tbaa !87
  %i.v = load i64, ptr %i.t, align 8, !tbaa !87
  %i.w = icmp slt i64 %i.u, %i.v
  br label %.thread.i

.thread.i:                                        ; preds = %bb.f, %bb.e
  %i.x = phi i1 [ %i.w, %bb.f ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.x, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #22
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !99
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !99
  br label %_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_.exit

_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.l) #22
  resume { ptr, i32 } %i.ab

bb.g:                                             ; preds = %bb.d
  tail call void @_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.l) #22
  br label %_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_.exit

_ZNSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_.exit: ; preds = %bb.g, %.thread.i, %bb.c
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.c ], [ %i.l, %.thread.i ], [ %i.q, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.ac
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.au, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !178    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !181
  %i.i = load ptr, ptr %0, align 8, !tbaa !178    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 4 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 24
  %i.o = icmp ugt i64 %i.n, 384307168202282325
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE11_M_allocateEm.exit.i, !prof !179

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #43
  unreachable

_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #45 ; 3 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ac, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ab, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE11_M_allocateEm.exit.i ] ; 4 uses
  %i.q = load i64, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !189
  store i64 %i.q, ptr %.09.i.i.i.i.i, align 8, !tbaa !189
  %i.r = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !190  ; 2 uses
  %i.v = load <2 x ptr>, ptr %i.s, align 8, !tbaa !80
  store <2 x ptr> %i.v, ptr %i.r, align 8, !tbaa !80
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load i32, ptr %i.w, align 4, !tbaa !109
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.w, align 4, !tbaa !109
  br label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.aa = atomicrmw volatile add ptr %i.w, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit: ; preds = %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.ad = load ptr, ptr %0, align 8, !tbaa !178   ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !177 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.ad, %i.af
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ax, %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i ], [ %i.ad, %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !190 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 4 uses
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 4294967297
  %i.al = trunc i64 %i.aj to i32                  ; 2 uses
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ai, align 8, !tbaa !192
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 0, ptr %i.am, align 4, !tbaa !193
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !114
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #22, !inline_history !14
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !114
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #22, !inline_history !14
  br label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = add nsw i32 %i.al, -1
  store i32 %i.au, ptr %i.ai, align 8, !tbaa !109
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.av = atomicrmw volatile add ptr %i.ai, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.al, %bb.k ], [ %i.av, %bb.l ]
  %i.aw = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.aw, label %bb.m, label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i, !prof !179

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #22
  br label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i

_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.i, %.lr.ph.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.ax, %i.af
  br i1 %.not.i.i25, label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !178
  br label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exit

_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exitthread-pre-split, %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit
  %i.ay = phi ptr [ %.pr, %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exitthread-pre-split ], [ %i.ad, %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exit
  %i.az = load ptr, ptr %i.g, align 8, !tbaa !181
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #40
  br label %_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exit, %bb.n
  store ptr %i.p, ptr %0, align 8, !tbaa !178
  %i.bd = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.bd, ptr %i.g, align 8, !tbaa !181
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt4pairIlN4CGAL6ObjectEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit

bb.o:                                             ; preds = %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !177 ; 3 uses
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.bh, %i.f
  br i1 %.not24, label %bb.ag, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = icmp sgt i64 %i.f, 0
  br i1 %i.bi, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt4pairIlN4CGAL6ObjectEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.p
  %i.bj = udiv exact i64 %i.f, 24
  br label %.lr.ph.i.i.i.i.i26

.lr.ph.i.i.i.i.i26:                               ; preds = %_ZNSt4pairIlN4CGAL6ObjectEEaSERKS2_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.cp, %_ZNSt4pairIlN4CGAL6ObjectEEaSERKS2_.exit.i.i.i.i.i ], [ %i.bj, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.co, %_ZNSt4pairIlN4CGAL6ObjectEEaSERKS2_.exit.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.cn, %_ZNSt4pairIlN4CGAL6ObjectEEaSERKS2_.exit.i.i.i.i.i ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %i.bk = load i64, ptr %.0910.i.i.i.i.i, align 8, !tbaa !189
  store i64 %i.bk, ptr %.0811.i.i.i.i.i, align 8, !tbaa !189
  %i.bl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !266
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !266
  %i.bo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !190 ; 4 uses
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !190 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bq, %i.br
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt4pairIlN4CGAL6ObjectEEaSERKS2_.exit.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i26
  %.not7.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not7.i.i.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 3 uses
  %i.bt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i.i.i27 = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i27, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !109
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bs, align 4, !tbaa !109
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bw = atomicrmw volatile add ptr %i.bs, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bo, align 8, !tbaa !190
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.q
  %i.bx = phi ptr [ %i.br, %bb.q ], [ %i.br, %bb.s ], [ %.pr.pre.i.i.i.i.i.i.i.i.i.i, %bb.t ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not8.i.i.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 4 uses
  %i.bz = load atomic i64, ptr %i.by acquire, align 8 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 4294967297
  %i.cb = trunc i64 %i.bz to i32                  ; 2 uses
  br i1 %i.ca, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.by, align 8, !tbaa !192
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  store i32 0, ptr %i.cc, align 4, !tbaa !193
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !114
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8
  tail call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #22, !inline_history !807
  %i.cg = load ptr, ptr %i.bx, align 8, !tbaa !114
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8
  tail call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #22, !inline_history !807
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.cj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i9.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.cj, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ck = add nsw i32 %i.cb, -1
  store i32 %i.ck, ptr %i.by, align 8, !tbaa !109
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.cl = atomicrmw volatile add ptr %i.by, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cb, %bb.x ], [ %i.cl, %bb.y ]
  %i.cm = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cm, label %bb.z, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i, !prof !179

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #22
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.v, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i
  store ptr %i.bq, ptr %i.bo, align 8, !tbaa !190
  br label %_ZNSt4pairIlN4CGAL6ObjectEEaSERKS2_.exit.i.i.i.i.i

_ZNSt4pairIlN4CGAL6ObjectEEaSERKS2_.exit.i.i.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i26
  %i.cn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24 ; 3 uses
  %i.cp = add nsw i64 %.012.i.i.i.i.i, -1
  %i.cq = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.cq, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt4pairIlN4CGAL6ObjectEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit, !llvm.loop !15

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt4pairIlN4CGAL6ObjectEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit: ; preds = %_ZNSt4pairIlN4CGAL6ObjectEEaSERKS2_.exit.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN5boost3anyEEET_:bb.a
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !190
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45
          to label %bb.b unwind label %bb.c       ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !192
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !193
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN5boost3anyELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !114
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.d, align 8, !tbaa !357
  store ptr %i.a, ptr %0, align 8, !tbaa !190
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #22 ; 0 uses
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %1, align 8, !tbaa !355    ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN5boost3anyD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !114
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #22, !inline_history !31
  br label %_ZN5boost3anyD2Ev.exit

_ZN5boost3anyD2Ev.exit:                           ; preds = %bb.d, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 8) #40
  br label %bb.f

bb.f:                                             ; preds = %_ZN5boost3anyD2Ev.exit, %bb.c
  invoke void @__cxa_rethrow() #43
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.n

bb.i:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #41
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN5boost3anyELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN5boost3anyELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !357  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !355  ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN5boost3anyD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !114
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #22, !inline_history !31
  br label %_ZN5boost3anyD2Ev.exit

_ZN5boost3anyD2Ev.exit:                           ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 8) #40
  br label %bb.d

bb.d:                                             ; preds = %_ZN5boost3anyD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN5boost3anyELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15_Sp_counted_ptrIPN5boost3anyELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #16 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt4pairIlN4CGAL6ObjectEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !190  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN4CGAL6ObjectD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !192
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !193
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !114
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !22
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !114
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !22
  br label %_ZN4CGAL6ObjectD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !109
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN4CGAL6ObjectD2Ev.exit, !prof !179

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZN4CGAL6ObjectD2Ev.exit

_ZN4CGAL6ObjectD2Ev.exit:                         ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !181
  %i.f = load ptr, ptr %0, align 8, !tbaa !178    ; 4 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ugt i64 %i.c, %i.i
  br i1 %i.j, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.k = sdiv exact i64 %i.c, 24
  %i.l = icmp ugt i64 %i.k, 384307168202282325
  br i1 %i.l, label %bb.c, label %_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.134) #43
  unreachable

_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #45 ; 3 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.z, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.m, %_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.y, %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %1, %_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE11_M_allocateEm.exit.i ] ; 4 uses
  %i.n = load i64, ptr %.0810.i.i.i.i.i, align 8, !tbaa !189
  store i64 %i.n, ptr %.011.i.i.i.i.i, align 8, !tbaa !189
  %i.o = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !190  ; 2 uses
  %i.s = load <2 x ptr>, ptr %i.p, align 8, !tbaa !80
  store <2 x ptr> %i.s, ptr %i.o, align 8, !tbaa !80
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load i32, ptr %i.t, align 4, !tbaa !109
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !109
  br label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e, %.lr.ph.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i = icmp eq ptr %i.y, %2
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1505

_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit: ; preds = %_ZSt10_ConstructISt4pairIlN4CGAL6ObjectEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.aa = load ptr, ptr %0, align 8, !tbaa !178   ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !177 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit, %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.au, %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i ], [ %i.aa, %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !190 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 4294967297
  %i.ai = trunc i64 %i.ag to i32                  ; 2 uses
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.af, align 8, !tbaa !192
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !193
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !114
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #22, !inline_history !14
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !114
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #22, !inline_history !14
  br label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = add nsw i32 %i.ai, -1
  store i32 %i.ar, ptr %i.af, align 8, !tbaa !109
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.as = atomicrmw volatile add ptr %i.af, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ai, %bb.j ], [ %i.as, %bb.k ]
  %i.at = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.at, label %bb.l, label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i, !prof !179

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #22
  br label %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i

_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i: ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.h, %.lr.ph.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.au, %i.ac
  br i1 %.not.i.i16, label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt4pairIlN4CGAL6ObjectEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !178
  br label %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exit

_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exitthread-pre-split, %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit
  %i.av = phi ptr [ %.pr, %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exitthread-pre-split ], [ %i.aa, %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exit
  %i.aw = load ptr, ptr %i.d, align 8, !tbaa !181
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = sub i64 %i.ax, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.az) #40
  br label %_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt4pairIlN4CGAL6ObjectEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlN4CGAL6ObjectEEEvT_S5_.exit, %bb.m
  store ptr %i.m, ptr %0, align 8, !tbaa !178
  %i.ba = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.c ; 2 uses
  store ptr %i.ba, ptr %i.ab, align 8, !tbaa !177
  store ptr %i.ba, ptr %i.d, align 8, !tbaa !181
  br label %_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE15_M_erase_at_endEPS3_.exit

bb.n:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !177 ; 3 uses
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.h                     ; 4 uses
  %.not = icmp ult i64 %i.be, %i.c
  br i1 %.not, label %_ZSt9__advanceIPKSt4pairIlN4CGAL6ObjectEElEvRT_T0_St26random_access_iterator_tag.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = icmp sgt i64 %i.c, 0
  br i1 %i.bf, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4copyIPKSt4pairIlN4CGAL6ObjectEEPS3_ET0_T_S8_S7_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.o
  %i.bg = udiv exact i64 %i.c, 24
  br label %.lr.ph.i.i.i.i.i17

.lr.ph.i.i.i.i.i17:                               ; preds = %_ZNSt4pairIlN4CGAL6ObjectEEaSERKS2_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.cm, %_ZNSt4pairIlN4CGAL6ObjectEEaSERKS2_.exit.i.i.i.i.i ], [ %i.bg, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.cl, %_ZNSt4pairIlN4CGAL6ObjectEEaSERKS2_.exit.i.i.i.i.i ], [ %i.f, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ck, %_ZNSt4pairIlN4CGAL6ObjectEEaSERKS2_.exit.i.i.i.i.i ], [ %1, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %i.bh = load i64, ptr %.0910.i.i.i.i.i, align 8, !tbaa !189
  store i64 %i.bh, ptr %.0811.i.i.i.i.i, align 8, !tbaa !189
  %i.bi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !266
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !266
  %i.bl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !190 ; 4 uses
  %i.bo = load ptr, ptr %i.bl, align 8, !tbaa !190 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt4pairIlN4CGAL6ObjectEEaSERKS2_.exit.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i17
  %.not7.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not7.i.i.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 3 uses
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i.i.i18 = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i18, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !109
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !109
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bt = atomicrmw volatile add ptr %i.bp, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bl, align 8, !tbaa !190
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.p
  %i.bu = phi ptr [ %i.bo, %bb.p ], [ %i.bo, %bb.r ], [ %.pr.pre.i.i.i.i.i.i.i.i.i.i, %bb.s ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not8.i.i.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 4 uses
  %i.bw = load atomic i64, ptr %i.bv acquire, align 8 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 4294967297
  %i.by = trunc i64 %i.bw to i32                  ; 2 uses
  br i1 %i.bx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.bv, align 8, !tbaa !192
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store i32 0, ptr %i.bz, align 4, !tbaa !193
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !114
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #22, !inline_history !1506
  %i.cd = load ptr, ptr %i.bu, align 8, !tbaa !114
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  tail call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #22, !inline_history !1506
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.cg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i9.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.cg, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ch = add nsw i32 %i.by, -1
  store i32 %i.ch, ptr %i.bv, align 8, !tbaa !109
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.ci = atomicrmw volatile add ptr %i.bv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.by, %bb.w ], [ %i.ci, %bb.x ]
  %i.cj = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cj, label %bb.y, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i, !prof !179

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #22
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.u, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !190
  br label %_ZNSt4pairIlN4CGAL6ObjectEEaSERKS2_.exit.i.i.i.i.i

_ZNSt4pairIlN4CGAL6ObjectEEaSERKS2_.exit.i.i.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i17
  %i.ck = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.cl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24 ; 2 uses
  %i.cm = add nsw i64 %.012.i.i.i.i.i, -1
  %i.cn = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.cn, label %.lr.ph.i.i.i.i.i17, label %_ZSt4copyIPKSt4pairIlN4CGAL6ObjectEEPS3_ET0_T_S8_S7_.exit.loopexit, !llvm.loop !15

end_hunk_1
begin_hunk_2_@_ZN4CGAL8internal18Converting_visitorINS_19Cartesian_converterINS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEENS3_INS_11Interval_ntILb0EEEEENS_12NT_converterISG_SJ_EEEESt8optionalISt7variantIJNS_7Point_3ISK_EENS_9Segment_3ISK_EENS_10Triangle_3ISK_EESt6vectorISR_SaISR_EEEEEEclINSQ_ISH_EEEEvRKSW_IT_SaIS14_EE:bb.a
  unreachable

_ZNKSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.k
  %i.br = sdiv exact i64 %i.bp, 48                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 192153584101141162)
  %i.bv = select i1 %i.bt, i64 192153584101141162, i64 %i.bu ; 3 uses
  %.not.i.i.i.i14 = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i14)
  %i.bw = mul nuw nsw i64 %i.bv, 48
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #45
          to label %.noexc16 unwind label %.loopexit ; 5 uses

.noexc16:                                         ; preds = %_ZNKSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp ; 3 uses
  store <2 x double> %i.au, ptr %i.by, align 16
  %.sroa.6.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store <2 x double> %i.bb, ptr %.sroa.6.0..sroa_idx20, align 16
  %.sroa.7.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  store <2 x double> %i.bi, ptr %.sroa.7.0..sroa_idx22, align 16
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.ao
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc16, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i.i ], [ %i.bx, %.noexc16 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i.i ], [ %i.bm, %.noexc16 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.012.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(48) %.0911.i.i.i.i.i.i, i64 48, i1 false), !alias.scope !2785
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bz, %i.ao
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !46

_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc16
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bx, %.noexc16 ], [ %i.ca, %.lr.ph.i.i.i.i.i.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bp) #40
  br label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.bx, ptr %5, align 8, !tbaa !410
  store ptr %i.cb, ptr %i.o, align 8, !tbaa !441
  %i.cc = getelementptr inbounds nuw [48 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.cc, ptr %i.i, align 8, !tbaa !411
  br label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE9push_backEOS6_.exit: ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, %bb.j
  %i.cd = phi ptr [ %i.cb, %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ], [ %i.bl, %bb.j ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.025.030, i64 192 ; 2 uses
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !450
  %.not = icmp eq ptr %i.ce, %i.cf
  br i1 %.not, label %._crit_edge, label %bb.h, !llvm.loop !2783

.loopexit:                                        ; preds = %bb.h, %.noexc11, %.noexc12, %_ZNKSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEEaSIRSE_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISG_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESK_ISt6__and_IJSt9is_scalarISF_ESL_ISF_NSt5decayISO_E4typeEEEEESt16is_constructibleISF_JSO_EESt13is_assignableIRSF_SO_EEERSG_E4typeEOSO_.exit: ; preds = %._ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEEaSIRSE_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISG_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESK_ISt6__and_IJSt9is_scalarISF_ESL_ISF_NSt5decayISO_E4typeEEEEESt16is_constructibleISF_JSO_EESt13is_assignableIRSF_SO_EEERSG_E4typeEOSO_.exit_crit_edge, %_ZNSt19_Optional_base_implISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEESt14_Optional_baseISF_Lb0ELb0EEE12_M_constructIJRSE_EEEvDpOT_.exit.i
  %i.cg = phi ptr [ %.pre33, %._ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEEaSIRSE_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISG_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESK_ISt6__and_IJSt9is_scalarISF_ESL_ISF_NSt5decayISO_E4typeEEEEESt16is_constructibleISF_JSO_EESt13is_assignableIRSF_SO_EEERSG_E4typeEOSO_.exit_crit_edge ], [ %i.w, %_ZNSt19_Optional_base_implISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEESt14_Optional_baseISF_Lb0ELb0EEE12_M_constructIJRSE_EEEvDpOT_.exit.i ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEEaSIRSE_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISG_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESK_ISt6__and_IJSt9is_scalarISF_ESL_ISF_NSt5decayISO_E4typeEEEEESt16is_constructibleISF_JSO_EESt13is_assignableIRSF_SO_EEERSG_E4typeEOSO_.exit
  %i.ch = load ptr, ptr %i.i, align 8, !tbaa !411
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.ck) #40
  br label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EED2Ev.exit

_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EED2Ev.exit: ; preds = %_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEEaSIRSE_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISG_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESK_ISt6__and_IJSt9is_scalarISF_ESL_ISF_NSt5decayISO_E4typeEEEEESt16is_constructibleISF_JSO_EESt13is_assignableIRSF_SO_EEERSG_E4typeEOSO_.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.o:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.g
  %.pn = phi { ptr, i32 } [ %i.an, %bb.g ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.cl = load ptr, ptr %5, align 8, !tbaa !410   ; 3 uses
  %.not.i.i.i17 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i17, label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EED2Ev.exit18, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !411
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cl to i64
  %i.cq = sub i64 %i.co, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cq) #40
  br label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EED2Ev.exit18

_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EED2Ev.exit18: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 16 dereferenceable(145) ptr @_ZNSt7variantIJN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEaSIRSD_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS6_S8_SA_SD_EE4typeEE18is_constructible_vISM_SJ_E15is_assignable_vIRSM_SJ_EERSE_E4typeESK_(ptr noundef nonnull align 16 dereferenceable(145) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.b = load i8, ptr %i.a, align 16, !tbaa !403
  %i.c = icmp eq i8 %i.b, 3
  br i1 %i.c, label %_ZSt3getILm3EJN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSI_.exit, label %bb.b

_ZSt3getILm3EJN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSI_.exit: ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EEaSERKS8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 0 uses
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !441  ; 3 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !410    ; 3 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = sdiv exact i64 %i.j, 48
  %i.l = icmp ugt i64 %i.k, 192153584101141162
  br i1 %i.l, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !179

.noexc.i.i:                                       ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #43
  unreachable

_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #45
  %.pre = load ptr, ptr %1, align 8, !tbaa !420
  %.pre10 = load ptr, ptr %i.e, align 8, !tbaa !420
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.b
  %i.n = phi ptr [ %i.f, %bb.b ], [ %.pre10, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.o = phi ptr [ %i.g, %bb.b ], [ %.pre, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.p = phi ptr [ null, %bb.b ], [ %i.m, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.j
  %.not7.i.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EEC2ERKS8_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i ], [ %i.p, %bb.d ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.o, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.09.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.04.08.i.i.i.i.i, i64 48, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %i.n
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EEC2ERKS8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !47

_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EEC2ERKS8_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %bb.d ], [ %i.s, %.lr.ph.i.i.i.i.i ]
  %i.t = load i8, ptr %i.a, align 16, !tbaa !403
  %i.u = icmp eq i8 %i.t, 3
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EED2Ev.exit

bb.e:                                             ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EEC2ERKS8_.exit
  %i.v = load ptr, ptr %0, align 16, !tbaa !410   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 16, !tbaa !411
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #40
  br label %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EED2Ev.exit

_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EEC2ERKS8_.exit, %bb.e, %bb.f
  store ptr %i.p, ptr %0, align 16, !tbaa !410
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ab, align 8, !tbaa !441
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.q, ptr %i.ac, align 16, !tbaa !411
  store i8 3, ptr %i.a, align 16, !tbaa !403
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EED2Ev.exit, %_ZSt3getILm3EJN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSI_.exit
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EEaSERKS8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !441
  %i.c = load ptr, ptr %1, align 8, !tbaa !410    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !411
  %i.i = load ptr, ptr %0, align 8, !tbaa !410    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 48
  %i.o = icmp ugt i64 %i.n, 192153584101141162
  br i1 %i.o, label %bb.d, label %.lr.ph.i.i.i.i.preheader.i, !prof !179

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #43
  unreachable

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #45 ; 3 uses
  %i.p = add i64 %i.d, -48
  %i.q = sub i64 %i.p, %i.e
  %.fr.i = freeze i64 %i.q                        ; 2 uses
  %i.r = urem i64 %.fr.i, 48
  %i.s = add i64 %.fr.i, 48
  %i.t = sub i64 %i.s, %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr align 16 %i.c, i64 %i.t, i1 false)
  %3 = load ptr, ptr %0, align 8, !tbaa !410      ; 3 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !411
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %3 to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.x) #40
  br label %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %.lr.ph.i.i.i.i.preheader.i, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !410
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.y, ptr %i.g, align 8, !tbaa !411
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit

bb.f:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !441
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ac, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp sgt i64 %i.f, 48
  br i1 %i.ad, label %bb.h, label %bb.i, !prof !269

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 16 %i.i, ptr align 16 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit

bb.i:                                             ; preds = %bb.g
  %i.ae = icmp eq i64 %i.f, 48
  br i1 %i.ae, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.i, ptr noundef nonnull align 16 dereferenceable(48) %i.c, i64 48, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit

bb.k:                                             ; preds = %bb.f
  %i.af = icmp sgt i64 %i.ac, 48
  br i1 %i.af, label %bb.l, label %bb.m, !prof !269

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 16 %i.i, ptr align 16 %i.c, i64 %i.ac, i1 false)
  br label %_ZSt4copyIPN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEES7_ET0_T_S9_S8_.exit

bb.m:                                             ; preds = %bb.k
  %i.ag = icmp eq i64 %i.ac, 48
  br i1 %i.ag, label %bb.n, label %_ZSt4copyIPN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEES7_ET0_T_S9_S8_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.i, ptr noundef nonnull align 16 dereferenceable(48) %i.c, i64 48, i1 false)
  br label %_ZSt4copyIPN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEES7_ET0_T_S9_S8_.exit

_ZSt4copyIPN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEES7_ET0_T_S9_S8_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ah = load ptr, ptr %1, align 8, !tbaa !410
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !441 ; 2 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !410
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.am ; 2 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !441 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEES7_ET0_T_S9_S8_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %i.ai, %_ZSt4copyIPN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEES7_ET0_T_S9_S8_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i ], [ %i.an, %_ZSt4copyIPN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEES7_ET0_T_S9_S8_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.011.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(48) %.0810.i.i.i.i, i64 48, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 48 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 48
  %.not.i.i.i.i = icmp eq ptr %i.ap, %i.ao
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2786

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEES7_ET0_T_S9_S8_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEESaIS6_EE13_M_deallocateEPS6_m.exit
  %i.ar = load ptr, ptr %0, align 8, !tbaa !410
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.at, align 8, !tbaa !441
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE14_M_move_assignEOSG_(ptr noundef nonnull align 16 dereferenceable(161) %0, ptr noundef nonnull align 16 dereferenceable(161) %1) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.823, align 8            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.b = load i8, ptr %i.a, align 16, !tbaa !396, !range !77, !noundef !78
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.e = load i8, ptr %i.d, align 16, !range !77
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %0, ptr %2, align 8, !tbaa !457
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJN4CGAL7Point_3INS4_16Simple_cartesianINS4_11Interval_ntILb0EEEEEEENS4_9Segment_3IS9_EENS4_10Triangle_3IS9_EESt6vectorISA_SaISA_EEEEaSEOSI_EUlOT_T0_E_JRSt7variantIJSA_SC_SE_SH_EEEEDcOSM_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 16 dereferenceable(145) %1)
          to label %_ZNSt7variantIJN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEaSEOSE_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #41
  unreachable

_ZNSt7variantIJN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEaSEOSE_.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE8_M_resetEv.exit

bb.d:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store i8 -1, ptr %i.i, align 16, !tbaa !403
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.k = load i8, ptr %i.j, align 16, !tbaa !403
  switch i8 %i.k, label %bb.j [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(161) %0, ptr noundef nonnull align 16 dereferenceable(145) %1, i64 48, i1 false)
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE12_M_constructIJSF_EEEvDpOT_.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(161) %0, ptr noundef nonnull align 16 dereferenceable(145) %1, i64 96, i1 false)
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE12_M_constructIJSF_EEEvDpOT_.exit

bb.h:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(161) %0, ptr noundef nonnull align 16 dereferenceable(145) %1, i64 144, i1 false)
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE12_M_constructIJSF_EEEvDpOT_.exit

bb.i:                                             ; preds = %bb.e
  %i.l = load <2 x ptr>, ptr %1, align 16, !tbaa !420
  store <2 x ptr> %i.l, ptr %0, align 16, !tbaa !420
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !411
  store ptr %i.o, ptr %i.m, align 16, !tbaa !411
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(145) %1, i8 0, i64 24, i1 false)
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE12_M_constructIJSF_EEEvDpOT_.exit

bb.j:                                             ; preds = %bb.e
  unreachable

_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE12_M_constructIJSF_EEEvDpOT_.exit: ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %i.p = load i8, ptr %i.j, align 16, !tbaa !403
  store i8 %i.p, ptr %i.i, align 16, !tbaa !403
  store i8 1, ptr %i.a, align 16, !tbaa !396
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE8_M_resetEv.exit

bb.k:                                             ; preds = %bb.d
  store i8 0, ptr %i.a, align 16, !tbaa !396
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.r = load i8, ptr %i.q, align 16
  %i.s = icmp eq i8 %i.r, 3
  %or.cond.i = select i1 %i.c, i1 %i.s, i1 false
  br i1 %or.cond.i, label %bb.l, label %_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE8_M_resetEv.exit

bb.l:                                             ; preds = %bb.k
  %i.t = load ptr, ptr %0, align 16, !tbaa !410   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE8_M_resetEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 16, !tbaa !411
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #40
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE8_M_resetEv.exit

_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE8_M_resetEv.exit: ; preds = %bb.m, %bb.l, %bb.k, %_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE12_M_constructIJSF_EEEvDpOT_.exit, %_ZNSt7variantIJN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS5_EENS0_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEaSEOSE_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJN4CGAL7Point_3INS4_16Simple_cartesianINS4_11Interval_ntILb0EEEEEEENS4_9Segment_3IS9_EENS4_10Triangle_3IS9_EESt6vectorISA_SaISA_EEEEaSEOSI_EUlOT_T0_E_JRSt7variantIJSA_SC_SE_SH_EEEEDcOSM_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 16 dereferenceable(145) %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.b = load i8, ptr %i.a, align 16, !tbaa !403
  %i.c = load ptr, ptr %0, align 8, !tbaa !457    ; 18 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 8 uses
  %i.e = load i8, ptr %i.d, align 16, !tbaa !403  ; 4 uses
  switch i8 %i.b, label %bb.q [
    i8 0, label %bb.b
    i8 1, label %bb.f
    i8 2, label %bb.j
    i8 3, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  switch i8 %i.e, label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEJS8_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i [
    i8 0, label %bb.c
    i8 3, label %bb.d
  ]

end_hunk_2
begin_hunk_3_@_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN4CGAL7Point_3INS2_16Simple_cartesianIN5boost14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEEESt6vectorISJ_SaISJ_EEEEPSJ_ET0_T_SS_SR_:bb.a

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.i: ; preds = %.noexc
  %i.c = getelementptr inbounds nuw i8, ptr %.016, i64 128 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.015, i64 128
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.c, ptr noundef nonnull align 16 dereferenceable(64) %i.d)
          to label %_ZSt10_ConstructIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEJRKSH_EEvPT_DpOT0_.exit unwind label %.preheader.preheader.i.i.i.i.i.i

.preheader.preheader.i.i.i.i.i.i:                 ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.i, %.noexc
  %.lcssa.ph.i.i.i.i.i.i = phi ptr [ %i.c, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.i ], [ %i.a, %.noexc ]
  %lpad.thr_comm.i.i.i.i.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i
  %i.e = phi ptr [ %i.f, %.preheader.i.i.i.i.i.i ], [ %.lcssa.ph.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i ]
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -64 ; 3 uses
  tail call void @_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %i.f) #22
  %i.g = icmp eq ptr %i.f, %.016
  br i1 %i.g, label %.body, label %.preheader.i.i.i.i.i.i

_ZSt10_ConstructIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEJRKSH_EEvPT_DpOT0_.exit: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.08.015, i64 192 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.016, i64 192 ; 2 uses
  %.not = icmp eq ptr %i.h, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2835

bb.b:                                             ; preds = %.lr.ph
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %.preheader.i.i.i.i.i.i, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.b ], [ %lpad.thr_comm.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ]
  %i.k = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.l = tail call ptr @__cxa_begin_catch(ptr %i.k) #22 ; 0 uses
  %.not4.i.i = icmp eq ptr %2, %.016
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEEvT_SJ_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.body, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.m, %.lr.ph.i.i ], [ %2, %.body ] ; 2 uses
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %.05.i.i) #22
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 192 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, %.016
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEEvT_SJ_.exit, label %.lr.ph.i.i, !llvm.loop !58

_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEEvT_SJ_.exit: ; preds = %.lr.ph.i.i, %.body
  invoke void @__cxa_rethrow() #43
          to label %bb.f unwind label %bb.c

._crit_edge:                                      ; preds = %_ZSt10_ConstructIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEJRKSH_EEvPT_DpOT0_.exit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.i, %_ZSt10_ConstructIN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEJRKSH_EEvPT_DpOT0_.exit ]
  ret ptr %.0.lcssa

bb.c:                                             ; preds = %_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEEvT_SJ_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.n

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #41
  unreachable

bb.f:                                             ; preds = %_ZSt8_DestroyIPN4CGAL7Point_3INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEEEvT_SJ_.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(25) ptr @_ZNSt7variantIJN4CGAL7Point_3INS0_5EpeckEEENS0_9Segment_3IS2_EENS0_10Triangle_3IS2_EESt6vectorIS3_SaIS3_EEEEaSIRSA_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS3_S5_S7_SA_EE4typeEE18is_constructible_vISJ_SG_E15is_assignable_vIRSJ_SG_EERSB_E4typeESH_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.862, align 1            ; 3 uses
  %3 = alloca %"class.std::vector.838", align 8   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !385
  %i.c = icmp eq i8 %i.b, 3
  br i1 %i.c, label %_ZSt3getILm3EJN4CGAL7Point_3INS0_5EpeckEEENS0_9Segment_3IS2_EENS0_10Triangle_3IS2_EESt6vectorIS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSF_.exit, label %bb.b

_ZSt3getILm3EJN4CGAL7Point_3INS0_5EpeckEEENS0_9Segment_3IS2_EENS0_10Triangle_3IS2_EESt6vectorIS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSF_.exit: ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 0 uses
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !466  ; 3 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !467    ; 3 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ugt i64 %i.j, 9223372036854775800
  br i1 %i.k, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpeckEEEE8allocateEmPKv.exit.i.i.i.i, !prof !179

.noexc.i.i:                                       ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #43
  unreachable

_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpeckEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #45
  %.pre = load ptr, ptr %1, align 8, !tbaa !405
  %.pre10 = load ptr, ptr %i.e, align 8, !tbaa !405
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpeckEEEE8allocateEmPKv.exit.i.i.i.i, %bb.b
  %i.m = phi ptr [ %i.f, %bb.b ], [ %.pre10, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpeckEEEE8allocateEmPKv.exit.i.i.i.i ] ; 3 uses
  %i.n = phi ptr [ %i.g, %bb.b ], [ %.pre, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpeckEEEE8allocateEmPKv.exit.i.i.i.i ] ; 3 uses
  %i.o = phi ptr [ null, %bb.b ], [ %i.l, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_5EpeckEEEE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.o, ptr %3, align 8, !tbaa !467
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.j ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.q, ptr %i.r, align 8, !tbaa !407
  %.not7.i.i.i.i.i = icmp eq ptr %i.n, %i.m
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.d
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.us.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.us.i:                              ; preds = %.lr.ph.i.i.i.i.preheader.i, %.lr.ph.i.i.i.i.us.i
  %.09.i.i.i.i.us.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.us.i ], [ %i.o, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.us.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.us.i ], [ %i.n, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %i.t = load ptr, ptr %.sroa.04.08.i.i.i.i.us.i, align 8, !tbaa !207 ; 2 uses
  store ptr %i.t, ptr %.09.i.i.i.i.us.i, align 8, !tbaa !207
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = atomicrmw add ptr %i.u, i32 1 monotonic, align 4 ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.us.i, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.us.i, i64 8 ; 2 uses
  %.not.i.i.i.i.us.i = icmp eq ptr %i.w, %i.m
  br i1 %.not.i.i.i.i.us.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.us.i, !llvm.loop !52

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.preheader.i, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.o, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.n, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %i.y = load ptr, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !207 ; 2 uses
  store ptr %i.y, ptr %.09.i.i.i.i.i, align 8, !tbaa !207
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.aa = load atomic i32, ptr %i.z monotonic, align 4
  %i.ab = add nsw i32 %i.aa, 1
  store atomic i32 %i.ab, ptr %i.z monotonic, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, %i.m
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !52

_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EEC2ERKS5_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.us.i, %bb.d
  %i.ae = phi ptr [ %i.o, %bb.d ], [ %i.x, %.lr.ph.i.i.i.i.us.i ], [ %i.ad, %.lr.ph.i.i.i.i.i ] ; 2 uses
  store ptr %i.ae, ptr %i.p, align 8, !tbaa !466
  %i.af = load i8, ptr %i.a, align 8, !tbaa !385
  %.not.i.i.i = icmp eq i8 %i.af, -1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EED2Ev.exit, label %bb.e, !prof !179

bb.e:                                             ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EEC2ERKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS3_5EpeckEEENS3_9Segment_3IS5_EENS3_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_SA_SD_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(25) %0)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EED2Ev.exit: ; preds = %.noexc, %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EEC2ERKS5_.exit
  store ptr %i.o, ptr %0, align 8, !tbaa !467
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !466
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.q, ptr %i.ah, align 8, !tbaa !407
  store i8 3, ptr %i.a, align 8, !tbaa !385
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %i.ai

bb.g:                                             ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EED2Ev.exit, %_ZSt3getILm3EJN4CGAL7Point_3INS0_5EpeckEEENS0_9Segment_3IS2_EENS0_10Triangle_3IS2_EESt6vectorIS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSF_.exit
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.am, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !466  ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !467    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !407
  %i.j = load ptr, ptr %0, align 8, !tbaa !467    ; 5 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.o, label %bb.d, label %.lr.ph.i.i.i.i.preheader.i, !prof !179

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #43
  unreachable

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #45 ; 4 uses
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.us.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.us.i:                              ; preds = %.lr.ph.i.i.i.i.preheader.i, %.lr.ph.i.i.i.i.us.i
  %.09.i.i.i.i.us.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.us.i ], [ %2, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.us.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.us.i ], [ %i.c, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %i.q = load ptr, ptr %.sroa.04.08.i.i.i.i.us.i, align 8, !tbaa !207 ; 2 uses
  store ptr %i.q, ptr %.09.i.i.i.i.us.i, align 8, !tbaa !207
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = atomicrmw add ptr %i.r, i32 1 monotonic, align 4 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.us.i, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.us.i, i64 8
  %.not.i.i.i.i.us.i = icmp eq ptr %i.t, %i.b
  br i1 %.not.i.i.i.i.us.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, label %.lr.ph.i.i.i.i.us.i, !llvm.loop !52

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.preheader.i, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %2, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.c, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %i.v = load ptr, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !207 ; 2 uses
  store ptr %i.v, ptr %.09.i.i.i.i.i, align 8, !tbaa !207
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.x = load atomic i32, ptr %i.w monotonic, align 4
  %i.y = add nsw i32 %i.x, 1
  store atomic i32 %i.y, ptr %i.w monotonic, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !52

_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.us.i
  %i.ab = load ptr, ptr %0, align 8, !tbaa !467   ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !466 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.au, %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i ], [ %i.ab, %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit ] ; 3 uses
  %i.ae = load ptr, ptr %.05.i.i, align 8, !tbaa !207 ; 4 uses
  %.not.i.i.i.i.i25 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i25, label %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i = icmp eq i8 %i.af, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %i.ah = load atomic i32, ptr %i.ag monotonic, align 4 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !114
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(12) %i.ae) #22, !inline_history !51
  br label %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.am = add nsw i32 %i.ah, -1
  store atomic i32 %i.am, ptr %i.ag monotonic, align 4
  br label %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i

bb.i:                                             ; preds = %bb.e
  br i1 %i.ai, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = atomicrmw sub ptr %i.ag, i32 1 release, align 4
  %i.ao = icmp eq i32 %i.an, 1
  br i1 %i.ao, label %bb.k, label %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i

bb.k:                                             ; preds = %bb.j, %bb.i
  fence acquire
  %i.ap = load ptr, ptr %.05.i.i, align 8, !tbaa !207 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !114
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(12) %i.ap) #22, !inline_history !51
  br label %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i

_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.h, %bb.g, %.lr.ph.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i26 = icmp eq ptr %i.au, %i.ad
  br i1 %.not.i.i26, label %_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEEEvT_S5_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !50

_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEEEvT_S5_.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !467
  br label %_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEEEvT_S5_.exit

_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEEEvT_S5_.exitthread-pre-split, %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit
  %i.av = phi ptr [ %.pr, %_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEEEvT_S5_.exitthread-pre-split ], [ %i.ab, %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEEEvT_S5_.exit
  %i.aw = load ptr, ptr %i.h, align 8, !tbaa !407
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = sub i64 %i.ax, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.az) #40
  br label %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEEEvT_S5_.exit, %bb.m
  store ptr %2, ptr %0, align 8, !tbaa !467
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.ba, ptr %i.h, align 8, !tbaa !407
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit

bb.n:                                             ; preds = %bb.b
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !466 ; 3 uses
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.be, %i.f
  br i1 %.not24, label %bb.ad, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = icmp sgt i64 %i.g, 0
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i27, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4CGAL7Point_3INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

.lr.ph.i.i.i.i.i27:                               ; preds = %bb.o, %_ZN4CGAL7Point_3INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ci, %_ZN4CGAL7Point_3INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i ], [ %i.g, %bb.o ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ch, %_ZN4CGAL7Point_3INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i ], [ %i.j, %bb.o ] ; 5 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.cg, %_ZN4CGAL7Point_3INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i ], [ %i.c, %bb.o ] ; 3 uses
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bg, 0
  %i.bh = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !207
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i

_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i:   ; preds = %.lr.ph.i.i.i.i.i27
  %i.bj = atomicrmw add ptr %i.bi, i32 1 monotonic, align 4 ; 0 uses
  %i.bk = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !207 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4CGAL7Point_3INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i, label %bb.r

_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i27
  %i.bl = load atomic i32, ptr %i.bi monotonic, align 4
  %i.bm = add nsw i32 %i.bl, 1
  store atomic i32 %i.bm, ptr %i.bi monotonic, align 4
  %i.bn = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !207 ; 4 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZN4CGAL7Point_3INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i:                          ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.bp = load atomic i32, ptr %i.bo monotonic, align 4 ; 2 uses
  %i.bq = icmp eq i32 %i.bp, 1
  br i1 %i.bq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.thread.i.i.i.i.i.i.i.i
  %i.br = load ptr, ptr %i.bn, align 8, !tbaa !114
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  tail call void %i.bt(ptr noundef nonnull align 8 dereferenceable(12) %i.bn) #22, !inline_history !2836
  br label %_ZN4CGAL7Point_3INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i

bb.q:                                             ; preds = %.thread.i.i.i.i.i.i.i.i
  %i.bu = add nsw i32 %i.bp, -1
  store atomic i32 %i.bu, ptr %i.bo monotonic, align 4
  br label %_ZN4CGAL7Point_3INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i

bb.r:                                             ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bw = load atomic i32, ptr %i.bv monotonic, align 4
  %i.bx = icmp eq i32 %i.bw, 1
  br i1 %i.bx, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = atomicrmw sub ptr %i.bv, i32 1 release, align 4
  %i.bz = icmp eq i32 %i.by, 1
  br i1 %i.bz, label %bb.t, label %_ZN4CGAL7Point_3INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i

bb.t:                                             ; preds = %bb.s, %bb.r
  fence acquire
  %i.ca = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !207 ; 3 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %_ZN4CGAL7Point_3INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cc = load ptr, ptr %i.ca, align 8, !tbaa !114
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  tail call void %i.ce(ptr noundef nonnull align 8 dereferenceable(12) %i.ca) #22, !inline_history !2836
  br label %_ZN4CGAL7Point_3INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i

_ZN4CGAL7Point_3INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t, %bb.s, %bb.q, %bb.p, %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i, %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i
  %i.cf = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !207
  store ptr %i.cf, ptr %.0811.i.i.i.i.i, align 8, !tbaa !207
  %i.cg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 3 uses
  %i.ci = add nsw i64 %.012.i.i.i.i.i, -1
  %i.cj = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.cj, label %.lr.ph.i.i.i.i.i27, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4CGAL7Point_3INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit, !llvm.loop !2837

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4CGAL7Point_3INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit: ; preds = %_ZN4CGAL7Point_3INS_5EpeckEEaSERKS2_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.bb, align 8, !tbaa !405
  %.pre60 = ptrtoint ptr %i.ch to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4CGAL7Point_3INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4CGAL7Point_3INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4CGAL7Point_3INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit, %bb.o
  %.pre-phi61 = phi i64 [ %.pre60, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4CGAL7Point_3INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit ], [ %i.l, %bb.o ]
  %i.ck = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4CGAL7Point_3INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit ], [ %i.bc, %bb.o ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.ch, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4CGAL7Point_3INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit ], [ %i.j, %bb.o ]
  %.not4.i.i28 = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.ck
  br i1 %.not4.i.i28, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i29.preheader

.lr.ph.i.i29.preheader:                           ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4CGAL7Point_3INS2_5EpeckEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit
  %i.cl = sub i64 %.pre-phi61, %i.l
  %i.cm = getelementptr inbounds i8, ptr %i.j, i64 %i.cl
  br label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %.lr.ph.i.i29.preheader, %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i32
  %.sroa.01.05.i.i = phi ptr [ %i.dd, %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i32 ], [ %i.cm, %.lr.ph.i.i29.preheader ] ; 3 uses
  %i.cn = load ptr, ptr %.sroa.01.05.i.i, align 8, !tbaa !207 ; 4 uses
  %.not.i.i.i.i.i30 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i.i.i30, label %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i32, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i29
  %i.co = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i31 = icmp eq i8 %i.co, 0
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 3 uses
  %i.cq = load atomic i32, ptr %i.cp monotonic, align 4 ; 2 uses
  %i.cr = icmp eq i32 %i.cq, 1                    ; 2 uses
end_hunk_3
