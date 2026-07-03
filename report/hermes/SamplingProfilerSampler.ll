inline.NumInlined: 568
inline.NumDeleted: 379
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6hermes2vm17sampling_profiler7Sampler11sampleStackEPNS0_16SamplingProfilerE:bb.a
  %i.br = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx17) #17 ; 4 uses
  store ptr %i.br, ptr %i.bo, align 8, !tbaa !11
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %.idx17 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !15
  %.not18 = icmp eq i32 %i.bd, 1
  br i1 %.not18, label %bb.p, label %bb.o, !prof !81

bb.o:                                             ; preds = %_ZNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE11_M_allocateEm.exit.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.br, ptr align 8 %i.bg, i64 %.idx17, i1 false)
  br label %_ZN6hermes2vm16SamplingProfiler10StackTraceC2EmNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10StackFrameESt6vectorISE_SaISE_EEEESJ_.exit.i

bb.p:                                             ; preds = %_ZNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE11_M_allocateEm.exit.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false), !tbaa.struct !82
  br label %_ZN6hermes2vm16SamplingProfiler10StackTraceC2EmNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10StackFrameESt6vectorISE_SaISE_EEEESJ_.exit.i

_ZN6hermes2vm16SamplingProfiler10StackTraceC2EmNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10StackFrameESt6vectorISE_SaISE_EEEESJ_.exit.i: ; preds = %bb.p, %bb.o, %.thread.i.i.i.i
  %i.bu = phi ptr [ %i.bs, %bb.o ], [ %i.bp, %.thread.i.i.i.i ], [ %i.bs, %bb.p ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !86
  %i.bw = load ptr, ptr %i.bj, align 8, !tbaa !79
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  store ptr %i.bx, ptr %i.bj, align 8, !tbaa !79
  br label %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE12emplace_backIJRmRNSt6chrono10time_pointINS8_3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10StackFrameES_ISK_SaISK_EEEESO_EEERS3_DpOT_.exit

bb.q:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE17_M_realloc_insertIJRmRNSt6chrono10time_pointINS8_3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10StackFrameES_ISK_SaISK_EEEESO_EEEvNSJ_IPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr %i.bk, ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE12emplace_backIJRmRNSt6chrono10time_pointINS8_3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10StackFrameES_ISK_SaISK_EEEESO_EEERS3_DpOT_.exit

_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE12emplace_backIJRmRNSt6chrono10time_pointINS8_3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10StackFrameES_ISK_SaISK_EEEESO_EEERS3_DpOT_.exit: ; preds = %_ZN6hermes2vm16SamplingProfiler10StackTraceC2EmNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10StackFrameESt6vectorISE_SaISE_EEEESJ_.exit.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE7reserveEm.exit, %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE12emplace_backIJRmRNSt6chrono10time_pointINS8_3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10StackFrameES_ISK_SaISK_EEEESO_EEERS3_DpOT_.exit
  %.1 = phi i1 [ true, %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE12emplace_backIJRmRNSt6chrono10time_pointINS8_3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10StackFrameES_ISK_SaISK_EEEESO_EEERS3_DpOT_.exit ], [ false, %_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE7reserveEm.exit ]
  ret i1 %.1
}

declare void @_ZN6hermes2vm17sampling_profiler7Sampler23platformPostSampleStackEPNS0_16SamplingProfilerE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN6hermes2vm17sampling_profiler7Sampler29platformSuspendVMAndWalkStackEPNS0_16SamplingProfilerE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm17sampling_profiler7Sampler16walkRuntimeStackEPNS0_16SamplingProfilerE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = tail call noundef i32 @_ZN6hermes2vm16SamplingProfiler16walkRuntimeStackERNS1_10StackTraceENS1_6InLoomEj(ptr noundef nonnull align 8 dereferenceable(264) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef 0, i32 noundef 0) #14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %i.b, ptr %i.c, align 4, !tbaa !64
  ret void
}

declare noundef i32 @_ZN6hermes2vm16SamplingProfiler16walkRuntimeStackERNS1_10StackTraceENS1_6InLoomEj(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm17sampling_profiler7Sampler9timerLoopEd(ptr noundef nonnull align 8 dereferenceable(208) %0, double noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::random_device", align 8 ; 5 uses
  %5 = alloca %"class.std::mersenne_twister_engine", align 8 ; 7 uses
  %6 = alloca %"class.std::normal_distribution", align 8 ; 8 uses
  tail call void @_ZN6hermes8oscompat15set_thread_nameEPKc(ptr noundef nonnull @.str) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !87
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.a, ptr noundef nonnull align 1 dereferenceable(7) @.str.1, i64 7, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 7, ptr %i.b, align 8, !tbaa !90
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 23
  store i8 0, ptr %i.c, align 1, !tbaa !83
  call void @_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(5000) %4, ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  %i.d = load ptr, ptr %3, align 8, !tbaa !92     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt13random_deviceC2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !tbaa !83
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #16
  br label %_ZNSt13random_deviceC2Ev.exit

_ZNSt13random_deviceC2Ev.exit:                    ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.h = call noundef i32 @_ZNSt13random_device9_M_getvalEv(ptr noundef nonnull align 8 dereferenceable(5000) %4) #14
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  store i64 %i.i, ptr %5, align 8, !tbaa !9
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %_ZNSt13random_deviceC2Ev.exit
  %store_forwarded = phi i64 [ %i.i, %_ZNSt13random_deviceC2Ev.exit ], [ %i.v, %bb.c ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %_ZNSt13random_deviceC2Ev.exit ], [ %i.w, %bb.c ] ; 4 uses
  %i.j = getelementptr [8 x i8], ptr %5, i64 %.011.i.i
  %i.k = lshr i64 %store_forwarded, 30
  %i.l = xor i64 %i.k, %store_forwarded
  %i.m = mul nuw nsw i64 %i.l, 1812433253
  %i.n = add nuw i64 %i.m, %.011.i.i              ; 2 uses
  %i.o = and i64 %i.n, 4294967295                 ; 2 uses
  store i64 %i.o, ptr %i.j, align 8, !tbaa !9
  %i.p = add nuw nsw i64 %.011.i.i, 1             ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.p, 624
  br i1 %exitcond.not.i.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr [8 x i8], ptr %5, i64 %i.p
  %i.r = lshr i64 %i.o, 30
  %i.s = xor i64 %i.r, %i.n
  %i.t = mul i64 %i.s, 1812433253
  %i.u = add i64 %i.t, %i.p
  %i.v = and i64 %i.u, 4294967295                 ; 2 uses
  store i64 %i.v, ptr %i.q, align 8, !tbaa !9
  %i.w = add nuw nsw i64 %.011.i.i, 2
  br label %bb.b

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 4992
  store i64 624, ptr %i.x, align 8, !tbaa !93
  %i.y = fdiv double 1.000000e+00, %1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.z = fmul double %i.y, 5.000000e-01
  store double %i.y, ptr %6, align 8, !tbaa !95
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  store double %i.z, ptr %i.aa, align 8, !tbaa !98
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double 0.000000e+00, ptr %i.ab, align 8, !tbaa !99
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 0, ptr %i.ac, align 8, !tbaa !101
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ae = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ad) #14 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.preheader, label %bb.d

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.preheader: ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !102, !range !103, !noundef !104
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %.lr.ph, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

.lr.ph:                                           ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.e

bb.d:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit
  call void @_ZSt20__throw_system_errori(i32 noundef %i.ae) #15
  unreachable

bb.e:                                             ; preds = %.lr.ph, %"_ZNSt18condition_variable8wait_forIdSt5ratioILl1ELl1EEZN6hermes2vm17sampling_profiler7Sampler9timerLoopEdE3$_0EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit"
  %.sroa.014.023.i = load ptr, ptr %i.ai, align 8, !tbaa !24 ; 2 uses
  %.not24.i = icmp eq ptr %.sroa.014.023.i, null
  br i1 %.not24.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.g
  %.sroa.014.025.i = phi ptr [ %.sroa.014.0.i, %bb.g ], [ %.sroa.014.023.i, %bb.e ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.014.025.i, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !29 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  %i.ao = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.an) #14 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i4, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  call void @_ZSt20__throw_system_errori(i32 noundef %i.ao) #15
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i:        ; preds = %.lr.ph.i
  %i.ap = call noundef zeroext i1 @_ZN6hermes2vm17sampling_profiler7Sampler11sampleStackEPNS0_16SamplingProfilerE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull %i.am)
  br i1 %i.ap, label %bb.g, label %_ZN6hermes2vm17sampling_profiler7Sampler12sampleStacksEv.exit

bb.g:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  call void @_ZN6hermes2vm17sampling_profiler7Sampler23platformPostSampleStackEPNS0_16SamplingProfilerE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull %i.am) #14
  %i.aq = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.an) #14 ; 0 uses
  %.sroa.014.0.i = load ptr, ptr %.sroa.014.025.i, align 8, !tbaa !24 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.014.0.i, null
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

_ZN6hermes2vm17sampling_profiler7Sampler12sampleStacksEv.exit: ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.ar = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.an) #14 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

.loopexit:                                        ; preds = %bb.g, %bb.e
  %i.as = call noundef double @_ZNSt19normal_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(25) %6, ptr noundef nonnull align 8 dereferenceable(5000) %5, ptr noundef nonnull align 8 dereferenceable(25) %6)
  %i.at = call double @llvm.fabs.f64(double %i.as)
  %i.au = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #14
  %i.av = fmul double %i.at, 1.000000e+09         ; 2 uses
  %i.aw = fptosi double %i.av to i64              ; 2 uses
  %i.ax = sitofp i64 %i.aw to double
  %i.ay = fcmp ogt double %i.av, %i.ax
  %i.az = zext i1 %i.ay to i64
  %.sroa.0.0.i.i = add i64 %i.au, %i.aw
  %i.ba = add i64 %.sroa.0.0.i.i, %i.az           ; 3 uses
  %i.bb = sdiv i64 %i.ba, 1000000000              ; 2 uses
  %.neg.i.i.i.i.i.i = mul nsw i64 %i.bb, -1000000000
  %i.bc = add i64 %.neg.i.i.i.i.i.i, %i.ba
  br label %7

7:                                                ; preds = %.preheader, %.loopexit
  %.val4.val.i.i = load i8, ptr %i.af, align 8, !tbaa !102, !range !103, !noundef !104
  %8 = trunc nuw i8 %.val4.val.i.i to i1
  br i1 %8, label %.preheader, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

.preheader:                                       ; preds = %7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store i64 %i.bb, ptr %2, align 8, !tbaa !105
  store i64 %i.bc, ptr %i.ak, align 8, !tbaa !107
  %i.bd = call i32 @pthread_cond_clockwait(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef nonnull align 8 dereferenceable(40) %i.ad, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %2) #14 ; 0 uses
  %i.be = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #14
  %.not.i.i = icmp slt i64 %i.be, %i.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br i1 %.not.i.i, label %7, label %"_ZNSt18condition_variable8wait_forIdSt5ratioILl1ELl1EEZN6hermes2vm17sampling_profiler7Sampler9timerLoopEdE3$_0EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit", !llvm.loop !108

"_ZNSt18condition_variable8wait_forIdSt5ratioILl1ELl1EEZN6hermes2vm17sampling_profiler7Sampler9timerLoopEdE3$_0EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit": ; preds = %.preheader
  %.pre = load i8, ptr %i.af, align 8, !tbaa !102, !range !103
  %i.bf = trunc nuw i8 %.pre to i1
  br i1 %i.bf, label %bb.e, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, !llvm.loop !109

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %"_ZNSt18condition_variable8wait_forIdSt5ratioILl1ELl1EEZN6hermes2vm17sampling_profiler7Sampler9timerLoopEdE3$_0EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit", %7, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.preheader, %_ZN6hermes2vm17sampling_profiler7Sampler12sampleStacksEv.exit
  %i.bg = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ad) #14 ; 0 uses
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
  %i.d = load i8, ptr %i.c, align 8, !tbaa !102, !range !103, !noundef !104
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
  %i.d = load i8, ptr %i.c, align 8, !tbaa !102, !range !103, !noundef !104
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.f = tail call noundef zeroext i1 @_ZN6hermes2vm17sampling_profiler7Sampler14platformEnableEv(ptr noundef nonnull align 8 dereferenceable(208) %0) #14
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.c, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 0, ptr %3, align 8, !tbaa !110
  %i.g = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #17 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN6hermes2vm17sampling_profiler7SamplerEFvdEPS6_dEEEEEE, i64 16), ptr %i.g, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store double %1, ptr %i.h, align 8, !tbaa !111
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %0, ptr %i.i, align 8, !tbaa !113
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 ptrtoint (ptr @_ZN6hermes2vm17sampling_profiler7Sampler9timerLoopEd to i64), ptr %i.j, align 8, !tbaa !116
  %.repack4.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 0, ptr %.repack4.i.i.i.i.i.i, align 8, !tbaa !116
  store ptr %i.g, ptr %2, align 8, !tbaa !118
  call void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %2, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv) #14
  %i.k = load ptr, ptr %2, align 8, !tbaa !118    ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.k, null
  br i1 %.not.i.i2, label %_ZNSt6threadC2IMN6hermes2vm17sampling_profiler7SamplerEFvdEJPS4_RdEvEEOT_DpOT0_.exit, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.d
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.k) #14, !inline_history !120
  br label %_ZNSt6threadC2IMN6hermes2vm17sampling_profiler7SamplerEFvdEJPS4_RdEvEEOT_DpOT0_.exit

_ZNSt6threadC2IMN6hermes2vm17sampling_profiler7SamplerEFvdEJPS4_RdEvEEOT_DpOT0_.exit: ; preds = %bb.d, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.o, align 8, !tbaa !9
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %_ZNSt6threadD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6threadC2IMN6hermes2vm17sampling_profiler7SamplerEFvdEJPS4_RdEvEEOT_DpOT0_.exit
  call void @_ZSt9terminatev() #15
  unreachable

_ZNSt6threadD2Ev.exit:                            ; preds = %_ZNSt6threadC2IMN6hermes2vm17sampling_profiler7SamplerEFvdEJPS4_RdEvEEOT_DpOT0_.exit
  %i.p = load i64, ptr %3, align 8, !tbaa !9
  store i64 %i.p, ptr %i.o, align 8, !tbaa !9
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
  %i.d = load i8, ptr %i.c, align 8, !tbaa !102, !range !103, !noundef !104
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
  store i8 0, ptr %i.c, align 8, !tbaa !102
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86
  %i.c = load ptr, ptr %1, align 8, !tbaa !11     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.i = load ptr, ptr %0, align 8, !tbaa !11     ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 24
  %i.o = icmp ugt i64 %i.n, 384307168202282325
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE11_M_allocateEm.exit.i, !prof !121

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #15
  unreachable

_ZNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #17 ; 3 uses
end_hunk_0
