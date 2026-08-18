inline.NumInlined: 2075
inline.NumDeleted: 718
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_SD_T0_T1_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !tbaa.struct !360
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !tbaa.struct !360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !360
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.cs = icmp ugt i64 %i.cl, %i.co
  br i1 %i.cs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !tbaa.struct !360
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.ci, i64 40, i1 false), !tbaa.struct !360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ci, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !360
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !tbaa.struct !360
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.ch, i64 40, i1 false), !tbaa.struct !360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ch, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !360
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_SD_SD_SD_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_SD_SD_SD_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_SD_SD_SD_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_SD_SD_SD_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_SD_SD_SD_T0_.exit.i.preheader, %bb.v
  %.sroa.010.0.i.i = phi ptr [ %i.cx, %bb.v ], [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_SD_SD_SD_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2548, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_SD_SD_SD_T0_.exit.i.preheader ]
  %i.ct = load i64, ptr %i.g, align 8, !tbaa !303 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_SD_SD_SD_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_SD_SD_SD_T0_.exit.i ], [ %i.cx, %bb.t ] ; 9 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !303
  %i.cw = icmp ugt i64 %i.cv, %i.ct
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 40 ; 2 uses
  br i1 %i.cw, label %bb.t, label %.preheader.i.i, !llvm.loop !516

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -40 ; 5 uses
  %i.cy = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !303
  %i.da = icmp ugt i64 %i.ct, %i.cz
  br i1 %i.da, label %.preheader.i.i, label %bb.u, !llvm.loop !517

bb.u:                                             ; preds = %.preheader.i.i
  %i.db = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.db, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_26vivify_inversesize_smallerEEEET_SD_SD_T0_.exit

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.010.1.i.i, i64 40, i1 false), !tbaa.struct !360
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.1.i.i, i64 40, i1 false), !tbaa.struct !360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !360
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_SD_SD_SD_T0_.exit.i, !llvm.loop !518

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_26vivify_inversesize_smallerEEEET_SD_SD_T0_.exit: ; preds = %bb.u
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_SD_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2548, i64 noundef %i.cf)
  %i.dc = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.dd = sub i64 %i.dc, %i.a                     ; 3 uses
  %i.de = icmp sgt i64 %i.dd, 640
  br i1 %i.de, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_SD_SD_T0_.exit, !llvm.loop !511

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_SD_SD_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_26vivify_inversesize_smallerEEEET_SD_SD_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_SD_SD_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_SD_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.5.i.i24 = alloca { [2 x i64], ptr }, align 8 ; 4 uses
  %2 = alloca %"struct.CaDiCaL::vivify_ref", align 8 ; 4 uses
  %.sroa.5.i.i12 = alloca { [2 x i64], ptr }, align 8 ; 4 uses
  %.sroa.5.i.i = alloca { [2 x i64], ptr }, align 8 ; 4 uses
  %3 = alloca %"struct.CaDiCaL::vivify_ref", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 640
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %scevgep = getelementptr i8, ptr %0, i64 40
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.019.i.idx = phi i64 [ 40, %.lr.ph.i ], [ %.sroa.0.019.i.add, %bb.g ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.019.i.ptr, %bb.g ] ; 4 uses
  %.sroa.0.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.019.i.idx ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 48
  %i.g = load i64, ptr %i.f, align 8, !tbaa !303  ; 4 uses
  %i.h = load i64, ptr %i.e, align 8, !tbaa !303
  %i.i = icmp ugt i64 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.019.i.ptr, i64 40, i1 false), !tbaa.struct !360
  %i.j = icmp samesign ugt i64 %.sroa.0.019.i.idx, 40
  br i1 %i.j, label %bb.d, label %bb.e, !prof !315

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !tbaa.struct !360
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !360
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %.sroa.03.0.copyload.i.i = load i64, ptr %.sroa.0.019.i.ptr, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i, i64 24, i1 false), !tbaa.struct !519
  %i.l = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !303
  %i.n = icmp ugt i64 %i.g, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.08.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.019.i.ptr, %bb.f ] ; 3 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.08.011.i.i, i64 -40 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.08.011.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i.i, i64 40, i1 false), !tbaa.struct !360
  %i.o = getelementptr inbounds i8, ptr %.sroa.08.011.i.i, i64 -72
  %i.p = load i64, ptr %i.o, align 8, !tbaa !303
  %i.q = icmp ugt i64 %i.g, %i.p
  br i1 %i.q, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_T0_.exit.i, !llvm.loop !520

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.08.0.lcssa.i.i = phi ptr [ %.sroa.0.019.i.ptr, %bb.f ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ] ; 3 uses
  store i64 %.sroa.03.0.copyload.i.i, ptr %.sroa.08.0.lcssa.i.i, align 8
  %.sroa.4.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i, i64 8
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx5.i.i, align 8, !tbaa !199
  %.sroa.5.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx7.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i, i64 24, i1 false), !tbaa.struct !519
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i
  %.sroa.0.019.i.add = add nuw nsw i64 %.sroa.0.019.i.idx, 40 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.019.i.add, 640
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_SD_T0_.exit, label %bb.b, !llvm.loop !521

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_SD_T0_.exit: ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %.not6.i = icmp eq ptr %i.r, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_SD_T0_.exit, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_SD_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_T0_.exit.i16
  %.sroa.0.07.i = phi ptr [ %i.z, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_T0_.exit.i16 ], [ %i.r, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_SD_T0_.exit ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i12)
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !199 ; 2 uses
  %i.s = load <2 x i64>, ptr %.sroa.0.07.i, align 8
  %.sroa.5.0..sroa_idx.i.i15 = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i12, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i15, i64 24, i1 false), !tbaa.struct !519
  %i.t = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -32
  %i.u = load i64, ptr %i.t, align 8, !tbaa !303
  %i.v = icmp ugt i64 %.sroa.4.0.copyload.i.i, %i.u
  br i1 %i.v, label %.lr.ph.i.i21, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_T0_.exit.i16

.lr.ph.i.i21:                                     ; preds = %.lr.ph.i13, %.lr.ph.i.i21
  %.sroa.08.011.i.i22 = phi ptr [ %.sroa.0.0.i.i23, %.lr.ph.i.i21 ], [ %.sroa.0.07.i, %.lr.ph.i13 ] ; 3 uses
  %.sroa.0.0.i.i23 = getelementptr inbounds i8, ptr %.sroa.08.011.i.i22, i64 -40 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.08.011.i.i22, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i.i23, i64 40, i1 false), !tbaa.struct !360
  %i.w = getelementptr inbounds i8, ptr %.sroa.08.011.i.i22, i64 -72
  %i.x = load i64, ptr %i.w, align 8, !tbaa !303
  %i.y = icmp ugt i64 %.sroa.4.0.copyload.i.i, %i.x
  br i1 %i.y, label %.lr.ph.i.i21, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_T0_.exit.i16, !llvm.loop !520

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_T0_.exit.i16: ; preds = %.lr.ph.i.i21, %.lr.ph.i13
  %.sroa.08.0.lcssa.i.i17 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i13 ], [ %.sroa.0.0.i.i23, %.lr.ph.i.i21 ] ; 2 uses
  store <2 x i64> %i.s, ptr %.sroa.08.0.lcssa.i.i17, align 8
  %.sroa.5.0..sroa_idx7.i.i19 = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i17, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx7.i.i19, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i12, i64 24, i1 false), !tbaa.struct !519
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i12)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 40 ; 2 uses
  %.not.i20 = icmp eq ptr %i.z, %1
  br i1 %.not.i20, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_SD_T0_.exit, label %.lr.ph.i13, !llvm.loop !522

bb.h:                                             ; preds = %bb.a
  %i.aa = icmp eq ptr %0, %1
  br i1 %i.aa, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_SD_T0_.exit, label %.preheader.i25

.preheader.i25:                                   ; preds = %bb.h
  %.sroa.0.016.i26 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.not17.i27 = icmp eq ptr %.sroa.0.016.i26, %1
  br i1 %.not17.i27, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_SD_T0_.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.preheader.i25
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i28
  %.sroa.0.019.i29 = phi ptr [ %.sroa.0.016.i26, %.lr.ph.i28 ], [ %.sroa.0.0.i37, %bb.o ] ; 7 uses
  %.pn18.i30 = phi ptr [ %0, %.lr.ph.i28 ], [ %.sroa.0.019.i29, %bb.o ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.pn18.i30, i64 48
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !303 ; 4 uses
  %i.ae = load i64, ptr %i.ab, align 8, !tbaa !303
  %i.af = icmp ugt i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.019.i29, i64 40, i1 false), !tbaa.struct !360
  %i.ag = ptrtoint ptr %.sroa.0.019.i29 to i64
  %i.ah = sub i64 %i.ag, %i.b                     ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 40
  br i1 %i.ai, label %bb.k, label %bb.l, !prof !315

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0.016.i26, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.ah, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i42

bb.l:                                             ; preds = %bb.j
  %i.aj = icmp eq i64 %i.ah, 40
  br i1 %i.aj, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i42

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %.pn18.i30, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !tbaa.struct !360
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i42

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i42: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !360
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i24)
  %.sroa.03.0.copyload.i.i31 = load i64, ptr %.sroa.0.019.i29, align 8
  %.sroa.5.0..sroa_idx.i.i32 = getelementptr inbounds nuw i8, ptr %.pn18.i30, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i24, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i32, i64 24, i1 false), !tbaa.struct !519
  %i.al = getelementptr inbounds nuw i8, ptr %.pn18.i30, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !303
  %i.an = icmp ugt i64 %i.ad, %i.am
  br i1 %i.an, label %.lr.ph.i.i39, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_T0_.exit.i33

.lr.ph.i.i39:                                     ; preds = %bb.n, %.lr.ph.i.i39
  %.sroa.08.011.i.i40 = phi ptr [ %.sroa.0.0.i.i41, %.lr.ph.i.i39 ], [ %.sroa.0.019.i29, %bb.n ] ; 3 uses
  %.sroa.0.0.i.i41 = getelementptr inbounds i8, ptr %.sroa.08.011.i.i40, i64 -40 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.08.011.i.i40, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i.i41, i64 40, i1 false), !tbaa.struct !360
  %i.ao = getelementptr inbounds i8, ptr %.sroa.08.011.i.i40, i64 -72
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !303
  %i.aq = icmp ugt i64 %i.ad, %i.ap
  br i1 %i.aq, label %.lr.ph.i.i39, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_T0_.exit.i33, !llvm.loop !520

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_T0_.exit.i33: ; preds = %.lr.ph.i.i39, %bb.n
  %.sroa.08.0.lcssa.i.i34 = phi ptr [ %.sroa.0.019.i29, %bb.n ], [ %.sroa.0.0.i.i41, %.lr.ph.i.i39 ] ; 3 uses
  store i64 %.sroa.03.0.copyload.i.i31, ptr %.sroa.08.0.lcssa.i.i34, align 8
  %.sroa.4.0..sroa_idx5.i.i35 = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i34, i64 8
  store i64 %i.ad, ptr %.sroa.4.0..sroa_idx5.i.i35, align 8, !tbaa !199
  %.sroa.5.0..sroa_idx7.i.i36 = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i34, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx7.i.i36, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i24, i64 24, i1 false), !tbaa.struct !519
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i24)
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_T0_.exit.i33, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i42
  %.sroa.0.0.i37 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i29, i64 40 ; 2 uses
  %.not.i38 = icmp eq ptr %.sroa.0.0.i37, %1
  br i1 %.not.i38, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_SD_T0_.exit, label %bb.i, !llvm.loop !521

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_SD_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_T0_.exit.i16, %.preheader.i25, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_26vivify_inversesize_smallerEEEEvT_SD_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEEvT_SD_T0_T1_(ptr %0, ptr %1, i64 noundef %2, i32 %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.CaDiCaL::vivify_ref", align 8 ; 4 uses
  %5 = alloca %"struct.CaDiCaL::vivify_ref", align 8 ; 5 uses
  %6 = alloca %"struct.CaDiCaL::vivify_ref", align 8 ; 4 uses
  %7 = alloca %"struct.CaDiCaL::vivify_ref", align 8 ; 4 uses
  %8 = alloca %"struct.CaDiCaL::vivify_ref", align 8 ; 4 uses
  %9 = alloca %"struct.CaDiCaL::vivify_ref", align 8 ; 4 uses
  %10 = alloca %"struct.CaDiCaL::vivify_ref", align 8 ; 4 uses
  %11 = alloca %"struct.CaDiCaL::vivify_ref", align 8 ; 4 uses
  %12 = alloca %"struct.CaDiCaL::vivify_ref", align 8 ; 4 uses
  %13 = alloca %"struct.CaDiCaL::vivify_ref", align 8 ; 6 uses
  %14 = alloca %"struct.CaDiCaL::vivify_ref", align 8 ; 6 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 640
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEEvT_SD_SD_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = sext i32 %3 to i64                       ; 14 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.g
  %i.k = icmp eq i64 %2, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph49

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEET_SD_SD_T0_.exit
  %i.l = icmp eq i64 %i.cs, 0
  br i1 %i.l, label %._crit_edge, label %.lr.ph49, !llvm.loop !523

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa45 = phi i64 [ %i.c, %.lr.ph ], [ %i.du, %bb.b ]
  %storemerge25.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.m = udiv exact i64 %.lcssa45, 40             ; 3 uses
  %i.n = add nsw i64 %i.m, -2                     ; 2 uses
  %i.o = lshr i64 %i.n, 1                         ; 3 uses
  %i.p = add nsw i64 %i.m, -1
  %i.q = lshr i64 %i.p, 1                         ; 2 uses
  %i.r = and i64 %i.m, 1
  %i.s = icmp eq i64 %i.r, 0
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = or disjoint i64 %i.n, 1                  ; 2 uses
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.o
  %i.x = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.g
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEEvT_T0_SE_T1_T2_.exit.i.i, %._crit_edge
  %.08.i.i = phi i64 [ %i.o, %._crit_edge ], [ %i.ba, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEEvT_T0_SE_T1_T2_.exit.i.i ] ; 8 uses
  %i.y = getelementptr inbounds [40 x i8], ptr %0, i64 %.08.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(40) %i.y, i64 40, i1 false)
  %i.z = icmp slt i64 %.08.i.i, %i.q
  br i1 %i.z, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.036.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.08.i.i, %bb.c ] ; 2 uses
  %i.aa = shl i64 %.036.i.i.i, 1                  ; 2 uses
  %i.ab = add i64 %i.aa, 2                        ; 2 uses
  %i.ac = getelementptr inbounds [40 x i8], ptr %0, i64 %i.ab
  %i.ad = or disjoint i64 %i.aa, 1                ; 2 uses
  %i.ae = getelementptr inbounds [40 x i8], ptr %0, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.g
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !199
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.g
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !199
  %i.al = icmp ult i64 %i.ah, %i.ak
  %spec.select.i.i.i = select i1 %i.al, i64 %i.ad, i64 %i.ab ; 4 uses
  %i.am = getelementptr inbounds [40 x i8], ptr %0, i64 %spec.select.i.i.i
  %i.an = getelementptr inbounds [40 x i8], ptr %0, i64 %.036.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.an, ptr noundef nonnull align 8 dereferenceable(40) %i.am, i64 40, i1 false), !tbaa.struct !360
  %i.ao = icmp slt i64 %spec.select.i.i.i, %i.q
  br i1 %i.ao, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !524

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.08.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ap = icmp eq i64 %.0.lcssa.i.i.i, %i.o
  %or.cond.i.i = select i1 %i.s, i1 %i.ap, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.w, ptr noundef nonnull align 8 dereferenceable(40) %i.v, i64 40, i1 false), !tbaa.struct !360
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.u, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false)
  %i.aq = icmp sgt i64 %.1.i.i.i, %.08.i.i
  br i1 %i.aq, label %.lr.ph.i.i.i.i17, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEEvT_T0_SE_T1_T2_.exit.i.i

.lr.ph.i.i.i.i17:                                 ; preds = %bb.e
  %i.ar = load i64, ptr %i.x, align 8, !tbaa !199
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i17
  %.018.i.i.i.i = phi i64 [ %.1.i.i.i, %.lr.ph.i.i.i.i17 ], [ %.0919.i.i.i.i, %bb.g ] ; 3 uses
  %.0919.in.i.i.i.i = add nsw i64 %.018.i.i.i.i, -1
  %.0919.i.i.i.i = sdiv i64 %.0919.in.i.i.i.i, 2  ; 4 uses
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.0919.i.i.i.i ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.g
  %i.av = load i64, ptr %i.au, align 8, !tbaa !199
  %i.aw = icmp ult i64 %i.av, %i.ar
  br i1 %i.aw, label %bb.g, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEEvT_T0_SE_T1_T2_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.018.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ax, ptr noundef nonnull align 8 dereferenceable(40) %i.as, i64 40, i1 false), !tbaa.struct !360
  %i.ay = icmp sgt i64 %.0919.i.i.i.i, %.08.i.i
  br i1 %i.ay, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEEvT_T0_SE_T1_T2_.exit.i.i, !llvm.loop !525

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEEvT_T0_SE_T1_T2_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i16 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.0919.i.i.i.i, %bb.g ], [ %.018.i.i.i.i, %bb.f ]
  %i.az = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.not.i.i = icmp eq i64 %.08.i.i, 0
  %i.ba = add nsw i64 %.08.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !526

.lr.ph.i.i:                                       ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEEvT_T0_SE_T1_T2_.exit.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.g
  br label %bb.h

bb.h:                                             ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEEvT_SD_SD_RT0_.exit.i.i, %.lr.ph.i.i
  %.sroa.0.05.i.i = phi ptr [ %storemerge25.lcssa, %.lr.ph.i.i ], [ %i.bd, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEEvT_SD_SD_RT0_.exit.i.i ]
  %i.bd = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 8 dereferenceable(40) %i.bd, i64 40, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bd, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !tbaa.struct !360
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.a                     ; 3 uses
  %i.bg = sdiv exact i64 %i.bf, 40                ; 3 uses
  %i.bh = add nsw i64 %i.bg, -1
  %i.bi = sdiv i64 %i.bh, 2
  %i.bj = icmp sgt i64 %i.bf, 80
  br i1 %i.bj, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEEvT_SD_T0_T1_:bb.a

bb.t:                                             ; preds = %bb.r
  %i.dh = icmp ult i64 %i.cz, %i.dd
  br i1 %i.dh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !tbaa.struct !360
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.cv, i64 40, i1 false), !tbaa.struct !360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cv, ptr noundef nonnull align 8 dereferenceable(40) %8, i64 40, i1 false), !tbaa.struct !360
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !tbaa.struct !360
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.cu, i64 40, i1 false), !tbaa.struct !360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cu, ptr noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false), !tbaa.struct !360
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEEvT_SD_SD_SD_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEEvT_SD_SD_SD_T0_.exit.i.preheader: ; preds = %bb.v, %bb.u, %bb.s, %bb.q, %bb.p, %bb.n
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEEvT_SD_SD_SD_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEEvT_SD_SD_SD_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEEvT_SD_SD_SD_T0_.exit.i.preheader, %bb.y
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.y ], [ %storemerge2548, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEEvT_SD_SD_SD_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.dn, %bb.y ], [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEEvT_SD_SD_SD_T0_.exit.i.preheader ]
  %i.di = load i64, ptr %i.j, align 8, !tbaa !199 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEEvT_SD_SD_SD_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEEvT_SD_SD_SD_T0_.exit.i ], [ %i.dn, %bb.w ] ; 9 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 16
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.g
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !199
  %i.dm = icmp ult i64 %i.dl, %i.di
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 40 ; 2 uses
  br i1 %i.dm, label %bb.w, label %.preheader.i.i, !llvm.loop !528

.preheader.i.i:                                   ; preds = %bb.w, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.w ] ; 2 uses
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -40 ; 5 uses
  %i.do = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -24
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.g
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !199
  %i.dr = icmp ult i64 %i.di, %i.dq
  br i1 %i.dr, label %.preheader.i.i, label %bb.x, !llvm.loop !529

bb.x:                                             ; preds = %.preheader.i.i
  %i.ds = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.ds, label %bb.y, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEET_SD_SD_T0_.exit

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.012.1.i.i, i64 40, i1 false), !tbaa.struct !360
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.09.1.i.i, i64 40, i1 false), !tbaa.struct !360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.09.1.i.i, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !360
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEEvT_SD_SD_SD_T0_.exit.i, !llvm.loop !530

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEET_SD_SD_T0_.exit: ; preds = %bb.x
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEEvT_SD_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2548, i64 noundef %i.cs, i32 %3)
  %i.dt = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.du = sub i64 %i.dt, %i.a                     ; 3 uses
  %i.dv = icmp sgt i64 %i.du, 640
  br i1 %i.dv, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEEvT_SD_SD_T0_.exit, !llvm.loop !523

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEEvT_SD_SD_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEET_SD_SD_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEEvT_SD_SD_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEEvT_SD_T0_(ptr %0, ptr %1, i32 %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.CaDiCaL::vivify_ref", align 8 ; 5 uses
  %4 = alloca %"struct.CaDiCaL::vivify_ref", align 8 ; 4 uses
  %5 = alloca %"struct.CaDiCaL::vivify_ref", align 8 ; 5 uses
  %6 = alloca %"struct.CaDiCaL::vivify_ref", align 8 ; 5 uses
  %7 = alloca %"struct.CaDiCaL::vivify_ref", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 640
  br i1 %i.d, label %.lr.ph.i, label %bb.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = sext i32 %2 to i64                       ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.i = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.e
  %scevgep = getelementptr i8, ptr %0, i64 40
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.022.i.idx = phi i64 [ 40, %.lr.ph.i ], [ %.sroa.0.022.i.add, %bb.g ] ; 4 uses
  %.pn21.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.022.i.ptr, %bb.g ] ; 3 uses
  %.sroa.0.022.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.022.i.idx ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.pn21.i, i64 56
  %i.k = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.e
  %i.l = load i64, ptr %i.k, align 8, !tbaa !199
  %i.m = load i64, ptr %i.g, align 8, !tbaa !199
  %i.n = icmp ult i64 %i.l, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.022.i.ptr, i64 40, i1 false), !tbaa.struct !360
  %i.o = icmp samesign ugt i64 %.sroa.0.022.i.idx, 40
  br i1 %i.o, label %bb.d, label %bb.e, !prof !315

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.022.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.pn21.i, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !tbaa.struct !360
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false), !tbaa.struct !360
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.022.i.ptr, i64 40, i1 false), !tbaa.struct !360
  %i.q = load i64, ptr %i.i, align 8, !tbaa !199  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.pn21.i, i64 16
  %i.s = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.e
  %i.t = load i64, ptr %i.s, align 8, !tbaa !199
  %i.u = icmp ult i64 %i.q, %i.t
  br i1 %i.u, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_23vivify_refcount_smallerEEEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.04.07.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.022.i.ptr, %bb.f ] ; 3 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.04.07.i.i, i64 -40 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.04.07.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i.i, i64 40, i1 false), !tbaa.struct !360
  %i.v = getelementptr inbounds i8, ptr %.sroa.04.07.i.i, i64 -64
  %i.w = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.e
  %i.x = load i64, ptr %i.w, align 8, !tbaa !199
  %i.y = icmp ult i64 %i.q, %i.x
  br i1 %i.y, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_23vivify_refcount_smallerEEEEvT_T0_.exit.i, !llvm.loop !531

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_23vivify_refcount_smallerEEEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.0.022.i.ptr, %bb.f ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.04.0.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !360
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_23vivify_refcount_smallerEEEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i
  %.sroa.0.022.i.add = add nuw nsw i64 %.sroa.0.022.i.idx, 40 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.022.i.add, 640
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEEvT_SD_T0_.exit, label %bb.b, !llvm.loop !532

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEEvT_SD_T0_.exit: ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %.not7.i = icmp eq ptr %i.z, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEEvT_SD_T0_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEEvT_SD_T0_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.e
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_23vivify_refcount_smallerEEEEvT_T0_.exit.i13, %.lr.ph.i12
  %.sroa.0.08.i = phi ptr [ %i.z, %.lr.ph.i12 ], [ %i.al, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_23vivify_refcount_smallerEEEEvT_T0_.exit.i13 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.08.i, i64 40, i1 false), !tbaa.struct !360
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !199 ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %.sroa.0.08.i, i64 -24
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.e
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !199
  %i.ag = icmp ult i64 %i.ac, %i.af
  br i1 %i.ag, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_23vivify_refcount_smallerEEEEvT_T0_.exit.i13

.lr.ph.i.i16:                                     ; preds = %bb.h, %.lr.ph.i.i16
  %.sroa.04.07.i.i17 = phi ptr [ %.sroa.0.0.i.i18, %.lr.ph.i.i16 ], [ %.sroa.0.08.i, %bb.h ] ; 3 uses
  %.sroa.0.0.i.i18 = getelementptr inbounds i8, ptr %.sroa.04.07.i.i17, i64 -40 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.04.07.i.i17, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i.i18, i64 40, i1 false), !tbaa.struct !360
  %i.ah = getelementptr inbounds i8, ptr %.sroa.04.07.i.i17, i64 -64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.e
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !199
  %i.ak = icmp ult i64 %i.ac, %i.aj
  br i1 %i.ak, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_23vivify_refcount_smallerEEEEvT_T0_.exit.i13, !llvm.loop !531

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_23vivify_refcount_smallerEEEEvT_T0_.exit.i13: ; preds = %.lr.ph.i.i16, %bb.h
  %.sroa.04.0.lcssa.i.i14 = phi ptr [ %.sroa.0.08.i, %bb.h ], [ %.sroa.0.0.i.i18, %.lr.ph.i.i16 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.04.0.lcssa.i.i14, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !360
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 40 ; 2 uses
  %.not.i15 = icmp eq ptr %i.al, %1
  br i1 %.not.i15, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEEvT_SD_T0_.exit, label %bb.h, !llvm.loop !533

bb.i:                                             ; preds = %bb.a
  %i.am = icmp eq ptr %0, %1
  br i1 %i.am, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEEvT_SD_T0_.exit, label %.preheader.i19

.preheader.i19:                                   ; preds = %bb.i
  %.sroa.0.019.i20 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.not20.i21 = icmp eq ptr %.sroa.0.019.i20, %1
  br i1 %.not20.i21, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEEvT_SD_T0_.exit, label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %.preheader.i19
  %i.an = sext i32 %2 to i64                      ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.an
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.an
  br label %bb.j

bb.j:                                             ; preds = %bb.p, %.lr.ph.i22
  %.sroa.0.022.i23 = phi ptr [ %.sroa.0.019.i20, %.lr.ph.i22 ], [ %.sroa.0.0.i27, %bb.p ] ; 7 uses
  %.pn21.i24 = phi ptr [ %0, %.lr.ph.i22 ], [ %.sroa.0.022.i23, %bb.p ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.pn21.i24, i64 56
  %i.at = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.an
  %i.au = load i64, ptr %i.at, align 8, !tbaa !199
  %i.av = load i64, ptr %i.ap, align 8, !tbaa !199
  %i.aw = icmp ult i64 %i.au, %i.av
  br i1 %i.aw, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.022.i23, i64 40, i1 false), !tbaa.struct !360
  %i.ax = ptrtoint ptr %.sroa.0.022.i23 to i64
  %i.ay = sub i64 %i.ax, %i.b                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 40
  br i1 %i.az, label %bb.l, label %bb.m, !prof !315

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0.019.i20, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.ay, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i32

bb.m:                                             ; preds = %bb.k
  %i.ba = icmp eq i64 %i.ay, 40
  br i1 %i.ba, label %bb.n, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i32

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %.pn21.i24, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !tbaa.struct !360
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i32

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i32: ; preds = %bb.n, %bb.m, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !360
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.p

bb.o:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.022.i23, i64 40, i1 false), !tbaa.struct !360
  %i.bc = load i64, ptr %i.ar, align 8, !tbaa !199 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.pn21.i24, i64 16
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.an
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !199
  %i.bg = icmp ult i64 %i.bc, %i.bf
  br i1 %i.bg, label %.lr.ph.i.i29, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_23vivify_refcount_smallerEEEEvT_T0_.exit.i25

.lr.ph.i.i29:                                     ; preds = %bb.o, %.lr.ph.i.i29
  %.sroa.04.07.i.i30 = phi ptr [ %.sroa.0.0.i.i31, %.lr.ph.i.i29 ], [ %.sroa.0.022.i23, %bb.o ] ; 3 uses
  %.sroa.0.0.i.i31 = getelementptr inbounds i8, ptr %.sroa.04.07.i.i30, i64 -40 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.04.07.i.i30, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i.i31, i64 40, i1 false), !tbaa.struct !360
  %i.bh = getelementptr inbounds i8, ptr %.sroa.04.07.i.i30, i64 -64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.an
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !199
  %i.bk = icmp ult i64 %i.bc, %i.bj
  br i1 %i.bk, label %.lr.ph.i.i29, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_23vivify_refcount_smallerEEEEvT_T0_.exit.i25, !llvm.loop !531

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_23vivify_refcount_smallerEEEEvT_T0_.exit.i25: ; preds = %.lr.ph.i.i29, %bb.o
  %.sroa.04.0.lcssa.i.i26 = phi ptr [ %.sroa.0.022.i23, %bb.o ], [ %.sroa.0.0.i.i31, %.lr.ph.i.i29 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.04.0.lcssa.i.i26, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !360
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.p

bb.p:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_23vivify_refcount_smallerEEEEvT_T0_.exit.i25, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i32
  %.sroa.0.0.i27 = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i23, i64 40 ; 2 uses
  %.not.i28 = icmp eq ptr %.sroa.0.0.i27, %1
  br i1 %.not.i28, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEEvT_SD_T0_.exit, label %bb.j, !llvm.loop !532

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEEvT_SD_T0_.exit: ; preds = %bb.p, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_23vivify_refcount_smallerEEEEvT_T0_.exit.i13, %.preheader.i19, %bb.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEEvT_SD_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @"_ZSt27__stable_partition_adaptiveIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops10_Iter_predIZNS2_8Internal12vivify_roundERNS2_8VivifierElE3$_1EElET_SG_SG_T1_T2_T0_SI_"(ptr %0, ptr nofree readnone captures(address) %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 1
  br i1 %i.a, label %_ZSt4moveIPN7CaDiCaL10vivify_refEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp sgt i64 %2, %4
  br i1 %.not, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !tbaa.struct !360
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %.sroa.040.059 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.not5660 = icmp eq ptr %.sroa.040.059, %1
  br i1 %.not5660, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.f
  %.sroa.040.063 = phi ptr [ %.sroa.040.0, %bb.f ], [ %.sroa.040.059, %bb.c ] ; 4 uses
  %.062 = phi ptr [ %.1, %bb.f ], [ %i.b, %bb.c ] ; 3 uses
  %.sroa.048.061 = phi ptr [ %.sroa.048.1, %bb.f ], [ %0, %bb.c ] ; 3 uses
  %.sroa.0.0.copyload.i = load i8, ptr %.sroa.040.063, align 8, !tbaa !244
  %i.c = trunc nuw i8 %.sroa.0.0.copyload.i to i1
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.048.061, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.040.063, i64 40, i1 false), !tbaa.struct !360
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.048.061, i64 40
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.062, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.040.063, i64 40, i1 false), !tbaa.struct !360
  %i.e = getelementptr inbounds nuw i8, ptr %.062, i64 40
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.048.1 = phi ptr [ %i.d, %bb.d ], [ %.sroa.048.061, %bb.e ] ; 2 uses
  %.1 = phi ptr [ %.062, %bb.d ], [ %i.e, %bb.e ] ; 2 uses
  %.sroa.040.0 = getelementptr inbounds nuw i8, ptr %.sroa.040.063, i64 40 ; 2 uses
  %.not56 = icmp eq ptr %.sroa.040.0, %1
  br i1 %.not56, label %._crit_edge, label %.lr.ph, !llvm.loop !534

._crit_edge:                                      ; preds = %bb.f, %bb.c
  %.sroa.048.0.lcssa = phi ptr [ %0, %bb.c ], [ %.sroa.048.1, %bb.f ] ; 5 uses
  %.0.lcssa = phi ptr [ %i.b, %bb.c ], [ %.1, %bb.f ]
  %i.f = ptrtoint ptr %.0.lcssa to i64
  %i.g = ptrtoint ptr %3 to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %i.i = icmp sgt i64 %i.h, 40
  br i1 %i.i, label %bb.g, label %bb.h, !prof !315

bb.g:                                             ; preds = %._crit_edge
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.048.0.lcssa, ptr nonnull align 8 %3, i64 %i.h, i1 false)
  br label %_ZSt4moveIPN7CaDiCaL10vivify_refEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit

bb.h:                                             ; preds = %._crit_edge
  %i.j = icmp eq i64 %i.h, 40
  br i1 %i.j, label %bb.i, label %_ZSt4moveIPN7CaDiCaL10vivify_refEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.048.0.lcssa, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !360
  br label %_ZSt4moveIPN7CaDiCaL10vivify_refEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.b
  %i.k = sdiv i64 %2, 2                           ; 3 uses
  %i.l = getelementptr inbounds [40 x i8], ptr %0, i64 %i.k ; 5 uses
  %i.m = tail call fastcc ptr @"_ZSt27__stable_partition_adaptiveIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops10_Iter_predIZNS2_8Internal12vivify_roundERNS2_8VivifierElE3$_1EElET_SG_SG_T1_T2_T0_SI_"(ptr %0, ptr %i.l, i64 noundef %i.k, ptr noundef %3, i64 noundef %4)
  %i.n = sub nsw i64 %2, %i.k                     ; 3 uses
  %.not3.i = icmp eq i64 %i.n, 0
  br i1 %.not3.i, label %"_ZSt15__find_if_not_nIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8Internal12vivify_roundERNS2_8VivifierElE3$_1EElET_SG_RT1_T0_.exit.thread", label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.o = mul i64 %i.n, 40
  %scevgep.i = getelementptr i8, ptr %i.l, i64 %i.o
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.preheader.i
  %.051 = phi i64 [ %i.n, %.lr.ph.preheader.i ], [ %i.q, %bb.j ] ; 2 uses
  %.sroa.0.04.i = phi ptr [ %i.l, %.lr.ph.preheader.i ], [ %i.r, %bb.j ] ; 3 uses
  %.sroa.0.0.copyload.i.i = load i8, ptr %.sroa.0.04.i, align 8, !tbaa !244
  %i.p = trunc nuw i8 %.sroa.0.0.copyload.i.i to i1
  br i1 %i.p, label %"_ZSt15__find_if_not_nIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8Internal12vivify_roundERNS2_8VivifierElE3$_1EElET_SG_RT1_T0_.exit", label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.q = add nsw i64 %.051, -1                    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i, i64 40
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %"_ZSt15__find_if_not_nIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8Internal12vivify_roundERNS2_8VivifierElE3$_1EElET_SG_RT1_T0_.exit.thread", label %.lr.ph.i, !llvm.loop !535

"_ZSt15__find_if_not_nIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8Internal12vivify_roundERNS2_8VivifierElE3$_1EElET_SG_RT1_T0_.exit": ; preds = %.lr.ph.i
  %i.s = tail call fastcc ptr @"_ZSt27__stable_partition_adaptiveIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops10_Iter_predIZNS2_8Internal12vivify_roundERNS2_8VivifierElE3$_1EElET_SG_SG_T1_T2_T0_SI_"(ptr nonnull %.sroa.0.04.i, ptr %1, i64 noundef %.051, ptr noundef %3, i64 noundef %4)
  br label %"_ZSt15__find_if_not_nIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8Internal12vivify_roundERNS2_8VivifierElE3$_1EElET_SG_RT1_T0_.exit.thread"

"_ZSt15__find_if_not_nIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8Internal12vivify_roundERNS2_8VivifierElE3$_1EElET_SG_RT1_T0_.exit.thread": ; preds = %bb.j, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %"_ZSt15__find_if_not_nIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8Internal12vivify_roundERNS2_8VivifierElE3$_1EElET_SG_RT1_T0_.exit"
  %.sroa.09.0 = phi ptr [ %i.s, %"_ZSt15__find_if_not_nIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8Internal12vivify_roundERNS2_8VivifierElE3$_1EElET_SG_RT1_T0_.exit" ], [ %i.l, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %scevgep.i, %bb.j ]
  %i.t = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS4_SaIS4_EEEEEET_SA_SA_SA_St26random_access_iterator_tag(ptr %i.m, ptr %i.l, ptr %.sroa.09.0)
  br label %_ZSt4moveIPN7CaDiCaL10vivify_refEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit

_ZSt4moveIPN7CaDiCaL10vivify_refEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit: ; preds = %bb.a, %bb.i, %bb.h, %bb.g, %"_ZSt15__find_if_not_nIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8Internal12vivify_roundERNS2_8VivifierElE3$_1EElET_SG_RT1_T0_.exit.thread"
  %.sroa.048.2 = phi ptr [ %.sroa.048.0.lcssa, %bb.i ], [ %i.t, %"_ZSt15__find_if_not_nIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_8Internal12vivify_roundERNS2_8VivifierElE3$_1EElET_SG_RT1_T0_.exit.thread" ], [ %.sroa.048.0.lcssa, %bb.g ], [ %.sroa.048.0.lcssa, %bb.h ], [ %0, %bb.a ]
  ret ptr %.sroa.048.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS4_SaIS4_EEEEEET_SA_SA_SA_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.CaDiCaL::vivify_ref", align 8 ; 12 uses
  %4 = alloca %"struct.CaDiCaL::vivify_ref", align 8 ; 12 uses
  %5 = alloca %"struct.CaDiCaL::vivify_ref", align 8 ; 4 uses
  %6 = alloca %"struct.CaDiCaL::vivify_ref", align 8 ; 4 uses
  %7 = alloca %"struct.CaDiCaL::vivify_ref", align 8 ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = sdiv exact i64 %i.e, 40                  ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = sdiv exact i64 %i.h, 40                  ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %bb.d

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.m, %.lr.ph.i ], [ %1, %bb.c ] ; 3 uses
  %.sroa.04.07.i = phi ptr [ %i.l, %.lr.ph.i ], [ %0, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.04.07.i, i64 40, i1 false), !tbaa.struct !360
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.04.07.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.08.i, i64 40, i1 false), !tbaa.struct !360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.08.i, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !360
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 40 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 40
  %.not.i = icmp eq ptr %i.l, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %.lr.ph.i, !llvm.loop !536

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 %i.c, %i.g
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
end_hunk_1
