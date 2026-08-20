inline.NumInlined: 2616
inline.NumDeleted: 893
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZdlPvm
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_SG_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1 ; 3 uses
  %4 = alloca %"class.google::protobuf::MapKey", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1 ; 4 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph26

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEET_SG_SG_T0_.exit
  %i.g = icmp eq i64 %i.p, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph26, !llvm.loop !295

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge18.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_SG_RT0_(ptr %0, ptr %storemerge18.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_SG_RT0_(ptr %0, ptr %storemerge18.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.loopexit

.lr.ph26:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1825 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01924 = phi i64 [ %i.p, %bb.b ], [ %2, %.lr.ph ]
  %i.h = phi i64 [ %i.r, %bb.b ], [ %i.c, %.lr.ph ]
  %i.i = udiv i64 %i.h, 48
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.i
  %i.k = getelementptr inbounds i8, ptr %storemerge1825, i64 -24
  call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_SG_SG_SG_T0_(ptr %0, ptr nonnull %i.e, ptr %i.j, ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph26
  %.sroa.010.0.i.i = phi ptr [ %i.e, %.lr.ph26 ], [ %i.m, %bb.f ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge1825, %.lr.ph26 ], [ %.sroa.0.1.i.i, %bb.f ]
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %bb.c ], [ %i.m, %bb.d ] ; 9 uses
  %i.l = call noundef zeroext i1 @_ZNK6google8protobuf8internal12MapKeySorter16MapKeyComparatorclERKNS0_6MapKeyES6_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(20) %0)
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 24 ; 2 uses
  br i1 %i.l, label %bb.d, label %.preheader.i.i, !llvm.loop !296

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.d ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 6 uses
  %i.n = call noundef zeroext i1 @_ZNK6google8protobuf8internal12MapKeySorter16MapKeyComparatorclERKNS0_6MapKeyES6_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0.1.i.i)
  br i1 %i.n, label %.preheader.i.i, label %bb.e, !llvm.loop !297

bb.e:                                             ; preds = %.preheader.i.i
  %i.o = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.o, label %bb.f, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEET_SG_SG_T0_.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.010.1.i.i, i64 24, i1 false), !tbaa.struct !181
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0.1.i.i, i64 20, i1 false), !tbaa.struct !181
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !181
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.c, !llvm.loop !298

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEET_SG_SG_T0_.exit: ; preds = %bb.e
  %i.p = add nsw i64 %.01924, -1                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_SG_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge1825, i64 noundef %i.p)
  %i.q = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = icmp sgt i64 %i.r, 384
  br i1 %i.s, label %bb.b, label %.loopexit, !llvm.loop !295

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEET_SG_SG_T0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_SG_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 1 ; 4 uses
  %3 = alloca %"class.google::protobuf::MapKey", align 8 ; 6 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1 ; 3 uses
  %5 = alloca %"class.google::protobuf::MapKey", align 8 ; 4 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 1 ; 4 uses
  %7 = alloca %"class.google::protobuf::MapKey", align 8 ; 6 uses
  %8 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 1 ; 4 uses
  %9 = alloca %"class.google::protobuf::MapKey", align 8 ; 6 uses
  %10 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1 ; 3 uses
  %11 = alloca %"class.google::protobuf::MapKey", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %scevgep = getelementptr i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.019.i.idx = phi i64 [ 24, %.lr.ph.i ], [ %.sroa.0.019.i.add, %bb.g ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.019.i.ptr, %bb.g ] ; 3 uses
  %.sroa.0.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.019.i.idx ; 6 uses
  %i.e = call noundef zeroext i1 @_ZNK6google8protobuf8internal12MapKeySorter16MapKeyComparatorclERKNS0_6MapKeyES6_(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0.019.i.ptr, ptr noundef nonnull align 8 dereferenceable(20) %0)
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.019.i.ptr, i64 24, i1 false), !tbaa.struct !181
  %i.f = icmp samesign ugt i64 %.sroa.0.019.i.idx, 24
  br i1 %i.f, label %bb.d, label %bb.e, !prof !21

bb.d:                                             ; preds = %bb.c
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.g, ptr noundef nonnull align 8 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !181
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %11, i64 20, i1 false), !tbaa.struct !181
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.019.i.ptr, i64 24, i1 false), !tbaa.struct !181
  %i.h = call noundef zeroext i1 @_ZNK6google8protobuf8internal12MapKeySorter16MapKeyComparatorclERKNS0_6MapKeyES6_(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(20) %9, ptr noundef nonnull align 8 dereferenceable(20) %.pn18.i)
  br i1 %i.h, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn18.i, %bb.f ] ; 4 uses
  %.sroa.03.07.i.i = phi ptr [ %.sroa.0.08.i.i, %.lr.ph.i.i ], [ %.sroa.0.019.i.ptr, %bb.f ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.03.07.i.i, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0.08.i.i, i64 20, i1 false), !tbaa.struct !181
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i.i, i64 -24 ; 2 uses
  %i.i = call noundef zeroext i1 @_ZNK6google8protobuf8internal12MapKeySorter16MapKeyComparatorclERKNS0_6MapKeyES6_(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(20) %9, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0.0.i.i)
  br i1 %i.i, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_T0_.exit.i, !llvm.loop !299

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.03.0.lcssa.i.i = phi ptr [ %.sroa.0.019.i.ptr, %bb.f ], [ %.sroa.0.08.i.i, %.lr.ph.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.03.0.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(20) %9, i64 20, i1 false), !tbaa.struct !181
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i
  %.sroa.0.019.i.add = add nuw nsw i64 %.sroa.0.019.i.idx, 24 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.019.i.add, 384
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_SG_T0_.exit, label %bb.b, !llvm.loop !300

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_SG_T0_.exit: ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %.not6.i = icmp eq ptr %i.j, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_SG_T0_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_SG_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_T0_.exit.i13
  %.sroa.0.07.i = phi ptr [ %i.m, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_T0_.exit.i13 ], [ %i.j, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_SG_T0_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.07.i, i64 24, i1 false), !tbaa.struct !181
  %.sroa.0.06.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -24 ; 2 uses
  %i.k = call noundef zeroext i1 @_ZNK6google8protobuf8internal12MapKeySorter16MapKeyComparatorclERKNS0_6MapKeyES6_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(20) %7, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0.06.i.i)
  br i1 %i.k, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_T0_.exit.i13

.lr.ph.i.i16:                                     ; preds = %.lr.ph.i12, %.lr.ph.i.i16
  %.sroa.0.08.i.i17 = phi ptr [ %.sroa.0.0.i.i19, %.lr.ph.i.i16 ], [ %.sroa.0.06.i.i, %.lr.ph.i12 ] ; 4 uses
  %.sroa.03.07.i.i18 = phi ptr [ %.sroa.0.08.i.i17, %.lr.ph.i.i16 ], [ %.sroa.0.07.i, %.lr.ph.i12 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.03.07.i.i18, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0.08.i.i17, i64 20, i1 false), !tbaa.struct !181
  %.sroa.0.0.i.i19 = getelementptr inbounds i8, ptr %.sroa.0.08.i.i17, i64 -24 ; 2 uses
  %i.l = call noundef zeroext i1 @_ZNK6google8protobuf8internal12MapKeySorter16MapKeyComparatorclERKNS0_6MapKeyES6_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(20) %7, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0.0.i.i19)
  br i1 %i.l, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_T0_.exit.i13, !llvm.loop !299

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_T0_.exit.i13: ; preds = %.lr.ph.i.i16, %.lr.ph.i12
  %.sroa.03.0.lcssa.i.i14 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i12 ], [ %.sroa.0.08.i.i17, %.lr.ph.i.i16 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.03.0.lcssa.i.i14, ptr noundef nonnull align 8 dereferenceable(20) %7, i64 20, i1 false), !tbaa.struct !181
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 24 ; 2 uses
  %.not.i15 = icmp eq ptr %i.m, %1
  br i1 %.not.i15, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_SG_T0_.exit, label %.lr.ph.i12, !llvm.loop !301

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.n = icmp eq ptr %0, %1
  %.sroa.0.016.i21 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not17.i22 = icmp eq ptr %.sroa.0.016.i21, %1
  %or.cond = select i1 %i.n, i1 true, i1 %.not17.i22
  br i1 %or.cond, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_SG_T0_.exit37, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %bb.h, %bb.n
  %.sroa.0.019.i24 = phi ptr [ %.sroa.0.0.i28, %bb.n ], [ %.sroa.0.016.i21, %bb.h ] ; 8 uses
  %.pn18.i25 = phi ptr [ %.sroa.0.019.i24, %bb.n ], [ %0, %bb.h ] ; 4 uses
  %i.o = call noundef zeroext i1 @_ZNK6google8protobuf8internal12MapKeySorter16MapKeyComparatorclERKNS0_6MapKeyES6_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0.019.i24, ptr noundef nonnull align 8 dereferenceable(20) %0)
  br i1 %i.o, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.lr.ph.i23
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.019.i24, i64 24, i1 false), !tbaa.struct !181
  %i.p = ptrtoint ptr %.sroa.0.019.i24 to i64
  %i.q = sub i64 %i.p, %i.b                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 24
  br i1 %i.r, label %bb.j, label %bb.k, !prof !21

bb.j:                                             ; preds = %bb.i
  %12 = getelementptr inbounds nuw i8, ptr %.pn18.i25, i64 48
  %.neg23.i35 = udiv exact i64 %i.q, 24
  %.neg23.neg.i36 = sub nsw i64 0, %.neg23.i35
  %13 = getelementptr inbounds [24 x i8], ptr %12, i64 %.neg23.neg.i36
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.q, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i34

bb.k:                                             ; preds = %bb.i
  %i.s = icmp eq i64 %i.q, 24
  br i1 %i.s, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i34

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %.pn18.i25, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.t, ptr noundef nonnull align 8 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !181
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i34

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i34: ; preds = %bb.l, %bb.k, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %5, i64 20, i1 false), !tbaa.struct !181
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.i23
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.019.i24, i64 24, i1 false), !tbaa.struct !181
  %i.u = call noundef zeroext i1 @_ZNK6google8protobuf8internal12MapKeySorter16MapKeyComparatorclERKNS0_6MapKeyES6_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 8 dereferenceable(20) %.pn18.i25)
  br i1 %i.u, label %.lr.ph.i.i30, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_T0_.exit.i26

.lr.ph.i.i30:                                     ; preds = %bb.m, %.lr.ph.i.i30
  %.sroa.0.08.i.i31 = phi ptr [ %.sroa.0.0.i.i33, %.lr.ph.i.i30 ], [ %.pn18.i25, %bb.m ] ; 4 uses
  %.sroa.03.07.i.i32 = phi ptr [ %.sroa.0.08.i.i31, %.lr.ph.i.i30 ], [ %.sroa.0.019.i24, %bb.m ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.03.07.i.i32, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0.08.i.i31, i64 20, i1 false), !tbaa.struct !181
  %.sroa.0.0.i.i33 = getelementptr inbounds i8, ptr %.sroa.0.08.i.i31, i64 -24 ; 2 uses
  %i.v = call noundef zeroext i1 @_ZNK6google8protobuf8internal12MapKeySorter16MapKeyComparatorclERKNS0_6MapKeyES6_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0.0.i.i33)
  br i1 %i.v, label %.lr.ph.i.i30, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_T0_.exit.i26, !llvm.loop !299

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_T0_.exit.i26: ; preds = %.lr.ph.i.i30, %bb.m
  %.sroa.03.0.lcssa.i.i27 = phi ptr [ %.sroa.0.019.i24, %bb.m ], [ %.sroa.0.08.i.i31, %.lr.ph.i.i30 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.03.0.lcssa.i.i27, ptr noundef nonnull align 8 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !181
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_T0_.exit.i26, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i34
  %.sroa.0.0.i28 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i24, i64 24 ; 2 uses
  %.not.i29 = icmp eq ptr %.sroa.0.0.i28, %1
  br i1 %.not.i29, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_SG_T0_.exit37, label %.lr.ph.i23, !llvm.loop !300

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_SG_T0_.exit37: ; preds = %bb.n, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_SG_T0_.exit

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_SG_T0_.exit: ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_T0_.exit.i13, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_SG_T0_.exit, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_SG_T0_.exit37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_SG_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"class.google::protobuf::MapKey", align 8 ; 7 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1 ; 3 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val", align 1 ; 4 uses
  %6 = alloca %"class.google::protobuf::MapKey", align 8 ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 24
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_SG_SG_RT0_.exit
  %.sroa.0.05 = phi ptr [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_SG_SG_RT0_.exit ], [ %1, %bb.a ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.e, ptr noundef nonnull align 8 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !181
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.a                       ; 3 uses
  %i.h = sdiv exact i64 %i.g, 24                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.i = add nsw i64 %i.h, -1
  %i.j = sdiv i64 %i.i, 2
  %i.k = icmp sgt i64 %i.g, 48
  br i1 %i.k, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %.lr.ph.i.i
  %.033.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.l = shl i64 %.033.i.i, 1                     ; 2 uses
  %i.m = add i64 %i.l, 2                          ; 2 uses
  %i.n = getelementptr inbounds [24 x i8], ptr %0, i64 %i.m
  %i.o = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.p = getelementptr inbounds [24 x i8], ptr %0, i64 %i.o
  %i.q = call noundef zeroext i1 @_ZNK6google8protobuf8internal12MapKeySorter16MapKeyComparatorclERKNS0_6MapKeyES6_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(20) %i.n, ptr noundef nonnull align 8 dereferenceable(20) %i.p)
  %spec.select.i.i = select i1 %i.q, i64 %i.o, i64 %i.m ; 4 uses
  %i.r = getelementptr inbounds [24 x i8], ptr %0, i64 %spec.select.i.i
  %i.s = getelementptr inbounds [24 x i8], ptr %0, i64 %.033.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.s, ptr noundef nonnull align 8 dereferenceable(20) %i.r, i64 20, i1 false), !tbaa.struct !181
  %i.t = icmp slt i64 %spec.select.i.i, %i.j
  br i1 %i.t, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !302

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.lr.ph
  %.0.lcssa.i.i = phi i64 [ 0, %.lr.ph ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.u = and i64 %i.h, 1
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.w = add nsw i64 %i.h, -2
  %i.x = ashr exact i64 %i.w, 1
  %i.y = icmp eq i64 %.0.lcssa.i.i, %i.x
  br i1 %i.y, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  %i.z = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.aa = or disjoint i64 %i.z, 1                 ; 2 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.aa
  %i.ac = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ac, ptr noundef nonnull align 8 dereferenceable(20) %i.ab, i64 20, i1 false), !tbaa.struct !181
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  br label %.lr.ph.i.i.i.preheader

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_SG_SG_RT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.c, %.thread.i
  %.018.i.i.i.ph = phi i64 [ %.0.lcssa.i.i, %bb.c ], [ %i.aa, %.thread.i ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.d
  %.018.i.i.i = phi i64 [ %.0919.i.i67.i, %bb.d ], [ %.018.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.0919.in.i.i.i = add nsw i64 %.018.i.i.i, -1
  %.0919.i.i67.i = lshr i64 %.0919.in.i.i.i, 1    ; 3 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0919.i.i67.i ; 2 uses
  %i.ae = call noundef zeroext i1 @_ZNK6google8protobuf8internal12MapKeySorter16MapKeyComparatorclERKNS0_6MapKeyES6_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(20) %i.ad, ptr noundef nonnull align 8 dereferenceable(20) %3)
  br i1 %i.ae, label %bb.d, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_SG_SG_RT0_.exit

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.af = getelementptr inbounds [24 x i8], ptr %0, i64 %.018.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.af, ptr noundef nonnull align 8 dereferenceable(20) %i.ad, i64 20, i1 false), !tbaa.struct !181
  %.not8.i = icmp eq i64 %.0919.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_SG_SG_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !303

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_SG_SG_RT0_.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.c ], [ %.018.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.d ]
  %i.ag = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ag, ptr noundef nonnull align 8 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !181
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ah = icmp sgt i64 %i.g, 24
  br i1 %i.ah, label %.lr.ph, label %._crit_edge, !llvm.loop !304

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_SG_SG_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_SG_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"class.google::protobuf::MapKey", align 8 ; 5 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1 ; 3 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val", align 1 ; 3 uses
  %6 = alloca %"class.google::protobuf::MapKey", align 8 ; 4 uses
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
  %i.j = and i64 %i.e, 1
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_T0_SH_T1_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.g, %bb.b ], [ %i.ah, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf6MapKeyESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterINS3_8internal12MapKeySorter16MapKeyComparatorEEEEvT_T0_SH_T1_T2_.exit ] ; 8 uses
  %i.p = getelementptr inbounds [24 x i8], ptr %0, i64 %.08
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.q = icmp slt i64 %.08, %i.i
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.033.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.08, %bb.c ] ; 2 uses
  %i.r = shl i64 %.033.i, 1                       ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [24 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [24 x i8], ptr %0, i64 %i.u
end_hunk_0
