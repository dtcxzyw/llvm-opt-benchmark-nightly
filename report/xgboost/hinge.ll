Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/hinge?download=true
inline.NumInlined: 1043
inline.NumDeleted: 524
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN7xgboost6common11ParallelForImZNS0_13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS_3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS3_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS3_10TensorViewIT_XT0_EEEiOT1_EUlOSO_E_EEvT0_iSR_EUlSO_E_EEvSO_iNS0_5SchedEOSU_:bb.a
bb.ab:                                            ; preds = %.body
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(48) %9) #18
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit80

_ZN4dmlc12OMPExceptionD2Ev.exit80:                ; preds = %.body, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN4dmlc12OMPExceptionD2Ev.exit80, %bb.g
  %.pn64.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZN4dmlc12OMPExceptionD2Ev.exit80 ], [ %.pn, %bb.g ]
  resume { ptr, i32 } %.pn64.pn

bb.ad:                                            ; preds = %bb.f
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #32
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS2_3obj8HingeObj11GetGradientERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEiPNS5_6TensorINS2_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS5_10TensorViewIT_XT0_EEEiOT1_EUlOSQ_E_EEvT0_iST_EUlSQ_E_JmEEEvSQ_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr %2, i64 noundef %3) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %6 = alloca %"class.xgboost::common::Range1d", align 8 ; 4 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %i.a = shl i64 %3, 11                           ; 3 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !34
  %i.c = sub i64 %i.b, %i.a
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 2048)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.d = add i64 %.sroa.speculated.i, %i.a
  invoke void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.a, i64 noundef %i.d)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.a
  invoke void @_ZZN7xgboost6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS_3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS0_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS0_10TensorViewIT_XT0_EEEiOT1_ENKUlOSL_E_clINS_6common7Range1dEEEDaSP_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS_3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS2_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS2_10TensorViewIT_XT0_EEEiOT1_EUlOSN_E_EEvT0_iSQ_ENKUlSN_E_clImEEDaSN_.exit unwind label %bb.b

_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS_3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS2_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS2_10TensorViewIT_XT0_EEEiOT1_EUlOSN_E_EEvT0_iSQ_ENKUlSN_E_clImEEDaSN_.exit: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.p

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.f = extractvalue { ptr, i32 } %i.e, 0        ; 2 uses
  %i.g = extractvalue { ptr, i32 } %i.e, 1        ; 2 uses
  %i.h = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4dmlc5ErrorE) #18
  %i.i = icmp eq i32 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.j = call ptr @__cxa_begin_catch(ptr %i.f) #18 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #18 ; 2 uses
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.l) #29
          to label %.noexc9 unwind label %bb.n

.noexc9:                                          ; preds = %bb.d
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !93
  %.not23 = icmp eq ptr %i.m, null
  br i1 %.not23, label %bb.e, label %bb.o

bb.e:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.n = load ptr, ptr %8, align 8, !tbaa !93
  store ptr null, ptr %8, align 8, !tbaa !93
  %i.o = load ptr, ptr %0, align 8, !tbaa !93     ; 2 uses
  store ptr %i.o, ptr %5, align 8, !tbaa !93
  store ptr %i.n, ptr %0, align 8, !tbaa !93
  %.not.i.i10 = icmp eq ptr %i.o, null
  br i1 %.not.i.i10, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.e
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  %.pr = load ptr, ptr %8, align 8, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.o

bb.g:                                             ; preds = %bb.b
  %i.p = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #18
  %i.q = icmp eq i32 %i.g, %i.p
  br i1 %i.q, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.r = call ptr @__cxa_begin_catch(ptr %i.f) #18 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.s) #18 ; 2 uses
  %.not.i.i11 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i11, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.t) #29
          to label %.noexc12 unwind label %bb.l

.noexc12:                                         ; preds = %bb.i
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13:        ; preds = %bb.h
  %i.u = load ptr, ptr %0, align 8, !tbaa !93
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.v = load ptr, ptr %7, align 8, !tbaa !93
  store ptr null, ptr %7, align 8, !tbaa !93
  %i.w = load ptr, ptr %0, align 8, !tbaa !93     ; 2 uses
  store ptr %i.w, ptr %4, align 8, !tbaa !93
  store ptr %i.v, ptr %0, align 8, !tbaa !93
  %.not.i.i14 = icmp eq ptr %i.w, null
  br i1 %.not.i.i14, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.thread: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15: ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %.pr21 = load ptr, ptr %7, align 8, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %.not.i16 = icmp eq ptr %.pr21, null
  br i1 %.not.i16, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17, label %bb.k

bb.k:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17: ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %bb.r

bb.m:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13
  %i.y = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.s) #18 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.p

bb.n:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %bb.r

bb.o:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.aa = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #18 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.p

bb.p:                                             ; preds = %_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS_3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS2_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS2_10TensorViewIT_XT0_EEEiOT1_EUlOSN_E_EEvT0_iSQ_ENKUlSN_E_clImEEDaSN_.exit, %bb.o, %bb.m
  ret void

bb.q:                                             ; preds = %bb.n, %bb.l, %bb.g
  %.merged = phi { ptr, i32 } [ %i.x, %bb.l ], [ %i.e, %bb.g ], [ %i.z, %bb.n ]
  resume { ptr, i32 } %.merged

bb.r:                                             ; preds = %bb.n, %bb.l
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #32
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS_3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS0_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS0_10TensorViewIT_XT0_EEEiOT1_ENKUlOSL_E_clINS_6common7Range1dEEEDaSP_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !95     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !96   ; 3 uses
  %i.d = icmp ult i64 %i.a, %i.c
  br i1 %i.d, label %.preheader.lr.ph, label %._crit_edge12.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !225, !nonnull !88, !align !89
  %i.f = load i64, ptr %i.e, align 8, !tbaa !34   ; 3 uses
  %.not = icmp eq i64 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !88, !align !89 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 96 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 144 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 168 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 176 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 216 ; 2 uses
  br i1 %.not, label %._crit_edge12.split, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.t = load i64, ptr %i.h, align 8, !tbaa !97   ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.preheader.lr.ph.split.split.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %umax = tail call i64 @llvm.umax.i64(i64 %i.t, i64 %i.a)
  br label %.preheader

.preheader.lr.ph.split.split.us:                  ; preds = %.preheader.lr.ph.split
  %i.v = load i64, ptr %i.k, align 8, !tbaa !34
  %i.w = load i64, ptr %i.l, align 8, !tbaa !34
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !75
  %i.y = load i64, ptr %i.n, align 8, !tbaa !34
  %i.z = load i64, ptr %i.o, align 8, !tbaa !34
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !75
  %i.ab = load i64, ptr %i.q, align 8, !tbaa !34
  %i.ac = load i64, ptr %i.r, align 8, !tbaa !34
  %i.ad = load ptr, ptr %i.s, align 8, !tbaa !72
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.split.us.us, %.preheader.lr.ph.split.split.us
  %.0810.us = phi i64 [ %i.a, %.preheader.lr.ph.split.split.us ], [ %i.bh, %._crit_edge.split.us.us ] ; 4 uses
  %i.ae = mul i64 %i.v, %.0810.us
  %i.af = getelementptr [4 x i8], ptr %i.x, i64 %i.ae
  %i.ag = mul i64 %i.y, %.0810.us
  %i.ah = getelementptr [4 x i8], ptr %i.aa, i64 %i.ag
  %i.ai = mul i64 %i.ab, %.0810.us
  %i.aj = getelementptr [8 x i8], ptr %i.ad, i64 %i.ai
  br label %_ZZN7xgboost3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us

_ZZN7xgboost3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us: ; preds = %_ZZN7xgboost3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us, %.preheader.us
  %.09.us.us = phi i64 [ 0, %.preheader.us ], [ %i.bg, %_ZZN7xgboost3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us ] ; 4 uses
  %i.ak = load float, ptr %i.j, align 8, !tbaa !58 ; 2 uses
  %i.al = mul i64 %i.w, %.09.us.us
  %i.am = getelementptr [4 x i8], ptr %i.af, i64 %i.al
  %i.an = load float, ptr %i.am, align 4, !tbaa !58
  %i.ao = mul i64 %i.z, %.09.us.us
  %i.ap = getelementptr [4 x i8], ptr %i.ah, i64 %i.ao
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !58
  %i.ar = fpext float %i.aq to double
  %i.as = tail call double @llvm.fmuladd.f64(double %i.ar, double 2.000000e+00, double -1.000000e+00) ; 2 uses
  %i.at = fpext float %i.an to double
  %i.au = fmul double %i.as, %i.at
  %i.av = fcmp olt double %i.au, 1.000000e+00     ; 2 uses
  %i.aw = fneg double %i.as
  %i.ax = fpext float %i.ak to double
  %i.ay = fmul double %i.ax, %i.aw
  %i.az = fptrunc double %i.ay to float
  %i.ba = mul i64 %i.ac, %.09.us.us
  %i.bb = getelementptr [8 x i8], ptr %i.aj, i64 %i.ba ; 2 uses
  %i.bc = bitcast float %i.az to i32
  %i.bd = select i1 %i.av, i32 %i.bc, i32 0
  %i.be = bitcast float %i.ak to i32
  %i.bf = select i1 %i.av, i32 %i.be, i32 8388608
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !58
  %.sroa_idx9.i.us.us = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store i32 %i.bf, ptr %.sroa_idx9.i.us.us, align 4, !tbaa !58
  %i.bg = add nuw i64 %.09.us.us, 1               ; 2 uses
  %exitcond18.not = icmp eq i64 %i.bg, %i.f
  br i1 %exitcond18.not, label %._crit_edge.split.us.us, label %_ZZN7xgboost3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us, !llvm.loop !222

._crit_edge.split.us.us:                          ; preds = %_ZZN7xgboost3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us
  %i.bh = add nuw i64 %.0810.us, 1                ; 2 uses
  %exitcond19.not = icmp eq i64 %i.bh, %i.c
  br i1 %exitcond19.not, label %._crit_edge12.split, label %.preheader.us, !llvm.loop !223

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge.split
  %.0810 = phi i64 [ %i.bz, %._crit_edge.split ], [ %i.a, %.preheader.preheader ] ; 6 uses
  %exitcond16.not = icmp eq i64 %.0810, %umax
  br i1 %exitcond16.not, label %bb.b, label %.lr.ph.split.split, !prof !226

.lr.ph.split.split:                               ; preds = %.preheader
  %i.bi = load ptr, ptr %i.i, align 8, !tbaa !98
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.0810
  %i.bk = load i64, ptr %i.k, align 8, !tbaa !34
  %i.bl = mul i64 %i.bk, %.0810
  %i.bm = load i64, ptr %i.l, align 8, !tbaa !34
  %i.bn = load ptr, ptr %i.m, align 8, !tbaa !75
  %i.bo = getelementptr [4 x i8], ptr %i.bn, i64 %i.bl
  %i.bp = load i64, ptr %i.n, align 8, !tbaa !34
  %i.bq = mul i64 %i.bp, %.0810
  %i.br = load i64, ptr %i.o, align 8, !tbaa !34
  %i.bs = load ptr, ptr %i.p, align 8, !tbaa !75
  %i.bt = getelementptr [4 x i8], ptr %i.bs, i64 %i.bq
  %i.bu = load i64, ptr %i.q, align 8, !tbaa !34
  %i.bv = mul i64 %i.bu, %.0810
  %i.bw = load i64, ptr %i.r, align 8, !tbaa !34
  %i.bx = load ptr, ptr %i.s, align 8, !tbaa !72
  %i.by = getelementptr [8 x i8], ptr %i.bx, i64 %i.bv
  br label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i

._crit_edge12.split:                              ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge.split:                                ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i
  %i.bz = add i64 %.0810, 1                       ; 2 uses
  %exitcond17.not = icmp eq i64 %i.bz, %i.c
  br i1 %exitcond17.not, label %._crit_edge12.split, label %.preheader, !llvm.loop !223

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i: ; preds = %.lr.ph.split.split, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i
  %.09 = phi i64 [ 0, %.lr.ph.split.split ], [ %i.cw, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i ] ; 4 uses
  %i.ca = load float, ptr %i.bj, align 4, !tbaa !58 ; 2 uses
  %i.cb = mul i64 %i.bm, %.09
  %i.cc = getelementptr [4 x i8], ptr %i.bo, i64 %i.cb
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !58
  %i.ce = mul i64 %i.br, %.09
  %i.cf = getelementptr [4 x i8], ptr %i.bt, i64 %i.ce
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !58
  %i.ch = fpext float %i.cg to double
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.ch, double 2.000000e+00, double -1.000000e+00) ; 2 uses
  %i.cj = fpext float %i.cd to double
  %i.ck = fmul double %i.ci, %i.cj
  %i.cl = fcmp olt double %i.ck, 1.000000e+00     ; 2 uses
  %i.cm = fneg double %i.ci
  %i.cn = fpext float %i.ca to double
  %i.co = fmul double %i.cn, %i.cm
  %i.cp = fptrunc double %i.co to float
  %i.cq = mul i64 %i.bw, %.09
  %i.cr = getelementptr [8 x i8], ptr %i.by, i64 %i.cq ; 2 uses
  %i.cs = bitcast float %i.cp to i32
  %i.ct = select i1 %i.cl, i32 %i.cs, i32 0
  %i.cu = bitcast float %i.ca to i32
  %i.cv = select i1 %i.cl, i32 %i.cu, i32 8388608
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !58
  %.sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  store i32 %i.cv, ptr %.sroa_idx9.i, align 4, !tbaa !58
  %i.cw = add nuw i64 %.09, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.cw, %i.f
  br i1 %exitcond.not, label %._crit_edge.split, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i, !llvm.loop !222

bb.b:                                             ; preds = %.preheader
  tail call void @_ZSt9terminatev() #32
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %3 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %4 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !34
  store i64 %2, ptr %i.b, align 8, !tbaa !34
  store i64 %1, ptr %0, align 8, !tbaa !95
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.c, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.d = icmp ult i64 %1, %2
  br i1 %i.d, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %_ZN4dmlc11LogCheck_LTImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit

_ZN4dmlc11LogCheck_LTImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.a
  call void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pr = load ptr, ptr %3, align 8, !tbaa !28
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4dmlc11LogCheck_LTImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.e = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.e, ptr noundef nonnull @.str.39, i32 noundef 44)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.c

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.f = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.d ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.6, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.41, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.i = load ptr, ptr %3, align 8, !tbaa !28     ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !18
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.j, i64 noundef %i.l)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.d

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.8, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.o, %bb.c ], [ %i.p, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %.pr12 = load ptr, ptr %3, align 8, !tbaa !28   ; 4 uses
  %.not.i = icmp eq ptr %.pr12, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %.pr12, align 8, !tbaa !19 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.pr12, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.t = load i64, ptr %i.r, align 8, !tbaa !25
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr12, i64 noundef 32) #31
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.a, %_ZN4dmlc11LogCheck_LTImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %bb.f, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.h:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #32
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #24

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.14, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4, !tbaa !87
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %i.b)
          to label %bb.b unwind label %bb.h       ; 2 uses

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.15, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5: ; preds = %bb.b
  %i.e = load i32, ptr %2, align 4, !tbaa !87
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.e)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.16, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6: ; preds = %bb.c
  %i.h = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30
          to label %bb.d unwind label %bb.h       ; 8 uses

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  call void @llvm.experimental.noalias.scope.decl(metadata !231)
  call void @llvm.experimental.noalias.scope.decl(metadata !232)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !24, !alias.scope !233
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !18, !alias.scope !233
  store i8 0, ptr %i.i, align 8, !tbaa !25, !alias.scope !233
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !85, !noalias !233 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !noalias !233 ; 2 uses
  %i.o = icmp ugt ptr %i.l, %i.n
  %.08.i.i.i = select i1 %i.o, ptr %i.l, ptr %i.n ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !86, !noalias !233 ; 2 uses
  %i.r = ptrtoint ptr %.08.i.i.i to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef 0, i64 noundef 0, ptr noundef %i.q, i64 noundef %i.t)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !19, !alias.scope !233 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.i
  br i1 %i.x, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.y = load i64, ptr %i.i, align 8, !tbaa !25, !alias.scope !233
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #31
  br label %.body

bb.g:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.g, %bb.e
  store ptr %i.h, ptr %0, align 8, !tbaa !28
  %i.ab = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ab, ptr %3, align 8, !tbaa !36
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ad = getelementptr i8, ptr %i.ab, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %3, i64 %i.ae
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !36
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ag, align 8, !tbaa !36
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !19 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !25
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #31
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ag, align 8, !tbaa !36
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #18
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ao) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.h:                                             ; preds = %bb.c, %bb.b, %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.body:                                            ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 32) #31
  br label %bb.i

bb.i:                                             ; preds = %.body, %bb.h
  %.pn = phi { ptr, i32 } [ %i.v, %.body ], [ %i.ap, %bb.h ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #25

; Function Attrs: nounwind
declare void @_ZSt17current_exceptionv(ptr dead_on_unwind writable sret(%"class.std::__exception_ptr::exception_ptr") align 8) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef align 8) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common11ParallelForImZNS0_13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS_3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS3_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS3_10TensorViewIT_XT0_EEEiOT1_EUlOSO_E0_EEvT0_iSR_EUlSO_E_EEvSO_iNS0_5SchedEOSU_(i64 noundef %0, i32 noundef %1, i32 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %6 = alloca %"class.xgboost::common::Range1d", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %8 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %9 = alloca %"class.dmlc::OMPException", align 8 ; 13 uses
  %i.c = icmp eq i32 %1, 1
  br i1 %i.c, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a
  %.not125 = icmp eq i64 %0, 0
  br i1 %.not125, label %.loopexit, label %.lr.ph118

.lr.ph118:                                        ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph118, %bb.b
  %.0117 = phi i64 [ 0, %.lr.ph118 ], [ %i.k, %bb.b ] ; 2 uses
  %i.e = shl i64 %.0117, 11                       ; 3 uses
  %i.f = load ptr, ptr %4, align 8, !tbaa !244, !nonnull !88, !align !89
  %i.g = load i64, ptr %i.f, align 8, !tbaa !34
  %i.h = sub i64 %i.g, %i.e
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.h, i64 2048)
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !245, !nonnull !88, !align !89
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.j = add i64 %.sroa.speculated.i, %i.e
  call void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.e, i64 noundef %i.j)
  call void @_ZZN7xgboost6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS_3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS0_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS0_10TensorViewIT_XT0_EEEiOT1_ENKUlOSL_E0_clINS_6common7Range1dEEEDaSP_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.k = add nuw i64 %.0117, 1                    ; 2 uses
  %exitcond147.not = icmp eq i64 %i.k, %0
  br i1 %exitcond147.not, label %.loopexit, label %bb.b, !llvm.loop !234

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %1, ptr %i.a, align 4, !tbaa !87, !noalias !246
  store i32 1, ptr %i.b, align 4, !tbaa !87, !noalias !246
  %.not.i = icmp slt i32 %1, 1
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.c
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %7, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr = load ptr, ptr %7, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.l = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.l, ptr noundef nonnull @.str.39, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.e

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.m = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.f ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.6, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.40, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.p = load ptr, ptr %7, align 8, !tbaa !28     ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !18
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.q, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @.str.8, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.noexc, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.g unwind label %bb.ad

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.w, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.ac

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %.pr81 = load ptr, ptr %7, align 8, !tbaa !28   ; 4 uses
  %.not.i75 = icmp eq ptr %.pr81, null
  br i1 %.not.i75, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %.pr81, align 8, !tbaa !19 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.pr81, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !25
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr81, i64 noundef 32) #31
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.h, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, i8 0, i64 48, i1 false)
  switch i32 %2, label %.thread [
    i32 0, label %.preheader84
    i32 1, label %bb.l
    i32 2, label %bb.q
    i32 3, label %.preheader104
  ]

.thread:                                          ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit

.preheader104:                                    ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not119 = icmp eq i64 %0, 0
  br i1 %.not119, label %bb.x, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader104
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.v

.preheader84:                                     ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not124 = icmp eq i64 %0, 0
  br i1 %.not124, label %bb.x, label %.lr.ph116

.lr.ph116:                                        ; preds = %.preheader84
  %.sroa.224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph116, %bb.k
  %.058115 = phi i64 [ 0, %.lr.ph116 ], [ %i.ac, %bb.k ] ; 2 uses
  %.sroa.023.0.copyload = load ptr, ptr %4, align 8, !tbaa !91
  %.sroa.224.0.copyload = load ptr, ptr %.sroa.224.0..sroa_idx, align 8, !tbaa !37
  invoke void @_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS2_3obj8HingeObj11GetGradientERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEiPNS5_6TensorINS2_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS5_10TensorViewIT_XT0_EEEiOT1_EUlOSQ_E0_EEvT0_iST_EUlSQ_E_JmEEEvSQ_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr %.sroa.023.0.copyload, ptr %.sroa.224.0.copyload, i64 noundef %.058115)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.ac = add nuw i64 %.058115, 1                 ; 2 uses
  %exitcond146.not = icmp eq i64 %i.ac, %0
  br i1 %exitcond146.not, label %thread-pre-split159, label %bb.j, !llvm.loop !237

bb.l:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.ad = icmp eq i64 %3, 0
  %.not123 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.ad, label %.preheader86, label %.preheader91

.preheader91:                                     ; preds = %bb.l
  br i1 %.not123, label %bb.x, label %.lr.ph112

.lr.ph112:                                        ; preds = %.preheader91
  %.sroa.214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.o

.preheader86:                                     ; preds = %bb.l
  br i1 %.not123, label %bb.x, label %.lr.ph114

.lr.ph114:                                        ; preds = %.preheader86
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph114, %bb.n
  %.059113 = phi i64 [ 0, %.lr.ph114 ], [ %i.ae, %bb.n ] ; 2 uses
  %.sroa.018.0.copyload = load ptr, ptr %4, align 8, !tbaa !91
  %.sroa.219.0.copyload = load ptr, ptr %.sroa.219.0..sroa_idx, align 8, !tbaa !37
  invoke void @_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS2_3obj8HingeObj11GetGradientERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEiPNS5_6TensorINS2_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS5_10TensorViewIT_XT0_EEEiOT1_EUlOSQ_E0_EEvT0_iST_EUlSQ_E_JmEEEvSQ_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr %.sroa.018.0.copyload, ptr %.sroa.219.0.copyload, i64 noundef %.059113)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  %i.ae = add nuw i64 %.059113, 1                 ; 2 uses
  %exitcond145.not = icmp eq i64 %i.ae, %0
  br i1 %exitcond145.not, label %thread-pre-split159, label %bb.m, !llvm.loop !238

bb.o:                                             ; preds = %.lr.ph112, %bb.p
  %.061111 = phi i64 [ 0, %.lr.ph112 ], [ %i.af, %bb.p ] ; 2 uses
  %.sroa.013.0.copyload = load ptr, ptr %4, align 8, !tbaa !91
  %.sroa.214.0.copyload = load ptr, ptr %.sroa.214.0..sroa_idx, align 8, !tbaa !37
  invoke void @_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS2_3obj8HingeObj11GetGradientERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEiPNS5_6TensorINS2_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS5_10TensorViewIT_XT0_EEEiOT1_EUlOSQ_E0_EEvT0_iST_EUlSQ_E_JmEEEvSQ_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr %.sroa.013.0.copyload, ptr %.sroa.214.0.copyload, i64 noundef %.061111)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  %i.af = add nuw i64 %.061111, 1                 ; 2 uses
  %exitcond144.not = icmp eq i64 %i.af, %0
  br i1 %exitcond144.not, label %thread-pre-split159, label %bb.o, !llvm.loop !239

bb.q:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.ag = icmp eq i64 %3, 0
  %.not121 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.ag, label %.preheader95, label %.preheader100

.preheader100:                                    ; preds = %bb.q
  br i1 %.not121, label %bb.x, label %.lr.ph108

.lr.ph108:                                        ; preds = %.preheader100
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.t

.preheader95:                                     ; preds = %bb.q
  br i1 %.not121, label %bb.x, label %.lr.ph110

.lr.ph110:                                        ; preds = %.preheader95
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph110, %bb.s
  %.060109 = phi i64 [ 0, %.lr.ph110 ], [ %i.ah, %bb.s ] ; 2 uses
  %.sroa.08.0.copyload = load ptr, ptr %4, align 8, !tbaa !91
  %.sroa.29.0.copyload = load ptr, ptr %.sroa.29.0..sroa_idx, align 8, !tbaa !37
  invoke void @_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS2_3obj8HingeObj11GetGradientERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEiPNS5_6TensorINS2_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS5_10TensorViewIT_XT0_EEEiOT1_EUlOSQ_E0_EEvT0_iST_EUlSQ_E_JmEEEvSQ_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr %.sroa.08.0.copyload, ptr %.sroa.29.0.copyload, i64 noundef %.060109)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  %i.ah = add nuw i64 %.060109, 1                 ; 2 uses
  %exitcond143.not = icmp eq i64 %i.ah, %0
  br i1 %exitcond143.not, label %thread-pre-split159, label %bb.r, !llvm.loop !240

bb.t:                                             ; preds = %.lr.ph108, %bb.u
  %.057107 = phi i64 [ 0, %.lr.ph108 ], [ %i.ai, %bb.u ] ; 2 uses
  %.sroa.03.0.copyload = load ptr, ptr %4, align 8, !tbaa !91
  %.sroa.24.0.copyload = load ptr, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !37
  invoke void @_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS2_3obj8HingeObj11GetGradientERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEiPNS5_6TensorINS2_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS5_10TensorViewIT_XT0_EEEiOT1_EUlOSQ_E0_EEvT0_iST_EUlSQ_E_JmEEEvSQ_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr %.sroa.03.0.copyload, ptr %.sroa.24.0.copyload, i64 noundef %.057107)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  %i.ai = add nuw i64 %.057107, 1                 ; 2 uses
  %exitcond142.not = icmp eq i64 %i.ai, %0
  br i1 %exitcond142.not, label %thread-pre-split159, label %bb.t, !llvm.loop !241

bb.v:                                             ; preds = %.lr.ph, %bb.w
  %.052106 = phi i64 [ 0, %.lr.ph ], [ %i.aj, %bb.w ] ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %4, align 8, !tbaa !91
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !37
  invoke void @_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS2_3obj8HingeObj11GetGradientERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEiPNS5_6TensorINS2_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS5_10TensorViewIT_XT0_EEEiOT1_EUlOSQ_E0_EEvT0_iST_EUlSQ_E_JmEEEvSQ_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, i64 noundef %.052106)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.aj = add nuw i64 %.052106, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.aj, %0
  br i1 %exitcond.not, label %thread-pre-split159, label %bb.v, !llvm.loop !242

thread-pre-split159:                              ; preds = %bb.w, %bb.u, %bb.s, %bb.p, %bb.n, %bb.k
  %.pr83.pr = load ptr, ptr %9, align 8, !tbaa !93
  br label %bb.x

bb.x:                                             ; preds = %thread-pre-split159, %.preheader84, %.preheader86, %.preheader91, %.preheader95, %.preheader100, %.preheader104
  %.pr83 = phi ptr [ %.pr83.pr, %thread-pre-split159 ], [ null, %.preheader84 ], [ null, %.preheader86 ], [ null, %.preheader91 ], [ null, %.preheader95 ], [ null, %.preheader100 ], [ null, %.preheader104 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %.not.i76 = icmp eq ptr %.pr83, null
  br i1 %.not.i76, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i: ; preds = %bb.x
  store ptr %.pr83, ptr %5, align 8, !tbaa !93
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %5) #29
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  unreachable

bb.z:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %5, align 8, !tbaa !93
  %.not.i2.i = icmp eq ptr %i.al, null
  br i1 %.not.i2.i, label %.body, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  br label %.body

_ZN4dmlc12OMPExceptionD2Ev.exit:                  ; preds = %.thread, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.preheader, %_ZN4dmlc12OMPExceptionD2Ev.exit
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.r, %bb.o, %bb.j, %bb.m, %bb.t, %bb.v
  %lpad.loopexit.split-lp192 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.z, %bb.aa
  %eh.lpad-body = phi { ptr, i32 } [ %i.ak, %bb.z ], [ %i.ak, %bb.aa ], [ %lpad.loopexit.split-lp192, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.am = load ptr, ptr %9, align 8, !tbaa !93
  %.not.i.i78 = icmp eq ptr %i.am, null
  br i1 %.not.i.i78, label %_ZN4dmlc12OMPExceptionD2Ev.exit80, label %bb.ab

bb.ab:                                            ; preds = %.body
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(48) %9) #18
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit80

_ZN4dmlc12OMPExceptionD2Ev.exit80:                ; preds = %.body, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN4dmlc12OMPExceptionD2Ev.exit80, %bb.g
  %.pn64.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZN4dmlc12OMPExceptionD2Ev.exit80 ], [ %.pn, %bb.g ]
  resume { ptr, i32 } %.pn64.pn

bb.ad:                                            ; preds = %bb.f
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #32
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS2_3obj8HingeObj11GetGradientERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEiPNS5_6TensorINS2_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS5_10TensorViewIT_XT0_EEEiOT1_EUlOSQ_E0_EEvT0_iST_EUlSQ_E_JmEEEvSQ_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr %2, i64 noundef %3) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %6 = alloca %"class.xgboost::common::Range1d", align 8 ; 4 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %i.a = shl i64 %3, 11                           ; 3 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !34
  %i.c = sub i64 %i.b, %i.a
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 2048)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.d = add i64 %.sroa.speculated.i, %i.a
  invoke void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.a, i64 noundef %i.d)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.a
  invoke void @_ZZN7xgboost6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS_3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS0_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS0_10TensorViewIT_XT0_EEEiOT1_ENKUlOSL_E0_clINS_6common7Range1dEEEDaSP_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS_3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS2_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS2_10TensorViewIT_XT0_EEEiOT1_EUlOSN_E0_EEvT0_iSQ_ENKUlSN_E_clImEEDaSN_.exit unwind label %bb.b

_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS_3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS2_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS2_10TensorViewIT_XT0_EEEiOT1_EUlOSN_E0_EEvT0_iSQ_ENKUlSN_E_clImEEDaSN_.exit: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.p

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.f = extractvalue { ptr, i32 } %i.e, 0        ; 2 uses
  %i.g = extractvalue { ptr, i32 } %i.e, 1        ; 2 uses
  %i.h = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4dmlc5ErrorE) #18
  %i.i = icmp eq i32 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.j = call ptr @__cxa_begin_catch(ptr %i.f) #18 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #18 ; 2 uses
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.l) #29
          to label %.noexc9 unwind label %bb.n

.noexc9:                                          ; preds = %bb.d
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !93
  %.not23 = icmp eq ptr %i.m, null
  br i1 %.not23, label %bb.e, label %bb.o

bb.e:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.n = load ptr, ptr %8, align 8, !tbaa !93
  store ptr null, ptr %8, align 8, !tbaa !93
  %i.o = load ptr, ptr %0, align 8, !tbaa !93     ; 2 uses
  store ptr %i.o, ptr %5, align 8, !tbaa !93
  store ptr %i.n, ptr %0, align 8, !tbaa !93
  %.not.i.i10 = icmp eq ptr %i.o, null
  br i1 %.not.i.i10, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.e
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  %.pr = load ptr, ptr %8, align 8, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.o

bb.g:                                             ; preds = %bb.b
  %i.p = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #18
  %i.q = icmp eq i32 %i.g, %i.p
  br i1 %i.q, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.r = call ptr @__cxa_begin_catch(ptr %i.f) #18 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.s) #18 ; 2 uses
  %.not.i.i11 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i11, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.t) #29
          to label %.noexc12 unwind label %bb.l

.noexc12:                                         ; preds = %bb.i
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13:        ; preds = %bb.h
  %i.u = load ptr, ptr %0, align 8, !tbaa !93
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.v = load ptr, ptr %7, align 8, !tbaa !93
  store ptr null, ptr %7, align 8, !tbaa !93
  %i.w = load ptr, ptr %0, align 8, !tbaa !93     ; 2 uses
  store ptr %i.w, ptr %4, align 8, !tbaa !93
  store ptr %i.v, ptr %0, align 8, !tbaa !93
  %.not.i.i14 = icmp eq ptr %i.w, null
  br i1 %.not.i.i14, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.thread: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15: ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %.pr21 = load ptr, ptr %7, align 8, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %.not.i16 = icmp eq ptr %.pr21, null
  br i1 %.not.i16, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17, label %bb.k

bb.k:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17: ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %bb.r

bb.m:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13
  %i.y = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.s) #18 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.p

bb.n:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %bb.r

bb.o:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.aa = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #18 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.p

bb.p:                                             ; preds = %_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS_3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS2_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS2_10TensorViewIT_XT0_EEEiOT1_EUlOSN_E0_EEvT0_iSQ_ENKUlSN_E_clImEEDaSN_.exit, %bb.o, %bb.m
  ret void

bb.q:                                             ; preds = %bb.n, %bb.l, %bb.g
  %.merged = phi { ptr, i32 } [ %i.x, %bb.l ], [ %i.e, %bb.g ], [ %i.z, %bb.n ]
  resume { ptr, i32 } %.merged

bb.r:                                             ; preds = %bb.n, %bb.l
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #32
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN7xgboost6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS_3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS0_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS0_10TensorViewIT_XT0_EEEiOT1_ENKUlOSL_E0_clINS_6common7Range1dEEEDaSP_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !95     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !96   ; 2 uses
  %i.d = icmp ult i64 %i.a, %i.c
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !255, !nonnull !88, !align !89 ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !256, !nonnull !88, !align !89
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.e, align 8, !tbaa !97   ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  br label %bb.b

._crit_edge:                                      ; preds = %_ZSt5applyIRZN7xgboost3obj8HingeObj11GetGradientERKNS0_16HostDeviceVectorIfEERKNS0_8MetaInfoEiPNS0_6linalg6TensorINS0_6detail20GradientPairInternalIfEELi2EEEEUlmmE_St5tupleIJmmEEEDcOT_OT0_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZSt5applyIRZN7xgboost3obj8HingeObj11GetGradientERKNS0_16HostDeviceVectorIfEERKNS0_8MetaInfoEiPNS0_6linalg6TensorINS0_6detail20GradientPairInternalIfEELi2EEEEUlmmE_St5tupleIJmmEEEDcOT_OT0_.exit
  %.05 = phi i64 [ %i.a, %.lr.ph ], [ %i.cd, %_ZSt5applyIRZN7xgboost3obj8HingeObj11GetGradientERKNS0_16HostDeviceVectorIfEERKNS0_8MetaInfoEiPNS0_6linalg6TensorINS0_6detail20GradientPairInternalIfEELi2EEEEUlmmE_St5tupleIJmmEEEDcOT_OT0_.exit ] ; 7 uses
  %i.v = icmp ugt i64 %.05, 4294967295
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = load i64, ptr %i.h, align 8, !tbaa !34, !noalias !257 ; 5 uses
  %i.x = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.w)
  %.not.i.i = icmp samesign ult i64 %i.x, 2
  br i1 %.not.i.i, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.c
  %i.y = add i64 %i.w, -1                         ; 2 uses
  %i.z = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.y)
  %i.aa = lshr i64 %.05, %i.z
  %i.ab = and i64 %i.y, %.05
  br label %_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit

.split.i.i:                                       ; preds = %bb.c
  %i.ac = udiv i64 %.05, %i.w                     ; 2 uses
  %i.ad = mul i64 %i.ac, %i.w                     ; 0 uses
  %.recomposed = urem i64 %.05, %i.w
  br label %_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit

bb.d:                                             ; preds = %bb.b
  %i.ae = trunc nuw i64 %.05 to i32               ; 4 uses
  %i.af = load i64, ptr %i.h, align 8, !tbaa !34, !noalias !258
  %i.ag = trunc i64 %i.af to i32                  ; 5 uses
  %i.ah = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ag)
  %.not.i7.i = icmp samesign ult i32 %i.ah, 2
  br i1 %.not.i7.i, label %.split.us.i11.i, label %.split.i8.i

.split.us.i11.i:                                  ; preds = %bb.d
  %i.ai = add i32 %i.ag, -1                       ; 2 uses
  %i.aj = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ai)
  %i.ak = lshr i32 %i.ae, %i.aj
  %i.al = and i32 %i.ai, %i.ae
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i

.split.i8.i:                                      ; preds = %bb.d
  %i.am = udiv i32 %i.ae, %i.ag                   ; 2 uses
  %i.an = mul i32 %i.am, %i.ag                    ; 0 uses
  %.recomposed9 = urem i32 %i.ae, %i.ag
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i: ; preds = %.split.i8.i, %.split.us.i11.i
  %.us-phi.i9.i = phi i32 [ %.recomposed9, %.split.i8.i ], [ %i.al, %.split.us.i11.i ]
  %.us-phi23.i10.i = phi i32 [ %i.am, %.split.i8.i ], [ %i.ak, %.split.us.i11.i ]
  %.sroa.5.1.le.i.i = zext i32 %.us-phi.i9.i to i64
  %i.ao = zext i32 %.us-phi23.i10.i to i64
  br label %_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit

_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit: ; preds = %.split.us.i.i, %.split.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i
  %.sroa.5.1.le.i.sink.i = phi i64 [ %.sroa.5.1.le.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i ], [ %.recomposed, %.split.i.i ], [ %i.ab, %.split.us.i.i ] ; 3 uses
  %.sink.i = phi i64 [ %i.ao, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i ], [ %i.ac, %.split.i.i ], [ %i.aa, %.split.us.i.i ] ; 5 uses
  br i1 %i.j, label %_ZSt5applyIRZN7xgboost3obj8HingeObj11GetGradientERKNS0_16HostDeviceVectorIfEERKNS0_8MetaInfoEiPNS0_6linalg6TensorINS0_6detail20GradientPairInternalIfEELi2EEEEUlmmE_St5tupleIJmmEEEDcOT_OT0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit
  %i.ap = icmp ult i64 %.sink.i, %i.i
  br i1 %i.ap, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i.i.i.i, label %bb.f, !prof !78

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt9terminatev() #32
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.aq = load ptr, ptr %i.k, align 8, !tbaa !98
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.sink.i
  br label %_ZSt5applyIRZN7xgboost3obj8HingeObj11GetGradientERKNS0_16HostDeviceVectorIfEERKNS0_8MetaInfoEiPNS0_6linalg6TensorINS0_6detail20GradientPairInternalIfEELi2EEEEUlmmE_St5tupleIJmmEEEDcOT_OT0_.exit

_ZSt5applyIRZN7xgboost3obj8HingeObj11GetGradientERKNS0_16HostDeviceVectorIfEERKNS0_8MetaInfoEiPNS0_6linalg6TensorINS0_6detail20GradientPairInternalIfEELi2EEEEUlmmE_St5tupleIJmmEEEDcOT_OT0_.exit: ; preds = %_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i.i.i.i
  %.in.i.i.i.i.i.i = phi ptr [ %i.ar, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i.i.i.i ], [ %i.l, %_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit ]
  %i.as = load float, ptr %.in.i.i.i.i.i.i, align 4, !tbaa !58 ; 2 uses
  %i.at = load i64, ptr %i.m, align 8, !tbaa !34
  %i.au = mul i64 %i.at, %.sink.i
  %i.av = load i64, ptr %i.n, align 8, !tbaa !34
  %i.aw = mul i64 %i.av, %.sroa.5.1.le.i.sink.i
  %i.ax = load ptr, ptr %i.o, align 8, !tbaa !75
  %i.ay = getelementptr [4 x i8], ptr %i.ax, i64 %i.au
  %i.az = getelementptr [4 x i8], ptr %i.ay, i64 %i.aw
  %i.ba = load float, ptr %i.az, align 4, !tbaa !58
  %i.bb = load i64, ptr %i.p, align 8, !tbaa !34
  %i.bc = mul i64 %i.bb, %.sink.i
  %i.bd = load i64, ptr %i.q, align 8, !tbaa !34
  %i.be = mul i64 %i.bd, %.sroa.5.1.le.i.sink.i
  %i.bf = load ptr, ptr %i.r, align 8, !tbaa !75
  %i.bg = getelementptr [4 x i8], ptr %i.bf, i64 %i.bc
  %i.bh = getelementptr [4 x i8], ptr %i.bg, i64 %i.be
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !58
  %i.bj = fpext float %i.bi to double
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bj, double 2.000000e+00, double -1.000000e+00) ; 2 uses
  %i.bl = fpext float %i.ba to double
  %i.bm = fmul double %i.bk, %i.bl
  %i.bn = fcmp olt double %i.bm, 1.000000e+00     ; 2 uses
  %i.bo = fneg double %i.bk
  %i.bp = fpext float %i.as to double
  %i.bq = fmul double %i.bp, %i.bo
  %i.br = fptrunc double %i.bq to float
  %i.bs = load i64, ptr %i.s, align 8, !tbaa !34
  %i.bt = mul i64 %i.bs, %.sink.i
  %i.bu = load i64, ptr %i.t, align 8, !tbaa !34
  %i.bv = mul i64 %i.bu, %.sroa.5.1.le.i.sink.i
  %i.bw = load ptr, ptr %i.u, align 8, !tbaa !72
  %i.bx = getelementptr [8 x i8], ptr %i.bw, i64 %i.bt
  %i.by = getelementptr [8 x i8], ptr %i.bx, i64 %i.bv ; 2 uses
  %i.bz = bitcast float %i.br to i32
  %i.ca = select i1 %i.bn, i32 %i.bz, i32 0
  %i.cb = bitcast float %i.as to i32
  %i.cc = select i1 %i.bn, i32 %i.cb, i32 8388608
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !58
  %.sroa_idx9.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store i32 %i.cc, ptr %.sroa_idx9.i.i.i.i.i, align 4, !tbaa !58
  %i.cd = add i64 %.05, 1                         ; 2 uses
  %exitcond.not = icmp eq i64 %i.cd, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !253
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #24

declare i32 @_ZNK7xgboost16HostDeviceVectorIfE6DeviceEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj8HingeObj13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E4EvalIJS8_EEEvDpT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.94, align 1             ; 3 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.96, align 8             ; 6 uses
  %4 = alloca %class.anon.94, align 1             ; 3 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %class.anon.96, align 8             ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i16, ptr %i.c, align 4, !tbaa !259  ; 2 uses
  %i.e = icmp eq i16 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj8HingeObj13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E10LaunchCUDAILPv0EJS7_EEEvSB_DpPT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.off.i = add i16 %i.d, -2
  %switch.i = icmp ult i16 %.off.i, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br i1 %switch.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8, !tbaa !100
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.f, align 8, !tbaa !34
  %i.h = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 0 uses
  %i.i = load i32, ptr %i.g, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store ptr %4, ptr %5, align 8, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.b, ptr %i.j, align 8, !tbaa !260
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %0, ptr %i.k, align 8, !tbaa !261
  call void @_ZN7xgboost6common11ParallelForImZNKS0_9TransformILb0EE9EvaluatorIZNKS_3obj8HingeObj13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E9LaunchCPUIJS8_EEEvSC_DpPT_EUlmE_EEvT_iNS0_5SchedEOT0_(i64 noundef %.sroa.0.0.copyload.i.i.i, i32 noundef %i.i, i32 2, i64 0, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !tbaa !100
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.f, align 8, !tbaa !34
  %i.l = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 0 uses
  %i.m = load i32, ptr %i.g, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr %2, ptr %3, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %i.n, align 8, !tbaa !260
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %0, ptr %i.o, align 8, !tbaa !261
  call void @_ZN7xgboost6common11ParallelForImZNKS0_9TransformILb0EE9EvaluatorIZNKS_3obj8HingeObj13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E9LaunchCPUIJS8_EEEvSC_DpPT_EUlmE_EEvT_iNS0_5SchedEOT0_(i64 noundef %.sroa.0.0.copyload.i.i, i32 noundef %i.m, i32 2, i64 0, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj8HingeObj13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E10LaunchCUDAILPv0EJS7_EEEvSB_DpPT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.a, ptr noundef nonnull @.str.44, i32 noundef 163)
  %i.b = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.b ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.a
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.45, i64 noundef 36)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.b ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i1 noundef zeroext false)
          to label %_ZNSolsEb.exit unwind label %bb.b ; 0 uses

_ZNSolsEb.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %i.e

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #32
  unreachable
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common11ParallelForImZNKS0_9TransformILb0EE9EvaluatorIZNKS_3obj8HingeObj13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E9LaunchCPUIJS8_EEEvSC_DpPT_EUlmE_EEvT_iNS0_5SchedEOT0_(i64 noundef %0, i32 noundef %1, i32 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %7 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %8 = alloca %"class.dmlc::OMPException", align 8 ; 13 uses
  %i.c = icmp eq i32 %1, 1
  br i1 %i.c, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %.not113 = icmp eq i64 %0, 0
  br i1 %.not113, label %.loopexit, label %.lr.ph106

.lr.ph106:                                        ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph106, %_ZZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj8HingeObj13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E9LaunchCPUIJS7_EEEvSB_DpPT_ENKUlmE_clEm.exit
  %.049105 = phi i64 [ 0, %.lr.ph106 ], [ %i.r, %_ZZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj8HingeObj13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E9LaunchCPUIJS7_EEEvSB_DpPT_ENKUlmE_clEm.exit ] ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104, !nonnull !88, !align !89
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !100  ; 2 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorIfE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55   ; 2 uses
  %i.i = tail call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) ; 2 uses
  %i.j = icmp ne ptr %i.h, null
  %i.k = icmp eq i64 %i.i, 0
  %i.l = or i1 %i.j, %i.k
  br i1 %i.l, label %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj8HingeObj13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E9UnpackHDVIfEENS9_IT_Lm18446744073709551615EEEPNS6_ISE_EE.exit.i, label %bb.c, !prof !78

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #32
  unreachable

_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj8HingeObj13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E9UnpackHDVIfEENS9_IT_Lm18446744073709551615EEEPNS6_ISE_EE.exit.i: ; preds = %bb.b
  %i.m = icmp ult i64 %.049105, %i.i
  br i1 %i.m, label %_ZZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj8HingeObj13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E9LaunchCPUIJS7_EEEvSB_DpPT_ENKUlmE_clEm.exit, label %bb.d, !prof !78

bb.d:                                             ; preds = %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj8HingeObj13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E9UnpackHDVIfEENS9_IT_Lm18446744073709551615EEEPNS6_ISE_EE.exit.i
  tail call void @_ZSt9terminatev() #32
  unreachable

_ZZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj8HingeObj13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E9LaunchCPUIJS7_EEEvSB_DpPT_ENKUlmE_clEm.exit: ; preds = %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj8HingeObj13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E9UnpackHDVIfEENS9_IT_Lm18446744073709551615EEEPNS6_ISE_EE.exit.i
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.049105 ; 2 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !58
  %i.p = fcmp ogt float %i.o, 0.000000e+00
  %i.q = select i1 %i.p, float 1.000000e+00, float 0.000000e+00
  store float %i.q, ptr %i.n, align 4, !tbaa !58
  %i.r = add nuw i64 %.049105, 1                  ; 2 uses
  %exitcond135.not = icmp eq i64 %i.r, %0
  br i1 %exitcond135.not, label %.loopexit, label %bb.b, !llvm.loop !262

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %1, ptr %i.a, align 4, !tbaa !87, !noalias !271
  store i32 1, ptr %i.b, align 4, !tbaa !87, !noalias !271
  %.not.i = icmp slt i32 %1, 1
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.e
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %6, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr = load ptr, ptr %6, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.s = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.s, ptr noundef nonnull @.str.39, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.g

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.t = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.h ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @.str.6, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @.str.40, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.w = load ptr, ptr %6, align 8, !tbaa !28     ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !18
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef %i.x, i64 noundef %i.z)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.h

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.8, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %.noexc, %bb.f, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.i unwind label %bb.z

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.g ], [ %i.ad, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.y

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %.pr69 = load ptr, ptr %6, align 8, !tbaa !28   ; 4 uses
  %.not.i63 = icmp eq ptr %.pr69, null
  br i1 %.not.i63, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr %.pr69, align 8, !tbaa !19 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.pr69, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !25
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr69, i64 noundef 32) #31
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.j, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false)
  switch i32 %2, label %.thread [
    i32 0, label %.preheader72
    i32 1, label %bb.m
    i32 2, label %bb.p
    i32 3, label %.preheader92
  ]

.thread:                                          ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit

.preheader92:                                     ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not107 = icmp eq i64 %0, 0
  br i1 %.not107, label %bb.t, label %.lr.ph

.preheader72:                                     ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not112 = icmp eq i64 %0, 0
  br i1 %.not112, label %bb.t, label %.lr.ph104

.lr.ph104:                                        ; preds = %.preheader72, %bb.l
  %.044103 = phi i64 [ %i.aj, %bb.l ], [ 0, %.preheader72 ] ; 2 uses
  invoke void @_ZN4dmlc12OMPException3RunIZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS2_3obj8HingeObj13PredTransformEPNS2_16HostDeviceVectorIfEEEUlmNS3_4SpanIfLm18446744073709551615EEEE_E9LaunchCPUIJSA_EEEvSE_DpPT_EUlmE_JmEEEvT_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull byval(%class.anon.96) align 8 %4, i64 noundef %.044103)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %.lr.ph104
  %i.aj = add nuw i64 %.044103, 1                 ; 2 uses
  %exitcond134.not = icmp eq i64 %i.aj, %0
  br i1 %exitcond134.not, label %thread-pre-split148, label %.lr.ph104, !llvm.loop !265

bb.m:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.ak = icmp eq i64 %3, 0
  %.not111 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.ak, label %.preheader74, label %.preheader79

.preheader79:                                     ; preds = %bb.m
  br i1 %.not111, label %bb.t, label %.lr.ph100

.preheader74:                                     ; preds = %bb.m
  br i1 %.not111, label %bb.t, label %.lr.ph102

.lr.ph102:                                        ; preds = %.preheader74, %bb.n
  %.043101 = phi i64 [ %i.al, %bb.n ], [ 0, %.preheader74 ] ; 2 uses
  invoke void @_ZN4dmlc12OMPException3RunIZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS2_3obj8HingeObj13PredTransformEPNS2_16HostDeviceVectorIfEEEUlmNS3_4SpanIfLm18446744073709551615EEEE_E9LaunchCPUIJSA_EEEvSE_DpPT_EUlmE_JmEEEvT_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull byval(%class.anon.96) align 8 %4, i64 noundef %.043101)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %.lr.ph102
  %i.al = add nuw i64 %.043101, 1                 ; 2 uses
  %exitcond133.not = icmp eq i64 %i.al, %0
  br i1 %exitcond133.not, label %thread-pre-split148, label %.lr.ph102, !llvm.loop !266

.lr.ph100:                                        ; preds = %.preheader79, %bb.o
  %.04299 = phi i64 [ %i.am, %bb.o ], [ 0, %.preheader79 ] ; 2 uses
  invoke void @_ZN4dmlc12OMPException3RunIZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS2_3obj8HingeObj13PredTransformEPNS2_16HostDeviceVectorIfEEEUlmNS3_4SpanIfLm18446744073709551615EEEE_E9LaunchCPUIJSA_EEEvSE_DpPT_EUlmE_JmEEEvT_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull byval(%class.anon.96) align 8 %4, i64 noundef %.04299)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %.lr.ph100
  %i.am = add nuw i64 %.04299, 1                  ; 2 uses
  %exitcond132.not = icmp eq i64 %i.am, %0
  br i1 %exitcond132.not, label %thread-pre-split148, label %.lr.ph100, !llvm.loop !267

bb.p:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.an = icmp eq i64 %3, 0
  %.not109 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.an, label %.preheader83, label %.preheader88

.preheader88:                                     ; preds = %bb.p
  br i1 %.not109, label %bb.t, label %.lr.ph96

.preheader83:                                     ; preds = %bb.p
  br i1 %.not109, label %bb.t, label %.lr.ph98

.lr.ph98:                                         ; preds = %.preheader83, %bb.q
  %.04197 = phi i64 [ %i.ao, %bb.q ], [ 0, %.preheader83 ] ; 2 uses
  invoke void @_ZN4dmlc12OMPException3RunIZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS2_3obj8HingeObj13PredTransformEPNS2_16HostDeviceVectorIfEEEUlmNS3_4SpanIfLm18446744073709551615EEEE_E9LaunchCPUIJSA_EEEvSE_DpPT_EUlmE_JmEEEvT_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull byval(%class.anon.96) align 8 %4, i64 noundef %.04197)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %.lr.ph98
  %i.ao = add nuw i64 %.04197, 1                  ; 2 uses
  %exitcond131.not = icmp eq i64 %i.ao, %0
  br i1 %exitcond131.not, label %thread-pre-split148, label %.lr.ph98, !llvm.loop !268

.lr.ph96:                                         ; preds = %.preheader88, %bb.r
  %.04095 = phi i64 [ %i.ap, %bb.r ], [ 0, %.preheader88 ] ; 2 uses
  invoke void @_ZN4dmlc12OMPException3RunIZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS2_3obj8HingeObj13PredTransformEPNS2_16HostDeviceVectorIfEEEUlmNS3_4SpanIfLm18446744073709551615EEEE_E9LaunchCPUIJSA_EEEvSE_DpPT_EUlmE_JmEEEvT_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull byval(%class.anon.96) align 8 %4, i64 noundef %.04095)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %.lr.ph96
  %i.ap = add nuw i64 %.04095, 1                  ; 2 uses
  %exitcond130.not = icmp eq i64 %i.ap, %0
  br i1 %exitcond130.not, label %thread-pre-split148, label %.lr.ph96, !llvm.loop !269

.lr.ph:                                           ; preds = %.preheader92, %bb.s
  %.094 = phi i64 [ %i.aq, %bb.s ], [ 0, %.preheader92 ] ; 2 uses
  invoke void @_ZN4dmlc12OMPException3RunIZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS2_3obj8HingeObj13PredTransformEPNS2_16HostDeviceVectorIfEEEUlmNS3_4SpanIfLm18446744073709551615EEEE_E9LaunchCPUIJSA_EEEvSE_DpPT_EUlmE_JmEEEvT_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull byval(%class.anon.96) align 8 %4, i64 noundef %.094)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %.lr.ph
  %i.aq = add nuw i64 %.094, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.aq, %0
  br i1 %exitcond.not, label %thread-pre-split148, label %.lr.ph, !llvm.loop !270

thread-pre-split148:                              ; preds = %bb.s, %bb.r, %bb.q, %bb.o, %bb.n, %bb.l
  %.pr71.pr = load ptr, ptr %8, align 8, !tbaa !93
  br label %bb.t

bb.t:                                             ; preds = %thread-pre-split148, %.preheader72, %.preheader74, %.preheader79, %.preheader83, %.preheader88, %.preheader92
  %.pr71 = phi ptr [ %.pr71.pr, %thread-pre-split148 ], [ null, %.preheader72 ], [ null, %.preheader74 ], [ null, %.preheader79 ], [ null, %.preheader83 ], [ null, %.preheader88 ], [ null, %.preheader92 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %.not.i64 = icmp eq ptr %.pr71, null
  br i1 %.not.i64, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i: ; preds = %bb.t
  store ptr %.pr71, ptr %5, align 8, !tbaa !93
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %5) #29
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  unreachable

bb.v:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %5, align 8, !tbaa !93
  %.not.i2.i = icmp eq ptr %i.as, null
  br i1 %.not.i2.i, label %.body, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  br label %.body

_ZN4dmlc12OMPExceptionD2Ev.exit:                  ; preds = %.thread, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %.loopexit

.loopexit:                                        ; preds = %_ZZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj8HingeObj13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E9LaunchCPUIJS7_EEEvSB_DpPT_ENKUlmE_clEm.exit, %.preheader, %_ZN4dmlc12OMPExceptionD2Ev.exit
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph98, %.lr.ph100, %.lr.ph104, %.lr.ph102, %.lr.ph96, %.lr.ph
  %lpad.loopexit.split-lp181 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.v, %bb.w
  %eh.lpad-body = phi { ptr, i32 } [ %i.ar, %bb.v ], [ %i.ar, %bb.w ], [ %lpad.loopexit.split-lp181, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.at = load ptr, ptr %8, align 8, !tbaa !93
  %.not.i.i66 = icmp eq ptr %i.at, null
  br i1 %.not.i.i66, label %_ZN4dmlc12OMPExceptionD2Ev.exit68, label %bb.x

bb.x:                                             ; preds = %.body
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(48) %8) #18
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit68

_ZN4dmlc12OMPExceptionD2Ev.exit68:                ; preds = %.body, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.y

bb.y:                                             ; preds = %_ZN4dmlc12OMPExceptionD2Ev.exit68, %bb.i
  %.pn52.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZN4dmlc12OMPExceptionD2Ev.exit68 ], [ %.pn, %bb.i ]
  resume { ptr, i32 } %.pn52.pn

bb.z:                                             ; preds = %bb.h
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #32
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4dmlc12OMPException3RunIZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS2_3obj8HingeObj13PredTransformEPNS2_16HostDeviceVectorIfEEEUlmNS3_4SpanIfLm18446744073709551615EEEE_E9LaunchCPUIJSA_EEEvSE_DpPT_EUlmE_JmEEEvT_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef byval(%class.anon.96) align 8 %1, i64 noundef %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104, !nonnull !88, !align !89
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !100  ; 2 uses
  %i.d = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorIfE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55   ; 2 uses
  %i.f = invoke noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc8 unwind label %bb.d    ; 2 uses

.noexc8:                                          ; preds = %.noexc
  %i.g = icmp ne ptr %i.e, null
  %i.h = icmp eq i64 %i.f, 0
  %i.i = or i1 %i.g, %i.h
  br i1 %i.i, label %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj8HingeObj13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E9UnpackHDVIfEENS9_IT_Lm18446744073709551615EEEPNS6_ISE_EE.exit.i, label %bb.b, !prof !78

bb.b:                                             ; preds = %.noexc8
  tail call void @_ZSt9terminatev() #32
  unreachable

_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj8HingeObj13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E9UnpackHDVIfEENS9_IT_Lm18446744073709551615EEEPNS6_ISE_EE.exit.i: ; preds = %.noexc8
  %i.j = icmp ult i64 %2, %i.f
  br i1 %i.j, label %_ZZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj8HingeObj13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E9LaunchCPUIJS7_EEEvSB_DpPT_ENKUlmE_clEm.exit, label %bb.c, !prof !78

bb.c:                                             ; preds = %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj8HingeObj13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E9UnpackHDVIfEENS9_IT_Lm18446744073709551615EEEPNS6_ISE_EE.exit.i
  tail call void @_ZSt9terminatev() #32
  unreachable

_ZZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj8HingeObj13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E9LaunchCPUIJS7_EEEvSB_DpPT_ENKUlmE_clEm.exit: ; preds = %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj8HingeObj13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E9UnpackHDVIfEENS9_IT_Lm18446744073709551615EEEPNS6_ISE_EE.exit.i
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %2 ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !58
  %i.m = fcmp ogt float %i.l, 0.000000e+00
  %i.n = select i1 %i.m, float 1.000000e+00, float 0.000000e+00
  store float %i.n, ptr %i.k, align 4, !tbaa !58
  br label %bb.r

bb.d:                                             ; preds = %.noexc, %bb.a
  %i.o = landingpad { ptr, i32 }
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.p = extractvalue { ptr, i32 } %i.o, 0        ; 2 uses
  %i.q = extractvalue { ptr, i32 } %i.o, 1        ; 2 uses
  %i.r = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4dmlc5ErrorE) #18
  %i.s = icmp eq i32 %i.q, %i.r
  br i1 %i.s, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.t = tail call ptr @__cxa_begin_catch(ptr %i.p) #18 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.u) #18 ; 2 uses
  %.not.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.v) #29
          to label %.noexc9 unwind label %bb.p

.noexc9:                                          ; preds = %bb.f
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.e
  %i.w = load ptr, ptr %0, align 8, !tbaa !93
  %.not22 = icmp eq ptr %i.w, null
  br i1 %.not22, label %bb.g, label %bb.q

bb.g:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.x = load ptr, ptr %6, align 8, !tbaa !93
  store ptr null, ptr %6, align 8, !tbaa !93
  %i.y = load ptr, ptr %0, align 8, !tbaa !93     ; 2 uses
  store ptr %i.y, ptr %4, align 8, !tbaa !93
  store ptr %i.x, ptr %0, align 8, !tbaa !93
  %.not.i.i10 = icmp eq ptr %i.y, null
  br i1 %.not.i.i10, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.g
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %.pr = load ptr, ptr %6, align 8, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.q

bb.i:                                             ; preds = %bb.d
  %i.z = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #18
  %i.aa = icmp eq i32 %i.q, %i.z
  br i1 %i.aa, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.ab = tail call ptr @__cxa_begin_catch(ptr %i.p) #18 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #18 ; 2 uses
  %.not.i.i11 = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i11, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ad) #29
          to label %.noexc12 unwind label %bb.n

.noexc12:                                         ; preds = %bb.k
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13:        ; preds = %bb.j
  %i.ae = load ptr, ptr %0, align 8, !tbaa !93
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.af = load ptr, ptr %5, align 8, !tbaa !93
  store ptr null, ptr %5, align 8, !tbaa !93
  %i.ag = load ptr, ptr %0, align 8, !tbaa !93    ; 2 uses
  store ptr %i.ag, ptr %3, align 8, !tbaa !93
  store ptr %i.af, ptr %0, align 8, !tbaa !93
  %.not.i.i14 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i14, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.thread: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15: ; preds = %bb.l
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %.pr20 = load ptr, ptr %5, align 8, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %.not.i16 = icmp eq ptr %.pr20, null
  br i1 %.not.i16, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17, label %bb.m

bb.m:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17: ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit15, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.s unwind label %bb.t

bb.o:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit13
  %i.ai = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #18 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.r

bb.p:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.s unwind label %bb.t

bb.q:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.ak = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.u) #18 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.r

bb.r:                                             ; preds = %_ZZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj8HingeObj13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E9LaunchCPUIJS7_EEEvSB_DpPT_ENKUlmE_clEm.exit, %bb.q, %bb.o
  ret void

bb.s:                                             ; preds = %bb.p, %bb.n, %bb.i
  %.merged = phi { ptr, i32 } [ %i.ah, %bb.n ], [ %i.o, %bb.i ], [ %i.aj, %bb.p ]
  resume { ptr, i32 } %.merged

bb.t:                                             ; preds = %bb.p, %bb.n
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #32
  unreachable
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorIfE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_hinge.cc() #26 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::function", align 8     ; 6 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = tail call noundef ptr @_ZN4dmlc8RegistryIN7xgboost14ObjFunctionRegEE3GetEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.c, ptr noundef nonnull align 1 dereferenceable(12) @.str, i64 12, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 12, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i8 0, ptr %i.e, align 4, !tbaa !25
  %i.f = invoke noundef nonnull align 8 dereferenceable(152) ptr @_ZN4dmlc8RegistryIN7xgboost14ObjFunctionRegEE12__REGISTER__ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc.i10.i unwind label %bb.d ; 5 uses

.noexc.i10.i:                                     ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 42, ptr %i.a, align 8, !tbaa !34
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc11.i unwind label %bb.e ; 3 uses

.noexc11.i:                                       ; preds = %.noexc.i10.i
  store ptr %i.h, ptr %2, align 8, !tbaa !19
  %i.i = load i64, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  store i64 %i.i, ptr %i.g, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.h, ptr noundef nonnull align 1 dereferenceable(42) @.str.1, i64 42, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  store i8 0, ptr %i.k, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt8functionIFPN7xgboost11ObjFunctionEvEEC2ERKS4_.exit.i.i.i unwind label %_ZNSt14_Function_baseD2Ev.exit18.i

_ZNSt8functionIFPN7xgboost11ObjFunctionEvEEC2ERKS4_.exit.i.i.i: ; preds = %.noexc11.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #18
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 16, i1 false), !tbaa.struct !272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.q = load <2 x ptr>, ptr %i.o, align 8, !tbaa !37
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !37   ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFPN7xgboost11ObjFunctionEvENS0_3obj3$_0EE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation", ptr %i.o, align 8, !tbaa !37
  store <2 x ptr> %i.q, ptr %i.n, align 8, !tbaa !37
  store ptr @"_ZNSt17_Function_handlerIFPN7xgboost11ObjFunctionEvENS0_3obj3$_0EE9_M_invokeERKSt9_Any_data", ptr %i.p, align 8, !tbaa !37
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt8functionIFPN7xgboost11ObjFunctionEvEEC2ERKS4_.exit.i.i.i
  %i.s = invoke noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #32
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.b, %_ZNSt8functionIFPN7xgboost11ObjFunctionEvEEC2ERKS4_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18
  %i.v = load ptr, ptr %2, align 8, !tbaa !19     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.g
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.x = load i64, ptr %i.g, align 8, !tbaa !25
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.z = load ptr, ptr %1, align 8, !tbaa !19     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.c
  br i1 %i.aa, label %__cxx_global_var_init.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !25
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #31
  br label %__cxx_global_var_init.exit

bb.d:                                             ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %.noexc.i10.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i

_ZNSt14_Function_baseD2Ev.exit18.i:               ; preds = %.noexc11.i
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %2, align 8, !tbaa !19    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.g
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit18.i
  %i.ai = load i64, ptr %i.g, align 8, !tbaa !25
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit18.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i, %bb.e
  %.pn.pn.i = phi { ptr, i32 } [ %i.ae, %bb.e ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i ], [ %i.af, %_ZNSt14_Function_baseD2Ev.exit18.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i, %bb.d
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i ], [ %i.ad, %bb.d ]
  %i.ak = load ptr, ptr %1, align 8, !tbaa !19    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.c
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i: ; preds = %bb.f
  %i.am = load i64, ptr %i.c, align 8, !tbaa !25
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  resume { ptr, i32 } %.pn.pn.pn.i

__cxx_global_var_init.exit:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  store ptr %i.f, ptr @_ZN7xgboost3objL32__make_ObjFunctionReg_HingeObj__E, align 8, !tbaa !23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold noreturn }
attributes #22 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nounwind memory(none) }
attributes #26 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { noreturn }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { builtin nounwind }
attributes #32 = { noreturn nounwind }
attributes #33 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"_ZTSSt14_Rb_tree_color", !4, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !9, i64 0}
!11 = !{!"_ZTSSt18_Rb_tree_node_base", !8, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!12 = !{!"long", !4, i64 0}
!13 = !{!"_ZTSSt15_Rb_tree_header", !11, i64 0, !12, i64 32}
!14 = !{!13, !10, i64 8}
!15 = !{!"p1 omnipotent char", !9, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !15, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !16, i64 0, !12, i64 8, !4, i64 16}
!18 = !{!17, !12, i64 8}
!19 = !{!17, !15, i64 0}
!20 = !{!10, !10, i64 0}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"p1 _ZTSN7xgboost14ObjFunctionRegE", !9, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!16, !15, i64 0}
!25 = !{!4, !4, i64 0}
!26 = !{!"any p2 pointer", !9, i64 0}
!27 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7xgboost14ObjFunctionRegEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE", !9, i64 0}
!30 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14ObjFunctionRegEEE", !9, i64 0}
!31 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7xgboost14ObjFunctionRegEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_Auto_nodeE", !29, i64 0, !30, i64 8}
!32 = !{!31, !30, i64 8}
!33 = !{!13, !12, i64 32}
!34 = !{!12, !12, i64 0}
!35 = !{!"vtable pointer", !3, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!9, !9, i64 0}
!38 = !{!"_ZTSSt13__atomic_baseIiE", !5, i64 0}
!39 = !{!38, !5, i64 0}
!40 = !{!"_ZTSSt6atomicIiE", !38, i64 0}
!41 = !{!"_ZTSN7xgboost16IntrusivePtrCellE", !40, i64 0}
!42 = !{!"_ZTSN7xgboost5Value9ValueKindE", !4, i64 0}
!43 = !{!"_ZTSN7xgboost5ValueE", !41, i64 8, !42, i64 16}
!44 = !{!43, !42, i64 16}
!45 = !{!"p1 _ZTSN7xgboost5ValueE", !9, i64 0}
!46 = !{!"_ZTSN7xgboost12IntrusivePtrINS_5ValueEEE", !45, i64 0}
!47 = !{!46, !45, i64 0}
!48 = !{!"_ZTSN7xgboost12ConfigurableE"}
!49 = !{!"p1 _ZTSN7xgboost7ContextE", !9, i64 0}
!50 = !{!"_ZTSN7xgboost11ObjFunctionE", !48, i64 0, !49, i64 8}
!51 = !{!50, !49, i64 8}
!52 = !{!"p1 float", !9, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !52, i64 0, !52, i64 8, !52, i64 16}
!54 = !{!53, !52, i64 8}
!55 = !{!53, !52, i64 0}
!56 = !{!52, !52, i64 0}
!57 = !{!"float", !4, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!"_ZTSN7xgboost9DeviceOrd4TypeE", !4, i64 0}
!60 = !{!"short", !4, i64 0}
!61 = !{!"p1 _ZTSN7xgboost6detail20GradientPairInternalIfEE", !9, i64 0}
!62 = !{!61, !61, i64 0}
!63 = !{!"_ZTSZNK7xgboost3obj8HingeObj13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS_6common4SpanIfLm18446744073709551615EEEE_"}
!64 = !{!"_ZTSN7xgboost6common5Range8IteratorE", !12, i64 0, !12, i64 8}
!65 = !{!"_ZTSN7xgboost6common5RangeE", !64, i64 0, !64, i64 16}
!66 = !{!"_ZTSN7xgboost9DeviceOrdE", !59, i64 0, !60, i64 2}
!67 = !{!"_ZTSN7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj8HingeObj13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_EE", !63, i64 0, !65, i64 8, !5, i64 40, !66, i64 44}
!68 = !{!67, !5, i64 40}
!69 = !{!"_ZTSN7xgboost6linalg5OrderE", !4, i64 0}
!70 = !{!"_ZTSN7xgboost6common4SpanINS_6detail20GradientPairInternalIfEELm18446744073709551615EEE", !12, i64 0, !61, i64 8}
!71 = !{!"_ZTSN7xgboost6linalg10TensorViewINS_6detail20GradientPairInternalIfEELi2EEE", !4, i64 0, !4, i64 16, !70, i64 32, !61, i64 48, !12, i64 56, !66, i64 64}
!72 = !{!71, !61, i64 48}
!73 = !{!"_ZTSN7xgboost6common4SpanIKfLm18446744073709551615EEE", !12, i64 0, !52, i64 8}
!74 = !{!"_ZTSN7xgboost6linalg10TensorViewIKfLi2EEE", !4, i64 0, !4, i64 16, !73, i64 32, !52, i64 48, !12, i64 56, !66, i64 64}
!75 = !{!74, !52, i64 48}
!76 = !{!74, !12, i64 56}
!77 = !{!49, !49, i64 0}
!78 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!79 = !{!"p1 _ZTSN7xgboost6linalg10TensorViewIKfLi2EEE", !9, i64 0}
!80 = !{!79, !79, i64 0}
!81 = !{!"p2 _ZTSN7xgboost7ContextE", !26, i64 0}
!82 = !{!"p1 _ZTSNSt6locale5_ImplE", !9, i64 0}
!83 = !{!"_ZTSSt6locale", !82, i64 0}
!84 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !83, i64 56}
!85 = !{!84, !15, i64 40}
!86 = !{!84, !15, i64 32}
!87 = !{!5, !5, i64 0}
!88 = !{}
!89 = !{i64 8}
!90 = !{!"p1 long", !9, i64 0}
!91 = !{!90, !90, i64 0}
!92 = !{!"_ZTSNSt15__exception_ptr13exception_ptrE", !9, i64 0}
!93 = !{!92, !9, i64 0}
!94 = !{!"_ZTSN7xgboost6common7Range1dE", !12, i64 0, !12, i64 8}
!95 = !{!94, !12, i64 0}
!96 = !{!94, !12, i64 8}
!97 = !{!73, !12, i64 0}
!98 = !{!73, !52, i64 8}
!99 = !{!"p1 _ZTSN7xgboost16HostDeviceVectorIfEE", !9, i64 0}
!100 = !{!99, !99, i64 0}
!101 = !{!"p2 _ZTSN7xgboost16HostDeviceVectorIfEE", !26, i64 0}
!102 = !{!"p1 _ZTSN7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj8HingeObj13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_EE", !9, i64 0}
!103 = !{!"_ZTSZNK7xgboost6common9TransformILb0EE9EvaluatorIZNKS_3obj8HingeObj13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_E9LaunchCPUIJS7_EEEvSB_DpPT_EUlmE_", !9, i64 0, !101, i64 8, !102, i64 16}
!104 = !{!103, !101, i64 8}
!105 = distinct !{!105, !21}
!106 = !{!"p2 _ZTSN7xgboost14ObjFunctionRegE", !26, i64 0}
!107 = !{!"_ZTSNSt12_Vector_baseIPKN7xgboost14ObjFunctionRegESaIS3_EE17_Vector_impl_dataE", !106, i64 0, !106, i64 8, !106, i64 16}
!108 = !{!107, !106, i64 8}
!109 = !{!107, !106, i64 16}
!110 = !{!107, !106, i64 0}
!111 = !{!"_ZTSNSt12_Vector_baseIPN7xgboost14ObjFunctionRegESaIS2_EE17_Vector_impl_dataE", !106, i64 0, !106, i64 8, !106, i64 16}
!112 = !{!111, !106, i64 8}
!113 = !{!111, !106, i64 16}
!114 = !{!111, !106, i64 0}
!115 = distinct !{!115, !21}
!116 = !{!29, !29, i64 0}
!117 = !{!11, !10, i64 24}
!118 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14ObjFunctionRegEE", !17, i64 0, !22, i64 32}
!119 = !{!118, !22, i64 32}
!120 = distinct !{!120, !21}
!121 = !{!13, !10, i64 16}
!122 = distinct !{null}
!123 = distinct !{null, null, null, null}
!124 = !{!45, !45, i64 0}
!125 = distinct !{!125, i1 true, !"_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_"}
!126 = distinct !{!126, !125, !"_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_: argument 0"}
!127 = distinct !{!127, i1 true, !"_ZN7xgboost6linalg14MakeTensorViewIfJRKmRjEEEDaPKNS_7ContextEPKNS_16HostDeviceVectorIT_EEDpOT0_"}
!128 = distinct !{!128, !127, !"_ZN7xgboost6linalg14MakeTensorViewIfJRKmRjEEEDaPKNS_7ContextEPKNS_16HostDeviceVectorIT_EEDpOT0_: argument 0"}
!129 = distinct !{!129, i1 true, !"_ZN7xgboost6linalg14MakeTensorViewIKfLm18446744073709551615EJRKmRjEEEDaNS_9DeviceOrdENS_6common4SpanIT_XT0_EEEDpOT1_"}
!130 = distinct !{!130, !129, !"_ZN7xgboost6linalg14MakeTensorViewIKfLm18446744073709551615EJRKmRjEEEDaNS_9DeviceOrdENS_6common4SpanIT_XT0_EEEDpOT1_: argument 0"}
!131 = !{!126}
!132 = !{!128}
!133 = !{!130, !128}
!134 = !{!59, !59, i64 0}
!135 = !{!60, !60, i64 0}
!136 = !{i64 0, i64 16, !25, i64 16, i64 16, !25, i64 32, i64 8, !34, i64 40, i64 8, !56, i64 48, i64 8, !56, i64 56, i64 8, !34, i64 64, i64 2, !134, i64 66, i64 2, !135}
!137 = !{i64 0, i64 16, !25, i64 16, i64 16, !25, i64 32, i64 8, !34, i64 40, i64 8, !62, i64 48, i64 8, !62, i64 56, i64 8, !34, i64 64, i64 2, !134, i64 66, i64 2, !135}
!138 = distinct !{!138, i1 true, !"_ZN7xgboost6common9TransformILb0EE4InitIZNKS_3obj8HingeObj13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_EENS2_9EvaluatorIT_EESD_NS0_5RangeEiNS_9DeviceOrdE"}
!139 = distinct !{!139, !138, !"_ZN7xgboost6common9TransformILb0EE4InitIZNKS_3obj8HingeObj13PredTransformEPNS_16HostDeviceVectorIfEEEUlmNS0_4SpanIfLm18446744073709551615EEEE_EENS2_9EvaluatorIT_EESD_NS0_5RangeEiNS_9DeviceOrdE: argument 0"}
!140 = !{!139}
!141 = distinct !{!141, i1 true, !"_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_"}
!142 = distinct !{!142, !141, !"_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_: argument 0"}
!143 = distinct !{!143, i1 true, !"_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_"}
!144 = distinct !{!144, !143, !"_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_: argument 0"}
!145 = !{!142}
!146 = !{!144}
!147 = !{!"_ZTSNSt12_Vector_baseIN7xgboost6detail20GradientPairInternalIfEESaIS3_EE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!148 = !{!147, !61, i64 8}
!149 = !{!147, !61, i64 0}
!150 = !{!"p1 _ZTSN7xgboost20HostDeviceVectorImplINS_6detail20GradientPairInternalIfEEEE", !9, i64 0}
!151 = !{!"_ZTSN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIfEEEE", !150, i64 0}
!152 = !{!"_ZTSN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEE", !151, i64 0, !4, i64 8, !69, i64 24}
!153 = !{!152, !69, i64 24}
!154 = !{!71, !12, i64 56}
!155 = !{!"p1 _ZTSN7xgboost20HostDeviceVectorImplIfEE", !9, i64 0}
!156 = !{!"_ZTSN7xgboost16HostDeviceVectorIfEE", !155, i64 0}
!157 = !{!"_ZTSN7xgboost6linalg6TensorIfLi2EEE", !156, i64 0, !4, i64 8, !69, i64 24}
!158 = !{!157, !69, i64 24}
!159 = !{!81, !81, i64 0}
!160 = distinct !{!160, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!161 = distinct !{!161, !160, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!162 = distinct !{!162, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!163 = distinct !{!163, !162, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!164 = !{!161}
!165 = !{!163}
!166 = !{!163, !161}
!167 = !{!"_ZTSSt13_Ios_Openmode", !4, i64 0}
!168 = !{!"_ZTSNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE", !84, i64 0, !167, i64 64, !17, i64 72}
!169 = !{!168, !167, i64 64}
!170 = !{!"_ZTS2tm", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !12, i64 40, !15, i64 48}
!171 = !{!170, !5, i64 8}
!172 = !{!170, !5, i64 4}
!173 = !{!170, !5, i64 0}
!174 = !{!"_ZTSSt13_Ios_Fmtflags", !4, i64 0}
!175 = !{!"_ZTSSt12_Ios_Iostate", !4, i64 0}
!176 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !9, i64 0}
!177 = !{!"_ZTSNSt8ios_base6_WordsE", !9, i64 0, !12, i64 8}
!178 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !9, i64 0}
!179 = !{!"_ZTSSt8ios_base", !12, i64 8, !12, i64 16, !174, i64 24, !175, i64 28, !175, i64 32, !176, i64 40, !177, i64 48, !4, i64 64, !5, i64 192, !178, i64 200, !83, i64 208}
!180 = !{!179, !175, i64 32}
!181 = !{!"branch_weights", i32 1, i32 1023}
!182 = distinct !{!182, !21}
!183 = distinct !{!183, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!184 = distinct !{!184, !183, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!185 = distinct !{!185, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!186 = distinct !{!186, !185, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!187 = !{!15, !15, i64 0}
!188 = !{!184}
!189 = !{!186}
!190 = !{!186, !184}
!191 = distinct !{!191, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!192 = distinct !{!192, !191, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!193 = distinct !{!193, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!194 = distinct !{!194, !193, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!195 = !{!192}
!196 = !{!194}
!197 = !{!194, !192}
!198 = distinct !{!198, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!199 = distinct !{!199, !198, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!200 = distinct !{!200, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!201 = distinct !{!201, !200, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!202 = !{!199}
!203 = !{!201}
!204 = !{!201, !199}
!205 = !{!"_ZTSZN7xgboost6linalg17ElementWiseKernelIKfLi2EZNS_3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS0_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_TnDaLi2EEEvPKNS_7ContextENS0_10TensorViewIT_XT0_EEEOT1_EUlvE_", !79, i64 0, !81, i64 8, !9, i64 16}
!206 = !{!205, !79, i64 0}
!207 = !{!205, !81, i64 8}
!208 = !{!205, !9, i64 16}
!209 = distinct !{!209, !21}
!210 = distinct !{!210, i1 true, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii"}
!211 = distinct !{!211, !210, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii: argument 0"}
!212 = distinct !{!212, !21}
!213 = distinct !{!213, !21}
!214 = distinct !{!214, !21}
!215 = distinct !{!215, !21}
!216 = distinct !{!216, !21}
!217 = distinct !{!217, !21}
!218 = !{!"_ZTSZN7xgboost6common13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS_3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS2_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS2_10TensorViewIT_XT0_EEEiOT1_EUlOSN_E_EEvT0_iSQ_EUlSN_E_", !90, i64 0, !9, i64 8}
!219 = !{!218, !90, i64 0}
!220 = !{!218, !9, i64 8}
!221 = !{!211}
!222 = distinct !{!222, !21}
!223 = distinct !{!223, !21}
!224 = !{!"_ZTSZN7xgboost6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS_3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS0_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS0_10TensorViewIT_XT0_EEEiOT1_EUlOSL_E_", !90, i64 0, !9, i64 8}
!225 = !{!224, !90, i64 0}
!226 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!227 = distinct !{!227, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!228 = distinct !{!228, !227, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!229 = distinct !{!229, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!230 = distinct !{!230, !229, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!231 = !{!228}
!232 = !{!230}
!233 = !{!230, !228}
!234 = distinct !{!234, !21}
!235 = distinct !{!235, i1 true, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii"}
!236 = distinct !{!236, !235, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii: argument 0"}
!237 = distinct !{!237, !21}
!238 = distinct !{!238, !21}
!239 = distinct !{!239, !21}
!240 = distinct !{!240, !21}
!241 = distinct !{!241, !21}
!242 = distinct !{!242, !21}
!243 = !{!"_ZTSZN7xgboost6common13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS_3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS2_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS2_10TensorViewIT_XT0_EEEiOT1_EUlOSN_E0_EEvT0_iSQ_EUlSN_E_", !90, i64 0, !9, i64 8}
!244 = !{!243, !90, i64 0}
!245 = !{!243, !9, i64 8}
!246 = !{!236}
!247 = distinct !{!247, i1 true, !"_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE"}
!248 = distinct !{!248, !247, !"_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE: argument 0"}
!249 = distinct !{!249, i1 true, !"_ZN7xgboost6linalg6detail11UnravelImplImLi2EEEDaT_NS_6common4SpanIKmXT0_EEE"}
!250 = distinct !{!250, !249, !"_ZN7xgboost6linalg6detail11UnravelImplImLi2EEEDaT_NS_6common4SpanIKmXT0_EEE: argument 0"}
!251 = distinct !{!251, i1 true, !"_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE"}
!252 = distinct !{!252, !251, !"_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE: argument 0"}
!253 = distinct !{!253, !21}
!254 = !{!"_ZTSZN7xgboost6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS_3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS0_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS0_10TensorViewIT_XT0_EEEiOT1_EUlOSL_E0_", !9, i64 0, !79, i64 8}
!255 = !{!254, !9, i64 0}
!256 = !{!254, !79, i64 8}
!257 = !{!250, !248}
!258 = !{!252, !248}
!259 = !{!66, !59, i64 0}
!260 = !{!101, !101, i64 0}
!261 = !{!103, !102, i64 16}
!262 = distinct !{!262, !21}
!263 = distinct !{!263, i1 true, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii"}
!264 = distinct !{!264, !263, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii: argument 0"}
!265 = distinct !{!265, !21}
!266 = distinct !{!266, !21}
!267 = distinct !{!267, !21}
!268 = distinct !{!268, !21}
!269 = distinct !{!269, !21}
!270 = distinct !{!270, !21}
!271 = !{!264}
!272 = !{i64 0, i64 16, !25}
end_hunk_0
