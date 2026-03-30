begin_hunk_0
define linkonce_odr hidden void @_ZSt16__introsort_loopIPN6hermes20ExceptionHandlerInfoElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
end_hunk_0
begin_hunk_1

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
end_hunk_1
begin_hunk_2
  br i1 %i.ac, label %bb.i, label %_ZSt27__unguarded_partition_pivotIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEET_S6_S6_T0_.exit

bb.i:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit15.thread.i.i
  %.sroa.0.0.copyload.i.i = load <4 x i32>, ptr %.1.i.i, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.1.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.114.i.i, i64 16, i1 false), !tbaa.struct !200
  store <4 x i32> %.sroa.0.0.copyload.i.i, ptr %.114.i.i, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  br label %bb.c, !llvm.loop !201

end_hunk_2
begin_hunk_3
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
end_hunk_3
begin_hunk_4
  br i1 %i.l, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread16.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.i, %bb.c
  %.sroa.0.0.copyload.i = load <4 x i32>, ptr %.020.i.ptr, align 4
  %i.m = icmp samesign ugt i64 %.020.i.idx, 16
  br i1 %i.m, label %bb.e, label %bb.f, !prof !102

end_hunk_4
begin_hunk_5
  br label %_ZSt13move_backwardIPN6hermes20ExceptionHandlerInfoES2_ET0_T_S4_S3_.exit.i

_ZSt13move_backwardIPN6hermes20ExceptionHandlerInfoES2_ET0_T_S4_S3_.exit.i: ; preds = %bb.f, %bb.e
  store <4 x i32> %.sroa.0.0.copyload.i, ptr %0, align 4
  br label %bb.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread16.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.i, %bb.d
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 20
  %.sroa.5.0.copyload.i.i = load <2 x i32>, ptr %.sroa.5.0..sroa_idx.i.i, align 4
  br label %bb.g

bb.g:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN6hermes20ExceptionHandlerInfoEPS4_EEbRT_T0_.exit.thread.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread16.i
end_hunk_5
begin_hunk_6
_ZSt25__unguarded_linear_insertIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN6hermes20ExceptionHandlerInfoEPS4_EEbRT_T0_.exit.i.i, %bb.h
  store i32 %.sroa.0.0.copyload.i.pre.i, ptr %.09.i.i, align 4, !tbaa !3
  %.sroa.5.0..09.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 4
  store <2 x i32> %.sroa.5.0.copyload.i.i, ptr %.sroa.5.0..09.sroa_idx.i.i, align 4
  %.sroa.511.0..09.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 12
  store i32 %i.g, ptr %.sroa.511.0..09.sroa_idx.i.i, align 4, !tbaa !3
  br label %bb.i
end_hunk_6
begin_hunk_7
  %.06.i = phi ptr [ %i.ab, %_ZSt25__unguarded_linear_insertIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i11 ], [ %i.u, %_ZSt16__insertion_sortIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit ] ; 5 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %.06.i, align 4, !tbaa !3 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i8 = getelementptr inbounds nuw i8, ptr %.06.i, i64 4
  %.sroa.5.0.copyload.i.i9 = load <2 x i32>, ptr %.sroa.5.0..sroa_idx.i.i8, align 4
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.06.i, i64 12
  %.sroa.511.0.copyload.i.i = load i32, ptr %.sroa.511.0..sroa_idx.i.i, align 4, !tbaa !3 ; 3 uses
  br label %bb.j
end_hunk_7
begin_hunk_8
_ZSt25__unguarded_linear_insertIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i11: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN6hermes20ExceptionHandlerInfoEPS4_EEbRT_T0_.exit.i.i15, %bb.k
  store i32 %.sroa.0.0.copyload.i.i, ptr %.09.i.i9, align 4, !tbaa !3
  %.sroa.5.0..09.sroa_idx.i.i12 = getelementptr inbounds nuw i8, ptr %.09.i.i9, i64 4
  store <2 x i32> %.sroa.5.0.copyload.i.i9, ptr %.sroa.5.0..09.sroa_idx.i.i12, align 4
  %.sroa.511.0..09.sroa_idx.i.i13 = getelementptr inbounds nuw i8, ptr %.09.i.i9, i64 12
  store i32 %.sroa.511.0.copyload.i.i, ptr %.sroa.511.0..09.sroa_idx.i.i13, align 4, !tbaa !3
  %i.ab = getelementptr inbounds nuw i8, ptr %.06.i, i64 16 ; 2 uses
end_hunk_8
begin_hunk_9
  br i1 %i.ak, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread.i34, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread16.i22

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread.i34: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.i33, %bb.m
  %.sroa.0.0.copyload.i37 = load <4 x i32>, ptr %.020.i19, align 4
  %i.al = ptrtoint ptr %.020.i19 to i64
  %i.am = sub i64 %i.al, %i.b                     ; 3 uses
  %i.an = ashr exact i64 %i.am, 4                 ; 2 uses
end_hunk_9
begin_hunk_10
  br label %_ZSt13move_backwardIPN6hermes20ExceptionHandlerInfoES2_ET0_T_S4_S3_.exit.i35

_ZSt13move_backwardIPN6hermes20ExceptionHandlerInfoES2_ET0_T_S4_S3_.exit.i35: ; preds = %bb.q, %bb.p, %bb.o
  store <4 x i32> %.sroa.0.0.copyload.i37, ptr %0, align 4
  br label %bb.t

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread16.i22: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.i33, %bb.n
  %.sroa.5.0..sroa_idx.i.i23 = getelementptr inbounds nuw i8, ptr %.pn19.i20, i64 20
  %.sroa.5.0.copyload.i.i25 = load <2 x i32>, ptr %.sroa.5.0..sroa_idx.i.i23, align 4
  br label %bb.r

bb.r:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN6hermes20ExceptionHandlerInfoEPS4_EEbRT_T0_.exit.thread.i.i32, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPN6hermes20ExceptionHandlerInfoES5_EEbT_T0_.exit.thread16.i22
end_hunk_10
begin_hunk_11
_ZSt25__unguarded_linear_insertIPN6hermes20ExceptionHandlerInfoEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i26: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN6hermes20ExceptionHandlerInfoEPS4_EEbRT_T0_.exit.i.i31, %bb.s
  store i32 %.sroa.0.0.copyload.i.pre.i21, ptr %.09.i.i24, align 4, !tbaa !3
  %.sroa.5.0..09.sroa_idx.i.i27 = getelementptr inbounds nuw i8, ptr %.09.i.i24, i64 4
  store <2 x i32> %.sroa.5.0.copyload.i.i25, ptr %.sroa.5.0..09.sroa_idx.i.i27, align 4
  %.sroa.511.0..09.sroa_idx.i.i28 = getelementptr inbounds nuw i8, ptr %.09.i.i24, i64 12
  store i32 %i.af, ptr %.sroa.511.0..09.sroa_idx.i.i28, align 4, !tbaa !3
  br label %bb.t
end_hunk_11
