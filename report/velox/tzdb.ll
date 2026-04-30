inline.NumInlined: 2485
inline.NumDeleted: 1107
begin_hunk_0
%"struct.std::vector<std::pair<std::__cxx11::basic_string<char>, std::vector<facebook::velox::tzdb::__rule>>>::_Temporary_value" = type { ptr, %"union.std::vector<std::pair<std::__cxx11::basic_string<char>, std::vector<facebook::velox::tzdb::__rule>>>::_Temporary_value::_Storage" }
%"union.std::vector<std::pair<std::__cxx11::basic_string<char>, std::vector<facebook::velox::tzdb::__rule>>>::_Temporary_value::_Storage" = type { %"struct.std::pair" }
%"struct.std::pair" = type { %"class.std::__cxx11::basic_string", %"class.std::vector.40" }
%"struct.__gnu_cxx::__ops::_Iter_less_val" = type { i8 }
%"class.facebook::velox::tzdb::time_zone_link" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"struct.__gnu_cxx::__ops::_Iter_less_iter" = type { i8 }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

end_hunk_0
begin_hunk_1

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_ = comdat any

$_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_ = comdat any

$_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_less_valEEvT_T0_SE_T1_RT2_ = comdat any
end_hunk_1
begin_hunk_2_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_:bb.a
bb.a:
  %3 = alloca %"class.facebook::velox::tzdb::time_zone", align 8 ; 6 uses
  %4 = alloca %"class.facebook::velox::tzdb::time_zone", align 8 ; 6 uses
  %5 = alloca %"class.facebook::velox::tzdb::time_zone", align 8 ; 6 uses
  %6 = alloca %"class.facebook::velox::tzdb::time_zone", align 8 ; 6 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit
end_hunk_2
begin_hunk_3_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_:bb.a

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa.a = phi i64 [ %i.d, %.lr.ph ], [ %i.w, %bb.b ] ; 2 uses
  %.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.v, %bb.b ]
  %storemerge18.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.t, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.i = add nsw i64 %.lcssa.a, -2
  %i.j = lshr i64 %i.i, 1
end_hunk_3
begin_hunk_4_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_:bb.a
  %i.m = add nsw i64 %.08.i.i, -1
  call void @_ZN8facebook5velox4tzdb9time_zoneD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %.not.i.i, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit, label %bb.c, !llvm.loop !268

common.resume:                                    ; preds = %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit.a, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.e ], [ %14, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit.a ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
end_hunk_4
begin_hunk_5_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_:bb.a
  call void @_ZN8facebook5velox4tzdb9time_zoneD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #27
  call void @_ZN8facebook5velox4tzdb9time_zoneD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume

_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %7 = icmp sgt i64 %.lcssa, 8
  br i1 %7, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %8, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.i.i ], [ %storemerge18.lcssa, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit ]
  %8 = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %9 = load i64, ptr %8, align 8, !tbaa !97
  store ptr null, ptr %8, align 8, !tbaa !97
  %10 = load ptr, ptr %0, align 8, !tbaa !97
  store ptr null, ptr %0, align 8, !tbaa !97
  store ptr %10, ptr %8, align 8, !tbaa !97
  %11 = ptrtoint ptr %8 to i64
  %12 = sub i64 %11, %i.a                         ; 2 uses
  %13 = ashr exact i64 %12, 3
  store i64 %9, ptr %6, align 8, !tbaa !97
  store ptr null, ptr %5, align 8, !tbaa !97
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %13, ptr noundef nonnull %6)
          to label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.i.i unwind label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit.a

_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit.a: ; preds = %.lr.ph.i.i
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox4tzdb9time_zoneD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #27
  call void @_ZN8facebook5velox4tzdb9time_zoneD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %common.resume

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.i.i: ; preds = %.lr.ph.i.i
  call void @_ZN8facebook5velox4tzdb9time_zoneD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #27
  call void @_ZN8facebook5velox4tzdb9time_zoneD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %15 = icmp sgt i64 %12, 8
  br i1 %15, label %.lr.ph.i.i, label %.loopexit, !llvm.loop !269

.lr.ph24:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1323 = phi ptr [ %i.t, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
end_hunk_5
begin_hunk_6_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_:bb.a
  %i.t = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_SD_T0_(ptr nonnull %i.f, ptr %storemerge1323, ptr %0) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr %i.t, ptr %storemerge1323, i64 noundef %i.p)
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.a                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 3                   ; 3 uses
  %i.x = icmp sgt i64 %i.w, 16
  br i1 %i.x, label %bb.b, label %.loopexit, !llvm.loop !267

.loopexit:                                        ; preds = %.lr.ph24, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.i.i, %bb.a, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit
  ret void
}

end_hunk_6
begin_hunk_7_@_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_:bb.a
  store ptr null, ptr %0, align 8, !tbaa !97
  %i.x = load ptr, ptr %2, align 8, !tbaa !97
  store ptr null, ptr %2, align 8, !tbaa !97
  store ptr %i.x, ptr %0, align 8, !tbaa !97
  %10 = inttoptr i64 %i.w to ptr
  %i.y = load ptr, ptr %2, align 8, !tbaa !97     ; 3 uses
  store ptr null, ptr %9, align 8, !tbaa !97
  store ptr %10, ptr %2, align 8, !tbaa !97
  %.not.i.i.i.i.i4.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i4.i.i, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit, label %_ZNKSt14default_deleteIN8facebook5velox4tzdb9time_zone6__implEEclEPS4_.exit.i.i.i.i.i5.i.i

_ZNKSt14default_deleteIN8facebook5velox4tzdb9time_zone6__implEEclEPS4_.exit.i.i.i.i.i5.i.i: ; preds = %bb.c
  tail call void @_ZN8facebook5velox4tzdb9time_zone6__implD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.y) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 112) #30
  br label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN8facebook5velox4tzdb9time_zone6__implEEclEPS4_.exit.i.i.i.i.i5.i.i
  call void @_ZN8facebook5velox4tzdb9time_zoneD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.l
end_hunk_7
begin_hunk_8_@_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_:bb.a
  store ptr null, ptr %0, align 8, !tbaa !97
  %i.al = load ptr, ptr %3, align 8, !tbaa !97
  store ptr null, ptr %3, align 8, !tbaa !97
  store ptr %i.al, ptr %0, align 8, !tbaa !97
  %11 = inttoptr i64 %i.ak to ptr
  %i.am = load ptr, ptr %3, align 8, !tbaa !97    ; 3 uses
  store ptr null, ptr %8, align 8, !tbaa !97
  store ptr %11, ptr %3, align 8, !tbaa !97
  %.not.i.i.i.i.i4.i.i43 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i4.i.i43, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit47, label %_ZNKSt14default_deleteIN8facebook5velox4tzdb9time_zone6__implEEclEPS4_.exit.i.i.i.i.i5.i.i46

_ZNKSt14default_deleteIN8facebook5velox4tzdb9time_zone6__implEEclEPS4_.exit.i.i.i.i.i5.i.i46: ; preds = %bb.e
  tail call void @_ZN8facebook5velox4tzdb9time_zone6__implD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.am) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef 112) #30
  br label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit47

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit47: ; preds = %bb.e, %_ZNKSt14default_deleteIN8facebook5velox4tzdb9time_zone6__implEEclEPS4_.exit.i.i.i.i.i5.i.i46
  call void @_ZN8facebook5velox4tzdb9time_zoneD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.l
end_hunk_8
begin_hunk_9_@_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_:bb.a
  store ptr null, ptr %0, align 8, !tbaa !97
  %i.ao = load ptr, ptr %1, align 8, !tbaa !97
  store ptr null, ptr %1, align 8, !tbaa !97
  store ptr %i.ao, ptr %0, align 8, !tbaa !97
  %12 = inttoptr i64 %i.an to ptr
  %i.ap = load ptr, ptr %1, align 8, !tbaa !97    ; 3 uses
  store ptr null, ptr %7, align 8, !tbaa !97
  store ptr %12, ptr %1, align 8, !tbaa !97
  %.not.i.i.i.i.i4.i.i47 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i4.i.i47, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit53, label %_ZNKSt14default_deleteIN8facebook5velox4tzdb9time_zone6__implEEclEPS4_.exit.i.i.i.i.i5.i.i52

_ZNKSt14default_deleteIN8facebook5velox4tzdb9time_zone6__implEEclEPS4_.exit.i.i.i.i.i5.i.i52: ; preds = %bb.f
  tail call void @_ZN8facebook5velox4tzdb9time_zone6__implD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.ap) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 112) #30
  br label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit53

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit53: ; preds = %bb.f, %_ZNKSt14default_deleteIN8facebook5velox4tzdb9time_zone6__implEEclEPS4_.exit.i.i.i.i.i5.i.i52
  call void @_ZN8facebook5velox4tzdb9time_zoneD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.l
end_hunk_9
begin_hunk_10_@_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_:bb.a
  store ptr null, ptr %0, align 8, !tbaa !97
  %i.bc = load ptr, ptr %1, align 8, !tbaa !97
  store ptr null, ptr %1, align 8, !tbaa !97
  store ptr %i.bc, ptr %0, align 8, !tbaa !97
  %13 = inttoptr i64 %i.bb to ptr
  %i.bd = load ptr, ptr %1, align 8, !tbaa !97    ; 3 uses
  store ptr null, ptr %6, align 8, !tbaa !97
  store ptr %13, ptr %1, align 8, !tbaa !97
  %.not.i.i.i.i.i4.i.i59 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i4.i.i59, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit67, label %_ZNKSt14default_deleteIN8facebook5velox4tzdb9time_zone6__implEEclEPS4_.exit.i.i.i.i.i5.i.i66

_ZNKSt14default_deleteIN8facebook5velox4tzdb9time_zone6__implEEclEPS4_.exit.i.i.i.i.i5.i.i66: ; preds = %bb.h
  tail call void @_ZN8facebook5velox4tzdb9time_zone6__implD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.bd) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef 112) #30
  br label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit67

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit67: ; preds = %bb.h, %_ZNKSt14default_deleteIN8facebook5velox4tzdb9time_zone6__implEEclEPS4_.exit.i.i.i.i.i5.i.i66
  call void @_ZN8facebook5velox4tzdb9time_zoneD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.l
end_hunk_10
begin_hunk_11_@_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_:bb.a
  store ptr null, ptr %0, align 8, !tbaa !97
  %i.bq = load ptr, ptr %3, align 8, !tbaa !97
  store ptr null, ptr %3, align 8, !tbaa !97
  store ptr %i.bq, ptr %0, align 8, !tbaa !97
  %14 = inttoptr i64 %i.bp to ptr
  %i.br = load ptr, ptr %3, align 8, !tbaa !97    ; 3 uses
  store ptr null, ptr %5, align 8, !tbaa !97
  store ptr %14, ptr %3, align 8, !tbaa !97
  %.not.i.i.i.i.i4.i.i71 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i4.i.i71, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit81, label %_ZNKSt14default_deleteIN8facebook5velox4tzdb9time_zone6__implEEclEPS4_.exit.i.i.i.i.i5.i.i80

_ZNKSt14default_deleteIN8facebook5velox4tzdb9time_zone6__implEEclEPS4_.exit.i.i.i.i.i5.i.i80: ; preds = %bb.j
  tail call void @_ZN8facebook5velox4tzdb9time_zone6__implD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.br) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef 112) #30
  br label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit81

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit81: ; preds = %bb.j, %_ZNKSt14default_deleteIN8facebook5velox4tzdb9time_zone6__implEEclEPS4_.exit.i.i.i.i.i5.i.i80
  call void @_ZN8facebook5velox4tzdb9time_zoneD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.l
end_hunk_11
begin_hunk_12_@_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_:bb.a
  store ptr null, ptr %0, align 8, !tbaa !97
  %i.bt = load ptr, ptr %2, align 8, !tbaa !97
  store ptr null, ptr %2, align 8, !tbaa !97
  store ptr %i.bt, ptr %0, align 8, !tbaa !97
  %15 = inttoptr i64 %i.bs to ptr
  %i.bu = load ptr, ptr %2, align 8, !tbaa !97    ; 3 uses
  store ptr null, ptr %4, align 8, !tbaa !97
  store ptr %15, ptr %2, align 8, !tbaa !97
  %.not.i.i.i.i.i4.i.i75 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i.i4.i.i75, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit87, label %_ZNKSt14default_deleteIN8facebook5velox4tzdb9time_zone6__implEEclEPS4_.exit.i.i.i.i.i5.i.i86

_ZNKSt14default_deleteIN8facebook5velox4tzdb9time_zone6__implEEclEPS4_.exit.i.i.i.i.i5.i.i86: ; preds = %bb.k
  tail call void @_ZN8facebook5velox4tzdb9time_zone6__implD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.bu) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef 112) #30
  br label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit87

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit87: ; preds = %bb.k, %_ZNKSt14default_deleteIN8facebook5velox4tzdb9time_zone6__implEEclEPS4_.exit.i.i.i.i.i5.i.i86
  call void @_ZN8facebook5velox4tzdb9time_zoneD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.l
end_hunk_12
begin_hunk_13_@_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_SD_T0_:bb.a
  br label %bb.c

bb.c:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit, %bb.b
  %.sroa.020.1 = phi ptr [ %.sroa.020.0, %bb.b ], [ %i.l, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit ] ; 7 uses
  %i.a = call { i64, ptr } @_ZNK8facebook5velox4tzdb9time_zone6__nameEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.020.1) #27 ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0        ; 2 uses
  %i.c = call { i64, ptr } @_ZNK8facebook5velox4tzdb9time_zone6__nameEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #27 ; 2 uses
end_hunk_13
begin_hunk_14_@_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_SD_T0_:bb.a
  store ptr null, ptr %.sroa.020.1, align 8, !tbaa !97
  %i.y = load ptr, ptr %.sroa.0.1, align 8, !tbaa !97
  store ptr null, ptr %.sroa.0.1, align 8, !tbaa !97
  store ptr %i.y, ptr %.sroa.020.1, align 8, !tbaa !97
  %4 = inttoptr i64 %i.x to ptr
  %i.z = load ptr, ptr %.sroa.0.1, align 8, !tbaa !97 ; 3 uses
  store ptr null, ptr %3, align 8, !tbaa !97
  store ptr %4, ptr %.sroa.0.1, align 8, !tbaa !97
  %.not.i.i.i.i.i4.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i4.i.i, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit, label %_ZNKSt14default_deleteIN8facebook5velox4tzdb9time_zone6__implEEclEPS4_.exit.i.i.i.i.i5.i.i

_ZNKSt14default_deleteIN8facebook5velox4tzdb9time_zone6__implEEclEPS4_.exit.i.i.i.i.i5.i.i: ; preds = %bb.f
  call void @_ZN8facebook5velox4tzdb9time_zone6__implD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.z) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef 112) #30
  br label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit: ; preds = %bb.f, %_ZNKSt14default_deleteIN8facebook5velox4tzdb9time_zone6__implEEclEPS4_.exit.i.i.i.i.i5.i.i
  call void @_ZN8facebook5velox4tzdb9time_zoneD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.b, !llvm.loop !274
end_hunk_14
