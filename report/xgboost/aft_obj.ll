begin_hunk_0_@_ZZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj6AFTObj15GetGradientImplINS0_18NormalDistributionEEEvRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEmNS_9DeviceOrdEbfEUlmNS0_4SpanISJ_Lm18446744073709551615EEENSN_IKfLm18446744073709551615EEESQ_SQ_SQ_E_E9LaunchCPUIJNS8_ISJ_EESA_SA_SA_SA_EEEvSR_DpPT_ENKUlmE_clEm:bb.a
  %i.bv = fmul float %i.bs, %i.bu
  %i.bw = fptrunc double %i.bi to float
  %i.bx = fmul float %i.bs, %i.bw
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %1 ; 2 uses
  store float %i.bx, ptr %i.by, align 4
  %.sroa_idx18.i = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store float %i.bv, ptr %.sroa_idx18.i, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4dmlc12OMPException3RunIZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS2_3obj6AFTObj15GetGradientImplINS3_18NormalDistributionEEEvRKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEPNS2_6linalg6TensorINS2_6detail20GradientPairInternalIfEELi2EEEmNS2_9DeviceOrdEbfEUlmNS3_4SpanISM_Lm18446744073709551615EEENSQ_IKfLm18446744073709551615EEEST_ST_ST_E_E9LaunchCPUIJNSB_ISM_EESD_SD_SD_SD_EEEvSU_DpPT_EUlmE_JmEEEvT_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef byval(%class.anon.143) align 8 %1, i64 noundef %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  invoke void @_ZZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj6AFTObj15GetGradientImplINS0_18NormalDistributionEEEvRKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEmNS_9DeviceOrdEbfEUlmNS0_4SpanISJ_Lm18446744073709551615EEENSN_IKfLm18446744073709551615EEESQ_SQ_SQ_E_E9LaunchCPUIJNS8_ISJ_EESA_SA_SA_SA_EEEvSR_DpPT_ENKUlmE_clEm(ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %2)
          to label %bb.n unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.b = extractvalue { ptr, i32 } %i.a, 0        ; 2 uses
  %i.c = extractvalue { ptr, i32 } %i.a, 1        ; 2 uses
  %i.d = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4dmlc5ErrorE) #19
  %i.e = icmp eq i32 %i.c, %i.d
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = call ptr @__cxa_begin_catch(ptr %i.b) #19 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #19 ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.h) #31
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !tbaa !314
  %.not20 = icmp eq ptr %i.i, null
  br i1 %.not20, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.j = load ptr, ptr %6, align 8, !tbaa !314
  store ptr null, ptr %6, align 8, !tbaa !314
  %i.k = load ptr, ptr %0, align 8, !tbaa !314    ; 2 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !314
  store ptr %i.j, ptr %0, align 8, !tbaa !314
  %.not.i.i8 = icmp eq ptr %i.k, null
  br i1 %.not.i.i8, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.e
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %.pr = load ptr, ptr %6, align 8, !tbaa !314
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #19
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %.sink.split

bb.g:                                             ; preds = %bb.b
  %i.l = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #19
  %i.m = icmp eq i32 %i.c, %i.l
  br i1 %i.m, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.n = call ptr @__cxa_begin_catch(ptr %i.b) #19 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.p = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #19 ; 2 uses
  %.not.i.i9 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i9, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit11, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.p) #31
          to label %.noexc10 unwind label %bb.l

.noexc10:                                         ; preds = %bb.i
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit11:        ; preds = %bb.h
  %i.q = load ptr, ptr %0, align 8, !tbaa !314
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.j, label %.sink.split

bb.j:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.r = load ptr, ptr %5, align 8, !tbaa !314
  store ptr null, ptr %5, align 8, !tbaa !314
  %i.s = load ptr, ptr %0, align 8, !tbaa !314    ; 2 uses
  store ptr %i.s, ptr %3, align 8, !tbaa !314
  store ptr %i.r, ptr %0, align 8, !tbaa !314
  %.not.i.i12 = icmp eq ptr %i.s, null
  br i1 %.not.i.i12, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit13.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit13

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit13.thread: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit13: ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %.pr18 = load ptr, ptr %5, align 8, !tbaa !314
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %.not.i14 = icmp eq ptr %.pr18, null
  br i1 %.not.i14, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15, label %bb.k

bb.k:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit13
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15: ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit13.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit13, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %.sink.split

bb.l:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.p

bb.m:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.p

.sink.split:                                      ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit11, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15
  %.sink = phi ptr [ %i.o, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit11 ], [ %i.o, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15 ], [ %i.g, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit ], [ %i.g, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ]
  %i.v = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %.sink) #19 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.a
  ret void

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.g
  %.merged = phi { ptr, i32 } [ %i.t, %bb.l ], [ %i.a, %bb.g ], [ %i.u, %bb.m ]
  resume { ptr, i32 } %.merged

bb.p:                                             ; preds = %bb.m, %bb.l
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #34
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef double @_ZN7xgboost6common7AFTLossINS0_18NormalDistributionEE8GradientEdddd(double noundef %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = tail call double @log(double noundef %0) #19 ; 2 uses
  %i.b = tail call double @log(double noundef %1) #19
  %i.c = fcmp oeq double %0, %1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = fsub double %i.a, %2
  %i.e = fdiv double %i.d, %3                     ; 3 uses
  %i.f = fneg double %i.e                         ; 2 uses
  %i.g = fmul double %i.e, %i.f
  %i.h = fmul double %i.g, 5.000000e-01
  %i.i = tail call double @exp(double noundef %i.h) #19
  %i.j = fdiv double %i.i, f0x40040D931FF62705    ; 2 uses
  %i.k = fmul double %i.j, %i.f
  %i.l = fcmp ogt double %i.e, 0.000000e+00
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.m = tail call double @llvm.fabs.f64(double %1)
  %i.n = fcmp oeq double %i.m, +inf
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = fsub double %i.b, %2
  %i.p = fdiv double %i.o, %3                     ; 4 uses
  %i.q = fneg double %i.p
  %i.r = fmul double %i.p, %i.q
  %i.s = fmul double %i.r, 5.000000e-01
  %i.t = tail call double @exp(double noundef %i.s) #19
  %4 = insertelement <2 x double> poison, double %i.t, i64 0
  %5 = insertelement <2 x double> %4, double %i.p, i64 1
  %6 = fdiv <2 x double> %5, <double f0x40040D931FF62705, double f0x3FF6A09E667F3BCD> ; 2 uses
  %7 = extractelement <2 x double> %6, i64 1
  %i.u = tail call double @erf(double noundef %7) #19
  %i.v = fadd double %i.u, 1.000000e+00
  %i.w = fmul double %i.v, 5.000000e-01
  %i.x = fcmp ogt double %i.p, 0.000000e+00
  %8 = extractelement <2 x double> %6, i64 0
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.049 = phi i8 [ 3, %bb.d ], [ 1, %bb.c ]
  %.044 = phi i1 [ %i.x, %bb.d ], [ false, %bb.c ] ; 2 uses
  %.042 = phi double [ %8, %bb.d ], [ 0.000000e+00, %bb.c ]
  %.040 = phi double [ %i.w, %bb.d ], [ 1.000000e+00, %bb.c ]
  %i.y = fcmp ugt double %0, 0.000000e+00
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = fsub double %i.a, %2
  %i.aa = fdiv double %i.z, %3                    ; 4 uses
  %i.ab = fneg double %i.aa
  %i.ac = fmul double %i.aa, %i.ab
  %i.ad = fmul double %i.ac, 5.000000e-01
  %i.ae = tail call double @exp(double noundef %i.ad) #19
  %9 = insertelement <2 x double> poison, double %i.ae, i64 0
  %10 = insertelement <2 x double> %9, double %i.aa, i64 1
  %11 = fdiv <2 x double> %10, <double f0x40040D931FF62705, double f0x3FF6A09E667F3BCD> ; 2 uses
  %12 = extractelement <2 x double> %11, i64 1
  %i.af = tail call double @erf(double noundef %12) #19
  %i.ag = fadd double %i.af, 1.000000e+00
  %i.ah = fmul double %i.ag, 5.000000e-01
  %i.ai = fcmp ogt double %i.aa, 0.000000e+00
  %i.aj = or i1 %i.ai, %.044
  %13 = extractelement <2 x double> %11, i64 0
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.1 = phi i8 [ %.049, %bb.f ], [ 2, %bb.e ]
  %.043 = phi i1 [ %i.aj, %bb.f ], [ %.044, %bb.e ]
  %.041 = phi double [ %13, %bb.f ], [ 0.000000e+00, %bb.e ]
  %.0 = phi double [ %i.ah, %bb.f ], [ 0.000000e+00, %bb.e ]
  %i.ak = fsub double %.042, %.041
  %i.al = fsub double %.040, %.0
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.2 = phi i8 [ 0, %bb.b ], [ %.1, %bb.g ]
  %.048.in = phi i1 [ %i.l, %bb.b ], [ %.043, %bb.g ] ; 4 uses
  %.pn = phi double [ %i.j, %bb.b ], [ %i.al, %bb.g ]
  %.045 = phi double [ %i.k, %bb.b ], [ %i.ak, %bb.g ]
  %.046 = fmul double %3, %.pn                    ; 2 uses
  %i.am = fdiv double %.045, %.046                ; 2 uses
  %i.an = fcmp olt double %.046, f0x3D719799812DEA11
  %i.ao = tail call double @llvm.fabs.f64(double %i.am)
  %or.cond = fcmp ueq double %i.ao, +inf
  %or.cond54 = select i1 %i.an, i1 %or.cond, i1 false
  br i1 %or.cond54, label %bb.i, label %_ZN7xgboost6common3aft21GetLimitGradAtInfPredINS0_18NormalDistributionEEEdNS0_13CensoringTypeEbd.exit

bb.i:                                             ; preds = %bb.h
  switch i8 %.2, label %default.unreachable57 [
    i8 0, label %bb.j
    i8 1, label %bb.k
    i8 2, label %bb.l
    i8 3, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  %i.ap = select i1 %.048.in, double -1.500000e+01, double 1.500000e+01
  br label %_ZN7xgboost6common3aft21GetLimitGradAtInfPredINS0_18NormalDistributionEEEdNS0_13CensoringTypeEbd.exit

bb.k:                                             ; preds = %bb.i
  %i.aq = select i1 %.048.in, double -1.500000e+01, double 0.000000e+00
  br label %_ZN7xgboost6common3aft21GetLimitGradAtInfPredINS0_18NormalDistributionEEEdNS0_13CensoringTypeEbd.exit

bb.l:                                             ; preds = %bb.i
  %i.ar = select i1 %.048.in, double 0.000000e+00, double 1.500000e+01
  br label %_ZN7xgboost6common3aft21GetLimitGradAtInfPredINS0_18NormalDistributionEEEdNS0_13CensoringTypeEbd.exit

bb.m:                                             ; preds = %bb.i
  %i.as = select i1 %.048.in, double -1.500000e+01, double 1.500000e+01
  br label %_ZN7xgboost6common3aft21GetLimitGradAtInfPredINS0_18NormalDistributionEEEdNS0_13CensoringTypeEbd.exit

default.unreachable57:                            ; preds = %bb.i
  unreachable

_ZN7xgboost6common3aft21GetLimitGradAtInfPredINS0_18NormalDistributionEEEdNS0_13CensoringTypeEbd.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.h
  %.047 = phi double [ %i.am, %bb.h ], [ %i.ar, %bb.l ], [ %i.as, %bb.m ], [ %i.ap, %bb.j ], [ %i.aq, %bb.k ] ; 3 uses
  %i.at = fcmp olt double %.047, -1.500000e+01
  %i.au = fcmp ogt double %.047, 1.500000e+01
  %..i = select i1 %i.au, double 1.500000e+01, double %.047
  %.0.i52 = select i1 %i.at, double -1.500000e+01, double %..i
  ret double %.0.i52
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef double @_ZN7xgboost6common7AFTLossINS0_18NormalDistributionEE7HessianEdddd(double noundef %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = tail call double @log(double noundef %0) #19 ; 2 uses
  %i.b = tail call double @log(double noundef %1) #19
  %i.c = fcmp oeq double %0, %1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = fsub double %i.a, %2
  %i.e = fdiv double %i.d, %3                     ; 5 uses
  %i.f = fneg double %i.e                         ; 2 uses
  %i.g = fmul double %i.e, %i.f
  %i.h = fmul double %i.g, 5.000000e-01
  %i.i = tail call double @exp(double noundef %i.h) #19
  %i.j = fdiv double %i.i, f0x40040D931FF62705    ; 5 uses
  %i.k = fmul double %i.j, %i.f                   ; 2 uses
  %i.l = tail call double @llvm.fmuladd.f64(double %i.e, double %i.e, double -1.000000e+00)
  %i.m = fmul double %i.l, %i.j
  %i.n = fneg double %i.k
  %i.o = fmul double %i.k, %i.n
  %i.p = tail call double @llvm.fmuladd.f64(double %i.j, double %i.m, double %i.o)
  %i.q = fneg double %i.p
  %i.r = fmul double %3, %3
  %i.s = fmul double %i.r, %i.j
  %i.t = fmul double %i.j, %i.s
  %i.u = fcmp ogt double %i.e, 0.000000e+00
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.v = tail call double @llvm.fabs.f64(double %1)
  %i.w = fcmp oeq double %i.v, +inf
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = fsub double %i.b, %2
  %i.y = fdiv double %i.x, %3                     ; 4 uses
  %i.z = fneg double %i.y                         ; 2 uses
  %i.aa = fmul double %i.y, %i.z
  %i.ab = fmul double %i.aa, 5.000000e-01         ; 2 uses
  %i.ac = tail call double @exp(double noundef %i.ab) #19
  %4 = insertelement <2 x double> poison, double %i.ac, i64 0
  %5 = insertelement <2 x double> %4, double %i.y, i64 1
  %6 = fdiv <2 x double> %5, <double f0x40040D931FF62705, double f0x3FF6A09E667F3BCD> ; 2 uses
  %7 = extractelement <2 x double> %6, i64 1
  %i.ad = tail call double @erf(double noundef %7) #19
  %i.ae = fadd double %i.ad, 1.000000e+00
  %i.af = fmul double %i.ae, 5.000000e-01
  %i.ag = tail call double @exp(double noundef %i.ab) #19
  %i.ah = fdiv double %i.ag, f0x40040D931FF62705
  %i.ai = fmul double %i.ah, %i.z
  %i.aj = fcmp ogt double %i.y, 0.000000e+00
  %8 = extractelement <2 x double> %6, i64 0
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.067 = phi i1 [ %i.aj, %bb.d ], [ false, %bb.c ] ; 2 uses
  %.065 = phi double [ %i.ai, %bb.d ], [ 0.000000e+00, %bb.c ]
  %.063 = phi double [ %8, %bb.d ], [ 0.000000e+00, %bb.c ]
  %.061 = phi double [ %i.af, %bb.d ], [ 1.000000e+00, %bb.c ]
  %.059 = phi i8 [ 3, %bb.d ], [ 1, %bb.c ]
  %i.ak = fcmp ugt double %0, 0.000000e+00
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.al = fsub double %i.a, %2
  %i.am = fdiv double %i.al, %3                   ; 4 uses
  %i.an = fneg double %i.am                       ; 2 uses
  %i.ao = fmul double %i.am, %i.an
  %i.ap = fmul double %i.ao, 5.000000e-01         ; 2 uses
  %i.aq = tail call double @exp(double noundef %i.ap) #19
  %9 = insertelement <2 x double> poison, double %i.aq, i64 0
  %10 = insertelement <2 x double> %9, double %i.am, i64 1
  %11 = fdiv <2 x double> %10, <double f0x40040D931FF62705, double f0x3FF6A09E667F3BCD> ; 2 uses
  %12 = extractelement <2 x double> %11, i64 1
  %i.ar = tail call double @erf(double noundef %12) #19
  %i.as = fadd double %i.ar, 1.000000e+00
  %i.at = fmul double %i.as, 5.000000e-01
  %i.au = tail call double @exp(double noundef %i.ap) #19
  %i.av = fdiv double %i.au, f0x40040D931FF62705
  %i.aw = fmul double %i.av, %i.an
  %i.ax = fcmp ogt double %i.am, 0.000000e+00
  %i.ay = or i1 %i.ax, %.067
  %13 = extractelement <2 x double> %11, i64 0
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.066 = phi i1 [ %i.ay, %bb.f ], [ %.067, %bb.e ]
  %.064 = phi double [ %i.aw, %bb.f ], [ 0.000000e+00, %bb.e ]
  %.062 = phi double [ %13, %bb.f ], [ 0.000000e+00, %bb.e ]
  %.060 = phi double [ %i.at, %bb.f ], [ 0.000000e+00, %bb.e ]
  %.1 = phi i8 [ %.059, %bb.f ], [ 2, %bb.e ]
  %i.az = fsub double %.061, %.060                ; 2 uses
  %i.ba = fsub double %.063, %.062                ; 2 uses
  %i.bb = fsub double %.065, %.064
  %i.bc = fmul double %3, %i.az                   ; 2 uses
  %i.bd = fneg double %i.ba
  %i.be = fmul double %i.ba, %i.bd
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.az, double %i.bb, double %i.be)
  %i.bg = fneg double %i.bf
  %i.bh = fmul double %i.bc, %i.bc
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.068.in = phi i1 [ %i.u, %bb.b ], [ %.066, %bb.g ] ; 2 uses
  %.2 = phi i8 [ 0, %bb.b ], [ %.1, %bb.g ]
  %.057 = phi double [ %i.t, %bb.b ], [ %i.bh, %bb.g ] ; 2 uses
  %.0 = phi double [ %i.q, %bb.b ], [ %i.bg, %bb.g ]
  %i.bi = fdiv double %.0, %.057                  ; 2 uses
  %i.bj = fcmp olt double %.057, f0x3D719799812DEA11
  %i.bk = tail call double @llvm.fabs.f64(double %i.bi)
  %or.cond = fcmp ueq double %i.bk, +inf
  %or.cond73 = select i1 %i.bj, i1 %or.cond, i1 false
  br i1 %or.cond73, label %bb.i, label %_ZN7xgboost6common3aft21GetLimitHessAtInfPredINS0_18NormalDistributionEEEdNS0_13CensoringTypeEbd.exit

bb.i:                                             ; preds = %bb.h
  %i.bl = fmul double %3, %3
  %i.bm = fdiv double 1.000000e+00, %i.bl         ; 4 uses
  switch i8 %.2, label %default.unreachable76 [
    i8 0, label %_ZN7xgboost6common3aft21GetLimitHessAtInfPredINS0_18NormalDistributionEEEdNS0_13CensoringTypeEbd.exit
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %_ZN7xgboost6common3aft21GetLimitHessAtInfPredINS0_18NormalDistributionEEEdNS0_13CensoringTypeEbd.exit
  ]

bb.j:                                             ; preds = %bb.i
  %i.bn = select i1 %.068.in, double %i.bm, double f0x3C9CD2B297D889BC
  br label %_ZN7xgboost6common3aft21GetLimitHessAtInfPredINS0_18NormalDistributionEEEdNS0_13CensoringTypeEbd.exit

bb.k:                                             ; preds = %bb.i
  %i.bo = select i1 %.068.in, double f0x3C9CD2B297D889BC, double %i.bm
  br label %_ZN7xgboost6common3aft21GetLimitHessAtInfPredINS0_18NormalDistributionEEEdNS0_13CensoringTypeEbd.exit

default.unreachable76:                            ; preds = %bb.i
  unreachable

_ZN7xgboost6common3aft21GetLimitHessAtInfPredINS0_18NormalDistributionEEEdNS0_13CensoringTypeEbd.exit: ; preds = %bb.i, %bb.i, %bb.k, %bb.j, %bb.h
  %.058 = phi double [ %i.bi, %bb.h ], [ %i.bo, %bb.k ], [ %i.bm, %bb.i ], [ %i.bn, %bb.j ], [ %i.bm, %bb.i ] ; 3 uses
  %i.bp = fcmp olt double %.058, f0x3C9CD2B297D889BC
  %i.bq = fcmp ogt double %.058, 1.500000e+01
  %..i = select i1 %i.bq, double 1.500000e+01, double %.058
  %.0.i71 = select i1 %i.bp, double f0x3C9CD2B297D889BC, double %..i
  ret double %.0.i71
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #25

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #25

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @erf(double noundef) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #26

declare noundef i64 @_ZNK7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIfEEE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIfEEE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.109") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.40, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4, !tbaa !203
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %i.b)
          to label %bb.b unwind label %bb.h       ; 2 uses

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.41, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5: ; preds = %bb.b
  %i.e = load i32, ptr %2, align 4, !tbaa !203
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.e)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.17, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6: ; preds = %bb.c
  %i.h = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32
          to label %bb.d unwind label %bb.h       ; 8 uses

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  call void @llvm.experimental.noalias.scope.decl(metadata !331)
  call void @llvm.experimental.noalias.scope.decl(metadata !334)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !25, !alias.scope !337
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !15, !alias.scope !337
  store i8 0, ptr %i.i, align 8, !tbaa !26, !alias.scope !337
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !194, !noalias !337 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !noalias !337 ; 2 uses
  %i.o = icmp ugt ptr %i.l, %i.n
  %.08.i.i.i = select i1 %i.o, ptr %i.l, ptr %i.n ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !195, !noalias !337 ; 2 uses
  %i.r = ptrtoint ptr %.08.i.i.i to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef 0, i64 noundef 0, ptr noundef %i.q, i64 noundef %i.t)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !19, !alias.scope !337 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.i
  br i1 %i.x, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.y = load i64, ptr %i.i, align 8, !tbaa !26, !alias.scope !337
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #33
  br label %.body

bb.g:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.g, %bb.e
  store ptr %i.h, ptr %0, align 8, !tbaa !38
  %i.ab = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ab, ptr %3, align 8, !tbaa !52
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ad = getelementptr i8, ptr %i.ab, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %3, i64 %i.ae
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !52
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ag, align 8, !tbaa !52
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !19 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !26
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #33
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ag, align 8, !tbaa !52
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #19
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ao) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

bb.h:                                             ; preds = %bb.c, %bb.b, %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.body:                                            ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 32) #33
  br label %bb.i

bb.i:                                             ; preds = %.body, %bb.h
  %.pn = phi { ptr, i32 } [ %i.v, %.body ], [ %i.ap, %bb.h ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %.pn
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #27

; Function Attrs: nounwind
end_hunk_0
