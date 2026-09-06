Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/SamplingProfilerSampler?download=true
inline.NumInlined: 568
inline.NumDeleted: 379
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6hermes2vm17sampling_profiler7Sampler9timerLoopEd:bb.a
  %.not.i.i = icmp slt i64 %i.bf, %i.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br i1 %.not.i.i, label %bb.h, label %"_ZNSt18condition_variable8wait_forIdSt5ratioILl1ELl1EEZN6hermes2vm17sampling_profiler7Sampler9timerLoopEdE3$_0EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit", !llvm.loop !104

"_ZNSt18condition_variable8wait_forIdSt5ratioILl1ELl1EEZN6hermes2vm17sampling_profiler7Sampler9timerLoopEdE3$_0EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit": ; preds = %bb.i
  %.pre = load i8, ptr %i.af, align 8, !tbaa !65, !range !66
  %i.bg = trunc nuw i8 %.pre to i1
  br i1 %i.bg, label %bb.e, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, !llvm.loop !105

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %"_ZNSt18condition_variable8wait_forIdSt5ratioILl1ELl1EEZN6hermes2vm17sampling_profiler7Sampler9timerLoopEdE3$_0EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit", %bb.h, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.preheader, %_ZN6hermes2vm17sampling_profiler7Sampler12sampleStacksEv.exit
  %i.bh = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ad) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret void
}

declare void @_ZN6hermes8oscompat15set_thread_nameEPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes2vm17sampling_profiler7Sampler7enabledEv(ptr noundef nonnull align 8 dereferenceable(208) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #14 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #15
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load i8, ptr %i.c, align 8, !tbaa !65, !range !66, !noundef !67
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #14 ; 0 uses
  ret i1 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes2vm17sampling_profiler7Sampler6enableEd(ptr noundef nonnull align 8 dereferenceable(208) %0, double noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.209", align 8 ; 5 uses
  %3 = alloca %"class.std::thread", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #14 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #15
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !65, !range !66, !noundef !67
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.f = tail call noundef zeroext i1 @_ZN6hermes2vm17sampling_profiler7Sampler14platformEnableEv(ptr noundef nonnull align 8 dereferenceable(208) %0) #14
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.c, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 0, ptr %3, align 8, !tbaa !116
  %i.g = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #17 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN6hermes2vm17sampling_profiler7SamplerEFvdEPS6_dEEEEEE, i64 16), ptr %i.g, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store double %1, ptr %i.h, align 8, !tbaa !118
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %0, ptr %i.i, align 8, !tbaa !120
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 ptrtoint (ptr @_ZN6hermes2vm17sampling_profiler7Sampler9timerLoopEd to i64), ptr %i.j, align 8, !tbaa !122
  %.repack4.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 0, ptr %.repack4.i.i.i.i.i.i, align 8, !tbaa !122
  store ptr %i.g, ptr %2, align 8, !tbaa !124
  call void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %2, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv) #14
  %i.k = load ptr, ptr %2, align 8, !tbaa !124    ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.k, null
  br i1 %.not.i.i2, label %_ZNSt6threadC2IMN6hermes2vm17sampling_profiler7SamplerEFvdEJPS4_RdEvEEOT_DpOT0_.exit, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.d
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.k) #14, !inline_history !115
  br label %_ZNSt6threadC2IMN6hermes2vm17sampling_profiler7SamplerEFvdEJPS4_RdEvEEOT_DpOT0_.exit

_ZNSt6threadC2IMN6hermes2vm17sampling_profiler7SamplerEFvdEJPS4_RdEvEEOT_DpOT0_.exit: ; preds = %bb.d, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.o, align 8, !tbaa !10
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %_ZNSt6threadD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6threadC2IMN6hermes2vm17sampling_profiler7SamplerEFvdEJPS4_RdEvEEOT_DpOT0_.exit
  call void @_ZSt9terminatev() #15
  unreachable

_ZNSt6threadD2Ev.exit:                            ; preds = %_ZNSt6threadC2IMN6hermes2vm17sampling_profiler7SamplerEFvdEJPS4_RdEvEEOT_DpOT0_.exit
  %i.p = load i64, ptr %3, align 8, !tbaa !10
  store i64 %i.p, ptr %i.o, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %_ZNSt6threadD2Ev.exit
  %.0 = phi i1 [ true, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ], [ true, %_ZNSt6threadD2Ev.exit ], [ false, %bb.c ]
  %i.q = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #14 ; 0 uses
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN6hermes2vm17sampling_profiler7Sampler14platformEnableEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes2vm17sampling_profiler7Sampler7disableEv(ptr noundef nonnull align 8 dereferenceable(208) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #14 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #15
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !65, !range !66, !noundef !67
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  br i1 %i.e, label %bb.c, label %.thread

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.f = tail call noundef zeroext i1 @_ZN6hermes2vm17sampling_profiler7Sampler15platformDisableEv(ptr noundef nonnull align 8 dereferenceable(208) %0) #14
  br i1 %i.f, label %bb.d, label %.thread

.thread:                                          ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %bb.c
  %.02.ph = xor i1 %i.e, true
  %i.g = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #14 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.c, align 8, !tbaa !65
  %i.h = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #14 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.i) #14
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #14
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %.1 = phi i1 [ true, %bb.d ], [ %.02.ph, %.thread ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZN6hermes2vm17sampling_profiler7Sampler15platformDisableEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: cold nofree noreturn nounwind
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.c = load ptr, ptr %1, align 8, !tbaa !14     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.i = load ptr, ptr %0, align 8, !tbaa !14     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE11_M_allocateEm.exit.i, !prof !69

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #15
  unreachable

_ZNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #17 ; 3 uses
  %2 = icmp samesign ugt i64 %i.f, 24
  br i1 %2, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6hermes2vm16SamplingProfiler10StackFrameESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit.sink.split.i, label %bb.e, !prof !70

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE11_M_allocateEm.exit.i
  %i.p = icmp eq i64 %i.f, 24
  br i1 %i.p, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6hermes2vm16SamplingProfiler10StackFrameESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit.sink.split.i, label %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6hermes2vm16SamplingProfiler10StackFrameESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit.sink.split.i: ; preds = %bb.e, %_ZNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit

_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit: ; preds = %bb.e, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6hermes2vm16SamplingProfiler10StackFrameESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit.sink.split.i
  %i.q = load ptr, ptr %0, align 8, !tbaa !14     ; 3 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #16
  br label %_ZNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.v, ptr %i.g, align 8, !tbaa !15
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6hermes2vm16SamplingProfiler10StackFrameESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.g:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !55
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.z, %i.f
  br i1 %.not24, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp sgt i64 %i.f, 24
  br i1 %i.aa, label %bb.i, label %bb.j, !prof !70

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6hermes2vm16SamplingProfiler10StackFrameESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.j:                                             ; preds = %bb.h
  %i.ab = icmp eq i64 %i.f, 24
  br i1 %i.ab, label %bb.k, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6hermes2vm16SamplingProfiler10StackFrameESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !54
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6hermes2vm16SamplingProfiler10StackFrameESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.l:                                             ; preds = %bb.g
  %i.ac = icmp sgt i64 %i.z, 24
  br i1 %i.ac, label %bb.m, label %bb.n, !prof !70

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.z, i1 false)
  br label %_ZSt4copyIPN6hermes2vm16SamplingProfiler10StackFrameES4_ET0_T_S6_S5_.exit

bb.n:                                             ; preds = %bb.l
  %i.ad = icmp eq i64 %i.z, 24
  br i1 %i.ad, label %bb.o, label %_ZSt4copyIPN6hermes2vm16SamplingProfiler10StackFrameES4_ET0_T_S6_S5_.exit

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !54
  br label %_ZSt4copyIPN6hermes2vm16SamplingProfiler10StackFrameES4_ET0_T_S6_S5_.exit

_ZSt4copyIPN6hermes2vm16SamplingProfiler10StackFrameES4_ET0_T_S6_S5_.exit: ; preds = %bb.m, %bb.n, %bb.o
  %i.ae = load ptr, ptr %1, align 8, !tbaa !14
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !55  ; 3 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !14
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj ; 3 uses
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 3 uses
  %i.ap = icmp sgt i64 %i.ao, 24
  br i1 %i.ap, label %bb.p, label %bb.q, !prof !70

bb.p:                                             ; preds = %_ZSt4copyIPN6hermes2vm16SamplingProfiler10StackFrameES4_ET0_T_S6_S5_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.af, ptr align 8 %i.ak, i64 %i.ao, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6hermes2vm16SamplingProfiler10StackFrameESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.q:                                             ; preds = %_ZSt4copyIPN6hermes2vm16SamplingProfiler10StackFrameES4_ET0_T_S6_S5_.exit
  %i.aq = icmp eq i64 %i.ao, 24
  br i1 %i.aq, label %bb.r, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6hermes2vm16SamplingProfiler10StackFrameESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !tbaa.struct !54
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6hermes2vm16SamplingProfiler10StackFrameESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6hermes2vm16SamplingProfiler10StackFrameESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit: ; preds = %bb.r, %bb.q, %bb.p, %bb.k, %bb.j, %bb.i, %_ZNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE13_M_deallocateEPS3_m.exit
  %i.ar = load ptr, ptr %0, align 8, !tbaa !14
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.at, align 8, !tbaa !55
  br label %bb.s

bb.s:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6hermes2vm16SamplingProfiler10StackFrameESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

declare void @_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(5000), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare noundef i32 @_ZNSt13random_device9_M_getvalEv(ptr noundef nonnull align 8 dereferenceable(5000)) local_unnamed_addr #4

declare void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS3_SJ_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb0EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !71
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %.thread30

.thread30:                                        ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !29     ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !27   ; 2 uses
  %i.g = urem i64 %i.d, %i.f                      ; 5 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !72   ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %.critedge, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.025.0.in = phi ptr [ %i.k, %bb.b ], [ %.sroa.025.0, %bb.d ]
  %.sroa.025.0 = load ptr, ptr %.sroa.025.0.in, align 8, !tbaa !24 ; 4 uses
  %.not = icmp eq ptr %.sroa.025.0, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.025.0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !29
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS3_EEPNS5_10_Hash_nodeIS3_Lb0EEEmRKT_m.exit, label %bb.c, !llvm.loop !125

bb.e:                                             ; preds = %bb.c
  %i.p = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !27
  %i.s = urem i64 %i.p, %i.r
  br label %.critedge

bb.f:                                             ; preds = %.thread30
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !24   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29
  %i.w = icmp eq ptr %i.c, %i.v
  br i1 %i.w, label %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS3_EEPNS5_10_Hash_nodeIS3_Lb0EEEmRKT_m.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.h
  %i.x = icmp eq ptr %i.c, %i.aa
  br i1 %i.x, label %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS3_EEPNS5_10_Hash_nodeIS3_Lb0EEEmRKT_m.exit, label %.lr.ph.i.i, !llvm.loop !126

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.020.i.i = phi ptr [ %i.y, %bb.g ], [ %i.t, %bb.f ]
  %i.y = load ptr, ptr %.020.i.i, align 8, !tbaa !24 ; 4 uses
  %.not18.i.i = icmp eq ptr %i.y, null
  br i1 %.not18.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !29  ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = urem i64 %i.ab, %i.f
  %.not19.i.i = icmp eq i64 %i.ac, %i.g
end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKS3_:bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29
  %i.k = icmp eq ptr %i.e, %i.j
  br i1 %i.k, label %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKS3_.exit, label %.lr.ph, !llvm.loop !129

.lr.ph:                                           ; preds = %.preheader.i, %bb.c
  %.016.i35 = phi ptr [ %i.l, %bb.c ], [ %i.d, %.preheader.i ] ; 2 uses
  %i.l = load ptr, ptr %.016.i35, align 8, !tbaa !24 ; 4 uses
  %.not14.i = icmp eq ptr %i.l, null
  br i1 %.not14.i, label %.critedge, label %bb.c, !llvm.loop !129

_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKS3_.exit: ; preds = %bb.c, %.preheader.i
  %i.m = phi ptr [ %i.d, %.preheader.i ], [ %i.l, %bb.c ]
  %.01115.i.lcssa = phi ptr [ %i.c, %.preheader.i ], [ %.016.i35, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !27   ; 2 uses
  %i.p = ptrtoint ptr %i.e to i64
  %i.q = urem i64 %i.p, %i.o                      ; 2 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !26    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.q
  %.pre40 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !72
  br label %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit

bb.d:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %1, align 8, !tbaa !29     ; 3 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !27   ; 4 uses
  %i.v = urem i64 %i.s, %i.u                      ; 5 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !26     ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !72   ; 7 uses
  %.not.i24 = icmp eq ptr %i.y, null
  br i1 %.not.i24, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !24   ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !29
  %i.ac = icmp eq ptr %i.r, %i.ab
  br i1 %i.ac, label %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread, label %.lr.ph.i

_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread: ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v ; 2 uses
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !24  ; 2 uses
  %.not18.i2655 = icmp eq ptr %i.ae, null
  br i1 %.not18.i2655, label %._crit_edge.i.i, label %bb.i

bb.f:                                             ; preds = %bb.g
  %i.af = icmp eq ptr %i.r, %i.ai
  br i1 %i.af, label %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit, label %.lr.ph.i, !llvm.loop !130

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.020.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ] ; 2 uses
  %i.ag = load ptr, ptr %.020.i, align 8, !tbaa !24 ; 4 uses
  %.not18.i = icmp eq ptr %i.ag, null
  br i1 %.not18.i, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !29 ; 2 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = urem i64 %i.aj, %i.u
  %.not19.i = icmp eq i64 %i.ak, %i.v
  br i1 %.not19.i, label %bb.f, label %..loopexit_crit_edge21.i, !llvm.loop !130

..loopexit_crit_edge21.i:                         ; preds = %bb.g
  br label %.critedge, !llvm.loop !130

_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit: ; preds = %bb.f, %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKS3_.exit
  %i.al = phi i64 [ %i.o, %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKS3_.exit ], [ %i.u, %bb.f ] ; 2 uses
  %i.am = phi ptr [ %.pre40, %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKS3_.exit ], [ %i.y, %bb.f ] ; 3 uses
  %i.an = phi ptr [ %.pre, %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKS3_.exit ], [ %i.w, %bb.f ] ; 3 uses
  %.020 = phi ptr [ %.01115.i.lcssa, %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKS3_.exit ], [ %.020.i, %bb.f ] ; 7 uses
  %.119 = phi ptr [ %i.m, %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKS3_.exit ], [ %i.ag, %bb.f ] ; 6 uses
  %.017 = phi i64 [ %i.q, %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKS3_.exit ], [ %i.v, %bb.f ] ; 3 uses
  %i.ao = icmp eq ptr %.020, %i.am
  %i.ap = load ptr, ptr %.119, align 8, !tbaa !24 ; 3 uses
  %.not18.i26 = icmp eq ptr %i.ap, null           ; 2 uses
  br i1 %i.ao, label %bb.h, label %bb.m

bb.h:                                             ; preds = %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.017 ; 2 uses
  br i1 %.not18.i26, label %._crit_edge.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread, %bb.h
  %i.ar = phi i64 [ %i.u, %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread ], [ %i.al, %bb.h ]
  %i.as = phi ptr [ %i.y, %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread ], [ %i.am, %bb.h ] ; 2 uses
  %i.at = phi ptr [ %i.w, %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread ], [ %i.an, %bb.h ]
  %.0205769 = phi ptr [ %i.y, %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread ], [ %.020, %bb.h ] ; 2 uses
  %.1195967 = phi ptr [ %i.z, %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread ], [ %.119, %bb.h ] ; 2 uses
  %.0176066 = phi i64 [ %i.v, %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread ], [ %.017, %bb.h ]
  %i.au = phi ptr [ %i.ad, %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread ], [ %i.aq, %bb.h ]
  %i.av = phi ptr [ %i.ae, %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread ], [ %i.ap, %bb.h ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !29
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = urem i64 %i.ay, %i.ar                   ; 2 uses
  %.not9.i.i = icmp eq i64 %i.az, %.0176066
  br i1 %.not9.i.i, label %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS5_15_Hash_node_baseEPNS5_10_Hash_nodeIS3_Lb0EEE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.az
  store ptr %i.as, ptr %i.ba, align 8, !tbaa !72
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread, %bb.j, %bb.h
  %i.bb = phi ptr [ %i.y, %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread ], [ %i.as, %bb.j ], [ %i.am, %bb.h ]
  %.0205770 = phi ptr [ %i.y, %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread ], [ %.0205769, %bb.j ], [ %.020, %bb.h ]
  %.1195968 = phi ptr [ %i.z, %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread ], [ %.1195967, %bb.j ], [ %.119, %bb.h ]
  %i.bc = phi ptr [ %i.ad, %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread ], [ %i.au, %bb.j ], [ %i.aq, %bb.h ]
  %i.bd = phi ptr [ null, %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread ], [ %i.av, %bb.j ], [ null, %bb.h ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.bb
  br i1 %i.bf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !23
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  store ptr null, ptr %i.bc, align 8, !tbaa !72
  br label %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS5_15_Hash_node_baseEPNS5_10_Hash_nodeIS3_Lb0EEE.exit

bb.m:                                             ; preds = %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit
  br i1 %.not18.i26, label %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS5_15_Hash_node_baseEPNS5_10_Hash_nodeIS3_Lb0EEE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !29
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = urem i64 %i.bi, %i.al                   ; 2 uses
  %.not17.i = icmp eq i64 %i.bj, %.017
  br i1 %.not17.i, label %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS5_15_Hash_node_baseEPNS5_10_Hash_nodeIS3_Lb0EEE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bj
  store ptr %.020, ptr %i.bk, align 8, !tbaa !72
  br label %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS5_15_Hash_node_baseEPNS5_10_Hash_nodeIS3_Lb0EEE.exit

_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS5_15_Hash_node_baseEPNS5_10_Hash_nodeIS3_Lb0EEE.exit: ; preds = %bb.i, %bb.l, %bb.m, %bb.n, %bb.o
  %.11958 = phi ptr [ %.1195967, %bb.i ], [ %.1195968, %bb.l ], [ %.119, %bb.m ], [ %.119, %bb.n ], [ %.119, %bb.o ] ; 2 uses
  %.02056 = phi ptr [ %.0205769, %bb.i ], [ %.0205770, %bb.l ], [ %.020, %bb.m ], [ %.020, %bb.n ], [ %.020, %bb.o ]
  %i.bl = load ptr, ptr %.11958, align 8, !tbaa !24
  store ptr %i.bl, ptr %.02056, align 8, !tbaa !24
  tail call void @_ZdlPvm(ptr noundef nonnull %.11958, i64 noundef 16) #16
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !71
  %i.bn = add i64 %i.bm, -1
  store i64 %i.bn, ptr %i.a, align 8, !tbaa !71
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.i, %.lr.ph, %..loopexit_crit_edge21.i, %bb.d, %bb.b, %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS5_15_Hash_node_baseEPNS5_10_Hash_nodeIS3_Lb0EEE.exit
  %.1 = phi i64 [ 1, %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS5_15_Hash_node_baseEPNS5_10_Hash_nodeIS3_Lb0EEE.exit ], [ 0, %.lr.ph ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %..loopexit_crit_edge21.i ], [ 0, %.lr.ph.i ]
  ret i64 %.1
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE17_M_realloc_insertIJRmRNSt6chrono10time_pointINS8_3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10StackFrameES_ISK_SaISK_EEEESO_EEEvNSJ_IPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !138    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #15
  unreachable

_ZNKSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 40
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #17 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 6 uses
  %i.r = load i64, ptr %2, align 8, !tbaa !10
  %.sroa.02.0.copyload.i = load i64, ptr %3, align 8, !tbaa !10
  %.sroa.01.0.copyload.i = load ptr, ptr %4, align 8, !tbaa !48 ; 4 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %5, align 8, !tbaa !48 ; 2 uses
  store i64 %i.r, ptr %i.q, align 8, !tbaa !139
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.sroa.02.0.copyload.i, ptr %i.s, align 8, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %i.u = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.v = ptrtoint ptr %.sroa.01.0.copyload.i to i64
  %i.w = sub i64 %i.u, %i.v                       ; 7 uses
  %i.x = icmp ugt i64 %i.w, 9223372036854775800
  br i1 %i.x, label %bb.c, label %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE12_M_check_lenEmPKc.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #15
  unreachable

_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i: ; preds = %_ZNKSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE12_M_check_lenEmPKc.exit
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i, %.sroa.01.0.copyload.i
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE11_M_allocateEm.exit.i.i.i

.thread.i.i.i:                                    ; preds = %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr null, i64 %i.w ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %i.y, ptr %i.z, align 8, !tbaa !15
  br label %_ZN6hermes2vm16SamplingProfiler10StackTraceC2EmNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10StackFrameESt6vectorISE_SaISE_EEEESJ_.exit

_ZNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE11_M_allocateEm.exit.i.i.i: ; preds = %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #17 ; 4 uses
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !14
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.w ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !15
  %6 = icmp samesign ugt i64 %i.w, 24
  br i1 %6, label %bb.d, label %bb.e, !prof !140

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE11_M_allocateEm.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr align 8 %.sroa.01.0.copyload.i, i64 %i.w, i1 false)
  br label %_ZN6hermes2vm16SamplingProfiler10StackTraceC2EmNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10StackFrameESt6vectorISE_SaISE_EEEESJ_.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE11_M_allocateEm.exit.i.i.i
  %i.ad = icmp eq i64 %i.w, 24
  br i1 %i.ad, label %bb.f, label %_ZN6hermes2vm16SamplingProfiler10StackTraceC2EmNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10StackFrameESt6vectorISE_SaISE_EEEESJ_.exit

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.0.copyload.i, i64 24, i1 false), !tbaa.struct !54
  br label %_ZN6hermes2vm16SamplingProfiler10StackTraceC2EmNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10StackFrameESt6vectorISE_SaISE_EEEESJ_.exit

_ZN6hermes2vm16SamplingProfiler10StackTraceC2EmNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10StackFrameESt6vectorISE_SaISE_EEEESJ_.exit: ; preds = %.thread.i.i.i, %bb.d, %bb.e, %bb.f
  %i.ae = phi ptr [ %i.ab, %bb.d ], [ %i.ab, %bb.e ], [ %i.ab, %bb.f ], [ %i.y, %.thread.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !55
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6hermes2vm16SamplingProfiler10StackTraceC2EmNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10StackFrameESt6vectorISE_SaISE_EEEESJ_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i ], [ %i.p, %_ZN6hermes2vm16SamplingProfiler10StackTraceC2EmNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10StackFrameESt6vectorISE_SaISE_EEEESJ_.exit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %i.c, %_ZN6hermes2vm16SamplingProfiler10StackTraceC2EmNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10StackFrameESt6vectorISE_SaISE_EEEESJ_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i, i64 16, i1 false), !alias.scope !143
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ai = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !48, !alias.scope !142, !noalias !141
  store <2 x ptr> %i.ai, ptr %i.ag, align 8, !tbaa !48, !alias.scope !141, !noalias !142
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !15, !alias.scope !142, !noalias !141
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !15, !alias.scope !141, !noalias !142
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false), !alias.scope !142, !noalias !141
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !134

_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZN6hermes2vm16SamplingProfiler10StackTraceC2EmNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10StackFrameESt6vectorISE_SaISE_EEEESJ_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZN6hermes2vm16SamplingProfiler10StackTraceC2EmNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10StackFrameESt6vectorISE_SaISE_EEEESJ_.exit ], [ %i.an, %.lr.ph.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i19 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i19, label %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit25, label %.lr.ph.i.i.i20

.lr.ph.i.i.i20:                                   ; preds = %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i20
  %.012.i.i.i21 = phi ptr [ %i.aw, %.lr.ph.i.i.i20 ], [ %i.ao, %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  %.0911.i.i.i22 = phi ptr [ %i.av, %.lr.ph.i.i.i20 ], [ %1, %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i21, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i22, i64 16, i1 false), !alias.scope !146
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i21, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i22, i64 16 ; 2 uses
  %i.ar = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !48, !alias.scope !145, !noalias !144
  store <2 x ptr> %i.ar, ptr %i.ap, align 8, !tbaa !48, !alias.scope !144, !noalias !145
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i21, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i22, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !15, !alias.scope !145, !noalias !144
  store ptr %i.au, ptr %i.as, align 8, !tbaa !15, !alias.scope !144, !noalias !145
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false), !alias.scope !145, !noalias !144
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i22, i64 40 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i21, i64 40 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.av, %i.b
  br i1 %.not.i.i.i23, label %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit25, label %.lr.ph.i.i.i20, !llvm.loop !134

_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit25: ; preds = %.lr.ph.i.i.i20, %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i24 = phi ptr [ %i.ao, %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.aw, %.lr.ph.i.i.i20 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i26 = icmp eq ptr %i.c, null
  br i1 %.not.i26, label %_ZNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit25
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !50
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ba) #16
  br label %_ZNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit25, %bb.g
  store ptr %i.p, ptr %0, align 8, !tbaa !138
  store ptr %.0.lcssa.i.i.i24, ptr %i.a, align 8, !tbaa !49
  %i.bb = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bb, ptr %i.ax, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef double @_ZNSt19normal_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(5000) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !64, !range !66, !noundef !67
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401F8000000000000000), !tbaa !6
  %i.e = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00), !tbaa !6
  %i.f = fdiv x86_fp80 %i.d, %i.e
  %i.g = fptoui x86_fp80 %i.f to i64              ; 2 uses
  %i.h = add i64 %i.g, 52
  %i.i = udiv i64 %i.h, %i.g
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1) ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4992 ; 3 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1816 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4984 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 3168 ; 2 uses
  %.pre.pre = load i64, ptr %i.j, align 8, !tbaa !57
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1808
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1816
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4984
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1808
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1816
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4984
  br label %select.unfold.i.i

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load double, ptr %i.s, align 8, !tbaa !63
  br label %bb.h

bb.c:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit
  %i.u = fdiv double %i.cn, %i.cq                 ; 2 uses
  %i.v = fcmp ult double %i.u, 1.000000e+00
  br i1 %i.v, label %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit, label %bb.d, !prof !70

select.unfold.i.i:                                ; preds = %select.unfold.i.i.backedge, %.preheader
  %i.w = phi i64 [ %.pre.pre, %.preheader ], [ %.be, %select.unfold.i.i.backedge ] ; 2 uses
  %.023.i.i = phi i64 [ %spec.select.i.i, %.preheader ], [ %.023.i.i.be, %select.unfold.i.i.backedge ]
  %.01422.i.i = phi double [ 1.000000e+00, %.preheader ], [ %.01422.i.i.be, %select.unfold.i.i.backedge ] ; 2 uses
  %.01521.i.i = phi double [ 0.000000e+00, %.preheader ], [ %.01521.i.i.be, %select.unfold.i.i.backedge ]
  %i.x = icmp ugt i64 %i.w, 623
  br i1 %i.x, label %vector.ph101, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit

vector.ph101:                                     ; preds = %select.unfold.i.i
  %.pre.i.i = load i64, ptr %1, align 8, !tbaa !10
  %vector.recur.init104 = insertelement <2 x i64> poison, i64 %.pre.i.i, i64 1
  br label %vector.body102

vector.body102:                                   ; preds = %vector.body102, %vector.ph101
  %index103 = phi i64 [ 0, %vector.ph101 ], [ %index.next108, %vector.body102 ] ; 3 uses
  %vector.recur105 = phi <2 x i64> [ %vector.recur.init104, %vector.ph101 ], [ %wide.load106, %vector.body102 ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index103 ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index103
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %wide.load106 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !10 ; 5 uses
  %i.ab = shufflevector <2 x i64> %vector.recur105, <2 x i64> %wide.load106, <2 x i32> <i32 1, i32 2>
  %i.ac = and <2 x i64> %i.ab, splat (i64 -2147483648)
  %i.ad = and <2 x i64> %wide.load106, splat (i64 2147483646)
  %i.ae = or disjoint <2 x i64> %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 3176
  %wide.load107 = load <2 x i64>, ptr %i.af, align 8, !tbaa !10
  %i.ag = lshr exact <2 x i64> %i.ae, splat (i64 1)
  %i.ah = xor <2 x i64> %i.ag, %wide.load107
  %i.ai = and <2 x i64> %wide.load106, splat (i64 1)
  %i.aj = icmp eq <2 x i64> %i.ai, zeroinitializer
  %i.ak = select <2 x i1> %i.aj, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.al = xor <2 x i64> %i.ah, %i.ak
  store <2 x i64> %i.al, ptr %i.y, align 8, !tbaa !10
  %index.next108 = add nuw i64 %index103, 2       ; 2 uses
  %i.am = icmp eq i64 %index.next108, 226
  br i1 %i.am, label %vector.ph91, label %vector.body102, !llvm.loop !147

vector.ph91:                                      ; preds = %vector.body102
  %vector.recur.extract110 = extractelement <2 x i64> %wide.load106, i64 1
  %i.an = and i64 %vector.recur.extract110, -2147483648
  %i.ao = load i64, ptr %i.n, align 8, !tbaa !10  ; 2 uses
  %i.ap = and i64 %i.ao, 2147483646
  %i.aq = or disjoint i64 %i.ap, %i.an
  %i.ar = load i64, ptr %i.o, align 8, !tbaa !10
  %i.as = lshr exact i64 %i.aq, 1
  %i.at = xor i64 %i.as, %i.ar
  %i.au = and i64 %i.ao, 1
  %.not20.i.i = icmp eq i64 %i.au, 0
  %i.av = select i1 %.not20.i.i, i64 0, i64 2567483615
  %i.aw = xor i64 %i.at, %i.av
  store i64 %i.aw, ptr %i.m, align 8, !tbaa !10
  %.pre24.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !10
  %vector.recur.init94 = insertelement <2 x i64> poison, i64 %.pre24.i.i, i64 1
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph91
  %index93 = phi i64 [ 0, %vector.ph91 ], [ %index.next98, %vector.body92 ] ; 3 uses
  %vector.recur95 = phi <2 x i64> [ %vector.recur.init94, %vector.ph91 ], [ %wide.load96, %vector.body92 ]
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index93 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1816
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index93
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1824
  %wide.load96 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !10 ; 4 uses
  %i.bb = shufflevector <2 x i64> %vector.recur95, <2 x i64> %wide.load96, <2 x i32> <i32 1, i32 2>
  %i.bc = and <2 x i64> %i.bb, splat (i64 -2147483648)
  %i.bd = and <2 x i64> %wide.load96, splat (i64 2147483646)
  %i.be = or disjoint <2 x i64> %i.bd, %i.bc
  %wide.load97 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !10
  %i.bf = lshr exact <2 x i64> %i.be, splat (i64 1)
  %i.bg = xor <2 x i64> %i.bf, %wide.load97
  %i.bh = and <2 x i64> %wide.load96, splat (i64 1)
  %i.bi = icmp eq <2 x i64> %i.bh, zeroinitializer
  %i.bj = select <2 x i1> %i.bi, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
end_hunk_1
