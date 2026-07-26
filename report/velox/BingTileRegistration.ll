inline.NumInlined: 5725
inline.NumDeleted: 1702
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_:bb.a
  %i.ay = sub nsw i32 0, %i.av
  %i.az = select i1 %i.ax, i32 %i.av, i32 %i.ay
  %i.ba = icmp slt i32 %i.az, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br i1 %i.ba, label %bb.k, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SI_.exit.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.bb = load i32, ptr %.sroa.0.0.i.i.i.i.i, align 4, !tbaa !3
  store i32 %i.bb, ptr %.sroa.04.0.i.i.i.i.i, align 4, !tbaa !3
  br label %bb.j, !llvm.loop !579

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SI_.exit.i.i.i.i: ; preds = %bb.j
  store i32 %i.aj, ptr %.sroa.04.0.i.i.i.i.i, align 4, !tbaa !3
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i, i64 4 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.j
  br i1 %i.bd, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SD_EUliE0_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit, label %bb.i, !llvm.loop !580

bb.l:                                             ; preds = %bb.g
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_(ptr %i.h, ptr %i.j, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.152") align 8 %10)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SD_EUliE0_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SD_EUliE0_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit: ; preds = %bb.l, %bb.h, %bb.f, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SI_.exit.i.i.i.i, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SD_EUliE0_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %class.anon.156, align 8            ; 9 uses
  %6 = alloca %class.anon.147, align 8            ; 4 uses
  %7 = alloca %class.anon.148, align 8            ; 2 uses
  %8 = alloca %"struct.facebook::velox::CompareFlags", align 8 ; 5 uses
  %9 = alloca %class.anon.155, align 8            ; 5 uses
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store i64 %4, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  store ptr %6, ptr %9, align 8, !tbaa !385
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %8, ptr %i.a, align 8, !tbaa !573
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !239
  %.not = icmp eq ptr %i.c, null
  %i.d = load ptr, ptr %3, align 8, !tbaa !247    ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !247  ; 9 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %7, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %8, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %9, ptr %.sroa.3.0..sroa_idx, align 8
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 2
  %i.l = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = shl nuw nsw i64 %i.l, 1
  %i.n = xor i64 %i.m, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_SJ_(ptr %i.d, ptr %i.f, i64 noundef %i.n, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.157") align 8 %5)
  %i.o = icmp sgt i64 %i.j, 64
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_(ptr %i.d, ptr nonnull %i.p, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.157") align 8 %5)
  call void @_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_(ptr nonnull %i.p, ptr %i.f, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.157") align 8 %5)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_(ptr %i.d, ptr %i.f, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.157") align 8 %5)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit: ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit

bb.f:                                             ; preds = %bb.a
  %i.q = icmp eq ptr %i.d, %i.f
  br i1 %i.q, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = ptrtoint ptr %i.f to i64
  %i.s = ptrtoint ptr %i.d to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 2
  %i.v = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.u, i1 true)
  %i.w = shl nuw nsw i64 %i.v, 1
  %i.x = xor i64 %i.w, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_SJ_(ptr %i.d, ptr %i.f, i64 noundef %i.x, ptr nonnull %6, ptr nonnull %8)
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_(ptr %i.d, ptr %i.f, ptr nonnull %6, ptr nonnull %8)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit: ; preds = %bb.g, %bb.f, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_SJ_(ptr %0, ptr %1, i64 noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph22

bb.b:                                             ; preds = %.lr.ph22
  %i.h = icmp eq i64 %i.j, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph22, !llvm.loop !581

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge14.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph22:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1421 = phi ptr [ %i.n, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01520 = phi i64 [ %i.j, %bb.b ], [ %2, %.lr.ph ]
  %i.i = phi i64 [ %i.q, %bb.b ], [ %i.d, %.lr.ph ]
  %i.j = add nsw i64 %.01520, -1                  ; 3 uses
  %i.k = lshr i64 %i.i, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %storemerge1421, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_SM_SI_(ptr %0, ptr nonnull %i.f, ptr %i.l, ptr nonnull %i.m, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %3)
  %i.n = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEET_SM_SM_SM_SI_(ptr nonnull %i.f, ptr %storemerge1421, ptr %0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_SJ_(ptr %i.n, ptr %storemerge1421, i64 noundef %i.j, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %3)
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.a
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 16
  br i1 %i.r, label %bb.b, label %.loopexit, !llvm.loop !581

.loopexit:                                        ; preds = %.lr.ph22, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.137, align 8            ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %class.anon.137, align 8            ; 6 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.h = ptrtoint ptr %1 to i64
  %i.i = sub i64 %i.h, %i.g
  %i.j = icmp sgt i64 %i.i, 4
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit
  %.sroa.0.040 = phi ptr [ %1, %.lr.ph ], [ %i.o, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit ]
  %i.o = getelementptr inbounds i8, ptr %.sroa.0.040, i64 -4 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3    ; 3 uses
  %i.q = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.q, ptr %i.o, align 4, !tbaa !3
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.r, %i.g                       ; 3 uses
  %i.t = ashr exact i64 %i.s, 2                   ; 3 uses
  %.sroa.019.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  %i.u = add nsw i64 %i.t, -1
  %5 = sdiv i64 %i.u, 2
  %i.v = icmp sgt i64 %i.t, 2
  br i1 %i.v, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread
  %.034.i.i = phi i64 [ %i.bw, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.y = shl i64 %.034.i.i, 1                     ; 2 uses
  %i.z = add i64 %i.y, 2                          ; 4 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %i.z
  %i.ab = or disjoint i64 %i.y, 1                 ; 2 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ab
  %i.ad = load i32, ptr %i.aa, align 4, !tbaa !3  ; 2 uses
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !3  ; 2 uses
  %i.af = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !582
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !239 ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i3, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i6, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ai = zext i32 %i.ad to i64                   ; 2 uses
  %i.aj = lshr i64 %i.ai, 6
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !161
  %i.am = and i64 %i.ai, 63
  %i.an = shl nuw i64 1, %i.am
  %i.ao = and i64 %i.al, %i.an
  %.not.i.i.i.i4 = icmp eq i64 %i.ao, 0
  %i.ap = zext i32 %i.ae to i64                   ; 2 uses
  %i.aq = lshr i64 %i.ap, 6
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !161
  %i.at = and i64 %i.ap, 63
  %i.au = shl nuw i64 1, %i.at
  %i.av = and i64 %i.as, %i.au
  %.not.i.i.i11.i5 = icmp eq i64 %i.av, 0
  br label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i6

_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i6: ; preds = %bb.c, %.lr.ph.i.i
  %i.aw = phi i1 [ %.not.i.i.i.i4, %bb.c ], [ false, %.lr.ph.i.i ] ; 3 uses
  %i.ax = phi i1 [ %.not.i.i.i11.i5, %bb.c ], [ false, %.lr.ph.i.i ] ; 2 uses
  %or.cond.i7 = or i1 %i.aw, %i.ax
  br i1 %or.cond.i7, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i6
  %.sroa.0.0.copyload.i9 = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i10 = lshr i64 %.sroa.0.0.copyload.i9, 32
  %.sroa.37.0.extract.trunc.i.i11 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i10 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i11, label %bb.h [
    i32 1, label %bb.e
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.ay = and i64 %.sroa.0.0.copyload.i9, 65536
  %.not.i.i14 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i14, label %bb.f, label %.critedge.i15

bb.f:                                             ; preds = %bb.e
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.51) #41
  unreachable

bb.g:                                             ; preds = %bb.d
  %or.cond.i.i12 = and i1 %i.aw, %i.ax
  br i1 %or.cond.i.i12, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16

bb.h:                                             ; preds = %bb.d
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.52) #41
  unreachable

.critedge.i15:                                    ; preds = %bb.e
  call void @_ZSt27__throw_bad_optional_accessv() #41
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i6
  %i.az = load ptr, ptr %i.w, align 8, !tbaa !570
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.ba = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !584, !nonnull !68, !align !173
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !574
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 144
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !174 ; 2 uses
  %i.be = sext i32 %i.ad to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !161
  store i64 %i.bg, ptr %i.b, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %i.bh = sext i32 %i.ae to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !161
  store i64 %i.bj, ptr %i.c, align 8, !tbaa !161
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bl, ptr %i.a, align 8, !tbaa !481
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  store ptr %i.a, ptr %3, align 8, !tbaa !482
  store ptr %i.b, ptr %i.k, align 8, !tbaa !251
  store ptr %i.c, ptr %i.l, align 8, !tbaa !251
  %i.bm = call noundef i32 @_ZZN8facebook5velox12SimpleVectorIlE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKlS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bn = load ptr, ptr %i.x, align 8, !tbaa !585, !nonnull !68, !align !389
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !576, !range !67, !noundef !68
  %i.bq = trunc nuw i8 %i.bp to i1
  %i.br = sub nsw i32 0, %i.bm
  %i.bs = select i1 %i.bq, i32 %i.bm, i32 %i.br
  %.fr = freeze i32 %i.bs
  %i.bt = icmp slt i32 %.fr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br i1 %i.bt, label %bb.j, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread

_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16: ; preds = %bb.g
  %i.bu = trunc i64 %.sroa.0.0.copyload.i9 to i1
  %i.bv = xor i1 %i.aw, %i.bu
  %.fr37 = freeze i1 %i.bv
  br i1 %.fr37, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16
  br label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread

_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread: ; preds = %bb.g, %bb.i, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16, %bb.j
  %i.bw = phi i64 [ %i.ab, %bb.j ], [ %i.z, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16 ], [ %i.z, %bb.i ], [ %i.z, %bb.g ] ; 4 uses
  %i.bx = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !3
  %i.ca = icmp slt i64 %i.bw, %5
  br i1 %i.ca, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !586

._crit_edge.i.i:                                  ; preds = %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.bw, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread ] ; 5 uses
  %i.cb = and i64 %i.s, 4
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.cd = add nsw i64 %i.t, -2
  %i.ce = ashr exact i64 %i.cd, 1
  %i.cf = icmp eq i64 %.0.lcssa.i.i, %i.ce
  br i1 %i.cf, label %.thread.i, label %bb.l

.thread.i:                                        ; preds = %bb.k
  %i.cg = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ch = or disjoint i64 %i.cg, 1                ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !3
  br label %.lr.ph.i.i.preheader.i

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.l, %.thread.i
  %.1.i11.i = phi i64 [ %i.ch, %.thread.i ], [ %.0.lcssa.i.i, %bb.l ]
  %i.cl = zext i32 %i.p to i64                    ; 2 uses
  %i.cm = lshr i64 %i.cl, 6
  %i.cn = and i64 %i.cl, 63
  %i.co = shl nuw i64 1, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  %i.cq = sext i32 %i.p to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 16
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %.lr.ph.i.i.preheader.i
  %.019.i.i.i = phi i64 [ %.0920.i.i67.i, %bb.t ], [ %.1.i11.i, %.lr.ph.i.i.preheader.i ] ; 4 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i67.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i67.i ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3  ; 3 uses
  %i.cu = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !582
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !239 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.cx = zext i32 %i.ct to i64                   ; 2 uses
  %i.cy = lshr i64 %i.cx, 6
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !161
  %i.db = and i64 %i.cx, 63
  %i.dc = shl nuw i64 1, %i.db
  %i.dd = and i64 %i.da, %i.dc
  %.not.i.i.i.i = icmp eq i64 %i.dd, 0
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cm
  %i.df = load i64, ptr %i.de, align 8, !tbaa !161
  %i.dg = and i64 %i.df, %i.co
  %.not.i.i.i11.i = icmp eq i64 %i.dg, 0
  br label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i: ; preds = %bb.m, %.lr.ph.i.i.i
  %i.dh = phi i1 [ %.not.i.i.i.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 3 uses
  %i.di = phi i1 [ %.not.i.i.i11.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 2 uses
  %or.cond.i = or i1 %i.dh, %i.di
  br i1 %or.cond.i, label %bb.n, label %bb.s

bb.n:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.r [
    i32 1, label %bb.o
    i32 0, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.dj = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.dj, 0
  br i1 %.not.i.i, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %bb.o
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.51) #41
  unreachable

bb.q:                                             ; preds = %bb.n
  %or.cond.i.i = and i1 %i.dh, %i.di
  %i.dk = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.dl = xor i1 %i.dh, %i.dk
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.dl
  br i1 %or.cond.demorgan, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %bb.t

bb.r:                                             ; preds = %bb.n
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.52) #41
  unreachable

.critedge.i:                                      ; preds = %bb.o
  call void @_ZSt27__throw_bad_optional_accessv() #41
  unreachable

bb.s:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %i.dm = load ptr, ptr %i.cp, align 8, !tbaa !570
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  %i.dn = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !584, !nonnull !68, !align !173
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !574
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 144
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !174 ; 2 uses
  %i.dr = sext i32 %i.ct to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.dr
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !161
  store i64 %i.dt, ptr %i.e, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #37
  %i.du = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.cq
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !161
  store i64 %i.dv, ptr %i.f, align 8, !tbaa !161
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.dx, ptr %i.d, align 8, !tbaa !481
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  store ptr %i.d, ptr %4, align 8, !tbaa !482
  store ptr %i.e, ptr %i.m, align 8, !tbaa !251
  store ptr %i.f, ptr %i.n, align 8, !tbaa !251
  %i.dy = call noundef i32 @_ZZN8facebook5velox12SimpleVectorIlE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKlS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.dz = load ptr, ptr %i.cr, align 8, !tbaa !585, !nonnull !68, !align !389
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 1
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !576, !range !67, !noundef !68
  %i.ec = trunc nuw i8 %i.eb to i1
  %i.ed = sub nsw i32 0, %i.dy
  %i.ee = select i1 %i.ec, i32 %i.dy, i32 %i.ed
  %i.ef = icmp slt i32 %i.ee, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  br i1 %i.ef, label %._crit_edge43, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit

._crit_edge43:                                    ; preds = %bb.s
  %.pre = load i32, ptr %i.cs, align 4, !tbaa !3
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge43, %bb.q
  %i.eg = phi i32 [ %.pre, %._crit_edge43 ], [ %i.ct, %bb.q ]
  %i.eh = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !3
  %.not8.i = icmp eq i64 %.0920.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %.lr.ph.i.i.i, !llvm.loop !587

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit: ; preds = %bb.q, %bb.s, %bb.t, %bb.l
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.l ], [ %.019.i.i.i, %bb.s ], [ %.019.i.i.i, %bb.q ], [ 0, %bb.t ]
  %i.ei = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.p, ptr %i.ei, align 4, !tbaa !3
  %i.ej = icmp sgt i64 %i.s, 4
  br i1 %i.ej, label %bb.b, label %._crit_edge, !llvm.loop !588

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.137, align 8            ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %class.anon.137, align 8            ; 6 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %i.k = icmp slt i64 %i.j, 2
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add nsw i64 %i.j, -2                     ; 3 uses
  %i.m = lshr i64 %i.l, 1
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = add nsw i64 %i.j, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = and i64 %i.i, 4
  %i.s = icmp eq i64 %i.r, 0
  %i.t = lshr exact i64 %i.l, 1                   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.w
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.t
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_SI_SJ_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.m, %bb.b ], [ %i.ej, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_SI_SJ_T2_.exit ] ; 8 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3   ; 3 uses
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !385 ; 2 uses
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !573 ; 2 uses
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !385 ; 6 uses
  %i.ab = icmp slt i64 %.08, %i.o
  br i1 %i.ab, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit23.thread
  %.034.i = phi i64 [ %i.cc, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit23.thread ], [ %.08, %.lr.ph.i.preheader ] ; 2 uses
  %i.ae = shl i64 %.034.i, 1                      ; 2 uses
  %i.af = add i64 %i.ae, 2                        ; 4 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %0, i64 %i.af
end_hunk_0
begin_hunk_1_@_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_:bb.a
  %.pn20 = phi ptr [ %0, %.lr.ph ], [ %.sroa.08.021, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ] ; 2 uses
  %i.q = load i32, ptr %.sroa.08.021, align 4, !tbaa !3
  %i.r = load i32, ptr %0, align 4, !tbaa !3
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !570
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !574
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !174  ; 2 uses
  %i.w = sext i32 %i.q to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !161
  store i64 %i.y, ptr %i.e, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #37
  %i.z = sext i32 %i.r to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !161
  store i64 %i.ab, ptr %i.f, align 8, !tbaa !161
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.ad, ptr %i.d, align 8, !tbaa !481
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  store ptr %i.d, ptr %4, align 8, !tbaa !482
  store ptr %i.e, ptr %i.k, align 8, !tbaa !251
  store ptr %i.f, ptr %i.l, align 8, !tbaa !251
  %i.ae = call noundef i32 @_ZZN8facebook5velox12SimpleVectorIlE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKlS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.af = load ptr, ptr %i.m, align 8, !tbaa !585
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !576, !range !67, !noundef !68
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = sub nsw i32 0, %i.ae
  %i.ak = select i1 %i.ai, i32 %i.ae, i32 %i.aj
  %i.al = icmp slt i32 %i.ak, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  %i.am = load i32, ptr %.sroa.08.021, align 4, !tbaa !3 ; 2 uses
  br i1 %i.al, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.an = ptrtoint ptr %.sroa.08.021 to i64
  %i.ao = sub i64 %i.an, %i.p                     ; 3 uses
  %i.ap = ashr exact i64 %i.ao, 2                 ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, 1
  br i1 %i.aq, label %bb.d, label %bb.e, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn20, i64 8
  %i.as = sub nsw i64 0, %i.ap
  %i.at = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.as
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.at, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.ao, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.c
  %i.au = icmp eq i64 %i.ao, 4
  br i1 %i.au, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %.pn20, i64 4
  %i.aw = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !3
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.b
  %i.ax = sext i32 %i.am to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.sroa.04.0.i = phi ptr [ %.sroa.08.021, %bb.g ], [ %.sroa.0.0.i, %bb.i ] ; 3 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.04.0.i, i64 -4 ; 3 uses
  %i.ay = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.az = load ptr, ptr %i.j, align 8, !tbaa !574
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 144
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !174 ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.ax
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !161
  store i64 %i.bd, ptr %i.b, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %i.be = sext i32 %i.ay to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !161
  store i64 %i.bg, ptr %i.c, align 8, !tbaa !161
  %i.bh = load ptr, ptr %i.ac, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bh, ptr %i.a, align 8, !tbaa !481
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  store ptr %i.a, ptr %3, align 8, !tbaa !482
  store ptr %i.b, ptr %i.n, align 8, !tbaa !251
  store ptr %i.c, ptr %i.o, align 8, !tbaa !251
  %i.bi = call noundef i32 @_ZZN8facebook5velox12SimpleVectorIlE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKlS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bj = load i8, ptr %i.ag, align 1, !tbaa !576, !range !67, !noundef !68
  %i.bk = trunc nuw i8 %i.bj to i1
  %i.bl = sub nsw i32 0, %i.bi
  %i.bm = select i1 %i.bk, i32 %i.bi, i32 %i.bl
  %i.bn = icmp slt i32 %i.bm, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br i1 %i.bn, label %bb.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.i:                                             ; preds = %bb.h
  %i.bo = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3
  store i32 %i.bo, ptr %.sroa.04.0.i, align 4, !tbaa !3
  br label %bb.h, !llvm.loop !579

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.h, %bb.f, %bb.e, %bb.d
  %.sink = phi ptr [ %0, %bb.f ], [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.04.0.i, %bb.h ]
  store i32 %i.am, ptr %.sink, align 4, !tbaa !3
  %.sroa.08.0 = getelementptr inbounds nuw i8, ptr %.sroa.08.021, i64 4 ; 2 uses
  %i.bp = icmp eq ptr %.sroa.08.0, %1
  br i1 %i.bp, label %.loopexit, label %bb.b, !llvm.loop !608

.loopexit:                                        ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_SJ_(ptr %0, ptr %1, i64 noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.157") align 8 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.157", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.157", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph22

bb.b:                                             ; preds = %.lr.ph22
  %i.h = icmp eq i64 %i.j, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph22, !llvm.loop !609

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge14.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph22:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1421 = phi ptr [ %i.n, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01520 = phi i64 [ %i.j, %bb.b ], [ %2, %.lr.ph ]
  %i.i = phi i64 [ %i.q, %bb.b ], [ %i.d, %.lr.ph ]
  %i.j = add nsw i64 %.01520, -1                  ; 3 uses
  %i.k = lshr i64 %i.i, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %storemerge1421, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_SM_SI_(ptr %0, ptr nonnull %i.f, ptr %i.l, ptr nonnull %i.m, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.157") align 8 %3)
  %i.n = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEET_SM_SM_SM_SI_(ptr nonnull %i.f, ptr %storemerge1421, ptr %0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.157") align 8 %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_SJ_(ptr %i.n, ptr %storemerge1421, i64 noundef %i.j, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.157") align 8 %3)
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.a
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 16
  br i1 %i.r, label %bb.b, label %.loopexit, !llvm.loop !609

.loopexit:                                        ; preds = %.lr.ph22, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit
  %.sroa.0.041 = phi ptr [ %1, %.lr.ph ], [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.041, i64 -4 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3    ; 3 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.g, ptr %i.e, align 4, !tbaa !3
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.h, %i.a                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %.sroa.019.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %i.k = add nsw i64 %i.j, -1
  %3 = sdiv i64 %i.k, 2
  %i.l = icmp sgt i64 %i.j, 2
  br i1 %i.l, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.m = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !610
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !239  ; 3 uses
  %.not.i.i.i.i4 = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread
  %.034.i.i = phi i64 [ %i.bj, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.q = shl i64 %.034.i.i, 1                     ; 2 uses
  %i.r = add i64 %i.q, 2                          ; 4 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %0, i64 %i.r
  %i.t = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = load i32, ptr %i.s, align 4, !tbaa !3    ; 5 uses
  %i.w = load i32, ptr %i.u, align 4, !tbaa !3    ; 3 uses
  br i1 %.not.i.i.i.i4, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i7, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.x = zext i32 %i.v to i64                     ; 2 uses
  %i.y = lshr i64 %i.x, 6
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !161
  %i.ab = and i64 %i.x, 63
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = and i64 %i.aa, %i.ac
  %.not.i.i.i.i.i5 = icmp eq i64 %i.ad, 0
  %i.ae = zext i32 %i.w to i64                    ; 2 uses
  %i.af = lshr i64 %i.ae, 6
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !161
  %i.ai = and i64 %i.ae, 63
  %i.aj = shl nuw i64 1, %i.ai
  %i.ak = and i64 %i.ah, %i.aj
  %.not.i.i.i11.i.i6 = icmp eq i64 %i.ak, 0
  br label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i7

_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i7: ; preds = %bb.c, %.lr.ph.i.i
  %i.al = phi i1 [ %.not.i.i.i.i.i5, %bb.c ], [ false, %.lr.ph.i.i ] ; 3 uses
  %i.am = phi i1 [ %.not.i.i.i11.i.i6, %bb.c ], [ false, %.lr.ph.i.i ] ; 2 uses
  %or.cond.i.i8 = or i1 %i.al, %i.am
  br i1 %or.cond.i.i8, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i7
  %.sroa.0.0.copyload.i.i10 = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i.i11 = lshr i64 %.sroa.0.0.copyload.i.i10, 32
  %.sroa.37.0.extract.trunc.i.i.i12 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i.i11 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i.i12, label %bb.h [
    i32 1, label %bb.e
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.an = and i64 %.sroa.0.0.copyload.i.i10, 65536
  %.not.i.i.i15 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i15, label %bb.f, label %.critedge.i.i16

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.51) #41
  unreachable

bb.g:                                             ; preds = %bb.d
  %or.cond.i.i.i13 = and i1 %i.al, %i.am
  br i1 %or.cond.i.i.i13, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit

bb.h:                                             ; preds = %bb.d
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.52) #41
  unreachable

.critedge.i.i16:                                  ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #41
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i7
  %i.ao = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !612, !nonnull !68, !align !173
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !614
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 144
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !174 ; 2 uses
  %i.as = sext i32 %i.v to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !161
  %i.av = sext i32 %i.w to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !161
  %i.ay = tail call i32 @llvm.scmp.i32.i64(i64 %i.au, i64 %i.ax) ; 2 uses
  %i.az = load ptr, ptr %i.p, align 8, !tbaa !616, !nonnull !68, !align !389
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !576, !range !67, !noundef !68
  %i.bc = trunc nuw i8 %i.bb to i1
  %i.bd = sub nsw i32 0, %i.ay
  %i.be = select i1 %i.bc, i32 %i.ay, i32 %i.bd
  %.fr = freeze i32 %i.be
  %i.bf = icmp slt i32 %.fr, 0
  br i1 %i.bf, label %bb.j, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit: ; preds = %bb.g
  %i.bg = trunc i64 %.sroa.0.0.copyload.i.i10 to i1
  %i.bh = xor i1 %i.al, %i.bg
  %.fr38 = freeze i1 %i.bh
  br i1 %.fr38, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread: ; preds = %bb.g, %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit, %bb.j
  %i.bi = phi i32 [ %i.w, %bb.j ], [ %i.v, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit ], [ %i.v, %bb.i ], [ %i.v, %bb.g ]
  %i.bj = phi i64 [ %i.t, %bb.j ], [ %i.r, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit ], [ %i.r, %bb.i ], [ %i.r, %bb.g ] ; 3 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i
  store i32 %i.bi, ptr %i.bk, align 4, !tbaa !3
  %i.bl = icmp slt i64 %i.bj, %3
  br i1 %i.bl, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !617

._crit_edge.i.i:                                  ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.bj, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread ] ; 5 uses
  %i.bm = and i64 %i.i, 4
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.bo = add nsw i64 %i.j, -2
  %i.bp = ashr exact i64 %i.bo, 1
  %i.bq = icmp eq i64 %.0.lcssa.i.i, %i.bp
  br i1 %i.bq, label %.thread.i, label %bb.l

.thread.i:                                        ; preds = %bb.k
  %i.br = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.bs = or disjoint i64 %i.br, 1                ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !3
  br label %.lr.ph.i.i.preheader.i

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.l, %.thread.i
  %.1.i11.i = phi i64 [ %i.bs, %.thread.i ], [ %.0.lcssa.i.i, %bb.l ]
  %i.bw = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !610
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !239 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.by, null
  %i.bz = zext i32 %i.f to i64                    ; 2 uses
  %i.ca = lshr i64 %i.bz, 6
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.ca
  %i.cc = and i64 %i.bz, 63
  %i.cd = shl nuw i64 1, %i.cc
  %i.ce = sext i32 %i.f to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %.lr.ph.i.i.preheader.i
  %.018.i.i.i = phi i64 [ %.0919.i.i67.i, %bb.t ], [ %.1.i11.i, %.lr.ph.i.i.preheader.i ] ; 4 uses
  %.0919.in.i.i.i = add nsw i64 %.018.i.i.i, -1
  %.0919.i.i67.i = lshr i64 %.0919.in.i.i.i, 1    ; 3 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0919.i.i67.i
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3  ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.ci = zext i32 %i.ch to i64                   ; 2 uses
  %i.cj = lshr i64 %i.ci, 6
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !161
  %i.cm = and i64 %i.ci, 63
  %i.cn = shl nuw i64 1, %i.cm
  %i.co = and i64 %i.cl, %i.cn
  %.not.i.i.i.i.i = icmp eq i64 %i.co, 0
  %i.cp = load i64, ptr %i.cb, align 8, !tbaa !161
  %i.cq = and i64 %i.cp, %i.cd
  %.not.i.i.i11.i.i = icmp eq i64 %i.cq, 0
  br label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i

_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i: ; preds = %bb.m, %.lr.ph.i.i.i
  %i.cr = phi i1 [ %.not.i.i.i.i.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 3 uses
  %i.cs = phi i1 [ %.not.i.i.i11.i.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 2 uses
  %or.cond.i.i = or i1 %i.cr, %i.cs
  br i1 %or.cond.i.i, label %bb.n, label %bb.s

bb.n:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i
  %.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.37.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i.i, label %bb.r [
    i32 1, label %bb.o
    i32 0, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.ct = and i64 %.sroa.0.0.copyload.i.i, 65536
  %.not.i.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i.i, label %bb.p, label %.critedge.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.51) #41
  unreachable

bb.q:                                             ; preds = %bb.n
  %or.cond.i.i.i = and i1 %i.cr, %i.cs
  %i.cu = trunc i64 %.sroa.0.0.copyload.i.i to i1
  %i.cv = xor i1 %i.cr, %i.cu
  %or.cond.demorgan = or i1 %or.cond.i.i.i, %i.cv
  br i1 %or.cond.demorgan, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %bb.t

bb.r:                                             ; preds = %bb.n
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.52) #41
  unreachable

.critedge.i.i:                                    ; preds = %bb.o
  tail call void @_ZSt27__throw_bad_optional_accessv() #41
  unreachable

bb.s:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i
  %i.cw = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !612, !nonnull !68, !align !173
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !614
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 144
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !174 ; 2 uses
  %i.da = sext i32 %i.ch to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.da
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !161
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.ce
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !161
  %i.df = tail call i32 @llvm.scmp.i32.i64(i64 %i.dc, i64 %i.de) ; 2 uses
  %i.dg = load ptr, ptr %i.cf, align 8, !tbaa !616, !nonnull !68, !align !389
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !576, !range !67, !noundef !68
  %i.dj = trunc nuw i8 %i.di to i1
  %i.dk = sub nsw i32 0, %i.df
  %i.dl = select i1 %i.dj, i32 %i.df, i32 %i.dk
  %i.dm = icmp slt i32 %i.dl, 0
  br i1 %i.dm, label %bb.t, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit

bb.t:                                             ; preds = %bb.q, %bb.s
  %i.dn = getelementptr inbounds [4 x i8], ptr %0, i64 %.018.i.i.i
  store i32 %i.ch, ptr %i.dn, align 4, !tbaa !3
  %.not8.i = icmp eq i64 %.0919.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %.lr.ph.i.i.i, !llvm.loop !618

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit: ; preds = %bb.q, %bb.t, %bb.s, %bb.l
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.l ], [ %.018.i.i.i, %bb.s ], [ 0, %bb.t ], [ %.018.i.i.i, %bb.q ]
  %i.do = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.f, ptr %i.do, align 4, !tbaa !3
  %i.dp = icmp sgt i64 %i.i, 4
  br i1 %i.dp, label %bb.b, label %._crit_edge, !llvm.loop !619

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !385 ; 2 uses
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !573 ; 2 uses
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !385 ; 3 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 8 ; 2 uses
  %i.k = and i64 %i.c, 4
  %i.l = icmp eq i64 %i.k, 0
  %i.m = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.n = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_SI_SJ_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.g, %bb.b ], [ %i.do, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_SI_SJ_T2_.exit ] ; 8 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3    ; 3 uses
  %i.s = icmp slt i64 %.08, %i.i
  br i1 %i.s, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.t = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !610
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !239  ; 3 uses
  %.not.i.i.i.i9 = icmp eq ptr %i.v, null
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread
  %.034.i = phi i64 [ %i.bp, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread ], [ %.08, %.lr.ph.i.preheader ] ; 2 uses
  %i.w = shl i64 %.034.i, 1                       ; 2 uses
  %i.x = add i64 %i.w, 2                          ; 4 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %i.x
  %i.z = or disjoint i64 %i.w, 1                  ; 2 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %i.z
  %i.ab = load i32, ptr %i.y, align 4, !tbaa !3   ; 5 uses
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !3  ; 3 uses
  br i1 %.not.i.i.i.i9, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i12, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.ad = zext i32 %i.ab to i64                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 6
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !161
  %i.ah = and i64 %i.ad, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ag, %i.ai
  %.not.i.i.i.i.i10 = icmp eq i64 %i.aj, 0
  %i.ak = zext i32 %i.ac to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 6
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !161
  %i.ao = and i64 %i.ak, 63
  %i.ap = shl nuw i64 1, %i.ao
  %i.aq = and i64 %i.an, %i.ap
  %.not.i.i.i11.i.i11 = icmp eq i64 %i.aq, 0
  br label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i12

_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i12: ; preds = %bb.d, %.lr.ph.i
  %i.ar = phi i1 [ %.not.i.i.i.i.i10, %bb.d ], [ false, %.lr.ph.i ] ; 3 uses
  %i.as = phi i1 [ %.not.i.i.i11.i.i11, %bb.d ], [ false, %.lr.ph.i ] ; 2 uses
  %or.cond.i.i13 = or i1 %i.ar, %i.as
  br i1 %or.cond.i.i13, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i12
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_:bb.a
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SE_SF_EUliE0_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit

bb.f:                                             ; preds = %bb.a
  %i.t = icmp eq ptr %i.g, %i.i
  br i1 %i.t, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SE_SF_EUliE0_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = ptrtoint ptr %i.i to i64
  %i.v = ptrtoint ptr %i.g to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2
  %i.y = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = shl nuw nsw i64 %i.y, 1
  %i.aa = xor i64 %i.z, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SK_SL_(ptr %i.g, ptr %i.i, i64 noundef %i.aa, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.172") align 8 %11)
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SK_(ptr %i.g, ptr %i.i, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.172") align 8 %11)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SE_SF_EUliE0_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SE_SF_EUliE0_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit: ; preds = %bb.g, %bb.f, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SE_SF_EUliE0_EEvT0_T1_SC_SF_EUliiE0_EvT_SL_SI_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %7 = alloca %class.anon.176, align 8            ; 9 uses
  %8 = alloca %class.anon.165, align 8            ; 5 uses
  %9 = alloca %class.anon.166, align 8            ; 3 uses
  %10 = alloca %"struct.facebook::velox::CompareFlags", align 8 ; 5 uses
  %11 = alloca %class.anon.175, align 8           ; 5 uses
  store ptr %1, ptr %8, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.a, align 8
  store ptr %3, ptr %9, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %4, ptr %i.b, align 8
  store i64 %6, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  store ptr %8, ptr %11, align 8, !tbaa !385
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %10, ptr %i.c, align 8, !tbaa !573
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !239
  %.not = icmp eq ptr %i.e, null
  %i.f = load ptr, ptr %5, align 8, !tbaa !247    ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !247  ; 9 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %9, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %10, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %11, ptr %.sroa.3.0..sroa_idx, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE0_EvT_SL_SI_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.f to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 2
  %i.n = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.m, i1 true)
  %i.o = shl nuw nsw i64 %i.n, 1
  %i.p = xor i64 %i.o, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_SL_(ptr %i.f, ptr %i.h, i64 noundef %i.p, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.177") align 8 %7)
  %i.q = icmp sgt i64 %i.l, 64
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_(ptr %i.f, ptr nonnull %i.r, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.177") align 8 %7)
  call void @_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_(ptr nonnull %i.r, ptr %i.h, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.177") align 8 %7)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE0_EvT_SL_SI_.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_(ptr %i.f, ptr %i.h, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.177") align 8 %7)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE0_EvT_SL_SI_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE0_EvT_SL_SI_.exit: ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit

bb.f:                                             ; preds = %bb.a
  %i.s = icmp eq ptr %i.f, %i.h
  br i1 %i.s, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = ptrtoint ptr %i.h to i64
  %i.u = ptrtoint ptr %i.f to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 2
  %i.x = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.w, i1 true)
  %i.y = shl nuw nsw i64 %i.x, 1
  %i.z = xor i64 %i.y, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SK_SL_(ptr %i.f, ptr %i.h, i64 noundef %i.z, ptr nonnull %8, ptr nonnull %10)
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SK_(ptr %i.f, ptr %i.h, ptr nonnull %8, ptr nonnull %10)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit: ; preds = %bb.g, %bb.f, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE0_EvT_SL_SI_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_SL_(ptr %0, ptr %1, i64 noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.169") align 8 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.169", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.169", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph22

bb.b:                                             ; preds = %.lr.ph22
  %i.h = icmp eq i64 %i.j, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph22, !llvm.loop !644

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge14.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph22:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1421 = phi ptr [ %i.n, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01520 = phi i64 [ %i.j, %bb.b ], [ %2, %.lr.ph ]
  %i.i = phi i64 [ %i.q, %bb.b ], [ %i.d, %.lr.ph ]
  %i.j = add nsw i64 %.01520, -1                  ; 3 uses
  %i.k = lshr i64 %i.i, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %storemerge1421, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_SO_SK_(ptr %0, ptr nonnull %i.f, ptr %i.l, ptr nonnull %i.m, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.169") align 8 %3)
  %i.n = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEET_SO_SO_SO_SK_(ptr nonnull %i.f, ptr %storemerge1421, ptr %0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.169") align 8 %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_SL_(ptr %i.n, ptr %storemerge1421, i64 noundef %i.j, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.169") align 8 %3)
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.a
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 16
  br i1 %i.r, label %bb.b, label %.loopexit, !llvm.loop !644

.loopexit:                                        ; preds = %.lr.ph22, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.137, align 8            ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %class.anon.137, align 8            ; 6 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.h = ptrtoint ptr %1 to i64
  %i.i = sub i64 %i.h, %i.g
  %i.j = icmp sgt i64 %i.i, 4
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit
  %.sroa.0.040 = phi ptr [ %1, %.lr.ph ], [ %i.o, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit ]
  %i.o = getelementptr inbounds i8, ptr %.sroa.0.040, i64 -4 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3    ; 2 uses
  %i.q = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.q, ptr %i.o, align 4, !tbaa !3
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.r, %i.g                       ; 3 uses
  %i.t = ashr exact i64 %i.s, 2                   ; 3 uses
  %.sroa.019.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  %i.u = add nsw i64 %i.t, -1
  %5 = sdiv i64 %i.u, 2
  %i.v = icmp sgt i64 %i.t, 2
  br i1 %i.v, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.019.0.copyload, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread
  %.034.i.i = phi i64 [ %i.co, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.z = shl i64 %.034.i.i, 1                     ; 2 uses
  %i.aa = add i64 %i.z, 2                         ; 4 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aa
  %i.ac = or disjoint i64 %i.z, 1                 ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ac
  %i.ae = load i32, ptr %i.ab, align 4, !tbaa !3  ; 2 uses
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !3  ; 2 uses
  %i.ag = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !645
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !239 ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i3, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i6, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !648, !nonnull !68, !align !173
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !247 ; 2 uses
  %i.al = sext i32 %i.ae to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = lshr i64 %i.ao, 6
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !161
  %i.as = and i64 %i.ao, 63
  %i.at = shl nuw i64 1, %i.as
  %i.au = and i64 %i.at, %i.ar
  %.not.i.i.i.i4 = icmp eq i64 %i.au, 0
  %i.av = sext i32 %i.af to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = lshr i64 %i.ay, 6
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !161
  %i.bc = and i64 %i.ay, 63
  %i.bd = shl nuw i64 1, %i.bc
  %i.be = and i64 %i.bd, %i.bb
  %.not.i.i.i11.i5 = icmp eq i64 %i.be, 0
  br label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i6

_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i6: ; preds = %bb.c, %.lr.ph.i.i
  %i.bf = phi i1 [ %.not.i.i.i.i4, %bb.c ], [ false, %.lr.ph.i.i ] ; 3 uses
  %i.bg = phi i1 [ %.not.i.i.i11.i5, %bb.c ], [ false, %.lr.ph.i.i ] ; 2 uses
  %or.cond.i7 = or i1 %i.bf, %i.bg
  br i1 %or.cond.i7, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i6
  %.sroa.0.0.copyload.i9 = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i10 = lshr i64 %.sroa.0.0.copyload.i9, 32
  %.sroa.37.0.extract.trunc.i.i11 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i10 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i11, label %bb.h [
    i32 1, label %bb.e
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.bh = and i64 %.sroa.0.0.copyload.i9, 65536
  %.not.i.i14 = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i14, label %bb.f, label %.critedge.i15

bb.f:                                             ; preds = %bb.e
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.51) #41
  unreachable

bb.g:                                             ; preds = %bb.d
  %or.cond.i.i12 = and i1 %i.bf, %i.bg
  br i1 %or.cond.i.i12, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16

bb.h:                                             ; preds = %bb.d
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.52) #41
  unreachable

.critedge.i15:                                    ; preds = %bb.e
  call void @_ZSt27__throw_bad_optional_accessv() #41
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i6
  %i.bi = load ptr, ptr %i.x, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.bj = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !649, !nonnull !68, !align !173 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !650
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !652, !nonnull !68, !align !173
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !247 ; 2 uses
  %i.bo = sext i32 %i.ae to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 144
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !174 ; 2 uses
  %i.bt = sext i32 %i.bq to i64
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !161
  store i64 %i.bv, ptr %i.b, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %i.bw = sext i32 %i.af to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !161
  store i64 %i.cb, ptr %i.c, align 8, !tbaa !161
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.cd, ptr %i.a, align 8, !tbaa !481
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  store ptr %i.a, ptr %3, align 8, !tbaa !482
  store ptr %i.b, ptr %i.k, align 8, !tbaa !251
  store ptr %i.c, ptr %i.l, align 8, !tbaa !251
  %i.ce = call noundef i32 @_ZZN8facebook5velox12SimpleVectorIlE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKlS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cf = load ptr, ptr %i.y, align 8, !tbaa !653, !nonnull !68, !align !389
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !576, !range !67, !noundef !68
  %i.ci = trunc nuw i8 %i.ch to i1
  %i.cj = sub nsw i32 0, %i.ce
  %i.ck = select i1 %i.ci, i32 %i.ce, i32 %i.cj
  %.fr = freeze i32 %i.ck
  %i.cl = icmp slt i32 %.fr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br i1 %i.cl, label %bb.j, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread

_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16: ; preds = %bb.g
  %i.cm = trunc i64 %.sroa.0.0.copyload.i9 to i1
  %i.cn = xor i1 %i.bf, %i.cm
  %.fr37 = freeze i1 %i.cn
  br i1 %.fr37, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16
  br label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread

_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread: ; preds = %bb.g, %bb.i, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16, %bb.j
  %i.co = phi i64 [ %i.ac, %bb.j ], [ %i.aa, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16 ], [ %i.aa, %bb.i ], [ %i.aa, %bb.g ] ; 4 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %0, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !3
  %i.cr = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !3
  %i.cs = icmp slt i64 %i.co, %5
  br i1 %i.cs, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !654

._crit_edge.i.i:                                  ; preds = %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.co, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread ] ; 5 uses
  %i.ct = and i64 %i.s, 4
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.cv = add nsw i64 %i.t, -2
  %i.cw = ashr exact i64 %i.cv, 1
  %i.cx = icmp eq i64 %.0.lcssa.i.i, %i.cw
  br i1 %i.cx, label %.thread.i, label %bb.l

.thread.i:                                        ; preds = %bb.k
  %i.cy = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.cz = or disjoint i64 %i.cy, 1                ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !3
  %i.dc = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !3
  br label %.lr.ph.i.i.preheader.i

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.l, %.thread.i
  %.1.i11.i = phi i64 [ %i.cz, %.thread.i ], [ %.0.lcssa.i.i, %bb.l ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.019.0.copyload, i64 8
  %i.de = sext i32 %i.p to i64                    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 16
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %.lr.ph.i.i.preheader.i
  %.019.i.i.i = phi i64 [ %.0920.i.i67.i, %bb.t ], [ %.1.i11.i, %.lr.ph.i.i.preheader.i ] ; 4 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i67.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i67.i ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3  ; 3 uses
  %i.dj = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !645
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !239 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.dm = load ptr, ptr %i.dd, align 8, !tbaa !648, !nonnull !68, !align !173
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !247 ; 2 uses
  %i.do = sext i32 %i.di to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3
  %i.dr = zext i32 %i.dq to i64                   ; 2 uses
  %i.ds = lshr i64 %i.dr, 6
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.ds
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !161
  %i.dv = and i64 %i.dr, 63
  %i.dw = shl nuw i64 1, %i.dv
  %i.dx = and i64 %i.dw, %i.du
  %.not.i.i.i.i = icmp eq i64 %i.dx, 0
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.de
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !3
  %i.ea = zext i32 %i.dz to i64                   ; 2 uses
  %i.eb = lshr i64 %i.ea, 6
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.eb
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !161
  %i.ee = and i64 %i.ea, 63
  %i.ef = shl nuw i64 1, %i.ee
  %i.eg = and i64 %i.ef, %i.ed
  %.not.i.i.i11.i = icmp eq i64 %i.eg, 0
  br label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i: ; preds = %bb.m, %.lr.ph.i.i.i
  %i.eh = phi i1 [ %.not.i.i.i.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 3 uses
  %i.ei = phi i1 [ %.not.i.i.i11.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 2 uses
  %or.cond.i = or i1 %i.eh, %i.ei
  br i1 %or.cond.i, label %bb.n, label %bb.s

bb.n:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.r [
    i32 1, label %bb.o
    i32 0, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.ej = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.ej, 0
  br i1 %.not.i.i, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %bb.o
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.51) #41
  unreachable

bb.q:                                             ; preds = %bb.n
  %or.cond.i.i = and i1 %i.eh, %i.ei
  %i.ek = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.el = xor i1 %i.eh, %i.ek
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.el
  br i1 %or.cond.demorgan, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %bb.t

bb.r:                                             ; preds = %bb.n
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.52) #41
  unreachable

.critedge.i:                                      ; preds = %bb.o
  call void @_ZSt27__throw_bad_optional_accessv() #41
  unreachable

bb.s:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %i.em = load ptr, ptr %i.df, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  %i.en = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !649, !nonnull !68, !align !173 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !650
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !652, !nonnull !68, !align !173
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !247 ; 2 uses
  %i.es = sext i32 %i.di to i64
  %i.et = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !3
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 144
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !174 ; 2 uses
  %i.ex = sext i32 %i.eu to i64
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !161
  store i64 %i.ez, ptr %i.e, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #37
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.de
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !3
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.fc
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !161
  store i64 %i.fe, ptr %i.f, align 8, !tbaa !161
  %i.ff = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.fg, ptr %i.d, align 8, !tbaa !481
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  store ptr %i.d, ptr %4, align 8, !tbaa !482
  store ptr %i.e, ptr %i.m, align 8, !tbaa !251
  store ptr %i.f, ptr %i.n, align 8, !tbaa !251
  %i.fh = call noundef i32 @_ZZN8facebook5velox12SimpleVectorIlE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKlS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.fi = load ptr, ptr %i.dg, align 8, !tbaa !653, !nonnull !68, !align !389
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 1
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !576, !range !67, !noundef !68
  %i.fl = trunc nuw i8 %i.fk to i1
  %i.fm = sub nsw i32 0, %i.fh
  %i.fn = select i1 %i.fl, i32 %i.fh, i32 %i.fm
  %i.fo = icmp slt i32 %i.fn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  br i1 %i.fo, label %._crit_edge43, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit

._crit_edge43:                                    ; preds = %bb.s
  %.pre = load i32, ptr %i.dh, align 4, !tbaa !3
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge43, %bb.q
  %i.fp = phi i32 [ %.pre, %._crit_edge43 ], [ %i.di, %bb.q ]
  %i.fq = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !3
  %.not8.i = icmp eq i64 %.0920.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %.lr.ph.i.i.i, !llvm.loop !655

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit: ; preds = %bb.q, %bb.s, %bb.t, %bb.l
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.l ], [ %.019.i.i.i, %bb.s ], [ %.019.i.i.i, %bb.q ], [ 0, %bb.t ]
  %i.fr = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.p, ptr %i.fr, align 4, !tbaa !3
  %i.fs = icmp sgt i64 %i.s, 4
  br i1 %i.fs, label %bb.b, label %._crit_edge, !llvm.loop !656

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.137, align 8            ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %class.anon.137, align 8            ; 6 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %i.k = icmp slt i64 %i.j, 2
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add nsw i64 %i.j, -2                     ; 3 uses
  %i.m = lshr i64 %i.l, 1
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = add nsw i64 %i.j, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = and i64 %i.i, 4
  %i.s = icmp eq i64 %i.r, 0
  %i.t = lshr exact i64 %i.l, 1                   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.w
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.t
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.m, %bb.b ], [ %i.fs, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit ] ; 8 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
end_hunk_2
begin_hunk_3_@_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SK_:bb.a
  store i64 %i.ae, ptr %i.e, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #37
  %i.af = sext i32 %i.s to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !161
  store i64 %i.ak, ptr %i.f, align 8, !tbaa !161
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.am, ptr %i.d, align 8, !tbaa !481
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  store ptr %i.d, ptr %4, align 8, !tbaa !482
  store ptr %i.e, ptr %i.l, align 8, !tbaa !251
  store ptr %i.f, ptr %i.m, align 8, !tbaa !251
  %i.an = call noundef i32 @_ZZN8facebook5velox12SimpleVectorIlE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKlS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ao = load ptr, ptr %i.n, align 8, !tbaa !653
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !576, !range !67, !noundef !68
  %i.ar = trunc nuw i8 %i.aq to i1
  %i.as = sub nsw i32 0, %i.an
  %i.at = select i1 %i.ar, i32 %i.an, i32 %i.as
  %i.au = icmp slt i32 %i.at, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  %i.av = load i32, ptr %.sroa.08.021, align 4, !tbaa !3 ; 2 uses
  br i1 %i.au, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.aw = ptrtoint ptr %.sroa.08.021 to i64
  %i.ax = sub i64 %i.aw, %i.q                     ; 3 uses
  %i.ay = ashr exact i64 %i.ax, 2                 ; 2 uses
  %i.az = icmp sgt i64 %i.ay, 1
  br i1 %i.az, label %bb.d, label %bb.e, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn20, i64 8
  %i.bb = sub nsw i64 0, %i.ay
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bb
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bc, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.ax, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.c
  %i.bd = icmp eq i64 %i.ax, 4
  br i1 %i.bd, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.f:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %.pn20, i64 4
  %i.bf = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !3
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.b
  %i.bg = sext i32 %i.av to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.sroa.04.0.i = phi ptr [ %.sroa.08.021, %bb.g ], [ %.sroa.0.0.i, %bb.i ] ; 3 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.04.0.i, i64 -4 ; 3 uses
  %i.bh = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !650
  %i.bj = load ptr, ptr %i.k, align 8, !tbaa !652, !nonnull !68, !align !173
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !247 ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bg
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 144
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !174 ; 2 uses
  %i.bp = sext i32 %i.bm to i64
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !161
  store i64 %i.br, ptr %i.b, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %i.bs = sext i32 %i.bh to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !161
  store i64 %i.bx, ptr %i.c, align 8, !tbaa !161
  %i.by = load ptr, ptr %i.al, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.by, ptr %i.a, align 8, !tbaa !481
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  store ptr %i.a, ptr %3, align 8, !tbaa !482
  store ptr %i.b, ptr %i.o, align 8, !tbaa !251
  store ptr %i.c, ptr %i.p, align 8, !tbaa !251
  %i.bz = call noundef i32 @_ZZN8facebook5velox12SimpleVectorIlE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKlS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ca = load i8, ptr %i.ap, align 1, !tbaa !576, !range !67, !noundef !68
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = sub nsw i32 0, %i.bz
  %i.cd = select i1 %i.cb, i32 %i.bz, i32 %i.cc
  %i.ce = icmp slt i32 %i.cd, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br i1 %i.ce, label %bb.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.i:                                             ; preds = %bb.h
  %i.cf = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3
  store i32 %i.cf, ptr %.sroa.04.0.i, align 4, !tbaa !3
  br label %bb.h, !llvm.loop !671

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.h, %bb.f, %bb.e, %bb.d
  %.sink = phi ptr [ %0, %bb.f ], [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.04.0.i, %bb.h ]
  store i32 %i.av, ptr %.sink, align 4, !tbaa !3
  %.sroa.08.0 = getelementptr inbounds nuw i8, ptr %.sroa.08.021, i64 4 ; 2 uses
  %i.cg = icmp eq ptr %.sroa.08.0, %1
  br i1 %i.cg, label %.loopexit, label %bb.b, !llvm.loop !678

.loopexit:                                        ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_SL_(ptr %0, ptr %1, i64 noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.177") align 8 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.177", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.177", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph22

bb.b:                                             ; preds = %.lr.ph22
  %i.h = icmp eq i64 %i.j, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph22, !llvm.loop !679

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge14.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph22:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1421 = phi ptr [ %i.n, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01520 = phi i64 [ %i.j, %bb.b ], [ %2, %.lr.ph ]
  %i.i = phi i64 [ %i.q, %bb.b ], [ %i.d, %.lr.ph ]
  %i.j = add nsw i64 %.01520, -1                  ; 3 uses
  %i.k = lshr i64 %i.i, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %storemerge1421, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_SO_SK_(ptr %0, ptr nonnull %i.f, ptr %i.l, ptr nonnull %i.m, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.177") align 8 %3)
  %i.n = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEET_SO_SO_SO_SK_(ptr nonnull %i.f, ptr %storemerge1421, ptr %0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.177") align 8 %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_SL_(ptr %i.n, ptr %storemerge1421, i64 noundef %i.j, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.177") align 8 %3)
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.a
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 16
  br i1 %i.r, label %bb.b, label %.loopexit, !llvm.loop !679

.loopexit:                                        ; preds = %.lr.ph22, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit
  %.sroa.0.040 = phi ptr [ %1, %.lr.ph ], [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.040, i64 -4 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3    ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.g, ptr %i.e, align 4, !tbaa !3
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.h, %i.a                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %.sroa.019.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %i.k = add nsw i64 %i.j, -1
  %3 = sdiv i64 %i.k, 2
  %i.l = icmp sgt i64 %i.j, 2
  br i1 %i.l, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.m = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !680
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !239  ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.019.0.copyload, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread
  %.034.i.i = phi i64 [ %i.cb, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.r = shl i64 %.034.i.i, 1                     ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 4 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = load i32, ptr %i.t, align 4, !tbaa !3    ; 5 uses
  %i.x = load i32, ptr %i.v, align 4, !tbaa !3    ; 3 uses
  br i1 %.not.i.i.i3, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i6, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !682, !nonnull !68, !align !173
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !247  ; 2 uses
  %i.aa = sext i32 %i.w to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 6
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !161
  %i.ah = and i64 %i.ad, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ai, %i.ag
  %.not.i.i.i.i4 = icmp eq i64 %i.aj, 0
  %i.ak = sext i32 %i.x to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = lshr i64 %i.an, 6
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !161
  %i.ar = and i64 %i.an, 63
  %i.as = shl nuw i64 1, %i.ar
  %i.at = and i64 %i.as, %i.aq
  %.not.i.i.i11.i5 = icmp eq i64 %i.at, 0
  br label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i6

_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i6: ; preds = %bb.c, %.lr.ph.i.i
  %i.au = phi i1 [ %.not.i.i.i.i4, %bb.c ], [ false, %.lr.ph.i.i ] ; 3 uses
  %i.av = phi i1 [ %.not.i.i.i11.i5, %bb.c ], [ false, %.lr.ph.i.i ] ; 2 uses
  %or.cond.i7 = or i1 %i.au, %i.av
  br i1 %or.cond.i7, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i6
  %.sroa.0.0.copyload.i9 = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i10 = lshr i64 %.sroa.0.0.copyload.i9, 32
  %.sroa.37.0.extract.trunc.i.i11 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i10 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i11, label %bb.h [
    i32 1, label %bb.e
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.aw = and i64 %.sroa.0.0.copyload.i9, 65536
  %.not.i.i14 = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i14, label %bb.f, label %.critedge.i15

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.51) #41
  unreachable

bb.g:                                             ; preds = %bb.d
  %or.cond.i.i12 = and i1 %i.au, %i.av
  br i1 %or.cond.i.i12, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16

bb.h:                                             ; preds = %bb.d
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.52) #41
  unreachable

.critedge.i15:                                    ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #41
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i6
  %i.ax = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !683, !nonnull !68, !align !173 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !685
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !687, !nonnull !68, !align !173
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !247 ; 2 uses
  %i.bc = sext i32 %i.w to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 144
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !174 ; 2 uses
  %i.bh = sext i32 %i.be to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !161
  %i.bk = sext i32 %i.x to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !161
  %i.bq = tail call i32 @llvm.scmp.i32.i64(i64 %i.bj, i64 %i.bp) ; 2 uses
  %i.br = load ptr, ptr %i.q, align 8, !tbaa !688, !nonnull !68, !align !389
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !576, !range !67, !noundef !68
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = sub nsw i32 0, %i.bq
  %i.bw = select i1 %i.bu, i32 %i.bq, i32 %i.bv
  %.fr = freeze i32 %i.bw
  %i.bx = icmp slt i32 %.fr, 0
  br i1 %i.bx, label %bb.j, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread

_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16: ; preds = %bb.g
  %i.by = trunc i64 %.sroa.0.0.copyload.i9 to i1
  %i.bz = xor i1 %i.au, %i.by
  %.fr37 = freeze i1 %i.bz
  br i1 %.fr37, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16
  br label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread

_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread: ; preds = %bb.g, %bb.i, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16, %bb.j
  %i.ca = phi i32 [ %i.x, %bb.j ], [ %i.w, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16 ], [ %i.w, %bb.i ], [ %i.w, %bb.g ]
  %i.cb = phi i64 [ %i.u, %bb.j ], [ %i.s, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16 ], [ %i.s, %bb.i ], [ %i.s, %bb.g ] ; 3 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i
  store i32 %i.ca, ptr %i.cc, align 4, !tbaa !3
  %i.cd = icmp slt i64 %i.cb, %3
  br i1 %i.cd, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !689

._crit_edge.i.i:                                  ; preds = %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.cb, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread ] ; 5 uses
  %i.ce = and i64 %i.i, 4
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.cg = add nsw i64 %i.j, -2
  %i.ch = ashr exact i64 %i.cg, 1
  %i.ci = icmp eq i64 %.0.lcssa.i.i, %i.ch
  br i1 %i.ci, label %.thread.i, label %bb.l

.thread.i:                                        ; preds = %bb.k
  %i.cj = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ck = or disjoint i64 %i.cj, 1                ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3
  %i.cn = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !3
  br label %.lr.ph.i.i.preheader.i

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.l, %.thread.i
  %.1.i11.i = phi i64 [ %i.ck, %.thread.i ], [ %.0.lcssa.i.i, %bb.l ]
  %i.co = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !680
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !239 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cq, null
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.019.0.copyload, i64 8
  %i.cs = sext i32 %i.f to i64                    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %.lr.ph.i.i.preheader.i
  %.019.i.i.i = phi i64 [ %.0920.i.i67.i, %bb.t ], [ %.1.i11.i, %.lr.ph.i.i.preheader.i ] ; 4 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i67.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i67.i
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !3  ; 3 uses
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.cw = load ptr, ptr %i.cr, align 8, !tbaa !682, !nonnull !68, !align !173
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !247 ; 2 uses
  %i.cy = sext i32 %i.cv to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !3
  %i.db = zext i32 %i.da to i64                   ; 2 uses
  %i.dc = lshr i64 %i.db, 6
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.dc
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !161
  %i.df = and i64 %i.db, 63
  %i.dg = shl nuw i64 1, %i.df
  %i.dh = and i64 %i.dg, %i.de
  %.not.i.i.i.i = icmp eq i64 %i.dh, 0
  %i.di = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.cs
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !3
  %i.dk = zext i32 %i.dj to i64                   ; 2 uses
  %i.dl = lshr i64 %i.dk, 6
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !161
  %i.do = and i64 %i.dk, 63
  %i.dp = shl nuw i64 1, %i.do
  %i.dq = and i64 %i.dp, %i.dn
  %.not.i.i.i11.i = icmp eq i64 %i.dq, 0
  br label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i: ; preds = %bb.m, %.lr.ph.i.i.i
  %i.dr = phi i1 [ %.not.i.i.i.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 3 uses
  %i.ds = phi i1 [ %.not.i.i.i11.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 2 uses
  %or.cond.i = or i1 %i.dr, %i.ds
  br i1 %or.cond.i, label %bb.n, label %bb.s

bb.n:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.r [
    i32 1, label %bb.o
    i32 0, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.dt = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not.i.i, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.51) #41
  unreachable

bb.q:                                             ; preds = %bb.n
  %or.cond.i.i = and i1 %i.dr, %i.ds
  %i.du = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.dv = xor i1 %i.dr, %i.du
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.dv
  br i1 %or.cond.demorgan, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %bb.t

bb.r:                                             ; preds = %bb.n
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.52) #41
  unreachable

.critedge.i:                                      ; preds = %bb.o
  tail call void @_ZSt27__throw_bad_optional_accessv() #41
  unreachable

bb.s:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i
  %i.dw = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !683, !nonnull !68, !align !173 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !685
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !687, !nonnull !68, !align !173
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !247 ; 2 uses
  %i.eb = sext i32 %i.cv to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !3
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 144
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !174 ; 2 uses
  %i.eg = sext i32 %i.ed to i64
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %i.eg
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !161
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.cs
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %i.el
  %i.en = load i64, ptr %i.em, align 8, !tbaa !161
  %i.eo = tail call i32 @llvm.scmp.i32.i64(i64 %i.ei, i64 %i.en) ; 2 uses
  %i.ep = load ptr, ptr %i.ct, align 8, !tbaa !688, !nonnull !68, !align !389
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !576, !range !67, !noundef !68
  %i.es = trunc nuw i8 %i.er to i1
  %i.et = sub nsw i32 0, %i.eo
  %i.eu = select i1 %i.es, i32 %i.eo, i32 %i.et
  %i.ev = icmp slt i32 %i.eu, 0
  br i1 %i.ev, label %bb.t, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit

bb.t:                                             ; preds = %bb.q, %bb.s
  %i.ew = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.cv, ptr %i.ew, align 4, !tbaa !3
  %.not8.i = icmp eq i64 %.0920.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %.lr.ph.i.i.i, !llvm.loop !690

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit: ; preds = %bb.q, %bb.s, %bb.t, %bb.l
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.l ], [ %.019.i.i.i, %bb.s ], [ %.019.i.i.i, %bb.q ], [ 0, %bb.t ]
  %i.ex = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.f, ptr %i.ex, align 4, !tbaa !3
  %i.ey = icmp sgt i64 %i.i, 4
  br i1 %i.ey, label %bb.b, label %._crit_edge, !llvm.loop !691

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !385 ; 3 uses
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !573 ; 2 uses
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !385 ; 3 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 8 ; 2 uses
  %i.l = and i64 %i.c, 4
  %i.m = icmp eq i64 %i.l, 0
  %i.n = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.o = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.g, %bb.b ], [ %i.ew, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit ] ; 8 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3    ; 2 uses
  %i.t = icmp slt i64 %.08, %i.i
  br i1 %i.t, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.u = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !680
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !239  ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.w, null
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23.thread
  %.034.i = phi i64 [ %i.ch, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23.thread ], [ %.08, %.lr.ph.i.preheader ] ; 2 uses
  %i.x = shl i64 %.034.i, 1                       ; 2 uses
  %i.y = add i64 %i.x, 2                          ; 4 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %i.y
  %i.aa = or disjoint i64 %i.x, 1                 ; 2 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aa
  %i.ac = load i32, ptr %i.z, align 4, !tbaa !3   ; 5 uses
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !3  ; 3 uses
  br i1 %.not.i.i.i10, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i13, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !682, !nonnull !68, !align !173
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !247 ; 2 uses
  %i.ag = sext i32 %i.ac to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = lshr i64 %i.aj, 6
end_hunk_3
begin_hunk_4_@_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_:bb.a
  %.sroa.05.011.i.i = phi ptr [ %.sroa.0.012.i.i, %.lr.ph.i.i8 ], [ %.sroa.0.021.i.ptr, %bb.h ]
  %i.aa = load i32, ptr %.sroa.0.012.i.i, align 4, !tbaa !3
  store i32 %i.aa, ptr %.sroa.05.011.i.i, align 4, !tbaa !3
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i, i64 -4 ; 2 uses
  %i.ab = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %3, align 4
  %i.ac = load ptr, ptr %2, align 8, !tbaa !15
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(94) %2, ptr noundef nonnull %2, i32 noundef %i.q, i32 noundef %i.ab, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !1050
  %i.ag = and i64 %i.af, 6442450944
  %.not.i.i = icmp eq i64 %i.ag, 4294967296
  br i1 %.not.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, label %.lr.ph.i.i8, !llvm.loop !1051

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i8, %bb.h, %bb.g, %bb.f
  %.sink.i = phi ptr [ %0, %bb.g ], [ %0, %bb.f ], [ %.sroa.0.021.i.ptr, %bb.h ], [ %.sroa.0.012.i.i, %.lr.ph.i.i8 ]
  store i32 %i.q, ptr %.sink.i, align 4, !tbaa !3
  %.sroa.0.021.i.add = add nuw nsw i64 %.sroa.0.021.i.idx, 4 ; 2 uses
  %i.ah = icmp eq i64 %.sroa.0.021.i.add, 64
  br i1 %i.ah, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_.exit, label %bb.d, !llvm.loop !1052

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %1
  br i1 %i.aj, label %_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i.i
  %.sroa.0.09.i.i = phi ptr [ %i.ay, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i.i ], [ %i.ai, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_.exit ] ; 5 uses
  %i.ak = load i32, ptr %.sroa.0.09.i.i, align 4, !tbaa !3 ; 3 uses
  %.sroa.0.08.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i, i64 -4 ; 2 uses
  %i.al = load i32, ptr %.sroa.0.08.i.i.i, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i9.i.i.i = load i64, ptr %3, align 4
  %i.am = load ptr, ptr %2, align 8, !tbaa !15
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call i64 %i.ao(ptr noundef nonnull align 8 dereferenceable(94) %2, ptr noundef nonnull %2, i32 noundef %i.ak, i32 noundef %i.al, i64 %.sroa.01.0.copyload.i.i9.i.i.i), !inline_history !1053
  %i.aq = and i64 %i.ap, 6442450944
  %.not10.i.i.i = icmp eq i64 %i.aq, 4294967296
  br i1 %.not10.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i
  %.sroa.0.012.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.08.i.i.i, %.lr.ph.i.i ] ; 4 uses
  %.sroa.05.011.i.i.i = phi ptr [ %.sroa.0.012.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.09.i.i, %.lr.ph.i.i ]
  %i.ar = load i32, ptr %.sroa.0.012.i.i.i, align 4, !tbaa !3
  store i32 %i.ar, ptr %.sroa.05.011.i.i.i, align 4, !tbaa !3
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i.i, i64 -4 ; 2 uses
  %i.as = load i32, ptr %.sroa.0.0.i.i.i, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %3, align 4
  %i.at = load ptr, ptr %2, align 8, !tbaa !15
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call i64 %i.av(ptr noundef nonnull align 8 dereferenceable(94) %2, ptr noundef nonnull %2, i32 noundef %i.ak, i32 noundef %i.as, i64 %.sroa.01.0.copyload.i.i.i.i.i), !inline_history !1053
  %i.ax = and i64 %i.aw, 6442450944
  %.not.i.i.i = icmp eq i64 %i.ax, 4294967296
  br i1 %.not.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1051

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i
  %.sroa.05.0.lcssa.i.i.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i.i ], [ %.sroa.0.012.i.i.i, %.lr.ph.i.i.i ]
  store i32 %i.ak, ptr %.sroa.05.0.lcssa.i.i.i, align 4, !tbaa !3
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i, i64 4 ; 2 uses
  %i.az = icmp eq ptr %i.ay, %1
  br i1 %i.az, label %_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_.exit, label %.lr.ph.i.i, !llvm.loop !1054

bb.i:                                             ; preds = %bb.b
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_(ptr %0, ptr %1, ptr %2, ptr %3)
  br label %_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_.exit

_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_.exit: ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i.i, %bb.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.243", align 8 ; 5 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.243", align 8 ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph27

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEET_SG_SG_T0_.exit
  %i.h = icmp eq i64 %i.af, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph27, !llvm.loop !1055

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge19.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.016.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %3, ptr %6, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.j, align 8
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_RT0_(ptr %0, ptr %storemerge19.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_RT0_(ptr %0, ptr %storemerge19.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.loopexit

.lr.ph27:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1926 = phi ptr [ %.sroa.016.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02025 = phi i64 [ %i.af, %bb.b ], [ %2, %.lr.ph ]
  %i.k = phi i64 [ %i.ai, %bb.b ], [ %i.d, %.lr.ph ]
  %i.l = lshr i64 %i.k, 1
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  %i.n = getelementptr inbounds i8, ptr %storemerge1926, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_SG_T0_(ptr %0, ptr nonnull %i.f, ptr %i.m, ptr nonnull %i.n, ptr %3, ptr %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph27
  %.sroa.013.0.i.i = phi ptr [ %storemerge1926, %.lr.ph27 ], [ %.sroa.013.1.i.i, %bb.f ]
  %.sroa.016.0.i.i = phi ptr [ %i.f, %.lr.ph27 ], [ %i.v, %bb.f ]
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.sroa.016.1.i.i = phi ptr [ %.sroa.016.0.i.i, %bb.c ], [ %i.v, %bb.d ] ; 9 uses
  %i.o = load i32, ptr %.sroa.016.1.i.i, align 4, !tbaa !3
  %i.p = load i32, ptr %0, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %4, align 4
  %i.q = load ptr, ptr %3, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call i64 %i.s(ptr noundef nonnull align 8 dereferenceable(94) %3, ptr noundef nonnull %3, i32 noundef %i.o, i32 noundef %i.p, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !1056
  %i.u = and i64 %i.t, 6442450944
  %.not.i.i = icmp eq i64 %i.u, 4294967296
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.016.1.i.i, i64 4 ; 2 uses
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.d, !llvm.loop !1057

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.sroa.013.0.pn.i.i = phi ptr [ %.sroa.013.1.i.i, %.preheader.i.i ], [ %.sroa.013.0.i.i, %bb.d ]
  %.sroa.013.1.i.i = getelementptr inbounds i8, ptr %.sroa.013.0.pn.i.i, i64 -4 ; 6 uses
  %i.w = load i32, ptr %0, align 4, !tbaa !3
  %i.x = load i32, ptr %.sroa.013.1.i.i, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i10.i.i = load i64, ptr %4, align 4
  %i.y = load ptr, ptr %3, align 8, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(94) %3, ptr noundef nonnull %3, i32 noundef %i.w, i32 noundef %i.x, i64 %.sroa.01.0.copyload.i.i10.i.i), !inline_history !1056
  %i.ac = and i64 %i.ab, 6442450944
  %.not19.i.i = icmp eq i64 %i.ac, 4294967296
  br i1 %.not19.i.i, label %bb.e, label %.preheader.i.i, !llvm.loop !1058

bb.e:                                             ; preds = %.preheader.i.i
  %.not20.i.i = icmp ult ptr %.sroa.016.1.i.i, %.sroa.013.1.i.i
  br i1 %.not20.i.i, label %bb.f, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEET_SG_SG_T0_.exit

bb.f:                                             ; preds = %bb.e
  %i.ad = load i32, ptr %.sroa.016.1.i.i, align 4, !tbaa !3
  %i.ae = load i32, ptr %.sroa.013.1.i.i, align 4, !tbaa !3
  store i32 %i.ae, ptr %.sroa.016.1.i.i, align 4, !tbaa !3
  store i32 %i.ad, ptr %.sroa.013.1.i.i, align 4, !tbaa !3
  br label %bb.c, !llvm.loop !1059

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEET_SG_SG_T0_.exit: ; preds = %bb.e
  %i.af = add nsw i64 %.02025, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_T1_(ptr nonnull %.sroa.016.1.i.i, ptr %storemerge1926, i64 noundef %i.af, ptr nonnull %3, ptr nonnull %4)
  %i.ag = ptrtoint ptr %.sroa.016.1.i.i to i64
  %i.ah = sub i64 %i.ag, %i.a
  %i.ai = ashr exact i64 %i.ah, 2                 ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, 16
  br i1 %i.aj, label %bb.b, label %.loopexit, !llvm.loop !1055

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEET_SG_SG_T0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_RT0_.exit
  %.sroa.0.05 = phi ptr [ %1, %.lr.ph ], [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_RT0_.exit ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -4 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3    ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.g, ptr %i.e, align 4, !tbaa !3
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.h, %i.a                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !1060 ; 6 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !573 ; 2 uses
  %i.k = add nsw i64 %i.j, -1
  %3 = sdiv i64 %i.k, 2
  %i.l = icmp sgt i64 %i.j, 2
  br i1 %i.l, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.037.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.m = shl i64 %.037.i.i, 1                     ; 2 uses
  %i.n = add i64 %i.m, 2                          ; 2 uses
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %i.n
  %i.p = or disjoint i64 %i.m, 1                  ; 2 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %0, i64 %i.p
  %i.r = load i32, ptr %i.o, align 4, !tbaa !3
  %i.s = load i32, ptr %i.q, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0.copyload.i, align 4
  %i.t = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call i64 %i.v(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.0.copyload.i, ptr noundef nonnull %.sroa.0.0.copyload.i, i32 noundef %i.r, i32 noundef %i.s, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !1061
  %i.x = and i64 %i.w, 6442450944
  %.not.i.i = icmp eq i64 %i.x, 4294967296
  %spec.select.i.i = select i1 %.not.i.i, i64 %i.n, i64 %i.p ; 4 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %.037.i.i
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !3
  %i.ab = icmp slt i64 %spec.select.i.i, %3
  br i1 %i.ab, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1062

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.ac = and i64 %i.i, 4
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ae = add nsw i64 %i.j, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i, %i.af
  br i1 %i.ag, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !3
  br label %.lr.ph.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_RT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d, %.thread.i
  %.019.i.i.i.ph = phi i64 [ %.0.lcssa.i.i, %bb.d ], [ %i.ai, %.thread.i ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.e
  %.019.i.i.i = phi i64 [ %.0920.i.i67.i, %bb.e ], [ %.019.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i67.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i67.i ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.2.0.copyload.i, align 4
  %i.ao = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !15
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call i64 %i.aq(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.0.copyload.i, ptr noundef nonnull %.sroa.0.0.copyload.i, i32 noundef %i.an, i32 noundef %i.f, i64 %.sroa.01.0.copyload.i.i.i.i.i), !inline_history !1063
  %i.as = and i64 %i.ar, 6442450944
  %.not.i.i.i = icmp eq i64 %i.as, 4294967296
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_RT0_.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.at = load i32, ptr %i.am, align 4, !tbaa !3
  %i.au = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.at, ptr %i.au, align 4, !tbaa !3
  %.not8.i = icmp eq i64 %.0920.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !1064

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_RT0_.exit: ; preds = %.lr.ph.i.i.i, %bb.e, %bb.d
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %i.av = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.f, ptr %i.av, align 4, !tbaa !3
  %i.aw = icmp sgt i64 %i.i, 4
  br i1 %i.aw, label %bb.b, label %._crit_edge, !llvm.loop !1065

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit, %bb.b
  %.09 = phi i64 [ %i.g, %bb.b ], [ %i.aw, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit ] ; 8 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %.09
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3    ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !1060 ; 6 uses
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !573 ; 2 uses
  %i.r = icmp slt i64 %.09, %i.i
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.037.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.09, %bb.c ] ; 2 uses
  %i.s = shl i64 %.037.i, 1                       ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %0, i64 %i.v
  %i.x = load i32, ptr %i.u, align 4, !tbaa !3
  %i.y = load i32, ptr %i.w, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i = load i64, ptr %.sroa.2.0.copyload, align 4
  %i.z = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !15
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call i64 %i.ab(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.0.copyload, i32 noundef %i.x, i32 noundef %i.y, i64 %.sroa.01.0.copyload.i.i.i), !inline_history !1066
  %i.ad = and i64 %i.ac, 6442450944
  %.not.i = icmp eq i64 %i.ad, 4294967296
  %spec.select.i = select i1 %.not.i, i64 %i.t, i64 %i.v ; 4 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = getelementptr inbounds [4 x i8], ptr %0, i64 %.037.i
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !3
  %i.ah = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ah, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1062

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.09, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ai = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ai, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.aj = load i32, ptr %i.n, align 4, !tbaa !3
  store i32 %i.aj, ptr %i.o, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.ak = icmp sgt i64 %.1.i, %.09
  br i1 %i.ak, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0.copyload, align 4
  %i.an = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !15
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call i64 %i.ap(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.0.copyload, i32 noundef %i.am, i32 noundef %i.q, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !1067
  %i.ar = and i64 %i.aq, 6442450944
  %.not.i.i = icmp eq i64 %i.ar, 4294967296
  br i1 %.not.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.as = load i32, ptr %i.al, align 4, !tbaa !3
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i
  store i32 %i.as, ptr %i.at, align 4, !tbaa !3
  %i.au = icmp sgt i64 %.0920.i.i, %.09
  br i1 %i.au, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit, !llvm.loop !1064

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.q, ptr %i.av, align 4, !tbaa !3
  %.not = icmp eq i64 %.09, 0
  %i.aw = add nsw i64 %.09, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !1068

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_SG_T0_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !3
  %i.b = load i32, ptr %2, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i = load i64, ptr %5, align 4
  %i.c = load ptr, ptr %4, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call i64 %i.e(ptr noundef nonnull align 8 dereferenceable(94) %4, ptr noundef nonnull %4, i32 noundef %i.a, i32 noundef %i.b, i64 %.sroa.01.0.copyload.i.i), !inline_history !1069
  %i.g = and i64 %i.f, 6442450944
  %.not = icmp eq i64 %i.g, 4294967296
  %i.h = load i32, ptr %3, align 4, !tbaa !3      ; 2 uses
  %.sroa.01.0.copyload.i.i28 = load i64, ptr %5, align 4 ; 2 uses
  %i.i = load ptr, ptr %4, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %2, align 4, !tbaa !3
  %i.m = tail call i64 %i.k(ptr noundef nonnull align 8 dereferenceable(94) %4, ptr noundef nonnull %4, i32 noundef %i.l, i32 noundef %i.h, i64 %.sroa.01.0.copyload.i.i28), !inline_history !1069
  %i.n = and i64 %i.m, 6442450944
  %.not40 = icmp eq i64 %i.n, 4294967296
  br i1 %.not40, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %0, align 4, !tbaa !3
  %i.p = load i32, ptr %2, align 4, !tbaa !3
  store i32 %i.p, ptr %0, align 4, !tbaa !3
  store i32 %i.o, ptr %2, align 4, !tbaa !3
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.q = load i32, ptr %1, align 4, !tbaa !3
  %i.r = load i32, ptr %3, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i27 = load i64, ptr %5, align 4
  %i.s = load ptr, ptr %4, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call i64 %i.u(ptr noundef nonnull align 8 dereferenceable(94) %4, ptr noundef nonnull %4, i32 noundef %i.q, i32 noundef %i.r, i64 %.sroa.01.0.copyload.i.i27), !inline_history !1069
  %i.w = and i64 %i.v, 6442450944
  %.not41 = icmp eq i64 %i.w, 4294967296
  %i.x = load i32, ptr %0, align 4, !tbaa !3      ; 2 uses
  br i1 %.not41, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load i32, ptr %3, align 4, !tbaa !3
  store i32 %i.y, ptr %0, align 4, !tbaa !3
end_hunk_4
begin_hunk_5_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_T1_:bb.a
  %storemerge15.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.013.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_RT0_(ptr %0, ptr %storemerge15.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_RT0_(ptr %0, ptr %storemerge15.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph23:                                         ; preds = %.lr.ph23.preheader, %bb.b
  %storemerge1522 = phi ptr [ %.sroa.013.1.i.i, %bb.b ], [ %1, %.lr.ph23.preheader ] ; 3 uses
  %.01621 = phi i64 [ %i.ar, %bb.b ], [ %2, %.lr.ph23.preheader ]
  %i.i = phi i64 [ %i.au, %bb.b ], [ %i.d, %.lr.ph23.preheader ]
  %.sroa.0.0.copyload = load ptr, ptr %3, align 8 ; 6 uses
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %i.j = lshr i64 %i.i, 1
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  %i.l = getelementptr inbounds i8, ptr %storemerge1522, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_SI_T0_(ptr %0, ptr nonnull %i.f, ptr %i.k, ptr nonnull %i.l, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.247") align 8 %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph23
  %.sroa.013.0.i.i = phi ptr [ %i.f, %.lr.ph23 ], [ %i.aa, %bb.f ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge1522, %.lr.ph23 ], [ %.sroa.0.1.i.i, %bb.f ]
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.0.i.i, %bb.c ], [ %i.aa, %bb.d ] ; 9 uses
  %i.m = load i32, ptr %.sroa.013.1.i.i, align 4, !tbaa !3
  %i.n = load i32, ptr %0, align 4, !tbaa !3
  %i.o = load ptr, ptr %.sroa.4.0.copyload, align 8, !tbaa !247 ; 2 uses
  %i.p = sext i32 %i.m to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3
  %i.s = sext i32 %i.n to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0.copyload, align 4
  %i.v = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call i64 %i.x(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.0.copyload, i32 noundef %i.r, i32 noundef %i.u, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !1072
  %i.z = and i64 %i.y, 6442450944
  %.not.i.i = icmp eq i64 %i.z, 4294967296
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.013.1.i.i, i64 4 ; 2 uses
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.d, !llvm.loop !1073

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.d ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -4 ; 6 uses
  %i.ab = load i32, ptr %0, align 4, !tbaa !3
  %i.ac = load i32, ptr %.sroa.0.1.i.i, align 4, !tbaa !3
  %i.ad = load ptr, ptr %.sroa.4.0.copyload, align 8, !tbaa !247 ; 2 uses
  %i.ae = sext i32 %i.ab to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ah = sext i32 %i.ac to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i10.i.i = load i64, ptr %.sroa.5.0.copyload, align 4
  %i.ak = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call i64 %i.am(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.0.copyload, i32 noundef %i.ag, i32 noundef %i.aj, i64 %.sroa.01.0.copyload.i.i10.i.i), !inline_history !1072
  %i.ao = and i64 %i.an, 6442450944
  %.not16.i.i = icmp eq i64 %i.ao, 4294967296
  br i1 %.not16.i.i, label %bb.e, label %.preheader.i.i, !llvm.loop !1074

bb.e:                                             ; preds = %.preheader.i.i
  %.not17.i.i = icmp ult ptr %.sroa.013.1.i.i, %.sroa.0.1.i.i
  br i1 %.not17.i.i, label %bb.f, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEET_SI_SI_T0_.exit

bb.f:                                             ; preds = %bb.e
  %i.ap = load i32, ptr %.sroa.013.1.i.i, align 4, !tbaa !3
  %i.aq = load i32, ptr %.sroa.0.1.i.i, align 4, !tbaa !3
  store i32 %i.aq, ptr %.sroa.013.1.i.i, align 4, !tbaa !3
  store i32 %i.ap, ptr %.sroa.0.1.i.i, align 4, !tbaa !3
  br label %bb.c, !llvm.loop !1075

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEET_SI_SI_T0_.exit: ; preds = %bb.e
  %i.ar = add nsw i64 %.01621, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_T1_(ptr nonnull %.sroa.013.1.i.i, ptr %storemerge1522, i64 noundef %i.ar, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.247") align 8 %3)
  %i.as = ptrtoint ptr %.sroa.013.1.i.i to i64
  %i.at = sub i64 %i.as, %i.a
  %i.au = ashr exact i64 %i.at, 2                 ; 2 uses
  %i.av = icmp sgt i64 %i.au, 16
  br i1 %i.av, label %bb.b, label %.loopexit, !llvm.loop !1071

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEET_SI_SI_T0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_(ptr %0, ptr %1, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.247") align 8 %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_(ptr %0, ptr nonnull %i.e, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.247") align 8 %2)
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !1060 ; 6 uses
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !1076 ; 2 uses
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !573 ; 2 uses
  %i.f = icmp eq ptr %i.e, %1
  br i1 %i.f, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i
  %.sroa.03.08.i = phi ptr [ %i.ah, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i ], [ %i.e, %bb.b ] ; 5 uses
  %i.g = load i32, ptr %.sroa.03.08.i, align 4, !tbaa !3 ; 2 uses
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %.sroa.0.07.i.i = getelementptr inbounds i8, ptr %.sroa.03.08.i, i64 -4 ; 2 uses
  %i.i = load i32, ptr %.sroa.0.07.i.i, align 4, !tbaa !3
  %i.j = load ptr, ptr %.sroa.0.sroa.2.0.copyload, align 8, !tbaa !247 ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.h
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  %i.m = sext i32 %i.i to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i8.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload, align 4
  %i.p = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call i64 %i.r(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload, i32 noundef %i.l, i32 noundef %i.o, i64 %.sroa.01.0.copyload.i.i8.i.i), !inline_history !1077
  %i.t = and i64 %i.s, 6442450944
  %.not9.i.i = icmp eq i64 %i.t, 4294967296
  br i1 %.not9.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i, %.lr.ph.i.i
  %.sroa.0.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.07.i.i, %.lr.ph.i ] ; 4 uses
  %.sroa.04.010.i.i = phi ptr [ %.sroa.0.011.i.i, %.lr.ph.i.i ], [ %.sroa.03.08.i, %.lr.ph.i ]
  %i.u = load i32, ptr %.sroa.0.011.i.i, align 4, !tbaa !3
  store i32 %i.u, ptr %.sroa.04.010.i.i, align 4, !tbaa !3
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i, i64 -4 ; 2 uses
  %i.v = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !3
  %i.w = load ptr, ptr %.sroa.0.sroa.2.0.copyload, align 8, !tbaa !247 ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.h
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = sext i32 %i.v to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload, align 4
  %i.ac = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !15
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload, i32 noundef %i.y, i32 noundef %i.ab, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !1077
  %i.ag = and i64 %i.af, 6442450944
  %.not.i.i = icmp eq i64 %i.ag, 4294967296
  br i1 %.not.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i, label %.lr.ph.i.i, !llvm.loop !1078

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %.lr.ph.i
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.03.08.i, %.lr.ph.i ], [ %.sroa.0.011.i.i, %.lr.ph.i.i ]
  store i32 %i.g, ptr %.sroa.04.0.lcssa.i.i, align 4, !tbaa !3
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i, i64 4 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %1
  br i1 %i.ai, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_.exit, label %.lr.ph.i, !llvm.loop !1079

bb.c:                                             ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_(ptr %0, ptr %1, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.247") align 8 %2)
  br label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_.exit

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_.exit: ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.0.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_RT0_.exit
  %.sroa.0.05 = phi ptr [ %1, %.lr.ph ], [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_RT0_.exit ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -4 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3    ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.g, ptr %i.e, align 4, !tbaa !3
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.h, %i.a                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %.sroa.0.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !1060 ; 6 uses
  %.sroa.0.sroa.2.0.copyload.i = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 8, !tbaa !1076 ; 2 uses
  %.sroa.0.sroa.3.0.copyload.i = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8, !tbaa !573 ; 2 uses
  %i.k = add nsw i64 %i.j, -1
  %3 = sdiv i64 %i.k, 2
  %i.l = icmp sgt i64 %i.j, 2
  br i1 %i.l, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.036.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.m = shl i64 %.036.i.i, 1                     ; 2 uses
  %i.n = add i64 %i.m, 2                          ; 2 uses
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %i.n
  %i.p = or disjoint i64 %i.m, 1                  ; 2 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %0, i64 %i.p
  %i.r = load i32, ptr %i.o, align 4, !tbaa !3
  %i.s = load i32, ptr %i.q, align 4, !tbaa !3
  %i.t = load ptr, ptr %.sroa.0.sroa.2.0.copyload.i, align 8, !tbaa !247 ; 2 uses
  %i.u = sext i32 %i.r to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3
  %i.x = sext i32 %i.s to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload.i, align 4
  %i.aa = load ptr, ptr %.sroa.0.sroa.0.0.copyload.i, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call i64 %i.ac(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload.i, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload.i, i32 noundef %i.w, i32 noundef %i.z, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !1080
  %i.ae = and i64 %i.ad, 6442450944
  %.not.i.i = icmp eq i64 %i.ae, 4294967296
  %spec.select.i.i = select i1 %.not.i.i, i64 %i.n, i64 %i.p ; 4 uses
  %i.af = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ah = getelementptr inbounds [4 x i8], ptr %0, i64 %.036.i.i
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !3
  %i.ai = icmp slt i64 %spec.select.i.i, %3
  br i1 %i.ai, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1081

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.aj = and i64 %i.i, 4
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.al = add nsw i64 %i.j, -2
  %i.am = ashr exact i64 %i.al, 1
  %i.an = icmp eq i64 %.0.lcssa.i.i, %i.am
  br i1 %i.an, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.ao = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ap = or disjoint i64 %i.ao, 1                ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.as = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !3
  br label %.lr.ph.i.i.i

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_RT0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.thread.i
  %.1.i8.i = phi i64 [ %i.ap, %.thread.i ], [ %.0.lcssa.i.i, %bb.d ]
  %i.at = sext i32 %i.f to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.019.i.i.i = phi i64 [ %.1.i8.i, %.lr.ph.i.i.i ], [ %.0920.i.i910.i, %bb.f ] ; 3 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i910.i = lshr i64 %.0920.in.i.i.i, 1   ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i910.i ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = load ptr, ptr %.sroa.0.sroa.2.0.copyload.i, align 8, !tbaa !247 ; 2 uses
  %i.ax = sext i32 %i.av to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.at
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload.i, align 4
  %i.bc = load ptr, ptr %.sroa.0.sroa.0.0.copyload.i, align 8, !tbaa !15
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 80
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call i64 %i.be(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload.i, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload.i, i32 noundef %i.az, i32 noundef %i.bb, i64 %.sroa.01.0.copyload.i.i.i.i.i), !inline_history !1082
  %i.bg = and i64 %i.bf, 6442450944
  %.not.i.i.i = icmp eq i64 %i.bg, 4294967296
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_RT0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = load i32, ptr %i.au, align 4, !tbaa !3
  %i.bi = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !3
  %.not11.i = icmp eq i64 %.0920.i.i910.i, 0
  br i1 %.not11.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_RT0_.exit, label %bb.e, !llvm.loop !1083

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_RT0_.exit: ; preds = %bb.e, %bb.f, %bb.d
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i, %bb.e ], [ 0, %bb.f ]
  %i.bj = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.f, ptr %i.bj, align 4, !tbaa !3
  %i.bk = icmp sgt i64 %i.i, 4
  br i1 %i.bk, label %bb.b, label %._crit_edge, !llvm.loop !1084

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.g, %bb.b ], [ %i.bk, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit ] ; 8 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3    ; 2 uses
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !1060 ; 6 uses
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !1076 ; 2 uses
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !573 ; 2 uses
  %i.r = icmp slt i64 %.08, %i.i
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.036.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.08, %bb.c ] ; 2 uses
  %i.s = shl i64 %.036.i, 1                       ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %0, i64 %i.v
  %i.x = load i32, ptr %i.u, align 4, !tbaa !3
  %i.y = load i32, ptr %i.w, align 4, !tbaa !3
  %i.z = load ptr, ptr %.sroa.0.sroa.2.0.copyload, align 8, !tbaa !247 ; 2 uses
  %i.aa = sext i32 %i.x to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ad = sext i32 %i.y to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload, align 4
  %i.ag = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !15
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call i64 %i.ai(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload, i32 noundef %i.ac, i32 noundef %i.af, i64 %.sroa.01.0.copyload.i.i.i), !inline_history !1085
  %i.ak = and i64 %i.aj, 6442450944
  %.not.i = icmp eq i64 %i.ak, 4294967296
  %spec.select.i = select i1 %.not.i, i64 %i.t, i64 %i.v ; 4 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = getelementptr inbounds [4 x i8], ptr %0, i64 %.036.i
  store i32 %i.am, ptr %i.an, align 4, !tbaa !3
  %i.ao = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1081

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.08, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ap = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ap, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.aq = load i32, ptr %i.n, align 4, !tbaa !3
  store i32 %i.aq, ptr %i.o, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.ar = icmp sgt i64 %.1.i, %.08
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.as = sext i32 %i.q to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.019.i.i = phi i64 [ %.1.i, %.lr.ph.i.i ], [ %.0920.i.i, %bb.g ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3
  %i.av = load ptr, ptr %.sroa.0.sroa.2.0.copyload, align 8, !tbaa !247 ; 2 uses
  %i.aw = sext i32 %i.au to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.as
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload, align 4
  %i.bb = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !15
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call i64 %i.bd(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload, i32 noundef %i.ay, i32 noundef %i.ba, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !1086
  %i.bf = and i64 %i.be, 6442450944
  %.not.i.i = icmp eq i64 %i.bf, 4294967296
  br i1 %.not.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = load i32, ptr %i.at, align 4, !tbaa !3
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !3
  %i.bi = icmp sgt i64 %.0920.i.i, %.08
  br i1 %i.bi, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit, !llvm.loop !1083

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit: ; preds = %bb.f, %bb.g, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.g ], [ %.019.i.i, %bb.f ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.q, ptr %i.bj, align 4, !tbaa !3
  %.not = icmp eq i64 %.08, 0
  %i.bk = add nsw i64 %.08, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !1087

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_SI_T0_(ptr %0, ptr %1, ptr %2, ptr %3, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.247") align 8 %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !3
  %i.b = load i32, ptr %2, align 4, !tbaa !3
  %i.c = load ptr, ptr %4, align 8, !tbaa !1088   ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1090, !nonnull !68, !align !173 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !247  ; 2 uses
  %i.g = sext i32 %i.a to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3
  %i.j = sext i32 %i.b to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1091, !nonnull !68, !align !389 ; 4 uses
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.n, align 4
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call i64 %i.q(ptr noundef nonnull align 8 dereferenceable(94) %i.c, ptr noundef nonnull %i.c, i32 noundef %i.i, i32 noundef %i.l, i64 %.sroa.01.0.copyload.i.i), !inline_history !1092
  %i.s = and i64 %i.r, 6442450944
end_hunk_5
begin_hunk_6_@_ZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_:bb.a
  %i.ay = sub nsw i32 0, %i.av
  %i.az = select i1 %i.ax, i32 %i.av, i32 %i.ay
  %i.ba = icmp slt i32 %i.az, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br i1 %i.ba, label %bb.k, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SI_.exit.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.bb = load i32, ptr %.sroa.0.0.i.i.i.i.i, align 4, !tbaa !3
  store i32 %i.bb, ptr %.sroa.04.0.i.i.i.i.i, align 4, !tbaa !3
  br label %bb.j, !llvm.loop !1140

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SI_.exit.i.i.i.i: ; preds = %bb.j
  store i32 %i.aj, ptr %.sroa.04.0.i.i.i.i.i, align 4, !tbaa !3
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i, i64 4 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.j
  br i1 %i.bd, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SD_EUliE0_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit, label %bb.i, !llvm.loop !1141

bb.l:                                             ; preds = %bb.g
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_(ptr %i.h, ptr %i.j, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.285") align 8 %10)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SD_EUliE0_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SD_EUliE0_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit: ; preds = %bb.l, %bb.h, %bb.f, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SI_.exit.i.i.i.i, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SD_EUliE0_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %class.anon.289, align 8            ; 9 uses
  %6 = alloca %class.anon.278, align 8            ; 4 uses
  %7 = alloca %class.anon.279, align 8            ; 2 uses
  %8 = alloca %"struct.facebook::velox::CompareFlags", align 8 ; 5 uses
  %9 = alloca %class.anon.288, align 8            ; 5 uses
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store i64 %4, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  store ptr %6, ptr %9, align 8, !tbaa !385
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %8, ptr %i.a, align 8, !tbaa !573
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !239
  %.not = icmp eq ptr %i.c, null
  %i.d = load ptr, ptr %3, align 8, !tbaa !247    ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !247  ; 9 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %7, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %8, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %9, ptr %.sroa.3.0..sroa_idx, align 8
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 2
  %i.l = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = shl nuw nsw i64 %i.l, 1
  %i.n = xor i64 %i.m, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_SJ_(ptr %i.d, ptr %i.f, i64 noundef %i.n, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.290") align 8 %5)
  %i.o = icmp sgt i64 %i.j, 64
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_(ptr %i.d, ptr nonnull %i.p, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.290") align 8 %5)
  call void @_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_(ptr nonnull %i.p, ptr %i.f, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.290") align 8 %5)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_(ptr %i.d, ptr %i.f, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.290") align 8 %5)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit: ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit

bb.f:                                             ; preds = %bb.a
  %i.q = icmp eq ptr %i.d, %i.f
  br i1 %i.q, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = ptrtoint ptr %i.f to i64
  %i.s = ptrtoint ptr %i.d to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 2
  %i.v = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.u, i1 true)
  %i.w = shl nuw nsw i64 %i.v, 1
  %i.x = xor i64 %i.w, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_SJ_(ptr %i.d, ptr %i.f, i64 noundef %i.x, ptr nonnull %6, ptr nonnull %8)
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_(ptr %i.d, ptr %i.f, ptr nonnull %6, ptr nonnull %8)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit: ; preds = %bb.g, %bb.f, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_SJ_(ptr %0, ptr %1, i64 noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.282") align 8 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.282", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.282", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph22

bb.b:                                             ; preds = %.lr.ph22
  %i.h = icmp eq i64 %i.j, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph22, !llvm.loop !1142

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge14.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph22:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1421 = phi ptr [ %i.n, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01520 = phi i64 [ %i.j, %bb.b ], [ %2, %.lr.ph ]
  %i.i = phi i64 [ %i.q, %bb.b ], [ %i.d, %.lr.ph ]
  %i.j = add nsw i64 %.01520, -1                  ; 3 uses
  %i.k = lshr i64 %i.i, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %storemerge1421, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_SM_SI_(ptr %0, ptr nonnull %i.f, ptr %i.l, ptr nonnull %i.m, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.282") align 8 %3)
  %i.n = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEET_SM_SM_SM_SI_(ptr nonnull %i.f, ptr %storemerge1421, ptr %0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.282") align 8 %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_SJ_(ptr %i.n, ptr %storemerge1421, i64 noundef %i.j, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.282") align 8 %3)
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.a
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 16
  br i1 %i.r, label %bb.b, label %.loopexit, !llvm.loop !1142

.loopexit:                                        ; preds = %.lr.ph22, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.241, align 8            ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %class.anon.241, align 8            ; 6 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.h = ptrtoint ptr %1 to i64
  %i.i = sub i64 %i.h, %i.g
  %i.j = icmp sgt i64 %i.i, 4
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit
  %.sroa.0.040 = phi ptr [ %1, %.lr.ph ], [ %i.o, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit ]
  %i.o = getelementptr inbounds i8, ptr %.sroa.0.040, i64 -4 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3    ; 3 uses
  %i.q = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.q, ptr %i.o, align 4, !tbaa !3
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.r, %i.g                       ; 3 uses
  %i.t = ashr exact i64 %i.s, 2                   ; 3 uses
  %.sroa.019.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  %i.u = add nsw i64 %i.t, -1
  %5 = sdiv i64 %i.u, 2
  %i.v = icmp sgt i64 %i.t, 2
  br i1 %i.v, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread
  %.034.i.i = phi i64 [ %i.bw, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.y = shl i64 %.034.i.i, 1                     ; 2 uses
  %i.z = add i64 %i.y, 2                          ; 4 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %i.z
  %i.ab = or disjoint i64 %i.y, 1                 ; 2 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ab
  %i.ad = load i32, ptr %i.aa, align 4, !tbaa !3  ; 2 uses
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !3  ; 2 uses
  %i.af = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !1143
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !239 ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i3, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i6, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ai = zext i32 %i.ad to i64                   ; 2 uses
  %i.aj = lshr i64 %i.ai, 6
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !161
  %i.am = and i64 %i.ai, 63
  %i.an = shl nuw i64 1, %i.am
  %i.ao = and i64 %i.al, %i.an
  %.not.i.i.i.i4 = icmp eq i64 %i.ao, 0
  %i.ap = zext i32 %i.ae to i64                   ; 2 uses
  %i.aq = lshr i64 %i.ap, 6
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !161
  %i.at = and i64 %i.ap, 63
  %i.au = shl nuw i64 1, %i.at
  %i.av = and i64 %i.as, %i.au
  %.not.i.i.i11.i5 = icmp eq i64 %i.av, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i6

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i6: ; preds = %bb.c, %.lr.ph.i.i
  %i.aw = phi i1 [ %.not.i.i.i.i4, %bb.c ], [ false, %.lr.ph.i.i ] ; 3 uses
  %i.ax = phi i1 [ %.not.i.i.i11.i5, %bb.c ], [ false, %.lr.ph.i.i ] ; 2 uses
  %or.cond.i7 = or i1 %i.aw, %i.ax
  br i1 %or.cond.i7, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i6
  %.sroa.0.0.copyload.i9 = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i10 = lshr i64 %.sroa.0.0.copyload.i9, 32
  %.sroa.37.0.extract.trunc.i.i11 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i10 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i11, label %bb.h [
    i32 1, label %bb.e
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.ay = and i64 %.sroa.0.0.copyload.i9, 65536
  %.not.i.i14 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i14, label %bb.f, label %.critedge.i15

bb.f:                                             ; preds = %bb.e
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.51) #41
  unreachable

bb.g:                                             ; preds = %bb.d
  %or.cond.i.i12 = and i1 %i.aw, %i.ax
  br i1 %or.cond.i.i12, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16

bb.h:                                             ; preds = %bb.d
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.52) #41
  unreachable

.critedge.i15:                                    ; preds = %bb.e
  call void @_ZSt27__throw_bad_optional_accessv() #41
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i6
  %i.az = load ptr, ptr %i.w, align 8, !tbaa !1136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.ba = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !1145, !nonnull !68, !align !173
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1138
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 144
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !844 ; 2 uses
  %i.be = sext i32 %i.ad to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !161
  store i64 %i.bg, ptr %i.b, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %i.bh = sext i32 %i.ae to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !161
  store i64 %i.bj, ptr %i.c, align 8, !tbaa !161
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bl, ptr %i.a, align 8, !tbaa !481
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  store ptr %i.a, ptr %3, align 8, !tbaa !482
  store ptr %i.b, ptr %i.k, align 8, !tbaa !251
  store ptr %i.c, ptr %i.l, align 8, !tbaa !251
  %i.bm = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bn = load ptr, ptr %i.x, align 8, !tbaa !1146, !nonnull !68, !align !389
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !576, !range !67, !noundef !68
  %i.bq = trunc nuw i8 %i.bp to i1
  %i.br = sub nsw i32 0, %i.bm
  %i.bs = select i1 %i.bq, i32 %i.bm, i32 %i.br
  %.fr = freeze i32 %i.bs
  %i.bt = icmp slt i32 %.fr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br i1 %i.bt, label %bb.j, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16: ; preds = %bb.g
  %i.bu = trunc i64 %.sroa.0.0.copyload.i9 to i1
  %i.bv = xor i1 %i.aw, %i.bu
  %.fr37 = freeze i1 %i.bv
  br i1 %.fr37, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread: ; preds = %bb.g, %bb.i, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16, %bb.j
  %i.bw = phi i64 [ %i.ab, %bb.j ], [ %i.z, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16 ], [ %i.z, %bb.i ], [ %i.z, %bb.g ] ; 4 uses
  %i.bx = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !3
  %i.ca = icmp slt i64 %i.bw, %5
  br i1 %i.ca, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1147

._crit_edge.i.i:                                  ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.bw, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread ] ; 5 uses
  %i.cb = and i64 %i.s, 4
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.cd = add nsw i64 %i.t, -2
  %i.ce = ashr exact i64 %i.cd, 1
  %i.cf = icmp eq i64 %.0.lcssa.i.i, %i.ce
  br i1 %i.cf, label %.thread.i, label %bb.l

.thread.i:                                        ; preds = %bb.k
  %i.cg = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ch = or disjoint i64 %i.cg, 1                ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !3
  br label %.lr.ph.i.i.preheader.i

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.l, %.thread.i
  %.1.i11.i = phi i64 [ %i.ch, %.thread.i ], [ %.0.lcssa.i.i, %bb.l ]
  %i.cl = zext i32 %i.p to i64                    ; 2 uses
  %i.cm = lshr i64 %i.cl, 6
  %i.cn = and i64 %i.cl, 63
  %i.co = shl nuw i64 1, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  %i.cq = sext i32 %i.p to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 16
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %.lr.ph.i.i.preheader.i
  %.019.i.i.i = phi i64 [ %.0920.i.i67.i, %bb.t ], [ %.1.i11.i, %.lr.ph.i.i.preheader.i ] ; 4 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i67.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i67.i ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3  ; 3 uses
  %i.cu = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !1143
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !239 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.cx = zext i32 %i.ct to i64                   ; 2 uses
  %i.cy = lshr i64 %i.cx, 6
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !161
  %i.db = and i64 %i.cx, 63
  %i.dc = shl nuw i64 1, %i.db
  %i.dd = and i64 %i.da, %i.dc
  %.not.i.i.i.i = icmp eq i64 %i.dd, 0
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cm
  %i.df = load i64, ptr %i.de, align 8, !tbaa !161
  %i.dg = and i64 %i.df, %i.co
  %.not.i.i.i11.i = icmp eq i64 %i.dg, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i: ; preds = %bb.m, %.lr.ph.i.i.i
  %i.dh = phi i1 [ %.not.i.i.i.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 3 uses
  %i.di = phi i1 [ %.not.i.i.i11.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 2 uses
  %or.cond.i = or i1 %i.dh, %i.di
  br i1 %or.cond.i, label %bb.n, label %bb.s

bb.n:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.r [
    i32 1, label %bb.o
    i32 0, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.dj = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.dj, 0
  br i1 %.not.i.i, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %bb.o
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.51) #41
  unreachable

bb.q:                                             ; preds = %bb.n
  %or.cond.i.i = and i1 %i.dh, %i.di
  %i.dk = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.dl = xor i1 %i.dh, %i.dk
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.dl
  br i1 %or.cond.demorgan, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %bb.t

bb.r:                                             ; preds = %bb.n
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.52) #41
  unreachable

.critedge.i:                                      ; preds = %bb.o
  call void @_ZSt27__throw_bad_optional_accessv() #41
  unreachable

bb.s:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %i.dm = load ptr, ptr %i.cp, align 8, !tbaa !1136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  %i.dn = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !1145, !nonnull !68, !align !173
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1138
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 144
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !844 ; 2 uses
  %i.dr = sext i32 %i.ct to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.dr
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !161
  store i64 %i.dt, ptr %i.e, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #37
  %i.du = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.cq
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !161
  store i64 %i.dv, ptr %i.f, align 8, !tbaa !161
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.dx, ptr %i.d, align 8, !tbaa !481
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  store ptr %i.d, ptr %4, align 8, !tbaa !482
  store ptr %i.e, ptr %i.m, align 8, !tbaa !251
  store ptr %i.f, ptr %i.n, align 8, !tbaa !251
  %i.dy = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.dz = load ptr, ptr %i.cr, align 8, !tbaa !1146, !nonnull !68, !align !389
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 1
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !576, !range !67, !noundef !68
  %i.ec = trunc nuw i8 %i.eb to i1
  %i.ed = sub nsw i32 0, %i.dy
  %i.ee = select i1 %i.ec, i32 %i.dy, i32 %i.ed
  %i.ef = icmp slt i32 %i.ee, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  br i1 %i.ef, label %._crit_edge43, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit

._crit_edge43:                                    ; preds = %bb.s
  %.pre = load i32, ptr %i.cs, align 4, !tbaa !3
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge43, %bb.q
  %i.eg = phi i32 [ %.pre, %._crit_edge43 ], [ %i.ct, %bb.q ]
  %i.eh = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !3
  %.not8.i = icmp eq i64 %.0920.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %.lr.ph.i.i.i, !llvm.loop !1148

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit: ; preds = %bb.q, %bb.s, %bb.t, %bb.l
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.l ], [ %.019.i.i.i, %bb.s ], [ %.019.i.i.i, %bb.q ], [ 0, %bb.t ]
  %i.ei = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.p, ptr %i.ei, align 4, !tbaa !3
  %i.ej = icmp sgt i64 %i.s, 4
  br i1 %i.ej, label %bb.b, label %._crit_edge, !llvm.loop !1149

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.241, align 8            ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %class.anon.241, align 8            ; 6 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %i.k = icmp slt i64 %i.j, 2
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add nsw i64 %i.j, -2                     ; 3 uses
  %i.m = lshr i64 %i.l, 1
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = add nsw i64 %i.j, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = and i64 %i.i, 4
  %i.s = icmp eq i64 %i.r, 0
  %i.t = lshr exact i64 %i.l, 1                   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.w
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.t
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_SI_SJ_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.m, %bb.b ], [ %i.ej, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_SI_SJ_T2_.exit ] ; 8 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3   ; 3 uses
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !385 ; 2 uses
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !573 ; 2 uses
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !385 ; 6 uses
  %i.ab = icmp slt i64 %.08, %i.o
  br i1 %i.ab, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit23.thread
  %.034.i = phi i64 [ %i.cc, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit23.thread ], [ %.08, %.lr.ph.i.preheader ] ; 2 uses
  %i.ae = shl i64 %.034.i, 1                      ; 2 uses
  %i.af = add i64 %i.ae, 2                        ; 4 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %0, i64 %i.af
end_hunk_6
begin_hunk_7_@_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_:bb.a
  %.pn20 = phi ptr [ %0, %.lr.ph ], [ %.sroa.08.021, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ] ; 2 uses
  %i.q = load i32, ptr %.sroa.08.021, align 4, !tbaa !3
  %i.r = load i32, ptr %0, align 4, !tbaa !3
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !1136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !1138
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !844  ; 2 uses
  %i.w = sext i32 %i.q to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !161
  store i64 %i.y, ptr %i.e, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #37
  %i.z = sext i32 %i.r to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !161
  store i64 %i.ab, ptr %i.f, align 8, !tbaa !161
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.ad, ptr %i.d, align 8, !tbaa !481
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  store ptr %i.d, ptr %4, align 8, !tbaa !482
  store ptr %i.e, ptr %i.k, align 8, !tbaa !251
  store ptr %i.f, ptr %i.l, align 8, !tbaa !251
  %i.ae = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.af = load ptr, ptr %i.m, align 8, !tbaa !1146
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !576, !range !67, !noundef !68
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = sub nsw i32 0, %i.ae
  %i.ak = select i1 %i.ai, i32 %i.ae, i32 %i.aj
  %i.al = icmp slt i32 %i.ak, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  %i.am = load i32, ptr %.sroa.08.021, align 4, !tbaa !3 ; 2 uses
  br i1 %i.al, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.an = ptrtoint ptr %.sroa.08.021 to i64
  %i.ao = sub i64 %i.an, %i.p                     ; 3 uses
  %i.ap = ashr exact i64 %i.ao, 2                 ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, 1
  br i1 %i.aq, label %bb.d, label %bb.e, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn20, i64 8
  %i.as = sub nsw i64 0, %i.ap
  %i.at = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.as
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.at, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.ao, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.c
  %i.au = icmp eq i64 %i.ao, 4
  br i1 %i.au, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %.pn20, i64 4
  %i.aw = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !3
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.b
  %i.ax = sext i32 %i.am to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.sroa.04.0.i = phi ptr [ %.sroa.08.021, %bb.g ], [ %.sroa.0.0.i, %bb.i ] ; 3 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.04.0.i, i64 -4 ; 3 uses
  %i.ay = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.az = load ptr, ptr %i.j, align 8, !tbaa !1138
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 144
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !844 ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.ax
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !161
  store i64 %i.bd, ptr %i.b, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %i.be = sext i32 %i.ay to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !161
  store i64 %i.bg, ptr %i.c, align 8, !tbaa !161
  %i.bh = load ptr, ptr %i.ac, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bh, ptr %i.a, align 8, !tbaa !481
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  store ptr %i.a, ptr %3, align 8, !tbaa !482
  store ptr %i.b, ptr %i.n, align 8, !tbaa !251
  store ptr %i.c, ptr %i.o, align 8, !tbaa !251
  %i.bi = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bj = load i8, ptr %i.ag, align 1, !tbaa !576, !range !67, !noundef !68
  %i.bk = trunc nuw i8 %i.bj to i1
  %i.bl = sub nsw i32 0, %i.bi
  %i.bm = select i1 %i.bk, i32 %i.bi, i32 %i.bl
  %i.bn = icmp slt i32 %i.bm, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br i1 %i.bn, label %bb.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.i:                                             ; preds = %bb.h
  %i.bo = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3
  store i32 %i.bo, ptr %.sroa.04.0.i, align 4, !tbaa !3
  br label %bb.h, !llvm.loop !1140

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.h, %bb.f, %bb.e, %bb.d
  %.sink = phi ptr [ %0, %bb.f ], [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.04.0.i, %bb.h ]
  store i32 %i.am, ptr %.sink, align 4, !tbaa !3
  %.sroa.08.0 = getelementptr inbounds nuw i8, ptr %.sroa.08.021, i64 4 ; 2 uses
  %i.bp = icmp eq ptr %.sroa.08.0, %1
  br i1 %i.bp, label %.loopexit, label %bb.b, !llvm.loop !1169

.loopexit:                                        ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_SJ_(ptr %0, ptr %1, i64 noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.290") align 8 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.290", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.290", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph22

bb.b:                                             ; preds = %.lr.ph22
  %i.h = icmp eq i64 %i.j, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph22, !llvm.loop !1170

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge14.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph22:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1421 = phi ptr [ %i.n, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01520 = phi i64 [ %i.j, %bb.b ], [ %2, %.lr.ph ]
  %i.i = phi i64 [ %i.q, %bb.b ], [ %i.d, %.lr.ph ]
  %i.j = add nsw i64 %.01520, -1                  ; 3 uses
  %i.k = lshr i64 %i.i, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %storemerge1421, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_SM_SI_(ptr %0, ptr nonnull %i.f, ptr %i.l, ptr nonnull %i.m, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.290") align 8 %3)
  %i.n = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEET_SM_SM_SM_SI_(ptr nonnull %i.f, ptr %storemerge1421, ptr %0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.290") align 8 %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_SJ_(ptr %i.n, ptr %storemerge1421, i64 noundef %i.j, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.290") align 8 %3)
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.a
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 16
  br i1 %i.r, label %bb.b, label %.loopexit, !llvm.loop !1170

.loopexit:                                        ; preds = %.lr.ph22, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit
  %.sroa.0.041 = phi ptr [ %1, %.lr.ph ], [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.041, i64 -4 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3    ; 3 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.g, ptr %i.e, align 4, !tbaa !3
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.h, %i.a                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %.sroa.019.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %i.k = add nsw i64 %i.j, -1
  %3 = sdiv i64 %i.k, 2
  %i.l = icmp sgt i64 %i.j, 2
  br i1 %i.l, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.m = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !1171
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !239  ; 3 uses
  %.not.i.i.i.i4 = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread
  %.034.i.i = phi i64 [ %i.bj, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.q = shl i64 %.034.i.i, 1                     ; 2 uses
  %i.r = add i64 %i.q, 2                          ; 4 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %0, i64 %i.r
  %i.t = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = load i32, ptr %i.s, align 4, !tbaa !3    ; 5 uses
  %i.w = load i32, ptr %i.u, align 4, !tbaa !3    ; 3 uses
  br i1 %.not.i.i.i.i4, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i7, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.x = zext i32 %i.v to i64                     ; 2 uses
  %i.y = lshr i64 %i.x, 6
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !161
  %i.ab = and i64 %i.x, 63
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = and i64 %i.aa, %i.ac
  %.not.i.i.i.i.i5 = icmp eq i64 %i.ad, 0
  %i.ae = zext i32 %i.w to i64                    ; 2 uses
  %i.af = lshr i64 %i.ae, 6
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !161
  %i.ai = and i64 %i.ae, 63
  %i.aj = shl nuw i64 1, %i.ai
  %i.ak = and i64 %i.ah, %i.aj
  %.not.i.i.i11.i.i6 = icmp eq i64 %i.ak, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i7

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i7: ; preds = %bb.c, %.lr.ph.i.i
  %i.al = phi i1 [ %.not.i.i.i.i.i5, %bb.c ], [ false, %.lr.ph.i.i ] ; 3 uses
  %i.am = phi i1 [ %.not.i.i.i11.i.i6, %bb.c ], [ false, %.lr.ph.i.i ] ; 2 uses
  %or.cond.i.i8 = or i1 %i.al, %i.am
  br i1 %or.cond.i.i8, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i7
  %.sroa.0.0.copyload.i.i10 = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i.i11 = lshr i64 %.sroa.0.0.copyload.i.i10, 32
  %.sroa.37.0.extract.trunc.i.i.i12 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i.i11 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i.i12, label %bb.h [
    i32 1, label %bb.e
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.an = and i64 %.sroa.0.0.copyload.i.i10, 65536
  %.not.i.i.i15 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i15, label %bb.f, label %.critedge.i.i16

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.51) #41
  unreachable

bb.g:                                             ; preds = %bb.d
  %or.cond.i.i.i13 = and i1 %i.al, %i.am
  br i1 %or.cond.i.i.i13, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit

bb.h:                                             ; preds = %bb.d
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.52) #41
  unreachable

.critedge.i.i16:                                  ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #41
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i7
  %i.ao = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !1173, !nonnull !68, !align !173
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1175
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 144
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !844 ; 2 uses
  %i.as = sext i32 %i.v to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !161
  %i.av = sext i32 %i.w to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !161
  %i.ay = tail call i32 @llvm.ucmp.i32.i64(i64 %i.au, i64 %i.ax) ; 2 uses
  %i.az = load ptr, ptr %i.p, align 8, !tbaa !1177, !nonnull !68, !align !389
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !576, !range !67, !noundef !68
  %i.bc = trunc nuw i8 %i.bb to i1
  %i.bd = sub nsw i32 0, %i.ay
  %i.be = select i1 %i.bc, i32 %i.ay, i32 %i.bd
  %.fr = freeze i32 %i.be
  %i.bf = icmp slt i32 %.fr, 0
  br i1 %i.bf, label %bb.j, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit: ; preds = %bb.g
  %i.bg = trunc i64 %.sroa.0.0.copyload.i.i10 to i1
  %i.bh = xor i1 %i.al, %i.bg
  %.fr38 = freeze i1 %i.bh
  br i1 %.fr38, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread: ; preds = %bb.g, %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit, %bb.j
  %i.bi = phi i32 [ %i.w, %bb.j ], [ %i.v, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit ], [ %i.v, %bb.i ], [ %i.v, %bb.g ]
  %i.bj = phi i64 [ %i.t, %bb.j ], [ %i.r, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit ], [ %i.r, %bb.i ], [ %i.r, %bb.g ] ; 3 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i
  store i32 %i.bi, ptr %i.bk, align 4, !tbaa !3
  %i.bl = icmp slt i64 %i.bj, %3
  br i1 %i.bl, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1178

._crit_edge.i.i:                                  ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.bj, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread ] ; 5 uses
  %i.bm = and i64 %i.i, 4
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.bo = add nsw i64 %i.j, -2
  %i.bp = ashr exact i64 %i.bo, 1
  %i.bq = icmp eq i64 %.0.lcssa.i.i, %i.bp
  br i1 %i.bq, label %.thread.i, label %bb.l

.thread.i:                                        ; preds = %bb.k
  %i.br = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.bs = or disjoint i64 %i.br, 1                ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !3
  br label %.lr.ph.i.i.preheader.i

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.l, %.thread.i
  %.1.i11.i = phi i64 [ %i.bs, %.thread.i ], [ %.0.lcssa.i.i, %bb.l ]
  %i.bw = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !1171
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !239 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.by, null
  %i.bz = zext i32 %i.f to i64                    ; 2 uses
  %i.ca = lshr i64 %i.bz, 6
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.ca
  %i.cc = and i64 %i.bz, 63
  %i.cd = shl nuw i64 1, %i.cc
  %i.ce = sext i32 %i.f to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %.lr.ph.i.i.preheader.i
  %.018.i.i.i = phi i64 [ %.0919.i.i67.i, %bb.t ], [ %.1.i11.i, %.lr.ph.i.i.preheader.i ] ; 4 uses
  %.0919.in.i.i.i = add nsw i64 %.018.i.i.i, -1
  %.0919.i.i67.i = lshr i64 %.0919.in.i.i.i, 1    ; 3 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0919.i.i67.i
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3  ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.ci = zext i32 %i.ch to i64                   ; 2 uses
  %i.cj = lshr i64 %i.ci, 6
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !161
  %i.cm = and i64 %i.ci, 63
  %i.cn = shl nuw i64 1, %i.cm
  %i.co = and i64 %i.cl, %i.cn
  %.not.i.i.i.i.i = icmp eq i64 %i.co, 0
  %i.cp = load i64, ptr %i.cb, align 8, !tbaa !161
  %i.cq = and i64 %i.cp, %i.cd
  %.not.i.i.i11.i.i = icmp eq i64 %i.cq, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i: ; preds = %bb.m, %.lr.ph.i.i.i
  %i.cr = phi i1 [ %.not.i.i.i.i.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 3 uses
  %i.cs = phi i1 [ %.not.i.i.i11.i.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 2 uses
  %or.cond.i.i = or i1 %i.cr, %i.cs
  br i1 %or.cond.i.i, label %bb.n, label %bb.s

bb.n:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i
  %.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.37.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i.i, label %bb.r [
    i32 1, label %bb.o
    i32 0, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.ct = and i64 %.sroa.0.0.copyload.i.i, 65536
  %.not.i.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i.i, label %bb.p, label %.critedge.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.51) #41
  unreachable

bb.q:                                             ; preds = %bb.n
  %or.cond.i.i.i = and i1 %i.cr, %i.cs
  %i.cu = trunc i64 %.sroa.0.0.copyload.i.i to i1
  %i.cv = xor i1 %i.cr, %i.cu
  %or.cond.demorgan = or i1 %or.cond.i.i.i, %i.cv
  br i1 %or.cond.demorgan, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %bb.t

bb.r:                                             ; preds = %bb.n
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.52) #41
  unreachable

.critedge.i.i:                                    ; preds = %bb.o
  tail call void @_ZSt27__throw_bad_optional_accessv() #41
  unreachable

bb.s:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i
  %i.cw = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !1173, !nonnull !68, !align !173
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !1175
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 144
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !844 ; 2 uses
  %i.da = sext i32 %i.ch to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.da
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !161
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.ce
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !161
  %i.df = tail call i32 @llvm.ucmp.i32.i64(i64 %i.dc, i64 %i.de) ; 2 uses
  %i.dg = load ptr, ptr %i.cf, align 8, !tbaa !1177, !nonnull !68, !align !389
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !576, !range !67, !noundef !68
  %i.dj = trunc nuw i8 %i.di to i1
  %i.dk = sub nsw i32 0, %i.df
  %i.dl = select i1 %i.dj, i32 %i.df, i32 %i.dk
  %i.dm = icmp slt i32 %i.dl, 0
  br i1 %i.dm, label %bb.t, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit

bb.t:                                             ; preds = %bb.q, %bb.s
  %i.dn = getelementptr inbounds [4 x i8], ptr %0, i64 %.018.i.i.i
  store i32 %i.ch, ptr %i.dn, align 4, !tbaa !3
  %.not8.i = icmp eq i64 %.0919.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %.lr.ph.i.i.i, !llvm.loop !1179

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit: ; preds = %bb.q, %bb.t, %bb.s, %bb.l
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.l ], [ %.018.i.i.i, %bb.s ], [ 0, %bb.t ], [ %.018.i.i.i, %bb.q ]
  %i.do = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.f, ptr %i.do, align 4, !tbaa !3
  %i.dp = icmp sgt i64 %i.i, 4
  br i1 %i.dp, label %bb.b, label %._crit_edge, !llvm.loop !1180

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !385 ; 2 uses
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !573 ; 2 uses
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !385 ; 3 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 8 ; 2 uses
  %i.k = and i64 %i.c, 4
  %i.l = icmp eq i64 %i.k, 0
  %i.m = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.n = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_SI_SJ_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.g, %bb.b ], [ %i.do, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_SI_SJ_T2_.exit ] ; 8 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3    ; 3 uses
  %i.s = icmp slt i64 %.08, %i.i
  br i1 %i.s, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.t = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !1171
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !239  ; 3 uses
  %.not.i.i.i.i9 = icmp eq ptr %i.v, null
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread
  %.034.i = phi i64 [ %i.bp, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread ], [ %.08, %.lr.ph.i.preheader ] ; 2 uses
  %i.w = shl i64 %.034.i, 1                       ; 2 uses
  %i.x = add i64 %i.w, 2                          ; 4 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %i.x
  %i.z = or disjoint i64 %i.w, 1                  ; 2 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %i.z
  %i.ab = load i32, ptr %i.y, align 4, !tbaa !3   ; 5 uses
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !3  ; 3 uses
  br i1 %.not.i.i.i.i9, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i12, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.ad = zext i32 %i.ab to i64                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 6
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !161
  %i.ah = and i64 %i.ad, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ag, %i.ai
  %.not.i.i.i.i.i10 = icmp eq i64 %i.aj, 0
  %i.ak = zext i32 %i.ac to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 6
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !161
  %i.ao = and i64 %i.ak, 63
  %i.ap = shl nuw i64 1, %i.ao
  %i.aq = and i64 %i.an, %i.ap
  %.not.i.i.i11.i.i11 = icmp eq i64 %i.aq, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i12

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i12: ; preds = %bb.d, %.lr.ph.i
  %i.ar = phi i1 [ %.not.i.i.i.i.i10, %bb.d ], [ false, %.lr.ph.i ] ; 3 uses
  %i.as = phi i1 [ %.not.i.i.i11.i.i11, %bb.d ], [ false, %.lr.ph.i ] ; 2 uses
  %or.cond.i.i13 = or i1 %i.ar, %i.as
  br i1 %or.cond.i.i13, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i12
end_hunk_7
begin_hunk_8_@_ZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_:bb.a
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SE_SF_EUliE0_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit

bb.f:                                             ; preds = %bb.a
  %i.t = icmp eq ptr %i.g, %i.i
  br i1 %i.t, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SE_SF_EUliE0_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = ptrtoint ptr %i.i to i64
  %i.v = ptrtoint ptr %i.g to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2
  %i.y = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = shl nuw nsw i64 %i.y, 1
  %i.aa = xor i64 %i.z, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SK_SL_(ptr %i.g, ptr %i.i, i64 noundef %i.aa, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.305") align 8 %11)
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SK_(ptr %i.g, ptr %i.i, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.305") align 8 %11)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SE_SF_EUliE0_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SE_SF_EUliE0_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit: ; preds = %bb.g, %bb.f, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SE_SF_EUliE0_EEvT0_T1_SC_SF_EUliiE0_EvT_SL_SI_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %7 = alloca %class.anon.309, align 8            ; 9 uses
  %8 = alloca %class.anon.298, align 8            ; 5 uses
  %9 = alloca %class.anon.299, align 8            ; 3 uses
  %10 = alloca %"struct.facebook::velox::CompareFlags", align 8 ; 5 uses
  %11 = alloca %class.anon.308, align 8           ; 5 uses
  store ptr %1, ptr %8, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.a, align 8
  store ptr %3, ptr %9, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %4, ptr %i.b, align 8
  store i64 %6, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  store ptr %8, ptr %11, align 8, !tbaa !385
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %10, ptr %i.c, align 8, !tbaa !573
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !239
  %.not = icmp eq ptr %i.e, null
  %i.f = load ptr, ptr %5, align 8, !tbaa !247    ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !247  ; 9 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %9, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %10, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %11, ptr %.sroa.3.0..sroa_idx, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE0_EvT_SL_SI_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.f to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 2
  %i.n = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.m, i1 true)
  %i.o = shl nuw nsw i64 %i.n, 1
  %i.p = xor i64 %i.o, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_SL_(ptr %i.f, ptr %i.h, i64 noundef %i.p, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.310") align 8 %7)
  %i.q = icmp sgt i64 %i.l, 64
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_(ptr %i.f, ptr nonnull %i.r, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.310") align 8 %7)
  call void @_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_(ptr nonnull %i.r, ptr %i.h, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.310") align 8 %7)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE0_EvT_SL_SI_.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_(ptr %i.f, ptr %i.h, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.310") align 8 %7)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE0_EvT_SL_SI_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE0_EvT_SL_SI_.exit: ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit

bb.f:                                             ; preds = %bb.a
  %i.s = icmp eq ptr %i.f, %i.h
  br i1 %i.s, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = ptrtoint ptr %i.h to i64
  %i.u = ptrtoint ptr %i.f to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 2
  %i.x = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.w, i1 true)
  %i.y = shl nuw nsw i64 %i.x, 1
  %i.z = xor i64 %i.y, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SK_SL_(ptr %i.f, ptr %i.h, i64 noundef %i.z, ptr nonnull %8, ptr nonnull %10)
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SK_(ptr %i.f, ptr %i.h, ptr nonnull %8, ptr nonnull %10)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit: ; preds = %bb.g, %bb.f, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE0_EvT_SL_SI_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_SL_(ptr %0, ptr %1, i64 noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.302") align 8 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.302", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.302", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph22

bb.b:                                             ; preds = %.lr.ph22
  %i.h = icmp eq i64 %i.j, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph22, !llvm.loop !1205

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge14.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph22:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1421 = phi ptr [ %i.n, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01520 = phi i64 [ %i.j, %bb.b ], [ %2, %.lr.ph ]
  %i.i = phi i64 [ %i.q, %bb.b ], [ %i.d, %.lr.ph ]
  %i.j = add nsw i64 %.01520, -1                  ; 3 uses
  %i.k = lshr i64 %i.i, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %storemerge1421, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_SO_SK_(ptr %0, ptr nonnull %i.f, ptr %i.l, ptr nonnull %i.m, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.302") align 8 %3)
  %i.n = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEET_SO_SO_SO_SK_(ptr nonnull %i.f, ptr %storemerge1421, ptr %0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.302") align 8 %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_SL_(ptr %i.n, ptr %storemerge1421, i64 noundef %i.j, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.302") align 8 %3)
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.a
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 16
  br i1 %i.r, label %bb.b, label %.loopexit, !llvm.loop !1205

.loopexit:                                        ; preds = %.lr.ph22, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.241, align 8            ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %class.anon.241, align 8            ; 6 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.h = ptrtoint ptr %1 to i64
  %i.i = sub i64 %i.h, %i.g
  %i.j = icmp sgt i64 %i.i, 4
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit
  %.sroa.0.040 = phi ptr [ %1, %.lr.ph ], [ %i.o, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit ]
  %i.o = getelementptr inbounds i8, ptr %.sroa.0.040, i64 -4 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3    ; 2 uses
  %i.q = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.q, ptr %i.o, align 4, !tbaa !3
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.r, %i.g                       ; 3 uses
  %i.t = ashr exact i64 %i.s, 2                   ; 3 uses
  %.sroa.019.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  %i.u = add nsw i64 %i.t, -1
  %5 = sdiv i64 %i.u, 2
  %i.v = icmp sgt i64 %i.t, 2
  br i1 %i.v, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.019.0.copyload, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread
  %.034.i.i = phi i64 [ %i.co, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.z = shl i64 %.034.i.i, 1                     ; 2 uses
  %i.aa = add i64 %i.z, 2                         ; 4 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aa
  %i.ac = or disjoint i64 %i.z, 1                 ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ac
  %i.ae = load i32, ptr %i.ab, align 4, !tbaa !3  ; 2 uses
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !3  ; 2 uses
  %i.ag = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !1206
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !239 ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i3, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i6, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !1208, !nonnull !68, !align !173
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !247 ; 2 uses
  %i.al = sext i32 %i.ae to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = lshr i64 %i.ao, 6
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !161
  %i.as = and i64 %i.ao, 63
  %i.at = shl nuw i64 1, %i.as
  %i.au = and i64 %i.at, %i.ar
  %.not.i.i.i.i4 = icmp eq i64 %i.au, 0
  %i.av = sext i32 %i.af to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = lshr i64 %i.ay, 6
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !161
  %i.bc = and i64 %i.ay, 63
  %i.bd = shl nuw i64 1, %i.bc
  %i.be = and i64 %i.bd, %i.bb
  %.not.i.i.i11.i5 = icmp eq i64 %i.be, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i6

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i6: ; preds = %bb.c, %.lr.ph.i.i
  %i.bf = phi i1 [ %.not.i.i.i.i4, %bb.c ], [ false, %.lr.ph.i.i ] ; 3 uses
  %i.bg = phi i1 [ %.not.i.i.i11.i5, %bb.c ], [ false, %.lr.ph.i.i ] ; 2 uses
  %or.cond.i7 = or i1 %i.bf, %i.bg
  br i1 %or.cond.i7, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i6
  %.sroa.0.0.copyload.i9 = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i10 = lshr i64 %.sroa.0.0.copyload.i9, 32
  %.sroa.37.0.extract.trunc.i.i11 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i10 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i11, label %bb.h [
    i32 1, label %bb.e
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.bh = and i64 %.sroa.0.0.copyload.i9, 65536
  %.not.i.i14 = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i14, label %bb.f, label %.critedge.i15

bb.f:                                             ; preds = %bb.e
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.51) #41
  unreachable

bb.g:                                             ; preds = %bb.d
  %or.cond.i.i12 = and i1 %i.bf, %i.bg
  br i1 %or.cond.i.i12, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16

bb.h:                                             ; preds = %bb.d
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.52) #41
  unreachable

.critedge.i15:                                    ; preds = %bb.e
  call void @_ZSt27__throw_bad_optional_accessv() #41
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i6
  %i.bi = load ptr, ptr %i.x, align 8, !tbaa !1203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.bj = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !1209, !nonnull !68, !align !173 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1210
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1212, !nonnull !68, !align !173
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !247 ; 2 uses
  %i.bo = sext i32 %i.ae to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 144
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !844 ; 2 uses
  %i.bt = sext i32 %i.bq to i64
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !161
  store i64 %i.bv, ptr %i.b, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %i.bw = sext i32 %i.af to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !161
  store i64 %i.cb, ptr %i.c, align 8, !tbaa !161
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.cd, ptr %i.a, align 8, !tbaa !481
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  store ptr %i.a, ptr %3, align 8, !tbaa !482
  store ptr %i.b, ptr %i.k, align 8, !tbaa !251
  store ptr %i.c, ptr %i.l, align 8, !tbaa !251
  %i.ce = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cf = load ptr, ptr %i.y, align 8, !tbaa !1213, !nonnull !68, !align !389
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !576, !range !67, !noundef !68
  %i.ci = trunc nuw i8 %i.ch to i1
  %i.cj = sub nsw i32 0, %i.ce
  %i.ck = select i1 %i.ci, i32 %i.ce, i32 %i.cj
  %.fr = freeze i32 %i.ck
  %i.cl = icmp slt i32 %.fr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br i1 %i.cl, label %bb.j, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16: ; preds = %bb.g
  %i.cm = trunc i64 %.sroa.0.0.copyload.i9 to i1
  %i.cn = xor i1 %i.bf, %i.cm
  %.fr37 = freeze i1 %i.cn
  br i1 %.fr37, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread: ; preds = %bb.g, %bb.i, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16, %bb.j
  %i.co = phi i64 [ %i.ac, %bb.j ], [ %i.aa, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16 ], [ %i.aa, %bb.i ], [ %i.aa, %bb.g ] ; 4 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %0, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !3
  %i.cr = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !3
  %i.cs = icmp slt i64 %i.co, %5
  br i1 %i.cs, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1214

._crit_edge.i.i:                                  ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.co, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread ] ; 5 uses
  %i.ct = and i64 %i.s, 4
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.cv = add nsw i64 %i.t, -2
  %i.cw = ashr exact i64 %i.cv, 1
  %i.cx = icmp eq i64 %.0.lcssa.i.i, %i.cw
  br i1 %i.cx, label %.thread.i, label %bb.l

.thread.i:                                        ; preds = %bb.k
  %i.cy = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.cz = or disjoint i64 %i.cy, 1                ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !3
  %i.dc = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !3
  br label %.lr.ph.i.i.preheader.i

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.l, %.thread.i
  %.1.i11.i = phi i64 [ %i.cz, %.thread.i ], [ %.0.lcssa.i.i, %bb.l ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.019.0.copyload, i64 8
  %i.de = sext i32 %i.p to i64                    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 16
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %.lr.ph.i.i.preheader.i
  %.019.i.i.i = phi i64 [ %.0920.i.i67.i, %bb.t ], [ %.1.i11.i, %.lr.ph.i.i.preheader.i ] ; 4 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i67.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i67.i ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3  ; 3 uses
  %i.dj = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !1206
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !239 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.dm = load ptr, ptr %i.dd, align 8, !tbaa !1208, !nonnull !68, !align !173
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !247 ; 2 uses
  %i.do = sext i32 %i.di to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3
  %i.dr = zext i32 %i.dq to i64                   ; 2 uses
  %i.ds = lshr i64 %i.dr, 6
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.ds
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !161
  %i.dv = and i64 %i.dr, 63
  %i.dw = shl nuw i64 1, %i.dv
  %i.dx = and i64 %i.dw, %i.du
  %.not.i.i.i.i = icmp eq i64 %i.dx, 0
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.de
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !3
  %i.ea = zext i32 %i.dz to i64                   ; 2 uses
  %i.eb = lshr i64 %i.ea, 6
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.eb
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !161
  %i.ee = and i64 %i.ea, 63
  %i.ef = shl nuw i64 1, %i.ee
  %i.eg = and i64 %i.ef, %i.ed
  %.not.i.i.i11.i = icmp eq i64 %i.eg, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i: ; preds = %bb.m, %.lr.ph.i.i.i
  %i.eh = phi i1 [ %.not.i.i.i.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 3 uses
  %i.ei = phi i1 [ %.not.i.i.i11.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 2 uses
  %or.cond.i = or i1 %i.eh, %i.ei
  br i1 %or.cond.i, label %bb.n, label %bb.s

bb.n:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.r [
    i32 1, label %bb.o
    i32 0, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.ej = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.ej, 0
  br i1 %.not.i.i, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %bb.o
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.51) #41
  unreachable

bb.q:                                             ; preds = %bb.n
  %or.cond.i.i = and i1 %i.eh, %i.ei
  %i.ek = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.el = xor i1 %i.eh, %i.ek
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.el
  br i1 %or.cond.demorgan, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %bb.t

bb.r:                                             ; preds = %bb.n
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.52) #41
  unreachable

.critedge.i:                                      ; preds = %bb.o
  call void @_ZSt27__throw_bad_optional_accessv() #41
  unreachable

bb.s:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %i.em = load ptr, ptr %i.df, align 8, !tbaa !1203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  %i.en = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !1209, !nonnull !68, !align !173 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !1210
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !1212, !nonnull !68, !align !173
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !247 ; 2 uses
  %i.es = sext i32 %i.di to i64
  %i.et = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !3
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 144
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !844 ; 2 uses
  %i.ex = sext i32 %i.eu to i64
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !161
  store i64 %i.ez, ptr %i.e, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #37
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.de
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !3
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.fc
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !161
  store i64 %i.fe, ptr %i.f, align 8, !tbaa !161
  %i.ff = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.fg, ptr %i.d, align 8, !tbaa !481
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  store ptr %i.d, ptr %4, align 8, !tbaa !482
  store ptr %i.e, ptr %i.m, align 8, !tbaa !251
  store ptr %i.f, ptr %i.n, align 8, !tbaa !251
  %i.fh = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.fi = load ptr, ptr %i.dg, align 8, !tbaa !1213, !nonnull !68, !align !389
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 1
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !576, !range !67, !noundef !68
  %i.fl = trunc nuw i8 %i.fk to i1
  %i.fm = sub nsw i32 0, %i.fh
  %i.fn = select i1 %i.fl, i32 %i.fh, i32 %i.fm
  %i.fo = icmp slt i32 %i.fn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  br i1 %i.fo, label %._crit_edge43, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit

._crit_edge43:                                    ; preds = %bb.s
  %.pre = load i32, ptr %i.dh, align 4, !tbaa !3
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge43, %bb.q
  %i.fp = phi i32 [ %.pre, %._crit_edge43 ], [ %i.di, %bb.q ]
  %i.fq = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !3
  %.not8.i = icmp eq i64 %.0920.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %.lr.ph.i.i.i, !llvm.loop !1215

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit: ; preds = %bb.q, %bb.s, %bb.t, %bb.l
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.l ], [ %.019.i.i.i, %bb.s ], [ %.019.i.i.i, %bb.q ], [ 0, %bb.t ]
  %i.fr = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.p, ptr %i.fr, align 4, !tbaa !3
  %i.fs = icmp sgt i64 %i.s, 4
  br i1 %i.fs, label %bb.b, label %._crit_edge, !llvm.loop !1216

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.241, align 8            ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %class.anon.241, align 8            ; 6 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %i.k = icmp slt i64 %i.j, 2
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add nsw i64 %i.j, -2                     ; 3 uses
  %i.m = lshr i64 %i.l, 1
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = add nsw i64 %i.j, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = and i64 %i.i, 4
  %i.s = icmp eq i64 %i.r, 0
  %i.t = lshr exact i64 %i.l, 1                   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.w
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.t
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.m, %bb.b ], [ %i.fs, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit ] ; 8 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
end_hunk_8
begin_hunk_9_@_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SK_:bb.a
  store i64 %i.ae, ptr %i.e, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #37
  %i.af = sext i32 %i.s to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !161
  store i64 %i.ak, ptr %i.f, align 8, !tbaa !161
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.am, ptr %i.d, align 8, !tbaa !481
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  store ptr %i.d, ptr %4, align 8, !tbaa !482
  store ptr %i.e, ptr %i.l, align 8, !tbaa !251
  store ptr %i.f, ptr %i.m, align 8, !tbaa !251
  %i.an = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ao = load ptr, ptr %i.n, align 8, !tbaa !1213
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !576, !range !67, !noundef !68
  %i.ar = trunc nuw i8 %i.aq to i1
  %i.as = sub nsw i32 0, %i.an
  %i.at = select i1 %i.ar, i32 %i.an, i32 %i.as
  %i.au = icmp slt i32 %i.at, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  %i.av = load i32, ptr %.sroa.08.021, align 4, !tbaa !3 ; 2 uses
  br i1 %i.au, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.aw = ptrtoint ptr %.sroa.08.021 to i64
  %i.ax = sub i64 %i.aw, %i.q                     ; 3 uses
  %i.ay = ashr exact i64 %i.ax, 2                 ; 2 uses
  %i.az = icmp sgt i64 %i.ay, 1
  br i1 %i.az, label %bb.d, label %bb.e, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn20, i64 8
  %i.bb = sub nsw i64 0, %i.ay
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bb
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bc, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.ax, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.c
  %i.bd = icmp eq i64 %i.ax, 4
  br i1 %i.bd, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.f:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %.pn20, i64 4
  %i.bf = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !3
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.b
  %i.bg = sext i32 %i.av to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.sroa.04.0.i = phi ptr [ %.sroa.08.021, %bb.g ], [ %.sroa.0.0.i, %bb.i ] ; 3 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.04.0.i, i64 -4 ; 3 uses
  %i.bh = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !1210
  %i.bj = load ptr, ptr %i.k, align 8, !tbaa !1212, !nonnull !68, !align !173
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !247 ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bg
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 144
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !844 ; 2 uses
  %i.bp = sext i32 %i.bm to i64
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !161
  store i64 %i.br, ptr %i.b, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %i.bs = sext i32 %i.bh to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !161
  store i64 %i.bx, ptr %i.c, align 8, !tbaa !161
  %i.by = load ptr, ptr %i.al, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.by, ptr %i.a, align 8, !tbaa !481
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  store ptr %i.a, ptr %3, align 8, !tbaa !482
  store ptr %i.b, ptr %i.o, align 8, !tbaa !251
  store ptr %i.c, ptr %i.p, align 8, !tbaa !251
  %i.bz = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ca = load i8, ptr %i.ap, align 1, !tbaa !576, !range !67, !noundef !68
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = sub nsw i32 0, %i.bz
  %i.cd = select i1 %i.cb, i32 %i.bz, i32 %i.cc
  %i.ce = icmp slt i32 %i.cd, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br i1 %i.ce, label %bb.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.i:                                             ; preds = %bb.h
  %i.cf = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3
  store i32 %i.cf, ptr %.sroa.04.0.i, align 4, !tbaa !3
  br label %bb.h, !llvm.loop !1231

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.h, %bb.f, %bb.e, %bb.d
  %.sink = phi ptr [ %0, %bb.f ], [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.04.0.i, %bb.h ]
  store i32 %i.av, ptr %.sink, align 4, !tbaa !3
  %.sroa.08.0 = getelementptr inbounds nuw i8, ptr %.sroa.08.021, i64 4 ; 2 uses
  %i.cg = icmp eq ptr %.sroa.08.0, %1
  br i1 %i.cg, label %.loopexit, label %bb.b, !llvm.loop !1238

.loopexit:                                        ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_SL_(ptr %0, ptr %1, i64 noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.310") align 8 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.310", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.310", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph22

bb.b:                                             ; preds = %.lr.ph22
  %i.h = icmp eq i64 %i.j, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph22, !llvm.loop !1239

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge14.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph22:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1421 = phi ptr [ %i.n, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01520 = phi i64 [ %i.j, %bb.b ], [ %2, %.lr.ph ]
  %i.i = phi i64 [ %i.q, %bb.b ], [ %i.d, %.lr.ph ]
  %i.j = add nsw i64 %.01520, -1                  ; 3 uses
  %i.k = lshr i64 %i.i, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %storemerge1421, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_SO_SK_(ptr %0, ptr nonnull %i.f, ptr %i.l, ptr nonnull %i.m, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.310") align 8 %3)
  %i.n = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEET_SO_SO_SO_SK_(ptr nonnull %i.f, ptr %storemerge1421, ptr %0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.310") align 8 %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_SL_(ptr %i.n, ptr %storemerge1421, i64 noundef %i.j, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.310") align 8 %3)
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.a
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 16
  br i1 %i.r, label %bb.b, label %.loopexit, !llvm.loop !1239

.loopexit:                                        ; preds = %.lr.ph22, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit
  %.sroa.0.040 = phi ptr [ %1, %.lr.ph ], [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.040, i64 -4 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3    ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.g, ptr %i.e, align 4, !tbaa !3
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.h, %i.a                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %.sroa.019.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %i.k = add nsw i64 %i.j, -1
  %3 = sdiv i64 %i.k, 2
  %i.l = icmp sgt i64 %i.j, 2
  br i1 %i.l, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.m = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !1240
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !239  ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.019.0.copyload, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread
  %.034.i.i = phi i64 [ %i.cb, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.r = shl i64 %.034.i.i, 1                     ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 4 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = load i32, ptr %i.t, align 4, !tbaa !3    ; 5 uses
  %i.x = load i32, ptr %i.v, align 4, !tbaa !3    ; 3 uses
  br i1 %.not.i.i.i3, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i6, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !1242, !nonnull !68, !align !173
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !247  ; 2 uses
  %i.aa = sext i32 %i.w to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 6
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !161
  %i.ah = and i64 %i.ad, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ai, %i.ag
  %.not.i.i.i.i4 = icmp eq i64 %i.aj, 0
  %i.ak = sext i32 %i.x to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = lshr i64 %i.an, 6
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !161
  %i.ar = and i64 %i.an, 63
  %i.as = shl nuw i64 1, %i.ar
  %i.at = and i64 %i.as, %i.aq
  %.not.i.i.i11.i5 = icmp eq i64 %i.at, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i6

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i6: ; preds = %bb.c, %.lr.ph.i.i
  %i.au = phi i1 [ %.not.i.i.i.i4, %bb.c ], [ false, %.lr.ph.i.i ] ; 3 uses
  %i.av = phi i1 [ %.not.i.i.i11.i5, %bb.c ], [ false, %.lr.ph.i.i ] ; 2 uses
  %or.cond.i7 = or i1 %i.au, %i.av
  br i1 %or.cond.i7, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i6
  %.sroa.0.0.copyload.i9 = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i10 = lshr i64 %.sroa.0.0.copyload.i9, 32
  %.sroa.37.0.extract.trunc.i.i11 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i10 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i11, label %bb.h [
    i32 1, label %bb.e
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.aw = and i64 %.sroa.0.0.copyload.i9, 65536
  %.not.i.i14 = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i14, label %bb.f, label %.critedge.i15

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.51) #41
  unreachable

bb.g:                                             ; preds = %bb.d
  %or.cond.i.i12 = and i1 %i.au, %i.av
  br i1 %or.cond.i.i12, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16

bb.h:                                             ; preds = %bb.d
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.52) #41
  unreachable

.critedge.i15:                                    ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #41
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i6
  %i.ax = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !1243, !nonnull !68, !align !173 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1245
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1247, !nonnull !68, !align !173
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !247 ; 2 uses
  %i.bc = sext i32 %i.w to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 144
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !844 ; 2 uses
  %i.bh = sext i32 %i.be to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !161
  %i.bk = sext i32 %i.x to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !161
  %i.bq = tail call i32 @llvm.ucmp.i32.i64(i64 %i.bj, i64 %i.bp) ; 2 uses
  %i.br = load ptr, ptr %i.q, align 8, !tbaa !1248, !nonnull !68, !align !389
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !576, !range !67, !noundef !68
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = sub nsw i32 0, %i.bq
  %i.bw = select i1 %i.bu, i32 %i.bq, i32 %i.bv
  %.fr = freeze i32 %i.bw
  %i.bx = icmp slt i32 %.fr, 0
  br i1 %i.bx, label %bb.j, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16: ; preds = %bb.g
  %i.by = trunc i64 %.sroa.0.0.copyload.i9 to i1
  %i.bz = xor i1 %i.au, %i.by
  %.fr37 = freeze i1 %i.bz
  br i1 %.fr37, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread: ; preds = %bb.g, %bb.i, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16, %bb.j
  %i.ca = phi i32 [ %i.x, %bb.j ], [ %i.w, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16 ], [ %i.w, %bb.i ], [ %i.w, %bb.g ]
  %i.cb = phi i64 [ %i.u, %bb.j ], [ %i.s, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16 ], [ %i.s, %bb.i ], [ %i.s, %bb.g ] ; 3 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i
  store i32 %i.ca, ptr %i.cc, align 4, !tbaa !3
  %i.cd = icmp slt i64 %i.cb, %3
  br i1 %i.cd, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1249

._crit_edge.i.i:                                  ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.cb, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread ] ; 5 uses
  %i.ce = and i64 %i.i, 4
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.cg = add nsw i64 %i.j, -2
  %i.ch = ashr exact i64 %i.cg, 1
  %i.ci = icmp eq i64 %.0.lcssa.i.i, %i.ch
  br i1 %i.ci, label %.thread.i, label %bb.l

.thread.i:                                        ; preds = %bb.k
  %i.cj = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ck = or disjoint i64 %i.cj, 1                ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3
  %i.cn = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !3
  br label %.lr.ph.i.i.preheader.i

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.l, %.thread.i
  %.1.i11.i = phi i64 [ %i.ck, %.thread.i ], [ %.0.lcssa.i.i, %bb.l ]
  %i.co = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !1240
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !239 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cq, null
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.019.0.copyload, i64 8
  %i.cs = sext i32 %i.f to i64                    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %.lr.ph.i.i.preheader.i
  %.019.i.i.i = phi i64 [ %.0920.i.i67.i, %bb.t ], [ %.1.i11.i, %.lr.ph.i.i.preheader.i ] ; 4 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i67.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i67.i
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !3  ; 3 uses
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.cw = load ptr, ptr %i.cr, align 8, !tbaa !1242, !nonnull !68, !align !173
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !247 ; 2 uses
  %i.cy = sext i32 %i.cv to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !3
  %i.db = zext i32 %i.da to i64                   ; 2 uses
  %i.dc = lshr i64 %i.db, 6
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.dc
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !161
  %i.df = and i64 %i.db, 63
  %i.dg = shl nuw i64 1, %i.df
  %i.dh = and i64 %i.dg, %i.de
  %.not.i.i.i.i = icmp eq i64 %i.dh, 0
  %i.di = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.cs
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !3
  %i.dk = zext i32 %i.dj to i64                   ; 2 uses
  %i.dl = lshr i64 %i.dk, 6
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !161
  %i.do = and i64 %i.dk, 63
  %i.dp = shl nuw i64 1, %i.do
  %i.dq = and i64 %i.dp, %i.dn
  %.not.i.i.i11.i = icmp eq i64 %i.dq, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i: ; preds = %bb.m, %.lr.ph.i.i.i
  %i.dr = phi i1 [ %.not.i.i.i.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 3 uses
  %i.ds = phi i1 [ %.not.i.i.i11.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 2 uses
  %or.cond.i = or i1 %i.dr, %i.ds
  br i1 %or.cond.i, label %bb.n, label %bb.s

bb.n:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.r [
    i32 1, label %bb.o
    i32 0, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.dt = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not.i.i, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.51) #41
  unreachable

bb.q:                                             ; preds = %bb.n
  %or.cond.i.i = and i1 %i.dr, %i.ds
  %i.du = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.dv = xor i1 %i.dr, %i.du
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.dv
  br i1 %or.cond.demorgan, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %bb.t

bb.r:                                             ; preds = %bb.n
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.52) #41
  unreachable

.critedge.i:                                      ; preds = %bb.o
  tail call void @_ZSt27__throw_bad_optional_accessv() #41
  unreachable

bb.s:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i
  %i.dw = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !1243, !nonnull !68, !align !173 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !1245
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !1247, !nonnull !68, !align !173
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !247 ; 2 uses
  %i.eb = sext i32 %i.cv to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !3
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 144
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !844 ; 2 uses
  %i.eg = sext i32 %i.ed to i64
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %i.eg
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !161
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.cs
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %i.el
  %i.en = load i64, ptr %i.em, align 8, !tbaa !161
  %i.eo = tail call i32 @llvm.ucmp.i32.i64(i64 %i.ei, i64 %i.en) ; 2 uses
  %i.ep = load ptr, ptr %i.ct, align 8, !tbaa !1248, !nonnull !68, !align !389
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !576, !range !67, !noundef !68
  %i.es = trunc nuw i8 %i.er to i1
  %i.et = sub nsw i32 0, %i.eo
  %i.eu = select i1 %i.es, i32 %i.eo, i32 %i.et
  %i.ev = icmp slt i32 %i.eu, 0
  br i1 %i.ev, label %bb.t, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit

bb.t:                                             ; preds = %bb.q, %bb.s
  %i.ew = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.cv, ptr %i.ew, align 4, !tbaa !3
  %.not8.i = icmp eq i64 %.0920.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %.lr.ph.i.i.i, !llvm.loop !1250

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit: ; preds = %bb.q, %bb.s, %bb.t, %bb.l
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.l ], [ %.019.i.i.i, %bb.s ], [ %.019.i.i.i, %bb.q ], [ 0, %bb.t ]
  %i.ex = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.f, ptr %i.ex, align 4, !tbaa !3
  %i.ey = icmp sgt i64 %i.i, 4
  br i1 %i.ey, label %bb.b, label %._crit_edge, !llvm.loop !1251

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !385 ; 3 uses
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !573 ; 2 uses
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !385 ; 3 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 8 ; 2 uses
  %i.l = and i64 %i.c, 4
  %i.m = icmp eq i64 %i.l, 0
  %i.n = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.o = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.g, %bb.b ], [ %i.ew, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit ] ; 8 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3    ; 2 uses
  %i.t = icmp slt i64 %.08, %i.i
  br i1 %i.t, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.u = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !1240
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !239  ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.w, null
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23.thread
  %.034.i = phi i64 [ %i.ch, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23.thread ], [ %.08, %.lr.ph.i.preheader ] ; 2 uses
  %i.x = shl i64 %.034.i, 1                       ; 2 uses
  %i.y = add i64 %i.x, 2                          ; 4 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %i.y
  %i.aa = or disjoint i64 %i.x, 1                 ; 2 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aa
  %i.ac = load i32, ptr %i.z, align 4, !tbaa !3   ; 5 uses
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !3  ; 3 uses
  br i1 %.not.i.i.i10, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i13, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !1242, !nonnull !68, !align !173
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !247 ; 2 uses
  %i.ag = sext i32 %i.ac to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = lshr i64 %i.aj, 6
end_hunk_9
begin_hunk_10_@_ZNK3fmt3v119formatterIN8facebook5velox8TypeKindEcvE6formatINS0_7contextEEEDaS4_RT_:bb.a
  %i.n = and i32 %i.m, 3                          ; 2 uses
  %.not.i17.i = icmp eq i32 %i.n, 0
  br i1 %.not.i17.i, label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i, label %bb.e

bb.e:                                             ; preds = %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.q = tail call noundef i32 @_ZN3fmt3v116detail16get_dynamic_specINS0_7contextEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERS6_(i32 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %2)
  store i32 %i.q, ptr %i.p, align 4, !tbaa !3
  br label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i

_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i: ; preds = %bb.e, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i
  %.sroa.0.0.copyload.i19.i = load ptr, ptr %2, align 8, !tbaa !373
  %i.r = call ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i19.i, ptr %i.c, i64 %i.b, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit

_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit: ; preds = %bb.b, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i
  %.sroa.015.0.i = phi ptr [ %i.r, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i ], [ %i.f, %bb.b ]
  ret ptr %.sroa.015.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.341) align 8 %2, ptr noundef byval(%class.anon.342) align 8 %3) local_unnamed_addr #20 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !1386, !range !67, !noundef !68
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1389
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !161
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1460
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !1461, !nonnull !68, !align !173
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !247
  %i.ag = sext i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1462, !nonnull !68, !align !173
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !251
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !844
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.av, %bb.d ] ; 3 uses
  %i.am = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.an = or disjoint i64 %i.am, %i.ag            ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !161
  %i.at = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.an
  store i64 %i.as, ptr %i.at, align 8, !tbaa !161
  %i.au = add nsw i64 %.011.i, -1
  %i.av = and i64 %i.au, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.av, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1463

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = sdiv i32 %0, 64                         ; 2 uses
  %i.ax = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ay = zext nneg i32 %i.ax to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ay
  %i.az = xor i64 %notmask.i.i35, -1
  %i.ba = sub nsw i32 64, %i.ax
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = shl i64 %i.az, %i.bb
  %i.bd = load i8, ptr %2, align 8, !tbaa !1386, !range !67, !noundef !68
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !1389
  %i.bg = sext i32 %i.aw to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !161
  %i.bj = xor i8 %i.bd, 1
  %i.bk = zext nneg i8 %i.bj to i64
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = xor i64 %i.bi, %i.bl
  %i.bn = and i64 %i.bm, %i.bc                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bn, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bp = shl nsw i32 %i.aw, 6
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1460
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !1461, !nonnull !68, !align !173
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !247
  %i.bu = sext i32 %i.bp to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1462, !nonnull !68, !align !173
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !251
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 144
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !844
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bn, %.preheader.i37 ], [ %i.cj, %bb.g ] ; 3 uses
  %i.ca = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.cb = or disjoint i64 %i.ca, %i.bu            ; 2 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !161
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.cb
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !161
  %i.ci = add i64 %.011.i38, -1
  %i.cj = and i64 %i.ci, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.cj, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !1463

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.ck = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.ck, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.cl = load i8, ptr %3, align 8, !tbaa !1390, !range !67, !noundef !68
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !1392
  %i.co = xor i8 %i.cl, 1
  %i.cp = zext nneg i8 %i.co to i64
  %i.cq = sub nsw i64 0, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = load ptr, ptr %i.cr, align 8, !nonnull !68, !align !173 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !68, !align !173 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit
  %i.cy = phi i32 [ %i.ck, %.lr.ph ], [ %i.ei, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.cy, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %i.cz = sdiv i32 %.051, 64                      ; 3 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.da
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !161
  %i.dd = xor i64 %i.dc, %i.cq                    ; 2 uses
  switch i64 %i.dd, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.de = shl nsw i32 %i.cz, 6
  %i.df = load ptr, ptr %i.cu, align 8, !tbaa !247
  %i.dg = sext i32 %i.de to i64
  %i.dh = load ptr, ptr %i.cw, align 8, !tbaa !251
  %i.di = load ptr, ptr %i.cx, align 8, !tbaa !844
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.dj = shl nsw i32 %i.cz, 6                    ; 2 uses
  %i.dk = add i32 %i.dj, 64
  %i.dl = sext i32 %i.dk to i64
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.dm = sext i32 %i.dj to i64
  %i.dn = load ptr, ptr %i.cu, align 8, !tbaa !247
  %i.do = load ptr, ptr %i.cw, align 8, !tbaa !251
  %i.dp = load ptr, ptr %i.cx, align 8, !tbaa !844
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.dm, %.lr.ph21.i ], [ %i.dw, %bb.j ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.020.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !3
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.ds
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !161
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.020.i
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !161
  %i.dw = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.dl
  br i1 %i.dx, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !1464

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.01519.i = phi i64 [ %i.dd, %.lr.ph.i ], [ %i.eh, %bb.k ] ; 3 uses
  %i.dy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.dz = or disjoint i64 %i.dy, %i.dg            ; 2 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !3
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.ec
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !161
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dz
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !161
  %i.eg = add i64 %.01519.i, -1
  %i.eh = and i64 %i.eg, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.eh, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !1465

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %bb.j, %bb.k, %bb.h, %bb.i
  %i.ei = add nsw i32 %i.cy, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.ei, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1466

bb.l:                                             ; preds = %._crit_edge
  %i.ej = ashr i32 %1, 6
  %i.ek = and i32 %1, 63
  %i.el = zext nneg i32 %i.ek to i64
  %notmask.i42 = shl nsw i64 -1, %i.el
  %i.em = xor i64 %notmask.i42, -1
  %i.en = load i8, ptr %2, align 8, !tbaa !1386, !range !67, !noundef !68
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !1389
  %i.eq = sext i32 %i.ej to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.eq
  %i.es = load i64, ptr %i.er, align 8, !tbaa !161
  %i.et = xor i8 %i.en, 1
  %i.eu = zext nneg i8 %i.et to i64
  %i.ev = sub nsw i64 0, %i.eu
  %i.ew = xor i64 %i.es, %i.ev
  %i.ex = and i64 %i.ew, %i.em                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ex, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.l
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !1460
  %i.fb = load ptr, ptr %i.ey, align 8, !tbaa !1461, !nonnull !68, !align !173
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !247
  %i.fd = sext i32 %i.d to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !1462, !nonnull !68, !align !173
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !251
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fa, i64 144
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !844
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i44
  %.011.i45 = phi i64 [ %i.ex, %.preheader.i44 ], [ %i.fs, %bb.m ] ; 3 uses
  %i.fj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fk = or disjoint i64 %i.fj, %i.fd            ; 2 uses
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !3
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.fg, i64 %i.fn
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !161
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.fk
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !161
  %i.fr = add nsw i64 %.011.i45, -1
  %i.fs = and i64 %i.fr, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fs, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !1463

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.343) align 8 %2, ptr noundef byval(%class.anon.344) align 8 %3) local_unnamed_addr #20 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !1397, !range !67, !noundef !68
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1400
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !161
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1467
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1468, !nonnull !68, !align !173
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !251
  %i.ag = sext i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !844
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !161
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  store i64 %i.am, ptr %i.an, align 8, !tbaa !161
  %i.ao = add nsw i64 %.011.i, -1
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1469

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !1397, !range !67, !noundef !68
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1400
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !161
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !1467
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1468, !nonnull !68, !align !173
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !251
end_hunk_10
begin_hunk_11_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKS1_PKiEUlT_E3_EEvSC_:bb.a
  %i.di = and i8 %i.dh, %i.dd
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !14
  br label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i, %bb.q, %bb.r
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !1753

bb.s:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.dj = load ptr, ptr %0, align 8, !tbaa !158
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !144
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !154
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E3_EEvPKmiibSD_(ptr noundef %i.dj, i32 noundef %i.dl, i32 noundef %i.dn, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.493) align 8 %1)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit, %bb.h, %bb.s
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.494) align 8 %2, ptr noundef byval(%class.anon.495) align 8 %3) local_unnamed_addr #20 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !1701, !range !67, !noundef !68
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1704
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !161
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1754
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !1755, !nonnull !68, !align !173
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !247
  %i.ag = sext i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1756, !nonnull !68, !align !173
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !251
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !174
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.av, %bb.d ] ; 3 uses
  %i.am = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.an = or disjoint i64 %i.am, %i.ag            ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !161
  %i.at = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.an
  store i64 %i.as, ptr %i.at, align 8, !tbaa !161
  %i.au = add nsw i64 %.011.i, -1
  %i.av = and i64 %i.au, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.av, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1757

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = sdiv i32 %0, 64                         ; 2 uses
  %i.ax = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ay = zext nneg i32 %i.ax to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ay
  %i.az = xor i64 %notmask.i.i35, -1
  %i.ba = sub nsw i32 64, %i.ax
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = shl i64 %i.az, %i.bb
  %i.bd = load i8, ptr %2, align 8, !tbaa !1701, !range !67, !noundef !68
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !1704
  %i.bg = sext i32 %i.aw to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !161
  %i.bj = xor i8 %i.bd, 1
  %i.bk = zext nneg i8 %i.bj to i64
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = xor i64 %i.bi, %i.bl
  %i.bn = and i64 %i.bm, %i.bc                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bn, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bp = shl nsw i32 %i.aw, 6
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1754
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !1755, !nonnull !68, !align !173
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !247
  %i.bu = sext i32 %i.bp to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1756, !nonnull !68, !align !173
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !251
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 144
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !174
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bn, %.preheader.i37 ], [ %i.cj, %bb.g ] ; 3 uses
  %i.ca = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.cb = or disjoint i64 %i.ca, %i.bu            ; 2 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !161
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.cb
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !161
  %i.ci = add i64 %.011.i38, -1
  %i.cj = and i64 %i.ci, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.cj, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !1757

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.ck = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.ck, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.cl = load i8, ptr %3, align 8, !tbaa !1705, !range !67, !noundef !68
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !1707
  %i.co = xor i8 %i.cl, 1
  %i.cp = zext nneg i8 %i.co to i64
  %i.cq = sub nsw i64 0, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = load ptr, ptr %i.cr, align 8, !nonnull !68, !align !173 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !68, !align !173 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit
  %i.cy = phi i32 [ %i.ck, %.lr.ph ], [ %i.ei, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.cy, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %i.cz = sdiv i32 %.051, 64                      ; 3 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.da
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !161
  %i.dd = xor i64 %i.dc, %i.cq                    ; 2 uses
  switch i64 %i.dd, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.de = shl nsw i32 %i.cz, 6
  %i.df = load ptr, ptr %i.cu, align 8, !tbaa !247
  %i.dg = sext i32 %i.de to i64
  %i.dh = load ptr, ptr %i.cw, align 8, !tbaa !251
  %i.di = load ptr, ptr %i.cx, align 8, !tbaa !174
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.dj = shl nsw i32 %i.cz, 6                    ; 2 uses
  %i.dk = add i32 %i.dj, 64
  %i.dl = sext i32 %i.dk to i64
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.dm = sext i32 %i.dj to i64
  %i.dn = load ptr, ptr %i.cu, align 8, !tbaa !247
  %i.do = load ptr, ptr %i.cw, align 8, !tbaa !251
  %i.dp = load ptr, ptr %i.cx, align 8, !tbaa !174
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.dm, %.lr.ph21.i ], [ %i.dw, %bb.j ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.020.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !3
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.ds
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !161
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.020.i
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !161
  %i.dw = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.dl
  br i1 %i.dx, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !1758

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.01519.i = phi i64 [ %i.dd, %.lr.ph.i ], [ %i.eh, %bb.k ] ; 3 uses
  %i.dy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.dz = or disjoint i64 %i.dy, %i.dg            ; 2 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !3
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.ec
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !161
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dz
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !161
  %i.eg = add i64 %.01519.i, -1
  %i.eh = and i64 %i.eg, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.eh, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !1759

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %bb.j, %bb.k, %bb.h, %bb.i
  %i.ei = add nsw i32 %i.cy, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.ei, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1760

bb.l:                                             ; preds = %._crit_edge
  %i.ej = ashr i32 %1, 6
  %i.ek = and i32 %1, 63
  %i.el = zext nneg i32 %i.ek to i64
  %notmask.i42 = shl nsw i64 -1, %i.el
  %i.em = xor i64 %notmask.i42, -1
  %i.en = load i8, ptr %2, align 8, !tbaa !1701, !range !67, !noundef !68
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !1704
  %i.eq = sext i32 %i.ej to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.eq
  %i.es = load i64, ptr %i.er, align 8, !tbaa !161
  %i.et = xor i8 %i.en, 1
  %i.eu = zext nneg i8 %i.et to i64
  %i.ev = sub nsw i64 0, %i.eu
  %i.ew = xor i64 %i.es, %i.ev
  %i.ex = and i64 %i.ew, %i.em                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ex, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.l
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !1754
  %i.fb = load ptr, ptr %i.ey, align 8, !tbaa !1755, !nonnull !68, !align !173
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !247
  %i.fd = sext i32 %i.d to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !1756, !nonnull !68, !align !173
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !251
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fa, i64 144
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !174
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i44
  %.011.i45 = phi i64 [ %i.ex, %.preheader.i44 ], [ %i.fs, %bb.m ] ; 3 uses
  %i.fj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fk = or disjoint i64 %i.fj, %i.fd            ; 2 uses
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !3
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.fg, i64 %i.fn
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !161
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.fk
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !161
  %i.fr = add nsw i64 %.011.i45, -1
  %i.fs = and i64 %i.fr, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fs, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !1757

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.496) align 8 %2, ptr noundef byval(%class.anon.497) align 8 %3) local_unnamed_addr #20 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !1712, !range !67, !noundef !68
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1715
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !161
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1761
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1762, !nonnull !68, !align !173
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !251
  %i.ag = sext i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !174
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !161
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  store i64 %i.am, ptr %i.an, align 8, !tbaa !161
  %i.ao = add nsw i64 %.011.i, -1
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1763

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !1712, !range !67, !noundef !68
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1715
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !161
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !1761
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1762, !nonnull !68, !align !173
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !251
end_hunk_11
