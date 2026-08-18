inline.NumInlined: 1094
inline.NumDeleted: 285
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_T0_T1_:bb.a

bb.l:                                             ; preds = %.lr.ph50
  %i.cc = fcmp reassoc nsz arcp contract afn olt float %i.bz, %i.cb
  br i1 %i.cc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.copyload = load <3 x float>, ptr %.fr28, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.fr28, ptr noundef nonnull align 4 dereferenceable(12) %i.bw, i64 12, i1 false), !tbaa.struct !96
  store <3 x float> %.sroa.0.0.copyload, ptr %i.bw, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  %i.cd = fcmp reassoc nsz arcp contract afn olt float %i.by, %i.cb
  br i1 %i.cd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.sroa.057.0.copyload = load <3 x float>, ptr %.fr28, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.fr28, ptr noundef nonnull align 4 dereferenceable(12) %i.bx, i64 12, i1 false), !tbaa.struct !96
  store <3 x float> %.sroa.057.0.copyload, ptr %i.bx, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

bb.p:                                             ; preds = %bb.n
  %.sroa.059.0.copyload = load <3 x float>, ptr %.fr28, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.fr28, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !96
  store <3 x float> %.sroa.059.0.copyload, ptr %i.e, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

bb.q:                                             ; preds = %.lr.ph50
  %i.ce = fcmp reassoc nsz arcp contract afn olt float %i.by, %i.cb
  br i1 %i.ce, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.061.0.copyload = load <3 x float>, ptr %.fr28, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.fr28, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !96
  store <3 x float> %.sroa.061.0.copyload, ptr %i.e, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  %i.cf = fcmp reassoc nsz arcp contract afn olt float %i.bz, %i.cb
  br i1 %i.cf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.sroa.063.0.copyload = load <3 x float>, ptr %.fr28, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.fr28, ptr noundef nonnull align 4 dereferenceable(12) %i.bx, i64 12, i1 false), !tbaa.struct !96
  store <3 x float> %.sroa.063.0.copyload, ptr %i.bx, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

bb.u:                                             ; preds = %bb.s
  %.sroa.065.0.copyload = load <3 x float>, ptr %.fr28, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.fr28, ptr noundef nonnull align 4 dereferenceable(12) %i.bw, i64 12, i1 false), !tbaa.struct !96
  store <3 x float> %.sroa.065.0.copyload, ptr %i.bw, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_SH_SH_T0_.exit.i.preheader: ; preds = %bb.u, %bb.t, %bb.r, %bb.p, %bb.o, %bb.m
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_SH_SH_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_SH_SH_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_SH_SH_T0_.exit.i.preheader, %bb.x
  %.sroa.010.0.i.i = phi ptr [ %i.cj, %bb.x ], [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_SH_SH_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.x ], [ %storemerge2549, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_SH_SH_T0_.exit.i.preheader ]
  %i.cg = load float, ptr %.fr28, align 4, !tbaa !31 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_SH_SH_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_SH_SH_T0_.exit.i ], [ %i.cj, %bb.v ] ; 9 uses
  %i.ch = load float, ptr %.sroa.010.1.i.i, align 4, !tbaa !31
  %i.ci = fcmp reassoc nsz arcp contract afn olt float %i.ch, %i.cg
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 12 ; 2 uses
  br i1 %i.ci, label %bb.v, label %.preheader.i.i, !llvm.loop !159

.preheader.i.i:                                   ; preds = %bb.v, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.v ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -12 ; 6 uses
  %i.ck = load float, ptr %.sroa.0.1.i.i, align 4, !tbaa !31
  %i.cl = fcmp reassoc nsz arcp contract afn olt float %i.cg, %i.ck
  br i1 %i.cl, label %.preheader.i.i, label %bb.w, !llvm.loop !160

bb.w:                                             ; preds = %.preheader.i.i
  %i.cm = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.cm, label %bb.x, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEESH_SH_SH_T0_.exit

bb.x:                                             ; preds = %bb.w
  %.sroa.067.0.copyload = load <3 x float>, ptr %.sroa.010.1.i.i, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.010.1.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.1.i.i, i64 12, i1 false), !tbaa.struct !96
  store <3 x float> %.sroa.067.0.copyload, ptr %.sroa.0.1.i.i, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_SH_SH_T0_.exit.i, !llvm.loop !161

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEESH_SH_SH_T0_.exit: ; preds = %bb.w
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2549, i64 noundef %i.bu)
  %i.cn = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.co = sub i64 %i.cn, %i.a                     ; 3 uses
  %i.cp = icmp sgt i64 %i.co, 192
  br i1 %i.cp, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_SH_T0_.exit, !llvm.loop !154

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_SH_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEESH_SH_SH_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_SH_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
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
  %2 = getelementptr inbounds nuw i8, ptr %.pn18.i27, i64 24
  %.neg24.i39 = udiv exact i64 %i.aa, 12
  %.neg24.neg.i40 = sub nsw i64 0, %.neg24.i39
  %3 = getelementptr inbounds [12 x i8], ptr %2, i64 %.neg24.neg.i40
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %3, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.aa, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i38

bb.k:                                             ; preds = %bb.i
  %i.ac = icmp eq i64 %i.aa, 12
  br i1 %i.ac, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i38

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn18.i27, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ad, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !96
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i38

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i38: ; preds = %bb.l, %bb.k, %bb.j
  store <3 x float> %.sroa.058.0.copyload, ptr %0, align 4
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.i25
  %.sroa.5.0..sroa_idx.i.i28 = getelementptr inbounds nuw i8, ptr %.pn18.i27, i64 16
  %i.ae = load i64, ptr %.sroa.5.0..sroa_idx.i.i28, align 4
  %i.af = load float, ptr %.pn18.i27, align 4, !tbaa !31
  %i.ag = fcmp reassoc nsz arcp contract afn olt float %i.w, %i.af
  br i1 %i.ag, label %.lr.ph.i.i34, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_T0_.exit.i29

.lr.ph.i.i34:                                     ; preds = %bb.m, %.lr.ph.i.i34
  %.sroa.0.011.i.i35 = phi ptr [ %.sroa.0.0.i.i37, %.lr.ph.i.i34 ], [ %.pn18.i27, %bb.m ] ; 4 uses
  %.sroa.06.010.i.i36 = phi ptr [ %.sroa.0.011.i.i35, %.lr.ph.i.i34 ], [ %.sroa.0.019.i26, %bb.m ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.06.010.i.i36, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.011.i.i35, i64 12, i1 false), !tbaa.struct !96
  %.sroa.0.0.i.i37 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i35, i64 -12 ; 2 uses
  %i.ah = load float, ptr %.sroa.0.0.i.i37, align 4, !tbaa !31
  %i.ai = fcmp reassoc nsz arcp contract afn olt float %i.w, %i.ah
  br i1 %i.ai, label %.lr.ph.i.i34, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_T0_.exit.i29, !llvm.loop !163

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_T0_.exit.i29: ; preds = %.lr.ph.i.i34, %bb.m
  %.sroa.06.0.lcssa.i.i30 = phi ptr [ %.sroa.0.019.i26, %bb.m ], [ %.sroa.0.011.i.i35, %.lr.ph.i.i34 ] ; 2 uses
  store float %i.w, ptr %.sroa.06.0.lcssa.i.i30, align 4, !tbaa !34
  %.sroa.5.0..sroa_idx5.i.i31 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i30, i64 4
  store i64 %i.ae, ptr %.sroa.5.0..sroa_idx5.i.i31, align 4
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
end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_T0_T1_:bb.a

bb.l:                                             ; preds = %.lr.ph50
  %i.cc = fcmp reassoc nsz arcp contract afn olt float %i.bz, %i.cb
  br i1 %i.cc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.copyload = load <3 x float>, ptr %.fr28, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.fr28, ptr noundef nonnull align 4 dereferenceable(12) %i.bw, i64 12, i1 false), !tbaa.struct !96
  store <3 x float> %.sroa.0.0.copyload, ptr %i.bw, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  %i.cd = fcmp reassoc nsz arcp contract afn olt float %i.by, %i.cb
  br i1 %i.cd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.sroa.057.0.copyload = load <3 x float>, ptr %.fr28, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.fr28, ptr noundef nonnull align 4 dereferenceable(12) %i.bx, i64 12, i1 false), !tbaa.struct !96
  store <3 x float> %.sroa.057.0.copyload, ptr %i.bx, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

bb.p:                                             ; preds = %bb.n
  %.sroa.059.0.copyload = load <3 x float>, ptr %.fr28, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.fr28, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !96
  store <3 x float> %.sroa.059.0.copyload, ptr %i.e, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

bb.q:                                             ; preds = %.lr.ph50
  %i.ce = fcmp reassoc nsz arcp contract afn olt float %i.by, %i.cb
  br i1 %i.ce, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.061.0.copyload = load <3 x float>, ptr %.fr28, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.fr28, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !96
  store <3 x float> %.sroa.061.0.copyload, ptr %i.e, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  %i.cf = fcmp reassoc nsz arcp contract afn olt float %i.bz, %i.cb
  br i1 %i.cf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.sroa.063.0.copyload = load <3 x float>, ptr %.fr28, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.fr28, ptr noundef nonnull align 4 dereferenceable(12) %i.bx, i64 12, i1 false), !tbaa.struct !96
  store <3 x float> %.sroa.063.0.copyload, ptr %i.bx, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

bb.u:                                             ; preds = %bb.s
  %.sroa.065.0.copyload = load <3 x float>, ptr %.fr28, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.fr28, ptr noundef nonnull align 4 dereferenceable(12) %i.bw, i64 12, i1 false), !tbaa.struct !96
  store <3 x float> %.sroa.065.0.copyload, ptr %i.bw, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_SH_SH_T0_.exit.i.preheader: ; preds = %bb.u, %bb.t, %bb.r, %bb.p, %bb.o, %bb.m
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_SH_SH_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_SH_SH_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_SH_SH_T0_.exit.i.preheader, %bb.x
  %.sroa.010.0.i.i = phi ptr [ %i.cj, %bb.x ], [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_SH_SH_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.x ], [ %storemerge2549, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_SH_SH_T0_.exit.i.preheader ]
  %i.cg = load float, ptr %.fr28, align 4, !tbaa !31 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_SH_SH_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_SH_SH_T0_.exit.i ], [ %i.cj, %bb.v ] ; 9 uses
  %i.ch = load float, ptr %.sroa.010.1.i.i, align 4, !tbaa !31
  %i.ci = fcmp reassoc nsz arcp contract afn olt float %i.ch, %i.cg
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 12 ; 2 uses
  br i1 %i.ci, label %bb.v, label %.preheader.i.i, !llvm.loop !225

.preheader.i.i:                                   ; preds = %bb.v, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.v ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -12 ; 6 uses
  %i.ck = load float, ptr %.sroa.0.1.i.i, align 4, !tbaa !31
  %i.cl = fcmp reassoc nsz arcp contract afn olt float %i.cg, %i.ck
  br i1 %i.cl, label %.preheader.i.i, label %bb.w, !llvm.loop !226

bb.w:                                             ; preds = %.preheader.i.i
  %i.cm = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.cm, label %bb.x, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEESH_SH_SH_T0_.exit

bb.x:                                             ; preds = %bb.w
  %.sroa.067.0.copyload = load <3 x float>, ptr %.sroa.010.1.i.i, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.010.1.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.1.i.i, i64 12, i1 false), !tbaa.struct !96
  store <3 x float> %.sroa.067.0.copyload, ptr %.sroa.0.1.i.i, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_SH_SH_T0_.exit.i, !llvm.loop !227

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEESH_SH_SH_T0_.exit: ; preds = %bb.w
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2549, i64 noundef %i.bu)
  %i.cn = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.co = sub i64 %i.cn, %i.a                     ; 3 uses
  %i.cp = icmp sgt i64 %i.co, 192
  br i1 %i.cp, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_SH_T0_.exit, !llvm.loop !220

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_SH_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEESH_SH_SH_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_SH_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
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
  br i1 %i.l, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.0.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn18.i, %bb.f ] ; 4 uses
  %.sroa.06.010.i.i = phi ptr [ %.sroa.0.011.i.i, %.lr.ph.i.i ], [ %.sroa.0.019.i.ptr, %bb.f ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.06.010.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.011.i.i, i64 12, i1 false), !tbaa.struct !96
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i, i64 -12 ; 2 uses
  %i.m = load float, ptr %.sroa.0.0.i.i, align 4, !tbaa !31
  %i.n = fcmp reassoc nsz arcp contract afn olt float %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_T0_.exit.i, !llvm.loop !228

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.06.0.lcssa.i.i = phi ptr [ %.sroa.0.019.i.ptr, %bb.f ], [ %.sroa.0.011.i.i, %.lr.ph.i.i ] ; 2 uses
  store float %i.e, ptr %.sroa.06.0.lcssa.i.i, align 4, !tbaa !34
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i, i64 4
  store i64 %i.j, ptr %.sroa.5.0..sroa_idx5.i.i, align 4
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i
  %.sroa.0.019.i.add = add nuw nsw i64 %.sroa.0.019.i.idx, 12 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.019.i.add, 192
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_T0_.exit, label %bb.b, !llvm.loop !229

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_T0_.exit: ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %.not6.i = icmp eq ptr %i.o, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_T0_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_T0_.exit.i14
  %.sroa.0.07.i = phi ptr [ %i.u, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_T0_.exit.i14 ], [ %i.o, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_T0_.exit ] ; 6 uses
  %.sroa.03.0.copyload.i.i = load float, ptr %.sroa.0.07.i, align 4, !tbaa !34 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i13 = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 4
  %i.p = load i64, ptr %.sroa.5.0..sroa_idx.i.i13, align 4
  %.sroa.0.09.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -12 ; 2 uses
  %i.q = load float, ptr %.sroa.0.09.i.i, align 4, !tbaa !31
  %i.r = fcmp reassoc nsz arcp contract afn olt float %.sroa.03.0.copyload.i.i, %i.q
  br i1 %i.r, label %.lr.ph.i.i18, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_T0_.exit.i14

.lr.ph.i.i18:                                     ; preds = %.lr.ph.i12, %.lr.ph.i.i18
  %.sroa.0.011.i.i19 = phi ptr [ %.sroa.0.0.i.i21, %.lr.ph.i.i18 ], [ %.sroa.0.09.i.i, %.lr.ph.i12 ] ; 4 uses
  %.sroa.06.010.i.i20 = phi ptr [ %.sroa.0.011.i.i19, %.lr.ph.i.i18 ], [ %.sroa.0.07.i, %.lr.ph.i12 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.06.010.i.i20, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.011.i.i19, i64 12, i1 false), !tbaa.struct !96
  %.sroa.0.0.i.i21 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i19, i64 -12 ; 2 uses
  %i.s = load float, ptr %.sroa.0.0.i.i21, align 4, !tbaa !31
  %i.t = fcmp reassoc nsz arcp contract afn olt float %.sroa.03.0.copyload.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i18, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_T0_.exit.i14, !llvm.loop !228

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_T0_.exit.i14: ; preds = %.lr.ph.i.i18, %.lr.ph.i12
  %.sroa.06.0.lcssa.i.i15 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i12 ], [ %.sroa.0.011.i.i19, %.lr.ph.i.i18 ] ; 2 uses
  store float %.sroa.03.0.copyload.i.i, ptr %.sroa.06.0.lcssa.i.i15, align 4, !tbaa !34
  %.sroa.5.0..sroa_idx5.i.i16 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i15, i64 4
  store i64 %i.p, ptr %.sroa.5.0..sroa_idx5.i.i16, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 12 ; 2 uses
  %.not.i17 = icmp eq ptr %i.u, %1
  br i1 %.not.i17, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_T0_.exit, label %.lr.ph.i12, !llvm.loop !230

bb.h:                                             ; preds = %bb.a
  %i.v = icmp eq ptr %0, %1
  %.sroa.0.016.i23 = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.not17.i24 = icmp eq ptr %.sroa.0.016.i23, %1
  %or.cond = select i1 %i.v, i1 true, i1 %.not17.i24
  br i1 %or.cond, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_T0_.exit, label %.lr.ph.i25

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
  %2 = getelementptr inbounds nuw i8, ptr %.pn18.i27, i64 24
  %.neg24.i39 = udiv exact i64 %i.aa, 12
  %.neg24.neg.i40 = sub nsw i64 0, %.neg24.i39
  %3 = getelementptr inbounds [12 x i8], ptr %2, i64 %.neg24.neg.i40
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %3, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.aa, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i38

bb.k:                                             ; preds = %bb.i
  %i.ac = icmp eq i64 %i.aa, 12
  br i1 %i.ac, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i38

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn18.i27, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ad, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !96
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i38

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i38: ; preds = %bb.l, %bb.k, %bb.j
  store <3 x float> %.sroa.058.0.copyload, ptr %0, align 4
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.i25
  %.sroa.5.0..sroa_idx.i.i28 = getelementptr inbounds nuw i8, ptr %.pn18.i27, i64 16
  %i.ae = load i64, ptr %.sroa.5.0..sroa_idx.i.i28, align 4
  %i.af = load float, ptr %.pn18.i27, align 4, !tbaa !31
  %i.ag = fcmp reassoc nsz arcp contract afn olt float %i.w, %i.af
  br i1 %i.ag, label %.lr.ph.i.i34, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_T0_.exit.i29

.lr.ph.i.i34:                                     ; preds = %bb.m, %.lr.ph.i.i34
  %.sroa.0.011.i.i35 = phi ptr [ %.sroa.0.0.i.i37, %.lr.ph.i.i34 ], [ %.pn18.i27, %bb.m ] ; 4 uses
  %.sroa.06.010.i.i36 = phi ptr [ %.sroa.0.011.i.i35, %.lr.ph.i.i34 ], [ %.sroa.0.019.i26, %bb.m ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.06.010.i.i36, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.011.i.i35, i64 12, i1 false), !tbaa.struct !96
  %.sroa.0.0.i.i37 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i35, i64 -12 ; 2 uses
  %i.ah = load float, ptr %.sroa.0.0.i.i37, align 4, !tbaa !31
  %i.ai = fcmp reassoc nsz arcp contract afn olt float %i.w, %i.ah
  br i1 %i.ai, label %.lr.ph.i.i34, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_T0_.exit.i29, !llvm.loop !228

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_T0_.exit.i29: ; preds = %.lr.ph.i.i34, %bb.m
  %.sroa.06.0.lcssa.i.i30 = phi ptr [ %.sroa.0.019.i26, %bb.m ], [ %.sroa.0.011.i.i35, %.lr.ph.i.i34 ] ; 2 uses
  store float %i.w, ptr %.sroa.06.0.lcssa.i.i30, align 4, !tbaa !34
  %.sroa.5.0..sroa_idx5.i.i31 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i30, i64 4
  store i64 %i.ae, ptr %.sroa.5.0..sroa_idx5.i.i31, align 4
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_T0_.exit.i29, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i38
  %.sroa.0.0.i32 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i26, i64 12 ; 2 uses
  %.not.i33 = icmp eq ptr %.sroa.0.0.i32, %1
  br i1 %.not.i33, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_T0_.exit, label %.lr.ph.i25, !llvm.loop !229

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_T0_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_T0_.exit.i14, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8interpol11spline_baseIfEC2IN9__gnu_cxx17__normal_iteratorIPNS_5pointIfEESt6vectorIS6_SaIS6_EEEEEET_SC_RKNS_6limitsIfEESG_b(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, i1 noundef zeroext %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %5 to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i64, ptr %3, align 4                ; 3 uses
  store i64 %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %4, align 4
  store i64 %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.a, ptr %i.f, align 8, !tbaa !20
  br i1 %5, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not71 = icmp eq ptr %1, %2
  br i1 %.not71, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.c to i32
  %i.k = bitcast i32 %i.j to float
  %i.l = lshr i64 %i.c, 32
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = bitcast i32 %i.m to float
  %i.o = fsub reassoc nsz arcp contract afn float %i.n, %i.k ; 2 uses
  %.not6273 = icmp eq ptr %1, %2
  br i1 %.not6273, label %.loopexit, label %.lr.ph75

.lr.ph75:                                         ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph75, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit
  %i.r = phi ptr [ null, %.lr.ph75 ], [ %i.at, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit ] ; 6 uses
  %i.s = phi ptr [ null, %.lr.ph75 ], [ %i.au, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit ] ; 5 uses
  %i.t = phi ptr [ null, %.lr.ph75 ], [ %i.av, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit ] ; 4 uses
  %.sroa.056.074 = phi ptr [ %1, %.lr.ph75 ], [ %i.aw, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  %i.u = load float, ptr %.sroa.056.074, align 4, !tbaa !66
  %i.v = frem reassoc nsz arcp contract afn float %i.u, %i.o ; 3 uses
  %i.w = fcmp reassoc nsz arcp contract afn olt float %i.v, 0.000000e+00
  %i.x = fadd reassoc nsz arcp contract afn float %i.v, %i.o
  %.0 = select nsz i1 %i.w, float %i.x, float %i.v ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.056.074, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !68 ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store float %.0, ptr %i.t, align 4, !tbaa !34
  %.sroa.650.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.aa = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.z, i64 0
  store <2 x float> %i.aa, ptr %.sroa.650.0..sroa_idx, align 4, !tbaa !34
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 12 ; 2 uses
  store ptr %i.ab, ptr %i.p, align 8, !tbaa !16
  br label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.ac = ptrtoint ptr %i.s to i64
  %i.ad = ptrtoint ptr %i.r to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 4 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775800
  br i1 %i.af, label %bb.f, label %_ZNKSt6vectorIN8interpol10base_pointIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN8interpol10base_pointIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.ag = sdiv exact i64 %i.ae, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 768614336404564650)
  %i.ak = select i1 %i.ai, i64 768614336404564650, i64 %i.aj ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ak, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.al = mul nuw nsw i64 %i.ak, 12
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #20
          to label %.noexc17 unwind label %.loopexit63 ; 6 uses

.noexc17:                                         ; preds = %_ZNKSt6vectorIN8interpol10base_pointIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae ; 2 uses
  store float %.0, ptr %i.an, align 4, !tbaa !34
  %.sroa.650.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ao = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.z, i64 0
  store <2 x float> %i.ao, ptr %.sroa.650.0..sroa_idx51, align 4, !tbaa !34
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc17, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %i.am, %.noexc17 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i ], [ %i.r, %.noexc17 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !96, !alias.scope !231
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.s
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !101

_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc17
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.am, %.noexc17 ], [ %i.aq, %.lr.ph.i.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.ae) #19
  br label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.am, ptr %0, align 8, !tbaa !11
  store ptr %i.ar, ptr %i.p, align 8, !tbaa !16
  %i.as = getelementptr inbounds nuw [12 x i8], ptr %i.am, i64 %i.ak ; 2 uses
  store ptr %i.as, ptr %i.q, align 8, !tbaa !15
  br label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.d
  %i.at = phi ptr [ %i.am, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.r, %bb.d ]
  %i.au = phi ptr [ %i.as, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.s, %bb.d ]
  %i.av = phi ptr [ %i.ar, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.ab, %bb.d ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.056.074, i64 8 ; 2 uses
  %.not62 = icmp eq ptr %i.aw, %2
  br i1 %.not62, label %.loopexit, label %bb.c, !llvm.loop !235

.loopexit63:                                      ; preds = %_ZNKSt6vectorIN8interpol10base_pointIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.h:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit33
  %i.ax = phi ptr [ null, %.lr.ph ], [ %i.ca, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit33 ] ; 8 uses
  %i.ay = phi ptr [ null, %.lr.ph ], [ %i.cb, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit33 ] ; 7 uses
  %i.az = phi ptr [ null, %.lr.ph ], [ %i.cc, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit33 ] ; 6 uses
  %.sroa.042.072 = phi ptr [ %1, %.lr.ph ], [ %i.cd, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit33 ] ; 3 uses
  %i.ba = load float, ptr %i.b, align 8, !tbaa !30
  %i.bb = load float, ptr %.sroa.042.072, align 4, !tbaa !66 ; 4 uses
  %i.bc = fcmp reassoc nsz arcp contract afn ugt float %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit33, label %bb.i
end_hunk_1
begin_hunk_2_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_T0_T1_:bb.a

bb.l:                                             ; preds = %.lr.ph50
  %i.cc = fcmp reassoc nsz arcp contract afn olt float %i.bz, %i.cb
  br i1 %i.cc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.copyload = load <3 x float>, ptr %.fr28, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.fr28, ptr noundef nonnull align 4 dereferenceable(12) %i.bw, i64 12, i1 false), !tbaa.struct !96
  store <3 x float> %.sroa.0.0.copyload, ptr %i.bw, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_SL_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  %i.cd = fcmp reassoc nsz arcp contract afn olt float %i.by, %i.cb
  br i1 %i.cd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.sroa.057.0.copyload = load <3 x float>, ptr %.fr28, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.fr28, ptr noundef nonnull align 4 dereferenceable(12) %i.bx, i64 12, i1 false), !tbaa.struct !96
  store <3 x float> %.sroa.057.0.copyload, ptr %i.bx, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_SL_T0_.exit.i.preheader

bb.p:                                             ; preds = %bb.n
  %.sroa.059.0.copyload = load <3 x float>, ptr %.fr28, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.fr28, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !96
  store <3 x float> %.sroa.059.0.copyload, ptr %i.e, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_SL_T0_.exit.i.preheader

bb.q:                                             ; preds = %.lr.ph50
  %i.ce = fcmp reassoc nsz arcp contract afn olt float %i.by, %i.cb
  br i1 %i.ce, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.061.0.copyload = load <3 x float>, ptr %.fr28, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.fr28, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !96
  store <3 x float> %.sroa.061.0.copyload, ptr %i.e, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_SL_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  %i.cf = fcmp reassoc nsz arcp contract afn olt float %i.bz, %i.cb
  br i1 %i.cf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.sroa.063.0.copyload = load <3 x float>, ptr %.fr28, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.fr28, ptr noundef nonnull align 4 dereferenceable(12) %i.bx, i64 12, i1 false), !tbaa.struct !96
  store <3 x float> %.sroa.063.0.copyload, ptr %i.bx, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_SL_T0_.exit.i.preheader

bb.u:                                             ; preds = %bb.s
  %.sroa.065.0.copyload = load <3 x float>, ptr %.fr28, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.fr28, ptr noundef nonnull align 4 dereferenceable(12) %i.bw, i64 12, i1 false), !tbaa.struct !96
  store <3 x float> %.sroa.065.0.copyload, ptr %i.bw, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_SL_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_SL_T0_.exit.i.preheader: ; preds = %bb.u, %bb.t, %bb.r, %bb.p, %bb.o, %bb.m
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_SL_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_SL_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_SL_T0_.exit.i.preheader, %bb.x
  %.sroa.010.0.i.i = phi ptr [ %i.cj, %bb.x ], [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_SL_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.x ], [ %storemerge2549, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_SL_T0_.exit.i.preheader ]
  %i.cg = load float, ptr %.fr28, align 4, !tbaa !31 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_SL_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_SL_T0_.exit.i ], [ %i.cj, %bb.v ] ; 9 uses
  %i.ch = load float, ptr %.sroa.010.1.i.i, align 4, !tbaa !31
  %i.ci = fcmp reassoc nsz arcp contract afn olt float %i.ch, %i.cg
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 12 ; 2 uses
  br i1 %i.ci, label %bb.v, label %.preheader.i.i, !llvm.loop !246

.preheader.i.i:                                   ; preds = %bb.v, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.v ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -12 ; 6 uses
  %i.ck = load float, ptr %.sroa.0.1.i.i, align 4, !tbaa !31
  %i.cl = fcmp reassoc nsz arcp contract afn olt float %i.cg, %i.ck
  br i1 %i.cl, label %.preheader.i.i, label %bb.w, !llvm.loop !247

bb.w:                                             ; preds = %.preheader.i.i
  %i.cm = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.cm, label %bb.x, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEESL_SL_SL_T0_.exit

bb.x:                                             ; preds = %bb.w
  %.sroa.067.0.copyload = load <3 x float>, ptr %.sroa.010.1.i.i, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.010.1.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.1.i.i, i64 12, i1 false), !tbaa.struct !96
  store <3 x float> %.sroa.067.0.copyload, ptr %.sroa.0.1.i.i, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_SL_T0_.exit.i, !llvm.loop !248

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEESL_SL_SL_T0_.exit: ; preds = %bb.w
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2549, i64 noundef %i.bu)
  %i.cn = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.co = sub i64 %i.cn, %i.a                     ; 3 uses
  %i.cp = icmp sgt i64 %i.co, 192
  br i1 %i.cp, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_T0_.exit, !llvm.loop !241

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEESL_SL_SL_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
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
  br i1 %i.l, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.0.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn18.i, %bb.f ] ; 4 uses
  %.sroa.06.010.i.i = phi ptr [ %.sroa.0.011.i.i, %.lr.ph.i.i ], [ %.sroa.0.019.i.ptr, %bb.f ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.06.010.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.011.i.i, i64 12, i1 false), !tbaa.struct !96
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i, i64 -12 ; 2 uses
  %i.m = load float, ptr %.sroa.0.0.i.i, align 4, !tbaa !31
  %i.n = fcmp reassoc nsz arcp contract afn olt float %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_.exit.i, !llvm.loop !249

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.06.0.lcssa.i.i = phi ptr [ %.sroa.0.019.i.ptr, %bb.f ], [ %.sroa.0.011.i.i, %.lr.ph.i.i ] ; 2 uses
  store float %i.e, ptr %.sroa.06.0.lcssa.i.i, align 4, !tbaa !34
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i, i64 4
  store i64 %i.j, ptr %.sroa.5.0..sroa_idx5.i.i, align 4
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i
  %.sroa.0.019.i.add = add nuw nsw i64 %.sroa.0.019.i.idx, 12 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.019.i.add, 192
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_T0_.exit, label %bb.b, !llvm.loop !250

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_T0_.exit: ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %.not6.i = icmp eq ptr %i.o, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_T0_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_.exit.i14
  %.sroa.0.07.i = phi ptr [ %i.u, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_.exit.i14 ], [ %i.o, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_T0_.exit ] ; 6 uses
  %.sroa.03.0.copyload.i.i = load float, ptr %.sroa.0.07.i, align 4, !tbaa !34 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i13 = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 4
  %i.p = load i64, ptr %.sroa.5.0..sroa_idx.i.i13, align 4
  %.sroa.0.09.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -12 ; 2 uses
  %i.q = load float, ptr %.sroa.0.09.i.i, align 4, !tbaa !31
  %i.r = fcmp reassoc nsz arcp contract afn olt float %.sroa.03.0.copyload.i.i, %i.q
  br i1 %i.r, label %.lr.ph.i.i18, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_.exit.i14

.lr.ph.i.i18:                                     ; preds = %.lr.ph.i12, %.lr.ph.i.i18
  %.sroa.0.011.i.i19 = phi ptr [ %.sroa.0.0.i.i21, %.lr.ph.i.i18 ], [ %.sroa.0.09.i.i, %.lr.ph.i12 ] ; 4 uses
  %.sroa.06.010.i.i20 = phi ptr [ %.sroa.0.011.i.i19, %.lr.ph.i.i18 ], [ %.sroa.0.07.i, %.lr.ph.i12 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.06.010.i.i20, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.011.i.i19, i64 12, i1 false), !tbaa.struct !96
  %.sroa.0.0.i.i21 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i19, i64 -12 ; 2 uses
  %i.s = load float, ptr %.sroa.0.0.i.i21, align 4, !tbaa !31
  %i.t = fcmp reassoc nsz arcp contract afn olt float %.sroa.03.0.copyload.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i18, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_.exit.i14, !llvm.loop !249

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_.exit.i14: ; preds = %.lr.ph.i.i18, %.lr.ph.i12
  %.sroa.06.0.lcssa.i.i15 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i12 ], [ %.sroa.0.011.i.i19, %.lr.ph.i.i18 ] ; 2 uses
  store float %.sroa.03.0.copyload.i.i, ptr %.sroa.06.0.lcssa.i.i15, align 4, !tbaa !34
  %.sroa.5.0..sroa_idx5.i.i16 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i15, i64 4
  store i64 %i.p, ptr %.sroa.5.0..sroa_idx5.i.i16, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 12 ; 2 uses
  %.not.i17 = icmp eq ptr %i.u, %1
  br i1 %.not.i17, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_T0_.exit, label %.lr.ph.i12, !llvm.loop !251

bb.h:                                             ; preds = %bb.a
  %i.v = icmp eq ptr %0, %1
  %.sroa.0.016.i23 = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.not17.i24 = icmp eq ptr %.sroa.0.016.i23, %1
  %or.cond = select i1 %i.v, i1 true, i1 %.not17.i24
  br i1 %or.cond, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_T0_.exit, label %.lr.ph.i25

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
  %2 = getelementptr inbounds nuw i8, ptr %.pn18.i27, i64 24
  %.neg24.i39 = udiv exact i64 %i.aa, 12
  %.neg24.neg.i40 = sub nsw i64 0, %.neg24.i39
  %3 = getelementptr inbounds [12 x i8], ptr %2, i64 %.neg24.neg.i40
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %3, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.aa, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i38

bb.k:                                             ; preds = %bb.i
  %i.ac = icmp eq i64 %i.aa, 12
  br i1 %i.ac, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i38

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn18.i27, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ad, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !96
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i38

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i38: ; preds = %bb.l, %bb.k, %bb.j
  store <3 x float> %.sroa.058.0.copyload, ptr %0, align 4
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.i25
  %.sroa.5.0..sroa_idx.i.i28 = getelementptr inbounds nuw i8, ptr %.pn18.i27, i64 16
  %i.ae = load i64, ptr %.sroa.5.0..sroa_idx.i.i28, align 4
  %i.af = load float, ptr %.pn18.i27, align 4, !tbaa !31
  %i.ag = fcmp reassoc nsz arcp contract afn olt float %i.w, %i.af
  br i1 %i.ag, label %.lr.ph.i.i34, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_.exit.i29

.lr.ph.i.i34:                                     ; preds = %bb.m, %.lr.ph.i.i34
  %.sroa.0.011.i.i35 = phi ptr [ %.sroa.0.0.i.i37, %.lr.ph.i.i34 ], [ %.pn18.i27, %bb.m ] ; 4 uses
  %.sroa.06.010.i.i36 = phi ptr [ %.sroa.0.011.i.i35, %.lr.ph.i.i34 ], [ %.sroa.0.019.i26, %bb.m ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.06.010.i.i36, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.011.i.i35, i64 12, i1 false), !tbaa.struct !96
  %.sroa.0.0.i.i37 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i35, i64 -12 ; 2 uses
  %i.ah = load float, ptr %.sroa.0.0.i.i37, align 4, !tbaa !31
  %i.ai = fcmp reassoc nsz arcp contract afn olt float %i.w, %i.ah
  br i1 %i.ai, label %.lr.ph.i.i34, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_.exit.i29, !llvm.loop !249

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_.exit.i29: ; preds = %.lr.ph.i.i34, %bb.m
  %.sroa.06.0.lcssa.i.i30 = phi ptr [ %.sroa.0.019.i26, %bb.m ], [ %.sroa.0.011.i.i35, %.lr.ph.i.i34 ] ; 2 uses
  store float %i.w, ptr %.sroa.06.0.lcssa.i.i30, align 4, !tbaa !34
  %.sroa.5.0..sroa_idx5.i.i31 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i30, i64 4
  store i64 %i.ae, ptr %.sroa.5.0..sroa_idx5.i.i31, align 4
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_.exit.i29, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i38
  %.sroa.0.0.i32 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i26, i64 12 ; 2 uses
  %.not.i33 = icmp eq ptr %.sroa.0.0.i32, %1
  br i1 %.not.i33, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_T0_.exit, label %.lr.ph.i25, !llvm.loop !250

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_T0_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_.exit.i14, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8interpol31monotone_hermite_spline_variantIfE4initEv(ptr noundef nonnull align 8 dereferenceable(41) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !11     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 19 uses
  %i.h = icmp eq i64 %i.f, 12
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !36
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit155

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i8, ptr %i.j, align 8, !tbaa !20, !range !27, !noundef !28
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %bb.ai

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.o = load float, ptr %i.n, align 4, !tbaa !29
  %i.p = load float, ptr %i.m, align 8, !tbaa !30
  %i.q = fsub reassoc nsz arcp contract afn float %i.o, %i.p ; 2 uses
  %i.r = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #21
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not262 = icmp eq ptr %i.b, %i.c
  br i1 %.not262, label %.lr.ph369.preheader, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i: ; preds = %bb.f
  %i.s = shl nuw nsw i64 %i.g, 2                  ; 2 uses
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #20
          to label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i69 unwind label %.thread ; 5 uses

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i69: ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.g ; 3 uses
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #20
          to label %_ZNSt6vectorIfSaIfEE7reserveEm.exit75 unwind label %.thread ; 4 uses

_ZNSt6vectorIfSaIfEE7reserveEm.exit75:            ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i69
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.g ; 2 uses
  %i.x = add nsw i64 %i.g, -1                     ; 2 uses
  %.not381 = icmp eq i64 %i.x, 0
  br i1 %.not381, label %._crit_edge370, label %.lr.ph369.preheader

.lr.ph369.preheader:                              ; preds = %bb.f, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75
  %i.y = phi i64 [ %i.x, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75 ], [ -1, %bb.f ] ; 2 uses
  %.sroa.24.2459 = phi ptr [ %i.w, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75 ], [ null, %bb.f ]
  %.sroa.0192.2458 = phi ptr [ %i.v, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75 ], [ null, %bb.f ] ; 2 uses
  %.sroa.16216.1229457 = phi ptr [ %i.t, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75 ], [ null, %bb.f ] ; 2 uses
  %.sroa.24219.3231456 = phi ptr [ %i.u, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75 ], [ null, %bb.f ]
  br label %.lr.ph369

._crit_edge370.loopexit:                          ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit97
  %.pre431 = load ptr, ptr %0, align 8, !tbaa !11
  br label %._crit_edge370

._crit_edge370:                                   ; preds = %._crit_edge370.loopexit, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75
  %i.z = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75 ], [ %i.y, %._crit_edge370.loopexit ] ; 4 uses
  %i.aa = phi ptr [ %i.c, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75 ], [ %.pre431, %._crit_edge370.loopexit ] ; 4 uses
  %.sroa.0207.0.lcssa = phi ptr [ %i.t, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75 ], [ %.sroa.0207.5, %._crit_edge370.loopexit ] ; 6 uses
  %.sroa.16216.0.lcssa = phi ptr [ %i.t, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75 ], [ %.sroa.16216.2, %._crit_edge370.loopexit ] ; 4 uses
  %.sroa.24219.0.lcssa = phi ptr [ %i.u, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75 ], [ %.sroa.24219.5, %._crit_edge370.loopexit ] ; 2 uses
  %.sroa.0192.0.lcssa = phi ptr [ %i.v, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75 ], [ %.sroa.0192.3, %._crit_edge370.loopexit ] ; 7 uses
  %.sroa.16.0.lcssa = phi ptr [ %i.v, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75 ], [ %.sroa.16.2, %._crit_edge370.loopexit ] ; 4 uses
  %.sroa.24.0.lcssa = phi ptr [ %i.w, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75 ], [ %.sroa.24.3, %._crit_edge370.loopexit ] ; 3 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !31
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.aa, i64 %i.z
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !31
  %i.ae = fsub reassoc nsz arcp contract afn float %i.ab, %i.ad
  %i.af = fadd reassoc nsz arcp contract afn float %i.ae, %i.q ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.16216.0.lcssa, %.sroa.24219.0.lcssa
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge370
  store float %i.af, ptr %.sroa.16216.0.lcssa, align 4, !tbaa !34
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

bb.h:                                             ; preds = %._crit_edge370
  %i.ag = ptrtoint ptr %.sroa.16216.0.lcssa to i64
  %i.ah = ptrtoint ptr %.sroa.0207.0.lcssa to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 6 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775804
  br i1 %i.aj, label %bb.i, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc76 unwind label %bb.ac

.noexc76:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.ak = ashr exact i64 %i.ai, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.al, i64 2305843009213693951)
  %i.ao = select i1 %i.am, i64 2305843009213693951, i64 %i.an ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ao, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ap = shl nuw nsw i64 %i.ao, 2
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #20
          to label %.noexc77 unwind label %bb.ac  ; 4 uses

.noexc77:                                         ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.ai
  store float %i.af, ptr %i.ar, align 4, !tbaa !34
  %i.as = icmp sgt i64 %i.ai, 0
  br i1 %i.as, label %bb.j, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

bb.j:                                             ; preds = %.noexc77
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aq, ptr align 4 %.sroa.0207.0.lcssa, i64 %i.ai, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.j, %.noexc77
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0207.0.lcssa, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0207.0.lcssa, i64 noundef %i.ai) #19
  %.pre432.pre = load ptr, ptr %0, align 8, !tbaa !11
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  %.pre432 = phi ptr [ %.pre432.pre, %bb.k ], [ %i.aa, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ao
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

.thread:                                          ; preds = %bb.e, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i69
  %.sroa.0207.1 = phi ptr [ null, %bb.e ], [ null, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i ], [ %i.t, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i69 ]
  %.sroa.24219.1 = phi ptr [ null, %bb.e ], [ null, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i ], [ %i.u, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i69 ]
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit113

.lr.ph369:                                        ; preds = %.lr.ph369.preheader, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit97
  %.052368 = phi i64 [ %i.av, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit97 ], [ 0, %.lr.ph369.preheader ] ; 3 uses
end_hunk_2
