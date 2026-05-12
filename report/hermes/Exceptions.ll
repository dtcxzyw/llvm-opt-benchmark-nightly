inline.NumInlined: 640
inline.NumDeleted: 331
begin_hunk_0
%"struct.llvh::AlignedCharArrayUnion.130" = type { %"struct.llvh::AlignedCharArray.131" }
%"struct.llvh::AlignedCharArray.131" = type { [8 x i8] }
%"struct.__gnu_cxx::__ops::_Iter_less_iter" = type { i8 }

$_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9CatchInstENS2_17CatchCoverageInfoENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E16FindAndConstructERKS4_ = comdat any

end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIPN6hermes20ExceptionHandlerInfoElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_
define linkonce_odr hidden void @_ZSt16__introsort_loopIPN6hermes20ExceptionHandlerInfoElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
end_hunk_1
begin_hunk_2_@_ZSt16__introsort_loopIPN6hermes20ExceptionHandlerInfoElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_:bb.a

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.015.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_RT0_(ptr noundef %0, ptr noundef %.015.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZSt11__sort_heapIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_RT0_(ptr noundef %0, ptr noundef %.015.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.loopexit

.lr.ph25:                                         ; preds = %.lr.ph, %bb.b
end_hunk_2
begin_hunk_3_@_ZSt16__introsort_loopIPN6hermes20ExceptionHandlerInfoElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_:bb.a
  br i1 %i.ac, label %bb.i, label %_ZSt27__unguarded_partition_pivotIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEET_S6_S6_T0_.exit

bb.i:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit15.thread.i.i
  %.sroa.0.0.copyload = load <4 x i32>, ptr %.1.i.i, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.1.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.114.i.i, i64 16, i1 false), !tbaa.struct !200
  store <4 x i32> %.sroa.0.0.copyload, ptr %.114.i.i, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  br label %bb.c, !llvm.loop !201

end_hunk_3
begin_hunk_4_@_ZSt16__introsort_loopIPN6hermes20ExceptionHandlerInfoElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_:bb.a
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
end_hunk_4
begin_hunk_5_@_ZSt22__final_insertion_sortIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_:bb.a
  br i1 %i.l, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread16.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.i, %bb.c
  %.sroa.0.0.copyload = load <4 x i32>, ptr %.020.i.ptr, align 4
  %i.m = icmp samesign ugt i64 %.020.i.idx, 16
  br i1 %i.m, label %bb.e, label %bb.f, !prof !102

end_hunk_5
begin_hunk_6_@_ZSt22__final_insertion_sortIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_:bb.a
  br label %_ZSt13move_backwardIPN6hermes20ExceptionHandlerInfoES2_ET0_T_S4_S3_.exit.i

_ZSt13move_backwardIPN6hermes20ExceptionHandlerInfoES2_ET0_T_S4_S3_.exit.i: ; preds = %bb.f, %bb.e
  store <4 x i32> %.sroa.0.0.copyload, ptr %0, align 4
  br label %bb.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread16.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.i, %bb.d
end_hunk_6
begin_hunk_7_@_ZSt22__final_insertion_sortIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_:bb.a
  br i1 %i.am, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread.i34, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread16.i22

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread.i34: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.i33, %bb.m
  %.sroa.054.0.copyload = load <4 x i32>, ptr %.020.i19, align 4
  %i.an = ptrtoint ptr %.020.i19 to i64
  %i.ao = sub i64 %i.an, %i.b                     ; 3 uses
  %i.ap = ashr exact i64 %i.ao, 4                 ; 2 uses
end_hunk_7
begin_hunk_8_@_ZSt22__final_insertion_sortIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_:bb.a
  br label %_ZSt13move_backwardIPN6hermes20ExceptionHandlerInfoES2_ET0_T_S4_S3_.exit.i35

_ZSt13move_backwardIPN6hermes20ExceptionHandlerInfoES2_ET0_T_S4_S3_.exit.i35: ; preds = %bb.q, %bb.p, %bb.o
  store <4 x i32> %.sroa.054.0.copyload, ptr %0, align 4
  br label %bb.t

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread16.i22: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.i33, %bb.n
end_hunk_8
begin_hunk_9_@_ZSt11__make_heapIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_RT0_:bb.a
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_S6_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !195  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
end_hunk_9
begin_hunk_10_@_ZSt22__move_median_to_firstIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_S6_T0_:bb.a
  br i1 %i.p, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit22.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit22.thread27

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit22.thread: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit22
  %.sroa.0.0.copyload = load <4 x i32>, ptr %0, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !200
  store <4 x i32> %.sroa.0.0.copyload, ptr %2, align 4
  br label %bb.g

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit22.thread27: ; preds = %bb.c, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit22
end_hunk_10
begin_hunk_11_@_ZSt22__move_median_to_firstIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_S6_T0_:bb.a
  br i1 %i.u, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit23.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit23.thread28

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit23.thread: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit22.thread27, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit23
  %.sroa.036.0.copyload = load <4 x i32>, ptr %0, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !200
  store <4 x i32> %.sroa.036.0.copyload, ptr %3, align 4
  br label %bb.g

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit23.thread28: ; preds = %bb.d, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit23
  %.sroa.038.0.copyload = load <4 x i32>, ptr %0, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !200
  store <4 x i32> %.sroa.038.0.copyload, ptr %1, align 4
  br label %bb.g

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread26: ; preds = %bb.b, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit
end_hunk_11
begin_hunk_12_@_ZSt22__move_median_to_firstIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_S6_T0_:bb.a
  br i1 %i.ab, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit24.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit24.thread29

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit24.thread: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread26, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit24
  %.sroa.040.0.copyload = load <4 x i32>, ptr %0, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !200
  store <4 x i32> %.sroa.040.0.copyload, ptr %1, align 4
  br label %bb.g

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit24.thread29: ; preds = %bb.e, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit24
end_hunk_12
begin_hunk_13_@_ZSt22__move_median_to_firstIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_S6_T0_:bb.a
  br i1 %i.ag, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit25.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit25.thread30

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit25.thread: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit24.thread29, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit25
  %.sroa.042.0.copyload = load <4 x i32>, ptr %0, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !200
  store <4 x i32> %.sroa.042.0.copyload, ptr %3, align 4
  br label %bb.g

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit25.thread30: ; preds = %bb.f, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit25
  %.sroa.044.0.copyload = load <4 x i32>, ptr %0, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !200
  store <4 x i32> %.sroa.044.0.copyload, ptr %2, align 4
  br label %bb.g

bb.g:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit24.thread, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit25.thread30, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit25.thread, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit22.thread, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit23.thread28, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit23.thread
end_hunk_13
