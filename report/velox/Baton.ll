inline.NumInlined: 193
inline.NumDeleted: 119
begin_hunk_0_@_ZN5folly6fibers5Baton10waitThreadEv:bb.a
  store i64 9223372036854775807, ptr %1, align 8
  %i.i = call noundef zeroext i1 @_ZN5folly6detail11MemoryIdler16futexWaitPreIdleISt6atomicIjENSt6chrono10time_pointINS5_3_V212steady_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEESC_EEbRNS0_11FutexResultERT_jRKT0_jT1_mf(ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef -3, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef -1, i64 %i.h, i64 noundef 1024, float noundef 5.000000e-01)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br i1 %i.i, label %_ZN5folly6detail11MemoryIdler9futexWaitISt6atomicIjENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEENS0_11FutexResultERT_jjRKT0_mf.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit
  %i.j = call noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef -3, ptr noundef null, ptr noundef null, i32 noundef -1) ; 0 uses
  br label %_ZN5folly6detail11MemoryIdler9futexWaitISt6atomicIjENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEENS0_11FutexResultERT_jjRKT0_mf.exit

_ZN5folly6detail11MemoryIdler9futexWaitISt6atomicIjENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEENS0_11FutexResultERT_jjRKT0_mf.exit: ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.k = load atomic i64, ptr %0 acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, -3
  br i1 %i.l, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit, label %.critedge, !llvm.loop !119

.critedge:                                        ; preds = %_ZN5folly6detail11MemoryIdler9futexWaitISt6atomicIjENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEENS0_11FutexResultERT_jjRKT0_mf.exit, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread, %bb.a
  %.0 = phi i64 [ %i.b, %bb.a ], [ %i.g, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread ], [ %i.k, %_ZN5folly6detail11MemoryIdler9futexWaitISt6atomicIjENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEENS0_11FutexResultERT_jjRKT0_mf.exit ]
  %i.m = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #15
  %i.n = sub nsw i64 %i.m, %i.c
  %i.o = sdiv i64 %i.n, 1000000
  call void @_ZN5folly13async_tracing20logBlockingOperationENSt6chrono8durationIlSt5ratioILl1ELl1000EEEE(i64 %i.o) #15
  switch i64 %.0, label %bb.k [
    i64 -1, label %bb.d
    i64 -2, label %bb.e
    i64 -3, label %bb.h
  ], !prof !120

bb.d:                                             ; preds = %.critedge
  ret void

bb.e:                                             ; preds = %.critedge
  %i.p = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull @.str.3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #16
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.h:                                             ; preds = %.critedge
  %i.r = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull @.str.4)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #16
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %.critedge
  %i.t = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull @.str.5)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #16
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j, %bb.g
  %.sink = phi ptr [ %i.t, %bb.m ], [ %i.r, %bb.j ], [ %i.p, %bb.g ]
  %.pn = phi { ptr, i32 } [ %i.u, %bb.m ], [ %i.s, %bb.j ], [ %i.q, %bb.g ]
  call void @__cxa_free_exception(ptr nonnull %.sink) #15
  resume { ptr, i32 } %.pn
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN5folly6fibers12FiberManager22getCurrentFiberManagerEv() local_unnamed_addr #2

declare void @_ZN5folly6fibers5Fiber7preemptENS1_5StateE(ptr noundef nonnull align 64 dereferenceable(928), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6fibers5Baton6WaiterD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6fibers5Baton11FiberWaiter4postEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105
  tail call void @_ZN5folly6fibers5Fiber6resumeEv(ptr noundef nonnull align 64 dereferenceable(928) %i.b)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6fibers5Baton11FiberWaiterD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #18
  ret void
}

declare void @_ZN5folly6fibers5Fiber6resumeEv(ptr noundef nonnull align 64 dereferenceable(928)) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define internal void @"_ZN5folly6detail8function5call_ISt17reference_wrapperIZNS_6fibers5Baton9waitFiberIZNS5_4waitEvE3$_0EEvRNS4_12FiberManagerEOT_EUlRNS4_5FiberEE_ELb1ELb0EvJSD_EEET2_DpT3_RNS1_4DataE"(ptr noundef nonnull align 64 dereferenceable(928) %0, ptr noundef nonnull readonly align 16 captures(none) dereferenceable(48) %1) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val.i = load ptr, ptr %1, align 16, !tbaa !121 ; 2 uses
  %i.a = load ptr, ptr %.val.i, align 8, !tbaa !108 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !123, !nonnull !124, !align !125 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %0, ptr %i.d, align 8, !tbaa !105
  %i.e = load atomic i64, ptr %i.a seq_cst, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !prof !11

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  br label %bb.f

._crit_edge.i.i.i.i.i:                            ; preds = %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit.i.i.i.i.i, %bb.a
  %.0.lcssa.i.i.i.i.i = phi i64 [ %i.e, %bb.a ], [ %i.n, %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit.i.i.i.i.i ]
  %or.cond.i.i.i.i.i = icmp ugt i64 %.0.lcssa.i.i.i.i.i, -3
  br i1 %or.cond.i.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.c), !call_target !14, !inline_history !126
  br label %"_ZNKSt17reference_wrapperIZN5folly6fibers5Baton9waitFiberIZNS2_4waitEvE3$_0EEvRNS1_12FiberManagerEOT_EUlRNS1_5FiberEE_EclIJSA_EEENSt15__invoke_resultIRSB_JDpT_EE4typeEDpOSG_.exit"

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull @.str)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #16
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.j) #15
  resume { ptr, i32 } %i.k

bb.f:                                             ; preds = %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.l = cmpxchg weak ptr %i.a, i64 0, i64 %i.g seq_cst seq_cst, align 8 ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  br i1 %i.m, label %"_ZNKSt17reference_wrapperIZN5folly6fibers5Baton9waitFiberIZNS2_4waitEvE3$_0EEvRNS1_12FiberManagerEOT_EUlRNS1_5FiberEE_EclIJSA_EEENSt15__invoke_resultIRSB_JDpT_EE4typeEDpOSG_.exit", label %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit.i.i.i.i.i

_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit.i.i.i.i.i: ; preds = %bb.f
  %i.n = extractvalue { i64, i1 } %i.l, 0         ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.f, label %._crit_edge.i.i.i.i.i, !prof !31, !llvm.loop !32

"_ZNKSt17reference_wrapperIZN5folly6fibers5Baton9waitFiberIZNS2_4waitEvE3$_0EEvRNS1_12FiberManagerEOT_EUlRNS1_5FiberEE_EclIJSA_EEENSt15__invoke_resultIRSB_JDpT_EE4typeEDpOSG_.exit": ; preds = %bb.f, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm16EEEmNS1_2OpEPNS1_4DataES6_(i32 noundef %0, ptr noundef %1, ptr noundef %2) #7 comdat align 2 {
bb.a:
  switch i32 %0, label %bb.c [
    i32 0, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @abort() #17
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.a
  ret i64 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define void @_ZN5folly6fibers5Baton4waitERNS1_14TimeoutHandlerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.folly::fibers::Baton::FiberWaiter", align 8 ; 5 uses
  %3 = alloca %class.anon.29, align 8             ; 6 uses
  %4 = alloca %class.anon, align 1                ; 3 uses
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %5 = alloca %"class.std::function", align 8     ; 9 uses
  %6 = alloca %class.anon.34, align 8             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store ptr %0, ptr %6, align 8, !tbaa !127
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.b = ptrtoint ptr %6 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.d, align 8
  store i64 %i.b, ptr %5, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 16, i1 false), !tbaa.struct !129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 16, i1 false), !tbaa.struct !129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !129
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.g = load <2 x ptr>, ptr %i.e, align 8, !tbaa !112
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !112  ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFvvESt17reference_wrapperIZN5folly6fibers5Baton4waitERNS4_14TimeoutHandlerEE3$_0EE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation", ptr %i.e, align 8, !tbaa !112
  store <2 x ptr> %i.g, ptr %i.c, align 8, !tbaa !112
  store ptr @"_ZNSt17_Function_handlerIFvvESt17reference_wrapperIZN5folly6fibers5Baton4waitERNS4_14TimeoutHandlerEE3$_0EE9_M_invokeERKSt9_Any_data", ptr %i.f, align 8, !tbaa !112
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %"_ZNSt8functionIFvvEEaSIZN5folly6fibers5Baton4waitERNS5_14TimeoutHandlerEE3$_0EERS1_St17reference_wrapperIT_E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %"_ZNSt8functionIFvvEEaSIZN5folly6fibers5Baton4waitERNS5_14TimeoutHandlerEE3$_0EERS1_St17reference_wrapperIT_E.exit" unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #17
  unreachable

"_ZNSt8functionIFvvEEaSIZN5folly6fibers5Baton4waitERNS5_14TimeoutHandlerEE3$_0EERS1_St17reference_wrapperIT_E.exit": ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5folly6fibers12FiberManager22getCurrentFiberManagerEv()
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.m, ptr %i.n, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5folly6fibers12FiberManager22getCurrentFiberManagerEv()
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !34   ; 5 uses
  %.not.i.i4 = icmp eq ptr %i.p, null
  br i1 %.not.i.i4, label %bb.e, label %bb.d

bb.d:                                             ; preds = %"_ZNSt8functionIFvvEEaSIZN5folly6fibers5Baton4waitERNS5_14TimeoutHandlerEE3$_0EERS1_St17reference_wrapperIT_E.exit"
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !37   ; 2 uses
  %.not6.i.i = icmp eq ptr %i.r, null
  br i1 %.not6.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %"_ZNSt8functionIFvvEEaSIZN5folly6fibers5Baton4waitERNS5_14TimeoutHandlerEE3$_0EERS1_St17reference_wrapperIT_E.exit"
  call void @_ZN5folly6fibers5Baton10waitThreadEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %_ZN5folly6fibers5Baton4waitEv.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly6fibers5Baton11FiberWaiterE, i64 16), ptr %2, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.s, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store ptr %0, ptr %3, align 8, !tbaa !108
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %4, ptr %i.t, align 8, !tbaa !112
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %2, ptr %i.u, align 8, !tbaa !113
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 224 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 280 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !114  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i, label %"_ZN5folly6fibers5Baton9waitFiberIZNS1_4waitEvE3$_0EEvRNS0_12FiberManagerEOT_.exit.i.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = call noundef i64 %i.x(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.v, ptr noundef null) #15, !inline_history !135 ; 0 uses
  %.pre.i.i = load ptr, ptr %i.q, align 8, !tbaa !37
  br label %"_ZN5folly6fibers5Baton9waitFiberIZNS1_4waitEvE3$_0EEvRNS0_12FiberManagerEOT_.exit.i.i"

"_ZN5folly6fibers5Baton9waitFiberIZNS1_4waitEvE3$_0EEvRNS0_12FiberManagerEOT_.exit.i.i": ; preds = %bb.g, %bb.f
  %i.z = phi ptr [ %i.r, %bb.f ], [ %.pre.i.i, %bb.g ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 272
  store ptr %3, ptr %i.v, align 16, !tbaa !112
  store ptr @"_ZN5folly6detail8function5call_ISt17reference_wrapperIZNS_6fibers5Baton9waitFiberIZNS5_4waitEvE3$_0EEvRNS4_12FiberManagerEOT_EUlRNS4_5FiberEE_ELb1ELb0EvJSD_EEET2_DpT3_RNS1_4DataE", ptr %i.aa, align 16, !tbaa !116
  store ptr @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm16EEEmNS1_2OpEPNS1_4DataES6_, ptr %i.w, align 8, !tbaa !114
  call void @_ZN5folly6fibers5Fiber7preemptENS1_5StateE(ptr noundef nonnull align 64 dereferenceable(928) %i.z, i8 noundef signext 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %_ZN5folly6fibers5Baton4waitEv.exit

_ZN5folly6fibers5Baton4waitEv.exit:               ; preds = %bb.e, %"_ZN5folly6fibers5Baton9waitFiberIZNS1_4waitEvE3$_0EEvRNS0_12FiberManagerEOT_.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !136
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8Callback13cancelTimeoutEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5folly6fibers5Baton4waitEv.exit
  call void @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8Callback17cancelTimeoutImplEv(ptr noundef nonnull align 8 dereferenceable(64) %1)
  br label %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8Callback13cancelTimeoutEv.exit

_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8Callback13cancelTimeoutEv.exit: ; preds = %_ZN5folly6fibers5Baton4waitEv.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvvESt17reference_wrapperIZN5folly6fibers5Baton4waitERNS4_14TimeoutHandlerEE3$_0EE9_M_invokeERKSt9_Any_data"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val.i.i.i = load ptr, ptr %0, align 8, !tbaa !137
  %i.a = load ptr, ptr %.val.i.i.i, align 8, !tbaa !127 ; 5 uses
  %i.b = load atomic i64, ptr %i.a seq_cst, align 8
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %"_ZSt10__invoke_rIvRSt17reference_wrapperIZN5folly6fibers5Baton4waitERNS3_14TimeoutHandlerEE3$_0EJEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr %i.a seq_cst, align 8
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit.i.i.i.i.i.i.i, %bb.b
  %.0.i.i.i.i.i.i.i = phi i64 [ %i.d, %bb.b ], [ %i.j, %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit.i.i.i.i.i.i.i ] ; 4 uses
  switch i64 %.0.i.i.i.i.i.i.i, label %bb.f [
    i64 -3, label %bb.d
    i64 -1, label %"_ZSt10__invoke_rIvRSt17reference_wrapperIZN5folly6fibers5Baton4waitERNS3_14TimeoutHandlerEE3$_0EJEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit"
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = cmpxchg ptr %i.a, i64 -3, i64 -1 seq_cst seq_cst, align 8
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %bb.e, label %"_ZSt10__invoke_rIvRSt17reference_wrapperIZN5folly6fibers5Baton4waitERNS3_14TimeoutHandlerEE3$_0EJEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit"

bb.e:                                             ; preds = %bb.d
  %i.g = tail call noundef i32 @_ZN5folly6detail13futexWakeImplEPKSt6atomicIjEij(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef 1, i32 noundef -1) ; 0 uses
  br label %"_ZSt10__invoke_rIvRSt17reference_wrapperIZN5folly6fibers5Baton4waitERNS3_14TimeoutHandlerEE3$_0EJEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit"

bb.f:                                             ; preds = %bb.c
  %i.h = cmpxchg weak ptr %i.a, i64 %.0.i.i.i.i.i.i.i, i64 -2 seq_cst seq_cst, align 8 ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 1
  br i1 %i.i, label %bb.g, label %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit.i.i.i.i.i.i.i

_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.j = extractvalue { i64, i1 } %i.h, 0
  br label %bb.c, !llvm.loop !139

bb.g:                                             ; preds = %bb.f
  switch i64 %.0.i.i.i.i.i.i.i, label %bb.h [
    i64 -2, label %"_ZSt10__invoke_rIvRSt17reference_wrapperIZN5folly6fibers5Baton4waitERNS3_14TimeoutHandlerEE3$_0EJEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit"
    i64 0, label %"_ZSt10__invoke_rIvRSt17reference_wrapperIZN5folly6fibers5Baton4waitERNS3_14TimeoutHandlerEE3$_0EJEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit"
  ]

bb.h:                                             ; preds = %bb.g
  %i.k = inttoptr i64 %.0.i.i.i.i.i.i.i to ptr    ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !12
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.k), !call_target !14, !inline_history !140
  br label %"_ZSt10__invoke_rIvRSt17reference_wrapperIZN5folly6fibers5Baton4waitERNS3_14TimeoutHandlerEE3$_0EJEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit"

"_ZSt10__invoke_rIvRSt17reference_wrapperIZN5folly6fibers5Baton4waitERNS3_14TimeoutHandlerEE3$_0EJEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit": ; preds = %bb.c, %bb.a, %bb.d, %bb.e, %bb.g, %bb.g, %bb.h
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvvESt17reference_wrapperIZN5folly6fibers5Baton4waitERNS4_14TimeoutHandlerEE3$_0EE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation"(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerISt17reference_wrapperIZN5folly6fibers5Baton4waitERNS4_14TimeoutHandlerEE3$_0EE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTISt17reference_wrapperIZN5folly6fibers5Baton4waitERNS2_14TimeoutHandlerEE3$_0E", ptr %0, align 8, !tbaa !141
  br label %"_ZNSt14_Function_base13_Base_managerISt17reference_wrapperIZN5folly6fibers5Baton4waitERNS4_14TimeoutHandlerEE3$_0EE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !142
  br label %"_ZNSt14_Function_base13_Base_managerISt17reference_wrapperIZN5folly6fibers5Baton4waitERNS4_14TimeoutHandlerEE3$_0EE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !112
  store i64 %.val.i, ptr %0, align 8, !tbaa !112
  br label %"_ZNSt14_Function_base13_Base_managerISt17reference_wrapperIZN5folly6fibers5Baton4waitERNS4_14TimeoutHandlerEE3$_0EE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerISt17reference_wrapperIZN5folly6fibers5Baton4waitERNS4_14TimeoutHandlerEE3$_0EE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define noundef zeroext i1 @_ZN5folly6fibers5Baton8try_waitEv(ptr noundef nonnull align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i64, ptr %0 seq_cst, align 8
  %i.b = icmp eq i64 %i.a, -1
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly6fibers5Baton10postHelperEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i64, ptr %0 seq_cst, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit, %bb.a
  %.0 = phi i64 [ %i.a, %bb.a ], [ %i.g, %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit ] ; 4 uses
  switch i64 %.0, label %bb.e [
    i64 -3, label %bb.c
    i64 -1, label %_ZN5folly6fibers5Baton10postThreadEv.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = cmpxchg ptr %0, i64 -3, i64 -1 seq_cst seq_cst, align 8
  %i.c = extractvalue { i64, i1 } %i.b, 1
  br i1 %i.c, label %bb.d, label %_ZN5folly6fibers5Baton10postThreadEv.exit

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noundef i32 @_ZN5folly6detail13futexWakeImplEPKSt6atomicIjEij(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 1, i32 noundef -1) ; 0 uses
  br label %_ZN5folly6fibers5Baton10postThreadEv.exit

bb.e:                                             ; preds = %bb.b
  %i.e = cmpxchg weak ptr %0, i64 %.0, i64 %1 seq_cst seq_cst, align 8 ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
end_hunk_0
begin_hunk_1_@_ZN5folly6fibers5Baton10postThreadEv:bb.a

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit: ; preds = %bb.a, %bb.b
  ret void
}

declare noundef i32 @_ZN5folly6detail13futexWakeImplEPKSt6atomicIjEij(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5folly6fibers5Baton5resetEv(ptr noundef nonnull align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #13 align 2 {
bb.a:
  store atomic i64 0, ptr %0 monotonic, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly6fibers5Baton14TimeoutHandler15scheduleTimeoutENSt6chrono8durationIlSt5ratioILl1ELl1000EEEE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp sgt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !131
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !148  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e), !call_target !149
  tail call void @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE15scheduleTimeoutEPNS6_8CallbackES5_(ptr noundef nonnull align 8 dereferenceable(16712) %i.i, ptr noundef nonnull %0, i64 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE15scheduleTimeoutEPNS6_8CallbackES5_(ptr noundef nonnull align 8 dereferenceable(16712), ptr noundef, i64) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { cold noreturn }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { noreturn nounwind }
attributes #18 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"branch_weights", i32 127, i32 1}
!12 = !{!13, !13, i64 0}
!13 = !{!"vtable pointer", !10, i64 0}
!14 = !DISubprogram(name: "post", linkageName: "_ZN5folly6fibers5Baton6Waiter4postEv", scope: !16, file: !15, line: 44, type: !28, scopeLine: 44, containingType: !16, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!15 = !DIFile(filename: "_deps/folly-src/folly/fibers/Baton.h", directory: "/opt-bench/work/velox/velox/build", checksumkind: CSK_MD5, checksum: "541ce281cb5565b60f046462fbde45aa")
!16 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Waiter", scope: !17, file: !15, line: 42, size: 64, flags: DIFlagPublic | DIFlagTypePassByReference | DIFlagNonTrivial, elements: !20, vtableHolder: !16, identifier: "_ZTSN5folly6fibers5Baton6WaiterE")
!17 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Baton", scope: !18, file: !15, line: 38, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly6fibers5BatonE")
!18 = !DINamespace(name: "fibers", scope: !19)
!19 = !DINamespace(name: "folly", scope: null)
!20 = !{!21, !14, !27}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$Waiter", scope: !15, file: !15, baseType: !22, size: 64, flags: DIFlagArtificial)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !24, size: 64)
!24 = !DISubroutineType(types: !25)
!25 = !{!26}
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !DISubprogram(name: "~Waiter", linkageName: "_ZN5folly6fibers5Baton6WaiterD4Ev", scope: !16, file: !15, line: 46, type: !28, scopeLine: 46, containingType: !16, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !30}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!31 = !{!"branch_weights", i32 255873, i32 127}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!35, !35, i64 0}
!35 = !{!"p1 _ZTSN5folly6fibers12FiberManagerE", !36, i64 0}
!36 = !{!"any pointer", !9, i64 0}
!37 = !{!38, !40, i64 8}
!38 = !{!"_ZTSN5folly6fibers12FiberManagerE", !39, i64 0, !40, i64 8, !40, i64 16, !41, i64 24, !48, i64 40, !41, i64 48, !49, i64 64, !53, i64 80, !53, i64 88, !53, i64 96, !55, i64 104, !55, i64 112, !56, i64 120, !63, i64 128, !64, i64 136, !73, i64 160, !53, i64 208, !74, i64 224, !75, i64 288, !76, i64 352, !77, i64 360, !81, i64 384, !82, i64 448, !85, i64 456, !55, i64 464, !55, i64 472, !89, i64 480, !90, i64 488, !63, i64 560, !103, i64 568, !63, i64 576}
!39 = !{!"_ZTSN5folly8ExecutorE"}
!40 = !{!"p1 _ZTSN5folly6fibers5FiberE", !36, i64 0}
!41 = !{!"_ZTSN5boost9intrusive4listIN5folly6fibers5FiberEJNS0_11member_hookIS4_NS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE2EEEEEEXadL_ZNS4_9listHook_EEEEENS0_18constant_time_sizeILb0EEEEEE", !42, i64 0}
!42 = !{!"_ZTSN5boost9intrusive9list_implINS0_8mhtraitsIN5folly6fibers5FiberENS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE2EEEEEEXadL_ZNS5_9listHook_EEEEEmLb0EvEE", !43, i64 0}
!43 = !{!"_ZTSN5boost9intrusive9list_implINS0_8mhtraitsIN5folly6fibers5FiberENS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE2EEEEEEXadL_ZNS5_9listHook_EEEEEmLb0EvE6data_tE", !44, i64 0}
!44 = !{!"_ZTSN5boost9intrusive9list_implINS0_8mhtraitsIN5folly6fibers5FiberENS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE2EEEEEEXadL_ZNS5_9listHook_EEEEEmLb0EvE14root_plus_sizeE", !45, i64 0}
!45 = !{!"_ZTSN5boost9intrusive6detail21default_header_holderINS0_16list_node_traitsIPvEEEE", !46, i64 0}
!46 = !{!"_ZTSN5boost9intrusive9list_nodeIPvEE", !47, i64 0, !47, i64 8}
!47 = !{!"p1 _ZTSN5boost9intrusive9list_nodeIPvEE", !36, i64 0}
!48 = !{!"p1 _ZTSN5boost9intrusive4listIN5folly6fibers5FiberEJNS0_11member_hookIS4_NS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE2EEEEEEXadL_ZNS4_9listHook_EEEEENS0_18constant_time_sizeILb0EEEEEE", !36, i64 0}
!49 = !{!"_ZTSN5boost9intrusive4listIN5folly6fibers5FiberEJNS0_11member_hookIS4_NS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE2EEEEEEXadL_ZNS4_15globalListHook_EEEEENS0_18constant_time_sizeILb0EEEEEE", !50, i64 0}
!50 = !{!"_ZTSN5boost9intrusive9list_implINS0_8mhtraitsIN5folly6fibers5FiberENS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE2EEEEEEXadL_ZNS5_15globalListHook_EEEEEmLb0EvEE", !51, i64 0}
!51 = !{!"_ZTSN5boost9intrusive9list_implINS0_8mhtraitsIN5folly6fibers5FiberENS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE2EEEEEEXadL_ZNS5_15globalListHook_EEEEEmLb0EvE6data_tE", !52, i64 0}
!52 = !{!"_ZTSN5boost9intrusive9list_implINS0_8mhtraitsIN5folly6fibers5FiberENS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE2EEEEEEXadL_ZNS5_15globalListHook_EEEEEmLb0EvE14root_plus_sizeE", !45, i64 0}
!53 = !{!"_ZTSSt6atomicImE", !54, i64 0}
!54 = !{!"_ZTSSt13__atomic_baseImE", !55, i64 0}
!55 = !{!"long", !9, i64 0}
!56 = !{!"_ZTSSt10unique_ptrIN5folly6fibers14LoopControllerESt14default_deleteIS2_EE", !57, i64 0}
!57 = !{!"_ZTSSt15__uniq_ptr_dataIN5folly6fibers14LoopControllerESt14default_deleteIS2_ELb1ELb1EE", !58, i64 0}
!58 = !{!"_ZTSSt15__uniq_ptr_implIN5folly6fibers14LoopControllerESt14default_deleteIS2_EE", !59, i64 0}
!59 = !{!"_ZTSSt5tupleIJPN5folly6fibers14LoopControllerESt14default_deleteIS2_EEE", !60, i64 0}
!60 = !{!"_ZTSSt11_Tuple_implILm0EJPN5folly6fibers14LoopControllerESt14default_deleteIS2_EEE", !61, i64 0}
!61 = !{!"_ZTSSt10_Head_baseILm0EPN5folly6fibers14LoopControllerELb0EE", !62, i64 0}
!62 = !{!"p1 _ZTSN5folly6fibers14LoopControllerE", !36, i64 0}
!63 = !{!"bool", !9, i64 0}
!64 = !{!"_ZTSN5folly6fibers18GuardPageAllocatorE", !65, i64 0, !72, i64 8, !55, i64 16}
!65 = !{!"_ZTSSt10unique_ptrIN5folly6fibers15StackCacheEntryESt14default_deleteIS2_EE", !66, i64 0}
!66 = !{!"_ZTSSt15__uniq_ptr_dataIN5folly6fibers15StackCacheEntryESt14default_deleteIS2_ELb1ELb1EE", !67, i64 0}
!67 = !{!"_ZTSSt15__uniq_ptr_implIN5folly6fibers15StackCacheEntryESt14default_deleteIS2_EE", !68, i64 0}
!68 = !{!"_ZTSSt5tupleIJPN5folly6fibers15StackCacheEntryESt14default_deleteIS2_EEE", !69, i64 0}
!69 = !{!"_ZTSSt11_Tuple_implILm0EJPN5folly6fibers15StackCacheEntryESt14default_deleteIS2_EEE", !70, i64 0}
!70 = !{!"_ZTSSt10_Head_baseILm0EPN5folly6fibers15StackCacheEntryELb0EE", !71, i64 0}
!71 = !{!"p1 _ZTSN5folly6fibers15StackCacheEntryE", !36, i64 0}
!72 = !{!"_ZTSSaIhE"}
!73 = !{!"_ZTSN5folly6fibers12FiberManager7OptionsE", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !8, i64 40}
!74 = !{!"_ZTSN5folly8FunctionIFvRNS_6fibers5FiberEEEE", !9, i64 0, !36, i64 48, !36, i64 56}
!75 = !{!"_ZTSN5folly8FunctionIFvvEEE", !9, i64 0, !36, i64 48, !36, i64 56}
!76 = !{!"p1 _ZTSN5folly6fibers20InlineFunctionRunnerE", !36, i64 0}
!77 = !{!"_ZTSN5boost9intrusive4listIN5folly17ExecutionObserverEJNS0_18constant_time_sizeILb0EEEEEE", !78, i64 0}
!78 = !{!"_ZTSN5boost9intrusive9list_implINS0_8bhtraitsIN5folly17ExecutionObserverENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEE", !79, i64 0}
!79 = !{!"_ZTSN5boost9intrusive9list_implINS0_8bhtraitsIN5folly17ExecutionObserverENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE6data_tE", !80, i64 0}
!80 = !{!"_ZTSN5boost9intrusive9list_implINS0_8bhtraitsIN5folly17ExecutionObserverENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE14root_plus_sizeE", !45, i64 0}
!81 = !{!"_ZTSN5folly8FunctionIFvRKNSt15__exception_ptr13exception_ptrENS_5RangeIPKcEEEEE", !9, i64 0, !36, i64 48, !36, i64 56}
!82 = !{!"_ZTSN5folly25AtomicIntrusiveLinkedListINS_6fibers5FiberEXadL_ZNS2_16nextRemoteReady_EEEEE", !83, i64 0}
!83 = !{!"_ZTSSt6atomicIPN5folly6fibers5FiberEE", !84, i64 0}
!84 = !{!"_ZTSSt13__atomic_baseIPN5folly6fibers5FiberEE", !40, i64 0}
!85 = !{!"_ZTSN5folly25AtomicIntrusiveLinkedListINS_6fibers12FiberManager10RemoteTaskEXadL_ZNS3_14nextRemoteTaskEEEEE", !86, i64 0}
!86 = !{!"_ZTSSt6atomicIPN5folly6fibers12FiberManager10RemoteTaskEE", !87, i64 0}
!87 = !{!"_ZTSSt13__atomic_baseIPN5folly6fibers12FiberManager10RemoteTaskEE", !88, i64 0}
!88 = !{!"p1 _ZTSN5folly6fibers12FiberManager10RemoteTaskE", !36, i64 0}
!89 = !{!"_ZTSNSt15__exception_ptr13exception_ptrE", !36, i64 0}
!90 = !{!"_ZTSN5folly6fibers12FiberManager17FibersPoolResizerE", !91, i64 0, !35, i64 64}
!91 = !{!"_ZTSN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackE", !92, i64 8, !95, i64 24, !96, i64 32, !8, i64 40, !98, i64 48}
!92 = !{!"_ZTSN5boost9intrusive14list_base_hookIJNS0_9link_modeILNS0_14link_mode_typeE2EEEEEE", !93, i64 0}
!93 = !{!"_ZTSN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EEE", !94, i64 0}
!94 = !{!"_ZTSN5boost9intrusive11node_holderINS0_9list_nodeIPvEENS0_7dft_tagELj1EEE", !46, i64 0}
!95 = !{!"p1 _ZTSN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEE", !36, i64 0}
!96 = !{!"_ZTSNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEE", !97, i64 0}
!97 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEE", !55, i64 0}
!98 = !{!"_ZTSSt10shared_ptrIN5folly14RequestContextEE", !99, i64 0}
!99 = !{!"_ZTSSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EE", !100, i64 0, !101, i64 8}
!100 = !{!"p1 _ZTSN5folly14RequestContextE", !36, i64 0}
!101 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !102, i64 0}
!102 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !36, i64 0}
!103 = !{!"_ZTSSt10type_index", !104, i64 0}
!104 = !{!"p1 _ZTSSt9type_info", !36, i64 0}
!105 = !{!106, !40, i64 8}
!106 = !{!"_ZTSN5folly6fibers5Baton11FiberWaiterE", !107, i64 0, !40, i64 8}
!107 = !{!"_ZTSN5folly6fibers5Baton6WaiterE"}
!108 = !{!109, !110, i64 0}
!109 = !{!"_ZTSZN5folly6fibers5Baton9waitFiberIZNS1_4waitEvE3$_0EEvRNS0_12FiberManagerEOT_EUlRNS0_5FiberEE_", !110, i64 0, !36, i64 8, !111, i64 16}
!110 = !{!"p1 _ZTSN5folly6fibers5BatonE", !36, i64 0}
!111 = !{!"p1 _ZTSN5folly6fibers5Baton11FiberWaiterE", !36, i64 0}
!112 = !{!36, !36, i64 0}
!113 = !{!111, !111, i64 0}
!114 = !{!74, !36, i64 56}
!115 = distinct !{null, null, null, null, null}
!116 = !{!74, !36, i64 48}
!117 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!118 = !{!"branch_weights", i32 2146410443, i32 1073205}
!119 = distinct !{!119, !33}
!120 = !{!"branch_weights", i32 1, i32 8000, i32 2, i32 1}
!121 = !{!122, !36, i64 0}
!122 = !{!"_ZTSSt17reference_wrapperIZN5folly6fibers5Baton9waitFiberIZNS2_4waitEvE3$_0EEvRNS1_12FiberManagerEOT_EUlRNS1_5FiberEE_E", !36, i64 0}
!123 = !{!109, !111, i64 16}
!124 = !{}
!125 = !{i64 8}
!126 = distinct !{null, null, null, null, ptr @_ZN5folly6fibers5Baton9setWaiterERNS1_6WaiterE}
!127 = !{!128, !110, i64 0}
!128 = !{!"_ZTSZN5folly6fibers5Baton4waitERNS1_14TimeoutHandlerEE3$_0", !110, i64 0}
!129 = !{i64 0, i64 16, !130}
!130 = !{!9, !9, i64 0}
!131 = !{!132, !35, i64 96}
!132 = !{!"_ZTSN5folly6fibers5Baton14TimeoutHandlerE", !91, i64 0, !133, i64 64, !35, i64 96}
!133 = !{!"_ZTSSt8functionIFvvEE", !134, i64 0, !36, i64 24}
!134 = !{!"_ZTSSt14_Function_base", !9, i64 0, !36, i64 16}
!135 = distinct !{ptr @_ZN5folly6fibers5Baton4waitEv, null, null, null, null, null}
!136 = !{!91, !95, i64 24}
!137 = !{!138, !36, i64 0}
!138 = !{!"_ZTSSt17reference_wrapperIZN5folly6fibers5Baton4waitERNS2_14TimeoutHandlerEE3$_0E", !36, i64 0}
!139 = distinct !{!139, !33}
!140 = distinct !{null, null, null, null, null, null, ptr @_ZN5folly6fibers5Baton10postHelperEl}
!141 = !{!104, !104, i64 0}
!142 = !{!143, !143, i64 0}
!143 = !{!"p1 _ZTSSt17reference_wrapperIZN5folly6fibers5Baton4waitERNS2_14TimeoutHandlerEE3$_0E", !36, i64 0}
!144 = !{!55, !55, i64 0}
!145 = !{!146, !146, i64 0}
!146 = !{!"_ZTSN5folly6detail11FutexResultE", !9, i64 0}
!147 = !{ptr @_ZN5folly6fibers5Baton10postHelperEl}
!148 = !{!62, !62, i64 0}
!149 = !DISubprogram(name: "timer", linkageName: "_ZN5folly6fibers14LoopController5timerEv", scope: !151, file: !150, line: 70, type: !152, scopeLine: 70, containingType: !151, virtualIndex: 7, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!150 = !DIFile(filename: "_deps/folly-src/folly/fibers/LoopController.h", directory: "/opt-bench/work/velox/velox/build", checksumkind: CSK_MD5, checksum: "a4c791589de28881cc6026e80a7c0da2")
!151 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "LoopController", scope: !18, file: !150, line: 30, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly6fibers14LoopControllerE")
!152 = !DISubroutineType(types: !153)
!153 = !{!154, !158}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "HHWheelTimer", scope: !19, file: !156, line: 403, baseType: !157)
!156 = !DIFile(filename: "_deps/folly-src/folly/io/async/HHWheelTimer.h", directory: "/opt-bench/work/velox/velox/build", checksumkind: CSK_MD5, checksum: "575c59af4a1d229c62e73ce205b614b3")
!157 = !DICompositeType(tag: DW_TAG_class_type, name: "HHWheelTimerBase<std::chrono::duration<long, std::ratio<1L, 1000L> > >", scope: !19, file: !156, line: 404, size: 133696, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
end_hunk_1
