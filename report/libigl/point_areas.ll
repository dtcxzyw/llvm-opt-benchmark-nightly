Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/point_areas?download=true
inline.NumInlined: 12872
inline.NumDeleted: 5810
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 97
loop-unroll.NumUnrolled: 117
begin_hunk_0_@_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_SS_SS_T0_T1_:bb.a
  %.03158 = phi i64 [ %i.l, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %i.k = phi i64 [ %i.ay, %.lr.ph ], [ %i.d, %.lr.ph.preheader ]
  %i.l = add nsw i64 %.03158, -1                  ; 2 uses
  %i.m = lshr i64 %i.k, 1
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sroa.022.02960, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.022.02960, i64 8 ; 4 uses
  %i.p = getelementptr inbounds i8, ptr %.sroa.019.03059, i64 -8 ; 3 uses
  %i.q = load i64, ptr %i.o, align 8, !tbaa !61   ; 3 uses
  %i.r = load i64, ptr %i.n, align 8, !tbaa !61   ; 3 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.q
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.r
  %i.u = load double, ptr %i.s, align 8, !tbaa !44 ; 3 uses
  %i.v = load double, ptr %i.t, align 8, !tbaa !44 ; 3 uses
  %i.w = fcmp olt double %i.u, %i.v
  %i.x = load i64, ptr %i.p, align 8, !tbaa !61   ; 3 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.x
  %i.z = load double, ptr %i.y, align 8, !tbaa !44 ; 4 uses
  br i1 %i.w, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph61
  %i.aa = fcmp olt double %i.v, %i.z
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = load i64, ptr %.sroa.022.02960, align 8, !tbaa !61
  store i64 %i.r, ptr %.sroa.022.02960, align 8, !tbaa !61
  store i64 %i.ab, ptr %i.n, align 8, !tbaa !61
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_SS_SS_SS_T0_.exit.i.preheader

bb.d:                                             ; preds = %bb.b
  %i.ac = fcmp olt double %i.u, %i.z
  %i.ad = load i64, ptr %.sroa.022.02960, align 8, !tbaa !61 ; 2 uses
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 %i.x, ptr %.sroa.022.02960, align 8, !tbaa !61
  store i64 %i.ad, ptr %i.p, align 8, !tbaa !61
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_SS_SS_SS_T0_.exit.i.preheader

bb.f:                                             ; preds = %bb.d
  store i64 %i.q, ptr %.sroa.022.02960, align 8, !tbaa !61
  store i64 %i.ad, ptr %i.o, align 8, !tbaa !61
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_SS_SS_SS_T0_.exit.i.preheader

bb.g:                                             ; preds = %.lr.ph61
  %i.ae = fcmp olt double %i.u, %i.z
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = load i64, ptr %.sroa.022.02960, align 8, !tbaa !61
  store i64 %i.q, ptr %.sroa.022.02960, align 8, !tbaa !61
  store i64 %i.af, ptr %i.o, align 8, !tbaa !61
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_SS_SS_SS_T0_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.ag = fcmp olt double %i.v, %i.z
  %i.ah = load i64, ptr %.sroa.022.02960, align 8, !tbaa !61 ; 2 uses
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 %i.x, ptr %.sroa.022.02960, align 8, !tbaa !61
  store i64 %i.ah, ptr %i.p, align 8, !tbaa !61
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_SS_SS_SS_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  store i64 %i.r, ptr %.sroa.022.02960, align 8, !tbaa !61
  store i64 %i.ah, ptr %i.n, align 8, !tbaa !61
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_SS_SS_SS_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_SS_SS_SS_T0_.exit.i.preheader: ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %bb.c
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_SS_SS_SS_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_SS_SS_SS_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_SS_SS_SS_T0_.exit.i.preheader, %bb.n
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.n ], [ %.sroa.019.03059, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_SS_SS_SS_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.ap, %bb.n ], [ %i.o, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_SS_SS_SS_T0_.exit.i.preheader ]
  %i.ai = load i64, ptr %.sroa.022.02960, align 8, !tbaa !61
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !44 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_SS_SS_SS_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_SS_SS_SS_T0_.exit.i ], [ %i.ap, %bb.l ] ; 7 uses
  %i.al = load i64, ptr %.sroa.012.1.i.i, align 8, !tbaa !61 ; 2 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.al
  %i.an = load double, ptr %i.am, align 8, !tbaa !44
  %i.ao = fcmp olt double %i.an, %i.ak
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.ao, label %bb.l, label %.preheader.i.i, !llvm.loop !1414

.preheader.i.i:                                   ; preds = %bb.l, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.l ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -8 ; 5 uses
  %i.aq = load i64, ptr %.sroa.09.1.i.i, align 8, !tbaa !61 ; 2 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.aq
  %i.as = load double, ptr %i.ar, align 8, !tbaa !44
  %i.at = fcmp olt double %i.ak, %i.as
  br i1 %i.at, label %.preheader.i.i, label %bb.m, !llvm.loop !1415

bb.m:                                             ; preds = %.preheader.i.i
  %i.au = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.au, label %bb.n, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEET_SS_SS_T0_.exit

bb.n:                                             ; preds = %bb.m
  store i64 %i.aq, ptr %.sroa.012.1.i.i, align 8, !tbaa !61
  store i64 %i.al, ptr %.sroa.09.1.i.i, align 8, !tbaa !61
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_SS_SS_SS_T0_.exit.i, !llvm.loop !1416

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEET_SS_SS_T0_.exit: ; preds = %bb.m
  %.not = icmp ugt ptr %.sroa.012.1.i.i, %1       ; 2 uses
  %.sroa.012.1.i.i..sroa.022.0 = select i1 %.not, ptr %.sroa.022.02960, ptr %.sroa.012.1.i.i ; 4 uses
  %.sroa.019.0..sroa.012.1.i.i = select i1 %.not, ptr %.sroa.012.1.i.i, ptr %.sroa.019.03059 ; 4 uses
  %i.av = ptrtoint ptr %.sroa.019.0..sroa.012.1.i.i to i64
  %i.aw = ptrtoint ptr %.sroa.012.1.i.i..sroa.022.0 to i64 ; 2 uses
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = ashr exact i64 %i.ax, 3                 ; 2 uses
  %i.az = icmp sgt i64 %i.ay, 3
  br i1 %i.az, label %.lr.ph, label %._crit_edge, !llvm.loop !1413

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEET_SS_SS_T0_.exit, %bb.a
  %.sroa.022.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.012.1.i.i..sroa.022.0, %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEET_SS_SS_T0_.exit ] ; 8 uses
  %.sroa.019.0.lcssa = phi ptr [ %2, %bb.a ], [ %.sroa.019.0..sroa.012.1.i.i, %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEET_SS_SS_T0_.exit ] ; 3 uses
  %.lcssa25 = phi i64 [ %i.b, %bb.a ], [ %i.aw, %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEET_SS_SS_T0_.exit ]
  %i.ba = icmp eq ptr %.sroa.022.0.lcssa, %.sroa.019.0.lcssa
  %.sroa.0.018.i = getelementptr inbounds nuw i8, ptr %.sroa.022.0.lcssa, i64 8 ; 2 uses
  %.not19.i = icmp eq ptr %.sroa.0.018.i, %.sroa.019.0.lcssa
  %or.cond = select i1 %i.ba, i1 true, i1 %.not19.i
  br i1 %or.cond, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_SS_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i
  %.sroa.0.021.i = phi ptr [ %.sroa.0.0.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i ], [ %.sroa.0.018.i, %._crit_edge ] ; 6 uses
  %.pn20.i = phi ptr [ %.sroa.0.021.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i ], [ %.sroa.022.0.lcssa, %._crit_edge ] ; 4 uses
  %i.bb = load i64, ptr %.sroa.0.021.i, align 8, !tbaa !61 ; 2 uses
  %i.bc = load i64, ptr %.sroa.022.0.lcssa, align 8, !tbaa !61 ; 2 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.bb
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.bc
  %i.bf = load double, ptr %i.bd, align 8, !tbaa !44 ; 3 uses
  %i.bg = load double, ptr %i.be, align 8, !tbaa !44
  %i.bh = fcmp olt double %i.bf, %i.bg
  br i1 %i.bh, label %bb.o, label %bb.s

bb.o:                                             ; preds = %.lr.ph.i
  %i.bi = ptrtoint ptr %.sroa.0.021.i to i64
  %i.bj = sub i64 %i.bi, %.lcssa25                ; 3 uses
  %i.bk = ashr exact i64 %i.bj, 3                 ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, 1
  br i1 %i.bl, label %bb.p, label %bb.q, !prof !146

bb.p:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 16
  %i.bn = sub nsw i64 0, %i.bk
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.bn
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bo, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.022.0.lcssa, i64 %i.bj, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

bb.q:                                             ; preds = %bb.o
  %i.bp = icmp eq i64 %i.bj, 8
  br i1 %i.bp, label %bb.r, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

bb.r:                                             ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  store i64 %i.bc, ptr %i.bq, align 8, !tbaa !61
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

bb.s:                                             ; preds = %.lr.ph.i
  %i.br = load i64, ptr %.pn20.i, align 8, !tbaa !61 ; 2 uses
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.br
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !44
  %i.bu = fcmp olt double %i.bf, %i.bt
  br i1 %i.bu, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.s, %.lr.ph.i.i
  %i.bv = phi i64 [ %i.bw, %.lr.ph.i.i ], [ %i.br, %bb.s ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.s ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i, %bb.s ]
  store i64 %i.bv, ptr %.sroa.05.09.i.i, align 8, !tbaa !61
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -8 ; 2 uses
  %i.bw = load i64, ptr %.sroa.0.0.i.i, align 8, !tbaa !61 ; 2 uses
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.bw
  %i.by = load double, ptr %i.bx, align 8, !tbaa !44
  %i.bz = fcmp olt double %i.bf, %i.by
  br i1 %i.bz, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !1417

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.s, %bb.r, %bb.q, %bb.p
  %.sink.i = phi ptr [ %.sroa.022.0.lcssa, %bb.r ], [ %.sroa.022.0.lcssa, %bb.p ], [ %.sroa.022.0.lcssa, %bb.q ], [ %.sroa.0.021.i, %bb.s ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store i64 %i.bb, ptr %.sink.i, align 8, !tbaa !61
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %.sroa.019.0.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_SS_T0_.exit, label %.lr.ph.i, !llvm.loop !1418

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_SS_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i, %._crit_edge, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_SS_SS_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 3 uses
  %i.d = ashr i64 %.fr, 3                         ; 7 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_SS_RT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2
  %i.g = lshr i64 %i.f, 1                         ; 4 uses
  %i.h = add nsw i64 %i.d, -1                     ; 3 uses
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.g
  br i1 %i.k, label %.split, label %.split.us

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_T0_ST_T1_T2_.exit.i.us
  %.09.i.us = phi i64 [ %i.ar, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_T0_ST_T1_T2_.exit.i.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.us
  %i.o = load i64, ptr %i.n, align 8, !tbaa !61   ; 2 uses
  %i.p = icmp slt i64 %.09.i.us, %i.i
  br i1 %i.p, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_T0_ST_T1_T2_.exit.i.us

.lr.ph.i.i.us:                                    ; preds = %.split.us, %.lr.ph.i.i.us
  %.037.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ %.09.i.us, %.split.us ] ; 2 uses
  %i.q = shl i64 %.037.i.i.us, 1                  ; 2 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %0, i64 %i.r
  %i.t = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = load i64, ptr %i.s, align 8, !tbaa !61
  %i.w = load i64, ptr %i.u, align 8, !tbaa !61
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.v
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.w
  %i.z = load double, ptr %i.x, align 8, !tbaa !44
  %i.aa = load double, ptr %i.y, align 8, !tbaa !44
  %i.ab = fcmp olt double %i.z, %i.aa
  %spec.select.i.i.us = select i1 %i.ab, i64 %i.t, i64 %i.r ; 6 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.us
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !61
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.037.i.i.us
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !61
  %i.af = icmp slt i64 %spec.select.i.i.us, %i.i
  br i1 %i.af, label %.lr.ph.i.i.us, label %._crit_edge.i.i.us, !llvm.loop !1419

._crit_edge.i.i.us:                               ; preds = %.lr.ph.i.i.us
  %i.ag = icmp sgt i64 %spec.select.i.i.us, %.09.i.us
  br i1 %i.ag, label %.lr.ph.i.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_T0_ST_T1_T2_.exit.i.us

.lr.ph.i.i.i.us:                                  ; preds = %._crit_edge.i.i.us
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.o
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !44
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.i.us
  %.019.i.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.i.us ], [ %.0920.i.i.i.us, %bb.d ] ; 3 uses
  %.0920.in.i.i.i.us = add nsw i64 %.019.i.i.i.us, -1
  %.0920.i.i.i.us = sdiv i64 %.0920.in.i.i.i.us, 2 ; 4 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i.i.us
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !61 ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !tbaa !44
  %i.an = fcmp olt double %i.am, %i.ai
  br i1 %i.an, label %bb.d, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_T0_ST_T1_T2_.exit.i.us

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i.i.us
  store i64 %i.ak, ptr %i.ao, align 8, !tbaa !61
  %i.ap = icmp sgt i64 %.0920.i.i.i.us, %.09.i.us
  br i1 %i.ap, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_T0_ST_T1_T2_.exit.i.us, !llvm.loop !1420

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_T0_ST_T1_T2_.exit.i.us: ; preds = %bb.c, %bb.d, %.split.us, %._crit_edge.i.i.us
  %.0.lcssa.i.i.i.us = phi i64 [ %spec.select.i.i.us, %._crit_edge.i.i.us ], [ %.09.i.us, %.split.us ], [ %.0920.i.i.i.us, %bb.d ], [ %.019.i.i.i.us, %bb.c ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.us
  store i64 %i.o, ptr %i.aq, align 8, !tbaa !61
  %.not.i.us = icmp eq i64 %.09.i.us, 0
  %i.ar = add nsw i64 %.09.i.us, -1
  br i1 %.not.i.us, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_SS_RT0_.exit, label %.split.us, !llvm.loop !1421

.split:                                           ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_T0_ST_T1_T2_.exit.i
  %.09.i = phi i64 [ %i.by, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_T0_ST_T1_T2_.exit.i ], [ %i.g, %bb.b ] ; 8 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i
  %i.at = load i64, ptr %i.as, align 8, !tbaa !61 ; 2 uses
  %i.au = icmp slt i64 %.09.i, %i.i
  br i1 %i.au, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.split, %.lr.ph.i.i
  %.037.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.09.i, %.split ] ; 2 uses
  %i.av = shl i64 %.037.i.i, 1                    ; 2 uses
  %i.aw = add i64 %i.av, 2                        ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aw
  %i.ay = or disjoint i64 %i.av, 1                ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ay
  %i.ba = load i64, ptr %i.ax, align 8, !tbaa !61
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !61
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.ba
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.bb
  %i.be = load double, ptr %i.bc, align 8, !tbaa !44
  %i.bf = load double, ptr %i.bd, align 8, !tbaa !44
  %i.bg = fcmp olt double %i.be, %i.bf
  %spec.select.i.i = select i1 %i.bg, i64 %i.ay, i64 %i.aw ; 4 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !61
  %i.bj = getelementptr inbounds [8 x i8], ptr %0, i64 %.037.i.i
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !61
  %i.bk = icmp slt i64 %spec.select.i.i, %i.i
  br i1 %i.bk, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1419

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.split
  %.0.lcssa.i.i = phi i64 [ %.09.i, %.split ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.bl = icmp eq i64 %.0.lcssa.i.i, %i.g
  br i1 %i.bl, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.bm = load i64, ptr %i.l, align 8, !tbaa !61
  store i64 %i.bm, ptr %i.m, align 8, !tbaa !61
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i
  %.1.i.i = phi i64 [ %i.h, %bb.e ], [ %.0.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.bn = icmp sgt i64 %.1.i.i, %.09.i
  br i1 %i.bn, label %.lr.ph.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_T0_ST_T1_T2_.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.at
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !44
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i
  %.019.i.i.i = phi i64 [ %.1.i.i, %.lr.ph.i.i.i ], [ %.0920.i.i.i, %bb.h ] ; 3 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i.i = sdiv i64 %.0920.in.i.i.i, 2      ; 4 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i.i
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !61 ; 2 uses
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.br
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !44
  %i.bu = fcmp olt double %i.bt, %i.bp
  br i1 %i.bu, label %bb.h, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_T0_ST_T1_T2_.exit.i

bb.h:                                             ; preds = %bb.g
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i.i
  store i64 %i.br, ptr %i.bv, align 8, !tbaa !61
  %i.bw = icmp sgt i64 %.0920.i.i.i, %.09.i
  br i1 %i.bw, label %bb.g, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_T0_ST_T1_T2_.exit.i, !llvm.loop !1420

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_T0_ST_T1_T2_.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %.0.lcssa.i.i.i = phi i64 [ %.1.i.i, %bb.f ], [ %.019.i.i.i, %bb.g ], [ %.0920.i.i.i, %bb.h ]
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i64 %i.at, ptr %i.bx, align 8, !tbaa !61
  %.not.i = icmp eq i64 %.09.i, 0
  %i.by = add nsw i64 %.09.i, -1
  br i1 %.not.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_SS_RT0_.exit, label %.split, !llvm.loop !1421

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_SS_RT0_.exit: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_T0_ST_T1_T2_.exit.i.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_T0_ST_T1_T2_.exit.i, %bb.a
  %i.bz = icmp ult ptr %1, %2
  br i1 %i.bz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_SS_RT0_.exit
  %i.ca = add nsw i64 %i.d, -1
  %i.cb = lshr i64 %i.ca, 1
  %i.cc = icmp sgt i64 %i.d, 2
  %i.cd = and i64 %.fr, 8
  %i.ce = icmp eq i64 %i.cd, 0                    ; 2 uses
  %i.cf = add nsw i64 %i.d, -2                    ; 2 uses
  %i.cg = ashr exact i64 %i.cf, 1                 ; 2 uses
  br i1 %i.cc, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %4 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cg
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.k
  %.sroa.0.024.us = phi ptr [ %i.dp, %bb.k ], [ %1, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.cj = load i64, ptr %.sroa.0.024.us, align 8, !tbaa !61 ; 2 uses
  %i.ck = load i64, ptr %0, align 8, !tbaa !61    ; 2 uses
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.cj
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.ck
  %i.cn = load double, ptr %i.cl, align 8, !tbaa !44 ; 2 uses
  %i.co = load double, ptr %i.cm, align 8, !tbaa !44
  %i.cp = fcmp olt double %i.cn, %i.co
  br i1 %i.cp, label %.lr.ph.i.i18.preheader.us, label %bb.k

.lr.ph.i.i18.preheader.us:                        ; preds = %.lr.ph.split.us
  store i64 %i.ck, ptr %.sroa.0.024.us, align 8, !tbaa !61
  br label %.lr.ph.i.i18.us

.lr.ph.i.i18.us:                                  ; preds = %.lr.ph.i.i18.us, %.lr.ph.i.i18.preheader.us
  %.037.i.i19.us = phi i64 [ %spec.select.i.i20.us, %.lr.ph.i.i18.us ], [ 0, %.lr.ph.i.i18.preheader.us ] ; 2 uses
  %i.cq = shl i64 %.037.i.i19.us, 1               ; 2 uses
  %i.cr = add i64 %i.cq, 2                        ; 2 uses
  %i.cs = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cr
  %i.ct = or disjoint i64 %i.cq, 1                ; 2 uses
  %i.cu = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ct
  %i.cv = load i64, ptr %i.cs, align 8, !tbaa !61
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !61
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.cv
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.cw
  %i.cz = load double, ptr %i.cx, align 8, !tbaa !44
  %i.da = load double, ptr %i.cy, align 8, !tbaa !44
  %i.db = fcmp olt double %i.cz, %i.da
  %spec.select.i.i20.us = select i1 %i.db, i64 %i.ct, i64 %i.cr ; 6 uses
  %i.dc = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i20.us
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !61
  %i.de = getelementptr inbounds [8 x i8], ptr %0, i64 %.037.i.i19.us
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !61
  %i.df = icmp slt i64 %spec.select.i.i20.us, %i.cb
  br i1 %i.df, label %.lr.ph.i.i18.us, label %._crit_edge.i.i10.loopexit.us, !llvm.loop !1419

._crit_edge.i.i10.loopexit.us:                    ; preds = %.lr.ph.i.i18.us
  %i.dg = icmp eq i64 %spec.select.i.i20.us, %i.cg
  %or.cond = select i1 %i.ce, i1 %i.dg, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i10.loopexit.us
  %.not.i12.us = icmp eq i64 %spec.select.i.i20.us, 0
  br i1 %.not.i12.us, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_SS_SS_RT0_.exit.us, label %.lr.ph.i.i.i13.us.preheader

.thread.i.us:                                     ; preds = %._crit_edge.i.i10.loopexit.us
  %i.dh = load i64, ptr %i.ch, align 8, !tbaa !61
  store i64 %i.dh, ptr %i.ci, align 8, !tbaa !61
  br label %.lr.ph.i.i.i13.us.preheader

.lr.ph.i.i.i13.us.preheader:                      ; preds = %.thread.i.us, %bb.i
  %.019.i.i.i14.us.ph = phi i64 [ %spec.select.i.i20.us, %bb.i ], [ %4, %.thread.i.us ]
  br label %.lr.ph.i.i.i13.us

.lr.ph.i.i.i13.us:                                ; preds = %.lr.ph.i.i.i13.us.preheader, %bb.j
  %.019.i.i.i14.us = phi i64 [ %.0920.i.i89.i.us, %bb.j ], [ %.019.i.i.i14.us.ph, %.lr.ph.i.i.i13.us.preheader ] ; 3 uses
  %.0920.in.i.i.i15.us = add nsw i64 %.019.i.i.i14.us, -1
  %.0920.i.i89.i.us = lshr i64 %.0920.in.i.i.i15.us, 1 ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i89.i.us
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !61 ; 2 uses
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.dj
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !44
  %i.dm = fcmp olt double %i.dl, %i.cn
  br i1 %i.dm, label %bb.j, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_SS_SS_RT0_.exit.us

bb.j:                                             ; preds = %.lr.ph.i.i.i13.us
  %i.dn = getelementptr inbounds [8 x i8], ptr %0, i64 %.019.i.i.i14.us
  store i64 %i.dj, ptr %i.dn, align 8, !tbaa !61
  %.not10.i.us = icmp eq i64 %.0920.i.i89.i.us, 0
  br i1 %.not10.i.us, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_SS_SS_RT0_.exit.us, label %.lr.ph.i.i.i13.us, !llvm.loop !1420

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_SS_SS_RT0_.exit.us: ; preds = %.lr.ph.i.i.i13.us, %bb.j, %bb.i
  %.0.lcssa.i.i.i17.us = phi i64 [ 0, %bb.i ], [ %.019.i.i.i14.us, %.lr.ph.i.i.i13.us ], [ 0, %bb.j ]
  %i.do = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i17.us
  store i64 %i.cj, ptr %i.do, align 8, !tbaa !61
  br label %bb.k

bb.k:                                             ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_SS_SS_RT0_.exit.us, %.lr.ph.split.us
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.024.us, i64 8 ; 2 uses
  %i.dq = icmp ult ptr %i.dp, %2
  br i1 %i.dq, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !1422

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  br i1 %i.ce, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre = load i64, ptr %0, align 8, !tbaa !61
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.ds = icmp eq i64 %i.cf, 0
  br i1 %i.ds, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split.preheader

.lr.ph.split.split.us.split.preheader:            ; preds = %.lr.ph.split.split.us
  %.pre46 = load i64, ptr %0, align 8, !tbaa !61
  br label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.l
  %.sroa.0.024.us26.us = phi ptr [ %i.ef, %bb.l ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %i.dt = load i64, ptr %.sroa.0.024.us26.us, align 8, !tbaa !61 ; 2 uses
  %i.du = load i64, ptr %0, align 8, !tbaa !61    ; 2 uses
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.dt
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.du
  %i.dx = load double, ptr %i.dv, align 8, !tbaa !44 ; 2 uses
  %i.dy = load double, ptr %i.dw, align 8, !tbaa !44
  %i.dz = fcmp olt double %i.dx, %i.dy
  br i1 %i.dz, label %._crit_edge.i.i10.us27.us, label %bb.l

._crit_edge.i.i10.us27.us:                        ; preds = %.lr.ph.split.split.us.split.us
  store i64 %i.du, ptr %.sroa.0.024.us26.us, align 8, !tbaa !61
  %i.ea = load i64, ptr %i.dr, align 8, !tbaa !61 ; 2 uses
  store i64 %i.ea, ptr %0, align 8, !tbaa !61
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.ea
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !44
  %i.ed = fcmp uge double %i.ec, %i.dx
  %spec.select = zext i1 %i.ed to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %spec.select
  store i64 %i.dt, ptr %i.ee, align 8, !tbaa !61
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i10.us27.us, %.lr.ph.split.split.us.split.us
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0.024.us26.us, i64 8 ; 2 uses
  %i.eg = icmp ult ptr %i.ef, %2
  br i1 %i.eg, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !1422

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us.split.preheader, %bb.m
  %i.eh = phi i64 [ %i.eo, %bb.m ], [ %.pre46, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %.sroa.0.024.us26 = phi ptr [ %i.ep, %bb.m ], [ %1, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %i.ei = load i64, ptr %.sroa.0.024.us26, align 8, !tbaa !61 ; 3 uses
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.ei
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.eh
  %i.el = load double, ptr %i.ej, align 8, !tbaa !44
  %i.em = load double, ptr %i.ek, align 8, !tbaa !44
  %i.en = fcmp olt double %i.el, %i.em
  br i1 %i.en, label %._crit_edge.i.i10.us27, label %bb.m

._crit_edge.i.i10.us27:                           ; preds = %.lr.ph.split.split.us.split
  store i64 %i.eh, ptr %.sroa.0.024.us26, align 8, !tbaa !61
  store i64 %i.ei, ptr %0, align 8, !tbaa !61
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i10.us27, %.lr.ph.split.split.us.split
  %i.eo = phi i64 [ %i.ei, %._crit_edge.i.i10.us27 ], [ %i.eh, %.lr.ph.split.split.us.split ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0.024.us26, i64 8 ; 2 uses
  %i.eq = icmp ult ptr %i.ep, %2
  br i1 %i.eq, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !1422

._crit_edge:                                      ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb0EEEEEEvT_SS_RT0_.exit
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.n
  %i.er = phi i64 [ %i.ey, %bb.n ], [ %.pre, %.lr.ph.split.split.preheader ] ; 3 uses
  %.sroa.0.024 = phi ptr [ %i.ez, %bb.n ], [ %1, %.lr.ph.split.split.preheader ] ; 3 uses
  %i.es = load i64, ptr %.sroa.0.024, align 8, !tbaa !61 ; 3 uses
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.es
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.er
  %i.ev = load double, ptr %i.et, align 8, !tbaa !44
  %i.ew = load double, ptr %i.eu, align 8, !tbaa !44
  %i.ex = fcmp olt double %i.ev, %i.ew
  br i1 %i.ex, label %._crit_edge.i.i10, label %bb.n

._crit_edge.i.i10:                                ; preds = %.lr.ph.split.split
  store i64 %i.er, ptr %.sroa.0.024, align 8, !tbaa !61
  store i64 %i.es, ptr %0, align 8, !tbaa !61
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.split, %._crit_edge.i.i10
  %i.ey = phi i64 [ %i.er, %.lr.ph.split.split ], [ %i.es, %._crit_edge.i.i10 ]
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0.024, i64 8 ; 2 uses
  %i.fa = icmp ult ptr %i.ez, %2
  br i1 %i.fa, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !1422
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_SS_SS_T0_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, ptr %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 3
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = icmp eq i64 %3, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph61

.lr.ph:                                           ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEET_SS_SS_T0_.exit
  %i.g = icmp eq i64 %i.l, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph61, !llvm.loop !1423

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.019.030.lcssa = phi ptr [ %2, %.lr.ph.preheader ], [ %.sroa.019.0..sroa.012.1.i.i, %.lr.ph ]
  %.sroa.022.029.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.012.1.i.i..sroa.022.0, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_SS_SS_T0_(ptr %.sroa.022.029.lcssa, ptr nonnull %i.h, ptr %.sroa.019.030.lcssa, ptr %4)
  %i.i = load i64, ptr %.sroa.022.029.lcssa, align 8, !tbaa !61
  %i.j = load i64, ptr %1, align 8, !tbaa !61
  store i64 %i.j, ptr %.sroa.022.029.lcssa, align 8, !tbaa !61
  store i64 %i.i, ptr %1, align 8, !tbaa !61
  br label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_SS_T0_.exit

.lr.ph61:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.022.02960 = phi ptr [ %.sroa.012.1.i.i..sroa.022.0, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 14 uses
  %.sroa.019.03059 = phi ptr [ %.sroa.019.0..sroa.012.1.i.i, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.03158 = phi i64 [ %i.l, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %i.k = phi i64 [ %i.be, %.lr.ph ], [ %i.d, %.lr.ph.preheader ]
  %i.l = add nsw i64 %.03158, -1                  ; 2 uses
  %i.m = lshr i64 %i.k, 1
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sroa.022.02960, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.022.02960, i64 8 ; 4 uses
  %i.p = getelementptr inbounds i8, ptr %.sroa.019.03059, i64 -8 ; 3 uses
  %i.q = load i64, ptr %i.o, align 8, !tbaa !61   ; 3 uses
  %i.r = load i64, ptr %i.n, align 8, !tbaa !61   ; 3 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.q
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load double, ptr %i.u, align 8, !tbaa !44 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load double, ptr %i.w, align 8, !tbaa !44 ; 3 uses
  %i.y = fcmp olt double %i.v, %i.x
  %i.z = load i64, ptr %i.p, align 8, !tbaa !61   ; 3 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !44 ; 4 uses
  br i1 %i.y, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph61
  %i.ad = fcmp olt double %i.x, %i.ac
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ae = load i64, ptr %.sroa.022.02960, align 8, !tbaa !61
  store i64 %i.r, ptr %.sroa.022.02960, align 8, !tbaa !61
  store i64 %i.ae, ptr %i.n, align 8, !tbaa !61
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_SS_SS_SS_T0_.exit.i.preheader

bb.d:                                             ; preds = %bb.b
  %i.af = fcmp olt double %i.v, %i.ac
  %i.ag = load i64, ptr %.sroa.022.02960, align 8, !tbaa !61 ; 2 uses
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 %i.z, ptr %.sroa.022.02960, align 8, !tbaa !61
  store i64 %i.ag, ptr %i.p, align 8, !tbaa !61
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_SS_SS_SS_T0_.exit.i.preheader

bb.f:                                             ; preds = %bb.d
  store i64 %i.q, ptr %.sroa.022.02960, align 8, !tbaa !61
  store i64 %i.ag, ptr %i.o, align 8, !tbaa !61
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_SS_SS_SS_T0_.exit.i.preheader

bb.g:                                             ; preds = %.lr.ph61
  %i.ah = fcmp olt double %i.v, %i.ac
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = load i64, ptr %.sroa.022.02960, align 8, !tbaa !61
  store i64 %i.q, ptr %.sroa.022.02960, align 8, !tbaa !61
  store i64 %i.ai, ptr %i.o, align 8, !tbaa !61
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_SS_SS_SS_T0_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.aj = fcmp olt double %i.x, %i.ac
  %i.ak = load i64, ptr %.sroa.022.02960, align 8, !tbaa !61 ; 2 uses
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 %i.z, ptr %.sroa.022.02960, align 8, !tbaa !61
  store i64 %i.ak, ptr %i.p, align 8, !tbaa !61
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_SS_SS_SS_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  store i64 %i.r, ptr %.sroa.022.02960, align 8, !tbaa !61
  store i64 %i.ak, ptr %i.n, align 8, !tbaa !61
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_SS_SS_SS_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_SS_SS_SS_T0_.exit.i.preheader: ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %bb.c
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_SS_SS_SS_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_SS_SS_SS_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_SS_SS_SS_T0_.exit.i.preheader, %bb.n
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.n ], [ %.sroa.019.03059, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_SS_SS_SS_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.au, %bb.n ], [ %i.o, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_SS_SS_SS_T0_.exit.i.preheader ]
  %i.al = load i64, ptr %.sroa.022.02960, align 8, !tbaa !61
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load double, ptr %i.an, align 8, !tbaa !44 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_SS_SS_SS_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_SS_SS_SS_T0_.exit.i ], [ %i.au, %bb.l ] ; 7 uses
  %i.ap = load i64, ptr %.sroa.012.1.i.i, align 8, !tbaa !61 ; 2 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load double, ptr %i.ar, align 8, !tbaa !44
  %i.at = fcmp olt double %i.as, %i.ao
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.at, label %bb.l, label %.preheader.i.i, !llvm.loop !1424

.preheader.i.i:                                   ; preds = %bb.l, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.l ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -8 ; 5 uses
  %i.av = load i64, ptr %.sroa.09.1.i.i, align 8, !tbaa !61 ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !44
  %i.az = fcmp olt double %i.ao, %i.ay
  br i1 %i.az, label %.preheader.i.i, label %bb.m, !llvm.loop !1425

bb.m:                                             ; preds = %.preheader.i.i
  %i.ba = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.ba, label %bb.n, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEET_SS_SS_T0_.exit

bb.n:                                             ; preds = %bb.m
  store i64 %i.av, ptr %.sroa.012.1.i.i, align 8, !tbaa !61
  store i64 %i.ap, ptr %.sroa.09.1.i.i, align 8, !tbaa !61
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_SS_SS_SS_T0_.exit.i, !llvm.loop !1426

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEET_SS_SS_T0_.exit: ; preds = %bb.m
  %.not = icmp ugt ptr %.sroa.012.1.i.i, %1       ; 2 uses
  %.sroa.012.1.i.i..sroa.022.0 = select i1 %.not, ptr %.sroa.022.02960, ptr %.sroa.012.1.i.i ; 4 uses
  %.sroa.019.0..sroa.012.1.i.i = select i1 %.not, ptr %.sroa.012.1.i.i, ptr %.sroa.019.03059 ; 4 uses
  %i.bb = ptrtoint ptr %.sroa.019.0..sroa.012.1.i.i to i64
  %i.bc = ptrtoint ptr %.sroa.012.1.i.i..sroa.022.0 to i64 ; 2 uses
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 3                 ; 2 uses
  %i.bf = icmp sgt i64 %i.be, 3
  br i1 %i.bf, label %.lr.ph, label %._crit_edge, !llvm.loop !1423

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEET_SS_SS_T0_.exit, %bb.a
  %.sroa.022.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.012.1.i.i..sroa.022.0, %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEET_SS_SS_T0_.exit ] ; 8 uses
  %.sroa.019.0.lcssa = phi ptr [ %2, %bb.a ], [ %.sroa.019.0..sroa.012.1.i.i, %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEET_SS_SS_T0_.exit ] ; 3 uses
  %.lcssa25 = phi i64 [ %i.b, %bb.a ], [ %i.bc, %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEET_SS_SS_T0_.exit ]
  %i.bg = icmp eq ptr %.sroa.022.0.lcssa, %.sroa.019.0.lcssa
  %.sroa.0.018.i = getelementptr inbounds nuw i8, ptr %.sroa.022.0.lcssa, i64 8 ; 2 uses
  %.not19.i = icmp eq ptr %.sroa.0.018.i, %.sroa.019.0.lcssa
  %or.cond = select i1 %i.bg, i1 true, i1 %.not19.i
  br i1 %or.cond, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_SS_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i
  %.sroa.0.021.i = phi ptr [ %.sroa.0.0.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i ], [ %.sroa.0.018.i, %._crit_edge ] ; 6 uses
  %.pn20.i = phi ptr [ %.sroa.0.021.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i ], [ %.sroa.022.0.lcssa, %._crit_edge ] ; 4 uses
  %i.bh = load i64, ptr %.sroa.0.021.i, align 8, !tbaa !61 ; 2 uses
  %i.bi = load i64, ptr %.sroa.022.0.lcssa, align 8, !tbaa !61 ; 2 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.bh
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.bi
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !44 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !44
  %i.bp = fcmp olt double %i.bm, %i.bo
  br i1 %i.bp, label %bb.o, label %bb.s

bb.o:                                             ; preds = %.lr.ph.i
  %i.bq = ptrtoint ptr %.sroa.0.021.i to i64
  %i.br = sub i64 %i.bq, %.lcssa25                ; 3 uses
  %i.bs = ashr exact i64 %i.br, 3                 ; 2 uses
  %i.bt = icmp sgt i64 %i.bs, 1
  br i1 %i.bt, label %bb.p, label %bb.q, !prof !146

bb.p:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 16
  %i.bv = sub nsw i64 0, %i.bs
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bv
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bw, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.022.0.lcssa, i64 %i.br, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

bb.q:                                             ; preds = %bb.o
  %i.bx = icmp eq i64 %i.br, 8
  br i1 %i.bx, label %bb.r, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

bb.r:                                             ; preds = %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  store i64 %i.bi, ptr %i.by, align 8, !tbaa !61
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

bb.s:                                             ; preds = %.lr.ph.i
  %i.bz = load i64, ptr %.pn20.i, align 8, !tbaa !61 ; 2 uses
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !44
  %i.cd = fcmp olt double %i.bm, %i.cc
  br i1 %i.cd, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.s, %.lr.ph.i.i
  %i.ce = phi i64 [ %i.cf, %.lr.ph.i.i ], [ %i.bz, %bb.s ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.s ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i, %bb.s ]
  store i64 %i.ce, ptr %.sroa.05.09.i.i, align 8, !tbaa !61
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -8 ; 2 uses
  %i.cf = load i64, ptr %.sroa.0.0.i.i, align 8, !tbaa !61 ; 2 uses
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !44
  %i.cj = fcmp olt double %i.bm, %i.ci
  br i1 %i.cj, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !1427

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.s, %bb.r, %bb.q, %bb.p
  %.sink.i = phi ptr [ %.sroa.022.0.lcssa, %bb.r ], [ %.sroa.022.0.lcssa, %bb.p ], [ %.sroa.022.0.lcssa, %bb.q ], [ %.sroa.0.021.i, %bb.s ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store i64 %i.bh, ptr %.sink.i, align 8, !tbaa !61
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %.sroa.019.0.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_SS_T0_.exit, label %.lr.ph.i, !llvm.loop !1428

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_SS_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i, %._crit_edge, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_SS_SS_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 3 uses
  %i.d = ashr i64 %.fr, 3                         ; 7 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_SS_RT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2
  %i.g = lshr i64 %i.f, 1                         ; 4 uses
  %i.h = add nsw i64 %i.d, -1                     ; 3 uses
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.g
  br i1 %i.k, label %.split, label %.split.us

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_T0_ST_T1_T2_.exit.i.us
  %.09.i.us = phi i64 [ %i.av, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_T0_ST_T1_T2_.exit.i.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.us
  %i.o = load i64, ptr %i.n, align 8, !tbaa !61   ; 2 uses
  %i.p = icmp slt i64 %.09.i.us, %i.i
  br i1 %i.p, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_T0_ST_T1_T2_.exit.i.us

.lr.ph.i.i.us:                                    ; preds = %.split.us, %.lr.ph.i.i.us
  %.037.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ %.09.i.us, %.split.us ] ; 2 uses
  %i.q = shl i64 %.037.i.i.us, 1                  ; 2 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %0, i64 %i.r
  %i.t = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = load i64, ptr %i.s, align 8, !tbaa !61
  %i.w = load i64, ptr %i.u, align 8, !tbaa !61
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.v
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load double, ptr %i.z, align 8, !tbaa !44
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !44
  %i.ad = fcmp olt double %i.aa, %i.ac
  %spec.select.i.i.us = select i1 %i.ad, i64 %i.t, i64 %i.r ; 6 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.us
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !61
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %.037.i.i.us
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !61
  %i.ah = icmp slt i64 %spec.select.i.i.us, %i.i
  br i1 %i.ah, label %.lr.ph.i.i.us, label %._crit_edge.i.i.us, !llvm.loop !1429

._crit_edge.i.i.us:                               ; preds = %.lr.ph.i.i.us
  %i.ai = icmp sgt i64 %spec.select.i.i.us, %.09.i.us
  br i1 %i.ai, label %.lr.ph.i.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_T0_ST_T1_T2_.exit.i.us

.lr.ph.i.i.i.us:                                  ; preds = %._crit_edge.i.i.us
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.o
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load double, ptr %i.ak, align 8, !tbaa !44
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.i.us
  %.019.i.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.i.us ], [ %.0920.i.i.i.us, %bb.d ] ; 3 uses
  %.0920.in.i.i.i.us = add nsw i64 %.019.i.i.i.us, -1
  %.0920.i.i.i.us = sdiv i64 %.0920.in.i.i.i.us, 2 ; 4 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i.i.us
  %i.an = load i64, ptr %i.am, align 8, !tbaa !61 ; 2 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !44
  %i.ar = fcmp olt double %i.aq, %i.al
  br i1 %i.ar, label %bb.d, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_T0_ST_T1_T2_.exit.i.us

bb.d:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i.i.us
  store i64 %i.an, ptr %i.as, align 8, !tbaa !61
  %i.at = icmp sgt i64 %.0920.i.i.i.us, %.09.i.us
  br i1 %i.at, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_T0_ST_T1_T2_.exit.i.us, !llvm.loop !1430

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_T0_ST_T1_T2_.exit.i.us: ; preds = %bb.c, %bb.d, %.split.us, %._crit_edge.i.i.us
  %.0.lcssa.i.i.i.us = phi i64 [ %spec.select.i.i.us, %._crit_edge.i.i.us ], [ %.09.i.us, %.split.us ], [ %.0920.i.i.i.us, %bb.d ], [ %.019.i.i.i.us, %bb.c ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.us
  store i64 %i.o, ptr %i.au, align 8, !tbaa !61
  %.not.i.us = icmp eq i64 %.09.i.us, 0
  %i.av = add nsw i64 %.09.i.us, -1
  br i1 %.not.i.us, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_SS_RT0_.exit, label %.split.us, !llvm.loop !1431

.split:                                           ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_T0_ST_T1_T2_.exit.i
  %.09.i = phi i64 [ %i.cg, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_T0_ST_T1_T2_.exit.i ], [ %i.g, %bb.b ] ; 8 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !61 ; 2 uses
  %i.ay = icmp slt i64 %.09.i, %i.i
  br i1 %i.ay, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.split, %.lr.ph.i.i
  %.037.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.09.i, %.split ] ; 2 uses
  %i.az = shl i64 %.037.i.i, 1                    ; 2 uses
  %i.ba = add i64 %i.az, 2                        ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ba
  %i.bc = or disjoint i64 %i.az, 1                ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bc
  %i.be = load i64, ptr %i.bb, align 8, !tbaa !61
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !61
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.be
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.bf
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !44
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !44
  %i.bm = fcmp olt double %i.bj, %i.bl
  %spec.select.i.i = select i1 %i.bm, i64 %i.bc, i64 %i.ba ; 4 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !61
  %i.bp = getelementptr inbounds [8 x i8], ptr %0, i64 %.037.i.i
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !61
  %i.bq = icmp slt i64 %spec.select.i.i, %i.i
  br i1 %i.bq, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1429

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.split
  %.0.lcssa.i.i = phi i64 [ %.09.i, %.split ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.br = icmp eq i64 %.0.lcssa.i.i, %i.g
  br i1 %i.br, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.bs = load i64, ptr %i.l, align 8, !tbaa !61
  store i64 %i.bs, ptr %i.m, align 8, !tbaa !61
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i
  %.1.i.i = phi i64 [ %i.h, %bb.e ], [ %.0.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.bt = icmp sgt i64 %.1.i.i, %.09.i
  br i1 %i.bt, label %.lr.ph.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_T0_ST_T1_T2_.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.f
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.ax
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !44
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i
  %.019.i.i.i = phi i64 [ %.1.i.i, %.lr.ph.i.i.i ], [ %.0920.i.i.i, %bb.h ] ; 3 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i.i = sdiv i64 %.0920.in.i.i.i, 2      ; 4 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i.i
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !61 ; 2 uses
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !44
  %i.cc = fcmp olt double %i.cb, %i.bw
  br i1 %i.cc, label %bb.h, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_T0_ST_T1_T2_.exit.i

bb.h:                                             ; preds = %bb.g
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i.i
  store i64 %i.by, ptr %i.cd, align 8, !tbaa !61
  %i.ce = icmp sgt i64 %.0920.i.i.i, %.09.i
  br i1 %i.ce, label %bb.g, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_T0_ST_T1_T2_.exit.i, !llvm.loop !1430

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_T0_ST_T1_T2_.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %.0.lcssa.i.i.i = phi i64 [ %.1.i.i, %bb.f ], [ %.019.i.i.i, %bb.g ], [ %.0920.i.i.i, %bb.h ]
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i64 %i.ax, ptr %i.cf, align 8, !tbaa !61
  %.not.i = icmp eq i64 %.09.i, 0
  %i.cg = add nsw i64 %.09.i, -1
  br i1 %.not.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_SS_RT0_.exit, label %.split, !llvm.loop !1431

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_SS_RT0_.exit: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_T0_ST_T1_T2_.exit.i.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_T0_ST_T1_T2_.exit.i, %bb.a
  %i.ch = icmp ult ptr %1, %2
  br i1 %i.ch, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_SS_RT0_.exit
  %i.ci = add nsw i64 %i.d, -1
  %i.cj = lshr i64 %i.ci, 1
  %i.ck = icmp sgt i64 %i.d, 2
  %i.cl = and i64 %.fr, 8
  %i.cm = icmp eq i64 %i.cl, 0                    ; 2 uses
  %i.cn = add nsw i64 %i.d, -2                    ; 2 uses
  %i.co = ashr exact i64 %i.cn, 1                 ; 2 uses
  br i1 %i.ck, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %4 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.co
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.k
  %.sroa.0.024.us = phi ptr [ %i.ec, %bb.k ], [ %1, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.cr = load i64, ptr %.sroa.0.024.us, align 8, !tbaa !61 ; 2 uses
  %i.cs = load i64, ptr %0, align 8, !tbaa !61    ; 2 uses
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.cr
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.cs
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !44 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !44
  %i.cz = fcmp olt double %i.cw, %i.cy
  br i1 %i.cz, label %.lr.ph.i.i18.preheader.us, label %bb.k

.lr.ph.i.i18.preheader.us:                        ; preds = %.lr.ph.split.us
  store i64 %i.cs, ptr %.sroa.0.024.us, align 8, !tbaa !61
  br label %.lr.ph.i.i18.us

.lr.ph.i.i18.us:                                  ; preds = %.lr.ph.i.i18.us, %.lr.ph.i.i18.preheader.us
  %.037.i.i19.us = phi i64 [ %spec.select.i.i20.us, %.lr.ph.i.i18.us ], [ 0, %.lr.ph.i.i18.preheader.us ] ; 2 uses
  %i.da = shl i64 %.037.i.i19.us, 1               ; 2 uses
  %i.db = add i64 %i.da, 2                        ; 2 uses
  %i.dc = getelementptr inbounds [8 x i8], ptr %0, i64 %i.db
  %i.dd = or disjoint i64 %i.da, 1                ; 2 uses
  %i.de = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dd
  %i.df = load i64, ptr %i.dc, align 8, !tbaa !61
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !61
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.df
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.dg
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !44
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !44
  %i.dn = fcmp olt double %i.dk, %i.dm
  %spec.select.i.i20.us = select i1 %i.dn, i64 %i.dd, i64 %i.db ; 6 uses
  %i.do = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i20.us
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !61
  %i.dq = getelementptr inbounds [8 x i8], ptr %0, i64 %.037.i.i19.us
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !61
  %i.dr = icmp slt i64 %spec.select.i.i20.us, %i.cj
  br i1 %i.dr, label %.lr.ph.i.i18.us, label %._crit_edge.i.i10.loopexit.us, !llvm.loop !1429

._crit_edge.i.i10.loopexit.us:                    ; preds = %.lr.ph.i.i18.us
  %i.ds = icmp eq i64 %spec.select.i.i20.us, %i.co
  %or.cond = select i1 %i.cm, i1 %i.ds, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i10.loopexit.us
  %.not.i12.us = icmp eq i64 %spec.select.i.i20.us, 0
  br i1 %.not.i12.us, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_SS_SS_RT0_.exit.us, label %.lr.ph.i.i.i13.us.preheader

.thread.i.us:                                     ; preds = %._crit_edge.i.i10.loopexit.us
  %i.dt = load i64, ptr %i.cp, align 8, !tbaa !61
  store i64 %i.dt, ptr %i.cq, align 8, !tbaa !61
  br label %.lr.ph.i.i.i13.us.preheader

.lr.ph.i.i.i13.us.preheader:                      ; preds = %.thread.i.us, %bb.i
  %.019.i.i.i14.us.ph = phi i64 [ %spec.select.i.i20.us, %bb.i ], [ %4, %.thread.i.us ]
  br label %.lr.ph.i.i.i13.us

.lr.ph.i.i.i13.us:                                ; preds = %.lr.ph.i.i.i13.us.preheader, %bb.j
  %.019.i.i.i14.us = phi i64 [ %.0920.i.i89.i.us, %bb.j ], [ %.019.i.i.i14.us.ph, %.lr.ph.i.i.i13.us.preheader ] ; 3 uses
  %.0920.in.i.i.i15.us = add nsw i64 %.019.i.i.i14.us, -1
  %.0920.i.i89.i.us = lshr i64 %.0920.in.i.i.i15.us, 1 ; 3 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i89.i.us
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !61 ; 2 uses
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !44
  %i.dz = fcmp olt double %i.dy, %i.cw
  br i1 %i.dz, label %bb.j, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_SS_SS_RT0_.exit.us

bb.j:                                             ; preds = %.lr.ph.i.i.i13.us
  %i.ea = getelementptr inbounds [8 x i8], ptr %0, i64 %.019.i.i.i14.us
  store i64 %i.dv, ptr %i.ea, align 8, !tbaa !61
  %.not10.i.us = icmp eq i64 %.0920.i.i89.i.us, 0
  br i1 %.not10.i.us, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_SS_SS_RT0_.exit.us, label %.lr.ph.i.i.i13.us, !llvm.loop !1430

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_SS_SS_RT0_.exit.us: ; preds = %.lr.ph.i.i.i13.us, %bb.j, %bb.i
  %.0.lcssa.i.i.i17.us = phi i64 [ 0, %bb.i ], [ %.019.i.i.i14.us, %.lr.ph.i.i.i13.us ], [ 0, %bb.j ]
  %i.eb = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i17.us
  store i64 %i.cr, ptr %i.eb, align 8, !tbaa !61
  br label %bb.k

bb.k:                                             ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_SS_SS_RT0_.exit.us, %.lr.ph.split.us
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.024.us, i64 8 ; 2 uses
  %i.ed = icmp ult ptr %i.ec, %2
  br i1 %i.ed, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !1432

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  br i1 %i.cm, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre = load i64, ptr %0, align 8, !tbaa !61
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.ef = icmp eq i64 %i.cn, 0
  br i1 %i.ef, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split.preheader

.lr.ph.split.split.us.split.preheader:            ; preds = %.lr.ph.split.split.us
  %.pre46 = load i64, ptr %0, align 8, !tbaa !61
  br label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.l
  %.sroa.0.024.us26.us = phi ptr [ %i.ev, %bb.l ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %i.eg = load i64, ptr %.sroa.0.024.us26.us, align 8, !tbaa !61 ; 2 uses
  %i.eh = load i64, ptr %0, align 8, !tbaa !61    ; 2 uses
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.eg
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.eh
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.el = load double, ptr %i.ek, align 8, !tbaa !44 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.en = load double, ptr %i.em, align 8, !tbaa !44
  %i.eo = fcmp olt double %i.el, %i.en
  br i1 %i.eo, label %._crit_edge.i.i10.us27.us, label %bb.l

._crit_edge.i.i10.us27.us:                        ; preds = %.lr.ph.split.split.us.split.us
  store i64 %i.eh, ptr %.sroa.0.024.us26.us, align 8, !tbaa !61
  %i.ep = load i64, ptr %i.ee, align 8, !tbaa !61 ; 2 uses
  store i64 %i.ep, ptr %0, align 8, !tbaa !61
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load double, ptr %i.er, align 8, !tbaa !44
  %i.et = fcmp uge double %i.es, %i.el
  %spec.select = zext i1 %i.et to i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %spec.select
  store i64 %i.eg, ptr %i.eu, align 8, !tbaa !61
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i10.us27.us, %.lr.ph.split.split.us.split.us
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0.024.us26.us, i64 8 ; 2 uses
  %i.ew = icmp ult ptr %i.ev, %2
  br i1 %i.ew, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !1432

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us.split.preheader, %bb.m
  %i.ex = phi i64 [ %i.fg, %bb.m ], [ %.pre46, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %.sroa.0.024.us26 = phi ptr [ %i.fh, %bb.m ], [ %1, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %i.ey = load i64, ptr %.sroa.0.024.us26, align 8, !tbaa !61 ; 3 uses
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.ey
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.ex
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !44
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !44
  %i.ff = fcmp olt double %i.fc, %i.fe
  br i1 %i.ff, label %._crit_edge.i.i10.us27, label %bb.m

._crit_edge.i.i10.us27:                           ; preds = %.lr.ph.split.split.us.split
  store i64 %i.ex, ptr %.sroa.0.024.us26, align 8, !tbaa !61
  store i64 %i.ey, ptr %0, align 8, !tbaa !61
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i10.us27, %.lr.ph.split.split.us.split
  %i.fg = phi i64 [ %i.ey, %._crit_edge.i.i10.us27 ], [ %i.ex, %.lr.ph.split.split.us.split ]
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0.024.us26, i64 8 ; 2 uses
  %i.fi = icmp ult ptr %i.fh, %2
  br i1 %i.fi, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !1432

._crit_edge:                                      ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb0EEEEEEvT_SS_RT0_.exit
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.n
  %i.fj = phi i64 [ %i.fs, %bb.n ], [ %.pre, %.lr.ph.split.split.preheader ] ; 3 uses
  %.sroa.0.024 = phi ptr [ %i.ft, %bb.n ], [ %1, %.lr.ph.split.split.preheader ] ; 3 uses
  %i.fk = load i64, ptr %.sroa.0.024, align 8, !tbaa !61 ; 3 uses
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.fk
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.fj
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !44
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !44
  %i.fr = fcmp olt double %i.fo, %i.fq
  br i1 %i.fr, label %._crit_edge.i.i10, label %bb.n

._crit_edge.i.i10:                                ; preds = %.lr.ph.split.split
  store i64 %i.fj, ptr %.sroa.0.024, align 8, !tbaa !61
  store i64 %i.fk, ptr %0, align 8, !tbaa !61
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.split, %._crit_edge.i.i10
  %i.fs = phi i64 [ %i.fj, %.lr.ph.split.split ], [ %i.fk, %._crit_edge.i.i10 ]
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.024, i64 8 ; 2 uses
  %i.fu = icmp ult ptr %i.ft, %2
  br i1 %i.fu, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !1432
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_SS_SS_T0_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, ptr %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 3
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = icmp eq i64 %3, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph61

.lr.ph:                                           ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEET_SS_SS_T0_.exit
  %i.g = icmp eq i64 %i.l, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph61, !llvm.loop !1433

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.019.030.lcssa = phi ptr [ %2, %.lr.ph.preheader ], [ %.sroa.019.0..sroa.012.1.i.i, %.lr.ph ]
  %.sroa.022.029.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.012.1.i.i..sroa.022.0, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_SS_SS_T0_(ptr %.sroa.022.029.lcssa, ptr nonnull %i.h, ptr %.sroa.019.030.lcssa, ptr %4)
  %i.i = load i64, ptr %.sroa.022.029.lcssa, align 8, !tbaa !61
  %i.j = load i64, ptr %1, align 8, !tbaa !61
  store i64 %i.j, ptr %.sroa.022.029.lcssa, align 8, !tbaa !61
  store i64 %i.i, ptr %1, align 8, !tbaa !61
  br label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_SS_T0_.exit

.lr.ph61:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.022.02960 = phi ptr [ %.sroa.012.1.i.i..sroa.022.0, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 14 uses
  %.sroa.019.03059 = phi ptr [ %.sroa.019.0..sroa.012.1.i.i, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.03158 = phi i64 [ %i.l, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %i.k = phi i64 [ %i.be, %.lr.ph ], [ %i.d, %.lr.ph.preheader ]
  %i.l = add nsw i64 %.03158, -1                  ; 2 uses
  %i.m = lshr i64 %i.k, 1
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sroa.022.02960, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.022.02960, i64 8 ; 4 uses
  %i.p = getelementptr inbounds i8, ptr %.sroa.019.03059, i64 -8 ; 3 uses
  %i.q = load i64, ptr %i.n, align 8, !tbaa !61   ; 3 uses
  %i.r = load i64, ptr %i.o, align 8, !tbaa !61   ; 3 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.q
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load double, ptr %i.u, align 8, !tbaa !44 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load double, ptr %i.w, align 8, !tbaa !44 ; 3 uses
  %i.y = fcmp olt double %i.v, %i.x
  %i.z = load i64, ptr %i.p, align 8, !tbaa !61   ; 3 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !44 ; 4 uses
  br i1 %i.y, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph61
  %i.ad = fcmp olt double %i.ac, %i.v
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ae = load i64, ptr %.sroa.022.02960, align 8, !tbaa !61
  store i64 %i.q, ptr %.sroa.022.02960, align 8, !tbaa !61
  store i64 %i.ae, ptr %i.n, align 8, !tbaa !61
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_SS_SS_SS_T0_.exit.i.preheader

bb.d:                                             ; preds = %bb.b
  %i.af = fcmp olt double %i.ac, %i.x
  %i.ag = load i64, ptr %.sroa.022.02960, align 8, !tbaa !61 ; 2 uses
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 %i.z, ptr %.sroa.022.02960, align 8, !tbaa !61
  store i64 %i.ag, ptr %i.p, align 8, !tbaa !61
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_SS_SS_SS_T0_.exit.i.preheader

bb.f:                                             ; preds = %bb.d
  store i64 %i.r, ptr %.sroa.022.02960, align 8, !tbaa !61
  store i64 %i.ag, ptr %i.o, align 8, !tbaa !61
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_SS_SS_SS_T0_.exit.i.preheader

bb.g:                                             ; preds = %.lr.ph61
  %i.ah = fcmp olt double %i.ac, %i.x
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = load i64, ptr %.sroa.022.02960, align 8, !tbaa !61
  store i64 %i.r, ptr %.sroa.022.02960, align 8, !tbaa !61
  store i64 %i.ai, ptr %i.o, align 8, !tbaa !61
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_SS_SS_SS_T0_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.aj = fcmp olt double %i.ac, %i.v
  %i.ak = load i64, ptr %.sroa.022.02960, align 8, !tbaa !61 ; 2 uses
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 %i.z, ptr %.sroa.022.02960, align 8, !tbaa !61
  store i64 %i.ak, ptr %i.p, align 8, !tbaa !61
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_SS_SS_SS_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  store i64 %i.q, ptr %.sroa.022.02960, align 8, !tbaa !61
  store i64 %i.ak, ptr %i.n, align 8, !tbaa !61
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_SS_SS_SS_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_SS_SS_SS_T0_.exit.i.preheader: ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %bb.c
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_SS_SS_SS_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_SS_SS_SS_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_SS_SS_SS_T0_.exit.i.preheader, %bb.n
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.n ], [ %.sroa.019.03059, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_SS_SS_SS_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.au, %bb.n ], [ %i.o, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_SS_SS_SS_T0_.exit.i.preheader ]
  %i.al = load i64, ptr %.sroa.022.02960, align 8, !tbaa !61
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load double, ptr %i.an, align 8, !tbaa !44 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_SS_SS_SS_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_SS_SS_SS_T0_.exit.i ], [ %i.au, %bb.l ] ; 7 uses
  %i.ap = load i64, ptr %.sroa.012.1.i.i, align 8, !tbaa !61 ; 2 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load double, ptr %i.ar, align 8, !tbaa !44
  %i.at = fcmp olt double %i.ao, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.at, label %bb.l, label %.preheader.i.i, !llvm.loop !1434

.preheader.i.i:                                   ; preds = %bb.l, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.l ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -8 ; 5 uses
  %i.av = load i64, ptr %.sroa.09.1.i.i, align 8, !tbaa !61 ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !44
  %i.az = fcmp olt double %i.ay, %i.ao
  br i1 %i.az, label %.preheader.i.i, label %bb.m, !llvm.loop !1435

bb.m:                                             ; preds = %.preheader.i.i
  %i.ba = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.ba, label %bb.n, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEET_SS_SS_T0_.exit

bb.n:                                             ; preds = %bb.m
  store i64 %i.av, ptr %.sroa.012.1.i.i, align 8, !tbaa !61
  store i64 %i.ap, ptr %.sroa.09.1.i.i, align 8, !tbaa !61
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_SS_SS_SS_T0_.exit.i, !llvm.loop !1436

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEET_SS_SS_T0_.exit: ; preds = %bb.m
  %.not = icmp ugt ptr %.sroa.012.1.i.i, %1       ; 2 uses
  %.sroa.012.1.i.i..sroa.022.0 = select i1 %.not, ptr %.sroa.022.02960, ptr %.sroa.012.1.i.i ; 4 uses
  %.sroa.019.0..sroa.012.1.i.i = select i1 %.not, ptr %.sroa.012.1.i.i, ptr %.sroa.019.03059 ; 4 uses
  %i.bb = ptrtoint ptr %.sroa.019.0..sroa.012.1.i.i to i64
  %i.bc = ptrtoint ptr %.sroa.012.1.i.i..sroa.022.0 to i64 ; 2 uses
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 3                 ; 2 uses
  %i.bf = icmp sgt i64 %i.be, 3
  br i1 %i.bf, label %.lr.ph, label %._crit_edge, !llvm.loop !1433

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEET_SS_SS_T0_.exit, %bb.a
  %.sroa.022.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.012.1.i.i..sroa.022.0, %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEET_SS_SS_T0_.exit ] ; 8 uses
  %.sroa.019.0.lcssa = phi ptr [ %2, %bb.a ], [ %.sroa.019.0..sroa.012.1.i.i, %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEET_SS_SS_T0_.exit ] ; 3 uses
  %.lcssa25 = phi i64 [ %i.b, %bb.a ], [ %i.bc, %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEET_SS_SS_T0_.exit ]
  %i.bg = icmp eq ptr %.sroa.022.0.lcssa, %.sroa.019.0.lcssa
  %.sroa.0.018.i = getelementptr inbounds nuw i8, ptr %.sroa.022.0.lcssa, i64 8 ; 2 uses
  %.not19.i = icmp eq ptr %.sroa.0.018.i, %.sroa.019.0.lcssa
  %or.cond = select i1 %i.bg, i1 true, i1 %.not19.i
  br i1 %or.cond, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_SS_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i
  %.sroa.0.021.i = phi ptr [ %.sroa.0.0.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i ], [ %.sroa.0.018.i, %._crit_edge ] ; 6 uses
  %.pn20.i = phi ptr [ %.sroa.0.021.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i ], [ %.sroa.022.0.lcssa, %._crit_edge ] ; 4 uses
  %i.bh = load i64, ptr %.sroa.022.0.lcssa, align 8, !tbaa !61 ; 2 uses
  %i.bi = load i64, ptr %.sroa.0.021.i, align 8, !tbaa !61 ; 2 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.bh
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.bi
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !44
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !44 ; 3 uses
  %i.bp = fcmp olt double %i.bm, %i.bo
  br i1 %i.bp, label %bb.o, label %bb.s

bb.o:                                             ; preds = %.lr.ph.i
  %i.bq = ptrtoint ptr %.sroa.0.021.i to i64
  %i.br = sub i64 %i.bq, %.lcssa25                ; 3 uses
  %i.bs = ashr exact i64 %i.br, 3                 ; 2 uses
  %i.bt = icmp sgt i64 %i.bs, 1
  br i1 %i.bt, label %bb.p, label %bb.q, !prof !146

bb.p:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 16
  %i.bv = sub nsw i64 0, %i.bs
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bv
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bw, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.022.0.lcssa, i64 %i.br, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

bb.q:                                             ; preds = %bb.o
  %i.bx = icmp eq i64 %i.br, 8
  br i1 %i.bx, label %bb.r, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

bb.r:                                             ; preds = %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  store i64 %i.bh, ptr %i.by, align 8, !tbaa !61
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

bb.s:                                             ; preds = %.lr.ph.i
  %i.bz = load i64, ptr %.pn20.i, align 8, !tbaa !61 ; 2 uses
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !44
  %i.cd = fcmp olt double %i.cc, %i.bo
  br i1 %i.cd, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.s, %.lr.ph.i.i
  %i.ce = phi i64 [ %i.cf, %.lr.ph.i.i ], [ %i.bz, %bb.s ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.s ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i, %bb.s ]
  store i64 %i.ce, ptr %.sroa.05.09.i.i, align 8, !tbaa !61
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -8 ; 2 uses
  %i.cf = load i64, ptr %.sroa.0.0.i.i, align 8, !tbaa !61 ; 2 uses
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !44
  %i.cj = fcmp olt double %i.ci, %i.bo
  br i1 %i.cj, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !1437

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.s, %bb.r, %bb.q, %bb.p
  %.sink.i = phi ptr [ %.sroa.022.0.lcssa, %bb.r ], [ %.sroa.022.0.lcssa, %bb.p ], [ %.sroa.022.0.lcssa, %bb.q ], [ %.sroa.0.021.i, %bb.s ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store i64 %i.bi, ptr %.sink.i, align 8, !tbaa !61
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %.sroa.019.0.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_SS_T0_.exit, label %.lr.ph.i, !llvm.loop !1438

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_SS_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i, %._crit_edge, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_SS_SS_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 3 uses
  %i.d = ashr i64 %.fr, 3                         ; 7 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_SS_RT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2
  %i.g = lshr i64 %i.f, 1                         ; 4 uses
  %i.h = add nsw i64 %i.d, -1                     ; 3 uses
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.g
  br i1 %i.k, label %.split, label %.split.us

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_T0_ST_T1_T2_.exit.i.us
  %.09.i.us = phi i64 [ %i.av, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_T0_ST_T1_T2_.exit.i.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.us
  %i.o = load i64, ptr %i.n, align 8, !tbaa !61   ; 2 uses
  %i.p = icmp slt i64 %.09.i.us, %i.i
  br i1 %i.p, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_T0_ST_T1_T2_.exit.i.us

.lr.ph.i.i.us:                                    ; preds = %.split.us, %.lr.ph.i.i.us
  %.037.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ %.09.i.us, %.split.us ] ; 2 uses
  %i.q = shl i64 %.037.i.i.us, 1                  ; 2 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %0, i64 %i.r
  %i.t = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !61
  %i.w = load i64, ptr %i.s, align 8, !tbaa !61
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.v
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load double, ptr %i.z, align 8, !tbaa !44
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !44
  %i.ad = fcmp olt double %i.aa, %i.ac
  %spec.select.i.i.us = select i1 %i.ad, i64 %i.t, i64 %i.r ; 6 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.us
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !61
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %.037.i.i.us
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !61
  %i.ah = icmp slt i64 %spec.select.i.i.us, %i.i
  br i1 %i.ah, label %.lr.ph.i.i.us, label %._crit_edge.i.i.us, !llvm.loop !1439

._crit_edge.i.i.us:                               ; preds = %.lr.ph.i.i.us
  %i.ai = icmp sgt i64 %spec.select.i.i.us, %.09.i.us
  br i1 %i.ai, label %.lr.ph.i.preheader.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_T0_ST_T1_T2_.exit.i.us

.lr.ph.i.preheader.i.i.us:                        ; preds = %._crit_edge.i.i.us
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.o
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load double, ptr %i.ak, align 8, !tbaa !44
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %bb.c, %.lr.ph.i.preheader.i.i.us
  %.019.i.i.i.us = phi i64 [ %.0920.i.i.i.us, %bb.c ], [ %spec.select.i.i.us, %.lr.ph.i.preheader.i.i.us ] ; 3 uses
  %.0920.in.i.i.i.us = add nsw i64 %.019.i.i.i.us, -1
  %.0920.i.i.i.us = sdiv i64 %.0920.in.i.i.i.us, 2 ; 4 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i.i.us
  %i.an = load i64, ptr %i.am, align 8, !tbaa !61 ; 2 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !44
  %i.ar = fcmp olt double %i.al, %i.aq
  br i1 %i.ar, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_T0_ST_T1_T2_.exit.i.us

bb.c:                                             ; preds = %.lr.ph.i.i.i.us
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i.i.us
  store i64 %i.an, ptr %i.as, align 8, !tbaa !61
  %i.at = icmp sgt i64 %.0920.i.i.i.us, %.09.i.us
  br i1 %i.at, label %.lr.ph.i.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_T0_ST_T1_T2_.exit.i.us, !llvm.loop !1440

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_T0_ST_T1_T2_.exit.i.us: ; preds = %.lr.ph.i.i.i.us, %bb.c, %.split.us, %._crit_edge.i.i.us
  %.0.lcssa.i.i.i.us = phi i64 [ %spec.select.i.i.us, %._crit_edge.i.i.us ], [ %.09.i.us, %.split.us ], [ %.0920.i.i.i.us, %bb.c ], [ %.019.i.i.i.us, %.lr.ph.i.i.i.us ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.us
  store i64 %i.o, ptr %i.au, align 8, !tbaa !61
  %.not.i.us = icmp eq i64 %.09.i.us, 0
  %i.av = add nsw i64 %.09.i.us, -1
  br i1 %.not.i.us, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_SS_RT0_.exit, label %.split.us, !llvm.loop !1441

.split:                                           ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_T0_ST_T1_T2_.exit.i
  %.09.i = phi i64 [ %i.cg, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_T0_ST_T1_T2_.exit.i ], [ %i.g, %bb.b ] ; 8 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !61 ; 2 uses
  %i.ay = icmp slt i64 %.09.i, %i.i
  br i1 %i.ay, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.split, %.lr.ph.i.i
  %.037.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.09.i, %.split ] ; 2 uses
  %i.az = shl i64 %.037.i.i, 1                    ; 2 uses
  %i.ba = add i64 %i.az, 2                        ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ba
  %i.bc = or disjoint i64 %i.az, 1                ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !61
  %i.bf = load i64, ptr %i.bb, align 8, !tbaa !61
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.be
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.bf
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !44
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !44
  %i.bm = fcmp olt double %i.bj, %i.bl
  %spec.select.i.i = select i1 %i.bm, i64 %i.bc, i64 %i.ba ; 4 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !61
  %i.bp = getelementptr inbounds [8 x i8], ptr %0, i64 %.037.i.i
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !61
  %i.bq = icmp slt i64 %spec.select.i.i, %i.i
  br i1 %i.bq, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1439

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.split
  %.0.lcssa.i.i = phi i64 [ %.09.i, %.split ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.br = icmp eq i64 %.0.lcssa.i.i, %i.g
  br i1 %i.br, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.bs = load i64, ptr %i.l, align 8, !tbaa !61
  store i64 %i.bs, ptr %i.m, align 8, !tbaa !61
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i
  %.1.i.i = phi i64 [ %i.h, %bb.d ], [ %.0.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.bt = icmp sgt i64 %.1.i.i, %.09.i
  br i1 %i.bt, label %.lr.ph.i.preheader.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_T0_ST_T1_T2_.exit.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.e
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.ax
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !44
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.preheader.i.i
  %.019.i.i.i = phi i64 [ %.0920.i.i.i, %bb.f ], [ %.1.i.i, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i.i = sdiv i64 %.0920.in.i.i.i, 2      ; 4 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i.i
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !61 ; 2 uses
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !44
  %i.cc = fcmp olt double %i.bw, %i.cb
  br i1 %i.cc, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_T0_ST_T1_T2_.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i.i
  store i64 %i.by, ptr %i.cd, align 8, !tbaa !61
  %i.ce = icmp sgt i64 %.0920.i.i.i, %.09.i
  br i1 %i.ce, label %.lr.ph.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_T0_ST_T1_T2_.exit.i, !llvm.loop !1440

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_T0_ST_T1_T2_.exit.i: ; preds = %bb.f, %.lr.ph.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi i64 [ %.1.i.i, %bb.e ], [ %.019.i.i.i, %.lr.ph.i.i.i ], [ %.0920.i.i.i, %bb.f ]
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i64 %i.ax, ptr %i.cf, align 8, !tbaa !61
  %.not.i = icmp eq i64 %.09.i, 0
  %i.cg = add nsw i64 %.09.i, -1
  br i1 %.not.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_SS_RT0_.exit, label %.split, !llvm.loop !1441

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_SS_RT0_.exit: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_T0_ST_T1_T2_.exit.i.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_T0_ST_T1_T2_.exit.i, %bb.a
  %i.ch = icmp ult ptr %1, %2
  br i1 %i.ch, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_SS_RT0_.exit
  %i.ci = add nsw i64 %i.d, -1
  %i.cj = lshr i64 %i.ci, 1
  %i.ck = icmp sgt i64 %i.d, 2
  %i.cl = and i64 %.fr, 8
  %i.cm = icmp eq i64 %i.cl, 0                    ; 2 uses
  %i.cn = add nsw i64 %i.d, -2                    ; 2 uses
  %i.co = ashr exact i64 %i.cn, 1                 ; 2 uses
  br i1 %i.ck, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %4 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.co
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.i
  %.sroa.0.025.us = phi ptr [ %i.ec, %bb.i ], [ %1, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.cr = load i64, ptr %0, align 8, !tbaa !61    ; 2 uses
  %i.cs = load i64, ptr %.sroa.0.025.us, align 8, !tbaa !61 ; 2 uses
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.cr
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.cs
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !44
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !44 ; 2 uses
  %i.cz = fcmp olt double %i.cw, %i.cy
  br i1 %i.cz, label %.lr.ph.i.i19.preheader.us, label %bb.i

.lr.ph.i.i19.preheader.us:                        ; preds = %.lr.ph.split.us
  store i64 %i.cr, ptr %.sroa.0.025.us, align 8, !tbaa !61
  br label %.lr.ph.i.i19.us

.lr.ph.i.i19.us:                                  ; preds = %.lr.ph.i.i19.us, %.lr.ph.i.i19.preheader.us
  %.037.i.i20.us = phi i64 [ %spec.select.i.i21.us, %.lr.ph.i.i19.us ], [ 0, %.lr.ph.i.i19.preheader.us ] ; 2 uses
  %i.da = shl i64 %.037.i.i20.us, 1               ; 2 uses
  %i.db = add i64 %i.da, 2                        ; 2 uses
  %i.dc = getelementptr inbounds [8 x i8], ptr %0, i64 %i.db
  %i.dd = or disjoint i64 %i.da, 1                ; 2 uses
  %i.de = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !61
  %i.dg = load i64, ptr %i.dc, align 8, !tbaa !61
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.df
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.dg
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !44
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !44
  %i.dn = fcmp olt double %i.dk, %i.dm
  %spec.select.i.i21.us = select i1 %i.dn, i64 %i.dd, i64 %i.db ; 6 uses
  %i.do = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i21.us
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !61
  %i.dq = getelementptr inbounds [8 x i8], ptr %0, i64 %.037.i.i20.us
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !61
  %i.dr = icmp slt i64 %spec.select.i.i21.us, %i.cj
  br i1 %i.dr, label %.lr.ph.i.i19.us, label %._crit_edge.i.i10.loopexit.us, !llvm.loop !1439

._crit_edge.i.i10.loopexit.us:                    ; preds = %.lr.ph.i.i19.us
  %i.ds = icmp eq i64 %spec.select.i.i21.us, %i.co
  %or.cond = select i1 %i.cm, i1 %i.ds, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i10.loopexit.us
  %.not.i12.us = icmp eq i64 %spec.select.i.i21.us, 0
  br i1 %.not.i12.us, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_SS_SS_RT0_.exit.us, label %.lr.ph.i.i.i14.us.preheader

.thread.i.us:                                     ; preds = %._crit_edge.i.i10.loopexit.us
  %i.dt = load i64, ptr %i.cp, align 8, !tbaa !61
  store i64 %i.dt, ptr %i.cq, align 8, !tbaa !61
  br label %.lr.ph.i.i.i14.us.preheader

.lr.ph.i.i.i14.us.preheader:                      ; preds = %.thread.i.us, %bb.g
  %.019.i.i.i15.us.ph = phi i64 [ %spec.select.i.i21.us, %bb.g ], [ %4, %.thread.i.us ]
  br label %.lr.ph.i.i.i14.us

.lr.ph.i.i.i14.us:                                ; preds = %.lr.ph.i.i.i14.us.preheader, %bb.h
  %.019.i.i.i15.us = phi i64 [ %.0920.i.i89.i.us, %bb.h ], [ %.019.i.i.i15.us.ph, %.lr.ph.i.i.i14.us.preheader ] ; 3 uses
  %.0920.in.i.i.i16.us = add nsw i64 %.019.i.i.i15.us, -1
  %.0920.i.i89.i.us = lshr i64 %.0920.in.i.i.i16.us, 1 ; 3 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i89.i.us
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !61 ; 2 uses
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !44
  %i.dz = fcmp olt double %i.cy, %i.dy
  br i1 %i.dz, label %bb.h, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_SS_SS_RT0_.exit.us

bb.h:                                             ; preds = %.lr.ph.i.i.i14.us
  %i.ea = getelementptr inbounds [8 x i8], ptr %0, i64 %.019.i.i.i15.us
  store i64 %i.dv, ptr %i.ea, align 8, !tbaa !61
  %.not10.i.us = icmp eq i64 %.0920.i.i89.i.us, 0
  br i1 %.not10.i.us, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_SS_SS_RT0_.exit.us, label %.lr.ph.i.i.i14.us, !llvm.loop !1440

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_SS_SS_RT0_.exit.us: ; preds = %.lr.ph.i.i.i14.us, %bb.h, %bb.g
  %.0.lcssa.i.i.i18.us = phi i64 [ 0, %bb.g ], [ %.019.i.i.i15.us, %.lr.ph.i.i.i14.us ], [ 0, %bb.h ]
  %i.eb = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i18.us
  store i64 %i.cs, ptr %i.eb, align 8, !tbaa !61
  br label %bb.i

bb.i:                                             ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_SS_SS_RT0_.exit.us, %.lr.ph.split.us
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.025.us, i64 8 ; 2 uses
  %i.ed = icmp ult ptr %i.ec, %2
  br i1 %i.ed, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !1442

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  br i1 %i.cm, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre = load i64, ptr %0, align 8, !tbaa !61
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.ef = icmp eq i64 %i.cn, 0
  br i1 %i.ef, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split.preheader

.lr.ph.split.split.us.split.preheader:            ; preds = %.lr.ph.split.split.us
  %.pre48 = load i64, ptr %0, align 8, !tbaa !61
  br label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.j
  %.sroa.0.025.us27.us = phi ptr [ %i.ev, %bb.j ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %i.eg = load i64, ptr %0, align 8, !tbaa !61    ; 2 uses
  %i.eh = load i64, ptr %.sroa.0.025.us27.us, align 8, !tbaa !61 ; 2 uses
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.eg
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.eh
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.el = load double, ptr %i.ek, align 8, !tbaa !44
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.en = load double, ptr %i.em, align 8, !tbaa !44 ; 2 uses
  %i.eo = fcmp olt double %i.el, %i.en
  br i1 %i.eo, label %._crit_edge.i.i10.us28.us, label %bb.j

._crit_edge.i.i10.us28.us:                        ; preds = %.lr.ph.split.split.us.split.us
  store i64 %i.eg, ptr %.sroa.0.025.us27.us, align 8, !tbaa !61
  %i.ep = load i64, ptr %i.ee, align 8, !tbaa !61 ; 2 uses
  store i64 %i.ep, ptr %0, align 8, !tbaa !61
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load double, ptr %i.er, align 8, !tbaa !44
  %i.et = fcmp uge double %i.en, %i.es
  %spec.select = zext i1 %i.et to i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %spec.select
  store i64 %i.eh, ptr %i.eu, align 8, !tbaa !61
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.i.i10.us28.us, %.lr.ph.split.split.us.split.us
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0.025.us27.us, i64 8 ; 2 uses
  %i.ew = icmp ult ptr %i.ev, %2
  br i1 %i.ew, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !1442

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us.split.preheader, %bb.k
  %i.ex = phi i64 [ %i.fg, %bb.k ], [ %.pre48, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %.sroa.0.025.us27 = phi ptr [ %i.fh, %bb.k ], [ %1, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %i.ey = load i64, ptr %.sroa.0.025.us27, align 8, !tbaa !61 ; 3 uses
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.ex
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.ey
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !44
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !44
  %i.ff = fcmp olt double %i.fc, %i.fe
  br i1 %i.ff, label %._crit_edge.i.i10.us28, label %bb.k

._crit_edge.i.i10.us28:                           ; preds = %.lr.ph.split.split.us.split
  store i64 %i.ex, ptr %.sroa.0.025.us27, align 8, !tbaa !61
  store i64 %i.ey, ptr %0, align 8, !tbaa !61
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i10.us28, %.lr.ph.split.split.us.split
  %i.fg = phi i64 [ %i.ey, %._crit_edge.i.i10.us28 ], [ %i.ex, %.lr.ph.split.split.us.split ]
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0.025.us27, i64 8 ; 2 uses
  %i.fi = icmp ult ptr %i.fh, %2
  br i1 %i.fi, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !1442

._crit_edge:                                      ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_SS_RT0_.exit
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.l
  %i.fj = phi i64 [ %i.fs, %bb.l ], [ %.pre, %.lr.ph.split.split.preheader ] ; 3 uses
  %.sroa.0.025 = phi ptr [ %i.ft, %bb.l ], [ %1, %.lr.ph.split.split.preheader ] ; 3 uses
  %i.fk = load i64, ptr %.sroa.0.025, align 8, !tbaa !61 ; 3 uses
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.fj
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.fk
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !44
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !44
  %i.fr = fcmp olt double %i.fo, %i.fq
  br i1 %i.fr, label %._crit_edge.i.i10, label %bb.l

._crit_edge.i.i10:                                ; preds = %.lr.ph.split.split
  store i64 %i.fj, ptr %.sroa.0.025, align 8, !tbaa !61
  store i64 %i.fk, ptr %0, align 8, !tbaa !61
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.split, %._crit_edge.i.i10
  %i.fs = phi i64 [ %i.fj, %.lr.ph.split.split ], [ %i.fk, %._crit_edge.i.i10 ]
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.025, i64 8 ; 2 uses
  %i.fu = icmp ult ptr %i.ft, %2
  br i1 %i.fu, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !1442
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL21Hilbert_sort_median_2INS_29Spatial_sort_traits_adapter_2INS_5EpickEN5boost21iterator_property_mapIPNS_7Point_2IS2_EENS3_27typed_identity_property_mapImEES6_RS6_EEEENS_14Sequential_tagEE14recursive_sortILi0ELb1ELb1EN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEEvT2_SN_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !298
  %.not = icmp sgt i64 %i.d, %i.f
  br i1 %.not, label %bb.b, label %common.ret41

bb.b:                                             ; preds = %bb.a
  %.sroa.025.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.not.i = icmp ult ptr %1, %2
  br i1 %.not.i, label %bb.c, label %_ZN4CGAL8internal13hilbert_splitIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS_21Hilbert_sort_median_2INS_29Spatial_sort_traits_adapter_2INS_5EpickEN5boost21iterator_property_mapIPNS_7Point_2ISB_EENSC_27typed_identity_property_mapImEESF_RSF_EEEENS_14Sequential_tagEE3CmpILi1ELb1EEEEET_SQ_SQ_T0_.exit

bb.c:                                             ; preds = %bb.b
  %i.g = sdiv i64 %i.d, 2                         ; 2 uses
  %.idx = shl nsw i64 %i.g, 3                     ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 %.idx ; 6 uses
  %i.i = icmp eq ptr %i.h, %2
  br i1 %i.i, label %_ZN4CGAL8internal13hilbert_splitIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS_21Hilbert_sort_median_2INS_29Spatial_sort_traits_adapter_2INS_5EpickEN5boost21iterator_property_mapIPNS_7Point_2ISB_EENSC_27typed_identity_property_mapImEESF_RSF_EEEENS_14Sequential_tagEE3CmpILi0ELb1EEEEET_SQ_SQ_T0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.k = shl nuw nsw i64 %i.j, 1
  %i.l = xor i64 %i.k, 126
  tail call void @_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_SS_SS_T0_T1_(ptr %1, ptr %i.h, ptr nonnull %2, i64 noundef %i.l, ptr %.sroa.025.0.copyload)
  %.sroa.023.0.copyload.pre = load ptr, ptr %0, align 8
  br label %_ZN4CGAL8internal13hilbert_splitIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS_21Hilbert_sort_median_2INS_29Spatial_sort_traits_adapter_2INS_5EpickEN5boost21iterator_property_mapIPNS_7Point_2ISB_EENSC_27typed_identity_property_mapImEESF_RSF_EEEENS_14Sequential_tagEE3CmpILi0ELb1EEEEET_SQ_SQ_T0_.exit

_ZN4CGAL8internal13hilbert_splitIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS_21Hilbert_sort_median_2INS_29Spatial_sort_traits_adapter_2INS_5EpickEN5boost21iterator_property_mapIPNS_7Point_2ISB_EENSC_27typed_identity_property_mapImEESF_RSF_EEEENS_14Sequential_tagEE3CmpILi0ELb1EEEEET_SQ_SQ_T0_.exit: ; preds = %bb.c, %bb.d
  %.sroa.023.0.copyload = phi ptr [ %.sroa.025.0.copyload, %bb.c ], [ %.sroa.023.0.copyload.pre, %bb.d ] ; 3 uses
  %.not.i19 = icmp sgt i64 %i.d, 1
  br i1 %.not.i19, label %bb.e, label %_ZN4CGAL8internal13hilbert_splitIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS_21Hilbert_sort_median_2INS_29Spatial_sort_traits_adapter_2INS_5EpickEN5boost21iterator_property_mapIPNS_7Point_2ISB_EENSC_27typed_identity_property_mapImEESF_RSF_EEEENS_14Sequential_tagEE3CmpILi1ELb1EEEEET_SQ_SQ_T0_.exit

bb.e:                                             ; preds = %_ZN4CGAL8internal13hilbert_splitIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS_21Hilbert_sort_median_2INS_29Spatial_sort_traits_adapter_2INS_5EpickEN5boost21iterator_property_mapIPNS_7Point_2ISB_EENSC_27typed_identity_property_mapImEESF_RSF_EEEENS_14Sequential_tagEE3CmpILi0ELb1EEEEET_SQ_SQ_T0_.exit
  %i.m = lshr exact i64 %i.c, 2
  %.idx33 = and i64 %i.m, 4611686018427387896     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.idx33 ; 3 uses
  %i.o = icmp eq i64 %.idx33, %.idx
  br i1 %i.o, label %_ZN4CGAL8internal13hilbert_splitIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS_21Hilbert_sort_median_2INS_29Spatial_sort_traits_adapter_2INS_5EpickEN5boost21iterator_property_mapIPNS_7Point_2ISB_EENSC_27typed_identity_property_mapImEESF_RSF_EEEENS_14Sequential_tagEE3CmpILi1ELb1EEEEET_SQ_SQ_T0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.q = shl nuw nsw i64 %i.p, 1
  %i.r = xor i64 %i.q, 126
  tail call void @_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi1ELb1EEEEEEvT_SS_SS_T0_T1_(ptr %1, ptr %i.n, ptr nonnull %i.h, i64 noundef %i.r, ptr %.sroa.023.0.copyload)
  %.sroa.0.0.copyload.pre = load ptr, ptr %0, align 8
  br label %_ZN4CGAL8internal13hilbert_splitIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS_21Hilbert_sort_median_2INS_29Spatial_sort_traits_adapter_2INS_5EpickEN5boost21iterator_property_mapIPNS_7Point_2ISB_EENSC_27typed_identity_property_mapImEESF_RSF_EEEENS_14Sequential_tagEE3CmpILi1ELb1EEEEET_SQ_SQ_T0_.exit

_ZN4CGAL8internal13hilbert_splitIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS_21Hilbert_sort_median_2INS_29Spatial_sort_traits_adapter_2INS_5EpickEN5boost21iterator_property_mapIPNS_7Point_2ISB_EENSC_27typed_identity_property_mapImEESF_RSF_EEEENS_14Sequential_tagEE3CmpILi1ELb1EEEEET_SQ_SQ_T0_.exit: ; preds = %bb.b, %_ZN4CGAL8internal13hilbert_splitIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS_21Hilbert_sort_median_2INS_29Spatial_sort_traits_adapter_2INS_5EpickEN5boost21iterator_property_mapIPNS_7Point_2ISB_EENSC_27typed_identity_property_mapImEESF_RSF_EEEENS_14Sequential_tagEE3CmpILi0ELb1EEEEET_SQ_SQ_T0_.exit, %bb.e, %bb.f
  %.sroa.0.0.copyload = phi ptr [ %.sroa.023.0.copyload, %_ZN4CGAL8internal13hilbert_splitIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS_21Hilbert_sort_median_2INS_29Spatial_sort_traits_adapter_2INS_5EpickEN5boost21iterator_property_mapIPNS_7Point_2ISB_EENSC_27typed_identity_property_mapImEESF_RSF_EEEENS_14Sequential_tagEE3CmpILi0ELb1EEEEET_SQ_SQ_T0_.exit ], [ %.sroa.023.0.copyload, %bb.e ], [ %.sroa.0.0.copyload.pre, %bb.f ], [ %.sroa.025.0.copyload, %bb.b ]
  %.sroa.06.0.i32 = phi ptr [ %i.h, %_ZN4CGAL8internal13hilbert_splitIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS_21Hilbert_sort_median_2INS_29Spatial_sort_traits_adapter_2INS_5EpickEN5boost21iterator_property_mapIPNS_7Point_2ISB_EENSC_27typed_identity_property_mapImEESF_RSF_EEEENS_14Sequential_tagEE3CmpILi0ELb1EEEEET_SQ_SQ_T0_.exit ], [ %i.h, %bb.e ], [ %i.h, %bb.f ], [ %1, %bb.b ] ; 7 uses
  %.sroa.06.0.i20 = phi ptr [ %1, %_ZN4CGAL8internal13hilbert_splitIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS_21Hilbert_sort_median_2INS_29Spatial_sort_traits_adapter_2INS_5EpickEN5boost21iterator_property_mapIPNS_7Point_2ISB_EENSC_27typed_identity_property_mapImEESF_RSF_EEEENS_14Sequential_tagEE3CmpILi0ELb1EEEEET_SQ_SQ_T0_.exit ], [ %i.n, %bb.e ], [ %i.n, %bb.f ], [ %1, %bb.b ] ; 2 uses
  %.not.i21 = icmp ult ptr %.sroa.06.0.i32, %2
  br i1 %.not.i21, label %bb.g, label %_ZN4CGAL8internal13hilbert_splitIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS_21Hilbert_sort_median_2INS_29Spatial_sort_traits_adapter_2INS_5EpickEN5boost21iterator_property_mapIPNS_7Point_2ISB_EENSC_27typed_identity_property_mapImEESF_RSF_EEEENS_14Sequential_tagEE3CmpILi1ELb0EEEEET_SQ_SQ_T0_.exit

bb.g:                                             ; preds = %_ZN4CGAL8internal13hilbert_splitIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS_21Hilbert_sort_median_2INS_29Spatial_sort_traits_adapter_2INS_5EpickEN5boost21iterator_property_mapIPNS_7Point_2ISB_EENSC_27typed_identity_property_mapImEESF_RSF_EEEENS_14Sequential_tagEE3CmpILi1ELb1EEEEET_SQ_SQ_T0_.exit
  %i.s = ptrtoint ptr %.sroa.06.0.i32 to i64
  %i.t = sub i64 %i.a, %i.s
  %i.u = ashr exact i64 %i.t, 3                   ; 2 uses
  %i.v = sdiv i64 %i.u, 2
  %i.w = getelementptr inbounds [8 x i8], ptr %.sroa.06.0.i32, i64 %i.v ; 4 uses
  %i.x = icmp eq ptr %i.w, %2
  br i1 %i.x, label %_ZN4CGAL8internal13hilbert_splitIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS_21Hilbert_sort_median_2INS_29Spatial_sort_traits_adapter_2INS_5EpickEN5boost21iterator_property_mapIPNS_7Point_2ISB_EENSC_27typed_identity_property_mapImEESF_RSF_EEEENS_14Sequential_tagEE3CmpILi1ELb0EEEEET_SQ_SQ_T0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.u, i1 true)
end_hunk_0
begin_hunk_1_@_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_SS_SS_T0_T1_:bb.a
  %.03158 = phi i64 [ %i.l, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %i.k = phi i64 [ %i.ay, %.lr.ph ], [ %i.d, %.lr.ph.preheader ]
  %i.l = add nsw i64 %.03158, -1                  ; 2 uses
  %i.m = lshr i64 %i.k, 1
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sroa.022.02960, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.022.02960, i64 8 ; 4 uses
  %i.p = getelementptr inbounds i8, ptr %.sroa.019.03059, i64 -8 ; 3 uses
  %i.q = load i64, ptr %i.n, align 8, !tbaa !61   ; 3 uses
  %i.r = load i64, ptr %i.o, align 8, !tbaa !61   ; 3 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.q
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.r
  %i.u = load double, ptr %i.s, align 8, !tbaa !44 ; 3 uses
  %i.v = load double, ptr %i.t, align 8, !tbaa !44 ; 3 uses
  %i.w = fcmp olt double %i.u, %i.v
  %i.x = load i64, ptr %i.p, align 8, !tbaa !61   ; 3 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.x
  %i.z = load double, ptr %i.y, align 8, !tbaa !44 ; 4 uses
  br i1 %i.w, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph61
  %i.aa = fcmp olt double %i.z, %i.u
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = load i64, ptr %.sroa.022.02960, align 8, !tbaa !61
  store i64 %i.q, ptr %.sroa.022.02960, align 8, !tbaa !61
  store i64 %i.ab, ptr %i.n, align 8, !tbaa !61
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_SS_SS_SS_T0_.exit.i.preheader

bb.d:                                             ; preds = %bb.b
  %i.ac = fcmp olt double %i.z, %i.v
  %i.ad = load i64, ptr %.sroa.022.02960, align 8, !tbaa !61 ; 2 uses
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 %i.x, ptr %.sroa.022.02960, align 8, !tbaa !61
  store i64 %i.ad, ptr %i.p, align 8, !tbaa !61
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_SS_SS_SS_T0_.exit.i.preheader

bb.f:                                             ; preds = %bb.d
  store i64 %i.r, ptr %.sroa.022.02960, align 8, !tbaa !61
  store i64 %i.ad, ptr %i.o, align 8, !tbaa !61
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_SS_SS_SS_T0_.exit.i.preheader

bb.g:                                             ; preds = %.lr.ph61
  %i.ae = fcmp olt double %i.z, %i.v
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = load i64, ptr %.sroa.022.02960, align 8, !tbaa !61
  store i64 %i.r, ptr %.sroa.022.02960, align 8, !tbaa !61
  store i64 %i.af, ptr %i.o, align 8, !tbaa !61
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_SS_SS_SS_T0_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.ag = fcmp olt double %i.z, %i.u
  %i.ah = load i64, ptr %.sroa.022.02960, align 8, !tbaa !61 ; 2 uses
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 %i.x, ptr %.sroa.022.02960, align 8, !tbaa !61
  store i64 %i.ah, ptr %i.p, align 8, !tbaa !61
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_SS_SS_SS_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  store i64 %i.q, ptr %.sroa.022.02960, align 8, !tbaa !61
  store i64 %i.ah, ptr %i.n, align 8, !tbaa !61
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_SS_SS_SS_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_SS_SS_SS_T0_.exit.i.preheader: ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %bb.c
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_SS_SS_SS_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_SS_SS_SS_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_SS_SS_SS_T0_.exit.i.preheader, %bb.n
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.n ], [ %.sroa.019.03059, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_SS_SS_SS_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.ap, %bb.n ], [ %i.o, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_SS_SS_SS_T0_.exit.i.preheader ]
  %i.ai = load i64, ptr %.sroa.022.02960, align 8, !tbaa !61
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !44 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_SS_SS_SS_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_SS_SS_SS_T0_.exit.i ], [ %i.ap, %bb.l ] ; 7 uses
  %i.al = load i64, ptr %.sroa.012.1.i.i, align 8, !tbaa !61 ; 2 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.al
  %i.an = load double, ptr %i.am, align 8, !tbaa !44
  %i.ao = fcmp olt double %i.ak, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.ao, label %bb.l, label %.preheader.i.i, !llvm.loop !1444

.preheader.i.i:                                   ; preds = %bb.l, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.l ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -8 ; 5 uses
  %i.aq = load i64, ptr %.sroa.09.1.i.i, align 8, !tbaa !61 ; 2 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.aq
  %i.as = load double, ptr %i.ar, align 8, !tbaa !44
  %i.at = fcmp olt double %i.as, %i.ak
  br i1 %i.at, label %.preheader.i.i, label %bb.m, !llvm.loop !1445

bb.m:                                             ; preds = %.preheader.i.i
  %i.au = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.au, label %bb.n, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEET_SS_SS_T0_.exit

bb.n:                                             ; preds = %bb.m
  store i64 %i.aq, ptr %.sroa.012.1.i.i, align 8, !tbaa !61
  store i64 %i.al, ptr %.sroa.09.1.i.i, align 8, !tbaa !61
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_SS_SS_SS_T0_.exit.i, !llvm.loop !1446

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEET_SS_SS_T0_.exit: ; preds = %bb.m
  %.not = icmp ugt ptr %.sroa.012.1.i.i, %1       ; 2 uses
  %.sroa.012.1.i.i..sroa.022.0 = select i1 %.not, ptr %.sroa.022.02960, ptr %.sroa.012.1.i.i ; 4 uses
  %.sroa.019.0..sroa.012.1.i.i = select i1 %.not, ptr %.sroa.012.1.i.i, ptr %.sroa.019.03059 ; 4 uses
  %i.av = ptrtoint ptr %.sroa.019.0..sroa.012.1.i.i to i64
  %i.aw = ptrtoint ptr %.sroa.012.1.i.i..sroa.022.0 to i64 ; 2 uses
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = ashr exact i64 %i.ax, 3                 ; 2 uses
  %i.az = icmp sgt i64 %i.ay, 3
  br i1 %i.az, label %.lr.ph, label %._crit_edge, !llvm.loop !1443

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEET_SS_SS_T0_.exit, %bb.a
  %.sroa.022.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.012.1.i.i..sroa.022.0, %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEET_SS_SS_T0_.exit ] ; 8 uses
  %.sroa.019.0.lcssa = phi ptr [ %2, %bb.a ], [ %.sroa.019.0..sroa.012.1.i.i, %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEET_SS_SS_T0_.exit ] ; 3 uses
  %.lcssa25 = phi i64 [ %i.b, %bb.a ], [ %i.aw, %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEET_SS_SS_T0_.exit ]
  %i.ba = icmp eq ptr %.sroa.022.0.lcssa, %.sroa.019.0.lcssa
  %.sroa.0.018.i = getelementptr inbounds nuw i8, ptr %.sroa.022.0.lcssa, i64 8 ; 2 uses
  %.not19.i = icmp eq ptr %.sroa.0.018.i, %.sroa.019.0.lcssa
  %or.cond = select i1 %i.ba, i1 true, i1 %.not19.i
  br i1 %or.cond, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_SS_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i
  %.sroa.0.021.i = phi ptr [ %.sroa.0.0.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i ], [ %.sroa.0.018.i, %._crit_edge ] ; 6 uses
  %.pn20.i = phi ptr [ %.sroa.0.021.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i ], [ %.sroa.022.0.lcssa, %._crit_edge ] ; 4 uses
  %i.bb = load i64, ptr %.sroa.022.0.lcssa, align 8, !tbaa !61 ; 2 uses
  %i.bc = load i64, ptr %.sroa.0.021.i, align 8, !tbaa !61 ; 2 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.bb
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.bc
  %i.bf = load double, ptr %i.bd, align 8, !tbaa !44
  %i.bg = load double, ptr %i.be, align 8, !tbaa !44 ; 3 uses
  %i.bh = fcmp olt double %i.bf, %i.bg
  br i1 %i.bh, label %bb.o, label %bb.s

bb.o:                                             ; preds = %.lr.ph.i
  %i.bi = ptrtoint ptr %.sroa.0.021.i to i64
  %i.bj = sub i64 %i.bi, %.lcssa25                ; 3 uses
  %i.bk = ashr exact i64 %i.bj, 3                 ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, 1
  br i1 %i.bl, label %bb.p, label %bb.q, !prof !146

bb.p:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 16
  %i.bn = sub nsw i64 0, %i.bk
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.bn
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bo, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.022.0.lcssa, i64 %i.bj, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

bb.q:                                             ; preds = %bb.o
  %i.bp = icmp eq i64 %i.bj, 8
  br i1 %i.bp, label %bb.r, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

bb.r:                                             ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  store i64 %i.bb, ptr %i.bq, align 8, !tbaa !61
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

bb.s:                                             ; preds = %.lr.ph.i
  %i.br = load i64, ptr %.pn20.i, align 8, !tbaa !61 ; 2 uses
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.br
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !44
  %i.bu = fcmp olt double %i.bt, %i.bg
  br i1 %i.bu, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.s, %.lr.ph.i.i
  %i.bv = phi i64 [ %i.bw, %.lr.ph.i.i ], [ %i.br, %bb.s ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.s ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i, %bb.s ]
  store i64 %i.bv, ptr %.sroa.05.09.i.i, align 8, !tbaa !61
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -8 ; 2 uses
  %i.bw = load i64, ptr %.sroa.0.0.i.i, align 8, !tbaa !61 ; 2 uses
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.bw
  %i.by = load double, ptr %i.bx, align 8, !tbaa !44
  %i.bz = fcmp olt double %i.by, %i.bg
  br i1 %i.bz, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !1447

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.s, %bb.r, %bb.q, %bb.p
  %.sink.i = phi ptr [ %.sroa.022.0.lcssa, %bb.r ], [ %.sroa.022.0.lcssa, %bb.p ], [ %.sroa.022.0.lcssa, %bb.q ], [ %.sroa.0.021.i, %bb.s ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store i64 %i.bc, ptr %.sink.i, align 8, !tbaa !61
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %.sroa.019.0.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_SS_T0_.exit, label %.lr.ph.i, !llvm.loop !1448

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_SS_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i, %._crit_edge, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_SS_SS_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 3 uses
  %i.d = ashr i64 %.fr, 3                         ; 7 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_SS_RT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2
  %i.g = lshr i64 %i.f, 1                         ; 4 uses
  %i.h = add nsw i64 %i.d, -1                     ; 3 uses
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.g
  br i1 %i.k, label %.split, label %.split.us

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_T0_ST_T1_T2_.exit.i.us
  %.09.i.us = phi i64 [ %i.ar, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_T0_ST_T1_T2_.exit.i.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.us
  %i.o = load i64, ptr %i.n, align 8, !tbaa !61   ; 2 uses
  %i.p = icmp slt i64 %.09.i.us, %i.i
  br i1 %i.p, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_T0_ST_T1_T2_.exit.i.us

.lr.ph.i.i.us:                                    ; preds = %.split.us, %.lr.ph.i.i.us
  %.037.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ %.09.i.us, %.split.us ] ; 2 uses
  %i.q = shl i64 %.037.i.i.us, 1                  ; 2 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %0, i64 %i.r
  %i.t = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !61
  %i.w = load i64, ptr %i.s, align 8, !tbaa !61
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.v
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.w
  %i.z = load double, ptr %i.x, align 8, !tbaa !44
  %i.aa = load double, ptr %i.y, align 8, !tbaa !44
  %i.ab = fcmp olt double %i.z, %i.aa
  %spec.select.i.i.us = select i1 %i.ab, i64 %i.t, i64 %i.r ; 6 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.us
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !61
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.037.i.i.us
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !61
  %i.af = icmp slt i64 %spec.select.i.i.us, %i.i
  br i1 %i.af, label %.lr.ph.i.i.us, label %._crit_edge.i.i.us, !llvm.loop !1449

._crit_edge.i.i.us:                               ; preds = %.lr.ph.i.i.us
  %i.ag = icmp sgt i64 %spec.select.i.i.us, %.09.i.us
  br i1 %i.ag, label %.lr.ph.i.preheader.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_T0_ST_T1_T2_.exit.i.us

.lr.ph.i.preheader.i.i.us:                        ; preds = %._crit_edge.i.i.us
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.o
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !44
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %bb.c, %.lr.ph.i.preheader.i.i.us
  %.019.i.i.i.us = phi i64 [ %.0920.i.i.i.us, %bb.c ], [ %spec.select.i.i.us, %.lr.ph.i.preheader.i.i.us ] ; 3 uses
  %.0920.in.i.i.i.us = add nsw i64 %.019.i.i.i.us, -1
  %.0920.i.i.i.us = sdiv i64 %.0920.in.i.i.i.us, 2 ; 4 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i.i.us
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !61 ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !tbaa !44
  %i.an = fcmp olt double %i.ai, %i.am
  br i1 %i.an, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_T0_ST_T1_T2_.exit.i.us

bb.c:                                             ; preds = %.lr.ph.i.i.i.us
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i.i.us
  store i64 %i.ak, ptr %i.ao, align 8, !tbaa !61
  %i.ap = icmp sgt i64 %.0920.i.i.i.us, %.09.i.us
  br i1 %i.ap, label %.lr.ph.i.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_T0_ST_T1_T2_.exit.i.us, !llvm.loop !1450

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_T0_ST_T1_T2_.exit.i.us: ; preds = %.lr.ph.i.i.i.us, %bb.c, %.split.us, %._crit_edge.i.i.us
  %.0.lcssa.i.i.i.us = phi i64 [ %spec.select.i.i.us, %._crit_edge.i.i.us ], [ %.09.i.us, %.split.us ], [ %.0920.i.i.i.us, %bb.c ], [ %.019.i.i.i.us, %.lr.ph.i.i.i.us ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.us
  store i64 %i.o, ptr %i.aq, align 8, !tbaa !61
  %.not.i.us = icmp eq i64 %.09.i.us, 0
  %i.ar = add nsw i64 %.09.i.us, -1
  br i1 %.not.i.us, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_SS_RT0_.exit, label %.split.us, !llvm.loop !1451

.split:                                           ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_T0_ST_T1_T2_.exit.i
  %.09.i = phi i64 [ %i.by, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_T0_ST_T1_T2_.exit.i ], [ %i.g, %bb.b ] ; 8 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i
  %i.at = load i64, ptr %i.as, align 8, !tbaa !61 ; 2 uses
  %i.au = icmp slt i64 %.09.i, %i.i
  br i1 %i.au, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.split, %.lr.ph.i.i
  %.037.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.09.i, %.split ] ; 2 uses
  %i.av = shl i64 %.037.i.i, 1                    ; 2 uses
  %i.aw = add i64 %i.av, 2                        ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aw
  %i.ay = or disjoint i64 %i.av, 1                ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !61
  %i.bb = load i64, ptr %i.ax, align 8, !tbaa !61
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.ba
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.bb
  %i.be = load double, ptr %i.bc, align 8, !tbaa !44
  %i.bf = load double, ptr %i.bd, align 8, !tbaa !44
  %i.bg = fcmp olt double %i.be, %i.bf
  %spec.select.i.i = select i1 %i.bg, i64 %i.ay, i64 %i.aw ; 4 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !61
  %i.bj = getelementptr inbounds [8 x i8], ptr %0, i64 %.037.i.i
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !61
  %i.bk = icmp slt i64 %spec.select.i.i, %i.i
  br i1 %i.bk, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1449

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.split
  %.0.lcssa.i.i = phi i64 [ %.09.i, %.split ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.bl = icmp eq i64 %.0.lcssa.i.i, %i.g
  br i1 %i.bl, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.bm = load i64, ptr %i.l, align 8, !tbaa !61
  store i64 %i.bm, ptr %i.m, align 8, !tbaa !61
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i
  %.1.i.i = phi i64 [ %i.h, %bb.d ], [ %.0.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.bn = icmp sgt i64 %.1.i.i, %.09.i
  br i1 %i.bn, label %.lr.ph.i.preheader.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_T0_ST_T1_T2_.exit.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.e
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.at
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !44
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.preheader.i.i
  %.019.i.i.i = phi i64 [ %.0920.i.i.i, %bb.f ], [ %.1.i.i, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i.i = sdiv i64 %.0920.in.i.i.i, 2      ; 4 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i.i
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !61 ; 2 uses
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.br
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !44
  %i.bu = fcmp olt double %i.bp, %i.bt
  br i1 %i.bu, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_T0_ST_T1_T2_.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i.i
  store i64 %i.br, ptr %i.bv, align 8, !tbaa !61
  %i.bw = icmp sgt i64 %.0920.i.i.i, %.09.i
  br i1 %i.bw, label %.lr.ph.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_T0_ST_T1_T2_.exit.i, !llvm.loop !1450

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_T0_ST_T1_T2_.exit.i: ; preds = %bb.f, %.lr.ph.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi i64 [ %.1.i.i, %bb.e ], [ %.019.i.i.i, %.lr.ph.i.i.i ], [ %.0920.i.i.i, %bb.f ]
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i64 %i.at, ptr %i.bx, align 8, !tbaa !61
  %.not.i = icmp eq i64 %.09.i, 0
  %i.by = add nsw i64 %.09.i, -1
  br i1 %.not.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_SS_RT0_.exit, label %.split, !llvm.loop !1451

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_SS_RT0_.exit: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_T0_ST_T1_T2_.exit.i.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_T0_ST_T1_T2_.exit.i, %bb.a
  %i.bz = icmp ult ptr %1, %2
  br i1 %i.bz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_SS_RT0_.exit
  %i.ca = add nsw i64 %i.d, -1
  %i.cb = lshr i64 %i.ca, 1
  %i.cc = icmp sgt i64 %i.d, 2
  %i.cd = and i64 %.fr, 8
  %i.ce = icmp eq i64 %i.cd, 0                    ; 2 uses
  %i.cf = add nsw i64 %i.d, -2                    ; 2 uses
  %i.cg = ashr exact i64 %i.cf, 1                 ; 2 uses
  br i1 %i.cc, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %4 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cg
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.i
  %.sroa.0.025.us = phi ptr [ %i.dp, %bb.i ], [ %1, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.cj = load i64, ptr %0, align 8, !tbaa !61    ; 2 uses
  %i.ck = load i64, ptr %.sroa.0.025.us, align 8, !tbaa !61 ; 2 uses
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.cj
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.ck
  %i.cn = load double, ptr %i.cl, align 8, !tbaa !44
  %i.co = load double, ptr %i.cm, align 8, !tbaa !44 ; 2 uses
  %i.cp = fcmp olt double %i.cn, %i.co
  br i1 %i.cp, label %.lr.ph.i.i19.preheader.us, label %bb.i

.lr.ph.i.i19.preheader.us:                        ; preds = %.lr.ph.split.us
  store i64 %i.cj, ptr %.sroa.0.025.us, align 8, !tbaa !61
  br label %.lr.ph.i.i19.us

.lr.ph.i.i19.us:                                  ; preds = %.lr.ph.i.i19.us, %.lr.ph.i.i19.preheader.us
  %.037.i.i20.us = phi i64 [ %spec.select.i.i21.us, %.lr.ph.i.i19.us ], [ 0, %.lr.ph.i.i19.preheader.us ] ; 2 uses
  %i.cq = shl i64 %.037.i.i20.us, 1               ; 2 uses
  %i.cr = add i64 %i.cq, 2                        ; 2 uses
  %i.cs = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cr
  %i.ct = or disjoint i64 %i.cq, 1                ; 2 uses
  %i.cu = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ct
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !61
  %i.cw = load i64, ptr %i.cs, align 8, !tbaa !61
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.cv
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.cw
  %i.cz = load double, ptr %i.cx, align 8, !tbaa !44
  %i.da = load double, ptr %i.cy, align 8, !tbaa !44
  %i.db = fcmp olt double %i.cz, %i.da
  %spec.select.i.i21.us = select i1 %i.db, i64 %i.ct, i64 %i.cr ; 6 uses
  %i.dc = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i21.us
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !61
  %i.de = getelementptr inbounds [8 x i8], ptr %0, i64 %.037.i.i20.us
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !61
  %i.df = icmp slt i64 %spec.select.i.i21.us, %i.cb
  br i1 %i.df, label %.lr.ph.i.i19.us, label %._crit_edge.i.i10.loopexit.us, !llvm.loop !1449

._crit_edge.i.i10.loopexit.us:                    ; preds = %.lr.ph.i.i19.us
  %i.dg = icmp eq i64 %spec.select.i.i21.us, %i.cg
  %or.cond = select i1 %i.ce, i1 %i.dg, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i10.loopexit.us
  %.not.i12.us = icmp eq i64 %spec.select.i.i21.us, 0
  br i1 %.not.i12.us, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_SS_SS_RT0_.exit.us, label %.lr.ph.i.i.i14.us.preheader

.thread.i.us:                                     ; preds = %._crit_edge.i.i10.loopexit.us
  %i.dh = load i64, ptr %i.ch, align 8, !tbaa !61
  store i64 %i.dh, ptr %i.ci, align 8, !tbaa !61
  br label %.lr.ph.i.i.i14.us.preheader

.lr.ph.i.i.i14.us.preheader:                      ; preds = %.thread.i.us, %bb.g
  %.019.i.i.i15.us.ph = phi i64 [ %spec.select.i.i21.us, %bb.g ], [ %4, %.thread.i.us ]
  br label %.lr.ph.i.i.i14.us

.lr.ph.i.i.i14.us:                                ; preds = %.lr.ph.i.i.i14.us.preheader, %bb.h
  %.019.i.i.i15.us = phi i64 [ %.0920.i.i89.i.us, %bb.h ], [ %.019.i.i.i15.us.ph, %.lr.ph.i.i.i14.us.preheader ] ; 3 uses
  %.0920.in.i.i.i16.us = add nsw i64 %.019.i.i.i15.us, -1
  %.0920.i.i89.i.us = lshr i64 %.0920.in.i.i.i16.us, 1 ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i89.i.us
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !61 ; 2 uses
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.dj
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !44
  %i.dm = fcmp olt double %i.co, %i.dl
  br i1 %i.dm, label %bb.h, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_SS_SS_RT0_.exit.us

bb.h:                                             ; preds = %.lr.ph.i.i.i14.us
  %i.dn = getelementptr inbounds [8 x i8], ptr %0, i64 %.019.i.i.i15.us
  store i64 %i.dj, ptr %i.dn, align 8, !tbaa !61
  %.not10.i.us = icmp eq i64 %.0920.i.i89.i.us, 0
  br i1 %.not10.i.us, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_SS_SS_RT0_.exit.us, label %.lr.ph.i.i.i14.us, !llvm.loop !1450

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_SS_SS_RT0_.exit.us: ; preds = %.lr.ph.i.i.i14.us, %bb.h, %bb.g
  %.0.lcssa.i.i.i18.us = phi i64 [ 0, %bb.g ], [ %.019.i.i.i15.us, %.lr.ph.i.i.i14.us ], [ 0, %bb.h ]
  %i.do = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i18.us
  store i64 %i.ck, ptr %i.do, align 8, !tbaa !61
  br label %bb.i

bb.i:                                             ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_SS_SS_RT0_.exit.us, %.lr.ph.split.us
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.025.us, i64 8 ; 2 uses
  %i.dq = icmp ult ptr %i.dp, %2
  br i1 %i.dq, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !1452

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  br i1 %i.ce, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre = load i64, ptr %0, align 8, !tbaa !61
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.ds = icmp eq i64 %i.cf, 0
  br i1 %i.ds, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split.preheader

.lr.ph.split.split.us.split.preheader:            ; preds = %.lr.ph.split.split.us
  %.pre48 = load i64, ptr %0, align 8, !tbaa !61
  br label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.j
  %.sroa.0.025.us27.us = phi ptr [ %i.ef, %bb.j ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %i.dt = load i64, ptr %0, align 8, !tbaa !61    ; 2 uses
  %i.du = load i64, ptr %.sroa.0.025.us27.us, align 8, !tbaa !61 ; 2 uses
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.dt
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.du
  %i.dx = load double, ptr %i.dv, align 8, !tbaa !44
  %i.dy = load double, ptr %i.dw, align 8, !tbaa !44 ; 2 uses
  %i.dz = fcmp olt double %i.dx, %i.dy
  br i1 %i.dz, label %._crit_edge.i.i10.us28.us, label %bb.j

._crit_edge.i.i10.us28.us:                        ; preds = %.lr.ph.split.split.us.split.us
  store i64 %i.dt, ptr %.sroa.0.025.us27.us, align 8, !tbaa !61
  %i.ea = load i64, ptr %i.dr, align 8, !tbaa !61 ; 2 uses
  store i64 %i.ea, ptr %0, align 8, !tbaa !61
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.ea
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !44
  %i.ed = fcmp uge double %i.dy, %i.ec
  %spec.select = zext i1 %i.ed to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %spec.select
  store i64 %i.du, ptr %i.ee, align 8, !tbaa !61
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.i.i10.us28.us, %.lr.ph.split.split.us.split.us
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0.025.us27.us, i64 8 ; 2 uses
  %i.eg = icmp ult ptr %i.ef, %2
  br i1 %i.eg, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !1452

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us.split.preheader, %bb.k
  %i.eh = phi i64 [ %i.eo, %bb.k ], [ %.pre48, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %.sroa.0.025.us27 = phi ptr [ %i.ep, %bb.k ], [ %1, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %i.ei = load i64, ptr %.sroa.0.025.us27, align 8, !tbaa !61 ; 3 uses
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.eh
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.ei
  %i.el = load double, ptr %i.ej, align 8, !tbaa !44
  %i.em = load double, ptr %i.ek, align 8, !tbaa !44
  %i.en = fcmp olt double %i.el, %i.em
  br i1 %i.en, label %._crit_edge.i.i10.us28, label %bb.k

._crit_edge.i.i10.us28:                           ; preds = %.lr.ph.split.split.us.split
  store i64 %i.eh, ptr %.sroa.0.025.us27, align 8, !tbaa !61
  store i64 %i.ei, ptr %0, align 8, !tbaa !61
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i10.us28, %.lr.ph.split.split.us.split
  %i.eo = phi i64 [ %i.ei, %._crit_edge.i.i10.us28 ], [ %i.eh, %.lr.ph.split.split.us.split ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0.025.us27, i64 8 ; 2 uses
  %i.eq = icmp ult ptr %i.ep, %2
  br i1 %i.eq, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !1452

._crit_edge:                                      ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN4CGAL21Hilbert_sort_median_2INS9_29Spatial_sort_traits_adapter_2INS9_5EpickEN5boost21iterator_property_mapIPNS9_7Point_2ISC_EENSD_27typed_identity_property_mapImEESG_RSG_EEEENS9_14Sequential_tagEE3CmpILi0ELb1EEEEEEvT_SS_RT0_.exit
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.l
  %i.er = phi i64 [ %i.ey, %bb.l ], [ %.pre, %.lr.ph.split.split.preheader ] ; 3 uses
  %.sroa.0.025 = phi ptr [ %i.ez, %bb.l ], [ %1, %.lr.ph.split.split.preheader ] ; 3 uses
  %i.es = load i64, ptr %.sroa.0.025, align 8, !tbaa !61 ; 3 uses
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.er
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.es
  %i.ev = load double, ptr %i.et, align 8, !tbaa !44
  %i.ew = load double, ptr %i.eu, align 8, !tbaa !44
  %i.ex = fcmp olt double %i.ev, %i.ew
  br i1 %i.ex, label %._crit_edge.i.i10, label %bb.l

._crit_edge.i.i10:                                ; preds = %.lr.ph.split.split
  store i64 %i.er, ptr %.sroa.0.025, align 8, !tbaa !61
  store i64 %i.es, ptr %0, align 8, !tbaa !61
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.split, %._crit_edge.i.i10
  %i.ey = phi i64 [ %i.er, %.lr.ph.split.split ], [ %i.es, %._crit_edge.i.i10 ]
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0.025, i64 8 ; 2 uses
  %i.fa = icmp ult ptr %i.ez, %2
  br i1 %i.fa, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !1452
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE12exact_locateERKNS_7Point_2IS1_EERNSC_11Locate_typeERiNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESO_SO_EELb0EEE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr %4) local_unnamed_addr #27 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 4, ptr %3, align 4, !tbaa !60
  store i32 4, ptr %2, align 4, !tbaa !297
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !134  ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %i.b, label %bb.k [
    i32 0, label %bb.c
    i32 1, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load i64, ptr %i.d, align 8, !tbaa !265, !noalias !1457
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !279, !noalias !1457 ; 3 uses
  %switch.i = icmp ult i64 %i.e, 2
  br i1 %switch.i, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE13finite_vertexEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !280, !noalias !1457 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE18all_vertices_beginEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !144, !noalias !1457
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = and i64 %i.m, 3
  %i.o = icmp eq i64 %i.n, 2
  br i1 %i.o, label %.preheader.i.i.i.i.i.i, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE18all_vertices_beginEv.exit.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.e, %.preheader.i.i.i.i.i.i.backedge
  %i.p = phi ptr [ %.be54, %.preheader.i.i.i.i.i.i.backedge ], [ %i.k, %bb.e ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !144, !noalias !1457
  %i.s = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.t = trunc i64 %i.s to i32
  %i.u = and i32 %i.t, 3
  switch i32 %i.u, label %.preheader.i.i.i.i.i.i.unreachabledefault [
    i32 0, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE18all_vertices_beginEv.exit.i.i
    i32 3, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE18all_vertices_beginEv.exit.i.i
    i32 1, label %bb.f
    i32 2, label %.preheader.i.i.i.i.i.i.backedge
  ]

bb.f:                                             ; preds = %.preheader.i.i.i.i.i.i
  %i.v = and i64 %i.s, -4
  %i.w = inttoptr i64 %i.v to ptr
  br label %.preheader.i.i.i.i.i.i.backedge

.preheader.i.i.i.i.i.i.backedge:                  ; preds = %bb.f, %.preheader.i.i.i.i.i.i
  %.be54 = phi ptr [ %i.w, %bb.f ], [ %i.q, %.preheader.i.i.i.i.i.i ]
  br label %.preheader.i.i.i.i.i.i, !llvm.loop !18

.preheader.i.i.i.i.i.i.unreachabledefault:        ; preds = %.preheader.i.i.i.i.i.i
  unreachable

default.unreachable:                              ; preds = %.preheader.i.i.i.i
  unreachable

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE18all_vertices_beginEv.exit.i.i: ; preds = %.preheader.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i, %bb.e, %bb.d
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.k, %bb.e ], [ null, %bb.d ], [ %i.q, %.preheader.i.i.i.i.i.i ], [ %i.q, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %.not5.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i, %i.g
  br i1 %.not5.i.i.i.i, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE13finite_vertexEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE18all_vertices_beginEv.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !139, !noalias !1458
  br label %bb.g

bb.g:                                             ; preds = %_ZN4CGAL8internal11CC_iteratorINS_17Compact_containerINS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS4_NS_30Triangulation_ds_vertex_base_2INS_30Triangulation_data_structure_2INS3_IjS4_NS5_IS4_NS6_IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_7DefaultESH_SH_EELb0EEppEv.exit.i.i.i.i, %.lr.ph.i.i.i.i
end_hunk_1
