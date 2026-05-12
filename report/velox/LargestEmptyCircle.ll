inline.NumInlined: 482
inline.NumDeleted: 295
begin_hunk_0_@_ZN4geos9algorithm9construct18LargestEmptyCircle13getRadiusLineEv:bb.a
; Function Attrs: mustprogress uwtable
define void @_ZN4geos9algorithm9construct18LargestEmptyCircle7computeEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.geos::geom::Coordinate", align 8 ; 6 uses
  %2 = alloca %"class.geos::geom::Coordinate", align 8 ; 6 uses
  %3 = alloca %"class.geos::geom::Coordinate", align 8 ; 6 uses
  %4 = alloca %"class.geos::geom::Coordinate", align 16 ; 5 uses
  %5 = alloca %"class.geos::geom::Coordinate", align 16 ; 7 uses
  %6 = alloca %"class.std::priority_queue", align 8 ; 18 uses
  %7 = alloca %"class.std::vector.70", align 8    ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN4geos9algorithm9construct18LargestEmptyCircle7computeEv:bb.a

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds i8, ptr %i.ai, i64 -40 ; 3 uses
  %.sroa.06.i.i.i.sroa.0.0.copyload = load <4 x double>, ptr %i.ap, align 8
  %.sroa.49.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %i.ai, i64 -8
  %.sroa.49.0.copyload.i.i.i = load double, ptr %.sroa.49.0..sroa.0.0..sroa_idx.i.i.i, align 8, !tbaa !56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, ptr noundef nonnull align 8 dereferenceable(40) %i.ah, i64 40, i1 false), !tbaa.struct !115
end_hunk_1
begin_hunk_2_@_ZN4geos9algorithm9construct18LargestEmptyCircle7computeEv:bb.a
_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos9algorithm9construct18LargestEmptyCircle4CellESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS6_EEEEvT_SH_SH_RT0_.exit.i.i: ; preds = %bb.j, %.lr.ph.i.i.i.i.i, %bb.i
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.i ], [ %.018.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.j ]
  %i.bx = getelementptr inbounds [40 x i8], ptr %i.ah, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store <4 x double> %.sroa.06.i.i.i.sroa.0.0.copyload, ptr %i.bx, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store double %.sroa.49.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !56
  br label %bb.k

bb.k:                                             ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos9algorithm9construct18LargestEmptyCircle4CellESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS6_EEEEvT_SH_SH_RT0_.exit.i.i, %bb.f
end_hunk_2
begin_hunk_3_@_ZN4geos9algorithm9construct18LargestEmptyCircle7computeEv:bb.a
  %i.dr = phi ptr [ %i.dp, %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.ai, %bb.r ] ; 13 uses
  %i.ds = phi ptr [ %i.dg, %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.ah, %bb.r ] ; 11 uses
  %i.dt = getelementptr inbounds i8, ptr %i.dr, i64 -40
  %.sroa.05.i.i.sroa.0.0.copyload = load <4 x double>, ptr %i.dt, align 8
  %.sroa.410.0..sroa.0.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.dr, i64 -8
  %.sroa.410.0.copyload.i.i = load double, ptr %.sroa.410.0..sroa.0.0..sroa_idx.i.i, align 8, !tbaa !56 ; 2 uses
  %i.du = sub i64 %.pre-phi, %.pre-phi336         ; 4 uses
end_hunk_3
begin_hunk_4_@_ZN4geos9algorithm9construct18LargestEmptyCircle7computeEv:bb.a
.loopexit199:                                     ; preds = %bb.u, %.lr.ph.i.i.i, %.noexc17
  %.0.lcssa.i.i.i = phi i64 [ %i.dw, %.noexc17 ], [ %.018.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.u ]
  %i.ed = getelementptr inbounds [40 x i8], ptr %i.ds, i64 %.0.lcssa.i.i.i ; 2 uses
  store <4 x double> %.sroa.05.i.i.sroa.0.0.copyload, ptr %i.ed, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  store double %.sroa.410.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !56
  %i.ee = extractelement <2 x double> %i.ak, i64 0
  %i.ef = fadd double %i.ee, %i.cm                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
end_hunk_4
begin_hunk_5_@_ZN4geos9algorithm9construct18LargestEmptyCircle7computeEv:bb.a
  %.0.lcssa.i.i.i.i.i.i80.pn550 = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i80.pn to i64
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i80.pn, i64 40 ; 6 uses
  %.sroa.05.i.i20.sroa.0.0.copyload = load <4 x double>, ptr %.0.lcssa.i.i.i.i.i.i80.pn, align 8
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = sub i64 %i.fj, %.pre-phi338             ; 4 uses
  %i.fl = sdiv exact i64 %i.fk, 40                ; 4 uses
end_hunk_5
begin_hunk_6_@_ZN4geos9algorithm9construct18LargestEmptyCircle7computeEv:bb.a
.loopexit198:                                     ; preds = %bb.z, %.lr.ph.i.i.i25, %.noexc30
  %.0.lcssa.i.i.i23 = phi i64 [ %i.fm, %.noexc30 ], [ %.018.i.i.i26, %.lr.ph.i.i.i25 ], [ 0, %bb.z ]
  %i.ft = getelementptr inbounds [40 x i8], ptr %i.fg, i64 %.0.lcssa.i.i.i23 ; 2 uses
  store <4 x double> %.sroa.05.i.i20.sroa.0.0.copyload, ptr %i.ft, align 8
  %.sroa.4.0..sroa_idx.i.i24 = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  store double %.sroa.410.0.copyload.i.i22, ptr %.sroa.4.0..sroa_idx.i.i24, align 8, !tbaa !56
  %i.fu = extractelement <2 x double> %i.ak, i64 1
  %i.fv = fadd double %i.fu, %i.cm                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
end_hunk_6
begin_hunk_7_@_ZN4geos9algorithm9construct18LargestEmptyCircle7computeEv:bb.a
  %i.hk = phi ptr [ %i.hi, %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i98 ], [ %i.gf, %bb.ab ] ; 14 uses
  %i.hl = phi ptr [ %i.gm, %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i98 ], [ %i.fg, %bb.ab ] ; 11 uses
  %i.hm = getelementptr inbounds i8, ptr %i.hk, i64 -40
  %.sroa.05.i.i34.sroa.0.0.copyload = load <4 x double>, ptr %i.hm, align 8
  %.sroa.410.0..sroa.0.0..sroa_idx.i.i35 = getelementptr inbounds i8, ptr %i.hk, i64 -8
  %.sroa.410.0.copyload.i.i36 = load double, ptr %.sroa.410.0..sroa.0.0..sroa_idx.i.i35, align 8, !tbaa !56 ; 2 uses
  %i.hn = ptrtoint ptr %i.hk to i64
end_hunk_7
begin_hunk_8_@_ZN4geos9algorithm9construct18LargestEmptyCircle7computeEv:bb.a
.loopexit197:                                     ; preds = %bb.ae, %.lr.ph.i.i.i39, %.noexc44
  %.0.lcssa.i.i.i37 = phi i64 [ %i.hq, %.noexc44 ], [ %.018.i.i.i40, %.lr.ph.i.i.i39 ], [ 0, %bb.ae ]
  %i.hx = getelementptr inbounds [40 x i8], ptr %i.hl, i64 %.0.lcssa.i.i.i37 ; 2 uses
  store <4 x double> %.sroa.05.i.i34.sroa.0.0.copyload, ptr %i.hx, align 8
  %.sroa.4.0..sroa_idx.i.i38 = getelementptr inbounds nuw i8, ptr %i.hx, i64 32
  store double %.sroa.410.0.copyload.i.i36, ptr %.sroa.4.0..sroa_idx.i.i38, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  store double %i.ef, ptr %1, align 8, !tbaa !130
  store double %i.fv, ptr %i.af, align 8, !tbaa !131
end_hunk_8
begin_hunk_9_@_ZN4geos9algorithm9construct18LargestEmptyCircle7computeEv:bb.a
  %.0.lcssa.i.i.i.i.i.i112.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i112, %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i114 ], [ %i.hk, %bb.ag ] ; 2 uses
  %i.ix = phi ptr [ %i.im, %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i114 ], [ %i.hl, %bb.ag ] ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i112.pn, i64 40 ; 2 uses
  %.sroa.05.i.i48.sroa.0.0.copyload = load <4 x double>, ptr %.0.lcssa.i.i.i.i.i.i112.pn, align 8
  %i.iz = ptrtoint ptr %i.iy to i64
  %i.ja = sub i64 %i.iz, %.pre-phi342             ; 2 uses
  %i.jb = sdiv exact i64 %i.ja, 40
end_hunk_9
begin_hunk_10_@_ZN4geos9algorithm9construct18LargestEmptyCircle7computeEv:bb.a
.loopexit:                                        ; preds = %bb.aj, %.lr.ph.i.i.i53, %.noexc58
  %.0.lcssa.i.i.i51 = phi i64 [ %i.jc, %.noexc58 ], [ %.018.i.i.i54, %.lr.ph.i.i.i53 ], [ 0, %bb.aj ]
  %i.jj = getelementptr inbounds [40 x i8], ptr %i.ix, i64 %.0.lcssa.i.i.i51 ; 2 uses
  store <4 x double> %.sroa.05.i.i48.sroa.0.0.copyload, ptr %i.jj, align 8
  %.sroa.4.0..sroa_idx.i.i52 = getelementptr inbounds nuw i8, ptr %i.jj, i64 32
  store double %.sroa.410.0.copyload.i.i50, ptr %.sroa.4.0..sroa_idx.i.i52, align 8, !tbaa !56
  br label %_ZN4geos9algorithm9construct18LargestEmptyCircle22mayContainCircleCenterERKNS2_4CellES5_.exit.thread

.loopexit200:                                     ; preds = %bb.p, %_ZNKSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE12_M_check_lenEmPKc.exit.i.i
end_hunk_10
begin_hunk_11_@_ZNK4geos4geom15GeometryFactory16createLineStringEOSt10unique_ptrINS0_18CoordinateSequenceESt14default_deleteIS3_EE
; Function Attrs: mustprogress uwtable
define void @_ZN4geos9algorithm9construct18LargestEmptyCircle17createInitialGridEPKNS_4geom8EnvelopeERSt14priority_queueINS2_4CellESt6vectorIS8_SaIS8_EESt4lessIS8_EE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull align 8 captures(none) dereferenceable(25) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.geos::geom::Coordinate", align 8 ; 8 uses
  %i.a = load double, ptr %1, align 8, !tbaa !154 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_11
begin_hunk_12_@_ZN4geos9algorithm9construct18LargestEmptyCircle17createInitialGridEPKNS_4geom8EnvelopeERSt14priority_queueINS2_4CellESt6vectorIS8_SaIS8_EESt4lessIS8_EE:bb.a
  %i.bu = phi ptr [ %i.bs, %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.us ], [ %i.ax, %bb.h ] ; 3 uses
  %i.bv = phi ptr [ %i.bj, %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.us ], [ %.pre, %bb.h ] ; 4 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -40
  %.sroa.05.i.i.sroa.0.0.copyload = load <4 x double>, ptr %i.bw, align 8
  %.sroa.410.0..sroa.0.0..sroa_idx.i.i.us = getelementptr inbounds i8, ptr %i.bu, i64 -8
  %.sroa.410.0.copyload.i.i.us = load double, ptr %.sroa.410.0..sroa.0.0..sroa_idx.i.i.us, align 8, !tbaa !56 ; 2 uses
  %i.bx = ptrtoint ptr %i.bu to i64
end_hunk_12
begin_hunk_13_@_ZN4geos9algorithm9construct18LargestEmptyCircle17createInitialGridEPKNS_4geom8EnvelopeERSt14priority_queueINS2_4CellESt6vectorIS8_SaIS8_EESt4lessIS8_EE:bb.a
_ZNSt14priority_queueIN4geos9algorithm9construct18LargestEmptyCircle4CellESt6vectorIS4_SaIS4_EESt4lessIS4_EE7emplaceIJddRddEEEvDpOT_.exit.us: ; preds = %.lr.ph.i.i.i.us, %bb.k, %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE12emplace_backIJddRddEEEvDpOT_.exit.us
  %.0.lcssa.i.i.i.us = phi i64 [ %i.cb, %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE12emplace_backIJddRddEEEvDpOT_.exit.us ], [ %.018.i.i.i.us, %.lr.ph.i.i.i.us ], [ 0, %bb.k ]
  %i.ci = getelementptr inbounds [40 x i8], ptr %i.bv, i64 %.0.lcssa.i.i.i.us ; 2 uses
  store <4 x double> %.sroa.05.i.i.sroa.0.0.copyload, ptr %i.ci, align 8
  %.sroa.4.0..sroa_idx.i.i.us = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  store double %.sroa.410.0.copyload.i.i.us, ptr %.sroa.4.0..sroa_idx.i.i.us, align 8, !tbaa !56
  %i.cj = fadd double %.sroa.speculated, %.040.us ; 2 uses
  %i.ck = fcmp olt double %i.cj, %i.g
  br i1 %i.ck, label %bb.b, label %._crit_edge.us, !llvm.loop !165
end_hunk_13
