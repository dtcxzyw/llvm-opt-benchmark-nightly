inline.NumInlined: 226
inline.NumDeleted: 126
begin_hunk_0_@_ZN5folly6fibers5FiberC2ERNS0_12FiberManagerE:_ZN5folly8FunctionIFvvEEC2EOS2_.exit.i
  %.not.i.i7.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i7.i, label %_ZN5folly8FunctionIFvvEED2Ev.exit4, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = tail call noundef i64 %i.q(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.k, ptr noundef null) #20, !inline_history !124 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit4

_ZN5folly8FunctionIFvvEED2Ev.exit:                ; preds = %_ZN5folly8FunctionIFvvEEC2EOS2_.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.o, ptr %i.s, align 64, !tbaa !125
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr null, ptr %i.u, align 16, !tbaa !126
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr %i.v, align 32, !tbaa !121
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 528
  store ptr null, ptr %i.x, align 16, !tbaa !126
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i8 0, i64 32, i1 false)
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr %i.y, align 64, !tbaa !121
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr %i.aa, align 64, !tbaa !121
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 648
  store ptr null, ptr %i.ab, align 8, !tbaa !122
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 832
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(48) %i.ac, i8 0, i64 48, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(32) %i.ad, i8 0, i64 32, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.pre, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre, i64 72 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !56 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 920
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !56
  store ptr %i.af, ptr %i.ae, align 16, !tbaa !57
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !56
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !57
  ret void

_ZN5folly8FunctionIFvvEED2Ev.exit4:               ; preds = %bb.b, %bb.a
  resume { ptr, i32 } %i.p
}

declare noundef ptr @_ZN5folly6fibers18GuardPageAllocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6fibers9FiberImplC2ENS_8FunctionIFvvEEEPhm(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr null, ptr %i.a, align 16, !tbaa !126
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load <2 x ptr>, ptr %i.c, align 16, !tbaa !127
  store <2 x ptr> %i.f, ptr %i.b, align 16, !tbaa !127
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr %i.c, align 16, !tbaa !121
  store ptr null, ptr %i.e, align 8, !tbaa !122
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !122  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN5folly8FunctionIFvvEEC2EOS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef i64 %i.g(i32 noundef 0, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull align 16 dereferenceable(64) %i.a) #20, !inline_history !128 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEEC2EOS2_.exit

_ZN5folly8FunctionIFvvEEC2EOS2_.exit:             ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 2 uses
  store ptr %i.i, ptr %0, align 16, !tbaa !123
  %i.j = invoke ptr @make_fcontext(ptr noundef %i.i, i64 noundef %3, ptr noundef nonnull @_ZN5folly6fibers9FiberImpl9fiberFuncEN5boost7context6detail10transfer_tE)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN5folly8FunctionIFvvEEC2EOS2_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.j, ptr %i.k, align 16, !tbaa !125
  ret void

bb.d:                                             ; preds = %_ZN5folly8FunctionIFvvEEC2EOS2_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !122  ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.m, null
  br i1 %.not.i.i7, label %_ZN5folly8FunctionIFvvEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = tail call noundef i64 %i.m(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef null) #20, !inline_history !129 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit

_ZN5folly8FunctionIFvvEED2Ev.exit:                ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.l
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE(ptr noundef nonnull align 16 dereferenceable(48) %0) #0 comdat align 2 {
bb.a:
  tail call void @_ZN5folly6detail16throw_exception_ISt17bad_function_callJEEEvDpT0_() #11
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress noreturn uwtable
define internal void @"_ZN5folly6detail8function5call_IZNS_6fibers5FiberC1ERNS3_12FiberManagerEE3$_0Lb1ELb0EvJEEET2_DpT3_RNS1_4DataE"(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(48) %0) #7 {
bb.a:
  %.val = load ptr, ptr %0, align 16, !tbaa !130
  tail call void @_ZN5folly6fibers5Fiber9fiberFuncEv(ptr noundef nonnull align 64 dereferenceable(928) %.val) #22
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm16EEEmNS1_2OpEPNS1_4DataES6_(i32 noundef %0, ptr noundef %1, ptr noundef %2) #8 comdat align 2 {
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
  tail call void @abort() #21
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.a
  ret i64 0
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt17bad_function_callJEEEvDpT0_() local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::bad_function_call", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt17bad_function_call, i64 16), ptr %0, align 8, !tbaa !44
  invoke void @_ZN5folly15throw_exceptionISt17bad_function_callEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt17bad_function_callD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt17bad_function_callEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt17bad_function_call, i64 16), ptr %i.a, align 8, !tbaa !44
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt17bad_function_call, ptr nonnull @_ZNSt17bad_function_callD1Ev) #22
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nounwind
declare void @_ZNSt17bad_function_callD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #11

; Function Attrs: mustprogress noreturn uwtable
define void @_ZN5folly6fibers5Fiber9fiberFuncEv(ptr noundef nonnull align 64 dereferenceable(928) initializes((0, 1)) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.google::CheckOpString", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.google::LogMessageFatal", align 8 ; 5 uses
  %3 = alloca %"struct.google::CheckOpString", align 8 ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.google::LogMessageFatal", align 8 ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %7 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %8 = alloca %"struct.google::CheckOpString", align 8 ; 4 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %9 = alloca %"class.google::LogMessageFatal", align 8 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 584
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 576
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.an, %bb.a
  %i.t = load i8, ptr %i.h, align 1, !tbaa !132, !range !111, !noundef !40
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %.invoke

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.i, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.v = tail call i64 @pthread_self() #23
  %i.w = call i32 @pthread_getcpuclockid(i64 noundef %i.v, ptr noundef nonnull %i.e) #20
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.x = load i32, ptr %i.e, align 4, !tbaa !7
  %i.y = call i32 @clock_gettime(i32 noundef %i.x, ptr noundef nonnull %5) #20
  %.not1.i = icmp eq i32 %i.y, 0
  br i1 %.not1.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = load i64, ptr %i.j, align 8, !tbaa !133
  %i.aa = load i64, ptr %5, align 8, !tbaa !133
  %i.ab = mul nsw i64 %i.aa, 1000000000
  %i.ac = add nsw i64 %i.ab, %i.z
  br label %_ZN5folly6fibers12thread_clock3nowEv.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.ad = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #20
  br label %_ZN5folly6fibers12thread_clock3nowEv.exit

_ZN5folly6fibers12thread_clock3nowEv.exit:        ; preds = %bb.e, %bb.f
  %.sroa.04.0.i = phi i64 [ %i.ac, %bb.e ], [ %i.ad, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  store i64 %.sroa.04.0.i, ptr %i.k, align 16, !tbaa !133
  br label %.invoke

.invoke:                                          ; preds = %_ZN5folly6fibers12thread_clock3nowEv.exit, %bb.b
  store i8 3, ptr %0, align 64, !tbaa !11
  %i.ae = load ptr, ptr %i.l, align 8, !tbaa !122
  %.not = icmp eq ptr %i.ae, null                 ; 2 uses
  %12 = load ptr, ptr %11, align 32
  %13 = load ptr, ptr %10, align 64
  %.v = select i1 %.not, i64 176, i64 528
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.v
  %14 = select i1 %.not, ptr %12, ptr %13
  invoke void %14(ptr noundef nonnull align 16 dereferenceable(48) %i.af)
          to label %_ZN5folly6detail8function14FunctionTraitsIFvvEEclEv.exit unwind label %bb.g, !inline_history !134

bb.g:                                             ; preds = %.invoke
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  %i.ai = call ptr @__cxa_begin_catch(ptr %i.ah) #20 ; 0 uses
  %i.aj = load ptr, ptr %i.m, align 8, !tbaa !39, !nonnull !40, !align !41 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 384
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @_ZN5folly17current_exceptionEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %6) #20
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 432
  %i.am = load ptr, ptr %i.al, align 16, !tbaa !135
  invoke void %i.am(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr nonnull @.str.9, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.9, i64 31), ptr noundef nonnull align 16 dereferenceable(48) %i.ak)
          to label %_ZN5folly6detail8function14FunctionTraitsIFvRKNSt15__exception_ptr13exception_ptrENS_5RangeIPKcEEEEclES6_SA_.exit unwind label %bb.ag, !inline_history !136

_ZN5folly6detail8function14FunctionTraitsIFvRKNSt15__exception_ptr13exception_ptrENS_5RangeIPKcEEEEclES6_SA_.exit: ; preds = %bb.g
  %i.an = load ptr, ptr %6, align 8, !tbaa !137
  %.not.i17 = icmp eq ptr %i.an, null
  br i1 %.not.i17, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5folly6detail8function14FunctionTraitsIFvRKNSt15__exception_ptr13exception_ptrENS_5RangeIPKcEEEEclES6_SA_.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %_ZN5folly6detail8function14FunctionTraitsIFvRKNSt15__exception_ptr13exception_ptrENS_5RangeIPKcEEEEclES6_SA_.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @__cxa_end_catch()
  br label %_ZN5folly6detail8function14FunctionTraitsIFvvEEclEv.exit

_ZN5folly6detail8function14FunctionTraitsIFvvEEclEv.exit: ; preds = %.invoke, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  %i.ao = load i8, ptr %i.n, align 2, !tbaa !138, !range !111, !noundef !40
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.i, label %bb.an, !prof !139

bb.i:                                             ; preds = %_ZN5folly6detail8function14FunctionTraitsIFvvEEclEv.exit
  %i.aq = load ptr, ptr %i.o, align 32, !tbaa !120 ; 5 uses
  %i.ar = load i64, ptr %i.p, align 16, !tbaa !118 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = and i64 %i.as, 7                        ; 2 uses
  store i64 %i.at, ptr %i.a, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 0, ptr %i.b, align 4, !tbaa !7
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_ZN6google12Check_EQImplImjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread.i, label %_ZN6google12Check_EQImplImjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.i, !prof !55

_ZN6google12Check_EQImplImjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread.i: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.j

_ZN6google12Check_EQImplImjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.i: ; preds = %bb.i
  %i.av = call noundef ptr @_ZN6google17MakeCheckOpStringImjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull @.str.13) ; 2 uses
  store ptr %i.av, ptr %1, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %.not.i18 = icmp eq ptr %i.av, null
  br i1 %.not.i18, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN6google12Check_EQImplImjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.i, %_ZN6google12Check_EQImplImjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.aw = and i64 %i.ar, 7                        ; 2 uses
  store i64 %i.aw, ptr %i.c, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 0, ptr %i.d, align 4, !tbaa !7
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_ZN6google12Check_EQImplImjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit9.thread.i, label %_ZN6google12Check_EQImplImjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit9.i, !prof !55

_ZN6google12Check_EQImplImjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit9.thread.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.n

_ZN6google12Check_EQImplImjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit9.i: ; preds = %bb.j
  %i.ay = call noundef ptr @_ZN6google17MakeCheckOpStringImjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull @.str.14) ; 2 uses
  store ptr %i.ay, ptr %3, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %.not12.i = icmp eq ptr %i.ay, null
  br i1 %.not12.i, label %bb.n, label %bb.y

bb.k:                                             ; preds = %_ZN6google12Check_EQImplImjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull @.str.1, i32 noundef 37, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.l unwind label %bb.m       ; 0 uses

bb.l:                                             ; preds = %bb.k
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %2) #21
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %2) #21
  unreachable

bb.n:                                             ; preds = %_ZN6google12Check_EQImplImjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit9.i, %_ZN6google12Check_EQImplImjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit9.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar ; 2 uses
  %i.bc = ashr i64 %i.ar, 5                       ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, 0
  br i1 %i.bd, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.n
  %i.be = and i64 %i.ar, -32
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.aq, i64 %i.be
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.r, %.lr.ph.preheader.i.i.i.i
  %.050.i.i.i.i = phi i64 [ %i.bj, %bb.r ], [ %i.bc, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.02949.i.i.i.i = phi ptr [ %i.bi, %bb.r ], [ %i.aq, %.lr.ph.preheader.i.i.i.i ] ; 9 uses
  %.029.val32.i.i.i.i = load i64, ptr %.02949.i.i.i.i, align 8, !tbaa !133
  %.not35.i.i.i.i = icmp eq i64 %.029.val32.i.i.i.i, -374168149231226868
  br i1 %.not35.i.i.i.i, label %bb.o, label %_ZN5folly6fibers12_GLOBAL__N_115nonMagicInBytesEPhm.exit

bb.o:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i, i64 8
  %.val31.i.i.i.i = load i64, ptr %i.bf, align 8, !tbaa !133
  %.not36.i.i.i.i = icmp eq i64 %.val31.i.i.i.i, -374168149231226868
  br i1 %.not36.i.i.i.i, label %bb.p, label %_ZN5folly6fibers12_GLOBAL__N_115nonMagicInBytesEPhm.exit.loopexit.split.loop.exit

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i, i64 16
  %.val30.i.i.i.i = load i64, ptr %i.bg, align 8, !tbaa !133
  %.not37.i.i.i.i = icmp eq i64 %.val30.i.i.i.i, -374168149231226868
  br i1 %.not37.i.i.i.i, label %bb.q, label %_ZN5folly6fibers12_GLOBAL__N_115nonMagicInBytesEPhm.exit.loopexit.split.loop.exit44

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i, i64 24
  %.val.i.i.i.i = load i64, ptr %i.bh, align 8, !tbaa !133
  %.not38.i.i.i.i = icmp eq i64 %.val.i.i.i.i, -374168149231226868
  br i1 %.not38.i.i.i.i, label %bb.r, label %_ZN5folly6fibers12_GLOBAL__N_115nonMagicInBytesEPhm.exit.loopexit.split.loop.exit46

bb.r:                                             ; preds = %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i, i64 32
  %i.bj = add nsw i64 %.050.i.i.i.i, -1
  %i.bk = icmp sgt i64 %.050.i.i.i.i, 1
  br i1 %i.bk, label %.lr.ph.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !143

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.r
  %gepdiff.i = and i64 %i.ar, 31
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.n
  %.pre-phi56.i.i.i.i = phi i64 [ %gepdiff.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.ar, %bb.n ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.aq, %bb.n ] ; 5 uses
  %i.bl = ashr exact i64 %.pre-phi56.i.i.i.i, 3
  switch i64 %i.bl, label %bb.x [
    i64 3, label %bb.s
    i64 2, label %bb.u
    i64 1, label %bb.w
  ]

bb.s:                                             ; preds = %._crit_edge.i.i.i.i
  %.029.val.i.i.i.i = load i64, ptr %.029.lcssa.i.i.i.i, align 8, !tbaa !133
  %.not.i.i.i.i = icmp eq i64 %.029.val.i.i.i.i, -374168149231226868
  br i1 %.not.i.i.i.i, label %bb.t, label %_ZN5folly6fibers12_GLOBAL__N_115nonMagicInBytesEPhm.exit

bb.t:                                             ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.bm, %bb.t ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i = load i64, ptr %.1.i.i.i.i, align 8, !tbaa !133
  %.not33.i.i.i.i = icmp eq i64 %.1.val.i.i.i.i, -374168149231226868
  br i1 %.not33.i.i.i.i, label %bb.v, label %_ZN5folly6fibers12_GLOBAL__N_115nonMagicInBytesEPhm.exit

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge.i.i.i.i
  %.2.i.i.i.i = phi ptr [ %i.bn, %bb.v ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i = load i64, ptr %.2.i.i.i.i, align 8, !tbaa !133
  %.not34.i.i.i.i = icmp eq i64 %.2.val.i.i.i.i, -374168149231226868
  br i1 %.not34.i.i.i.i, label %bb.x, label %_ZN5folly6fibers12_GLOBAL__N_115nonMagicInBytesEPhm.exit

bb.x:                                             ; preds = %bb.w, %._crit_edge.i.i.i.i
  br label %_ZN5folly6fibers12_GLOBAL__N_115nonMagicInBytesEPhm.exit

bb.y:                                             ; preds = %_ZN6google12Check_EQImplImjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit9.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull @.str.1, i32 noundef 38, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %4)
          to label %bb.z unwind label %bb.aa      ; 0 uses

bb.z:                                             ; preds = %bb.y
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %4) #21
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %4) #21
end_hunk_0
