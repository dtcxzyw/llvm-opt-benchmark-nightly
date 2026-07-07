inline.NumInlined: 3166
inline.NumDeleted: 260
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_Z15CheckAvgThreadsRK7Results:._crit_edge.i.i
; Function Attrs: mustprogress uwtable
define hidden void @_Z26BM_Counters_AvgThreadsRateRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 personality ptr @__gxx_personality_v0 {
_ZN9benchmark5State13StateIteratorC2EPS0_.exit:
  %i.a = alloca double, align 8                   ; 4 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !25
  %.not = icmp ne i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 16             ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not4951 = icmp eq i64 %i.e, 0
  %.not.i.not49 = select i1 %.not, i1 true, i1 %.not.i.not4951
  br i1 %.not.i.not49, label %._crit_edge.i.i, label %.lr.ph, !prof !47

.lr.ph:                                           ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.a:                                             ; preds = %_ZNK9benchmark5State10iterationsEv.exit
  %i.h = add nsw i64 %.sroa.041.050, -1           ; 2 uses
  %.not.i.not = icmp eq i64 %i.h, 0
  br i1 %.not.i.not, label %._crit_edge.i.i, label %bb.b, !prof !103

._crit_edge.i.i:                                  ; preds = %bb.a, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.j, ptr %1, align 8, !tbaa !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.j, ptr noundef nonnull align 1 dereferenceable(3) @.str.5, i64 3, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 3, ptr %i.k, align 8, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 0, ptr %i.l, align 1, !tbaa !18
  %i.m = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.e unwind label %bb.g       ; 3 uses

bb.b:                                             ; preds = %.lr.ph, %bb.a
  %.sroa.041.050 = phi i64 [ %i.e, %.lr.ph ], [ %i.h, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.n = load i8, ptr %i.f, align 8, !tbaa !56, !range !57, !noundef !58
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %_ZNK9benchmark5State10iterationsEv.exit, !prof !59

bb.c:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.d, align 16, !tbaa !60
  %i.q = load i64, ptr %0, align 64, !tbaa !61
  %i.r = sub i64 %i.p, %i.q
  %i.s = load i64, ptr %i.g, align 8, !tbaa !62
  %i.t = add nsw i64 %i.r, %i.s
  %i.u = sitofp i64 %i.t to double                ; 2 uses
  %i.v = fmul nnan double %i.u, %i.u
  br label %_ZNK9benchmark5State10iterationsEv.exit

_ZNK9benchmark5State10iterationsEv.exit:          ; preds = %bb.b, %bb.c
  %i.w = phi double [ %i.v, %bb.c ], [ 0.000000e+00, %bb.b ] ; 2 uses
  store double %i.w, ptr %i.a, align 8, !tbaa !50
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(double) align 8 dereferenceable(8) %i.a, double %i.w) #23, !srcloc !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.x = icmp sgt i64 %.sroa.041.050, 0
  br i1 %i.x, label %bb.a, label %bb.d

bb.d:                                             ; preds = %_ZNK9benchmark5State10iterationsEv.exit
  call void @__assert_fail(ptr noundef nonnull @.str.198, ptr noundef nonnull @.str.199, i32 noundef 1142, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv) #25
  unreachable

bb.e:                                             ; preds = %._crit_edge.i.i
  store double 1.000000e+00, ptr %i.m, align 8, !tbaa !50
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 3, ptr %.sroa.538.0..sroa_idx, align 8, !tbaa !52
  %.sroa.639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 1000, ptr %.sroa.639.0..sroa_idx, align 4, !tbaa !54
  %i.y = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.j
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.aa = load i64, ptr %i.j, align 8, !tbaa !18
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.ac, ptr %2, align 8, !tbaa !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ac, ptr noundef nonnull align 1 dereferenceable(3) @.str.6, i64 3, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 3, ptr %i.ad, align 8, !tbaa !49
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 19
  store i8 0, ptr %i.ae, align 1, !tbaa !18
  %i.af = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h       ; 3 uses

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store double 2.000000e+00, ptr %i.af, align 8, !tbaa !50
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i32 3, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !52
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 1000, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !54
  %i.ag = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.ac
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.f
  %i.ai = load i64, ptr %i.ac, align 8, !tbaa !18
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %1, align 8, !tbaa !20    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.j
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.g
  %i.an = load i64, ptr %i.j, align 8, !tbaa !18
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ac
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.h
  %i.as = load i64, ptr %i.ac, align 8, !tbaa !18
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %.pn12.pn = phi { ptr, i32 } [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ]
  resume { ptr, i32 } %.pn12.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z19CheckAvgThreadsRateRK7Results(ptr noundef nonnull align 8 dereferenceable(80) %0) #3 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.benchmark::internal::CheckHandler", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.benchmark::internal::CheckHandler", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.a, ptr noundef nonnull align 1 dereferenceable(3) @.str.5, i64 3, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 3, ptr %i.b, align 8, !tbaa !49
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 0, ptr %i.c, align 1, !tbaa !18
  %i.d = invoke noundef double @_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNK7Results12GetCounterAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.bb

_ZNK7Results12GetCounterAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i
  %i.e = invoke noundef double @_ZNK7Results13NumIterationsEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
          to label %.noexc111 unwind label %bb.bb

.noexc111:                                        ; preds = %_ZNK7Results12GetCounterAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.f = invoke noundef double @_ZNK7Results7GetTimeENS_13BenchmarkTimeE(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0)
          to label %bb.a unwind label %bb.bb

bb.a:                                             ; preds = %.noexc111
  %i.g = fmul double %i.e, %i.f
  %i.h = invoke noundef double @_ZNK7Results13NumIterationsEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
          to label %.noexc113 unwind label %bb.bb

.noexc113:                                        ; preds = %bb.a
  %i.i = invoke noundef double @_ZNK7Results7GetTimeENS_13BenchmarkTimeE(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0)
          to label %bb.b unwind label %bb.bb

bb.b:                                             ; preds = %.noexc113
  %i.j = fmul double %i.h, %i.i
  %11 = insertelement <2 x double> poison, double %i.g, i64 0
  %12 = insertelement <2 x double> %11, double %i.j, i64 1
  %13 = fdiv <2 x double> splat (double 1.000000e+00), %12 ; 2 uses
  %14 = extractelement <2 x double> %13, i64 0
  %i.k = fsub double %i.d, %14
  %i.l = call double @llvm.fabs.f64(double %i.k)
  %15 = extractelement <2 x double> %13, i64 1
  %i.m = fmul double %15, 1.000000e-03
  %i.n = fcmp uge double %i.l, %i.m               ; 3 uses
  br i1 %i.n, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.d, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, !prof !72

bb.d:                                             ; preds = %bb.c
  %i.q = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #23
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !73
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #23
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__._Z19CheckAvgThreadsRateRK7Results, i32 noundef 368)
          to label %bb.g unwind label %bb.dr

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %2, align 8, !tbaa !76, !nonnull !58, !align !79
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit

_ZN9benchmark8internal18GetNullLogInstanceEv.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.g
  %i.s = phi ptr [ %i.r, %bb.g ], [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.c ], [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.d ], [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.e ] ; 34 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !73   ; 2 uses
  %.not.i116 = icmp eq ptr %i.t, null
  br i1 %.not.i116, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit155, label %bb.h

bb.h:                                             ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @.str.31, i64 noundef 1)
          to label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit unwind label %bb.bc ; 0 uses

_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %bb.h
  %.pr = load ptr, ptr %i.s, align 8, !tbaa !73   ; 2 uses
  %.not.i118 = icmp eq ptr %.pr, null
  br i1 %.not.i118, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit155, label %bb.i

bb.i:                                             ; preds = %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr, ptr noundef nonnull @.str.30, i64 noundef 105)
          to label %_ZN9benchmark8internallsIA106_cEERNS0_7LogTypeES4_RKT_.exit unwind label %bb.bc ; 0 uses

_ZN9benchmark8internallsIA106_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %bb.i
  %.pr468 = load ptr, ptr %i.s, align 8, !tbaa !73 ; 2 uses
  %.not.i120 = icmp eq ptr %.pr468, null
  br i1 %.not.i120, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit155, label %bb.j

bb.j:                                             ; preds = %_ZN9benchmark8internallsIA106_cEERNS0_7LogTypeES4_RKT_.exit
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr468, ptr noundef nonnull @.str.32, i64 noundef 1)
          to label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit122 unwind label %bb.bc ; 0 uses

_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit122: ; preds = %bb.j
  %.pr470.pr = load ptr, ptr %i.s, align 8, !tbaa !73 ; 2 uses
  %.not.i123 = icmp eq ptr %.pr470.pr, null
  br i1 %.not.i123, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit155, label %bb.k

bb.k:                                             ; preds = %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit122
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.pr470.pr, i32 noundef 368)
          to label %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit unwind label %bb.bd ; 0 uses

_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit: ; preds = %bb.k
  %.pr472 = load ptr, ptr %i.s, align 8, !tbaa !73 ; 2 uses
  %.not.i125 = icmp eq ptr %.pr472, null
  br i1 %.not.i125, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit155, label %bb.l

bb.l:                                             ; preds = %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr472, ptr noundef nonnull @.str.33, i64 noundef 2)
          to label %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit unwind label %bb.bd ; 0 uses

_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %bb.l
  %.pr474.pr.pr = load ptr, ptr %i.s, align 8, !tbaa !73 ; 2 uses
  %.not.i127 = icmp eq ptr %.pr474.pr.pr, null
  br i1 %.not.i127, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit155, label %bb.m

bb.m:                                             ; preds = %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit
  %i.z = load ptr, ptr %0, align 8, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !49
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr474.pr.pr, ptr noundef %i.z, i64 noundef %i.ab)
          to label %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit unwind label %bb.bd ; 0 uses

_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit: ; preds = %bb.m
  %.pr476 = load ptr, ptr %i.s, align 8, !tbaa !73 ; 2 uses
  %.not.i129 = icmp eq ptr %.pr476, null
  br i1 %.not.i129, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit155, label %bb.n

bb.n:                                             ; preds = %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr476, ptr noundef nonnull @.str.34, i64 noundef 2)
          to label %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit131 unwind label %bb.bd ; 0 uses

_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit131: ; preds = %bb.n
  %.pr478.pr.pr = load ptr, ptr %i.s, align 8, !tbaa !73 ; 2 uses
  %.not.i132 = icmp eq ptr %.pr478.pr.pr, null
  br i1 %.not.i132, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit155, label %bb.o

bb.o:                                             ; preds = %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit131
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr478.pr.pr, ptr noundef nonnull @.str.30, i64 noundef 105)
          to label %_ZN9benchmark8internallsIA106_cEERNS0_7LogTypeES4_RKT_.exit134 unwind label %bb.bd ; 0 uses

_ZN9benchmark8internallsIA106_cEERNS0_7LogTypeES4_RKT_.exit134: ; preds = %bb.o
  %.pr480 = load ptr, ptr %i.s, align 8, !tbaa !73 ; 2 uses
  %.not.i135 = icmp eq ptr %.pr480, null
  br i1 %.not.i135, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit155, label %bb.p

bb.p:                                             ; preds = %_ZN9benchmark8internallsIA106_cEERNS0_7LogTypeES4_RKT_.exit134
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr480, ptr noundef nonnull @.str.32, i64 noundef 1)
          to label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit137 unwind label %bb.bd ; 0 uses

_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit137: ; preds = %bb.p
  %.pr482.pr.pr.pr = load ptr, ptr %i.s, align 8, !tbaa !73 ; 2 uses
  %.not.i138 = icmp eq ptr %.pr482.pr.pr.pr, null
  br i1 %.not.i138, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit155, label %bb.q

bb.q:                                             ; preds = %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit137
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.pr482.pr.pr.pr, i32 noundef 368)
          to label %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit140 unwind label %bb.be ; 0 uses

_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit140: ; preds = %bb.q
  %.pr484 = load ptr, ptr %i.s, align 8, !tbaa !73 ; 2 uses
  %.not.i141 = icmp eq ptr %.pr484, null
  br i1 %.not.i141, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit155, label %bb.r

bb.r:                                             ; preds = %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit140
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr484, ptr noundef nonnull @.str.33, i64 noundef 2)
          to label %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit143 unwind label %bb.be ; 0 uses

_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit143: ; preds = %bb.r
  %.pr486.pr.pr.pr = load ptr, ptr %i.s, align 8, !tbaa !73 ; 2 uses
  %.not.i144 = icmp eq ptr %.pr486.pr.pr.pr, null
  br i1 %.not.i144, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit155, label %bb.s

bb.s:                                             ; preds = %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit143
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr486.pr.pr.pr, ptr noundef nonnull @.str.35, i64 noundef 10)
          to label %_ZN9benchmark8internallsIA11_cEERNS0_7LogTypeES4_RKT_.exit unwind label %bb.be ; 0 uses

_ZN9benchmark8internallsIA11_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %bb.s
  %.pr488 = load ptr, ptr %i.s, align 8, !tbaa !73 ; 2 uses
  %.not.i146 = icmp eq ptr %.pr488, null
  br i1 %.not.i146, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit155, label %bb.t

bb.t:                                             ; preds = %_ZN9benchmark8internallsIA11_cEERNS0_7LogTypeES4_RKT_.exit
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr488, ptr noundef nonnull @.str.41, i64 noundef 6)
          to label %_ZN9benchmark8internallsIA7_cEERNS0_7LogTypeES4_RKT_.exit unwind label %bb.be ; 0 uses

_ZN9benchmark8internallsIA7_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %bb.t
  %.pr490.pr.pr.pr = load ptr, ptr %i.s, align 8, !tbaa !73 ; 2 uses
  %.not.i148 = icmp eq ptr %.pr490.pr.pr.pr, null
  br i1 %.not.i148, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit155, label %bb.u

bb.u:                                             ; preds = %_ZN9benchmark8internallsIA7_cEERNS0_7LogTypeES4_RKT_.exit
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr490.pr.pr.pr, ptr noundef nonnull @.str.37, i64 noundef 1)
          to label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit150 unwind label %bb.be ; 0 uses

_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit150: ; preds = %bb.u
  %.pr492 = load ptr, ptr %i.s, align 8, !tbaa !73 ; 2 uses
  %.not.i151 = icmp eq ptr %.pr492, null
  br i1 %.not.i151, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit155, label %bb.v

bb.v:                                             ; preds = %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit150
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr492, ptr noundef nonnull @.str.5, i64 noundef 3)
          to label %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit unwind label %bb.be ; 0 uses

_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %bb.v
  %.pr494.pr.pr.pr = load ptr, ptr %i.s, align 8, !tbaa !73 ; 2 uses
  %.not.i153 = icmp eq ptr %.pr494.pr.pr.pr, null
  br i1 %.not.i153, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit155, label %bb.w

bb.w:                                             ; preds = %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr494.pr.pr.pr, ptr noundef nonnull @.str.38, i64 noundef 1)
          to label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit155 unwind label %bb.be ; 0 uses

_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit155: ; preds = %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit131, %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit, %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit, %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit, %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit122, %_ZN9benchmark8internallsIA106_cEERNS0_7LogTypeES4_RKT_.exit, %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit, %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit140, %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit143, %_ZN9benchmark8internallsIA106_cEERNS0_7LogTypeES4_RKT_.exit134, %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit137, %_ZN9benchmark8internallsIA7_cEERNS0_7LogTypeES4_RKT_.exit, %_ZN9benchmark8internallsIA11_cEERNS0_7LogTypeES4_RKT_.exit, %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit150, %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.an, ptr %3, align 8, !tbaa !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.an, ptr noundef nonnull align 1 dereferenceable(3) @.str.5, i64 3, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 3, ptr %i.ao, align 8, !tbaa !49
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 19
  store i8 0, ptr %i.ap, align 1, !tbaa !18
  %i.aq = invoke noundef double @_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNK7Results12GetCounterAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit161 unwind label %bb.bf

_ZNK7Results12GetCounterAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit161: ; preds = %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit155
  %i.ar = load ptr, ptr %i.s, align 8, !tbaa !73  ; 2 uses
  %.not.i162 = icmp eq ptr %i.ar, null
  br i1 %.not.i162, label %_ZN9benchmark8internallsIA14_cEERNS0_7LogTypeES4_RKT_.exit, label %bb.x

bb.x:                                             ; preds = %_ZNK7Results12GetCounterAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit161
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, double noundef %i.aq)
          to label %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit unwind label %bb.bf ; 0 uses

_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit: ; preds = %bb.x
  %.pr496 = load ptr, ptr %i.s, align 8, !tbaa !73 ; 2 uses
  %.not.i164 = icmp eq ptr %.pr496, null
  br i1 %.not.i164, label %_ZN9benchmark8internallsIA14_cEERNS0_7LogTypeES4_RKT_.exit, label %bb.y
end_hunk_0
begin_hunk_1_@_Z19CheckAvgThreadsRateRK7Results:._crit_edge.i.i
  %i.de = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.db, double noundef %i.dd)
          to label %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit240 unwind label %bb.bl ; 0 uses

_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit240: ; preds = %bb.ax
  %.pr520 = load ptr, ptr %i.s, align 8, !tbaa !73 ; 2 uses
  %.not.i241 = icmp eq ptr %.pr520, null
  br i1 %.not.i241, label %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit243, label %bb.ay

bb.ay:                                            ; preds = %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit240
  %i.df = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr520, ptr noundef nonnull @.str.46, i64 noundef 2)
          to label %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit243 unwind label %bb.bl ; 0 uses

_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit243: ; preds = %bb.aw, %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit240, %bb.ay
  %i.dg = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.cd
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit243
  %i.di = load i64, ptr %i.cd, align 8, !tbaa !18
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit243, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.dk = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.br
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dm = load i64, ptr %i.br, align 8, !tbaa !18
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.do = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.an
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i247

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i247: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246
  %i.dq = load i64, ptr %i.an, align 8, !tbaa !18
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i247
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br i1 %i.n, label %bb.az, label %bb.bo

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249
  invoke void @_ZN9benchmark8internal12CheckHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #26
          to label %bb.ba unwind label %bb.dr

bb.ba:                                            ; preds = %bb.az
  unreachable

bb.bb:                                            ; preds = %.noexc113, %bb.a, %.noexc111, %_ZNK7Results12GetCounterAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %._crit_edge.i.i
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.bc:                                            ; preds = %bb.j, %bb.i, %bb.h
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.bd:                                            ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.be:                                            ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.bf:                                            ; preds = %bb.y, %bb.x, %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit155
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bg:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %.noexc166, %_ZN9benchmark8internallsIA14_cEERNS0_7LogTypeES4_RKT_.exit
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bh:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bi:                                            ; preds = %bb.aj, %bb.ai, %.noexc189, %_ZN9benchmark8internallsIA19_cEERNS0_7LogTypeES4_RKT_.exit
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bj:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bk:                                            ; preds = %bb.ap, %bb.ao, %.noexc211, %_ZNK7Results12GetCounterAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit210, %_ZN9benchmark8internallsIA15_cEERNS0_7LogTypeES4_RKT_.exit
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bl:                                            ; preds = %bb.ay, %bb.ax, %.noexc235, %bb.au, %.noexc232, %bb.as, %.noexc229, %bb.aq, %.noexc226, %_ZNK7Results12GetCounterAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit225, %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit219
  %i.ec = landingpad { ptr, i32 }
          cleanup
  %i.ed = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.cd
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250: ; preds = %bb.bl
  %i.ef = load i64, ptr %i.cd, align 8, !tbaa !18
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.bm

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252, %bb.bk
  %.pn.pn = phi { ptr, i32 } [ %i.ec, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252 ], [ %i.eb, %bb.bk ]
  %i.eh = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.br
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253: ; preds = %bb.bm
  %i.ej = load i64, ptr %i.br, align 8, !tbaa !18
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.ek) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bg, %bb.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255, %bb.bj, %bb.bh, %bb.bf
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dw, %bb.bf ], [ %i.dx, %bb.bg ], [ %i.dy, %bb.bh ], [ %i.dz, %bb.bi ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255 ], [ %i.ea, %bb.bj ]
  %i.el = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.an
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256: ; preds = %bb.bn
  %i.en = load i64, ptr %i.an, align 8, !tbaa !18
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.dq

bb.bo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249
  %i.ep = load ptr, ptr %1, align 8, !tbaa !20    ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.a
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259: ; preds = %bb.bo
  %i.er = load i64, ptr %i.a, align 8, !tbaa !18
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.et = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.et, ptr %6, align 8, !tbaa !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.et, ptr noundef nonnull align 1 dereferenceable(3) @.str.6, i64 3, i1 false)
  %i.eu = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 3, ptr %i.eu, align 8, !tbaa !49
  %i.ev = getelementptr inbounds nuw i8, ptr %6, i64 19
  store i8 0, ptr %i.ev, align 1, !tbaa !18
  %i.ew = invoke noundef double @_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZNK7Results12GetCounterAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit267 unwind label %bb.dt

_ZNK7Results12GetCounterAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit267: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261
  %i.ex = invoke noundef double @_ZNK7Results13NumIterationsEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
          to label %.noexc268 unwind label %bb.dt

.noexc268:                                        ; preds = %_ZNK7Results12GetCounterAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit267
  %i.ey = invoke noundef double @_ZNK7Results7GetTimeENS_13BenchmarkTimeE(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0)
          to label %bb.bp unwind label %bb.dt

bb.bp:                                            ; preds = %.noexc268
  %i.ez = fmul double %i.ex, %i.ey
  %i.fa = invoke noundef double @_ZNK7Results13NumIterationsEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
          to label %.noexc271 unwind label %bb.dt

.noexc271:                                        ; preds = %bb.bp
  %i.fb = invoke noundef double @_ZNK7Results7GetTimeENS_13BenchmarkTimeE(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0)
          to label %bb.bq unwind label %bb.dt

bb.bq:                                            ; preds = %.noexc271
  %i.fc = fmul double %i.fa, %i.fb
  %16 = insertelement <2 x double> poison, double %i.ez, i64 0
  %17 = insertelement <2 x double> %16, double %i.fc, i64 1
  %18 = fdiv <2 x double> splat (double 2.000000e+00), %17 ; 2 uses
  %19 = extractelement <2 x double> %18, i64 0
  %i.fd = fsub double %i.ew, %19
  %i.fe = call double @llvm.fabs.f64(double %i.fd)
  %20 = extractelement <2 x double> %18, i64 1
  %i.ff = fmul double %20, 1.000000e-03
  %i.fg = fcmp uge double %i.fe, %i.ff            ; 3 uses
  br i1 %i.fg, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fh = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.fi = icmp eq i8 %i.fh, 0
  br i1 %i.fi, label %bb.bs, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit275, !prof !72

bb.bs:                                            ; preds = %bb.br
  %i.fj = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #23
  %.not.i274 = icmp eq i32 %i.fj, 0
  br i1 %.not.i274, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit275, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !73
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #23
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit275

bb.bu:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__._Z19CheckAvgThreadsRateRK7Results, i32 noundef 369)
          to label %bb.bv unwind label %bb.ei

bb.bv:                                            ; preds = %bb.bu
  %i.fk = load ptr, ptr %7, align 8, !tbaa !76, !nonnull !58, !align !79
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit275

_ZN9benchmark8internal18GetNullLogInstanceEv.exit275: ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bv
  %i.fl = phi ptr [ %i.fk, %bb.bv ], [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.br ], [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.bs ], [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.bt ] ; 34 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !73 ; 2 uses
  %.not.i276 = icmp eq ptr %i.fm, null
  br i1 %.not.i276, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit323, label %bb.bw

bb.bw:                                            ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit275
  %i.fn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fm, ptr noundef nonnull @.str.31, i64 noundef 1)
          to label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit278 unwind label %bb.du ; 0 uses

_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit278: ; preds = %bb.bw
  %.pr522 = load ptr, ptr %i.fl, align 8, !tbaa !73 ; 2 uses
  %.not.i279 = icmp eq ptr %.pr522, null
  br i1 %.not.i279, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit323, label %bb.bx

bb.bx:                                            ; preds = %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit278
  %i.fo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr522, ptr noundef nonnull @.str.30, i64 noundef 105)
          to label %_ZN9benchmark8internallsIA106_cEERNS0_7LogTypeES4_RKT_.exit281 unwind label %bb.du ; 0 uses

_ZN9benchmark8internallsIA106_cEERNS0_7LogTypeES4_RKT_.exit281: ; preds = %bb.bx
  %.pr524 = load ptr, ptr %i.fl, align 8, !tbaa !73 ; 2 uses
  %.not.i282 = icmp eq ptr %.pr524, null
  br i1 %.not.i282, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit323, label %bb.by

bb.by:                                            ; preds = %_ZN9benchmark8internallsIA106_cEERNS0_7LogTypeES4_RKT_.exit281
  %i.fp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr524, ptr noundef nonnull @.str.32, i64 noundef 1)
          to label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit284 unwind label %bb.du ; 0 uses

_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit284: ; preds = %bb.by
  %.pr526.pr = load ptr, ptr %i.fl, align 8, !tbaa !73 ; 2 uses
  %.not.i285 = icmp eq ptr %.pr526.pr, null
  br i1 %.not.i285, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit323, label %bb.bz

bb.bz:                                            ; preds = %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit284
  %i.fq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.pr526.pr, i32 noundef 369)
          to label %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit287 unwind label %bb.dv ; 0 uses

_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit287: ; preds = %bb.bz
  %.pr528 = load ptr, ptr %i.fl, align 8, !tbaa !73 ; 2 uses
  %.not.i288 = icmp eq ptr %.pr528, null
  br i1 %.not.i288, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit323, label %bb.ca

bb.ca:                                            ; preds = %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit287
  %i.fr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr528, ptr noundef nonnull @.str.33, i64 noundef 2)
          to label %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit290 unwind label %bb.dv ; 0 uses

_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit290: ; preds = %bb.ca
  %.pr530.pr.pr = load ptr, ptr %i.fl, align 8, !tbaa !73 ; 2 uses
  %.not.i291 = icmp eq ptr %.pr530.pr.pr, null
  br i1 %.not.i291, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit323, label %bb.cb

bb.cb:                                            ; preds = %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit290
  %i.fs = load ptr, ptr %0, align 8, !tbaa !20
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !49
  %i.fv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr530.pr.pr, ptr noundef %i.fs, i64 noundef %i.fu)
          to label %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit293 unwind label %bb.dv ; 0 uses

_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit293: ; preds = %bb.cb
  %.pr532 = load ptr, ptr %i.fl, align 8, !tbaa !73 ; 2 uses
  %.not.i294 = icmp eq ptr %.pr532, null
  br i1 %.not.i294, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit323, label %bb.cc

bb.cc:                                            ; preds = %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit293
  %i.fw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr532, ptr noundef nonnull @.str.34, i64 noundef 2)
          to label %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit296 unwind label %bb.dv ; 0 uses

_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit296: ; preds = %bb.cc
  %.pr534.pr.pr = load ptr, ptr %i.fl, align 8, !tbaa !73 ; 2 uses
  %.not.i297 = icmp eq ptr %.pr534.pr.pr, null
  br i1 %.not.i297, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit323, label %bb.cd

bb.cd:                                            ; preds = %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit296
  %i.fx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr534.pr.pr, ptr noundef nonnull @.str.30, i64 noundef 105)
          to label %_ZN9benchmark8internallsIA106_cEERNS0_7LogTypeES4_RKT_.exit299 unwind label %bb.dv ; 0 uses

_ZN9benchmark8internallsIA106_cEERNS0_7LogTypeES4_RKT_.exit299: ; preds = %bb.cd
  %.pr536 = load ptr, ptr %i.fl, align 8, !tbaa !73 ; 2 uses
  %.not.i300 = icmp eq ptr %.pr536, null
  br i1 %.not.i300, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit323, label %bb.ce

bb.ce:                                            ; preds = %_ZN9benchmark8internallsIA106_cEERNS0_7LogTypeES4_RKT_.exit299
  %i.fy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr536, ptr noundef nonnull @.str.32, i64 noundef 1)
          to label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit302 unwind label %bb.dv ; 0 uses

_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit302: ; preds = %bb.ce
  %.pr538.pr.pr.pr = load ptr, ptr %i.fl, align 8, !tbaa !73 ; 2 uses
  %.not.i303 = icmp eq ptr %.pr538.pr.pr.pr, null
  br i1 %.not.i303, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit323, label %bb.cf

bb.cf:                                            ; preds = %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit302
  %i.fz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.pr538.pr.pr.pr, i32 noundef 369)
          to label %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit305 unwind label %bb.dw ; 0 uses

_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit305: ; preds = %bb.cf
  %.pr540 = load ptr, ptr %i.fl, align 8, !tbaa !73 ; 2 uses
  %.not.i306 = icmp eq ptr %.pr540, null
  br i1 %.not.i306, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit323, label %bb.cg

bb.cg:                                            ; preds = %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit305
  %i.ga = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr540, ptr noundef nonnull @.str.33, i64 noundef 2)
          to label %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit308 unwind label %bb.dw ; 0 uses

_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit308: ; preds = %bb.cg
  %.pr542.pr.pr.pr = load ptr, ptr %i.fl, align 8, !tbaa !73 ; 2 uses
  %.not.i309 = icmp eq ptr %.pr542.pr.pr.pr, null
  br i1 %.not.i309, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit323, label %bb.ch

bb.ch:                                            ; preds = %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit308
  %i.gb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr542.pr.pr.pr, ptr noundef nonnull @.str.35, i64 noundef 10)
          to label %_ZN9benchmark8internallsIA11_cEERNS0_7LogTypeES4_RKT_.exit311 unwind label %bb.dw ; 0 uses

_ZN9benchmark8internallsIA11_cEERNS0_7LogTypeES4_RKT_.exit311: ; preds = %bb.ch
  %.pr544 = load ptr, ptr %i.fl, align 8, !tbaa !73 ; 2 uses
  %.not.i312 = icmp eq ptr %.pr544, null
  br i1 %.not.i312, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit323, label %bb.ci

bb.ci:                                            ; preds = %_ZN9benchmark8internallsIA11_cEERNS0_7LogTypeES4_RKT_.exit311
  %i.gc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr544, ptr noundef nonnull @.str.41, i64 noundef 6)
          to label %_ZN9benchmark8internallsIA7_cEERNS0_7LogTypeES4_RKT_.exit314 unwind label %bb.dw ; 0 uses

_ZN9benchmark8internallsIA7_cEERNS0_7LogTypeES4_RKT_.exit314: ; preds = %bb.ci
  %.pr546.pr.pr.pr = load ptr, ptr %i.fl, align 8, !tbaa !73 ; 2 uses
  %.not.i315 = icmp eq ptr %.pr546.pr.pr.pr, null
  br i1 %.not.i315, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit323, label %bb.cj

bb.cj:                                            ; preds = %_ZN9benchmark8internallsIA7_cEERNS0_7LogTypeES4_RKT_.exit314
  %i.gd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr546.pr.pr.pr, ptr noundef nonnull @.str.37, i64 noundef 1)
          to label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit317 unwind label %bb.dw ; 0 uses

_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit317: ; preds = %bb.cj
  %.pr548 = load ptr, ptr %i.fl, align 8, !tbaa !73 ; 2 uses
  %.not.i318 = icmp eq ptr %.pr548, null
  br i1 %.not.i318, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit323, label %bb.ck

bb.ck:                                            ; preds = %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit317
  %i.ge = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr548, ptr noundef nonnull @.str.6, i64 noundef 3)
          to label %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit320 unwind label %bb.dw ; 0 uses

_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit320: ; preds = %bb.ck
  %.pr550.pr.pr.pr = load ptr, ptr %i.fl, align 8, !tbaa !73 ; 2 uses
  %.not.i321 = icmp eq ptr %.pr550.pr.pr.pr, null
  br i1 %.not.i321, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit323, label %bb.cl

bb.cl:                                            ; preds = %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit320
  %i.gf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr550.pr.pr.pr, ptr noundef nonnull @.str.38, i64 noundef 1)
          to label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit323 unwind label %bb.dw ; 0 uses

_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit323: ; preds = %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit296, %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit293, %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit290, %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit287, %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit284, %_ZN9benchmark8internallsIA106_cEERNS0_7LogTypeES4_RKT_.exit281, %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit278, %_ZN9benchmark8internal18GetNullLogInstanceEv.exit275, %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit305, %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit308, %_ZN9benchmark8internallsIA106_cEERNS0_7LogTypeES4_RKT_.exit299, %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit302, %_ZN9benchmark8internallsIA7_cEERNS0_7LogTypeES4_RKT_.exit314, %_ZN9benchmark8internallsIA11_cEERNS0_7LogTypeES4_RKT_.exit311, %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit317, %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit320, %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.gg = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.gg, ptr %8, align 8, !tbaa !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.gg, ptr noundef nonnull align 1 dereferenceable(3) @.str.6, i64 3, i1 false)
  %i.gh = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 3, ptr %i.gh, align 8, !tbaa !49
  %i.gi = getelementptr inbounds nuw i8, ptr %8, i64 19
  store i8 0, ptr %i.gi, align 1, !tbaa !18
  %i.gj = invoke noundef double @_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNK7Results12GetCounterAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit329 unwind label %bb.dx

_ZNK7Results12GetCounterAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit329: ; preds = %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit323
  %i.gk = load ptr, ptr %i.fl, align 8, !tbaa !73 ; 2 uses
  %.not.i330 = icmp eq ptr %i.gk, null
  br i1 %.not.i330, label %_ZN9benchmark8internallsIA14_cEERNS0_7LogTypeES4_RKT_.exit335, label %bb.cm

bb.cm:                                            ; preds = %_ZNK7Results12GetCounterAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit329
  %i.gl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gk, double noundef %i.gj)
          to label %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit332 unwind label %bb.dx ; 0 uses

_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit332: ; preds = %bb.cm
  %.pr552 = load ptr, ptr %i.fl, align 8, !tbaa !73 ; 2 uses
  %.not.i333 = icmp eq ptr %.pr552, null
  br i1 %.not.i333, label %_ZN9benchmark8internallsIA14_cEERNS0_7LogTypeES4_RKT_.exit335, label %bb.cn
end_hunk_1
