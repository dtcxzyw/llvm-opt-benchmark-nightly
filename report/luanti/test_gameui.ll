Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/test_gameui?download=true
inline.NumInlined: 327
inline.NumDeleted: 179
begin_hunk_0_@_ZN10TestGameUI8runTestsEP8IGameDef:bb.a
bb.c:                                             ; preds = %bb.b
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #22
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.k, align 8
  store i64 %i.a, ptr %3, align 8, !tbaa !19
  store ptr @"_ZNSt17_Function_handlerIFvvEZN10TestGameUI8runTestsEP8IGameDefE3$_1E9_M_invokeERKSt9_Any_data", ptr %i.j, align 8, !tbaa !62
  store ptr @"_ZNSt17_Function_handlerIFvvEZN10TestGameUI8runTestsEP8IGameDefE3$_1E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation", ptr %i.i, align 8, !tbaa !63
  invoke void @_ZN8TestBase7runTestEPKcOSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.1, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !63   ; 2 uses
  %.not.i6 = icmp eq ptr %i.l, null
  br i1 %.not.i6, label %_ZNSt14_Function_baseD2Ev.exit7, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit7 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #22
  unreachable

_ZNSt14_Function_baseD2Ev.exit7:                  ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.r, align 8
  store i64 %i.a, ptr %4, align 8, !tbaa !19
  store ptr @"_ZNSt17_Function_handlerIFvvEZN10TestGameUI8runTestsEP8IGameDefE3$_2E9_M_invokeERKSt9_Any_data", ptr %i.q, align 8, !tbaa !62
  store ptr @"_ZNSt17_Function_handlerIFvvEZN10TestGameUI8runTestsEP8IGameDefE3$_2E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation", ptr %i.p, align 8, !tbaa !63
  invoke void @_ZN8TestBase7runTestEPKcOSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit7
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !63   ; 2 uses
  %.not.i8 = icmp eq ptr %i.s, null
  br i1 %.not.i8, label %_ZNSt14_Function_baseD2Ev.exit9, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit9 unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #22
  unreachable

_ZNSt14_Function_baseD2Ev.exit9:                  ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

bb.k:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !63   ; 2 uses
  %.not.i10 = icmp eq ptr %i.x, null
  br i1 %.not.i10, label %_ZNSt14_Function_baseD2Ev.exit11, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = invoke noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit11 unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #22
  unreachable

_ZNSt14_Function_baseD2Ev.exit11:                 ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.t

bb.n:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !63  ; 2 uses
  %.not.i12 = icmp eq ptr %i.ac, null
  br i1 %.not.i12, label %_ZNSt14_Function_baseD2Ev.exit13, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = invoke noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit13 unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #22
  unreachable

_ZNSt14_Function_baseD2Ev.exit13:                 ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.t

bb.q:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit7
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %i.p, align 8, !tbaa !63  ; 2 uses
  %.not.i14 = icmp eq ptr %i.ah, null
  br i1 %.not.i14, label %_ZNSt14_Function_baseD2Ev.exit15, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = invoke noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit15 unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #22
  unreachable

_ZNSt14_Function_baseD2Ev.exit15:                 ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit15, %_ZNSt14_Function_baseD2Ev.exit13, %_ZNSt14_Function_baseD2Ev.exit11
  %.pn = phi { ptr, i32 } [ %i.ag, %_ZNSt14_Function_baseD2Ev.exit15 ], [ %i.ab, %_ZNSt14_Function_baseD2Ev.exit13 ], [ %i.w, %_ZNSt14_Function_baseD2Ev.exit11 ]
  resume { ptr, i32 } %.pn
}

declare void @_ZN8TestBase7runTestEPKcOSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10TestGameUI8testInitEv(ptr nofree nonnull readnone align 8 captures(none) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.GameUI, align 8              ; 18 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %1, i8 0, i64 128, i1 false)
  store i8 1, ptr %1, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  store i8 1, ptr %i.a, align 1, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 0, ptr %i.b, align 1, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float 0.000000e+00, ptr %i.d, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr %i.g, ptr %i.f, align 8, !tbaa !41
  store i32 0, ptr %i.g, align 8, !tbaa !43
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i8 0, ptr %i.i, align 8, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 121
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.h, i8 0, i64 36, i1 false)
  store i8 1, ptr %i.j, align 1, !tbaa !45
  invoke void @_ZN6GameUI9initFlagsEv(ptr noundef nonnull align 8 dereferenceable(122) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.l = load i8, ptr %1, align 8, !tbaa !22, !range !64, !noundef !65
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = call ptr @__cxa_allocate_exception(i64 72) #21 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.n, ptr noundef nonnull align 8 %2, ptr noundef nonnull @.str.4, i32 noundef 42)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #23
          to label %bb.t unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.thread: ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %.sink.split

bb.g:                                             ; preds = %bb.f, %bb.e
  %.09 = phi i1 [ false, %bb.f ], [ true, %bb.e ] ; 2 uses
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !16     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.g
  %i.t = load i64, ptr %i.r, align 8, !tbaa !17
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br i1 %.09, label %.sink.split, label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br i1 %.09, label %.sink.split, label %bb.s

bb.h:                                             ; preds = %bb.c
  %i.v = load i8, ptr %i.a, align 1, !tbaa !23, !range !64, !noundef !65
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = call ptr @__cxa_allocate_exception(i64 72) #21 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.x, ptr noundef nonnull align 8 %4, ptr noundef nonnull @.str.4, i32 noundef 43)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #23
          to label %bb.t unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread: ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %.sink.split

bb.l:                                             ; preds = %bb.k, %bb.j
  %.07 = phi i1 [ false, %bb.k ], [ true, %bb.j ] ; 2 uses
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.aa = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %bb.l
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !17
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br i1 %.07, label %.sink.split, label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br i1 %.07, label %.sink.split, label %bb.s

bb.m:                                             ; preds = %bb.h
  %i.af = load i8, ptr %i.c, align 4, !tbaa !66, !range !64, !noundef !65
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.ah = call ptr @__cxa_allocate_exception(i64 72) #21 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.o unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.ah, ptr noundef nonnull align 8 %6, ptr noundef nonnull @.str.4, i32 noundef 44)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.ah, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #23
          to label %bb.t unwind label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread: ; preds = %bb.n
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %.sink.split

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0 = phi i1 [ false, %bb.p ], [ true, %bb.o ]  ; 2 uses
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ak = load ptr, ptr %6, align 8, !tbaa !16    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.q
  %i.an = load i64, ptr %i.al, align 8, !tbaa !17
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br i1 %.0, label %.sink.split, label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br i1 %.0, label %.sink.split, label %bb.s

bb.r:                                             ; preds = %bb.m
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !46  ; 3 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrI16StatusTextHelperSt14default_deleteIS0_EED2Ev.exit.i, label %_ZNKSt14default_deleteI16StatusTextHelperEclEPS0_.exit.i.i

_ZNKSt14default_deleteI16StatusTextHelperEclEPS0_.exit.i.i: ; preds = %bb.r
  call void @_ZN16StatusTextHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %i.ap) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 72) #20
  br label %_ZNSt10unique_ptrI16StatusTextHelperSt14default_deleteIS0_EED2Ev.exit.i

_ZNSt10unique_ptrI16StatusTextHelperSt14default_deleteIS0_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteI16StatusTextHelperEclEPS0_.exit.i.i, %bb.r
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !47  ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.g
  br i1 %i.ar, label %_ZN6GameUID2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10unique_ptrI16StatusTextHelperSt14default_deleteIS0_EED2Ev.exit.i
  %i.as = load i64, ptr %i.g, align 8, !tbaa !17
  %i.at = shl i64 %i.as, 2
  %i.au = add i64 %i.at, 4
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #20
  br label %_ZN6GameUID2Ev.exit

_ZN6GameUID2Ev.exit:                              ; preds = %_ZNSt10unique_ptrI16StatusTextHelperSt14default_deleteIS0_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  %.sink = phi ptr [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.thread ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread ], [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ]
  %.pn35.pn.ph = phi { ptr, i32 } [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.thread ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ]
  call void @__cxa_free_exception(ptr %.sink) #21
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %bb.b
  %.pn35.pn = phi { ptr, i32 } [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %i.k, %bb.b ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %.pn35.pn.ph, %.sink.split ]
  call void @_ZN6GameUID2Ev(ptr noundef nonnull align 8 dead_on_return(122) dereferenceable(122) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %.pn35.pn

bb.t:                                             ; preds = %bb.p, %bb.k, %bb.f
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !48
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.15) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.d, ptr %i.a, align 8, !tbaa !49
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !16
  %i.g = load i64, ptr %i.a, align 8, !tbaa !49
  store i64 %i.g, ptr %i.b, align 8, !tbaa !17
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !17
  store i8 %i.i, ptr %i.h, align 1, !tbaa !17
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !50
  %i.l = load ptr, ptr %0, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef align 8 %1, ptr noundef %2, i32 noundef %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !48
  %i.c = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !50   ; 2 uses
  %i.h = icmp ult i64 %i.g, 16
  tail call void @llvm.assume(i1 %i.h)
  %i.i = add nuw nsw i64 %i.g, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.c, ptr %0, align 8, !tbaa !16
  %i.j = load i64, ptr %i.d, align 8, !tbaa !17
  store i64 %i.j, ptr %i.b, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !50
  store ptr %i.d, ptr %1, align 8, !tbaa !16
  store i64 0, ptr %i.k, align 8, !tbaa !50
  store i8 0, ptr %i.d, align 8, !tbaa !17
  %i.n = invoke noundef ptr @_ZN2fs19GetFilenameFromPathEPKc(ptr noundef %2)
          to label %bb.c unwind label %bb.i       ; 4 uses

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !48
  %i.q = icmp eq ptr %i.n, null
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.15) #23
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.n) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.r, ptr %i.a, align 8, !tbaa !49
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.e
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc6 unwind label %bb.i    ; 2 uses

.noexc6:                                          ; preds = %.noexc.i
  store ptr %i.t, ptr %i.o, align 8, !tbaa !16
  %i.u = load i64, ptr %i.a, align 8, !tbaa !49
  store i64 %i.u, ptr %i.p, align 8, !tbaa !17
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc6, %bb.e
  %i.v = phi ptr [ %i.t, %.noexc6 ], [ %i.p, %bb.e ] ; 2 uses
  switch i64 %i.r, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.w = load i8, ptr %i.n, align 1, !tbaa !17
  store i8 %i.w, ptr %i.v, align 1, !tbaa !17
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr nonnull align 1 %i.n, i64 %i.r, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.x = load i64, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.x, ptr %i.y, align 8, !tbaa !50
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %3, ptr %i.ab, align 8, !tbaa !68
  ret void

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %.noexc.i, %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.b
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.af = load i64, ptr %i.b, align 8, !tbaa !17
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ac
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN19TestFailedExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !17
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
end_hunk_0
