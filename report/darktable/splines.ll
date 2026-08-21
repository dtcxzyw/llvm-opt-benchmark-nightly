inline.NumInlined: 1094
inline.NumDeleted: 285
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_T0_:bb.a
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 192
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 12
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.019.i.idx = phi i64 [ 12, %.lr.ph.i ], [ %.sroa.0.019.i.add, %bb.g ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.019.i.ptr, %bb.g ] ; 4 uses
  %.sroa.0.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.019.i.idx ; 5 uses
  %i.e = load float, ptr %.sroa.0.019.i.ptr, align 4, !tbaa !31 ; 4 uses
  %i.f = load float, ptr %0, align 4, !tbaa !31
  %i.g = fcmp reassoc nsz arcp contract afn olt float %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload = load <3 x float>, ptr %.sroa.0.019.i.ptr, align 4
  %i.h = icmp samesign ugt i64 %.sroa.0.019.i.idx, 12
  br i1 %i.h, label %bb.d, label %bb.e, !prof !162

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !96
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i: ; preds = %bb.e, %bb.d
  store <3 x float> %.sroa.0.0.copyload, ptr %0, align 4
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 16
  %i.j = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 4
  %i.k = load float, ptr %.pn18.i, align 4, !tbaa !31
  %i.l = fcmp reassoc nsz arcp contract afn olt float %i.e, %i.k
  br i1 %i.l, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.0.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn18.i, %bb.f ] ; 4 uses
  %.sroa.06.010.i.i = phi ptr [ %.sroa.0.011.i.i, %.lr.ph.i.i ], [ %.sroa.0.019.i.ptr, %bb.f ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.06.010.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.011.i.i, i64 12, i1 false), !tbaa.struct !96
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i, i64 -12 ; 2 uses
  %i.m = load float, ptr %.sroa.0.0.i.i, align 4, !tbaa !31
  %i.n = fcmp reassoc nsz arcp contract afn olt float %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_T0_.exit.i, !llvm.loop !163

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.06.0.lcssa.i.i = phi ptr [ %.sroa.0.019.i.ptr, %bb.f ], [ %.sroa.0.011.i.i, %.lr.ph.i.i ] ; 2 uses
  store float %i.e, ptr %.sroa.06.0.lcssa.i.i, align 4, !tbaa !34
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i, i64 4
  store i64 %i.j, ptr %.sroa.5.0..sroa_idx5.i.i, align 4
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i
  %.sroa.0.019.i.add = add nuw nsw i64 %.sroa.0.019.i.idx, 12 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.019.i.add, 192
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_T0_.exit, label %bb.b, !llvm.loop !164

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_T0_.exit: ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %.not6.i = icmp eq ptr %i.o, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_T0_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_T0_.exit.i14
  %.sroa.0.07.i = phi ptr [ %i.u, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_T0_.exit.i14 ], [ %i.o, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_T0_.exit ] ; 6 uses
  %.sroa.03.0.copyload.i.i = load float, ptr %.sroa.0.07.i, align 4, !tbaa !34 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i13 = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 4
  %i.p = load i64, ptr %.sroa.5.0..sroa_idx.i.i13, align 4
  %.sroa.0.09.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -12 ; 2 uses
  %i.q = load float, ptr %.sroa.0.09.i.i, align 4, !tbaa !31
  %i.r = fcmp reassoc nsz arcp contract afn olt float %.sroa.03.0.copyload.i.i, %i.q
  br i1 %i.r, label %.lr.ph.i.i18, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_T0_.exit.i14

.lr.ph.i.i18:                                     ; preds = %.lr.ph.i12, %.lr.ph.i.i18
  %.sroa.0.011.i.i19 = phi ptr [ %.sroa.0.0.i.i21, %.lr.ph.i.i18 ], [ %.sroa.0.09.i.i, %.lr.ph.i12 ] ; 4 uses
  %.sroa.06.010.i.i20 = phi ptr [ %.sroa.0.011.i.i19, %.lr.ph.i.i18 ], [ %.sroa.0.07.i, %.lr.ph.i12 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.06.010.i.i20, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.011.i.i19, i64 12, i1 false), !tbaa.struct !96
  %.sroa.0.0.i.i21 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i19, i64 -12 ; 2 uses
  %i.s = load float, ptr %.sroa.0.0.i.i21, align 4, !tbaa !31
  %i.t = fcmp reassoc nsz arcp contract afn olt float %.sroa.03.0.copyload.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i18, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_T0_.exit.i14, !llvm.loop !163

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_T0_.exit.i14: ; preds = %.lr.ph.i.i18, %.lr.ph.i12
  %.sroa.06.0.lcssa.i.i15 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i12 ], [ %.sroa.0.011.i.i19, %.lr.ph.i.i18 ] ; 2 uses
  store float %.sroa.03.0.copyload.i.i, ptr %.sroa.06.0.lcssa.i.i15, align 4, !tbaa !34
  %.sroa.5.0..sroa_idx5.i.i16 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i15, i64 4
  store i64 %i.p, ptr %.sroa.5.0..sroa_idx5.i.i16, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 12 ; 2 uses
  %.not.i17 = icmp eq ptr %i.u, %1
  br i1 %.not.i17, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_T0_.exit, label %.lr.ph.i12, !llvm.loop !165

bb.h:                                             ; preds = %bb.a
  %i.v = icmp eq ptr %0, %1
  %.sroa.0.016.i23 = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.not17.i24 = icmp eq ptr %.sroa.0.016.i23, %1
  %or.cond = select i1 %i.v, i1 true, i1 %.not17.i24
  br i1 %or.cond, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_T0_.exit, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %bb.h, %bb.n
  %.sroa.0.019.i26 = phi ptr [ %.sroa.0.0.i32, %bb.n ], [ %.sroa.0.016.i23, %bb.h ] ; 7 uses
  %.pn18.i27 = phi ptr [ %.sroa.0.019.i26, %bb.n ], [ %0, %bb.h ] ; 5 uses
  %i.w = load float, ptr %.sroa.0.019.i26, align 4, !tbaa !31 ; 4 uses
  %i.x = load float, ptr %0, align 4, !tbaa !31
  %i.y = fcmp reassoc nsz arcp contract afn olt float %i.w, %i.x
  br i1 %i.y, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.lr.ph.i25
  %.sroa.058.0.copyload = load <3 x float>, ptr %.sroa.0.019.i26, align 4
  %i.z = ptrtoint ptr %.sroa.0.019.i26 to i64
  %i.aa = sub i64 %i.z, %i.b                      ; 4 uses
  %i.ab = icmp sgt i64 %i.aa, 12
  br i1 %i.ab, label %bb.j, label %bb.k, !prof !162

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.pn18.i27, i64 24
  %.neg24.i39 = udiv exact i64 %i.aa, 12
  %.neg24.neg.i40 = sub nsw i64 0, %.neg24.i39
  %i.ad = getelementptr inbounds [12 x i8], ptr %i.ac, i64 %.neg24.neg.i40
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ad, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.aa, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i38

bb.k:                                             ; preds = %bb.i
  %i.ae = icmp eq i64 %i.aa, 12
  br i1 %i.ae, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i38

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %.pn18.i27, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.af, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !96
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i38

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i38: ; preds = %bb.l, %bb.k, %bb.j
  store <3 x float> %.sroa.058.0.copyload, ptr %0, align 4
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.i25
  %.sroa.5.0..sroa_idx.i.i28 = getelementptr inbounds nuw i8, ptr %.pn18.i27, i64 16
  %i.ag = load i64, ptr %.sroa.5.0..sroa_idx.i.i28, align 4
  %i.ah = load float, ptr %.pn18.i27, align 4, !tbaa !31
  %i.ai = fcmp reassoc nsz arcp contract afn olt float %i.w, %i.ah
  br i1 %i.ai, label %.lr.ph.i.i34, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_T0_.exit.i29

.lr.ph.i.i34:                                     ; preds = %bb.m, %.lr.ph.i.i34
  %.sroa.0.011.i.i35 = phi ptr [ %.sroa.0.0.i.i37, %.lr.ph.i.i34 ], [ %.pn18.i27, %bb.m ] ; 4 uses
  %.sroa.06.010.i.i36 = phi ptr [ %.sroa.0.011.i.i35, %.lr.ph.i.i34 ], [ %.sroa.0.019.i26, %bb.m ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.06.010.i.i36, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.011.i.i35, i64 12, i1 false), !tbaa.struct !96
  %.sroa.0.0.i.i37 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i35, i64 -12 ; 2 uses
  %i.aj = load float, ptr %.sroa.0.0.i.i37, align 4, !tbaa !31
  %i.ak = fcmp reassoc nsz arcp contract afn olt float %i.w, %i.aj
  br i1 %i.ak, label %.lr.ph.i.i34, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_T0_.exit.i29, !llvm.loop !163

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_T0_.exit.i29: ; preds = %.lr.ph.i.i34, %bb.m
  %.sroa.06.0.lcssa.i.i30 = phi ptr [ %.sroa.0.019.i26, %bb.m ], [ %.sroa.0.011.i.i35, %.lr.ph.i.i34 ] ; 2 uses
  store float %i.w, ptr %.sroa.06.0.lcssa.i.i30, align 4, !tbaa !34
  %.sroa.5.0..sroa_idx5.i.i31 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i30, i64 4
  store i64 %i.ag, ptr %.sroa.5.0..sroa_idx5.i.i31, align 4
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_T0_.exit.i29, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i38
  %.sroa.0.0.i32 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i26, i64 12 ; 2 uses
  %.not.i33 = icmp eq ptr %.sroa.0.0.i32, %1
  br i1 %.not.i33, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_T0_.exit, label %.lr.ph.i25, !llvm.loop !164

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_T0_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_T0_.exit.i14, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8interpol19smooth_cubic_splineIfE8LU_solveERKNS1_6matrixERSt6vectorIfSaIfEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !104    ; 30 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !115
  %i.e = load ptr, ptr %1, align 8, !tbaa !113    ; 35 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2
  %.not = icmp eq i64 %i.a, %i.i
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i8, ptr %i.j, align 8, !tbaa !112, !range !27, !noundef !28
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8              ; 9 uses
  br i1 %i.l, label %bb.d, label %.preheader90.preheader

.preheader90.preheader:                           ; preds = %bb.c
  %i.o = shl i64 %i.a, 2
  %scevgep = getelementptr i8, ptr %i.e, i64 %i.o
  %ident.check.not = icmp eq i64 %i.a, 1
  br label %.preheader90

bb.d:                                             ; preds = %bb.c
  %.idx.i = shl i64 %i.a, 3
  %invariant.gep = getelementptr i8, ptr %i.n, i64 %.idx.i ; 5 uses
  %exitcond103.peel.not = icmp eq i64 %i.a, 1
  br i1 %exitcond103.peel.not, label %.preheader, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.d
  %load_initial = load float, ptr %i.e, align 4   ; 2 uses
  %i.p = add i64 %i.a, -1                         ; 2 uses
  %i.q = add i64 %i.a, -2
  %xtraiter155 = and i64 %i.p, 3                  ; 3 uses
  %i.r = icmp ult i64 %i.q, 3
  br i1 %i.r, label %.peel.next.epil.preheader, label %.peel.next.preheader.new

.peel.next.preheader.new:                         ; preds = %.peel.next.preheader
  %unroll_iter = and i64 %i.p, -4
  br label %.peel.next

.preheader.loopexit.unr-lcssa:                    ; preds = %.peel.next
  %lcmp.mod156.not = icmp eq i64 %xtraiter155, 0
  br i1 %lcmp.mod156.not, label %.preheader, label %.peel.next.epil.preheader

.peel.next.epil.preheader:                        ; preds = %.preheader.loopexit.unr-lcssa, %.peel.next.preheader
  %store_forwarded.epil.init = phi float [ %load_initial, %.peel.next.preheader ], [ %i.ay, %.preheader.loopexit.unr-lcssa ]
  %.06896.epil.init = phi i64 [ 1, %.peel.next.preheader ], [ %i.az, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod157 = icmp ne i64 %xtraiter155, 0
  tail call void @llvm.assume(i1 %lcmp.mod157)
  br label %.peel.next.epil

.peel.next.epil:                                  ; preds = %.peel.next.epil, %.peel.next.epil.preheader
  %store_forwarded.epil = phi float [ %store_forwarded.epil.init, %.peel.next.epil.preheader ], [ %i.w, %.peel.next.epil ]
  %.06896.epil = phi i64 [ %.06896.epil.init, %.peel.next.epil.preheader ], [ %i.x, %.peel.next.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.peel.next.epil.preheader ], [ %epil.iter.next, %.peel.next.epil ]
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %.06896.epil
  %i.s = load float, ptr %gep.epil, align 4, !tbaa !34
  %i.t = getelementptr [4 x i8], ptr %i.e, i64 %.06896.epil ; 2 uses
  %i.u = fmul reassoc nsz arcp contract afn float %store_forwarded.epil, %i.s
  %i.v = load float, ptr %i.t, align 4, !tbaa !34
  %i.w = fsub reassoc nsz arcp contract afn float %i.v, %i.u ; 2 uses
  store float %i.w, ptr %i.t, align 4, !tbaa !34
  %i.x = add nuw i64 %.06896.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter155
  br i1 %epil.iter.cmp.not, label %.preheader, label %.peel.next.epil, !llvm.loop !166

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %.peel.next.epil, %bb.d
  %invariant.gep97 = getelementptr [4 x i8], ptr %i.n, i64 %i.a ; 3 uses
  %xtraiter158 = and i64 %i.a, 1
  %lcmp.mod159.not = icmp eq i64 %xtraiter158, 0
  br i1 %lcmp.mod159.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader
  %.067.prol = add nsw i64 %i.a, -1               ; 4 uses
  %.phi.trans.insert106.prol = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.067.prol
  %.pre107.prol = load float, ptr %.phi.trans.insert106.prol, align 4, !tbaa !34
  %gep98.prol = getelementptr [4 x i8], ptr %invariant.gep97, i64 %.067.prol
  %i.y = load float, ptr %gep98.prol, align 4, !tbaa !34
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.067.prol
  %i.aa = fdiv reassoc nsz arcp contract afn float %.pre107.prol, %i.y
  store float %i.aa, ptr %i.z, align 4, !tbaa !34
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader
  %.067.in.unr = phi i64 [ %i.a, %.preheader ], [ %.067.prol, %.prol.preheader ]
  %i.ab = icmp eq i64 %i.a, 1
  br i1 %i.ab, label %.loopexit, label %.preheader.new

.peel.next:                                       ; preds = %.peel.next, %.peel.next.preheader.new
  %store_forwarded = phi float [ %load_initial, %.peel.next.preheader.new ], [ %i.ay, %.peel.next ]
  %.06896 = phi i64 [ 1, %.peel.next.preheader.new ], [ %i.az, %.peel.next ] ; 6 uses
  %niter = phi i64 [ 0, %.peel.next.preheader.new ], [ %niter.next.3, %.peel.next ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %.06896
  %i.ac = load float, ptr %gep, align 4, !tbaa !34
  %i.ad = getelementptr [4 x i8], ptr %i.e, i64 %.06896 ; 2 uses
  %i.ae = fmul reassoc nsz arcp contract afn float %store_forwarded, %i.ac
  %i.af = load float, ptr %i.ad, align 4, !tbaa !34
  %i.ag = fsub reassoc nsz arcp contract afn float %i.af, %i.ae ; 2 uses
  store float %i.ag, ptr %i.ad, align 4, !tbaa !34
  %i.ah = add nuw nsw i64 %.06896, 1              ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ah
  %i.ai = load float, ptr %gep.1, align 4, !tbaa !34
  %i.aj = getelementptr [4 x i8], ptr %i.e, i64 %i.ah ; 2 uses
  %i.ak = fmul reassoc nsz arcp contract afn float %i.ag, %i.ai
  %i.al = load float, ptr %i.aj, align 4, !tbaa !34
  %i.am = fsub reassoc nsz arcp contract afn float %i.al, %i.ak ; 2 uses
  store float %i.am, ptr %i.aj, align 4, !tbaa !34
  %i.an = add nuw nsw i64 %.06896, 2              ; 2 uses
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.an
  %i.ao = load float, ptr %gep.2, align 4, !tbaa !34
  %i.ap = getelementptr [4 x i8], ptr %i.e, i64 %i.an ; 2 uses
  %i.aq = fmul reassoc nsz arcp contract afn float %i.am, %i.ao
  %i.ar = load float, ptr %i.ap, align 4, !tbaa !34
  %i.as = fsub reassoc nsz arcp contract afn float %i.ar, %i.aq ; 2 uses
  store float %i.as, ptr %i.ap, align 4, !tbaa !34
  %i.at = add nuw i64 %.06896, 3                  ; 2 uses
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.at
  %i.au = load float, ptr %gep.3, align 4, !tbaa !34
  %i.av = getelementptr [4 x i8], ptr %i.e, i64 %i.at ; 2 uses
  %i.aw = fmul reassoc nsz arcp contract afn float %i.as, %i.au
  %i.ax = load float, ptr %i.av, align 4, !tbaa !34
  %i.ay = fsub reassoc nsz arcp contract afn float %i.ax, %i.aw ; 3 uses
  store float %i.ay, ptr %i.av, align 4, !tbaa !34
  %i.az = add nuw i64 %.06896, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %.peel.next, !llvm.loop !167

.preheader.new:                                   ; preds = %.prol.loopexit, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit77.1
  %.067.in = phi i64 [ %.067.1, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit77.1 ], [ %.067.in.unr, %.prol.loopexit ] ; 4 uses
  %.067 = add i64 %.067.in, -1                    ; 7 uses
  %i.ba = icmp ult i64 %.067.in, %i.a
  br i1 %i.ba, label %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit74, label %._ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit77_crit_edge

._ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit77_crit_edge: ; preds = %.preheader.new
  %.phi.trans.insert106 = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.067
  %.pre107 = load float, ptr %.phi.trans.insert106, align 4, !tbaa !34
  br label %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit77

_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit74: ; preds = %.preheader.new
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.067
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !34
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.067.in
  %i.be = load float, ptr %i.bd, align 4, !tbaa !34
  %i.bf = fmul reassoc nsz arcp contract afn float %i.be, %i.bc
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.067 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !34
  %i.bi = fsub reassoc nsz arcp contract afn float %i.bh, %i.bf ; 2 uses
  store float %i.bi, ptr %i.bg, align 4, !tbaa !34
  br label %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit77

_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit77: ; preds = %._ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit77_crit_edge, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit74
  %i.bj = phi float [ %.pre107, %._ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit77_crit_edge ], [ %i.bi, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit74 ]
  %gep98 = getelementptr [4 x i8], ptr %invariant.gep97, i64 %.067
  %i.bk = load float, ptr %gep98, align 4, !tbaa !34
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.067
  %i.bm = fdiv reassoc nsz arcp contract afn float %i.bj, %i.bk
  store float %i.bm, ptr %i.bl, align 4, !tbaa !34
  %.067.1 = add i64 %.067.in, -2                  ; 7 uses
  %i.bn = icmp ult i64 %.067, %i.a
  br i1 %i.bn, label %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit74.1, label %._ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit77_crit_edge.1

._ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit77_crit_edge.1: ; preds = %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit77
  %.phi.trans.insert106.1 = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.067.1
  %.pre107.1 = load float, ptr %.phi.trans.insert106.1, align 4, !tbaa !34
  br label %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit77.1

_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit74.1: ; preds = %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit77
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.067.1
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !34
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.067
  %i.br = load float, ptr %i.bq, align 4, !tbaa !34
  %i.bs = fmul reassoc nsz arcp contract afn float %i.br, %i.bp
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.067.1 ; 2 uses
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !34
  %i.bv = fsub reassoc nsz arcp contract afn float %i.bu, %i.bs ; 2 uses
  store float %i.bv, ptr %i.bt, align 4, !tbaa !34
  br label %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit77.1

_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit77.1: ; preds = %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit74.1, %._ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit77_crit_edge.1
  %i.bw = phi float [ %.pre107.1, %._ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit77_crit_edge.1 ], [ %i.bv, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit74.1 ]
  %gep98.1 = getelementptr [4 x i8], ptr %invariant.gep97, i64 %.067.1
  %i.bx = load float, ptr %gep98.1, align 4, !tbaa !34
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.067.1
  %i.bz = fdiv reassoc nsz arcp contract afn float %i.bw, %i.bx
  store float %i.bz, ptr %i.by, align 4, !tbaa !34
  %i.ca = icmp eq i64 %.067.1, 0
  br i1 %i.ca, label %.loopexit, label %.preheader.new, !llvm.loop !169

.preheader90:                                     ; preds = %.preheader90.preheader, %._crit_edge
  %.06693 = phi i64 [ %i.dq, %._crit_edge ], [ 0, %.preheader90.preheader ] ; 16 uses
  %2 = shl i64 %.06693, 2
  %scevgep112 = getelementptr i8, ptr %i.n, i64 %2
  %i.cb = shl i64 %.06693, 3
  %scevgep113 = getelementptr i8, ptr %i.n, i64 %i.cb
  %.not99 = icmp eq i64 %.06693, 0
  br i1 %.not99, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.preheader90
  %i.cc = getelementptr [4 x i8], ptr %i.n, i64 %.06693 ; 7 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.06693 ; 8 uses
  %.promoted = load float, ptr %i.cd, align 4, !tbaa !34 ; 4 uses
  %min.iters.check = icmp ugt i64 %.06693, 3
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.memcheck, label %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.preheader

vector.memcheck:                                  ; preds = %iter.check
  %bound0 = icmp ult ptr %i.e, %scevgep113
  %bound1 = icmp ult ptr %scevgep112, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check114 = icmp ult i64 %.06693, 32
  br i1 %min.iters.check114, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ce = and i64 %.06693, 28
  %n.vec = and i64 %.06693, -32                   ; 4 uses
  %i.cf = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <8 x float> [ %i.cf, %vector.ph ], [ %i.cs, %vector.body ]
  %vec.phi115.a = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.ct, %vector.body ]
  %vec.phi116.a = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.cu, %vector.body ]
  %vec.phi117 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.cv, %vector.body ]
  %i.cg = getelementptr [4 x i8], ptr %i.cc, i64 %index ; 4 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 32
  %i.ci = getelementptr i8, ptr %i.cg, i64 64
  %i.cj = getelementptr i8, ptr %i.cg, i64 96
  %wide.load = load <8 x float>, ptr %i.cg, align 4, !tbaa !34, !alias.scope !170
  %wide.load118.a = load <8 x float>, ptr %i.ch, align 4, !tbaa !34, !alias.scope !170
  %wide.load119.a = load <8 x float>, ptr %i.ci, align 4, !tbaa !34, !alias.scope !170
  %wide.load120.a = load <8 x float>, ptr %i.cj, align 4, !tbaa !34, !alias.scope !170
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 96
  %wide.load121.a = load <8 x float>, ptr %i.ck, align 4, !tbaa !34, !alias.scope !173
  %wide.load122.a = load <8 x float>, ptr %i.cl, align 4, !tbaa !34, !alias.scope !173
  %wide.load123.a = load <8 x float>, ptr %i.cm, align 4, !tbaa !34, !alias.scope !173
  %wide.load124 = load <8 x float>, ptr %i.cn, align 4, !tbaa !34, !alias.scope !173
  %i.co = fmul reassoc nsz arcp contract afn <8 x float> %wide.load121.a, %wide.load
  %i.cp = fmul reassoc nsz arcp contract afn <8 x float> %wide.load122.a, %wide.load118.a
  %i.cq = fmul reassoc nsz arcp contract afn <8 x float> %wide.load123.a, %wide.load119.a
  %i.cr = fmul reassoc nsz arcp contract afn <8 x float> %wide.load124, %wide.load120.a
  %i.cs = fsub reassoc nsz arcp contract afn <8 x float> %vec.phi, %i.co ; 2 uses
  %i.ct = fsub reassoc nsz arcp contract afn <8 x float> %vec.phi115.a, %i.cp ; 2 uses
  %i.cu = fsub reassoc nsz arcp contract afn <8 x float> %vec.phi116.a, %i.cq ; 2 uses
  %i.cv = fsub reassoc nsz arcp contract afn <8 x float> %vec.phi117, %i.cr ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !175

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd reassoc nsz arcp contract afn <8 x float> %i.ct, %i.cs
  %bin.rdx125.a = fadd reassoc nsz arcp contract afn <8 x float> %i.cu, %bin.rdx
  %bin.rdx126 = fadd reassoc nsz arcp contract afn <8 x float> %i.cv, %bin.rdx125.a
  %i.cx = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx126) ; 3 uses
  store float %i.cx, ptr %i.cd, align 4, !tbaa !34, !alias.scope !176, !noalias !170
  %cmp.n = icmp eq i64 %.06693, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ce, 0
  br i1 %min.epilog.iters.check, label %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.preheader, label %vec.epilog.ph, !prof !178

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.cx, %vec.epilog.iter.check ], [ %.promoted, %vector.main.loop.iter.check ]
  %n.vec127 = and i64 %.06693, -4                 ; 3 uses
  %i.cy = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index128 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next132, %vec.epilog.vector.body ] ; 3 uses
  %vec.phi129 = phi <4 x float> [ %i.cy, %vec.epilog.ph ], [ %i.dc, %vec.epilog.vector.body ]
  %i.cz = getelementptr [4 x i8], ptr %i.cc, i64 %index128
  %wide.load130.a = load <4 x float>, ptr %i.cz, align 4, !tbaa !34, !alias.scope !170
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index128
  %wide.load131 = load <4 x float>, ptr %i.da, align 4, !tbaa !34, !alias.scope !173
  %i.db = fmul reassoc nsz arcp contract afn <4 x float> %wide.load131, %wide.load130.a
  %i.dc = fsub reassoc nsz arcp contract afn <4 x float> %vec.phi129, %i.db ; 2 uses
  %index.next132 = add nuw i64 %index128, 4       ; 2 uses
  %i.dd = icmp eq i64 %index.next132, %n.vec127
  br i1 %i.dd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !179

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.de = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.dc) ; 2 uses
  store float %i.de, ptr %i.cd, align 4, !tbaa !34, !alias.scope !176, !noalias !170
  %cmp.n133 = icmp eq i64 %.06693, %n.vec127
  br i1 %cmp.n133, label %._crit_edge, label %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.preheader

_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.preheader: ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi float [ %.promoted, %iter.check ], [ %.promoted, %vector.memcheck ], [ %i.cx, %vec.epilog.iter.check ], [ %i.de, %vec.epilog.middle.block ] ; 2 uses
  %.06592.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec127, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.06693, 3                  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.prol.loopexit, label %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.prol

_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.prol: ; preds = %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.preheader, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.prol
  %i.df = phi float [ %i.dm, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.prol ], [ %.ph, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.preheader ]
  %.06592.prol = phi i64 [ %i.dn, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.prol ], [ %.06592.ph, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.prol ], [ 0, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.preheader ]
  %i.dg = mul i64 %.06592.prol, %i.a
  %i.dh = getelementptr [4 x i8], ptr %i.cc, i64 %i.dg
  %i.di = load float, ptr %i.dh, align 4, !tbaa !34
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.06592.prol
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !34
  %i.dl = fmul reassoc nsz arcp contract afn float %i.dk, %i.di
  %i.dm = fsub reassoc nsz arcp contract afn float %i.df, %i.dl ; 3 uses
  store float %i.dm, ptr %i.cd, align 4, !tbaa !34
  %i.dn = add nuw i64 %.06592.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.prol.loopexit, label %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.prol, !llvm.loop !180

_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.prol.loopexit: ; preds = %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.prol, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.preheader
  %.unr = phi float [ %.ph, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.preheader ], [ %i.dm, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.prol ]
  %.06592.unr = phi i64 [ %.06592.ph, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.preheader ], [ %i.dn, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.prol ]
  %i.do = sub i64 %.06592.ph, %.06693
  %i.dp = icmp ugt i64 %i.do, -4
  br i1 %i.dp, label %._crit_edge, label %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80

._crit_edge:                                      ; preds = %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.prol.loopexit, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80, %middle.block, %vec.epilog.middle.block, %.preheader90
  %i.dq = add nuw i64 %.06693, 1                  ; 2 uses
  %exitcond101.not = icmp eq i64 %i.dq, %i.a
  br i1 %exitcond101.not, label %.preheader88, label %.preheader90, !llvm.loop !181

_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80: ; preds = %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.prol.loopexit, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80
  %i.dr = phi float [ %i.ew, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80 ], [ %.unr, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.prol.loopexit ]
  %.06592 = phi i64 [ %i.ex, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80 ], [ %.06592.unr, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.prol.loopexit ] ; 6 uses
  %i.ds = mul i64 %.06592, %i.a
  %i.dt = getelementptr [4 x i8], ptr %i.cc, i64 %i.ds
  %i.du = load float, ptr %i.dt, align 4, !tbaa !34
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.06592
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !34
  %i.dx = fmul reassoc nsz arcp contract afn float %i.dw, %i.du
  %i.dy = fsub reassoc nsz arcp contract afn float %i.dr, %i.dx ; 2 uses
  store float %i.dy, ptr %i.cd, align 4, !tbaa !34
  %i.dz = add nuw i64 %.06592, 1                  ; 2 uses
  %i.ea = mul i64 %i.dz, %i.a
  %i.eb = getelementptr [4 x i8], ptr %i.cc, i64 %i.ea
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !34
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.dz
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !34
  %i.ef = fmul reassoc nsz arcp contract afn float %i.ee, %i.ec
  %i.eg = fsub reassoc nsz arcp contract afn float %i.dy, %i.ef ; 2 uses
  store float %i.eg, ptr %i.cd, align 4, !tbaa !34
  %i.eh = add nuw i64 %.06592, 2                  ; 2 uses
  %i.ei = mul i64 %i.eh, %i.a
  %i.ej = getelementptr [4 x i8], ptr %i.cc, i64 %i.ei
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !34
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.eh
  %i.em = load float, ptr %i.el, align 4, !tbaa !34
  %i.en = fmul reassoc nsz arcp contract afn float %i.em, %i.ek
  %i.eo = fsub reassoc nsz arcp contract afn float %i.eg, %i.en ; 2 uses
  store float %i.eo, ptr %i.cd, align 4, !tbaa !34
  %i.ep = add nuw i64 %.06592, 3                  ; 2 uses
  %i.eq = mul i64 %i.ep, %i.a
  %i.er = getelementptr [4 x i8], ptr %i.cc, i64 %i.eq
  %i.es = load float, ptr %i.er, align 4, !tbaa !34
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ep
  %i.eu = load float, ptr %i.et, align 4, !tbaa !34
  %i.ev = fmul reassoc nsz arcp contract afn float %i.eu, %i.es
  %i.ew = fsub reassoc nsz arcp contract afn float %i.eo, %i.ev ; 2 uses
  store float %i.ew, ptr %i.cd, align 4, !tbaa !34
  %i.ex = add nuw i64 %.06592, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ex, %.06693
  br i1 %exitcond.not.3, label %._crit_edge, label %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80, !llvm.loop !182

.preheader88:                                     ; preds = %._crit_edge, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit83
  %indvar = phi i64 [ %indvar.next, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit83 ], [ 0, %._crit_edge ] ; 3 uses
  %.064.in = phi i64 [ %.064, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit83 ], [ %i.a, %._crit_edge ] ; 4 uses
  %i.ey = add i64 %indvar, -1
  %.064 = add i64 %.064.in, -1                    ; 8 uses
  %i.ez = icmp ult i64 %.064.in, %i.a
  br i1 %i.ez, label %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.lr.ph, label %._ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit83_crit_edge

._ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit83_crit_edge: ; preds = %.preheader88
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.064
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !34
  br label %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit83

_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.lr.ph: ; preds = %.preheader88
  %i.fa = getelementptr [4 x i8], ptr %i.n, i64 %.064 ; 5 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.064 ; 6 uses
  %.promoted95 = load float, ptr %i.fb, align 4, !tbaa !34 ; 2 uses
  %xtraiter151 = and i64 %indvar, 3               ; 2 uses
  %lcmp.mod152.not = icmp eq i64 %xtraiter151, 0
  br i1 %lcmp.mod152.not, label %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.prol.loopexit, label %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.prol

_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.prol: ; preds = %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.lr.ph, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.prol
  %i.fc = phi float [ %i.fj, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.prol ], [ %.promoted95, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.lr.ph ]
  %.094.prol = phi i64 [ %i.fk, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.prol ], [ %.064.in, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.lr.ph ] ; 3 uses
  %prol.iter153 = phi i64 [ %prol.iter153.next, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.prol ], [ 0, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.lr.ph ]
  %i.fd = mul i64 %.094.prol, %i.a
  %i.fe = getelementptr [4 x i8], ptr %i.fa, i64 %i.fd
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !34
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.094.prol
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !34
  %i.fi = fmul reassoc nsz arcp contract afn float %i.fh, %i.ff
  %i.fj = fsub reassoc nsz arcp contract afn float %i.fc, %i.fi ; 4 uses
  store float %i.fj, ptr %i.fb, align 4, !tbaa !34
  %i.fk = add nuw i64 %.094.prol, 1               ; 2 uses
  %prol.iter153.next = add i64 %prol.iter153, 1   ; 2 uses
  %prol.iter153.cmp.not = icmp eq i64 %prol.iter153.next, %xtraiter151
end_hunk_0
