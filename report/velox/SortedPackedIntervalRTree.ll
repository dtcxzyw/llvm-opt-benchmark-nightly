inline.NumInlined: 379
inline.NumDeleted: 159
begin_hunk_0_@_ZN4geos5index13intervalrtree25SortedPackedIntervalRTree4initEv:bb.a
; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN4geos5index13intervalrtree25SortedPackedIntervalRTree9buildTreeEv(ptr noundef nonnull align 8 dereferenceable(60) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.5", align 8     ; 11 uses
  %2 = alloca %"class.std::vector.5", align 8     ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4geos5index13intervalrtree25SortedPackedIntervalRTree9buildTreeEv:bb.a
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i.preheader.i.i.i.i, label %bb.g

.lr.ph.i.i.i.i.i.preheader.i.i.i.i:               ; preds = %bb.f
  %.sroa.5.i.i.i.i.sroa.0.0.copyload = load <2 x double>, ptr %i.aw, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !43
  %i.bd = lshr exact i64 %.sroa.08.021.i.idx.i.i.i, 5 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4geos5index13intervalrtree25SortedPackedIntervalRTree9buildTreeEv:bb.a
  br i1 %i.cc, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i, !llvm.loop !45

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit
  store <2 x double> %.sroa.5.i.i.i.i.sroa.0.0.copyload, ptr %i.at, align 8
  store ptr %i.bc, ptr %i.av, align 8, !tbaa !43
  br label %bb.h

bb.g:                                             ; preds = %bb.f
end_hunk_2
begin_hunk_3_@_ZN4geos5index13intervalrtree25SortedPackedIntervalRTree9buildTreeEv:bb.a
  br i1 %i.dx, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.5.i24.i.i.i.sroa.0.0.copyload = load <2 x double>, ptr %i.dt, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %.pn20.i30.i.i.i, i64 56
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !43
  %i.ea = ptrtoint ptr %.sroa.08.021.i29.i.i.i to i64
end_hunk_3
begin_hunk_4_@_ZN4geos5index13intervalrtree25SortedPackedIntervalRTree9buildTreeEv:bb.a
  br i1 %i.fc, label %.lr.ph.i.i.i.i.i.i49.i.i.i, label %.loopexit.i47.i.i.i, !llvm.loop !45

.loopexit.i47.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i.i49.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i49.i.i.i, %bb.j
  store <2 x double> %.sroa.5.i24.i.i.i.sroa.0.0.copyload, ptr %i.dq, align 8
  store ptr %i.dz, ptr %i.ds, align 8, !tbaa !43
  br label %bb.l

bb.k:                                             ; preds = %bb.i
end_hunk_4
begin_hunk_5_@_ZdlPv
; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
end_hunk_5
begin_hunk_6_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_T0_T1_":bb.a
  br i1 %i.er, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.4.i.i.i.i.sroa.0.0.copyload = load <2 x double>, ptr %i.i, align 8
  %i.es = load ptr, ptr %i.j, align 8, !tbaa !43
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ej, i64 16, i1 false)
  %i.et = getelementptr inbounds nuw i8, ptr %i.ei, i64 24 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !43
  store ptr %i.eu, ptr %i.j, align 8, !tbaa !43
  store <2 x double> %.sroa.4.i.i.i.i.sroa.0.0.copyload, ptr %i.ej, align 8
  store ptr %i.es, ptr %i.et, align 8, !tbaa !43
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
end_hunk_6
begin_hunk_7_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_T0_T1_":bb.a
  br i1 %i.ev, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.4.i.i34.i.i.sroa.0.0.copyload = load <2 x double>, ptr %i.i, align 8
  %i.ew = load ptr, ptr %i.j, align 8, !tbaa !43
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i64 16, i1 false)
  %i.ex = getelementptr inbounds i8, ptr %storemerge2753, i64 -8 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !43
  store ptr %i.ey, ptr %i.j, align 8, !tbaa !43
  store <2 x double> %.sroa.4.i.i34.i.i.sroa.0.0.copyload, ptr %i.eo, align 8
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !43
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  %.sroa.4.i.i35.i.i.sroa.0.0.copyload = load <2 x double>, ptr %i.i, align 8
  %i.ez = load ptr, ptr %i.j, align 8, !tbaa !43
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.fa = load ptr, ptr %i.k, align 8, !tbaa !43
  store ptr %i.fa, ptr %i.j, align 8, !tbaa !43
  store <2 x double> %.sroa.4.i.i35.i.i.sroa.0.0.copyload, ptr %i.g, align 8
  store ptr %i.ez, ptr %i.k, align 8, !tbaa !43
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph54
end_hunk_7
begin_hunk_8_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_T0_T1_":bb.a
  br i1 %i.fb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.4.i.i40.i.i.sroa.0.0.copyload = load <2 x double>, ptr %i.i, align 8
  %i.fc = load ptr, ptr %i.j, align 8, !tbaa !43
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.fd = load ptr, ptr %i.k, align 8, !tbaa !43
  store ptr %i.fd, ptr %i.j, align 8, !tbaa !43
  store <2 x double> %.sroa.4.i.i40.i.i.sroa.0.0.copyload, ptr %i.g, align 8
  store ptr %i.fc, ptr %i.k, align 8, !tbaa !43
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
end_hunk_8
begin_hunk_9_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_T0_T1_":bb.a
  br i1 %i.fe, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.4.i.i45.i.i.sroa.0.0.copyload = load <2 x double>, ptr %i.i, align 8
  %i.ff = load ptr, ptr %i.j, align 8, !tbaa !43
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i64 16, i1 false)
  %i.fg = getelementptr inbounds i8, ptr %storemerge2753, i64 -8 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !43
  store ptr %i.fh, ptr %i.j, align 8, !tbaa !43
  store <2 x double> %.sroa.4.i.i45.i.i.sroa.0.0.copyload, ptr %i.eo, align 8
  store ptr %i.ff, ptr %i.fg, align 8, !tbaa !43
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  %.sroa.4.i.i46.i.i.sroa.0.0.copyload = load <2 x double>, ptr %i.i, align 8
  %i.fi = load ptr, ptr %i.j, align 8, !tbaa !43
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ej, i64 16, i1 false)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ei, i64 24 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !43
  store ptr %i.fk, ptr %i.j, align 8, !tbaa !43
  store <2 x double> %.sroa.4.i.i46.i.i.sroa.0.0.copyload, ptr %i.ej, align 8
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !43
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
end_hunk_9
begin_hunk_10_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_T0_T1_":bb.a

bb.v:                                             ; preds = %bb.u
  %i.fx = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 2 uses
  %.sroa.4.i.i.i13.i.sroa.0.0.copyload = load <2 x double>, ptr %i.fr, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 24 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !43
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fr, ptr noundef nonnull align 8 dereferenceable(16) %i.fx, i64 16, i1 false)
  %i.ga = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !43
  store ptr %i.gb, ptr %i.fy, align 8, !tbaa !43
  store <2 x double> %.sroa.4.i.i.i13.i.sroa.0.0.copyload, ptr %i.fx, align 8
  store ptr %i.fz, ptr %i.ga, align 8, !tbaa !43
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEEvT_SG_SG_SG_T0_.exit.i", !llvm.loop !76

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos5index13intervalrtree21IntervalRTreeLeafNodeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_25SortedPackedIntervalRTree9buildTreeEvE3$_0EEET_SG_SG_T0_.exit": ; preds = %bb.u
end_hunk_10
