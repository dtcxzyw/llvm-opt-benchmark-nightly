Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/sampler?download=true
inline.NumInlined: 1085
inline.NumDeleted: 511
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN7xgboost4tree8cpu_impl18CalculateThresholdENS_6common4SpanIKfLm18446744073709551615EEES5_mm:bb.a
  br i1 %i.at, label %.thread64, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %.not.i55 = icmp eq i64 %2, 0
  br i1 %.not.i55, label %bb.p, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EE4backEv.exit, !prof !40

bb.p:                                             ; preds = %bb.o
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EE4backEv.exit: ; preds = %bb.o
  %i.au = getelementptr [4 x i8], ptr %3, i64 %2
  %i.av = getelementptr i8, ptr %i.au, i64 -4
  %i.aw = load float, ptr %i.av, align 4, !tbaa !20
  %i.ax = uitofp i64 %5 to float
  %i.ay = fdiv float %i.aw, %i.ax
  br label %.thread64

.thread64:                                        ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit54, %._crit_edge, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EE4backEv.exit
  %.339 = phi float [ f0x7F7FFFFF, %._crit_edge ], [ %i.ay, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EE4backEv.exit ], [ %i.ao, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit54 ]
  ret float %.339

bb.q:                                             ; preds = %bb.d
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #30
  unreachable
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %0) ; 2 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.13, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.d = tail call ptr @getenv(ptr noundef nonnull @.str.23) #8 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN4dmlc18LogStackTraceLevelEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.24, ptr noundef nonnull %i.a) #8
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %_ZN4dmlc18LogStackTraceLevelEv.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.a, align 8, !tbaa !13
  %i.h = add i64 %i.g, 1
  br label %_ZN4dmlc18LogStackTraceLevelEv.exit

_ZN4dmlc18LogStackTraceLevelEv.exit:              ; preds = %bb.a, %bb.b, %bb.c
  %i.i = phi i64 [ %i.h, %bb.c ], [ 10, %bb.b ], [ 10, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @_ZN4dmlc10StackTraceB5cxx11Emm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, i64 noundef 1, i64 noundef %i.i)
  %i.j = load ptr, ptr %1, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !37
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.j, i64 noundef %i.l)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZN4dmlc18LogStackTraceLevelEv.exit
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.13, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.o = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = load i64, ptr %i.p, align 8, !tbaa !38
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  %i.t = call ptr @__cxa_allocate_exception(i64 16) #8 ; 3 uses
  %i.u = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %0)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZN4dmlc15LogMessageFatal5Entry8FinalizeEv(ptr dead_on_unwind writable sret(%"struct.dmlc::Error") align 8 %i.t, ptr noundef nonnull align 8 dereferenceable(376) %i.u)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @__cxa_throw(ptr %i.t, ptr nonnull @_ZTIN4dmlc5ErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
  unreachable

bb.f:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZN4dmlc18LogStackTraceLevelEv.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  %i.z = load i64, ptr %i.x, align 8, !tbaa !38
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %bb.h

bb.g:                                             ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %i.t) #8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.g ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #8 ; 0 uses
  tail call void @_ZSt9terminatev() #30
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32     ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !38
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #29
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7xgboost4tree8cpu_impl7Sampler6SampleEPKNS_7ContextENS_6linalg10TensorViewINS_6detail20GradientPairInternalIfEELi2EEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, ptr nofree noundef readonly byval(%"class.xgboost::linalg::TensorView.6") align 8 captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %7 = alloca %class.anon.37, align 8             ; 9 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.std::unique_ptr", align 8   ; 9 uses
  %10 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %11 = alloca %"class.dmlc::OMPException", align 8 ; 15 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %12 = alloca %"class.xgboost::common::Span.3", align 8 ; 5 uses
  %i.g = alloca float, align 4                    ; 4 uses
  %13 = alloca %class.anon.36, align 8            ; 6 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %14 = alloca %class.anon.35, align 8            ; 5 uses
  %15 = alloca %"class.xgboost::linalg::TensorView.6", align 8 ; 6 uses
  %16 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %17 = alloca %"class.std::vector", align 8      ; 10 uses
  %18 = alloca %"class.xgboost::linalg::TensorView", align 16 ; 9 uses
  %19 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !90   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.l = load i64, ptr %i.k, align 8, !tbaa !44   ; 10 uses
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %_ZNK7xgboost6linalg10TensorViewINS_6detail20GradientPairInternalIfEELi2EE10ContiguousEv.exit.thread, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm2EEELb1EEdeEv.exit.i.i.i

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm2EEELb1EEdeEv.exit.i.i.i: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !13
  %i.p = load i64, ptr %2, align 8, !tbaa !13     ; 2 uses
  %.not4.i.i.i.a = icmp eq i64 %i.p, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %.not4.i.i.i.1 = icmp eq i64 %i.r, 1
  %.not4.i.i.i.lcssa = select i1 %.not4.i.i.i.a, i1 %.not4.i.i.i.1, i1 false
  br i1 %.not4.i.i.i.lcssa, label %_ZNK7xgboost6linalg10TensorViewINS_6detail20GradientPairInternalIfEELi2EE10ContiguousEv.exit.thread, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm2EEELb1EEdeEv.exit.i.i1.i

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm2EEELb1EEdeEv.exit.i.i1.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm2EEELb1EEdeEv.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !13
  %.not4.i.i3.i = icmp eq i64 %i.p, 1
  %.not4.i.i3.i.1 = icmp eq i64 %i.r, %i.t
  %.not4.i.i3.i.lcssa = select i1 %.not4.i.i3.i, i1 %.not4.i.i3.i.1, i1 false
  br i1 %.not4.i.i3.i.lcssa, label %_ZNK7xgboost6linalg10TensorViewINS_6detail20GradientPairInternalIfEELi2EE10ContiguousEv.exit.thread, label %bb.b, !prof !91

bb.b:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm2EEELb1EEdeEv.exit.i.i1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #8
  %i.u = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %16)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.u, ptr noundef nonnull @.str, i32 noundef 193)
  %i.v = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.c ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.b
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.4, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #8
  br label %_ZNK7xgboost6linalg10TensorViewINS_6detail20GradientPairInternalIfEELi2EE10ContiguousEv.exit.thread

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.d unwind label %bb.av

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #8
  br label %bb.au

_ZNK7xgboost6linalg10TensorViewINS_6detail20GradientPairInternalIfEELi2EE10ContiguousEv.exit.thread: ; preds = %bb.a, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm2EEELb1EEdeEv.exit.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm2EEELb1EEdeEv.exit.i.i1.i
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !13  ; 3 uses
  %i.ab = uitofp i64 %i.aa to float
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !47
  %i.ae = fmul float %i.ad, %i.ab
  %i.af = fptoui float %i.ae to i64               ; 2 uses
  %.not = icmp ugt i64 %i.aa, %i.af
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK7xgboost6linalg10TensorViewINS_6detail20GradientPairInternalIfEELi2EE10ContiguousEv.exit.thread
  store i8 0, ptr %i.ag, align 8, !tbaa !48
  br label %_ZN7xgboost4tree8cpu_impl12_GLOBAL__N_117ZeroGradientPairsENS_6linalg10TensorViewINS_6detail20GradientPairInternalIfEELi2EEE.exit

bb.f:                                             ; preds = %_ZNK7xgboost6linalg10TensorViewINS_6detail20GradientPairInternalIfEELi2EE10ContiguousEv.exit.thread
  store i8 1, ptr %i.ag, align 8, !tbaa !48
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ai = call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %i.ah) ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !49
  %i.ak = load i32, ptr %0, align 8, !tbaa !50
  switch i32 %i.ak, label %bb.aq [
    i32 0, label %bb.g
    i32 1, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.al = load float, ptr %i.ac, align 4, !tbaa !47
  call fastcc void @_ZN7xgboost4tree8cpu_impl12_GLOBAL__N_113UniformSampleEPKNS_7ContextENS_6linalg10TensorViewINS_6detail20GradientPairInternalIfEELi2EEEfm(ptr noundef nonnull %1, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView.6") align 8 %2, float noundef %i.al, i64 noundef %i.ai)
  br label %_ZN7xgboost4tree8cpu_impl12_GLOBAL__N_117ZeroGradientPairsENS_6linalg10TensorViewINS_6detail20GradientPairInternalIfEELi2EEE.exit

bb.h:                                             ; preds = %bb.f
  %i.am = icmp eq i64 %i.af, 0
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.sroa.036.0.copyload = load i64, ptr %2, align 8, !tbaa !38 ; 6 uses
  %.sroa.237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.237.0.copyload = load i64, ptr %.sroa.237.0..sroa_idx, align 8, !tbaa !38 ; 6 uses
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.640.0.copyload = load ptr, ptr %.sroa.640.0..sroa_idx, align 8, !tbaa !51 ; 6 uses
  %.not4.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not4.i.i.i.i, label %_ZN7xgboost4tree8cpu_impl12_GLOBAL__N_117ZeroGradientPairsENS_6linalg10TensorViewINS_6detail20GradientPairInternalIfEELi2EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.438.0.copyload = load i64, ptr %.sroa.438.0..sroa_idx, align 8, !tbaa !38
  %.fr17.i = freeze i64 %.sroa.438.0.copyload     ; 9 uses
  %i.an = trunc i64 %.fr17.i to i32               ; 7 uses
  %i.ao = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.an)
  %.not.i7.i.i.i.i.i.i.i = icmp samesign ult i32 %i.ao, 2 ; 2 uses
  %i.ap = add i32 %i.an, -1                       ; 3 uses
  %i.aq = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ap) ; 4 uses
  %i.ar = add i64 %.fr17.i, -1                    ; 4 uses
  %i.as = insertelement <2 x i64> poison, i64 %.fr17.i, i64 0
  %i.at = shufflevector <2 x i64> %i.as, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.au = add <2 x i64> %i.at, <i64 0, i64 -1>
  %i.av = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.au) ; 3 uses
  %i.aw = extractelement <2 x i64> %i.av, i64 0
  %.not.i.i.i.i.i.i.i.i = icmp samesign ult i64 %i.aw, 2
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.split.us.i, label %.lr.ph.i.i.i.split.i

.lr.ph.i.i.i.split.us.i:                          ; preds = %.lr.ph.i.i.i.i
  br i1 %.not.i7.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.split.us.split.us.preheader.i, label %.lr.ph.i.i.i.split.us.split.preheader.i

.lr.ph.i.i.i.split.us.split.preheader.i:          ; preds = %.lr.ph.i.i.i.split.us.i
  %i.ax = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.an, i1 true)
  %i.ay = extractelement <2 x i64> %i.av, i64 1
  br label %.lr.ph.i.i.i.split.us.split.i

.lr.ph.i.i.i.split.us.split.us.preheader.i:       ; preds = %.lr.ph.i.i.i.split.us.i
  %i.az = zext i32 %i.ap to i64                   ; 3 uses
  %i.ba = extractelement <2 x i64> %i.av, i64 1   ; 3 uses
  %xtraiter = and i64 %i.l, 1
  %i.bb = icmp eq i64 %i.l, 1
  br i1 %i.bb, label %.lr.ph.i.i.i.split.us.split.us.i.epil.preheader, label %.lr.ph.i.i.i.split.us.split.us.preheader.i.new

.lr.ph.i.i.i.split.us.split.us.preheader.i.new:   ; preds = %.lr.ph.i.i.i.split.us.split.us.preheader.i
  %unroll_iter = and i64 %i.l, -2
  br label %.lr.ph.i.i.i.split.us.split.us.i

.lr.ph.i.i.i.split.us.split.us.i:                 ; preds = %.lr.ph.i.i.i.split.us.split.us.i, %.lr.ph.i.i.i.split.us.split.us.preheader.i.new
  %.sroa.01.05.i.i.i.us.us.i = phi i64 [ 0, %.lr.ph.i.i.i.split.us.split.us.preheader.i.new ], [ %i.bv, %.lr.ph.i.i.i.split.us.split.us.i ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.split.us.split.us.preheader.i.new ], [ %niter.next.1, %.lr.ph.i.i.i.split.us.split.us.i ]
  %i.bc = icmp ugt i64 %.sroa.01.05.i.i.i.us.us.i, 4294967295 ; 2 uses
  %i.bd = trunc nuw i64 %.sroa.01.05.i.i.i.us.us.i to i32
  %i.be = lshr i32 %i.bd, %i.aq
  %i.bf = zext i32 %i.be to i64
  %i.bg = lshr i64 %.sroa.01.05.i.i.i.us.us.i, %i.ba
  %.sroa.5.1.le.i.sink.i.i.i.i.i.i.us.us.v.i = select i1 %i.bc, i64 %i.ar, i64 %i.az
  %.sroa.5.1.le.i.sink.i.i.i.i.i.i.us.us.i = and i64 %.sroa.5.1.le.i.sink.i.i.i.i.i.i.us.us.v.i, %.sroa.01.05.i.i.i.us.us.i
  %.sink.i.i.i.i.i.i.us.us.i = select i1 %i.bc, i64 %i.bg, i64 %i.bf
  %i.bh = mul i64 %.sink.i.i.i.i.i.i.us.us.i, %.sroa.036.0.copyload
  %i.bi = mul i64 %.sroa.5.1.le.i.sink.i.i.i.i.i.i.us.us.i, %.sroa.237.0.copyload
  %i.bj = getelementptr [8 x i8], ptr %.sroa.640.0.copyload, i64 %i.bh
  %i.bk = getelementptr [8 x i8], ptr %i.bj, i64 %i.bi ; 2 uses
  store i32 0, ptr %i.bk, align 4, !tbaa !20
  %.sroa_idx4.us.us.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i32 0, ptr %.sroa_idx4.us.us.i, align 4, !tbaa !20
  %i.bl = or disjoint i64 %.sroa.01.05.i.i.i.us.us.i, 1 ; 3 uses
  %i.bm = icmp ugt i64 %.sroa.01.05.i.i.i.us.us.i, 4294967295 ; 2 uses
  %i.bn = trunc nuw i64 %i.bl to i32
  %i.bo = lshr i32 %i.bn, %i.aq
  %i.bp = zext i32 %i.bo to i64
  %i.bq = lshr i64 %i.bl, %i.ba
  %.sroa.5.1.le.i.sink.i.i.i.i.i.i.us.us.v.i.1 = select i1 %i.bm, i64 %i.ar, i64 %i.az
  %.sroa.5.1.le.i.sink.i.i.i.i.i.i.us.us.i.1 = and i64 %.sroa.5.1.le.i.sink.i.i.i.i.i.i.us.us.v.i.1, %i.bl
  %.sink.i.i.i.i.i.i.us.us.i.1 = select i1 %i.bm, i64 %i.bq, i64 %i.bp
  %i.br = mul i64 %.sink.i.i.i.i.i.i.us.us.i.1, %.sroa.036.0.copyload
  %i.bs = mul i64 %.sroa.5.1.le.i.sink.i.i.i.i.i.i.us.us.i.1, %.sroa.237.0.copyload
  %i.bt = getelementptr [8 x i8], ptr %.sroa.640.0.copyload, i64 %i.br
  %i.bu = getelementptr [8 x i8], ptr %i.bt, i64 %i.bs ; 2 uses
  store i32 0, ptr %i.bu, align 4, !tbaa !20
  %.sroa_idx4.us.us.i.1 = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store i32 0, ptr %.sroa_idx4.us.us.i.1, align 4, !tbaa !20
  %i.bv = add nuw i64 %.sroa.01.05.i.i.i.us.us.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN7xgboost4tree8cpu_impl12_GLOBAL__N_117ZeroGradientPairsENS_6linalg10TensorViewINS_6detail20GradientPairInternalIfEELi2EEE.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.split.us.split.us.i, !llvm.loop !0

.lr.ph.i.i.i.split.us.split.i:                    ; preds = %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg5beginINS_6detail20GradientPairInternalIfEELi2EEEDaRNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i.i.i.us.i, %.lr.ph.i.i.i.split.us.split.preheader.i
  %.sroa.01.05.i.i.i.us.i = phi i64 [ %i.ci, %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg5beginINS_6detail20GradientPairInternalIfEELi2EEEDaRNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i.i.i.us.i ], [ 0, %.lr.ph.i.i.i.split.us.split.preheader.i ] ; 5 uses
  %i.bw = icmp ugt i64 %.sroa.01.05.i.i.i.us.i, 4294967295
  br i1 %i.bw, label %.split.us.i.i.i.i.i.i.i.us.i, label %.split.i8.i.i.i.i.i.i.us.i

.split.i8.i.i.i.i.i.i.us.i:                       ; preds = %.lr.ph.i.i.i.split.us.split.i
  %i.bx = trunc nuw i64 %.sroa.01.05.i.i.i.us.i to i32 ; 2 uses
  %i.by = lshr i32 %i.bx, %i.ax                   ; 2 uses
  %i.bz = mul i32 %i.by, %i.an
  %i.ca = sub i32 %i.bx, %i.bz
  %.sroa.5.1.le.i.i.i.i.i.i.i.us.i = zext i32 %i.ca to i64
  %i.cb = zext i32 %i.by to i64
  br label %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg5beginINS_6detail20GradientPairInternalIfEELi2EEEDaRNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i.i.i.us.i

.split.us.i.i.i.i.i.i.i.us.i:                     ; preds = %.lr.ph.i.i.i.split.us.split.i
  %i.cc = lshr i64 %.sroa.01.05.i.i.i.us.i, %i.ay
  %i.cd = and i64 %.sroa.01.05.i.i.i.us.i, %i.ar
  br label %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg5beginINS_6detail20GradientPairInternalIfEELi2EEEDaRNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i.i.i.us.i

_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg5beginINS_6detail20GradientPairInternalIfEELi2EEEDaRNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i.i.i.us.i: ; preds = %.split.us.i.i.i.i.i.i.i.us.i, %.split.i8.i.i.i.i.i.i.us.i
  %.sroa.5.1.le.i.sink.i.i.i.i.i.i.us.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i.i.i.us.i, %.split.i8.i.i.i.i.i.i.us.i ], [ %i.cd, %.split.us.i.i.i.i.i.i.i.us.i ]
  %.sink.i.i.i.i.i.i.us.i = phi i64 [ %i.cb, %.split.i8.i.i.i.i.i.i.us.i ], [ %i.cc, %.split.us.i.i.i.i.i.i.i.us.i ]
  %i.ce = mul i64 %.sink.i.i.i.i.i.i.us.i, %.sroa.036.0.copyload
  %i.cf = mul i64 %.sroa.5.1.le.i.sink.i.i.i.i.i.i.us.i, %.sroa.237.0.copyload
  %i.cg = getelementptr [8 x i8], ptr %.sroa.640.0.copyload, i64 %i.ce
  %i.ch = getelementptr [8 x i8], ptr %i.cg, i64 %i.cf ; 2 uses
  store i32 0, ptr %i.ch, align 4, !tbaa !20
  %.sroa_idx4.us.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store i32 0, ptr %.sroa_idx4.us.i, align 4, !tbaa !20
  %i.ci = add nuw i64 %.sroa.01.05.i.i.i.us.i, 1  ; 2 uses
  %.not.i.i.i.us.i = icmp eq i64 %i.ci, %i.l
  br i1 %.not.i.i.i.us.i, label %_ZN7xgboost4tree8cpu_impl12_GLOBAL__N_117ZeroGradientPairsENS_6linalg10TensorViewINS_6detail20GradientPairInternalIfEELi2EEE.exit, label %.lr.ph.i.i.i.split.us.split.i, !llvm.loop !0

.lr.ph.i.i.i.split.i:                             ; preds = %.lr.ph.i.i.i.i
  br i1 %.not.i7.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.split.split.us.preheader.i, label %.lr.ph.i.i.i.split.split.i

.lr.ph.i.i.i.split.split.us.preheader.i:          ; preds = %.lr.ph.i.i.i.split.i
  %i.cj = zext i32 %i.ap to i64
  br label %.lr.ph.i.i.i.split.split.us.i

.lr.ph.i.i.i.split.split.us.i:                    ; preds = %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg5beginINS_6detail20GradientPairInternalIfEELi2EEEDaRNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i.i.i.us11.i, %.lr.ph.i.i.i.split.split.us.preheader.i
  %.sroa.01.05.i.i.i.us5.i = phi i64 [ %i.cu, %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg5beginINS_6detail20GradientPairInternalIfEELi2EEEDaRNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i.i.i.us11.i ], [ 0, %.lr.ph.i.i.i.split.split.us.preheader.i ] ; 6 uses
  %i.ck = icmp ugt i64 %.sroa.01.05.i.i.i.us5.i, 4294967295
  br i1 %i.ck, label %.split.i.i.i.i.i.i.i.us.i, label %.split.us.i11.i.i.i.i.i.i.us6.i

end_hunk_0
begin_hunk_1_@_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SC_RT0_:bb.a
  %i.ax = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !20
  %i.az = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i
  store float %i.ay, ptr %i.az, align 4, !tbaa !20
  %i.ba = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ba, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !2

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.09, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bb = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bc = load float, ptr %i.n, align 4, !tbaa !20
  store float %i.bc, ptr %i.o, align 4, !tbaa !20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bd = icmp sgt i64 %.1.i, %.09
  br i1 %i.bd, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_T0_SD_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i
  %i.bf = load float, ptr %i.be, align 4, !tbaa !20 ; 2 uses
  %i.bg = fcmp olt float %i.bf, %i.an
  br i1 %i.bg, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_T0_SD_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i
  store float %i.bf, ptr %i.bh, align 4, !tbaa !20
  %i.bi = icmp sgt i64 %.0920.i.i, %.09
  br i1 %i.bi, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_T0_SD_T1_T2_.exit, !llvm.loop !3

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_T0_SD_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store float %i.an, ptr %i.bj, align 4, !tbaa !20
  %.not = icmp eq i64 %.09, 0
  %i.bk = add nsw i64 %.09, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !237

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_T0_SD_T1_T2_.exit.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_T0_SD_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.log.f80(x86_fp80) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.ctpop.v2i64(<2 x i64>) #21

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold noreturn }
attributes #17 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind memory(none) }
attributes #23 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { noreturn }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { builtin nounwind }
attributes #30 = { noreturn nounwind }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !29}
!1 = distinct !{!1, !29}
!2 = distinct !{!2, !29}
!3 = distinct !{!3, !29}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"long", !8, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!"p1 float", !14, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!17 = !{!16, !15, i64 0}
!18 = !{!16, !15, i64 16}
!19 = !{!"float", !8, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!16, !15, i64 8}
!22 = !{!"p1 _ZTSN7xgboost6detail20GradientPairInternalIfEE", !14, i64 0}
!23 = !{!"_ZTSN7xgboost6common4SpanIKNS_6detail20GradientPairInternalIfEELm18446744073709551615EEE", !12, i64 0, !22, i64 8}
!24 = !{!"_ZTSN7xgboost9DeviceOrd4TypeE", !8, i64 0}
!25 = !{!"short", !8, i64 0}
!26 = !{!"_ZTSN7xgboost9DeviceOrdE", !24, i64 0, !25, i64 2}
!27 = !{!"_ZTSN7xgboost6linalg10TensorViewIKNS_6detail20GradientPairInternalIfEELi2EEE", !8, i64 0, !8, i64 16, !23, i64 32, !22, i64 48, !12, i64 56, !26, i64 64}
!28 = !{!27, !22, i64 48}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!9, !9, i64 0}
!31 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"p1 omnipotent char", !14, i64 0}
!34 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !33, i64 0}
!35 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !34, i64 0, !12, i64 8, !8, i64 16}
!36 = !{!35, !33, i64 0}
!37 = !{!35, !12, i64 8}
!38 = !{!8, !8, i64 0}
!39 = !{!15, !15, i64 0}
!40 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!41 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!42 = !{!"_ZTSN7xgboost6common4SpanINS_6detail20GradientPairInternalIfEELm18446744073709551615EEE", !12, i64 0, !22, i64 8}
!43 = !{!"_ZTSN7xgboost6linalg10TensorViewINS_6detail20GradientPairInternalIfEELi2EEE", !8, i64 0, !8, i64 16, !42, i64 32, !22, i64 48, !12, i64 56, !26, i64 64}
!44 = !{!43, !12, i64 56}
!45 = !{!"bool", !8, i64 0}
!46 = !{!"_ZTSN7xgboost4tree8cpu_impl7SamplerE", !9, i64 0, !19, i64 4, !45, i64 8, !12, i64 16}
!47 = !{!46, !19, i64 4}
!48 = !{!46, !45, i64 8}
!49 = !{!46, !12, i64 16}
!50 = !{!46, !9, i64 0}
!51 = !{!22, !22, i64 0}
!52 = !{!"p1 long", !14, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!"p1 _ZTSN7xgboost6linalg10TensorViewINS_6detail20GradientPairInternalIfEELi2EEE", !14, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !{!"p1 _ZTSN7xgboost6common4SpanIKfLm18446744073709551615EEE", !14, i64 0}
!57 = !{!56, !56, i64 0}
!58 = !{!14, !14, i64 0}
!59 = !{!"_ZTSNSt15__exception_ptr13exception_ptrE", !14, i64 0}
!60 = !{!59, !14, i64 0}
!61 = !{!"llvm.loop.isvectorized", i32 1}
!62 = !{!"llvm.loop.unroll.runtime.disable"}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = !{}
!65 = !{!43, !22, i64 48}
!66 = !{!34, !33, i64 0}
!67 = !{!"p1 _ZTSNSt6locale5_ImplE", !14, i64 0}
!68 = !{!"_ZTSSt6locale", !67, i64 0}
!69 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !33, i64 8, !33, i64 16, !33, i64 24, !33, i64 32, !33, i64 40, !33, i64 48, !68, i64 56}
!70 = !{!"vtable pointer", !7, i64 0}
!71 = !{!70, !70, i64 0}
!72 = !{!69, !33, i64 40}
!73 = !{!69, !33, i64 32}
!74 = !{!"p1 int", !14, i64 0}
!75 = !{i64 8}
!76 = !{i64 4}
!77 = !{!"_ZTSN7xgboost6common4SpanIKfLm18446744073709551615EEE", !12, i64 0, !15, i64 8}
!78 = !{!77, !12, i64 0}
!79 = !{!77, !15, i64 8}
!80 = distinct !{!80, !29}
!81 = distinct !{!81, !29}
!82 = distinct !{!82, i1 true, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii"}
!83 = distinct !{!83, !82, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii: argument 0"}
!84 = distinct !{!84, !29}
!85 = !{!83}
!86 = distinct !{!86, !29}
!87 = distinct !{!87, i1 true, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii"}
!88 = distinct !{!88, !87, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii: argument 0"}
!89 = distinct !{!89, !29}
!90 = !{!42, !12, i64 0}
!91 = !{!"branch_weights", !"expected", i32 2143190829, i32 4292819}
!92 = !{!23, !12, i64 0}
!93 = !{!42, !22, i64 8}
!94 = !{!23, !22, i64 8}
!95 = !{!27, !12, i64 56}
!96 = !{!88}
!97 = distinct !{!97, !29, !61, !62}
!98 = distinct !{!98, !29, !61, !62}
!99 = !{!"_ZTSSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE", !8, i64 0, !12, i64 4992}
!100 = !{!99, !12, i64 4992}
!101 = distinct !{!101, !29}
!102 = distinct !{!102, !29, !61, !62}
!103 = distinct !{!103, !63}
!104 = distinct !{!104, !29, !61}
!105 = distinct !{!105, !29}
!106 = distinct !{!106, i1 true, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii"}
!107 = distinct !{!107, !106, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii: argument 0"}
!108 = distinct !{!108, !29, !61, !62}
!109 = distinct !{!109, !63}
!110 = distinct !{!110, !29, !61}
!111 = distinct !{!111, !29}
!112 = !{!107}
!113 = distinct !{!113, !29}
!114 = distinct !{!114, i1 true, !"_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EE8HostViewEv"}
!115 = distinct !{!115, !114, !"_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EE8HostViewEv: argument 0"}
!116 = distinct !{!116, i1 true, !"_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EE4ViewENS_9DeviceOrdE"}
!117 = distinct !{!117, !116, !"_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EE4ViewENS_9DeviceOrdE: argument 0"}
!118 = distinct !{!118, i1 true, !"_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EE8HostViewEv"}
!119 = distinct !{!119, !118, !"_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EE8HostViewEv: argument 0"}
!120 = distinct !{!120, i1 true, !"_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EE4ViewENS_9DeviceOrdE"}
!121 = distinct !{!121, !120, !"_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EE4ViewENS_9DeviceOrdE: argument 0"}
!122 = distinct !{!122, i1 true, !"_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EE8HostViewEv"}
!123 = distinct !{!123, !122, !"_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EE8HostViewEv: argument 0"}
!124 = distinct !{!124, i1 true, !"_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EE4ViewENS_9DeviceOrdE"}
!125 = distinct !{!125, !124, !"_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EE4ViewENS_9DeviceOrdE: argument 0"}
!126 = distinct !{!126, i1 true, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii"}
!127 = distinct !{!127, !126, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii: argument 0"}
!128 = distinct !{!128, !29}
!129 = !{i8 0, i8 2}
!130 = !{!115}
!131 = !{!117}
!132 = !{!117, !115}
!133 = !{!"_ZTSNSt12_Vector_baseIN7xgboost6detail20GradientPairInternalIfEESaIS3_EE17_Vector_impl_dataE", !22, i64 0, !22, i64 8, !22, i64 16}
!134 = !{!133, !22, i64 8}
!135 = !{!133, !22, i64 0}
!136 = !{!"p1 _ZTSN7xgboost20HostDeviceVectorImplINS_6detail20GradientPairInternalIfEEEE", !14, i64 0}
!137 = !{!"_ZTSN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIfEEEE", !136, i64 0}
!138 = !{!"_ZTSN7xgboost6linalg5OrderE", !8, i64 0}
!139 = !{!"_ZTSN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEE", !137, i64 0, !8, i64 8, !138, i64 24}
!140 = !{!139, !138, i64 24}
!141 = !{!121, !119}
!142 = !{!123}
!143 = !{!125}
!144 = !{!125, !123}
!145 = !{!127}
!146 = !{!"_ZTSSt13_Ios_Openmode", !8, i64 0}
!147 = !{!"_ZTSNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE", !69, i64 0, !146, i64 64, !35, i64 72}
!148 = !{!147, !146, i64 64}
!149 = !{!"_ZTS2tm", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !12, i64 40, !33, i64 48}
!150 = !{!149, !9, i64 8}
!151 = !{!149, !9, i64 4}
!152 = !{!149, !9, i64 0}
!153 = !{!"_ZTSSt13_Ios_Fmtflags", !8, i64 0}
!154 = !{!"_ZTSSt12_Ios_Iostate", !8, i64 0}
!155 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !14, i64 0}
!156 = !{!"_ZTSNSt8ios_base6_WordsE", !14, i64 0, !12, i64 8}
!157 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !14, i64 0}
!158 = !{!"_ZTSSt8ios_base", !12, i64 8, !12, i64 16, !153, i64 24, !154, i64 28, !154, i64 32, !155, i64 40, !156, i64 48, !8, i64 64, !9, i64 192, !157, i64 200, !68, i64 208}
!159 = !{!158, !154, i64 32}
!160 = !{!"branch_weights", i32 1, i32 1023}
!161 = distinct !{!161, !29}
!162 = distinct !{!162, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!163 = distinct !{!163, !162, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!164 = distinct !{!164, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!165 = distinct !{!165, !164, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!166 = !{!33, !33, i64 0}
!167 = !{!163}
!168 = !{!165}
!169 = !{!165, !163}
!170 = distinct !{!170, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!171 = distinct !{!171, !170, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!172 = distinct !{!172, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!173 = distinct !{!173, !172, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!174 = !{!171}
!175 = !{!173}
!176 = !{!173, !171}
!177 = distinct !{!177, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!178 = distinct !{!178, !177, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!179 = distinct !{!179, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!180 = distinct !{!180, !179, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!181 = !{!178}
!182 = !{!180}
!183 = !{!180, !178}
!184 = distinct !{!184, !29}
!185 = distinct !{!185, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!186 = distinct !{!186, !185, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!187 = distinct !{!187, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!188 = distinct !{!188, !187, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!189 = !{!186}
!190 = !{!188}
!191 = !{!188, !186}
!192 = distinct !{!192, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!193 = distinct !{!193, !192, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!194 = distinct !{!194, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!195 = distinct !{!195, !194, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!196 = !{!193}
!197 = !{!195}
!198 = !{!195, !193}
!199 = distinct !{!199, !29}
!200 = distinct !{!200, !63}
!201 = distinct !{!201, !29}
!202 = !{!"_ZTSZN7xgboost4tree8cpu_impl16ParallelSamplingIZNS1_12_GLOBAL__N_121ForEachGradientSampleIRZNS3_21GradientBasedSamplingEPKNS_7ContextENS_6linalg10TensorViewINS_6detail20GradientPairInternalIfEELi2EEENS_6common4SpanIKfLm18446744073709551615EEEfmE3$_0EEvS7_mSH_fmOT_EUlmmRSK_E_EEvS7_mmSL_EUlSK_E_", !52, i64 0, !74, i64 8, !52, i64 16, !52, i64 24, !14, i64 32}
!203 = !{!202, !52, i64 0}
!204 = !{!202, !74, i64 8}
!205 = !{!202, !52, i64 16}
!206 = !{!202, !52, i64 24}
!207 = !{!202, !14, i64 32}
!208 = !{!"_ZTSZN7xgboost4tree8cpu_impl12_GLOBAL__N_121ForEachGradientSampleIRZNS2_21GradientBasedSamplingEPKNS_7ContextENS_6linalg10TensorViewINS_6detail20GradientPairInternalIfEELi2EEENS_6common4SpanIKfLm18446744073709551615EEEfmE3$_0EEvS6_mSG_fmOT_EUlmmRSJ_E_", !15, i64 0, !56, i64 8, !14, i64 16}
!209 = !{!208, !15, i64 0}
!210 = !{!208, !56, i64 8}
!211 = distinct !{!211, !29}
!212 = distinct !{!212, !29}
!213 = !{!"_ZTSZN7xgboost4tree8cpu_impl16ParallelSamplingIZNS1_12_GLOBAL__N_121ForEachGradientSampleIRZNS3_15ApplyMvsWeightsEPKNS_7ContextEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEENS_6common4SpanIKfLm18446744073709551615EEEfmE3$_0EEvS7_mSI_fmOT_EUlmmRSL_E_EEvS7_mmSM_EUlSL_E_", !52, i64 0, !74, i64 8, !52, i64 16, !52, i64 24, !14, i64 32}
!214 = !{!213, !52, i64 0}
!215 = !{!213, !74, i64 8}
!216 = !{!213, !52, i64 16}
!217 = !{!213, !52, i64 24}
!218 = !{!213, !14, i64 32}
!219 = !{!"_ZTSZN7xgboost4tree8cpu_impl12_GLOBAL__N_121ForEachGradientSampleIRZNS2_15ApplyMvsWeightsEPKNS_7ContextEPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEENS_6common4SpanIKfLm18446744073709551615EEEfmE3$_0EEvS6_mSH_fmOT_EUlmmRSK_E_", !15, i64 0, !56, i64 8, !14, i64 16}
!220 = !{!219, !15, i64 0}
!221 = !{!219, !56, i64 8}
!222 = distinct !{!222, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!223 = distinct !{!223, !222, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!224 = distinct !{!224, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!225 = distinct !{!225, !224, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!226 = !{!223}
!227 = !{!225}
!228 = !{!225, !223}
!229 = distinct !{!229, !29}
!230 = distinct !{!230, !29}
!231 = distinct !{!231, !29}
!232 = distinct !{!232, !29}
!233 = distinct !{!233, !29}
!234 = distinct !{!234, !29}
!235 = distinct !{!235, !29}
!236 = distinct !{!236, !29}
!237 = distinct !{!237, !29}
end_hunk_1
