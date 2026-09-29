Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/hinge?download=true
inline.NumInlined: 1043
inline.NumDeleted: 524
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN7xgboost6common11ParallelForImZNS0_13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS_3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS3_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS3_10TensorViewIT_XT0_EEEiOT1_EUlOSO_E_EEvT0_iSR_EUlSO_E_EEvSO_iNS0_5SchedEOSU_:bb.a
bb.ah:                                            ; preds = %.body
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(48) %9) #18
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit80

_ZN4dmlc12OMPExceptionD2Ev.exit80:                ; preds = %.body, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN4dmlc12OMPExceptionD2Ev.exit80, %bb.g
  %.pn64.pn = phi { ptr, i32 } [ %.pn64, %_ZN4dmlc12OMPExceptionD2Ev.exit80 ], [ %.pn, %bb.g ]
  resume { ptr, i32 } %.pn64.pn

bb.aj:                                            ; preds = %bb.f
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #32
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
  %i.a = load i64, ptr %1, align 8, !tbaa !95     ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !96   ; 5 uses
  %i.d = icmp ult i64 %i.a, %i.c
  br i1 %i.d, label %.preheader.lr.ph, label %._crit_edge12.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !238, !nonnull !88, !align !89
  %i.f = load i64, ptr %i.e, align 8, !tbaa !34   ; 15 uses
  %.not = icmp eq i64 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !88, !align !89 ; 13 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = getelementptr i8, ptr %i.h, i64 16       ; 3 uses
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
  %i.v = add i64 %i.f, -1                         ; 2 uses
  %i.w = shl i64 %i.f, 3
  %i.x = shl i64 %i.f, 2                          ; 2 uses
  %min.iters.check = icmp ult i64 %i.f, 10
  %mul.result = shl i64 %i.v, 3
  %mul.overflow = icmp ugt i64 %i.v, 2305843009213693951
  %n.vec = and i64 %i.f, 4611686018427387902      ; 3 uses
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br label %.preheader

.preheader.lr.ph.split.split.us:                  ; preds = %.preheader.lr.ph.split
  %i.y = load i64, ptr %i.k, align 8, !tbaa !34   ; 4 uses
  %i.z = load i64, ptr %i.l, align 8, !tbaa !34   ; 2 uses
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !75  ; 3 uses
  %i.ab = load i64, ptr %i.n, align 8, !tbaa !34  ; 4 uses
  %i.ac = load i64, ptr %i.o, align 8, !tbaa !34  ; 2 uses
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !75  ; 3 uses
  %i.ae = load i64, ptr %i.q, align 8, !tbaa !34  ; 4 uses
  %i.af = load i64, ptr %i.r, align 8, !tbaa !34  ; 2 uses
  %i.ag = load ptr, ptr %i.s, align 8, !tbaa !72  ; 3 uses
  %i.ah = add i64 %i.f, -1                        ; 2 uses
  %i.ai = mul i64 %i.ae, %i.a
  %i.aj = shl i64 %i.ai, 3
  %scevgep51 = getelementptr i8, ptr %i.ag, i64 %i.aj ; 3 uses
  %i.ak = shl i64 %i.c, 3
  %i.al = add i64 %i.ak, -8
  %i.am = mul i64 %i.ae, %i.al
  %i.an = shl i64 %i.f, 3
  %i.ao = getelementptr i8, ptr %i.ag, i64 %i.am
  %scevgep52 = getelementptr i8, ptr %i.ao, i64 %i.an ; 3 uses
  %i.ap = shl i64 %i.ae, 3                        ; 2 uses
  %scevgep53 = getelementptr i8, ptr %i.h, i64 20
  %i.aq = mul i64 %i.y, %i.a
  %i.ar = shl i64 %i.aq, 2
  %scevgep54 = getelementptr i8, ptr %i.aa, i64 %i.ar
  %i.as = shl i64 %i.c, 2
  %i.at = add i64 %i.as, -4                       ; 2 uses
  %i.au = mul i64 %i.y, %i.at
  %i.av = shl i64 %i.f, 2                         ; 2 uses
  %i.aw = getelementptr i8, ptr %i.aa, i64 %i.au
  %scevgep55 = getelementptr i8, ptr %i.aw, i64 %i.av
  %i.ax = mul i64 %i.ab, %i.a
  %i.ay = shl i64 %i.ax, 2
  %scevgep56 = getelementptr i8, ptr %i.ad, i64 %i.ay
  %i.az = mul i64 %i.ab, %i.at
  %i.ba = getelementptr i8, ptr %i.ad, i64 %i.az
  %scevgep57 = getelementptr i8, ptr %i.ba, i64 %i.av
  %min.iters.check74 = icmp ult i64 %i.f, 12
  %ident.check44 = icmp ne i64 %i.af, 1
  %ident.check45 = icmp ne i64 %i.z, 1
  %ident.check46 = icmp ne i64 %i.ac, 1
  %mul.result48 = shl i64 %i.ah, 3
  %mul.overflow49 = icmp ugt i64 %i.ah, 2305843009213693951
  %i.bb = or i1 %ident.check44, %ident.check45
  %i.bc = or i1 %i.bb, %ident.check46
  %invariant.op = or i1 %mul.overflow49, %i.bc
  %bound058 = icmp ult ptr %scevgep51, %scevgep53
  %bound159 = icmp ult ptr %i.j, %scevgep52
  %found.conflict60 = and i1 %bound058, %bound159
  %bound061 = icmp ult ptr %scevgep51, %scevgep55
  %bound162 = icmp ult ptr %scevgep54, %scevgep52
  %found.conflict63 = and i1 %bound061, %bound162
  %stride.check64 = icmp slt i64 %i.ap, 0
  %i.bd = or i1 %found.conflict63, %stride.check64
  %.mask = and i64 %i.y, 2305843009213693952
  %stride.check65 = icmp ne i64 %.mask, 0
  %i.be = or i1 %i.bd, %stride.check65
  %conflict.rdx66 = or i1 %found.conflict60, %i.be
  %bound067 = icmp ult ptr %scevgep51, %scevgep57
  %bound168 = icmp ult ptr %scevgep56, %scevgep52
  %found.conflict69 = and i1 %bound067, %bound168
  %stride.check70 = icmp slt i64 %i.ap, 0
  %i.bf = or i1 %found.conflict69, %stride.check70
  %.mask88 = and i64 %i.ab, 2305843009213693952
  %stride.check71 = icmp ne i64 %.mask88, 0
  %i.bg = or i1 %i.bf, %stride.check71
  %conflict.rdx72 = or i1 %conflict.rdx66, %i.bg
  %n.vec76 = and i64 %i.f, 4611686018427387902    ; 3 uses
  %cmp.n86 = icmp eq i64 %i.f, %n.vec76
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.split.us.us, %.preheader.lr.ph.split.split.us
  %.0810.us = phi i64 [ %i.a, %.preheader.lr.ph.split.split.us ], [ %i.dd, %._crit_edge.split.us.us ] ; 4 uses
  %i.bh = mul i64 %i.y, %.0810.us
  %i.bi = getelementptr [4 x i8], ptr %i.aa, i64 %i.bh ; 2 uses
  %i.bj = mul i64 %i.ab, %.0810.us
  %i.bk = getelementptr [4 x i8], ptr %i.ad, i64 %i.bj ; 2 uses
  %i.bl = mul i64 %i.ae, %.0810.us
  %i.bm = getelementptr [8 x i8], ptr %i.ag, i64 %i.bl ; 4 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 %mul.result48
  %i.bo = icmp ult ptr %i.bn, %i.bm
  %.reass = or i1 %i.bo, %invariant.op
  %or.cond = select i1 %min.iters.check74, i1 true, i1 %.reass
  %brmerge = select i1 %or.cond, i1 true, i1 %conflict.rdx72
  br i1 %brmerge, label %_ZZN7xgboost3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us.preheader, label %vector.ph75

vector.ph75:                                      ; preds = %.preheader.us
  %i.bp = load float, ptr %i.j, align 8, !tbaa !58, !alias.scope !239
  %broadcast.splatinsert77 = insertelement <2 x float> poison, float %i.bp, i64 0 ; 2 uses
  %broadcast.splat78 = shufflevector <2 x float> %broadcast.splatinsert77, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = fpext <2 x float> %broadcast.splat78 to <2 x double>
  br label %vector.body79

vector.body79:                                    ; preds = %vector.body79, %vector.ph75
  %index80 = phi i64 [ 0, %vector.ph75 ], [ %index.next84, %vector.body79 ] ; 4 uses
  %i.br = getelementptr [4 x i8], ptr %i.bi, i64 %index80
  %wide.load81 = load <2 x float>, ptr %i.br, align 4, !tbaa !58, !alias.scope !240
  %i.bs = getelementptr [4 x i8], ptr %i.bk, i64 %index80
  %wide.load82 = load <2 x float>, ptr %i.bs, align 4, !tbaa !58, !alias.scope !241
  %i.bt = fpext <2 x float> %wide.load82 to <2 x double>
  %i.bu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bt, <2 x double> splat (double 2.000000e+00), <2 x double> splat (double -1.000000e+00)) ; 2 uses
  %i.bv = fpext <2 x float> %wide.load81 to <2 x double>
  %i.bw = fmul <2 x double> %i.bu, %i.bv
  %i.bx = fcmp olt <2 x double> %i.bw, splat (double 1.000000e+00)
  %i.by = fneg <2 x double> %i.bu
  %i.bz = fmul <2 x double> %i.bq, %i.by
  %i.ca = fptrunc <2 x double> %i.bz to <2 x float>
  %i.cb = getelementptr [8 x i8], ptr %i.bm, i64 %index80
  %i.cc = shufflevector <2 x i1> %i.bx, <2 x i1> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cd = shufflevector <2 x float> %i.ca, <2 x float> %broadcast.splatinsert77, <4 x i32> <i32 0, i32 2, i32 1, i32 2>
  %i.ce = bitcast <4 x float> %i.cd to <4 x i32>
  %interleaved.vec83 = select <4 x i1> %i.cc, <4 x i32> %i.ce, <4 x i32> <i32 0, i32 8388608, i32 0, i32 8388608>
  store <4 x i32> %interleaved.vec83, ptr %i.cb, align 4, !tbaa !58, !alias.scope !242, !noalias !243
  %index.next84 = add nuw i64 %index80, 2         ; 2 uses
  %i.cf = icmp eq i64 %index.next84, %n.vec76
  br i1 %i.cf, label %middle.block85, label %vector.body79, !llvm.loop !227

middle.block85:                                   ; preds = %vector.body79
  br i1 %cmp.n86, label %._crit_edge.split.us.us, label %_ZZN7xgboost3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us.preheader

_ZZN7xgboost3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us.preheader: ; preds = %.preheader.us, %middle.block85
  %.09.us.us.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec76, %middle.block85 ]
  br label %_ZZN7xgboost3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us

_ZZN7xgboost3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us: ; preds = %_ZZN7xgboost3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us.preheader, %_ZZN7xgboost3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us
  %.09.us.us = phi i64 [ %i.dc, %_ZZN7xgboost3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us ], [ %.09.us.us.ph, %_ZZN7xgboost3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us.preheader ] ; 4 uses
  %i.cg = load float, ptr %i.j, align 8, !tbaa !58 ; 2 uses
  %i.ch = mul i64 %i.z, %.09.us.us
  %i.ci = getelementptr [4 x i8], ptr %i.bi, i64 %i.ch
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !58
  %i.ck = mul i64 %i.ac, %.09.us.us
  %i.cl = getelementptr [4 x i8], ptr %i.bk, i64 %i.ck
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !58
  %i.cn = fpext float %i.cm to double
  %i.co = tail call double @llvm.fmuladd.f64(double %i.cn, double 2.000000e+00, double -1.000000e+00) ; 2 uses
  %i.cp = fpext float %i.cj to double
  %i.cq = fmul double %i.co, %i.cp
  %i.cr = fcmp olt double %i.cq, 1.000000e+00     ; 2 uses
  %i.cs = fneg double %i.co
  %i.ct = fpext float %i.cg to double
  %i.cu = fmul double %i.ct, %i.cs
  %i.cv = fptrunc double %i.cu to float
  %i.cw = mul i64 %i.af, %.09.us.us
  %i.cx = getelementptr [8 x i8], ptr %i.bm, i64 %i.cw ; 2 uses
  %i.cy = bitcast float %i.cv to i32
  %i.cz = select i1 %i.cr, i32 %i.cy, i32 0
  %i.da = bitcast float %i.cg to i32
  %i.db = select i1 %i.cr, i32 %i.da, i32 8388608
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !58
  %.sroa_idx9.i.us.us = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  store i32 %i.db, ptr %.sroa_idx9.i.us.us, align 4, !tbaa !58
  %i.dc = add nuw i64 %.09.us.us, 1               ; 2 uses
  %exitcond18.not = icmp eq i64 %i.dc, %i.f
  br i1 %exitcond18.not, label %._crit_edge.split.us.us, label %_ZZN7xgboost3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us, !llvm.loop !228

._crit_edge.split.us.us:                          ; preds = %_ZZN7xgboost3obj8HingeObj11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us, %middle.block85
  %i.dd = add nuw i64 %.0810.us, 1                ; 2 uses
  %exitcond19.not = icmp eq i64 %i.dd, %i.c
  br i1 %exitcond19.not, label %._crit_edge12.split, label %.preheader.us, !llvm.loop !229

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge.split
  %indvar = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next, %._crit_edge.split ] ; 4 uses
  %.0810 = phi i64 [ %i.a, %.preheader.preheader ], [ %i.fb, %._crit_edge.split ] ; 6 uses
  %i.de = add i64 %i.a, %indvar
  %i.df = shl i64 %i.de, 3
  %2 = add i64 %i.a, %indvar
  %i.dg = shl i64 %2, 2
  %i.dh = add i64 %i.a, %indvar
  %3 = shl i64 %i.dh, 2                           ; 2 uses
  %exitcond16.not = icmp eq i64 %.0810, %umax
  br i1 %exitcond16.not, label %bb.b, label %.lr.ph.split.split, !prof !246

.lr.ph.split.split:                               ; preds = %.preheader
  %i.di = load ptr, ptr %i.i, align 8, !tbaa !98  ; 2 uses
  %i.dj = getelementptr [4 x i8], ptr %i.di, i64 %.0810 ; 3 uses
  %i.dk = load i64, ptr %i.k, align 8, !tbaa !34  ; 2 uses
  %i.dl = mul i64 %i.dk, %.0810
  %i.dm = load i64, ptr %i.l, align 8, !tbaa !34  ; 2 uses
  %i.dn = load ptr, ptr %i.m, align 8, !tbaa !75  ; 2 uses
  %i.do = getelementptr [4 x i8], ptr %i.dn, i64 %i.dl ; 3 uses
  %i.dp = load i64, ptr %i.n, align 8, !tbaa !34  ; 2 uses
  %i.dq = mul i64 %i.dp, %.0810
  %i.dr = load i64, ptr %i.o, align 8, !tbaa !34  ; 2 uses
  %i.ds = load ptr, ptr %i.p, align 8, !tbaa !75  ; 2 uses
  %i.dt = getelementptr [4 x i8], ptr %i.ds, i64 %i.dq ; 3 uses
  %i.du = load i64, ptr %i.q, align 8, !tbaa !34  ; 2 uses
  %i.dv = mul i64 %i.du, %.0810
  %i.dw = load i64, ptr %i.r, align 8, !tbaa !34  ; 2 uses
  %i.dx = load ptr, ptr %i.s, align 8, !tbaa !72  ; 2 uses
  %i.dy = getelementptr [8 x i8], ptr %i.dx, i64 %i.dv ; 7 uses
  br i1 %min.iters.check, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.split.split
  %ident.check = icmp ne i64 %i.dw, 1
  %ident.check27 = icmp ne i64 %i.dm, 1
  %ident.check28 = icmp ne i64 %i.dr, 1
  %i.dz = getelementptr i8, ptr %i.dy, i64 %mul.result
  %i.ea = icmp ult ptr %i.dz, %i.dy
  %i.eb = or i1 %i.ea, %mul.overflow
  %i.ec = or i1 %ident.check, %ident.check27
  %i.ed = or i1 %i.ec, %ident.check28
  %i.ee = or i1 %i.ed, %i.eb
  br i1 %i.ee, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep = getelementptr i8, ptr %i.dx, i64 %i.w
  %i.ef = mul i64 %i.du, %i.df
  %i.eg = getelementptr i8, ptr %scevgep, i64 %i.ef ; 3 uses
  %i.eh = getelementptr i8, ptr %i.di, i64 %i.dg
  %scevgep30 = getelementptr i8, ptr %i.eh, i64 4
  %scevgep31 = getelementptr i8, ptr %i.dn, i64 %i.x
  %i.ei = mul i64 %i.dk, %3
  %scevgep32 = getelementptr i8, ptr %scevgep31, i64 %i.ei
  %scevgep33 = getelementptr i8, ptr %i.ds, i64 %i.x
  %i.ej = mul i64 %i.dp, %3
  %scevgep34 = getelementptr i8, ptr %scevgep33, i64 %i.ej
  %bound0 = icmp ult ptr %i.dy, %scevgep30
  %bound1 = icmp ult ptr %i.dj, %i.eg
  %found.conflict = and i1 %bound0, %bound1
  %bound035 = icmp ult ptr %i.dy, %scevgep32
  %bound136 = icmp ult ptr %i.do, %i.eg
  %found.conflict37 = and i1 %bound035, %bound136
  %conflict.rdx = or i1 %found.conflict, %found.conflict37
  %bound038 = icmp ult ptr %i.dy, %scevgep34
  %bound139 = icmp ult ptr %i.dt, %i.eg
  %found.conflict40 = and i1 %bound038, %bound139
  %conflict.rdx41 = or i1 %conflict.rdx, %found.conflict40
  br i1 %conflict.rdx41, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ek = load float, ptr %i.dj, align 4, !tbaa !58, !alias.scope !247
  %broadcast.splatinsert = insertelement <2 x float> poison, float %i.ek, i64 0 ; 2 uses
  %broadcast.splat = shufflevector <2 x float> %broadcast.splatinsert, <2 x float> poison, <2 x i32> zeroinitializer
  %i.el = fpext <2 x float> %broadcast.splat to <2 x double>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.em = getelementptr [4 x i8], ptr %i.do, i64 %index
  %wide.load = load <2 x float>, ptr %i.em, align 4, !tbaa !58, !alias.scope !248
  %i.en = getelementptr [4 x i8], ptr %i.dt, i64 %index
  %wide.load42 = load <2 x float>, ptr %i.en, align 4, !tbaa !58, !alias.scope !249
  %i.eo = fpext <2 x float> %wide.load42 to <2 x double>
  %i.ep = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eo, <2 x double> splat (double 2.000000e+00), <2 x double> splat (double -1.000000e+00)) ; 2 uses
  %i.eq = fpext <2 x float> %wide.load to <2 x double>
  %i.er = fmul <2 x double> %i.ep, %i.eq
  %i.es = fcmp olt <2 x double> %i.er, splat (double 1.000000e+00)
  %i.et = fneg <2 x double> %i.ep
  %i.eu = fmul <2 x double> %i.el, %i.et
  %i.ev = fptrunc <2 x double> %i.eu to <2 x float>
  %i.ew = getelementptr [8 x i8], ptr %i.dy, i64 %index
  %i.ex = shufflevector <2 x i1> %i.es, <2 x i1> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ey = shufflevector <2 x float> %i.ev, <2 x float> %broadcast.splatinsert, <4 x i32> <i32 0, i32 2, i32 1, i32 2>
  %i.ez = bitcast <4 x float> %i.ey to <4 x i32>
  %interleaved.vec = select <4 x i1> %i.ex, <4 x i32> %i.ez, <4 x i32> <i32 0, i32 8388608, i32 0, i32 8388608>
  store <4 x i32> %interleaved.vec, ptr %i.ew, align 4, !tbaa !58, !alias.scope !250, !noalias !251
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.fa = icmp eq i64 %index.next, %n.vec
  br i1 %i.fa, label %middle.block, label %vector.body, !llvm.loop !235

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.split, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.preheader

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.preheader: ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.split.split, %middle.block
  %.09.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.split.split ], [ %n.vec, %middle.block ]
  br label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i

._crit_edge12.split:                              ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge.split:                                ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i, %middle.block
  %i.fb = add nuw i64 %.0810, 1                   ; 2 uses
  %exitcond17.not = icmp eq i64 %i.fb, %i.c
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond17.not, label %._crit_edge12.split, label %.preheader, !llvm.loop !229

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i: ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.preheader, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i
  %.09 = phi i64 [ %i.fy, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i ], [ %.09.ph, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.preheader ] ; 4 uses
  %i.fc = load float, ptr %i.dj, align 4, !tbaa !58 ; 2 uses
  %i.fd = mul i64 %i.dm, %.09
  %i.fe = getelementptr [4 x i8], ptr %i.do, i64 %i.fd
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !58
  %i.fg = mul i64 %i.dr, %.09
  %i.fh = getelementptr [4 x i8], ptr %i.dt, i64 %i.fg
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !58
  %i.fj = fpext float %i.fi to double
  %i.fk = tail call double @llvm.fmuladd.f64(double %i.fj, double 2.000000e+00, double -1.000000e+00) ; 2 uses
  %i.fl = fpext float %i.ff to double
  %i.fm = fmul double %i.fk, %i.fl
  %i.fn = fcmp olt double %i.fm, 1.000000e+00     ; 2 uses
  %i.fo = fneg double %i.fk
  %i.fp = fpext float %i.fc to double
  %i.fq = fmul double %i.fp, %i.fo
  %i.fr = fptrunc double %i.fq to float
  %i.fs = mul i64 %i.dw, %.09
  %i.ft = getelementptr [8 x i8], ptr %i.dy, i64 %i.fs ; 2 uses
  %i.fu = bitcast float %i.fr to i32
  %i.fv = select i1 %i.fn, i32 %i.fu, i32 0
  %i.fw = bitcast float %i.fc to i32
  %i.fx = select i1 %i.fn, i32 %i.fw, i32 8388608
  store i32 %i.fv, ptr %i.ft, align 4, !tbaa !58
  %.sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  store i32 %i.fx, ptr %.sroa_idx9.i, align 4, !tbaa !58
  %i.fy = add nuw i64 %.09, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.fy, %i.f
  br i1 %exitcond.not, label %._crit_edge.split, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i, !llvm.loop !236

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
end_hunk_0
