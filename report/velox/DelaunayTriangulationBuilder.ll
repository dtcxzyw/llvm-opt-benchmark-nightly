inline.NumInlined: 481
inline.NumDeleted: 226
begin_hunk_0_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_T0_T1_:bb.a
  %i.p = fcmp ogt double %i.n, %i.m
  br i1 %i.p, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i.preheader, label %bb.f

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i.preheader: ; preds = %bb.f, %bb.e
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !65
  %i.s = load double, ptr %i.f, align 8, !tbaa !65
  %i.t = fcmp olt double %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i.preheader

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 24
  br label %bb.d, !llvm.loop !66

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i.backedge, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i.preheader
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.0.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i.preheader ], [ %.sroa.0.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i.backedge ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 6 uses
  %i.v = load double, ptr %.sroa.0.1.i.i, align 8, !tbaa !64 ; 2 uses
  %i.w = fcmp olt double %i.m, %i.v
  br i1 %i.w, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i.backedge, label %bb.h

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i
  %i.x = fcmp ogt double %i.m, %i.v
  br i1 %i.x, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit9.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = load double, ptr %i.f, align 8, !tbaa !65
  %i.z = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16
  %i.aa = load double, ptr %i.z, align 8, !tbaa !65
  %i.ab = fcmp olt double %i.y, %i.aa
  br i1 %i.ab, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i.backedge, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit9.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i.backedge: ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i, !llvm.loop !67

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit9.i.i: ; preds = %bb.i, %bb.h
  %i.ac = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ac, label %bb.j, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEET_SE_SE_T0_.exit

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit9.i.i
  %.sroa.0.0.copyload = load <3 x double>, ptr %.sroa.012.1.i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.1.i.i, i64 24, i1 false), !tbaa.struct !29
  store <3 x double> %.sroa.0.0.copyload, ptr %.sroa.0.1.i.i, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 24
  br label %bb.c, !llvm.loop !68

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEET_SE_SE_T0_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit9.i.i
  %i.ae = add nsw i64 %.01927, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge1828, i64 noundef %i.ae)
  %i.af = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.ag = sub i64 %i.af, %i.a                     ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 384
  br i1 %i.ah, label %bb.b, label %.loopexit, !llvm.loop !63

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEET_SE_SE_T0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph.i, label %bb.q

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %scevgep = getelementptr i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.l, %.lr.ph.i
  %.sroa.0.020.i.idx = phi i64 [ 24, %.lr.ph.i ], [ %.sroa.0.020.i.add, %bb.l ] ; 4 uses
  %.pn19.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.020.i.ptr, %bb.l ] ; 3 uses
  %.sroa.0.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.020.i.idx ; 4 uses
  %i.f = load double, ptr %.sroa.0.020.i.ptr, align 8, !tbaa !64 ; 5 uses
  %i.g = load double, ptr %0, align 8, !tbaa !64  ; 2 uses
  %i.h = fcmp olt double %i.f, %i.g
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = fcmp ogt double %i.f, %i.g
  %.sroa.5.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 32
  %.sroa.5.0.copyload.i.pre.i = load double, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i, align 8, !tbaa !30 ; 3 uses
  br i1 %i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load double, ptr %i.e, align 8, !tbaa !65
  %i.k = fcmp olt double %.sroa.5.0.copyload.i.pre.i, %i.j
  br i1 %i.k, label %bb.e, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.copyload = load <3 x double>, ptr %.sroa.0.020.i.ptr, align 8
  %i.l = icmp samesign ugt i64 %.sroa.0.020.i.idx, 24
  br i1 %i.l, label %bb.f, label %bb.g, !prof !69

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.020.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !29
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i: ; preds = %bb.g, %bb.f
  store <3 x double> %.sroa.0.0.copyload, ptr %0, align 8
  br label %bb.l

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 40
  %.sroa.6.0.copyload.i.i = load double, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !30
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i
  %.sroa.09.0.i.i = phi ptr [ %.sroa.0.020.i.ptr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i ], [ %.sroa.0.0.i.i, %bb.k ] ; 6 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.i.i, i64 -24 ; 3 uses
  %i.n = load double, ptr %.sroa.0.0.i.i, align 8, !tbaa !64 ; 2 uses
  %i.o = fcmp olt double %i.f, %i.n
  br i1 %i.o, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = fcmp ogt double %i.f, %i.n
  br i1 %i.p, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_18CoordinateLessThenEEEEvT_T0_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds i8, ptr %.sroa.09.0.i.i, i64 -16
  %i.r = load double, ptr %i.q, align 8, !tbaa !65
  %i.s = fcmp olt double %.sroa.5.0.copyload.i.pre.i, %i.r
  br i1 %i.s, label %bb.k, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_18CoordinateLessThenEEEEvT_T0_.exit.i

bb.k:                                             ; preds = %bb.j, %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.09.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i, i64 24, i1 false), !tbaa.struct !29
  br label %bb.h, !llvm.loop !70

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_18CoordinateLessThenEEEEvT_T0_.exit.i: ; preds = %bb.j, %bb.i
  store double %i.f, ptr %.sroa.09.0.i.i, align 8, !tbaa !30
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 8
  store double %.sroa.5.0.copyload.i.pre.i, ptr %.sroa.5.0..sroa_idx5.i.i, align 8, !tbaa !30
  %.sroa.6.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 16
  store double %.sroa.6.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx7.i.i, align 8, !tbaa !30
  br label %bb.l

bb.l:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_18CoordinateLessThenEEEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i
  %.sroa.0.020.i.add = add nuw nsw i64 %.sroa.0.020.i.idx, 24 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.020.i.add, 384
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_T0_.exit, label %bb.b, !llvm.loop !71

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_T0_.exit: ; preds = %bb.l
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %.not6.i = icmp eq ptr %i.t, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_T0_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_18CoordinateLessThenEEEEvT_T0_.exit.i17
  %.sroa.0.07.i = phi ptr [ %i.ad, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_18CoordinateLessThenEEEEvT_T0_.exit.i17 ], [ %i.t, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_T0_.exit ] ; 4 uses
  %i.u = load <2 x double>, ptr %.sroa.0.07.i, align 8, !tbaa !30 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i13 = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16
  %.sroa.6.0.copyload.i.i14 = load double, ptr %.sroa.6.0..sroa_idx.i.i13, align 8, !tbaa !30
  %i.v = extractelement <2 x double> %i.u, i64 0  ; 2 uses
  %i.w = extractelement <2 x double> %i.u, i64 1
  br label %bb.m

bb.m:                                             ; preds = %bb.p, %.lr.ph.i12
  %.sroa.09.0.i.i15 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i12 ], [ %.sroa.0.0.i.i16, %bb.p ] ; 5 uses
  %.sroa.0.0.i.i16 = getelementptr inbounds i8, ptr %.sroa.09.0.i.i15, i64 -24 ; 3 uses
  %i.x = load double, ptr %.sroa.0.0.i.i16, align 8, !tbaa !64 ; 2 uses
  %i.y = fcmp olt double %i.v, %i.x
  br i1 %i.y, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = fcmp ogt double %i.v, %i.x
  br i1 %i.z, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_18CoordinateLessThenEEEEvT_T0_.exit.i17, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = getelementptr inbounds i8, ptr %.sroa.09.0.i.i15, i64 -16
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !65
  %i.ac = fcmp olt double %i.w, %i.ab
  br i1 %i.ac, label %bb.p, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_18CoordinateLessThenEEEEvT_T0_.exit.i17

bb.p:                                             ; preds = %bb.o, %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.09.0.i.i15, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i16, i64 24, i1 false), !tbaa.struct !29
  br label %bb.m, !llvm.loop !70

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_18CoordinateLessThenEEEEvT_T0_.exit.i17: ; preds = %bb.o, %bb.n
  store <2 x double> %i.u, ptr %.sroa.09.0.i.i15, align 8, !tbaa !30
  %.sroa.6.0..sroa_idx7.i.i19 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i15, i64 16
  store double %.sroa.6.0.copyload.i.i14, ptr %.sroa.6.0..sroa_idx7.i.i19, align 8, !tbaa !30
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 24 ; 2 uses
  %.not.i20 = icmp eq ptr %i.ad, %1
  br i1 %.not.i20, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_T0_.exit, label %.lr.ph.i12, !llvm.loop !72

bb.q:                                             ; preds = %bb.a
  %i.ae = icmp eq ptr %0, %1
  br i1 %i.ae, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_T0_.exit, label %.preheader.i21

.preheader.i21:                                   ; preds = %bb.q
  %.sroa.0.017.i22 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.not18.i23 = icmp eq ptr %.sroa.0.017.i22, %1
  br i1 %.not18.i23, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_T0_.exit, label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %.preheader.i21
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.r

bb.r:                                             ; preds = %bb.ac, %.lr.ph.i24
  %.sroa.0.020.i25 = phi ptr [ %.sroa.0.017.i22, %.lr.ph.i24 ], [ %.sroa.0.0.i37, %bb.ac ] ; 6 uses
  %.pn19.i26 = phi ptr [ %0, %.lr.ph.i24 ], [ %.sroa.0.020.i25, %bb.ac ] ; 3 uses
  %i.ag = load double, ptr %.sroa.0.020.i25, align 8, !tbaa !64 ; 5 uses
  %i.ah = load double, ptr %0, align 8, !tbaa !64 ; 2 uses
  %i.ai = fcmp olt double %i.ag, %i.ah
  br i1 %i.ai, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = fcmp ogt double %i.ag, %i.ah
  %.sroa.5.0..sroa_idx.i.phi.trans.insert.i27 = getelementptr inbounds nuw i8, ptr %.pn19.i26, i64 32
  %.sroa.5.0.copyload.i.pre.i28 = load double, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i27, align 8, !tbaa !30 ; 3 uses
  br i1 %i.aj, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i29, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ak = load double, ptr %i.af, align 8, !tbaa !65
  %i.al = fcmp olt double %.sroa.5.0.copyload.i.pre.i28, %i.ak
  br i1 %i.al, label %bb.u, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i29

bb.u:                                             ; preds = %bb.t, %bb.r
  %.sroa.064.0.copyload = load <3 x double>, ptr %.sroa.0.020.i25, align 8
  %i.am = ptrtoint ptr %.sroa.0.020.i25 to i64
  %i.an = sub i64 %i.am, %i.b                     ; 3 uses
  %i.ao = icmp sgt i64 %i.an, 24
  br i1 %i.ao, label %bb.v, label %bb.w, !prof !69

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0.017.i22, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.an, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i39

bb.w:                                             ; preds = %bb.u
  %i.ap = icmp eq i64 %i.an, 24
  br i1 %i.ap, label %bb.x, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i39

bb.x:                                             ; preds = %bb.w
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn19.i26, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !29
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i39

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i39: ; preds = %bb.x, %bb.w, %bb.v
  store <3 x double> %.sroa.064.0.copyload, ptr %0, align 8
  br label %bb.ac

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i29: ; preds = %bb.t, %bb.s
  %.sroa.6.0..sroa_idx.i.i30 = getelementptr inbounds nuw i8, ptr %.pn19.i26, i64 40
  %.sroa.6.0.copyload.i.i31 = load double, ptr %.sroa.6.0..sroa_idx.i.i30, align 8, !tbaa !30
  br label %bb.y

bb.y:                                             ; preds = %bb.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i29
  %.sroa.09.0.i.i32 = phi ptr [ %.sroa.0.020.i25, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i29 ], [ %.sroa.0.0.i.i33, %bb.ab ] ; 6 uses
  %.sroa.0.0.i.i33 = getelementptr inbounds i8, ptr %.sroa.09.0.i.i32, i64 -24 ; 3 uses
  %i.ar = load double, ptr %.sroa.0.0.i.i33, align 8, !tbaa !64 ; 2 uses
  %i.as = fcmp olt double %i.ag, %i.ar
  br i1 %i.as, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.at = fcmp ogt double %i.ag, %i.ar
  br i1 %i.at, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_18CoordinateLessThenEEEEvT_T0_.exit.i34, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.au = getelementptr inbounds i8, ptr %.sroa.09.0.i.i32, i64 -16
  %i.av = load double, ptr %i.au, align 8, !tbaa !65
  %i.aw = fcmp olt double %.sroa.5.0.copyload.i.pre.i28, %i.av
  br i1 %i.aw, label %bb.ab, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_18CoordinateLessThenEEEEvT_T0_.exit.i34

bb.ab:                                            ; preds = %bb.aa, %bb.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.09.0.i.i32, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i33, i64 24, i1 false), !tbaa.struct !29
  br label %bb.y, !llvm.loop !70

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_18CoordinateLessThenEEEEvT_T0_.exit.i34: ; preds = %bb.aa, %bb.z
  store double %i.ag, ptr %.sroa.09.0.i.i32, align 8, !tbaa !30
  %.sroa.5.0..sroa_idx5.i.i35 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i32, i64 8
  store double %.sroa.5.0.copyload.i.pre.i28, ptr %.sroa.5.0..sroa_idx5.i.i35, align 8, !tbaa !30
  %.sroa.6.0..sroa_idx7.i.i36 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i32, i64 16
  store double %.sroa.6.0.copyload.i.i31, ptr %.sroa.6.0..sroa_idx7.i.i36, align 8, !tbaa !30
  br label %bb.ac

bb.ac:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_18CoordinateLessThenEEEEvT_T0_.exit.i34, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i39
  %.sroa.0.0.i37 = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i25, i64 24 ; 2 uses
  %.not.i38 = icmp eq ptr %.sroa.0.0.i37, %1
  br i1 %.not.i38, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_T0_.exit, label %bb.r, !llvm.loop !71

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_T0_.exit: ; preds = %bb.ac, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_18CoordinateLessThenEEEEvT_T0_.exit.i17, %.preheader.i21, %bb.q, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 24
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_SE_RT0_.exit
  %.sroa.0.05 = phi ptr [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_SE_RT0_.exit ], [ %1, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -24 ; 4 uses
  %i.f = load <2 x double>, ptr %i.e, align 8, !tbaa !30 ; 3 uses
  %.sroa.510.0..sroa.0.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8
  %.sroa.510.0.copyload.i = load double, ptr %.sroa.510.0..sroa.0.0..sroa_idx.i, align 8, !tbaa !30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !29
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.g, %i.a                       ; 3 uses
  %i.i = sdiv exact i64 %i.h, 24                  ; 3 uses
  %i.j = add nsw i64 %i.i, -1
  %i.k = sdiv i64 %i.j, 2
  %i.l = icmp sgt i64 %i.h, 48
  br i1 %i.l, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i
  %.042.i.i = phi i64 [ %i.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.m = shl i64 %.042.i.i, 1                     ; 2 uses
  %i.n = add i64 %i.m, 2                          ; 3 uses
  %i.o = getelementptr inbounds [24 x i8], ptr %0, i64 %i.n ; 2 uses
  %i.p = or disjoint i64 %i.m, 1                  ; 3 uses
  %i.q = getelementptr inbounds [24 x i8], ptr %0, i64 %i.p ; 2 uses
  %i.r = load double, ptr %i.o, align 8, !tbaa !64 ; 2 uses
  %i.s = load double, ptr %i.q, align 8, !tbaa !64 ; 2 uses
  %i.t = fcmp olt double %i.r, %i.s
  br i1 %i.t, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.u = fcmp ogt double %i.r, %i.s
  br i1 %i.u, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.w = load double, ptr %i.v, align 8, !tbaa !65
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.y = load double, ptr %i.x, align 8, !tbaa !65
  %i.z = fcmp olt double %i.w, %i.y
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %.lr.ph.i.i
  %i.aa = phi i64 [ %i.n, %bb.d ], [ %i.n, %bb.b ], [ %i.p, %bb.c ], [ %i.p, %.lr.ph.i.i ] ; 4 uses
  %i.ab = getelementptr inbounds [24 x i8], ptr %0, i64 %i.aa
  %i.ac = getelementptr inbounds [24 x i8], ptr %0, i64 %.042.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !tbaa.struct !29
  %i.ad = icmp slt i64 %i.aa, %i.k
  br i1 %i.ad, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !73

._crit_edge.i.i:                                  ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i, %.lr.ph
  %.0.lcssa.i.i = phi i64 [ 0, %.lr.ph ], [ %i.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i ] ; 5 uses
  %i.ae = and i64 %i.i, 1
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ag = add nsw i64 %i.i, -2
  %i.ah = ashr exact i64 %i.ag, 1
  %i.ai = icmp eq i64 %.0.lcssa.i.i, %i.ah
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = shl nsw i64 %.0.lcssa.i.i, 1
  %i.ak = or disjoint i64 %i.aj, 1                ; 2 uses
  %i.al = getelementptr inbounds [24 x i8], ptr %0, i64 %i.ak
  %i.am = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !tbaa.struct !29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %.1.i.i = phi i64 [ %i.ak, %bb.f ], [ %.0.lcssa.i.i, %bb.e ], [ %.0.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.an = icmp sgt i64 %.1.i.i, 0
  br i1 %i.an, label %.lr.ph.i.i.i.preheader, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_SE_RT0_.exit

.lr.ph.i.i.i.preheader:                           ; preds = %bb.g
  %i.ao = extractelement <2 x double> %i.f, i64 0 ; 2 uses
  %i.ap = extractelement <2 x double> %i.f, i64 1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.j
  %.019.i.i.i = phi i64 [ %.0920.i.i1112.i, %bb.j ], [ %.1.i.i, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i1112.i = lshr i64 %.0920.in.i.i.i, 1  ; 3 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0920.i.i1112.i ; 3 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !64 ; 2 uses
  %i.as = fcmp olt double %i.ar, %i.ao
  br i1 %i.as, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.at = fcmp ogt double %i.ar, %i.ao
  br i1 %i.at, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_SE_RT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = load double, ptr %i.au, align 8, !tbaa !65
  %i.aw = fcmp olt double %i.av, %i.ap
  br i1 %i.aw, label %bb.j, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_SE_RT0_.exit

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i.i
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.019.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !tbaa.struct !29
  %.not.i = icmp eq i64 %.0920.i.i1112.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_SE_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !74

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_SE_RT0_.exit: ; preds = %bb.h, %bb.i, %bb.j, %bb.g
  %.0.lcssa.i.i.i = phi i64 [ %.1.i.i, %bb.g ], [ 0, %bb.j ], [ %.019.i.i.i, %bb.h ], [ %.019.i.i.i, %bb.i ]
  %i.ay = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i ; 2 uses
  store <2 x double> %i.f, ptr %i.ay, align 8, !tbaa !30
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store double %.sroa.510.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !30
  %i.az = icmp sgt i64 %i.h, 24
  br i1 %i.az, label %.lr.ph, label %._crit_edge, !llvm.loop !75

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_SE_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp slt i64 %i.c, 48
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = udiv exact i64 %i.c, 24                  ; 3 uses
  %i.f = add nsw i64 %i.e, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.e, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
end_hunk_0
begin_hunk_1_@_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_18CoordinateLessThenEEEEvT_SE_SE_SE_T0_:bb.a
  %.sroa.046.0.copyload = load <3 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !29
  store <3 x double> %.sroa.046.0.copyload, ptr %1, align 8
  br label %bb.q

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit: ; preds = %bb.c, %bb.b
  %i.y = load double, ptr %3, align 8, !tbaa !64  ; 4 uses
  %i.z = fcmp olt double %i.a, %i.y
  br i1 %i.z, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit
  %i.aa = fcmp ogt double %i.a, %i.y
  br i1 %i.aa, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit31, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !65
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !65
  %i.af = fcmp olt double %i.ac, %i.ae
  br i1 %i.af, label %bb.m, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit31

bb.m:                                             ; preds = %bb.l, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit
  %.sroa.048.0.copyload = load <3 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !29
  store <3 x double> %.sroa.048.0.copyload, ptr %1, align 8
  br label %bb.q

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit31: ; preds = %bb.l, %bb.k
  %i.ag = fcmp olt double %i.b, %i.y
  br i1 %i.ag, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit31
  %i.ah = fcmp ogt double %i.b, %i.y
  br i1 %i.ah, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit33, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !65
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load double, ptr %i.ak, align 8, !tbaa !65
  %i.am = fcmp olt double %i.aj, %i.al
  br i1 %i.am, label %bb.p, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit33

bb.p:                                             ; preds = %bb.o, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit31
  %.sroa.050.0.copyload = load <3 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !29
  store <3 x double> %.sroa.050.0.copyload, ptr %3, align 8
  br label %bb.q

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit33: ; preds = %bb.o, %bb.n
  %.sroa.052.0.copyload = load <3 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !29
  store <3 x double> %.sroa.052.0.copyload, ptr %2, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit33, %bb.p, %bb.g, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4geos4geom18CoordinateLessThenEEclINS_17__normal_iteratorIPNS3_10CoordinateESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit29, %bb.j
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare void @_ZN4geos11triangulate8quadedge6VertexC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph23

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit
  %i.h = icmp eq i64 %i.ae, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph23, !llvm.loop !77

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge12.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_(ptr %0, ptr %storemerge12.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_(ptr %0, ptr %storemerge12.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.loopexit

.lr.ph23:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1222 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01321 = phi i64 [ %i.ae, %bb.b ], [ %2, %.lr.ph ]
  %i.i = phi i64 [ %i.ag, %bb.b ], [ %i.c, %.lr.ph ]
  %i.j = udiv i64 %i.i, 48
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.j
  %i.l = getelementptr inbounds i8, ptr %storemerge1222, i64 -24
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_(ptr %0, ptr nonnull %i.e, ptr %i.k, ptr nonnull %i.l)
  br label %bb.c

bb.c:                                             ; preds = %bb.j, %.lr.ph23
  %.sroa.012.0.i.i = phi ptr [ %i.e, %.lr.ph23 ], [ %i.ad, %bb.j ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge1222, %.lr.ph23 ], [ %.sroa.0.1.i.i, %bb.j ]
  %i.m = load double, ptr %0, align 8, !tbaa !64  ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %bb.c ], [ %i.u, %bb.g ] ; 11 uses
  %i.n = load double, ptr %.sroa.012.1.i.i, align 8, !tbaa !64 ; 2 uses
  %i.o = fcmp olt double %i.n, %i.m
  br i1 %i.o, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = fcmp ogt double %i.n, %i.m
  br i1 %i.p, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.preheader, label %bb.f

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.preheader: ; preds = %bb.f, %bb.e
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !65
  %i.s = load double, ptr %i.f, align 8, !tbaa !65
  %i.t = fcmp olt double %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.preheader

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 24
  br label %bb.d, !llvm.loop !78

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.backedge, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.preheader
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.0.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.preheader ], [ %.sroa.0.1.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.backedge ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 6 uses
  %i.v = load double, ptr %.sroa.0.1.i.i, align 8, !tbaa !64 ; 2 uses
  %i.w = fcmp olt double %i.m, %i.v
  br i1 %i.w, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.backedge, label %bb.h

bb.h:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i
  %i.x = fcmp ogt double %i.m, %i.v
  br i1 %i.x, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit9.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = load double, ptr %i.f, align 8, !tbaa !65
  %i.z = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16
  %i.aa = load double, ptr %i.z, align 8, !tbaa !65
  %i.ab = fcmp olt double %i.y, %i.aa
  br i1 %i.ab, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.backedge, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit9.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.backedge: ; preds = %bb.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i, !llvm.loop !79

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit9.i.i: ; preds = %bb.i, %bb.h
  %i.ac = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ac, label %bb.j, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit

bb.j:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit9.i.i
  %.sroa.0.i.i.i.i.sroa.0.0.copyload = load <3 x double>, ptr %.sroa.012.1.i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.1.i.i, i64 24, i1 false), !tbaa.struct !29
  store <3 x double> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %.sroa.0.1.i.i, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 24
  br label %bb.c, !llvm.loop !80

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit9.i.i
  %i.ae = add nsw i64 %.01321, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge1222, i64 noundef %i.ae)
  %i.af = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.ag = sub i64 %i.af, %i.a                     ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 384
  br i1 %i.ah, label %bb.b, label %.loopexit, !llvm.loop !77

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph.i, label %bb.n

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.07.018.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %.lr.ph.i
  %indvar.i = phi i64 [ 0, %.lr.ph.i ], [ %indvar.next.i, %bb.i ] ; 2 uses
  %.sroa.07.021.i.idx = phi i64 [ 24, %.lr.ph.i ], [ %.sroa.07.021.i.add, %bb.i ] ; 2 uses
  %.pn20.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.07.021.i.ptr, %bb.i ] ; 2 uses
  %.sroa.07.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.07.021.i.idx ; 4 uses
  %.neg.i = mul nuw nsw i64 %indvar.i, 24
  %i.f = add nuw nsw i64 %.neg.i, 24
  %i.g = load double, ptr %.sroa.07.021.i.ptr, align 8, !tbaa !64 ; 5 uses
  %i.h = load double, ptr %0, align 8, !tbaa !64  ; 2 uses
  %i.i = fcmp olt double %i.g, %i.h
  br i1 %i.i, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = fcmp ogt double %i.g, %i.h
  %.sroa.6.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 32
  %.sroa.6.0.copyload.i.pre.i = load double, ptr %.sroa.6.0..sroa_idx.i.phi.trans.insert.i, align 8, !tbaa !30 ; 3 uses
  br i1 %i.j, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load double, ptr %i.e, align 8, !tbaa !65
  %i.l = fcmp olt double %.sroa.6.0.copyload.i.pre.i, %i.k
  br i1 %i.l, label %.loopexit.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i

.loopexit.i:                                      ; preds = %bb.d, %bb.b
  %.sroa.0.i.sroa.0.0.copyload = load <3 x double>, ptr %.sroa.07.021.i.ptr, align 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.07.018.i.ptr, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.f, i1 false)
  store <3 x double> %.sroa.0.i.sroa.0.0.copyload, ptr %0, align 8
  br label %bb.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 40
  %.sroa.7.0.copyload.i.i = load double, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !tbaa !30
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i
  %.sroa.09.0.i.i = phi ptr [ %.sroa.07.021.i.ptr, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i ], [ %.sroa.0.0.i.i, %bb.h ] ; 6 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.i.i, i64 -24 ; 3 uses
  %i.m = load double, ptr %.sroa.0.0.i.i, align 8, !tbaa !64 ; 2 uses
  %i.n = fcmp olt double %i.g, %i.m
  br i1 %i.n, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = fcmp ogt double %i.g, %i.m
  br i1 %i.o, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds i8, ptr %.sroa.09.0.i.i, i64 -16
  %i.q = load double, ptr %i.p, align 8, !tbaa !65
  %i.r = fcmp olt double %.sroa.6.0.copyload.i.pre.i, %i.q
  br i1 %i.r, label %bb.h, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

bb.h:                                             ; preds = %bb.g, %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.09.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i, i64 24, i1 false), !tbaa.struct !29
  br label %bb.e, !llvm.loop !81

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %bb.g, %bb.f
  store double %i.g, ptr %.sroa.09.0.i.i, align 8, !tbaa !30
  %.sroa.6.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 8
  store double %.sroa.6.0.copyload.i.pre.i, ptr %.sroa.6.0..sroa_idx5.i.i, align 8, !tbaa !30
  %.sroa.7.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 16
  store double %.sroa.7.0.copyload.i.i, ptr %.sroa.7.0..sroa_idx7.i.i, align 8, !tbaa !30
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %.loopexit.i
  %.sroa.07.021.i.add = add nuw nsw i64 %.sroa.07.021.i.idx, 24 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.07.021.i.add, 384
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, label %bb.b, !llvm.loop !82

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit: ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %.not4.i = icmp eq ptr %i.s, %1
  br i1 %.not4.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i11
  %.sroa.0.05.i = phi ptr [ %i.ac, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i11 ], [ %i.s, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit ] ; 4 uses
  %i.t = load <2 x double>, ptr %.sroa.0.05.i, align 8, !tbaa !30 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i7 = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 16
  %.sroa.7.0.copyload.i.i8 = load double, ptr %.sroa.7.0..sroa_idx.i.i7, align 8, !tbaa !30
  %i.u = extractelement <2 x double> %i.t, i64 0  ; 2 uses
  %i.v = extractelement <2 x double> %i.t, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.lr.ph.i6
  %.sroa.09.0.i.i9 = phi ptr [ %.sroa.0.05.i, %.lr.ph.i6 ], [ %.sroa.0.0.i.i10, %bb.m ] ; 5 uses
  %.sroa.0.0.i.i10 = getelementptr inbounds i8, ptr %.sroa.09.0.i.i9, i64 -24 ; 3 uses
  %i.w = load double, ptr %.sroa.0.0.i.i10, align 8, !tbaa !64 ; 2 uses
  %i.x = fcmp olt double %i.u, %i.w
  br i1 %i.x, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = fcmp ogt double %i.u, %i.w
  br i1 %i.y, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i11, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds i8, ptr %.sroa.09.0.i.i9, i64 -16
  %i.aa = load double, ptr %i.z, align 8, !tbaa !65
  %i.ab = fcmp olt double %i.v, %i.aa
  br i1 %i.ab, label %bb.m, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i11

bb.m:                                             ; preds = %bb.l, %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.09.0.i.i9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i10, i64 24, i1 false), !tbaa.struct !29
  br label %bb.j, !llvm.loop !81

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i11: ; preds = %bb.l, %bb.k
  store <2 x double> %i.t, ptr %.sroa.09.0.i.i9, align 8, !tbaa !30
  %.sroa.7.0..sroa_idx7.i.i13 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i9, i64 16
  store double %.sroa.7.0.copyload.i.i8, ptr %.sroa.7.0..sroa_idx7.i.i13, align 8, !tbaa !30
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 24 ; 2 uses
  %.not.i14 = icmp eq ptr %i.ac, %1
  br i1 %.not.i14, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, label %.lr.ph.i6, !llvm.loop !83

bb.n:                                             ; preds = %bb.a
  %i.ad = icmp eq ptr %0, %1
  br i1 %i.ad, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, label %.preheader.i16

.preheader.i16:                                   ; preds = %bb.n
  %.sroa.07.018.i17 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.not19.i18 = icmp eq ptr %.sroa.07.018.i17, %1
  br i1 %.not19.i18, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %.preheader.i16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.o

bb.o:                                             ; preds = %bb.w, %.lr.ph.i19
  %indvar.i20 = phi i64 [ 0, %.lr.ph.i19 ], [ %indvar.next.i39, %bb.w ] ; 2 uses
  %.sroa.07.021.i21 = phi ptr [ %.sroa.07.018.i17, %.lr.ph.i19 ], [ %.sroa.07.0.i37, %bb.w ] ; 6 uses
  %.pn20.i22 = phi ptr [ %0, %.lr.ph.i19 ], [ %.sroa.07.021.i21, %bb.w ] ; 2 uses
  %.neg.i24 = mul nuw i64 %indvar.i20, 24
  %i.af = add nuw i64 %.neg.i24, 24
  %i.ag = load double, ptr %.sroa.07.021.i21, align 8, !tbaa !64 ; 5 uses
  %i.ah = load double, ptr %0, align 8, !tbaa !64 ; 2 uses
  %i.ai = fcmp olt double %i.ag, %i.ah
  br i1 %i.ai, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = fcmp ogt double %i.ag, %i.ah
  %.sroa.6.0..sroa_idx.i.phi.trans.insert.i27 = getelementptr inbounds nuw i8, ptr %.pn20.i22, i64 32
  %.sroa.6.0.copyload.i.pre.i28 = load double, ptr %.sroa.6.0..sroa_idx.i.phi.trans.insert.i27, align 8, !tbaa !30 ; 3 uses
  br i1 %i.aj, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i29, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = load double, ptr %i.ae, align 8, !tbaa !65
  %i.al = fcmp olt double %.sroa.6.0.copyload.i.pre.i28, %i.ak
  br i1 %i.al, label %bb.r, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i29

bb.r:                                             ; preds = %bb.q, %bb.o
  %.sroa.0.i15.sroa.0.0.copyload = load <3 x double>, ptr %.sroa.07.021.i21, align 8
  %i.am = ptrtoint ptr %.sroa.07.021.i21 to i64
  %i.an = sub i64 %i.am, %i.b
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %.lr.ph.preheader.i.i.i.i.i.i41, label %.loopexit.i40

.lr.ph.preheader.i.i.i.i.i.i41:                   ; preds = %bb.r
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.07.018.i17, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.af, i1 false)
  br label %.loopexit.i40

.loopexit.i40:                                    ; preds = %.lr.ph.preheader.i.i.i.i.i.i41, %bb.r
  store <3 x double> %.sroa.0.i15.sroa.0.0.copyload, ptr %0, align 8
  br label %bb.w

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i29: ; preds = %bb.q, %bb.p
  %.sroa.7.0..sroa_idx.i.i30 = getelementptr inbounds nuw i8, ptr %.pn20.i22, i64 40
  %.sroa.7.0.copyload.i.i31 = load double, ptr %.sroa.7.0..sroa_idx.i.i30, align 8, !tbaa !30
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i29
  %.sroa.09.0.i.i32 = phi ptr [ %.sroa.07.021.i21, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i29 ], [ %.sroa.0.0.i.i33, %bb.v ] ; 6 uses
  %.sroa.0.0.i.i33 = getelementptr inbounds i8, ptr %.sroa.09.0.i.i32, i64 -24 ; 3 uses
  %i.ap = load double, ptr %.sroa.0.0.i.i33, align 8, !tbaa !64 ; 2 uses
  %i.aq = fcmp olt double %i.ag, %i.ap
  br i1 %i.aq, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = fcmp ogt double %i.ag, %i.ap
  br i1 %i.ar, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i34, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = getelementptr inbounds i8, ptr %.sroa.09.0.i.i32, i64 -16
  %i.at = load double, ptr %i.as, align 8, !tbaa !65
  %i.au = fcmp olt double %.sroa.6.0.copyload.i.pre.i28, %i.at
  br i1 %i.au, label %bb.v, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i34

bb.v:                                             ; preds = %bb.u, %bb.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.09.0.i.i32, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i33, i64 24, i1 false), !tbaa.struct !29
  br label %bb.s, !llvm.loop !81

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i34: ; preds = %bb.u, %bb.t
  store double %i.ag, ptr %.sroa.09.0.i.i32, align 8, !tbaa !30
  %.sroa.6.0..sroa_idx5.i.i35 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i32, i64 8
  store double %.sroa.6.0.copyload.i.pre.i28, ptr %.sroa.6.0..sroa_idx5.i.i35, align 8, !tbaa !30
  %.sroa.7.0..sroa_idx7.i.i36 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i32, i64 16
  store double %.sroa.7.0.copyload.i.i31, ptr %.sroa.7.0..sroa_idx7.i.i36, align 8, !tbaa !30
  br label %bb.w

bb.w:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i34, %.loopexit.i40
  %.sroa.07.0.i37 = getelementptr inbounds nuw i8, ptr %.sroa.07.021.i21, i64 24 ; 2 uses
  %.not.i38 = icmp eq ptr %.sroa.07.0.i37, %1
  %indvar.next.i39 = add nuw nsw i64 %indvar.i20, 1
  br i1 %.not.i38, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, label %bb.o, !llvm.loop !82

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit: ; preds = %bb.w, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i11, %.preheader.i16, %bb.n, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 24
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit
  %.sroa.0.05 = phi ptr [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit ], [ %1, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -24 ; 4 uses
  %i.f = load <2 x double>, ptr %i.e, align 8, !tbaa !30 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8
  %.sroa.6.0.copyload.i = load double, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !29
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.g, %i.a                       ; 3 uses
  %i.i = sdiv exact i64 %i.h, 24                  ; 3 uses
  %i.j = add nsw i64 %i.i, -1
  %i.k = sdiv i64 %i.j, 2
  %i.l = icmp sgt i64 %i.h, 48
  br i1 %i.l, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i
  %.043.i.i = phi i64 [ %i.aa, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.m = shl i64 %.043.i.i, 1                     ; 2 uses
  %i.n = add i64 %i.m, 2                          ; 3 uses
  %i.o = getelementptr inbounds [24 x i8], ptr %0, i64 %i.n ; 2 uses
  %i.p = or disjoint i64 %i.m, 1                  ; 3 uses
  %i.q = getelementptr inbounds [24 x i8], ptr %0, i64 %i.p ; 2 uses
  %i.r = load double, ptr %i.o, align 8, !tbaa !64 ; 2 uses
  %i.s = load double, ptr %i.q, align 8, !tbaa !64 ; 2 uses
  %i.t = fcmp olt double %i.r, %i.s
  br i1 %i.t, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.u = fcmp ogt double %i.r, %i.s
  br i1 %i.u, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.w = load double, ptr %i.v, align 8, !tbaa !65
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.y = load double, ptr %i.x, align 8, !tbaa !65
  %i.z = fcmp olt double %i.w, %i.y
  br i1 %i.z, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %.lr.ph.i.i
  %i.aa = phi i64 [ %i.n, %bb.d ], [ %i.n, %bb.b ], [ %i.p, %bb.c ], [ %i.p, %.lr.ph.i.i ] ; 4 uses
  %i.ab = getelementptr inbounds [24 x i8], ptr %0, i64 %i.aa
  %i.ac = getelementptr inbounds [24 x i8], ptr %0, i64 %.043.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !tbaa.struct !29
  %i.ad = icmp slt i64 %i.aa, %i.k
  br i1 %i.ad, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !84

._crit_edge.i.i:                                  ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i, %.lr.ph
  %.0.lcssa.i.i = phi i64 [ 0, %.lr.ph ], [ %i.aa, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i ] ; 5 uses
  %i.ae = and i64 %i.i, 1
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ag = add nsw i64 %i.i, -2
  %i.ah = ashr exact i64 %i.ag, 1
  %i.ai = icmp eq i64 %.0.lcssa.i.i, %i.ah
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = shl nsw i64 %.0.lcssa.i.i, 1
  %i.ak = or disjoint i64 %i.aj, 1                ; 2 uses
  %i.al = getelementptr inbounds [24 x i8], ptr %0, i64 %i.ak
  %i.am = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !tbaa.struct !29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %.1.i.i = phi i64 [ %i.ak, %bb.f ], [ %.0.lcssa.i.i, %bb.e ], [ %.0.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.an = icmp sgt i64 %.1.i.i, 0
  br i1 %i.an, label %.lr.ph.i.i.i.preheader, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit

.lr.ph.i.i.i.preheader:                           ; preds = %bb.g
  %i.ao = extractelement <2 x double> %i.f, i64 0 ; 2 uses
  %i.ap = extractelement <2 x double> %i.f, i64 1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.j
  %.019.i.i.i = phi i64 [ %.0920.i.i89.i, %bb.j ], [ %.1.i.i, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i89.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0920.i.i89.i ; 3 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !64 ; 2 uses
  %i.as = fcmp olt double %i.ar, %i.ao
  br i1 %i.as, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.at = fcmp ogt double %i.ar, %i.ao
  br i1 %i.at, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = load double, ptr %i.au, align 8, !tbaa !65
  %i.aw = fcmp olt double %i.av, %i.ap
  br i1 %i.aw, label %bb.j, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i.i
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.019.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !tbaa.struct !29
  %.not.i = icmp eq i64 %.0920.i.i89.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !85

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit: ; preds = %bb.h, %bb.i, %bb.j, %bb.g
  %.0.lcssa.i.i.i = phi i64 [ %.1.i.i, %bb.g ], [ 0, %bb.j ], [ %.019.i.i.i, %bb.h ], [ %.019.i.i.i, %bb.i ]
  %i.ay = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i ; 2 uses
  store <2 x double> %i.f, ptr %i.ay, align 8, !tbaa !30
  %.sroa.4.0..sroa_idx29.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store double %.sroa.6.0.copyload.i, ptr %.sroa.4.0..sroa_idx29.i.i, align 8, !tbaa !30
  %i.az = icmp sgt i64 %i.h, 24
  br i1 %i.az, label %.lr.ph, label %._crit_edge, !llvm.loop !86

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4geos11triangulate8quadedge6VertexESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp slt i64 %i.c, 48
  br i1 %i.d, label %.loopexit18, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = udiv exact i64 %i.c, 24                  ; 3 uses
  %i.f = add nsw i64 %i.e, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.e, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.e, 1
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.l
  br label %bb.c

end_hunk_1
